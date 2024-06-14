;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_SetCounter
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_SetCounter
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
;	../SPLSPL/src/stm8s_tim3_TIM3_SetCounter.c: 37: void TIM3_SetCounter(uint16_t Counter)
; genLabel
;	-----------------------------------------
;	 function TIM3_SetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_SetCounter:
; genReceive
;	../SPLSPL/src/stm8s_tim3_TIM3_SetCounter.c: 40: TIM3->CNTRH = (uint8_t)(Counter >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5328, a
;	../SPLSPL/src/stm8s_tim3_TIM3_SetCounter.c: 41: TIM3->CNTRL = (uint8_t)(Counter);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5329, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim3_TIM3_SetCounter.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
