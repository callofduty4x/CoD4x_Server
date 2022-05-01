;Imports of mac_syscon:
	extern _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	extern _Z11Com_sprintfPciPKcz
	extern _Z9Sys_PrintPKc
	extern _ZN10MacBuilder14SetControlTextEP15OpaqueWindowPtrlPKc
	extern _ZN14CMacGameEngine4QuitEv
	extern UpdateSystemActivity
	extern SetKeyboardFocus
	extern ShowWindow
	extern _ZN8MacTools10ShowCursorEPK5Point
	extern _ZN10MacDisplay14ReleaseDisplayEv
	extern _ZN10MacGlobals10LockSystemEv
	extern _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	extern CFStringCreateWithCString
	extern SetWindowTitleWithCFString
	extern _ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl
	extern _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss
	extern _ZN10MacBuilder13GetControlRefEP15OpaqueWindowPtrl
	extern _ZN10MacBuilder19SetControlFontStyleEP15OpaqueWindowPtrlss
	extern _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	extern GetHandleSize
	extern TXNSetData
	extern com_dedicated
	extern GetMainEventLoop
	extern InstallEventLoopTimer
	extern strcpy
	extern HideControl
	extern MessageBoxA
	extern TXNSetSelection
	extern TXNShowSelection
	extern TXNClear
	extern PtrAndHand
	extern _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
	extern DisposeHandle
	extern RemoveEventLoopTimer
	extern _Z16Sys_IsMainThreadv

;Exports of mac_syscon:
	global sConsoleEditText
	global sConsoleWindow
	global sConsoleTextView
	global sConsoleData
	global sReturnedText
	global sConsoleText
	global sTimerRef
	global _Z12EditTextHookP16OpaqueControlRefs
	global _Z13TimerCallbackP16__EventLoopTimerPv
	global _ZZ17Conbuf_AppendTextPKcE12s_totalChars
	global _Z15Sys_ShowConsolev
	global _Z16Sys_ConsoleInputv
	global _Z16Sys_SetErrorTextPKc
	global _Z17Conbuf_AppendTextPKc
	global _Z18Sys_DestroyConsolev
	global _Z29Conbuf_AppendTextInMainThreadPKc
	global gConsoleRunning


SECTION .text


;EditTextHook(OpaqueControlRef*, short)
_Z12EditTextHookP16OpaqueControlRefs:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x410
	movzx eax, word [ebp+0xc]
	cmp ax, 0xd
	jz _Z12EditTextHookP16OpaqueControlRefs_10
	cmp ax, 0xa
	jz _Z12EditTextHookP16OpaqueControlRefs_10
	xor eax, eax
	add esp, 0x410
	pop ebx
	pop edi
	pop ebp
	ret
_Z12EditTextHookP16OpaqueControlRefs_10:
	mov dword [esp+0xc], sConsoleText
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x2
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	cmp byte [sConsoleText], 0x0
	jnz _Z12EditTextHookP16OpaqueControlRefs_20
_Z12EditTextHookP16OpaqueControlRefs_30:
	mov eax, 0x1
	add esp, 0x410
	pop ebx
	pop edi
	pop ebp
	ret
_Z12EditTextHookP16OpaqueControlRefs_20:
	mov dword [esp+0xc], sConsoleText
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp], ebx
	call _Z9Sys_PrintPKc
	mov edi, sConsoleText
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov word [ecx+sReturnedText+0x1ff], 0xa
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], 0x2
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call _ZN10MacBuilder14SetControlTextEP15OpaqueWindowPtrlPKc
	jmp _Z12EditTextHookP16OpaqueControlRefs_30
	nop


;BuilderCallback(OpaqueWindowPtr*, unsigned long)
_Z15BuilderCallbackP15OpaqueWindowPtrm:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	cmp dword [ebp+0xc], 0x636c6f73
	jz _Z15BuilderCallbackP15OpaqueWindowPtrm_10
	xor eax, eax
	leave
	ret
_Z15BuilderCallbackP15OpaqueWindowPtrm_10:
	call _ZN14CMacGameEngine4QuitEv
	mov eax, 0x1
	leave
	ret
	nop


;TimerCallback(__EventLoopTimer*, void*)
_Z13TimerCallbackP16__EventLoopTimerPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call UpdateSystemActivity
	leave
	ret


;Sys_ShowConsole()
_Z15Sys_ShowConsolev:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov byte [gConsoleRunning], 0x0
	mov edx, [sConsoleWindow]
	test edx, edx
	jz _Z15Sys_ShowConsolev_10
_Z15Sys_ShowConsolev_70:
	mov dword [esp+0x8], 0xfffffffe
	mov eax, [sConsoleEditText]
	mov [esp+0x4], eax
	mov [esp], edx
	call SetKeyboardFocus
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call ShowWindow
	mov dword [esp], 0x0
	call _ZN8MacTools10ShowCursorEPK5Point
	mov byte [gConsoleRunning], 0x1
	leave
	ret
_Z15Sys_ShowConsolev_10:
	call _ZN10MacDisplay14ReleaseDisplayEv
	call _ZN10MacGlobals10LockSystemEv
	mov dword [esp+0xc], _Z15BuilderCallbackP15OpaqueWindowPtrm
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cfstring_console
	mov dword [esp], _cfstring_console
	call _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	mov [sConsoleWindow], eax
	test eax, eax
	jz _Z15Sys_ShowConsolev_20
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_cod4_console
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov [esp+0x4], eax
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call SetWindowTitleWithCFString
	mov dword [esp+0x4], 0x1
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call _ZN10MacBuilder13GetTextObjectEP15OpaqueWindowPtrl
	mov [sConsoleTextView], eax
	test eax, eax
	jz _Z15Sys_ShowConsolev_30
	mov dword [esp+0xc], 0x9
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x1
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss
_Z15Sys_ShowConsolev_30:
	mov dword [esp+0x4], 0x2
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call _ZN10MacBuilder13GetControlRefEP15OpaqueWindowPtrl
	mov [sConsoleEditText], eax
	test eax, eax
	jz _Z15Sys_ShowConsolev_40
	mov dword [esp+0xc], 0xa
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x2
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call _ZN10MacBuilder19SetControlFontStyleEP15OpaqueWindowPtrlss
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _Z12EditTextHookP16OpaqueControlRefs
	mov dword [esp+0x4], 0x2
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	mov eax, [sConsoleData]
	test eax, eax
	jz _Z15Sys_ShowConsolev_40
	mov [esp], eax
	call GetHandleSize
	mov dword [esp+0x14], 0x7fffffff
	mov dword [esp+0x10], 0x7fffffff
	mov [esp+0xc], eax
	mov eax, [sConsoleData]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x54455854
	mov eax, [sConsoleTextView]
	mov [esp], eax
	call TXNSetData
_Z15Sys_ShowConsolev_40:
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz _Z15Sys_ShowConsolev_50
	mov edx, [eax+0xc]
	test edx, edx
	jz _Z15Sys_ShowConsolev_50
	mov eax, [sTimerRef]
	test eax, eax
	jnz _Z15Sys_ShowConsolev_50
	call GetMainEventLoop
	mov dword [esp+0x1c], sTimerRef
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], _Z13TimerCallbackP16__EventLoopTimerPv
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x10], 0x403e0000
	mov dword [esp+0x4], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp], eax
	call InstallEventLoopTimer
	mov edx, [sConsoleWindow]
	jmp _Z15Sys_ShowConsolev_60
_Z15Sys_ShowConsolev_50:
	mov edx, [sConsoleWindow]
_Z15Sys_ShowConsolev_60:
	test edx, edx
	jnz _Z15Sys_ShowConsolev_70
	leave
	ret
_Z15Sys_ShowConsolev_20:
	mov edx, eax
	jmp _Z15Sys_ShowConsolev_60


;Sys_ConsoleInput()
_Z16Sys_ConsoleInputv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [sConsoleText], 0x0
	jnz _Z16Sys_ConsoleInputv_10
	xor eax, eax
	leave
	ret
_Z16Sys_ConsoleInputv_10:
	mov dword [esp+0x4], sConsoleText
	mov dword [esp], sReturnedText
	call strcpy
	mov byte [sConsoleText], 0x0
	mov eax, sReturnedText
	leave
	ret
	nop


;Sys_SetErrorText(char const*)
_Z16Sys_SetErrorTextPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sConsoleEditText]
	test eax, eax
	jz _Z16Sys_SetErrorTextPKc_10
	mov [esp], eax
	call HideControl
_Z16Sys_SetErrorTextPKc_10:
	mov dword [esp+0xc], 0x10
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call MessageBoxA
	leave
	ret


;Conbuf_AppendText(char const*)
_Z17Conbuf_AppendTextPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x802c
	mov edx, [ebp+0x8]
	test edx, edx
	jz _Z17Conbuf_AppendTextPKc_10
	cmp byte [edx], 0x0
	jnz _Z17Conbuf_AppendTextPKc_20
_Z17Conbuf_AppendTextPKc_10:
	add esp, 0x802c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Conbuf_AppendTextPKc_20:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x3fff
	ja _Z17Conbuf_AppendTextPKc_30
	mov edi, edx
_Z17Conbuf_AppendTextPKc_140:
	lea edx, [ebp-0x8018]
	lea esi, [ebp-0x1b]
	movzx eax, byte [edi]
	test al, al
	jz _Z17Conbuf_AppendTextPKc_40
_Z17Conbuf_AppendTextPKc_70:
	cmp edx, esi
	ja _Z17Conbuf_AppendTextPKc_40
	cmp al, 0xa
	jz _Z17Conbuf_AppendTextPKc_50
	cmp al, 0xd
	jnz _Z17Conbuf_AppendTextPKc_60
	mov byte [edx], 0xd
	mov byte [edx+0x1], 0xa
	add edx, 0x2
	lea ecx, [edi+0x1]
	mov edi, ecx
_Z17Conbuf_AppendTextPKc_110:
	movzx eax, byte [edi]
	test al, al
	jnz _Z17Conbuf_AppendTextPKc_70
_Z17Conbuf_AppendTextPKc_40:
	mov byte [edx], 0x0
	mov ebx, edx
	lea eax, [ebp-0x8018]
	sub ebx, eax
	mov eax, ebx
	add eax, [_ZZ17Conbuf_AppendTextPKcE12s_totalChars]
	mov [_ZZ17Conbuf_AppendTextPKcE12s_totalChars], eax
	mov ecx, [sConsoleWindow]
	test ecx, ecx
	jz _Z17Conbuf_AppendTextPKc_80
	mov edx, [sConsoleTextView]
	test edx, edx
	jz _Z17Conbuf_AppendTextPKc_10
	cmp eax, 0x4000
	ja _Z17Conbuf_AppendTextPKc_90
_Z17Conbuf_AppendTextPKc_150:
	mov dword [esp+0x14], 0x7fffffff
	mov dword [esp+0x10], 0x7fffffff
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x8018]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0xc], ecx
	lea eax, [ebp-0x8018]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x54455854
	mov [esp], edx
	call TXNSetData
	test eax, eax
	jnz _Z17Conbuf_AppendTextPKc_10
	mov dword [esp+0x8], 0x7fffffff
	mov dword [esp+0x4], 0x7fffffff
	mov eax, [sConsoleTextView]
	mov [esp], eax
	call TXNSetSelection
	mov dword [esp+0x4], 0x1
	mov eax, [sConsoleTextView]
	mov [esp], eax
	call TXNShowSelection
	add esp, 0x802c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Conbuf_AppendTextPKc_60:
	cmp al, 0x5e
	jz _Z17Conbuf_AppendTextPKc_100
	lea ecx, [edi+0x1]
_Z17Conbuf_AppendTextPKc_130:
	mov [edx], al
	add edx, 0x1
	mov edi, ecx
	jmp _Z17Conbuf_AppendTextPKc_110
_Z17Conbuf_AppendTextPKc_50:
	lea ecx, [edi+0x1]
	cmp byte [edi+0x1], 0xd
	jz _Z17Conbuf_AppendTextPKc_120
	mov byte [edx], 0xd
	mov byte [edx+0x1], 0xa
	add edx, 0x2
	mov edi, ecx
	jmp _Z17Conbuf_AppendTextPKc_110
_Z17Conbuf_AppendTextPKc_100:
	lea ecx, [edi+0x1]
	movzx ebx, byte [edi+0x1]
	test bl, bl
	jz _Z17Conbuf_AppendTextPKc_130
	cmp bl, 0x5e
	jz _Z17Conbuf_AppendTextPKc_130
	cmp bl, 0x2f
	jle _Z17Conbuf_AppendTextPKc_130
	cmp bl, 0x39
	jg _Z17Conbuf_AppendTextPKc_130
	lea ecx, [edi+0x2]
	mov edi, ecx
	jmp _Z17Conbuf_AppendTextPKc_110
_Z17Conbuf_AppendTextPKc_120:
	mov byte [edx], 0xd
	mov byte [edx+0x1], 0xa
	add edx, 0x2
	lea ecx, [edi+0x2]
	mov edi, ecx
	jmp _Z17Conbuf_AppendTextPKc_110
_Z17Conbuf_AppendTextPKc_30:
	lea edi, [edx+eax-0x3fff]
	jmp _Z17Conbuf_AppendTextPKc_140
_Z17Conbuf_AppendTextPKc_90:
	mov dword [esp+0x8], 0x7fffffff
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call TXNSetSelection
	mov eax, [sConsoleTextView]
	mov [esp], eax
	call TXNClear
	mov dword [esp+0xc], 0x9
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x1
	mov eax, [sConsoleWindow]
	mov [esp], eax
	call _ZN10MacBuilder22SetTextObjectFontStyleEP15OpaqueWindowPtrlss
	mov [_ZZ17Conbuf_AppendTextPKcE12s_totalChars], ebx
	mov edx, [sConsoleTextView]
	jmp _Z17Conbuf_AppendTextPKc_150
_Z17Conbuf_AppendTextPKc_80:
	mov edx, [sConsoleData]
	test edx, edx
	jz _Z17Conbuf_AppendTextPKc_10
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x8018]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	lea eax, [ebp-0x8018]
	mov [esp], eax
	call PtrAndHand
	jmp _Z17Conbuf_AppendTextPKc_10


;Sys_DestroyConsole()
_Z18Sys_DestroyConsolev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sConsoleWindow]
	test eax, eax
	jz _Z18Sys_DestroyConsolev_10
	mov [esp], eax
	call _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
	mov dword [sConsoleWindow], 0x0
_Z18Sys_DestroyConsolev_10:
	mov eax, [sConsoleData]
	test eax, eax
	jz _Z18Sys_DestroyConsolev_20
	mov [esp], eax
	call DisposeHandle
	mov dword [sConsoleData], 0x0
_Z18Sys_DestroyConsolev_20:
	mov eax, [sTimerRef]
	test eax, eax
	jz _Z18Sys_DestroyConsolev_30
	mov [esp], eax
	call RemoveEventLoopTimer
	mov dword [sTimerRef], 0x0
_Z18Sys_DestroyConsolev_30:
	leave
	ret
	nop


;Conbuf_AppendTextInMainThread(char const*)
_Z29Conbuf_AppendTextInMainThreadPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, [sConsoleWindow]
	test eax, eax
	jz _Z29Conbuf_AppendTextInMainThreadPKc_10
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z29Conbuf_AppendTextInMainThreadPKc_20
_Z29Conbuf_AppendTextInMainThreadPKc_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z29Conbuf_AppendTextInMainThreadPKc_20:
	mov [ebp+0x8], ebx
	add esp, 0x4
	pop ebx
	pop ebp
	jmp _Z17Conbuf_AppendTextPKc
	nop


;Initialized global or static variables of mac_syscon:
SECTION .data
gConsoleRunning: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of mac_syscon:
SECTION .rdata


;Zero initialized global or static variables of mac_syscon:
SECTION .bss
sConsoleEditText: resb 0x4
sConsoleWindow: resb 0x4
sConsoleTextView: resb 0x4
sConsoleData: resb 0x14
sReturnedText: resb 0x200
sConsoleText: resb 0x200
sTimerRef: resb 0x4
_ZZ17Conbuf_AppendTextPKcE12s_totalChars: resb 0x5c


;All CFStrings:

STRUC CFString
.isa: RESD 1
.flags: RESD 1
.str: RESD 1
.length: RESD 1
ENDSTRUC

SECTION .rdata
_cfstring_console:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_console
AT CFString.length dd 7
IEND




;All cstrings:
SECTION .rdata
_cstring_s:		db "]%s",0ah,0
_cstring_null:		db 0
_cstring_cod4_console:		db "CoD4 Console",0
_cstring_console:		db "Console",0



;All constant floats and doubles:
SECTION .rdata

