;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_ReceiverWakeUpCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_ReceiverWakeUpCmd
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
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiverWakeUpCmd.c: 37: void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_ReceiverWakeUpCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART1_ReceiverWakeUpCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiverWakeUpCmd.c: 44: UART1->CR2 |= UART1_CR2_RWU;
; genPointerGet
	ld	a, 0x5235
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiverWakeUpCmd.c: 41: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiverWakeUpCmd.c: 44: UART1->CR2 |= UART1_CR2_RWU;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5235, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiverWakeUpCmd.c: 49: UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5235, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiverWakeUpCmd.c: 51: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
