;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_PrescalerConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_PrescalerConfig
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
;	../SPLSPL/src/stm8s_adc2_ADC2_PrescalerConfig.c: 37: void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
; genLabel
;	-----------------------------------------
;	 function ADC2_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_ADC2_PrescalerConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_adc2_ADC2_PrescalerConfig.c: 43: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
; genPointerGet
	ld	a, 0x5401
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x5401, a
;	../SPLSPL/src/stm8s_adc2_ADC2_PrescalerConfig.c: 45: ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_adc2_ADC2_PrescalerConfig.c: 46: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
