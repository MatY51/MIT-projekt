;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_write_byte_address
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _write_byte_address
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
;	../SPLSPL/src/stm8s_flash_write_byte_address.c: 39: void write_byte_address(uint32_t Address, uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function write_byte_address
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_write_byte_address:
;	../SPLSPL/src/stm8s_flash_write_byte_address.c: 45: asm_addr = Address;
; genAssign
	ldw	x, (0x05, sp)
	ldw	y, (0x03, sp)
; genAssign
	ldw	_asm_addr+2, x
	ldw	_asm_addr+0, y
;	../SPLSPL/src/stm8s_flash_write_byte_address.c: 46: asm_val  = Data;
; genAssign
	ld	a, (0x07, sp)
	ld	_asm_val+0, a
;	../SPLSPL/src/stm8s_flash_write_byte_address.c: 52: __endasm;
;	genInline
	ld	a,_asm_val
	ldf	[_asm_addr+1].e,a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_write_byte_address.c: 55: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #7
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
