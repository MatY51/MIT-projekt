;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_ClearFlag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_ClearFlag
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
;	../SPLSPL/src/stm8s_i2c_I2C_ClearFlag.c: 64: void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
; genLabel
;	-----------------------------------------
;	 function I2C_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_ClearFlag:
; genReceive
;	../SPLSPL/src/stm8s_i2c_I2C_ClearFlag.c: 71: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
; genCast
; genAssign
; genAnd
	clr	a
	ld	xh, a
;	../SPLSPL/src/stm8s_i2c_I2C_ClearFlag.c: 73: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
; genCpl
	cplw	x
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ld	0x5218, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_i2c_I2C_ClearFlag.c: 74: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
