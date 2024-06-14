;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_awu_AWU_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_Init
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
;	../SPLSPL/src/stm8s_awu_AWU_Init.c: 40: void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
; genLabel
;	-----------------------------------------
;	 function AWU_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_AWU_Init:
	push	a
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_awu_AWU_Init.c: 46: AWU->CSR |= AWU_CSR_AWUEN;
; genPointerGet
	ld	a, 0x50f0
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x50f0, a
;	../SPLSPL/src/stm8s_awu_AWU_Init.c: 49: AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
; genPointerGet
	ld	a, 0x50f2
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x50f2, a
;	../SPLSPL/src/stm8s_awu_AWU_Init.c: 50: AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
; genPointerGet
	ld	a, 0x50f2
	ld	(0x01, sp), a
; skipping iCode since result will be rematerialized
; genPlus
	clrw	y
	exg	a, yl
	ld	a, xl
	exg	a, yl
	addw	y, #(_TBR_Array+0)
; genPointerGet
	ld	a, (y)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50f2, a
;	../SPLSPL/src/stm8s_awu_AWU_Init.c: 53: AWU->APR &= (uint8_t)(~AWU_APR_APR);
; genPointerGet
	ld	a, 0x50f1
; genAnd
	and	a, #0xc0
; genPointerSet
	ld	0x50f1, a
;	../SPLSPL/src/stm8s_awu_AWU_Init.c: 54: AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
; genPointerGet
	ld	a, 0x50f1
	ld	(0x01, sp), a
; skipping iCode since result will be rematerialized
; genPlus
	clr	a
	ld	xh, a
	addw	x, #(_APR_Array+0)
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50f1, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_awu_AWU_Init.c: 55: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
