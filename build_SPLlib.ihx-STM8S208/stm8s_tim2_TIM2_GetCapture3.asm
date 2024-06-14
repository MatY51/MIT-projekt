;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_GetCapture3
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_GetCapture3
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
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture3.c: 36: uint16_t TIM2_GetCapture3(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCapture3
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetCapture3:
	pushw	x
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture3.c: 42: tmpccr3h = TIM2->CCR3H;
; genPointerGet
	ld	a, 0x5313
	ld	xh, a
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture3.c: 43: tmpccr3l = TIM2->CCR3L;
; genPointerGet
	ld	a, 0x5314
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture3.c: 45: tmpccr3 = (uint16_t)(tmpccr3l);
; genCast
; genAssign
	ld	xl, a
	clrw	y
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture3.c: 46: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
; genCast
; genAssign
	clr	a
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture3.c: 48: return (uint16_t)tmpccr3;
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture3.c: 49: }
; genEndFunction
	addw	sp, #2
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
