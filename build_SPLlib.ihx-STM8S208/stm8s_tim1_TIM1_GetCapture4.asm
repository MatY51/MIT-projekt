;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_GetCapture4
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetCapture4
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
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture4.c: 36: uint16_t TIM1_GetCapture4(void)
; genLabel
;	-----------------------------------------
;	 function TIM1_GetCapture4
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM1_GetCapture4:
	pushw	x
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture4.c: 42: tmpccr4h = TIM1->CCR4H;
; genPointerGet
	ld	a, 0x526b
	ld	xh, a
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture4.c: 43: tmpccr4l = TIM1->CCR4L;
; genPointerGet
	ld	a, 0x526c
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture4.c: 45: tmpccr4 = (uint16_t)(tmpccr4l);
; genCast
; genAssign
	ld	xl, a
	clrw	y
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture4.c: 46: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
; genCast
; genAssign
	clr	a
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture4.c: 48: return (uint16_t)tmpccr4;
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture4.c: 49: }
; genEndFunction
	addw	sp, #2
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
