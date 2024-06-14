;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_iwdg_IWDG_SetPrescaler
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _IWDG_SetPrescaler
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
;	../SPLSPL/src/stm8s_iwdg_IWDG_SetPrescaler.c: 38: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
; genLabel
;	-----------------------------------------
;	 function IWDG_SetPrescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_IWDG_SetPrescaler:
; genReceive
;	../SPLSPL/src/stm8s_iwdg_IWDG_SetPrescaler.c: 43: IWDG->PR = (uint8_t)IWDG_Prescaler;
; genPointerSet
	ld	0x50e1, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_iwdg_IWDG_SetPrescaler.c: 44: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
