;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_GPIO_WriteHigh
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_WriteHigh
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
;	../SPLSPL/src/stm8s_gpio_GPIO_WriteHigh.c: 39: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
; genLabel
;	-----------------------------------------
;	 function GPIO_WriteHigh
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_GPIO_WriteHigh:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_gpio_GPIO_WriteHigh.c: 41: GPIOx->ODR |= (uint8_t)PortPins;
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_gpio_GPIO_WriteHigh.c: 42: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
