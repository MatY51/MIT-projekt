;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetFlagStatus
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
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 38: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
; genLabel
;	-----------------------------------------
;	 function CLK_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_CLK_GetFlagStatus:
	sub	sp, #3
; genReceive
	ldw	(0x02, sp), x
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 48: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
; genCast
; genAssign
	ldw	x, (0x02, sp)
; genAnd
	clr	a
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 51: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
; genCast
; genAssign
	ld	xl, a
; genCmpEQorNE
	cpw	x, #0x0100
	jrne	00154$
	jp	00155$
00154$:
	jp	00111$
00155$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 53: tmpreg = CLK->ICKR;
; genPointerGet
	ld	a, 0x50c0
; genGoto
	jp	00112$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 55: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
; genCmpEQorNE
	cpw	x, #0x0200
	jrne	00157$
	jp	00158$
00157$:
	jp	00108$
00158$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 57: tmpreg = CLK->ECKR;
; genPointerGet
	ld	a, 0x50c1
; genGoto
	jp	00112$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 59: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
; genCmpEQorNE
	cpw	x, #0x0300
	jrne	00160$
	jp	00161$
00160$:
	jp	00105$
00161$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 61: tmpreg = CLK->SWCR;
; genPointerGet
	ld	a, 0x50c5
; genGoto
	jp	00112$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 63: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
; genCmpEQorNE
	cpw	x, #0x0400
	jrne	00163$
	jp	00164$
00163$:
	jp	00102$
00164$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 65: tmpreg = CLK->CSSR;
; genPointerGet
	ld	a, 0x50c8
; genGoto
	jp	00112$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 69: tmpreg = CLK->CCOR;
; genPointerGet
	ld	a, 0x50c9
; genLabel
00112$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 72: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
; genCast
; genAssign
	push	a
	ld	a, (0x04, sp)
	ld	(0x02, sp), a
	pop	a
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00165$
	jp	00114$
00165$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 74: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00115$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 78: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00115$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 82: return((FlagStatus)bitstatus);
; genReturn
; genLabel
00116$:
;	../SPLSPL/src/stm8s_clk_CLK_GetFlagStatus.c: 83: }
; genEndFunction
	addw	sp, #3
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
