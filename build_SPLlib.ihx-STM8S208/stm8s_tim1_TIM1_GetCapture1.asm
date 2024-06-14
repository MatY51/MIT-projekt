;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_GetCapture1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetCapture1
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
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture1.c: 36: uint16_t TIM1_GetCapture1(void)
; genLabel
;	-----------------------------------------
;	 function TIM1_GetCapture1
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM1_GetCapture1:
	pushw	x
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture1.c: 43: tmpccr1h = TIM1->CCR1H;
; genPointerGet
	ld	a, 0x5265
	ld	xh, a
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture1.c: 44: tmpccr1l = TIM1->CCR1L;
; genPointerGet
	ld	a, 0x5266
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture1.c: 46: tmpccr1 = (uint16_t)(tmpccr1l);
; genCast
; genAssign
	ld	xl, a
	clrw	y
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture1.c: 47: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
; genCast
; genAssign
	clr	a
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture1.c: 49: return (uint16_t)tmpccr1;
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetCapture1.c: 50: }
; genEndFunction
	addw	sp, #2
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
