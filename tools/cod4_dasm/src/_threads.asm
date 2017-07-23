;Imports of threads:
	extern calloc
	extern pthread_setspecific
	extern Com_InitThreadData
	extern GetCurrentThreadId
	extern pthread_getspecific
	extern WaitForSingleObject
	extern ResetEvent
	extern SetThreadAffinityMask
	extern WinGetCurrentThread
	extern DuplicateHandle
	extern sysctlbyname
	extern pthread_key_create
	extern SetEvent
	extern sys_lockThreads
	extern R_IsUsingAdaptiveGpuSync
	extern CreateEventA
	extern CreateThread
	extern SetThreadPriority
	extern ResumeThread
	extern SuspendThread
	extern WinSleep

;Exports of threads:
	global s_threadLock
	global s_cpuCount
	global threadHandle
	global s_affinityMaskForProcess
	global s_affinityMaskForCpu
	global threadId
	global g_dwTlsKey
	global databaseCompletedEvent2
	global wakeDatabaseEvent
	global databaseCompletedEvent
	global resumedDatabaseEvent
	global g_databaseThreadOwner
	global threadFunc
	global Sys_ThreadMain
	global Sys_IsDatabaseThread
	global Sys_GetValue
	global Sys_SetValue
	global Sys_GetCpuCount
	global Sys_IsMainThread
	global Sys_SyncDatabase
	global Sys_WakeDatabase
	global Sys_WakeDatabase2
	global Win_SetThreadLock
	global Sys_InitMainThread
	global Sys_IsRenderThread
	global Sys_NotifyDatabase
	global Sys_IsDatabaseReady
	global Sys_IsDatabaseReady2
	global Win_UpdateThreadLock
	global Sys_DatabaseCompleted
	global Sys_WaitStartDatabase
	global Sys_DatabaseCompleted2
	global Sys_WaitDatabaseThread
	global Sys_SpawnDatabaseThread
	global Sys_SuspendOtherThreads
	global Sys_ResumeDatabaseThread
	global Sys_SuspendDatabaseThread
	global Sys_EndLoadThreadPriorities
	global Sys_BeginLoadThreadPriorities
	global Sys_HaveSuspendedDatabaseThread
	global Sys_Sleep


SECTION .text


;Sys_ThreadMain(void*)
Sys_ThreadMain:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x20
	mov dword [esp], 0x1
	call calloc
	mov [esp+0x4], eax
	mov eax, [g_dwTlsKey]
	mov [esp], eax
	call pthread_setspecific
	mov [esp], ebx
	call Com_InitThreadData
	mov [esp], ebx
	call dword [ebx*4+threadFunc]
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Sys_IsDatabaseThread
Sys_IsDatabaseThread:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call GetCurrentThreadId
	cmp eax, [threadId+0x4]
	setz al
	movzx eax, al
	leave
	ret
	nop


;Sys_GetValue(int)
Sys_GetValue:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_dwTlsKey]
	mov [esp], eax
	call pthread_getspecific
	test eax, eax
	jz Sys_GetValue_10
	mov edx, [ebp+0x8]
	mov eax, [eax+edx*4]
Sys_GetValue_10:
	leave
	ret
	nop


;Sys_SetValue(int, void*)
Sys_SetValue:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_dwTlsKey]
	mov [esp], eax
	call pthread_getspecific
	test eax, eax
	jz Sys_SetValue_10
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [eax+edx*4], ecx
Sys_SetValue_10:
	leave
	ret


;Sys_GetCpuCount()
Sys_GetCpuCount:
	push ebp
	mov ebp, esp
	mov eax, [s_cpuCount]
	pop ebp
	ret


;Sys_IsMainThread()
Sys_IsMainThread:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call GetCurrentThreadId
	cmp eax, [threadId]
	setz al
	movzx eax, al
	leave
	ret
	nop


;Sys_SyncDatabase()
Sys_SyncDatabase:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0xffffffff
	mov eax, [databaseCompletedEvent]
	mov [esp], eax
	call WaitForSingleObject
	leave
	ret
	nop


;Sys_WakeDatabase()
Sys_WakeDatabase:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [databaseCompletedEvent]
	mov [esp], eax
	call ResetEvent
	leave
	ret
	nop


;Sys_WakeDatabase2()
Sys_WakeDatabase2:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [databaseCompletedEvent2]
	mov [esp], eax
	call ResetEvent
	leave
	ret
	nop


;Win_SetThreadLock(WinThreadLock)
Win_SetThreadLock:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	cmp dword [s_cpuCount], 0x1
	jz Win_SetThreadLock_10
	cmp [s_threadLock], eax
	jz Win_SetThreadLock_10
	mov [s_threadLock], eax
	cmp eax, 0x2
	setz bl
	test eax, eax
	jz Win_SetThreadLock_20
	mov eax, [s_affinityMaskForCpu]
	mov [esp+0x4], eax
	mov eax, [threadHandle]
	mov [esp], eax
	call SetThreadAffinityMask
	cmp dword [s_cpuCount], 0x3
	sbb eax, eax
	add eax, 0x2
	test bl, bl
	jz Win_SetThreadLock_30
Win_SetThreadLock_40:
	mov eax, [eax*4+s_affinityMaskForCpu]
Win_SetThreadLock_50:
	mov [esp+0x4], eax
	mov eax, [threadHandle+0x4]
	mov [esp], eax
	call SetThreadAffinityMask
Win_SetThreadLock_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Win_SetThreadLock_20:
	mov eax, [s_affinityMaskForProcess]
	mov [esp+0x4], eax
	mov eax, [threadHandle]
	mov [esp], eax
	call SetThreadAffinityMask
	cmp dword [s_cpuCount], 0x3
	sbb eax, eax
	add eax, 0x2
	test bl, bl
	jnz Win_SetThreadLock_40
Win_SetThreadLock_30:
	mov eax, [s_affinityMaskForProcess]
	jmp Win_SetThreadLock_50
	nop


;Sys_InitMainThread()
Sys_InitMainThread:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0xb4
	call GetCurrentThreadId
	mov [threadId], eax
	call WinGetCurrentThread
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], threadHandle
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], ebx
	call DuplicateHandle
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x10], 0x4
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_hwlogicalcpu
	call sysctlbyname
	test eax, eax
	jnz Sys_InitMainThread_10
	cmp dword [ebp-0xc], 0x1
	jbe Sys_InitMainThread_10
	mov ecx, 0x3
	mov [s_affinityMaskForProcess], ecx
	test ecx, ecx
	jnz Sys_InitMainThread_20
Sys_InitMainThread_30:
	mov dword [s_cpuCount], 0x1
	mov dword [s_affinityMaskForCpu], 0xffffffff
Sys_InitMainThread_70:
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_dwTlsKey
	call pthread_key_create
	mov dword [esp+0x4], 0x20
	mov dword [esp], 0x1
	call calloc
	mov [esp+0x4], eax
	mov eax, [g_dwTlsKey]
	mov [esp], eax
	call pthread_setspecific
	mov dword [esp], 0x0
	call Com_InitThreadData
	add esp, 0xb4
	pop ebx
	pop ebp
	ret
Sys_InitMainThread_10:
	mov ecx, 0x1
	mov [s_affinityMaskForProcess], ecx
	test ecx, ecx
	jz Sys_InitMainThread_30
Sys_InitMainThread_20:
	xor ebx, ebx
	mov edx, 0x1
Sys_InitMainThread_60:
	test edx, ecx
	jz Sys_InitMainThread_40
	mov [ebp+ebx*4-0x90], edx
	add ebx, 0x1
	cmp ebx, 0x20
	jz Sys_InitMainThread_50
Sys_InitMainThread_40:
	add edx, edx
	mov eax, edx
	neg eax
	test eax, ecx
	jnz Sys_InitMainThread_60
	cmp ebx, 0x1
	jbe Sys_InitMainThread_30
Sys_InitMainThread_50:
	mov [s_cpuCount], ebx
	mov eax, [ebp-0x90]
	mov [s_affinityMaskForCpu], eax
	mov eax, [ebp+ebx*4-0x94]
	mov [s_affinityMaskForCpu+0x4], eax
	cmp ebx, 0x2
	jz Sys_InitMainThread_70
	cmp ebx, 0x3
	jz Sys_InitMainThread_80
	cmp ebx, 0x4
	jz Sys_InitMainThread_90
	lea edx, [ebx-0x2]
	mov eax, 0xaaaaaaab
	mul edx
	shr edx, 1
	mov eax, [ebp+edx*4-0x8c]
	mov [s_affinityMaskForCpu+0x8], eax
	sub ebx, edx
	mov eax, [ebp+ebx*4-0x94]
	mov [s_affinityMaskForCpu+0xc], eax
	mov dword [s_cpuCount], 0x4
	jmp Sys_InitMainThread_70
Sys_InitMainThread_90:
	mov eax, [ebp-0x8c]
	mov [s_affinityMaskForCpu+0x8], eax
	mov eax, [ebp-0x88]
	mov [s_affinityMaskForCpu+0xc], eax
	jmp Sys_InitMainThread_70
Sys_InitMainThread_80:
	mov eax, [ebp-0x8c]
	mov [s_affinityMaskForCpu+0x8], eax
	jmp Sys_InitMainThread_70


;Sys_IsRenderThread()
Sys_IsRenderThread:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;Sys_NotifyDatabase()
Sys_NotifyDatabase:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [wakeDatabaseEvent]
	mov [esp], eax
	call SetEvent
	leave
	ret
	nop


;Sys_IsDatabaseReady()
Sys_IsDatabaseReady:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [databaseCompletedEvent]
	mov [esp], eax
	call WaitForSingleObject
	test eax, eax
	setz al
	movzx eax, al
	leave
	ret
	nop


;Sys_IsDatabaseReady2()
Sys_IsDatabaseReady2:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [databaseCompletedEvent2]
	mov [esp], eax
	call WaitForSingleObject
	test eax, eax
	setz al
	movzx eax, al
	leave
	ret
	nop


;Win_UpdateThreadLock()
Win_UpdateThreadLock:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	cmp dword [s_cpuCount], 0x1
	jz Win_UpdateThreadLock_10
	mov eax, sys_lockThreads
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz Win_UpdateThreadLock_20
Win_UpdateThreadLock_60:
	cmp dword [s_cpuCount], 0x1
	jz Win_UpdateThreadLock_30
	cmp ebx, [s_threadLock]
	jz Win_UpdateThreadLock_30
	mov [s_threadLock], ebx
	cmp ebx, 0x2
	setz al
	mov esi, eax
	test ebx, ebx
	jz Win_UpdateThreadLock_40
	mov eax, [s_affinityMaskForCpu]
Win_UpdateThreadLock_80:
	mov [esp+0x4], eax
	mov eax, [threadHandle]
	mov [esp], eax
	call SetThreadAffinityMask
	cmp dword [s_cpuCount], 0x3
	sbb eax, eax
	add eax, 0x2
	mov edx, esi
	test dl, dl
	jz Win_UpdateThreadLock_50
	mov eax, [eax*4+s_affinityMaskForCpu]
Win_UpdateThreadLock_70:
	mov [esp+0x4], eax
	mov eax, [threadHandle+0x4]
	mov [esp], eax
	call SetThreadAffinityMask
Win_UpdateThreadLock_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Win_UpdateThreadLock_20:
	call R_IsUsingAdaptiveGpuSync
	test al, al
	mov eax, 0x1
	cmovnz ebx, eax
	jmp Win_UpdateThreadLock_60
Win_UpdateThreadLock_10:
	mov dword [s_threadLock], 0x2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Win_UpdateThreadLock_50:
	mov eax, [s_affinityMaskForProcess]
	jmp Win_UpdateThreadLock_70
Win_UpdateThreadLock_40:
	mov eax, [s_affinityMaskForProcess]
	jmp Win_UpdateThreadLock_80
	add [eax], al


;Sys_DatabaseCompleted()
Sys_DatabaseCompleted:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [databaseCompletedEvent]
	mov [esp], eax
	call SetEvent
	leave
	ret
	nop


;Sys_WaitStartDatabase()
Sys_WaitStartDatabase:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0xffffffff
	mov eax, [wakeDatabaseEvent]
	mov [esp], eax
	call WaitForSingleObject
	leave
	ret
	nop


;Sys_DatabaseCompleted2()
Sys_DatabaseCompleted2:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [databaseCompletedEvent2]
	mov [esp], eax
	call SetEvent
	leave
	ret
	nop


;Sys_WaitDatabaseThread()
Sys_WaitDatabaseThread:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0xffffffff
	mov eax, [resumedDatabaseEvent]
	mov [esp], eax
	call WaitForSingleObject
	leave
	ret
	nop


;Sys_SpawnDatabaseThread(void (*)(unsigned int))
Sys_SpawnDatabaseThread:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CreateEventA
	mov [wakeDatabaseEvent], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call CreateEventA
	mov [databaseCompletedEvent], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call CreateEventA
	mov [databaseCompletedEvent2], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call CreateEventA
	mov [resumedDatabaseEvent], eax
	mov eax, [ebp+0x8]
	mov [threadFunc+0x4], eax
	mov dword [esp+0x14], threadId+0x4
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], Sys_ThreadMain
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CreateThread
	mov edx, eax
	mov [threadHandle+0x4], eax
	test eax, eax
	jz Sys_SpawnDatabaseThread_10
	cmp dword [s_cpuCount], 0x2
	sbb eax, eax
	or eax, 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call SetThreadPriority
	mov eax, [threadHandle+0x4]
	mov [esp], eax
	call ResumeThread
	mov eax, 0x1
	leave
	ret
Sys_SpawnDatabaseThread_10:
	xor eax, eax
	leave
	ret
	nop


;Sys_SuspendOtherThreads()
Sys_SuspendOtherThreads:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	call GetCurrentThreadId
	mov esi, eax
	xor ebx, ebx
Sys_SuspendOtherThreads_20:
	mov edx, [ebx+threadHandle]
	test edx, edx
	jz Sys_SuspendOtherThreads_10
	mov eax, [ebx+threadId]
	test eax, eax
	jz Sys_SuspendOtherThreads_10
	cmp esi, eax
	jz Sys_SuspendOtherThreads_10
	mov [esp], edx
	call SuspendThread
Sys_SuspendOtherThreads_10:
	add ebx, 0x4
	cmp ebx, 0x8
	jnz Sys_SuspendOtherThreads_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Sys_ResumeDatabaseThread(ThreadOwner)
Sys_ResumeDatabaseThread:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [g_databaseThreadOwner], 0x0
	mov eax, [resumedDatabaseEvent]
	mov [esp], eax
	call SetEvent
	leave
	ret
	nop


;Sys_SuspendDatabaseThread(ThreadOwner)
Sys_SuspendDatabaseThread:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [g_databaseThreadOwner], eax
	mov eax, [resumedDatabaseEvent]
	mov [esp], eax
	call ResetEvent
	leave
	ret
	nop


;Sys_EndLoadThreadPriorities()
Sys_EndLoadThreadPriorities:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [threadHandle]
	mov [esp], eax
	call SetThreadPriority
	leave
	ret
	nop


;Sys_BeginLoadThreadPriorities()
Sys_BeginLoadThreadPriorities:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0xffffffff
	mov eax, [threadHandle]
	mov [esp], eax
	call SetThreadPriority
	leave
	ret
	nop


;Sys_HaveSuspendedDatabaseThread(ThreadOwner)
Sys_HaveSuspendedDatabaseThread:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp [g_databaseThreadOwner], eax
	setz al
	movzx eax, al
	pop ebp
	ret


;Sys_Sleep(int)
Sys_Sleep:
	push ebp
	mov ebp, esp
	pop ebp
	jmp WinSleep
	nop


;Initialized global or static variables of threads:
SECTION .data


;Initialized constant data of threads:
SECTION .rdata


;Zero initialized global or static variables of threads:
SECTION .bss
s_threadLock: resb 0x4
s_cpuCount: resb 0x4
threadHandle: resb 0x8
s_affinityMaskForProcess: resb 0x4
s_affinityMaskForCpu: resb 0x10
threadId: resb 0x8
g_dwTlsKey: resb 0x4
databaseCompletedEvent2: resb 0x4
wakeDatabaseEvent: resb 0x4
databaseCompletedEvent: resb 0x4
resumedDatabaseEvent: resb 0x4
g_databaseThreadOwner: resb 0x4
threadFunc: resb 0x3c


;All cstrings:
SECTION .rdata
_cstring_hwlogicalcpu:		db "hw.logicalcpu",0



;All constant floats and doubles:
SECTION .rdata

