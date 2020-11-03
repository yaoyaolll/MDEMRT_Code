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
extern int  iTableDown;
extern int  UsbSendFlag;
extern int  CheckedState;
extern int  BackBuffer;
extern int  EcState;
extern int  EcUpTabFlag;
extern int  SendUpFlag;
extern int  DatReady;
extern int  OrderFlag;
extern int  FreqSweepDatFlag;

extern int ParaModify;
extern int TableModify;

extern Uint16 *UsbRcvRegPt;
extern Uint16 UsbRcvReg;
extern int usb_rcv_flag;
extern Uint16 UsbRcvDat;
extern Uint16 *RcvBuffer;
extern int high_byte_rcv;
extern Uint16 UsbRcvDat_LowByte;
extern int counter;

extern Uint16 *TablePint;
extern Uint16 *EcUpTabPint; 
extern Uint16 *FreqSweepDatPint;

extern int 	Start_Cmd_Counter;
extern int	Start_Cmd_Flag;
extern int  EcUpTabFlag;
extern int  FreqSweepDatRcvFlag;
extern Uint16 *UsbUpTabPint;

extern Uint16 *UsbUpTabPint;
extern Uint16 *UsbRcvRegPt;
extern Uint16 *UsbSIOnPt;
extern Uint16 UsbRcvReg;
extern int usb_rcv_flag;
extern int UsbSendone;
extern Uint16 *UsbSendDataPt;
extern Uint16 *UsbSendStatePt;
extern Uint16 SendatReg;



//Fuction Declare
interrupt void UsbRcvInt(void);
static void UsbSendFuction(void);
//static void UsbTableRcv(void);
void SendDatDown(void);
static void SendTableDown(void);
//static void UsbFreqSweepDatRcv(void);
unsigned int CheckEcState(void);


interrupt void UsbRcvInt(void)
{
   //EINT; //可忽略
   //DINT;
   UsbRcvRegPt=(Uint16 *)UsbRdEn;
   UsbRcvReg=*UsbRcvRegPt;
   //counter++;
   if(high_byte_rcv==0)
   {
		UsbRcvReg=UsbRcvReg<<8;
		UsbRcvDat=UsbRcvReg&0xff00;
		high_byte_rcv=1;
   }
   else
   {
		
		UsbRcvDat_LowByte=UsbRcvReg&0x00ff;
		UsbRcvDat=UsbRcvDat_LowByte+UsbRcvDat;
		high_byte_rcv=0;
   }
   if(high_byte_rcv==0)
   {
   		*RcvBuffer++=UsbRcvDat;	
   		counter++;
   		/*if(counter<1000)
   		{
		*RcvBuffer++=UsbRcvDat;
		}*/
		
		//counter++;//tst
		if(UsbRcvDat==0xffff)
		{
			if(Start_Cmd_Counter==19)
			{
				Start_Cmd_Counter=0;
				Start_Cmd_Flag=1;	
			}
			else
			{
				Start_Cmd_Counter++;
			}
		}
		else if(UsbRcvDat==0x85AA)
		{
		  EcState=0;	
		  UsbSendFlag=0;
  		CheckedState=1;  //何时将检查完标志清零
  		BackBuffer=0;
		}
		else if(UsbRcvDat==0x85BB)
		{
      EcState=1;
      UsbSendFlag=0;
  		CheckedState=1;  //何时将检查完标志清零
  		BackBuffer=0;
		}
		else if(UsbRcvDat==0xAA55)
		{
			EcUpTabFlag=0;
			//UsbUpTabPint = (Uint16 *)TableUpDatStart;//待添加，一些标志的复位与存储地址的复位;
			DatReady=1;  //表示EC数据已上传，可以上传到地面系统
			//EcState=0;
			UsbSendFlag=0;
  		BackBuffer=0;
  		CheckedState=0;
		}							
   	}
   PieCtrlRegs.PIEACK.all=PIEACK_GROUP1;
   IER |= 0x0121;
   EINT;
   return;
} 

void SendDatDown(void)
{
	switch(OrderFlag)
	{
		case 0:
			SendTableDown();
			break;
		case 1:
			//UsbSendFlag = 4;
			//BackBuffer = 4;
			EcState=1;    //每个命令下发后，都要置EcState为1，表示EC板正在工作；这是按照EC循环执行来设置的
			RcvBuffer=(Uint16 *)0x8000;
			SendatReg=0x8521;
			UsbSendFuction();
			ParaModify=0;	
			OrderFlag=0;		
			break;	
		case 2:
			//UsbSendFlag = 5;
			//BackBuffer = 5;
			EcState=1;    //每个命令下发后，都要置EcState为1，表示EC板正在工作；这是按照EC循环执行来设置的
			RcvBuffer=(Uint16 *)0x8000;
			counter=0;
			SendatReg=0x8510;
			UsbSendFuction();
			/*while(UsbSendFlag==5)
			{
				asm(" NOP");
				UsbSendFlag=BackBuffer;
			}
			UsbSendFlag = 5;
			BackBuffer = 5;*/
			ParaModify=0;	
			OrderFlag=0;	
			break;	
		
		case 3:
			//UsbSendFlag = 8;
			//BackBuffer = 8;
			EcState=0;    //每个命令下发后，都要置EcState为1，表示EC板正在工作；这是按照EC循环执行来设置的
			SendatReg=0x8522;
			UsbSendFuction();
			/*while(UsbSendFlag==8)
			{
				asm(" NOP");
				UsbSendFlag=BackBuffer;
			}
			UsbSendFlag = 0;
			BackBuffer = 0;*/
			ParaModify=0;	
			OrderFlag=0;	
			break;
	case 4:
			//UsbSendFlag = 9;
			//BackBuffer = 9;
			EcState=0;    //每个命令下发后，都要置EcState为1，表示EC板正在工作；这是按照EC循环执行来设置的
			SendatReg=0x8523;
			UsbSendFuction();
			/*while(UsbSendFlag==9)
			{
				asm(" NOP");
				UsbSendFlag=BackBuffer;
			}
			UsbSendFlag = 0;
			BackBuffer = 0;*/
			ParaModify=0;	
			OrderFlag=0;	
			break;	
			
	}
	return;
}

void SendTableDown(void)
{
  if(TableModify==1)
  	{
  		TablePint = (Uint16 *)TableDatStart;
		SendatReg=0x8531;
		UsbSendFuction();
		UsbSendFlag = 2;
	    BackBuffer=2;
		//SenDownDatPt=(Uint16 *)TableDatStart;
		for(iTableDown=0;iTableDown<102;iTableDown++)
		{
	 		SendatReg=*TablePint++;
			UsbSendFuction();
			UsbSendFlag = 2;
	    	BackBuffer=2;
		}
		SendatReg=0xAA55;
		UsbSendFuction();
		/*UsbSendFlag = 2;
	    BackBuffer=2;
	    do{UsbSendFlag=BackBuffer;}
	    while(UsbSendFlag==2);//标志EC板以接收到数据，并返回*/
	    TablePint = (Uint16 *)TableDatStart;
	    ParaModify=0;
	    CheckedState=0;
  	}
  else
	   {
	   	ParaModify=0;
	   }
  return;
	
}


unsigned int CheckEcState(void)
{
    //InitMcbsp();
	BackBuffer=1;
	UsbSendFlag=1;
	SendatReg=0x8541;
	UsbSendFuction();
	while(UsbSendFlag==1)
	{	
		asm(" NOP");
	 	UsbSendFlag=BackBuffer;
	}
	if(EcState==0)
	{
		return(0);//回传0则标志EC板未在执行任务
			
	}
	else 
	if(EcState==0)
	{
		return(1);
	}//回传1则标志EC正在执行任务
	else
	{
		return(2);	
	}
	
}

void UsbSendFuction(void)
{
	//USB发送数据
	unsigned int SendatLowByte;
	unsigned int SendatHighByte; 
	SendatLowByte=SendatReg;
	SendatHighByte=(SendatReg&0xff00)>>8;
	UsbSIOnPt=(Uint16 *)UsbSIOn;
	*UsbSIOnPt=0x55aa;
	do
	{
		UsbSendStatePt=(Uint16 *)Usb_SendState_Reg;
		UsbSendone=*UsbSendStatePt;
	}
	while(UsbSendone==0xffff);
	UsbSendDataPt=(Uint16 *)UsbWrEn;
	*UsbSendDataPt=SendatHighByte;
	UsbSIOnPt=(Uint16 *)UsbSIOn;
	*UsbSIOnPt=0x55aa;
	do
	{
		UsbSendStatePt=(Uint16 *)Usb_SendState_Reg;
		UsbSendone=*UsbSendStatePt;
	}
	while(UsbSendone==0xffff);
	UsbSendDataPt=(Uint16 *)UsbWrEn;
	*UsbSendDataPt=SendatLowByte;
	return;

}
