;Imports of r_add_cmdbuf:
	extern frontEndDataOut
	extern iInterlockedExchangeAdd
	extern _Z18R_WarnOncePerFrame14GfxWarningTypez
	extern memcpy

;Exports of r_add_cmdbuf:
	global _Z11R_EndCmdBufP16GfxDelayedCmdBuf
	global _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj
	global _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
	global _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	global _Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj


SECTION .text


;R_EndCmdBuf(GfxDelayedCmdBuf*)
_Z11R_EndCmdBufP16GfxDelayedCmdBuf:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	and eax, [ecx+0xc]
	add eax, 0x1
	jz _Z11R_EndCmdBufP16GfxDelayedCmdBuf_10
	mov dword [ecx+0x8], 0xffffffff
	mov dword [ecx+0xc], 0xffffffff
	mov eax, frontEndDataOut
	mov edx, [eax]
	mov eax, [ecx]
	mov dword [edx+eax*4+0x28000], 0x0
	add dword [ecx], 0x1
	sub dword [ecx+0x4], 0x1
_Z11R_EndCmdBufP16GfxDelayedCmdBuf_10:
	pop ebp
	ret


;R_AllocDrawSurf(GfxDelayedCmdBuf*, GfxDrawSurf, GfxDrawSurfList*, unsigned int)
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x8]
	mov ebx, [eax+0xc]
	mov edx, ebx
	xor edx, edi
	mov eax, ecx
	xor eax, esi
	or edx, eax
	jz _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_10
	mov eax, ecx
	and eax, ebx
	add eax, 0x1
	jz _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_10
	mov edx, [ebp+0x8]
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	mov ecx, frontEndDataOut
	mov edx, [ecx]
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov dword [edx+eax*4+0x28000], 0x0
	add dword [ecx], 0x1
	mov eax, [ecx+0x4]
	sub eax, 0x1
	mov [ecx+0x4], eax
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x8]
	mov ebx, [edx+0xc]
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_80:
	cmp eax, [ebp+0x18]
	ja _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_20
	mov eax, ecx
	and eax, ebx
	add eax, 0x1
	jz _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_30
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x8], 0xffffffff
	mov dword [ecx+0xc], 0xffffffff
	mov ecx, frontEndDataOut
	mov edx, [ecx]
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov dword [edx+eax*4+0x28000], 0x0
	add dword [ebx], 0x1
	sub dword [ebx+0x4], 0x1
	mov eax, [ecx]
	add eax, 0x11e714
	mov dword [esp+0x4], 0x200
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov [ebp-0x1c], eax
	cmp eax, 0xffff
	ja _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_40
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_90:
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov dword [edx+0x4], 0x200
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x8]
	mov ebx, [eax+0xc]
	mov edx, edi
	xor edx, ebx
	mov eax, esi
	xor eax, ecx
	or edx, eax
	jnz _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_50
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_60:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_20:
	mov edx, [ebp+0x8]
	mov edx, [edx]
	mov [ebp-0x1c], edx
	mov edx, edi
	xor edx, ebx
	mov eax, esi
	xor eax, ecx
	or edx, eax
	jz _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_60
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_50:
	mov ecx, [ebp+0x14]
	mov eax, [ecx+0x4]
	cmp [ecx], eax
	jae _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_70
	mov ebx, [ebp+0x8]
	mov [ebx+0x8], esi
	mov [ebx+0xc], edi
	mov si, [ebp-0x1c]
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [eax], esi
	mov [eax+0x4], edi
	add dword [edx], 0x8
	jmp _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_60
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_70:
	mov dword [esp+0x4], _cstring_r_allocdrawsurf
	mov dword [esp], 0xf
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_10:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	jmp _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_80
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_30:
	mov ecx, frontEndDataOut
	mov eax, [ecx]
	add eax, 0x11e714
	mov dword [esp+0x4], 0x200
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov [ebp-0x1c], eax
	cmp eax, 0xffff
	jbe _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_90
_Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj_40:
	mov eax, [ebp+0x8]
	mov dword [eax+0x4], 0x0
	mov dword [esp], 0x13
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;R_InitDelayedCmdBuf(GfxDelayedCmdBuf*)
_Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0xffffffff
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0xffffffff
	mov dword [eax+0xc], 0xffffffff
	pop ebp
	ret
	nop


;R_WritePrimDrawSurfInt(GfxDelayedCmdBuf*, unsigned int)
_Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	sub dword [edx+0x4], 0x1
	mov eax, frontEndDataOut
	mov ebx, [eax]
	mov ecx, [edx]
	mov eax, [ebp+0xc]
	mov [ebx+ecx*4+0x28000], eax
	add dword [edx], 0x1
	pop ebx
	pop ebp
	ret


;R_WritePrimDrawSurfData(GfxDelayedCmdBuf*, void const*, unsigned int)
_Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	sub [ebx+0x4], esi
	mov edx, [ebx]
	mov eax, frontEndDataOut
	mov eax, [eax]
	lea edx, [eax+edx*4+0x28000]
	lea eax, [esi*4]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add [ebx], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of r_add_cmdbuf:
SECTION .data


;Initialized constant data of r_add_cmdbuf:
SECTION .rdata


;Zero initialized global or static variables of r_add_cmdbuf:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_r_allocdrawsurf:		db "R_AllocDrawSurf",0



;All constant floats and doubles:
SECTION .rdata

