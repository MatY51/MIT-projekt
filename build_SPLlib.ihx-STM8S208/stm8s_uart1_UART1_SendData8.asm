;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_SendData8
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_SendData8
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
;	../SPLSPL/src/stm8s_uart1_UART1_SendData8.c: 36: void UART1_SendData8(uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function UART1_SendData8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SendData8:
; genReceive
;	../SPLSPL/src/stm8s_uart1_UART1_SendData8.c: 39: UART1->DR = Data;
; genPointerSet
	ld	0x5231, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_uart1_UART1_SendData8.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
