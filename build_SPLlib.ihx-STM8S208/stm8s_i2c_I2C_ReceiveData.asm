;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_ReceiveData
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_ReceiveData
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
;	../SPLSPL/src/stm8s_i2c_I2C_ReceiveData.c: 36: uint8_t I2C_ReceiveData(void)
; genLabel
;	-----------------------------------------
;	 function I2C_ReceiveData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_ReceiveData:
;	../SPLSPL/src/stm8s_i2c_I2C_ReceiveData.c: 39: return ((uint8_t)I2C->DR);
; genPointerGet
	ld	a, 0x5216
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_i2c_I2C_ReceiveData.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
