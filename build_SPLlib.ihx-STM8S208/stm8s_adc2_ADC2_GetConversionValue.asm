;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_GetConversionValue
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_GetConversionValue
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
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 38: uint16_t ADC2_GetConversionValue(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetConversionValue
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_ADC2_GetConversionValue:
	sub	sp, #4
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 43: if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
; genPointerGet
	ld	a, 0x5402
; genAnd
	bcp	a, #0x08
	jrne	00113$
	jp	00102$
00113$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 46: templ = ADC2->DRL;
; genPointerGet
	ld	a, 0x5405
	ld	xl, a
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 48: temph = ADC2->DRH;
; genPointerGet
	ld	a, 0x5404
; genCast
; genAssign
	ld	xh, a
	clr	a
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 50: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
; genLeftShiftLiteral
	clr	a
; genCast
; genAssign
	clrw	y
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
	ld	xl, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 55: temph = ADC2->DRH;
; genPointerGet
	ld	a, 0x5404
; genCast
; genAssign
	clrw	y
	ld	yl, a
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 57: templ = ADC2->DRL;
; genPointerGet
	ld	a, 0x5405
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 59: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x01, sp), x
; genLeftShiftLiteral
	ld	a, yl
	clr	(0x04, sp)
; genOr
	or	a, (0x01, sp)
	ld	xh, a
	ld	a, (0x02, sp)
	ld	xl, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 62: return ((uint16_t)temph);
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_adc2_ADC2_GetConversionValue.c: 63: }
; genEndFunction
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
