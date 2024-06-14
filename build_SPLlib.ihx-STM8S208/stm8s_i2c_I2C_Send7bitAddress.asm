;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_Send7bitAddress
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_Send7bitAddress
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
;	../SPLSPL/src/stm8s_i2c_I2C_Send7bitAddress.c: 38: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
; genLabel
;	-----------------------------------------
;	 function I2C_Send7bitAddress
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_I2C_Send7bitAddress:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_i2c_I2C_Send7bitAddress.c: 45: Address &= (uint8_t)0xFE;
; genAnd
	and	a, #0xfe
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_Send7bitAddress.c: 48: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5216, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_i2c_I2C_Send7bitAddress.c: 49: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
