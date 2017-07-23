;Imports of mac_configure:
	extern _ZN11MacFeatures16GetCPUSpeedInGHzEv
	extern _ZN11MacFeatures19HasGestaltAttributeEmm
	extern _ZN11MacFeatures17GetMemorySizeInMBEv
	extern _ZN10MacDisplay13GetGLRendererEv
	extern strncpy
	extern sysctlbyname
	extern g_fileBuf

;Exports of mac_configure:
	global Sys_CpuGHz
	global Sys_SupportsSSE
	global Sys_SystemMemoryMB
	global Sys_DetectVideoCard
	global Sys_SetAutoConfigureGHz
	global Sys_DetectCpuVendorAndName


SECTION .text


;Sys_CpuGHz()
Sys_CpuGHz:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _ZN11MacFeatures16GetCPUSpeedInGHzEv
	fstp dword [ebp-0xc]
	cvtss2sd xmm0, [ebp-0xc]
	movsd [ebp-0x18], xmm0
	fld qword [ebp-0x18]
	leave
	ret
	nop


;Sys_SupportsSSE()
Sys_SupportsSSE:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x19
	mov dword [esp], 0x78383666
	call _ZN11MacFeatures19HasGestaltAttributeEmm
	movzx eax, al
	leave
	ret
	nop


;Sys_SystemMemoryMB()
Sys_SystemMemoryMB:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _ZN11MacFeatures17GetMemorySizeInMBEv
	cmp eax, 0x401
	mov edx, 0x400
	cmovge eax, edx
	leave
	ret


;Sys_DetectVideoCard(int, char*)
Sys_DetectVideoCard:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	call _ZN10MacDisplay13GetGLRendererEv
	lea edx, [esi-0x1]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncpy
	mov byte [ebx+esi-0x1], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Sys_SetAutoConfigureGHz(SysInfo*)
Sys_SetAutoConfigureGHz:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x10], 0x4
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_hwphysicalcpu
	call sysctlbyname
	mov edx, 0x1
	test eax, eax
	cmovz edx, [ebp-0xc]
	mov [ebp-0xc], edx
	mov eax, edx
	mov [ebx+0x14], edx
	sub eax, 0x1
	jz Sys_SetAutoConfigureGHz_10
	cmp edx, 0x2
	jz Sys_SetAutoConfigureGHz_20
	movsd xmm0, qword [_double_2_00000000]
	mulsd xmm0, [ebx]
	movsd [ebx+0x8], xmm0
	add esp, 0x34
	pop ebx
	pop ebp
	ret
Sys_SetAutoConfigureGHz_20:
	movsd xmm0, qword [_double_1_75000000]
	mulsd xmm0, [ebx]
	movsd [ebx+0x8], xmm0
	add esp, 0x34
	pop ebx
	pop ebp
	ret
Sys_SetAutoConfigureGHz_10:
	movsd xmm0, qword [_double_1_00000000]
	mulsd xmm0, [ebx]
	movsd [ebx+0x8], xmm0
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	add [eax], al


;Sys_DetectCpuVendorAndName(char*, char*)
Sys_DetectCpuVendorAndName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [ebp-0x1c], 0xd
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_machdepcpuvendor
	call sysctlbyname
	test eax, eax
	jnz Sys_DetectCpuVendorAndName_10
Sys_DetectCpuVendorAndName_30:
	mov dword [ebp-0x1c], 0x31
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_machdepcpubrand_
	call sysctlbyname
	test eax, eax
	jz Sys_DetectCpuVendorAndName_20
	mov dword [esi], 0x6e6b6e75
	mov dword [esi+0x4], g_fileBuf+0x6f76f
Sys_DetectCpuVendorAndName_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_DetectCpuVendorAndName_10:
	mov dword [ebx], 0x6e6b6e75
	mov dword [ebx+0x4], g_fileBuf+0x6f76f
	jmp Sys_DetectCpuVendorAndName_30


;Initialized global or static variables of mac_configure:
SECTION .data


;Initialized constant data of mac_configure:
SECTION .rdata


;Zero initialized global or static variables of mac_configure:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_hwphysicalcpu:		db "hw.physicalcpu",0
_cstring_machdepcpuvendor:		db "machdep.cpu.vendor",0
_cstring_machdepcpubrand_:		db "machdep.cpu.brand_string",0



;All constant floats and doubles:
SECTION .rdata
_double_2_00000000:		dq 0x4000000000000000	; 2
_double_1_75000000:		dq 0x3ffc000000000000	; 1.75
_double_1_00000000:		dq 0x3ff0000000000000	; 1

