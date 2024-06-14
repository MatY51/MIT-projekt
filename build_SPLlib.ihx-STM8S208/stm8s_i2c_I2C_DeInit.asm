;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_DeInit
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
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 36: void I2C_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function I2C_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_DeInit:
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 38: I2C->CR1 = I2C_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5210+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 39: I2C->CR2 = I2C_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5211+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 40: I2C->FREQR = I2C_FREQR_RESET_VALUE;
; genPointerSet
	mov	0x5212+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 41: I2C->OARL = I2C_OARL_RESET_VALUE;
; genPointerSet
	mov	0x5213+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 42: I2C->OARH = I2C_OARH_RESET_VALUE;
; genPointerSet
	mov	0x5214+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 43: I2C->ITR = I2C_ITR_RESET_VALUE;
; genPointerSet
	mov	0x521a+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 44: I2C->CCRL = I2C_CCRL_RESET_VALUE;
; genPointerSet
	mov	0x521b+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 45: I2C->CCRH = I2C_CCRH_RESET_VALUE;
; genPointerSet
	mov	0x521c+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 46: I2C->TRISER = I2C_TRISER_RESET_VALUE;
; genPointerSet
	mov	0x521d+0, #0x02
; genLabel
00101$:
;	../SPLSPL/src/stm8s_i2c_I2C_DeInit.c: 47: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
