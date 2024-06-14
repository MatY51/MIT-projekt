;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_ExternalTriggerConfig
	.globl _ADC2_ConversionConfig
	.globl _ADC2_SchmittTriggerConfig
	.globl _ADC2_PrescalerConfig
	.globl _ADC2_Init
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
;	../SPLSPL/src/stm8s_adc2_ADC2_Init.c: 51: void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
; genLabel
;	-----------------------------------------
;	 function ADC2_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_Init:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_adc2_ADC2_Init.c: 66: ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
; genIPush
	ld	a, (0x07, sp)
	push	a
; genIPush
	ld	a, (0x04, sp)
	push	a
; genSend
	ld	a, xl
; genCall
	call	_ADC2_ConversionConfig
;	../SPLSPL/src/stm8s_adc2_ADC2_Init.c: 68: ADC2_PrescalerConfig(ADC2_PrescalerSelection);
; genSend
	ld	a, (0x04, sp)
; genCall
	call	_ADC2_PrescalerConfig
;	../SPLSPL/src/stm8s_adc2_ADC2_Init.c: 73: ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
; genIPush
	ld	a, (0x06, sp)
	push	a
; genSend
	ld	a, (0x06, sp)
; genCall
	call	_ADC2_ExternalTriggerConfig
;	../SPLSPL/src/stm8s_adc2_ADC2_Init.c: 78: ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
; genIPush
	ld	a, (0x09, sp)
	push	a
; genSend
	ld	a, (0x09, sp)
; genCall
	call	_ADC2_SchmittTriggerConfig
;	../SPLSPL/src/stm8s_adc2_ADC2_Init.c: 81: ADC2->CR1 |= ADC2_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_adc2_ADC2_Init.c: 82: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #9
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
