;Imports of MacWin32x:
	extern fclose
	extern _ZdlPv
	extern pthread_mutexattr_init
	extern pthread_mutexattr_settype
	extern _Znwm
	extern pthread_mutex_init
	extern pthread_mutexattr_destroy
	extern pthread_cond_init
	extern _ZN8MacFiles5fopenEPKcS1_
	extern ftell
	extern fseek
	extern fread
	extern pthread_mutex_lock
	extern pthread_mutex_unlock
	extern pthread_yield_np
	extern pthread_cond_broadcast
	extern pthread_cond_wait
	extern gettimeofday
	extern __udivdi3
	extern __umoddi3
	extern pthread_cond_timedwait

;Exports of MacWin32x:
	global sLastError
	global CloseHandle
	global iCreateEventA
	global iCreateFileA
	global iGetFileSize
	global GetLastError
	global ReadFileEx
	global iResetEvent
	global iSetEvent
	global SetLastError
	global SleepEx
	global WaitForSingleObject


SECTION .text


;CloseHandle
CloseHandle:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x46696c65
	jz CloseHandle_10
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CloseHandle_10:
	mov eax, [ebx+0x4]
	test eax, eax
	jz CloseHandle_20
	mov [esp], eax
	call fclose
	mov dword [ebx+0x4], 0x0
CloseHandle_20:
	mov dword [ebx], 0x44454144
	mov [esp], ebx
	call _ZdlPv
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CreateEventA
iCreateEventA:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	lea edi, [ebp-0x24]
	mov [esp], edi
	call pthread_mutexattr_init
	test eax, eax
	jz iCreateEventA_10
iCreateEventA_30:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iCreateEventA_10:
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call pthread_mutexattr_settype
	mov dword [esp], 0x50
	call _Znwm
	mov esi, eax
	mov dword [eax], 0x45766e74
	mov edx, [ebp+0xc]
	test edx, edx
	setnz byte [eax+0x4c]
	mov eax, [ebp+0x10]
	test eax, eax
	setnz byte [esi+0x4d]
	mov [esp+0x4], edi
	lea eax, [esi+0x4]
	mov [esp], eax
	call pthread_mutex_init
	mov ebx, eax
	mov [esp], edi
	call pthread_mutexattr_destroy
	test ebx, ebx
	jnz iCreateEventA_20
	mov dword [esp+0x4], 0x0
	lea eax, [esi+0x30]
	mov [esp], eax
	call pthread_cond_init
	test eax, eax
	jnz iCreateEventA_20
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iCreateEventA_20:
	mov [esp], esi
	call _ZdlPv
	jmp iCreateEventA_30
	nop


;CreateFileA
iCreateFileA:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x4], _cstring_rb
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN8MacFiles5fopenEPKcS1_
	mov ebx, eax
	test eax, eax
	jz iCreateFileA_10
	mov dword [esp], 0x50
	call _Znwm
	mov dword [eax], 0x46696c65
	mov [eax+0x4], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
iCreateFileA_10:
	mov eax, 0xffffffff
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;GetFileSize
iGetFileSize:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	cmp dword [esi], 0x46696c65
	jz iGetFileSize_10
	mov eax, 0xffffffff
iGetFileSize_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iGetFileSize_10:
	mov eax, [esi+0x4]
	mov [esp], eax
	call ftell
	mov ebx, eax
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov eax, [esi+0x4]
	mov [esp], eax
	call fseek
	mov eax, [esi+0x4]
	mov [esp], eax
	call ftell
	mov edi, eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [esi+0x4]
	mov [esp], eax
	call fseek
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz iGetFileSize_20
	mov eax, edi
	mov edx, [ebp+0xc]
	mov [edx], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iGetFileSize_20:
	mov eax, edi
	jmp iGetFileSize_30
	nop


;GetLastError
GetLastError:
	push ebp
	mov ebp, esp
	mov eax, [sLastError]
	mov dword [sLastError], 0x0
	pop ebp
	ret


;ReadFileEx
ReadFileEx:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [sLastError], 0x0
	cmp dword [ebx], 0x46696c65
	jz ReadFileEx_10
ReadFileEx_30:
	xor eax, eax
ReadFileEx_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ReadFileEx_10:
	mov dword [esp+0x8], 0x0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	call fseek
	test eax, eax
	jz ReadFileEx_20
	mov dword [sLastError], 0x26
	jmp ReadFileEx_30
ReadFileEx_20:
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0xc]
	mov [esp], edx
	call fread
	test eax, eax
	jle ReadFileEx_40
	mov eax, 0x1
	jmp ReadFileEx_50
ReadFileEx_40:
	mov dword [sLastError], 0x26
	xor eax, eax
	jmp ReadFileEx_50
	add [eax], al


;ResetEvent
iResetEvent:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x45766e74
	jz iResetEvent_10
iResetEvent_20:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
iResetEvent_10:
	lea esi, [ebx+0x4]
	mov [esp], esi
	call pthread_mutex_lock
	test eax, eax
	jnz iResetEvent_20
	cmp byte [ebx+0x4d], 0x1
	jz iResetEvent_30
	xor ebx, ebx
iResetEvent_60:
	mov [esp], esi
	call pthread_mutex_unlock
	test bl, bl
	jnz iResetEvent_40
	mov eax, 0x1
iResetEvent_50:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
iResetEvent_40:
	call pthread_yield_np
	mov eax, 0x1
	jmp iResetEvent_50
iResetEvent_30:
	mov byte [ebx+0x4d], 0x0
	mov ebx, 0x1
	jmp iResetEvent_60


;SetEvent
iSetEvent:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x45766e74
	jz iSetEvent_10
iSetEvent_20:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
iSetEvent_10:
	lea esi, [ebx+0x4]
	mov [esp], esi
	call pthread_mutex_lock
	test eax, eax
	jnz iSetEvent_20
	cmp byte [ebx+0x4d], 0x0
	jnz iSetEvent_30
	mov byte [ebx+0x4d], 0x1
iSetEvent_30:
	lea eax, [ebx+0x30]
	mov [esp], eax
	call pthread_cond_broadcast
	mov [esp], esi
	call pthread_mutex_unlock
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SetLastError
SetLastError:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [sLastError], eax
	pop ebp
	ret
	nop


;SleepEx
SleepEx:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;WaitForSingleObject
WaitForSingleObject:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	cmp dword [esi], 0x45766e74
	jz WaitForSingleObject_10
WaitForSingleObject_40:
	mov eax, 0xffffffff
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
WaitForSingleObject_10:
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jnz WaitForSingleObject_20
	cmp byte [esi+0x4d], 0x0
	jz WaitForSingleObject_30
WaitForSingleObject_80:
	xor eax, eax
WaitForSingleObject_140:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
WaitForSingleObject_90:
	lea edi, [esi+0x4]
	mov [esp], edi
	call pthread_mutex_lock
	test eax, eax
	jnz WaitForSingleObject_40
	movzx ebx, byte [esi+0x4d]
	test bl, bl
	jnz WaitForSingleObject_50
	lea ebx, [esi+0x30]
WaitForSingleObject_160:
	mov [esp+0x4], edi
	mov [esp], ebx
	call pthread_cond_wait
	cmp byte [esi+0x4d], 0x0
	jz WaitForSingleObject_60
	cmp byte [esi+0x4c], 0x0
	jnz WaitForSingleObject_70
	mov byte [esi+0x4d], 0x0
WaitForSingleObject_70:
	mov ebx, 0x1
WaitForSingleObject_50:
	mov [esp], edi
	call pthread_mutex_unlock
	test bl, bl
	jnz WaitForSingleObject_80
WaitForSingleObject_30:
	mov eax, 0x102
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
WaitForSingleObject_20:
	cmp dword [ebp+0xc], 0xffffffff
	jz WaitForSingleObject_90
	lea eax, [esi+0x4]
	mov [ebp-0x44], eax
	mov [esp], eax
	call pthread_mutex_lock
	test eax, eax
	jnz WaitForSingleObject_40
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call gettimeofday
	mov edi, [ebp-0x1c]
	lea edi, [edi+edi*4]
	lea edi, [edi+edi*4]
	lea edi, [edi+edi*4]
	shl edi, 0x3
	mov edx, [ebp+0xc]
	lea ebx, [edx+edx*4]
	lea ebx, [ebx+ebx*4]
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x3
	mov [ebp-0x40], ebx
	mov dword [ebp-0x3c], 0x0
	mov dword [esp+0x8], 0x3b9aca00
	mov dword [esp+0xc], 0x0
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov [esp], eax
	mov [esp+0x4], edx
	call __udivdi3
	mov ecx, [ebp-0x20]
	add ecx, eax
	mov [ebp-0x48], ecx
	mov [ebp-0x30], ecx
	mov dword [esp+0x8], 0x3b9aca00
	mov dword [esp+0xc], 0x0
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov [esp], eax
	mov [esp+0x4], edx
	call __umoddi3
	lea edx, [edi+eax]
	mov [ebp-0x2c], edx
	cmp edx, 0x3b9aca00
	jle WaitForSingleObject_100
	mov eax, [ebp-0x48]
	add eax, 0x1
	mov [ebp-0x30], eax
	lea eax, [edx-0x3b9aca00]
	mov [ebp-0x2c], eax
WaitForSingleObject_100:
	movzx ebx, byte [esi+0x4d]
	test bl, bl
	jnz WaitForSingleObject_110
	lea ebx, [esi+0x30]
	lea edi, [ebp-0x30]
WaitForSingleObject_150:
	mov [esp+0x8], edi
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov [esp], ebx
	call pthread_cond_timedwait
	cmp byte [esi+0x4d], 0x0
	jz WaitForSingleObject_120
	cmp byte [esi+0x4c], 0x0
	jnz WaitForSingleObject_130
	mov byte [esi+0x4d], 0x0
WaitForSingleObject_130:
	mov ebx, 0x1
WaitForSingleObject_110:
	mov ecx, [ebp-0x44]
	mov [esp], ecx
	call pthread_mutex_unlock
	test bl, bl
	jz WaitForSingleObject_30
	xor eax, eax
	jmp WaitForSingleObject_140
WaitForSingleObject_120:
	test eax, eax
	jz WaitForSingleObject_150
	xor ebx, ebx
	jmp WaitForSingleObject_110
WaitForSingleObject_60:
	test eax, eax
	jz WaitForSingleObject_160
	xor ebx, ebx
	jmp WaitForSingleObject_50


;Initialized global or static variables of MacWin32x:
SECTION .data


;Initialized constant data of MacWin32x:
SECTION .rdata


;Zero initialized global or static variables of MacWin32x:
SECTION .bss
sLastError: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_rb:		db "rb",0



;All constant floats and doubles:
SECTION .rdata

