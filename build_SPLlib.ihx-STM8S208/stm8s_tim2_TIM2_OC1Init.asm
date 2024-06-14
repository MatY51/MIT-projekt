;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_OC1Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_OC1Init
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
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 39: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_OC1Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_TIM2_OC1Init:
	sub	sp, #3
; genReceive
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 50: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x5308, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 52: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
; genPointerGet
	ld	a, 0x5308
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 53: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x02
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5308, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 56: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
; genPointerGet
	ld	a, 0x5305
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 57: (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5305, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 60: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
; genGetByte
	ld	a, (0x07, sp)
; genPointerSet
	ld	0x530f, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 61: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x5310, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_OC1Init.c: 62: }
; genEndFunction
	ldw	x, (4, sp)
	addw	sp, #9
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
