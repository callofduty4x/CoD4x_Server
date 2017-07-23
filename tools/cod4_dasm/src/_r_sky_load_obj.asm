;Imports of r_sky_load_obj:
	extern Com_Memset
	extern Q_strncpyz
	extern strchr
	extern R_LoadSunThroughDvars

;Exports of r_sky_load_obj:
	global R_LoadSun


SECTION .text


;R_LoadSun(char const*, sunflare_t*)
R_LoadSun:
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
	call Com_Memset
	movzx eax, byte [ebx]
	test al, al
	jz R_LoadSun_10
	mov edx, ebx
	mov ecx, ebx
	jmp R_LoadSun_20
R_LoadSun_50:
	cmp al, 0x5c
	jz R_LoadSun_30
	add edx, 0x1
	movzx eax, byte [edx]
	test al, al
	jz R_LoadSun_40
R_LoadSun_20:
	cmp al, 0x2f
	jnz R_LoadSun_50
R_LoadSun_30:
	lea ecx, [edx+0x1]
	mov edx, ecx
	movzx eax, byte [edx]
	test al, al
	jnz R_LoadSun_20
R_LoadSun_40:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0x4], 0x2e
	mov [esp], ebx
	call strchr
	test eax, eax
	jz R_LoadSun_60
	mov byte [eax], 0x0
R_LoadSun_60:
	cmp byte [ebp-0x48], 0x0
	jz R_LoadSun_70
	mov [esp+0x4], esi
	mov [esp], ebx
	call R_LoadSunThroughDvars
R_LoadSun_70:
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
R_LoadSun_10:
	mov ecx, ebx
	jmp R_LoadSun_40


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

