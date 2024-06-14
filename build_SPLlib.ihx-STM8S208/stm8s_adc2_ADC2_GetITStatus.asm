;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_adc2_ADC2_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_GetITStatus
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
;	../SPLSPL/src/stm8s_adc2_ADC2_GetITStatus.c: 37: ITStatus ADC2_GetITStatus(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_GetITStatus:
;	../SPLSPL/src/stm8s_adc2_ADC2_GetITStatus.c: 39: return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genGetABit
	sll	a
	clr	a
	rlc	a
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_adc2_ADC2_GetITStatus.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
