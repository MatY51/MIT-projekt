;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_ClearFlag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_ClearFlag
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
;	../SPLSPL/src/stm8s_tim1_TIM1_ClearFlag.c: 49: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM1_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_TIM1_ClearFlag:
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_ClearFlag.c: 55: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
; genCast
; genAssign
	ld	a, xl
; genCpl
	cpl	a
; genPointerSet
	ld	0x5255, a
;	../SPLSPL/src/stm8s_tim1_TIM1_ClearFlag.c: 56: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
; genCast
; genAssign
	ld	a, xh
; genGetByte
; genCpl
	cpl	a
; genAnd
	and	a, #0x1e
; genPointerSet
	ld	0x5256, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ClearFlag.c: 58: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
