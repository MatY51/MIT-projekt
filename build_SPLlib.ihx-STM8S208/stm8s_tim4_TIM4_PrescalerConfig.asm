;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim4_TIM4_PrescalerConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_PrescalerConfig
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
;	../SPLSPL/src/stm8s_tim4_TIM4_PrescalerConfig.c: 51: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
; genLabel
;	-----------------------------------------
;	 function TIM4_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_PrescalerConfig:
; genReceive
;	../SPLSPL/src/stm8s_tim4_TIM4_PrescalerConfig.c: 58: TIM4->PSCR = (uint8_t)Prescaler;
; genPointerSet
	ld	0x5345, a
;	../SPLSPL/src/stm8s_tim4_TIM4_PrescalerConfig.c: 61: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
; genCast
; genAssign
	ld	a, (0x03, sp)
; genPointerSet
	ld	0x5343, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim4_TIM4_PrescalerConfig.c: 62: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
