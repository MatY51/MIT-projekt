;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_SYSCLKEmergencyClear
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_SYSCLKEmergencyClear
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
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKEmergencyClear.c: 40: void CLK_SYSCLKEmergencyClear(void)
; genLabel
;	-----------------------------------------
;	 function CLK_SYSCLKEmergencyClear
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_SYSCLKEmergencyClear:
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKEmergencyClear.c: 42: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
; genPointerGet
	ld	a, 0x50c5
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c5, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKEmergencyClear.c: 43: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
