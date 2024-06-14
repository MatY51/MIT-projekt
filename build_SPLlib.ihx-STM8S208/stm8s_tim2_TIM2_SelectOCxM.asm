;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_SelectOCxM
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_SelectOCxM
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
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 51: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectOCxM
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SelectOCxM:
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 57: if (TIM2_Channel == TIM2_CHANNEL_1)
; genIfx
	tnz	a
	jreq	00123$
	jp	00105$
00123$:
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 60: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5308, a
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 63: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
; genPointerGet
	ld	a, 0x5305
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 64: | (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5305, a
; genGoto
	jp	00107$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 66: else if (TIM2_Channel == TIM2_CHANNEL_2)
; genCmpEQorNE
	dec	a
	jrne	00125$
	jp	00126$
00125$:
	jp	00102$
00126$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 69: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5308, a
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 72: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
; genPointerGet
	ld	a, 0x5306
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 73: | (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5306, a
; genGoto
	jp	00107$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 78: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
; genPointerGet
	ld	a, 0x5309
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5309, a
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 81: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 82: | (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5307, a
; genLabel
00107$:
;	../SPLSPL/src/stm8s_tim2_TIM2_SelectOCxM.c: 84: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
