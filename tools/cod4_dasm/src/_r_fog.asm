;Imports of r_fog:
	extern rg
	extern memset

;Exports of r_fog:
	global _Z11R_ClearFogsv
	global _Z11R_SwitchFogiii
	global _Z17R_ArchiveFogStateP10MemoryFile
	global _Z18R_SetFogFromServerfhhhf


SECTION .text


;R_ClearFogs()
_Z11R_ClearFogsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, rg
	lea eax, [ebx+0x2164]
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [ebx+0x21c8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_SwitchFog(int, int, int)
_Z11R_SwitchFogiii:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov ecx, rg
	mov [ecx+0x21c8], eax
	pxor xmm0, xmm0
	ucomiss xmm0, [ecx+0x219c]
	jp _Z11R_SwitchFogiii_10
	jz _Z11R_SwitchFogiii_20
_Z11R_SwitchFogiii_10:
	mov eax, [ecx+0x218c]
	mov [ecx+0x21a0], eax
	mov eax, [ecx+0x2190]
	mov [ecx+0x21a4], eax
	mov eax, [ecx+0x2194]
	mov [ecx+0x21a8], eax
	mov eax, [ecx+0x2198]
	mov [ecx+0x21ac], eax
	mov eax, [ecx+0x219c]
	mov [ecx+0x21b0], eax
_Z11R_SwitchFogiii_40:
	mov eax, [ecx+0x21c8]
	lea eax, [eax+eax*4]
	lea eax, [ecx+eax*4+0x2160]
	mov edx, [eax+0x4]
	mov [ecx+0x21b4], edx
	mov edx, [eax+0x8]
	mov [ecx+0x21b8], edx
	mov edx, [eax+0xc]
	mov [ecx+0x21bc], edx
	mov edx, [eax+0x10]
	mov [ecx+0x21c0], edx
	mov eax, [eax+0x14]
	mov [ecx+0x21c4], eax
	test ebx, ebx
	jnz _Z11R_SwitchFogiii_30
	mov dword [ecx+0x21b4], 0x0
	mov dword [ecx+0x21b8], 0x0
	pop ebx
	pop ebp
	ret
_Z11R_SwitchFogiii_30:
	mov eax, [ebp+0xc]
	mov [ecx+0x21b4], eax
	mov edx, [ebp+0xc]
	lea eax, [ebx+edx]
	mov [ecx+0x21b8], eax
	pop ebx
	pop ebp
	ret
_Z11R_SwitchFogiii_20:
	lea eax, [eax+eax*4]
	lea eax, [ecx+eax*4+0x2160]
	mov edx, [eax+0x4]
	mov [ecx+0x21a0], edx
	mov edx, [eax+0x8]
	mov [ecx+0x21a4], edx
	mov edx, [eax+0xc]
	mov [ecx+0x21a8], edx
	mov edx, [eax+0x10]
	mov [ecx+0x21ac], edx
	mov eax, [eax+0x14]
	mov [ecx+0x21b0], eax
	xor ebx, ebx
	jmp _Z11R_SwitchFogiii_40
	nop


;R_ArchiveFogState(MemoryFile*)
_Z17R_ArchiveFogStateP10MemoryFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, rg
	lea eax, [ebx+0x2164]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dword [esi+0x18]
	add ebx, 0x21c8
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call dword [esi+0x18]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;R_SetFogFromServer(float, unsigned char, unsigned char, unsigned char, float)
_Z18R_SetFogFromServerfhhhf:
	push ebp
	mov ebp, esp
	mov ecx, rg
	add ecx, 0x2180
	movzx edx, byte [ebp+0x14]
	movzx eax, byte [ebp+0x10]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ebp+0xc]
	shl eax, 0x10
	or edx, eax
	or edx, 0xff000000
	mov [ecx], edx
	mov edx, rg
	mov eax, [ebp+0x8]
	mov [edx+0x2184], eax
	mov eax, [ebp+0x18]
	mov [edx+0x2188], eax
	pop ebp
	ret
	nop


;Initialized global or static variables of r_fog:
SECTION .data


;Initialized constant data of r_fog:
SECTION .rdata


;Zero initialized global or static variables of r_fog:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

