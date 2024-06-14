;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_SlowActiveHaltWakeUpCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_SlowActiveHaltWakeUpCmd
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
;	../SPLSPL/src/stm8s_clk_CLK_SlowActiveHaltWakeUpCmd.c: 39: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_SlowActiveHaltWakeUpCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_SlowActiveHaltWakeUpCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_SlowActiveHaltWakeUpCmd.c: 47: CLK->ICKR |= CLK_ICKR_SWUAH;
; genPointerGet
	ld	a, 0x50c0
;	../SPLSPL/src/stm8s_clk_CLK_SlowActiveHaltWakeUpCmd.c: 44: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_clk_CLK_SlowActiveHaltWakeUpCmd.c: 47: CLK->ICKR |= CLK_ICKR_SWUAH;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_SlowActiveHaltWakeUpCmd.c: 52: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x50c0, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_clk_CLK_SlowActiveHaltWakeUpCmd.c: 54: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
