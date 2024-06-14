;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_exti_EXTI_SetExtIntSensitivity
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_SetExtIntSensitivity
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
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 42: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
; genLabel
;	-----------------------------------------
;	 function EXTI_SetExtIntSensitivity
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_EXTI_SetExtIntSensitivity:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 49: switch (Port)
; genCmp
; genCmpTnz
	cp	a, #0x04
	jrule	00117$
	jp	00108$
00117$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 57: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
; genCast
; genAssign
	exg	a, yl
	ld	a, (0x04, sp)
	exg	a, yl
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 49: switch (Port)
; genJumpTab
	clrw	x
	ld	xl, a
	sllw	x
	ldw	x, (#00118$, x)
	jp	(x)
00118$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 51: case EXTI_PORT_GPIOA:
; genLabel
00101$:
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 52: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x50a0, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 53: EXTI->CR1 |= (uint8_t)(SensitivityValue);
; genPointerGet
	ld	a, 0x50a0
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x50a0, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 54: break;
; genGoto
	jp	00108$
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 55: case EXTI_PORT_GPIOB:
; genLabel
00102$:
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 56: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0xf3
; genPointerSet
	ld	0x50a0, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 57: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
; genPointerGet
	ld	a, 0x50a0
; genLeftShiftLiteral
	ldw	x, y
	sllw	x
	sllw	x
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x50a0, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 58: break;
; genGoto
	jp	00108$
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 59: case EXTI_PORT_GPIOC:
; genLabel
00103$:
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 60: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x50a0, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 61: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
; genPointerGet
	ld	a, 0x50a0
	ld	(0x01, sp), a
; genLeftShiftLiteral
	ld	a, yl
	swap	a
	and	a, #0xf0
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a0, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 62: break;
; genGoto
	jp	00108$
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 63: case EXTI_PORT_GPIOD:
; genLabel
00104$:
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 64: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0x3f
; genPointerSet
	ld	0x50a0, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 65: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
; genPointerGet
	ld	a, 0x50a0
	ld	(0x01, sp), a
; genLeftShiftLiteral
	ld	a, yl
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a0, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 66: break;
; genGoto
	jp	00108$
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 67: case EXTI_PORT_GPIOE:
; genLabel
00105$:
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 68: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x50a1, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 69: EXTI->CR2 |= (uint8_t)(SensitivityValue);
; genPointerGet
	ld	a, 0x50a1
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x50a1, a
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 73: }
; genLabel
00108$:
;	../SPLSPL/src/stm8s_exti_EXTI_SetExtIntSensitivity.c: 74: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
