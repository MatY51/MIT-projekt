;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_FastHaltWakeUpCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_FastHaltWakeUpCmd
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
;	../SPLSPL/src/stm8s_clk_CLK_FastHaltWakeUpCmd.c: 40: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_FastHaltWakeUpCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_FastHaltWakeUpCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_FastHaltWakeUpCmd.c: 48: CLK->ICKR |= CLK_ICKR_FHWU;
; genPointerGet
	ld	a, 0x50c0
;	../SPLSPL/src/stm8s_clk_CLK_FastHaltWakeUpCmd.c: 45: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_clk_CLK_FastHaltWakeUpCmd.c: 48: CLK->ICKR |= CLK_ICKR_FHWU;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_FastHaltWakeUpCmd.c: 53: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c0, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_clk_CLK_FastHaltWakeUpCmd.c: 55: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
