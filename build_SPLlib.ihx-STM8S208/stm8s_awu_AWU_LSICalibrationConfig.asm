;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_awu_AWU_LSICalibrationConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_LSICalibrationConfig
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
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 44: void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
; genLabel
;	-----------------------------------------
;	 function AWU_LSICalibrationConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_AWU_LSICalibrationConfig:
	sub	sp, #6
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 52: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
; genIPush
	push	#0xe8
	push	#0x03
	clrw	x
	pushw	x
; genIPush
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genCast
; genAssign
	ldw	(0x05, sp), x
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 56: A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
; genRightShiftLiteral
	ldw	x, (0x05, sp)
	srlw	x
	srlw	x
	ldw	(0x01, sp), x
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 58: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
; genCast
; genAssign
	ldw	x, (0x01, sp)
; genLeftShiftLiteral
	ldw	(0x03, sp), x
	sll	(0x04, sp)
	rlc	(0x03, sp)
	sll	(0x04, sp)
	rlc	(0x03, sp)
; genCast
; genAssign
	ldw	y, (0x05, sp)
; genMinus
	subw	y, (0x03, sp)
; genLeftShiftLiteral
	sllw	x
; genPlus
	incw	x
; genIPush
	pushw	x
; genSend
	ldw	x, y
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 60: AWU->APR = (uint8_t)(A - 2U);
; genCall
	call	__mulint
	ldw	(0x05, sp), x
; genCast
; genAssign
	ld	a, (0x02, sp)
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 58: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
; genCmp
; genCmpTnz
	ldw	x, (0x03, sp)
	cpw	x, (0x05, sp)
	jrnc	00113$
	jp	00102$
00113$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 60: AWU->APR = (uint8_t)(A - 2U);
; genMinus
	sub	a, #0x02
; genPointerSet
	ld	0x50f1, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 64: AWU->APR = (uint8_t)(A - 1U);
; genMinus
	dec	a
; genPointerSet
	ld	0x50f1, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_awu_AWU_LSICalibrationConfig.c: 66: }
; genEndFunction
	ldw	x, (7, sp)
	addw	sp, #12
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
