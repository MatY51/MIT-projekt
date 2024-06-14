;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_UpdateDisableConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_UpdateDisableConfig
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
;	../SPLSPL/src/stm8s_tim3_TIM3_UpdateDisableConfig.c: 37: void TIM3_UpdateDisableConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM3_UpdateDisableConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM3_UpdateDisableConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim3_TIM3_UpdateDisableConfig.c: 45: TIM3->CR1 |= TIM3_CR1_UDIS;
; genPointerGet
	ld	a, 0x5320
;	../SPLSPL/src/stm8s_tim3_TIM3_UpdateDisableConfig.c: 43: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim3_TIM3_UpdateDisableConfig.c: 45: TIM3->CR1 |= TIM3_CR1_UDIS;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5320, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3_TIM3_UpdateDisableConfig.c: 49: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5320, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim3_TIM3_UpdateDisableConfig.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
