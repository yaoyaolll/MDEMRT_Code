// TI File $Revision: /main/2 $
// Checkin $Date: April 29, 2005   11:00:54 $
//###########################################################################
//
// FILE:   EdibRcv.c
//
// TITLE:  DSP28 External Interrupt Initialization & Support Functions.
//
//###########################################################################
// $TI Release: DSP281x Header Files V1.11 $
// $Release Date: September 26, 2007 $
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "Myfunction.h"
//#include "DSP281x_Examples.h"   // DSP281x Examples Include File
extern Uint16 *M2RcvRegPt;
extern Uint16 M2RcvReg;
extern Uint16 TableModifyCmd;
extern int  rcv_test_cmd;
extern int  rcv_flag;
extern int  ParaModify;
extern int  OrderFlag;
extern int  CollectionFlag;
extern int TableModify;
extern int  TableRcvFlag;
extern int  TableRcvCnt;

extern int  TableModifyFlag;
extern int  TableModifyNum;
extern int  ModifyMark;
extern int  TableModifyCounter;
extern int  TableModifyClass;

extern Uint16 *TablePint;
extern Uint16 *CmdRcvBufferPt;

//Fuction Declare
static void TableRcv(void);
interrupt void M2RcvInt(void);
void TableModifyRcv(void);
void TableModify1(void);

interrupt void M2RcvInt(void)
{
 //  EINT; //可忽略
   M2RcvRegPt=(Uint16 *)rcvd_datareg;
   M2RcvReg=*M2RcvRegPt;
   TableModifyCmd=M2RcvReg&(0xFFF0);
   rcv_test_cmd=0;
   if(M2RcvReg==0x9901)
   {
       rcv_test_cmd=1;
   }
   else if(M2RcvReg==0x9902)
   {
       rcv_test_cmd=2;
   }
   else if(M2RcvReg==0x994e)
   {
       rcv_test_cmd=3;
   }
   else if((M2RcvReg==0x9931)||(TableRcvFlag==1))
   {
   		TableRcv();
   		TableModify=1;  /*表示已经接收表数据，在表数据下发函数中使用 */
   }
   else if(M2RcvReg==0x9921)
   { 
        OrderFlag=10;
   }
   else if(M2RcvReg==0x9910)
   {
	   CollectionFlag=1;
   }
   else if(M2RcvReg==0x9911)
   {
	   CollectionFlag=1;
   }
   else if(M2RcvReg==0x9942)
   {
        OrderFlag=2;
   }
   else if(M2RcvReg==0x9943)
   {
        OrderFlag=3;
   }
   else if(M2RcvReg==0x9945)
   {
        OrderFlag=5;
   }
   else if(M2RcvReg==0x9946)
   {
        OrderFlag=6;
   }
   else if(M2RcvReg==0x9922)
   {
        OrderFlag=7;
   }
   else if(M2RcvReg==0x9923)
   {
   		OrderFlag=8;
   }
   else if(M2RcvReg==0x9924)
   {
   		OrderFlag=13;
   }
  /*
   else if(M2RcvReg==0x9990)
   {
	   rcv_test_cmd=12;
   }

   else if(M2RcvReg==0x9991)
   {
   		OrderFlag=15;
   }
   else if(M2RcvReg==0x9994)
   {
   		OrderFlag=16;
   }
  */
   else if((TableModifyFlag==1)||(TableModifyCmd==0x9950)||(TableModifyCmd==0x9960)||(TableModifyCmd==0x9990)||(TableModifyCmd==0x99A0))   // 参数修改命令
   {
        TableModifyRcv();
   }
   PieCtrlRegs.PIEACK.all=PIEACK_GROUP1;
   IER |= 0x0121;
   EINT;
   return;
} 


void TableRcv(void)
{
    if(TableRcvFlag==0)  /*接收0x9931 */
	{
	    TablePint = (Uint16 *)TableDatStart;
	    *TablePint++=M2RcvReg;
	    TableRcvCnt++;
	    TableRcvFlag=1;	/*开始接收表数据的标志位 */
	}
    else /*接收表数据 */
	{
	    *TablePint++=M2RcvReg;
	    TableRcvCnt++;
	}
    if(TableRcvCnt==84)  //共下传84个字，一个9931头加83个字
    {
	    TableRcvFlag=0; /*表数据接收完毕 */
	    TablePint = (Uint16 *)TableDatStart;
	    TableRcvCnt=0;  
	    FpgaInitial();
	    OrderFlag=9;
	    rcv_test_cmd=4;
	}			
    return;
}



void TableModifyRcv(void)
{
    if(TableModifyFlag==0)
    {
    	CmdRcvBufferPt=(Uint16 *)TableModifyUse;
    	*CmdRcvBufferPt++=M2RcvReg;
		TableModifyCounter++;
        TableModifyFlag=1;           //该标志收完后需清零
        switch(M2RcvReg)
		{
			case 0x995A:
				TableModifyNum = 0x3;
				break;
			default:
				TableModifyNum = 0x2;
				break;
		}
    }
    else
    {
    	*CmdRcvBufferPt++=M2RcvReg;
    	TableModifyCounter++;
		if (TableModifyCounter >= TableModifyNum)
		{
			OrderFlag = 11;
			TableModifyFlag = 0;
		}
	}
	return;
}

void TableModify1(void)
{

}


