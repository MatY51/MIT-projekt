;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_GetFlagStatus
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
;	../SPLSPL/src/stm8s_adc2_ADC2_GetFlagStatus.c: 36: FlagStatus ADC2_GetFlagStatus(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_GetFlagStatus:
;	../SPLSPL/src/stm8s_adc2_ADC2_GetFlagStatus.c: 39: return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genGetABit
	sll	a
	clr	a
	rlc	a
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_adc2_ADC2_GetFlagStatus.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
