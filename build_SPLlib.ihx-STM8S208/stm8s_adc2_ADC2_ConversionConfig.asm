;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_ConversionConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_ConversionConfig
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
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 41: void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
; genLabel
;	-----------------------------------------
;	 function ADC2_ConversionConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_ADC2_ConversionConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 49: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
; genPointerGet
	ld	a, 0x5402
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5402, a
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 51: ADC2->CR2 |= (uint8_t)(ADC2_Align);
; genPointerGet
	ld	a, 0x5402
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x5402, a
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 56: ADC2->CR1 |= ADC2_CR1_CONT;
; genPointerGet
	ld	a, 0x5401
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 53: if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 56: ADC2->CR1 |= ADC2_CR1_CONT;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5401, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 61: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5401, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 65: ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5400, a
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 67: ADC2->CSR |= (uint8_t)(ADC2_Channel);
; genPointerGet
	ld	a, 0x5400
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5400, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ConversionConfig.c: 68: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
