;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_BiDirectionalLineConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_BiDirectionalLineConfig
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
;	../SPLSPL/src/stm8s_spi_SPI_BiDirectionalLineConfig.c: 36: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
; genLabel
;	-----------------------------------------
;	 function SPI_BiDirectionalLineConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SPI_BiDirectionalLineConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_spi_SPI_BiDirectionalLineConfig.c: 43: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
; genPointerGet
	ld	a, 0x5201
;	../SPLSPL/src/stm8s_spi_SPI_BiDirectionalLineConfig.c: 41: if (SPI_Direction != SPI_DIRECTION_RX)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_spi_SPI_BiDirectionalLineConfig.c: 43: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5201, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_spi_SPI_BiDirectionalLineConfig.c: 47: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5201, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_spi_SPI_BiDirectionalLineConfig.c: 49: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
