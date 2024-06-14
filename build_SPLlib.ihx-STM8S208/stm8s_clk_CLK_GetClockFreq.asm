;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_GetClockFreq
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
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
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 37: uint32_t CLK_GetClockFreq(void)
; genLabel
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_CLK_GetClockFreq:
	sub	sp, #4
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 44: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
; genPointerGet
	ld	a, 0x50c3
	ld	(0x04, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 46: if (clocksource == CLK_SOURCE_HSI)
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0xe1
	jrne	00124$
	jp	00125$
00124$:
	jp	00105$
00125$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 48: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
; genPointerGet
	ld	a, 0x50c6
; genAnd
	and	a, #0x18
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 49: tmp = (uint8_t)(tmp >> 3);
; genRightShiftLiteral
	srl	a
	srl	a
	srl	a
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 50: presc = HSIDivFactor[tmp];
; skipping iCode since result will be rematerialized
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_HSIDivFactor+0)
; genPointerGet
	ld	a, (x)
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 51: clockfrequency = HSI_VALUE / presc;
; genCast
; genAssign
	clrw	x
	clr	(0x01, sp)
; genIPush
	push	a
	pushw	x
	clr	a
	push	a
; genIPush
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
; genCall
	call	__divulong
	addw	sp, #8
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 53: else if ( clocksource == CLK_SOURCE_LSI)
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0xd2
	jrne	00127$
	jp	00128$
00127$:
	jp	00102$
00128$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 55: clockfrequency = LSI_VALUE;
; genAssign
	ldw	x, #0xf400
	ldw	y, #0x0001
; genGoto
	jp	00106$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 59: clockfrequency = HSE_VALUE;
; genAssign
	ldw	x, #0x3600
	ldw	y, #0x016e
; genLabel
00106$:
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 62: return((uint32_t)clockfrequency);
; genReturn
; genLabel
00107$:
;	../SPLSPL/src/stm8s_clk_CLK_GetClockFreq.c: 63: }
; genEndFunction
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
