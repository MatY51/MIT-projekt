;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_FilterInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_OperatingModeRequest
	.globl _CAN_FilterInit
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
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 48: void CAN_FilterInit(CAN_FilterNumber_TypeDef CAN_FilterNumber,
; genLabel
;	-----------------------------------------
;	 function CAN_FilterInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 12 bytes.
_CAN_FilterInit:
	sub	sp, #12
; genReceive
	ld	(0x0c, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 66: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 75: if (CAN_FilterNumber == CAN_FilterNumber_0)
; genIfx
	tnz	(0x0c, sp)
	jreq	00360$
	jp	00114$
00360$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 77: fact = 0x01;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 78: fsc  = 0x00;
; genAssign
	clr	(0x03, sp)
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 79: fmhl = 0x03;
; genAssign
	ld	a, #0x03
	ld	(0x04, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 81: can_page_filter = CAN_Page_Filter01;
; genAssign
	ld	a, #0x02
	ld	(0x05, sp), a
; genGoto
	jp	00115$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 83: else if (CAN_FilterNumber == CAN_FilterNumber_1)
; genCmpEQorNE
	ld	a, (0x0c, sp)
	dec	a
	jrne	00362$
	jp	00363$
00362$:
	jp	00111$
00363$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 85: fact = 0x10;
; genAssign
	ld	a, #0x10
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 86: fsc  = 0x04;
; genAssign
	ld	a, #0x04
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 87: fmhl = 0x0C;
; genAssign
	ld	a, #0x0c
	ld	(0x04, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 89: can_page_filter = CAN_Page_Filter01;
; genAssign
	ld	a, #0x02
	ld	(0x05, sp), a
; genGoto
	jp	00115$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 91: else if (CAN_FilterNumber == CAN_FilterNumber_2)
; genCmpEQorNE
	ld	a, (0x0c, sp)
	cp	a, #0x02
	jrne	00365$
	jp	00366$
00365$:
	jp	00108$
00366$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 93: fact = 0x01;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 94: fsc  = 0x00;
; genAssign
	clr	(0x03, sp)
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 95: fmhl = 0x30;
; genAssign
	ld	a, #0x30
	ld	(0x04, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 97: can_page_filter = CAN_Page_Filter23;
; genAssign
	ld	a, #0x03
	ld	(0x05, sp), a
; genGoto
	jp	00115$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 99: else if (CAN_FilterNumber == CAN_FilterNumber_3)
; genCmpEQorNE
	ld	a, (0x0c, sp)
	cp	a, #0x03
	jrne	00368$
	jp	00369$
00368$:
	jp	00105$
00369$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 101: fact = 0x10;
; genAssign
	ld	a, #0x10
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 102: fsc  = 0x04;
; genAssign
	ld	a, #0x04
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 103: fmhl = 0xC0;
; genAssign
	ld	a, #0xc0
	ld	(0x04, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 105: can_page_filter = CAN_Page_Filter23;
; genAssign
	ld	a, #0x03
	ld	(0x05, sp), a
; genGoto
	jp	00115$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 107: else if (CAN_FilterNumber == CAN_FilterNumber_4)
; genCmpEQorNE
	ld	a, (0x0c, sp)
	cp	a, #0x04
	jrne	00371$
	jp	00372$
00371$:
	jp	00102$
00372$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 109: fact = 0x01;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 110: fsc  = 0x00;
; genAssign
	clr	(0x03, sp)
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 111: fmhl = 0x03;
; genAssign
	ld	a, #0x03
	ld	(0x04, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 113: can_page_filter = CAN_Page_Filter45;
; genAssign
	ld	a, #0x04
	ld	(0x05, sp), a
; genGoto
	jp	00115$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 117: fact = 0x10;
; genAssign
	ld	a, #0x10
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 118: fsc  = 0x04;
; genAssign
	ld	a, #0x04
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 119: fmhl = 0x0C;
; genAssign
	ld	a, #0x0c
	ld	(0x04, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 121: can_page_filter = CAN_Page_Filter45;
; genAssign
	ld	a, #0x04
	ld	(0x05, sp), a
; genLabel
00115$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 125: CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
; genSend
	clr	a
; genCall
	call	_CAN_OperatingModeRequest
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 127: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 135: CAN->Page.Config.FCR1 &= (uint8_t)(~(uint8_t)(fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc )));
; genLeftShift
	ld	a, #0x06
	ld	(0x0b, sp), a
	ld	a, (0x03, sp)
	jreq	00374$
00373$:
	sll	(0x0b, sp)
	dec	a
	jrne	00373$
00374$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 137: CAN->Page.Config.FCR1 |= (uint8_t)(CAN_FilterScale << fsc);
; genLeftShift
	ld	a, (0x11, sp)
	push	a
	ld	a, (0x04, sp)
	jreq	00376$
00375$:
	sll	(1, sp)
	dec	a
	jrne	00375$
00376$:
	pop	a
	ld	(0x09, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 135: CAN->Page.Config.FCR1 &= (uint8_t)(~(uint8_t)(fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc )));
; genOr
	ld	a, (0x02, sp)
	or	a, (0x0b, sp)
	ld	(0x0b, sp), a
; genCpl
	ld	a, (0x0b, sp)
	cpl	a
	ld	(0x0a, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 132: if (can_page_filter == CAN_Page_Filter01) /* FCR1 */
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x02
	jrne	00378$
	jp	00379$
00378$:
	jp	00120$
00379$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 135: CAN->Page.Config.FCR1 &= (uint8_t)(~(uint8_t)(fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc )));
; genPointerGet
	ld	a, 0x5432
	ld	(0x0b, sp), a
; genAnd
	ld	a, (0x0b, sp)
	and	a, (0x0a, sp)
; genPointerSet
	ld	0x5432, a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 137: CAN->Page.Config.FCR1 |= (uint8_t)(CAN_FilterScale << fsc);
; genPointerGet
	ld	a, 0x5432
	ld	(0x0b, sp), a
; genOr
	ld	a, (0x0b, sp)
	or	a, (0x09, sp)
; genPointerSet
	ld	0x5432, a
; genGoto
	jp	00121$
; genLabel
00120$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 139: else if (can_page_filter == CAN_Page_Filter23) /* FCR2*/
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x03
	jrne	00381$
	jp	00382$
00381$:
	jp	00117$
00382$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 142: CAN->Page.Config.FCR2 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
; genPointerGet
	ld	a, 0x5433
; genAnd
	and	a, (0x0a, sp)
; genPointerSet
	ld	0x5433, a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 145: CAN->Page.Config.FCR2 |= (uint8_t)(CAN_FilterScale << fsc);
; genPointerGet
	ld	a, 0x5433
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ld	0x5433, a
; genGoto
	jp	00121$
; genLabel
00117$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 151: CAN->Page.Config.FCR3 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
; genPointerGet
	ld	a, 0x5434
; genAnd
	and	a, (0x0a, sp)
; genPointerSet
	ld	0x5434, a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 154: CAN->Page.Config.FCR3 |= (uint8_t)(CAN_FilterScale << fsc);
; genPointerGet
	ld	a, 0x5434
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ld	0x5434, a
; genLabel
00121$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 166: CAN->Page.Config.FMR1 &= (uint8_t)~(fmhl);
; genCpl
	ld	a, (0x04, sp)
	cpl	a
	ld	(0x06, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 168: else if ( CAN_FilterMode == CAN_FilterMode_IdList)
; genCmpEQorNE
	ld	a, (0x10, sp)
	dec	a
	jrne	00384$
	ld	a, #0x01
	ld	(0x07, sp), a
	jp	00385$
00384$:
	clr	(0x07, sp)
00385$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 173: else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
; genCmpEQorNE
	ld	a, (0x10, sp)
	cp	a, #0x11
	jrne	00387$
	ld	a, #0x01
	ld	(0x08, sp), a
	jp	00388$
00387$:
	clr	(0x08, sp)
00388$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 176: CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
; genAnd
	ld	a, (0x04, sp)
	and	a, #0x55
	ld	(0x09, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 181: CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
; genAnd
	ld	a, (0x04, sp)
	and	a, #0xaa
	ld	(0x0a, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 160: if (can_page_filter != CAN_Page_Filter45) /* FMR1*/
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x04
	jrne	00390$
	jp	00141$
00390$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 166: CAN->Page.Config.FMR1 &= (uint8_t)~(fmhl);
; genPointerGet
	ld	a, 0x5430
	ld	(0x0b, sp), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 163: if (CAN_FilterMode == CAN_FilterMode_IdMask)
; genIfx
	tnz	(0x10, sp)
	jreq	00392$
	jp	00129$
00392$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 166: CAN->Page.Config.FMR1 &= (uint8_t)~(fmhl);
; genAnd
	ld	a, (0x0b, sp)
	and	a, (0x06, sp)
; genPointerSet
	ld	0x5430, a
; genGoto
	jp	00142$
; genLabel
00129$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 168: else if ( CAN_FilterMode == CAN_FilterMode_IdList)
; genIfx
	tnz	(0x07, sp)
	jrne	00393$
	jp	00126$
00393$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 171: CAN->Page.Config.FMR1 |= (uint8_t)(fmhl);
; genOr
	ld	a, (0x0b, sp)
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5430, a
; genGoto
	jp	00142$
; genLabel
00126$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 173: else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
; genIfx
	tnz	(0x08, sp)
	jrne	00394$
	jp	00123$
00394$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 176: CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
; genOr
	ld	a, (0x0b, sp)
	or	a, (0x09, sp)
; genPointerSet
	ld	0x5430, a
; genGoto
	jp	00142$
; genLabel
00123$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 181: CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
; genOr
	ld	a, (0x0b, sp)
	or	a, (0x0a, sp)
; genPointerSet
	ld	0x5430, a
; genGoto
	jp	00142$
; genLabel
00141$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 193: CAN->Page.Config.FMR2 &= (uint8_t)~(fmhl);
; genPointerGet
	ld	a, 0x5431
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 190: if (CAN_FilterMode == CAN_FilterMode_IdMask)
; genIfx
	tnz	(0x10, sp)
	jreq	00395$
	jp	00138$
00395$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 193: CAN->Page.Config.FMR2 &= (uint8_t)~(fmhl);
; genAnd
	and	a, (0x06, sp)
; genPointerSet
	ld	0x5431, a
; genGoto
	jp	00142$
; genLabel
00138$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 195: else if ( CAN_FilterMode == CAN_FilterMode_IdList)
; genIfx
	tnz	(0x07, sp)
	jrne	00396$
	jp	00135$
00396$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 198: CAN->Page.Config.FMR2 |= (uint8_t)(fmhl);
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5431, a
; genGoto
	jp	00142$
; genLabel
00135$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 200: else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
; genIfx
	tnz	(0x08, sp)
	jrne	00397$
	jp	00132$
00397$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 203: CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ld	0x5431, a
; genGoto
	jp	00142$
; genLabel
00132$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 208: CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ld	0x5431, a
; genLabel
00142$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 214: CAN->PSR = (uint8_t)can_page_filter;
; genPointerSet
	ldw	x, #0x5427
	ld	a, (0x05, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 229: else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
; genCmpEQorNE
	ld	a, (0x11, sp)
	cp	a, #0x02
	jrne	00399$
	ld	a, #0x01
	ld	(0x0a, sp), a
	jp	00400$
00399$:
	clr	(0x0a, sp)
00400$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 240: else if (CAN_FilterScale == CAN_FilterScale_16Bit)
; genCmpEQorNE
	ld	a, (0x11, sp)
	cp	a, #0x04
	jrne	00402$
	ld	a, #0x01
	ld	(0x0b, sp), a
	jp	00403$
00402$:
	clr	(0x0b, sp)
00403$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 251: else if (CAN_FilterScale == CAN_FilterScale_32Bit)
; genCmpEQorNE
	ld	a, (0x11, sp)
	cp	a, #0x06
	jrne	00405$
	ld	a, #0x01
	jp	00406$
00405$:
	clr	a
00406$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 215: if (fsc != 0)
; genIfx
	tnz	(0x03, sp)
	jrne	00407$
	jp	00166$
00407$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 218: if (CAN_FilterScale == CAN_FilterScale_8Bit)
; genIfx
	tnz	(0x11, sp)
	jreq	00408$
	jp	00152$
00408$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 220: CAN->Page.Filter.FR09 = CAN_FilterID1;
; genPointerSet
	ldw	x, #0x5430
	ld	a, (0x12, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 221: CAN->Page.Filter.FR10 = CAN_FilterIDMask1;
; genPointerSet
	ldw	x, #0x5431
	ld	a, (0x16, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 222: CAN->Page.Filter.FR11 = CAN_FilterID2;
; genPointerSet
	ldw	x, #0x5432
	ld	a, (0x13, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 223: CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
; genPointerSet
	ldw	x, #0x5433
	ld	a, (0x17, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 224: CAN->Page.Filter.FR13 = CAN_FilterID3;
; genPointerSet
	ldw	x, #0x5434
	ld	a, (0x14, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 225: CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
; genPointerSet
	ldw	x, #0x5435
	ld	a, (0x18, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 226: CAN->Page.Filter.FR15 = CAN_FilterID4;
; genPointerSet
	ldw	x, #0x5436
	ld	a, (0x15, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 227: CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
; genPointerSet
	ldw	x, #0x5437
	ld	a, (0x19, sp)
	ld	(x), a
; genGoto
	jp	00167$
; genLabel
00152$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 229: else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
; genIfx
	tnz	(0x0a, sp)
	jrne	00409$
	jp	00149$
00409$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 231: CAN->Page.Filter.FR09 = CAN_FilterID1;
; genPointerSet
	ldw	x, #0x5430
	ld	a, (0x12, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 232: CAN->Page.Filter.FR10 = CAN_FilterID2;
; genPointerSet
	ldw	x, #0x5431
	ld	a, (0x13, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 233: CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
; genPointerSet
	ldw	x, #0x5432
	ld	a, (0x16, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 234: CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
; genPointerSet
	ldw	x, #0x5433
	ld	a, (0x17, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 235: CAN->Page.Filter.FR13 = CAN_FilterID3;
; genPointerSet
	ldw	x, #0x5434
	ld	a, (0x14, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 236: CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
; genPointerSet
	ldw	x, #0x5435
	ld	a, (0x18, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 237: CAN->Page.Filter.FR15 = CAN_FilterID4;
; genPointerSet
	ldw	x, #0x5436
	ld	a, (0x15, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 238: CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
; genPointerSet
	ldw	x, #0x5437
	ld	a, (0x19, sp)
	ld	(x), a
; genGoto
	jp	00167$
; genLabel
00149$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 240: else if (CAN_FilterScale == CAN_FilterScale_16Bit)
; genIfx
	tnz	(0x0b, sp)
	jrne	00410$
	jp	00146$
00410$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 242: CAN->Page.Filter.FR09 = CAN_FilterID1;
; genPointerSet
	ldw	x, #0x5430
	ld	a, (0x12, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 243: CAN->Page.Filter.FR10 = CAN_FilterID2;
; genPointerSet
	ldw	x, #0x5431
	ld	a, (0x13, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 244: CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
; genPointerSet
	ldw	x, #0x5432
	ld	a, (0x16, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 245: CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
; genPointerSet
	ldw	x, #0x5433
	ld	a, (0x17, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 246: CAN->Page.Filter.FR13 = CAN_FilterID3;
; genPointerSet
	ldw	x, #0x5434
	ld	a, (0x14, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 247: CAN->Page.Filter.FR14 = CAN_FilterID4;
; genPointerSet
	ldw	x, #0x5435
	ld	a, (0x15, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 248: CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
; genPointerSet
	ldw	x, #0x5436
	ld	a, (0x18, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 249: CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
; genPointerSet
	ldw	x, #0x5437
	ld	a, (0x19, sp)
	ld	(x), a
; genGoto
	jp	00167$
; genLabel
00146$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 251: else if (CAN_FilterScale == CAN_FilterScale_32Bit)
; genIfx
	tnz	a
	jrne	00411$
	jp	00167$
00411$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 253: CAN->Page.Filter.FR09 = CAN_FilterID1;
; genPointerSet
	ldw	x, #0x5430
	ld	a, (0x12, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 254: CAN->Page.Filter.FR10 = CAN_FilterID2;
; genPointerSet
	ldw	x, #0x5431
	ld	a, (0x13, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 255: CAN->Page.Filter.FR11 = CAN_FilterID3;
; genPointerSet
	ldw	x, #0x5432
	ld	a, (0x14, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 256: CAN->Page.Filter.FR12 = CAN_FilterID4;
; genPointerSet
	ldw	x, #0x5433
	ld	a, (0x15, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 257: CAN->Page.Filter.FR13 = CAN_FilterIDMask1;
; genPointerSet
	ldw	x, #0x5434
	ld	a, (0x16, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 258: CAN->Page.Filter.FR14 = CAN_FilterIDMask2;
; genPointerSet
	ldw	x, #0x5435
	ld	a, (0x17, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 259: CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
; genPointerSet
	ldw	x, #0x5436
	ld	a, (0x18, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 260: CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
; genPointerSet
	ldw	x, #0x5437
	ld	a, (0x19, sp)
	ld	(x), a
; genGoto
	jp	00167$
; genLabel
00166$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 266: if (CAN_FilterScale == CAN_FilterScale_8Bit)
; genIfx
	tnz	(0x11, sp)
	jreq	00412$
	jp	00163$
00412$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 268: CAN->Page.Filter.FR01 = CAN_FilterID1;
; genPointerSet
	ldw	x, #0x5428
	ld	a, (0x12, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 269: CAN->Page.Filter.FR02 = CAN_FilterIDMask1;
; genPointerSet
	ldw	x, #0x5429
	ld	a, (0x16, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 270: CAN->Page.Filter.FR03 = CAN_FilterID2;
; genPointerSet
	ldw	x, #0x542a
	ld	a, (0x13, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 271: CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
; genPointerSet
	ldw	x, #0x542b
	ld	a, (0x17, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 272: CAN->Page.Filter.FR05 = CAN_FilterID3;
; genPointerSet
	ldw	x, #0x542c
	ld	a, (0x14, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 273: CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
; genPointerSet
	ldw	x, #0x542d
	ld	a, (0x18, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 274: CAN->Page.Filter.FR07 = CAN_FilterID4;
; genPointerSet
	ldw	x, #0x542e
	ld	a, (0x15, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 275: CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
; genPointerSet
	ldw	x, #0x542f
	ld	a, (0x19, sp)
	ld	(x), a
; genGoto
	jp	00167$
; genLabel
00163$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 277: else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
; genIfx
	tnz	(0x0a, sp)
	jrne	00413$
	jp	00160$
00413$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 279: CAN->Page.Filter.FR01 = CAN_FilterID1;
; genPointerSet
	ldw	x, #0x5428
	ld	a, (0x12, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 280: CAN->Page.Filter.FR02 = CAN_FilterID2;
; genPointerSet
	ldw	x, #0x5429
	ld	a, (0x13, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 281: CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
; genPointerSet
	ldw	x, #0x542a
	ld	a, (0x16, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 282: CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
; genPointerSet
	ldw	x, #0x542b
	ld	a, (0x17, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 283: CAN->Page.Filter.FR05 = CAN_FilterID3;
; genPointerSet
	ldw	x, #0x542c
	ld	a, (0x14, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 284: CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
; genPointerSet
	ldw	x, #0x542d
	ld	a, (0x18, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 285: CAN->Page.Filter.FR07 = CAN_FilterID4;
; genPointerSet
	ldw	x, #0x542e
	ld	a, (0x15, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 286: CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
; genPointerSet
	ldw	x, #0x542f
	ld	a, (0x19, sp)
	ld	(x), a
; genGoto
	jp	00167$
; genLabel
00160$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 288: else if (CAN_FilterScale == CAN_FilterScale_16Bit)
; genIfx
	tnz	(0x0b, sp)
	jrne	00414$
	jp	00157$
00414$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 290: CAN->Page.Filter.FR01 = CAN_FilterID1;
; genPointerSet
	ldw	x, #0x5428
	ld	a, (0x12, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 291: CAN->Page.Filter.FR02 = CAN_FilterID2;
; genPointerSet
	ldw	x, #0x5429
	ld	a, (0x13, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 292: CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
; genPointerSet
	ldw	x, #0x542a
	ld	a, (0x16, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 293: CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
; genPointerSet
	ldw	x, #0x542b
	ld	a, (0x17, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 294: CAN->Page.Filter.FR05 = CAN_FilterID3;
; genPointerSet
	ldw	x, #0x542c
	ld	a, (0x14, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 295: CAN->Page.Filter.FR06 = CAN_FilterID4;
; genPointerSet
	ldw	x, #0x542d
	ld	a, (0x15, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 296: CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
; genPointerSet
	ldw	x, #0x542e
	ld	a, (0x18, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 297: CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
; genPointerSet
	ldw	x, #0x542f
	ld	a, (0x19, sp)
	ld	(x), a
; genGoto
	jp	00167$
; genLabel
00157$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 299: else if (CAN_FilterScale == CAN_FilterScale_32Bit)
; genIfx
	tnz	a
	jrne	00415$
	jp	00167$
00415$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 301: CAN->Page.Filter.FR01 = CAN_FilterID1;
; genPointerSet
	ldw	x, #0x5428
	ld	a, (0x12, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 302: CAN->Page.Filter.FR02 = CAN_FilterID2;
; genPointerSet
	ldw	x, #0x5429
	ld	a, (0x13, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 303: CAN->Page.Filter.FR03 = CAN_FilterID3;
; genPointerSet
	ldw	x, #0x542a
	ld	a, (0x14, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 304: CAN->Page.Filter.FR04 = CAN_FilterID4;
; genPointerSet
	ldw	x, #0x542b
	ld	a, (0x15, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 305: CAN->Page.Filter.FR05 = CAN_FilterIDMask1;
; genPointerSet
	ldw	x, #0x542c
	ld	a, (0x16, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 306: CAN->Page.Filter.FR06 = CAN_FilterIDMask2;
; genPointerSet
	ldw	x, #0x542d
	ld	a, (0x17, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 307: CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
; genPointerSet
	ldw	x, #0x542e
	ld	a, (0x18, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 308: CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
; genPointerSet
	ldw	x, #0x542f
	ld	a, (0x19, sp)
	ld	(x), a
; genLabel
00167$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 317: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 318: if (CAN_FilterActivation != DISABLE)
; genIfx
	tnz	(0x0f, sp)
	jrne	00416$
	jp	00175$
00416$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 320: if ((CAN_FilterNumber & 0x06) == 0x00) /* FCR1*/
; genAnd
	ld	a, (0x0c, sp)
	bcp	a, #0x06
	jreq	00417$
	jp	00172$
00417$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 321: {   CAN->Page.Config.FCR1 |= (uint8_t)fact;
; genPointerGet
	ld	a, 0x5432
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5432, a
; genGoto
	jp	00175$
; genLabel
00172$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 323: else if ((CAN_FilterNumber & 0x06) == 0x02) /*FCR2*/
; genCast
; genAssign
	ld	a, (0x0c, sp)
; genAnd
	and	a, #0x06
; genCmpEQorNE
	cp	a, #0x02
	jrne	00419$
	jp	00420$
00419$:
	jp	00169$
00420$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 324: { CAN->Page.Config.FCR2 |= (uint8_t)fact;
; genPointerGet
	ld	a, 0x5433
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5433, a
; genGoto
	jp	00175$
; genLabel
00169$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 327: { CAN->Page.Config.FCR3 |= (uint8_t)fact;
; genPointerGet
	ld	a, 0x5434
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5434, a
; genLabel
00175$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 330: CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
; genSend
	ld	a, #0x01
; genCall
	call	_CAN_OperatingModeRequest
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 332: CAN_SelectPage(can_page);
; genSend
	ld	a, (0x01, sp)
; genCall
	call	_CAN_SelectPage
; genLabel
00176$:
;	../SPLSPL/src/stm8s_can_CAN_FilterInit.c: 333: }
; genEndFunction
	ldw	x, (13, sp)
	addw	sp, #25
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
