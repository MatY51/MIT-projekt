;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_GPIO_ReadInputData
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_ReadInputData
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
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadInputData.c: 37: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadInputData:
; genReceive
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadInputData.c: 39: return ((uint8_t)GPIOx->IDR);
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_gpio_GPIO_ReadInputData.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
