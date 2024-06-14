;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_ExternalTriggerConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_ExternalTriggerConfig
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
;	../SPLSPL/src/stm8s_adc2_ADC2_ExternalTriggerConfig.c: 41: void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_ExternalTriggerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ExternalTriggerConfig:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_adc2_ADC2_ExternalTriggerConfig.c: 48: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
; genPointerGet
	ld	a, 0x5402
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5402, a
; genPointerGet
	ld	a, 0x5402
;	../SPLSPL/src/stm8s_adc2_ADC2_ExternalTriggerConfig.c: 50: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ExternalTriggerConfig.c: 53: ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5402, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ExternalTriggerConfig.c: 58: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5402, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ExternalTriggerConfig.c: 62: ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
; genPointerGet
	ld	a, 0x5402
; genCast
; genAssign
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x5402, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_adc2_ADC2_ExternalTriggerConfig.c: 63: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
