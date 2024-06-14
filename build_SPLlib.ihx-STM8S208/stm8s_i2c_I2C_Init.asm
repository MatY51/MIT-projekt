;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_i2c_I2C_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_AcknowledgeConfig
	.globl _I2C_Init
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
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 47: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
; genLabel
;	-----------------------------------------
;	 function I2C_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 7 bytes.
_I2C_Init:
	sub	sp, #7
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 53: uint8_t tmpccrh = 0;
; genAssign
	clr	(0x05, sp)
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 66: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
; genPointerGet
	ld	a, 0x5212
; genAnd
	and	a, #0xc0
; genPointerSet
	ld	0x5212, a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 68: I2C->FREQR |= InputClockFrequencyMHz;
; genPointerGet
	ld	a, 0x5212
; genOr
	or	a, (0x13, sp)
; genPointerSet
	ld	0x5212, a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 72: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
; genPointerGet
	ld	a, 0x5210
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5210, a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 75: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
; genPointerGet
	ld	a, 0x521c
; genAnd
	and	a, #0x30
; genPointerSet
	ld	0x521c, a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 76: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
; genPointerGet
; Dummy read
	ld	a, 0x521b
; genPointerSet
	mov	0x521b+0, #0x00
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 87: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
; genCast
; genAssign
	ld	a, (0x13, sp)
	clrw	x
	clr	(0x01, sp)
; genIPush
	push	a
	pushw	x
	clr	a
	push	a
; genIPush
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
; genCast
; genAssign
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 79: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
; genCmp
; genCmpTnz
	ldw	x, #0x86a0
	cpw	x, (0x0c, sp)
	ld	a, #0x01
	sbc	a, (0x0b, sp)
	clr	a
	sbc	a, (0x0a, sp)
	jrc	00141$
	jp	00109$
00141$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 82: tmpccrh = I2C_CCRH_FS;
; genAssign
	ld	a, #0x80
	ld	(0x05, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 84: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
; genIfx
	tnz	(0x10, sp)
	jreq	00142$
	jp	00102$
00142$:
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 87: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
; genIPush
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
; genIPush
	push	#0x03
	clrw	x
	pushw	x
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
; genIPush
	pushw	x
	pushw	y
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genCast
; genAssign
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 92: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
; genIPush
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
; genIPush
	push	#0x19
	clrw	x
	pushw	x
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
	ld	a, xl
; genIPush
	push	a
	ld	a, xh
	push	a
	pushw	y
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genCast
; genAssign
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 94: tmpccrh |= I2C_CCRH_DUTY;
; genAssign
	ld	a, #0xc0
	ld	(0x05, sp), a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 98: if (result < (uint16_t)0x01)
; genCmp
; genCmpTnz
	cpw	x, #0x0001
	jrc	00143$
	jp	00105$
00143$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 101: result = (uint16_t)0x0001;
; genAssign
	clrw	x
	incw	x
; genLabel
00105$:
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 107: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
; genCast
; genAssign
	ld	a, (0x13, sp)
	ld	(0x07, sp), a
	clr	(0x06, sp)
; genMult
; genMultLit
	pushw	x
	ldw	x, (0x08, sp)
	sllw	x
	addw	x, (0x08, sp)
	exgw	x, y
	popw	x
; genIPush
	pushw	x
	push	#0x0a
	push	#0x00
; genSend
	ldw	x, y
; genCall
	call	__divsint
	ldw	y, x
	ld	a, xl
	popw	x
; genCast
; genAssign
; genPlus
	inc	a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 108: I2C->TRISER = (uint8_t)tmpval;
; genCast
; genAssign
; genPointerSet
	ld	0x521d, a
; genGoto
	jp	00110$
; genLabel
00109$:
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 115: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
; genLeftShiftLiteral
	ldw	x, (0x0c, sp)
	ldw	y, (0x0a, sp)
	sllw	x
	rlcw	y
; genIPush
	pushw	x
	pushw	y
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genCast
; genAssign
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 118: if (result < (uint16_t)0x0004)
; genCmp
; genCmpTnz
	cpw	x, #0x0004
	jrc	00144$
	jp	00107$
00144$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 121: result = (uint16_t)0x0004;
; genAssign
	ldw	x, #0x0004
; genLabel
00107$:
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 127: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
; genPlus
	ld	a, (0x13, sp)
	inc	a
; genPointerSet
	ld	0x521d, a
; genLabel
00110$:
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 132: I2C->CCRL = (uint8_t)result;
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x521b, a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 133: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
; genGetByte
	ld	a, xh
; genAnd
	and	a, #0x0f
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x521c, a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 136: I2C->CR1 |= I2C_CR1_PE;
; genPointerGet
	ld	a, 0x5210
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5210, a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 139: I2C_AcknowledgeConfig(Ack);
; genSend
	ld	a, (0x11, sp)
; genCall
	call	_I2C_AcknowledgeConfig
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 142: I2C->OARL = (uint8_t)(OwnAddress);
; genCast
; genAssign
	ld	a, (0x0f, sp)
; genPointerSet
	ld	0x5213, a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 143: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
; genOr
	ld	a, (0x12, sp)
	or	a, #0x40
	ld	(0x07, sp), a
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 144: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
; genAnd
	clr	a
	ld	xl, a
	ld	a, (0x0e, sp)
	and	a, #0x03
	ld	xh, a
; genRightShiftLiteral
	ld	a, #0x80
	div	x, a
; genCast
; genAssign
	ld	a, xl
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ld	0x5214, a
; genLabel
00111$:
;	../SPLSPL/src/stm8s_i2c_I2C_Init.c: 145: }
; genEndFunction
	ldw	x, (8, sp)
	addw	sp, #19
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
