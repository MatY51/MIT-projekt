;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_SetCompare3
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_SetCompare3
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
;	../SPLSPL/src/stm8s_tim2_TIM2_SetCompare3.c: 37: void TIM2_SetCompare3(uint16_t Compare3)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetCompare3
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetCompare3:
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_SetCompare3.c: 40: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5313, a
;	../SPLSPL/src/stm8s_tim2_TIM2_SetCompare3.c: 41: TIM2->CCR3L = (uint8_t)(Compare3);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5314, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_SetCompare3.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
