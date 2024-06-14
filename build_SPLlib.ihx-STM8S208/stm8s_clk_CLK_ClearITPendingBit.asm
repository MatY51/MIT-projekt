;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_ClearITPendingBit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_ClearITPendingBit
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
;	../SPLSPL/src/stm8s_clk_CLK_ClearITPendingBit.c: 37: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
; genLabel
;	-----------------------------------------
;	 function CLK_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_ClearITPendingBit:
; genReceive
;	../SPLSPL/src/stm8s_clk_CLK_ClearITPendingBit.c: 42: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
; genCmpEQorNE
	cp	a, #0x0c
	jrne	00114$
	jp	00115$
00114$:
	jp	00102$
00115$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_ClearITPendingBit.c: 45: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
; genPointerGet
	ld	a, 0x50c8
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x50c8, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_ClearITPendingBit.c: 50: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
; genPointerGet
	ld	a, 0x50c5
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x50c5, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_clk_CLK_ClearITPendingBit.c: 53: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
