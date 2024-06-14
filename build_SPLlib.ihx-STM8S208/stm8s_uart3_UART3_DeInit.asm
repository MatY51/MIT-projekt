;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_DeInit
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
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 37: void UART3_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function UART3_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART3_DeInit:
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 41: (void) UART3->SR;
; genPointerGet
; Dummy read
	ld	a, 0x5240
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 42: (void) UART3->DR;
; genPointerGet
; Dummy read
	ld	a, 0x5241
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 44: UART3->BRR2 = UART3_BRR2_RESET_VALUE; /*Set UART3_BRR2 to reset value 0x00 */
; genPointerSet
	mov	0x5243+0, #0x00
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 45: UART3->BRR1 = UART3_BRR1_RESET_VALUE; /*Set UART3_BRR1 to reset value 0x00 */
; genPointerSet
	mov	0x5242+0, #0x00
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 47: UART3->CR1 = UART3_CR1_RESET_VALUE;  /*Set UART3_CR1 to reset value 0x00  */
; genPointerSet
	mov	0x5244+0, #0x00
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 48: UART3->CR2 = UART3_CR2_RESET_VALUE;  /*Set UART3_CR2 to reset value 0x00  */
; genPointerSet
	mov	0x5245+0, #0x00
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 49: UART3->CR3 = UART3_CR3_RESET_VALUE;  /*Set UART3_CR3 to reset value 0x00  */
; genPointerSet
	mov	0x5246+0, #0x00
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 50: UART3->CR4 = UART3_CR4_RESET_VALUE;  /*Set UART3_CR4 to reset value 0x00  */
; genPointerSet
	mov	0x5247+0, #0x00
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 51: UART3->CR6 = UART3_CR6_RESET_VALUE;  /*Set UART3_CR6 to reset value 0x00  */
; genPointerSet
	mov	0x5249+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_uart3_UART3_DeInit.c: 52: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
