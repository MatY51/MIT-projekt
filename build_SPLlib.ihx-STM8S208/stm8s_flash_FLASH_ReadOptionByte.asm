;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_ReadOptionByte
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_ReadOptionByte
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
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 36: uint16_t FLASH_ReadOptionByte(uint16_t Address)
; genLabel
;	-----------------------------------------
;	 function FLASH_ReadOptionByte
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_FLASH_ReadOptionByte:
	pushw	x
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 44: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
; genCast
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (x)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 45: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
; genAssign
; genPointerGet
	ld	a, (0x1, x)
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 48: if(Address == 0x4800)	 
; genCast
; genAssign
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 50: res_value =	 value_optbyte;
; genCast
; genAssign
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 48: if(Address == 0x4800)	 
; genCmpEQorNE
	cpw	y, #0x4800
	jrne	00124$
	jp	00125$
00124$:
	jp	00105$
00125$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 50: res_value =	 value_optbyte;
; genAssign
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 54: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
; genCpl
	ld	a, (0x02, sp)
	cpl	a
; genCmpEQorNE
	cp	a, (0x01, sp)
	jrne	00127$
	jp	00128$
00127$:
	jp	00102$
00128$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 56: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
; genLeftShiftLiteral
	clr	a
	rlwa	x
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 57: res_value = res_value | (uint16_t)value_optbyte_complement;
; genCast
; genAssign
	ld	a, (0x02, sp)
	clr	(0x01, sp)
; genOr
	pushw	x
	popw	x
	ld	xl, a
; genGoto
	jp	00106$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 61: res_value = FLASH_OPTIONBYTE_ERROR;
; genAssign
	ldw	x, #0x5555
; genLabel
00106$:
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 64: return(res_value);
; genReturn
; genLabel
00107$:
;	../SPLSPL/src/stm8s_flash_FLASH_ReadOptionByte.c: 65: }
; genEndFunction
	addw	sp, #2
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
