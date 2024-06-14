;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_OC1Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_OC1Init
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
;	../SPLSPL/src/stm8s_tim3_TIM3_OC1Init.c: 39: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM3_OC1Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_TIM3_OC1Init:
	sub	sp, #3
; genReceive
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC1Init.c: 50: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
; genPointerGet
	ld	a, 0x5327
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x5327, a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC1Init.c: 52: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
; genPointerGet
	ld	a, 0x5327
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x02
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5327, a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC1Init.c: 55: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
; genPointerGet
	ld	a, 0x5325
; genAnd
	and	a, #0x8f
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5325, a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC1Init.c: 58: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
; genGetByte
	ld	a, (0x07, sp)
; genPointerSet
	ld	0x532d, a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC1Init.c: 59: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x532e, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim3_TIM3_OC1Init.c: 60: }
; genEndFunction
	ldw	x, (4, sp)
	addw	sp, #9
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
