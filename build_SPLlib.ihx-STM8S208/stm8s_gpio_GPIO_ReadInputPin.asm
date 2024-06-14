;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_GPIO_ReadInputPin
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_ReadInputPin
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
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadInputPin.c: 37: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadInputPin
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ReadInputPin:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadInputPin.c: 39: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genAnd
	and	a, (0x01, sp)
; genCast
	neg	a
	clr	a
	rlc	a
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadInputPin.c: 40: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
