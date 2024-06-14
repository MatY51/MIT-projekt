;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_SetCompare1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_SetCompare1
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
;	../SPLSPL/src/stm8s_tim3_TIM3_SetCompare1.c: 37: void TIM3_SetCompare1(uint16_t Compare1)
; genLabel
;	-----------------------------------------
;	 function TIM3_SetCompare1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_SetCompare1:
; genReceive
;	../SPLSPL/src/stm8s_tim3_TIM3_SetCompare1.c: 40: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x532d, a
;	../SPLSPL/src/stm8s_tim3_TIM3_SetCompare1.c: 41: TIM3->CCR1L = (uint8_t)(Compare1);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x532e, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim3_TIM3_SetCompare1.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
