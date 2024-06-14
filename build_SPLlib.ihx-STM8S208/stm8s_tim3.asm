;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_TI1_Config
	.globl _TIM3_TI2_Config
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
;	../SPLSPL/src/stm8s_tim3.c: 58: void TIM3_TI1_Config(uint8_t TIM3_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM3_TI1_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM3_TI1_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim3.c: 63: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5327
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5327, a
;	../SPLSPL/src/stm8s_tim3.c: 66: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
; genPointerGet
	ld	a, 0x5325
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5325, a
;	../SPLSPL/src/stm8s_tim3.c: 63: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5327
;	../SPLSPL/src/stm8s_tim3.c: 69: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim3.c: 71: TIM3->CCER1 |= TIM3_CCER1_CC1P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5327, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3.c: 75: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5327, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim3.c: 78: TIM3->CCER1 |= TIM3_CCER1_CC1E;
; genPointerGet
	ld	a, 0x5327
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5327, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim3.c: 79: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../SPLSPL/src/stm8s_tim3.c: 97: void TIM3_TI2_Config(uint8_t TIM3_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM3_TI2_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM3_TI2_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim3.c: 102: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
; genPointerGet
	ld	a, 0x5327
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5327, a
;	../SPLSPL/src/stm8s_tim3.c: 105: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
; genPointerGet
	ld	a, 0x5326
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim3.c: 107: ((uint8_t)( TIM3_ICFilter << 4))));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5326, a
;	../SPLSPL/src/stm8s_tim3.c: 102: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
; genPointerGet
	ld	a, 0x5327
;	../SPLSPL/src/stm8s_tim3.c: 110: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim3.c: 112: TIM3->CCER1 |= TIM3_CCER1_CC2P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5327, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3.c: 116: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5327, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim3.c: 120: TIM3->CCER1 |= TIM3_CCER1_CC2E;
; genPointerGet
	ld	a, 0x5327
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5327, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim3.c: 121: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
