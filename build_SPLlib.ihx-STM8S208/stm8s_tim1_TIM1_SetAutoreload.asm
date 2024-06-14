;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_SetAutoreload
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_SetAutoreload
	.globl _TIM1_SetCompare1
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
;	../SPLSPL/src/stm8s_tim1_TIM1_SetAutoreload.c: 37: void TIM1_SetAutoreload(uint16_t Autoreload)
; genLabel
;	-----------------------------------------
;	 function TIM1_SetAutoreload
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_SetAutoreload:
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_SetAutoreload.c: 40: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5262, a
;	../SPLSPL/src/stm8s_tim1_TIM1_SetAutoreload.c: 41: TIM1->ARRL = (uint8_t)(Autoreload);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5263, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SetAutoreload.c: 42: }
; genEndFunction
	ret
;	../SPLSPL/src/stm8s_tim1_TIM1_SetAutoreload.c: 50: void TIM1_SetCompare1(uint16_t Compare1)
; genLabel
;	-----------------------------------------
;	 function TIM1_SetCompare1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_SetCompare1:
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_SetAutoreload.c: 53: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5265, a
;	../SPLSPL/src/stm8s_tim1_TIM1_SetAutoreload.c: 54: TIM1->CCR1L = (uint8_t)(Compare1);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5266, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_SetAutoreload.c: 55: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
