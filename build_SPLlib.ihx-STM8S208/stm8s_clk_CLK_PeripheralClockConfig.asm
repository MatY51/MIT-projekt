;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_PeripheralClockConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_PeripheralClockConfig
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
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 39: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_CLK_PeripheralClockConfig:
	pushw	x
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 50: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genAnd
	ld	a, xl
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00134$
00133$:
	sll	(0x01, sp)
	dec	a
	jrne	00133$
00134$:
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 55: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genCpl
	ld	a, (0x01, sp)
	cpl	a
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 45: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
; genAnd
	ld	a, xl
	bcp	a, #0x10
	jreq	00135$
	jp	00108$
00135$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 50: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50c7
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 47: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00136$
	jp	00102$
00136$:
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 50: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c7, a
; genGoto
	jp	00110$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 55: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x50c7, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 63: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50ca
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 60: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00137$
	jp	00105$
00137$:
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 63: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50ca, a
; genGoto
	jp	00110$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 68: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x50ca, a
; genLabel
00110$:
;	../SPLSPL/src/stm8s_clk_CLK_PeripheralClockConfig.c: 71: }
; genEndFunction
	popw	x
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
