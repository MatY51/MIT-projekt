;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_TransmitCRC
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_TransmitCRC
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
;	../SPLSPL/src/stm8s_spi_SPI_TransmitCRC.c: 36: void SPI_TransmitCRC(void)
; genLabel
;	-----------------------------------------
;	 function SPI_TransmitCRC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_TransmitCRC:
;	../SPLSPL/src/stm8s_spi_SPI_TransmitCRC.c: 38: SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
; genPointerGet
	ld	a, 0x5201
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5201, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_spi_SPI_TransmitCRC.c: 39: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
