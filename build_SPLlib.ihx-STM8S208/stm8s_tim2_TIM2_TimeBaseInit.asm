;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_TimeBaseInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_TimeBaseInit
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
;	../SPLSPL/src/stm8s_tim2_TIM2_TimeBaseInit.c: 37: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_TimeBaseInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_TimeBaseInit:
; genReceive
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_TimeBaseInit.c: 41: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
; genPointerSet
	ld	0x530c, a
;	../SPLSPL/src/stm8s_tim2_TIM2_TimeBaseInit.c: 43: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x530d, a
;	../SPLSPL/src/stm8s_tim2_TIM2_TimeBaseInit.c: 44: TIM2->ARRL = (uint8_t)(TIM2_Period);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x530e, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_TimeBaseInit.c: 45: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
