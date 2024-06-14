;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_ICInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_TI2_Config
	.globl _TIM3_TI1_Config
	.globl _TIM3_SetIC2Prescaler
	.globl _TIM3_SetIC1Prescaler
	.globl _TIM3_ICInit
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
;	../SPLSPL/src/stm8s_tim3_TIM3_ICInit.c: 41: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM3_ICInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_ICInit:
; genReceive
;	../SPLSPL/src/stm8s_tim3_TIM3_ICInit.c: 54: if (TIM3_Channel != TIM3_CHANNEL_2)
; genIfx
	tnz	a
	jreq	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ICInit.c: 57: TIM3_TI1_Config((uint8_t)TIM3_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM3_TI1_Config
;	../SPLSPL/src/stm8s_tim3_TIM3_ICInit.c: 62: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM3_SetIC1Prescaler
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ICInit.c: 67: TIM3_TI2_Config((uint8_t)TIM3_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM3_TI2_Config
;	../SPLSPL/src/stm8s_tim3_TIM3_ICInit.c: 72: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM3_SetIC2Prescaler
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim3_TIM3_ICInit.c: 74: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
