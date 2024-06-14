;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_SYSCLKConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_SYSCLKConfig
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
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKConfig.c: 36: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
; genLabel
;	-----------------------------------------
;	 function CLK_SYSCLKConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_CLK_SYSCLKConfig:
	push	a
; genReceive
	ld	xh, a
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKConfig.c: 43: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
; genPointerGet
	ld	a, 0x50c6
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKConfig.c: 41: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
; genAnd
	tnzw	x
	jrpl	00113$
	jp	00102$
00113$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKConfig.c: 43: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
; genAnd
	and	a, #0xe7
; genPointerSet
	ld	0x50c6, a
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKConfig.c: 44: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
; genPointerGet
	ld	a, 0x50c6
	ld	(0x01, sp), a
; genAnd
	ld	a, xh
	and	a, #0x18
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c6, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKConfig.c: 48: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x50c6, a
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKConfig.c: 49: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
; genPointerGet
	ld	a, 0x50c6
	ld	(0x01, sp), a
; genAnd
	ld	a, xh
	and	a, #0x07
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c6, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_clk_CLK_SYSCLKConfig.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
