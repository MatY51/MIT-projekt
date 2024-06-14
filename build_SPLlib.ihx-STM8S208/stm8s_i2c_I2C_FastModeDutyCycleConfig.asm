;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_FastModeDutyCycleConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_FastModeDutyCycleConfig
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
;	../SPLSPL/src/stm8s_i2c_I2C_FastModeDutyCycleConfig.c: 37: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
; genLabel
;	-----------------------------------------
;	 function I2C_FastModeDutyCycleConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_FastModeDutyCycleConfig:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_i2c_I2C_FastModeDutyCycleConfig.c: 45: I2C->CCRH |= I2C_CCRH_DUTY;
; genPointerGet
	ld	a, 0x521c
;	../SPLSPL/src/stm8s_i2c_I2C_FastModeDutyCycleConfig.c: 42: if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
; genCmpEQorNE
	push	a
	ld	a, xl
	cp	a, #0x40
	pop	a
	jrne	00114$
	jp	00115$
00114$:
	jp	00102$
00115$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_FastModeDutyCycleConfig.c: 45: I2C->CCRH |= I2C_CCRH_DUTY;
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x521c, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_FastModeDutyCycleConfig.c: 50: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x521c, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_i2c_I2C_FastModeDutyCycleConfig.c: 52: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
