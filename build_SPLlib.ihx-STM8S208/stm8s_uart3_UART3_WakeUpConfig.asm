;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_WakeUpConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_WakeUpConfig
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
;	../SPLSPL/src/stm8s_uart3_UART3_WakeUpConfig.c: 37: void UART3_WakeUpConfig(UART3_WakeUp_TypeDef UART3_WakeUp)
; genLabel
;	-----------------------------------------
;	 function UART3_WakeUpConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART3_WakeUpConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart3_UART3_WakeUpConfig.c: 42: UART3->CR1 &= ((uint8_t)~UART3_CR1_WAKE);
; genPointerGet
	ld	a, 0x5244
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5244, a
;	../SPLSPL/src/stm8s_uart3_UART3_WakeUpConfig.c: 43: UART3->CR1 |= (uint8_t)UART3_WakeUp;
; genPointerGet
	ld	a, 0x5244
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5244, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_uart3_UART3_WakeUpConfig.c: 44: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
