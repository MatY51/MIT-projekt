;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_GPIO_ReadOutputData
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_ReadOutputData
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
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadOutputData.c: 37: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadOutputData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadOutputData:
; genReceive
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadOutputData.c: 39: return ((uint8_t)GPIOx->ODR);
; genPointerGet
	ld	a, (x)
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadOutputData.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
