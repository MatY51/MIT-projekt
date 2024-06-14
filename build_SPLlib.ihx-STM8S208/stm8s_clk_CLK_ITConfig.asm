;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_ITConfig
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
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 39: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_ITConfig:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 47: switch (CLK_IT)
; genCmpEQorNE
	cp	a, #0x0c
	jrne	00150$
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	jp	00151$
00150$:
	clr	(0x01, sp)
00151$:
; genCmpEQorNE
	cp	a, #0x1c
	jrne	00153$
	ld	a, #0x01
	jp	00154$
00153$:
	clr	a
00154$:
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 45: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00155$
	jp	00110$
00155$:
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 47: switch (CLK_IT)
; genIfx
	tnz	(0x01, sp)
	jreq	00156$
	jp	00102$
00156$:
; genIfx
	tnz	a
	jrne	00157$
	jp	00112$
00157$:
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 50: CLK->SWCR |= CLK_SWCR_SWIEN;
; genPointerGet
	ld	a, 0x50c5
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c5, a
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 51: break;
; genGoto
	jp	00112$
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 52: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 53: CLK->CSSR |= CLK_CSSR_CSSDIE;
; genPointerGet
	ld	a, 0x50c8
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c8, a
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 54: break;
; genGoto
	jp	00112$
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 57: }
; genLabel
00110$:
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 61: switch (CLK_IT)
; genIfx
	tnz	(0x01, sp)
	jreq	00158$
	jp	00106$
00158$:
; genIfx
	tnz	a
	jrne	00159$
	jp	00112$
00159$:
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 64: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
; genPointerGet
	ld	a, 0x50c5
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c5, a
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 65: break;
; genGoto
	jp	00112$
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 66: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
; genLabel
00106$:
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 67: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
; genPointerGet
	ld	a, 0x50c8
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c8, a
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 71: }
; genLabel
00112$:
;	../SPLSPL/src/stm8s_clk_CLK_ITConfig.c: 73: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
