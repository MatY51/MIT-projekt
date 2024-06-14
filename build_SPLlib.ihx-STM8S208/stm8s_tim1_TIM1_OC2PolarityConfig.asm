;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_OC2PolarityConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_OC2PolarityConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2PolarityConfig.c: 39: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
; genLabel
;	-----------------------------------------
;	 function TIM1_OC2PolarityConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_OC2PolarityConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2PolarityConfig.c: 47: TIM1->CCER1 |= TIM1_CCER1_CC2P;
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2PolarityConfig.c: 45: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2PolarityConfig.c: 47: TIM1->CCER1 |= TIM1_CCER1_CC2P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2PolarityConfig.c: 51: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x525c, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2PolarityConfig.c: 53: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
