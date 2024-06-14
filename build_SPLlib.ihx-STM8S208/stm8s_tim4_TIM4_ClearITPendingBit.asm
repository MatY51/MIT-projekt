;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim4_TIM4_ClearITPendingBit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_ClearITPendingBit
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
;	../SPLSPL/src/stm8s_tim4_TIM4_ClearITPendingBit.c: 38: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
; genLabel
;	-----------------------------------------
;	 function TIM4_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_ClearITPendingBit:
; genReceive
;	../SPLSPL/src/stm8s_tim4_TIM4_ClearITPendingBit.c: 44: TIM4->SR1 = (uint8_t)(~TIM4_IT);
; genCast
; genAssign
; genCpl
	cpl	a
; genCast
; genAssign
; genPointerSet
	ld	0x5342, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim4_TIM4_ClearITPendingBit.c: 45: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
