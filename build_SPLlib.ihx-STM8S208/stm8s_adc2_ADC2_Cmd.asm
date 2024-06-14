;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_Cmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_Cmd
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
;	../SPLSPL/src/stm8s_adc2_ADC2_Cmd.c: 36: void ADC2_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_ADC2_Cmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_adc2_ADC2_Cmd.c: 43: ADC2->CR1 |= ADC2_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
;	../SPLSPL/src/stm8s_adc2_ADC2_Cmd.c: 41: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_adc2_ADC2_Cmd.c: 43: ADC2->CR1 |= ADC2_CR1_ADON;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_adc2_ADC2_Cmd.c: 47: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5401, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_adc2_ADC2_Cmd.c: 49: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
