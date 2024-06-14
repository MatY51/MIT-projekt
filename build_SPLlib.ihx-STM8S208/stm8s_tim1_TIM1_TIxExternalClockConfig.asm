;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_TIxExternalClockConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_TI2_Config
	.globl _TIM1_TI1_Config
	.globl _TIM1_SelectInputTrigger
	.globl _TIM1_TIxExternalClockConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_TIxExternalClockConfig.c: 47: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
; genLabel
;	-----------------------------------------
;	 function TIM1_TIxExternalClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_TIxExternalClockConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_TIxExternalClockConfig.c: 59: TIM1_TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
; genCast
; genAssign
	ld	a, (0x04, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_tim1_TIM1_TIxExternalClockConfig.c: 57: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
; genCmpEQorNE
	ld	a, (0x01, sp)
	cp	a, #0x60
	jrne	00114$
	jp	00115$
00114$:
	jp	00102$
00115$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_TIxExternalClockConfig.c: 59: TIM1_TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
; genIPush
	ld	a, (0x05, sp)
	push	a
; genIPush
	push	#0x01
; genSend
	ld	a, xl
; genCall
	call	_TIM1_TI2_Config
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_TIxExternalClockConfig.c: 63: TIM1_TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
; genIPush
	ld	a, (0x05, sp)
	push	a
; genIPush
	push	#0x01
; genSend
	ld	a, xl
; genCall
	call	_TIM1_TI1_Config
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1_TIM1_TIxExternalClockConfig.c: 67: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
; genSend
	ld	a, (0x01, sp)
; genCall
	call	_TIM1_SelectInputTrigger
;	../SPLSPL/src/stm8s_tim1_TIM1_TIxExternalClockConfig.c: 70: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
; genPointerGet
	ld	a, 0x5252
; genOr
	or	a, #0x07
; genPointerSet
	ld	0x5252, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_TIxExternalClockConfig.c: 71: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
