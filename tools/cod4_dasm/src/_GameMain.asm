;Imports of GameMain:
	extern _ZN14CMacGameEngineD2Ev
	extern _ZN14CMacGameEngine4QuitEv
	extern QuitApplicationEventLoop
	extern __cxa_guard_acquire
	extern _ZN14CMacGameEngineC2Ev
	extern __cxa_guard_release
	extern __cxa_atexit
	extern __cxa_guard_abort
	extern _Unwind_Resume
	extern _ZN14CMacGameEngine10InitializeEv
	extern DRIsWrapped
	extern _ZN14MacPreferences9GetStringEPKcPciS1_
	extern _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	extern _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	extern _ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl
	extern _ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h
	extern _ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl
	extern _ZN10MacBuilder14RunModalWindowEP15OpaqueWindowPtr
	extern _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	extern strcpy
	extern strcat
	extern _Z6struprPc
	extern sprintf
	extern _Z10I_strnicmpPKcS0_i
	extern _ZN14MacPreferences9PutStringEPKcS1_
	extern _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
	extern DRInitializeWrapAPI
	extern GetVariable
	extern VerifyKey
	extern DRGetLastError
	extern GetMainEventLoop
	extern InstallEventLoopTimer
	extern memmove
	extern _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber
	extern _ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber
	extern GetCurrentEventTime
	extern _ZN8MacTools5SleepEm
	extern _ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2_
	extern GetCurrentProcess
	extern SetFrontProcess
	extern exit
	extern _ZN14CMacGameEngine6DoQuitEv
	extern _ZNK14CMacGameEngine10IsQuittingEv
	extern _Z10Com_Quit_fv
	extern _ZN14CMacGameEngine7MacMainEv
	extern _ZNSs6appendEPKcm
	extern strstr
	extern _ZN10MacDisplay13GetMainWindowEv
	extern g_wv
	extern WinMain
	extern _ZN10MacDisplay12IsWindowModeEv
	extern _ZN9__gnu_cxx18__exchange_and_addEPVii
	extern _ZNSs4_Rep10_M_destroyERKSaIcE
	extern _ZdlPv
	extern _ZTI14CMacGameEngine
	extern _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef
	extern _ZN17CCallOfDutyEngine11DoMouseDownEt5Pointmm
	extern _ZN17CCallOfDutyEngine9DoMouseUpEt5Pointmm
	extern _ZN17CCallOfDutyEngine12DoMouseMovedE5PointS0_m
	extern _ZN17CCallOfDutyEngine12DoMouseWheelEl5Pointm
	extern _ZN17CCallOfDutyEngine9DoKeyDownEhm
	extern _ZN17CCallOfDutyEngine7DoKeyUpEhm
	extern _ZN17CCallOfDutyEngine11DoTextInputEt
	extern _ZN17CCallOfDutyEngine10DoActivateEv
	extern _ZN17CCallOfDutyEngine12DoDeactivateEv
	extern _ZN14CMacGameEngine15IsQuitAvailableEv

;Exports of GameMain:
	global _ZGVZ16GetMacGameEnginevE13theGameEngine
	global _ZZ16GetMacGameEnginevE13theGameEngine
	global _Z15ScreenSleepProcP16__EventLoopTimerPv
	global _Z16GetMacGameEnginev
	global _ZN17CCallOfDutyEngine10InitializeEv
	global _ZN17CCallOfDutyEngine19WaitForParentToQuitEv
	global _ZN17CCallOfDutyEngine6DoQuitEv
	global _ZN17CCallOfDutyEngine7MacMainEv
	global _ZN17CCallOfDutyEngine8GameMainEv
	global _ZN17CCallOfDutyEngineD0Ev
	global _ZN17CCallOfDutyEngineD1Ev
	global _ZTI17CCallOfDutyEngine
	global _ZTV17CCallOfDutyEngine


SECTION .text


;__tcf_0
__tcf_0:
	push ebp
	mov ebp, esp
	mov dword [_ZZ16GetMacGameEnginevE13theGameEngine], _ZTV17CCallOfDutyEngine+0x8
	mov dword [ebp+0x8], _ZZ16GetMacGameEnginevE13theGameEngine
	pop ebp
	jmp _ZN14CMacGameEngineD2Ev


;ScreenSleepProc(__EventLoopTimer*, void*)
_Z15ScreenSleepProcP16__EventLoopTimerPv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _ZN14CMacGameEngine4QuitEv
	leave
	jmp QuitApplicationEventLoop
	nop


;GetMacGameEngine()
_Z16GetMacGameEnginev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	cmp byte [_ZGVZ16GetMacGameEnginevE13theGameEngine], 0x0
	jz _Z16GetMacGameEnginev_10
_Z16GetMacGameEnginev_20:
	mov eax, _ZZ16GetMacGameEnginevE13theGameEngine
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z16GetMacGameEnginev_10:
	mov dword [esp], _ZGVZ16GetMacGameEnginevE13theGameEngine
	call __cxa_guard_acquire
	test eax, eax
	jz _Z16GetMacGameEnginev_20
	mov dword [esp], _ZZ16GetMacGameEnginevE13theGameEngine
	call _ZN14CMacGameEngineC2Ev
	mov dword [_ZZ16GetMacGameEnginevE13theGameEngine], _ZTV17CCallOfDutyEngine+0x8
	mov dword [esp], _ZGVZ16GetMacGameEnginevE13theGameEngine
	call __cxa_guard_release
	mov eax, [0xd5cc00c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_0
	call __cxa_atexit
	mov eax, _ZZ16GetMacGameEnginevE13theGameEngine
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	mov ebx, eax
	mov dword [esp], _ZGVZ16GetMacGameEnginevE13theGameEngine
	call __cxa_guard_abort
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CCallOfDutyEngine::Initialize()
_ZN17CCallOfDutyEngine10InitializeEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov ebx, [ebp+0x8]
	mov dword [ebx+0x2c], 0x0
	mov [esp], ebx
	call _ZN14CMacGameEngine10InitializeEv
	test al, al
	jnz _ZN17CCallOfDutyEngine10InitializeEv_10
_ZN17CCallOfDutyEngine10InitializeEv_120:
	xor eax, eax
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN17CCallOfDutyEngine10InitializeEv_10:
	mov [esp], ebx
	call _ZN17CCallOfDutyEngine19WaitForParentToQuitEv
	call DRIsWrapped
	test al, al
	jnz _ZN17CCallOfDutyEngine10InitializeEv_20
_ZN17CCallOfDutyEngine10InitializeEv_130:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x80
	lea eax, [ebp-0xa2]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_codkey
	call _ZN14MacPreferences9GetStringEPKcPciS1_
	test al, al
	jz _ZN17CCallOfDutyEngine10InitializeEv_30
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0xa2]
	repne scasb
	cmp ecx, 0xffffffea
	jz _ZN17CCallOfDutyEngine10InitializeEv_40
_ZN17CCallOfDutyEngine10InitializeEv_30:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cfstring_game
	mov dword [esp], _cfstring_keycode
	call _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	mov esi, eax
	test eax, eax
	jz _ZN17CCallOfDutyEngine10InitializeEv_40
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], esi
	call _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x5
	mov [esp], esi
	call _ZN10MacBuilder15SetEditTextHookEP15OpaqueWindowPtrlPFhP16OpaqueControlRefsEs
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call _ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl
	mov dword [esp+0x4], 0x3
	mov [esp], esi
	call _ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call _ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl
	mov dword [esp+0x4], 0x5
	mov [esp], esi
	call _ZN10MacBuilder24SetEditTextUppercaseHookEP15OpaqueWindowPtrl
	jmp _ZN17CCallOfDutyEngine10InitializeEv_50
_ZN17CCallOfDutyEngine10InitializeEv_70:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cfstring_badkeycode
	call _ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h
_ZN17CCallOfDutyEngine10InitializeEv_50:
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _ZN10MacBuilder15SetControlFocusEP15OpaqueWindowPtrl
	mov [esp], esi
	call _ZN10MacBuilder14RunModalWindowEP15OpaqueWindowPtr
	mov ebx, eax
	cmp eax, 0x6f6b2020
	jnz _ZN17CCallOfDutyEngine10InitializeEv_60
	lea eax, [ebp-0x1d]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	lea eax, [ebp-0xa2]
	mov [esp], eax
	call strcpy
	lea eax, [ebp-0x1d]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	lea eax, [ebp-0xa2]
	mov [esp], eax
	call strcat
	lea eax, [ebp-0x1d]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], 0x3
	mov [esp], esi
	call _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	lea eax, [ebp-0xa2]
	mov [esp], eax
	call strcat
	lea eax, [ebp-0x1d]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	lea eax, [ebp-0xa2]
	mov [esp], eax
	call strcat
	lea eax, [ebp-0x1d]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], 0x5
	mov [esp], esi
	call _ZN10MacBuilder14GetControlTextEP15OpaqueWindowPtrlsPc
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	lea edi, [ebp-0xa2]
	repne scasb
	cmp ecx, 0xffffffee
	jnz _ZN17CCallOfDutyEngine10InitializeEv_70
	mov ecx, edx
	lea edi, [ebp-0x1d]
	repne scasb
	cmp ecx, 0xfffffffa
	jnz _ZN17CCallOfDutyEngine10InitializeEv_70
	lea eax, [ebp-0xa2]
	mov [esp], eax
	call _Z6struprPc
	lea eax, [ebp-0x1d]
	mov [esp], eax
	call _Z6struprPc
	xor edx, edx
	xor ecx, ecx
_ZN17CCallOfDutyEngine10InitializeEv_110:
	movsx eax, byte [ecx+ebp-0xa2]
	xor edx, eax
	mov eax, 0x8
	jmp _ZN17CCallOfDutyEngine10InitializeEv_80
_ZN17CCallOfDutyEngine10InitializeEv_100:
	shr edx, 1
	xor edx, 0xa001
	sub eax, 0x1
	jz _ZN17CCallOfDutyEngine10InitializeEv_90
_ZN17CCallOfDutyEngine10InitializeEv_80:
	test dl, 0x1
	jnz _ZN17CCallOfDutyEngine10InitializeEv_100
	shr edx, 1
	sub eax, 0x1
	jnz _ZN17CCallOfDutyEngine10InitializeEv_80
_ZN17CCallOfDutyEngine10InitializeEv_90:
	add ecx, 0x1
	cmp ecx, 0x10
	jnz _ZN17CCallOfDutyEngine10InitializeEv_110
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_04x
	lea eax, [ebp-0x22]
	mov [esp], eax
	call sprintf
	mov dword [esp+0x8], 0x4
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	lea eax, [ebp-0x22]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _ZN17CCallOfDutyEngine10InitializeEv_70
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	lea eax, [ebp-0xa2]
	mov [esp], eax
	call strcat
	lea eax, [ebp-0xa2]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_codkey
	call _ZN14MacPreferences9PutStringEPKcS1_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cfstring_goodkeycode
	call _ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h
	mov ebx, 0x6f6b2020
_ZN17CCallOfDutyEngine10InitializeEv_60:
	mov [esp], esi
	call _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
	cmp ebx, 0x6f6b2020
	jnz _ZN17CCallOfDutyEngine10InitializeEv_120
_ZN17CCallOfDutyEngine10InitializeEv_40:
	mov eax, 0x1
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN17CCallOfDutyEngine10InitializeEv_20:
	call DRInitializeWrapAPI
	mov dword [esp+0x8], 0x80
	lea eax, [ebp-0xa2]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_altusername
	call GetVariable
	test eax, eax
	jz _ZN17CCallOfDutyEngine10InitializeEv_130
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0xa2]
	repne scasb
	cmp ecx, 0xffffffe6
	jz _ZN17CCallOfDutyEngine10InitializeEv_140
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call VerifyKey
	test al, al
	jz _ZN17CCallOfDutyEngine10InitializeEv_130
	call DRGetLastError
	cmp eax, 0x701
	jz _ZN17CCallOfDutyEngine10InitializeEv_130
	call GetMainEventLoop
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], ebx
	mov dword [esp+0x14], _Z15ScreenSleepProcP16__EventLoopTimerPv
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp+0x8], 0x409c2000
	mov [esp], eax
	call InstallEventLoopTimer
	jmp _ZN17CCallOfDutyEngine10InitializeEv_130
_ZN17CCallOfDutyEngine10InitializeEv_140:
	mov dword [esp+0x8], 0x4
	lea eax, [ebp-0x9d]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9e]
	mov [esp], eax
	call memmove
	mov dword [esp+0x8], 0x4
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9a]
	mov [esp], eax
	call memmove
	mov dword [esp+0x8], 0x4
	lea eax, [ebp-0x93]
	mov [esp+0x4], eax
	lea eax, [ebp-0x96]
	mov [esp], eax
	call memmove
	mov byte [ebp-0x92], 0x0
	lea eax, [ebp-0x8e]
	mov [esp+0x4], eax
	lea esi, [ebp-0x22]
	mov [esp], esi
	call strcpy
	lea eax, [ebp-0xa2]
	mov [esp], eax
	call _Z6struprPc
	mov [esp], esi
	call _Z6struprPc
	xor edx, edx
	mov ecx, 0x1
_ZN17CCallOfDutyEngine10InitializeEv_180:
	movsx eax, byte [ecx+ebp-0xa3]
	xor edx, eax
	mov eax, 0x8
	jmp _ZN17CCallOfDutyEngine10InitializeEv_150
_ZN17CCallOfDutyEngine10InitializeEv_170:
	shr edx, 1
	xor edx, 0xa001
	sub eax, 0x1
	jz _ZN17CCallOfDutyEngine10InitializeEv_160
_ZN17CCallOfDutyEngine10InitializeEv_150:
	test dl, 0x1
	jnz _ZN17CCallOfDutyEngine10InitializeEv_170
	shr edx, 1
	sub eax, 0x1
	jnz _ZN17CCallOfDutyEngine10InitializeEv_150
_ZN17CCallOfDutyEngine10InitializeEv_160:
	add ecx, 0x1
	cmp ecx, 0x11
	jnz _ZN17CCallOfDutyEngine10InitializeEv_180
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_04x
	lea ebx, [ebp-0x1d]
	mov [esp], ebx
	call sprintf
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _ZN17CCallOfDutyEngine10InitializeEv_130
	mov [esp+0x4], esi
	lea eax, [ebp-0xa2]
	mov [esp], eax
	call strcat
	lea eax, [ebp-0xa2]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_codkey
	call _ZN14MacPreferences9PutStringEPKcS1_
	jmp _ZN17CCallOfDutyEngine10InitializeEv_130
	nop


;CCallOfDutyEngine::WaitForParentToQuit()
_ZN17CCallOfDutyEngine19WaitForParentToQuitEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	lea esi, [ebp-0x10]
	mov [esp+0x4], esi
	mov dword [esp], 0x43443453
	call _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber
	mov ebx, eax
	test al, al
	jnz _ZN17CCallOfDutyEngine19WaitForParentToQuitEv_10
_ZN17CCallOfDutyEngine19WaitForParentToQuitEv_70:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_ZN17CCallOfDutyEngine19WaitForParentToQuitEv_10:
	mov [esp], esi
	call _ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber
	call GetCurrentEventTime
	fstp qword [ebp-0x20]
	movsd xmm0, qword [ebp-0x20]
	addsd xmm0, [_double_6_00000000]
	movsd [ebp-0x20], xmm0
	jmp _ZN17CCallOfDutyEngine19WaitForParentToQuitEv_20
_ZN17CCallOfDutyEngine19WaitForParentToQuitEv_40:
	mov [esp+0x4], esi
	mov dword [esp], 0x43443453
	call _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber
	mov ebx, eax
	test al, al
	jz _ZN17CCallOfDutyEngine19WaitForParentToQuitEv_30
	mov dword [esp], 0x3e8
	call _ZN8MacTools5SleepEm
_ZN17CCallOfDutyEngine19WaitForParentToQuitEv_20:
	call GetCurrentEventTime
	fstp qword [ebp-0x28]
	movsd xmm0, qword [ebp-0x20]
	ucomisd xmm0, [ebp-0x28]
	ja _ZN17CCallOfDutyEngine19WaitForParentToQuitEv_40
	test bl, bl
	jz _ZN17CCallOfDutyEngine19WaitForParentToQuitEv_30
_ZN17CCallOfDutyEngine19WaitForParentToQuitEv_60:
	mov dword [esp+0x4], _cfstring_pleasequitsp
	mov dword [esp], _cfstring_cannotstartmp
	call _ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2_
	test al, al
	jz _ZN17CCallOfDutyEngine19WaitForParentToQuitEv_50
	mov [esp+0x4], esi
	mov dword [esp], 0x43443453
	call _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber
	test al, al
	jnz _ZN17CCallOfDutyEngine19WaitForParentToQuitEv_60
_ZN17CCallOfDutyEngine19WaitForParentToQuitEv_30:
	mov [esp], esi
	call GetCurrentProcess
	test ax, ax
	jnz _ZN17CCallOfDutyEngine19WaitForParentToQuitEv_70
	mov [esp], esi
	call SetFrontProcess
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_ZN17CCallOfDutyEngine19WaitForParentToQuitEv_50:
	mov dword [esp], 0x0
	call exit


;CCallOfDutyEngine::DoQuit()
_ZN17CCallOfDutyEngine6DoQuitEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _ZN14CMacGameEngine6DoQuitEv
	mov [esp], ebx
	call _ZNK14CMacGameEngine10IsQuittingEv
	test al, al
	jnz _ZN17CCallOfDutyEngine6DoQuitEv_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN17CCallOfDutyEngine6DoQuitEv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Com_Quit_fv


;CCallOfDutyEngine::MacMain()
_ZN17CCallOfDutyEngine7MacMainEv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _ZN14CMacGameEngine7MacMainEv
	nop


;CCallOfDutyEngine::GameMain()
_ZN17CCallOfDutyEngine8GameMainEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov eax, [0xd5cc01c]
	mov [ebp-0x2c], eax
	add eax, 0xc
	mov [ebp-0x20], eax
	mov edx, [esi+0x4]
	test edx, edx
	jle _ZN17CCallOfDutyEngine8GameMainEv_10
	xor ebx, ebx
_ZN17CCallOfDutyEngine8GameMainEv_20:
	lea eax, [ebx*4]
	add eax, [esi+0x8]
	mov edx, [eax]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZNSs6appendEPKcm
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_space
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _ZNSs6appendEPKcm
	add ebx, 0x1
	cmp ebx, [esi+0x4]
	jl _ZN17CCallOfDutyEngine8GameMainEv_20
	mov eax, [ebp-0x20]
_ZN17CCallOfDutyEngine8GameMainEv_10:
	mov dword [esp+0x4], _cstring_r_fullscreen
	mov [esp], eax
	call strstr
	test eax, eax
	jz _ZN17CCallOfDutyEngine8GameMainEv_30
_ZN17CCallOfDutyEngine8GameMainEv_60:
	call _ZN10MacDisplay13GetMainWindowEv
	mov edx, g_wv
	mov [edx+0x8], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xffffffff
	call WinMain
	mov ebx, [ebp-0x20]
	sub ebx, 0xc
	cmp [ebp-0x2c], ebx
	jnz _ZN17CCallOfDutyEngine8GameMainEv_40
_ZN17CCallOfDutyEngine8GameMainEv_70:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN17CCallOfDutyEngine8GameMainEv_30:
	call _ZN10MacDisplay12IsWindowModeEv
	test al, al
	jz _ZN17CCallOfDutyEngine8GameMainEv_50
	mov dword [esp+0x8], 0x13
	mov dword [esp+0x4], _cstring_set_r_fullscreen
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZNSs6appendEPKcm
	jmp _ZN17CCallOfDutyEngine8GameMainEv_60
_ZN17CCallOfDutyEngine8GameMainEv_50:
	mov dword [esp+0x8], 0x13
	mov dword [esp+0x4], _cstring_set_r_fullscreen1
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZNSs6appendEPKcm
	jmp _ZN17CCallOfDutyEngine8GameMainEv_60
_ZN17CCallOfDutyEngine8GameMainEv_40:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN17CCallOfDutyEngine8GameMainEv_70
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN17CCallOfDutyEngine8GameMainEv_70
	mov ebx, eax
	mov eax, [ebp-0x20]
	lea esi, [eax-0xc]
	cmp [ebp-0x2c], esi
	jnz _ZN17CCallOfDutyEngine8GameMainEv_80
_ZN17CCallOfDutyEngine8GameMainEv_90:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	jmp _ZN17CCallOfDutyEngine8GameMainEv_90
_ZN17CCallOfDutyEngine8GameMainEv_80:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN17CCallOfDutyEngine8GameMainEv_90
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN17CCallOfDutyEngine8GameMainEv_90
	add [eax], al


;CCallOfDutyEngine::~CCallOfDutyEngine()
_ZN17CCallOfDutyEngineD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV17CCallOfDutyEngine+0x8
	mov [esp], ebx
	call _ZN14CMacGameEngineD2Ev
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv
	nop


;CCallOfDutyEngine::~CCallOfDutyEngine()
_ZN17CCallOfDutyEngineD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV17CCallOfDutyEngine+0x8
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN14CMacGameEngineD2Ev
	nop


;Initialized global or static variables of GameMain:
SECTION .data


;Initialized constant data of GameMain:
SECTION .rdata
;VTypeInfoTable for CCallOfDutyEngine:
_ZTI17CCallOfDutyEngine: dd 0x8, _cstring_17ccallofdutyeng, _ZTI14CMacGameEngine, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CCallOfDutyEngine:
_ZTV17CCallOfDutyEngine: dd 0x0, _ZTI17CCallOfDutyEngine, _ZN17CCallOfDutyEngineD1Ev, _ZN17CCallOfDutyEngineD0Ev, _ZN17CCallOfDutyEngine10InitializeEv, _ZN17CCallOfDutyEngine7MacMainEv, _ZN17CCallOfDutyEngine8GameMainEv, _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef, _ZN17CCallOfDutyEngine11DoMouseDownEt5Pointmm, _ZN17CCallOfDutyEngine9DoMouseUpEt5Pointmm, _ZN17CCallOfDutyEngine12DoMouseMovedE5PointS0_m, _ZN17CCallOfDutyEngine12DoMouseWheelEl5Pointm, _ZN17CCallOfDutyEngine9DoKeyDownEhm, _ZN17CCallOfDutyEngine7DoKeyUpEhm, _ZN17CCallOfDutyEngine11DoTextInputEt, _ZN17CCallOfDutyEngine10DoActivateEv, _ZN17CCallOfDutyEngine12DoDeactivateEv, _ZN14CMacGameEngine15IsQuitAvailableEv, _ZN17CCallOfDutyEngine6DoQuitEv, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of GameMain:
SECTION .bss
_ZGVZ16GetMacGameEnginevE13theGameEngine: resb 0x20
_ZZ16GetMacGameEnginevE13theGameEngine: resb 0x60


;All CFStrings:

STRUC CFString
.isa: RESD 1
.flags: RESD 1
.str: RESD 1
.length: RESD 1
ENDSTRUC

SECTION .rdata
_cfstring_game:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_game
AT CFString.length dd 4
IEND

_cfstring_keycode:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_keycode
AT CFString.length dd 7
IEND

_cfstring_badkeycode:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_badkeycode
AT CFString.length dd 12
IEND

_cfstring_goodkeycode:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_goodkeycode
AT CFString.length dd 13
IEND

_cfstring_pleasequitsp:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_pleasequitsp
AT CFString.length dd 14
IEND

_cfstring_cannotstartmp:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_cannotstartmp
AT CFString.length dd 15
IEND




;All cstrings:
SECTION .rdata
_cstring_codkey:		db "codkey",0
_cstring_04x:		db "%04x",0
_cstring_altusername:		db "ALTUSERNAME",0
_cstring_space:		db " ",0
_cstring_r_fullscreen:		db "r_fullscreen",0
_cstring_set_r_fullscreen:		db "+set r_fullscreen 0",0
_cstring_set_r_fullscreen1:		db "+set r_fullscreen 1",0
_cstring_17ccallofdutyeng:		db "17CCallOfDutyEngine",0
_cstring_game:		db "Game",0
_cstring_keycode:		db "KeyCode",0
_cstring_badkeycode:		db "bad-key-code",0
_cstring_goodkeycode:		db "good-key-code",0
_cstring_pleasequitsp:		db "please-quit-sp",0
_cstring_cannotstartmp:		db "cannot-start-mp",0



;All constant floats and doubles:
SECTION .rdata
_double_6_00000000:		dq 0x4018000000000000	; 6

