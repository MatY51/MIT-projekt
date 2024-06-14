;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_itc_ITC_GetSoftwarePriority
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetSoftwarePriority
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
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 36: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
; genLabel
;	-----------------------------------------
;	 function ITC_GetSoftwarePriority
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ITC_GetSoftwarePriority:
	pushw	x
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 38: uint8_t Value = 0;
; genAssign
	clr	a
	ld	xh, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 45: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, #0x03
; genCast
; genAssign
; genLeftShiftLiteral
	sll	a
	ld	(0x01, sp), a
; genLeftShift
	ld	a, #0x03
	ld	(0x02, sp), a
	ld	a, (0x01, sp)
	jreq	00138$
00137$:
	sll	(0x02, sp)
	dec	a
	jrne	00137$
00138$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 47: switch (IrqNum)
; genCmp
; genCmpTnz
	ld	a, xl
	cp	a, #0x18
	jrule	00139$
	jp	00127$
00139$:
; skipping generated iCode
; genJumpTab
	clr	a
	ld	xh, a
	sllw	x
	ldw	x, (#00140$, x)
	jp	(x)
00140$:
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
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 52: case ITC_IRQ_PORTA:
; genLabel
00104$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 53: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f70
; genAnd
	and	a, (0x02, sp)
	ld	xh, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 54: break;
; genGoto
	jp	00127$
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 59: case ITC_IRQ_PORTE:
; genLabel
00108$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 60: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f71
; genAnd
	and	a, (0x02, sp)
	ld	xh, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 61: break;
; genGoto
	jp	00127$
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 71: case ITC_IRQ_TIM1_OVF:
; genLabel
00112$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 72: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f72
; genAnd
	and	a, (0x02, sp)
	ld	xh, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 73: break;
; genGoto
	jp	00127$
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 83: case ITC_IRQ_TIM3_OVF:
; genLabel
00116$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 84: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f73
; genAnd
	and	a, (0x02, sp)
	ld	xh, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 85: break;
; genGoto
	jp	00127$
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 97: case ITC_IRQ_I2C:
; genLabel
00120$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 98: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f74
; genAnd
	and	a, (0x02, sp)
	ld	xh, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 99: break;
; genGoto
	jp	00127$
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 118: case ITC_IRQ_TIM4_OVF:
; genLabel
00124$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 120: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f75
; genAnd
	and	a, (0x02, sp)
	ld	xh, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 121: break;
; genGoto
	jp	00127$
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 123: case ITC_IRQ_EEPROM_EEC:
; genLabel
00125$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 124: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f76
; genAnd
	and	a, (0x02, sp)
	ld	xh, a
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 129: }
; genLabel
00127$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 131: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
; genRightShift
	ld	a, (0x01, sp)
	jreq	00142$
00141$:
	rlwa	x
	srl	a
	rrwa	x
	dec	a
	jrne	00141$
00142$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 133: return((ITC_PriorityLevel_TypeDef)Value);
; genReturn
	ld	a, xh
; genLabel
00128$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftwarePriority.c: 134: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
