;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_ITConfig
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
;	../SPLSPL/src/stm8s_tim2_TIM2_ITConfig.c: 44: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_ITConfig:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_ITConfig.c: 53: TIM2->IER |= (uint8_t)TIM2_IT;
; genPointerGet
	ldw	x, #0x5301
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	../SPLSPL/src/stm8s_tim2_TIM2_ITConfig.c: 50: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ITConfig.c: 53: TIM2->IER |= (uint8_t)TIM2_IT;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5301, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ITConfig.c: 58: TIM2->IER &= (uint8_t)(~TIM2_IT);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5301, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ITConfig.c: 60: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
