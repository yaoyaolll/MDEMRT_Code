// TI File $Revision: /main/2 $
// Checkin $Date: April 29, 2005   11:00:54 $
//###########################################################################
//
// FILE:   DSP281x_XIntrupt.c
//
// TITLE:  DSP28 External Interrupt Initialization & Support Functions.
//
//###########################################################################
// $TI Release: DSP281x Header Files V1.11 $
// $Release Date: September 26, 2007 $
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File

interrupt void M2RcvInt(void);  // �жϺ�������
interrupt void AdcRcvInt(void);  // �жϺ�������

//---------------------------------------------------------------------------
// InitXIntrupt: 
//---------------------------------------------------------------------------
// This function initializes external interrupts to a known state.
//
void InitXIntrupt(void)
{
    XIntruptRegs.XINT1CR.bit.POLARITY=0;//ʹ��XINT1
    XIntruptRegs.XINT1CR.bit.ENABLE=1;   
    XIntruptRegs.XINT2CR.bit.POLARITY=1;//ʹ��XINT2
    XIntruptRegs.XINT2CR.bit.ENABLE=1;            
	
    PieCtrlRegs.PIEIER1.bit.INTx4 = 1;  // Enable INTx.4 of INT1 (xint1)
	PieCtrlRegs.PIEIER1.bit.INTx5 = 1;  // Enable INTx.4 of INT1 (xint1)
    /*���жϱ�־*/
	PieCtrlRegs.PIEACK.bit.ACK1 = 1;    // Enables PIE to drive a pulse into the CPU    
	
	EALLOW;    /*����Ĵ�������*/       
    PieVectTable.XINT1 = &M2RcvInt;     //EDIB CMDͨ�������ж�
    PieVectTable.XINT2 = &AdcRcvInt;   
    EDIS;       /*ʹ�ܼĴ�������*/
}


//===========================================================================
// No more.
//===========================================================================
