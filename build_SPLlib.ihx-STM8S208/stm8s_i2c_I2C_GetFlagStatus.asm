;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_GetFlagStatus
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
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 54: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
; genLabel
;	-----------------------------------------
;	 function I2C_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_GetFlagStatus:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 56: uint8_t tempreg = 0;
; genAssign
	clr	(0x01, sp)
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 64: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
; genCast
; genAssign
	ldw	y, x
	ld	a, xh
; genGetByte
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 66: switch (regindex)
; genCmpEQorNE
	cp	a, #0x01
	jrne	00140$
	jp	00101$
00140$:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x02
	jrne	00143$
	jp	00102$
00143$:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x03
	jrne	00146$
	jp	00103$
00146$:
; skipping generated iCode
; genGoto
	jp	00105$
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 69: case 0x01:
; genLabel
00101$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 70: tempreg = (uint8_t)I2C->SR1;
; genPointerGet
	ld	a, 0x5217
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 71: break;
; genGoto
	jp	00105$
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 74: case 0x02:
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 75: tempreg = (uint8_t)I2C->SR2;
; genPointerGet
	ld	a, 0x5218
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 76: break;
; genGoto
	jp	00105$
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 79: case 0x03:
; genLabel
00103$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 80: tempreg = (uint8_t)I2C->SR3;
; genPointerGet
	ld	a, 0x5219
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 85: }
; genLabel
00105$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 88: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00148$
	jp	00107$
00148$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 91: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00108$
; genLabel
00107$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 96: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00108$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 99: return bitstatus;
; genReturn
; genLabel
00109$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetFlagStatus.c: 100: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
