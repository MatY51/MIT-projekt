;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_CheckEvent
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_CheckEvent
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
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 145: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
; genLabel
;	-----------------------------------------
;	 function I2C_CheckEvent
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_I2C_CheckEvent:
	sub	sp, #6
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 147: __IO uint16_t lastevent = 0x00;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 155: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
; genCast
; genAssign
; genCmpEQorNE
	cpw	y, #0x0004
	jrne	00124$
	jp	00125$
00124$:
	jp	00102$
00125$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 157: lastevent = I2C->SR2 & I2C_SR2_AF;
; genPointerGet
	ld	a, 0x5218
; genAnd
	and	a, #0x04
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genAssign
	ldw	(0x01, sp), x
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 161: flag1 = I2C->SR1;
; genPointerGet
	ld	a, 0x5217
	ld	xl, a
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 162: flag2 = I2C->SR3;
; genPointerGet
	ld	a, 0x5219
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 163: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
; genCast
; genAssign
	ld	xh, a
	clr	a
; genLeftShiftLiteral
	clr	(0x04, sp)
; genCast
; genAssign
	clr	(0x05, sp)
; genOr
; genAssign
	ldw	(0x01, sp), x
; genLabel
00103$:
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 166: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
; genAnd
	ld	a, yl
	and	a, (0x02, sp)
	ld	(0x06, sp), a
	ld	a, yh
	and	a, (0x01, sp)
	ld	(0x05, sp), a
; genCmpEQorNE
	ldw	x, y
	cpw	x, (0x05, sp)
	jrne	00127$
	jp	00128$
00127$:
	jp	00105$
00128$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 169: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 174: status = ERROR;
; genAssign
	clr	a
; genLabel
00106$:
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 178: return status;
; genReturn
; genLabel
00107$:
;	../SPLSPL/src/stm8s_i2c_I2C_CheckEvent.c: 179: }
; genEndFunction
	addw	sp, #6
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
