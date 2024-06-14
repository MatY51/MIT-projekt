;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_ITConfig
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
;	../SPLSPL/src/stm8s_tim3_TIM3_ITConfig.c: 43: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM3_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM3_ITConfig:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_tim3_TIM3_ITConfig.c: 52: TIM3->IER |= (uint8_t)TIM3_IT;
; genPointerGet
	ldw	x, #0x5321
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	../SPLSPL/src/stm8s_tim3_TIM3_ITConfig.c: 49: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ITConfig.c: 52: TIM3->IER |= (uint8_t)TIM3_IT;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5321, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ITConfig.c: 57: TIM3->IER &= (uint8_t)(~TIM3_IT);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5321, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ITConfig.c: 59: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
