;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_WakeUp
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_WakeUp
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
;	../SPLSPL/src/stm8s_can_CAN_WakeUp.c: 36: CAN_WakeUp_TypeDef CAN_WakeUp(void)
; genLabel
;	-----------------------------------------
;	 function CAN_WakeUp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_WakeUp:
;	../SPLSPL/src/stm8s_can_CAN_WakeUp.c: 38: CAN_WakeUp_TypeDef wakeupstatus = CAN_WakeUp_Failed;
; genAssign
	clrw	x
;	../SPLSPL/src/stm8s_can_CAN_WakeUp.c: 41: CAN->MCR &= (uint8_t)(~CAN_MCR_SLEEP);
; genPointerGet
	ld	a, 0x5420
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_WakeUp.c: 44: if ((CAN->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x02
; genCmpEQorNE
	cp	a, #0x02
	jrne	00113$
	jp	00102$
00113$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_WakeUp.c: 47: wakeupstatus = CAN_WakeUp_Ok;
; genAssign
	ld	a, #0x01
	ld	xl, a
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_WakeUp.c: 51: return (CAN_WakeUp_TypeDef)wakeupstatus;
; genReturn
	ld	a, xl
; genLabel
00103$:
;	../SPLSPL/src/stm8s_can_CAN_WakeUp.c: 52: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
