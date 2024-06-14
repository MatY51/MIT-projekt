;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_DeInit
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
;	../SPLSPL/src/stm8s_adc2_ADC2_DeInit.c: 37: void ADC2_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_DeInit:
;	../SPLSPL/src/stm8s_adc2_ADC2_DeInit.c: 39: ADC2->CSR  = ADC2_CSR_RESET_VALUE;
; genPointerSet
	mov	0x5400+0, #0x00
;	../SPLSPL/src/stm8s_adc2_ADC2_DeInit.c: 40: ADC2->CR1  = ADC2_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5401+0, #0x00
;	../SPLSPL/src/stm8s_adc2_ADC2_DeInit.c: 41: ADC2->CR2  = ADC2_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5402+0, #0x00
;	../SPLSPL/src/stm8s_adc2_ADC2_DeInit.c: 42: ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
; genPointerSet
	mov	0x5406+0, #0x00
;	../SPLSPL/src/stm8s_adc2_ADC2_DeInit.c: 43: ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
; genPointerSet
	mov	0x5407+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_adc2_ADC2_DeInit.c: 44: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
