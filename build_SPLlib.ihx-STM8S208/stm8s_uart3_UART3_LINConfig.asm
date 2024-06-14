;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_LINConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_LINConfig
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
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 41: void UART3_LINConfig(UART3_LinMode_TypeDef UART3_Mode,
; genLabel
;	-----------------------------------------
;	 function UART3_LINConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART3_LINConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 52: UART3->CR6 |=  UART3_CR6_LSLV;
; genPointerGet
	ld	a, 0x5249
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 50: if (UART3_Mode != UART3_LIN_MODE_MASTER)
; genIfx
	tnz	(0x01, sp)
	jrne	00133$
	jp	00102$
00133$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 52: UART3->CR6 |=  UART3_CR6_LSLV;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5249, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 56: UART3->CR6 &= ((uint8_t)~UART3_CR6_LSLV);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5249, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 52: UART3->CR6 |=  UART3_CR6_LSLV;
; genPointerGet
	ld	a, 0x5249
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 59: if (UART3_Autosync != UART3_LIN_AUTOSYNC_DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00134$
	jp	00105$
00134$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 61: UART3->CR6 |=  UART3_CR6_LASE ;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5249, a
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 65: UART3->CR6 &= ((uint8_t)~ UART3_CR6_LASE );
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5249, a
; genLabel
00106$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 52: UART3->CR6 |=  UART3_CR6_LSLV;
; genPointerGet
	ld	a, 0x5249
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 68: if (UART3_DivUp != UART3_LIN_DIVUP_LBRR1)
; genIfx
	tnz	(0x05, sp)
	jrne	00135$
	jp	00108$
00135$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 70: UART3->CR6 |=  UART3_CR6_LDUM;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5249, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 74: UART3->CR6 &= ((uint8_t)~ UART3_CR6_LDUM);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5249, a
; genLabel
00110$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINConfig.c: 76: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
