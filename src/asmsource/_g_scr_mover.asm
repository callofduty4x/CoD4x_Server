;Imports of g_scr_mover:
	extern Vec3NormalizeTo
	extern level
	extern BG_EvaluateTrajectory
	extern G_DObjUpdate
	extern SV_LinkEntity
	extern g_entities
	extern scr_const
	extern va
	extern Scr_ObjectError
	extern Com_DPrintf
	extern Scr_GetFloat
	extern floorf
	extern AngleNormalize360
	extern Scr_Notify
	extern Scr_GetVector
	extern strcmp
	extern SV_SetBrushModel
	extern Com_PrintError
	extern G_FreeEntity
	extern Scr_GetNumParam
	extern Scr_Error
	extern AnglesToAxis
	extern Scr_GetInt
	extern Scr_ParamError

;Exports of g_scr_mover:
	global ScriptMover_SetupMove
	global ScriptMover_UpdateMove
	global SP_script_model
	global SP_script_origin
	global ScriptEntCmd_MoveX
	global ScriptEntCmd_MoveY
	global ScriptEntCmd_MoveZ
	global ScriptEntCmd_Solid
	global ScriptEnt_MoveAxis
	global Reached_ScriptMover
	global ScriptEntCmd_MoveTo
	global ScriptEnt_GetMethod
	global SP_script_brushmodel
	global ScriptEntCmd_Vibrate
	global ScriptEnt_RotateAxis
	global ScriptEntCmd_NotSolid
	global ScriptEntCmd_RotateTo
	global ScriptEntCmd_DevAddYaw
	global ScriptEntCmd_RotateYaw
	global ScriptEntCmd_DevAddRoll
	global ScriptEntCmd_RotateRoll
	global ScriptEntCmd_DevAddPitch
	global ScriptEntCmd_GravityMove
	global ScriptEntCmd_RotatePitch
	global ScriptEntCmd_SetCanDamage
	global ScriptEntCmd_PhysicsLaunch
	global ScriptEntCmdGetCommandTimes
	global ScriptEntCmd_RotateVelocity


SECTION .text


;ScriptMover_SetupMove(trajectory_t*, float const*, float, float, float, float*, float*, float*, float*, float*, float*, float*)
ScriptMover_SetupMove:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, eax
	mov ebx, edx
	movaps xmm3, xmm0
	movss [ebp-0x4c], xmm1
	movaps xmm4, xmm2
	mov edi, ecx
	movss xmm0, dword [edx]
	subss xmm0, [ecx]
	movss [ebp-0x24], xmm0
	lea eax, [edx+0x4]
	mov [ebp-0x48], eax
	lea edx, [ecx+0x4]
	mov [ebp-0x44], edx
	movss xmm0, dword [ebx+0x4]
	subss xmm0, [ecx+0x4]
	movss [ebp-0x20], xmm0
	lea ecx, [ebx+0x8]
	mov [ebp-0x40], ecx
	lea eax, [edi+0x8]
	mov [ebp-0x3c], eax
	movss xmm0, dword [ebx+0x8]
	subss xmm0, [edi+0x8]
	movss [ebp-0x1c], xmm0
	mov edx, [esi]
	test edx, edx
	jnz ScriptMover_SetupMove_10
	movaps xmm0, xmm1
ScriptMover_SetupMove_80:
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jnz ScriptMover_SetupMove_20
	jp ScriptMover_SetupMove_20
	ucomiss xmm4, xmm2
	jz ScriptMover_SetupMove_30
ScriptMover_SetupMove_20:
	movaps xmm0, xmm3
	subss xmm0, [ebp-0x4c]
	subss xmm0, xmm4
	mov ecx, [ebp+0xc]
	movss [ecx], xmm0
	mov eax, [ebp+0x10]
	movss [eax], xmm4
	movss xmm0, dword [ebp-0x24]
	movss xmm1, dword [ebp-0x20]
	movss xmm2, dword [ebp-0x1c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	addss xmm0, xmm0
	addss xmm3, xmm3
	subss xmm3, [ebp-0x4c]
	subss xmm3, xmm4
	divss xmm0, xmm3
	mov edx, [ebp+0x8]
	movss [edx], xmm0
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call Vec3NormalizeTo
	fstp st0
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx]
	movaps xmm3, xmm0
	mulss xmm3, [ebp-0x30]
	movss [ebp-0x30], xmm3
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x2c]
	movss [ebp-0x2c], xmm2
	mulss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	pxor xmm1, xmm1
	movss xmm4, dword [ebp-0x4c]
	ucomiss xmm4, xmm1
	jp ScriptMover_SetupMove_40
	jnz ScriptMover_SetupMove_40
	mov eax, [edi]
	mov ecx, [ebp+0x14]
	mov [ecx], eax
	mov edx, [ebp-0x44]
	mov eax, [edx]
	mov [ecx+0x4], eax
	mov ecx, [ebp-0x3c]
	mov eax, [ecx]
	mov edx, [ebp+0x14]
	mov [edx+0x8], eax
	mov ecx, [ebp+0xc]
	ucomiss xmm1, [ecx]
	jp ScriptMover_SetupMove_50
	jz ScriptMover_SetupMove_60
ScriptMover_SetupMove_50:
	mov ecx, level
	mov eax, [ecx+0x1ec]
	mov [esi+0x4], eax
	movss xmm2, dword [_float_1000_00000000]
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	mulss xmm0, xmm2
	cvttss2si eax, xmm0
	mov [esi+0x8], eax
	lea edx, [esi+0xc]
	mov eax, [edi]
	mov [esi+0xc], eax
	mov eax, [ebp-0x44]
	movss xmm0, dword [eax]
	movss [edx+0x4], xmm0
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax]
	movss [edx+0x8], xmm0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x30]
	movss [ebp-0x24], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x2c]
	movss [ebp-0x20], xmm1
	mulss xmm0, [ebp-0x28]
	movss [ebp-0x1c], xmm0
	cvtsi2ss xmm0, dword [esi+0x8]
	divss xmm2, xmm0
	lea eax, [esi+0x18]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x24]
	movss [esi+0x18], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm2, [ebp-0x1c]
	movss [eax+0x8], xmm2
	mov dword [esi], 0x3
ScriptMover_SetupMove_70:
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x30]
	mov edx, [ebp+0x14]
	addss xmm0, [edx]
	mov eax, [ebp+0x18]
	movss [eax], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [edx+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [ebp-0x28]
	addss xmm1, [edx+0x8]
	movss [eax+0x8], xmm1
	mov eax, [ebx]
	mov edx, [ebp+0x1c]
	mov [edx], eax
	mov edx, [ebp-0x48]
	mov eax, [edx]
	mov edx, [ebp+0x1c]
	mov [edx+0x4], eax
	mov edx, [ebp-0x40]
	mov eax, [edx]
	mov edx, [ebp+0x1c]
	mov [edx+0x8], eax
	mov [esp+0x8], edi
	mov eax, [ecx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_EvaluateTrajectory
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptMover_SetupMove_60:
	mov ecx, level
	mov eax, [ecx+0x1ec]
	mov [esi+0x4], eax
	movss xmm0, dword [_float_1000_00000000]
	mov edx, [ebp+0x10]
	mulss xmm0, [edx]
	cvttss2si eax, xmm0
	mov [esi+0x8], eax
	lea edx, [esi+0xc]
	mov eax, [edi]
	mov [esi+0xc], eax
	mov eax, [ebp-0x44]
	movss xmm0, dword [eax]
	movss [edx+0x4], xmm0
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax]
	movss [edx+0x8], xmm0
	lea edx, [esi+0x18]
	mov eax, [ebp-0x30]
	mov [esi+0x18], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov dword [esi], 0x7
	jmp ScriptMover_SetupMove_70
ScriptMover_SetupMove_30:
	jp ScriptMover_SetupMove_20
	mov ecx, level
	mov eax, [ecx+0x1ec]
	mov [esi+0x4], eax
	movss xmm1, dword [_float_1000_00000000]
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [esi+0x8], eax
	mov eax, [ebp+0xc]
	movss [eax], xmm3
	mov edx, [ebp+0x10]
	movss [edx], xmm2
	mov eax, [ebx]
	mov edx, [ebp+0x1c]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	lea edx, [esi+0xc]
	mov eax, [edi]
	mov [esi+0xc], eax
	mov eax, [edi+0x4]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	cvtsi2ss xmm0, dword [esi+0x8]
	divss xmm1, xmm0
	lea eax, [esi+0x18]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	movss [esi+0x18], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [eax+0x4], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [eax+0x8], xmm1
	mov dword [esi], 0x3
	mov [esp+0x8], edi
	mov eax, [ecx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_EvaluateTrajectory
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptMover_SetupMove_10:
	mov [esp+0x8], edi
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	mov [esp], esi
	movss [ebp-0x68], xmm3
	movss [ebp-0x78], xmm2
	call BG_EvaluateTrajectory
	movss xmm4, dword [ebp-0x78]
	movss xmm3, dword [ebp-0x68]
	movss xmm0, dword [ebp-0x4c]
	jmp ScriptMover_SetupMove_80
ScriptMover_SetupMove_40:
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [esi+0x4], eax
	mulss xmm4, [_float_1000_00000000]
	cvttss2si eax, xmm4
	mov [esi+0x8], eax
	lea edx, [esi+0xc]
	mov eax, [edi]
	mov [esi+0xc], eax
	mov ecx, [ebp-0x44]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x3c]
	mov eax, [ecx]
	mov [edx+0x8], eax
	lea eax, [esi+0x18]
	movss [esi+0x18], xmm3
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm0
	mov dword [esi], 0x6
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov edx, level
	mov eax, [edx+0x1ec]
	add eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_EvaluateTrajectory
	mov ecx, level
	jmp ScriptMover_SetupMove_70
	nop


;ScriptMover_UpdateMove(trajectory_t*, float*, float, float, float, float const*, float const*, float const*)
ScriptMover_UpdateMove:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, eax
	movaps xmm5, xmm0
	mov esi, ecx
	mov edi, [ebp+0x8]
	movss xmm4, dword [_float_1000_00000000]
	mulss xmm1, xmm4
	cvttss2si ecx, xmm1
	mov eax, [eax]
	cmp eax, 0x6
	jz ScriptMover_UpdateMove_10
	cmp eax, 0x3
	jz ScriptMover_UpdateMove_20
ScriptMover_UpdateMove_50:
	cmp eax, 0x5
	jz ScriptMover_UpdateMove_30
	cmp eax, 0xa
	jz ScriptMover_UpdateMove_30
	lea edx, [ebx+0xc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [ebx+0xc], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
ScriptMover_UpdateMove_40:
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [ebx+0x4], eax
	mov dword [ebx], 0x0
	mov eax, 0x1
ScriptMover_UpdateMove_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptMover_UpdateMove_30:
	lea eax, [ebx+0xc]
	mov [esp+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	mov [esp], ebx
	call BG_EvaluateTrajectory
	jmp ScriptMover_UpdateMove_40
ScriptMover_UpdateMove_10:
	test ecx, ecx
	jle ScriptMover_UpdateMove_20
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [ebx+0x4], eax
	mov [ebx+0x8], ecx
	lea edx, [ebx+0xc]
	mov eax, [esi]
	mov [ebx+0xc], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	movss xmm2, dword [edi+0x4]
	subss xmm2, [esi+0x4]
	movss xmm3, dword [edi+0x8]
	subss xmm3, [esi+0x8]
	cvtsi2ss xmm0, ecx
	movaps xmm1, xmm4
	divss xmm1, xmm0
	lea eax, [ebx+0x18]
	movss xmm0, dword [edi]
	subss xmm0, [esi]
	mulss xmm0, xmm1
	movss [ebx+0x18], xmm0
	mulss xmm2, xmm1
	movss [eax+0x4], xmm2
	mulss xmm3, xmm1
	movss [eax+0x8], xmm3
	mov dword [ebx], 0x3
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptMover_UpdateMove_20:
	pxor xmm6, xmm6
	ucomiss xmm2, xmm6
	jbe ScriptMover_UpdateMove_50
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [ebx+0x4], eax
	mulss xmm2, xmm4
	cvttss2si eax, xmm2
	mov [ebx+0x8], eax
	lea edx, [ebx+0xc]
	mov eax, [edi]
	mov [ebx+0xc], eax
	mov eax, [edi+0x4]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov eax, [ebp+0xc]
	movss xmm2, dword [eax]
	subss xmm2, [edi]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [edi+0x4]
	movss xmm4, dword [eax+0x8]
	subss xmm4, [edi+0x8]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm6
	jb ScriptMover_UpdateMove_60
	movss xmm0, dword [_float_1_00000000]
ScriptMover_UpdateMove_80:
	mulss xmm2, xmm0
	mulss xmm3, xmm0
	mulss xmm4, xmm0
	lea eax, [ebx+0x18]
	mulss xmm2, xmm5
	movss [ebx+0x18], xmm2
	mulss xmm3, xmm5
	movss [eax+0x4], xmm3
	mulss xmm4, xmm5
	movss [eax+0x8], xmm4
	mov dword [ebx], 0x7
	xor eax, eax
	jmp ScriptMover_UpdateMove_70
ScriptMover_UpdateMove_60:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp ScriptMover_UpdateMove_80
	nop


;SP_script_model(gentity_s*)
SP_script_model:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call G_DObjUpdate
	mov byte [ebx+0x16e], 0x5
	mov byte [ebx+0xf6], 0x0
	mov dword [ebx+0x4], 0x6
	lea ecx, [ebx+0x18]
	lea edx, [ebx+0x13c]
	mov eax, [ebx+0x13c]
	mov [ebx+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ebx+0xc], 0x0
	lea ecx, [ebx+0x3c]
	lea edx, [ebx+0x148]
	mov eax, [ebx+0x148]
	mov [ebx+0x3c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ebx+0x30], 0x0
	or dword [ebx+0x180], 0x1000
	or byte [ebx+0xf6], 0x4
	mov dword [ebx+0x120], 0x2080
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SV_LinkEntity
	nop


;SP_script_origin(gentity_s*)
SP_script_origin:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov byte [ebx+0x16e], 0x5
	mov byte [ebx+0xf6], 0x0
	mov dword [ebx+0x4], 0x6
	lea ecx, [ebx+0x18]
	lea edx, [ebx+0x13c]
	mov eax, [ebx+0x13c]
	mov [ebx+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ebx+0xc], 0x0
	lea ecx, [ebx+0x3c]
	lea edx, [ebx+0x148]
	mov eax, [ebx+0x148]
	mov [ebx+0x3c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ebx+0x30], 0x0
	or dword [ebx+0x180], 0x1000
	mov dword [ebx+0x120], 0x0
	mov [esp], ebx
	call SV_LinkEntity
	or byte [ebx+0xf6], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ScriptEntCmd_MoveX(scr_entref_t)
ScriptEntCmd_MoveX:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScriptEnt_MoveAxis
	leave
	ret
	nop


;ScriptEntCmd_MoveY(scr_entref_t)
ScriptEntCmd_MoveY:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScriptEnt_MoveAxis
	leave
	ret
	nop


;ScriptEntCmd_MoveZ(scr_entref_t)
ScriptEntCmd_MoveZ:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScriptEnt_MoveAxis
	leave
	ret
	nop


;ScriptEntCmd_Solid(scr_entref_t)
ScriptEntCmd_Solid:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEntCmd_Solid_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	movzx eax, word [ebx+0x170]
	mov esi, scr_const
	cmp ax, [esi+0x6e]
	jz ScriptEntCmd_Solid_20
	cmp ax, [esi+0x70]
	jz ScriptEntCmd_Solid_20
	cmp ax, [esi+0x72]
	jz ScriptEntCmd_Solid_30
	cmp ax, [esi+0x52]
	jz ScriptEntCmd_Solid_40
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	movzx eax, word [ebx+0x170]
ScriptEntCmd_Solid_20:
	cmp ax, [esi+0x72]
	jz ScriptEntCmd_Solid_30
	cmp ax, [esi+0x70]
	jz ScriptEntCmd_Solid_50
ScriptEntCmd_Solid_40:
	mov dword [ebx+0x120], 0x1
	and dword [ebx+0x8], 0xfffffffe
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp SV_LinkEntity
ScriptEntCmd_Solid_30:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cannot_use_the_s
	mov dword [esp], 0x17
	call Com_DPrintf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
ScriptEntCmd_Solid_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	movzx eax, word [0x170]
	mov esi, scr_const
	jmp ScriptEntCmd_Solid_20
ScriptEntCmd_Solid_50:
	mov dword [ebx+0x120], 0x2080
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp SV_LinkEntity


;ScriptEnt_MoveAxis(scr_entref_t, int)
ScriptEnt_MoveAxis:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEnt_MoveAxis_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	movzx eax, word [esi+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x6e]
	jz ScriptEnt_MoveAxis_20
	cmp ax, [edx+0x70]
	jz ScriptEnt_MoveAxis_20
	cmp ax, [edx+0x72]
	jz ScriptEnt_MoveAxis_20
	cmp ax, [edx+0x52]
	jz ScriptEnt_MoveAxis_20
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
ScriptEnt_MoveAxis_20:
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0x3c]
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call ScriptEntCmdGetCommandTimes
	mov eax, [esi+0x13c]
	mov [ebp-0x20], eax
	mov eax, [esi+0x140]
	mov [ebp-0x1c], eax
	mov eax, [esi+0x144]
	mov [ebp-0x18], eax
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [ebp+ebx*4-0x20]
	movss [ebp+ebx*4-0x20], xmm0
	mov eax, [esi+0x13c]
	mov [ebp-0x2c], eax
	mov eax, [esi+0x140]
	mov [ebp-0x28], eax
	mov eax, [esi+0x144]
	mov [ebp-0x24], eax
	lea ecx, [ebp-0x2c]
	lea edx, [ebp-0x20]
	lea eax, [esi+0xc]
	lea ebx, [esi+0x1e4]
	mov [esp+0x14], ebx
	lea ebx, [esi+0x1d8]
	mov [esp+0x10], ebx
	lea ebx, [esi+0x1cc]
	mov [esp+0xc], ebx
	lea ebx, [esi+0x1b4]
	mov [esp+0x8], ebx
	lea ebx, [esi+0x1c4]
	mov [esp+0x4], ebx
	lea ebx, [esi+0x1bc]
	mov [esp], ebx
	movss xmm2, dword [ebp-0x14]
	movss xmm1, dword [ebp-0x10]
	movss xmm0, dword [ebp-0xc]
	call ScriptMover_SetupMove
	mov [esp], esi
	call SV_LinkEntity
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
ScriptEnt_MoveAxis_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp ScriptEnt_MoveAxis_20
	nop


;Reached_ScriptMover(gentity_s*)
Reached_ScriptMover:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz Reached_ScriptMover_10
	mov edx, eax
	mov eax, [eax+0x10]
	add eax, [edx+0x14]
	mov edx, level
	cmp eax, [edx+0x1ec]
	jle Reached_ScriptMover_20
Reached_ScriptMover_50:
	mov eax, [ebp+0x8]
Reached_ScriptMover_10:
	mov ecx, [eax+0x30]
	test ecx, ecx
	jz Reached_ScriptMover_30
	mov edx, eax
	mov eax, [eax+0x34]
	add eax, [edx+0x38]
	mov edx, level
	cmp eax, [edx+0x1ec]
	jle Reached_ScriptMover_40
Reached_ScriptMover_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Reached_ScriptMover_40:
	mov esi, [ebp+0x8]
	add esi, 0x148
	mov edi, [ebp+0x8]
	add edi, 0x30
	mov ecx, [ebp+0x8]
	add ecx, 0x1f0
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0x1b8]
	movss xmm1, dword [eax+0x1c8]
	movss xmm0, dword [eax+0x1c0]
	add eax, 0x208
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x1fc
	mov [esp], eax
	mov edx, esi
	mov eax, edi
	call ScriptMover_UpdateMove
	mov ebx, eax
	mov [esp+0x8], esi
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], edi
	call BG_EvaluateTrajectory
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_LinkEntity
	test ebx, ebx
	jz Reached_ScriptMover_30
	mov edx, [ebp+0x8]
	movss xmm1, dword [edx+0x148]
	mulss xmm1, [_float_0_00277778]
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x48], xmm1
	call floorf
	fstp dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x48]
	subss xmm1, [ebp-0x1c]
	mulss xmm1, [_float_360_00000000]
	mov eax, [ebp+0x8]
	movss [eax+0x148], xmm1
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14c]
	mov [esp], eax
	call AngleNormalize360
	mov eax, [ebp+0x8]
	fstp dword [eax+0x14c]
	movss xmm0, dword [_float_0_00277778]
	mulss xmm0, [eax+0x150]
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x20]
	mulss xmm0, [_float_360_00000000]
	mov edx, [ebp+0x8]
	movss [edx+0x150], xmm0
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x6c]
	mov [esp+0x4], eax
	mov [esp], edx
	call Scr_Notify
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Reached_ScriptMover_20:
	mov esi, [ebp+0x8]
	add esi, 0x13c
	mov edi, [ebp+0x8]
	add edi, 0xc
	mov ecx, [ebp+0x8]
	add ecx, 0x1cc
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0x1b4]
	movss xmm1, dword [eax+0x1c4]
	movss xmm0, dword [eax+0x1bc]
	add eax, 0x1e4
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x1d8
	mov [esp], eax
	mov edx, esi
	mov eax, edi
	call ScriptMover_UpdateMove
	mov ebx, eax
	mov [esp+0x8], esi
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], edi
	call BG_EvaluateTrajectory
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_LinkEntity
	test ebx, ebx
	jz Reached_ScriptMover_50
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x54]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_Notify
	mov eax, [ebp+0x8]
	jmp Reached_ScriptMover_10
	add [eax], al


;ScriptEntCmd_MoveTo(scr_entref_t)
ScriptEntCmd_MoveTo:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEntCmd_MoveTo_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	movzx eax, word [esi+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x6e]
	jz ScriptEntCmd_MoveTo_20
	cmp ax, [edx+0x70]
	jz ScriptEntCmd_MoveTo_20
	cmp ax, [edx+0x72]
	jz ScriptEntCmd_MoveTo_20
	cmp ax, [edx+0x52]
	jz ScriptEntCmd_MoveTo_20
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
ScriptEntCmd_MoveTo_20:
	lea ebx, [ebp-0x20]
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Scr_GetVector
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call ScriptEntCmdGetCommandTimes
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x28], eax
	mov eax, [edx+0x8]
	mov [ebp-0x24], eax
	lea ecx, [ebp-0x2c]
	lea eax, [esi+0xc]
	lea edx, [esi+0x1e4]
	mov [esp+0x14], edx
	lea edx, [esi+0x1d8]
	mov [esp+0x10], edx
	lea edx, [esi+0x1cc]
	mov [esp+0xc], edx
	lea edx, [esi+0x1b4]
	mov [esp+0x8], edx
	lea edx, [esi+0x1c4]
	mov [esp+0x4], edx
	lea edx, [esi+0x1bc]
	mov [esp], edx
	movss xmm2, dword [ebp-0x14]
	movss xmm1, dword [ebp-0x10]
	movss xmm0, dword [ebp-0xc]
	mov edx, ebx
	call ScriptMover_SetupMove
	mov [esp], esi
	call SV_LinkEntity
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
ScriptEntCmd_MoveTo_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp ScriptEntCmd_MoveTo_20
	nop


;SP_script_brushmodel(gentity_s*)
SP_script_brushmodel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call SV_SetBrushModel
	test al, al
	jnz SP_script_brushmodel_10
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_script_b
	mov dword [esp], 0x1
	call Com_PrintError
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp G_FreeEntity
SP_script_brushmodel_10:
	mov byte [ebx+0x16e], 0x5
	mov byte [ebx+0xf6], 0x0
	mov dword [ebx+0x4], 0x6
	lea ecx, [ebx+0x18]
	lea edx, [ebx+0x13c]
	mov eax, [ebx+0x13c]
	mov [ebx+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ebx+0xc], 0x0
	lea ecx, [ebx+0x3c]
	lea edx, [ebx+0x148]
	mov eax, [ebx+0x148]
	mov [ebx+0x3c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ebx+0x30], 0x0
	or dword [ebx+0x180], 0x1000
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp SV_LinkEntity


;ScriptEntCmd_Vibrate(scr_entref_t)
ScriptEntCmd_Vibrate:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x84
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEntCmd_Vibrate_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	movzx eax, word [ebx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x6e]
	jz ScriptEntCmd_Vibrate_20
	cmp ax, [edx+0x70]
	jz ScriptEntCmd_Vibrate_20
	cmp ax, [edx+0x72]
	jz ScriptEntCmd_Vibrate_20
	cmp ax, [edx+0x52]
	jz ScriptEntCmd_Vibrate_20
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
ScriptEntCmd_Vibrate_20:
	call Scr_GetNumParam
	cmp eax, 0x4
	jz ScriptEntCmd_Vibrate_30
ScriptEntCmd_Vibrate_40:
	mov dword [esp], _cstring_illegal_call_to_
	call Scr_Error
	add esp, 0x84
	pop ebx
	pop ebp
	ret
ScriptEntCmd_Vibrate_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	call Scr_GetNumParam
	cmp eax, 0x4
	jnz ScriptEntCmd_Vibrate_40
ScriptEntCmd_Vibrate_30:
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebp-0x44]
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x40]
	mov dword [esp], 0x3
	call Scr_GetFloat
	fstp dword [ebp-0x3c]
	movss xmm3, dword [ebp-0x14]
	movss xmm0, dword [ebp-0x10]
	movss xmm2, dword [ebp-0xc]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb ScriptEntCmd_Vibrate_50
	movss xmm2, dword [_float_1_00000000]
ScriptEntCmd_Vibrate_60:
	mulss xmm3, xmm2
	movss [ebp-0x14], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x10]
	movss [ebp-0x10], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xc]
	movss [ebp-0xc], xmm0
	movss xmm1, dword [ebp-0x44]
	mulss xmm1, xmm3
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [ebp-0x10]
	movss xmm3, dword [ebp-0x44]
	mulss xmm3, xmm0
	lea edx, [ebx+0x148]
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], edx
	movss [ebp-0x58], xmm1
	movss [ebp-0x68], xmm2
	movss [ebp-0x78], xmm3
	call AnglesToAxis
	movss xmm1, dword [ebp-0x58]
	movaps xmm4, xmm1
	mulss xmm4, [ebp-0x38]
	movss xmm2, dword [ebp-0x68]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x34]
	addss xmm4, xmm0
	movss xmm3, dword [ebp-0x78]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x30]
	addss xmm4, xmm0
	mulss xmm1, [ebp-0x2c]
	mulss xmm2, [ebp-0x28]
	addss xmm1, xmm2
	mulss xmm3, [ebp-0x24]
	addss xmm1, xmm3
	xorps xmm1, [_data16_80000000]
	lea edx, [ebx+0x208]
	mov eax, [ebx+0x148]
	mov [ebx+0x208], eax
	mov eax, [ebx+0x14c]
	mov [edx+0x4], eax
	mov eax, [ebx+0x150]
	mov [edx+0x8], eax
	cvtss2sd xmm0, [ebp-0x40]
	mulsd xmm0, [_double_1000_00000000]
	cvttsd2si eax, xmm0
	mov [ebx+0x38], eax
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov edx, level
	add eax, [edx+0x1ec]
	mov [ebx+0x34], eax
	lea edx, [ebx+0x3c]
	mov eax, [ebx+0x148]
	mov [ebx+0x3c], eax
	mov eax, [ebx+0x14c]
	mov [edx+0x4], eax
	mov eax, [ebx+0x150]
	mov [edx+0x8], eax
	lea eax, [ebx+0x48]
	movss [ebx+0x48], xmm4
	mov dword [eax+0x4], 0x0
	movss [eax+0x8], xmm1
	mov dword [ebx+0x30], 0x4
	add esp, 0x84
	pop ebx
	pop ebp
	ret
ScriptEntCmd_Vibrate_50:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp ScriptEntCmd_Vibrate_60


;ScriptEnt_RotateAxis(scr_entref_t, int)
ScriptEnt_RotateAxis:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEnt_RotateAxis_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	movzx eax, word [esi+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x6e]
	jz ScriptEnt_RotateAxis_20
	cmp ax, [edx+0x70]
	jz ScriptEnt_RotateAxis_20
	cmp ax, [edx+0x72]
	jz ScriptEnt_RotateAxis_20
	cmp ax, [edx+0x52]
	jz ScriptEnt_RotateAxis_20
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
ScriptEnt_RotateAxis_20:
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0x3c]
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call ScriptEntCmdGetCommandTimes
	mov eax, [esi+0x148]
	mov [ebp-0x20], eax
	mov eax, [esi+0x14c]
	mov [ebp-0x1c], eax
	mov eax, [esi+0x150]
	mov [ebp-0x18], eax
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [ebp+ebx*4-0x20]
	movss [ebp+ebx*4-0x20], xmm0
	mov eax, [esi+0x148]
	mov [ebp-0x2c], eax
	mov eax, [esi+0x14c]
	mov [ebp-0x28], eax
	mov eax, [esi+0x150]
	mov [ebp-0x24], eax
	lea ecx, [ebp-0x2c]
	lea edx, [ebp-0x20]
	lea eax, [esi+0x30]
	lea ebx, [esi+0x208]
	mov [esp+0x14], ebx
	lea ebx, [esi+0x1fc]
	mov [esp+0x10], ebx
	lea ebx, [esi+0x1f0]
	mov [esp+0xc], ebx
	lea ebx, [esi+0x1b8]
	mov [esp+0x8], ebx
	lea ebx, [esi+0x1c8]
	mov [esp+0x4], ebx
	lea ebx, [esi+0x1c0]
	mov [esp], ebx
	movss xmm2, dword [ebp-0x14]
	movss xmm1, dword [ebp-0x10]
	movss xmm0, dword [ebp-0xc]
	call ScriptMover_SetupMove
	mov [esp], esi
	call SV_LinkEntity
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
ScriptEnt_RotateAxis_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp ScriptEnt_RotateAxis_20
	nop


;ScriptEntCmd_NotSolid(scr_entref_t)
ScriptEntCmd_NotSolid:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEntCmd_NotSolid_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	movzx eax, word [ebx+0x170]
	mov esi, scr_const
	cmp ax, [esi+0x6e]
	jz ScriptEntCmd_NotSolid_20
	cmp ax, [esi+0x70]
	jz ScriptEntCmd_NotSolid_20
	cmp ax, [esi+0x72]
	jz ScriptEntCmd_NotSolid_30
	cmp ax, [esi+0x52]
	jz ScriptEntCmd_NotSolid_40
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	movzx eax, word [ebx+0x170]
ScriptEntCmd_NotSolid_20:
	cmp ax, [esi+0x72]
	jz ScriptEntCmd_NotSolid_30
ScriptEntCmd_NotSolid_40:
	mov dword [ebx+0x120], 0x0
	cmp ax, [esi+0x70]
	jz ScriptEntCmd_NotSolid_50
	or dword [ebx+0x8], 0x1
ScriptEntCmd_NotSolid_50:
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp SV_LinkEntity
ScriptEntCmd_NotSolid_30:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cannot_use_the_s
	mov dword [esp], 0x17
	call Com_DPrintf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
ScriptEntCmd_NotSolid_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	movzx eax, word [0x170]
	mov esi, scr_const
	jmp ScriptEntCmd_NotSolid_20


;ScriptEntCmd_RotateTo(scr_entref_t)
ScriptEntCmd_RotateTo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEntCmd_RotateTo_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	movzx eax, word [edi+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x6e]
	jz ScriptEntCmd_RotateTo_20
	cmp ax, [edx+0x70]
	jz ScriptEntCmd_RotateTo_20
	cmp ax, [edx+0x72]
	jz ScriptEntCmd_RotateTo_20
	cmp ax, [edx+0x52]
	jz ScriptEntCmd_RotateTo_20
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
ScriptEntCmd_RotateTo_20:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call ScriptEntCmdGetCommandTimes
	mov esi, edi
	mov dword [ebp-0x4c], 0x1
ScriptEntCmd_RotateTo_30:
	movss xmm2, dword [esi+0x148]
	mov ebx, [ebp-0x4c]
	shl ebx, 0x2
	movss xmm0, dword [ebp+ebx-0x34]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x68], xmm0
	movss [ebp-0x78], xmm2
	call floorf
	fstp dword [ebp-0x50]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x50]
	mulss xmm0, [_float_360_00000000]
	movss xmm2, dword [ebp-0x78]
	addss xmm2, xmm0
	movss [ebp+ebx-0x40], xmm2
	add dword [ebp-0x4c], 0x1
	add esi, 0x4
	cmp dword [ebp-0x4c], 0x4
	jnz ScriptEntCmd_RotateTo_30
	lea edx, [edi+0x148]
	mov eax, [edi+0x148]
	mov [ebp-0x48], eax
	mov eax, [edx+0x4]
	mov [ebp-0x44], eax
	mov eax, [edx+0x8]
	mov [ebp-0x40], eax
	lea ecx, [ebp-0x48]
	lea eax, [edi+0x30]
	lea edx, [edi+0x208]
	mov [esp+0x14], edx
	lea edx, [edi+0x1fc]
	mov [esp+0x10], edx
	lea edx, [edi+0x1f0]
	mov [esp+0xc], edx
	lea edx, [edi+0x1b8]
	mov [esp+0x8], edx
	lea edx, [edi+0x1c8]
	mov [esp+0x4], edx
	lea edx, [edi+0x1c0]
	mov [esp], edx
	movss xmm2, dword [ebp-0x24]
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	lea edx, [ebp-0x3c]
	call ScriptMover_SetupMove
	mov [esp], edi
	call SV_LinkEntity
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptEntCmd_RotateTo_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp ScriptEntCmd_RotateTo_20
	nop


;ScriptEntCmd_DevAddYaw(scr_entref_t)
ScriptEntCmd_DevAddYaw:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;ScriptEntCmd_RotateYaw(scr_entref_t)
ScriptEntCmd_RotateYaw:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScriptEnt_RotateAxis
	leave
	ret
	nop


;ScriptEntCmd_DevAddRoll(scr_entref_t)
ScriptEntCmd_DevAddRoll:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;ScriptEntCmd_RotateRoll(scr_entref_t)
ScriptEntCmd_RotateRoll:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScriptEnt_RotateAxis
	leave
	ret
	nop


;ScriptEntCmd_DevAddPitch(scr_entref_t)
ScriptEntCmd_DevAddPitch:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;ScriptEntCmd_GravityMove(scr_entref_t)
ScriptEntCmd_GravityMove:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEntCmd_GravityMove_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	movzx eax, word [edi+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x6e]
	jz ScriptEntCmd_GravityMove_20
	cmp ax, [edx+0x70]
	jz ScriptEntCmd_GravityMove_20
	cmp ax, [edx+0x72]
	jz ScriptEntCmd_GravityMove_20
	cmp ax, [edx+0x52]
	jz ScriptEntCmd_GravityMove_20
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
ScriptEntCmd_GravityMove_20:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	movss xmm1, dword [ebp-0x24]
	movss [ebp-0x2c], xmm1
	mov eax, [ebp-0x2c]
	and eax, 0x7f800000
	cmp eax, 0x7f800000
	jz ScriptEntCmd_GravityMove_30
	mov eax, [ebp-0x20]
	and eax, 0x7f800000
	cmp eax, 0x7f800000
	jz ScriptEntCmd_GravityMove_30
	mov eax, [ebp-0x1c]
	and eax, 0x7f800000
	cmp eax, 0x7f800000
	jz ScriptEntCmd_GravityMove_30
ScriptEntCmd_GravityMove_40:
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	lea ebx, [edi+0xc]
	mov esi, level
	mov eax, [esi+0x1ec]
	mov [ebx+0x4], eax
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov [ebx+0x8], eax
	lea ecx, [edi+0x18]
	lea edx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [edi+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea ecx, [edi+0x24]
	mov eax, [ebp-0x24]
	mov [edi+0x24], eax
	mov eax, [ebp-0x20]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x8], eax
	mov dword [edi+0xc], 0x5
	mov [esp+0x8], edx
	mov eax, [esi+0x1ec]
	mov [esp+0x4], eax
	mov [esp], ebx
	call BG_EvaluateTrajectory
	mov [esp], edi
	call SV_LinkEntity
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptEntCmd_GravityMove_30:
	cvtss2sd xmm0, [ebp-0x1c]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp-0x20]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp+0x4], xmm1
	mov dword [esp], _cstring_invalid_velocity
	call va
	mov [esp], eax
	call Scr_Error
	jmp ScriptEntCmd_GravityMove_40
ScriptEntCmd_GravityMove_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp ScriptEntCmd_GravityMove_20
	nop


;ScriptEntCmd_RotatePitch(scr_entref_t)
ScriptEntCmd_RotatePitch:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScriptEnt_RotateAxis
	leave
	ret
	nop


;ScriptEntCmd_SetCanDamage(scr_entref_t)
ScriptEntCmd_SetCanDamage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov esi, eax
	mov ebx, eax
	shr ebx, 0x10
	call Scr_GetNumParam
	sub eax, 0x1
	jz ScriptEntCmd_SetCanDamage_10
	mov dword [ebp+0x8], _cstring_illegal_call_to_1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_Error
ScriptEntCmd_SetCanDamage_10:
	test bx, bx
	jnz ScriptEntCmd_SetCanDamage_20
	movzx eax, si
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax]
	add ebx, g_entities
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x16b], al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
ScriptEntCmd_SetCanDamage_20:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x16b], al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;ScriptEntCmd_PhysicsLaunch(scr_entref_t)
ScriptEntCmd_PhysicsLaunch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEntCmd_PhysicsLaunch_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	movzx eax, word [esi+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x6e]
	jz ScriptEntCmd_PhysicsLaunch_20
	cmp ax, [edx+0x70]
	jz ScriptEntCmd_PhysicsLaunch_20
	cmp ax, [edx+0x72]
	jz ScriptEntCmd_PhysicsLaunch_20
	cmp ax, [edx+0x52]
	jz ScriptEntCmd_PhysicsLaunch_20
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
ScriptEntCmd_PhysicsLaunch_20:
	call Scr_GetNumParam
	cmp eax, 0x2
	jz ScriptEntCmd_PhysicsLaunch_30
ScriptEntCmd_PhysicsLaunch_50:
	xor eax, eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	lea eax, [esi+0x30]
	mov [ebp-0x4c], eax
	lea edi, [esi+0xc]
	cmp dword [esi+0xc], 0x8
	jz ScriptEntCmd_PhysicsLaunch_40
ScriptEntCmd_PhysicsLaunch_60:
	mov ebx, level
	mov eax, [ebx+0x1ec]
	mov [edi+0x4], eax
	mov dword [edi+0x8], 0x7fffffff
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], edi
	call BG_EvaluateTrajectory
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call BG_EvaluateTrajectory
	lea edx, [esi+0x18]
	mov eax, [ebp-0x3c]
	mov [esi+0x18], eax
	mov eax, [ebp-0x38]
	mov [edx+0x4], eax
	mov eax, [ebp-0x34]
	mov [edx+0x8], eax
	lea edx, [esi+0x3c]
	mov eax, [ebp-0x48]
	mov [esi+0x3c], eax
	mov eax, [ebp-0x44]
	mov [edx+0x4], eax
	mov eax, [ebp-0x40]
	mov [edx+0x8], eax
	lea edx, [esi+0x24]
	mov eax, [ebp-0x24]
	mov [esi+0x24], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	lea edx, [esi+0x48]
	mov eax, [ebp-0x30]
	mov [esi+0x48], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov dword [esi+0xc], 0x8
	mov dword [esi+0x30], 0x8
	mov dword [esi+0x120], 0x0
	mov byte [esi+0x16b], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptEntCmd_PhysicsLaunch_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	call Scr_GetNumParam
	cmp eax, 0x2
	jnz ScriptEntCmd_PhysicsLaunch_50
ScriptEntCmd_PhysicsLaunch_30:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Scr_GetVector
	lea eax, [esi+0x30]
	mov [ebp-0x4c], eax
	lea edi, [esi+0xc]
	cmp dword [esi+0xc], 0x8
	jnz ScriptEntCmd_PhysicsLaunch_60
ScriptEntCmd_PhysicsLaunch_40:
	mov dword [esp], _cstring_physicslaunch_ca
	call Scr_Error
	jmp ScriptEntCmd_PhysicsLaunch_60
	nop


;ScriptEntCmdGetCommandTimes(float*, float*, float*)
ScriptEntCmdGetCommandTimes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x28], eax
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x24]
	movss [ebx], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe ScriptEntCmdGetCommandTimes_10
ScriptEntCmdGetCommandTimes_90:
	movss xmm0, dword [_float_0_00100000]
	ucomiss xmm0, [ebx]
	jbe ScriptEntCmdGetCommandTimes_20
	movss [ebx], xmm0
ScriptEntCmdGetCommandTimes_20:
	call Scr_GetNumParam
	mov esi, eax
	cmp eax, 0x2
	jg ScriptEntCmdGetCommandTimes_30
	pxor xmm0, xmm0
	movss [edi], xmm0
	mov eax, [ebp-0x28]
	movss [eax], xmm0
ScriptEntCmdGetCommandTimes_80:
	movss xmm0, dword [edi]
	mov eax, [ebp-0x28]
	addss xmm0, [eax]
	movss xmm1, dword [ebx]
	ucomiss xmm0, xmm1
	jbe ScriptEntCmdGetCommandTimes_40
	mulss xmm1, [_float_1_00000048]
	ucomiss xmm0, xmm1
	ja ScriptEntCmdGetCommandTimes_50
	movss [ebx], xmm1
ScriptEntCmdGetCommandTimes_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptEntCmdGetCommandTimes_50:
	mov dword [ebp+0x8], _cstring_accel_time_plus_
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
ScriptEntCmdGetCommandTimes_30:
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x20]
	movss [edi], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x20]
	ja ScriptEntCmdGetCommandTimes_60
ScriptEntCmdGetCommandTimes_100:
	cmp esi, 0x3
	jg ScriptEntCmdGetCommandTimes_70
	pxor xmm0, xmm0
	mov eax, [ebp-0x28]
	movss [eax], xmm0
	jmp ScriptEntCmdGetCommandTimes_80
ScriptEntCmdGetCommandTimes_10:
	jp ScriptEntCmdGetCommandTimes_90
	mov dword [esp+0x4], _cstring_total_time_must_
	mov dword [esp], 0x1
	call Scr_ParamError
	jmp ScriptEntCmdGetCommandTimes_90
ScriptEntCmdGetCommandTimes_70:
	mov dword [esp], 0x3
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mov eax, [ebp-0x28]
	movss [eax], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x1c]
	jbe ScriptEntCmdGetCommandTimes_80
	mov dword [esp+0x4], _cstring_decel_time_must_
	mov dword [esp], 0x3
	call Scr_ParamError
	jmp ScriptEntCmdGetCommandTimes_80
ScriptEntCmdGetCommandTimes_60:
	mov dword [esp+0x4], _cstring_accel_time_must_
	mov dword [esp], 0x2
	call Scr_ParamError
	jmp ScriptEntCmdGetCommandTimes_100


;ScriptEntCmd_RotateVelocity(scr_entref_t)
ScriptEntCmd_RotateVelocity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScriptEntCmd_RotateVelocity_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	movzx eax, word [esi+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x6e]
	jz ScriptEntCmd_RotateVelocity_20
	cmp ax, [edx+0x70]
	jz ScriptEntCmd_RotateVelocity_20
	cmp ax, [edx+0x72]
	jz ScriptEntCmd_RotateVelocity_20
	cmp ax, [edx+0x52]
	jz ScriptEntCmd_RotateVelocity_20
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
ScriptEntCmd_RotateVelocity_20:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call ScriptEntCmdGetCommandTimes
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x70], xmm0
	movss xmm3, dword [ebp-0x20]
	movss xmm1, dword [ebp-0x1c]
	lea eax, [esi+0x208]
	mov [ebp-0x5c], eax
	lea edx, [esi+0x1fc]
	mov [ebp-0x60], edx
	lea eax, [esi+0x1f0]
	mov [ebp-0x6c], eax
	lea edx, [esi+0x1b8]
	mov [ebp-0x7c], edx
	lea eax, [esi+0x1c8]
	mov [ebp-0x78], eax
	lea edx, [esi+0x1c0]
	mov [ebp-0x74], edx
	lea ebx, [esi+0x148]
	lea edi, [esi+0x30]
	mov eax, [esi+0x30]
	test eax, eax
	jnz ScriptEntCmd_RotateVelocity_30
ScriptEntCmd_RotateVelocity_100:
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jnz ScriptEntCmd_RotateVelocity_40
	jp ScriptEntCmd_RotateVelocity_40
	movss xmm0, dword [ebp-0x70]
	ucomiss xmm0, xmm4
	jz ScriptEntCmd_RotateVelocity_50
ScriptEntCmd_RotateVelocity_40:
	subss xmm1, xmm3
	subss xmm1, [ebp-0x70]
	mov eax, [ebp-0x78]
	movss [eax], xmm1
	movss xmm0, dword [ebp-0x70]
	mov edx, [ebp-0x7c]
	movss [edx], xmm0
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x28]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mov eax, [ebp-0x74]
	movss [eax], xmm0
	ucomiss xmm3, xmm4
	jp ScriptEntCmd_RotateVelocity_60
	jnz ScriptEntCmd_RotateVelocity_60
	mov eax, [ebx]
	mov edx, [ebp-0x6c]
	mov [edx], eax
	lea eax, [ebx+0x4]
	mov [ebp-0x68], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	lea edx, [ebx+0x8]
	mov [ebp-0x64], edx
	mov eax, [ebx+0x8]
	mov edx, [ebp-0x6c]
	mov [edx+0x8], eax
	mov eax, [ebp-0x78]
	ucomiss xmm4, [eax]
	jp ScriptEntCmd_RotateVelocity_70
	jnz ScriptEntCmd_RotateVelocity_70
	mov ecx, level
	mov eax, [ecx+0x1ec]
	mov [edi+0x4], eax
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [ebp-0x7c]
	mulss xmm0, [eax]
	cvttss2si eax, xmm0
	mov [edi+0x8], eax
	lea edx, [edi+0xc]
	mov eax, [ebx]
	mov [edi+0xc], eax
	mov eax, [ebp-0x68]
	movss xmm0, dword [eax]
	movss [edx+0x4], xmm0
	mov eax, [ebp-0x64]
	movss xmm0, dword [eax]
	movss [edx+0x8], xmm0
	lea edx, [edi+0x18]
	mov eax, [ebp-0x30]
	mov [edi+0x18], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov dword [edi], 0x7
ScriptEntCmd_RotateVelocity_90:
	mov eax, [ebp-0x78]
	movss xmm0, dword [eax]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x30]
	mov edx, [ebp-0x6c]
	addss xmm1, [edx]
	mov eax, [ebp-0x60]
	movss [eax], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x2c]
	addss xmm1, [edx+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [ebp-0x28]
	addss xmm0, [edx+0x8]
	movss [eax+0x8], xmm0
	mov edx, [ebp-0x7c]
	ucomiss xmm4, [edx]
	jp ScriptEntCmd_RotateVelocity_80
	jnz ScriptEntCmd_RotateVelocity_80
	mov edx, [ebp-0x60]
	mov eax, [edx]
	mov edx, [ebp-0x5c]
	mov [edx], eax
	mov edx, [ebp-0x60]
	mov eax, [edx+0x4]
	mov edx, [ebp-0x5c]
	mov [edx+0x4], eax
	mov edx, [ebp-0x60]
	mov eax, [edx+0x8]
	mov edx, [ebp-0x5c]
	mov [edx+0x8], eax
ScriptEntCmd_RotateVelocity_110:
	mov [esp+0x8], ebx
	mov eax, [ecx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], edi
	call BG_EvaluateTrajectory
	mov [esp], esi
	call SV_LinkEntity
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptEntCmd_RotateVelocity_70:
	mov ecx, level
	mov eax, [ecx+0x1ec]
	mov [edi+0x4], eax
	movss xmm0, dword [_float_1000_00000000]
	mov edx, [ebp-0x78]
	mulss xmm0, [edx]
	cvttss2si eax, xmm0
	mov [edi+0x8], eax
	lea edx, [edi+0xc]
	mov eax, [ebx]
	mov [edi+0xc], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	lea edx, [edi+0x18]
	mov eax, [ebp-0x30]
	mov [edi+0x18], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov dword [edi], 0x3
	jmp ScriptEntCmd_RotateVelocity_90
ScriptEntCmd_RotateVelocity_50:
	jp ScriptEntCmd_RotateVelocity_40
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [edi+0x4], eax
	movaps xmm0, xmm1
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov [edi+0x8], eax
	movss [esi+0x1c8], xmm1
	movss [esi+0x1b8], xmm4
	lea edx, [esi+0x3c]
	mov eax, [esi+0x148]
	mov [esi+0x3c], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	lea edx, [esi+0x48]
	mov eax, [ebp-0x30]
	mov [esi+0x48], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov dword [esi+0x30], 0x3
	mov [esp+0x8], ebx
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], edi
	call BG_EvaluateTrajectory
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov edx, level
	mov eax, [edx+0x1ec]
	add eax, [edi+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call BG_EvaluateTrajectory
	mov [esp], esi
	call SV_LinkEntity
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptEntCmd_RotateVelocity_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp ScriptEntCmd_RotateVelocity_20
ScriptEntCmd_RotateVelocity_30:
	mov [esp+0x8], ebx
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	mov [esp], edi
	movss [ebp-0x98], xmm1
	movss [ebp-0xa8], xmm3
	call BG_EvaluateTrajectory
	movss xmm3, dword [ebp-0xa8]
	movss xmm1, dword [ebp-0x98]
	jmp ScriptEntCmd_RotateVelocity_100
ScriptEntCmd_RotateVelocity_60:
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [edi+0x4], eax
	mulss xmm3, [_float_1000_00000000]
	cvttss2si eax, xmm3
	mov [edi+0x8], eax
	lea edx, [edi+0xc]
	mov eax, [ebx]
	mov [edi+0xc], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	lea edx, [edi+0x18]
	mov eax, [ebp-0x30]
	mov [edi+0x18], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov dword [edi], 0x6
	mov eax, [ebp-0x6c]
	mov [esp+0x8], eax
	mov edx, level
	mov eax, [edx+0x1ec]
	add eax, [edi+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call BG_EvaluateTrajectory
	mov ecx, level
	pxor xmm4, xmm4
	jmp ScriptEntCmd_RotateVelocity_90
ScriptEntCmd_RotateVelocity_80:
	mov dword [ebp-0x54], 0x7
	mov eax, [ecx+0x1ec]
	mov [ebp-0x50], eax
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [edx]
	cvttss2si edx, xmm0
	mov [ebp-0x4c], edx
	mov eax, [ebp-0x60]
	movss xmm0, dword [eax]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x40], xmm0
	mov eax, [ebp-0x30]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	add edx, [ecx+0x1ec]
	mov [esp+0x4], edx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call BG_EvaluateTrajectory
	mov ecx, level
	jmp ScriptEntCmd_RotateVelocity_110


;Initialized global or static variables of g_scr_mover:
SECTION .data


;Initialized constant data of g_scr_mover:
SECTION .rdata

;Zero initialized global or static variables of g_scr_mover:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_entity_i_is_not_:		db "entity %i is not a script_brushmodel, script_model, script_origin, or light",0
_cstring_cannot_use_the_s:		db "cannot use the solid/notsolid commands on a script_origin entity( number %i )",0ah,0
_cstring_not_an_entity:		db "not an entity",0
_cstring_killing_script_b:		db "Killing script_brushmodel at (%f %f %f) because the brush model is invalid.",0ah,0
_cstring_illegal_call_to_:		db "illegal call to vibrate()",0ah,0
_cstring_invalid_velocity:		db "invalid velocity parameter in movegravity command: %f %f %f",0
_cstring_illegal_call_to_1:		db "illegal call to setcandamage()",0ah,0
_cstring_physicslaunch_ca:		db "physicslaunch called more than once for the same entity.",0
_cstring_accel_time_plus_:		db "accel time plus decel time is greater than total time",0
_cstring_total_time_must_:		db "total time must be positive",0
_cstring_decel_time_must_:		db "decel time must be nonnegative",0
_cstring_accel_time_must_:		db "accel time must be nonnegative",0


;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_00000000:		dd 0x0	; 0
_double_1000_00000000:		dq 0x408f400000000000	; 1000
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_1_00000048:		dd 0x3f800004	; 1

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
