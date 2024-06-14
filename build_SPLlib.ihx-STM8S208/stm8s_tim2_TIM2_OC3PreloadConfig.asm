;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_OC3PreloadConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_OC3PreloadConfig
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
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3PreloadConfig.c: 37: void TIM2_OC3PreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC3PreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC3PreloadConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3PreloadConfig.c: 45: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
; genPointerGet
	ld	a, 0x5307
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3PreloadConfig.c: 43: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3PreloadConfig.c: 45: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5307, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3PreloadConfig.c: 49: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5307, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim2_TIM2_OC3PreloadConfig.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
