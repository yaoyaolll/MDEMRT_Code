//###########################################################################
//
// FILE:	DSP28_ECan.c
//
// TITLE:	DSP28 Enhanced CAN Initialization & Support Functions.
//
//###########################################################################
//
//  Ver | dd mmm yyyy | Who  | Description of changes
// =====|=============|======|===============================================
//  1.00| 06 May 2002 | W.Y.Y | First Release

//###########################################################################

#include "DSP281x_Device.h"
interrupt void eCAN0INT_ISR(void); 
interrupt void eCAN1INT_ISR(void);
void InitECan(void);
void ECanIntConfig(void);
//---------------------------------------------------------------------------
// InitECan: 
//---------------------------------------------------------------------------
// This function initializes to a known state.

void InitECan(void)
{
	asm(" EALLOW");
	GpioMuxRegs.GPFMUX.bit.CANTXA_GPIOF6=1;/*使能CANTX&CANRX*/
	GpioMuxRegs.GPFMUX.bit.CANRXA_GPIOF7=1;
	
	ECanaRegs.CANTIOC.bit.TXFUNC=1;
	ECanaRegs.CANRIOC.bit.RXFUNC=1;
	
	ECanaRegs.CANMC.bit.SCB=1; /*选择ECan模式*/
	
	ECanaMboxes.MBOX0.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX1.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX2.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX3.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX4.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX5.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX6.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX7.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX8.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX9.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX10.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX11.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX12.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX13.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX14.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX15.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX16.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX17.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX18.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX19.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX20.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX21.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX22.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX23.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX24.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX25.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX26.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX27.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX28.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX29.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX30.MSGCTRL.all=0x00000000;
	ECanaMboxes.MBOX31.MSGCTRL.all=0x00000000;

  ECanaRegs.CANTA.all=0xFFFFFFFF;    /*清CANTA发送响应寄存器*/
  ECanaRegs.CANRMP.all=0xFFFFFFFF; 
  ECanaRegs.CANGIF0.all=0xFFFFFFFF;
	ECanaRegs.CANGIF1.all=0xFFFFFFFF;	
	ECanaRegs.CANMC.bit.CCR=1;         /*改变配置请求*/
	while(ECanaRegs.CANES.bit.CCE!=1){} 
	
	ECanaRegs.CANBTC.bit.BRPREG=2;
	ECanaRegs.CANBTC.bit.TSEG2REG=2;
	ECanaRegs.CANBTC.bit.TSEG1REG=5;    /*BTC设置为1M*/
	
	ECanaRegs.CANMC.bit.CCR=0;
	while(ECanaRegs.CANES.bit.CCE==!0){}
	
	ECanaRegs.CANME.all=0;    /*不使能所有的邮箱*/
	
	ECanaMboxes.MBOX5.MSGID.all=0x1FFFFFFF;
	ECanaMboxes.MBOX6.MSGID.all=0x1FFFFFFF;
	ECanaMboxes.MBOX7.MSGID.all=0x1FFFFFFF;
	
	ECanaRegs.CANMD.bit.MD5=1;
	ECanaRegs.CANME.bit.ME5=1;
	ECanaRegs.CANMD.bit.MD6=0;
	ECanaRegs.CANME.bit.ME6=1;
	ECanaRegs.CANMD.bit.MD7=0;
	ECanaRegs.CANME.bit.ME7=1;
	
	
	ECanaMboxes.MBOX6.MSGCTRL.bit.DLC=8;	
	ECanaMboxes.MBOX6.MDL.all=0x00000000;
	ECanaMboxes.MBOX6.MDH.all=0x00000000;
	ECanaMboxes.MBOX7.MSGCTRL.bit.DLC=8;	
	ECanaMboxes.MBOX7.MDL.all=0x00000000;
	ECanaMboxes.MBOX7.MDH.all=0x00000000;
	
}

void ECanIntConfig(void)
{
	struct ECAN_REGS ECanaShadow;
	EALLOW;    /*解除寄存器保护*/
/* Reassign ISRs. i.e. reassign the PIE vector for ECAN0INTA_ISR and ECAN0INTA_ISR   
   to point to a different ISR than the shell routine found in DSP28_DefaultIsr.c.  
   This is done if the user does not want to use the shell ISR routine but instead  
   wants to embed the ISR in this file itself. */   
       
  PieVectTable.ECAN0INTA = &eCAN0INT_ISR;   
  PieVectTable.ECAN1INTA = &eCAN1INT_ISR;
	EDIS;      /*使能寄存器保护*/
	/*配置CAN中断*/
	EALLOW;
	/* Configure CAN interrupts */  
  ECanaShadow.CANMIL.all = 0x00000020 ; // Interrupts asserted on eCAN1INT    
  //ECanaShadow.CANMIL.all  = 0x00000000 ; // Interrupts asserted on eCAN0INT     
  ECanaRegs.CANMIL.all = ECanaShadow.CANMIL.all;   
  
  ECanaShadow.CANMIM.all  = 0xFFFFFFFF;   // Enable interrupts for all mailboxes    
  ECanaRegs.CANMIM.all = ECanaShadow.CANMIM.all; 
  
  ECanaShadow.CANGIM.all = 0;    
  // ECanaShadow.CANGIM.bit.I0EN = 1;   // Enable eCAN1INT or eCAN0INT     
  ECanaShadow.CANGIM.bit.I1EN = 1;   
  ECanaRegs.CANGIM.all = ECanaShadow.CANGIM.all;   
	EDIS;      /*使能寄存器保护*/                  
	
	/*清中断标志*/
	PieCtrlRegs.PIEACK.bit.ACK9 = 1;    // Enables PIE to drive a pulse into the CPU    
   
// The interrupt can be asserted in either of the eCAN interrupt lines    
// Comment out the unwanted line...    
   
  PieCtrlRegs.PIEIER9.bit.INTx5 = 1;  // Enable INTx.5 of INT9 (eCAN0INT)    
  PieCtrlRegs.PIEIER9.bit.INTx6 = 1;  // Enable INTx.6 of INT9 (eCAN1INT)    


}
