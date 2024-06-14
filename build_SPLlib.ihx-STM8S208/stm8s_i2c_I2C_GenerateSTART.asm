;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_GenerateSTART
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_GenerateSTART
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
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTART.c: 39: void I2C_GenerateSTART(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_GenerateSTART
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_I2C_GenerateSTART:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTART.c: 47: I2C->CR2 |= I2C_CR2_START;
; genPointerGet
	ld	a, 0x5211
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTART.c: 44: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTART.c: 47: I2C->CR2 |= I2C_CR2_START;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5211, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTART.c: 52: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5211, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTART.c: 54: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
