;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_SelectOCxM
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_SelectOCxM
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
;	../SPLSPL/src/stm8s_tim3_TIM3_SelectOCxM.c: 50: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
; genLabel
;	-----------------------------------------
;	 function TIM3_SelectOCxM
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TIM3_SelectOCxM:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim3_TIM3_SelectOCxM.c: 59: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5327
;	../SPLSPL/src/stm8s_tim3_TIM3_SelectOCxM.c: 56: if (TIM3_Channel == TIM3_CHANNEL_1)
; genIfx
	tnz	(0x01, sp)
	jreq	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim3_TIM3_SelectOCxM.c: 59: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5327, a
;	../SPLSPL/src/stm8s_tim3_TIM3_SelectOCxM.c: 62: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
; genPointerGet
	ld	a, 0x5325
; genAnd
	and	a, #0x8f
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5325, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3_TIM3_SelectOCxM.c: 67: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5327, a
;	../SPLSPL/src/stm8s_tim3_TIM3_SelectOCxM.c: 70: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
; genPointerGet
	ld	a, 0x5326
; genAnd
	and	a, #0x8f
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5326, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim3_TIM3_SelectOCxM.c: 72: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
