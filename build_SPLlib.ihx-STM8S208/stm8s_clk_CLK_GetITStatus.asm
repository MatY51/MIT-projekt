;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetITStatus
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
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 37: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
; genLabel
;	-----------------------------------------
;	 function CLK_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_GetITStatus:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 44: if (CLK_IT == CLK_IT_SWIF)
; genCmpEQorNE
	ld	a, (0x01, sp)
	cp	a, #0x1c
	jrne	00134$
	jp	00135$
00134$:
	jp	00108$
00135$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 47: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
; genPointerGet
	ld	a, 0x50c5
; genAnd
	and	a, (0x01, sp)
; genCmpEQorNE
	cp	a, #0x0c
	jrne	00137$
	jp	00138$
00137$:
	jp	00102$
00138$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 49: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00109$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 53: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00109$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 59: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
; genPointerGet
	ld	a, 0x50c8
; genAnd
	and	a, (0x01, sp)
; genCmpEQorNE
	cp	a, #0x0c
	jrne	00140$
	jp	00141$
00140$:
	jp	00105$
00141$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 61: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00109$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 65: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00109$:
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 70: return bitstatus;
; genReturn
; genLabel
00110$:
;	../SPLSPL/src/stm8s_clk_CLK_GetITStatus.c: 71: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
