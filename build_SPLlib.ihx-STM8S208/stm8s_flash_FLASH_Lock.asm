;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_Lock
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_Lock
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
;	../SPLSPL/src/stm8s_flash_FLASH_Lock.c: 37: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
; genLabel
;	-----------------------------------------
;	 function FLASH_Lock
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_Lock:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_flash_FLASH_Lock.c: 43: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
; genPointerGet
	ld	a, 0x505f
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x505f, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_Lock.c: 44: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
