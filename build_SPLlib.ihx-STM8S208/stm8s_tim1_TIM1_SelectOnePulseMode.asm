;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_SelectOnePulseMode
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_SelectOnePulseMode
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
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOnePulseMode.c: 39: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
; genLabel
;	-----------------------------------------
;	 function TIM1_SelectOnePulseMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_SelectOnePulseMode:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOnePulseMode.c: 47: TIM1->CR1 |= TIM1_CR1_OPM;
; genPointerGet
	ld	a, 0x5250
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOnePulseMode.c: 45: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOnePulseMode.c: 47: TIM1->CR1 |= TIM1_CR1_OPM;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5250, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOnePulseMode.c: 51: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5250, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOnePulseMode.c: 54: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
