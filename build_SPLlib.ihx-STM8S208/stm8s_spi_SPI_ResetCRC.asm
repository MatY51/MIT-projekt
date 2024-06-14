;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_ResetCRC
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_CalculateCRCCmd
	.globl _SPI_Cmd
	.globl _SPI_ResetCRC
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
;	../SPLSPL/src/stm8s_spi_SPI_ResetCRC.c: 36: void SPI_ResetCRC(void)
; genLabel
;	-----------------------------------------
;	 function SPI_ResetCRC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_ResetCRC:
;	../SPLSPL/src/stm8s_spi_SPI_ResetCRC.c: 40: SPI_CalculateCRCCmd(ENABLE);
; genSend
	ld	a, #0x01
; genCall
	call	_SPI_CalculateCRCCmd
;	../SPLSPL/src/stm8s_spi_SPI_ResetCRC.c: 43: SPI_Cmd(ENABLE);
; genSend
	ld	a, #0x01
; genCall
	jp	_SPI_Cmd
; genLabel
00101$:
;	../SPLSPL/src/stm8s_spi_SPI_ResetCRC.c: 44: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
