//###########################################################################
//
// FILE:   T2DModeTop.c
//
// TITLE:  .
//
// DESCRIPTION:
//
//         Example initialization of system resources.
//
//###########################################################################
//
//  Ver | dd mmm yyyy | Who  | Description of changes
// =====|=============|======|===============================================
//  1.00| 11 Sep 2003 | L.H. | Changes since previous version (v.58 Alpha)
//      |             |      | Additional comments added to explain the PLL
//      |             |      |    initialization.
//      |             |      | Changed the PLL initialization to take into
//      |             |      |    account bit definitions for the PLLCR register
//      |             |      | Removed DFT initialization - no longer needed 
//      |             |      |    as of Rev C F2810/12 silicon
//      |             |      | Split some operations into their own function
//      |             |      |    for better modularity
//      |             |      | Added pipeline flush after the Flash Init
//###########################################################################
#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
#include "MyHeaderFiles.h"

#pragma CODE_SECTION(ST2DModeTop,"Datatable");
#pragma CODE_SECTION(DT2DModeTop,"Datatable");
#pragma CODE_SECTION(MT2DModeTop,"Datatable");

void ST2DModeTop(void)
{
	ScaleMn	= 1;	
	ScaleM	= 0;
	EchoNum	= 2*(1+T2DCBWNreptA+T2DDEmn);  //62
	DataTotalNum	= 4*(T2DCPMGNeA+T2DDENeA*T2DDEmn+T2DCBWNeA*T2DCBWNreptA);  // 30456
	MiniStorAddr1	= MINITABLE_START+1;	
	PhaseFlag		= POSITIVE;	   
//A1+
	RELAY_ON_CLOSE = RelayAry[T2DFreqSel];   //�̵����պ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;  // 5
	Tel	= Tes;  
	Ne	= T2DCPMGNeA;  // 1002
	Pulse90StoreAddr	= T2D_STORE_START+(Uint32)DataTotalNum+24;   //0x127712 30482
	PulseF180StoreAddr	= Pulse90StoreAddr+EchoNum;
	PulseL180StoreAddr	= PulseF180StoreAddr+EchoNum;
	EchoStorAddr		= T2D_STORE_START+(Uint32)12;
	MiniScan(FreqAry[T2DFreqSel],MiniStorAddr1+9,MiniStorAddr1);
	MiniStorAddr1+=2*12;
	DCWorkOnce(T2DFreqSel);
	Pulse90StoreAddr+=2;
	PulseF180StoreAddr+=2;
	PulseL180StoreAddr+=2;		
	EchoStorAddr += 4*T2DCPMGNeA;						  	
//A8+-
	Tes	= (Uint32)100 * T2DCBWTeAB *  FPGA_COUNT;  // 4
	Tel	= Tes;  
	Ne	= T2DCBWNeA;  // 25
	for (T2DCnt=0;T2DCnt<2*T2DCBWNreptA;T2DCnt++)  // T2DCBWNreptA = 24
	{		
		if (T2DCnt==0)
		{
			StartS1msModule(T2DCBWTwA*FPGA_BC+T2D_REPAIR1-MINI_TEST);			
			MiniScan(FreqAry[T2DFreqSel],MiniStorAddr1+9,MiniStorAddr1);
			MiniStorAddr1-= 12;
		}
		else
		{
			StartS1msModule(T2DCBWTwA*FPGA_BC-T2D_REPAIR2);
		}				
		DCWorkOnce(T2DFreqSel);
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		EchoStorAddr += 2*T2DCBWNeA;
		if (T2DCnt==T2DCBWNreptA-1)
		{
			ChangePhase();
		}							
	}
//A1-
	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;  // 5
	Tel	= Tes;  
	Ne	= T2DCPMGNeA;  // 1002
	Pulse90StoreAddr	-= 2*T2DCBWNreptA+1;
	PulseF180StoreAddr	-= 2*T2DCBWNreptA+1;
	PulseL180StoreAddr	-= 2*T2DCBWNreptA+1;
	EchoStorAddr 		-= 4*(Uint32)T2DCBWNeA*T2DCBWNreptA+2*T2DCPMGNeA;  // 25 24 1002
	StartS1msModule(T2DCPMGTwA*FPGA_BC+T2D_REPAIR1-MINI_TEST);
	MiniScan(FreqAry[T2DFreqSel],MiniStorAddr1+9,MiniStorAddr1);
	MiniStorAddr1+= 24;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSel);
	Pulse90StoreAddr	+= 2*T2DCBWNreptA+1;
	PulseF180StoreAddr	+= 2*T2DCBWNreptA+1;
	PulseL180StoreAddr	+= 2*T2DCBWNreptA+1;
	EchoStorAddr 		+= 4*(Uint32)T2DCBWNeA*T2DCBWNreptA+2*T2DCPMGNeA;
	ChangePhase();

//A2-A7+-
	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT; // 5
	Ne	= T2DDENeA;  // 1002
	ScaleM	= T2DDEm;  // 2
	for (T2DCnt=2;T2DCnt<2*T2DDEmn+2;T2DCnt++)
	{
		StartS1msModule(T2DDETwA*FPGA_BC+T2D_REPAIR1-MINI_TEST);
		MiniScan(FreqAry[T2DFreqSel],MiniStorAddr1+9,MiniStorAddr1);
		MiniStorAddr1+= 12;		

		Tel	= (Uint32)100 * T2DDETelAAry[(T2DCnt>>1)] *  FPGA_COUNT;
		InverseTurnFlag	= SET;					
		DCWorkOnce(T2DFreqSel);
		ChangePhase();
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		EchoStorAddr += 2*T2DDENeA;	 // 0x127704
	}	  
	
	RELAY_ON_CLOSE = RelayAry[T2DFreqSel]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//other data store
	SaveNTempPt	= (int *)T2D_STORE_START;
	*SaveNTempPt	= 0x9995;
	SaveNTempPt++;
	*SaveNTempPt	= 0x0010;
	SaveSixFreq();
	SaveNTempPt++;
	*SaveNTempPt	= T2DFreqSel;
	SaveNTempPt++;
	*SaveNTempPt	= 0x55AA;

	SaveNTempPt	= (int *)(T2D_STORE_START+DataTotalNum+21); // 30477  noise
	SaveSTempPt	= (Uint16 *)(T2D_STORE_START+DataTotalNum+12); // 30468  scan frequency value
	ST2DMiniNum	= 3+2*T2DDEmn;  // 15
	StoreMiniAryPt	= &ST2DMiniNum;
	StoreMini(1,SaveNTempPt,SaveSTempPt); 

	McbspSendData(T2D_STORE_START,DataTotalNum+3*EchoNum+24);  // 30668
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	return;		  
}

void DT2DModeTop(void)
{
	ScaleMn	= 1;	
	ScaleM	= 0;
	EchoNum	= 2*(2+T2DCBWNreptA+T2DCBWNreptB+2*T2DDEmn);
	DataTotalNum = 4*(T2DCPMGNeA+T2DCPMGNeB+(T2DDENeA+T2DDENeB)*T2DDEmn+T2DCBWNeA*T2DCBWNreptA+T2DCBWNeB*T2DCBWNreptB);	
	
	MiniStorAddr1	= MINITABLE_START+1;
	MiniStorAddr2	= MiniStorAddr1+180;
	T2DTwMid1		= T2DCPMGTwB-T2DDETwA-1297;
	T2DTwMid2		= T2DCPMGTwA-T2DTwMid1-1950;

	PhaseFlag	= POSITIVE;	   
//A1+
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����պ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCPMGNeA;
	Pulse90StoreAddr	= T2D_STORE_START+(Uint32)DataTotalNum+36;
	PulseF180StoreAddr	= Pulse90StoreAddr+EchoNum;
	PulseL180StoreAddr	= PulseF180StoreAddr+EchoNum;
	EchoStorAddr		= T2D_STORE_START+(Uint32)12;
	DCWorkOnce(T2DFreqSelAry[1]);	
//A8+-
	Tes	= (Uint32)100 * T2DCBWTeAB *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCBWNeA;
	EchoStorAddr += 2*T2DCPMGNeA;
	for (T2DCnt=0;T2DCnt<2*T2DCBWNreptA;T2DCnt++)
	{		
		if (T2DCnt==0)
		{
			StartS1msModule(T2DCBWTwA*FPGA_BC+T2D_REPAIR1-MINI_TEST);//the time parameter should be adjusted
			MiniStorAddr1 += 12;
			MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);
		}
		else
		{
			StartS1msModule(T2DCBWTwA*FPGA_BC-T2D_REPAIR2);
		}

		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[1]);
					
		EchoStorAddr += 2*T2DCBWNeA;
		if (T2DCnt==T2DCBWNreptA-1)
		{
			ChangePhase();
		}
		
	}
	ChangePhase();
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B1+
	StartS1msModule(T2DTwMid2*FPGA_BC+1-MINI_TEST);//the time parameter should be adjusted
		
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����պ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCPMGNeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DCPMGNeB;	
//B8+-
	Tes	= (Uint32)100 * T2DCBWTeAB *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCBWNeB;
	for (T2DCnt=0;T2DCnt<2*T2DCBWNreptB;T2DCnt++)
	{		
		if (T2DCnt==0)
		{
			StartS1msModule(T2DCBWTwB*FPGA_BC+T2D_REPAIR1-MINI_TEST);
			MiniStorAddr2 += 12;
			MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);
		}
		else
		{
			StartS1msModule(T2DCBWTwB*FPGA_BC-T2D_REPAIR2);
		}
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[2]);
		EchoStorAddr += 2*T2DCBWNeB;
		if (T2DCnt==T2DCBWNreptA-1)
		{
			ChangePhase();
		}									
	}
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A1-
	StartS1msModule(T2DTwMid1*FPGA_BC+1-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����պ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	PhaseFlag	= NEGATIVE;

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCPMGNeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DCPMGNeA;	
	//Delay(30);
//A2+
	StartS1msModule(T2DDETwA*FPGA_BC+10-MINI_TEST);
	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	PhaseFlag	= POSITIVE;

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[1] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	ScaleM	= T2DDEm;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B1-
	StartS1msModule(1455-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����պ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= NEGATIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCPMGNeB;
	ScaleM	= 0;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DCPMGNeB;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A2-
	StartS1msModule(2039-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����պ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[1] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	ScaleM	= T2DDEm;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B2+
	StartS1msModule(1440-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= POSITIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[1] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A3+
	StartS1msModule(2039-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[2] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B2-
	StartS1msModule(1430-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= NEGATIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[1] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A3-
	StartS1msModule(2049-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[2] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B3+
	StartS1msModule(1420-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= POSITIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[2] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A4+
	StartS1msModule(2049-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[3] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B3-
	StartS1msModule(1400-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= NEGATIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[2] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A4-
	StartS1msModule(2069-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[3] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B4+
	StartS1msModule(1380-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= POSITIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[3] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A5+
	StartS1msModule(2069-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[4] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B4-
	StartS1msModule(1350-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= NEGATIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[3] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A5-
	StartS1msModule(2099-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[4] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B5+
	StartS1msModule(1320-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= POSITIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[4] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A6+
	StartS1msModule(2099-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[5] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B5-
	StartS1msModule(1280-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
				 
	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= NEGATIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[4] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A6-
	StartS1msModule(2139-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[5] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B6+
	StartS1msModule(1240-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= POSITIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[5] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A7+
	StartS1msModule(2139-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[6] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B6-
	StartS1msModule(1120-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= NEGATIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[5] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A7-
	StartS1msModule(2259-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr1 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTesA *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelAAry[6] *  FPGA_COUNT;  
	Ne	= T2DDENeA;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DDENeA;	
	//Delay(30);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B7+-
	StartS1msModule(1001-MINI_TEST);

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= POSITIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[6] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);
	EchoStorAddr += 2*T2DDENeB;	
	//Delay(30);
	StartS1msModule(T2DDETwB*FPGA_BC+T2D_REPAIR1-MINI_TEST);
	MiniStorAddr2 += 12;
	MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

	PhaseFlag	= NEGATIVE;

	Tes	= (Uint32)100 * T2DDETesB *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[6] *  FPGA_COUNT;  
	Ne	= T2DDENeB;
	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[2]);	
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����Ͽ�
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//store data
	SaveNTempPt	= (int *)T2D_STORE_START;
	*SaveNTempPt	= 0x9995;
	SaveNTempPt++;
	*SaveNTempPt	= 0x0020;
	SaveSixFreq();
	SaveNTempPt++;
	*SaveNTempPt	= T2DFreqSel;
	SaveNTempPt++;
	*SaveNTempPt	= 0x55AA;

	SaveNTempPt	= (int *)(T2D_STORE_START+DataTotalNum+30);
	SaveSTempPt	= (Uint16 *)(T2D_STORE_START+DataTotalNum+12);

	StoreMiniAryPt	= &DT2DMiniNumAry[0];
	StoreMini(2,SaveNTempPt,SaveSTempPt); 

	McbspSendData(T2D_STORE_START,DataTotalNum+3*EchoNum+36);
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	return;	
}

void MT2DModeTop(void)
{
	ScaleMn	= 1;
	ScaleM	= 0;		
	EchoNum	= 2*(1+T2DCBWNreptA+2*T2DDEmn);
	DataTotalNum = 4*(T2DCPMGNeA+T2DCBWNeA*T2DCBWNreptA+2*T2DDENeBC*T2DDEmn);	
	
	MiniStorAddr1	= MINITABLE_START+1;
	MiniStorAddr2	= MiniStorAddr1+36;
	MiniStorAddr3	= MiniStorAddr2+24*T2DDEmn;
	T2DTwMid1		= T2DCPMGTwA-4893;

	Pulse90StoreAddr	= T2D_STORE_START+(Uint32)DataTotalNum+48;
	PulseF180StoreAddr	= Pulse90StoreAddr+EchoNum;
	PulseL180StoreAddr	= PulseF180StoreAddr+EchoNum;
	EchoStorAddr		= T2D_STORE_START+(Uint32)12;

	PhaseFlag	= POSITIVE;	 
//A1+
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
	
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCPMGNeA;
	InverseTurnFlag	= SET;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DCPMGNeA;
	//Delay(30);
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B1+-
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	StartS1msModule(1000-MINI_TEST);

	Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[1] *  FPGA_COUNT;  
	Ne	= T2DDENeBC;
	ScaleM	= T2DDEm;

	for (T2DCnt=0;T2DCnt<2;T2DCnt++	)
	{ 		
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		InverseTurnFlag	= SET;
		DCWorkOnce(T2DFreqSelAry[2]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);
		if (T2DCnt==0)
		{
			StartS1msModule(T2DDETwBC*FPGA_BC+T2D_REPAIR1-MINI_TEST);
			MiniStorAddr2	+= 12;
		} 
		ChangePhase();
	}

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//C1+-
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]];   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	StartS1msModule(1000-MINI_TEST);

	//Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelCAry[1] *  FPGA_COUNT;  
	//Ne	= T2DDENeBC;

	for (T2DCnt=0;T2DCnt<2;T2DCnt++	)
	{ 
		MiniScan(FreqAry[T2DFreqSelAry[3]],MiniStorAddr3+9,MiniStorAddr3);

		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		InverseTurnFlag	= SET;
		DCWorkOnce(T2DFreqSelAry[3]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);		

		if (T2DCnt==0)
		{
			StartS1msModule(T2DDETwBC*FPGA_BC+T2D_REPAIR1-MINI_TEST);
			MiniStorAddr3	+= 12;
			ChangePhase();
		} 
	}

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//A1-
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	StartS1msModule(5179*FPGA_BC-MINI_TEST);
	MiniStorAddr1	+=12;
	MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);

	Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCPMGNeA;

	ScaleM	= 0;

	Pulse90StoreAddr++;
	PulseF180StoreAddr++;
	PulseL180StoreAddr++;
	DCWorkOnce(T2DFreqSelAry[1]);
	EchoStorAddr += 2*T2DCPMGNeA;
	//Delay(30);	
//A8+-
	Tes	= (Uint32)100 * T2DCBWTeA *  FPGA_COUNT;
	Tel	= Tes;  
	Ne	= T2DCBWNeA;
	PhaseFlag	= POSITIVE;
	for (T2DCnt=0;T2DCnt<2*T2DCBWNreptA;T2DCnt++)
	{
		if (T2DCnt==0)
		{
			StartS1msModule(T2DCBWTwA*FPGA_BC+T2D_REPAIR1-MINI_TEST);
			MiniStorAddr1	+=12;
			MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);		
		}
		else
		{
			StartS1msModule(T2DCBWTwA*FPGA_BC-T2D_REPAIR2);
		}
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[1]);
		EchoStorAddr += 2*T2DCBWNeA;
		if (T2DCnt==T2DCBWNreptA-1)
		{
			ChangePhase();
		}	
	}
	ChangePhase();
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B2+-
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	StartS1msModule(1000-MINI_TEST);

	Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[2] *  FPGA_COUNT;  
	Ne	= T2DDENeBC;
	ScaleM	= T2DDEm;

	for (T2DCnt=0;T2DCnt<2;T2DCnt++	)
	{ 
		MiniStorAddr2	+=12;
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		InverseTurnFlag	= SET;
		DCWorkOnce(T2DFreqSelAry[2]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);		
		if (T2DCnt==0)
		{
			StartS1msModule(T2DDETwBC*FPGA_BC-T2D_REPAIR1-MINI_TEST);
		} 
		ChangePhase();
	}

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//C2+-
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]];   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	StartS1msModule(1001-MINI_TEST);

	//Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelCAry[2] *  FPGA_COUNT;  
	//Ne	= T2DDENeBC;

	for (T2DCnt=0;T2DCnt<2;T2DCnt++	)
	{ 
		MiniStorAddr3	+=12;
		MiniScan(FreqAry[T2DFreqSelAry[3]],MiniStorAddr3+9,MiniStorAddr3);

		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		InverseTurnFlag	= SET;
		DCWorkOnce(T2DFreqSelAry[3]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);		
		if (T2DCnt==0)
		{
			StartS1msModule(T2DDETwBC*FPGA_BC+T2D_REPAIR1-MINI_TEST);
		}
		ChangePhase(); 
	}

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//B3+-
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	StartS1msModule(1000-MINI_TEST);
	//Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelBAry[3] *  FPGA_COUNT;  
	//Ne	= T2DDENeBC;

	ScaleM	= T2DDEm;

	for (T2DCnt=0;T2DCnt<2;T2DCnt++	)
	{ 
		MiniStorAddr2	+=12;
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		InverseTurnFlag	= SET;
		DCWorkOnce(T2DFreqSelAry[2]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);		
		if (T2DCnt==0)
		{
			StartS1msModule(T2DDETwBC*FPGA_BC+T2D_REPAIR1-MINI_TEST);
		} 
		ChangePhase();
	}

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//C3+-
	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]];   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;

	StartS1msModule(1000-MINI_TEST);

	//Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
	Tel	= (Uint32)100 * T2DDETelCAry[3] *  FPGA_COUNT;  
	//Ne	= T2DDENeBC;

	for (T2DCnt=0;T2DCnt<2;T2DCnt++	)
	{ 
		MiniStorAddr3	+=12;
		MiniScan(FreqAry[T2DFreqSelAry[3]],MiniStorAddr3+9,MiniStorAddr3);

		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		InverseTurnFlag	= SET;
		DCWorkOnce(T2DFreqSelAry[3]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);		
		if (T2DCnt==0)
		{
			StartS1msModule(T2DDETwBC*FPGA_BC+T2D_REPAIR1-MINI_TEST);
		}
		ChangePhase(); 
	}

	RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]]<<8;   
	Delay(120);                       
	RELAY_ON_CLOSE = 0x0000;
//store data
	SaveNTempPt	= (int *)T2D_STORE_START;
	*SaveNTempPt	= 0x9995;
	SaveNTempPt++;
	*SaveNTempPt	= 0x0030;
	SaveSixFreq();
	SaveNTempPt++;
	*SaveNTempPt	= T2DFreqSel;
	SaveNTempPt++;
	*SaveNTempPt	= 0x55AA;

	SaveNTempPt	= (int *)(T2D_STORE_START+DataTotalNum+39);
	SaveSTempPt	= (Uint16 *)(T2D_STORE_START+DataTotalNum+12);

	StoreMiniAryPt	= &MT2DMiniNumAry[0];
	StoreMini(3,SaveNTempPt,SaveSTempPt); 

	McbspSendData(T2D_STORE_START,DataTotalNum+3*EchoNum+48);
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP");
	asm(" NOP"); 
	return;	
}

/*
void MT2DModeTop(void)
{
	ScaleMn	= 1;		
	ScaleM	= 0;
	EchoNum	= 2*(1+T2DCBWNreptA+2*T2DDEmn);
	DataTotalNum = 4*(T2DCPMGNeA+T2DCBWNeA*T2DCBWNreptA+2*T2DDENeBC*T2DDEmn);	
	
	MiniStorAddr1	= MINITABLE_START-11;
	MiniStorAddr2	= MiniStorAddr1+24*(1+T2DCBWNreptA);
	MiniStorAddr3	= MiniStorAddr2+24*T2DDEmn;
	T2DTwMid1		= T2DCPMGTwA-4893;

	Pulse90StoreAddr	= T2D_STORE_START+(Uint32)DataTotalNum+45;
	PulseF180StoreAddr	= T2D_STORE_START+(Uint32)DataTotalNum+EchoNum+45;
	PulseL180StoreAddr	= T2D_STORE_START+(Uint32)DataTotalNum+2*EchoNum+45;
	EchoStorAddr		= T2D_STORE_START+(Uint32)10;

	PhaseFlag	= POSITIVE;	  
	for (T2DCnt=0;T2DCnt<2;T2DCnt++)
	{
//A1+-
		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]];   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;

		Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
		Tel	= Tes;  
		Ne	= T2DCPMGNeA;
		ScaleM	= 0;
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[1]);
		EchoStorAddr += 2*T2DCPMGNeA;
		//Delay(30);
		MiniStorAddr1 += 12;
		MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);
//A2+-
		Tes	= (Uint32)100 * 4 *  FPGA_COUNT;
		Tel	= Tes;  
		Ne	= T2DCBWNeA;
		EchoStorAddr += 2*T2DCPMGNeA;
		for (T2DCnt=0;T2DCnt<T2DCBWNreptA;T2DCnt++)
		{		
			StartS1msModule(T2DCBWTwA*FPGA_BC-T2D_REPAIR1-MINI_TEST);//the time parameter should be adjusted
			Pulse90StoreAddr++;
			PulseF180StoreAddr++;
			PulseL180StoreAddr++;						
			DCWorkOnce(T2DFreqSelAry[1]);
			EchoStorAddr += 2*T2DCBWNeA;
			//Delay(30);
			MiniStorAddr1 += 12;
			MiniScan(FreqAry[T2DFreqSelAry[1]],MiniStorAddr1+9,MiniStorAddr1);			
		}
		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[1]]<<8;   //�̵����Ͽ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;
//B1+-
		StartS1msModule(2000-MINI_TEST);//the time parameter should be adjusted
		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;

		Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
		Tel	= (Uint32)100 * T2DDETelBAry[1] *  FPGA_COUNT;  
		Ne	= T2DDENeBC;
		ScaleM	= T2DDEm;
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[2]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);
		MiniStorAddr2	+= 12;
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;
//C1+-
		StartS1msModule(2000-MINI_TEST);//the time parameter should be adjusted
		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]];   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;

		Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
		Tel	= (Uint32)100 * T2DDETelCAry[1] *  FPGA_COUNT;  
		Ne	= T2DDENeBC;
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[3]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);
		MiniStorAddr3	+= 12;
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr3+9,MiniStorAddr3);

		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]]<<8;   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;
//B2+-
		StartS1msModule(4938-MINI_TEST);//the time parameter should be adjusted
		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;

		Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
		Tel	= (Uint32)100 * T2DDETelBAry[2] *  FPGA_COUNT;  
		Ne	= T2DDENeBC;
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[2]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);
		MiniStorAddr2	+= 12;
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;
//C2+-
		StartS1msModule(2000-MINI_TEST);//the time parameter should be adjusted
		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]];   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;

		Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
		Tel	= (Uint32)100 * T2DDETelCAry[2] *  FPGA_COUNT;  
		Ne	= T2DDENeBC;
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[3]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);
		MiniStorAddr3	+= 12;
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr3+9,MiniStorAddr3);

		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]]<<8;   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;
//B3+-
		StartS1msModule(4898-MINI_TEST);//the time parameter should be adjusted
		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]];   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;

		Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
		Tel	= (Uint32)100 * T2DDETelBAry[3] *  FPGA_COUNT;  
		Ne	= T2DDENeBC;
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[2]);
		EchoStorAddr += 2*T2DDENeBC;
		//Delay(30);
		MiniStorAddr2	+= 12;
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr2+9,MiniStorAddr2);

		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[2]]<<8;   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;
//C3+-
		StartS1msModule(2000-MINI_TEST);//the time parameter should be adjusted
		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]];   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;

		Tes	= (Uint32)100 * T2DDCTes *  FPGA_COUNT;
		Tel	= (Uint32)100 * T2DDETelCAry[3] *  FPGA_COUNT;  
		Ne	= T2DDENeBC;
		Pulse90StoreAddr++;
		PulseF180StoreAddr++;
		PulseL180StoreAddr++;
		DCWorkOnce(T2DFreqSelAry[3]);
		//Delay(30);
		MiniStorAddr3	+= 12;
		MiniScan(FreqAry[T2DFreqSelAry[2]],MiniStorAddr3+9,MiniStorAddr3);

		RELAY_ON_CLOSE = RelayAry[T2DFreqSelAry[3]]<<8;   //�̵����պ�
		Delay(120);                       
		RELAY_ON_CLOSE = 0x0000;
	
		if (T2DCnt==0)
		{
			StartS1msModule(T2DTwMid1-MINI_TEST);//the time parameter should be adjusted
			PhaseFlag	= NEGATIVE;
			EchoStorAddr+= 2*T2DDENeBC;
		}		
	} 
//store data
	SaveNTempPt	= (int *)T2D_STORE_START;
	*SaveNTempPt	= 0x9695;
	SaveNTempPt++;
	*SaveNTempPt	= 0x0030;
	SaveNTempPt++;
	*SaveNTempPt	= FreqAry[1];
	SaveNTempPt++;
	*SaveNTempPt	= FreqAry[2];
	SaveNTempPt++;
	*SaveNTempPt	= FreqAry[3];
	SaveNTempPt++;
	*SaveNTempPt	= FreqAry[4];
	SaveNTempPt++;
	*SaveNTempPt	= FreqAry[5];
	SaveNTempPt++;
	*SaveNTempPt	= FreqAry[6];
	SaveNTempPt++;
	*SaveNTempPt	= T2DFreqSel;
	SaveNTempPt++;
	*SaveNTempPt	= 0x55AA;

	SaveNTempPt	= (int *)(T2D_STORE_START+DataTotalNum+37);
	SaveSTempPt	= (Uint16 *)(T2D_STORE_START+DataTotalNum+10);
	T2DMiniNumAry[0]= 2*(1+T2DCBWNreptA);
	StoreMiniAryPt	= &T2DMiniNumAry[0];
	StoreMini(3,SaveNTempPt,SaveSTempPt); 

	McbspSendData(T2D_STORE_START,DataTotalNum+3*EchoNum+46);    
	return;	
}
*/
