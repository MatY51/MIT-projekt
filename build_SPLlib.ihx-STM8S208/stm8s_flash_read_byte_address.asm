;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_read_byte_address
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _read_byte_address
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
;	../SPLSPL/src/stm8s_flash_read_byte_address.c: 39: uint8_t read_byte_address(uint32_t Address)
; genLabel
;	-----------------------------------------
;	 function read_byte_address
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_read_byte_address:
;	../SPLSPL/src/stm8s_flash_read_byte_address.c: 45: asm_addr = Address;
; genAssign
	ldw	x, (0x05, sp)
	ldw	y, (0x03, sp)
; genAssign
	ldw	_asm_addr+2, x
	ldw	_asm_addr+0, y
;	../SPLSPL/src/stm8s_flash_read_byte_address.c: 51: __endasm;
;	genInline
	ldf	a,[_asm_addr+1].e
	ld	_asm_val,a
;	../SPLSPL/src/stm8s_flash_read_byte_address.c: 54: return(asm_val);
; genReturn
	ld	a, _asm_val+0
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_read_byte_address.c: 57: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
