;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_GPIO_Write
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_Write
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
;	../SPLSPL/src/stm8s_gpio_GPIO_Write.c: 39: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
; genLabel
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_Write:
; genReceive
; genReceive
;	../SPLSPL/src/stm8s_gpio_GPIO_Write.c: 41: GPIOx->ODR = PortVal;
; genPointerSet
	ld	(x), a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Write.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
