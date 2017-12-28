;Imports of g_mover:
	extern SV_SetBrushModel
	extern Com_PrintError
	extern G_FreeEntity
	extern SV_LinkEntity
	extern G_LevelSpawnString
	extern strcmp
	extern SV_GetConfigstring
	extern SV_SetConfigstring
	extern Q_stricmp
	extern Com_Error
	extern G_GeneralLink
	extern G_RunThink
	extern level
	extern BG_EvaluateTrajectory
	extern RadiusFromBounds
	extern SV_UnlinkEntity
	extern CM_AreaEntities
	extern g_entities
	extern G_Damage
	extern entityHandlers
	extern G_GetModelBounds
	extern AngleVectors
	extern G_TraceCapsule
	extern Trace_GetEntityHitId

;Exports of g_mover:
	global pushed
	global pushed_p
	global trigger_use_shared
	global G_RunMover
	global G_MoverTeam
	global trigger_use
	global use_trigger_use
	global trigger_use_touch
	global G_TryPushingEntity
	global G_TestEntityPosition
	global hintStrings


SECTION .text


;trigger_use_shared(gentity_s*)
trigger_use_shared:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, eax
	mov [esp], eax
	call SV_SetBrushModel
	test al, al
	jnz trigger_use_shared_10
	cvtss2sd xmm0, [esi+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [esi+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [esi+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call Com_PrintError
	mov [esp], esi
	call G_FreeEntity
trigger_use_shared_40:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
trigger_use_shared_10:
	mov dword [esi+0x120], 0x200000
	mov [esp], esi
	call SV_LinkEntity
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
	jz trigger_use_shared_20
trigger_use_shared_90:
	mov byte [esi+0x16e], 0x13
	mov dword [esi+0xd8], 0x1
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_cursorhint
	call G_LevelSpawnString
	test eax, eax
	jnz trigger_use_shared_30
trigger_use_shared_110:
	mov dword [esi+0xd4], 0xff
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_hintstring
	call G_LevelSpawnString
	test eax, eax
	jz trigger_use_shared_40
	xor edi, edi
	jmp trigger_use_shared_50
trigger_use_shared_80:
	lea eax, [ebp-0x41c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz trigger_use_shared_60
	add edi, 0x1
	cmp edi, 0x20
	jz trigger_use_shared_70
trigger_use_shared_50:
	lea ebx, [edi+0x115]
	mov dword [esp+0x8], 0x400
	lea edx, [ebp-0x41c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call SV_GetConfigstring
	cmp byte [ebp-0x41c], 0x0
	jnz trigger_use_shared_80
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SV_SetConfigstring
	mov edx, edi
	movzx eax, dl
	mov [esi+0xd4], eax
	jmp trigger_use_shared_40
trigger_use_shared_20:
	or edx, 0x21
	mov [esi+0x8], edx
	jmp trigger_use_shared_90
trigger_use_shared_30:
	mov dword [esp+0x4], _cstring_hint_inherit
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz trigger_use_shared_100
	mov dword [esi+0xd8], 0xffffffff
	jmp trigger_use_shared_110
trigger_use_shared_60:
	mov edx, edi
	movzx eax, dl
	mov [esi+0xd4], eax
	jmp trigger_use_shared_40
trigger_use_shared_70:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_too_many_differe
	mov dword [esp], 0x2
	call Com_Error
	jmp trigger_use_shared_40
trigger_use_shared_100:
	mov edi, 0x1
	mov ebx, hintStrings
trigger_use_shared_130:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz trigger_use_shared_120
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x5
	jnz trigger_use_shared_130
	jmp trigger_use_shared_110
trigger_use_shared_120:
	mov [esi+0xd8], edi
	jmp trigger_use_shared_110


;G_RunMover(gentity_s*)
G_RunMover:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x218]
	test eax, eax
	jz G_RunMover_10
	mov [esp], ebx
	call G_GeneralLink
G_RunMover_30:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp G_RunThink
G_RunMover_10:
	mov eax, [ebx+0xc]
	test eax, eax
	jnz G_RunMover_20
	mov eax, [ebx+0x30]
	test eax, eax
	jz G_RunMover_30
G_RunMover_20:
	mov [esp], ebx
	call G_MoverTeam
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp G_RunThink


;G_MoverTeam(gentity_s*)
G_MoverTeam:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x212c
	mov eax, [ebp+0x8]
	cmp dword [eax+0xc], 0x8
	jz G_MoverTeam_10
	mov edx, eax
	add eax, 0xc
	mov [ebp-0x20e8], eax
	mov eax, [edx+0xc]
	sub eax, 0x9
	cmp eax, 0x2
	ja G_MoverTeam_20
G_MoverTeam_10:
	add esp, 0x212c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_MoverTeam_20:
	mov dword [pushed_p], pushed
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov ebx, level
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x20e8]
	mov [esp], ecx
	call BG_EvaluateTrajectory
	mov eax, [ebp+0x8]
	add eax, 0x30
	mov [ebp-0x20e4], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov edx, [ebp-0x20e4]
	mov [esp], edx
	call BG_EvaluateTrajectory
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
	jz G_MoverTeam_30
G_MoverTeam_350:
	lea edi, [ebp-0x54]
	lea esi, [ebp-0x60]
G_MoverTeam_390:
	pxor xmm3, xmm3
	mov ecx, [ebp+0x8]
	ucomiss xmm3, [ecx+0x148]
	jnz G_MoverTeam_40
	jp G_MoverTeam_40
	ucomiss xmm3, [ecx+0x14c]
	jnz G_MoverTeam_40
	jp G_MoverTeam_40
	ucomiss xmm3, [ecx+0x150]
	jnz G_MoverTeam_40
	jp G_MoverTeam_40
	ucomiss xmm3, [ebp-0x30]
	jnz G_MoverTeam_40
	jp G_MoverTeam_40
	ucomiss xmm3, [ebp-0x2c]
	jnz G_MoverTeam_40
	jp G_MoverTeam_40
	ucomiss xmm3, [ebp-0x28]
	jp G_MoverTeam_40
	jnz G_MoverTeam_40
	mov edx, [ebp+0x8]
	mov ecx, 0x1
	movss xmm2, dword [_float_1_00000000]
G_MoverTeam_50:
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
	jnz G_MoverTeam_50
	jmp G_MoverTeam_60
G_MoverTeam_40:
	mov [esp+0x4], esi
	mov [esp], edi
	call RadiusFromBounds
	fstp dword [ebp-0x20ec]
	movss xmm1, dword [ebp-0x20ec]
	mov edx, [ebp+0x8]
	mov ecx, 0x1
G_MoverTeam_70:
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
	jnz G_MoverTeam_70
	pxor xmm3, xmm3
G_MoverTeam_60:
	mov ebx, 0x1
	lea edi, [ebp-0x6c]
	lea esi, [ebp-0x78]
G_MoverTeam_90:
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
	jbe G_MoverTeam_80
	movss [edx-0x4], xmm1
G_MoverTeam_270:
	add ebx, 0x1
	cmp ebx, 0x4
	jnz G_MoverTeam_90
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_UnlinkEntity
	mov dword [esp+0x10], 0x6000180
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x10a8]
	mov [esp+0x8], ebx
	lea edx, [ebp-0xa8]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x9c]
	mov [esp], ecx
	call CM_AreaEntities
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
	call SV_LinkEntity
	mov edi, [ebp-0x20b0]
	test edi, edi
	jle G_MoverTeam_100
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
G_MoverTeam_150:
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
	jbe G_MoverTeam_110
	sub ecx, 0x1
	jz G_MoverTeam_110
	cmp byte [edx+0x16a], 0x0
	jz G_MoverTeam_120
G_MoverTeam_110:
	mov eax, [edx+0x7c]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx]
	jz G_MoverTeam_130
	movss xmm0, dword [edx+0x124]
	ucomiss xmm0, [ebp-0x20c8]
	jae G_MoverTeam_120
	movss xmm0, dword [edx+0x128]
	ucomiss xmm0, [ebp-0x20c4]
	jae G_MoverTeam_120
	movss xmm0, dword [edx+0x12c]
	ucomiss xmm0, [ebp-0x20c0]
	jae G_MoverTeam_120
	movss xmm0, dword [ebp-0x20bc]
	ucomiss xmm0, [edx+0x130]
	jae G_MoverTeam_120
	movss xmm0, dword [ebp-0x20b8]
	ucomiss xmm0, [edx+0x134]
	jb G_MoverTeam_140
G_MoverTeam_120:
	add edi, 0x1
	add esi, 0x4
	cmp [ebp-0x20b0], edi
	jnz G_MoverTeam_150
	mov esi, [ebp-0x20ac]
	test esi, esi
	jle G_MoverTeam_100
	xor ebx, ebx
G_MoverTeam_160:
	mov eax, [ebp+ebx*4-0x20a8]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	mov [esp], edx
	call SV_UnlinkEntity
	add ebx, 0x1
	cmp ebx, [ebp-0x20ac]
	jnz G_MoverTeam_160
	xor esi, esi
	jmp G_MoverTeam_170
G_MoverTeam_230:
	mov eax, [edi+0x4]
	sub eax, 0x3
	cmp eax, 0x1
	jbe G_MoverTeam_180
	mov edx, [ebp+0x8]
	cmp dword [edx+0xc], 0x4
	jz G_MoverTeam_190
	cmp dword [edx+0x30], 0x4
	jnz G_MoverTeam_200
	mov ecx, [ebp+0x8]
G_MoverTeam_430:
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
	call G_Damage
G_MoverTeam_240:
	add esi, 0x1
	cmp esi, [ebp-0x20ac]
	jz G_MoverTeam_210
G_MoverTeam_170:
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
	jz G_MoverTeam_220
G_MoverTeam_340:
	lea edx, [ebp-0x30]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x90]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_TryPushingEntity
	test eax, eax
	jz G_MoverTeam_230
G_MoverTeam_180:
	mov [esp], edi
	call SV_LinkEntity
	jmp G_MoverTeam_240
G_MoverTeam_100:
	mov esi, 0x1
	xor edi, edi
G_MoverTeam_420:
	mov eax, esi
	test al, al
	jnz G_MoverTeam_250
	mov ebx, [pushed_p]
	sub ebx, 0x2c
	cmp ebx, pushed
	jae G_MoverTeam_260
G_MoverTeam_280:
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
	call BG_EvaluateTrajectory
	mov edx, [ebp-0x20dc]
	mov [esp+0x8], edx
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x20e4]
	mov [esp], ecx
	call BG_EvaluateTrajectory
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_LinkEntity
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x8]
	test eax, eax
	jz G_MoverTeam_10
	mov [esp+0x4], edi
	mov [esp], edx
	call eax
	add esp, 0x212c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_MoverTeam_80:
	movss [ecx-0x4], xmm2
	jmp G_MoverTeam_270
G_MoverTeam_310:
	lea ecx, [esi+0x1c0]
	lea edx, [ebx+0x1c]
	mov eax, [ebx+0x1c]
	mov [esi+0x1c0], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
G_MoverTeam_300:
	mov [esp], esi
	call SV_LinkEntity
	sub ebx, 0x2c
	cmp ebx, pushed
	jb G_MoverTeam_280
G_MoverTeam_260:
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
	jz G_MoverTeam_290
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
G_MoverTeam_290:
	cmp dword [esi+0x4], 0x4
	jnz G_MoverTeam_300
	jmp G_MoverTeam_310
G_MoverTeam_250:
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0xc]
	test ebx, ebx
	jz G_MoverTeam_320
	mov eax, [ecx+0x10]
	add eax, [ecx+0x14]
	mov edx, level
	cmp [edx+0x1ec], eax
	jge G_MoverTeam_330
G_MoverTeam_440:
	mov eax, [ebp+0x8]
G_MoverTeam_400:
	mov edx, [eax+0x30]
	test edx, edx
	jz G_MoverTeam_10
	mov edx, eax
	mov eax, [eax+0x34]
	add eax, [edx+0x38]
	mov edx, level
	cmp [edx+0x1ec], eax
	jl G_MoverTeam_10
	mov ecx, [ebp+0x8]
	movzx eax, byte [ecx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x4]
	test eax, eax
	jz G_MoverTeam_10
	mov [esp], ecx
	call eax
	jmp G_MoverTeam_10
G_MoverTeam_140:
	movss xmm0, dword [ebp-0x20b4]
	ucomiss xmm0, [edx+0x138]
	jae G_MoverTeam_120
	lea eax, [edx+0x13c]
	mov [esp+0x4], eax
	mov [esp], edx
	call G_TestEntityPosition
	cmp [ebp+0x8], eax
	jnz G_MoverTeam_120
	mov ebx, [esi]
G_MoverTeam_130:
	mov eax, [ebp-0x20ac]
	mov [ebp+eax*4-0x20a8], ebx
	add eax, 0x1
	mov [ebp-0x20ac], eax
	jmp G_MoverTeam_120
G_MoverTeam_220:
	lea ecx, [ebx+0x1c]
	lea edx, [edi+0x1c0]
	mov eax, [edi+0x1c0]
	mov [ebx+0x1c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	jmp G_MoverTeam_340
G_MoverTeam_30:
	movzx eax, word [ecx+0x168]
	test ax, ax
	jz G_MoverTeam_350
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	lea ebx, [ebp-0x84]
	mov [esp+0x4], ebx
	movzx eax, ax
	mov [esp], eax
	call G_GetModelBounds
	test al, al
	jz G_MoverTeam_350
	mov ecx, 0x1
	lea edi, [ebp-0x54]
	lea esi, [ebp-0x60]
G_MoverTeam_380:
	lea eax, [ecx*4]
	movss xmm1, dword [ebx+eax-0x4]
	lea edx, [edi+eax]
	movss xmm0, dword [edx-0x4]
	ucomiss xmm0, xmm1
	jbe G_MoverTeam_360
	movss [edx-0x4], xmm1
G_MoverTeam_360:
	movss xmm0, dword [ebp+eax-0x28]
	lea eax, [esi+eax]
	ucomiss xmm0, [eax-0x4]
	jbe G_MoverTeam_370
	movss [eax-0x4], xmm0
G_MoverTeam_370:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz G_MoverTeam_380
	jmp G_MoverTeam_390
G_MoverTeam_320:
	mov eax, ecx
	jmp G_MoverTeam_400
G_MoverTeam_210:
	mov esi, 0x1
	xor edi, edi
G_MoverTeam_450:
	xor ebx, ebx
G_MoverTeam_410:
	mov eax, [ebp+ebx*4-0x20a8]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	mov [esp], edx
	call SV_LinkEntity
	add ebx, 0x1
	cmp ebx, [ebp-0x20ac]
	jnz G_MoverTeam_410
	jmp G_MoverTeam_420
G_MoverTeam_190:
	mov ecx, edx
	jmp G_MoverTeam_430
G_MoverTeam_330:
	movzx eax, byte [ecx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x4]
	test eax, eax
	jz G_MoverTeam_440
	mov [esp], ecx
	call eax
	mov eax, [ebp+0x8]
	jmp G_MoverTeam_400
G_MoverTeam_200:
	xor esi, esi
	jmp G_MoverTeam_450


;trigger_use(gentity_s*)
trigger_use:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	jmp trigger_use_shared


;use_trigger_use(gentity_s*, gentity_s*, gentity_s*)
use_trigger_use:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;trigger_use_touch(gentity_s*)
trigger_use_touch:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	jmp trigger_use_shared


;G_TryPushingEntity(gentity_s*, gentity_s*, float*, float*)
G_TryPushingEntity:
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
	call AngleVectors
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
G_TryPushingEntity_30:
	lea ecx, [ebp+esi*4-0x78]
	mov edx, eax
	lea ebx, [eax+0xc]
G_TryPushingEntity_10:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0xc
	add edx, 0x4
	cmp ebx, edx
	jnz G_TryPushingEntity_10
	add esi, 0x1
	cmp esi, 0x3
	jz G_TryPushingEntity_20
	mov eax, ebx
	jmp G_TryPushingEntity_30
G_TryPushingEntity_20:
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
	call G_TestEntityPosition
	test eax, eax
	jz G_TryPushingEntity_40
	cvtss2sd xmm3, [edi+0x114]
	movsd xmm6, qword [_double_0_50000000]
	movapd xmm0, xmm3
	mulsd xmm0, xmm6
	ucomisd xmm0, [_double_4_00000000]
	jbe G_TryPushingEntity_50
	movss xmm1, dword [ebp-0x30]
	movss [ebp-0x7c], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss [ebp-0x80], xmm1
	movss xmm1, dword [ebp-0x28]
	movss [ebp-0x84], xmm1
	ucomisd xmm0, [_double_0_00000000]
	jbe G_TryPushingEntity_50
	pxor xmm0, xmm0
	movss [ebp-0x90], xmm0
	movaps xmm2, xmm0
	lea ebx, [ebp-0x24]
	lea esi, [edi+0x18]
	lea eax, [edi+0x1c0]
	mov [ebp-0xa4], eax
	movaps xmm7, xmm0
G_TryPushingEntity_180:
	xorps xmm7, [_data16_80000000]
	movss xmm0, dword [ebp-0x90]
	ucomiss xmm0, xmm7
	jb G_TryPushingEntity_60
	addss xmm0, xmm0
	movss [ebp-0x94], xmm0
G_TryPushingEntity_170:
	movapd xmm0, xmm3
	mulsd xmm0, xmm6
	ucomisd xmm0, [_double_4_00000000]
	jbe G_TryPushingEntity_70
	movss xmm4, dword [_float_4_00000000]
G_TryPushingEntity_150:
	movaps xmm5, xmm4
	xorps xmm5, [_data16_80000000]
	ucomiss xmm4, xmm5
	jb G_TryPushingEntity_80
	movaps xmm1, xmm4
	addss xmm1, xmm4
	movss [ebp-0x98], xmm1
G_TryPushingEntity_140:
	movapd xmm0, xmm3
	mulsd xmm0, xmm6
	ucomisd xmm0, [_double_4_00000000]
	jbe G_TryPushingEntity_90
	movss xmm2, dword [_float_4_00000000]
	jmp G_TryPushingEntity_100
G_TryPushingEntity_110:
	addss xmm2, [_float_4_00000000]
	movapd xmm1, xmm3
	mulsd xmm1, xmm6
	cvtss2sd xmm0, xmm2
	ucomisd xmm1, xmm0
	jbe G_TryPushingEntity_90
G_TryPushingEntity_100:
	movaps xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	ucomiss xmm2, xmm1
	jb G_TryPushingEntity_110
	movss xmm0, dword [ebp-0x7c]
	addss xmm0, xmm5
	movss [ebp-0x8c], xmm0
	movss xmm0, dword [ebp-0x84]
	addss xmm0, xmm7
	movss [ebp-0x88], xmm0
	movaps xmm0, xmm2
	addss xmm0, xmm2
	movss [ebp-0x9c], xmm0
G_TryPushingEntity_130:
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
	call G_TestEntityPosition
	test eax, eax
	movss xmm1, dword [ebp-0xb8]
	movss xmm2, dword [ebp-0xc8]
	movss xmm4, dword [ebp-0xd8]
	movss xmm5, dword [ebp-0xe8]
	movss xmm7, dword [ebp-0xf8]
	jz G_TryPushingEntity_120
	addss xmm1, [ebp-0x9c]
	ucomiss xmm2, xmm1
	jae G_TryPushingEntity_130
	cvtss2sd xmm3, [edi+0x114]
	movsd xmm6, qword [_double_0_50000000]
	addss xmm2, [_float_4_00000000]
	movapd xmm1, xmm3
	mulsd xmm1, xmm6
	cvtss2sd xmm0, xmm2
	ucomisd xmm1, xmm0
	ja G_TryPushingEntity_100
G_TryPushingEntity_90:
	addss xmm5, [ebp-0x98]
	ucomiss xmm4, xmm5
	jae G_TryPushingEntity_140
G_TryPushingEntity_80:
	addss xmm4, [_float_4_00000000]
	movapd xmm1, xmm3
	mulsd xmm1, xmm6
	cvtss2sd xmm0, xmm4
	ucomisd xmm1, xmm0
	ja G_TryPushingEntity_150
	pxor xmm2, xmm2
G_TryPushingEntity_70:
	ucomiss xmm7, xmm2
	jp G_TryPushingEntity_160
	jz G_TryPushingEntity_60
G_TryPushingEntity_160:
	addss xmm7, [ebp-0x94]
	movss xmm0, dword [ebp-0x90]
	ucomiss xmm0, xmm7
	jae G_TryPushingEntity_170
G_TryPushingEntity_60:
	movss xmm1, dword [_float_4_00000000]
	addss xmm1, [ebp-0x90]
	movss [ebp-0x90], xmm1
	movapd xmm1, xmm3
	mulsd xmm1, xmm6
	cvtss2sd xmm0, [ebp-0x90]
	ucomisd xmm1, xmm0
	jbe G_TryPushingEntity_50
	movss xmm7, dword [ebp-0x90]
	jmp G_TryPushingEntity_180
G_TryPushingEntity_50:
	mov eax, [ebp-0xa0]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_TestEntityPosition
	test eax, eax
	jz G_TryPushingEntity_190
	xor eax, eax
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_TryPushingEntity_120:
	mov eax, [edi+0x7c]
	mov edx, [ebp+0xc]
	cmp eax, [edx]
	jz G_TryPushingEntity_200
	mov dword [edi+0x7c], 0x3ff
G_TryPushingEntity_200:
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
	jz G_TryPushingEntity_210
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
G_TryPushingEntity_210:
	cmp dword [edi+0x4], 0x4
	jz G_TryPushingEntity_220
G_TryPushingEntity_230:
	add dword [pushed_p], 0x2c
	mov eax, 0x1
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_TryPushingEntity_190:
	mov dword [edi+0x7c], 0x3ff
	mov eax, 0x1
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_TryPushingEntity_220:
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
	jmp G_TryPushingEntity_230
G_TryPushingEntity_40:
	mov eax, [edi+0x7c]
	mov ebx, [ebp+0xc]
	cmp eax, [ebx]
	jz G_TryPushingEntity_240
	mov dword [edi+0x7c], 0x3ff
G_TryPushingEntity_240:
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
	jz G_TryPushingEntity_250
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
G_TryPushingEntity_250:
	cmp dword [edi+0x4], 0x4
	jnz G_TryPushingEntity_230
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
	jmp G_TryPushingEntity_230
	nop


;G_TestEntityPosition(gentity_s*, float*)
G_TestEntityPosition:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [ecx+0x190]
	test edx, edx
	jnz G_TestEntityPosition_10
	mov dx, 0x811
G_TestEntityPosition_40:
	cmp dword [ecx+0x4], 0x4
	jz G_TestEntityPosition_20
	mov [esp+0x18], edx
	mov eax, [ecx]
G_TestEntityPosition_60:
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	lea eax, [ecx+0x114]
	mov [esp+0xc], eax
	lea eax, [ecx+0x108]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x34]
	mov [esp], ebx
	call G_TraceCapsule
	mov [esp], ebx
	call Trace_GetEntityHitId
	cmp word [ebp-0xc], 0x0
	jz G_TestEntityPosition_30
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
G_TestEntityPosition_10:
	test byte [ecx+0x123], 0x4
	jz G_TestEntityPosition_40
G_TestEntityPosition_30:
	xor eax, eax
	add esp, 0x54
	pop ebx
	pop ebp
	ret
G_TestEntityPosition_20:
	cmp word [ecx+0x154], 0x0
	jnz G_TestEntityPosition_50
	mov eax, 0x3ff
	mov [esp+0x18], edx
	jmp G_TestEntityPosition_60
G_TestEntityPosition_50:
	movzx eax, word [ecx+0x154]
	sub eax, 0x1
	mov [esp+0x18], edx
	jmp G_TestEntityPosition_60
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
_cstring_too_many_differe:		db 15h,"Too many different hintstring key values on trigger_use entities. Max allowed is %i different strings",0
_cstring_hint_noicon:		db "HINT_NOICON",0
_cstring_hint_activate:		db "HINT_ACTIVATE",0
_cstring_hint_health:		db "HINT_HEALTH",0
_cstring_hint_friendly:		db "HINT_FRIENDLY",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_double_4_00000000:		dq 0x4010000000000000	; 4
_double_0_00000000:		dq 0x0	; 0
_float_4_00000000:		dd 0x40800000	; 4

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
