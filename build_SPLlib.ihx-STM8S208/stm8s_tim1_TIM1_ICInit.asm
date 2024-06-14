;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_ICInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_TI4_Config
	.globl _TIM1_TI3_Config
	.globl _TIM1_TI2_Config
	.globl _TIM1_TI1_Config
	.globl _TIM1_SetIC4Prescaler
	.globl _TIM1_SetIC3Prescaler
	.globl _TIM1_SetIC2Prescaler
	.globl _TIM1_SetIC1Prescaler
	.globl _TIM1_ICInit
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
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 44: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM1_ICInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_ICInit:
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 60: TIM1_TI1_Config((uint8_t)TIM1_ICPolarity,
; genCast
; genAssign
	exg	a, xl
	ld	a, (0x03, sp)
	exg	a, xl
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 57: if (TIM1_Channel == TIM1_CHANNEL_1)
; genIfx
	tnz	a
	jreq	00133$
	jp	00108$
00133$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 60: TIM1_TI1_Config((uint8_t)TIM1_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, xl
; genCall
	call	_TIM1_TI1_Config
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 64: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM1_SetIC1Prescaler
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 66: else if (TIM1_Channel == TIM1_CHANNEL_2)
; genCmpEQorNE
	cp	a, #0x01
	jrne	00135$
	jp	00136$
00135$:
	jp	00105$
00136$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 69: TIM1_TI2_Config((uint8_t)TIM1_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, xl
; genCall
	call	_TIM1_TI2_Config
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 73: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM1_SetIC2Prescaler
; genGoto
	jp	00110$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 75: else if (TIM1_Channel == TIM1_CHANNEL_3)
; genCmpEQorNE
	cp	a, #0x02
	jrne	00138$
	jp	00139$
00138$:
	jp	00102$
00139$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 78: TIM1_TI3_Config((uint8_t)TIM1_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, xl
; genCall
	call	_TIM1_TI3_Config
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 82: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM1_SetIC3Prescaler
; genGoto
	jp	00110$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 87: TIM1_TI4_Config((uint8_t)TIM1_ICPolarity,
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, xl
; genCall
	call	_TIM1_TI4_Config
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 91: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM1_SetIC4Prescaler
; genLabel
00110$:
;	../SPLSPL/src/stm8s_tim1_TIM1_ICInit.c: 93: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
