;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_SetCompare2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_SetCompare2
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
;	../SPLSPL/src/stm8s_tim1_TIM1_SetCompare2.c: 37: void TIM1_SetCompare2(uint16_t Compare2)
; genLabel
;	-----------------------------------------
;	 function TIM1_SetCompare2
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_SetCompare2:
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_SetCompare2.c: 40: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5267, a
;	../SPLSPL/src/stm8s_tim1_TIM1_SetCompare2.c: 41: TIM1->CCR2L = (uint8_t)(Compare2);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5268, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SetCompare2.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
