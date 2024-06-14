;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_exti_EXTI_GetExtIntSensitivity
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_GetExtIntSensitivity
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
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 36: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
; genLabel
;	-----------------------------------------
;	 function EXTI_GetExtIntSensitivity
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_GetExtIntSensitivity:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 38: uint8_t value = 0;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 43: switch (Port)
; genCmp
; genCmpTnz
	push	a
	ld	a, xl
	cp	a, #0x04
	pop	a
	jrule	00117$
	jp	00107$
00117$:
; skipping generated iCode
; genJumpTab
	clr	a
	ld	xh, a
	sllw	x
	ldw	x, (#00118$, x)
	jp	(x)
00118$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 45: case EXTI_PORT_GPIOA:
; genLabel
00101$:
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 46: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0x03
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 47: break;
; genGoto
	jp	00107$
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 48: case EXTI_PORT_GPIOB:
; genLabel
00102$:
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 49: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0x0c
; genRightShiftLiteral
	srl	a
	srl	a
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 50: break;
; genGoto
	jp	00107$
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 51: case EXTI_PORT_GPIOC:
; genLabel
00103$:
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 52: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0x30
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 53: break;
; genGoto
	jp	00107$
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 54: case EXTI_PORT_GPIOD:
; genLabel
00104$:
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 55: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0xc0
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 56: break;
; genGoto
	jp	00107$
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 57: case EXTI_PORT_GPIOE:
; genLabel
00105$:
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 58: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0x03
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 62: }
; genLabel
00107$:
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 64: return((EXTI_Sensitivity_TypeDef)value);
; genReturn
; genLabel
00108$:
;	../SPLSPL/src/stm8s_exti_EXTI_GetExtIntSensitivity.c: 65: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
