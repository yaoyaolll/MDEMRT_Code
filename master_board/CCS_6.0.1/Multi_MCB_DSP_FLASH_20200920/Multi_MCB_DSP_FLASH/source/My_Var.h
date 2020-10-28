// TI File $Revision: /main/2 $
// Checkin $Date: April 28, 2005   14:57:07 $
//###########################################################################
//
// FILE:  My_Var.h
//
// TITLE: 
//
//###########################################################################
// $TI Release: DSP281x Header Files V1.11 $
// $Release Date: September 26, 2007 $
//###########################################################################

#include "Myfunction.h"

#ifndef My_Var_H
#define My_Var_H


#ifdef __cplusplus
extern "C" {
#endif


#pragma DATA_SECTION(AssVar,"my_rev2");
long AssVar[12];

int  i;
long int0count;
long int1count;
int  rcv_flag;
int  ParaModify;
int  OrderFlag;
int  CollectionFlag;
int  TableRcvFlag;
int  TableRcvCnt;
int SendUpFlag;
int rcv_flag;
int TableSendUpCnt;
int FSweepSendUpCnt;
int DatReady;
int EcState;
int HeadBuffer;
int CalSendUpCnt;
int LoggingSendUpCnt;
int BufferMcbsp;
int EcState;
int McbspSendFlag;
int CheckedState;
int BackBuffer;
int ParaModify;
int TableModify;
int iTableDown;
int DatReady;
int rcv_test_cmd;
int TestData;
int M2_Send_Cmd;
int M5_Send_Cmd;
int M7_Send_Cmd;
Uint16 buffer; 
int OrderFlagBuffer;
int SendCounter;
int HeadSendone;
int AcqCmdCounter;  //奇偶控制双缓冲区发送
int CheckOddOrEven;
int TableUpDone;
int TableRcvFlag;

int Mcbsp_ChState;



Uint16 TableModifyCmd;
int  TableModifyFlag;
int  TableModifyNum;
int  ModifyMark;
int  TableModifyCounter;
int  TableModifyClass;

int y;
int ConvertFlag;
int ConvertDoneFlag;
int	TranVarFlag;
int	AssVarReady;
int AssAcqFlag;
int AssAcqFlag1;



float CorrectionFactor;
float MagTempMid;//MARTD
float HeatSNKTempMid;//HSRTD
float ChargeVoltageMid;
float EndothermicagentMid;//在原理图中对应TEMP2D
float PreamplifierMid;//在原理图中对应TEMP3D
float LowerportMid;//在原理图中对应TEMP4D
float EventMid;//在原理图中对应TEMP1D
float PoweramplifierMid;
int16 SAssAcqCounter;
int16 VacuumFlaskTemp;
int16 MagTemp;
int16 HeatSNKTemp;
int16 ChargeVoltage;
int16 EndothermicagentTemp;
int16 PreamplifierTemp;
int16 LowerportTemp;
int16 EventTemp;
int16 PoweramplifierTemp;
int16 ADC_ref;


int16 VacuumFlaskTemp1;
int16 MagTemp1;
int16 HeatSNKTemp1;
int16 ChargeVoltage1;
int16 EndothermicagentTemp1;
int16 PreamplifierTemp1;
int16 LowerportTemp1;
int16 EventTemp1;
int16 PoweramplifierTemp1;

int16 ACQ_cnt;

int16 *AdcRegPt;

struct ECAN_REGS ECanaShadow;
Uint16 *PintBuffer;
Uint16 *RcvBuffer;
Uint16 *TablePint;
Uint16 *CmdRcvBufferPt;
Uint16 *RcvBuffer;
Uint16 *EcUpTabPint;

Uint16 *CheckWordPint;

int    M5Sendat;
int    M7Sendat;
int	   M2SendCounter;
int    M2SendNum;
int	   M5SendCounter;
int    M5SendNum;
int	   M7SendCounter;
int    M7SendNum;
int  CheckEcFlag;

int16 ADC_ref;
Uint16 M2Sendone;
Uint16 M5Sendone;
Uint16 M7Sendone; 
Uint16 M2RcvReg;
Uint16 M2CMDReg;

Uint16 *DataPint;
Uint16 *DataPint1;
Uint16 *M2_Data;
Uint16 *EDIB_Rst_Pt;
Uint16 *EDIB_M2Send_Pt;
Uint16 *M2SendoneRegPt;
Uint16 *M2RcvRegPt;
Uint16 *M5_Ctrl_Pt;
Uint16 *M5_Data;
Uint16 *M5LoadoneRegPt;
Uint16 *M7_Ctrl_Pt;
Uint16 *M7_Data;
Uint16 *M7LoadoneRegPt;
Uint16 *M2DataBuffer;
Uint16 *M5DataBuffer;
Uint16 *M7DataBuffer;

Uint16 *SendOneSpeedPt;
Uint16 *SendFourSpeedPt;

int  EcUpTabFlag;
int counter;
int high_byte_rcv;
int 	Start_Cmd_Counter;
int	Start_Cmd_Flag;
Uint16 UsbRcvDat_LowByte;
Uint16 UsbRcvDat;
Uint16 UsbRcvReg;
Uint16 *UsbRcvRegPt;
int  UsbSendFlag;


#ifdef __cplusplus
}
#endif /* extern "C" */

#endif  // end of Cache_Reg_H definition
