;Imports of ragdoll_cmds:
	extern cmd_args
	extern atoi
	extern ragdollDefs
	extern Q_strncpyz
	extern atof
	extern Q_stricmpn
	extern Com_Printf
	extern Ragdoll_ValidatePrecalcBoneDef
	extern ragdollBodies
	extern Ragdoll_BodyNewState
	extern ragdoll_baselerp_time
	extern SL_FindString
	extern Q_stricmp
	extern memset
	extern Cmd_AddCommand

;Exports of ragdoll_cmds:
	global axisTable
	global jointNames
	global geomNames
	global _ZZ20Ragdoll_InitCommandsvE22Ragdoll_Selfpair_f_VAR
	global _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Limit_f_VAR
	global _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Joint_f_VAR
	global _ZZ20Ragdoll_InitCommandsvE21Ragdoll_PinBone_f_VAR
	global _ZZ20Ragdoll_InitCommandsvE26Ragdoll_BaseLerpBone_f_VAR
	global _ZZ20Ragdoll_InitCommandsvE18Ragdoll_Bone_f_VAR
	global _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Clear_f_VAR
	global Ragdoll_Bone_f
	global Ragdoll_BaseLerpBone_f
	global Ragdoll_PinBone_f
	global Ragdoll_Joint_f
	global Ragdoll_Limit_f
	global Ragdoll_Selfpair_f
	global Ragdoll_Clear_f
	global Ragdoll_InitCommands


SECTION .text


;Ragdoll_Bone_f()
Ragdoll_Bone_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, cmd_args
	mov eax, [edi]
	cmp dword [edi+eax*4+0x44], 0xa
	jle Ragdoll_Bone_f_10
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe Ragdoll_Bone_f_20
Ragdoll_Bone_f_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_Bone_f_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea edx, [eax*4]
	sub edx, eax
	shl edx, 0x4
	mov eax, ragdollDefs
	add edx, eax
	mov [ebp-0x28], edx
	mov edx, [edx+0x4]
	cmp edx, 0xd
	jg Ragdoll_Bone_f_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov edx, [ebp-0x28]
	lea eax, [edx+eax*4+0x8]
	mov [ebp-0x24], eax
	mov esi, eax
	mov dword [ebp-0x1c], 0x2
	mov ebx, eax
Ragdoll_Bone_f_50:
	mov dword [esi+0x28], 0x0
	mov eax, [edi]
	mov edx, [ebp-0x1c]
	cmp edx, [edi+eax*4+0x44]
	jl Ragdoll_Bone_f_40
	mov eax, _cstring_null
Ragdoll_Bone_f_180:
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_strncpyz
	add esi, 0x4
	add dword [ebp-0x1c], 0x1
	add ebx, 0x14
	cmp dword [ebp-0x1c], 0x4
	jnz Ragdoll_Bone_f_50
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg Ragdoll_Bone_f_60
	mov eax, _cstring_null
Ragdoll_Bone_f_210:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x48]
	cvtsd2ss xmm0, [ebp-0x48]
	mov edi, [ebp-0x24]
	movss [edi+0x30], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg Ragdoll_Bone_f_70
	mov eax, _cstring_null
Ragdoll_Bone_f_230:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	cvtsd2ss xmm0, [ebp-0x40]
	mov eax, [ebp-0x24]
	movss [eax+0x38], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jg Ragdoll_Bone_f_80
	mov eax, _cstring_null
Ragdoll_Bone_f_220:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	mov eax, [ebp-0x24]
	movss [eax+0x3c], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x7
	jg Ragdoll_Bone_f_90
	mov eax, _cstring_null
Ragdoll_Bone_f_200:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	mov eax, [ebp-0x24]
	movss [eax+0x40], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x8
	jg Ragdoll_Bone_f_100
	mov eax, _cstring_null
Ragdoll_Bone_f_190:
	mov [esp], eax
	call atoi
	cmp eax, 0xffffffff
	jz Ragdoll_Bone_f_110
	mov edx, [ebp-0x28]
	cmp eax, [edx+0x4]
	jge Ragdoll_Bone_f_120
	mov edi, [ebp-0x24]
	mov [edi+0x44], eax
Ragdoll_Bone_f_260:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x9
	jg Ragdoll_Bone_f_130
	mov eax, _cstring_null
Ragdoll_Bone_f_240:
	mov [esp], eax
	call atoi
	test eax, eax
	mov eax, [ebp-0x24]
	setnz byte [eax+0x34]
	mov edx, cmd_args
	mov ecx, [edx]
	mov eax, [edx+ecx*4+0x44]
	cmp eax, 0x9
	jle Ragdoll_Bone_f_140
	cmp eax, 0xa
	jg Ragdoll_Bone_f_150
	mov dword [ebp-0x20], _cstring_null
Ragdoll_Bone_f_250:
	xor esi, esi
	mov ebx, geomNames
Ragdoll_Bone_f_170:
	mov edx, [ebx]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call Q_stricmpn
	test eax, eax
	jz Ragdoll_Bone_f_160
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x6
	jnz Ragdoll_Bone_f_170
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ragdoll_unknown_
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Bone_f_10
Ragdoll_Bone_f_30:
	mov dword [esp+0x8], 0xe
	mov dword [esp+0x4], _cstring_ragdoll_too_many
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Bone_f_10
Ragdoll_Bone_f_40:
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+edx*4]
	jmp Ragdoll_Bone_f_180
Ragdoll_Bone_f_100:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x20]
	jmp Ragdoll_Bone_f_190
Ragdoll_Bone_f_90:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x1c]
	jmp Ragdoll_Bone_f_200
Ragdoll_Bone_f_60:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp Ragdoll_Bone_f_210
Ragdoll_Bone_f_80:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp Ragdoll_Bone_f_220
Ragdoll_Bone_f_70:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp Ragdoll_Bone_f_230
Ragdoll_Bone_f_130:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x24]
	jmp Ragdoll_Bone_f_240
Ragdoll_Bone_f_150:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x28]
	mov [ebp-0x20], eax
	jmp Ragdoll_Bone_f_250
Ragdoll_Bone_f_110:
	mov eax, [ebp-0x24]
	mov dword [eax+0x44], 0xffffffff
	jmp Ragdoll_Bone_f_260
Ragdoll_Bone_f_140:
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_ragdoll_missing_
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Bone_f_10
Ragdoll_Bone_f_120:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_child_bo
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Bone_f_10
Ragdoll_Bone_f_160:
	mov edi, [ebp-0x24]
	mov [edi+0x48], esi
	mov [esp+0x4], edi
	mov eax, [ebp-0x28]
	mov [esp], eax
	call Ragdoll_ValidatePrecalcBoneDef
	test al, al
	jz Ragdoll_Bone_f_270
	mov edi, [ebp-0x28]
	add dword [edi+0x4], 0x1
	xor ebx, ebx
	mov edi, ragdollBodies
	jmp Ragdoll_Bone_f_280
Ragdoll_Bone_f_290:
	add ebx, 0x1
	add edi, 0x9d4
	cmp ebx, 0x20
	jz Ragdoll_Bone_f_10
Ragdoll_Bone_f_280:
	cmp dword [edi+0x24], 0x1
	jle Ragdoll_Bone_f_290
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call Ragdoll_BodyNewState
	jmp Ragdoll_Bone_f_290
Ragdoll_Bone_f_270:
	mov edx, [ebp-0x28]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_bone_d_v
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Bone_f_10
	nop


;Ragdoll_BaseLerpBone_f()
Ragdoll_BaseLerpBone_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jle Ragdoll_BaseLerpBone_f_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe Ragdoll_BaseLerpBone_f_20
Ragdoll_BaseLerpBone_f_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_BaseLerpBone_f_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea esi, [eax*4]
	sub esi, eax
	shl esi, 0x4
	add esi, ragdollDefs
	mov eax, [esi+0x430]
	cmp eax, 0x8
	jg Ragdoll_BaseLerpBone_f_30
	shl eax, 0x5
	lea edi, [eax+esi+0x434]
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg Ragdoll_BaseLerpBone_f_40
	mov eax, _cstring_null
Ragdoll_BaseLerpBone_f_120:
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_strncpyz
	mov dword [edi+0x14], 0x0
	mov ecx, cmd_args
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x2
	jle Ragdoll_BaseLerpBone_f_50
	cmp eax, 0x3
	jg Ragdoll_BaseLerpBone_f_60
	mov eax, _cstring_null
Ragdoll_BaseLerpBone_f_140:
	mov [esp], eax
	call atoi
	mov edx, eax
	mov [edi+0x1c], eax
	cmp eax, 0x176f
	jle Ragdoll_BaseLerpBone_f_70
	mov edx, 0x1770
Ragdoll_BaseLerpBone_f_150:
	mov [edi+0x1c], edx
	mov ecx, cmd_args
	jmp Ragdoll_BaseLerpBone_f_80
Ragdoll_BaseLerpBone_f_30:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_ragdoll_too_many1
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_BaseLerpBone_f_10
Ragdoll_BaseLerpBone_f_50:
	mov eax, ragdoll_baselerp_time
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [edi+0x1c], eax
Ragdoll_BaseLerpBone_f_80:
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x3
	jle Ragdoll_BaseLerpBone_f_90
	cmp eax, 0x4
	jg Ragdoll_BaseLerpBone_f_100
	mov eax, _cstring_null
Ragdoll_BaseLerpBone_f_130:
	mov [esp], eax
	call atoi
	mov [edi+0x18], eax
	jmp Ragdoll_BaseLerpBone_f_110
Ragdoll_BaseLerpBone_f_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp Ragdoll_BaseLerpBone_f_120
Ragdoll_BaseLerpBone_f_90:
	mov dword [edi+0x18], 0x0
Ragdoll_BaseLerpBone_f_110:
	add dword [esi+0x430], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_BaseLerpBone_f_100:
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp Ragdoll_BaseLerpBone_f_130
Ragdoll_BaseLerpBone_f_60:
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp Ragdoll_BaseLerpBone_f_140
Ragdoll_BaseLerpBone_f_70:
	cmp eax, 0x64
	mov eax, 0x64
	cmovle edx, eax
	jmp Ragdoll_BaseLerpBone_f_150


;Ragdoll_PinBone_f()
Ragdoll_PinBone_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, cmd_args
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x2
	jle Ragdoll_PinBone_f_10
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe Ragdoll_PinBone_f_20
Ragdoll_PinBone_f_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_PinBone_f_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*4]
	sub ebx, eax
	shl ebx, 0x4
	add ebx, ragdollDefs
	mov eax, [ebx+0x430]
	cmp eax, 0x8
	jg Ragdoll_PinBone_f_30
	shl eax, 0x5
	lea edi, [eax+ebx+0x434]
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x2
	jg Ragdoll_PinBone_f_40
	mov esi, _cstring_null
Ragdoll_PinBone_f_80:
	mov [esp], esi
	call SL_FindString
	mov [edi+0x14], eax
	test eax, eax
	jz Ragdoll_PinBone_f_50
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg Ragdoll_PinBone_f_60
	mov eax, _cstring_null
Ragdoll_PinBone_f_90:
	mov [esp], eax
	call atoi
	mov [edi+0x18], eax
	cmp eax, [ebx+0x4]
	jae Ragdoll_PinBone_f_70
	mov dword [edi+0x1c], 0x0
	add dword [ebx+0x430], 0x1
	jmp Ragdoll_PinBone_f_10
Ragdoll_PinBone_f_30:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_ragdoll_too_many1
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_PinBone_f_10
Ragdoll_PinBone_f_40:
	mov eax, [esi+eax*4+0x64]
	mov esi, [eax+0x8]
	jmp Ragdoll_PinBone_f_80
Ragdoll_PinBone_f_60:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp Ragdoll_PinBone_f_90
Ragdoll_PinBone_f_50:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_ragdoll_couldnt_
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_PinBone_f_10
Ragdoll_PinBone_f_70:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_pinned_b
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_PinBone_f_10
	nop


;Ragdoll_Joint_f()
Ragdoll_Joint_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jle Ragdoll_Joint_f_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe Ragdoll_Joint_f_20
Ragdoll_Joint_f_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_Joint_f_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea esi, [eax*4]
	sub esi, eax
	shl esi, 0x4
	add esi, ragdollDefs
	mov edx, [esi+0x554]
	cmp edx, 0x1b
	jg Ragdoll_Joint_f_30
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [esi+eax*4+0x558]
	mov [ebp-0x20], eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg Ragdoll_Joint_f_40
	mov eax, _cstring_null
Ragdoll_Joint_f_110:
	mov [esp], eax
	call atoi
	mov edx, eax
	mov ecx, [ebp-0x20]
	mov [ecx], al
	movzx eax, al
	cmp eax, [esi+0x4]
	jge Ragdoll_Joint_f_50
	test dl, dl
	jz Ragdoll_Joint_f_60
	mov edx, cmd_args
	mov ecx, [edx]
	mov eax, [edx+ecx*4+0x44]
	cmp eax, 0x2
	jle Ragdoll_Joint_f_70
	cmp eax, 0x3
	jg Ragdoll_Joint_f_80
	mov dword [ebp-0x1c], _cstring_null
Ragdoll_Joint_f_120:
	xor edi, edi
	mov ebx, jointNames
Ragdoll_Joint_f_100:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Ragdoll_Joint_f_90
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz Ragdoll_Joint_f_100
	mov ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_ragdoll_unknown_1
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Joint_f_10
Ragdoll_Joint_f_30:
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_ragdoll_too_many2
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Joint_f_10
Ragdoll_Joint_f_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp Ragdoll_Joint_f_110
Ragdoll_Joint_f_80:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	jmp Ragdoll_Joint_f_120
Ragdoll_Joint_f_50:
	mov dword [esp+0x4], _cstring_ragdoll_joint_re
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Joint_f_10
Ragdoll_Joint_f_60:
	mov dword [esp+0x4], _cstring_ragdoll_joint_re1
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Joint_f_10
Ragdoll_Joint_f_70:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_ragdoll_missing_1
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Joint_f_10
Ragdoll_Joint_f_90:
	mov eax, [ebp-0x20]
	mov [eax+0x4], edi
	add dword [esi+0x554], 0x1
	xor esi, esi
	mov ebx, ragdollBodies
	jmp Ragdoll_Joint_f_130
Ragdoll_Joint_f_140:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz Ragdoll_Joint_f_10
Ragdoll_Joint_f_130:
	cmp dword [ebx+0x24], 0x1
	jle Ragdoll_Joint_f_140
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Ragdoll_BodyNewState
	jmp Ragdoll_Joint_f_140


;Ragdoll_Limit_f()
Ragdoll_Limit_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, cmd_args
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x6
	jle Ragdoll_Limit_f_10
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe Ragdoll_Limit_f_20
Ragdoll_Limit_f_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_Limit_f_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*4]
	sub ebx, eax
	shl ebx, 0x4
	add ebx, ragdollDefs
	cmp dword [ebx+0x554], 0x1b
	jg Ragdoll_Limit_f_30
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x2
	jg Ragdoll_Limit_f_40
	mov eax, _cstring_null
Ragdoll_Limit_f_120:
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, [ebx+0x554]
	jge Ragdoll_Limit_f_50
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea ebx, [ebx+eax*4+0x558]
	mov [ebp-0x28], ebx
	mov eax, [ebx+0x8]
	cmp eax, 0x2
	jg Ragdoll_Limit_f_60
	lea eax, [eax+eax*2]
	lea ebx, [ebx+eax*4]
	lea ecx, [ebx+0xc]
	mov [ebp-0x1c], ecx
	mov edx, cmd_args
	mov ecx, [edx]
	mov eax, [edx+ecx*4+0x44]
	cmp eax, 0x2
	jle Ragdoll_Limit_f_70
	cmp eax, 0x3
	jg Ragdoll_Limit_f_80
	mov dword [ebp-0x24], _cstring_null
	mov ecx, [ebp-0x24]
Ragdoll_Limit_f_130:
	cmp byte [ecx], 0x2d
	jz Ragdoll_Limit_f_90
	mov byte [ebp-0x1d], 0x0
Ragdoll_Limit_f_140:
	xor esi, esi
	mov ebx, axisTable
	mov edi, axisTable
Ragdoll_Limit_f_110:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Ragdoll_Limit_f_100
	add esi, 0x1
	add edi, 0x10
	add ebx, 0x10
	cmp esi, 0x4
	jnz Ragdoll_Limit_f_110
	mov ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_ragdoll_unknown_2
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Limit_f_10
Ragdoll_Limit_f_30:
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_ragdoll_too_many2
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Limit_f_10
Ragdoll_Limit_f_40:
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp Ragdoll_Limit_f_120
Ragdoll_Limit_f_80:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	mov ecx, eax
	jmp Ragdoll_Limit_f_130
Ragdoll_Limit_f_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_angular_
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Limit_f_10
Ragdoll_Limit_f_60:
	mov dword [esp+0xc], 0x3
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ragdoll_too_many3
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Limit_f_10
Ragdoll_Limit_f_70:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_ragdoll_missing_2
	mov dword [esp], 0xe
	call Com_Printf
	xor eax, eax
	mov [ebx+0xc], eax
	mov edx, [ebp-0x1c]
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	jmp Ragdoll_Limit_f_10
Ragdoll_Limit_f_90:
	add dword [ebp-0x24], 0x1
	mov byte [ebp-0x1d], 0x1
	jmp Ragdoll_Limit_f_140
Ragdoll_Limit_f_100:
	movss xmm0, dword [edi+0x4]
	mov edx, [ebp-0x1c]
	movss [edx], xmm0
	movss xmm1, dword [edi+0x8]
	movss [edx+0x4], xmm1
	movss xmm2, dword [edi+0xc]
	movss [edx+0x8], xmm2
	cmp byte [ebp-0x1d], 0x0
	jz Ragdoll_Limit_f_150
	xorps xmm0, [_data16_80000000]
	movss [edx], xmm0
	xorps xmm1, [_data16_80000000]
	movss [edx+0x4], xmm1
	xorps xmm2, [_data16_80000000]
	movss [edx+0x8], xmm2
Ragdoll_Limit_f_150:
	mov eax, [ebp-0x28]
	mov ebx, [eax+0x8]
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg Ragdoll_Limit_f_160
	mov eax, _cstring_null
Ragdoll_Limit_f_230:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	cvtsd2ss xmm0, [ebp-0x40]
	mov edx, [ebp-0x28]
	movss [edx+ebx*4+0x48], xmm0
	mov ebx, [edx+0x8]
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg Ragdoll_Limit_f_170
	mov eax, _cstring_null
Ragdoll_Limit_f_220:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm1, xmm0
	mov eax, [ebp-0x28]
	movss [eax+ebx*4+0x30], xmm1
	mov ebx, [eax+0x8]
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jg Ragdoll_Limit_f_180
	mov eax, _cstring_null
Ragdoll_Limit_f_210:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm1, xmm0
	mov eax, [ebp-0x28]
	movss [eax+ebx*4+0x3c], xmm1
	mov edx, [ebp-0x28]
	mov eax, [edx+0x8]
	movss xmm3, dword [edx+eax*4+0x30]
	movss xmm5, dword [_float_3_14159274]
	movaps xmm0, xmm3
	subss xmm0, xmm5
	pxor xmm2, xmm2
	movaps xmm1, xmm2
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm0, xmm1
	andnps xmm1, xmm5
	orps xmm1, xmm0
	movss xmm4, dword [_float__3_14159274]
	movaps xmm0, xmm4
	subss xmm0, xmm3
	movaps xmm3, xmm2
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm4
	orps xmm0, xmm1
	movss [edx+eax*4+0x30], xmm0
	movss xmm1, dword [edx+eax*4+0x3c]
	movaps xmm0, xmm1
	subss xmm0, xmm5
	movaps xmm3, xmm2
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	movaps xmm3, xmm1
	andps xmm3, xmm0
	andnps xmm0, xmm5
	orps xmm0, xmm3
	movaps xmm3, xmm4
	subss xmm3, xmm1
	cmpss xmm2, xmm3, 0x6
	andps xmm0, xmm2
	andnps xmm2, xmm4
	orps xmm2, xmm0
	movss [edx+eax*4+0x3c], xmm2
	add eax, 0x1
	mov [edx+0x8], eax
	xor esi, esi
	mov ebx, ragdollBodies
	jmp Ragdoll_Limit_f_190
Ragdoll_Limit_f_200:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz Ragdoll_Limit_f_10
Ragdoll_Limit_f_190:
	cmp dword [ebx+0x24], 0x1
	jle Ragdoll_Limit_f_200
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Ragdoll_BodyNewState
	jmp Ragdoll_Limit_f_200
Ragdoll_Limit_f_180:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp Ragdoll_Limit_f_210
Ragdoll_Limit_f_170:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp Ragdoll_Limit_f_220
Ragdoll_Limit_f_160:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp Ragdoll_Limit_f_230
	add [eax], al


;Ragdoll_Selfpair_f()
Ragdoll_Selfpair_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, cmd_args
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x3
	jle Ragdoll_Selfpair_f_10
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe Ragdoll_Selfpair_f_20
Ragdoll_Selfpair_f_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_Selfpair_f_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*4]
	sub ebx, eax
	shl ebx, 0x4
	add ebx, ragdollDefs
	mov eax, [ebx+0xe88]
	cmp eax, 0x20
	jg Ragdoll_Selfpair_f_30
	lea eax, [ebx+eax*2+0xe8c]
	mov [ebp-0x24], eax
	mov edi, eax
	mov dword [ebp-0x1c], 0x2
Ragdoll_Selfpair_f_60:
	mov eax, [ebp-0x1c]
	sub eax, 0x2
	mov [ebp-0x20], eax
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	cmp edx, [esi+eax*4+0x44]
	jl Ragdoll_Selfpair_f_40
	mov eax, _cstring_null
Ragdoll_Selfpair_f_90:
	mov [esp], eax
	call atoi
	mov [edi], al
	movzx eax, al
	cmp eax, [ebx+0x4]
	jg Ragdoll_Selfpair_f_50
	add dword [ebp-0x1c], 0x1
	add edi, 0x1
	cmp dword [ebp-0x1c], 0x4
	jnz Ragdoll_Selfpair_f_60
	add dword [ebx+0xe88], 0x1
	xor esi, esi
	mov ebx, ragdollBodies
	jmp Ragdoll_Selfpair_f_70
Ragdoll_Selfpair_f_80:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz Ragdoll_Selfpair_f_10
Ragdoll_Selfpair_f_70:
	cmp dword [ebx+0x24], 0x1
	jle Ragdoll_Selfpair_f_80
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Ragdoll_BodyNewState
	jmp Ragdoll_Selfpair_f_80
Ragdoll_Selfpair_f_30:
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_ragdoll_too_many4
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Selfpair_f_10
Ragdoll_Selfpair_f_40:
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+edx*4]
	jmp Ragdoll_Selfpair_f_90
Ragdoll_Selfpair_f_50:
	mov edx, [ebp-0x24]
	mov ecx, [ebp-0x20]
	movzx eax, byte [edx+ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_bad_self
	mov dword [esp], 0xe
	call Com_Printf
	jmp Ragdoll_Selfpair_f_10
	nop


;Ragdoll_Clear_f()
Ragdoll_Clear_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle Ragdoll_Clear_f_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	cmp eax, 0x1
	jbe Ragdoll_Clear_f_20
Ragdoll_Clear_f_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Ragdoll_Clear_f_20:
	lea edx, [eax+eax*4]
	shl edx, 0x4
	sub edx, eax
	lea eax, [edx*4]
	sub eax, edx
	shl eax, 0x4
	add eax, ragdollDefs
	mov dword [esp+0x8], 0xed0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor esi, esi
	mov ebx, ragdollBodies
	jmp Ragdoll_Clear_f_30
Ragdoll_Clear_f_40:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz Ragdoll_Clear_f_10
Ragdoll_Clear_f_30:
	cmp dword [ebx+0x24], 0x1
	jle Ragdoll_Clear_f_40
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Ragdoll_BodyNewState
	jmp Ragdoll_Clear_f_40
	nop


;Ragdoll_InitCommands()
Ragdoll_InitCommands:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Clear_f_VAR
	mov dword [esp+0x4], Ragdoll_Clear_f
	mov dword [esp], _cstring_ragdoll_clear
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE18Ragdoll_Bone_f_VAR
	mov dword [esp+0x4], Ragdoll_Bone_f
	mov dword [esp], _cstring_ragdoll_bone
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE26Ragdoll_BaseLerpBone_f_VAR
	mov dword [esp+0x4], Ragdoll_BaseLerpBone_f
	mov dword [esp], _cstring_ragdoll_baselerp
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE21Ragdoll_PinBone_f_VAR
	mov dword [esp+0x4], Ragdoll_PinBone_f
	mov dword [esp], _cstring_ragdoll_pin_bone
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Joint_f_VAR
	mov dword [esp+0x4], Ragdoll_Joint_f
	mov dword [esp], _cstring_ragdoll_joint
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Limit_f_VAR
	mov dword [esp+0x4], Ragdoll_Limit_f
	mov dword [esp], _cstring_ragdoll_limit
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE22Ragdoll_Selfpair_f_VAR
	mov dword [esp+0x4], Ragdoll_Selfpair_f
	mov dword [esp], _cstring_ragdoll_selfpair
	call Cmd_AddCommand
	leave
	ret


;Initialized global or static variables of ragdoll_cmds:
SECTION .data
axisTable: dd _cstring_x, 0x3f800000, 0x0, 0x0, _cstring_y, 0x0, 0x3f800000, 0x0, _cstring_z, 0x0, 0x0, 0x3f800000, _cstring_n, 0x0, 0x0, 0x0
jointNames: dd _cstring_none, _cstring_hinge, _cstring_swivel
geomNames: dd _cstring_n, _cstring_box, _cstring_brushmodel, _cstring_brush, _cstring_cyl, _cstring_cap, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of ragdoll_cmds:
SECTION .rdata


;Zero initialized global or static variables of ragdoll_cmds:
SECTION .bss
_ZZ20Ragdoll_InitCommandsvE22Ragdoll_Selfpair_f_VAR: resb 0x14
_ZZ20Ragdoll_InitCommandsvE19Ragdoll_Limit_f_VAR: resb 0x14
_ZZ20Ragdoll_InitCommandsvE19Ragdoll_Joint_f_VAR: resb 0x14
_ZZ20Ragdoll_InitCommandsvE21Ragdoll_PinBone_f_VAR: resb 0x14
_ZZ20Ragdoll_InitCommandsvE26Ragdoll_BaseLerpBone_f_VAR: resb 0x14
_ZZ20Ragdoll_InitCommandsvE18Ragdoll_Bone_f_VAR: resb 0x14
_ZZ20Ragdoll_InitCommandsvE19Ragdoll_Clear_f_VAR: resb 0x88


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_ragdoll_unknown_:		db "Ragdoll: Unknown bone geom type %s",0ah,0
_cstring_ragdoll_too_many:		db "Ragdoll: Too many ragdoll bones, max %d",0ah,0
_cstring_ragdoll_missing_:		db "Ragdoll: Missing geom type arg %d",0ah,0
_cstring_ragdoll_child_bo:		db "Ragdoll: Child bones must come after parent bones: %d",0ah,0
_cstring_ragdoll_bone_d_v:		db "Ragdoll: Bone %d validation failed",0ah,0
_cstring_ragdoll_too_many1:		db "Ragdoll: Too many base pose lerping bones, max %d",0ah,0
_cstring_ragdoll_couldnt_:		db "Ragdoll: Couldn",27h,"t find pinned bone named %s",0ah,0
_cstring_ragdoll_pinned_b:		db "Ragdoll: Pinned bone has invalid parent index %d",0ah,0
_cstring_ragdoll_unknown_1:		db "Ragdoll: Unknown joint type %s",0ah,0
_cstring_ragdoll_too_many2:		db "Ragdoll: Too many ragdoll joints, max %d",0ah,0
_cstring_ragdoll_joint_re:		db "Ragdoll: Joint referenced nonexistent bone",0ah,0
_cstring_ragdoll_joint_re1:		db "Ragdoll: Joint referenced bone with no parent (0)",0ah,0
_cstring_ragdoll_missing_1:		db "Ragdoll: Missing joint type arg %d",0ah,0
_cstring_ragdoll_unknown_2:		db "Ragdoll: Unknown bone axis %s",0ah,0
_cstring_ragdoll_angular_:		db "Ragdoll: Angular limit added to nonexistent joint %d",0ah,0
_cstring_ragdoll_too_many3:		db "Ragdoll: Too many limit axes for joint %d, max %d",0ah,0
_cstring_ragdoll_missing_2:		db "Ragdoll: Missing axis arg %d",0ah,0
_cstring_ragdoll_too_many4:		db "Ragdoll: Too many ragdoll self collision pairs, max %d",0ah,0
_cstring_ragdoll_bad_self:		db "Ragdoll: Bad self collision pair bone %d",0ah,0
_cstring_ragdoll_clear:		db "ragdoll_clear",0
_cstring_ragdoll_bone:		db "ragdoll_bone",0
_cstring_ragdoll_baselerp:		db "ragdoll_baselerp_bone",0
_cstring_ragdoll_pin_bone:		db "ragdoll_pin_bone",0
_cstring_ragdoll_joint:		db "ragdoll_joint",0
_cstring_ragdoll_limit:		db "ragdoll_limit",0
_cstring_ragdoll_selfpair:		db "ragdoll_selfpair",0
_cstring_x:		db "x",0
_cstring_y:		db "y",0
_cstring_z:		db "z",0
_cstring_n:		db "n",0
_cstring_none:		db "none",0
_cstring_hinge:		db "hinge",0
_cstring_swivel:		db "swivel",0
_cstring_box:		db "box",0
_cstring_brushmodel:		db "brushmodel",0
_cstring_brush:		db "brush",0
_cstring_cyl:		db "cyl",0
_cstring_cap:		db "cap",0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_3_14159274:		dd 0x40490fdb	; 3.14159
_float__3_14159274:		dd 0xc0490fdb	; -3.14159

