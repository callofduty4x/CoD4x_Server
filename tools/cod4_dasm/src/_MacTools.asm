;Imports of MacTools:
	extern _Znam
	extern FSOpenIterator
	extern memcpy
	extern _ZdlPv
	extern _ZdaPv
	extern FSGetCatalogInfoBulk
	extern FSCloseIterator
	extern LSCopyItemInfoForRef
	extern _Unwind_Resume
	extern CGCursorIsVisible
	extern InitCursor
	extern HideCursor
	extern GetCursor
	extern SetCursor
	extern pthread_main_np
	extern _ZN10MacDisplay12IsFullscreenEv
	extern _ZN10MacGlobals10LockSystemEv
	extern CreateStandardAlert
	extern RunStandardAlert
	extern _ZN10MacGlobals12UnlockSystemEv
	extern CFStringCreateWithCString
	extern CFRelease
	extern GetStandardAlertDefaultParams
	extern _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	extern CGSetLocalEventsSuppressionInterval
	extern CGWarpMouseCursorPosition
	extern GetNextProcess
	extern GetProcessInformation
	extern CFDictionaryGetValue
	extern CFNumberGetValue
	extern lround
	extern IORegistryEntryCreateCFProperty
	extern CFDataGetBytePtr
	extern strcpy
	extern _ZN9CAETargetC1ERK19ProcessSerialNumber
	extern _ZN8CAEEventC1Ev
	extern _ZN8CAEEvent6CreateER9CAETargetmm
	extern _ZN8CAEEvent4SendEv
	extern _ZN8CAEEventD1Ev
	extern _ZN9CAETargetD1Ev
	extern __cxa_begin_catch
	extern __cxa_end_catch
	extern CFBundleGetMainBundle
	extern CFBundleCopyLocalizedString
	extern CreateEvent
	extern GetWindowEventTarget
	extern SetEventParameter
	extern GetMainEventQueue
	extern PostEventToQueue
	extern ReleaseEvent
	extern UpTime
	extern AddDurationToAbsolute
	extern MPDelayUntil
	extern _Znwm
	extern _ZSt17__throw_bad_allocv
	extern _ZSt20__throw_length_errorPKc

;Exports of MacTools:
	global _Z20SearchForApplicationRK5FSRefmhRS_
	global _ZN12StShowCursorC1Ev
	global _ZN12StShowCursorD1Ev
	global _ZN8MacTools10HideCursorEv
	global _ZN8MacTools10ShowCursorEPK5Point
	global _ZN8MacTools11SetCursorIDEs
	global _ZN8MacTools12MessageAlertEPK10__CFStringS2_h
	global _ZN8MacTools12MessageAlertEPK10__CFStringh
	global _ZN8MacTools12MessageAlertEPKcS1_h
	global _ZN8MacTools13QuestionAlertEPK10__CFStringS2_
	global _ZN8MacTools13QuestionAlertEPKcS1_
	global _ZN8MacTools15FindApplicationEmRK5FSRefRS0_
	global _ZN8MacTools15IsCursorVisibleEv
	global _ZN8MacTools17PinCursorPositionER5Point
	global _ZN8MacTools17SetCursorPositionERK5Point
	global _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber
	global _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	global _ZN8MacTools18GetIORegistryValueEjPK10__CFStringPc
	global _ZN8MacTools18GetIORegistryValueEjPK10__CFStringRm
	global _ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber
	global _ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h
	global _ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2_
	global _ZN8MacTools24PostPrivateEventToWindowEP15OpaqueWindowPtrmmm
	global _ZN8MacTools5SleepEm
	global _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_


SECTION .text


;SearchForApplication(FSRef const&, unsigned long, unsigned char, FSRef&)
_Z20SearchForApplicationRK5FSRefmhRS_:
_Z20SearchForApplicationRK5FSRefmhRS__40:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov ebx, eax
	mov [ebp-0x178], edx
	mov [ebp-0x179], cl
	mov dword [esp], 0x1c20
	call _Znam
	mov [ebp-0x170], eax
	mov dword [esp], 0xfa0
	call _Znam
	mov [ebp-0x16c], eax
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x28], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call FSOpenIterator
	test ax, ax
	jz _Z20SearchForApplicationRK5FSRefmhRS__10
	cmp byte [ebp-0x179], 0x0
	jz _Z20SearchForApplicationRK5FSRefmhRS__20
_Z20SearchForApplicationRK5FSRefmhRS__150:
	mov ecx, [ebp-0x30]
	mov ebx, ecx
	mov edx, [ebp-0x2c]
	cmp ecx, edx
	jz _Z20SearchForApplicationRK5FSRefmhRS__30
	lea esi, [ebp-0x80]
_Z20SearchForApplicationRK5FSRefmhRS__60:
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, 0x1
	mov edx, [ebp-0x178]
	mov eax, esi
	call _Z20SearchForApplicationRK5FSRefmhRS__40
	test al, al
	jnz _Z20SearchForApplicationRK5FSRefmhRS__50
	add ebx, 0x50
	mov edx, [ebp-0x2c]
	cmp ebx, edx
	jnz _Z20SearchForApplicationRK5FSRefmhRS__60
	mov ecx, [ebp-0x30]
_Z20SearchForApplicationRK5FSRefmhRS__30:
	xor ebx, ebx
_Z20SearchForApplicationRK5FSRefmhRS__200:
	mov eax, ecx
	cmp edx, ecx
	jz _Z20SearchForApplicationRK5FSRefmhRS__70
_Z20SearchForApplicationRK5FSRefmhRS__80:
	add eax, 0x50
	cmp edx, eax
	jnz _Z20SearchForApplicationRK5FSRefmhRS__80
_Z20SearchForApplicationRK5FSRefmhRS__70:
	test ecx, ecx
	jz _Z20SearchForApplicationRK5FSRefmhRS__90
	mov [esp], ecx
	call _ZdlPv
_Z20SearchForApplicationRK5FSRefmhRS__90:
	mov eax, [ebp-0x16c]
	test eax, eax
	jz _Z20SearchForApplicationRK5FSRefmhRS__100
	mov eax, [ebp-0x16c]
	mov [esp], eax
	call _ZdaPv
_Z20SearchForApplicationRK5FSRefmhRS__100:
	mov edi, [ebp-0x170]
	test edi, edi
	jz _Z20SearchForApplicationRK5FSRefmhRS__110
	mov eax, [ebp-0x170]
	mov [esp], eax
	call _ZdaPv
_Z20SearchForApplicationRK5FSRefmhRS__110:
	mov eax, ebx
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20SearchForApplicationRK5FSRefmhRS__140:
	mov eax, [ebp-0x24]
	test eax, eax
	jnz _Z20SearchForApplicationRK5FSRefmhRS__120
_Z20SearchForApplicationRK5FSRefmhRS__170:
	cmp word [ebp-0x172], 0x0
	jnz _Z20SearchForApplicationRK5FSRefmhRS__130
_Z20SearchForApplicationRK5FSRefmhRS__10:
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp-0x16c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x170]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x2
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x32
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FSGetCatalogInfoBulk
	mov [ebp-0x172], ax
	test ax, ax
	jz _Z20SearchForApplicationRK5FSRefmhRS__140
	cmp ax, 0xfa77
	jz _Z20SearchForApplicationRK5FSRefmhRS__140
_Z20SearchForApplicationRK5FSRefmhRS__130:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FSCloseIterator
	cmp byte [ebp-0x179], 0x0
	jnz _Z20SearchForApplicationRK5FSRefmhRS__150
_Z20SearchForApplicationRK5FSRefmhRS__20:
	mov edx, [ebp-0x2c]
	mov ecx, [ebp-0x30]
	jmp _Z20SearchForApplicationRK5FSRefmhRS__30
_Z20SearchForApplicationRK5FSRefmhRS__120:
	mov ebx, [ebp-0x170]
	mov esi, [ebp-0x16c]
	xor edi, edi
	jmp _Z20SearchForApplicationRK5FSRefmhRS__160
_Z20SearchForApplicationRK5FSRefmhRS__180:
	add edi, 0x1
	add ebx, 0x90
	add esi, 0x50
	cmp edi, [ebp-0x24]
	jae _Z20SearchForApplicationRK5FSRefmhRS__170
_Z20SearchForApplicationRK5FSRefmhRS__160:
	mov dword [esp+0x8], 0x90
	mov [esp+0x4], ebx
	lea eax, [ebp-0x160]
	mov [esp], eax
	call memcpy
	test byte [ebp-0x160], 0x10
	jz _Z20SearchForApplicationRK5FSRefmhRS__180
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], esi
	lea eax, [ebp-0xd0]
	mov [esp], eax
	call memcpy
	lea eax, [ebp-0x80]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x6
	lea eax, [ebp-0xd0]
	mov [esp], eax
	call LSCopyItemInfoForRef
	test eax, eax
	jnz _Z20SearchForApplicationRK5FSRefmhRS__180
	mov eax, [ebp-0x80]
	test al, 0x40
	jnz _Z20SearchForApplicationRK5FSRefmhRS__180
	test al, 0x2
	jz _Z20SearchForApplicationRK5FSRefmhRS__190
	test al, 0x4
	jz _Z20SearchForApplicationRK5FSRefmhRS__180
	mov eax, [ebp-0x178]
	cmp eax, [ebp-0x78]
	jnz _Z20SearchForApplicationRK5FSRefmhRS__180
	mov dword [esp+0x8], 0x50
	lea eax, [ebp-0xd0]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memcpy
	mov ebx, 0x1
	mov edx, [ebp-0x2c]
	mov ecx, [ebp-0x30]
	jmp _Z20SearchForApplicationRK5FSRefmhRS__200
_Z20SearchForApplicationRK5FSRefmhRS__190:
	cmp byte [ebp-0x179], 0x0
	jz _Z20SearchForApplicationRK5FSRefmhRS__180
	mov edx, [ebp-0x2c]
	cmp edx, [ebp-0x28]
	jz _Z20SearchForApplicationRK5FSRefmhRS__210
	test edx, edx
	jz _Z20SearchForApplicationRK5FSRefmhRS__220
	mov dword [esp+0x8], 0x50
	lea eax, [ebp-0xd0]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edx, [ebp-0x2c]
_Z20SearchForApplicationRK5FSRefmhRS__220:
	add edx, 0x50
	mov [ebp-0x2c], edx
	jmp _Z20SearchForApplicationRK5FSRefmhRS__180
_Z20SearchForApplicationRK5FSRefmhRS__50:
	mov ebx, 0x1
	mov edx, [ebp-0x2c]
	mov ecx, [ebp-0x30]
	jmp _Z20SearchForApplicationRK5FSRefmhRS__200
_Z20SearchForApplicationRK5FSRefmhRS__210:
	lea eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	jmp _Z20SearchForApplicationRK5FSRefmhRS__180
	mov ebx, eax
_Z20SearchForApplicationRK5FSRefmhRS__270:
	mov esi, [ebp-0x170]
	test esi, esi
	jz _Z20SearchForApplicationRK5FSRefmhRS__230
	mov eax, [ebp-0x170]
	mov [esp], eax
	call _ZdaPv
_Z20SearchForApplicationRK5FSRefmhRS__230:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	mov edx, [ebp-0x2c]
	mov ecx, [ebp-0x30]
	mov eax, ecx
	cmp edx, ecx
	jz _Z20SearchForApplicationRK5FSRefmhRS__240
_Z20SearchForApplicationRK5FSRefmhRS__250:
	add eax, 0x50
	cmp edx, eax
	jnz _Z20SearchForApplicationRK5FSRefmhRS__250
_Z20SearchForApplicationRK5FSRefmhRS__240:
	test ecx, ecx
	jz _Z20SearchForApplicationRK5FSRefmhRS__260
	mov [esp], ecx
	call _ZdlPv
_Z20SearchForApplicationRK5FSRefmhRS__260:
	mov eax, [ebp-0x16c]
	test eax, eax
	jz _Z20SearchForApplicationRK5FSRefmhRS__270
	mov eax, [ebp-0x16c]
	mov [esp], eax
	call _ZdaPv
	jmp _Z20SearchForApplicationRK5FSRefmhRS__270
	nop


;StShowCursor::StShowCursor()
_ZN12StShowCursorC1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call CGCursorIsVisible
	movzx eax, al
	mov [ebx], al
	test eax, eax
	jz _ZN12StShowCursorC1Ev_10
_ZN12StShowCursorC1Ev_20:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_ZN12StShowCursorC1Ev_10:
	call CGCursorIsVisible
	test eax, eax
	jnz _ZN12StShowCursorC1Ev_20
	add esp, 0x4
	pop ebx
	pop ebp
	jmp InitCursor
	add [eax], al


;StShowCursor::~StShowCursor()
_ZN12StShowCursorD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jz _ZN12StShowCursorD1Ev_10
	pop ebp
	ret
_ZN12StShowCursorD1Ev_10:
	pop ebp
	jmp _ZN8MacTools10HideCursorEv
	nop


;MacTools::HideCursor()
_ZN8MacTools10HideCursorEv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call CGCursorIsVisible
	test eax, eax
	jnz _ZN8MacTools10HideCursorEv_10
	leave
	ret
_ZN8MacTools10HideCursorEv_10:
	leave
	jmp HideCursor
	nop


;MacTools::ShowCursor(Point const*)
_ZN8MacTools10ShowCursorEPK5Point:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call CGCursorIsVisible
	test eax, eax
	jz _ZN8MacTools10ShowCursorEPK5Point_10
	leave
	ret
_ZN8MacTools10ShowCursorEPK5Point_10:
	leave
	jmp InitCursor
	nop


;MacTools::SetCursorID(short)
_ZN8MacTools11SetCursorIDEs:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movsx eax, word [ebp+0x8]
	mov [esp], eax
	call GetCursor
	test eax, eax
	jz _ZN8MacTools11SetCursorIDEs_10
	mov eax, [eax]
	mov [ebp+0x8], eax
	leave
	jmp SetCursor
_ZN8MacTools11SetCursorIDEs_10:
	leave
	ret
	nop


;MacTools::MessageAlert(__CFString const*, __CFString const*, unsigned char)
_ZN8MacTools12MessageAlertEPK10__CFStringS2_h:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	movzx ebx, byte [ebp+0x10]
	call pthread_main_np
	test eax, eax
	jnz _ZN8MacTools12MessageAlertEPK10__CFStringS2_h_10
_ZN8MacTools12MessageAlertEPK10__CFStringS2_h_20:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_ZN8MacTools12MessageAlertEPK10__CFStringS2_h_10:
	call _ZN10MacDisplay12IsFullscreenEv
	test al, al
	jnz _ZN8MacTools12MessageAlertEPK10__CFStringS2_h_20
	call _ZN10MacGlobals10LockSystemEv
	lea eax, [ebp-0x10]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	xor eax, eax
	test bl, bl
	setz al
	mov [esp], eax
	call CreateStandardAlert
	test eax, eax
	jnz _ZN8MacTools12MessageAlertEPK10__CFStringS2_h_30
	call InitCursor
	lea eax, [ebp-0xa]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x10]
	mov [esp], eax
	call RunStandardAlert
_ZN8MacTools12MessageAlertEPK10__CFStringS2_h_30:
	call _ZN10MacGlobals12UnlockSystemEv
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	mov ebx, eax
	call _ZN10MacGlobals12UnlockSystemEv
	mov [esp], ebx
	call _Unwind_Resume
	nop


;MacTools::MessageAlert(__CFString const*, unsigned char)
_ZN8MacTools12MessageAlertEPK10__CFStringh:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, byte [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN8MacTools12MessageAlertEPK10__CFStringS2_h
	leave
	ret
	nop


;MacTools::MessageAlert(char const*, char const*, unsigned char)
_ZN8MacTools12MessageAlertEPKcS1_h:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	movzx edi, byte [ebp+0x10]
	mov dword [esp+0x8], 0x8000100
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov ebx, eax
	test eax, eax
	jz _ZN8MacTools12MessageAlertEPKcS1_h_10
	test esi, esi
	jz _ZN8MacTools12MessageAlertEPKcS1_h_20
	mov dword [esp+0x8], 0x8000100
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov esi, eax
_ZN8MacTools12MessageAlertEPKcS1_h_20:
	mov edx, edi
	movzx eax, dl
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN8MacTools12MessageAlertEPK10__CFStringS2_h
	mov [esp], ebx
	call CFRelease
	test esi, esi
	jz _ZN8MacTools12MessageAlertEPKcS1_h_10
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CFRelease
_ZN8MacTools12MessageAlertEPKcS1_h_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;MacTools::QuestionAlert(__CFString const*, __CFString const*)
_ZN8MacTools13QuestionAlertEPK10__CFStringS2_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	call pthread_main_np
	test eax, eax
	jnz _ZN8MacTools13QuestionAlertEPK10__CFStringS2__10
_ZN8MacTools13QuestionAlertEPK10__CFStringS2__20:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x54
	pop ebx
	pop ebp
	ret
_ZN8MacTools13QuestionAlertEPK10__CFStringS2__10:
	call _ZN10MacDisplay12IsFullscreenEv
	test al, al
	jnz _ZN8MacTools13QuestionAlertEPK10__CFStringS2__20
	call _ZN10MacGlobals10LockSystemEv
	mov dword [esp+0x4], 0x1
	lea ebx, [ebp-0x2c]
	mov [esp], ebx
	call GetStandardAlertDefaultParams
	test eax, eax
	jnz _ZN8MacTools13QuestionAlertEPK10__CFStringS2__30
	mov dword [ebp-0x22], 0xffffffff
	mov word [ebp-0x18], 0x2
	lea eax, [ebp-0x10]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call CreateStandardAlert
	test eax, eax
	jz _ZN8MacTools13QuestionAlertEPK10__CFStringS2__40
_ZN8MacTools13QuestionAlertEPK10__CFStringS2__30:
	xor ebx, ebx
	call _ZN10MacGlobals12UnlockSystemEv
_ZN8MacTools13QuestionAlertEPK10__CFStringS2__50:
	mov eax, ebx
	add esp, 0x54
	pop ebx
	pop ebp
	ret
_ZN8MacTools13QuestionAlertEPK10__CFStringS2__40:
	call InitCursor
	mov word [ebp-0xa], 0x0
	lea eax, [ebp-0xa]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x10]
	mov [esp], eax
	call RunStandardAlert
	xor ebx, ebx
	cmp word [ebp-0xa], 0x1
	setz bl
	call _ZN10MacGlobals12UnlockSystemEv
	jmp _ZN8MacTools13QuestionAlertEPK10__CFStringS2__50
	mov ebx, eax
	call _ZN10MacGlobals12UnlockSystemEv
	mov [esp], ebx
	call _Unwind_Resume
	nop


;MacTools::QuestionAlert(char const*, char const*)
_ZN8MacTools13QuestionAlertEPKcS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	mov dword [esp+0x8], 0x8000100
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov ebx, eax
	test eax, eax
	jz _ZN8MacTools13QuestionAlertEPKcS1__10
	test esi, esi
	jz _ZN8MacTools13QuestionAlertEPKcS1__20
	mov dword [esp+0x8], 0x8000100
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov esi, eax
_ZN8MacTools13QuestionAlertEPKcS1__20:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN8MacTools13QuestionAlertEPK10__CFStringS2_
	mov edi, eax
	mov [esp], ebx
	call CFRelease
	test esi, esi
	jz _ZN8MacTools13QuestionAlertEPKcS1__30
	mov [esp], esi
	call CFRelease
_ZN8MacTools13QuestionAlertEPKcS1__30:
	mov edx, edi
	movzx eax, dl
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN8MacTools13QuestionAlertEPKcS1__10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MacTools::FindApplication(unsigned long, FSRef const&, FSRef&)
_ZN8MacTools15FindApplicationEmRK5FSRefRS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	xor ecx, ecx
	call _Z20SearchForApplicationRK5FSRefmhRS_
	movzx eax, al
	leave
	ret


;MacTools::IsCursorVisible()
_ZN8MacTools15IsCursorVisibleEv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call CGCursorIsVisible
	movzx eax, al
	leave
	ret
	add [eax], al


;MacTools::PinCursorPosition(Point&)
_ZN8MacTools17PinCursorPositionER5Point:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	movzx eax, word [ebx+0x2]
	test ax, ax
	js _ZN8MacTools17PinCursorPositionER5Point_10
	mov edx, [ebp-0xc]
	cwde
	cmp eax, edx
	jg _ZN8MacTools17PinCursorPositionER5Point_20
_ZN8MacTools17PinCursorPositionER5Point_60:
	movzx eax, word [ebx]
	test ax, ax
	js _ZN8MacTools17PinCursorPositionER5Point_30
_ZN8MacTools17PinCursorPositionER5Point_50:
	mov edx, [ebp-0x10]
	cwde
	cmp eax, edx
	jle _ZN8MacTools17PinCursorPositionER5Point_40
	mov [ebx], dx
_ZN8MacTools17PinCursorPositionER5Point_40:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN8MacTools17PinCursorPositionER5Point_20:
	mov [ebx+0x2], dx
	movzx eax, word [ebx]
	test ax, ax
	jns _ZN8MacTools17PinCursorPositionER5Point_50
_ZN8MacTools17PinCursorPositionER5Point_30:
	mov word [ebx], 0x0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN8MacTools17PinCursorPositionER5Point_10:
	mov word [ebx+0x2], 0x0
	jmp _ZN8MacTools17PinCursorPositionER5Point_60
	nop


;MacTools::SetCursorPosition(Point const&)
_ZN8MacTools17SetCursorPositionERK5Point:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov edx, [ebp+0x8]
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0xc], xmm0
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x10], xmm0
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x0
	call CGSetLocalEventsSuppressionInterval
	mov esi, [ebp-0x10]
	mov ebx, [ebp-0xc]
	mov [esp], ebx
	mov [esp+0x4], esi
	call CGWarpMouseCursorPosition
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x3fd00000
	call CGSetLocalEventsSuppressionInterval
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MacTools::FindApplicationPSN(unsigned long, ProcessSerialNumber&)
_ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx], 0x0
	lea esi, [ebp-0x54]
_ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber_20:
	mov [esp], ebx
	call GetNextProcess
	test ax, ax
	jnz _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber_10
	mov dword [ebp-0x54], 0x3c
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x1c], 0x0
	mov [esp+0x4], esi
	mov [esp], ebx
	call GetProcessInformation
	test ax, ax
	jnz _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber_20
	cmp [ebp-0x40], edi
	jnz _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber_20
	cmp dword [ebp-0x44], 0x4150504c
	jnz _ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber_20
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN8MacTools18FindApplicationPSNEmR19ProcessSerialNumber_10:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MacTools::GetDictionaryValue(__CFDictionary const*, __CFString const*)
_ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CFDictionaryGetValue
	mov ebx, eax
	test eax, eax
	jz _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString_10
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call CFNumberGetValue
	test al, al
	jz _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString_20
	mov eax, [ebp-0xc]
_ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString_30:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString_10:
	mov eax, 0xffffffff
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString_20:
	lea eax, [ebp-0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call CFNumberGetValue
	test al, al
	jz _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString_10
	movsd xmm0, qword [ebp-0x18]
	movsd [esp], xmm0
	call lround
	mov [ebp-0xc], eax
	jmp _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString_30
	nop


;MacTools::GetIORegistryValue(unsigned int, __CFString const*, char*)
_ZN8MacTools18GetIORegistryValueEjPK10__CFStringPc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call IORegistryEntryCreateCFProperty
	mov ebx, eax
	test eax, eax
	jz _ZN8MacTools18GetIORegistryValueEjPK10__CFStringPc_10
	mov [esp], eax
	call CFDataGetBytePtr
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call strcpy
	mov [esp], ebx
	call CFRelease
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN8MacTools18GetIORegistryValueEjPK10__CFStringPc_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;MacTools::GetIORegistryValue(unsigned int, __CFString const*, unsigned long&)
_ZN8MacTools18GetIORegistryValueEjPK10__CFStringRm:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call IORegistryEntryCreateCFProperty
	test eax, eax
	jz _ZN8MacTools18GetIORegistryValueEjPK10__CFStringRm_10
	mov [esp], eax
	call CFDataGetBytePtr
	mov eax, [eax]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, 0x1
_ZN8MacTools18GetIORegistryValueEjPK10__CFStringRm_10:
	leave
	ret
	add [eax], al


;MacTools::SendQuitAppleEvent(ProcessSerialNumber const&)
_ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea esi, [ebp-0x20]
	mov [esp], esi
	call _ZN9CAETargetC1ERK19ProcessSerialNumber
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call _ZN8CAEEventC1Ev
	mov dword [esp+0xc], 0x71756974
	mov dword [esp+0x8], 0x61657674
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN8CAEEvent6CreateER9CAETargetmm
	mov [esp], ebx
	call _ZN8CAEEvent4SendEv
	mov [esp], ebx
	call _ZN8CAEEventD1Ev
	mov [esp], esi
	call _ZN9CAETargetD1Ev
_ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov edi, eax
_ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber_20:
	mov [esp], edi
	call __cxa_begin_catch
	call __cxa_end_catch
	jmp _ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber_10
	mov edi, eax
	mov [esp], ebx
	call _ZN8CAEEventD1Ev
_ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber_30:
	mov [esp], esi
	call _ZN9CAETargetD1Ev
	jmp _ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber_20
	mov edi, eax
	jmp _ZN8MacTools18SendQuitAppleEventERK19ProcessSerialNumber_30
	nop


;MacTools::MessageAlertFromKey(__CFString const*, __CFString const*, unsigned char)
_ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	movzx edi, byte [ebp+0x10]
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov ebx, eax
	test eax, eax
	jz _ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h_10
	test esi, esi
	jz _ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h_20
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov esi, eax
_ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h_20:
	mov edx, edi
	movzx eax, dl
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN8MacTools12MessageAlertEPK10__CFStringS2_h
	mov [esp], ebx
	call CFRelease
	test esi, esi
	jz _ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h_10
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CFRelease
_ZN8MacTools19MessageAlertFromKeyEPK10__CFStringS2_h_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MacTools::QuestionAlertFromKey(__CFString const*, __CFString const*)
_ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov ebx, eax
	test eax, eax
	jz _ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2__10
	test esi, esi
	jz _ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2__20
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov esi, eax
_ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2__20:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN8MacTools13QuestionAlertEPK10__CFStringS2_
	mov edi, eax
	mov [esp], ebx
	call CFRelease
	test esi, esi
	jz _ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2__30
	mov [esp], esi
	call CFRelease
_ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2__30:
	mov edx, edi
	movzx eax, dl
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN8MacTools20QuestionAlertFromKeyEPK10__CFStringS2__10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MacTools::PostPrivateEventToWindow(OpaqueWindowPtr*, unsigned long, unsigned long, unsigned long)
_ZN8MacTools24PostPrivateEventToWindowEP15OpaqueWindowPtrmmm:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	lea eax, [ebp-0xc]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x10], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x50726976
	mov dword [esp], 0x0
	call CreateEvent
	mov ebx, eax
	test eax, eax
	jnz _ZN8MacTools24PostPrivateEventToWindowEP15OpaqueWindowPtrmmm_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetWindowEventTarget
	mov [ebp-0x10], eax
	lea eax, [ebp-0x10]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x65747267
	mov dword [esp+0x4], 0x70747267
	mov eax, [ebp-0xc]
	mov [esp], eax
	call SetEventParameter
	lea eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x504f6e65
	mov eax, [ebp-0xc]
	mov [esp], eax
	call SetEventParameter
	lea eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x5054776f
	mov eax, [ebp-0xc]
	mov [esp], eax
	call SetEventParameter
	mov ebx, [ebp-0xc]
	call GetMainEventQueue
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov [esp], eax
	call PostEventToQueue
	mov ebx, eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call ReleaseEvent
_ZN8MacTools24PostPrivateEventToWindowEP15OpaqueWindowPtrmmm_10:
	xor eax, eax
	test ebx, ebx
	setz al
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;MacTools::Sleep(unsigned long)
_ZN8MacTools5SleepEm:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	call UpTime
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call AddDurationToAbsolute
	mov [ebp-0x10], eax
	mov [ebp-0xc], edx
	lea eax, [ebp-0x10]
	mov [esp], eax
	call MPDelayUntil
	leave
	ret
	nop
	add [eax], al


;std::vector<FSRef, std::allocator<FSRef> >::_M_insert_aux(__gnu_cxx::__normal_iterator<FSRef*, std::vector<FSRef, std::allocator<FSRef> > >, FSRef const&)
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0xc]
	mov [ebp-0x6c], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10
	lea edx, [eax-0x50]
	test eax, eax
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180:
	mov esi, eax
	add eax, 0x50
	mov [edx+0x4], eax
	mov dword [esp+0x8], 0x50
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	lea edx, [ebp-0x68]
	mov [esp], edx
	call memcpy
	lea ebx, [esi-0x50]
	mov ecx, ebx
	sub ecx, [ebp-0x6c]
	sar ecx, 0x4
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov [ebp-0x78], eax
	test eax, eax
	jle _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30
	mov edx, ebx
	mov eax, esi
	xor edi, edi
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40:
	lea esi, [eax-0x50]
	lea ebx, [edx-0x50]
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	add edi, 0x1
	mov edx, ebx
	mov eax, esi
	cmp [ebp-0x78], edi
	jnz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30:
	mov dword [esp+0x8], 0x50
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call memcpy
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10:
	mov ecx, eax
	sub ecx, [edx]
	sar ecx, 0x4
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	cmp eax, 0x3333333
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50
	test eax, eax
	jnz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60
	mov edx, 0x1
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200:
	lea edx, [edx+edx*4]
	shl edx, 0x4
	mov [ebp-0x7c], edx
	mov [esp], edx
	call _Znwm
	mov [ebp-0x74], eax
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov ebx, [ebp-0x74]
	cmp [ebp+0xc], esi
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70
	mov eax, esi
	jmp _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100:
	mov esi, eax
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80:
	test ebx, ebx
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90:
	lea eax, [esi+0x50]
	add ebx, 0x50
	cmp [ebp+0xc], eax
	jnz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70:
	test ebx, ebx
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110
	mov dword [esp+0x8], 0x50
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110:
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [ebp-0x70], eax
	mov edx, [ebp+0x8]
	mov edi, [edx+0x4]
	mov eax, [ebp-0x6c]
	add ebx, 0x50
	cmp edi, eax
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140:
	mov esi, eax
	test ebx, ebx
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130:
	lea eax, [esi+0x50]
	add ebx, 0x50
	cmp eax, edi
	jnz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120:
	mov eax, [ebp-0x70]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160:
	add eax, 0x50
	cmp edx, eax
	jnz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150:
	test ecx, ecx
	jz _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170:
	mov eax, [ebp-0x74]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov [edx+0x4], ebx
	mov eax, [ebp-0x74]
	add eax, [ebp-0x7c]
	mov [edx+0x8], eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20:
	mov edx, [ebp+0x8]
	jmp _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190
	cmp edx, 0x3333333
	jbe _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190:
	mov edx, 0x3333333
	jmp _ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200
_ZNSt6vectorI5FSRefSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc


;Initialized global or static variables of MacTools:
SECTION .data


;Initialized constant data of MacTools:
SECTION .rdata


;Zero initialized global or static variables of MacTools:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_vector_m_insert_:		db "vector::_M_insert_aux",0



;All constant floats and doubles:
SECTION .rdata

