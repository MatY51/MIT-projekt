;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_LINBreakDetectionConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_LINBreakDetectionConfig
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
;	../SPLSPL/src/stm8s_uart1_UART1_LINBreakDetectionConfig.c: 38: void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
; genLabel
;	-----------------------------------------
;	 function UART1_LINBreakDetectionConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART1_LINBreakDetectionConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart1_UART1_LINBreakDetectionConfig.c: 44: UART1->CR4 |= UART1_CR4_LBDL;
; genPointerGet
	ld	a, 0x5237
;	../SPLSPL/src/stm8s_uart1_UART1_LINBreakDetectionConfig.c: 42: if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_uart1_UART1_LINBreakDetectionConfig.c: 44: UART1->CR4 |= UART1_CR4_LBDL;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5237, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_LINBreakDetectionConfig.c: 48: UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5237, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_uart1_UART1_LINBreakDetectionConfig.c: 50: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
