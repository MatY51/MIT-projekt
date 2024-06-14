;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_ClearITPendingBit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_ClearITPendingBit
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
;	../SPLSPL/src/stm8s_tim2_TIM2_ClearITPendingBit.c: 41: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
; genLabel
;	-----------------------------------------
;	 function TIM2_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ClearITPendingBit:
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_ClearITPendingBit.c: 47: TIM2->SR1 = (uint8_t)(~TIM2_IT);
; genCpl
	cpl	a
; genPointerSet
	ld	0x5302, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ClearITPendingBit.c: 48: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
