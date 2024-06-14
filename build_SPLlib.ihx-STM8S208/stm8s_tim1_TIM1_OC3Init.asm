;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_OC3Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_OC3Init
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
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 50: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM1_OC3Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_TIM1_OC3Init:
	sub	sp, #4
; genReceive
	ld	(0x04, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 70: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
; genPointerGet
	ld	a, 0x525d
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x525d, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 74: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
; genPointerGet
	ld	a, 0x525d
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x07, sp)
	and	a, #0x01
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 75: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
; genAnd
	ld	a, (0x08, sp)
	and	a, #0x04
; genOr
	or	a, (0x03, sp)
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 76: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
; genAnd
	ld	a, (0x0b, sp)
	and	a, #0x02
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 77: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
; genAnd
	ld	a, (0x0c, sp)
	and	a, #0x08
; genOr
	or	a, (0x03, sp)
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x525d, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 80: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
; genPointerGet
	ld	a, 0x525a
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 81: (uint8_t)TIM1_OCMode);
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x525a, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 84: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
; genPointerGet
	ld	a, 0x526f
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x526f, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 86: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
; genPointerGet
	ld	a, 0x526f
	ld	(0x02, sp), a
; genAnd
	ld	a, (0x0d, sp)
	and	a, #0x10
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 87: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
; genAnd
	ld	a, (0x0e, sp)
	and	a, #0x20
; genOr
	or	a, (0x03, sp)
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x526f, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 90: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
; genGetByte
	ld	a, (0x09, sp)
; genPointerSet
	ld	0x5269, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 91: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
; genCast
; genAssign
	ld	a, (0x0a, sp)
; genPointerSet
	ld	0x526a, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3Init.c: 92: }
; genEndFunction
	ldw	x, (5, sp)
	addw	sp, #14
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
