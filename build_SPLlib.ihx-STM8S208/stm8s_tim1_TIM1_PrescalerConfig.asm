;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_PrescalerConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_PrescalerConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_PrescalerConfig.c: 41: void TIM1_PrescalerConfig(uint16_t Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM1_PrescalerConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TIM1_PrescalerConfig:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_PrescalerConfig.c: 48: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5260, a
;	../SPLSPL/src/stm8s_tim1_TIM1_PrescalerConfig.c: 49: TIM1->PSCRL = (uint8_t)(Prescaler);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5261, a
;	../SPLSPL/src/stm8s_tim1_TIM1_PrescalerConfig.c: 52: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
; genCast
; genAssign
	ld	a, (0x01, sp)
; genPointerSet
	ld	0x5257, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PrescalerConfig.c: 53: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
