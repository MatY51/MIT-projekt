;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_HSIPrescalerConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_HSIPrescalerConfig
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
;	../SPLSPL/src/stm8s_clk_CLK_HSIPrescalerConfig.c: 37: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
; genLabel
;	-----------------------------------------
;	 function CLK_HSIPrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_HSIPrescalerConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_HSIPrescalerConfig.c: 43: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
; genPointerGet
	ld	a, 0x50c6
; genAnd
	and	a, #0xe7
; genPointerSet
	ld	0x50c6, a
;	../SPLSPL/src/stm8s_clk_CLK_HSIPrescalerConfig.c: 46: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
; genPointerGet
	ld	a, 0x50c6
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c6, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_clk_CLK_HSIPrescalerConfig.c: 47: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
