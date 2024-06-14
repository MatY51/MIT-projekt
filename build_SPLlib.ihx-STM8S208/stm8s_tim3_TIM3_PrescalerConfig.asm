;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_PrescalerConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_PrescalerConfig
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
;	../SPLSPL/src/stm8s_tim3_TIM3_PrescalerConfig.c: 59: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM3_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_PrescalerConfig:
; genReceive
;	../SPLSPL/src/stm8s_tim3_TIM3_PrescalerConfig.c: 67: TIM3->PSCR = (uint8_t)Prescaler;
; genPointerSet
	ld	0x532a, a
;	../SPLSPL/src/stm8s_tim3_TIM3_PrescalerConfig.c: 70: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
; genCast
; genAssign
	ld	a, (0x03, sp)
; genPointerSet
	ld	0x5324, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim3_TIM3_PrescalerConfig.c: 71: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
