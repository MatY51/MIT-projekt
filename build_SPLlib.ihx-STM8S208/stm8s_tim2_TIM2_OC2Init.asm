;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_OC2Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_OC2Init
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
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 39: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_OC2Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_TIM2_OC2Init:
	sub	sp, #3
; genReceive
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 51: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5308, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 53: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
; genPointerGet
	ld	a, 0x5308
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 54: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x20
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5308, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 58: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
; genPointerGet
	ld	a, 0x5306
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 59: (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5306, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 63: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
; genGetByte
	ld	a, (0x07, sp)
; genPointerSet
	ld	0x5311, a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 64: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x5312, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_OC2Init.c: 65: }
; genEndFunction
	ldw	x, (4, sp)
	addw	sp, #9
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
