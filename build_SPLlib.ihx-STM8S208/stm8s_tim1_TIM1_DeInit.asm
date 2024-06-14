;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_DeInit
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
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 36: void TIM1_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function TIM1_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_DeInit:
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 38: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5250+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 39: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5251+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 40: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
; genPointerSet
	mov	0x5252+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 41: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
; genPointerSet
	mov	0x5253+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 42: TIM1->IER  = TIM1_IER_RESET_VALUE;
; genPointerSet
	mov	0x5254+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 43: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
; genPointerSet
	mov	0x5256+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 45: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x525c+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 46: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
; genPointerSet
	mov	0x525d+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 48: TIM1->CCMR1 = 0x01;
; genPointerSet
	mov	0x5258+0, #0x01
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 49: TIM1->CCMR2 = 0x01;
; genPointerSet
	mov	0x5259+0, #0x01
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 50: TIM1->CCMR3 = 0x01;
; genPointerSet
	mov	0x525a+0, #0x01
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 51: TIM1->CCMR4 = 0x01;
; genPointerSet
	mov	0x525b+0, #0x01
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 53: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x525c+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 54: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
; genPointerSet
	mov	0x525d+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 55: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
; genPointerSet
	mov	0x5258+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 56: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
; genPointerSet
	mov	0x5259+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 57: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
; genPointerSet
	mov	0x525a+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 58: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
; genPointerSet
	mov	0x525b+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 59: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
; genPointerSet
	mov	0x525e+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 60: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
; genPointerSet
	mov	0x525f+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 61: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
; genPointerSet
	mov	0x5260+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 62: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
; genPointerSet
	mov	0x5261+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 63: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
; genPointerSet
	mov	0x5262+0, #0xff
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 64: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
; genPointerSet
	mov	0x5263+0, #0xff
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 65: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
; genPointerSet
	mov	0x5265+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 66: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
; genPointerSet
	mov	0x5266+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 67: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
; genPointerSet
	mov	0x5267+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 68: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
; genPointerSet
	mov	0x5268+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 69: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
; genPointerSet
	mov	0x5269+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 70: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
; genPointerSet
	mov	0x526a+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 71: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
; genPointerSet
	mov	0x526b+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 72: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
; genPointerSet
	mov	0x526c+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 73: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
; genPointerSet
	mov	0x526f+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 74: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
; genPointerSet
	mov	0x5257+0, #0x01
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 75: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
; genPointerSet
	mov	0x526e+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 76: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
; genPointerSet
	mov	0x526d+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 77: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
; genPointerSet
	mov	0x5264+0, #0x00
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 78: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
; genPointerSet
	mov	0x5255+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_DeInit.c: 79: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
