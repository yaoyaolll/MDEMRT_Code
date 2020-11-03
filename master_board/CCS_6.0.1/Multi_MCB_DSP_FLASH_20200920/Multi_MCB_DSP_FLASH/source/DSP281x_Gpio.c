// TI File $Revision: /main/2 $
// Checkin $Date: April 29, 2005   11:10:14 $
//###########################################################################
//
// FILE:	DSP281x_Gpio.c
//
// TITLE:	DSP281x General Purpose I/O Initialization & Support Functions.
//
//###########################################################################
// $TI Release: DSP281x Header Files V1.11 $
// $Release Date: September 26, 2007 $
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

//---------------------------------------------------------------------------
// InitGpio: 
//---------------------------------------------------------------------------
// This function initializes the Gpio to a known state.
//
void InitGpio(void)
{

// Set GPIO A port pins,AL(Bits 7:0)(input)-AH(Bits 15:8) (output) 8bits
// Input Qualifier =0, none
     EALLOW;
     GpioMuxRegs.GPAMUX.all=0x0000;     
     GpioMuxRegs.GPADIR.all=0x0FFFF;    	// upper byte as output/low byte as input
     GpioMuxRegs.GPAQUAL.all=0x0000;	// Input qualifier disabled

// Set GPIO B port pins, configured as EVB signals
// Input Qualifier =0, none
// Set bits to 1 to configure peripherals signals on the pins
     GpioMuxRegs.GPBMUX.all=0x0000;  
     GpioMuxRegs.GPBDIR.all=0x0FFFF; 
     GpioMuxRegs.GPBQUAL.all=0x0000;	// Input qualifier disabled
    
	 GpioMuxRegs.GPEMUX.all=0x0FFFF;  //外部中断引脚设置

	 GpioDataRegs.GPADAT.bit.GPIOA3=0;//关闭S2_ON

     EDIS;
//FPGA连接中GPIO1-GPIOB9,GPIO2-GPIOB10,GPIO3-GPIOB13,GPIO4-GPIOB14,GPIO5-GPIOB15
}	
	
//===========================================================================
// No more.
//===========================================================================
