
//###########################################################################
//
// FILE:	main.c
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
#include "My_Var.h"


//函数声明
void InitSysCtrl(void);
void InitXintf(void);
void InitGpio(void);
void InitPieVectTable(void);
void InitPieCtrl(void);	
void ECanIntConfig(void);
void DataSdRcvControl(void);
void InitMcbsp(void);
void AdcRst(void);
void AssAcqDataProcess(void);
//interrupt void Adc_Int(void);
void Delay(unsigned int nDelay);
//void M2M5M7SendModule();
void SendCheckRelayCmd(void);

void SendOneSpeedCmd(void);
void SendQuadrupleSpeedCmd(void);

// test variables
int16 HV_zero_bias;
int16 HV_now;
int16 HV_real;

void main()
{ 
	DINT;
	InitSysCtrl();
	InitXintf();
	InitGpio();
	InitPieCtrl();
	InitPieVectTable();	
	InitXIntrupt();
	InitMcbsp();
	AdcRst();
	FpgaInitial();
	VarInitial();

	IER |= 0x0121;                  // Enable INT1&6&9 of CPU  INT1-Exteral INT6-MCBSP INT9-CAN/*使能中断IER*/
    IFR = 0x0000; 
	PieCtrlRegs.PIEACK.all = 0xFFFF; 
    EINT;
    ERTM;
  
    GpioDataRegs.GPBSET.bit.GPIOB2=1;
	Delay(1000);
	GpioDataRegs.GPBCLEAR.bit.GPIOB2=1;
	Delay(1000);
	GpioDataRegs.GPBSET.bit.GPIOB2=1;
	

	for(;;)
	{
		if(rcv_test_cmd==0)
		{
		    DataSdRcvControl();
	    }
	    else
	    {
	        TestandInformation();
	    }	
 	}
	

}


void DataSdRcvControl(void)
{
	Uint16 WorkMode;
	Uint16 Up55AANum;

	if(CollectionFlag==1) //采集命令
	{
		SendCounter=0;
		AcqCmdCounter++;
		if(AcqCmdCounter==10000)
		{
		    AcqCmdCounter=0;
		}
		CheckOddOrEven=AcqCmdCounter&(0x0001);
		if(CheckOddOrEven==1)
		{
			DatZone1ToZero();
		    RcvBuffer=(Uint16 *)DatRcvZone1Start;
		    M7DataBuffer=(Uint16 *)DatRcvZone2Start;
		}
		else
		{
			DatZone2ToZero();
		    RcvBuffer=(Uint16 *)DatRcvZone2Start;
		    M7DataBuffer=(Uint16 *)DatRcvZone1Start;
		}
	    SendownAcqCmd();
	    
	    AssAcqFlag1=1;
	    AssAcqFlag=0;

	    ACQ_cnt=0;
	    ConvertFlag=0;
	    ConvertDoneFlag=0;
	    TranVarFlag=0;    //避免冲突
		AssVarReady=0;

		CollectionFlag=0;

	}
	if((OrderFlag==2)||OrderFlagBuffer==2)  //send data command
	{
	    if(HeadSendone==0)
	    {
		    //SendCounter++;		
		    SendHead();
		}
		OrderFlagBuffer=2; //发送完一次后清零
		if(HeadSendone==1) //发送完成后清零
		{
	        EdibSubset2Up();
	    }
	}
	if((OrderFlag==3)||OrderFlagBuffer==3)  //send data command
	{
	    if(HeadSendone==0)
	    {
		    //SendCounter++;		
		    SendHead();
		}
		OrderFlagBuffer=3; //发送完一次后清零
		if(HeadSendone==1) //发送完成后清零
		{
	        EdibSubset3Up();
	    }
	}
	if((OrderFlag==5)||OrderFlagBuffer==5)  //send data command
	{
	    if(HeadSendone==0)
	    {
		    //SendCounter++;		
		    SendHead();
		}
		OrderFlagBuffer=5; //发送完一次后清零
		if(HeadSendone==1) //发送完成后清零
		{
	        EdibSubset5Up();
	    }
	}
	if((OrderFlag==6)||OrderFlagBuffer==6)  //send data command
	{
	    if(HeadSendone==0)
	    {
		    //SendCounter++;		
		    SendHead();
		}
		OrderFlagBuffer=6; //发送完一次后清零
		if(HeadSendone==1) //发送完成后清零
		{
	        EdibSubset6Up();
	    }
	}
	if(OrderFlag==7)  //connect dc motor power relay driver_9522
	{
		SendConnectRelayCmd();
		rcv_test_cmd=7;
	}
	if(OrderFlag==8)  //disconnect dc motor power relay driver_9523
	{
		SendDisconnectRelayCmd();
		rcv_test_cmd=8;
	}
	if(OrderFlag==13)//查询高压状态
	{
		SendCheckRelayCmd();
	}
	if(OrderFlag==15)//正常倍速采集
	{
		SendOneSpeedCmd();
		OrderFlag=0;
		rcv_test_cmd=10;
	}
	if(OrderFlag==16)//四倍速采集
	{
		SendQuadrupleSpeedCmd();
		OrderFlag=0;
		rcv_test_cmd=11;
	}
	if((OrderFlag==9)||(OrderFlagBuffer==9))
	{
		OrderFlagBuffer=9; //下发完成后清零
		if(EcState==0)
		{
		   SendTableDown();
		   AcqCmdCounter=0; 
		}
	}
	if((OrderFlag==10)||(OrderFlagBuffer==10))
	{
		if(OrderFlagBuffer==0)
		{
		    OrderFlagBuffer=10;
		    UpTableCmdDown();
		}
		else
		{
		    if(TableUpDone==1)  //发完后清零
		    {   
	            TableSendUp();
	        }
	    }
	}
	if(OrderFlag==11) //发完后清零
	{
	    TableModifyDown();
	}

	if(AssAcqFlag1==1)//0偏
	{		    
		if(ConvertFlag==0)
		{
		    Open_ADC=0x1; //启动ADC
			ConvertFlag=1; //置标志，收到中断后清标志
		}
		
		if(ConvertDoneFlag==1) //单次采集完成，可以进行数据处理
		{
			AssAcqDataProcess();
			ConvertDoneFlag=0; //处理完成后该标志清0
			//AssVarReady=1;
			ConvertFlag=0;
			
			ChargeVoltage1=ChargeVoltage;
						
			AssAcqFlag1=0;
			AssAcqFlag=1;
			
	 	   	GpioDataRegs.GPADAT.bit.GPIOA3=0;//开启S2_ON
//		   	GpioDataRegs.GPADAT.bit.GPIOA2=0;//开启CTRL_SW

			Delay(4000);

		}
	}

	if(AssAcqFlag==1)
	{	
		if(ConvertFlag==0)
		{
		    Open_ADC=0x1;//启动ADC   将EOC置1 (由高电平产生一个上升沿，先要拉低在拉高)
			ConvertFlag=1; //置标志，收到中断后清标志
		}
		if(ConvertDoneFlag==1) //单次采集完成，可以进行数据处理
		{
			AssAcqDataProcess();
			ConvertDoneFlag=0; //处理完成后该标志清0
			ConvertFlag=0;
			AssVarReady=1;
			GpioDataRegs.GPADAT.bit.GPIOA3=1;//关闭S2_ON

			AssAcqFlag=0;
		}
		
	}
	if((TranVarFlag==1)&&(AssVarReady==1)) //收到AA55后转存数据  AssVarReady是未了让采集辅助参量与收事件板数据不冲突
	{
		// 辅助参数填充至事件板上传数据的末尾
		*RcvBuffer++=ChargeVoltage-ChargeVoltage1;      // 高压
		*RcvBuffer++=MagTemp;							//MARTD
		*RcvBuffer++=HeatSNKTemp;						//HSRTD
		*RcvBuffer++=EndothermicagentTemp;				//AntDr&Dp_absorbtempD
		*RcvBuffer++=PreamplifierTemp;					//PreAmp_tempD
		*RcvBuffer++=LowerportTemp;						//AntTun_tempD
		*RcvBuffer++=EventTemp;							//Event_tempD
		*RcvBuffer++=EndothermicagentTemp;

		if(CheckOddOrEven==1)
		{
			WorkMode	= *(Uint16 *)DatRcvZone2Start;
		}
		else
		{
			WorkMode	= *(Uint16 *)DatRcvZone1Start;
		}

		if (WorkMode==0x9995)	//the number of 55AA decided by work mode
		{
			Up55AANum	= 30;
		}
		else
		{
			Up55AANum	= 15;
		}
		for(i=0;i<Up55AANum;i++)
		{
			*RcvBuffer++=0x55AA;
		}

		TranVarFlag=0;
		AssVarReady=0;
//		AssAcqFlag=0;
	}
}

void Delay(unsigned int nDelay)
{
	int idelay;
	for (idelay=0;idelay<nDelay;idelay++ )
	{
		asm(" NOP");
	}
}


