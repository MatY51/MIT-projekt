;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_beep_BEEP_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BEEP_Init
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
;	../SPLSPL/src/stm8s_beep_BEEP_Init.c: 39: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
; genLabel
;	-----------------------------------------
;	 function BEEP_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_BEEP_Init:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_beep_BEEP_Init.c: 45: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
; genPointerGet
	ld	a, 0x50f3
; genAnd
	and	a, #0x1f
; genCmpEQorNE
	cp	a, #0x1f
	jrne	00113$
	jp	00114$
00113$:
	jp	00102$
00114$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_beep_BEEP_Init.c: 47: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
; genPointerGet
	ld	a, 0x50f3
; genAnd
	and	a, #0xe0
; genPointerSet
	ld	0x50f3, a
;	../SPLSPL/src/stm8s_beep_BEEP_Init.c: 48: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
; genPointerGet
	ld	a, 0x50f3
; genOr
	or	a, #0x0b
; genPointerSet
	ld	0x50f3, a
; genLabel
00102$:
;	../SPLSPL/src/stm8s_beep_BEEP_Init.c: 52: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
; genPointerGet
	ld	a, 0x50f3
; genAnd
	and	a, #0x3f
; genPointerSet
	ld	0x50f3, a
;	../SPLSPL/src/stm8s_beep_BEEP_Init.c: 53: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
; genPointerGet
	ld	a, 0x50f3
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50f3, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_beep_BEEP_Init.c: 54: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
