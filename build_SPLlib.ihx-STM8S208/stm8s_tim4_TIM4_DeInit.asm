;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim4_TIM4_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_DeInit
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
;	../SPLSPL/src/stm8s_tim4_TIM4_DeInit.c: 36: void TIM4_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_DeInit:
;	../SPLSPL/src/stm8s_tim4_TIM4_DeInit.c: 38: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5340+0, #0x00
;	../SPLSPL/src/stm8s_tim4_TIM4_DeInit.c: 39: TIM4->IER = TIM4_IER_RESET_VALUE;
; genPointerSet
	mov	0x5341+0, #0x00
;	../SPLSPL/src/stm8s_tim4_TIM4_DeInit.c: 40: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
; genPointerSet
	mov	0x5344+0, #0x00
;	../SPLSPL/src/stm8s_tim4_TIM4_DeInit.c: 41: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x5345+0, #0x00
;	../SPLSPL/src/stm8s_tim4_TIM4_DeInit.c: 42: TIM4->ARR = TIM4_ARR_RESET_VALUE;
; genPointerSet
	mov	0x5346+0, #0xff
;	../SPLSPL/src/stm8s_tim4_TIM4_DeInit.c: 43: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
; genPointerSet
	mov	0x5342+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim4_TIM4_DeInit.c: 44: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
