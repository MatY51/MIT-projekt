;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_ITConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_ITConfig.c: 48: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM1_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_ITConfig:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_ITConfig.c: 57: TIM1->IER |= (uint8_t)TIM1_IT;
; genPointerGet
	ldw	x, #0x5254
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	../SPLSPL/src/stm8s_tim1_TIM1_ITConfig.c: 54: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ITConfig.c: 57: TIM1->IER |= (uint8_t)TIM1_IT;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5254, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ITConfig.c: 62: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5254, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ITConfig.c: 64: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
