;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CheckITStatus
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_GetITStatus
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
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 37: ITStatus CAN_GetITStatus(CAN_IT_TypeDef CAN_IT)
; genLabel
;	-----------------------------------------
;	 function CAN_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_CAN_GetITStatus:
	push	a
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 40: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	pushw	y
	call	_CAN_GetSelectedPage
	ld	(0x03, sp), a
	popw	y
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 46: switch (CAN_IT)
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	decw	x
	jrne	00286$
	jp	00101$
00286$:
; skipping generated iCode
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	cpw	x, #0x0002
	jrne	00289$
	jp	00105$
00289$:
; skipping generated iCode
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	cpw	x, #0x0004
	jrne	00292$
	jp	00109$
00292$:
; skipping generated iCode
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	cpw	x, #0x0008
	jrne	00295$
	jp	00113$
00295$:
; skipping generated iCode
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	cpw	x, #0x0080
	jrne	00298$
	jp	00117$
00298$:
; skipping generated iCode
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	cpw	x, #0x0100
	jrne	00301$
	jp	00125$
00301$:
; skipping generated iCode
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	cpw	x, #0x0200
	jrne	00304$
	jp	00129$
00304$:
; skipping generated iCode
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	cpw	x, #0x0400
	jrne	00307$
	jp	00133$
00307$:
; skipping generated iCode
; genCast
; genAssign
	ldw	x, y
; genCmpEQorNE
	cpw	x, #0x0800
	jrne	00310$
	jp	00137$
00310$:
; skipping generated iCode
; genCast
; genAssign
; genCmpEQorNE
	cpw	y, #0x4000
	jrne	00313$
	jp	00121$
00313$:
; skipping generated iCode
; genGoto
	jp	00141$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 48: case CAN_IT_TME:
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 49: if ((CAN->IER & CAN_IER_TMEIE) !=RESET)
; genPointerGet
	ld	a, 0x5425
; genAnd
	srl	a
	jrc	00315$
	jp	00103$
00315$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 51: pendingbitstatus = CheckITStatus(CAN->TSR, CAN_TSR_RQCP012);
; genPointerGet
	ld	a, 0x5422
; genIPush
	push	#0x07
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00103$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 55: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 57: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 59: case CAN_IT_FMP:
; genLabel
00105$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 60: if ((CAN->IER & CAN_IER_FMPIE) !=RESET)
; genPointerGet
	ld	a, 0x5425
; genAnd
	bcp	a, #0x02
	jrne	00316$
	jp	00107$
00316$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 62: pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FMP01);
; genPointerGet
	ld	a, 0x5424
; genIPush
	push	#0x03
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00107$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 66: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 68: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 69: case CAN_IT_FF:
; genLabel
00109$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 70: if ((CAN->IER & CAN_IER_FFIE) !=RESET)
; genPointerGet
	ld	a, 0x5425
; genAnd
	bcp	a, #0x04
	jrne	00317$
	jp	00111$
00317$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 72: pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FULL);
; genPointerGet
	ld	a, 0x5424
; genIPush
	push	#0x08
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 76: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 78: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 79: case CAN_IT_FOV:
; genLabel
00113$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 80: if ((CAN->IER & CAN_IER_FOVIE) !=RESET)
; genPointerGet
	ld	a, 0x5425
; genAnd
	bcp	a, #0x08
	jrne	00318$
	jp	00115$
00318$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 82: pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FOVR);
; genPointerGet
	ld	a, 0x5424
; genIPush
	push	#0x10
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00115$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 86: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 88: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 89: case CAN_IT_WKU:
; genLabel
00117$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 90: if ((CAN->IER & CAN_IER_WKUIE) !=RESET)
; genPointerGet
	ld	a, 0x5425
; genAnd
	tnz	a
	jrmi	00319$
	jp	00119$
00319$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 92: pendingbitstatus = CheckITStatus(CAN->MSR, CAN_MSR_WKUI);
; genPointerGet
	ld	a, 0x5421
; genIPush
	push	#0x08
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00119$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 96: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 98: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 100: case CAN_IT_ERR:
; genLabel
00121$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 101: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 102: if ((CAN->Page.Config.EIER & CAN_EIER_ERRIE) !=RESET)
; genPointerGet
	ld	a, 0x5429
; genAnd
	tnz	a
	jrmi	00320$
	jp	00123$
00320$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 104: pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF|CAN_ESR_EPVF|CAN_ESR_BOFF|CAN_ESR_LEC);
; genPointerGet
	ld	a, 0x5428
; genIPush
	push	#0x77
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00123$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 108: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 110: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 112: case CAN_IT_EWG:
; genLabel
00125$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 113: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 114: if ((CAN->Page.Config.EIER & CAN_EIER_EWGIE) !=RESET)
; genPointerGet
	ld	a, 0x5429
; genAnd
	srl	a
	jrc	00321$
	jp	00127$
00321$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 116: pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF);
; genPointerGet
	ld	a, 0x5428
; genIPush
	push	#0x01
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00127$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 120: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 122: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 124: case CAN_IT_EPV:
; genLabel
00129$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 125: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 126: if ((CAN->Page.Config.EIER & CAN_EIER_EPVIE) !=RESET)
; genPointerGet
	ld	a, 0x5429
; genAnd
	bcp	a, #0x02
	jrne	00322$
	jp	00131$
00322$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 128: pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EPVF);
; genPointerGet
	ld	a, 0x5428
; genIPush
	push	#0x02
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00131$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 132: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 134: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 135: case CAN_IT_BOF:
; genLabel
00133$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 136: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 137: if ((CAN->Page.Config.EIER & CAN_EIER_BOFIE) !=RESET)
; genPointerGet
	ld	a, 0x5429
; genAnd
	bcp	a, #0x04
	jrne	00323$
	jp	00135$
00323$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 139: pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_BOFF);
; genPointerGet
	ld	a, 0x5428
; genIPush
	push	#0x04
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00135$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 143: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 145: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 146: case CAN_IT_LEC:
; genLabel
00137$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 147: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 148: if ((CAN->Page.Config.EIER & CAN_EIER_LECIE) !=RESET)
; genPointerGet
	ld	a, 0x5429
; genAnd
	bcp	a, #0x10
	jrne	00324$
	jp	00139$
00324$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 150: pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_LEC);
; genPointerGet
	ld	a, 0x5428
; genIPush
	push	#0x70
; genSend
; genCall
	call	_CheckITStatus
; genGoto
	jp	00142$
; genLabel
00139$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 154: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 156: break;
; genGoto
	jp	00142$
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 157: default :
; genLabel
00141$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 158: pendingbitstatus = RESET;
; genAssign
	clr	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 160: }
; genLabel
00142$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 162: CAN_SelectPage(can_page);
; genSend
	push	a
	ld	a, (0x02, sp)
; genCall
	call	_CAN_SelectPage
	pop	a
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 164: return  (ITStatus)pendingbitstatus;
; genReturn
; genLabel
00143$:
;	../SPLSPL/src/stm8s_can_CAN_GetITStatus.c: 165: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
