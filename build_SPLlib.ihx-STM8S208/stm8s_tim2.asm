;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_TI1_Config
	.globl _TIM2_TI2_Config
	.globl _TIM2_TI3_Config
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
;	../SPLSPL/src/stm8s_tim2.c: 56: void TIM2_TI1_Config(uint8_t TIM2_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM2_TI1_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_TI1_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim2.c: 61: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5308, a
;	../SPLSPL/src/stm8s_tim2.c: 64: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
; genPointerGet
	ld	a, 0x5305
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim2.c: 65: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
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
	ld	0x5305, a
;	../SPLSPL/src/stm8s_tim2.c: 61: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5308
;	../SPLSPL/src/stm8s_tim2.c: 68: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim2.c: 70: TIM2->CCER1 |= TIM2_CCER1_CC1P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5308, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2.c: 74: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5308, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim2.c: 77: TIM2->CCER1 |= TIM2_CCER1_CC1E;
; genPointerGet
	ld	a, 0x5308
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5308, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim2.c: 78: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../SPLSPL/src/stm8s_tim2.c: 96: void TIM2_TI2_Config(uint8_t TIM2_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM2_TI2_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_TI2_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim2.c: 101: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5308, a
;	../SPLSPL/src/stm8s_tim2.c: 104: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
; genPointerGet
	ld	a, 0x5306
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim2.c: 105: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
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
	ld	0x5306, a
;	../SPLSPL/src/stm8s_tim2.c: 101: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
; genPointerGet
	ld	a, 0x5308
;	../SPLSPL/src/stm8s_tim2.c: 109: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim2.c: 111: TIM2->CCER1 |= TIM2_CCER1_CC2P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5308, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2.c: 115: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5308, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim2.c: 119: TIM2->CCER1 |= TIM2_CCER1_CC2E;
; genPointerGet
	ld	a, 0x5308
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5308, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim2.c: 120: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../SPLSPL/src/stm8s_tim2.c: 136: void TIM2_TI3_Config(uint8_t TIM2_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM2_TI3_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_TI3_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim2.c: 141: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
; genPointerGet
	ld	a, 0x5309
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5309, a
;	../SPLSPL/src/stm8s_tim2.c: 144: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim2.c: 145: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
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
	ld	0x5307, a
;	../SPLSPL/src/stm8s_tim2.c: 141: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
; genPointerGet
	ld	a, 0x5309
;	../SPLSPL/src/stm8s_tim2.c: 149: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim2.c: 151: TIM2->CCER2 |= TIM2_CCER2_CC3P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5309, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2.c: 155: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5309, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim2.c: 158: TIM2->CCER2 |= TIM2_CCER2_CC3E;
; genPointerGet
	ld	a, 0x5309
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5309, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim2.c: 159: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
