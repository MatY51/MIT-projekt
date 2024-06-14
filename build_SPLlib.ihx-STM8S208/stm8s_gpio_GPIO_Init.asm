;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_GPIO_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_Init
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
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 41: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
; genLabel
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_GPIO_Init:
	sub	sp, #6
; genReceive
	exgw	x, y
; genReceive
	ld	(0x06, sp), a
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 51: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genPlus
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x01, sp), x
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genCpl
	push	a
	ld	a, (0x07, sp)
	cpl	a
	ld	(0x04, sp), a
	pop	a
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 68: GPIOx->DDR |= (uint8_t)GPIO_Pin;
; genPlus
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x04, sp), x
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 57: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
; genAnd
	tnz	(0x09, sp)
	jrmi	00143$
	jp	00105$
00143$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 61: GPIOx->ODR |= (uint8_t)GPIO_Pin;
; genPointerGet
	ld	a, (y)
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 59: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
; genAnd
	push	a
	ld	a, (0x0a, sp)
	bcp	a, #0x10
	pop	a
	jrne	00144$
	jp	00102$
00144$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 61: GPIOx->ODR |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ld	(y), a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 65: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ld	(y), a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 68: GPIOx->DDR |= (uint8_t)GPIO_Pin;
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 73: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
; genLabel
00106$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 82: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genPlus
	ldw	x, y
	addw	x, #0x0003
; genPointerGet
	ld	a, (x)
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 80: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
; genAnd
	push	a
	ld	a, (0x0a, sp)
	bcp	a, #0x40
	pop	a
	jrne	00145$
	jp	00108$
00145$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 82: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jp	00109$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 86: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ld	(x), a
; genLabel
00109$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 51: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 93: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
; genAnd
	push	a
	ld	a, (0x0a, sp)
	bcp	a, #0x20
	pop	a
	jrne	00146$
	jp	00111$
00146$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 95: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genGoto
	jp	00113$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 99: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genLabel
00113$:
;	../SPLSPL/src/stm8s_gpio_GPIO_Init.c: 101: }
; genEndFunction
	addw	sp, #6
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
