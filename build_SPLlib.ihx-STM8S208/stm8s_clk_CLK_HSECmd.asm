;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_HSECmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_HSECmd
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
;	../SPLSPL/src/stm8s_clk_CLK_HSECmd.c: 36: void CLK_HSECmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_HSECmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_HSECmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_HSECmd.c: 44: CLK->ECKR |= CLK_ECKR_HSEEN;
; genPointerGet
	ld	a, 0x50c1
;	../SPLSPL/src/stm8s_clk_CLK_HSECmd.c: 41: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_clk_CLK_HSECmd.c: 44: CLK->ECKR |= CLK_ECKR_HSEEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c1, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_HSECmd.c: 49: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c1, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_clk_CLK_HSECmd.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
