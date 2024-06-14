;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_exti_EXTI_SetTLISensitivity
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_SetTLISensitivity
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
;	../SPLSPL/src/stm8s_exti_EXTI_SetTLISensitivity.c: 38: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
; genLabel
;	-----------------------------------------
;	 function EXTI_SetTLISensitivity
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_EXTI_SetTLISensitivity:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_exti_EXTI_SetTLISensitivity.c: 44: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50a1, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetTLISensitivity.c: 45: EXTI->CR2 |= (uint8_t)(SensitivityValue);
; genPointerGet
	ld	a, 0x50a1
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a1, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_exti_EXTI_SetTLISensitivity.c: 46: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
