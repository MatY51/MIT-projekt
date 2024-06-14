;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_ReadByte
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _read_byte_address
	.globl _FLASH_ReadByte
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
;	../SPLSPL/src/stm8s_flash_FLASH_ReadByte.c: 39: uint8_t FLASH_ReadByte(uint32_t Address)
; genLabel
;	-----------------------------------------
;	 function FLASH_ReadByte
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_ReadByte:
;	../SPLSPL/src/stm8s_flash_FLASH_ReadByte.c: 49: return(read_byte_address((MemoryAddressCast) Address));
; genIPush
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
; genCall
	call	_read_byte_address
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_ReadByte.c: 51: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
