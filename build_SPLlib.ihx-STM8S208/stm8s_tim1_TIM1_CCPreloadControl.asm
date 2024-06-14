;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_CCPreloadControl
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_CCPreloadControl
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
;	../SPLSPL/src/stm8s_tim1_TIM1_CCPreloadControl.c: 37: void TIM1_CCPreloadControl(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM1_CCPreloadControl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_CCPreloadControl:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_CCPreloadControl.c: 45: TIM1->CR2 |= TIM1_CR2_CCPC;
; genPointerGet
	ld	a, 0x5251
;	../SPLSPL/src/stm8s_tim1_TIM1_CCPreloadControl.c: 43: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCPreloadControl.c: 45: TIM1->CR2 |= TIM1_CR2_CCPC;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5251, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCPreloadControl.c: 49: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5251, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCPreloadControl.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
