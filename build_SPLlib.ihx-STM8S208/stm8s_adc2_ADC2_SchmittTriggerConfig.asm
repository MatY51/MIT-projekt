;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_SchmittTriggerConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_SchmittTriggerConfig
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
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 39: void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_SchmittTriggerConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC2_SchmittTriggerConfig:
	push	a
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 45: if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x1f
	jrne	00154$
	jp	00155$
00154$:
	jp	00114$
00155$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 49: ADC2->TDRL &= (uint8_t)0x0;
; genPointerGet
; Dummy read
	ld	a, 0x5407
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 47: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00156$
	jp	00102$
00156$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 49: ADC2->TDRL &= (uint8_t)0x0;
; genPointerSet
	mov	0x5407+0, #0x00
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 50: ADC2->TDRH &= (uint8_t)0x0;
; genPointerGet
; Dummy read
	ld	a, 0x5406
; genPointerSet
	mov	0x5406+0, #0x00
; genGoto
	jp	00116$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 54: ADC2->TDRL |= (uint8_t)0xFF;
; genPointerSet
	mov	0x5407+0, #0xff
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 55: ADC2->TDRH |= (uint8_t)0xFF;
; genPointerGet
; Dummy read
	ld	a, 0x5406
; genPointerSet
	mov	0x5406+0, #0xff
; genGoto
	jp	00116$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 58: else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
; genCmp
; genCmpTnz
	ld	a, xl
	cp	a, #0x08
	jrc	00157$
	jp	00111$
00157$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 49: ADC2->TDRL &= (uint8_t)0x0;
; genPointerGet
	ld	a, 0x5407
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 62: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00159$
00158$:
	sll	(1, sp)
	dec	a
	jrne	00158$
00159$:
	pop	a
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 60: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00160$
	jp	00105$
00160$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 62: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5407, a
; genGoto
	jp	00116$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 66: ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5407, a
; genGoto
	jp	00116$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 50: ADC2->TDRH &= (uint8_t)0x0;
; genPointerGet
	ld	a, 0x5406
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 73: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
; genMinus
	subw	x, #8
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00162$
00161$:
	sll	(1, sp)
	dec	a
	jrne	00161$
00162$:
	pop	a
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 71: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00163$
	jp	00108$
00163$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 73: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5406, a
; genGoto
	jp	00116$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 77: ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5406, a
; genLabel
00116$:
;	../SPLSPL/src/stm8s_adc2_ADC2_SchmittTriggerConfig.c: 80: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
