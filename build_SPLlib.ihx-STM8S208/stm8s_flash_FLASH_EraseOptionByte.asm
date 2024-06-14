;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_EraseOptionByte
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_WaitForLastOperation
	.globl _FLASH_EraseOptionByte
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
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 37: void FLASH_EraseOptionByte(uint16_t Address)
; genLabel
;	-----------------------------------------
;	 function FLASH_EraseOptionByte
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_FLASH_EraseOptionByte:
	pushw	x
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 43: FLASH->CR2 |= FLASH_CR2_OPT;
; genPointerGet
	ld	a, 0x505b
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x505b, a
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 44: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
; genPointerGet
	ld	a, 0x505c
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x505c, a
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 47: if(Address == 0x4800)
; genCast
; genAssign
	ldw	x, y
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 50: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
; genCast
; genAssign
	ldw	(0x01, sp), y
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 47: if(Address == 0x4800)
; genCmpEQorNE
	cpw	x, #0x4800
	jrne	00114$
	jp	00115$
00114$:
	jp	00102$
00115$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 50: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
; genPointerSet
	ldw	x, (0x01, sp)
	clr	(x)
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 55: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
; genPointerSet
	ldw	x, (0x01, sp)
	clr	(x)
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 56: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
; genPlus
	ldw	x, y
	incw	x
; genCast
; genAssign
; genPointerSet
	ld	a, #0xff
	ld	(x), a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 58: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
; genSend
	ld	a, #0xfd
; genCall
	call	_FLASH_WaitForLastOperation
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 61: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
; genPointerGet
	ld	a, 0x505b
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x505b, a
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 62: FLASH->NCR2 |= FLASH_NCR2_NOPT;
; genPointerGet
	ld	a, 0x505c
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x505c, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_flash_FLASH_EraseOptionByte.c: 63: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
