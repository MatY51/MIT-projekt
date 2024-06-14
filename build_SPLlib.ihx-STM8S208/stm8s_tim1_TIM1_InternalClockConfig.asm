;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_InternalClockConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_InternalClockConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_InternalClockConfig.c: 36: void TIM1_InternalClockConfig(void)
; genLabel
;	-----------------------------------------
;	 function TIM1_InternalClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_InternalClockConfig:
;	../SPLSPL/src/stm8s_tim1_TIM1_InternalClockConfig.c: 39: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
; genPointerGet
	ld	a, 0x5252
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x5252, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_InternalClockConfig.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
