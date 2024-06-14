;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_ARRPreloadConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_ARRPreloadConfig
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
;	../SPLSPL/src/stm8s_tim3_TIM3_ARRPreloadConfig.c: 37: void TIM3_ARRPreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM3_ARRPreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM3_ARRPreloadConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim3_TIM3_ARRPreloadConfig.c: 45: TIM3->CR1 |= TIM3_CR1_ARPE;
; genPointerGet
	ld	a, 0x5320
;	../SPLSPL/src/stm8s_tim3_TIM3_ARRPreloadConfig.c: 43: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ARRPreloadConfig.c: 45: TIM3->CR1 |= TIM3_CR1_ARPE;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5320, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ARRPreloadConfig.c: 49: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5320, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ARRPreloadConfig.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
