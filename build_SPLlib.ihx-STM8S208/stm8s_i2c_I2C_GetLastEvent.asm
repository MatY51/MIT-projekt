;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_GetLastEvent
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_GetLastEvent
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
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 40: I2C_Event_TypeDef I2C_GetLastEvent(void)
; genLabel
;	-----------------------------------------
;	 function I2C_GetLastEvent
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_I2C_GetLastEvent:
	sub	sp, #4
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 42: __IO uint16_t lastevent = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 46: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
; genPointerGet
	ld	a, 0x5218
; genAnd
	bcp	a, #0x04
	jrne	00113$
	jp	00102$
00113$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 48: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
; genAssign
	ldw	x, #0x0004
	ldw	(0x01, sp), x
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 53: flag1 = I2C->SR1;
; genPointerGet
	ld	a, 0x5217
; genCast
; genAssign
	ld	xl, a
	clrw	y
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 54: flag2 = I2C->SR3;
; genPointerGet
	ld	a, 0x5219
; genCast
; genAssign
	ld	xh, a
	clr	a
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 57: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
; genLeftShiftLiteral
	clr	(0x04, sp)
; genOr
; genAssign
	ldw	(0x01, sp), x
; genLabel
00103$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 60: return (I2C_Event_TypeDef)lastevent;
; genCast
; genAssign
	ldw	x, (0x01, sp)
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_i2c_I2C_GetLastEvent.c: 61: }
; genEndFunction
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
