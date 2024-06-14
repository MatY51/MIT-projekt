;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_SendData
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_SendData
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
;	../SPLSPL/src/stm8s_i2c_I2C_SendData.c: 36: void I2C_SendData(uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function I2C_SendData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_SendData:
; genReceive
;	../SPLSPL/src/stm8s_i2c_I2C_SendData.c: 39: I2C->DR = Data;
; genPointerSet
	ld	0x5216, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_i2c_I2C_SendData.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
