;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_clk_CLK_AdjustHSICalibrationValue
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_AdjustHSICalibrationValue
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
;	../SPLSPL/src/stm8s_clk_CLK_AdjustHSICalibrationValue.c: 38: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
; genLabel
;	-----------------------------------------
;	 function CLK_AdjustHSICalibrationValue
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_AdjustHSICalibrationValue:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_clk_CLK_AdjustHSICalibrationValue.c: 44: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
; genPointerGet
	ld	a, 0x50cc
; genAnd
	and	a, #0xf8
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50cc, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_clk_CLK_AdjustHSICalibrationValue.c: 45: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
