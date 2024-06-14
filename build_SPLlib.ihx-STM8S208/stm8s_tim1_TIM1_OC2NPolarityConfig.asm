;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_OC2NPolarityConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_OC2NPolarityConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2NPolarityConfig.c: 39: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
; genLabel
;	-----------------------------------------
;	 function TIM1_OC2NPolarityConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_OC2NPolarityConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2NPolarityConfig.c: 47: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2NPolarityConfig.c: 45: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2NPolarityConfig.c: 47: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2NPolarityConfig.c: 51: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x525c, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC2NPolarityConfig.c: 53: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
