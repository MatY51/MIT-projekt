;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_exti_EXTI_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_DeInit
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
;	../SPLSPL/src/stm8s_exti_EXTI_DeInit.c: 36: void EXTI_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function EXTI_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_DeInit:
;	../SPLSPL/src/stm8s_exti_EXTI_DeInit.c: 38: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
; genPointerSet
	mov	0x50a0+0, #0x00
;	../SPLSPL/src/stm8s_exti_EXTI_DeInit.c: 39: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
; genPointerSet
	mov	0x50a1+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_exti_EXTI_DeInit.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
