;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_ITConfig
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
;	../SPLSPL/src/stm8s_i2c_I2C_ITConfig.c: 39: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_I2C_ITConfig:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_i2c_I2C_ITConfig.c: 48: I2C->ITR |= (uint8_t)I2C_IT;
; genPointerGet
	ldw	x, #0x521a
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	../SPLSPL/src/stm8s_i2c_I2C_ITConfig.c: 45: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_i2c_I2C_ITConfig.c: 48: I2C->ITR |= (uint8_t)I2C_IT;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x521a, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_ITConfig.c: 53: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x521a, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_i2c_I2C_ITConfig.c: 55: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
