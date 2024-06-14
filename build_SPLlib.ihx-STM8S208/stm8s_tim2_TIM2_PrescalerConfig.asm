;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_PrescalerConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_PrescalerConfig
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
;	../SPLSPL/src/stm8s_tim2_TIM2_PrescalerConfig.c: 59: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_PrescalerConfig:
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_PrescalerConfig.c: 67: TIM2->PSCR = (uint8_t)Prescaler;
; genPointerSet
	ld	0x530c, a
;	../SPLSPL/src/stm8s_tim2_TIM2_PrescalerConfig.c: 70: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
; genCast
; genAssign
	ld	a, (0x03, sp)
; genPointerSet
	ld	0x5304, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_PrescalerConfig.c: 71: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
