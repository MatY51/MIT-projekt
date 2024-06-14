;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_ClearFlag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_ClearFlag
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
;	../SPLSPL/src/stm8s_tim2_TIM2_ClearFlag.c: 44: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM2_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ClearFlag:
; genReceive
	ld	a, xl
;	../SPLSPL/src/stm8s_tim2_TIM2_ClearFlag.c: 50: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
; genCast
; genAssign
; genCpl
	cpl	a
; genPointerSet
	ld	0x5302, a
;	../SPLSPL/src/stm8s_tim2_TIM2_ClearFlag.c: 51: TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
; genPointerSet
	mov	0x5303+0, #0xff
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ClearFlag.c: 52: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
