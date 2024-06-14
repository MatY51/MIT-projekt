;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_OC3FastConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_OC3FastConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3FastConfig.c: 37: void TIM1_OC3FastConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM1_OC3FastConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_OC3FastConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3FastConfig.c: 45: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
; genPointerGet
	ld	a, 0x525a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3FastConfig.c: 43: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3FastConfig.c: 45: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x525a, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3FastConfig.c: 49: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x525a, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC3FastConfig.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
