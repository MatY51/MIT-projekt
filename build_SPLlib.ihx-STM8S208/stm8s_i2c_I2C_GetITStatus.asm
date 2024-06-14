;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_GetITStatus
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
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 52: ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
; genLabel
;	-----------------------------------------
;	 function I2C_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_I2C_GetITStatus:
	sub	sp, #3
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 55: __IO uint8_t enablestatus = 0;
; genAssign
	clr	(0x01, sp)
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 61: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
; genCast
; genAssign
	ldw	x, y
; genAnd
	clr	(0x03, sp)
	ld	a, xh
	and	a, #0x07
; genGetByte
; genCast
; genAssign
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 64: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
; genPointerGet
	ld	a, 0x521a
	ld	(0x03, sp), a
; genCast
; genAssign
	ld	a, (0x02, sp)
; genAnd
	and	a, (0x03, sp)
; genAssign
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 66: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
; genAnd
	clr	a
	ld	xl, a
	ld	a, xh
	and	a, #0x30
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 69: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
; genCast
; genAssign
	exg	a, yl
	ld	(0x03, sp), a
	exg	a, yl
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 66: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
; genCmpEQorNE
	ld	xh, a
	cpw	x, #0x0100
	jrne	00150$
	jp	00151$
00150$:
	jp	00110$
00151$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 69: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
; genPointerGet
	ld	a, 0x5217
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00152$
	jp	00102$
00152$:
; genIfx
	tnz	(0x01, sp)
	jrne	00153$
	jp	00102$
00153$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 72: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00111$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 77: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00111$
; genLabel
00110$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 83: if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
; genPointerGet
	ld	a, 0x5218
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00154$
	jp	00106$
00154$:
; genIfx
	tnz	(0x01, sp)
	jrne	00155$
	jp	00106$
00155$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 86: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00111$
; genLabel
00106$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 91: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00111$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 95: return  bitstatus;
; genReturn
; genLabel
00112$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetITStatus.c: 96: }
; genEndFunction
	addw	sp, #3
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
