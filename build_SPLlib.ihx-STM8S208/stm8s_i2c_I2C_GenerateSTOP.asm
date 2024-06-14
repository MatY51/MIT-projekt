;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_GenerateSTOP
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_GenerateSTOP
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
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTOP.c: 37: void I2C_GenerateSTOP(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_GenerateSTOP
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_I2C_GenerateSTOP:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTOP.c: 45: I2C->CR2 |= I2C_CR2_STOP;
; genPointerGet
	ld	a, 0x5211
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTOP.c: 42: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTOP.c: 45: I2C->CR2 |= I2C_CR2_STOP;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5211, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTOP.c: 50: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5211, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_i2c_I2C_GenerateSTOP.c: 52: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
