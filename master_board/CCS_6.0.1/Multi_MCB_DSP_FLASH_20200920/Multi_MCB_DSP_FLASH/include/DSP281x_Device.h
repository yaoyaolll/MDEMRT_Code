// TI File $Revision: /main/3 $
// Checkin $Date: April 25, 2007   11:05:05 $
//###########################################################################
//
// FILE:   DSP281x_Device.h
//
// TITLE:  DSP281x Device Definitions.
//
//###########################################################################
// $TI Release: DSP281x Header Files V1.11 $
// $Release Date: September 26, 2007 $
//###########################################################################

#ifndef DSP281x_DEVICE_H
#define DSP281x_DEVICE_H


#ifdef __cplusplus
extern "C" {
#endif


#define   TARGET   1
//---------------------------------------------------------------------------
// User To Select Target Device:

#define   DSP28_F2812   TARGET
#define   DSP28_F2811   0
#define   DSP28_F2810   0

//---------------------------------------------------------------------------
// Common CPU Definitions:
//

extern cregister volatile unsigned int IFR;
extern cregister volatile unsigned int IER;

#define  EINT   asm(" clrc INTM")
#define  DINT   asm(" setc INTM")
#define  ERTM   asm(" clrc DBGM")
#define  DRTM   asm(" setc DBGM")
#define  EALLOW asm(" EALLOW")
#define  EDIS   asm(" EDIS")
#define  ESTOP0 asm(" ESTOP0")

#define M_INT1  0x0001
#define M_INT2  0x0002
#define M_INT3  0x0004
#define M_INT4  0x0008
#define M_INT5  0x0010
#define M_INT6  0x0020
#define M_INT7  0x0040
#define M_INT8  0x0080
#define M_INT9  0x0100
#define M_INT10 0x0200
#define M_INT11 0x0400
#define M_INT12 0x0800
#define M_INT13 0x1000
#define M_INT14 0x2000
#define M_DLOG  0x4000
#define M_RTOS  0x8000

#define BIT0    0x0001
#define BIT1    0x0002
#define BIT2    0x0004
#define BIT3    0x0008
#define BIT4    0x0010
#define BIT5    0x0020
#define BIT6    0x0040
#define BIT7    0x0080
#define BIT8    0x0100
#define BIT9    0x0200
#define BIT10   0x0400
#define BIT11   0x0800
#define BIT12   0x1000
#define BIT13   0x2000
#define BIT14   0x4000
#define BIT15   0x8000

//---------------------------------------------------------------------------
//存储区域首地址标识
//---------------------------------------------------------------------------
#define TableDatStart 		0x8040
#define TableUpDatStart     0x0140

#define Open_ADC			*(Uint16 *)		0x4010
#define Close_ADC			*(Uint16 *)		0x4011

#define	FPGA_ADC1_Choice	*(Uint16 *)		0x4018
#define	FPGA_ADC2_Choice	*(Uint16 *)		0x4019
#define	FPGA_ADC3_Choice	*(Uint16 *)		0x401A
#define	FPGA_ADC4_Choice	*(Uint16 *)		0x401B

//#define FreqSweepDatStart 	0x01A8
//#define CalDatStart       	0x8000
//#define LoggingDatStart   	0x8000
//#define DatRcvStart         0x100000
#define External_Ram_Start 	0x100000
#define External_Ram1_Start 0x140000
//---------------------------------------------------------------------------
//译码地址
//---------------------------------------------------------------------------
//new board used
//1.存储区域指针用
#define Adc_reg				    0x80000

//#define Adc_reg1				0x8040

#define rcvd_datareg            0x2000
#define send_cmd_reg            0x2001
#define M2_reg				    0x2005
#define M2_Sendone_Reg			0x2006
#define M5_Loadone_Reg          0x2007
#define M5_Sendata_Reg          0x2008
#define M7_Loadone_Reg          0x2009
#define M7_Sendata_Reg          0x200A
#define Usb_SendState_Reg		0x200B

#define CLK_M5M7_ONE_FLAG_ADDRESS          		0x200C
#define CLK_M5M7_FOUR_FLAG_ADDRESS          	0x200D

#define EcanBuffer              0x0400
#define M2TestTrainingZone      0x8000
#define M5TestTrainingZone		0x8008
#define M7TestTrainingZone		0x8019
#define CheckWord               0x802A
#define SoftRevWords1           0x802B
#define SoftRevWords2           0x802C
#define TableRevWords           0x802D
#define TableRevWordsFlag       0x802E

#define DisConectCmd			0x802F
#define ConectCmd				0x8030
#define CheckState				0x8031

#define DataHeadWord            0x8033
#define CheckSpeedWord1         0x8034
#define CheckSpeedWord2         0x8035

#define TableModifyUse          0x8036

#define DatRcvZone1Start        0x100000
#define DatRcvZone2Start        0x120000
//#define M2SendZone      		0x100000
//#define M5SendZone			0x101000
//#define M7SendZone			0x110000 

//2.译码地址用
#define ClkSourceRstOn			0x4000
#define ClkSourceRstOff			0x4001
#define EdibInterfaceRstOn		0x4002
#define EdibInterfaceRstOff		0x4003
#define M2SendStart				0x4004
#define M5SendEnOn              0x4006
#define M5SendEnOff             0x4007
#define ClrM5LoadoneFlag		0x4008
#define M7SendEnOn              0x4009
#define M7SendEnOff             0x400A
#define ClrM7LoadoneFlag		0x400B
#define UsbWrEn					0x400C
#define UsbRdEn					0x400D
#define UsbSIOn					0x400E
#define UsbSIOff				0x400F	

//---------------------------------------------------------------------------
// For Portability, User Is Recommended To Use Following Data Type Size
// Definitions For 16-bit and 32-Bit Signed/Unsigned Integers:
//

#ifndef DSP28_DATA_TYPES
#define DSP28_DATA_TYPES
typedef int             int16;
typedef long            int32;
typedef unsigned int    Uint16;
typedef unsigned long   Uint32;
typedef float           float32;
typedef long double     float64;
#endif


//---------------------------------------------------------------------------
// Include All Peripheral Header Files:
//

#include "DSP281x_SysCtrl.h"            // System Control/Power Modes
#include "DSP281x_DevEmu.h"             // Device Emulation Registers
#include "DSP281x_Xintf.h"              // External Interface Registers
#include "DSP281x_CpuTimers.h"          // 32-bit CPU Timers
#include "DSP281x_PieCtrl.h"            // PIE Control Registers
#include "DSP281x_PieVect.h"            // PIE Vector Table
#include "DSP281x_Spi.h"                // SPI Registers
#include "DSP281x_Sci.h"                // SCI Registers
#include "DSP281x_Mcbsp.h"              // McBSP Registers
#include "DSP281x_ECan.h"               // Enhanced eCAN Registers
#include "DSP281x_Gpio.h"               // General Purpose I/O Registers
#include "DSP281x_Ev.h"                 // Event Manager Registers
#include "DSP281x_Adc.h"                // ADC Registers
#include "DSP281x_XIntrupt.h"           // External Interrupts
#include "Cache_Reg.h"
#ifdef __cplusplus
}
#endif /* extern "C" */

#endif  // end of DSP281x_DEVICE_H definition


//===========================================================================
// No more.
//===========================================================================
