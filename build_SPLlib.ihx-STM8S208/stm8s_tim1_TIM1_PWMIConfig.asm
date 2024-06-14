;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_PWMIConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_TI2_Config
	.globl _TIM1_TI1_Config
	.globl _TIM1_SetIC2Prescaler
	.globl _TIM1_SetIC1Prescaler
	.globl _TIM1_PWMIConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 46: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM1_PWMIConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM1_PWMIConfig:
	pushw	x
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 62: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
; genIfx
	tnz	(0x05, sp)
	jreq	00133$
	jp	00102$
00133$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 64: icpolarity = TIM1_ICPOLARITY_FALLING;
; genAssign
	ld	a, #0x01
	ld	(0x01, sp), a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 68: icpolarity = TIM1_ICPOLARITY_RISING;
; genAssign
	clr	(0x01, sp)
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 72: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
; genCmpEQorNE
	ld	a, (0x06, sp)
	dec	a
	jrne	00135$
	jp	00136$
00135$:
	jp	00105$
00136$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 74: icselection = TIM1_ICSELECTION_INDIRECTTI;
; genAssign
	ld	a, #0x02
	ld	(0x02, sp), a
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 78: icselection = TIM1_ICSELECTION_DIRECTTI;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
; genLabel
00106$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 84: TIM1_TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
; genCast
; genAssign
	ld	a, (0x05, sp)
	ld	xh, a
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 81: if (TIM1_Channel == TIM1_CHANNEL_1)
; genIfx
	ld	a, xl
	tnz	a
	jreq	00137$
	jp	00108$
00137$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 84: TIM1_TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x07, sp)
	push	a
; genSend
	ld	a, xh
; genCall
	call	_TIM1_TI1_Config
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 88: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM1_SetIC1Prescaler
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 91: TIM1_TI2_Config(icpolarity, icselection, TIM1_ICFilter);
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x03, sp)
	push	a
; genSend
	ld	a, (0x03, sp)
; genCall
	call	_TIM1_TI2_Config
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 94: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM1_SetIC2Prescaler
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 99: TIM1_TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x07, sp)
	push	a
; genSend
	ld	a, xh
; genCall
	call	_TIM1_TI2_Config
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 103: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM1_SetIC2Prescaler
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 106: TIM1_TI1_Config(icpolarity, icselection, TIM1_ICFilter);
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x03, sp)
	push	a
; genSend
	ld	a, (0x03, sp)
; genCall
	call	_TIM1_TI1_Config
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 109: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM1_SetIC1Prescaler
; genLabel
00110$:
;	../SPLSPL/src/stm8s_tim1_TIM1_PWMIConfig.c: 111: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #8
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
