;Imports of r_sky_load_obj:
	extern _Z10Com_MemsetPvii
	extern _Z10I_strncpyzPcPKci
	extern strchr
	extern _Z21R_LoadSunThroughDvarsPKcP10sunflare_t

;Exports of r_sky_load_obj:
	global _Z9R_LoadSunPKcP10sunflare_t


SECTION .text


;R_LoadSun(char const*, sunflare_t*)
_Z9R_LoadSunPKcP10sunflare_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esp+0x8], 0x60
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z10Com_MemsetPvii
	movzx eax, byte [ebx]
	test al, al
	jz _Z9R_LoadSunPKcP10sunflare_t_10
	mov edx, ebx
	mov ecx, ebx
	jmp _Z9R_LoadSunPKcP10sunflare_t_20
_Z9R_LoadSunPKcP10sunflare_t_50:
	cmp al, 0x5c
	jz _Z9R_LoadSunPKcP10sunflare_t_30
	add edx, 0x1
	movzx eax, byte [edx]
	test al, al
	jz _Z9R_LoadSunPKcP10sunflare_t_40
_Z9R_LoadSunPKcP10sunflare_t_20:
	cmp al, 0x2f
	jnz _Z9R_LoadSunPKcP10sunflare_t_50
_Z9R_LoadSunPKcP10sunflare_t_30:
	lea ecx, [edx+0x1]
	mov edx, ecx
	movzx eax, byte [edx]
	test al, al
	jnz _Z9R_LoadSunPKcP10sunflare_t_20
_Z9R_LoadSunPKcP10sunflare_t_40:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], 0x2e
	mov [esp], ebx
	call strchr
	test eax, eax
	jz _Z9R_LoadSunPKcP10sunflare_t_60
	mov byte [eax], 0x0
_Z9R_LoadSunPKcP10sunflare_t_60:
	cmp byte [ebp-0x48], 0x0
	jz _Z9R_LoadSunPKcP10sunflare_t_70
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z21R_LoadSunThroughDvarsPKcP10sunflare_t
_Z9R_LoadSunPKcP10sunflare_t_70:
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
_Z9R_LoadSunPKcP10sunflare_t_10:
	mov ecx, ebx
	jmp _Z9R_LoadSunPKcP10sunflare_t_40


;Initialized global or static variables of r_sky_load_obj:
SECTION .data


;Initialized constant data of r_sky_load_obj:
SECTION .rdata


;Zero initialized global or static variables of r_sky_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

