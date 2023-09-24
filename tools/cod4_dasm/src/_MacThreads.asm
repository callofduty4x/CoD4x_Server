;Imports of MacThreads:
	extern pthread_cond_wait
	extern pthread_cond_broadcast
	extern pthread_cond_init
	extern __cxa_allocate_exception
	extern __cxa_throw
	extern pthread_cond_destroy
	extern _MPIsFullyInitialized
	extern pthread_mutex_lock
	extern pthread_mutex_unlock
	extern pthread_mutexattr_init
	extern pthread_mutexattr_settype
	extern pthread_mutex_init
	extern pthread_mutexattr_destroy
	extern pthread_mutex_destroy
	extern pthread_create
	extern usleep
	extern _ZdlPv
	extern _Unwind_Resume

;Exports of MacThreads:
	global sMPInitialized
	global _ZN10CCondition4WaitER6CMutex
	global _ZN10CCondition9BroadcastEv
	global _ZN10CConditionC1Ev
	global _ZN10CConditionD1Ev
	global _ZN10MacThreads11InitThreadsEv
	global _ZN11StMutexLockC1ER6CMutex
	global _ZN11StMutexLockD1Ev
	global _ZN12StThreadLockC1EP7CThread
	global _ZN12StThreadLockD1Ev
	global _ZN6CMutex4LockEv
	global _ZN6CMutex6UnlockEv
	global _ZN6CMutexC1Ev
	global _ZN6CMutexD1Ev
	global _ZN7CThread11ExecuteProcEPv
	global _ZN7CThread3RunEPv
	global _ZN7CThread4StopEv
	global _ZN7CThread9IsRunningEv
	global _ZN7CThreadC2Ev
	global _ZN7CThreadD0Ev
	global _ZN7CThreadD1Ev
	global _ZN7CThreadD2Ev
	global _ZTI7CThread
	global _ZTV7CThread


SECTION .text


;CCondition::Wait(CMutex&)
_ZN10CCondition4WaitER6CMutex:
	push ebp
	mov ebp, esp
	pop ebp
	jmp pthread_cond_wait
	nop


;CCondition::Broadcast()
_ZN10CCondition9BroadcastEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_cond_broadcast
	leave
	ret
	nop


;CCondition::CCondition()
_ZN10CConditionC1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_cond_init
	mov ebx, eax
	test eax, eax
	jnz _ZN10CConditionC1Ev_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN10CConditionC1Ev_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], ebx
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw


;CCondition::~CCondition()
_ZN10CConditionD1Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_cond_destroy
	leave
	ret
	nop


;MacThreads::InitThreads()
_ZN10MacThreads11InitThreadsEv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _MPIsFullyInitialized
	test al, al
	setnz byte [sMPInitialized]
	leave
	ret
	add [eax], al


;StMutexLock::StMutexLock(CMutex&)
_ZN11StMutexLockC1ER6CMutex:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebx], eax
	mov [esp], eax
	call pthread_mutex_lock
	test eax, eax
	setz byte [ebx+0x4]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;StMutexLock::~StMutexLock()
_ZN11StMutexLockD1Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp byte [eax+0x4], 0x0
	jnz _ZN11StMutexLockD1Ev_10
	leave
	ret
_ZN11StMutexLockD1Ev_10:
	mov eax, [eax]
	mov [esp], eax
	call pthread_mutex_unlock
	leave
	ret
	nop


;StThreadLock::StThreadLock(CThread*)
_ZN12StThreadLockC1EP7CThread:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebx], eax
	add eax, 0xc
	mov [esp], eax
	call pthread_mutex_lock
	test eax, eax
	setz byte [ebx+0x4]
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;StThreadLock::~StThreadLock()
_ZN12StThreadLockD1Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp byte [eax+0x4], 0x0
	jnz _ZN12StThreadLockD1Ev_10
	leave
	ret
_ZN12StThreadLockD1Ev_10:
	mov eax, [eax]
	add eax, 0xc
	mov [esp], eax
	call pthread_mutex_unlock
	leave
	ret


;CMutex::Lock()
_ZN6CMutex4LockEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_mutex_lock
	test eax, eax
	setz al
	movzx eax, al
	leave
	ret
	nop


;CMutex::Unlock()
_ZN6CMutex6UnlockEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_mutex_unlock
	leave
	ret
	nop


;CMutex::CMutex()
_ZN6CMutexC1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	lea esi, [ebp-0x14]
	mov [esp], esi
	call pthread_mutexattr_init
	mov ebx, eax
	test eax, eax
	jnz _ZN6CMutexC1Ev_10
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call pthread_mutexattr_settype
	mov ebx, eax
	test eax, eax
	jnz _ZN6CMutexC1Ev_10
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_mutex_init
	mov ebx, eax
	test eax, eax
	jnz _ZN6CMutexC1Ev_10
	mov [esp], esi
	call pthread_mutexattr_destroy
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN6CMutexC1Ev_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], ebx
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
	nop
	add [eax], al


;CMutex::~CMutex()
_ZN6CMutexD1Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call pthread_mutex_destroy
	leave
	ret
	nop


;CThread::ExecuteProc(void*)
_ZN7CThread11ExecuteProcEPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [edx+0x8]
	mov byte [ebx+0x38], 0x0
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CThread::Run(void*)
_ZN7CThread3RunEPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x38], 0x0
	jz _ZN7CThread3RunEPv_10
	xor eax, eax
_ZN7CThread3RunEPv_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN7CThread3RunEPv_10:
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	mov byte [ebx+0x38], 0x1
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _ZN7CThread11ExecuteProcEPv
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+0x4]
	mov [esp], eax
	call pthread_create
	test eax, eax
	jz _ZN7CThread3RunEPv_20
	mov byte [ebx+0x38], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CThread::Stop()
_ZN7CThread4StopEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov byte [eax+0x38], 0x0
	mov dword [esp], 0x186a0
	call usleep
	leave
	ret
	nop


;CThread::IsRunning()
_ZN7CThread9IsRunningEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x38]
	pop ebp
	ret


;CThread::CThread()
_ZN7CThreadC2Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV7CThread+0x8
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	lea eax, [ebx+0xc]
	mov [esp], eax
	call _ZN6CMutexC1Ev
	mov byte [ebx+0x38], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;CThread::~CThread()
_ZN7CThreadD0Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV7CThread+0x8
	mov byte [esi+0x38], 0x0
	mov dword [esp], 0x186a0
	call usleep
	lea eax, [esi+0xc]
	mov [esp], eax
	call pthread_mutex_destroy
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZdlPv
	mov ebx, eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call pthread_mutex_destroy
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CThread::~CThread()
_ZN7CThreadD1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV7CThread+0x8
	mov byte [esi+0x38], 0x0
	mov dword [esp], 0x186a0
	call usleep
	lea eax, [esi+0xc]
	mov [esp], eax
	call pthread_mutex_destroy
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov ebx, eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call pthread_mutex_destroy
	mov [esp], ebx
	call _Unwind_Resume


;CThread::~CThread()
_ZN7CThreadD2Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV7CThread+0x8
	mov byte [esi+0x38], 0x0
	mov dword [esp], 0x186a0
	call usleep
	lea eax, [esi+0xc]
	mov [esp], eax
	call pthread_mutex_destroy
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov ebx, eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call pthread_mutex_destroy
	mov [esp], ebx
	call _Unwind_Resume


;Initialized global or static variables of MacThreads:
SECTION .data


;Initialized constant data of MacThreads:
SECTION .rdata
;VTypeInfoTable for CThread:
_ZTI7CThread: dd 0x8, _cstring_7cthread, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CThread:
_ZTV7CThread: dd 0x0, _ZTI7CThread, _ZN7CThreadD1Ev, _ZN7CThreadD0Ev, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of MacThreads:
SECTION .bss
sMPInitialized: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_7cthread:		db "7CThread",0



;All constant floats and doubles:
SECTION .rdata

