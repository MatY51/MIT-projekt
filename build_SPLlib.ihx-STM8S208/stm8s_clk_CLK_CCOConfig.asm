;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_CCOConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_CCOConfig
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
;	../SPLSPL/src/stm8s_clk_CLK_CCOConfig.c: 40: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
; genLabel
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_CCOConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_CCOConfig.c: 46: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
; genPointerGet
	ld	a, 0x50c9
; genAnd
	and	a, #0xe1
; genPointerSet
	ld	0x50c9, a
;	../SPLSPL/src/stm8s_clk_CLK_CCOConfig.c: 49: CLK->CCOR |= (uint8_t)CLK_CCO;
; genPointerGet
	ld	a, 0x50c9
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c9, a
;	../SPLSPL/src/stm8s_clk_CLK_CCOConfig.c: 52: CLK->CCOR |= CLK_CCOR_CCOEN;
; genPointerGet
	ld	a, 0x50c9
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c9, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_clk_CLK_CCOConfig.c: 53: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
