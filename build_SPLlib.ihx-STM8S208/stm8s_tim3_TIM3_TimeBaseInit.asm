;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_TimeBaseInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_TimeBaseInit
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
;	../SPLSPL/src/stm8s_tim3_TIM3_TimeBaseInit.c: 37: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM3_TimeBaseInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_TimeBaseInit:
; genReceive
; genReceive
;	../SPLSPL/src/stm8s_tim3_TIM3_TimeBaseInit.c: 41: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
; genPointerSet
	ld	0x532a, a
;	../SPLSPL/src/stm8s_tim3_TIM3_TimeBaseInit.c: 43: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x532b, a
;	../SPLSPL/src/stm8s_tim3_TIM3_TimeBaseInit.c: 44: TIM3->ARRL = (uint8_t)(TIM3_Period);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x532c, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim3_TIM3_TimeBaseInit.c: 45: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
