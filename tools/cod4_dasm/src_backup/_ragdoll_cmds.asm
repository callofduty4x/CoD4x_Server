;Imports of ragdoll_cmds:
	extern cmd_args
	extern atoi
	extern ragdollDefs
	extern _Z10I_strncpyzPcPKci
	extern atof
	extern _Z10I_strnicmpPKcS0_i
	extern _Z10Com_PrintfiPKcz
	extern _Z30Ragdoll_ValidatePrecalcBoneDefP10RagdollDefP7BoneDef
	extern ragdollBodies
	extern _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	extern ragdoll_baselerp_time
	extern _Z13SL_FindStringPKc
	extern _Z9I_stricmpPKcS0_
	extern memset
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s

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
	global _Z14Ragdoll_Bone_fv
	global _Z22Ragdoll_BaseLerpBone_fv
	global _Z17Ragdoll_PinBone_fv
	global _Z15Ragdoll_Joint_fv
	global _Z15Ragdoll_Limit_fv
	global _Z18Ragdoll_Selfpair_fv
	global _Z15Ragdoll_Clear_fv
	global _Z20Ragdoll_InitCommandsv


SECTION .text


;Ragdoll_Bone_f()
_Z14Ragdoll_Bone_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, cmd_args
	mov eax, [edi]
	cmp dword [edi+eax*4+0x44], 0xa
	jle _Z14Ragdoll_Bone_fv_10
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe _Z14Ragdoll_Bone_fv_20
_Z14Ragdoll_Bone_fv_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Ragdoll_Bone_fv_20:
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
	jg _Z14Ragdoll_Bone_fv_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov edx, [ebp-0x28]
	lea eax, [edx+eax*4+0x8]
	mov [ebp-0x24], eax
	mov esi, eax
	mov dword [ebp-0x1c], 0x2
	mov ebx, eax
_Z14Ragdoll_Bone_fv_50:
	mov dword [esi+0x28], 0x0
	mov eax, [edi]
	mov edx, [ebp-0x1c]
	cmp edx, [edi+eax*4+0x44]
	jl _Z14Ragdoll_Bone_fv_40
	mov eax, _cstring_null
_Z14Ragdoll_Bone_fv_180:
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	add esi, 0x4
	add dword [ebp-0x1c], 0x1
	add ebx, 0x14
	cmp dword [ebp-0x1c], 0x4
	jnz _Z14Ragdoll_Bone_fv_50
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg _Z14Ragdoll_Bone_fv_60
	mov eax, _cstring_null
_Z14Ragdoll_Bone_fv_210:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x48]
	cvtsd2ss xmm0, [ebp-0x48]
	mov edi, [ebp-0x24]
	movss [edi+0x30], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg _Z14Ragdoll_Bone_fv_70
	mov eax, _cstring_null
_Z14Ragdoll_Bone_fv_230:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	cvtsd2ss xmm0, [ebp-0x40]
	mov eax, [ebp-0x24]
	movss [eax+0x38], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jg _Z14Ragdoll_Bone_fv_80
	mov eax, _cstring_null
_Z14Ragdoll_Bone_fv_220:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	mov eax, [ebp-0x24]
	movss [eax+0x3c], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x7
	jg _Z14Ragdoll_Bone_fv_90
	mov eax, _cstring_null
_Z14Ragdoll_Bone_fv_200:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	mov eax, [ebp-0x24]
	movss [eax+0x40], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x8
	jg _Z14Ragdoll_Bone_fv_100
	mov eax, _cstring_null
_Z14Ragdoll_Bone_fv_190:
	mov [esp], eax
	call atoi
	cmp eax, 0xffffffff
	jz _Z14Ragdoll_Bone_fv_110
	mov edx, [ebp-0x28]
	cmp eax, [edx+0x4]
	jge _Z14Ragdoll_Bone_fv_120
	mov edi, [ebp-0x24]
	mov [edi+0x44], eax
_Z14Ragdoll_Bone_fv_260:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x9
	jg _Z14Ragdoll_Bone_fv_130
	mov eax, _cstring_null
_Z14Ragdoll_Bone_fv_240:
	mov [esp], eax
	call atoi
	test eax, eax
	mov eax, [ebp-0x24]
	setnz byte [eax+0x34]
	mov edx, cmd_args
	mov ecx, [edx]
	mov eax, [edx+ecx*4+0x44]
	cmp eax, 0x9
	jle _Z14Ragdoll_Bone_fv_140
	cmp eax, 0xa
	jg _Z14Ragdoll_Bone_fv_150
	mov dword [ebp-0x20], _cstring_null
_Z14Ragdoll_Bone_fv_250:
	xor esi, esi
	mov ebx, geomNames
_Z14Ragdoll_Bone_fv_170:
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
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z14Ragdoll_Bone_fv_160
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x6
	jnz _Z14Ragdoll_Bone_fv_170
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ragdoll_unknown_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z14Ragdoll_Bone_fv_10
_Z14Ragdoll_Bone_fv_30:
	mov dword [esp+0x8], 0xe
	mov dword [esp+0x4], _cstring_ragdoll_too_many
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z14Ragdoll_Bone_fv_10
_Z14Ragdoll_Bone_fv_40:
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+edx*4]
	jmp _Z14Ragdoll_Bone_fv_180
_Z14Ragdoll_Bone_fv_100:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x20]
	jmp _Z14Ragdoll_Bone_fv_190
_Z14Ragdoll_Bone_fv_90:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x1c]
	jmp _Z14Ragdoll_Bone_fv_200
_Z14Ragdoll_Bone_fv_60:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z14Ragdoll_Bone_fv_210
_Z14Ragdoll_Bone_fv_80:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp _Z14Ragdoll_Bone_fv_220
_Z14Ragdoll_Bone_fv_70:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp _Z14Ragdoll_Bone_fv_230
_Z14Ragdoll_Bone_fv_130:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x24]
	jmp _Z14Ragdoll_Bone_fv_240
_Z14Ragdoll_Bone_fv_150:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x28]
	mov [ebp-0x20], eax
	jmp _Z14Ragdoll_Bone_fv_250
_Z14Ragdoll_Bone_fv_110:
	mov eax, [ebp-0x24]
	mov dword [eax+0x44], 0xffffffff
	jmp _Z14Ragdoll_Bone_fv_260
_Z14Ragdoll_Bone_fv_140:
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_ragdoll_missing_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z14Ragdoll_Bone_fv_10
_Z14Ragdoll_Bone_fv_120:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_child_bo
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z14Ragdoll_Bone_fv_10
_Z14Ragdoll_Bone_fv_160:
	mov edi, [ebp-0x24]
	mov [edi+0x48], esi
	mov [esp+0x4], edi
	mov eax, [ebp-0x28]
	mov [esp], eax
	call _Z30Ragdoll_ValidatePrecalcBoneDefP10RagdollDefP7BoneDef
	test al, al
	jz _Z14Ragdoll_Bone_fv_270
	mov edi, [ebp-0x28]
	add dword [edi+0x4], 0x1
	xor ebx, ebx
	mov edi, ragdollBodies
	jmp _Z14Ragdoll_Bone_fv_280
_Z14Ragdoll_Bone_fv_290:
	add ebx, 0x1
	add edi, 0x9d4
	cmp ebx, 0x20
	jz _Z14Ragdoll_Bone_fv_10
_Z14Ragdoll_Bone_fv_280:
	cmp dword [edi+0x24], 0x1
	jle _Z14Ragdoll_Bone_fv_290
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	jmp _Z14Ragdoll_Bone_fv_290
_Z14Ragdoll_Bone_fv_270:
	mov edx, [ebp-0x28]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_bone_d_v
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z14Ragdoll_Bone_fv_10
	nop


;Ragdoll_BaseLerpBone_f()
_Z22Ragdoll_BaseLerpBone_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jle _Z22Ragdoll_BaseLerpBone_fv_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe _Z22Ragdoll_BaseLerpBone_fv_20
_Z22Ragdoll_BaseLerpBone_fv_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Ragdoll_BaseLerpBone_fv_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea esi, [eax*4]
	sub esi, eax
	shl esi, 0x4
	add esi, ragdollDefs
	mov eax, [esi+0x430]
	cmp eax, 0x8
	jg _Z22Ragdoll_BaseLerpBone_fv_30
	shl eax, 0x5
	lea edi, [eax+esi+0x434]
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z22Ragdoll_BaseLerpBone_fv_40
	mov eax, _cstring_null
_Z22Ragdoll_BaseLerpBone_fv_120:
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov dword [edi+0x14], 0x0
	mov ecx, cmd_args
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x2
	jle _Z22Ragdoll_BaseLerpBone_fv_50
	cmp eax, 0x3
	jg _Z22Ragdoll_BaseLerpBone_fv_60
	mov eax, _cstring_null
_Z22Ragdoll_BaseLerpBone_fv_140:
	mov [esp], eax
	call atoi
	mov edx, eax
	mov [edi+0x1c], eax
	cmp eax, 0x176f
	jle _Z22Ragdoll_BaseLerpBone_fv_70
	mov edx, 0x1770
_Z22Ragdoll_BaseLerpBone_fv_150:
	mov [edi+0x1c], edx
	mov ecx, cmd_args
	jmp _Z22Ragdoll_BaseLerpBone_fv_80
_Z22Ragdoll_BaseLerpBone_fv_30:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_ragdoll_too_many1
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z22Ragdoll_BaseLerpBone_fv_10
_Z22Ragdoll_BaseLerpBone_fv_50:
	mov eax, ragdoll_baselerp_time
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [edi+0x1c], eax
_Z22Ragdoll_BaseLerpBone_fv_80:
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x3
	jle _Z22Ragdoll_BaseLerpBone_fv_90
	cmp eax, 0x4
	jg _Z22Ragdoll_BaseLerpBone_fv_100
	mov eax, _cstring_null
_Z22Ragdoll_BaseLerpBone_fv_130:
	mov [esp], eax
	call atoi
	mov [edi+0x18], eax
	jmp _Z22Ragdoll_BaseLerpBone_fv_110
_Z22Ragdoll_BaseLerpBone_fv_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22Ragdoll_BaseLerpBone_fv_120
_Z22Ragdoll_BaseLerpBone_fv_90:
	mov dword [edi+0x18], 0x0
_Z22Ragdoll_BaseLerpBone_fv_110:
	add dword [esi+0x430], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Ragdoll_BaseLerpBone_fv_100:
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z22Ragdoll_BaseLerpBone_fv_130
_Z22Ragdoll_BaseLerpBone_fv_60:
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp _Z22Ragdoll_BaseLerpBone_fv_140
_Z22Ragdoll_BaseLerpBone_fv_70:
	cmp eax, 0x64
	mov eax, 0x64
	cmovle edx, eax
	jmp _Z22Ragdoll_BaseLerpBone_fv_150


;Ragdoll_PinBone_f()
_Z17Ragdoll_PinBone_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, cmd_args
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x2
	jle _Z17Ragdoll_PinBone_fv_10
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe _Z17Ragdoll_PinBone_fv_20
_Z17Ragdoll_PinBone_fv_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Ragdoll_PinBone_fv_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*4]
	sub ebx, eax
	shl ebx, 0x4
	add ebx, ragdollDefs
	mov eax, [ebx+0x430]
	cmp eax, 0x8
	jg _Z17Ragdoll_PinBone_fv_30
	shl eax, 0x5
	lea edi, [eax+ebx+0x434]
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x2
	jg _Z17Ragdoll_PinBone_fv_40
	mov esi, _cstring_null
_Z17Ragdoll_PinBone_fv_80:
	mov [esp], esi
	call _Z13SL_FindStringPKc
	mov [edi+0x14], eax
	test eax, eax
	jz _Z17Ragdoll_PinBone_fv_50
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg _Z17Ragdoll_PinBone_fv_60
	mov eax, _cstring_null
_Z17Ragdoll_PinBone_fv_90:
	mov [esp], eax
	call atoi
	mov [edi+0x18], eax
	cmp eax, [ebx+0x4]
	jae _Z17Ragdoll_PinBone_fv_70
	mov dword [edi+0x1c], 0x0
	add dword [ebx+0x430], 0x1
	jmp _Z17Ragdoll_PinBone_fv_10
_Z17Ragdoll_PinBone_fv_30:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_ragdoll_too_many1
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z17Ragdoll_PinBone_fv_10
_Z17Ragdoll_PinBone_fv_40:
	mov eax, [esi+eax*4+0x64]
	mov esi, [eax+0x8]
	jmp _Z17Ragdoll_PinBone_fv_80
_Z17Ragdoll_PinBone_fv_60:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp _Z17Ragdoll_PinBone_fv_90
_Z17Ragdoll_PinBone_fv_50:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_ragdoll_couldnt_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z17Ragdoll_PinBone_fv_10
_Z17Ragdoll_PinBone_fv_70:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_pinned_b
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z17Ragdoll_PinBone_fv_10
	nop


;Ragdoll_Joint_f()
_Z15Ragdoll_Joint_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jle _Z15Ragdoll_Joint_fv_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe _Z15Ragdoll_Joint_fv_20
_Z15Ragdoll_Joint_fv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Ragdoll_Joint_fv_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea esi, [eax*4]
	sub esi, eax
	shl esi, 0x4
	add esi, ragdollDefs
	mov edx, [esi+0x554]
	cmp edx, 0x1b
	jg _Z15Ragdoll_Joint_fv_30
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [esi+eax*4+0x558]
	mov [ebp-0x20], eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z15Ragdoll_Joint_fv_40
	mov eax, _cstring_null
_Z15Ragdoll_Joint_fv_110:
	mov [esp], eax
	call atoi
	mov edx, eax
	mov ecx, [ebp-0x20]
	mov [ecx], al
	movzx eax, al
	cmp eax, [esi+0x4]
	jge _Z15Ragdoll_Joint_fv_50
	test dl, dl
	jz _Z15Ragdoll_Joint_fv_60
	mov edx, cmd_args
	mov ecx, [edx]
	mov eax, [edx+ecx*4+0x44]
	cmp eax, 0x2
	jle _Z15Ragdoll_Joint_fv_70
	cmp eax, 0x3
	jg _Z15Ragdoll_Joint_fv_80
	mov dword [ebp-0x1c], _cstring_null
_Z15Ragdoll_Joint_fv_120:
	xor edi, edi
	mov ebx, jointNames
_Z15Ragdoll_Joint_fv_100:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z15Ragdoll_Joint_fv_90
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz _Z15Ragdoll_Joint_fv_100
	mov ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_ragdoll_unknown_1
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Joint_fv_10
_Z15Ragdoll_Joint_fv_30:
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_ragdoll_too_many2
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Joint_fv_10
_Z15Ragdoll_Joint_fv_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z15Ragdoll_Joint_fv_110
_Z15Ragdoll_Joint_fv_80:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	jmp _Z15Ragdoll_Joint_fv_120
_Z15Ragdoll_Joint_fv_50:
	mov dword [esp+0x4], _cstring_ragdoll_joint_re
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Joint_fv_10
_Z15Ragdoll_Joint_fv_60:
	mov dword [esp+0x4], _cstring_ragdoll_joint_re1
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Joint_fv_10
_Z15Ragdoll_Joint_fv_70:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_ragdoll_missing_1
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Joint_fv_10
_Z15Ragdoll_Joint_fv_90:
	mov eax, [ebp-0x20]
	mov [eax+0x4], edi
	add dword [esi+0x554], 0x1
	xor esi, esi
	mov ebx, ragdollBodies
	jmp _Z15Ragdoll_Joint_fv_130
_Z15Ragdoll_Joint_fv_140:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz _Z15Ragdoll_Joint_fv_10
_Z15Ragdoll_Joint_fv_130:
	cmp dword [ebx+0x24], 0x1
	jle _Z15Ragdoll_Joint_fv_140
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	jmp _Z15Ragdoll_Joint_fv_140


;Ragdoll_Limit_f()
_Z15Ragdoll_Limit_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, cmd_args
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x6
	jle _Z15Ragdoll_Limit_fv_10
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe _Z15Ragdoll_Limit_fv_20
_Z15Ragdoll_Limit_fv_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Ragdoll_Limit_fv_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*4]
	sub ebx, eax
	shl ebx, 0x4
	add ebx, ragdollDefs
	cmp dword [ebx+0x554], 0x1b
	jg _Z15Ragdoll_Limit_fv_30
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x2
	jg _Z15Ragdoll_Limit_fv_40
	mov eax, _cstring_null
_Z15Ragdoll_Limit_fv_120:
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, [ebx+0x554]
	jge _Z15Ragdoll_Limit_fv_50
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea ebx, [ebx+eax*4+0x558]
	mov [ebp-0x28], ebx
	mov eax, [ebx+0x8]
	cmp eax, 0x2
	jg _Z15Ragdoll_Limit_fv_60
	lea eax, [eax+eax*2]
	lea ebx, [ebx+eax*4]
	lea ecx, [ebx+0xc]
	mov [ebp-0x1c], ecx
	mov edx, cmd_args
	mov ecx, [edx]
	mov eax, [edx+ecx*4+0x44]
	cmp eax, 0x2
	jle _Z15Ragdoll_Limit_fv_70
	cmp eax, 0x3
	jg _Z15Ragdoll_Limit_fv_80
	mov dword [ebp-0x24], _cstring_null
	mov ecx, [ebp-0x24]
_Z15Ragdoll_Limit_fv_130:
	cmp byte [ecx], 0x2d
	jz _Z15Ragdoll_Limit_fv_90
	mov byte [ebp-0x1d], 0x0
_Z15Ragdoll_Limit_fv_140:
	xor esi, esi
	mov ebx, axisTable
	mov edi, axisTable
_Z15Ragdoll_Limit_fv_110:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z15Ragdoll_Limit_fv_100
	add esi, 0x1
	add edi, 0x10
	add ebx, 0x10
	cmp esi, 0x4
	jnz _Z15Ragdoll_Limit_fv_110
	mov ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_ragdoll_unknown_2
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Limit_fv_10
_Z15Ragdoll_Limit_fv_30:
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_ragdoll_too_many2
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Limit_fv_10
_Z15Ragdoll_Limit_fv_40:
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z15Ragdoll_Limit_fv_120
_Z15Ragdoll_Limit_fv_80:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	mov ecx, eax
	jmp _Z15Ragdoll_Limit_fv_130
_Z15Ragdoll_Limit_fv_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_angular_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Limit_fv_10
_Z15Ragdoll_Limit_fv_60:
	mov dword [esp+0xc], 0x3
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ragdoll_too_many3
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15Ragdoll_Limit_fv_10
_Z15Ragdoll_Limit_fv_70:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_ragdoll_missing_2
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	mov [ebx+0xc], eax
	mov edx, [ebp-0x1c]
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	jmp _Z15Ragdoll_Limit_fv_10
_Z15Ragdoll_Limit_fv_90:
	add dword [ebp-0x24], 0x1
	mov byte [ebp-0x1d], 0x1
	jmp _Z15Ragdoll_Limit_fv_140
_Z15Ragdoll_Limit_fv_100:
	movss xmm0, dword [edi+0x4]
	mov edx, [ebp-0x1c]
	movss [edx], xmm0
	movss xmm1, dword [edi+0x8]
	movss [edx+0x4], xmm1
	movss xmm2, dword [edi+0xc]
	movss [edx+0x8], xmm2
	cmp byte [ebp-0x1d], 0x0
	jz _Z15Ragdoll_Limit_fv_150
	xorps xmm0, [_data16_80000000]
	movss [edx], xmm0
	xorps xmm1, [_data16_80000000]
	movss [edx+0x4], xmm1
	xorps xmm2, [_data16_80000000]
	movss [edx+0x8], xmm2
_Z15Ragdoll_Limit_fv_150:
	mov eax, [ebp-0x28]
	mov ebx, [eax+0x8]
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg _Z15Ragdoll_Limit_fv_160
	mov eax, _cstring_null
_Z15Ragdoll_Limit_fv_230:
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
	jg _Z15Ragdoll_Limit_fv_170
	mov eax, _cstring_null
_Z15Ragdoll_Limit_fv_220:
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
	jg _Z15Ragdoll_Limit_fv_180
	mov eax, _cstring_null
_Z15Ragdoll_Limit_fv_210:
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
	jmp _Z15Ragdoll_Limit_fv_190
_Z15Ragdoll_Limit_fv_200:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz _Z15Ragdoll_Limit_fv_10
_Z15Ragdoll_Limit_fv_190:
	cmp dword [ebx+0x24], 0x1
	jle _Z15Ragdoll_Limit_fv_200
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	jmp _Z15Ragdoll_Limit_fv_200
_Z15Ragdoll_Limit_fv_180:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp _Z15Ragdoll_Limit_fv_210
_Z15Ragdoll_Limit_fv_170:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp _Z15Ragdoll_Limit_fv_220
_Z15Ragdoll_Limit_fv_160:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z15Ragdoll_Limit_fv_230
	add [eax], al


;Ragdoll_Selfpair_f()
_Z18Ragdoll_Selfpair_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, cmd_args
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x3
	jle _Z18Ragdoll_Selfpair_fv_10
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, 0x1
	jbe _Z18Ragdoll_Selfpair_fv_20
_Z18Ragdoll_Selfpair_fv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Ragdoll_Selfpair_fv_20:
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*4]
	sub ebx, eax
	shl ebx, 0x4
	add ebx, ragdollDefs
	mov eax, [ebx+0xe88]
	cmp eax, 0x20
	jg _Z18Ragdoll_Selfpair_fv_30
	lea eax, [ebx+eax*2+0xe8c]
	mov [ebp-0x24], eax
	mov edi, eax
	mov dword [ebp-0x1c], 0x2
_Z18Ragdoll_Selfpair_fv_60:
	mov eax, [ebp-0x1c]
	sub eax, 0x2
	mov [ebp-0x20], eax
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	cmp edx, [esi+eax*4+0x44]
	jl _Z18Ragdoll_Selfpair_fv_40
	mov eax, _cstring_null
_Z18Ragdoll_Selfpair_fv_90:
	mov [esp], eax
	call atoi
	mov [edi], al
	movzx eax, al
	cmp eax, [ebx+0x4]
	jg _Z18Ragdoll_Selfpair_fv_50
	add dword [ebp-0x1c], 0x1
	add edi, 0x1
	cmp dword [ebp-0x1c], 0x4
	jnz _Z18Ragdoll_Selfpair_fv_60
	add dword [ebx+0xe88], 0x1
	xor esi, esi
	mov ebx, ragdollBodies
	jmp _Z18Ragdoll_Selfpair_fv_70
_Z18Ragdoll_Selfpair_fv_80:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz _Z18Ragdoll_Selfpair_fv_10
_Z18Ragdoll_Selfpair_fv_70:
	cmp dword [ebx+0x24], 0x1
	jle _Z18Ragdoll_Selfpair_fv_80
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	jmp _Z18Ragdoll_Selfpair_fv_80
_Z18Ragdoll_Selfpair_fv_30:
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_ragdoll_too_many4
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z18Ragdoll_Selfpair_fv_10
_Z18Ragdoll_Selfpair_fv_40:
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax+edx*4]
	jmp _Z18Ragdoll_Selfpair_fv_90
_Z18Ragdoll_Selfpair_fv_50:
	mov edx, [ebp-0x24]
	mov ecx, [ebp-0x20]
	movzx eax, byte [edx+ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_bad_self
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z18Ragdoll_Selfpair_fv_10
	nop


;Ragdoll_Clear_f()
_Z15Ragdoll_Clear_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z15Ragdoll_Clear_fv_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	cmp eax, 0x1
	jbe _Z15Ragdoll_Clear_fv_20
_Z15Ragdoll_Clear_fv_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15Ragdoll_Clear_fv_20:
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
	jmp _Z15Ragdoll_Clear_fv_30
_Z15Ragdoll_Clear_fv_40:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz _Z15Ragdoll_Clear_fv_10
_Z15Ragdoll_Clear_fv_30:
	cmp dword [ebx+0x24], 0x1
	jle _Z15Ragdoll_Clear_fv_40
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	jmp _Z15Ragdoll_Clear_fv_40
	nop


;Ragdoll_InitCommands()
_Z20Ragdoll_InitCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Clear_f_VAR
	mov dword [esp+0x4], _Z15Ragdoll_Clear_fv
	mov dword [esp], _cstring_ragdoll_clear
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE18Ragdoll_Bone_f_VAR
	mov dword [esp+0x4], _Z14Ragdoll_Bone_fv
	mov dword [esp], _cstring_ragdoll_bone
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE26Ragdoll_BaseLerpBone_f_VAR
	mov dword [esp+0x4], _Z22Ragdoll_BaseLerpBone_fv
	mov dword [esp], _cstring_ragdoll_baselerp
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE21Ragdoll_PinBone_f_VAR
	mov dword [esp+0x4], _Z17Ragdoll_PinBone_fv
	mov dword [esp], _cstring_ragdoll_pin_bone
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Joint_f_VAR
	mov dword [esp+0x4], _Z15Ragdoll_Joint_fv
	mov dword [esp], _cstring_ragdoll_joint
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE19Ragdoll_Limit_f_VAR
	mov dword [esp+0x4], _Z15Ragdoll_Limit_fv
	mov dword [esp], _cstring_ragdoll_limit
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ20Ragdoll_InitCommandsvE22Ragdoll_Selfpair_f_VAR
	mov dword [esp+0x4], _Z18Ragdoll_Selfpair_fv
	mov dword [esp], _cstring_ragdoll_selfpair
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
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

