;Imports of MacWin32:
	extern GetWindowPort
	extern QDLocalToGlobalPoint
	extern pthread_create
	extern SetLastError
	extern unlink
	extern __error
	extern pthread_mutex_lock
	extern _ZN10MacDisplay13GetMainWindowEv
	extern pthread_self
	extern _ZN8MacFiles4statEPKcP4stat
	extern _ZN12MacResources15GetLanguageCodeEv
	extern GetWindowPortBounds
	extern QDLocalToGlobalRect
	extern pthread_mutexattr_init
	extern pthread_mutexattr_settype
	extern pthread_mutex_init
	extern OSAtomicCompareAndSwap32
	extern OSAtomicAdd32
	extern pthread_mutex_unlock
	extern _ZN11MacFeatures19GetKeyboardLanguageEv
	extern _ZN10MacStrings21TranslateToUTF8StringEPKc
	extern strncpy
	extern _ZN12StShowCursorC1Ev
	extern _ZN12StShowCursorD1Ev
	extern _ZN8MacTools12MessageAlertEPKcS1_h
	extern _ZN8MacTools13QuestionAlertEPKcS1_
	extern _Unwind_Resume
	extern Microseconds
	extern QDGlobalToLocalPoint
	extern pthread_getschedparam
	extern pthread_setschedparam
	extern sched_get_priority_min
	extern sched_get_priority_max
	extern calloc
	extern free
	extern UpTime
	extern AddDurationToAbsolute
	extern MPDelayUntil
	extern __udivdi3

;Exports of MacWin32:
	global sDefaultKeyMap
	global sItalianKeyMap
	global sGermanKeyMap
	global sFrenchKeyMap
	global _ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID
	global _ZZ14MapVirtualKeyAE13sCachedKeyMap
	global ClientToScreen
	global CreateThread
	global DeleteFileA
	global iDuplicateHandle
	global EnterCriticalSection
	global GetActiveWindow
	global GetCurrentThreadId
	global GetFileAttributesA
	global GetSystemDefaultLangID
	global GetWindowRect
	global InitializeCriticalSection
	global iInterlockedCompareExchange
	global iInterlockedDecrement
	global iInterlockedExchange
	global iInterlockedExchangeAdd
	global iInterlockedIncrement
	global LeaveCriticalSection
	global MapVirtualKeyA
	global MessageBoxA
	global QueryPerformanceCounter
	global QueryPerformanceFrequency
	global iResumeThread
	global ScreenToClient
	global SetFileAttributesA
	global SetThreadAffinityMask
	global iSetThreadPriority
	global iSuspendThread
	global iVirtualAlloc
	global iVirtualFree
	global WinGetCurrentThread
	global WinSleep
	global timeBeginPeriod
	global timeEndPeriod
	global itimeGetTime


SECTION .text


;ClientToScreen
ClientToScreen:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	mov [ebp-0xa], ax
	mov eax, [ebx+0x4]
	mov [ebp-0xc], ax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetWindowPort
	lea edx, [ebp-0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call QDLocalToGlobalPoint
	movsx eax, word [ebp-0xa]
	mov [ebx], eax
	movsx eax, word [ebp-0xc]
	mov [ebx+0x4], eax
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CreateThread
CreateThread:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x1c]
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xc]
	mov [esp], eax
	call pthread_create
	test eax, eax
	jnz CreateThread_10
	test ebx, ebx
	jz CreateThread_20
	mov eax, [ebp-0xc]
	mov [ebx], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CreateThread_10:
	test ebx, ebx
	jz CreateThread_30
	mov dword [ebx], 0x0
CreateThread_30:
	mov eax, 0xffffffff
CreateThread_40:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CreateThread_20:
	mov eax, [ebp-0xc]
	jmp CreateThread_40


;DeleteFileA
DeleteFileA:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call SetLastError
	test ebx, ebx
	jz DeleteFileA_10
	mov [esp], ebx
	call unlink
	add eax, 0x1
	jz DeleteFileA_20
	mov eax, 0x1
DeleteFileA_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
DeleteFileA_20:
	call __error
	cmp dword [eax], 0x2
	jz DeleteFileA_30
	mov dword [esp], 0xffffffff
	call SetLastError
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
DeleteFileA_30:
	mov dword [esp], 0x2
	call SetLastError
	xor eax, eax
	jmp DeleteFileA_40
DeleteFileA_10:
	mov dword [esp], 0xd
	call SetLastError
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;DuplicateHandle
iDuplicateHandle:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x14]
	mov [eax], edx
	mov eax, 0x1
	pop ebp
	ret


;EnterCriticalSection
EnterCriticalSection:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_mutex_lock
	leave
	ret
	nop


;GetActiveWindow
GetActiveWindow:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _ZN10MacDisplay13GetMainWindowEv
	nop


;GetCurrentThreadId
GetCurrentThreadId:
	push ebp
	mov ebp, esp
	pop ebp
	jmp pthread_self
	nop


;GetFileAttributesA
GetFileAttributesA:
	push ebp
	mov ebp, esp
	sub esp, 0x78
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN8MacFiles4statEPKcP4stat
	test eax, eax
	jnz GetFileAttributesA_10
	movzx eax, word [ebp-0x60]
	and eax, 0x4000
	cmp eax, 0x1
	sbb eax, eax
	not eax
	and eax, 0x10
	leave
	ret
GetFileAttributesA_10:
	mov eax, 0xffffffff
	leave
	ret


;GetSystemDefaultLangID
GetSystemDefaultLangID:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	cmp word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID], 0x0
	jz GetSystemDefaultLangID_10
GetSystemDefaultLangID_30:
	movzx eax, word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID]
	leave
	ret
GetSystemDefaultLangID_10:
	call _ZN12MacResources15GetLanguageCodeEv
	add eax, 0x2
	cmp eax, 0x8
	ja GetSystemDefaultLangID_20
	jmp dword [eax*4+GetSystemDefaultLangID_jumptab_0]
GetSystemDefaultLangID_20:
	mov word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID], 0x9
	movzx eax, word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID]
	leave
	ret
GetSystemDefaultLangID_40:
	mov word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID], 0x809
	jmp GetSystemDefaultLangID_30
GetSystemDefaultLangID_80:
	mov word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID], 0xa
	jmp GetSystemDefaultLangID_30
GetSystemDefaultLangID_70:
	mov word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID], 0x10
	jmp GetSystemDefaultLangID_30
GetSystemDefaultLangID_60:
	mov word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID], 0x7
	jmp GetSystemDefaultLangID_30
GetSystemDefaultLangID_50:
	mov word [_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID], 0xc
	jmp GetSystemDefaultLangID_30
	
	
GetSystemDefaultLangID_jumptab_0:
	dd GetSystemDefaultLangID_40
	dd GetSystemDefaultLangID_20
	dd GetSystemDefaultLangID_20
	dd GetSystemDefaultLangID_50
	dd GetSystemDefaultLangID_60
	dd GetSystemDefaultLangID_70
	dd GetSystemDefaultLangID_20
	dd GetSystemDefaultLangID_20
	dd GetSystemDefaultLangID_80


;GetWindowRect
GetWindowRect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebp-0x20]
	mov [esp+0x4], edi
	mov [esp], esi
	call GetWindowPortBounds
	mov [esp], esi
	call GetWindowPort
	mov [esp+0x4], edi
	mov [esp], eax
	call QDLocalToGlobalRect
	movsx eax, word [ebp-0x1e]
	mov [ebx], eax
	movsx eax, word [ebp-0x20]
	mov [ebx+0x4], eax
	movsx eax, word [ebp-0x1a]
	mov [ebx+0x8], eax
	movsx eax, word [ebp-0x1c]
	mov [ebx+0xc], eax
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;InitializeCriticalSection
InitializeCriticalSection:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea ebx, [ebp-0x14]
	mov [esp], ebx
	call pthread_mutexattr_init
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call pthread_mutexattr_settype
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_mutex_init
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;InterlockedCompareExchange
iInterlockedCompareExchange:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call OSAtomicCompareAndSwap32
	test al, al
	cmovz ebx, esi
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;InterlockedDecrement
iInterlockedDecrement:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xffffffff
	call OSAtomicAdd32
	leave
	ret
	nop


;InterlockedExchange
iInterlockedExchange:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [eax]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call OSAtomicCompareAndSwap32
	test al, al
	cmovz ebx, esi
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;InterlockedExchangeAdd
iInterlockedExchangeAdd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call OSAtomicAdd32
	sub eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;InterlockedIncrement
iInterlockedIncrement:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call OSAtomicAdd32
	leave
	ret
	nop


;LeaveCriticalSection
LeaveCriticalSection:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_mutex_unlock
	leave
	ret
	nop


;MapVirtualKeyA
MapVirtualKeyA:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov eax, [_ZZ14MapVirtualKeyAE13sCachedKeyMap]
	test eax, eax
	jz MapVirtualKeyA_10
	mov ebx, [_ZZ14MapVirtualKeyAE13sCachedKeyMap]
MapVirtualKeyA_90:
	mov eax, [ebx]
	test eax, eax
	jz MapVirtualKeyA_20
	cmp esi, eax
	jz MapVirtualKeyA_30
	lea eax, [ebx+0x8]
	mov ecx, eax
	jmp MapVirtualKeyA_40
MapVirtualKeyA_50:
	add eax, 0x8
MapVirtualKeyA_40:
	mov ebx, eax
	mov edx, [ecx]
	test edx, edx
	jz MapVirtualKeyA_20
	add ecx, 0x8
	cmp edx, esi
	jnz MapVirtualKeyA_50
MapVirtualKeyA_30:
	mov eax, [ebx+0x4]
	pop ebx
	pop esi
	pop ebp
	ret
MapVirtualKeyA_20:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
MapVirtualKeyA_10:
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	mov edx, eax
	cmp eax, 0xffffffff
	jz MapVirtualKeyA_60
MapVirtualKeyA_100:
	cmp edx, 0x1
	jz MapVirtualKeyA_70
	cmp edx, 0x2
	jz MapVirtualKeyA_80
	mov eax, sItalianKeyMap
	cmp edx, 0x3
	mov edx, sDefaultKeyMap
	cmovnz eax, edx
	mov [_ZZ14MapVirtualKeyAE13sCachedKeyMap], eax
	mov ebx, eax
	jmp MapVirtualKeyA_90
MapVirtualKeyA_80:
	mov dword [_ZZ14MapVirtualKeyAE13sCachedKeyMap], sGermanKeyMap
	mov ebx, [_ZZ14MapVirtualKeyAE13sCachedKeyMap]
	jmp MapVirtualKeyA_90
MapVirtualKeyA_70:
	mov dword [_ZZ14MapVirtualKeyAE13sCachedKeyMap], sFrenchKeyMap
	mov ebx, [_ZZ14MapVirtualKeyAE13sCachedKeyMap]
	jmp MapVirtualKeyA_90
MapVirtualKeyA_60:
	call _ZN12MacResources15GetLanguageCodeEv
	mov edx, eax
	jmp MapVirtualKeyA_100


;MessageBoxA
MessageBoxA:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov esi, eax
	and esi, 0xf
	and eax, 0xf0
	mov [ebp-0x42c], eax
	test edx, edx
	jz MessageBoxA_10
	cmp byte [edx], 0x0
	jnz MessageBoxA_20
MessageBoxA_10:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _ZN10MacStrings21TranslateToUTF8StringEPKc
	mov dword [esp+0x8], 0x1ff
	mov [esp+0x4], eax
	lea eax, [ebp-0x219]
	mov [esp], eax
	call strncpy
	mov byte [ebp-0x1a], 0x0
	xor ebx, ebx
MessageBoxA_70:
	lea edi, [ebp-0x19]
	mov [esp], edi
	call _ZN12StShowCursorC1Ev
	test esi, esi
	jz MessageBoxA_30
	cmp esi, 0x1
	jz MessageBoxA_40
	cmp esi, 0x4
	jz MessageBoxA_50
MessageBoxA_60:
	mov ebx, 0x1
MessageBoxA_80:
	mov [esp], edi
	call _ZN12StShowCursorD1Ev
	mov eax, ebx
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MessageBoxA_30:
	xor eax, eax
	cmp dword [ebp-0x42c], 0x10
	setz al
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x219]
	mov [esp], eax
	call _ZN8MacTools12MessageAlertEPKcS1_h
	jmp MessageBoxA_60
MessageBoxA_20:
	mov [esp], edx
	call _ZN10MacStrings21TranslateToUTF8StringEPKc
	mov dword [esp+0x8], 0x1ff
	mov [esp+0x4], eax
	lea eax, [ebp-0x219]
	mov [esp], eax
	call strncpy
	mov byte [ebp-0x1a], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _ZN10MacStrings21TranslateToUTF8StringEPKc
	mov dword [esp+0x8], 0x1ff
	mov [esp+0x4], eax
	lea ebx, [ebp-0x419]
	mov [esp], ebx
	call strncpy
	mov byte [ebp-0x21a], 0x0
	jmp MessageBoxA_70
MessageBoxA_50:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x219]
	mov [esp], eax
	call _ZN8MacTools13QuestionAlertEPKcS1_
	cmp al, 0x1
	sbb ebx, ebx
	not ebx
	add ebx, 0x7
	mov [esp], edi
	call _ZN12StShowCursorD1Ev
	mov eax, ebx
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MessageBoxA_40:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x219]
	mov [esp], eax
	call _ZN8MacTools13QuestionAlertEPKcS1_
	test al, al
	jnz MessageBoxA_60
	mov ebx, 0x2
	jmp MessageBoxA_80
	mov ebx, eax
	mov [esp], edi
	call _ZN12StShowCursorD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;QueryPerformanceCounter
QueryPerformanceCounter:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp-0x10]
	mov [esp], eax
	call Microseconds
	mov ecx, [ebp-0x10]
	mov ebx, [ebp-0xc]
	mov eax, 0x0
	or eax, ecx
	mov ecx, [ebp+0x8]
	mov [ecx], eax
	mov [ecx+0x4], ebx
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;QueryPerformanceFrequency
QueryPerformanceFrequency:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0xf4240
	mov dword [eax+0x4], 0x0
	mov eax, 0x1
	pop ebp
	ret
	add [eax], al


;ResumeThread
iResumeThread:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop
	add [eax], al


;ScreenToClient
ScreenToClient:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	mov [ebp-0xa], ax
	mov eax, [ebx+0x4]
	mov [ebp-0xc], ax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetWindowPort
	lea edx, [ebp-0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call QDGlobalToLocalPoint
	movsx eax, word [ebp-0xa]
	mov [ebx], eax
	movsx eax, word [ebp-0xc]
	mov [ebx+0x4], eax
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;SetFileAttributesA
SetFileAttributesA:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;SetThreadAffinityMask
SetThreadAffinityMask:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;SetThreadPriority
iSetThreadPriority:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	lea ebx, [ebp-0x14]
	mov [esp+0x8], ebx
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call pthread_getschedparam
	test eax, eax
	jnz iSetThreadPriority_10
	mov eax, [ebp+0xc]
	add eax, 0xf
	cmp eax, 0x1e
	jbe iSetThreadPriority_20
iSetThreadPriority_30:
	mov [esp+0x8], ebx
	mov eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call pthread_setschedparam
iSetThreadPriority_10:
	test eax, eax
	setz al
	movzx eax, al
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
iSetThreadPriority_20:
	jmp dword [eax*4+iSetThreadPriority_jumptab_0]
iSetThreadPriority_50:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call sched_get_priority_min
	mov [ebp-0x14], eax
	jmp iSetThreadPriority_30
iSetThreadPriority_60:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call sched_get_priority_min
iSetThreadPriority_40:
	add eax, 0x1f
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	mov [ebp-0x14], edx
	jmp iSetThreadPriority_30
iSetThreadPriority_70:
	mov dword [ebp-0x14], 0x1f
	jmp iSetThreadPriority_30
iSetThreadPriority_90:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call sched_get_priority_max
	mov [ebp-0x14], eax
	jmp iSetThreadPriority_30
iSetThreadPriority_80:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call sched_get_priority_max
	jmp iSetThreadPriority_40
	nop
	
	
iSetThreadPriority_jumptab_0:
	dd iSetThreadPriority_50
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_50
	dd iSetThreadPriority_60
	dd iSetThreadPriority_70
	dd iSetThreadPriority_80
	dd iSetThreadPriority_90
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_30
	dd iSetThreadPriority_80


;SuspendThread
iSuspendThread:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;VirtualAlloc
iVirtualAlloc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz iVirtualAlloc_10
	pop ebp
	ret
iVirtualAlloc_10:
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp calloc
	nop


;VirtualFree
iVirtualFree:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	test eax, eax
	jz iVirtualFree_10
	cmp dword [ebp+0x10], 0x8000
	jz iVirtualFree_20
iVirtualFree_10:
	mov eax, 0x1
	leave
	ret
iVirtualFree_20:
	mov [esp], eax
	call free
	mov eax, 0x1
	leave
	ret
	add [eax], al


;WinGetCurrentThread
WinGetCurrentThread:
	push ebp
	mov ebp, esp
	pop ebp
	jmp pthread_self
	nop


;WinSleep
WinSleep:
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


;timeBeginPeriod
timeBeginPeriod:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;timeEndPeriod
timeEndPeriod:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop
	add [eax], al


;timeGetTime
itimeGetTime:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp-0x10]
	mov [esp], eax
	call Microseconds
	mov ecx, [ebp-0x10]
	mov ebx, [ebp-0xc]
	mov edx, ebx
	mov eax, 0x0
	or eax, ecx
	add eax, 0x1f4
	adc edx, 0x0
	mov dword [esp+0x8], 0x3e8
	mov dword [esp+0xc], 0x0
	mov [esp], eax
	mov [esp+0x4], edx
	call __udivdi3
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of MacWin32:
SECTION .data
sDefaultKeyMap: dd 0x92, 0x3d, 0xba, 0x3b, 0xbb, 0x3d, 0xbc, 0x2c, 0xbd, 0x2d, 0xbe, 0x2e, 0xbf, 0x2f, 0xc0, 0x60, 0xdb, 0x5b, 0xdc, 0x5c, 0xdd, 0x5d, 0xde, 0x27, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
sItalianKeyMap: dd 0x92, 0x3d, 0xba, 0xffffff98, 0xbb, 0xffffff93, 0xbc, 0x2c, 0xbd, 0x27, 0xbe, 0x2e, 0xbf, 0x2d, 0xc0, 0x3c, 0xdb, 0xffffff8f, 0xdc, 0xffffff9d, 0xdd, 0x2b, 0xde, 0xffffff88, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
sGermanKeyMap: dd 0x92, 0x3d, 0xba, 0xffffff9a, 0xbb, 0x95, 0xbc, 0x2c, 0xbd, 0xffffffa7, 0xbe, 0x2e, 0xbf, 0x2d, 0xc0, 0x3c, 0xdb, 0xffffff9f, 0xdc, 0x23, 0xdd, 0x2b, 0xde, 0xffffff8a, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
sFrenchKeyMap: dd 0x92, 0x3d, 0xba, 0x3b, 0xbb, 0x2d, 0xbc, 0x2c, 0xbd, 0x29, 0xbe, 0x3a, 0xbf, 0x3d, 0xc0, 0x3c, 0xdb, 0x5e, 0xdc, 0x60, 0xdd, 0x24, 0xde, 0xffffff9d, 0xe1, 0xa7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of MacWin32:
SECTION .rdata


;Zero initialized global or static variables of MacWin32:
SECTION .bss
_ZZ22GetSystemDefaultLangIDE20sSystemDefaultLangID: resb 0x4
_ZZ14MapVirtualKeyAE13sCachedKeyMap: resb 0x7c


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

