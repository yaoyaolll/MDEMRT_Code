//###########################################################################
//
// FILE:	McbspSendReceive.c
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
extern int BufferMcbsp;
extern int EcState;
extern int McbspSendFlag;
extern int CheckedState;
extern int BackBuffer;
extern int OrderFlag;
extern int  CollectionFlag;
extern int ParaModify;
extern int TableModify;
extern int iTableDown;
extern int DatReady;
extern int OrderFlagBuffer;
extern int TableUpDone;
extern int McbspTableRcvFlag;
extern int TableModifyCounter;
extern int TableModifyNum;
extern int CheckEcFlag;
extern int TranVarFlag;
extern int Mcbsp_ChState;
extern int rcv_test_cmd;

extern Uint16 *RcvBuffer;
extern Uint16 *TablePint;
extern Uint16 *CmdRcvBufferPt;
extern Uint16 *CheckWordPint;

//函数声明
interrupt void MRINTA_ISR1(void);
void SendTableDown(void);
void SendownAcqCmd(void);
void SendConnectRelayCmd(void);
void SendDisconnectRelayCmd(void);
void SendownCheckCmd(void);
void SendCheckRelayCmd(void);

// test code
//Uint16 test_array[100];
//Uint16 test_acq_flag=0, test_acq_cnt=0;

interrupt void MRINTA_ISR1(void)
{
 //  EINT; //可忽略
  BufferMcbsp= McbspaRegs.DRR1.all;
  if(McbspSendFlag==5)
  {
      McbspSendFlag = 0;
	  BackBuffer = 0;
	  CheckWordPint=(Uint16 *)CheckWord;
	  *CheckWordPint=BufferMcbsp;
  }
  else
  {
	  switch(BufferMcbsp)
	  {
		  case 0xAA55:
			  //*RcvBuffer++=BufferMcbsp;
			  EcState=0;     //表示EC数据已上传，EC板采集工作完成
			  McbspSendFlag=0;
			  BackBuffer=0;
			  TranVarFlag=1; //辅助参数转存
			  if(McbspTableRcvFlag==1)
			  {
				  TableUpDone=1;
				  McbspTableRcvFlag=0;
			  }
			  if(Mcbsp_ChState==1)
			  {
				rcv_test_cmd=9;
				Mcbsp_ChState=0;
			  }
			  break;
		  case 0x9931:
		  case 0x9922:
		  case 0x9923:
			  McbspSendFlag=0;
			  BackBuffer=0;
			  break;
		  case 0x9910:
			  McbspSendFlag=0;
			  BackBuffer=0;
			  break;
		  case 0x9924:			//test DC state
			  RcvBuffer=(Uint16 *)CheckState;
			  Mcbsp_ChState=1;
			  BackBuffer=0;
			  break;
		  case 0x9921:
			  RcvBuffer=(Uint16 *)TableDatStart;
			  *RcvBuffer++=BufferMcbsp;
			  McbspTableRcvFlag=1;
			  break;
		  default:
			  *RcvBuffer++=BufferMcbsp;
			  // test code
			  /*if(BufferMcbsp == 0x990E)
			  {
				  test_acq_flag = 1;
			  }
			  if(test_acq_flag == 1 && test_acq_cnt<100)
			  {

				  test_array[test_acq_cnt] = BufferMcbsp;
				  test_acq_cnt++;
			  }*/
	  }
  }			
  PieCtrlRegs.PIEACK.all=PIEACK_GROUP6;
  IER |= 0x0121;                   // Enable INT9     
  EINT; 
}


void SendTableDown(void)
{
  if(TableModify==1)
  	{
  		TablePint = (Uint16 *)TableDatStart;
  	    /*do{}
		while(Mcbsp_TxRdy()==0);
	    McbspaRegs.DXR1.all = 0x9531;
		McbspSendFlag=2;
	    BackBuffer=2;*/
		for(iTableDown=0;iTableDown<84;iTableDown++)
		{
	        do{}
		    while(Mcbsp_TxRdy()==0);
	        McbspaRegs.DXR1.all =*TablePint++;
			McbspSendFlag=2;
	    	BackBuffer=2;
		}
	    do{}
		while(Mcbsp_TxRdy()==0);
	    McbspaRegs.DXR1.all=0xAA55;
		McbspSendFlag=2;
	    BackBuffer=2;
	    do{McbspSendFlag=BackBuffer;}
	    while(McbspSendFlag!=0);//标志EC板以接收到数据，并返回*/
	    TablePint = (Uint16 *)TableDatStart;
	    ParaModify=0;
	    TableModify=0;
	    OrderFlag=0;
	    OrderFlagBuffer=0;
  	}
  else
	   {
	   	  OrderFlag=0;
	   }
  return;
	
}
Uint16 DownAry[5];
// 下传修改参数命令
void TableModifyDown(void)
{
	CmdRcvBufferPt=(Uint16 *)TableModifyUse;

	// test code begin
	DownAry[0] = *CmdRcvBufferPt;
	DownAry[1] = *(CmdRcvBufferPt+1);
	DownAry[2] = *(CmdRcvBufferPt+2);
	// test code end

    for(iTableDown=0;iTableDown<TableModifyNum;iTableDown++)
    {
        do{}
        while(Mcbsp_TxRdy()==0);
	    McbspaRegs.DXR1.all = *CmdRcvBufferPt++;
	}

	OrderFlag=0;
	TableModifyCounter=0;
	TableModifyNum= 0;
}

void UpTableCmdDown(void)
{
  	do{}
    while(Mcbsp_TxRdy()==0);
	McbspaRegs.DXR1.all = 0x9921;
}

void SendownAcqCmd(void)
{
	McbspSendFlag = 2;
	BackBuffer = 2;
	EcState=1;    //每个命令下发后，都要置EcState为1，表示EC板正在工作；这是按照EC循环执行来设置的
	//counter=0;
  	do{}
    while(Mcbsp_TxRdy()==0);

  	McbspaRegs.DXR1.all = 0x9910;

	while(McbspSendFlag!=0)
	{
		asm(" NOP");
		McbspSendFlag=BackBuffer;
	}
	ParaModify=0;	
	CollectionFlag=0;
}



void SendConnectRelayCmd(void)
{
    McbspSendFlag=3;
    BackBuffer=3;
    //EcState=0;    //每个命令下发后，都要置EcState为1，表示EC板正在工作；这是按照EC循环执行来设置的
  	do{}
    while(Mcbsp_TxRdy()==0);
	McbspaRegs.DXR1.all = 0x9922;
	while(McbspSendFlag!=0)
	{
	    asm(" NOP");
		McbspSendFlag=BackBuffer;
	}
	ParaModify=0;	
	OrderFlag=0;	  
}


void SendDisconnectRelayCmd(void)
{
	McbspSendFlag=4;
	BackBuffer=4;
	//EcState=0;    //每个命令下发后，都要置EcState为1，表示EC板正在工作；这是按照EC循环执行来设置的
  	do{}
    while(Mcbsp_TxRdy()==0);
	McbspaRegs.DXR1.all = 0x9923;
	while(McbspSendFlag!=0)
	{
	    asm(" NOP");
		McbspSendFlag=BackBuffer;
	}
	ParaModify=0;	
	OrderFlag=0;	    
}

void SendownCheckCmd(void)
{
	McbspSendFlag = 5;
	BackBuffer = 5;
	//counter=0;
  	do{}
    while(Mcbsp_TxRdy()==0);
	McbspaRegs.DXR1.all = 0x9901;
	while(McbspSendFlag!=0)
	{
		asm(" NOP");
		McbspSendFlag=BackBuffer;
	}
	ParaModify=0;	
	OrderFlag=0;
	CheckEcFlag=1;	   
}

void SendCheckRelayCmd(void)
{

	McbspSendFlag=6;
	BackBuffer=6;
	//EcState=0;    //每个命令下发后，都要置EcState为1，表示EC板正在工作；这是按照EC循环执行来设置的
  	do{}
    while(Mcbsp_TxRdy()==0);
	McbspaRegs.DXR1.all = 0x9924;
	while(McbspSendFlag!=0)
	{
	    asm(" NOP");
		McbspSendFlag=BackBuffer;
	}
	ParaModify=0;	
	OrderFlag=0;
}








