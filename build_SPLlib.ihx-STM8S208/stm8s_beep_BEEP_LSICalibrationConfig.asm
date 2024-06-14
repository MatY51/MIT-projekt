;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_beep_BEEP_LSICalibrationConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BEEP_LSICalibrationConfig
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
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 44: void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
; genLabel
;	-----------------------------------------
;	 function BEEP_LSICalibrationConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 9 bytes.
_BEEP_LSICalibrationConfig:
	sub	sp, #9
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 52: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
; genIPush
	push	#0xe8
	push	#0x03
	clrw	x
	pushw	x
; genIPush
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genCast
; genAssign
	ldw	(0x01, sp), x
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 56: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
; genPointerGet
	ld	a, 0x50f3
; genAnd
	and	a, #0xe0
; genPointerSet
	ld	0x50f3, a
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 58: A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
; genRightShiftLiteral
	ldw	x, (0x01, sp)
	srlw	x
	srlw	x
	srlw	x
	ldw	(0x03, sp), x
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 60: if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
; genCast
; genAssign
	ldw	y, (0x03, sp)
	ldw	(0x08, sp), y
; genLeftShiftLiteral
	ldw	x, (0x08, sp)
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x05, sp), x
; genCast
; genAssign
	ldw	y, (0x01, sp)
; genMinus
	subw	y, (0x05, sp)
; genLeftShiftLiteral
	ldw	x, (0x08, sp)
	sllw	x
; genPlus
	incw	x
; genIPush
	pushw	x
; genSend
	ldw	x, y
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 56: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
; genCall
	call	__mulint
	ldw	(0x07, sp), x
; genPointerGet
	ld	a, 0x50f3
	ld	(0x09, sp), a
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 62: BEEP->CSR |= (uint8_t)(A - 2U);
; genCast
; genAssign
	ld	a, (0x04, sp)
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 60: if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
; genCmp
; genCmpTnz
	ldw	x, (0x05, sp)
	cpw	x, (0x07, sp)
	jrnc	00113$
	jp	00102$
00113$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 62: BEEP->CSR |= (uint8_t)(A - 2U);
; genMinus
	sub	a, #0x02
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ld	0x50f3, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 66: BEEP->CSR |= (uint8_t)(A - 1U);
; genMinus
	dec	a
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ld	0x50f3, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_beep_BEEP_LSICalibrationConfig.c: 68: }
; genEndFunction
	ldw	x, (10, sp)
	addw	sp, #15
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
