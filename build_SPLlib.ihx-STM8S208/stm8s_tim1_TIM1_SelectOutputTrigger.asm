;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_SelectOutputTrigger
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_SelectOutputTrigger
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
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOutputTrigger.c: 44: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
; genLabel
;	-----------------------------------------
;	 function TIM1_SelectOutputTrigger
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_SelectOutputTrigger:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOutputTrigger.c: 50: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
; genPointerGet
	ld	a, 0x5251
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOutputTrigger.c: 51: (uint8_t) TIM1_TRGOSource);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5251, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SelectOutputTrigger.c: 52: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
