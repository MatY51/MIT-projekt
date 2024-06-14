;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_OC2Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_OC2Init
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
;	../SPLSPL/src/stm8s_tim3_TIM3_OC2Init.c: 39: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM3_OC2Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_TIM3_OC2Init:
	sub	sp, #3
; genReceive
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC2Init.c: 51: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
; genPointerGet
	ld	a, 0x5327
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5327, a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC2Init.c: 53: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
; genPointerGet
	ld	a, 0x5327
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x02, sp), a
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x20
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5327, a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC2Init.c: 57: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
; genPointerGet
	ld	a, 0x5326
; genAnd
	and	a, #0x8f
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5326, a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC2Init.c: 61: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
; genGetByte
	ld	a, (0x07, sp)
; genPointerSet
	ld	0x532f, a
;	../SPLSPL/src/stm8s_tim3_TIM3_OC2Init.c: 62: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x5330, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim3_TIM3_OC2Init.c: 63: }
; genEndFunction
	ldw	x, (4, sp)
	addw	sp, #9
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
