;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_SetPrescaler
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_SetPrescaler
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
;	../SPLSPL/src/stm8s_uart1_UART1_SetPrescaler.c: 53: void UART1_SetPrescaler(uint8_t UART1_Prescaler)
; genLabel
;	-----------------------------------------
;	 function UART1_SetPrescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SetPrescaler:
; genReceive
;	../SPLSPL/src/stm8s_uart1_UART1_SetPrescaler.c: 56: UART1->PSCR = UART1_Prescaler;
; genPointerSet
	ld	0x523a, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_uart1_UART1_SetPrescaler.c: 57: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
