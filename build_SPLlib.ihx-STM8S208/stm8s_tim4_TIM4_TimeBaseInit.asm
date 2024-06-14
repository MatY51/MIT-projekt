;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim4_TIM4_TimeBaseInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_TimeBaseInit
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
;	../SPLSPL/src/stm8s_tim4_TIM4_TimeBaseInit.c: 37: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
; genLabel
;	-----------------------------------------
;	 function TIM4_TimeBaseInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_TimeBaseInit:
; genReceive
;	../SPLSPL/src/stm8s_tim4_TIM4_TimeBaseInit.c: 42: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
; genPointerSet
	ld	0x5345, a
;	../SPLSPL/src/stm8s_tim4_TIM4_TimeBaseInit.c: 44: TIM4->ARR = (uint8_t)(TIM4_Period);
; genPointerSet
	ldw	x, #0x5346
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim4_TIM4_TimeBaseInit.c: 45: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
