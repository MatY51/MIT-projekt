;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_DeInit
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
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 36: void TIM2_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_DeInit:
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 38: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5300+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 39: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
; genPointerSet
	mov	0x5301+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 40: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
; genPointerSet
	mov	0x5303+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 43: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x5308+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 44: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
; genPointerSet
	mov	0x5309+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 48: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x5308+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 49: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
; genPointerSet
	mov	0x5309+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 50: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
; genPointerSet
	mov	0x5305+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 51: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
; genPointerSet
	mov	0x5306+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 52: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
; genPointerSet
	mov	0x5307+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 53: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
; genPointerSet
	mov	0x530a+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 54: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
; genPointerSet
	mov	0x530b+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 55: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x530c+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 56: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
; genPointerSet
	mov	0x530d+0, #0xff
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 57: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
; genPointerSet
	mov	0x530e+0, #0xff
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 58: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
; genPointerSet
	mov	0x530f+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 59: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
; genPointerSet
	mov	0x5310+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 60: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
; genPointerSet
	mov	0x5311+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 61: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
; genPointerSet
	mov	0x5312+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 62: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
; genPointerSet
	mov	0x5313+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 63: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
; genPointerSet
	mov	0x5314+0, #0x00
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 64: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
; genPointerSet
	mov	0x5302+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_DeInit.c: 65: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
