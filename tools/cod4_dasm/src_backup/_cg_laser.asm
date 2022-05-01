;Imports of cg_laser:
	extern scr_const
	extern _Z16DObjGetBoneIndexPK6DObj_sjPh
	extern _Z25CG_DObjGetWorldBoneMatrixPK7cpose_tP6DObj_siPA3_fPf
	extern _Z10Com_MemsetPvii
	extern cg_laserRange
	extern _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern cg_laserEndOffset
	extern cg_laserFlarePct
	extern cg_laserRadius
	extern cgMedia
	extern _Z11FX_Beam_AddP6FxBeam
	extern cg_laserLight
	extern cg_laserLightBeginOffset
	extern cg_laserLightEndOffset
	extern cg_laserLightRadius
	extern _Z16FX_PostLight_AddP11FxPostLight
	extern cg_laserLightBodyTweak
	extern cg_laserRangePlayer

;Exports of cg_laser:
	global _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum


SECTION .text


;CG_Laser_Add(centity_s*, DObj_s*, cpose_t*, float const*, LaserOwnerEnum)
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov esi, [ebp+0xc]
	mov byte [ebp-0x19], 0xfe
	lea edi, [ebp-0x19]
	mov [esp+0x8], edi
	mov ebx, scr_const
	movzx eax, word [ebx+0xa2]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jnz _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_10
	mov byte [ebp-0x19], 0xfe
	mov [esp+0x8], edi
	movzx eax, word [ebx+0x90]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_20
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_10:
	lea eax, [ebp-0xcc]
	mov [esp+0x10], eax
	lea eax, [ebp-0xc0]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z25CG_DObjGetWorldBoneMatrixPK7cpose_tP6DObj_siPA3_fPf
	mov dword [esp+0x8], 0x2c
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x9c]
	mov [esp], ebx
	call _Z10Com_MemsetPvii
	cmp dword [ebp+0x18], 0x1
	jz _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_30
	mov eax, cg_laserRange
	mov eax, [eax]
	movss xmm4, dword [eax+0xc]
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_80:
	xor eax, eax
	mov [ebp-0x34], eax
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	movss xmm1, dword [ebp-0xcc]
	movss [ebp-0x40], xmm1
	movss xmm2, dword [ebp-0xc8]
	movss [ebp-0x3c], xmm2
	movss xmm3, dword [ebp-0xc4]
	movss [ebp-0x38], xmm3
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0xc0]
	addss xmm1, xmm0
	movss [ebp-0x4c], xmm1
	lea edi, [ebp-0xbc]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0xbc]
	addss xmm2, xmm0
	movss [ebp-0x48], xmm2
	lea esi, [ebp-0xb8]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0xb8]
	addss xmm3, xmm0
	movss [ebp-0x44], xmm3
	mov dword [esp+0x18], 0x2806831
	mov edx, [ebp+0x8]
	mov eax, [edx+0xcc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0x128], xmm4
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm1, dword [ebp-0x9c]
	movss xmm4, dword [ebp-0x128]
	mulss xmm4, xmm1
	movss [ebp-0x114], xmm4
	mov eax, cg_laserEndOffset
	mov eax, [eax]
	movaps xmm0, xmm4
	subss xmm0, [eax+0xc]
	movaps xmm4, xmm0
	mulss xmm4, [ebp-0xc0]
	addss xmm4, [ebp-0xcc]
	movss [ebp-0x4c], xmm4
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0xbc]
	addss xmm2, [ebp-0xc8]
	movss [ebp-0x48], xmm2
	movaps xmm3, xmm0
	mulss xmm3, [ebp-0xb8]
	addss xmm3, [ebp-0xc4]
	movss [ebp-0x44], xmm3
	mov eax, [ebp-0x40]
	mov [ebp-0x100], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0xfc], eax
	mov eax, [ebp-0x38]
	mov [ebp-0xf8], eax
	movss [ebp-0xf4], xmm4
	movss [ebp-0xf0], xmm2
	movss [ebp-0xec], xmm3
	mov dword [ebp-0xe8], 0xffffffff
	movss xmm5, dword [_float_1_00000000]
	movaps xmm0, xmm5
	subss xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	cvttss2si edx, xmm0
	test edx, edx
	js _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_40
	mov eax, 0xffffffff
	cmp edx, 0x100
	cmovl eax, edx
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_90:
	lea ecx, [ebp-0x100]
	shl eax, 0x18
	or eax, 0xffffff
	mov [ebp-0xe4], eax
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax]
	subss xmm0, xmm4
	movss xmm1, dword [eax+0x4]
	subss xmm1, xmm2
	movss xmm2, dword [eax+0x8]
	subss xmm2, xmm3
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0x110], xmm0
	mov eax, cg_laserFlarePct
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	mulss xmm0, [_float_0_01000000]
	addss xmm5, xmm0
	movss [ebp-0x110], xmm5
	mov eax, cg_laserRadius
	mov edx, [eax]
	mov eax, [edx+0xc]
	mov [ebp-0xe0], eax
	movaps xmm0, xmm5
	mulss xmm0, [edx+0xc]
	movss [ebp-0xdc], xmm0
	mov ebx, cgMedia
	mov eax, [ebx+0x18]
	mov [ebp-0xd8], eax
	mov dword [ebp-0xd4], 0x1
	mov dword [ebp-0xd0], 0x0
	mov [esp], ecx
	call _Z11FX_Beam_AddP6FxBeam
	mov eax, cg_laserLight
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_20
	mov eax, cg_laserLightBeginOffset
	mov eax, [eax]
	movss xmm7, dword [eax+0xc]
	mov eax, cg_laserLightEndOffset
	mov eax, [eax]
	movss xmm6, dword [ebp-0x114]
	subss xmm6, [eax+0xc]
	test dword [ebp-0x88], 0x2004000
	jnz _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_50
	movaps xmm0, xmm6
	subss xmm0, xmm7
	ucomiss xmm0, [_float_4_00000000]
	jb _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_60
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_70:
	movss xmm3, dword [ebp-0xcc]
	movss xmm1, dword [ebp-0xc0]
	movss xmm4, dword [ebp-0xc8]
	movss xmm2, dword [edi]
	movss xmm5, dword [ebp-0xc4]
	movss xmm0, dword [esi]
	movss [ebp-0x10c], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	addss xmm0, xmm3
	movss [ebp-0x70], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	addss xmm0, xmm4
	movss [ebp-0x6c], xmm0
	mulss xmm7, [ebp-0x10c]
	addss xmm7, xmm5
	movss [ebp-0x68], xmm7
	mulss xmm1, xmm6
	addss xmm3, xmm1
	movss [ebp-0x64], xmm3
	mulss xmm2, xmm6
	addss xmm4, xmm2
	movss [ebp-0x60], xmm4
	mulss xmm6, [ebp-0x10c]
	addss xmm5, xmm6
	movss [ebp-0x5c], xmm5
	mov eax, cg_laserLightRadius
	mov eax, [eax]
	movss xmm0, dword [ebp-0x110]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x58], xmm0
	lea edx, [ebp-0x70]
	mov dword [ebp-0x54], 0xffffffff
	mov eax, [ebx+0x1c]
	mov [ebp-0x50], eax
	mov [esp], edx
	call _Z16FX_PostLight_AddP11FxPostLight
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_20:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_60:
	jp _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_70
	movaps xmm0, xmm6
	addss xmm0, xmm7
	mulss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float_2_00000000]
	movaps xmm6, xmm0
	addss xmm6, xmm1
	movaps xmm7, xmm0
	subss xmm7, xmm1
	jmp _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_70
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_50:
	mov eax, cg_laserLightBodyTweak
	mov eax, [eax]
	addss xmm6, [eax+0xc]
	movaps xmm0, xmm6
	subss xmm0, xmm7
	ucomiss xmm0, [_float_4_00000000]
	jae _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_70
	jmp _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_60
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_30:
	mov eax, cg_laserRangePlayer
	mov eax, [eax]
	movss xmm4, dword [eax+0xc]
	jmp _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_80
_Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_40:
	xor eax, eax
	jmp _Z12CG_Laser_AddP9centity_sP6DObj_sP7cpose_tPKf14LaserOwnerEnum_90
	add [eax], al


;Initialized global or static variables of cg_laser:
SECTION .data


;Initialized constant data of cg_laser:
SECTION .rdata


;Zero initialized global or static variables of cg_laser:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_4_00000000:		dd 0x40800000	; 4
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_2_00000000:		dd 0x40000000	; 2

