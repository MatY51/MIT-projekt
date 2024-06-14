;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_exti_EXTI_GetTLISensitivity
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_GetTLISensitivity
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
;	../SPLSPL/src/stm8s_exti_EXTI_GetTLISensitivity.c: 36: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
; genLabel
;	-----------------------------------------
;	 function EXTI_GetTLISensitivity
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_GetTLISensitivity:
;	../SPLSPL/src/stm8s_exti_EXTI_GetTLISensitivity.c: 41: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0x04
;	../SPLSPL/src/stm8s_exti_EXTI_GetTLISensitivity.c: 43: return((EXTI_TLISensitivity_TypeDef)value);
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_exti_EXTI_GetTLISensitivity.c: 44: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
