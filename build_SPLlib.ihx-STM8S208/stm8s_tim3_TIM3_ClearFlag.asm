;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_ClearFlag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_ClearFlag
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
;	../SPLSPL/src/stm8s_tim3_TIM3_ClearFlag.c: 42: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM3_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_TIM3_ClearFlag:
; genReceive
;	../SPLSPL/src/stm8s_tim3_TIM3_ClearFlag.c: 48: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
; genCast
; genAssign
	ld	a, xl
; genCpl
	cpl	a
; genPointerSet
	ld	0x5322, a
;	../SPLSPL/src/stm8s_tim3_TIM3_ClearFlag.c: 49: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
; genCast
; genAssign
	ld	a, xh
; genGetByte
; genCpl
	cpl	a
; genPointerSet
	ld	0x5323, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ClearFlag.c: 50: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
