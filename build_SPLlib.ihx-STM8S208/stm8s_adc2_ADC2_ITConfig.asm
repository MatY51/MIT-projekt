;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_ITConfig
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
;	../SPLSPL/src/stm8s_adc2_ADC2_ITConfig.c: 36: void ADC2_ITConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_ADC2_ITConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_adc2_ADC2_ITConfig.c: 44: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
; genPointerGet
	ld	a, 0x5400
;	../SPLSPL/src/stm8s_adc2_ADC2_ITConfig.c: 41: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ITConfig.c: 44: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5400, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ITConfig.c: 49: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5400, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ITConfig.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
