;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_ETRConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_ETRConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_ETRConfig.c: 47: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
; genLabel
;	-----------------------------------------
;	 function TIM1_ETRConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_ETRConfig:
	push	a
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_tim1_TIM1_ETRConfig.c: 54: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
; genPointerGet
	ld	a, 0x5253
	ld	(0x01, sp), a
; genOr
	ld	a, xl
	or	a, (0x04, sp)
;	../SPLSPL/src/stm8s_tim1_TIM1_ETRConfig.c: 55: (uint8_t)ExtTRGFilter );
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5253, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ETRConfig.c: 56: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
