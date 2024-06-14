;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_SelectOCxM
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_SelectOCxM
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
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 52: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
; genLabel
;	-----------------------------------------
;	 function TIM1_SelectOCxM
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_TIM1_SelectOCxM:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 58: if (TIM1_Channel == TIM1_CHANNEL_1)
; genIfx
	ld	a, xl
	tnz	a
	jreq	00133$
	jp	00108$
00133$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 61: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
; genPointerGet
	ld	a, 0x525c
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525c, a
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 64: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
; genPointerGet
	ld	a, 0x5258
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 65: | (uint8_t)TIM1_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5258, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 67: else if (TIM1_Channel == TIM1_CHANNEL_2)
; genCmpEQorNE
	ld	a, xl
	dec	a
	jrne	00135$
	jp	00136$
00135$:
	jp	00105$
00136$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 70: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
; genPointerGet
	ld	a, 0x525c
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525c, a
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 73: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
; genPointerGet
	ld	a, 0x5259
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 74: | (uint8_t)TIM1_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5259, a
; genGoto
	jp	00110$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 79: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
; genPointerGet
	ld	a, 0x525d
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 76: else if (TIM1_Channel == TIM1_CHANNEL_3)
; genCmpEQorNE
	push	a
	ld	a, xl
	cp	a, #0x02
	pop	a
	jrne	00138$
	jp	00139$
00138$:
	jp	00102$
00139$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 79: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525d, a
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 82: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
; genPointerGet
	ld	a, 0x525a
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 83: | (uint8_t)TIM1_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x525a, a
; genGoto
	jp	00110$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 88: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525d, a
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 91: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
; genPointerGet
	ld	a, 0x525b
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 92: | (uint8_t)TIM1_OCMode);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x525b, a
; genLabel
00110$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOCxM.c: 94: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
