;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_GPIO_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
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
;	../SPLSPL/src/stm8s_gpio_GPIO_DeInit.c: 36: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_DeInit:
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_gpio_GPIO_DeInit.c: 38: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
; genPointerSet
	clr	(y)
;	../SPLSPL/src/stm8s_gpio_GPIO_DeInit.c: 39: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
; genPlus
	ldw	x, y
	incw	x
	incw	x
; genPointerSet
	clr	(x)
;	../SPLSPL/src/stm8s_gpio_GPIO_DeInit.c: 40: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
; genPlus
	ldw	x, y
	addw	x, #0x0003
; genPointerSet
	clr	(x)
;	../SPLSPL/src/stm8s_gpio_GPIO_DeInit.c: 41: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
; genPlus
	ldw	x, y
	addw	x, #0x0004
; genPointerSet
	clr	(x)
; genLabel
00101$:
;	../SPLSPL/src/stm8s_gpio_GPIO_DeInit.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
