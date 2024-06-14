;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_GPIO_ExternalPullUpConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_ExternalPullUpConfig
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
;	../SPLSPL/src/stm8s_gpio_GPIO_ExternalPullUpConfig.c: 38: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ExternalPullUpConfig:
	push	a
; genReceive
; genReceive
;	../SPLSPL/src/stm8s_gpio_GPIO_ExternalPullUpConfig.c: 46: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genPlus
	addw	x, #0x0003
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	../SPLSPL/src/stm8s_gpio_GPIO_ExternalPullUpConfig.c: 44: if (NewState != DISABLE) /* External Pull-Up Set*/
; genIfx
	tnz	(0x04, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_gpio_GPIO_ExternalPullUpConfig.c: 46: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_gpio_GPIO_ExternalPullUpConfig.c: 49: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_gpio_GPIO_ExternalPullUpConfig.c: 51: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
