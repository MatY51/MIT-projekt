;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_Unlock
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_Unlock
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
;	../SPLSPL/src/stm8s_flash_FLASH_Unlock.c: 37: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
; genLabel
;	-----------------------------------------
;	 function FLASH_Unlock
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_Unlock:
; genReceive
;	../SPLSPL/src/stm8s_flash_FLASH_Unlock.c: 43: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
; genCmpEQorNE
	cp	a, #0xfd
	jrne	00114$
	jp	00115$
00114$:
	jp	00102$
00115$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_flash_FLASH_Unlock.c: 45: FLASH->PUKR = FLASH_RASS_KEY1;
; genPointerSet
	mov	0x5062+0, #0x56
;	../SPLSPL/src/stm8s_flash_FLASH_Unlock.c: 46: FLASH->PUKR = FLASH_RASS_KEY2;
; genPointerSet
	mov	0x5062+0, #0xae
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_flash_FLASH_Unlock.c: 51: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
; genPointerSet
	mov	0x5064+0, #0xae
;	../SPLSPL/src/stm8s_flash_FLASH_Unlock.c: 52: FLASH->DUKR = FLASH_RASS_KEY1;
; genPointerSet
	mov	0x5064+0, #0x56
; genLabel
00104$:
;	../SPLSPL/src/stm8s_flash_FLASH_Unlock.c: 54: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
