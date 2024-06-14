;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_Init
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
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 50: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
; genLabel
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SPI_Init:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 63: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
; genOr
	or	a, (0x04, sp)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 64: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
; genCast
; genAssign
	ld	a, (0x07, sp)
; genOr
	or	a, (0x06, sp)
; genCast
; genAssign
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5200, a
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 67: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
; genOr
	ld	a, (0x08, sp)
	or	a, (0x09, sp)
; genPointerSet
	ld	0x5201, a
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 71: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
; genPointerGet
	ld	a, 0x5201
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 69: if (Mode == SPI_MODE_MASTER)
; genCmpEQorNE
	push	a
	ld	a, (0x06, sp)
	cp	a, #0x04
	pop	a
	jrne	00114$
	jp	00115$
00114$:
	jp	00102$
00115$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 71: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5201, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 75: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5201, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 79: SPI->CR1 |= (uint8_t)(Mode);
; genPointerGet
	ld	a, 0x5200
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x5200, a
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 82: SPI->CRCPR = (uint8_t)CRCPolynomial;
; genPointerSet
	ldw	x, #0x5205
	ld	a, (0x0a, sp)
	ld	(x), a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_spi_SPI_Init.c: 83: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #10
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
