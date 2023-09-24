;Imports of g_mover:
	extern _Z16SV_SetBrushModelP9gentity_s
	extern _Z14Com_PrintErroriPKcz
	extern _Z12G_FreeEntityP9gentity_s
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z18G_LevelSpawnStringPKcS0_PS0_
	extern strcmp
	extern _Z18SV_GetConfigstringiPci
	extern _Z18SV_SetConfigstringiPKc
	extern _Z9I_stricmpPKcS0_
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z13G_GeneralLinkP9gentity_s
	extern _Z10G_RunThinkP9gentity_s
	extern level
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern _Z16RadiusFromBoundsPKfS0_
	extern _Z15SV_UnlinkEntityP9gentity_s
	extern _Z15CM_AreaEntitiesPKfS0_Piii
	extern g_entities
	extern _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	extern entityHandlers
	extern _Z16G_GetModelBoundsiPfS_
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z20Trace_GetEntityHitIdPK7trace_t

;Exports of g_mover:
	global pushed
	global pushed_p
	global _Z18trigger_use_sharedP9gentity_s
	global _Z10G_RunMoverP9gentity_s
	global _Z11G_MoverTeamP9gentity_s
	global _Z11trigger_useP9gentity_s
	global _Z15use_trigger_useP9gentity_sS0_S0_
	global _Z17trigger_use_touchP9gentity_s
	global _Z18G_TryPushingEntityP9gentity_sS0_PfS1_
	global _Z20G_TestEntityPositionP9gentity_sPf
	global hintStrings


SECTION .text


;trigger_use_shared(gentity_s*)
_Z18trigger_use_sharedP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, eax
	mov [esp], eax
	call _Z16SV_SetBrushModelP9gentity_s
	test al, al
	jnz _Z18trigger_use_sharedP9gentity_s_10
	cvtss2sd xmm0, [esi+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [esi+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [esi+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov [esp], esi
	call _Z12G_FreeEntityP9gentity_s
_Z18trigger_use_sharedP9gentity_s_40:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18trigger_use_sharedP9gentity_s_10:
	mov dword [esi+0x120], 0x200000
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	mov dword [esi+0x1c0], 0x3ff
	mov dword [esi+0xc], 0x0
	lea ecx, [esi+0x18]
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [esi+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov byte [esi+0xf6], 0x1
	mov edx, [esi+0x8]
	mov eax, edx
	or eax, 0x1
	mov [esi+0x8], eax
	cmp word [esi+0x168], 0x0
	jz _Z18trigger_use_sharedP9gentity_s_20
_Z18trigger_use_sharedP9gentity_s_90:
	mov byte [esi+0x16e], 0x13
	mov dword [esi+0xd8], 0x1
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_cursorhint
	call _Z18G_LevelSpawnStringPKcS0_PS0_
	test eax, eax
	jnz _Z18trigger_use_sharedP9gentity_s_30
_Z18trigger_use_sharedP9gentity_s_110:
	mov dword [esi+0xd4], 0xff
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_hintstring
	call _Z18G_LevelSpawnStringPKcS0_PS0_
	test eax, eax
	jz _Z18trigger_use_sharedP9gentity_s_40
	xor edi, edi
	jmp _Z18trigger_use_sharedP9gentity_s_50
_Z18trigger_use_sharedP9gentity_s_80:
	lea eax, [ebp-0x41c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z18trigger_use_sharedP9gentity_s_60
	add edi, 0x1
	cmp edi, 0x20
	jz _Z18trigger_use_sharedP9gentity_s_70
_Z18trigger_use_sharedP9gentity_s_50:
	lea ebx, [edi+0x115]
	mov dword [esp+0x8], 0x400
	lea edx, [ebp-0x41c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z18SV_GetConfigstringiPci
	cmp byte [ebp-0x41c], 0x0
	jnz _Z18trigger_use_sharedP9gentity_s_80
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z18SV_SetConfigstringiPKc
	mov edx, edi
	movzx eax, dl
	mov [esi+0xd4], eax
	jmp _Z18trigger_use_sharedP9gentity_s_40
_Z18trigger_use_sharedP9gentity_s_20:
	or edx, 0x21
	mov [esi+0x8], edx
	jmp _Z18trigger_use_sharedP9gentity_s_90
_Z18trigger_use_sharedP9gentity_s_30:
	mov dword [esp+0x4], _cstring_hint_inherit
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z18trigger_use_sharedP9gentity_s_100
	mov dword [esi+0xd8], 0xffffffff
	jmp _Z18trigger_use_sharedP9gentity_s_110
_Z18trigger_use_sharedP9gentity_s_60:
	mov edx, edi
	movzx eax, dl
	mov [esi+0xd4], eax
	jmp _Z18trigger_use_sharedP9gentity_s_40
_Z18trigger_use_sharedP9gentity_s_70:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_too_many_differe
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18trigger_use_sharedP9gentity_s_40
_Z18trigger_use_sharedP9gentity_s_100:
	mov edi, 0x1
	mov ebx, hintStrings
_Z18trigger_use_sharedP9gentity_s_130:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18trigger_use_sharedP9gentity_s_120
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x5
	jnz _Z18trigger_use_sharedP9gentity_s_130
	jmp _Z18trigger_use_sharedP9gentity_s_110
_Z18trigger_use_sharedP9gentity_s_120:
	mov [esi+0xd8], edi
	jmp _Z18trigger_use_sharedP9gentity_s_110


;G_RunMover(gentity_s*)
_Z10G_RunMoverP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x218]
	test eax, eax
	jz _Z10G_RunMoverP9gentity_s_10
	mov [esp], ebx
	call _Z13G_GeneralLinkP9gentity_s
_Z10G_RunMoverP9gentity_s_30:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10G_RunThinkP9gentity_s
_Z10G_RunMoverP9gentity_s_10:
	mov eax, [ebx+0xc]
	test eax, eax
	jnz _Z10G_RunMoverP9gentity_s_20
	mov eax, [ebx+0x30]
	test eax, eax
	jz _Z10G_RunMoverP9gentity_s_30
_Z10G_RunMoverP9gentity_s_20:
	mov [esp], ebx
	call _Z11G_MoverTeamP9gentity_s
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10G_RunThinkP9gentity_s


;G_MoverTeam(gentity_s*)
_Z11G_MoverTeamP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x212c
	mov eax, [ebp+0x8]
	cmp dword [eax+0xc], 0x8
	jz _Z11G_MoverTeamP9gentity_s_10
	mov edx, eax
	add eax, 0xc
	mov [ebp-0x20e8], eax
	mov eax, [edx+0xc]
	sub eax, 0x9
	cmp eax, 0x2
	ja _Z11G_MoverTeamP9gentity_s_20
_Z11G_MoverTeamP9gentity_s_10:
	add esp, 0x212c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11G_MoverTeamP9gentity_s_20:
	mov dword [pushed_p], pushed
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov ebx, level
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x20e8]
	mov [esp], ecx
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov eax, [ebp+0x8]
	add eax, 0x30
	mov [ebp-0x20e4], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov edx, [ebp-0x20e4]
	mov [esp], edx
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov ecx, [ebp+0x8]
	add ecx, 0x13c
	mov [ebp-0x20e0], ecx
	movss xmm0, dword [ebp-0x3c]
	mov eax, [ebp+0x8]
	subss xmm0, [eax+0x13c]
	movss [ebp-0x90], xmm0
	add eax, 0x140
	mov [ebp-0x20d8], eax
	movss xmm0, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	subss xmm0, [edx+0x140]
	movss [ebp-0x8c], xmm0
	add edx, 0x144
	mov [ebp-0x20d4], edx
	movss xmm0, dword [ebp-0x34]
	mov ecx, [ebp+0x8]
	subss xmm0, [ecx+0x144]
	movss [ebp-0x88], xmm0
	add ecx, 0x148
	mov [ebp-0x20dc], ecx
	movss xmm0, dword [ebp-0x48]
	mov eax, [ebp+0x8]
	subss xmm0, [eax+0x148]
	movss [ebp-0x30], xmm0
	add eax, 0x14c
	mov [ebp-0x20d0], eax
	movss xmm0, dword [ebp-0x44]
	mov edx, [ebp+0x8]
	subss xmm0, [edx+0x14c]
	movss [ebp-0x2c], xmm0
	add edx, 0x150
	mov [ebp-0x20cc], edx
	movss xmm0, dword [ebp-0x40]
	mov ecx, [ebp+0x8]
	subss xmm0, [ecx+0x150]
	movss [ebp-0x28], xmm0
	mov edx, ecx
	add edx, 0x108
	mov eax, [ecx+0x108]
	mov [ebp-0x54], eax
	mov eax, [edx+0x4]
	mov [ebp-0x50], eax
	mov eax, [edx+0x8]
	mov [ebp-0x4c], eax
	add edx, 0xc
	mov eax, [ecx+0x114]
	mov [ebp-0x60], eax
	mov eax, [edx+0x4]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x58], eax
	cmp dword [ecx+0x4], 0x6
	jz _Z11G_MoverTeamP9gentity_s_30
_Z11G_MoverTeamP9gentity_s_350:
	lea edi, [ebp-0x54]
	lea esi, [ebp-0x60]
_Z11G_MoverTeamP9gentity_s_390:
	pxor xmm3, xmm3
	mov ecx, [ebp+0x8]
	ucomiss xmm3, [ecx+0x148]
	jnz _Z11G_MoverTeamP9gentity_s_40
	jp _Z11G_MoverTeamP9gentity_s_40
	ucomiss xmm3, [ecx+0x14c]
	jnz _Z11G_MoverTeamP9gentity_s_40
	jp _Z11G_MoverTeamP9gentity_s_40
	ucomiss xmm3, [ecx+0x150]
	jnz _Z11G_MoverTeamP9gentity_s_40
	jp _Z11G_MoverTeamP9gentity_s_40
	ucomiss xmm3, [ebp-0x30]
	jnz _Z11G_MoverTeamP9gentity_s_40
	jp _Z11G_MoverTeamP9gentity_s_40
	ucomiss xmm3, [ebp-0x2c]
	jnz _Z11G_MoverTeamP9gentity_s_40
	jp _Z11G_MoverTeamP9gentity_s_40
	ucomiss xmm3, [ebp-0x28]
	jp _Z11G_MoverTeamP9gentity_s_40
	jnz _Z11G_MoverTeamP9gentity_s_40
	mov edx, [ebp+0x8]
	mov ecx, 0x1
	movss xmm2, dword [_float_1_00000000]
_Z11G_MoverTeamP9gentity_s_50:
	lea eax, [ecx*4]
	movss xmm1, dword [edx+0x13c]
	movaps xmm0, xmm1
	addss xmm0, [edi+eax-0x4]
	subss xmm0, xmm2
	movss [ebp+eax-0xa0], xmm0
	addss xmm1, [esi+eax-0x4]
	addss xmm1, xmm2
	movss [ebp+eax-0xac], xmm1
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z11G_MoverTeamP9gentity_s_50
	jmp _Z11G_MoverTeamP9gentity_s_60
_Z11G_MoverTeamP9gentity_s_40:
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z16RadiusFromBoundsPKfS0_
	fstp dword [ebp-0x20ec]
	movss xmm1, dword [ebp-0x20ec]
	mov edx, [ebp+0x8]
	mov ecx, 0x1
_Z11G_MoverTeamP9gentity_s_70:
	lea eax, [ecx*4]
	movss xmm0, dword [edx+0x13c]
	subss xmm0, xmm1
	movss [ebp+eax-0xa0], xmm0
	movaps xmm0, xmm1
	addss xmm0, [edx+0x13c]
	movss [ebp+eax-0xac], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z11G_MoverTeamP9gentity_s_70
	pxor xmm3, xmm3
_Z11G_MoverTeamP9gentity_s_60:
	mov ebx, 0x1
	lea edi, [ebp-0x6c]
	lea esi, [ebp-0x78]
_Z11G_MoverTeamP9gentity_s_90:
	lea eax, [ebx*4]
	lea ecx, [ebp-0x9c]
	add ecx, eax
	movss xmm0, dword [ebp+eax-0x94]
	movaps xmm2, xmm0
	addss xmm2, [ecx-0x4]
	movss [edi+eax-0x4], xmm2
	lea edx, [ebp-0xa8]
	add edx, eax
	movaps xmm1, xmm0
	addss xmm1, [edx-0x4]
	movss [esi+eax-0x4], xmm1
	ucomiss xmm0, xmm3
	jbe _Z11G_MoverTeamP9gentity_s_80
	movss [edx-0x4], xmm1
_Z11G_MoverTeamP9gentity_s_270:
	add ebx, 0x1
	cmp ebx, 0x4
	jnz _Z11G_MoverTeamP9gentity_s_90
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15SV_UnlinkEntityP9gentity_s
	mov dword [esp+0x10], 0x6000180
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x10a8]
	mov [esp+0x8], ebx
	lea edx, [ebp-0xa8]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x9c]
	mov [esp], ecx
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov [ebp-0x20b0], eax
	mov eax, [ebp-0x20e0]
	movss xmm0, dword [eax]
	addss xmm0, [ebp-0x90]
	movss [eax], xmm0
	mov edx, [ebp-0x20d8]
	movss xmm0, dword [edx]
	addss xmm0, [ebp-0x8c]
	movss [eax+0x4], xmm0
	mov ecx, [ebp-0x20d4]
	movss xmm0, dword [ecx]
	addss xmm0, [ebp-0x88]
	movss [eax+0x8], xmm0
	mov eax, [ebp-0x20dc]
	movss xmm0, dword [eax]
	addss xmm0, [ebp-0x30]
	movss [eax], xmm0
	mov edx, [ebp-0x20d0]
	movss xmm0, dword [edx]
	addss xmm0, [ebp-0x2c]
	movss [eax+0x4], xmm0
	mov ecx, [ebp-0x20cc]
	movss xmm0, dword [ecx]
	addss xmm0, [ebp-0x28]
	movss [eax+0x8], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13SV_LinkEntityP9gentity_s
	mov edi, [ebp-0x20b0]
	test edi, edi
	jle _Z11G_MoverTeamP9gentity_s_100
	movss xmm0, dword [ebp-0x78]
	movss [ebp-0x20c8], xmm0
	movss xmm0, dword [ebp-0x74]
	movss [ebp-0x20c4], xmm0
	movss xmm0, dword [ebp-0x70]
	movss [ebp-0x20c0], xmm0
	movss xmm0, dword [ebp-0x6c]
	movss [ebp-0x20bc], xmm0
	movss xmm0, dword [ebp-0x68]
	movss [ebp-0x20b8], xmm0
	movss xmm0, dword [ebp-0x64]
	movss [ebp-0x20b4], xmm0
	xor edi, edi
	mov dword [ebp-0x20ac], 0x0
	mov esi, ebx
_Z11G_MoverTeamP9gentity_s_150:
	mov ebx, [esi]
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edx, [eax+ebx]
	add edx, g_entities
	mov ecx, [edx+0x4]
	lea eax, [ecx-0x3]
	cmp eax, 0x1
	jbe _Z11G_MoverTeamP9gentity_s_110
	sub ecx, 0x1
	jz _Z11G_MoverTeamP9gentity_s_110
	cmp byte [edx+0x16a], 0x0
	jz _Z11G_MoverTeamP9gentity_s_120
_Z11G_MoverTeamP9gentity_s_110:
	mov eax, [edx+0x7c]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx]
	jz _Z11G_MoverTeamP9gentity_s_130
	movss xmm0, dword [edx+0x124]
	ucomiss xmm0, [ebp-0x20c8]
	jae _Z11G_MoverTeamP9gentity_s_120
	movss xmm0, dword [edx+0x128]
	ucomiss xmm0, [ebp-0x20c4]
	jae _Z11G_MoverTeamP9gentity_s_120
	movss xmm0, dword [edx+0x12c]
	ucomiss xmm0, [ebp-0x20c0]
	jae _Z11G_MoverTeamP9gentity_s_120
	movss xmm0, dword [ebp-0x20bc]
	ucomiss xmm0, [edx+0x130]
	jae _Z11G_MoverTeamP9gentity_s_120
	movss xmm0, dword [ebp-0x20b8]
	ucomiss xmm0, [edx+0x134]
	jb _Z11G_MoverTeamP9gentity_s_140
_Z11G_MoverTeamP9gentity_s_120:
	add edi, 0x1
	add esi, 0x4
	cmp [ebp-0x20b0], edi
	jnz _Z11G_MoverTeamP9gentity_s_150
	mov esi, [ebp-0x20ac]
	test esi, esi
	jle _Z11G_MoverTeamP9gentity_s_100
	xor ebx, ebx
_Z11G_MoverTeamP9gentity_s_160:
	mov eax, [ebp+ebx*4-0x20a8]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	mov [esp], edx
	call _Z15SV_UnlinkEntityP9gentity_s
	add ebx, 0x1
	cmp ebx, [ebp-0x20ac]
	jnz _Z11G_MoverTeamP9gentity_s_160
	xor esi, esi
	jmp _Z11G_MoverTeamP9gentity_s_170
_Z11G_MoverTeamP9gentity_s_230:
	mov eax, [edi+0x4]
	sub eax, 0x3
	cmp eax, 0x1
	jbe _Z11G_MoverTeamP9gentity_s_180
	mov edx, [ebp+0x8]
	cmp dword [edx+0xc], 0x4
	jz _Z11G_MoverTeamP9gentity_s_190
	cmp dword [edx+0x30], 0x4
	jnz _Z11G_MoverTeamP9gentity_s_200
	mov ecx, [ebp+0x8]
_Z11G_MoverTeamP9gentity_s_430:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x1869f
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ecx
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
_Z11G_MoverTeamP9gentity_s_240:
	add esi, 0x1
	cmp esi, [ebp-0x20ac]
	jz _Z11G_MoverTeamP9gentity_s_210
_Z11G_MoverTeamP9gentity_s_170:
	mov edx, [ebp+esi*4-0x20a8]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea edi, [eax+edx]
	add edi, g_entities
	mov ebx, [pushed_p]
	mov [ebx], edi
	lea ecx, [ebx+0x4]
	lea edx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [ebx+0x4], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x2c]
	mov [ebx+0x28], eax
	cmp dword [edi+0x4], 0x4
	jz _Z11G_MoverTeamP9gentity_s_220
_Z11G_MoverTeamP9gentity_s_340:
	lea edx, [ebp-0x30]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x90]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18G_TryPushingEntityP9gentity_sS0_PfS1_
	test eax, eax
	jz _Z11G_MoverTeamP9gentity_s_230
_Z11G_MoverTeamP9gentity_s_180:
	mov [esp], edi
	call _Z13SV_LinkEntityP9gentity_s
	jmp _Z11G_MoverTeamP9gentity_s_240
_Z11G_MoverTeamP9gentity_s_100:
	mov esi, 0x1
	xor edi, edi
_Z11G_MoverTeamP9gentity_s_420:
	mov eax, esi
	test al, al
	jnz _Z11G_MoverTeamP9gentity_s_250
	mov ebx, [pushed_p]
	sub ebx, 0x2c
	cmp ebx, pushed
	jae _Z11G_MoverTeamP9gentity_s_260
_Z11G_MoverTeamP9gentity_s_280:
	mov ebx, level
	mov eax, [ebx+0x1ec]
	sub eax, [ebx+0x1f0]
	mov edx, [ebp+0x8]
	add [edx+0x10], eax
	mov eax, [ebx+0x1ec]
	sub eax, [ebx+0x1f0]
	add [edx+0x34], eax
	mov ecx, [ebp-0x20e0]
	mov [esp+0x8], ecx
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20e8]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov edx, [ebp-0x20dc]
	mov [esp+0x8], edx
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x20e4]
	mov [esp], ecx
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13SV_LinkEntityP9gentity_s
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x8]
	test eax, eax
	jz _Z11G_MoverTeamP9gentity_s_10
	mov [esp+0x4], edi
	mov [esp], edx
	call eax
	add esp, 0x212c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11G_MoverTeamP9gentity_s_80:
	movss [ecx-0x4], xmm2
	jmp _Z11G_MoverTeamP9gentity_s_270
_Z11G_MoverTeamP9gentity_s_310:
	lea ecx, [esi+0x1c0]
	lea edx, [ebx+0x1c]
	mov eax, [ebx+0x1c]
	mov [esi+0x1c0], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
_Z11G_MoverTeamP9gentity_s_300:
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	sub ebx, 0x2c
	cmp ebx, pushed
	jb _Z11G_MoverTeamP9gentity_s_280
_Z11G_MoverTeamP9gentity_s_260:
	mov esi, [ebx]
	lea edx, [esi+0x13c]
	mov eax, [ebx+0x4]
	mov [esi+0x13c], eax
	mov eax, [ebx+0x8]
	mov [edx+0x4], eax
	mov eax, [ebx+0xc]
	mov [edx+0x8], eax
	lea edx, [esi+0x18]
	mov eax, [ebx+0x4]
	mov [esi+0x18], eax
	mov eax, [ebx+0x8]
	mov [edx+0x4], eax
	mov eax, [ebx+0xc]
	mov [edx+0x8], eax
	mov eax, [esi+0x15c]
	test eax, eax
	jz _Z11G_MoverTeamP9gentity_s_290
	movss xmm0, dword [eax+0x68]
	subss xmm0, [ebx+0x28]
	movss [eax+0x68], xmm0
	mov edx, [esi+0x15c]
	lea ecx, [edx+0x1c]
	mov eax, [ebx+0x4]
	mov [edx+0x1c], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x4], eax
	mov eax, [ebx+0xc]
	mov [ecx+0x8], eax
_Z11G_MoverTeamP9gentity_s_290:
	cmp dword [esi+0x4], 0x4
	jnz _Z11G_MoverTeamP9gentity_s_300
	jmp _Z11G_MoverTeamP9gentity_s_310
_Z11G_MoverTeamP9gentity_s_250:
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0xc]
	test ebx, ebx
	jz _Z11G_MoverTeamP9gentity_s_320
	mov eax, [ecx+0x10]
	add eax, [ecx+0x14]
	mov edx, level
	cmp [edx+0x1ec], eax
	jge _Z11G_MoverTeamP9gentity_s_330
_Z11G_MoverTeamP9gentity_s_440:
	mov eax, [ebp+0x8]
_Z11G_MoverTeamP9gentity_s_400:
	mov edx, [eax+0x30]
	test edx, edx
	jz _Z11G_MoverTeamP9gentity_s_10
	mov edx, eax
	mov eax, [eax+0x34]
	add eax, [edx+0x38]
	mov edx, level
	cmp [edx+0x1ec], eax
	jl _Z11G_MoverTeamP9gentity_s_10
	mov ecx, [ebp+0x8]
	movzx eax, byte [ecx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z11G_MoverTeamP9gentity_s_10
	mov [esp], ecx
	call eax
	jmp _Z11G_MoverTeamP9gentity_s_10
_Z11G_MoverTeamP9gentity_s_140:
	movss xmm0, dword [ebp-0x20b4]
	ucomiss xmm0, [edx+0x138]
	jae _Z11G_MoverTeamP9gentity_s_120
	lea eax, [edx+0x13c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z20G_TestEntityPositionP9gentity_sPf
	cmp [ebp+0x8], eax
	jnz _Z11G_MoverTeamP9gentity_s_120
	mov ebx, [esi]
_Z11G_MoverTeamP9gentity_s_130:
	mov eax, [ebp-0x20ac]
	mov [ebp+eax*4-0x20a8], ebx
	add eax, 0x1
	mov [ebp-0x20ac], eax
	jmp _Z11G_MoverTeamP9gentity_s_120
_Z11G_MoverTeamP9gentity_s_220:
	lea ecx, [ebx+0x1c]
	lea edx, [edi+0x1c0]
	mov eax, [edi+0x1c0]
	mov [ebx+0x1c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	jmp _Z11G_MoverTeamP9gentity_s_340
_Z11G_MoverTeamP9gentity_s_30:
	movzx eax, word [ecx+0x168]
	test ax, ax
	jz _Z11G_MoverTeamP9gentity_s_350
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	lea ebx, [ebp-0x84]
	mov [esp+0x4], ebx
	movzx eax, ax
	mov [esp], eax
	call _Z16G_GetModelBoundsiPfS_
	test al, al
	jz _Z11G_MoverTeamP9gentity_s_350
	mov ecx, 0x1
	lea edi, [ebp-0x54]
	lea esi, [ebp-0x60]
_Z11G_MoverTeamP9gentity_s_380:
	lea eax, [ecx*4]
	movss xmm1, dword [ebx+eax-0x4]
	lea edx, [edi+eax]
	movss xmm0, dword [edx-0x4]
	ucomiss xmm0, xmm1
	jbe _Z11G_MoverTeamP9gentity_s_360
	movss [edx-0x4], xmm1
_Z11G_MoverTeamP9gentity_s_360:
	movss xmm0, dword [ebp+eax-0x28]
	lea eax, [esi+eax]
	ucomiss xmm0, [eax-0x4]
	jbe _Z11G_MoverTeamP9gentity_s_370
	movss [eax-0x4], xmm0
_Z11G_MoverTeamP9gentity_s_370:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z11G_MoverTeamP9gentity_s_380
	jmp _Z11G_MoverTeamP9gentity_s_390
_Z11G_MoverTeamP9gentity_s_320:
	mov eax, ecx
	jmp _Z11G_MoverTeamP9gentity_s_400
_Z11G_MoverTeamP9gentity_s_210:
	mov esi, 0x1
	xor edi, edi
_Z11G_MoverTeamP9gentity_s_450:
	xor ebx, ebx
_Z11G_MoverTeamP9gentity_s_410:
	mov eax, [ebp+ebx*4-0x20a8]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	mov [esp], edx
	call _Z13SV_LinkEntityP9gentity_s
	add ebx, 0x1
	cmp ebx, [ebp-0x20ac]
	jnz _Z11G_MoverTeamP9gentity_s_410
	jmp _Z11G_MoverTeamP9gentity_s_420
_Z11G_MoverTeamP9gentity_s_190:
	mov ecx, edx
	jmp _Z11G_MoverTeamP9gentity_s_430
_Z11G_MoverTeamP9gentity_s_330:
	movzx eax, byte [ecx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z11G_MoverTeamP9gentity_s_440
	mov [esp], ecx
	call eax
	mov eax, [ebp+0x8]
	jmp _Z11G_MoverTeamP9gentity_s_400
_Z11G_MoverTeamP9gentity_s_200:
	xor esi, esi
	jmp _Z11G_MoverTeamP9gentity_s_450


;trigger_use(gentity_s*)
_Z11trigger_useP9gentity_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	jmp _Z18trigger_use_sharedP9gentity_s


;use_trigger_use(gentity_s*, gentity_s*, gentity_s*)
_Z15use_trigger_useP9gentity_sS0_S0_:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;trigger_use_touch(gentity_s*)
_Z17trigger_use_touchP9gentity_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	jmp _Z18trigger_use_sharedP9gentity_s


;G_TryPushingEntity(gentity_s*, gentity_s*, float*, float*)
_Z18G_TryPushingEntityP9gentity_sS0_PfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x10]
	lea edx, [edi+0x13c]
	mov [ebp-0xa0], edx
	movss xmm0, dword [edi+0x13c]
	addss xmm0, [eax]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [eax+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [eax+0x8]
	movss [ebp-0x28], xmm0
	lea eax, [ebp-0x60]
	lea edx, [ebp-0x6c]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	lea ebx, [ebp-0x78]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [ebp-0x6c]
	xorps xmm0, xmm1
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x68]
	xorps xmm0, xmm1
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x64]
	xorps xmm0, xmm1
	movss [ebp-0x64], xmm0
	xor esi, esi
	lea eax, [ebp-0x54]
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__30:
	lea ecx, [ebp+esi*4-0x78]
	mov edx, eax
	lea ebx, [eax+0xc]
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__10:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0xc
	add edx, 0x4
	cmp ebx, edx
	jnz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__10
	add esi, 0x1
	cmp esi, 0x3
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__20
	mov eax, ebx
	jmp _Z18G_TryPushingEntityP9gentity_sS0_PfS1__30
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__20:
	mov eax, [ebp+0xc]
	add eax, 0x13c
	movss xmm5, dword [ebp-0x30]
	mov edx, [ebp+0xc]
	subss xmm5, [edx+0x13c]
	movss xmm4, dword [ebp-0x2c]
	subss xmm4, [eax+0x4]
	movss xmm6, dword [ebp-0x28]
	subss xmm6, [eax+0x8]
	movaps xmm3, xmm5
	mulss xmm3, [ebp-0x54]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x50]
	addss xmm3, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x4c]
	addss xmm3, xmm0
	movss [ebp-0x24], xmm3
	movaps xmm2, xmm5
	mulss xmm2, [ebp-0x48]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x44]
	addss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x40]
	addss xmm2, xmm0
	movss [ebp-0x20], xmm2
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x3c]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x38]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x34]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	subss xmm2, xmm4
	subss xmm3, xmm5
	addss xmm3, [ebp-0x30]
	movss [ebp-0x30], xmm3
	addss xmm2, [ebp-0x2c]
	movss [ebp-0x2c], xmm2
	subss xmm0, xmm6
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z20G_TestEntityPositionP9gentity_sPf
	test eax, eax
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__40
	cvtss2sd xmm3, [edi+0x114]
	movsd xmm6, qword [_double_0_50000000]
	movapd xmm0, xmm3
	mulsd xmm0, xmm6
	ucomisd xmm0, [_double_4_00000000]
	jbe _Z18G_TryPushingEntityP9gentity_sS0_PfS1__50
	movss xmm1, dword [ebp-0x30]
	movss [ebp-0x7c], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss [ebp-0x80], xmm1
	movss xmm1, dword [ebp-0x28]
	movss [ebp-0x84], xmm1
	ucomisd xmm0, [_double_0_00000000]
	jbe _Z18G_TryPushingEntityP9gentity_sS0_PfS1__50
	pxor xmm0, xmm0
	movss [ebp-0x90], xmm0
	movaps xmm2, xmm0
	lea ebx, [ebp-0x24]
	lea esi, [edi+0x18]
	lea eax, [edi+0x1c0]
	mov [ebp-0xa4], eax
	movaps xmm7, xmm0
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__180:
	xorps xmm7, [_data16_80000000]
	movss xmm0, dword [ebp-0x90]
	ucomiss xmm0, xmm7
	jb _Z18G_TryPushingEntityP9gentity_sS0_PfS1__60
	addss xmm0, xmm0
	movss [ebp-0x94], xmm0
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__170:
	movapd xmm0, xmm3
	mulsd xmm0, xmm6
	ucomisd xmm0, [_double_4_00000000]
	jbe _Z18G_TryPushingEntityP9gentity_sS0_PfS1__70
	movss xmm4, dword [_float_4_00000000]
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__150:
	movaps xmm5, xmm4
	xorps xmm5, [_data16_80000000]
	ucomiss xmm4, xmm5
	jb _Z18G_TryPushingEntityP9gentity_sS0_PfS1__80
	movaps xmm1, xmm4
	addss xmm1, xmm4
	movss [ebp-0x98], xmm1
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__140:
	movapd xmm0, xmm3
	mulsd xmm0, xmm6
	ucomisd xmm0, [_double_4_00000000]
	jbe _Z18G_TryPushingEntityP9gentity_sS0_PfS1__90
	movss xmm2, dword [_float_4_00000000]
	jmp _Z18G_TryPushingEntityP9gentity_sS0_PfS1__100
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__110:
	addss xmm2, [_float_4_00000000]
	movapd xmm1, xmm3
	mulsd xmm1, xmm6
	cvtss2sd xmm0, xmm2
	ucomisd xmm1, xmm0
	jbe _Z18G_TryPushingEntityP9gentity_sS0_PfS1__90
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__100:
	movaps xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	ucomiss xmm2, xmm1
	jb _Z18G_TryPushingEntityP9gentity_sS0_PfS1__110
	movss xmm0, dword [ebp-0x7c]
	addss xmm0, xmm5
	movss [ebp-0x8c], xmm0
	movss xmm0, dword [ebp-0x84]
	addss xmm0, xmm7
	movss [ebp-0x88], xmm0
	movaps xmm0, xmm2
	addss xmm0, xmm2
	movss [ebp-0x9c], xmm0
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__130:
	movss xmm0, dword [ebp-0x8c]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x80]
	addss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x88]
	movss [ebp-0x1c], xmm0
	mov [esp+0x4], ebx
	mov [esp], edi
	movss [ebp-0xb8], xmm1
	movss [ebp-0xc8], xmm2
	movss [ebp-0xd8], xmm4
	movss [ebp-0xe8], xmm5
	movss [ebp-0xf8], xmm7
	call _Z20G_TestEntityPositionP9gentity_sPf
	test eax, eax
	movss xmm1, dword [ebp-0xb8]
	movss xmm2, dword [ebp-0xc8]
	movss xmm4, dword [ebp-0xd8]
	movss xmm5, dword [ebp-0xe8]
	movss xmm7, dword [ebp-0xf8]
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__120
	addss xmm1, [ebp-0x9c]
	ucomiss xmm2, xmm1
	jae _Z18G_TryPushingEntityP9gentity_sS0_PfS1__130
	cvtss2sd xmm3, [edi+0x114]
	movsd xmm6, qword [_double_0_50000000]
	addss xmm2, [_float_4_00000000]
	movapd xmm1, xmm3
	mulsd xmm1, xmm6
	cvtss2sd xmm0, xmm2
	ucomisd xmm1, xmm0
	ja _Z18G_TryPushingEntityP9gentity_sS0_PfS1__100
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__90:
	addss xmm5, [ebp-0x98]
	ucomiss xmm4, xmm5
	jae _Z18G_TryPushingEntityP9gentity_sS0_PfS1__140
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__80:
	addss xmm4, [_float_4_00000000]
	movapd xmm1, xmm3
	mulsd xmm1, xmm6
	cvtss2sd xmm0, xmm4
	ucomisd xmm1, xmm0
	ja _Z18G_TryPushingEntityP9gentity_sS0_PfS1__150
	pxor xmm2, xmm2
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__70:
	ucomiss xmm7, xmm2
	jp _Z18G_TryPushingEntityP9gentity_sS0_PfS1__160
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__60
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__160:
	addss xmm7, [ebp-0x94]
	movss xmm0, dword [ebp-0x90]
	ucomiss xmm0, xmm7
	jae _Z18G_TryPushingEntityP9gentity_sS0_PfS1__170
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__60:
	movss xmm1, dword [_float_4_00000000]
	addss xmm1, [ebp-0x90]
	movss [ebp-0x90], xmm1
	movapd xmm1, xmm3
	mulsd xmm1, xmm6
	cvtss2sd xmm0, [ebp-0x90]
	ucomisd xmm1, xmm0
	jbe _Z18G_TryPushingEntityP9gentity_sS0_PfS1__50
	movss xmm7, dword [ebp-0x90]
	jmp _Z18G_TryPushingEntityP9gentity_sS0_PfS1__180
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__50:
	mov eax, [ebp-0xa0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z20G_TestEntityPositionP9gentity_sPf
	test eax, eax
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__190
	xor eax, eax
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__120:
	mov eax, [edi+0x7c]
	mov edx, [ebp+0xc]
	cmp eax, [edx]
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__200
	mov dword [edi+0x7c], 0x3ff
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__200:
	mov ecx, [ebp-0x24]
	mov ebx, [ebp-0xa0]
	mov [ebx], ecx
	mov edx, [ebp-0x20]
	mov [ebx+0x4], edx
	mov eax, [ebp-0x1c]
	mov [ebx+0x8], eax
	mov [edi+0x18], ecx
	mov [esi+0x4], edx
	mov [esi+0x8], eax
	mov eax, [edi+0x15c]
	test eax, eax
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__210
	movss xmm0, dword [eax+0x68]
	mov edx, [ebp+0x14]
	addss xmm0, [edx+0x4]
	movss [eax+0x68], xmm0
	mov edx, [edi+0x15c]
	lea ecx, [edx+0x1c]
	mov eax, [ebp-0x24]
	mov [edx+0x1c], eax
	mov eax, [ebp-0x20]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x8], eax
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__210:
	cmp dword [edi+0x4], 0x4
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__220
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__230:
	add dword [pushed_p], 0x2c
	mov eax, 0x1
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__190:
	mov dword [edi+0x7c], 0x3ff
	mov eax, 0x1
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__220:
	movss xmm2, dword [edi+0x1c0]
	mov ebx, [ebp-0xa4]
	movss xmm3, dword [ebx+0x4]
	movss xmm4, dword [ebx+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x54]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x4c]
	addss xmm0, xmm1
	movss [edi+0x1c0], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x48]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x44]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x40]
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	mulss xmm2, [ebp-0x3c]
	mulss xmm3, [ebp-0x38]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x34]
	addss xmm2, xmm4
	movss [ebx+0x8], xmm2
	jmp _Z18G_TryPushingEntityP9gentity_sS0_PfS1__230
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__40:
	mov eax, [edi+0x7c]
	mov ebx, [ebp+0xc]
	cmp eax, [ebx]
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__240
	mov dword [edi+0x7c], 0x3ff
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__240:
	mov ebx, [ebp-0x30]
	mov eax, [ebp-0xa0]
	mov [eax], ebx
	mov ecx, [ebp-0x2c]
	mov [eax+0x4], ecx
	mov edx, [ebp-0x28]
	mov [eax+0x8], edx
	lea eax, [edi+0x18]
	mov [edi+0x18], ebx
	mov [eax+0x4], ecx
	mov [eax+0x8], edx
	mov eax, [edi+0x15c]
	test eax, eax
	jz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__250
	movss xmm0, dword [eax+0x68]
	mov edx, [ebp+0x14]
	addss xmm0, [edx+0x4]
	movss [eax+0x68], xmm0
	mov edx, [edi+0x15c]
	lea ecx, [edx+0x1c]
	mov eax, [ebp-0x30]
	mov [edx+0x1c], eax
	mov eax, [ebp-0x2c]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x28]
	mov [ecx+0x8], eax
_Z18G_TryPushingEntityP9gentity_sS0_PfS1__250:
	cmp dword [edi+0x4], 0x4
	jnz _Z18G_TryPushingEntityP9gentity_sS0_PfS1__230
	lea eax, [edi+0x148]
	movss xmm0, dword [edi+0x148]
	mov ebx, [ebp+0x14]
	addss xmm0, [ebx]
	movss [edi+0x148], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [ebx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [ebx+0x8]
	movss [eax+0x8], xmm0
	lea eax, [edi+0x3c]
	movss xmm0, dword [edi+0x3c]
	addss xmm0, [ebx]
	movss [edi+0x3c], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [ebx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [ebx+0x8]
	movss [eax+0x8], xmm0
	lea eax, [edi+0x1c0]
	movss xmm2, dword [edi+0x1c0]
	movss xmm3, dword [eax+0x4]
	movss xmm4, dword [eax+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x54]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x4c]
	addss xmm0, xmm1
	movss [edi+0x1c0], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x48]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x44]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x40]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm2, [ebp-0x3c]
	mulss xmm3, [ebp-0x38]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x34]
	addss xmm2, xmm4
	movss [eax+0x8], xmm2
	jmp _Z18G_TryPushingEntityP9gentity_sS0_PfS1__230
	nop


;G_TestEntityPosition(gentity_s*, float*)
_Z20G_TestEntityPositionP9gentity_sPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [ecx+0x190]
	test edx, edx
	jnz _Z20G_TestEntityPositionP9gentity_sPf_10
	mov dx, 0x811
_Z20G_TestEntityPositionP9gentity_sPf_40:
	cmp dword [ecx+0x4], 0x4
	jz _Z20G_TestEntityPositionP9gentity_sPf_20
	mov [esp+0x18], edx
	mov eax, [ecx]
_Z20G_TestEntityPositionP9gentity_sPf_60:
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	lea eax, [ecx+0x114]
	mov [esp+0xc], eax
	lea eax, [ecx+0x108]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x34]
	mov [esp], ebx
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	mov [esp], ebx
	call _Z20Trace_GetEntityHitIdPK7trace_t
	cmp word [ebp-0xc], 0x0
	jz _Z20G_TestEntityPositionP9gentity_sPf_30
	movzx eax, ax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax]
	add eax, g_entities
	add esp, 0x54
	pop ebx
	pop ebp
	ret
_Z20G_TestEntityPositionP9gentity_sPf_10:
	test byte [ecx+0x123], 0x4
	jz _Z20G_TestEntityPositionP9gentity_sPf_40
_Z20G_TestEntityPositionP9gentity_sPf_30:
	xor eax, eax
	add esp, 0x54
	pop ebx
	pop ebp
	ret
_Z20G_TestEntityPositionP9gentity_sPf_20:
	cmp word [ecx+0x154], 0x0
	jnz _Z20G_TestEntityPositionP9gentity_sPf_50
	mov eax, 0x3ff
	mov [esp+0x18], edx
	jmp _Z20G_TestEntityPositionP9gentity_sPf_60
_Z20G_TestEntityPositionP9gentity_sPf_50:
	movzx eax, word [ecx+0x154]
	sub eax, 0x1
	mov [esp+0x18], edx
	jmp _Z20G_TestEntityPositionP9gentity_sPf_60
	nop
	add [eax], al


;Initialized global or static variables of g_mover:
SECTION .data
hintStrings: dd _cstring_null, _cstring_hint_noicon, _cstring_hint_activate, _cstring_hint_health, _cstring_hint_friendly, 0x0, 0x0, 0x0


;Initialized constant data of g_mover:
SECTION .rdata


;Zero initialized global or static variables of g_mover:
SECTION .bss
pushed: resb 0xb000
pushed_p: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_killing_trigger_:		db "Killing trigger_use_shared at (%f %f %f) because the brush model is invalid.",0ah,0
_cstring_null:		db 0
_cstring_cursorhint:		db "cursorhint",0
_cstring_hintstring:		db "hintstring",0
_cstring_hint_inherit:		db "HINT_INHERIT",0
_cstring_too_many_differe:		db 015h,"Too many different hintstring key values on trigger_use entities. Max allowed is %i different strings",0
_cstring_hint_noicon:		db "HINT_NOICON",0
_cstring_hint_activate:		db "HINT_ACTIVATE",0
_cstring_hint_health:		db "HINT_HEALTH",0
_cstring_hint_friendly:		db "HINT_FRIENDLY",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_double_4_00000000:		dq 0x4010000000000000	; 4
_double_0_00000000:		dq 0x0	; 0
_float_4_00000000:		dd 0x40800000	; 4

