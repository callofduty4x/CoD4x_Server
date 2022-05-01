;Imports of com_bsp:
	extern _Z9Sys_ErrorPKcz

;Exports of com_bsp:
	global _Z15Com_UnloadWorldv
	global _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf
	global comWorld


SECTION .text


;Com_UnloadWorld()
_Z15Com_UnloadWorldv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [comWorld+0x4]
	test eax, eax
	jnz _Z15Com_UnloadWorldv_10
	leave
	ret
_Z15Com_UnloadWorldv_10:
	mov dword [esp], _cstring_cannot_unload_wo
	call _Z9Sys_ErrorPKcz
	leave
	ret
	nop


;Com_CanPrimaryLightAffectPoint(ComPrimaryLight const*, float const*)
_Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [ecx+0x1c]
	movss xmm4, dword [ecx+0x1c]
	subss xmm4, [eax]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [eax+0x8]
	movaps xmm3, xmm4
	mulss xmm3, xmm4
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm3, xmm0
	movss xmm7, dword [ecx+0x28]
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	ucomiss xmm3, xmm0
	jae _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_10
	cmp byte [ecx], 0x3
	jz _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_20
	movss xmm6, dword [ecx+0x38]
	movss xmm5, dword [ecx+0x2c]
	movaps xmm0, xmm5
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm6
	jae _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_20
	lea eax, [ecx+0x10]
	mulss xmm4, [ecx+0x10]
	mulss xmm1, [eax+0x4]
	addss xmm4, xmm1
	mulss xmm2, [eax+0x8]
	addss xmm4, xmm2
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm6, xmm0
	jp _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_30
	jnz _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_30
	pxor xmm0, xmm0
_Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_40:
	ucomiss xmm0, xmm4
	jae _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_10
	mulss xmm4, xmm4
	mulss xmm5, xmm5
	mulss xmm3, xmm5
	ucomiss xmm3, xmm4
	jbe _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_20
_Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_10:
	xor eax, eax
	leave
	ret
_Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_20:
	mov eax, 0x1
	leave
	ret
_Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_30:
	movaps xmm2, xmm6
	mulss xmm2, xmm5
	mulss xmm5, xmm5
	movaps xmm1, xmm0
	subss xmm1, xmm5
	mulss xmm6, xmm6
	subss xmm0, xmm6
	mulss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm5, xmm2
	subss xmm5, xmm1
	pxor xmm0, xmm0
	ucomiss xmm0, xmm5
	jb _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf_40
	mulss xmm7, xmm5
	xor eax, eax
	ucomiss xmm7, xmm4
	setae al
	leave
	ret


;Initialized global or static variables of com_bsp:
SECTION .data


;Initialized constant data of com_bsp:
SECTION .rdata


;Zero initialized global or static variables of com_bsp:
SECTION .bss
comWorld: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_cannot_unload_wo:		db "Cannot unload world while it is in use",0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1

