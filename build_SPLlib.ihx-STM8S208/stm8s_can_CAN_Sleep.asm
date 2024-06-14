;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_Sleep
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_Sleep
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
;	../SPLSPL/src/stm8s_can_CAN_Sleep.c: 36: CAN_Sleep_TypeDef CAN_Sleep(void)
; genLabel
;	-----------------------------------------
;	 function CAN_Sleep
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_Sleep:
;	../SPLSPL/src/stm8s_can_CAN_Sleep.c: 38: CAN_Sleep_TypeDef sleepstatus = CAN_Sleep_Failed;
; genAssign
	clrw	x
;	../SPLSPL/src/stm8s_can_CAN_Sleep.c: 41: CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
; genPointerGet
	ld	a, 0x5420
; genAnd
	and	a, #0xfe
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_Sleep.c: 44: if ((CAN->MSR & (CAN_MSR_SLAK|CAN_MSR_INAK)) == CAN_MSR_SLAK)
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x03
; genCmpEQorNE
	cp	a, #0x02
	jrne	00113$
	jp	00114$
00113$:
	jp	00102$
00114$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_Sleep.c: 47: sleepstatus =  CAN_Sleep_Ok;
; genAssign
	ld	a, #0x01
	ld	xl, a
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_Sleep.c: 51: return (CAN_Sleep_TypeDef) sleepstatus;
; genReturn
	ld	a, xl
; genLabel
00103$:
;	../SPLSPL/src/stm8s_can_CAN_Sleep.c: 52: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
