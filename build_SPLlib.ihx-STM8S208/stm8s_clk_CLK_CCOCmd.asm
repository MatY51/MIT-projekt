;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_CCOCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_CCOCmd
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
;	../SPLSPL/src/stm8s_clk_CLK_CCOCmd.c: 37: void CLK_CCOCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_CCOCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_CCOCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_CCOCmd.c: 45: CLK->CCOR |= CLK_CCOR_CCOEN;
; genPointerGet
	ld	a, 0x50c9
;	../SPLSPL/src/stm8s_clk_CLK_CCOCmd.c: 42: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_clk_CLK_CCOCmd.c: 45: CLK->CCOR |= CLK_CCOR_CCOEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c9, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_CCOCmd.c: 50: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c9, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_clk_CLK_CCOCmd.c: 52: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
