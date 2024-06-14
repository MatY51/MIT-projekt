;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_EncoderInterfaceConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_EncoderInterfaceConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 51: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
; genLabel
;	-----------------------------------------
;	 function TIM1_EncoderInterfaceConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_EncoderInterfaceConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 63: TIM1->CCER1 |= TIM1_CCER1_CC1P;
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 61: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
; genIfx
	tnz	(0x04, sp)
	jrne	00123$
	jp	00102$
00123$:
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 63: TIM1->CCER1 |= TIM1_CCER1_CC1P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 67: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x525c, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 63: TIM1->CCER1 |= TIM1_CCER1_CC1P;
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 70: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
; genIfx
	tnz	(0x05, sp)
	jrne	00124$
	jp	00105$
00124$:
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 72: TIM1->CCER1 |= TIM1_CCER1_CC2P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 76: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x525c, a
; genLabel
00106$:
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 79: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
; genPointerGet
	ld	a, 0x5252
; genAnd
	and	a, #0xf0
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 80: | (uint8_t) TIM1_EncoderMode);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5252, a
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 83: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
; genPointerGet
	ld	a, 0x5258
; genAnd
	and	a, #0xfc
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5258, a
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 85: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
; genPointerGet
	ld	a, 0x5259
; genAnd
	and	a, #0xfc
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5259, a
; genLabel
00107$:
;	../SPLSPL/src/stm8s_tim1_TIM1_EncoderInterfaceConfig.c: 87: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
