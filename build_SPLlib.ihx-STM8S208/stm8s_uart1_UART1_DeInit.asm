;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_DeInit
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
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 36: void UART1_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function UART1_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_DeInit:
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 40: (void)UART1->SR;
; genPointerGet
; Dummy read
	ld	a, 0x5230
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 41: (void)UART1->DR;
; genPointerGet
; Dummy read
	ld	a, 0x5231
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 43: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
; genPointerSet
	mov	0x5233+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 44: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
; genPointerSet
	mov	0x5232+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 46: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
; genPointerSet
	mov	0x5234+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 47: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
; genPointerSet
	mov	0x5235+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 48: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
; genPointerSet
	mov	0x5236+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 49: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
; genPointerSet
	mov	0x5237+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 50: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
; genPointerSet
	mov	0x5238+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 52: UART1->GTR = UART1_GTR_RESET_VALUE;
; genPointerSet
	mov	0x5239+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 53: UART1->PSCR = UART1_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x523a+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_uart1_UART1_DeInit.c: 54: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
