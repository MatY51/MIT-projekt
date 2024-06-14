;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_DeInit
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
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 42: void CLK_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_DeInit:
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 44: CLK->ICKR = CLK_ICKR_RESET_VALUE;
; genPointerSet
	mov	0x50c0+0, #0x01
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 45: CLK->ECKR = CLK_ECKR_RESET_VALUE;
; genPointerSet
	mov	0x50c1+0, #0x00
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 46: CLK->SWR  = CLK_SWR_RESET_VALUE;
; genPointerSet
	mov	0x50c4+0, #0xe1
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 47: CLK->SWCR = CLK_SWCR_RESET_VALUE;
; genPointerSet
	mov	0x50c5+0, #0x00
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 48: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
; genPointerSet
	mov	0x50c6+0, #0x18
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 49: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
; genPointerSet
	mov	0x50c7+0, #0xff
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 50: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
; genPointerSet
	mov	0x50ca+0, #0xff
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 51: CLK->CSSR = CLK_CSSR_RESET_VALUE;
; genPointerSet
	mov	0x50c8+0, #0x00
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 52: CLK->CCOR = CLK_CCOR_RESET_VALUE;
; genPointerSet
	mov	0x50c9+0, #0x00
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 53: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
; genLabel
00101$:
; genPointerGet
	ld	a, 0x50c9
; genAnd
	srl	a
	jrnc	00120$
	jp	00101$
00120$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 55: CLK->CCOR = CLK_CCOR_RESET_VALUE;
; genPointerSet
	mov	0x50c9+0, #0x00
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 56: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
; genPointerSet
	mov	0x50cc+0, #0x00
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 57: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
; genPointerSet
	mov	0x50cd+0, #0x00
; genLabel
00104$:
;	../SPLSPL/src/stm8s_clk_CLK_DeInit.c: 58: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
