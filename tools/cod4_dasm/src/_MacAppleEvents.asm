;Imports of MacAppleEvents:
	extern AESend
	extern AEDisposeDesc
	extern __cxa_allocate_exception
	extern __cxa_throw
	extern _Unwind_Resume
	extern AECreateAppleEvent
	extern AECreateDesc

;Exports of MacAppleEvents:
	global _ZN8CAEEvent4SendEv
	global _ZN8CAEEvent6CreateER9CAETargetmm
	global _ZN8CAEEventC1Ev
	global _ZN8CAEEventD1Ev
	global _ZN9CAETargetC1ERK19ProcessSerialNumber
	global _ZN9CAETargetD1Ev


SECTION .text


;CAEEvent::Send()
_ZN8CAEEvent4SendEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN8CAEEventC1Ev
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0xffffffff
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x11
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call AESend
	movsx ebx, ax
	test ax, ax
	jnz _ZN8CAEEvent4SendEv_10
	mov eax, [ebp-0xc]
	test eax, eax
	jz _ZN8CAEEvent4SendEv_20
	mov [esp], esi
	call AEDisposeDesc
_ZN8CAEEvent4SendEv_20:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_ZN8CAEEvent4SendEv_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], ebx
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
	mov ebx, eax
	mov edx, [ebp-0xc]
	test edx, edx
	jz _ZN8CAEEvent4SendEv_30
	mov [esp], esi
	call AEDisposeDesc
_ZN8CAEEvent4SendEv_30:
	mov dword [ebp-0x10], 0x6e756c6c
	mov dword [ebp-0xc], 0x0
	mov [esp], ebx
	call _Unwind_Resume
	nop
	add [eax], al


;CAEEvent::Create(CAETarget&, unsigned long, unsigned long)
_ZN8CAEEvent6CreateER9CAETargetmm:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4]
	test eax, eax
	jz _ZN8CAEEvent6CreateER9CAETargetmm_10
	mov [esp], ebx
	call AEDisposeDesc
_ZN8CAEEvent6CreateER9CAETargetmm_10:
	mov dword [ebx], 0x6e756c6c
	mov dword [ebx+0x4], 0x0
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xffffffff
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call AECreateAppleEvent
	movsx ebx, ax
	test ax, ax
	jnz _ZN8CAEEvent6CreateER9CAETargetmm_20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN8CAEEvent6CreateER9CAETargetmm_20:
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


;CAEEvent::CAEEvent()
_ZN8CAEEventC1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0x6e756c6c
	mov dword [eax+0x4], 0x0
	pop ebp
	ret
	nop


;CAEEvent::~CAEEvent()
_ZN8CAEEventD1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x4]
	test edx, edx
	jz _ZN8CAEEventD1Ev_10
	mov [esp], ebx
	call AEDisposeDesc
_ZN8CAEEventD1Ev_10:
	mov dword [ebx], 0x6e756c6c
	mov dword [ebx+0x4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CAETarget::CAETarget(ProcessSerialNumber const&)
_ZN9CAETargetC1ERK19ProcessSerialNumber:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x6e756c6c
	mov dword [ebx+0x4], 0x0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x8
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x70736e20
	call AECreateDesc
	movsx esi, ax
	test ax, ax
	jnz _ZN9CAETargetC1ERK19ProcessSerialNumber_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN9CAETargetC1ERK19ProcessSerialNumber_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], esi
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
	mov esi, eax
	mov eax, [ebx+0x4]
	test eax, eax
	jz _ZN9CAETargetC1ERK19ProcessSerialNumber_20
	mov [esp], ebx
	call AEDisposeDesc
_ZN9CAETargetC1ERK19ProcessSerialNumber_20:
	mov dword [ebx], 0x6e756c6c
	mov dword [ebx+0x4], 0x0
	mov [esp], esi
	call _Unwind_Resume
	add [eax], al


;CAETarget::~CAETarget()
_ZN9CAETargetD1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4]
	test eax, eax
	jz _ZN9CAETargetD1Ev_10
	mov [esp], ebx
	call AEDisposeDesc
_ZN9CAETargetD1Ev_10:
	mov dword [ebx], 0x6e756c6c
	mov dword [ebx+0x4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of MacAppleEvents:
SECTION .data


;Initialized constant data of MacAppleEvents:
SECTION .rdata


;Zero initialized global or static variables of MacAppleEvents:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

