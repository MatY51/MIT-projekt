;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_ETRClockMode2Config
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_ETRConfig
	.globl _TIM1_ETRClockMode2Config
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
;	../SPLSPL/src/stm8s_tim1_TIM1_ETRClockMode2Config.c: 47: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
; genLabel
;	-----------------------------------------
;	 function TIM1_ETRClockMode2Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_ETRClockMode2Config:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_tim1_TIM1_ETRClockMode2Config.c: 56: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
; genIPush
	ld	a, (0x04, sp)
	push	a
; genIPush
	ld	a, (0x04, sp)
	push	a
; genSend
	ld	a, xl
; genCall
	call	_TIM1_ETRConfig
;	../SPLSPL/src/stm8s_tim1_TIM1_ETRClockMode2Config.c: 59: TIM1->ETR |= TIM1_ETR_ECE;
; genPointerGet
	ld	a, 0x5253
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5253, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ETRClockMode2Config.c: 60: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
