;Imports of MacBuilder:
	extern GetEventKind
	extern GetEventClass
	extern GetEventParameter
	extern GetControlOwner
	extern AdvanceKeyboardFocus
	extern SetWRefCon
	extern QuitAppModalLoopForWindow
	extern HIViewGetRoot
	extern HIViewGetViewForMouseEvent
	extern GetControlKind
	extern SetThemeCursor
	extern GetControlMaximum
	extern GetControlDataSize
	extern SetControlData
	extern HandleControlKey
	extern GetControlReference
	extern GetControlData
	extern AlertSoundPlay
	extern _ZN8MacTools24PostPrivateEventToWindowEP15OpaqueWindowPtrmmm
	extern _Z6struprPc
	extern SetEventParameter
	extern GetControlBounds
	extern PtInRect
	extern CFBundleGetMainBundle
	extern CreateNibReferenceWithCFBundle
	extern CreateWindowFromNib
	extern DisposeNibReference
	extern GetWindowEventTarget
	extern InstallEventHandler
	extern GetWindowResizeLimits
	extern SetWindowResizeLimits
	extern GetControlByID
	extern HITextViewGetTXNObject
	extern DisposeWindow
	extern InitCursor
	extern ShowWindow
	extern RunAppModalLoopForWindow
	extern HideWindow
	extern GetWRefCon
	extern CFStringCreateWithCString
	extern SetWindowTitleWithCFString
	extern CFRelease
	extern GetControlValue
	extern SetKeyboardFocus
	extern SetControlValue
	extern SetControlReference
	extern SetControlMaximum
	extern NewControlKeyFilterUPP
	extern NewControlEditTextValidationUPP
	extern HideControl
	extern ShowControl
	extern SetControlFontStyle
	extern NewControlUserPaneDrawUPP
	extern NewControlUserPaneHitTestUPP
	extern NewControlUserPaneTrackingUPP
	extern TXNSetTypeAttributes
	extern GetControlEventTarget

;Exports of MacBuilder:
	global sBuilderProcPtr
	global _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	global _Z14ValidationProcP16OpaqueControlRef
	global _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt
	global _ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE21sControlValidationUPP
	global _ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE20sControlKeyFilterUPP
	global _Z19HandleUppercaseHookP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	global _Z19UserPaneHitTestProcP16OpaqueControlRef5Point
	global _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	global _ZN10MacBuilder13GetControlRefEP15OpaqueWindowPtrl
	global _ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl
	global _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
	global _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	global _ZN10MacBuilder14RunModalWindowEP15OpaqueWindowPtr
	global _ZN10MacBuilder14SetControlTextEP15OpaqueWindowPtrlPKc
	global _ZN10MacBuilder14SetWindowTitleEP15OpaqueWindowPtrPKc
	global _ZN10MacBuilder15GetControlValueEP15OpaqueWindowPtrl
	global _ZN10MacBuilder15QuitModalWindowEP15OpaqueWindowPtrm
	global _ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl
	global _ZN10MacBuilder15SetControlValueEP15OpaqueWindowPtrls
	global _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	global _ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh
	global _ZN10MacBuilder19SetControlFontStyleEP15OpaqueWindowPtrlss
	global _ZN10MacBuilder20SetupUserPaneControlEP15OpaqueWindowPtrlPFvP16OpaqueControlRefsEPFsS3_5PointS5_E
	global _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss
	global _ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl


SECTION .text


;HandleStandardEvents(OpaqueEventHandlerCallRef*, OpaqueEventRef*, void*)
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov esi, [ebp+0xc]
	mov [esp], esi
	call GetEventKind
	mov ebx, eax
	mov [esp], esi
	call GetEventClass
	cmp eax, 0x636d6473
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_10
	jbe _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_20
	cmp eax, 0x6d6f7573
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_30
	cmp eax, 0x77696e64
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_40
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50:
	mov ebx, 0xffffd96e
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_80:
	mov eax, ebx
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_20:
	cmp eax, 0x50726976
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	cmp ebx, 0x41647643
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	lea eax, [ebp-0xc]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x504f6e65
	mov [esp], esi
	call GetEventParameter
	test eax, eax
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	mov eax, [ebp-0xc]
	mov [esp], eax
	call GetControlOwner
	mov [esp], eax
	call AdvanceKeyboardFocus
	jmp _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_10:
	cmp ebx, 0x1
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	lea eax, [ebp-0x1a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0xe
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x68636d64
	mov dword [esp+0x4], 0x2d2d2d2d
	mov [esp], esi
	call GetEventParameter
	test eax, eax
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	mov eax, [ebp-0x16]
	cmp eax, 0x6f6b2020
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_60
	cmp eax, 0x6e6f7421
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_70
	mov dword [esp+0x4], 0x6e6f7421
	mov eax, [ebp+0x10]
	mov [esp], eax
	call SetWRefCon
	mov edx, [ebp+0x10]
	mov [esp], edx
	call QuitAppModalLoopForWindow
	xor ebx, ebx
	jmp _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_80
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_40:
	cmp ebx, 0x48
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	mov eax, [sBuilderProcPtr]
	test eax, eax
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_90
	mov dword [esp+0x4], 0x636c6f73
	mov edx, [ebp+0x10]
	mov [esp], edx
	call eax
	and ebx, 0xffffff00
	jmp _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_80
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_30:
	cmp ebx, 0x5
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	mov eax, [ebp+0x10]
	mov [esp], eax
	call HIViewGetRoot
	lea edx, [ebp-0xc]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call HIViewGetViewForMouseEvent
	mov ebx, eax
	test eax, eax
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_100
	mov edx, [ebp-0xc]
	test edx, edx
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_110
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], edx
	call GetControlKind
	mov ebx, eax
	test eax, eax
	jnz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_100
	mov eax, [ebp-0x16]
	cmp eax, 0x65747874
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_120
	cmp eax, 0x65757478
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_120
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_110:
	xor ebx, ebx
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_100:
	xor eax, eax
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_130:
	mov [esp], eax
	call SetThemeCursor
	jmp _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_80
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_120:
	mov eax, 0x4
	jmp _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_130
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_70:
	mov edx, [sBuilderProcPtr]
	test edx, edx
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	test byte [ebp-0x1a], 0x2
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call edx
	test al, al
	jz _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_50
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_90:
	xor ebx, ebx
	jmp _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_80
_Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_60:
	mov dword [esp+0x4], 0x6f6b2020
	mov eax, [ebp+0x10]
	mov [esp], eax
	call SetWRefCon
	mov edx, [ebp+0x10]
	mov [esp], edx
	call QuitAppModalLoopForWindow
	and ebx, 0xffffff00
	jmp _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_80


;ValidationProc(OpaqueControlRef*)
_Z14ValidationProcP16OpaqueControlRef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov [esp], esi
	call GetControlMaximum
	mov ebx, eax
	test ax, ax
	jnz _Z14ValidationProcP16OpaqueControlRef_10
_Z14ValidationProcP16OpaqueControlRef_30:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z14ValidationProcP16OpaqueControlRef_10:
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x74657874
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call GetControlDataSize
	test ax, ax
	jz _Z14ValidationProcP16OpaqueControlRef_20
	xor eax, eax
_Z14ValidationProcP16OpaqueControlRef_40:
	movsx edx, ax
	movzx eax, bx
	cmp edx, eax
	jle _Z14ValidationProcP16OpaqueControlRef_30
	mov [ebp-0x10], bx
	mov word [ebp-0xe], 0x7fff
	lea eax, [ebp-0x10]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x73656c65
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call SetControlData
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call HandleControlKey
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z14ValidationProcP16OpaqueControlRef_20:
	movzx eax, word [ebp-0xc]
	jmp _Z14ValidationProcP16OpaqueControlRef_40
	nop


;KeyFilterProc(OpaqueControlRef*, short*, short*, unsigned short*)
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov [esp], ebx
	call GetControlReference
	mov edx, eax
	test eax, eax
	jz _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_10
	movsx eax, word [esi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call edx
	test al, al
	jnz _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_20
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_10:
	mov [esp], ebx
	call GetControlMaximum
	mov edi, eax
	test ax, ax
	jz _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_30
	mov eax, [ebp+0x14]
	test byte [eax+0x1], 0x1
	jnz _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_30
	movzx eax, word [esi]
	cmp ax, 0x1f
	jle _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_40
	cmp ax, 0x7f
	jz _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_30
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_80:
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x73656c65
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call GetControlData
	test ax, ax
	jz _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_50
	xor esi, esi
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_90:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x74657874
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call GetControlDataSize
	test ax, ax
	jz _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_60
	xor eax, eax
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_100:
	lea eax, [eax+esi+0x1]
	cwde
	movzx edx, di
	cmp eax, edx
	jz _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_70
	jle _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_30
	call AlertSoundPlay
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_20:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_70:
	mov [esp], ebx
	call GetControlOwner
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41647643
	mov [esp], eax
	call _ZN8MacTools24PostPrivateEventToWindowEP15OpaqueWindowPtrmmm
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_30:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_40:
	cmp ax, 0x1c
	jge _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_30
	sub eax, 0x8
	cmp ax, 0x1
	ja _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_80
	jmp _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_30
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_50:
	movzx esi, word [ebp-0x1c]
	sub si, [ebp-0x1a]
	jmp _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_90
_Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_60:
	movzx eax, word [ebp-0x20]
	jmp _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt_100


;HandleUppercaseHook(OpaqueEventHandlerCallRef*, OpaqueEventRef*, void*)
_Z19HandleUppercaseHookP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov esi, [ebp+0xc]
	lea ebx, [ebp-0xa0]
	mov [esp+0x18], ebx
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x80
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x75746638
	mov dword [esp+0x4], 0x74737478
	mov [esp], esi
	call GetEventParameter
	test eax, eax
	jnz _Z19HandleUppercaseHookP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_10
	cmp dword [ebp-0x1c], 0x75746638
	jz _Z19HandleUppercaseHookP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_20
_Z19HandleUppercaseHookP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_10:
	mov eax, 0xffffd96e
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19HandleUppercaseHookP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv_20:
	mov eax, [ebp-0x20]
	mov byte [ebp+eax-0xa0], 0x0
	mov [esp], ebx
	call _Z6struprPc
	mov [esp+0x10], ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x75746638
	mov dword [esp+0x4], 0x74737478
	mov [esp], esi
	call SetEventParameter
	mov eax, 0xffffd96e
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;UserPaneHitTestProc(OpaqueControlRef*, Point)
_Z19UserPaneHitTestProcP16OpaqueControlRef5Point:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea ebx, [ebp-0x10]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlBounds
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PtInRect
	test al, al
	setnz al
	movzx eax, al
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;MacBuilder::BuildWindow(__CFString const*, __CFString const*, unsigned char, unsigned char (*)(OpaqueWindowPtr*, unsigned long))
_ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0xc]
	movzx esi, byte [ebp+0x10]
	mov dword [ebp-0xc], 0x0
	test ebx, ebx
	mov eax, _cfstring_localized
	cmovz ebx, eax
	call CFBundleGetMainBundle
	lea edx, [ebp-0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call CreateNibReferenceWithCFBundle
	test eax, eax
	jz _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_10
	mov eax, [ebp-0xc]
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_10:
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x10]
	mov [esp], eax
	call CreateWindowFromNib
	test eax, eax
	jnz _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_20
	mov eax, esi
	test al, al
	jnz _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_30
_ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_20:
	mov eax, [ebp-0x10]
	mov [esp], eax
	call DisposeNibReference
	mov eax, [ebp-0xc]
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_30:
	mov dword [ebp-0x40], 0x6d6f7573
	mov dword [ebp-0x3c], 0x5
	mov dword [ebp-0x38], 0x77696e64
	mov dword [ebp-0x34], 0x48
	mov dword [ebp-0x30], 0x636d6473
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x28], 0x50726976
	mov dword [ebp-0x24], 0x41647643
	mov ebx, [ebp-0xc]
	mov [esp], ebx
	call GetWindowEventTarget
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	lea edx, [ebp-0x40]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _Z20HandleStandardEventsP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	mov [esp], eax
	call InstallEventHandler
	mov eax, [ebp+0x14]
	mov [sBuilderProcPtr], eax
	lea ebx, [ebp-0x20]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x18]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call GetWindowResizeLimits
	test eax, eax
	jnz _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_20
	movss xmm1, dword [ebp-0x18]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	cvttss2si eax, xmm0
	sub eax, 0x1
	jnz _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_20
	movss [ebp-0x20], xmm1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0xc]
	mov [esp], eax
	call SetWindowResizeLimits
	jmp _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE_20
	nop


;MacBuilder::GetControlRef(OpaqueWindowPtr*, long)
_ZN10MacBuilder13GetControlRefEP15OpaqueWindowPtrl:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [ebp-0x14], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	mov edx, eax
	xor eax, eax
	test edx, edx
	cmovz eax, [ebp-0xc]
	leave
	ret
	nop


;MacBuilder::GetTextObject(OpaqueWindowPtr*, long)
_ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [ebp-0x14], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea esi, [ebp-0x14]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor ebx, ebx
	test eax, eax
	cmovz ebx, [ebp-0xc]
	mov [ebp-0xc], ebx
	test ebx, ebx
	jnz _ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl_10
_ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl_20:
	xor eax, eax
_ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl_30:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl_10:
	mov [esp+0x4], esi
	mov [esp], ebx
	call GetControlKind
	test eax, eax
	jnz _ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl_20
	cmp dword [ebp-0x10], 0x68697478
	jnz _ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl_20
	mov [esp], ebx
	call HITextViewGetTXNObject
	jmp _ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl_30


;MacBuilder::ReleaseWindow(OpaqueWindowPtr*)
_ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DisposeWindow
	mov dword [sBuilderProcPtr], 0x0
	leave
	ret
	nop


;MacBuilder::GetControlText(OpaqueWindowPtr*, long, short, char*)
_ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x14]
	movzx edi, word [ebp+0x10]
	mov byte [ebx], 0x0
	mov dword [ebp-0x24], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x0
	lea esi, [ebp-0x1c]
	mov [esp+0x8], esi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor edx, edx
	test eax, eax
	cmovz edx, [ebp-0x1c]
	mov [ebp-0x1c], edx
	test edx, edx
	jz _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc_10
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	movsx eax, di
	sub eax, 0x1
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x74657874
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call GetControlData
	test ax, ax
	jnz _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc_10
	mov eax, [ebp-0x1c]
	mov byte [ebx+eax], 0x0
_ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MacBuilder::RunModalWindow(OpaqueWindowPtr*)
_ZN10MacBuilder14RunModalWindowEP15OpaqueWindowPtr:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	call InitCursor
	mov [esp], ebx
	call ShowWindow
	mov [esp], ebx
	call RunAppModalLoopForWindow
	mov [esp], ebx
	call HideWindow
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp GetWRefCon


;MacBuilder::SetControlText(OpaqueWindowPtr*, long, char const*)
_ZN10MacBuilder14SetControlTextEP15OpaqueWindowPtrlPKc:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x10]
	mov dword [ebp-0x14], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor edx, edx
	test eax, eax
	cmovz edx, [ebp-0xc]
	mov [ebp-0xc], edx
	test edx, edx
	jz _ZN10MacBuilder14SetControlTextEP15OpaqueWindowPtrlPKc_10
	mov [esp+0x10], ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x74657874
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call SetControlData
_ZN10MacBuilder14SetControlTextEP15OpaqueWindowPtrlPKc_10:
	add esp, 0x30
	pop ebx
	pop edi
	pop ebp
	ret
	nop


;MacBuilder::SetWindowTitle(OpaqueWindowPtr*, char const*)
_ZN10MacBuilder14SetWindowTitleEP15OpaqueWindowPtrPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov ebx, eax
	test eax, eax
	jz _ZN10MacBuilder14SetWindowTitleEP15OpaqueWindowPtrPKc_10
	mov [esp+0x4], eax
	mov [esp], esi
	call SetWindowTitleWithCFString
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp CFRelease
_ZN10MacBuilder14SetWindowTitleEP15OpaqueWindowPtrPKc_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MacBuilder::GetControlValue(OpaqueWindowPtr*, long)
_ZN10MacBuilder15GetControlValueEP15OpaqueWindowPtrl:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [ebp-0x14], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor edx, edx
	test eax, eax
	cmovz edx, [ebp-0xc]
	mov [ebp-0xc], edx
	test edx, edx
	jz _ZN10MacBuilder15GetControlValueEP15OpaqueWindowPtrl_10
	mov [esp], edx
	call GetControlValue
	cwde
	leave
	ret
_ZN10MacBuilder15GetControlValueEP15OpaqueWindowPtrl_10:
	xor eax, eax
	leave
	ret
	nop


;MacBuilder::QuitModalWindow(OpaqueWindowPtr*, unsigned long)
_ZN10MacBuilder15QuitModalWindowEP15OpaqueWindowPtrm:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SetWRefCon
	mov [esp], ebx
	call QuitAppModalLoopForWindow
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;MacBuilder::SetControlFocus(OpaqueWindowPtr*, long)
_ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x24], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea esi, [ebp-0x24]
	mov [esp+0x4], esi
	mov [esp], edi
	call GetControlByID
	xor ebx, ebx
	test eax, eax
	cmovz ebx, [ebp-0x1c]
	mov [ebp-0x1c], ebx
	test ebx, ebx
	jz _ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl_10
	mov [esp+0x4], esi
	mov [esp], ebx
	call GetControlKind
	test eax, eax
	jnz _ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl_10
	mov eax, [ebp-0x20]
	cmp eax, 0x65747874
	jz _ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl_20
	cmp eax, 0x65757478
	jnz _ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl_10
_ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl_20:
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], edi
	call SetKeyboardFocus
_ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;MacBuilder::SetControlValue(OpaqueWindowPtr*, long, short)
_ZN10MacBuilder15SetControlValueEP15OpaqueWindowPtrls:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	movzx ebx, word [ebp+0x10]
	mov dword [ebp-0x14], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor edx, edx
	test eax, eax
	cmovz edx, [ebp-0xc]
	mov [ebp-0xc], edx
	test edx, edx
	jz _ZN10MacBuilder15SetControlValueEP15OpaqueWindowPtrls_10
	movsx eax, bx
	mov [esp+0x4], eax
	mov [esp], edx
	call SetControlValue
_ZN10MacBuilder15SetControlValueEP15OpaqueWindowPtrls_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;MacBuilder::SetEditTextHook(OpaqueWindowPtr*, long, unsigned char (*)(OpaqueControlRef*, short), short)
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x10]
	movzx esi, word [ebp+0x14]
	mov dword [ebp-0x24], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor edx, edx
	test eax, eax
	cmovz edx, [ebp-0x1c]
	mov [ebp-0x1c], edx
	mov ebx, edx
	test edx, edx
	jz _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_10
	mov edx, [_ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE20sControlKeyFilterUPP]
	test edx, edx
	jz _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_20
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_70:
	mov dword [esp+0x10], _ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE20sControlKeyFilterUPP
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x666c7472
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SetControlData
	mov eax, [_ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE21sControlValidationUPP]
	test eax, eax
	jz _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_30
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_80:
	mov dword [esp+0x10], _ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE21sControlValidationUPP
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x76616c69
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SetControlData
	test edi, edi
	jz _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_40
	mov [esp+0x4], edi
	mov [esp], ebx
	call SetControlReference
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_60:
	test si, si
	jle _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_50
	movsx eax, si
	mov [esp+0x4], eax
	mov [esp], ebx
	call SetControlMaximum
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_50:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SetControlMaximum
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_40:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SetControlReference
	jmp _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_60
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_20:
	mov dword [esp], _Z13KeyFilterProcP16OpaqueControlRefPsS1_Pt
	call NewControlKeyFilterUPP
	mov [_ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE20sControlKeyFilterUPP], eax
	jmp _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_70
_ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_30:
	mov dword [esp], _Z14ValidationProcP16OpaqueControlRef
	call NewControlEditTextValidationUPP
	mov [_ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE21sControlValidationUPP], eax
	jmp _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs_80
	nop


;MacBuilder::SetControlVisible(OpaqueWindowPtr*, long, unsigned char)
_ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	movzx ebx, byte [ebp+0x10]
	mov dword [ebp-0x14], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor edx, edx
	test eax, eax
	cmovz edx, [ebp-0xc]
	mov [ebp-0xc], edx
	test edx, edx
	jz _ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh_10
	test bl, bl
	jnz _ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh_20
	mov [esp], edx
	call HideControl
_ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh_20:
	mov [esp], edx
	call ShowControl
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;MacBuilder::SetControlFontStyle(OpaqueWindowPtr*, long, short, short)
_ZN10MacBuilder19SetControlFontStyleEP15OpaqueWindowPtrlss:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov dword [ebp-0x34], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x30], eax
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x34]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor edx, edx
	test eax, eax
	cmovz edx, [ebp-0x1c]
	mov [ebp-0x1c], edx
	test edx, edx
	jz _ZN10MacBuilder19SetControlFontStyleEP15OpaqueWindowPtrlss_10
	mov word [ebp-0x34], 0x5
	mov [ebp-0x32], si
	mov [ebp-0x30], di
	mov [esp+0x4], ebx
	mov [esp], edx
	call SetControlFontStyle
_ZN10MacBuilder19SetControlFontStyleEP15OpaqueWindowPtrlss_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MacBuilder::SetupUserPaneControl(OpaqueWindowPtr*, long, void (*)(OpaqueControlRef*, short), short (*)(OpaqueControlRef*, Point, void (*)(OpaqueControlRef*, short)))
_ZN10MacBuilder20SetupUserPaneControlEP15OpaqueWindowPtrlPFvP16OpaqueControlRefsEPFsS3_5PointS5_E:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x14]
	mov dword [ebp-0x2c], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x28], eax
	mov dword [ebp-0x1c], 0x0
	lea esi, [ebp-0x1c]
	mov [esp+0x8], esi
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor ebx, ebx
	test eax, eax
	cmovz ebx, [ebp-0x1c]
	mov [ebp-0x1c], ebx
	test ebx, ebx
	jz _ZN10MacBuilder20SetupUserPaneControlEP15OpaqueWindowPtrlPFvP16OpaqueControlRefsEPFsS3_5PointS5_E_10
	mov eax, [ebp+0x10]
	mov [esp], eax
	call NewControlUserPaneDrawUPP
	mov [ebp-0x1c], eax
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x64726177
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SetControlData
	test edi, edi
	jz _ZN10MacBuilder20SetupUserPaneControlEP15OpaqueWindowPtrlPFvP16OpaqueControlRefsEPFsS3_5PointS5_E_10
	mov dword [esp], _Z19UserPaneHitTestProcP16OpaqueControlRef5Point
	call NewControlUserPaneHitTestUPP
	mov [ebp-0x20], eax
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x68697474
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SetControlData
	mov [esp], edi
	call NewControlUserPaneTrackingUPP
	mov [ebp-0x24], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x7472616b
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SetControlData
_ZN10MacBuilder20SetupUserPaneControlEP15OpaqueWindowPtrlPFvP16OpaqueControlRefsEPFsS3_5PointS5_E_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MacBuilder::SetTextObjectFontStyle(OpaqueWindowPtr*, long, short, short)
_ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movzx edi, word [ebp+0x10]
	movzx eax, word [ebp+0x14]
	mov [ebp-0x48], ax
	mov dword [ebp-0x34], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x30], eax
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea esi, [ebp-0x34]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor ebx, ebx
	test eax, eax
	cmovz ebx, [ebp-0x1c]
	mov [ebp-0x1c], ebx
	test ebx, ebx
	jz _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss_10
	mov [esp+0x4], esi
	mov [esp], ebx
	call GetControlKind
	test eax, eax
	jz _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss_20
_ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss_20:
	cmp dword [ebp-0x30], 0x68697478
	jnz _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss_10
	mov [esp], ebx
	call HITextViewGetTXNObject
	mov edx, eax
	test eax, eax
	jz _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss_10
	mov dword [ebp-0x34], 0x666f6e74
	mov dword [ebp-0x30], 0x2
	movsx eax, di
	mov [ebp-0x2c], eax
	mov dword [ebp-0x28], 0x73697a65
	mov dword [ebp-0x24], 0x2
	movzx eax, word [ebp-0x48]
	shl eax, 0x10
	mov [ebp-0x20], eax
	mov dword [esp+0x10], 0x7fffffff
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov [esp], edx
	call TXNSetTypeAttributes
	jmp _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss_10
	add [eax], al


;MacBuilder::SetEditTextUppercaseHook(OpaqueWindowPtr*, long)
_ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov dword [ebp-0x14], 0x4974656d
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea esi, [ebp-0x14]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlByID
	xor ebx, ebx
	test eax, eax
	cmovz ebx, [ebp-0xc]
	mov [ebp-0xc], ebx
	test ebx, ebx
	jz _ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl_10
	mov dword [ebp-0x14], 0x74657874
	mov dword [ebp-0x10], 0x2
	mov [esp], ebx
	call GetControlEventTarget
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _Z19HandleUppercaseHookP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	mov [esp], eax
	call InstallEventHandler
_ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl_10:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of MacBuilder:
SECTION .data


;Initialized constant data of MacBuilder:
SECTION .rdata


;Zero initialized global or static variables of MacBuilder:
SECTION .bss
sBuilderProcPtr: resb 0x4
_ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE21sControlValidationUPP: resb 0x4
_ZZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEsE20sControlKeyFilterUPP: resb 0x78


;All CFStrings:

STRUC CFString
.isa: RESD 1
.flags: RESD 1
.str: RESD 1
.length: RESD 1
ENDSTRUC

SECTION .rdata
_cfstring_localized:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_localized
AT CFString.length dd 9
IEND




;All cstrings:
SECTION .rdata
_cstring_localized:		db "Localized",0



;All constant floats and doubles:
SECTION .rdata

