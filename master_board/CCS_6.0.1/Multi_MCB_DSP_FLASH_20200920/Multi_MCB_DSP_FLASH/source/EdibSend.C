//###########################################################################
//
// FILE:	EcanSend.c
//
// TITLE:	
//
//###########################################################################
//
//  Ver | dd mmm yyyy | Who  | Description of changes
// =====|=============|======|===============================================
//  1.00| 09 May 2002 | W.Y.Y | First Release

//###########################################################################
#include "DSP281x_Device.h"
#include "Myfunction.h"


//参变量声明
extern int rcv_test_cmd;
extern int SendUpFlag;
extern int rcv_flag;
extern int TableSendUpCnt;
extern int FSweepSendUpCnt;
extern int DatReady;
extern int EcState;
extern int HeadBuffer;
extern int CalSendUpCnt;
extern int LoggingSendUpCnt;
extern int OrderFlag;
extern int OrderFlagBuffer;
extern int SendCounter;
extern int HeadSendone;
extern int TableUpDone;
extern int TableRcvFlag;
extern int CheckEcFlag;

extern int M2_Send_Cmd;
extern int M5_Send_Cmd;
extern int M7_Send_Cmd;
extern int M2SendNum;
extern int M2SendCounter;
extern int M5SendNum;
extern int M5SendCounter;
extern int M7SendNum;
extern int M7SendCounter;


extern Uint16 M2Sendone;
extern Uint16 M5Sendone;
extern Uint16 M7Sendone; 


extern Uint16 *M2_Data;
extern Uint16 *EDIB_M2Send_Pt;
extern Uint16 *M2SendoneRegPt;
extern Uint16 *M2RcvRegPt;
extern Uint16 *M5_Ctrl_Pt;
extern Uint16 *M5_Data;
extern Uint16 *M5LoadoneRegPt;
extern Uint16 *M7_Ctrl_Pt;
extern Uint16 *M7_Data;
extern Uint16 *M7LoadoneRegPt;
extern Uint16 *M2DataBuffer;
extern Uint16 *M5DataBuffer;
extern Uint16 *M7DataBuffer;

extern Uint16 *PintBuffer;
extern Uint16 *M2DataBuffer;
extern Uint16 *M5DataBuffer;
extern Uint16 *M7DataBuffer;
extern Uint16 *RcvBuffer;
extern Uint16 *EcUpTabPint;
extern Uint16 *FreqSweepDatPint;
extern Uint16 *CalDatPint;
extern Uint16 *LoggingDatPint;

extern Uint16 *SendOneSpeedPt;
extern Uint16 *SendFourSpeedPt;

extern Uint16 *DataPint1;

//函数声明
void SendHead(void);
void EdibSubset2Up(void);
void EdibSubset3Up(void);
void EdibSubset5Up(void);
void EdibSubset6Up(void);
void TableSendUp(void);
void TestandInformation(void);
void M2SendModule(void);
void M5SendModule(void);
void M7SendModule(void);
void Delay(unsigned int nDelay);

void SendOneSpeedCmd(void);
void SendQuadrupleSpeedCmd(void);

void SendHead(void)
{
    if(M7_Send_Cmd==0)	
	{
	    PintBuffer=M7DataBuffer;
		M7DataBuffer=(Uint16 *)DataHeadWord;
		*M7DataBuffer=0x9901+SendCounter;
		M7SendNum=1;
		M7SendCounter=0;
		Delay(1200);
	
	}
	M7SendModule();
	if(M7_Send_Cmd==0)	
	{
	   SendCounter++;
       HeadSendone=1; 
       M7DataBuffer=PintBuffer; 
	} 
}


void EdibSubset2Up(void)
{
   	if(M7_Send_Cmd==0)	
	{
		//M7DataBuffer=(Uint16 *)DatRcvZone2Start;	
		M7SendNum=499;
		M7SendCounter=0;
	
	}
	M7SendModule();
	if(M7_Send_Cmd==0)	
	{
	    OrderFlag=0;
		OrderFlagBuffer=0;
		HeadSendone=0;
		FpgaInitial();	
	}
}


void EdibSubset3Up(void)
{
   	if(M7_Send_Cmd==0)	
	{
		//M7DataBuffer=(Uint16 *)DatRcvZone2Start;	
		M7SendNum=999;
		M7SendCounter=0;
	
	}
	M7SendModule();
	if(M7_Send_Cmd==0)	
	{
	    OrderFlag=0;
		OrderFlagBuffer=0;
		HeadSendone=0;	
		FpgaInitial();
	}
}

void EdibSubset5Up(void)
{
   	if(M7_Send_Cmd==0)	
	{
		//M7DataBuffer=(Uint16 *)DatRcvZone2Start;	
		M7SendNum=699;
		M7SendCounter=0;
	
	}
	M7SendModule();
	if(M7_Send_Cmd==0)	
	{
	    OrderFlag=0;
		OrderFlagBuffer=0;
		HeadSendone=0;
		FpgaInitial();		
	}
}

void EdibSubset6Up(void)
{
   	if(M7_Send_Cmd==0)	
	{
		//M7DataBuffer=(Uint16 *)DatRcvZone2Start;	
		M7SendNum=2999;
		M7SendCounter=0;
	
	}
	M7SendModule();
	if(M7_Send_Cmd==0)	
	{
	    OrderFlag=0;
		OrderFlagBuffer=0;
		HeadSendone=0;
		FpgaInitial();		
	}
}


void TableSendUp(void)
{
	if(M7_Send_Cmd==0)	
	{
	 //   McbspTableRcvFlag=0;
		M7SendNum=84;
		M7SendCounter=0;
		M7DataBuffer=(Uint16 *)TableDatStart;
		Delay(1200);	
	}
	M7SendModule();
	if(M7_Send_Cmd==0)	
	{
		OrderFlag=0;
		OrderFlagBuffer=0;	
		TableUpDone=0;
	}
	return;
}

void SendOneSpeedCmd(void)
{
	SendOneSpeedPt=(Uint16 *)CLK_M5M7_ONE_FLAG_ADDRESS;
	*SendOneSpeedPt=0x55aa;
	Delay(100);
	return;
}

void SendQuadrupleSpeedCmd(void)
{
	SendFourSpeedPt=(Uint16 *)CLK_M5M7_FOUR_FLAG_ADDRESS;
	*SendFourSpeedPt=0x55aa;
	Delay(100);
	return;
}

void TestandInformation(void)
{
	if(rcv_test_cmd==1)
	{	
		if(CheckEcFlag==0)
		{
		   SendownCheckCmd();
		}
		else
		{
	        if(M2_Send_Cmd==0)	
		    {
		        M2SendNum=1;
			    M2SendCounter=0;
			    M2DataBuffer=(Uint16 *)CheckWord;
			    Delay(1200);
		    }
		    M2SendModule();
		    if(M2_Send_Cmd==0)	
		    {
			    rcv_test_cmd=0;
			    CheckEcFlag=0;	
		    }
		}
	}
	if(rcv_test_cmd==2)
	{	
		if(M2_Send_Cmd==0)	
		{
			M2SendNum=2;
			M2SendCounter=0;
			M2DataBuffer=(Uint16 *)SoftRevWords1;
			Delay(4000);	
		}
		M2SendModule();
		if(M2_Send_Cmd==0)	
		{
			rcv_test_cmd=0;	
		}
	}

	if(rcv_test_cmd==3)
	{	
		if((M2_Send_Cmd==0)&&(M5_Send_Cmd==0)&&(M7_Send_Cmd==0))
		//if(M7_Send_Cmd==0)	
		{
			M2SendNum=8;
			M2SendCounter=0;
			M2DataBuffer=(Uint16 *)M2TestTrainingZone;
			M5SendNum=17;
			M5SendCounter=0;
			M5DataBuffer=(Uint16 *)M5TestTrainingZone;
			M7SendNum=17;
			M7SendCounter=0;
			M7DataBuffer=(Uint16 *)M7TestTrainingZone;	
			Delay(1200);
		}
		M2SendModule();
		M5SendModule();
		M7SendModule();
		if((M2_Send_Cmd==0)&&(M5_Send_Cmd==0)&&(M7_Send_Cmd==0))
		//if(M7_Send_Cmd==0)
		{
			rcv_test_cmd=0;	
		}
	}
	if(rcv_test_cmd==4)
	{	
		if(M2_Send_Cmd==0)	
		{
			M2SendNum=2;
			M2SendCounter=0;
			M2DataBuffer=(Uint16 *)TableRevWords;	
			Delay(1200);
		}
		M2SendModule();
		if(M2_Send_Cmd==0)	
		{
			rcv_test_cmd=0;	
		}
	}
	
	if(rcv_test_cmd==7)//0x9522
	{
		if(M2_Send_Cmd==0)
		{
		M2SendNum=1;
		M2SendCounter=0;
		M2DataBuffer=(Uint16 *)ConectCmd;//#define ConectCmd	0x8030
		Delay(1200);	
		}
		M2SendModule();
		if(M2_Send_Cmd==0)
		{
		rcv_test_cmd=0;
		}
	}
	
	if(rcv_test_cmd==8)//0x9523
	{
		if(M2_Send_Cmd==0)
		{
		M2SendNum=1;
		M2SendCounter=0;
		M2DataBuffer=(Uint16 *)DisConectCmd;//#define DisConectCmd 0x802f
		Delay(1200);	
		}
		M2SendModule();
		if(M2_Send_Cmd==0)
		{
		rcv_test_cmd=0;
		}
	}
	
	if(rcv_test_cmd==9)
	{
		if(M2_Send_Cmd==0)
		{
		M2SendNum=1;
		M2SendCounter=0;
		M2DataBuffer=(Uint16 *)CheckState;//DisConectCmd
		Delay(1200);	
		}
		M2SendModule();
		if(M2_Send_Cmd==0)
		{
		rcv_test_cmd=0;
		}
	}

	if(rcv_test_cmd==10)
	{
		DataPint1=(Uint16 *)CheckSpeedWord1;
		*DataPint1++=0x9991;
		*DataPint1=0x0105;
		if(M2_Send_Cmd==0)
		{
		M2SendNum=2;
		M2SendCounter=0;
		M2DataBuffer=(Uint16 *)CheckSpeedWord1;//DisConectCmd
		Delay(1200);
		}
		M2SendModule();
		if(M2_Send_Cmd==0)
		{
		rcv_test_cmd=0;
		}
	}

	if(rcv_test_cmd==11)
	{
		DataPint1=(Uint16 *)CheckSpeedWord1;
		*DataPint1++=0x9994;
		*DataPint1=0x0405;
		if(M2_Send_Cmd==0)
		{
		M2SendNum=2;
		M2SendCounter=0;
		M2DataBuffer=(Uint16 *)CheckSpeedWord1;//DisConectCmd
		Delay(1200);
		}
		M2SendModule();
		if(M2_Send_Cmd==0)
		{
		rcv_test_cmd=0;
		}
	}

	if(rcv_test_cmd==12)
	{
		DataPint1=(Uint16 *)CheckSpeedWord1;
		*DataPint1=0x9990;
		if(M2_Send_Cmd==0)
		{
		M2SendNum=2;
		M2SendCounter=0;
		M2DataBuffer=(Uint16 *)CheckSpeedWord1;//DisConectCmd
		Delay(1200);
		}
		M2SendModule();
		if(M2_Send_Cmd==0)
		{
		rcv_test_cmd=0;
		}
	}
}



void M2SendModule(void)     //后续改进成3个通道独立控制,不把其整合到一个函数中
{
		
		M2_Send_Cmd=1;
		M2SendoneRegPt=(Uint16 *)M2_Sendone_Reg;
		M2Sendone=*M2SendoneRegPt;
	    if(M2Sendone==0xffff)
		{
			if(M2SendCounter!=M2SendNum)
			{
				M2_Data=(Uint16 *)M2_reg;
				*M2_Data=*M2DataBuffer;
				EDIB_M2Send_Pt=(Uint16 *)M2SendStart;
				*EDIB_M2Send_Pt=0x55aa;
				M2SendCounter++;
				M2DataBuffer++;			
			}
			else
			{
				M2SendCounter=0;
				M2SendNum=0;
			}
		}
		if(M2SendNum==0)
		{
			M2_Send_Cmd=0;
		}
		return;
}


void M5SendModule(void)     //后续改进成3个通道独立控制,不把其整合到一个函数中
{
		
		M5_Send_Cmd=1;

		M5LoadoneRegPt=(Uint16 *)M5_Loadone_Reg;
		M5Sendone=*M5LoadoneRegPt;
		if(M5Sendone==0xffff)
		{
			if(M5SendCounter!=M5SendNum)
			{
				M5_Ctrl_Pt=(Uint16 *)ClrM5LoadoneFlag;
				*M5_Ctrl_Pt=0x55aa;
				M5Sendone=0x0000;
				M5_Data=(Uint16 *)M5_Sendata_Reg;
				*M5_Data=*M5DataBuffer;
				M5SendCounter++;
				M5DataBuffer++;
				M5_Ctrl_Pt=(Uint16 *)M5SendEnOn;
				*M5_Ctrl_Pt=0x55aa;
			}
			else
			{
				M5_Ctrl_Pt=(Uint16 *)M5SendEnOff;
				*M5_Ctrl_Pt=0x55aa;
				M5SendCounter=0;
				M5SendNum=0;
			}
		}
		if(M5SendNum==0)
		{
			M5_Send_Cmd=0;
		}
		return;
}



void M7SendModule(void)     //后续改进成3个通道独立控制,不把其整合到一个函数中
{
		
		M7_Send_Cmd=1;

		M7LoadoneRegPt=(Uint16 *)M7_Loadone_Reg;
		M7Sendone=*M7LoadoneRegPt;
		if(M7Sendone==0xffff)
		{
			if(M7SendCounter!=M7SendNum)
			{
				M7_Ctrl_Pt=(Uint16 *)ClrM7LoadoneFlag;
				*M7_Ctrl_Pt=0x55aa;
				M7Sendone=0x0000;
				M7_Data=(Uint16 *)M7_Sendata_Reg;
				*M7_Data=*M7DataBuffer;
				M7SendCounter++;
				M7DataBuffer++;
				M7_Ctrl_Pt=(Uint16 *)M7SendEnOn;
				*M7_Ctrl_Pt=0x55aa;
			}
			else
			{
				M7_Ctrl_Pt=(Uint16 *)M7SendEnOff;
				*M7_Ctrl_Pt=0x55aa;
				M7SendCounter=0;
				M7SendNum=0;
			}
		}
		if(M7SendNum==0)
		{
			M7_Send_Cmd=0;
		}
		return;
}





