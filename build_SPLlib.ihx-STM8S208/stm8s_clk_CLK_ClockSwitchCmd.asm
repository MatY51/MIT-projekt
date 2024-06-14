;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_ClockSwitchCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_ClockSwitchCmd
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
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchCmd.c: 38: void CLK_ClockSwitchCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_ClockSwitchCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_ClockSwitchCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchCmd.c: 46: CLK->SWCR |= CLK_SWCR_SWEN;
; genPointerGet
	ld	a, 0x50c5
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchCmd.c: 43: if (NewState != DISABLE )
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchCmd.c: 46: CLK->SWCR |= CLK_SWCR_SWEN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50c5, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchCmd.c: 51: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x50c5, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchCmd.c: 53: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
