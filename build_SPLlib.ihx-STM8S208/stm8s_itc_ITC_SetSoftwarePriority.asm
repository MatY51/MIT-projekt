;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_itc_ITC_SetSoftwarePriority
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_SetSoftwarePriority
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
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 44: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
; genLabel
;	-----------------------------------------
;	 function ITC_SetSoftwarePriority
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ITC_SetSoftwarePriority:
	pushw	x
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 58: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, #0x03
; genCast
; genAssign
; genLeftShiftLiteral
	sll	a
	ld	xh, a
; genLeftShift
	ld	a, #0x03
	push	a
	ld	a, xh
	tnz	a
	jreq	00138$
00137$:
	sll	(1, sp)
	dec	a
	jrne	00137$
00138$:
	pop	a
; genCpl
	cpl	a
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 61: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
; genLeftShift
	ld	a, (0x05, sp)
	push	a
	ld	a, xh
	tnz	a
	jreq	00140$
00139$:
	sll	(1, sp)
	dec	a
	jrne	00139$
00140$:
	pop	a
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 63: switch (IrqNum)
; genCmp
; genCmpTnz
	ld	a, xl
	cp	a, #0x18
	jrule	00141$
	jp	00128$
00141$:
; skipping generated iCode
; genJumpTab
	clr	a
	ld	xh, a
	sllw	x
	ldw	x, (#00142$, x)
	jp	(x)
00142$:
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00112$
	.dw	#00112$
	.dw	#00112$
	.dw	#00112$
	.dw	#00116$
	.dw	#00116$
	.dw	#00116$
	.dw	#00116$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00124$
	.dw	#00124$
	.dw	#00124$
	.dw	#00124$
	.dw	#00125$
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 68: case ITC_IRQ_PORTA:
; genLabel
00104$:
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 69: ITC->ISPR1 &= Mask;
; genPointerGet
	ld	a, 0x7f70
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f70, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 70: ITC->ISPR1 |= NewPriority;
; genPointerGet
	ld	a, 0x7f70
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f70, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 71: break;
; genGoto
	jp	00128$
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 76: case ITC_IRQ_PORTE:
; genLabel
00108$:
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 77: ITC->ISPR2 &= Mask;
; genPointerGet
	ld	a, 0x7f71
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f71, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 78: ITC->ISPR2 |= NewPriority;
; genPointerGet
	ld	a, 0x7f71
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f71, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 79: break;
; genGoto
	jp	00128$
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 89: case ITC_IRQ_TIM1_OVF:
; genLabel
00112$:
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 90: ITC->ISPR3 &= Mask;
; genPointerGet
	ld	a, 0x7f72
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f72, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 91: ITC->ISPR3 |= NewPriority;
; genPointerGet
	ld	a, 0x7f72
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f72, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 92: break;
; genGoto
	jp	00128$
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 102: case ITC_IRQ_TIM3_OVF:
; genLabel
00116$:
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 103: ITC->ISPR4 &= Mask;
; genPointerGet
	ld	a, 0x7f73
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f73, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 104: ITC->ISPR4 |= NewPriority;
; genPointerGet
	ld	a, 0x7f73
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f73, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 105: break;
; genGoto
	jp	00128$
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 117: case ITC_IRQ_I2C:
; genLabel
00120$:
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 118: ITC->ISPR5 &= Mask;
; genPointerGet
	ld	a, 0x7f74
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f74, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 119: ITC->ISPR5 |= NewPriority;
; genPointerGet
	ld	a, 0x7f74
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f74, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 120: break;
; genGoto
	jp	00128$
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 142: case ITC_IRQ_TIM4_OVF:
; genLabel
00124$:
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 144: ITC->ISPR6 &= Mask;
; genPointerGet
	ld	a, 0x7f75
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f75, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 145: ITC->ISPR6 |= NewPriority;
; genPointerGet
	ld	a, 0x7f75
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f75, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 146: break;
; genGoto
	jp	00128$
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 148: case ITC_IRQ_EEPROM_EEC:
; genLabel
00125$:
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 149: ITC->ISPR7 &= Mask;
; genPointerGet
	ld	a, 0x7f76
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f76, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 150: ITC->ISPR7 |= NewPriority;
; genPointerGet
	ld	a, 0x7f76
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f76, a
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 155: }
; genLabel
00128$:
;	../SPLSPL/src/stm8s_itc_ITC_SetSoftwarePriority.c: 156: }
; genEndFunction
	popw	x
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
