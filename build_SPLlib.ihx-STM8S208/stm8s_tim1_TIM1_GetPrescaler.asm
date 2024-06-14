;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_GetPrescaler
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetPrescaler
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
;	../SPLSPL/src/stm8s_tim1_TIM1_GetPrescaler.c: 36: uint16_t TIM1_GetPrescaler(void)
; genLabel
;	-----------------------------------------
;	 function TIM1_GetPrescaler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM1_GetPrescaler:
	pushw	x
;	../SPLSPL/src/stm8s_tim1_TIM1_GetPrescaler.c: 40: temp = ((uint16_t)TIM1->PSCRH << 8);
; genPointerGet
	ld	a, 0x5260
; genCast
; genAssign
	clrw	x
; genLeftShiftLiteral
	ld	xh, a
	clr	(0x02, sp)
;	../SPLSPL/src/stm8s_tim1_TIM1_GetPrescaler.c: 43: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
; genPointerGet
	ld	a, 0x5261
; genCast
; genAssign
	clrw	y
; genOr
; genReturn
	ld	xl, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetPrescaler.c: 44: }
; genEndFunction
	addw	sp, #2
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
