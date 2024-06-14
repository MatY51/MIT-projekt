;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_GetCapture2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_GetCapture2
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
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture2.c: 36: uint16_t TIM2_GetCapture2(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCapture2
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetCapture2:
	pushw	x
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture2.c: 42: tmpccr2h = TIM2->CCR2H;
; genPointerGet
	ld	a, 0x5311
	ld	xh, a
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture2.c: 43: tmpccr2l = TIM2->CCR2L;
; genPointerGet
	ld	a, 0x5312
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture2.c: 45: tmpccr2 = (uint16_t)(tmpccr2l);
; genCast
; genAssign
	ld	xl, a
	clrw	y
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture2.c: 46: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
; genCast
; genAssign
	clr	a
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture2.c: 48: return (uint16_t)tmpccr2;
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_GetCapture2.c: 49: }
; genEndFunction
	addw	sp, #2
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
