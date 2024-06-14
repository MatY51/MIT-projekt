;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_ProgramWord
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _write_byte_address
	.globl _FLASH_ProgramWord
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
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramWord.c: 40: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
; genLabel
;	-----------------------------------------
;	 function FLASH_ProgramWord
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_ProgramWord:
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramWord.c: 46: FLASH->CR2 |= FLASH_CR2_WPRG;
; genPointerGet
	ld	a, 0x505b
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x505b, a
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramWord.c: 47: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
; genPointerGet
	ld	a, 0x505c
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x505c, a
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramWord.c: 60: write_byte_address((MemoryAddressCast) (Address    ), *((uint8_t*)(&Data)));
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, sp
	addw	x, #7
; genPointerGet
	ld	a, (x)
; genIPush
	push	a
; genIPush
	ldw	x, (0x06, sp)
	pushw	x
	ldw	x, (0x06, sp)
	pushw	x
; genCall
	call	_write_byte_address
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramWord.c: 61: write_byte_address((MemoryAddressCast) (Address + 1), *((uint8_t*)(&Data)+1));
; genAssign
	ldw	x, sp
	addw	x, #7
; genCast
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genPlus
	ldw	x, (0x05, sp)
	addw	x, #0x0001
	ldw	y, (0x03, sp)
	jrnc	00103$
	incw	y
00103$:
; genIPush
	push	a
; genIPush
	pushw	x
	pushw	y
; genCall
	call	_write_byte_address
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramWord.c: 62: write_byte_address((MemoryAddressCast) (Address + 2), *((uint8_t*)(&Data)+2));
; genAssign
	ldw	x, sp
	addw	x, #7
; genCast
; genAssign
; genPointerGet
	ld	a, (0x2, x)
; genPlus
	ldw	x, (0x05, sp)
	addw	x, #0x0002
	ldw	y, (0x03, sp)
	jrnc	00104$
	incw	y
00104$:
; genIPush
	push	a
; genIPush
	pushw	x
	pushw	y
; genCall
	call	_write_byte_address
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramWord.c: 63: write_byte_address((MemoryAddressCast) (Address + 3), *((uint8_t*)(&Data)+3));
; genAssign
	ldw	x, sp
	addw	x, #7
; genCast
; genAssign
; genPointerGet
	ld	a, (0x3, x)
; genPlus
	ldw	x, (0x05, sp)
	addw	x, #0x0003
	ldw	y, (0x03, sp)
	jrnc	00105$
	incw	y
00105$:
; genIPush
	push	a
; genIPush
	pushw	x
	pushw	y
; genCall
	call	_write_byte_address
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_ProgramWord.c: 65: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #10
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
