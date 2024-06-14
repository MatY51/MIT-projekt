;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_ClockSwitchConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_ClockSwitchConfig
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
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 43: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
; genLabel
;	-----------------------------------------
;	 function CLK_ClockSwitchConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_CLK_ClockSwitchConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 56: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
; genPointerGet
	ld	a, 0x50c3
	ld	yl, a
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 62: CLK->SWCR |= CLK_SWCR_SWEN;
; genPointerGet
	ld	a, 0x50c5
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 59: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
; genIfx
	tnz	(0x01, sp)
	jrne	00267$
	jp	00122$
00267$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 62: CLK->SWCR |= CLK_SWCR_SWEN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50c5, a
; genPointerGet
	ld	a, 0x50c5
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 65: if (ITState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00268$
	jp	00102$
00268$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 67: CLK->SWCR |= CLK_SWCR_SWIEN;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c5, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 71: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c5, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 75: CLK->SWR = (uint8_t)CLK_NewClock;
; genPointerSet
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 78: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
; genAssign
	clrw	x
	decw	x
; genLabel
00105$:
; genPointerGet
	ld	a, 0x50c5
; genAnd
	srl	a
	jrc	00269$
	jp	00157$
00269$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00270$
	jp	00157$
00270$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 80: DownCounter--;
; genMinus
	decw	x
; genGoto
	jp	00105$
; genLabel
00157$:
; genAssign
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 83: if(DownCounter != 0)
; genIfx
	tnzw	x
	jrne	00271$
	jp	00109$
00271$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 85: Swif = SUCCESS;
; genAssign
	ld	a, #0x01
	ld	xl, a
; genGoto
	jp	00123$
; genLabel
00109$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 89: Swif = ERROR;
; genAssign
	clrw	x
; genGoto
	jp	00123$
; genLabel
00122$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 95: if (ITState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00272$
	jp	00112$
00272$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 97: CLK->SWCR |= CLK_SWCR_SWIEN;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c5, a
; genGoto
	jp	00113$
; genLabel
00112$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 101: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c5, a
; genLabel
00113$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 105: CLK->SWR = (uint8_t)CLK_NewClock;
; genPointerSet
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 108: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
; genAssign
	clrw	x
	decw	x
; genLabel
00115$:
; genPointerGet
	ld	a, 0x50c5
; genAnd
	bcp	a, #0x08
	jrne	00273$
	jp	00158$
00273$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00274$
	jp	00158$
00274$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 110: DownCounter--;
; genMinus
	decw	x
; genGoto
	jp	00115$
; genLabel
00158$:
; genAssign
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 113: if(DownCounter != 0)
; genIfx
	tnzw	x
	jrne	00275$
	jp	00119$
00275$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 116: CLK->SWCR |= CLK_SWCR_SWEN;
; genPointerGet
	ld	a, 0x50c5
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50c5, a
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 117: Swif = SUCCESS;
; genAssign
	ld	a, #0x01
	ld	xl, a
; genGoto
	jp	00123$
; genLabel
00119$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 121: Swif = ERROR;
; genAssign
	clrw	x
; genLabel
00123$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 124: if(Swif != ERROR)
; genIfx
	ld	a, xl
	tnz	a
	jrne	00276$
	jp	00136$
00276$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 127: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
; genIfx
	tnz	(0x06, sp)
	jreq	00277$
	jp	00132$
00277$:
; genCmpEQorNE
	ld	a, yl
	cp	a, #0xe1
	jrne	00279$
	jp	00280$
00279$:
	jp	00132$
00280$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 129: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
; genPointerGet
	ld	a, 0x50c0
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00136$
; genLabel
00132$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 131: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
; genIfx
	tnz	(0x06, sp)
	jreq	00281$
	jp	00128$
00281$:
; genCmpEQorNE
	ld	a, yl
	cp	a, #0xd2
	jrne	00283$
	jp	00284$
00283$:
	jp	00128$
00284$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 133: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
; genPointerGet
	ld	a, 0x50c0
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00136$
; genLabel
00128$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 135: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
; genIfx
	tnz	(0x06, sp)
	jreq	00285$
	jp	00136$
00285$:
; genCmpEQorNE
	ld	a, yl
	cp	a, #0xb4
	jrne	00287$
	jp	00288$
00287$:
	jp	00136$
00288$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 137: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
; genPointerGet
	ld	a, 0x50c1
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c1, a
; genLabel
00136$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 140: return(Swif);
; genReturn
	ld	a, xl
; genLabel
00137$:
;	../SPLSPL/src/stm8s_clk_CLK_ClockSwitchConfig.c: 141: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
