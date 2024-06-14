;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_GetCRC
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_GetCRC
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
;	../SPLSPL/src/stm8s_spi_SPI_GetCRC.c: 36: uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
; genLabel
;	-----------------------------------------
;	 function SPI_GetCRC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_GetCRC:
; genReceive
;	../SPLSPL/src/stm8s_spi_SPI_GetCRC.c: 43: if (SPI_CRC != SPI_CRC_RX)
; genIfx
	tnz	a
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_spi_SPI_GetCRC.c: 45: crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
; genPointerGet
	ld	a, 0x5207
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_spi_SPI_GetCRC.c: 49: crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
; genPointerGet
	ld	a, 0x5206
; genLabel
00103$:
;	../SPLSPL/src/stm8s_spi_SPI_GetCRC.c: 53: return crcreg;
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_spi_SPI_GetCRC.c: 54: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
