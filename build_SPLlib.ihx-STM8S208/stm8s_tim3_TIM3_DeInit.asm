;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_DeInit
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
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 36: void TIM3_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function TIM3_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_DeInit:
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 38: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5320+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 39: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
; genPointerSet
	mov	0x5321+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 40: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
; genPointerSet
	mov	0x5323+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 43: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x5327+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 46: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x5327+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 47: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
; genPointerSet
	mov	0x5325+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 48: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
; genPointerSet
	mov	0x5326+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 49: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
; genPointerSet
	mov	0x5328+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 50: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
; genPointerSet
	mov	0x5329+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 51: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x532a+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 52: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
; genPointerSet
	mov	0x532b+0, #0xff
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 53: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
; genPointerSet
	mov	0x532c+0, #0xff
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 54: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
; genPointerSet
	mov	0x532d+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 55: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
; genPointerSet
	mov	0x532e+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 56: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
; genPointerSet
	mov	0x532f+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 57: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
; genPointerSet
	mov	0x5330+0, #0x00
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 58: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
; genPointerSet
	mov	0x5322+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim3_TIM3_DeInit.c: 59: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
