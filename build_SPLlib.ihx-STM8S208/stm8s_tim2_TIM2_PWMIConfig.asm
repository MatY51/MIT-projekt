;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_PWMIConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_TI2_Config
	.globl _TIM2_TI1_Config
	.globl _TIM2_SetIC2Prescaler
	.globl _TIM2_SetIC1Prescaler
	.globl _TIM2_PWMIConfig
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
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 41: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM2_PWMIConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM2_PWMIConfig:
	pushw	x
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 57: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x44
	jrne	00134$
	jp	00102$
00134$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 59: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
; genAssign
	ld	a, #0x44
	ld	(0x01, sp), a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 63: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
; genAssign
	clr	(0x01, sp)
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 67: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
; genCmpEQorNE
	ld	a, (0x06, sp)
	dec	a
	jrne	00137$
	jp	00138$
00137$:
	jp	00105$
00138$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 69: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
; genAssign
	ld	a, #0x02
	ld	(0x02, sp), a
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 73: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
; genLabel
00106$:
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 76: if (TIM2_Channel == TIM2_CHANNEL_1)
; genIfx
	ld	a, xl
	tnz	a
	jreq	00139$
	jp	00108$
00139$:
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 79: TIM2_TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x07, sp)
	push	a
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_TI1_Config
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 83: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_SetIC1Prescaler
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 86: TIM2_TI2_Config(icpolarity, icselection, TIM2_ICFilter);
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x03, sp)
	push	a
; genSend
	ld	a, (0x03, sp)
; genCall
	call	_TIM2_TI2_Config
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 89: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_SetIC2Prescaler
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 94: TIM2_TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x07, sp)
	push	a
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_TI2_Config
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 98: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_SetIC2Prescaler
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 101: TIM2_TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x03, sp)
	push	a
; genSend
	ld	a, (0x03, sp)
; genCall
	call	_TIM2_TI1_Config
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 104: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_SetIC1Prescaler
; genLabel
00110$:
;	../SPLSPL/src/stm8s_tim2_TIM2_PWMIConfig.c: 106: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #8
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
