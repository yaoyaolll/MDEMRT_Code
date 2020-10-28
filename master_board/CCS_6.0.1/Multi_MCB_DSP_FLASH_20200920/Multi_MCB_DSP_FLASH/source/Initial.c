//###########################################################################
//
// FILE:	Initial.c
//
// TITLE:	
//
//###########################################################################
//
//  Ver | dd mmm yyyy | Who  | Description of changes
// =====|=============|======|===============================================
//  1.00| 03 Dec 2002 | W.Y.Y | First Release

//###########################################################################
#include "DSP281x_Device.h"
#include "Myfunction.h"

//参变量声明
extern long int0count;
extern long int1count;
extern int  rcv_flag;
extern int TableModify;
extern int  ParaModify;
extern int  OrderFlag;
extern int  CollectionFlag;
extern int  TableRcvFlag;
extern int  TableRcvCnt;
extern int SendUpFlag;
extern int rcv_flag;
extern int TableSendUpCnt;
extern int FSweepSendUpCnt;
extern int DatReady;
extern int EcState;
extern int HeadBuffer;
extern int CalSendUpCnt;
extern int LoggingSendUpCnt;
extern int BufferMcbsp;
extern int EcState;
extern int McbspSendFlag;
extern int CheckedState;
extern int BackBuffer;
extern int ParaModify;
extern int iTableDown;
extern int DatReady;
extern int rcv_test_cmd;
extern int M2_Send_Cmd;
extern int M5_Send_Cmd;
extern int M7_Send_Cmd;
extern int i;
extern int TestData;
extern Uint16 buffer; 
extern int OrderFlagBuffer;
extern int SendCounter;
extern int HeadSendone;
extern int AcqCmdCounter;  //奇偶控制双缓冲区发送
extern int CheckOddOrEven;
extern int TableUpDone;
extern int TableRcvFlag;
extern Uint16 TableModifyCmd;
extern int  TableModifyFlag;
extern int  ModifyMark;
extern int  TableModifyCounter;
extern int  TableModifyNum;
extern int  TableModifyClass;
extern int  CheckEcFlag;

extern int Mcbsp_ChState;//test Dc state
int McbspTableRcvFlag;

extern int y;
extern int ConvertFlag;
extern int ConvertDoneFlag;
extern int	TranVarFlag;
extern int	AssVarReady;
extern int AssAcqFlag;
extern int AssAcqFlag1;

extern float CorrectionFactor;
extern float MagTempMid;//MARTD
extern float HeatSNKTempMid;//HSRTD
extern float ChargeVoltageMid;
extern float EndothermicagentMid;//TEMP1D
extern float PreamplifierMid;//TEMP2D
extern float LowerportMid;//TEMP3D
extern float EventMid;//TEMP4D
extern float PoweramplifierMid;
extern int16 VacuumFlaskTemp;
extern int16 MagTemp;
extern int16 HeatSNKTemp;
extern int16 ChargeVoltage;
extern int16 EndothermicagentTemp;
extern int16 PreamplifierTemp;
extern int16 LowerportTemp;
extern int16 EventTemp;
extern int16 PoweramplifierTemp;
extern int16 ADC_ref;

extern int16 VacuumFlaskTemp1;
extern int16 MagTemp1;
extern int16 HeatSNKTemp1;
extern int16 ChargeVoltage1;
extern int16 EndothermicagentTemp1;
extern int16 PreamplifierTemp1;
extern int16 LowerportTemp1;
extern int16 EventTemp1;
extern int16 PoweramplifierTemp1;

extern int16 ACQ_cnt;

//指针声明
extern Uint16 *PintBuffer;
extern Uint16 *DataPint;
extern Uint16 *RcvBuffer;
extern Uint16 *TablePint;
extern Uint16 *CmdRcvBufferPt;
extern Uint16 *RcvBuffer;
extern Uint16 *EcUpTabPint;
extern Uint16 *FreqSweepDatPint;
extern Uint16 *CalDatPint;
extern Uint16 *LoggingDatPint;
extern Uint16 *EDIB_Rst_Pt;
extern Uint16 *CheckWordPint;
//函数声明
void FpgaInitial(void);
void VarInitial(void);
void DatZone1ToZero(void);
void DatZone2ToZero(void);


void FpgaInitial(void)
{
	//EDIB接口地址译码复位
	GpioDataRegs.GPBSET.bit.GPIOB9=1;
	Delay(1000);
	GpioDataRegs.GPBCLEAR.bit.GPIOB9=1;
	Delay(1000);
	GpioDataRegs.GPBSET.bit.GPIOB9=1;


/*  
// 用GPIO口控制EDIB接口的复位与启动  
	GpioDataRegs.GPBSET.bit.GPIOB10=1;
	Delay(1000);
	GpioDataRegs.GPBCLEAR.bit.GPIOB10=1;
	Delay(1000);
	GpioDataRegs.GPBSET.bit.GPIOB10=1;
	Delay(1000);
	GpioDataRegs.GPBSET.bit.GPIOB9=1;
	Delay(1000);
	GpioDataRegs.GPBCLEAR.bit.GPIOB9=1;
	Delay(1000);
	GpioDataRegs.GPBSET.bit.GPIOB9=1;

*/
//用地址译码的方式控制EDIB接口的复位与启动
	EDIB_Rst_Pt=(Uint16 *)ClkSourceRstOn;
	*EDIB_Rst_Pt=0x55aa;
	Delay(100);
	EDIB_Rst_Pt=(Uint16 *)ClkSourceRstOff;
	*EDIB_Rst_Pt=0x55aa;
	Delay(100);
	EDIB_Rst_Pt=(Uint16 *)EdibInterfaceRstOff;
	*EDIB_Rst_Pt=0x55aa;
	Delay(1000);
	EDIB_Rst_Pt=(Uint16 *)EdibInterfaceRstOn;
	*EDIB_Rst_Pt=0x55aa;
	Delay(1000);
	EDIB_Rst_Pt=(Uint16 *)EdibInterfaceRstOff;
	*EDIB_Rst_Pt=0x55aa;

}


void VarInitial()
{
	//标志初始化	
	int0count=0;
    int1count=0;
    rcv_flag=0;
    TableModify=0;
    ParaModify=0;
    OrderFlag=0;
    CollectionFlag=0;
    TableRcvFlag=0;
    TableRcvCnt=0;
    SendUpFlag=0;
    rcv_flag=0;
    TableSendUpCnt=0;
    FSweepSendUpCnt=0;
    DatReady=0;
    EcState=0;
    HeadBuffer=0;
    CalSendUpCnt=0;
    LoggingSendUpCnt=0;
    BufferMcbsp=0;
    McbspSendFlag=0;
    CheckedState=0;
    BackBuffer=0;
    iTableDown=0;
    rcv_test_cmd=0;
    buffer=0;
    OrderFlagBuffer=0; 
    
    SendCounter=0;
    HeadSendone=0;
    AcqCmdCounter=0;  //奇偶控制双缓冲区发送
    CheckOddOrEven=0;
    
    TableUpDone=0;
    TableRcvFlag=0;
    TableModifyCmd=0;
    TableModifyFlag=0;
    ModifyMark=0;
    TableModifyCounter=0;
    TableModifyNum=0;
    TableModifyClass=0;
    CheckEcFlag=0;
    
    Mcbsp_ChState=0;
    McbspTableRcvFlag=0;
    
    y=0;
	ConvertFlag=0;
	ConvertDoneFlag=0;
	TranVarFlag=0;
	AssVarReady=0;
	AssAcqFlag=0;
	AssAcqFlag1=0;
	

	CorrectionFactor=0;
	MagTempMid=0;//MARTD
	HeatSNKTempMid=0;//HSRTD
	ChargeVoltageMid=0;
	EndothermicagentMid=0;//TEMP1D
	PreamplifierMid=0;//TEMP2D
	LowerportMid=0;//TEMP3D
	EventMid=0;//TEMP4D


	VacuumFlaskTemp=0;
	MagTemp=0;
	HeatSNKTemp=0;
	ChargeVoltage=0;
	EndothermicagentTemp=0;
	PreamplifierTemp=0;
	LowerportTemp=0;
	EventTemp=0;
	ADC_ref=0;
	

	MagTemp1=0;
	HeatSNKTemp1=0;
	ChargeVoltage1=0;
	EndothermicagentTemp1=0;
	PreamplifierTemp1=0;
	LowerportTemp1=0;
	EventTemp1=0;

	ACQ_cnt=0;

    RcvBuffer=(Uint16 *)DatRcvZone1Start;
    TablePint=(Uint16 *)TableDatStart;
    CmdRcvBufferPt=(Uint16 *)TableModifyUse;
    EcUpTabPint=(Uint16 *)DatRcvZone1Start;
	PintBuffer=(Uint16 *)DatRcvZone1Start;
    CheckWordPint=(Uint16 *)CheckWord;;
    rcv_test_cmd=0;
	M2_Send_Cmd=0;
	M5_Send_Cmd=0;
	M7_Send_Cmd=0;
	//M2M5M7 TEST TRAINING ZONE INITIAL
	//##########################################
	//M2 ZONE INITIAL
	//##########################################
	DataPint=(Uint16 *)M2TestTrainingZone; 
	*DataPint++=0x9999;
	*DataPint++=0xC0AA;
	*DataPint++=0x3F55;
	*DataPint++=0xF731;
	*DataPint++=0x8000;
	*DataPint++=0x0000;
	*DataPint++=0xFFFF;
	*DataPint++=0x08CE;
	//##########################################
	//M5 ZONE INITIAL
	//##########################################
	DataPint=(Uint16 *)M5TestTrainingZone;
	*DataPint++=0x9999;
	TestData=0x0000;
	for(i=0;i<16;i++)
	{
		*DataPint++=TestData;
		TestData=TestData+0x1111;	
	}
	//##########################################
	//M7 ZONE INITIAL
	//##########################################
	DataPint=(Uint16 *)M7TestTrainingZone;
	*DataPint++=0x9999;
	TestData=0x0000;
	for(i=0;i<16;i++)
	{
		*DataPint++=TestData;
		TestData=TestData+0x1111;	
	}
	*DataPint=0x0000;


	DataPint=(Uint16 *)SoftRevWords1;
	*DataPint++=0x2020;
	*DataPint=0x0702;


	DataPint=(Uint16 *)TableRevWords;
	*DataPint++=0x9931;
	*DataPint=0x0001;
	
	DataPint=(Uint16 *)DisConectCmd;
	*DataPint=0x9923;//#define DisConectCmd			0x802F
	DataPint=(Uint16 *)ConectCmd;
	*DataPint=0x9922;//#define ConectCmd			    0x8030
	DataPint=(Uint16 *)CheckState;
	*DataPint=0x0002;

	DataPint=(Uint16 *)CheckSpeedWord1;
	*DataPint++=0x9991;
	*DataPint=0x0105;
	   
}

void DatZone1ToZero(void)
{
    DataPint=(Uint16 *)DatRcvZone1Start;
    for(i=0;i<2000;i++)
	{
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;
	}
}

void DatZone2ToZero(void)
{
    DataPint=(Uint16 *)DatRcvZone2Start;
    for(i=0;i<2000;i++)
	{
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;	
		*DataPint++=0x0000;
	}

}
