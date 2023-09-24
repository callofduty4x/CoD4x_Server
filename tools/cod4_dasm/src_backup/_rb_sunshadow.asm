;Imports of rb_sunshadow:
	extern pixelCostMode
	extern _Z13R_InitContextPK14GfxBackEndDataP9GfxCmdBuf
	extern _Z18PIXBeginNamedEventiPKcz
	extern memcpy
	extern _Z16MatrixIdentity44PA4_f
	extern _Z16MatrixMultiply44PA4_KfS1_PA4_f
	extern _Z15MatrixInverse44PKfPf
	extern _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf

;Exports of rb_sunshadow:
	global _ZZ16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfoE4flip
	global _Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo


SECTION .text


;RB_SunShadowMaps(GfxBackEndData const*, GfxViewInfo const*)
_Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x686c
	mov eax, pixelCostMode
	mov edx, [eax]
	test edx, edx
	jz _Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_10
_Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30:
	add esp, 0x686c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_10:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13R_InitContextPK14GfxBackEndDataP9GfxCmdBuf
	mov dword [esp+0x4], _cstring_sun_shadow_maps
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov dword [ebp-0x685c], 0x0
	lea edi, [ebp-0x1128]
	mov eax, [_ZZ16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfoE4flip]
	test eax, eax
	jz _Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_20
_Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_40:
	mov dword [esp+0x8], 0x67b0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x6858]
	mov [esp], eax
	call memcpy
	mov eax, [edi+0x40]
	mov [ebp-0x68], eax
	mov eax, [edi+0x44]
	mov [ebp-0x64], eax
	mov eax, [edi+0x48]
	mov [ebp-0x60], eax
	mov eax, [edi+0x4c]
	mov [ebp-0x5c], eax
	mov eax, [edi+0x50]
	mov [ebp-0x58], eax
	mov eax, [edi+0x54]
	mov [ebp-0x54], eax
	mov eax, [edi+0x58]
	mov [ebp-0x50], eax
	mov eax, [edi+0x5c]
	mov [ebp-0x4c], eax
	mov eax, [edi+0x60]
	mov [ebp-0x48], eax
	mov eax, [edi+0x64]
	mov [ebp-0x44], eax
	mov eax, [edi+0x68]
	mov [ebp-0x40], eax
	mov eax, [edi+0x6c]
	mov [ebp-0x3c], eax
	mov eax, [edi+0x70]
	mov [ebp-0x38], eax
	mov eax, [edi+0x74]
	mov [ebp-0x34], eax
	mov eax, [edi+0x78]
	mov [ebp-0x30], eax
	mov eax, [edi+0x7c]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0xa8]
	mov [esp], eax
	call _Z16MatrixIdentity44PA4_f
	mov eax, [ebp-0x94]
	xor eax, 0x80000000
	mov [ebp-0x94], eax
	mov dword [ebp-0x74], 0x3f800000
	lea esi, [edi+0x40]
	mov [esp+0x8], esi
	lea eax, [ebp-0xa8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x68]
	mov [esp], eax
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	lea ebx, [edi+0x80]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	lea eax, [edi+0xc0]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15MatrixInverse44PKfPf
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x685c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x6858]
	mov [esp], eax
	call _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf
_Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_50:
	add dword [ebp-0x685c], 0x1
	add edi, 0x200
	cmp dword [ebp-0x685c], 0x2
	jz _Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30
	mov eax, [_ZZ16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfoE4flip]
	test eax, eax
	jnz _Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_40
_Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_20:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x685c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf
	jmp _Z16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_50


;Initialized global or static variables of rb_sunshadow:
SECTION .data


;Initialized constant data of rb_sunshadow:
SECTION .rdata


;Zero initialized global or static variables of rb_sunshadow:
SECTION .bss
_ZZ16RB_SunShadowMapsPK14GfxBackEndDataPK11GfxViewInfoE4flip: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_sun_shadow_maps:		db "Sun Shadow Maps",0



;All constant floats and doubles:
SECTION .rdata

