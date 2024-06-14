;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_OC3Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_OC3Init
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
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 39: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_OC3Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_TIM2_OC3Init:
	sub	sp, #3
; genReceive
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 49: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
; genPointerGet
	ld	a, 0x5309
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x5309, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 51: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
; genPointerGet
	ld	a, 0x5309
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 52: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x02
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5309, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 55: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 56: (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5307, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 59: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
; genGetByte
	ld	a, (0x07, sp)
; genPointerSet
	ld	0x5313, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 60: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x5314, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3Init.c: 61: }
; genEndFunction
	ldw	x, (4, sp)
	addw	sp, #9
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
