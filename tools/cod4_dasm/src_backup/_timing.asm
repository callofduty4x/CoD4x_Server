;Imports of timing:
	extern _Z17Win_SetThreadLock13WinThreadLock
	extern WinSleep
	extern QueryPerformanceFrequency
	extern QueryPerformanceCounter

;Exports of timing:
	global _Z10InitTimingv
	global msecPerRawTimerTick


SECTION .text


;InitTiming()
_Z10InitTimingv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov dword [esp], 0x2
	call _Z17Win_SetThreadLock13WinThreadLock
	mov dword [esp], 0x0
	call WinSleep
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x14], 0x0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call QueryPerformanceFrequency
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call QueryPerformanceCounter
	rdtsc
	mov esi, eax
	mov [esp], ebx
	call QueryPerformanceCounter
	mov dword [esp], 0xfa
	call WinSleep
	rdtsc
	mov ebx, eax
	lea eax, [ebp-0x18]
	mov [esp], eax
	call QueryPerformanceCounter
	mov eax, [ebp-0x18]
	mov edx, [ebp-0x14]
	sub eax, [ebp-0x10]
	sbb edx, [ebp-0xc]
	push edx
	push eax
	fild qword [esp]
	add esp, 0x8
	fstp qword [ebp-0x50]
	movsd xmm1, qword [ebp-0x50]
	mov eax, ebx
	xor edx, edx
	xor ebx, ebx
	sub eax, esi
	sbb edx, ebx
	push edx
	push eax
	fild qword [esp]
	add esp, 0x8
	fstp qword [ebp-0x50]
	movsd xmm0, qword [ebp-0x50]
	fild qword [ebp-0x20]
	fstp qword [ebp-0x30]
	mulsd xmm0, [ebp-0x30]
	divsd xmm1, xmm0
	mov dword [esp], 0x0
	movsd [ebp-0x48], xmm1
	call _Z17Win_SetThreadLock13WinThreadLock
	movsd xmm1, qword [ebp-0x48]
	mulsd xmm1, [_double_1000_00000000]
	movsd [msecPerRawTimerTick], xmm1
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of timing:
SECTION .data


;Initialized constant data of timing:
SECTION .rdata


;Zero initialized global or static variables of timing:
SECTION .bss
msecPerRawTimerTick: resb 0x84


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_double_1000_00000000:		dq 0x408f400000000000	; 1000

