;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_ProgramByte
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _write_byte_address
	.globl _FLASH_ProgramByte
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
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramByte.c: 40: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function FLASH_ProgramByte
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_ProgramByte:
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramByte.c: 50: write_byte_address((MemoryAddressCast) Address, Data);
; genIPush
	ld	a, (0x07, sp)
	push	a
; genIPush
	ldw	x, (0x06, sp)
	pushw	x
	ldw	x, (0x06, sp)
	pushw	x
; genCall
	call	_write_byte_address
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramByte.c: 52: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #7
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
