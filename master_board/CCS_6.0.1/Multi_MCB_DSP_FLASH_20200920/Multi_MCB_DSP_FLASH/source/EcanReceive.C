//###########################################################################
//
// FILE:	EcanReceive.c
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

extern long int0count;
extern long int1count;
extern int  rcv_flag;
extern Uint16 buffer; 
extern int ParaModify;
extern int  OrderFlag;
extern int  TableModify;
extern int  TableRcvFlag;
extern int  TableRcvCnt;
extern Uint16 *TablePint;
extern struct ECAN_REGS ECanaShadow;

//Fuction Declare
interrupt void eCAN0INT_ISR(void);
interrupt void eCAN1INT_ISR(void);
static void TableRcv(void);

/* --------------------------------------------------- */   
/* ISR for PIE INT9.5  (MBX30)                         */   
/* Connected to eCAN0-INTA  eCAN                       */   
/* ----------------------------------------------------*/   
   
interrupt void eCAN0INT_ISR(void)  // eCAN    
{   
   ECanaShadow.CANRMP.all = 0 ;   
   //ECanaRegs.CANTA.all =  ECanaShadow.CANTA.all ;    
   int0count++;   
     
   PieCtrlRegs.PIEACK.bit.ACK9 = 1;    // Enables PIE to drive a pulse into the CPU    
   IER |= 0x0120;                   // Enable INT9     
   EINT;   
   return;   
}   
   
/* --------------------------------------------------- */   
/* ISR for PIE INT9.6 (MBX5)                           */   
/* Connected to eCAN1-INTA  eCAN                       */   
/* ----------------------------------------------------*/   
   
interrupt void eCAN1INT_ISR(void)  // eCAN    
{   
   struct ECAN_REGS ECanaShadow;
   asm (" NOP"); 
   ECanaShadow.CANRMP.all = 0xFFFFFFFF; 
   ECanaRegs.CANRMP.all = ECanaShadow.CANRMP.all ; 
   ECanaRegs.CANGIF0.all=0xFFFFFFFF;
   ECanaRegs.CANGIF1.all=0xFFFFFFFF;  
       
   // ECanaShadow.CANTA.all = ECanaRegs.CANTA.all ;    
  //  buffer = ECanaMboxes.MBOX0.MDRL.bit.LOW_WORD;      
   rcv_flag=1;     
   PieCtrlRegs.PIEACK.bit.ACK9 = 1;    // Enables PIE to drive a pulse into the CPU 
   buffer=ECanaMboxes.MBOX5.MDL.byte.BYTE0;
   if((ECanaMboxes.MBOX5.MDL.word.HI_WORD==0x9931)||(TableRcvFlag==1))
   {
   		TableRcv();
   		//ParaModify=1;  //表数据接收完成后修改
   		TableModify=1;
   		OrderFlag=0;
   }
   else 
   {
   	if(ECanaMboxes.MBOX5.MDL.word.HI_WORD==0x9921)
   		{ 
   			ParaModify=1;
   			OrderFlag=1;
   		}
   	else
		{
   			if(ECanaMboxes.MBOX5.MDL.word.HI_WORD==0x9910)
   				{
   					ParaModify=1;
   					OrderFlag=2;
   				}
			else
			{
				if(ECanaMboxes.MBOX5.MDL.word.HI_WORD==0x9522)
					{
						ParaModify=1;
   						OrderFlag=3;
					}
				else
					if(ECanaMboxes.MBOX5.MDL.word.HI_WORD==0x9523)
					{
						ParaModify=1;
   						OrderFlag=4;
					}
			}
		}
	}
   	IER |= 0x0120;                   // Enable INT9     
   	EINT;   
    return;   
}


void TableRcv(void)
{
    if(TableRcvFlag==0)
	{
	    *TablePint++=ECanaMboxes.MBOX5.MDL.word.LOW_WORD;
	    *TablePint++=ECanaMboxes.MBOX5.MDH.word.HI_WORD;
	    *TablePint++=ECanaMboxes.MBOX5.MDH.word.LOW_WORD;
	    TableRcvCnt++;
	    TableRcvFlag=1;	
	}
    else
	{
	    *TablePint++=ECanaMboxes.MBOX5.MDL.word.HI_WORD;
	    *TablePint++=ECanaMboxes.MBOX5.MDL.word.LOW_WORD;
	    *TablePint++=ECanaMboxes.MBOX5.MDH.word.HI_WORD;
	    *TablePint++=ECanaMboxes.MBOX5.MDH.word.LOW_WORD;	
	    TableRcvCnt++;
	}
    if(TableRcvCnt==26)  //共下传103个字，一个9531头加102个字
    {
	    TableRcvFlag=0;
	    TablePint = (Uint16 *)TableDatStart;
	    TableRcvCnt=0;  
	    ParaModify=1;
	}			
    return;
}

