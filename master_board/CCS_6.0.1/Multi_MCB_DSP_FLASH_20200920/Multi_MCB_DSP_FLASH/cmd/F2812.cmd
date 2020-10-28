/*
// TI File $Revision: /main/2 $
// Checkin $Date: April 28, 2005   15:19:56 $
//###########################################################################
//
// FILE:	F2812.cmd
//
// TITLE:	Linker Command File For F2812 Device
//
//###########################################################################
// $TI Release: DSP281x C/C++ Header Files V1.20 $
// $Release Date: July 27, 2009 $
//###########################################################################
*/

/* ======================================================
// For Code Composer Studio V2.2 and later
// ---------------------------------------
// In addition to this memory linker command file, 
// add the header linker command file directly to the project. 
// The header linker command file is required to link the
// peripheral structures to the proper locations within 
// the memory map.
//
// The header linker files are found in <base>\DSP281x_Headers\cmd
//   
// For BIOS applications add:      DSP281x_Headers_nonBIOS.cmd
// For nonBIOS applications add:   DSP281x_Headers_nonBIOS.cmd    
========================================================= */

/* ======================================================
// For Code Composer Studio prior to V2.2
// --------------------------------------
// 1) Use one of the following -l statements to include the 
// header linker command file in the project. The header linker
// file is required to link the peripheral structures to the proper 
// locations within the memory map                                    */

/* Uncomment this line to include file only for non-BIOS applications */
/* -l DSP281x_Headers_nonBIOS.cmd */

/* Uncomment this line to include file only for BIOS applications */
/* -l DSP281x_Headers_BIOS.cmd */

/* 2) In your project add the path to <base>\DSP281x_headers\cmd to the
   library search path under project->build options, linker tab, 
   library search path (-i).
/*========================================================= */

/* Define the memory block start/length for the F2812  
   PAGE 0 will be used to organize program sections
   PAGE 1 will be used to organize data sections

   Notes: 
         Memory blocks on F2812 are uniform (ie same
         physical memory) in both PAGE 0 and PAGE 1.  
         That is the same memory region should not be
         defined for both PAGE 0 and PAGE 1.
         Doing so will result in corruption of program 
         and/or data. 
*/

-stack 400h

MEMORY
{
PAGE 0:    /* Program Memory */
           /* Memory (RAM/FLASH/OTP) blocks can be moved to PAGE1 for data allocation */

   BEGIN_FLASH : origin = 0x3F7FF6, length = 0x000002
   OTP         : origin = 0x3D7800, length = 0x000400     /* on-chip OTP */
   FLASH_IJ    : origin = 0x3D8000, length = 0x004000     /* on-chip FLASH */
   FLASH_GH    : origin = 0x3DC000, length = 0x008000     /* on-chip FLASH */
   FLASH_EF    : origin = 0x3E4000, length = 0x008000     /* on-chip FLASH */
   FLASH_CD    : origin = 0x3EC000, length = 0x008000     /* on-chip FLASH */
   FLASH_AB    : origin = 0x3F4000, length = 0x003F80     /* on-chip FLASH */
   CSM_RSVD    : origin = 0x3F7F80, length = 0x000076     /* Part of FLASHA.  Program with all 0x0000 when CSM is in use. */
   CSM_PWL     : origin = 0x3F7FF8, length = 0x000008     /* Part of FLASHA.  CSM password locations in FLASHA */
   RAM_H0      : origin = 0x3f8000, length = 0x002000
   ROM         : origin = 0x3FF000, length = 0x000FC0     /* Boot ROM */
   RESET       : origin = 0x3FFFC0, length = 0x000002     /* part of boot ROM (MP/MCn=0) or XINTF zone 7 (MP/MCn=1) */
   VECTORS     : origin = 0x3FFFC2, length = 0x00003E     /* part of boot ROM (MP/MCn=0) or XINTF zone 7 (MP/MCn=1) */


PAGE 1 :   /* Data Memory */
           /* Memory (RAM/FLASH/OTP) blocks can be moved to PAGE0 for program allocation */
           /* Registers remain on PAGE1                                                  */

   /* For this example, H0 is split between PAGE 0 and PAGE 1 */
   RAMM01    : origin = 0x000000, length = 0x000040
   TABLEREGSRAM:origin = 0x000040, length = 0x00028
   FORBIDZONE:	origin = 0x000068, length = 0x000C2
   TABLEUPREGS: origin = 0x000140, length = 0x00030
   SWEEPFREQDATA : origin = 0x000170, length = 0x000290
   RAMM1    : origin = 0x000400, length = 0x000400
   DRAMH0    : origin = 0x3f9300, length = 0x00A00

   DEV_EMU     : origin = 0x000880, length = 0x000180     /* device emulation registers */
   PIE_VECT    : origin = 0x000D00, length = 0x000100     /* PIE Vector Table */
   FLASH_REGS  : origin = 0x000A80, length = 0x000060     /* FLASH registers */
   CSM         : origin = 0x000AE0, length = 0x000010     /* code security module registers */
   XINTF       : origin = 0x000B20, length = 0x000020     /* external interface registers */
   CPU_TIMER0  : origin = 0x000C00, length = 0x000008     /* CPU Timer0 registers (CPU Timer1 and Timer2 are reserved for BIOS)*/
   PIE_CTRL    : origin = 0x000CE0, length = 0x000020     /* PIE control registers */
   ECANA       : origin = 0x006000, length = 0x000040     /* eCAN control and status registers */
   ECANA_LAM   : origin = 0x006040, length = 0x000040     /* eCAN local acceptance masks */
   ECANA_MOTS  : origin = 0x006080, length = 0x000040     /* eCAN message object time stamps */
   ECANA_MOTO  : origin = 0x0060C0, length = 0x000040     /* eCAN object time-out registers */
   ECANA_MBOX  : origin = 0x006100, length = 0x000100     /* eCAN mailboxes */
   SYSTEM      : origin = 0x007010, length = 0x000020     /* System control registers */
   SPIA        : origin = 0x007040, length = 0x000010     /* SPI registers */
   SCIA        : origin = 0x007050, length = 0x000010     /* SCI-A registers */
   XINTRUPT    : origin = 0x007070, length = 0x000010     /* external interrupt registers */
   GPIOMUX     : origin = 0x0070C0, length = 0x000020     /* GPIO mux registers */
   GPIODAT     : origin = 0x0070E0, length = 0x000020     /* GPIO data registers */
   ADC         : origin = 0x007100, length = 0x000020     /* ADC registers */
   EVA         : origin = 0x007400, length = 0x000040     /* Event Manager A registers */
   EVB         : origin = 0x007500, length = 0x000040     /* Event Manager B registers */
   SCIB        : origin = 0x007750, length = 0x000010     /* SCI-B registers */
   MCBSPA      : origin = 0x007800, length = 0x000040     /* McBSP registers */
   CSM_PWL     : origin = 0x3F7FF8, length = 0x000008     /* Part of FLASHA.  CSM password locations. */

   XINF_ZONE0  : origin = 0x002000, length = 0x002000
   XINF_ZONE1  : origin = 0x004000, length = 0x002000
   M2TSTRAINZONE : origin = 0x008000, length = 0x000008
   M5TSTRAINZONE : origin = 0x008008, length = 0x000011
   M7TSTRAINZONE : origin = 0x008019, length = 0x000011

}

/* Allocate sections to memory blocks.
   Note:
         codestart user defined section in DSP28_CodeStartBranch.asm used to redirect code 
                   execution when booting to flash
         ramfuncs  user defined section to store functions that will be copied from Flash into RAM
*/ 
 
SECTIONS
{
 
/*** User Defined Sections ***/
   	codestart       : > BEGIN_FLASH,	PAGE = 0        /* Used by file CodeStartBranch.asm */
   	wddisable		: > FLASH_AB,		PAGE = 0		/* Used by file CodeStartBranch.asm */
  	copysections	: > FLASH_AB,		PAGE = 0		/* Used by file SectionCopy.asm */

/* .reset is a standard section used by the compiler.  It contains the */
/* the address of the start of _c_int00 for C Code.   /*
/* When using the boot ROM this section and the CPU vector */
/* table is not needed.  Thus the default type is set here to  */
/* DSECT  */
	.reset         	: > RESET,      	PAGE = 0, TYPE = DSECT
	vectors         : > VECTORS,     	PAGE = 0, TYPE = DSECT


/*** Uninitialized Sections ***/
   	.stack          : > RAMM1,       	PAGE = 1
   	.bss            : > DRAMH0 ,      	PAGE = 1
   	.ebss           : > DRAMH0 ,      	PAGE = 1
   	.esysmem        : > DRAMH0 ,      	PAGE = 1
    .sysmem         : > DRAMH0 ,     	PAGE = 1
    .cio            : > DRAMH0 ,     	PAGE = 1
    my_rev1         : > DRAMH0,          PAGE = 1
   	my_rev2         : > DRAMH0,          PAGE = 1


/*** Initialized Sections ***/
  	.cinit			:	LOAD = FLASH_AB,	PAGE = 0	/* Load section to Flash */
                		RUN = RAM_H0,  		PAGE = 0    /* Run section from RAM */
                		LOAD_START(_cinit_loadstart),
                		RUN_START(_cinit_runstart),
						SIZE(_cinit_size)

	.const			:	LOAD = FLASH_AB,	PAGE = 0
                		LOAD_START(_const_loadstart),
                		RUN_START(_const_runstart),
						SIZE(_const_size)


	.econst			:   LOAD = FLASH_AB,  	PAGE = 0   	/* Load section to Flash */
                		RUN = RAM_H0,  		PAGE = 0    /* Run section from RAM */
                		LOAD_START(_econst_loadstart),
                		RUN_START(_econst_runstart),
						SIZE(_econst_size)

	.pinit			:   LOAD = FLASH_AB,  	PAGE = 0    /* Load section to Flash */
                		RUN = RAM_H0,   	PAGE = 0    /* Run section from RAM */
                		LOAD_START(_pinit_loadstart),
                		RUN_START(_pinit_runstart),
						SIZE(_pinit_size)

	.switch			:   LOAD = FLASH_AB,  	PAGE = 0   	/* Load section to Flash */
                		RUN = RAM_H0,   	PAGE = 0    /* Run section from RAM */
                		LOAD_START(_switch_loadstart),
                		RUN_START(_switch_runstart),
						SIZE(_switch_size)

	.text			:   LOAD = FLASH_AB, 	PAGE = 0    /* Load section to Flash */
                		RUN = RAM_H0,   	PAGE = 0    /* Run section from RAM */
                		LOAD_START(_text_loadstart),
                		RUN_START(_text_runstart),
						SIZE(_text_size)

	ramfuncs	    :   LOAD = FLASH_AB,  	PAGE = 0   	/* Load section to Flash */
                		RUN = RAM_H0,   	PAGE = 0    /* Run section from RAM */
                		LOAD_START(_ramfuncs_loadstart),
                		RUN_START(_ramfuncs_runstart),
						SIZE(_ramfuncs_size)

   PieVectTableFile : > PIE_VECT,   PAGE = 1

/*** Peripheral Frame 0 Register Structures ***/
   DevEmuRegsFile    : > DEV_EMU,     PAGE = 1
   FlashRegsFile     : > FLASH_REGS,  PAGE = 1
   CsmRegsFile       : > CSM,         PAGE = 1
   XintfRegsFile     : > XINTF,       PAGE = 1
   CpuTimer0RegsFile : > CPU_TIMER0,  PAGE = 1
   PieCtrlRegsFile   : > PIE_CTRL,    PAGE = 1

/*** Peripheral Frame 1 Register Structures ***/
   SysCtrlRegsFile   : > SYSTEM,      PAGE = 1
   SpiaRegsFile      : > SPIA,        PAGE = 1
   SciaRegsFile      : > SCIA,        PAGE = 1
   XIntruptRegsFile  : > XINTRUPT,    PAGE = 1
   GpioMuxRegsFile   : > GPIOMUX,     PAGE = 1
   GpioDataRegsFile  : > GPIODAT      PAGE = 1
   AdcRegsFile       : > ADC,         PAGE = 1
   EvaRegsFile       : > EVA,         PAGE = 1
   EvbRegsFile       : > EVB,         PAGE = 1
   ScibRegsFile      : > SCIB,        PAGE = 1
   McbspaRegsFile    : > MCBSPA,      PAGE = 1

/*** Peripheral Frame 2 Register Structures ***/
   ECanaRegsFile     : > ECANA,       PAGE = 1
   ECanaLAMRegsFile  : > ECANA_LAM    PAGE = 1
   ECanaMboxesFile   : > ECANA_MBOX   PAGE = 1
   ECanaMOTSRegsFile : > ECANA_MOTS   PAGE = 1
   ECanaMOTORegsFile : > ECANA_MOTO   PAGE = 1

/*** Code Security Module Register Structures ***/
   CsmPwlFile        : > CSM_PWL,     PAGE = 1
/***Table Cache Register Structures***/
   TableCacheRegsFile : > TABLEREGSRAM,     PAGE = 1
   TableCacheUpRegsFile : > TABLEUPREGS,     PAGE = 1
}
