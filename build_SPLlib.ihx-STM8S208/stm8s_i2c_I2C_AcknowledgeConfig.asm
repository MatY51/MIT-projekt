;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_AcknowledgeConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_AcknowledgeConfig
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
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 38: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
; genLabel
;	-----------------------------------------
;	 function I2C_AcknowledgeConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_AcknowledgeConfig:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 46: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
; genPointerGet
	ld	a, 0x5211
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 43: if (Ack == I2C_ACK_NONE)
; genIfx
	exg	a, xl
	tnz	a
	exg	a, xl
	jreq	00123$
	jp	00105$
00123$:
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 46: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5211, a
; genGoto
	jp	00107$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 51: I2C->CR2 |= I2C_CR2_ACK;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5211, a
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 46: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
; genPointerGet
	ld	a, 0x5211
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 53: if (Ack == I2C_ACK_CURR)
; genCmpEQorNE
	push	a
	ld	a, xl
	dec	a
	pop	a
	jrne	00125$
	jp	00126$
00125$:
	jp	00102$
00126$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 56: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5211, a
; genGoto
	jp	00107$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 61: I2C->CR2 |= I2C_CR2_POS;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5211, a
; genLabel
00107$:
;	../SPLSPL/src/stm8s_i2c_I2C_AcknowledgeConfig.c: 64: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
