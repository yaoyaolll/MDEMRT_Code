;// TI File $Revision: /main/2 $
;// Checkin $Date: April 29, 2005   11:11:32 $
;//###########################################################################
;//
;// FILE:  DSP281x_CodeStartBranch.asm	
;//
;// TITLE: Branch for redirecting code execution after boot. 
;//
;//###########################################################################
;// $TI Release: DSP281x Header Files V1.11 $
;// $Release Date: September 26, 2007 $
;//###########################################################################

***********************************************************************

WD_DISABLE	.set	1		;set to 1 to disable WD, else set to 0

    .ref copy_sections
    .global code_start

***********************************************************************
* Function: codestart section
*
* Description: Branch to code starting point
***********************************************************************

    .sect "codestart"

code_start:
    .if WD_DISABLE == 1
        LB wd_disable       ;Branch to watchdog disable code
    .else
        LB copy_sections    ;Branch to copy_sections 
    .endif

;end codestart section


***********************************************************************
* Function: wd_disable
*
* Description: Disables the watchdog timer
***********************************************************************
    .if WD_DISABLE == 1

   .sect "wddisable"
wd_disable:
    SETC OBJMODE        ;Set OBJMODE for 28x object code
    EALLOW              ;Enable EALLOW protected register access
    MOVZ DP, #7029h>>6  ;Set data page for WDCR register
    MOV @7029h, #0068h  ;Set WDDIS bit in WDCR to disable WD
    EDIS                ;Disable EALLOW protected register access
    LB copy_sections         ;Branch to start of boot.asm in RTS library

    .endif

;end wd_disable



	.end
	
; end of file CodeStartBranch.asm
