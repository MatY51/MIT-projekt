;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asm_val
	.globl _asm_addr
	.globl _FLASH_WaitForLastOperation
	.globl _FLASH_EraseBlock
	.globl _FLASH_ProgramBlock
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_asm_addr::
	.ds 4
_asm_val::
	.ds 1
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
;	../SPLSPL/src/stm8s_flash.c: 193: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
; genLabel
;	-----------------------------------------
;	 function FLASH_WaitForLastOperation
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_WaitForLastOperation:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_flash.c: 195: uint8_t flagstatus = 0x00;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_flash.c: 201: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
; genCmpEQorNE
	push	a
	ld	a, xl
	cp	a, #0xfd
	pop	a
	jrne	00174$
	jp	00175$
00174$:
	jp	00121$
00175$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_flash.c: 203: while((flagstatus == 0x00) && (timeout != 0x00))
; genAssign
	clrw	x
	decw	x
; genLabel
00102$:
; genIfx
	tnz	a
	jreq	00176$
	jp	00123$
00176$:
; genIfx
	tnzw	x
	jrne	00177$
	jp	00123$
00177$:
;	../SPLSPL/src/stm8s_flash.c: 205: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
; genPointerGet
	ld	a, 0x505f
; genAnd
	and	a, #0x05
;	../SPLSPL/src/stm8s_flash.c: 207: timeout--;
; genMinus
	decw	x
; genGoto
	jp	00102$
;	../SPLSPL/src/stm8s_flash.c: 212: while((flagstatus == 0x00) && (timeout != 0x00))
; genLabel
00121$:
; genAssign
	clrw	x
	decw	x
; genLabel
00106$:
; genIfx
	tnz	a
	jreq	00178$
	jp	00124$
00178$:
; genIfx
	tnzw	x
	jrne	00179$
	jp	00124$
00179$:
;	../SPLSPL/src/stm8s_flash.c: 214: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
; genPointerGet
	ld	a, 0x505f
; genAnd
	and	a, #0x41
;	../SPLSPL/src/stm8s_flash.c: 216: timeout--;
; genMinus
	decw	x
; genGoto
	jp	00106$
; genLabel
00123$:
; genAssign
;	../SPLSPL/src/stm8s_flash.c: 233: return((FLASH_Status_TypeDef)flagstatus);
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_flash.c: 216: timeout--;
; genLabel
00124$:
; genAssign
; genLabel
00111$:
;	../SPLSPL/src/stm8s_flash.c: 228: if(timeout == 0x00 )
; genIfx
	tnzw	x
	jreq	00180$
	jp	00113$
00180$:
;	../SPLSPL/src/stm8s_flash.c: 230: flagstatus = FLASH_STATUS_TIMEOUT;
; genAssign
	ld	a, #0x02
; genLabel
00113$:
;	../SPLSPL/src/stm8s_flash.c: 233: return((FLASH_Status_TypeDef)flagstatus);
; genReturn
; genLabel
00114$:
;	../SPLSPL/src/stm8s_flash.c: 234: }
; genEndFunction
	ret
;	../SPLSPL/src/stm8s_flash.c: 243: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
; genLabel
;	-----------------------------------------
;	 function FLASH_EraseBlock
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_FLASH_EraseBlock:
	pushw	x
; genReceive
; genReceive
;	../SPLSPL/src/stm8s_flash.c: 256: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
; genCmpEQorNE
	cp	a, #0xfd
	jrne	00114$
	jp	00115$
00114$:
	jp	00102$
00115$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_flash.c: 259: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
; genAssign
	clr	(0x02, sp)
	ld	a, #0x80
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_flash.c: 264: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
; genAssign
	clr	(0x02, sp)
	ld	a, #0x40
; genLabel
00103$:
;	../SPLSPL/src/stm8s_flash.c: 269: pwFlash = (PointerAttr uint8_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
; genCast
; genAssign
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	exgw	x, y
; genCast
; genAssign
	ld	(0x01, sp), a
; genPlus
	addw	y, (0x01, sp)
; genAssign
;	../SPLSPL/src/stm8s_flash.c: 276: FLASH->CR2 |= FLASH_CR2_ERASE;
; genPointerGet
	ld	a, 0x505b
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x505b, a
;	../SPLSPL/src/stm8s_flash.c: 277: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
; genPointerGet
	ld	a, 0x505c
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x505c, a
;	../SPLSPL/src/stm8s_flash.c: 284: *pwFlash = (uint8_t)0;
; genPointerSet
	clr	(y)
;	../SPLSPL/src/stm8s_flash.c: 285: *(pwFlash + 1) = (uint8_t)0;
; genPlus
	ldw	x, y
	incw	x
; genPointerSet
	clr	(x)
;	../SPLSPL/src/stm8s_flash.c: 286: *(pwFlash + 2) = (uint8_t)0;
; genPlus
	ldw	x, y
	incw	x
	incw	x
; genPointerSet
	clr	(x)
;	../SPLSPL/src/stm8s_flash.c: 287: *(pwFlash + 3) = (uint8_t)0;    
; genPlus
	ldw	x, y
	addw	x, #0x0003
; genPointerSet
	clr	(x)
; genLabel
00104$:
;	../SPLSPL/src/stm8s_flash.c: 289: }
; genEndFunction
	popw	x
	ret
;	../SPLSPL/src/stm8s_flash.c: 300: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
; genLabel
;	-----------------------------------------
;	 function FLASH_ProgramBlock
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 12 bytes.
_FLASH_ProgramBlock:
	sub	sp, #12
; genReceive
	exgw	x, y
; genReceive
;	../SPLSPL/src/stm8s_flash.c: 309: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
; genCmpEQorNE
	cp	a, #0xfd
	jrne	00135$
	jp	00136$
00135$:
	jp	00102$
00136$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_flash.c: 312: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
; genAssign
	clr	(0x04, sp)
	ld	a, #0x80
	clrw	x
	ldw	(0x01, sp), x
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_flash.c: 317: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
; genAssign
	clr	(0x04, sp)
	ld	a, #0x40
	clrw	x
	ldw	(0x01, sp), x
; genLabel
00103$:
;	../SPLSPL/src/stm8s_flash.c: 321: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
; genCast
; genAssign
	clrw	x
; genLeftShift
	push	a
	ld	a, #0x07
00137$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00137$
00138$:
	ldw	(0x0c, sp), y
	pop	a
; genPlus
	push	a
	ld	a, (0x05, sp)
	add	a, (0x0d, sp)
	ld	(0x09, sp), a
	pop	a
	adc	a, (0x0b, sp)
	ld	(0x07, sp), a
	ld	a, xl
	adc	a, (0x02, sp)
	ld	(0x06, sp), a
	ld	a, xh
	adc	a, (0x01, sp)
	ld	(0x05, sp), a
;	../SPLSPL/src/stm8s_flash.c: 327: FLASH->CR2 |= FLASH_CR2_PRG;
; genPointerGet
	ld	a, 0x505b
;	../SPLSPL/src/stm8s_flash.c: 324: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
; genIfx
	tnz	(0x0f, sp)
	jreq	00139$
	jp	00105$
00139$:
;	../SPLSPL/src/stm8s_flash.c: 327: FLASH->CR2 |= FLASH_CR2_PRG;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x505b, a
;	../SPLSPL/src/stm8s_flash.c: 328: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
; genPointerGet
	ld	a, 0x505c
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x505c, a
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_flash.c: 333: FLASH->CR2 |= FLASH_CR2_FPRG;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x505b, a
;	../SPLSPL/src/stm8s_flash.c: 334: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
; genPointerGet
	ld	a, 0x505c
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x505c, a
; genLabel
00106$:
;	../SPLSPL/src/stm8s_flash.c: 338: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
; genAssign
	clrw	y
; genLabel
00108$:
;	../SPLSPL/src/stm8s_flash.c: 340: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
; genCast
; genAssign
	ldw	x, (0x07, sp)
	ldw	(0x09, sp), x
; genPlus
	ldw	x, y
	addw	x, (0x09, sp)
	ldw	(0x0b, sp), x
; genPlus
	ldw	x, y
	addw	x, (0x10, sp)
; genPointerGet
	ld	a, (x)
; genPointerSet
	ldw	x, (0x0b, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_flash.c: 338: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
; genPlus
	incw	y
; genCmp
; genCmpTnz
	cpw	y, #0x0080
	jrnc	00140$
	jp	00108$
00140$:
; skipping generated iCode
; genLabel
00110$:
;	../SPLSPL/src/stm8s_flash.c: 342: }
; genEndFunction
	ldw	x, (13, sp)
	addw	sp, #17
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
