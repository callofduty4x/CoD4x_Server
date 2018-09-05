;Imports of com_bsp:
	extern Sys_Error

;Exports of com_bsp:
	global Com_UnloadWorld
	global Com_CanPrimaryLightAffectPoint
	global comWorld


SECTION .text


;Com_UnloadWorld()
Com_UnloadWorld:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [comWorld+0x4]
	test eax, eax
	jnz Com_UnloadWorld_10
	leave
	ret
Com_UnloadWorld_10:
	mov dword [esp], _cstring_cannot_unload_wo
	call Sys_Error
	leave
	ret
	nop


;Com_CanPrimaryLightAffectPoint(ComPrimaryLight const*, float const*)
Com_CanPrimaryLightAffectPoint:
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
	jae Com_CanPrimaryLightAffectPoint_10
	cmp byte [ecx], 0x3
	jz Com_CanPrimaryLightAffectPoint_20
	movss xmm6, dword [ecx+0x38]
	movss xmm5, dword [ecx+0x2c]
	movaps xmm0, xmm5
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm6
	jae Com_CanPrimaryLightAffectPoint_20
	lea eax, [ecx+0x10]
	mulss xmm4, [ecx+0x10]
	mulss xmm1, [eax+0x4]
	addss xmm4, xmm1
	mulss xmm2, [eax+0x8]
	addss xmm4, xmm2
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm6, xmm0
	jp Com_CanPrimaryLightAffectPoint_30
	jnz Com_CanPrimaryLightAffectPoint_30
	pxor xmm0, xmm0
Com_CanPrimaryLightAffectPoint_40:
	ucomiss xmm0, xmm4
	jae Com_CanPrimaryLightAffectPoint_10
	mulss xmm4, xmm4
	mulss xmm5, xmm5
	mulss xmm3, xmm5
	ucomiss xmm3, xmm4
	jbe Com_CanPrimaryLightAffectPoint_20
Com_CanPrimaryLightAffectPoint_10:
	xor eax, eax
	leave
	ret
Com_CanPrimaryLightAffectPoint_20:
	mov eax, 0x1
	leave
	ret
Com_CanPrimaryLightAffectPoint_30:
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
	jb Com_CanPrimaryLightAffectPoint_40
	mulss xmm7, xmm5
	xor eax, eax
	ucomiss xmm7, xmm4
	setae al
	leave
	ret


;Zero initialized global or static variables of com_bsp:
SECTION .bss
comWorld: resb 0x80


;Initialized global or static variables of com_bsp:
SECTION .data


;Initialized constant data of com_bsp:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_cannot_unload_wo:		db "Cannot unload world while it is in use",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
