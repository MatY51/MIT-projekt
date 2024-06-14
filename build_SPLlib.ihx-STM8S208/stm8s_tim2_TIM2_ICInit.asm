;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_ICInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_TI3_Config
	.globl _TIM2_TI2_Config
	.globl _TIM2_TI1_Config
	.globl _TIM2_SetIC3Prescaler
	.globl _TIM2_SetIC2Prescaler
	.globl _TIM2_SetIC1Prescaler
	.globl _TIM2_ICInit
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
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 41: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM2_ICInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ICInit:
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 54: if (TIM2_Channel == TIM2_CHANNEL_1)
; genIfx
	tnz	a
	jreq	00123$
	jp	00105$
00123$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 57: TIM2_TI1_Config((uint8_t)TIM2_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM2_TI1_Config
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 62: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM2_SetIC1Prescaler
; genGoto
	jp	00107$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 64: else if (TIM2_Channel == TIM2_CHANNEL_2)
; genCmpEQorNE
	dec	a
	jrne	00125$
	jp	00126$
00125$:
	jp	00102$
00126$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 67: TIM2_TI2_Config((uint8_t)TIM2_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM2_TI2_Config
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 72: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM2_SetIC2Prescaler
; genGoto
	jp	00107$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 77: TIM2_TI3_Config((uint8_t)TIM2_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM2_TI3_Config
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 82: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM2_SetIC3Prescaler
; genLabel
00107$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ICInit.c: 84: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
