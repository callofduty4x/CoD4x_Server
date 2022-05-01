;Imports of threads:
	extern calloc
	extern pthread_setspecific
	extern _Z18Com_InitThreadDatai
	extern GetCurrentThreadId
	extern pthread_getspecific
	extern WaitForSingleObject
	extern iResetEvent
	extern SetThreadAffinityMask
	extern WinGetCurrentThread
	extern iDuplicateHandle
	extern sysctlbyname
	extern pthread_key_create
	extern iSetEvent
	extern sys_lockThreads
	extern _Z24R_IsUsingAdaptiveGpuSyncv
	extern iCreateEventA
	extern CreateThread
	extern iSetThreadPriority
	extern iResumeThread
	extern iSuspendThread
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
	global _Z14Sys_ThreadMainPv
	global Sys_IsDatabaseThread
	global _Z12Sys_GetValuei
	global _Z12Sys_SetValueiPv
	global _Z15Sys_GetCpuCountv
	global _Z16Sys_IsMainThreadv
	global _Z16Sys_SyncDatabasev
	global _Z16Sys_WakeDatabasev
	global _Z17Sys_WakeDatabase2v
	global _Z17Win_SetThreadLock13WinThreadLock
	global _Z18Sys_InitMainThreadv
	global _Z18Sys_IsRenderThreadv
	global _Z18Sys_NotifyDatabasev
	global _Z19Sys_IsDatabaseReadyv
	global _Z20Sys_IsDatabaseReady2v
	global _Z20Win_UpdateThreadLockv
	global _Z21Sys_DatabaseCompletedv
	global _Z21Sys_WaitStartDatabasev
	global _Z22Sys_DatabaseCompleted2v
	global _Z22Sys_WaitDatabaseThreadv
	global _Z23Sys_SpawnDatabaseThreadPFvjE
	global _Z23Sys_SuspendOtherThreadsv
	global _Z24Sys_ResumeDatabaseThread11ThreadOwner
	global _Z25Sys_SuspendDatabaseThread11ThreadOwner
	global _Z27Sys_EndLoadThreadPrioritiesv
	global _Z29Sys_BeginLoadThreadPrioritiesv
	global _Z31Sys_HaveSuspendedDatabaseThread11ThreadOwner
	global _Z9Sys_Sleepi


SECTION .text


;Sys_ThreadMain(void*)
_Z14Sys_ThreadMainPv:
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
	call _Z18Com_InitThreadDatai
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
_Z12Sys_GetValuei:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_dwTlsKey]
	mov [esp], eax
	call pthread_getspecific
	test eax, eax
	jz _Z12Sys_GetValuei_10
	mov edx, [ebp+0x8]
	mov eax, [eax+edx*4]
_Z12Sys_GetValuei_10:
	leave
	ret
	nop


;Sys_SetValue(int, void*)
_Z12Sys_SetValueiPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_dwTlsKey]
	mov [esp], eax
	call pthread_getspecific
	test eax, eax
	jz _Z12Sys_SetValueiPv_10
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [eax+edx*4], ecx
_Z12Sys_SetValueiPv_10:
	leave
	ret


;Sys_GetCpuCount()
_Z15Sys_GetCpuCountv:
	push ebp
	mov ebp, esp
	mov eax, [s_cpuCount]
	pop ebp
	ret


;Sys_IsMainThread()
_Z16Sys_IsMainThreadv:
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
_Z16Sys_SyncDatabasev:
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
_Z16Sys_WakeDatabasev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [databaseCompletedEvent]
	mov [esp], eax
	call iResetEvent
	leave
	ret
	nop


;Sys_WakeDatabase2()
_Z17Sys_WakeDatabase2v:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [databaseCompletedEvent2]
	mov [esp], eax
	call iResetEvent
	leave
	ret
	nop


;Win_SetThreadLock(WinThreadLock)
_Z17Win_SetThreadLock13WinThreadLock:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	cmp dword [s_cpuCount], 0x1
	jz _Z17Win_SetThreadLock13WinThreadLock_10
	cmp [s_threadLock], eax
	jz _Z17Win_SetThreadLock13WinThreadLock_10
	mov [s_threadLock], eax
	cmp eax, 0x2
	setz bl
	test eax, eax
	jz _Z17Win_SetThreadLock13WinThreadLock_20
	mov eax, [s_affinityMaskForCpu]
	mov [esp+0x4], eax
	mov eax, [threadHandle]
	mov [esp], eax
	call SetThreadAffinityMask
	cmp dword [s_cpuCount], 0x3
	sbb eax, eax
	add eax, 0x2
	test bl, bl
	jz _Z17Win_SetThreadLock13WinThreadLock_30
_Z17Win_SetThreadLock13WinThreadLock_40:
	mov eax, [eax*4+s_affinityMaskForCpu]
_Z17Win_SetThreadLock13WinThreadLock_50:
	mov [esp+0x4], eax
	mov eax, [threadHandle+0x4]
	mov [esp], eax
	call SetThreadAffinityMask
_Z17Win_SetThreadLock13WinThreadLock_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17Win_SetThreadLock13WinThreadLock_20:
	mov eax, [s_affinityMaskForProcess]
	mov [esp+0x4], eax
	mov eax, [threadHandle]
	mov [esp], eax
	call SetThreadAffinityMask
	cmp dword [s_cpuCount], 0x3
	sbb eax, eax
	add eax, 0x2
	test bl, bl
	jnz _Z17Win_SetThreadLock13WinThreadLock_40
_Z17Win_SetThreadLock13WinThreadLock_30:
	mov eax, [s_affinityMaskForProcess]
	jmp _Z17Win_SetThreadLock13WinThreadLock_50
	nop


;Sys_InitMainThread()
_Z18Sys_InitMainThreadv:
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
	call iDuplicateHandle
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
	jnz _Z18Sys_InitMainThreadv_10
	cmp dword [ebp-0xc], 0x1
	jbe _Z18Sys_InitMainThreadv_10
	mov ecx, 0x3
	mov [s_affinityMaskForProcess], ecx
	test ecx, ecx
	jnz _Z18Sys_InitMainThreadv_20
_Z18Sys_InitMainThreadv_30:
	mov dword [s_cpuCount], 0x1
	mov dword [s_affinityMaskForCpu], 0xffffffff
_Z18Sys_InitMainThreadv_70:
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
	call _Z18Com_InitThreadDatai
	add esp, 0xb4
	pop ebx
	pop ebp
	ret
_Z18Sys_InitMainThreadv_10:
	mov ecx, 0x1
	mov [s_affinityMaskForProcess], ecx
	test ecx, ecx
	jz _Z18Sys_InitMainThreadv_30
_Z18Sys_InitMainThreadv_20:
	xor ebx, ebx
	mov edx, 0x1
_Z18Sys_InitMainThreadv_60:
	test edx, ecx
	jz _Z18Sys_InitMainThreadv_40
	mov [ebp+ebx*4-0x90], edx
	add ebx, 0x1
	cmp ebx, 0x20
	jz _Z18Sys_InitMainThreadv_50
_Z18Sys_InitMainThreadv_40:
	add edx, edx
	mov eax, edx
	neg eax
	test eax, ecx
	jnz _Z18Sys_InitMainThreadv_60
	cmp ebx, 0x1
	jbe _Z18Sys_InitMainThreadv_30
_Z18Sys_InitMainThreadv_50:
	mov [s_cpuCount], ebx
	mov eax, [ebp-0x90]
	mov [s_affinityMaskForCpu], eax
	mov eax, [ebp+ebx*4-0x94]
	mov [s_affinityMaskForCpu+0x4], eax
	cmp ebx, 0x2
	jz _Z18Sys_InitMainThreadv_70
	cmp ebx, 0x3
	jz _Z18Sys_InitMainThreadv_80
	cmp ebx, 0x4
	jz _Z18Sys_InitMainThreadv_90
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
	jmp _Z18Sys_InitMainThreadv_70
_Z18Sys_InitMainThreadv_90:
	mov eax, [ebp-0x8c]
	mov [s_affinityMaskForCpu+0x8], eax
	mov eax, [ebp-0x88]
	mov [s_affinityMaskForCpu+0xc], eax
	jmp _Z18Sys_InitMainThreadv_70
_Z18Sys_InitMainThreadv_80:
	mov eax, [ebp-0x8c]
	mov [s_affinityMaskForCpu+0x8], eax
	jmp _Z18Sys_InitMainThreadv_70


;Sys_IsRenderThread()
_Z18Sys_IsRenderThreadv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;Sys_NotifyDatabase()
_Z18Sys_NotifyDatabasev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [wakeDatabaseEvent]
	mov [esp], eax
	call iSetEvent
	leave
	ret
	nop


;Sys_IsDatabaseReady()
_Z19Sys_IsDatabaseReadyv:
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
_Z20Sys_IsDatabaseReady2v:
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
_Z20Win_UpdateThreadLockv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	cmp dword [s_cpuCount], 0x1
	jz _Z20Win_UpdateThreadLockv_10
	mov eax, sys_lockThreads
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz _Z20Win_UpdateThreadLockv_20
_Z20Win_UpdateThreadLockv_60:
	cmp dword [s_cpuCount], 0x1
	jz _Z20Win_UpdateThreadLockv_30
	cmp ebx, [s_threadLock]
	jz _Z20Win_UpdateThreadLockv_30
	mov [s_threadLock], ebx
	cmp ebx, 0x2
	setz al
	mov esi, eax
	test ebx, ebx
	jz _Z20Win_UpdateThreadLockv_40
	mov eax, [s_affinityMaskForCpu]
_Z20Win_UpdateThreadLockv_80:
	mov [esp+0x4], eax
	mov eax, [threadHandle]
	mov [esp], eax
	call SetThreadAffinityMask
	cmp dword [s_cpuCount], 0x3
	sbb eax, eax
	add eax, 0x2
	mov edx, esi
	test dl, dl
	jz _Z20Win_UpdateThreadLockv_50
	mov eax, [eax*4+s_affinityMaskForCpu]
_Z20Win_UpdateThreadLockv_70:
	mov [esp+0x4], eax
	mov eax, [threadHandle+0x4]
	mov [esp], eax
	call SetThreadAffinityMask
_Z20Win_UpdateThreadLockv_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20Win_UpdateThreadLockv_20:
	call _Z24R_IsUsingAdaptiveGpuSyncv
	test al, al
	mov eax, 0x1
	cmovnz ebx, eax
	jmp _Z20Win_UpdateThreadLockv_60
_Z20Win_UpdateThreadLockv_10:
	mov dword [s_threadLock], 0x2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20Win_UpdateThreadLockv_50:
	mov eax, [s_affinityMaskForProcess]
	jmp _Z20Win_UpdateThreadLockv_70
_Z20Win_UpdateThreadLockv_40:
	mov eax, [s_affinityMaskForProcess]
	jmp _Z20Win_UpdateThreadLockv_80
	add [eax], al


;Sys_DatabaseCompleted()
_Z21Sys_DatabaseCompletedv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [databaseCompletedEvent]
	mov [esp], eax
	call iSetEvent
	leave
	ret
	nop


;Sys_WaitStartDatabase()
_Z21Sys_WaitStartDatabasev:
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
_Z22Sys_DatabaseCompleted2v:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [databaseCompletedEvent2]
	mov [esp], eax
	call iSetEvent
	leave
	ret
	nop


;Sys_WaitDatabaseThread()
_Z22Sys_WaitDatabaseThreadv:
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
_Z23Sys_SpawnDatabaseThreadPFvjE:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call iCreateEventA
	mov [wakeDatabaseEvent], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call iCreateEventA
	mov [databaseCompletedEvent], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call iCreateEventA
	mov [databaseCompletedEvent2], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call iCreateEventA
	mov [resumedDatabaseEvent], eax
	mov eax, [ebp+0x8]
	mov [threadFunc+0x4], eax
	mov dword [esp+0x14], threadId+0x4
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], _Z14Sys_ThreadMainPv
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CreateThread
	mov edx, eax
	mov [threadHandle+0x4], eax
	test eax, eax
	jz _Z23Sys_SpawnDatabaseThreadPFvjE_10
	cmp dword [s_cpuCount], 0x2
	sbb eax, eax
	or eax, 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call iSetThreadPriority
	mov eax, [threadHandle+0x4]
	mov [esp], eax
	call iResumeThread
	mov eax, 0x1
	leave
	ret
_Z23Sys_SpawnDatabaseThreadPFvjE_10:
	xor eax, eax
	leave
	ret
	nop


;Sys_SuspendOtherThreads()
_Z23Sys_SuspendOtherThreadsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	call GetCurrentThreadId
	mov esi, eax
	xor ebx, ebx
_Z23Sys_SuspendOtherThreadsv_20:
	mov edx, [ebx+threadHandle]
	test edx, edx
	jz _Z23Sys_SuspendOtherThreadsv_10
	mov eax, [ebx+threadId]
	test eax, eax
	jz _Z23Sys_SuspendOtherThreadsv_10
	cmp esi, eax
	jz _Z23Sys_SuspendOtherThreadsv_10
	mov [esp], edx
	call iSuspendThread
_Z23Sys_SuspendOtherThreadsv_10:
	add ebx, 0x4
	cmp ebx, 0x8
	jnz _Z23Sys_SuspendOtherThreadsv_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Sys_ResumeDatabaseThread(ThreadOwner)
_Z24Sys_ResumeDatabaseThread11ThreadOwner:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [g_databaseThreadOwner], 0x0
	mov eax, [resumedDatabaseEvent]
	mov [esp], eax
	call iSetEvent
	leave
	ret
	nop


;Sys_SuspendDatabaseThread(ThreadOwner)
_Z25Sys_SuspendDatabaseThread11ThreadOwner:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [g_databaseThreadOwner], eax
	mov eax, [resumedDatabaseEvent]
	mov [esp], eax
	call iResetEvent
	leave
	ret
	nop


;Sys_EndLoadThreadPriorities()
_Z27Sys_EndLoadThreadPrioritiesv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [threadHandle]
	mov [esp], eax
	call iSetThreadPriority
	leave
	ret
	nop


;Sys_BeginLoadThreadPriorities()
_Z29Sys_BeginLoadThreadPrioritiesv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0xffffffff
	mov eax, [threadHandle]
	mov [esp], eax
	call iSetThreadPriority
	leave
	ret
	nop


;Sys_HaveSuspendedDatabaseThread(ThreadOwner)
_Z31Sys_HaveSuspendedDatabaseThread11ThreadOwner:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp [g_databaseThreadOwner], eax
	setz al
	movzx eax, al
	pop ebp
	ret


;Sys_Sleep(int)
_Z9Sys_Sleepi:
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

