;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim4_TIM4_Cmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_Cmd
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
;	../SPLSPL/src/stm8s_tim4_TIM4_Cmd.c: 37: void TIM4_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_Cmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim4_TIM4_Cmd.c: 45: TIM4->CR1 |= TIM4_CR1_CEN;
; genPointerGet
	ld	a, 0x5340
;	../SPLSPL/src/stm8s_tim4_TIM4_Cmd.c: 43: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim4_TIM4_Cmd.c: 45: TIM4->CR1 |= TIM4_CR1_CEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5340, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim4_TIM4_Cmd.c: 49: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5340, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim4_TIM4_Cmd.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
