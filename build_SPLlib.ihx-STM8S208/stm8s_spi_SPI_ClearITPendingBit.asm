;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_ClearITPendingBit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_ClearITPendingBit
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
;	../SPLSPL/src/stm8s_spi_SPI_ClearITPendingBit.c: 45: void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
; genLabel
;	-----------------------------------------
;	 function SPI_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_ClearITPendingBit:
; genReceive
;	../SPLSPL/src/stm8s_spi_SPI_ClearITPendingBit.c: 53: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
; genAnd
	and	a, #0xf0
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	ld	xl, a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00104$
00103$:
	sll	(1, sp)
	dec	a
	jrne	00103$
00104$:
	pop	a
;	../SPLSPL/src/stm8s_spi_SPI_ClearITPendingBit.c: 55: SPI->SR = (uint8_t)(~itpos);
; genCpl
	cpl	a
; genPointerSet
	ld	0x5203, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_spi_SPI_ClearITPendingBit.c: 57: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
