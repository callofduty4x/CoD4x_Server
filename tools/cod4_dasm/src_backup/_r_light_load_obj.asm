;Imports of r_light_load_obj:
	extern _Z2vaPKcz
	extern FS_ReadFile
	extern _Z18Hunk_AllocInternali
	extern strcpy
	extern _Z8I_strlwrPc
	extern FS_FreeFile
	extern _Z14Image_RegisterPKchi
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z18Image_GetRawPixelsPKcP11GfxRawImage
	extern _Z19Image_FreeRawPixelsP11GfxRawImage

;Exports of r_light_load_obj:
	global s_lmapPixelsUsedForFalloff
	global _Z14R_LoadLightDefPKc
	global _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv


SECTION .text


;R_LoadLightDef(char const*)
_Z14R_LoadLightDefPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], _cstring_lightss
	call _Z2vaPKcz
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call FS_ReadFile
	cmp eax, 0x0
	jl _Z14R_LoadLightDefPKc_10
	jz _Z14R_LoadLightDefPKc_20
	mov dword [esp], 0x10
	call _Z18Hunk_AllocInternali
	mov [ebp-0x2c], eax
	xor ebx, ebx
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z18Hunk_AllocInternali
	mov edx, [ebp-0x2c]
	mov [edx], eax
	mov edx, [ebp-0x1c]
	movzx eax, byte [edx]
	mov ecx, [ebp-0x2c]
	mov [ecx+0x8], al
	add edx, 0x1
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	mov eax, ebx
	repne scasb
	cmp ecx, 0xfffffffe
	jnz _Z14R_LoadLightDefPKc_30
	mov ecx, [ebp-0x2c]
	mov dword [ecx+0x4], 0x0
_Z14R_LoadLightDefPKc_50:
	mov [esp+0x4], esi
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esp], eax
	call strcpy
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	mov [esp], eax
	call _Z8I_strlwrPc
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4]
	movzx eax, word [eax+0x18]
	lea ebx, [eax+0x2]
	mov edx, [s_lmapPixelsUsedForFalloff]
	lea eax, [ebx+edx]
	cmp eax, 0x200
	jg _Z14R_LoadLightDefPKc_40
_Z14R_LoadLightDefPKc_60:
	lea eax, [edx+0x1]
	mov ecx, [ebp-0x2c]
	mov [ecx+0xc], eax
	lea eax, [ebx+edx]
	mov [s_lmapPixelsUsedForFalloff], eax
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_LoadLightDefPKc_30:
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	call _Z14Image_RegisterPKchi
	mov edx, [ebp-0x2c]
	mov [edx+0x4], eax
	jmp _Z14R_LoadLightDefPKc_50
_Z14R_LoadLightDefPKc_40:
	mov dword [esp+0xc], 0x200
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_total_pixel_widt
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [s_lmapPixelsUsedForFalloff]
	jmp _Z14R_LoadLightDefPKc_60
_Z14R_LoadLightDefPKc_20:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
_Z14R_LoadLightDefPKc_10:
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_CopyLightDefAttenuationImage(XAssetHeader, void*)
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov eax, [eax+0x20]
	mov [esp], eax
	call _Z18Image_GetRawPixelsPKcP11GfxRawImage
	mov edx, [ebp+0xc]
	mov edi, [edx+0x4]
	mov eax, [ebx+0xc]
	lea eax, [eax*4-0x4]
	imul eax, edi
	mov [ebp-0x7c], eax
	mov ecx, [edx]
	add eax, ecx
	mov [ebp-0x7c], eax
	mov ebx, [ebp-0x1c]
	mov [ebp-0x88], ebx
	cmp edi, 0x1
	jz _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_10
	mov eax, edi
	shr eax, 1
	lea eax, [edi+eax]
	mov [ebp-0x80], eax
	test eax, eax
	jg _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_20
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_90:
	mov dword [ebp-0x84], 0x1
	mov edx, [ebp-0x88]
	add edx, 0x4
	mov [ebp-0x8c], edx
	mov eax, [ebp-0x88]
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_50:
	lea ecx, [edi+edi]
	mov esi, ecx
	sub esi, [ebp-0x84]
	movzx edx, byte [eax]
	imul edx, esi
	movzx eax, byte [eax+0x4]
	imul eax, [ebp-0x84]
	lea eax, [edx+eax]
	lea eax, [edi+eax]
	xor edx, edx
	div ecx
	movzx ebx, al
	shl ebx, 0x10
	mov edx, [ebp-0x88]
	movzx eax, byte [edx+0x1]
	imul eax, esi
	mov [ebp-0x9c], eax
	mov eax, [ebp-0x8c]
	movzx edx, byte [eax+0x1]
	imul edx, [ebp-0x84]
	mov eax, [ebp-0x9c]
	add eax, edx
	lea eax, [edi+eax]
	xor edx, edx
	div ecx
	movzx eax, al
	shl eax, 0x8
	or ebx, eax
	mov edx, [ebp-0x88]
	movzx eax, byte [edx+0x2]
	imul eax, esi
	mov [ebp-0x9c], eax
	mov eax, [ebp-0x8c]
	movzx edx, byte [eax+0x2]
	imul edx, [ebp-0x84]
	mov eax, [ebp-0x9c]
	add eax, edx
	lea eax, [edi+eax]
	xor edx, edx
	div ecx
	movzx eax, al
	or ebx, eax
	mov edx, [ebp-0x88]
	movzx eax, byte [edx+0x3]
	imul esi, eax
	mov edx, [ebp-0x8c]
	movzx eax, byte [edx+0x3]
	imul eax, [ebp-0x84]
	lea eax, [esi+eax]
	lea eax, [edi+eax]
	xor edx, edx
	div ecx
	shl eax, 0x18
	or ebx, eax
	mov ecx, [ebp-0x7c]
	mov [ecx], ebx
	add ecx, 0x4
	mov [ebp-0x7c], ecx
	add dword [ebp-0x84], 0x2
	mov ebx, [ebp+0xc]
	mov edi, [ebx+0x4]
	lea eax, [edi+edi]
	cmp [ebp-0x84], eax
	jbe _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_30
	mov edx, [ebp-0x1c]
	mov eax, [ebp-0x24]
	lea eax, [edx+eax*4-0x4]
	cmp [ebp-0x8c], eax
	jz _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_40
	mov ecx, [ebp-0x8c]
	mov [ebp-0x88], ecx
	mov dword [ebp-0x84], 0x1
	mov ebx, ecx
	add ebx, 0x4
	mov [ebp-0x8c], ebx
	mov eax, ecx
	jmp _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_50
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_30:
	mov eax, [ebp-0x88]
	jmp _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_50
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_40:
	mov eax, [ebp-0x80]
	test eax, eax
	jle _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_60
	xor ecx, ecx
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_70:
	mov esi, [ebp-0x8c]
	movzx edx, byte [esi]
	shl edx, 0x10
	movzx eax, byte [esi+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [esi+0x2]
	or edx, eax
	movzx eax, byte [esi+0x3]
	shl eax, 0x18
	or edx, eax
	mov eax, [ebp-0x7c]
	mov [eax], edx
	add eax, 0x4
	mov [ebp-0x7c], eax
	add ecx, 0x1
	cmp [ebp-0x80], ecx
	jnz _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_70
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_60:
	lea edx, [ebp-0x6c]
	mov [esp], edx
	call _Z19Image_FreeRawPixelsP11GfxRawImage
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_20:
	xor ecx, ecx
	mov esi, [ebp-0x7c]
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_80:
	mov eax, [ebp-0x88]
	movzx edx, byte [eax]
	shl edx, 0x10
	mov ebx, eax
	movzx eax, byte [eax+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ebx+0x2]
	or edx, eax
	movzx eax, byte [ebx+0x3]
	shl eax, 0x18
	or edx, eax
	mov [esi], edx
	add esi, 0x4
	mov [ebp-0x7c], esi
	add ecx, 0x1
	cmp [ebp-0x80], ecx
	jnz _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_80
	mov eax, [ebp+0xc]
	mov edi, [eax+0x4]
	jmp _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_90
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_10:
	mov esi, eax
	movzx edx, byte [ebx]
	shl edx, 0x10
	movzx eax, byte [ebx+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ebx+0x2]
	or edx, eax
	movzx eax, byte [ebx+0x3]
	shl eax, 0x18
	or edx, eax
	mov [esi], edx
	mov ebx, esi
	add ebx, 0x4
	mov edx, [ebp-0x24]
	test edx, edx
	jle _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_100
	xor ecx, ecx
	mov eax, [ebp-0x88]
	jmp _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_110
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_120:
	mov eax, esi
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_110:
	movzx edx, byte [eax]
	shl edx, 0x10
	mov esi, eax
	movzx eax, byte [eax+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [esi+0x2]
	or edx, eax
	movzx eax, byte [esi+0x3]
	shl eax, 0x18
	or edx, eax
	mov [ebx], edx
	add ebx, 0x4
	add esi, 0x4
	mov [ebp-0x88], esi
	add ecx, 0x1
	mov edx, [ebp-0x24]
	cmp edx, ecx
	jg _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_120
_Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv_100:
	mov eax, [ebp-0x1c]
	lea eax, [eax+edx*4]
	lea ecx, [eax-0x4]
	movzx edx, byte [eax-0x4]
	shl edx, 0x10
	movzx eax, byte [ecx+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ecx+0x2]
	or edx, eax
	movzx eax, byte [ecx+0x3]
	shl eax, 0x18
	or edx, eax
	mov [ebx], edx
	lea edx, [ebp-0x6c]
	mov [esp], edx
	call _Z19Image_FreeRawPixelsP11GfxRawImage
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of r_light_load_obj:
SECTION .data


;Initialized constant data of r_light_load_obj:
SECTION .rdata


;Zero initialized global or static variables of r_light_load_obj:
SECTION .bss
s_lmapPixelsUsedForFalloff: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_lightss:		db "lights/%s",0
_cstring_total_pixel_widt:		db "Total pixel width of all attenuation textures plus 2 border pixels is %i > %i",0



;All constant floats and doubles:
SECTION .rdata

