;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_ClockSecuritySystemEnable
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_ClockSecuritySystemEnable
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../SPLSPL/src/stm8s_clk_CLK_ClockSecuritySystemEnable.c: 38: void CLK_ClockSecuritySystemEnable(void)
; genLabel
;	-----------------------------------------
;	 function CLK_ClockSecuritySystemEnable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_ClockSecuritySystemEnable:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSecuritySystemEnable.c: 41: CLK->CSSR |= CLK_CSSR_CSSEN;
; genPointerGet
	ld	a, 0x50c8
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c8, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSecuritySystemEnable.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
