;Imports of ragdoll:
	extern _Z9I_stricmpPKcS0_
	extern _Z13SL_FindStringPKc
	extern memset
	extern _Z11Dvar_SetIntPK6dvar_si
	extern _Z18Ragdoll_HandleBodyi
	extern _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	extern _Z17Com_GetClientDObjii
	extern _Z10CG_GetPoseii
	extern _Z20Ragdoll_InitCommandsv
	extern _Z31CL_ControllerIndexFromClientNumi
	extern _Z24Cmd_ExecuteSingleCommandiiPKc
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	extern _Z10Com_PrintfiPKcz

;Exports of ragdoll:
	global ragdollFirstInit
	global _Z15Ragdoll_BindDefi
	global _Z12Ragdoll_Initv
	global _Z14Ragdoll_Removei
	global _Z15Ragdoll_BodyDefP11RagdollBody
	global _Z16Ragdoll_BodyDObjP11RagdollBody
	global _Z16Ragdoll_BodyPoseP11RagdollBody
	global _Z16Ragdoll_Registerv
	global _Z16Ragdoll_Shutdownv
	global _Z17Ragdoll_DebugDrawv
	global _Z17Ragdoll_InitDvarsv
	global _Z21Ragdoll_GetRootOriginiPf
	global _Z26Ragdoll_CountPhysicsBodiesv
	global _Z28Ragdoll_CreateRagdollForDObjiiihh
	global ragdoll_enable
	global ragdollBodies
	global ragdollDefs
	global ragdollInited
	global ragdoll_baselerp_time
	global ragdoll_bullet_force
	global ragdoll_bullet_upbias
	global ragdoll_debug
	global ragdoll_dump_anims
	global ragdoll_explode_force
	global ragdoll_explode_upbias
	global ragdoll_fps
	global ragdoll_jitter_scale
	global ragdoll_jointlerp_time
	global ragdoll_max_life
	global ragdoll_max_simulating
	global ragdoll_rotvel_scale
	global ragdoll_self_collision_scale


SECTION .text


;Ragdoll_BindDef(int)
_Z15Ragdoll_BindDefi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	lea edx, [eax+eax*4]
	shl edx, 0x4
	sub edx, eax
	lea eax, [edx*4]
	sub eax, edx
	shl eax, 0x4
	add eax, ragdollDefs
	mov [ebp-0x28], eax
	mov edx, eax
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z15Ragdoll_BindDefi_10
	cmp byte [edx+0x1], 0x0
	jnz _Z15Ragdoll_BindDefi_20
	mov edx, [ebp-0x28]
	add edx, 0x8
	mov [ebp-0x20], edx
	test eax, eax
	jle _Z15Ragdoll_BindDefi_30
	mov [ebp-0x30], edx
	mov dword [ebp-0x2c], 0x0
	mov esi, edx
_Z15Ragdoll_BindDefi_70:
	xor edi, edi
	mov ebx, esi
_Z15Ragdoll_BindDefi_50:
	mov dword [esp+0x4], _cstring_none
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15Ragdoll_BindDefi_40
	mov dword [esi+0x28], 0x0
_Z15Ragdoll_BindDefi_90:
	add edi, 0x1
	add ebx, 0x14
	add esi, 0x4
	cmp edi, 0x2
	jnz _Z15Ragdoll_BindDefi_50
	add dword [ebp-0x2c], 0x1
	add dword [ebp-0x30], 0x4c
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	cmp edx, [eax+0x4]
	jge _Z15Ragdoll_BindDefi_60
	mov esi, [ebp-0x30]
	jmp _Z15Ragdoll_BindDefi_70
_Z15Ragdoll_BindDefi_30:
	mov ebx, [ebp-0x28]
	add ebx, 0x434
	mov eax, [ebp-0x28]
	mov edx, [eax+0x430]
	test edx, edx
	jg _Z15Ragdoll_BindDefi_80
_Z15Ragdoll_BindDefi_100:
	mov edx, eax
	mov byte [edx+0x1], 0x1
_Z15Ragdoll_BindDefi_20:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Ragdoll_BindDefi_40:
	mov [esp], ebx
	call _Z13SL_FindStringPKc
	mov [esi+0x28], eax
	test eax, eax
	jnz _Z15Ragdoll_BindDefi_90
_Z15Ragdoll_BindDefi_10:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Ragdoll_BindDefi_60:
	mov ebx, eax
	add ebx, 0x434
	mov eax, [ebp-0x28]
	mov edx, [eax+0x430]
	test edx, edx
	jle _Z15Ragdoll_BindDefi_100
_Z15Ragdoll_BindDefi_80:
	mov dword [ebp-0x1c], 0x0
_Z15Ragdoll_BindDefi_150:
	mov [esp], ebx
	call _Z13SL_FindStringPKc
	mov ecx, eax
	mov [ebx+0x14], eax
	test eax, eax
	jz _Z15Ragdoll_BindDefi_10
	lea edx, [ebx+0x18]
	mov [ebp-0x24], edx
	mov eax, [ebx+0x18]
	test eax, eax
	jnz _Z15Ragdoll_BindDefi_110
	mov eax, [ebp-0x28]
	mov edi, [eax+0x4]
	test edi, edi
	jle _Z15Ragdoll_BindDefi_120
	mov edx, [ebp-0x20]
	cmp ecx, [edx+0x2c]
	jz _Z15Ragdoll_BindDefi_130
	add edx, 0x74
	xor esi, esi
_Z15Ragdoll_BindDefi_140:
	add esi, 0x1
	cmp edi, esi
	jz _Z15Ragdoll_BindDefi_10
	mov eax, [edx+0x4]
	add edx, 0x4c
	cmp eax, ecx
	jnz _Z15Ragdoll_BindDefi_140
	mov eax, esi
_Z15Ragdoll_BindDefi_180:
	mov edx, [ebp-0x24]
	mov [edx], eax
_Z15Ragdoll_BindDefi_170:
	mov eax, [ebp-0x28]
	cmp [eax+0x4], esi
	jz _Z15Ragdoll_BindDefi_10
	mov edx, eax
_Z15Ragdoll_BindDefi_160:
	add dword [ebp-0x1c], 0x1
	add ebx, 0x20
	mov eax, [ebp-0x1c]
	cmp eax, [edx+0x430]
	jl _Z15Ragdoll_BindDefi_150
	mov byte [edx+0x1], 0x1
	jmp _Z15Ragdoll_BindDefi_20
_Z15Ragdoll_BindDefi_110:
	mov edx, [ebp-0x28]
	jmp _Z15Ragdoll_BindDefi_160
_Z15Ragdoll_BindDefi_120:
	xor esi, esi
	jmp _Z15Ragdoll_BindDefi_170
_Z15Ragdoll_BindDefi_130:
	xor esi, esi
	xor eax, eax
	jmp _Z15Ragdoll_BindDefi_180
	nop


;Ragdoll_Init()
_Z12Ragdoll_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [ragdollInited], 0x0
	jnz _Z12Ragdoll_Initv_10
	mov eax, [ragdoll_enable]
	cmp byte [eax+0xc], 0x0
	jnz _Z12Ragdoll_Initv_20
_Z12Ragdoll_Initv_40:
	mov dword [esp+0x8], 0x13a80
	mov dword [esp+0x4], 0x0
	mov dword [esp], ragdollBodies
	call memset
	mov eax, ragdollDefs+0x1
_Z12Ragdoll_Initv_30:
	mov byte [eax], 0x0
	mov byte [eax-0x1], 0x0
	add eax, 0xed0
	cmp eax, ragdoll_dump_anims+0x1
	jnz _Z12Ragdoll_Initv_30
	mov byte [ragdollInited], 0x1
_Z12Ragdoll_Initv_10:
	leave
	ret
_Z12Ragdoll_Initv_20:
	mov eax, [ragdoll_max_simulating]
	cmp dword [eax+0xc], 0x7
	jg _Z12Ragdoll_Initv_40
	mov dword [esp+0x4], 0x8
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
	jmp _Z12Ragdoll_Initv_40


;Ragdoll_Remove(int)
_Z14Ragdoll_Removei:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z18Ragdoll_HandleBodyi
	mov edx, eax
	mov eax, [eax]
	cmp eax, 0x1
	jz _Z14Ragdoll_Removei_10
	sub eax, 0x1
	mov [edx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z14Ragdoll_Removei_10:
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	mov [esp], ebx
	call _Z18Ragdoll_HandleBodyi
	mov ebx, eax
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	mov dword [ebx], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Ragdoll_BodyDef(RagdollBody*)
_Z15Ragdoll_BodyDefP11RagdollBody:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	lea edx, [eax+eax*4]
	shl edx, 0x4
	sub edx, eax
	lea eax, [edx*4]
	sub eax, edx
	shl eax, 0x4
	add eax, ragdollDefs
	pop ebp
	ret


;Ragdoll_BodyDObj(RagdollBody*)
_Z16Ragdoll_BodyDObjP11RagdollBody:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z16Ragdoll_BodyDObjP11RagdollBody_10
	leave
	ret
_Z16Ragdoll_BodyDObjP11RagdollBody_10:
	mov eax, [edx+0x20]
	mov [esp+0x4], eax
	mov eax, [edx+0x8]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	leave
	ret


;Ragdoll_BodyPose(RagdollBody*)
_Z16Ragdoll_BodyPoseP11RagdollBody:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	test eax, eax
	jz _Z16Ragdoll_BodyPoseP11RagdollBody_10
	leave
	ret
_Z16Ragdoll_BodyPoseP11RagdollBody_10:
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [edx+0x20]
	mov [esp], eax
	call _Z10CG_GetPoseii
	leave
	ret


;Ragdoll_Register()
_Z16Ragdoll_Registerv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z17Ragdoll_InitDvarsv
	call _Z20Ragdoll_InitCommandsv
	mov dword [esp], 0x0
	call _Z31CL_ControllerIndexFromClientNumi
	mov dword [esp+0x8], _cstring_exec_ragdollcfg
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	mov byte [ragdollFirstInit], 0x1
	leave
	ret
	nop


;Ragdoll_Shutdown()
_Z16Ragdoll_Shutdownv:
	push ebp
	mov ebp, esp
	mov byte [ragdollInited], 0x0
	pop ebp
	ret


;Ragdoll_DebugDraw()
_Z17Ragdoll_DebugDrawv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Ragdoll_InitDvars()
_Z17Ragdoll_InitDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0xc], _cstring_turn_on_ragdoll_
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_ragdoll_enable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [ragdoll_enable], eax
	mov dword [esp+0x14], _cstring_draw_ragdoll_deb
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ragdoll_debug
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [ragdoll_debug], eax
	mov dword [esp+0x14], _cstring_ragdoll_update_f
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x14
	mov dword [esp], _cstring_ragdoll_fps
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [ragdoll_fps], eax
	mov dword [esp+0x14], _cstring_max_lifetime_of_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1194
	mov dword [esp], _cstring_ragdoll_max_life
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [ragdoll_max_life], eax
	mov dword [esp+0x14], _cstring_max_number_of_si
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x20
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x10
	mov dword [esp], _cstring_ragdoll_max_simu
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [ragdoll_max_simulating], eax
	mov dword [esp+0x14], _cstring_explosive_force_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x476a6000
	xor edi, edi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x468ca000
	mov dword [esp], _cstring_ragdoll_explode_
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [ragdoll_explode_force], eax
	mov dword [esp+0x14], _cstring_upwards_bias_app
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x40000000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_ragdoll_explode_1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [ragdoll_explode_upbias], eax
	mov dword [esp+0x14], _cstring_bullet_force_app
	mov dword [esp+0x10], 0x80
	mov ebx, 0x461c4000
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43fa0000
	mov dword [esp], _cstring_ragdoll_bullet_f
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [ragdoll_bullet_force], eax
	mov dword [esp+0x14], _cstring_upward_bias_appl
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_ragdoll_bullet_u
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [ragdoll_bullet_upbias], eax
	mov dword [esp+0x14], _cstring_default_time_rag
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x1770
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x3e8
	mov dword [esp], _cstring_ragdoll_baselerp
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [ragdoll_baselerp_time], eax
	mov dword [esp+0x14], _cstring_default_time_tak
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x1770
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0xbb8
	mov dword [esp], _cstring_ragdoll_jointler
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [ragdoll_jointlerp_time], eax
	mov dword [esp+0x14], _cstring_ragdoll_rotation
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x44fa0000
	mov [esp+0x8], edi
	mov esi, 0x3f800000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_ragdoll_rotvel_s
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [ragdoll_rotvel_scale], eax
	mov dword [esp+0x14], _cstring_scale_up_or_down
	mov dword [esp+0x10], 0x80
	mov ebx, 0x41200000
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_ragdoll_jitter_s
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [ragdoll_jitter_scale], eax
	mov dword [esp+0x14], _cstring_scale_the_size_o
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x3f99999a
	mov dword [esp], _cstring_ragdoll_self_col
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [ragdoll_self_collision_scale], eax
	mov dword [esp+0xc], _cstring_dump_animation_d
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ragdoll_dump_ani
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [ragdoll_dump_anims], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Ragdoll_GetRootOrigin(int, float*)
_Z21Ragdoll_GetRootOriginiPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18Ragdoll_HandleBodyi
	cmp dword [eax+0x24], 0x2
	jle _Z21Ragdoll_GetRootOriginiPf_10
	mov [esp], eax
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov edx, [eax]
	mov [ebx], edx
	mov edx, [eax+0x4]
	mov [ebx+0x4], edx
	mov eax, [eax+0x8]
	mov [ebx+0x8], eax
_Z21Ragdoll_GetRootOriginiPf_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Ragdoll_CountPhysicsBodies()
_Z26Ragdoll_CountPhysicsBodiesv:
	push ebp
	mov ebp, esp
	push ebx
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx
_Z26Ragdoll_CountPhysicsBodiesv_20:
	mov eax, [edx+ragdollBodies]
	test eax, eax
	jle _Z26Ragdoll_CountPhysicsBodiesv_10
	mov eax, [edx+ragdollBodies+0x24]
	sub eax, 0x3
	cmp eax, 0x1
	setbe al
	cmp al, 0x1
	sbb ebx, 0xffffffff
_Z26Ragdoll_CountPhysicsBodiesv_10:
	add ecx, 0x1
	add edx, 0x9d4
	cmp ecx, 0x20
	jnz _Z26Ragdoll_CountPhysicsBodiesv_20
	mov eax, ebx
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;Ragdoll_CreateRagdollForDObj(int, int, int, unsigned char, unsigned char)
_Z28Ragdoll_CreateRagdollForDObjiiihh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x10]
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x19], al
	movzx esi, byte [ebp+0x18]
	mov eax, 0x1
	call _Z15Ragdoll_BindDefi
	test al, al
	jz _Z28Ragdoll_CreateRagdollForDObjiiihh_10
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx
_Z28Ragdoll_CreateRagdollForDObjiiihh_30:
	mov eax, [edx+ragdollBodies]
	test eax, eax
	jle _Z28Ragdoll_CreateRagdollForDObjiiihh_20
	mov eax, [edx+ragdollBodies+0x24]
	sub eax, 0x3
	cmp eax, 0x1
	setbe al
	cmp al, 0x1
	sbb ebx, 0xffffffff
_Z28Ragdoll_CreateRagdollForDObjiiihh_20:
	add ecx, 0x1
	add edx, 0x9d4
	cmp ecx, 0x20
	jnz _Z28Ragdoll_CreateRagdollForDObjiiihh_30
	mov eax, [ragdoll_max_simulating]
	cmp ebx, [eax+0xc]
	jge _Z28Ragdoll_CreateRagdollForDObjiiihh_10
	mov eax, esi
	test al, al
	jz _Z28Ragdoll_CreateRagdollForDObjiiihh_40
	mov ebx, ragdollBodies
	and ecx, 0xffffff00
	mov edx, ragdollBodies
_Z28Ragdoll_CreateRagdollForDObjiiihh_70:
	mov eax, [edx]
	test eax, eax
	jle _Z28Ragdoll_CreateRagdollForDObjiiihh_50
	cmp edi, [edx+0x8]
	jz _Z28Ragdoll_CreateRagdollForDObjiiihh_60
_Z28Ragdoll_CreateRagdollForDObjiiihh_50:
	add ecx, 0x1
	add ebx, 0x9d4
	add edx, 0x9d4
	cmp ecx, 0x20
	jnz _Z28Ragdoll_CreateRagdollForDObjiiihh_70
_Z28Ragdoll_CreateRagdollForDObjiiihh_180:
	mov esi, ragdollBodies
	xor ebx, ebx
	jmp _Z28Ragdoll_CreateRagdollForDObjiiihh_80
_Z28Ragdoll_CreateRagdollForDObjiiihh_100:
	add ebx, 0x1
	add esi, 0x9d4
	cmp ebx, 0x20
	jz _Z28Ragdoll_CreateRagdollForDObjiiihh_90
_Z28Ragdoll_CreateRagdollForDObjiiihh_80:
	mov eax, [esi]
	test eax, eax
	jg _Z28Ragdoll_CreateRagdollForDObjiiihh_100
_Z28Ragdoll_CreateRagdollForDObjiiihh_150:
	mov dword [esp+0x8], 0x9d4
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add dword [eax*4+ragdollBodies], 0x1
	add ebx, 0x1
	test ebx, ebx
	jz _Z28Ragdoll_CreateRagdollForDObjiiihh_90
_Z28Ragdoll_CreateRagdollForDObjiiihh_170:
	mov [esp], ebx
	call _Z18Ragdoll_HandleBodyi
	mov esi, eax
	cmp byte [ebp-0x19], 0x0
	jnz _Z28Ragdoll_CreateRagdollForDObjiiihh_110
_Z28Ragdoll_CreateRagdollForDObjiiihh_160:
	mov eax, [esi+0x24]
	test eax, eax
	jnz _Z28Ragdoll_CreateRagdollForDObjiiihh_120
	mov [esi+0x8], edi
	mov eax, [ebp+0x8]
	mov [esi+0x20], eax
	mov dword [esi+0x4], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Ragdoll_CreateRagdollForDObjiiihh_10:
	xor ebx, ebx
_Z28Ragdoll_CreateRagdollForDObjiiihh_120:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Ragdoll_CreateRagdollForDObjiiihh_40:
	mov esi, ragdollBodies
	xor ebx, ebx
	jmp _Z28Ragdoll_CreateRagdollForDObjiiihh_130
_Z28Ragdoll_CreateRagdollForDObjiiihh_140:
	add ebx, 0x1
	add esi, 0x9d4
	cmp ebx, 0x20
	jz _Z28Ragdoll_CreateRagdollForDObjiiihh_90
_Z28Ragdoll_CreateRagdollForDObjiiihh_130:
	mov eax, [esi]
	test eax, eax
	jg _Z28Ragdoll_CreateRagdollForDObjiiihh_140
	jmp _Z28Ragdoll_CreateRagdollForDObjiiihh_150
_Z28Ragdoll_CreateRagdollForDObjiiihh_90:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_ragdoll_allocati
	mov dword [esp], 0x14
	call _Z10Com_PrintfiPKcz
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Ragdoll_CreateRagdollForDObjiiihh_110:
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	jmp _Z28Ragdoll_CreateRagdollForDObjiiihh_160
_Z28Ragdoll_CreateRagdollForDObjiiihh_60:
	add eax, 0x1
	mov [ebx], eax
	mov ebx, ecx
	add ebx, 0x1
	jnz _Z28Ragdoll_CreateRagdollForDObjiiihh_170
	jmp _Z28Ragdoll_CreateRagdollForDObjiiihh_180
	add [eax], al


;Initialized global or static variables of ragdoll:
SECTION .data


;Initialized constant data of ragdoll:
SECTION .rdata


;Zero initialized global or static variables of ragdoll:
SECTION .bss
ragdollFirstInit: resb 0x80
ragdoll_enable: resb 0x28
ragdollBodies: resb 0x13a80
ragdollDefs: resb 0x1da0
ragdollInited: resb 0x20
ragdoll_baselerp_time: resb 0x4
ragdoll_bullet_force: resb 0x4
ragdoll_bullet_upbias: resb 0x4
ragdoll_debug: resb 0x4
ragdoll_dump_anims: resb 0x4
ragdoll_explode_force: resb 0x4
ragdoll_explode_upbias: resb 0x4
ragdoll_fps: resb 0x4
ragdoll_jitter_scale: resb 0x4
ragdoll_jointlerp_time: resb 0x4
ragdoll_max_life: resb 0x4
ragdoll_max_simulating: resb 0x4
ragdoll_rotvel_scale: resb 0x4
ragdoll_self_collision_scale: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_none:		db "none",0
_cstring_exec_ragdollcfg:		db "exec ragdoll.cfg",0
_cstring_turn_on_ragdoll_:		db "Turn on ragdoll death animations",0
_cstring_ragdoll_enable:		db "ragdoll_enable",0
_cstring_draw_ragdoll_deb:		db "Draw ragdoll debug info (bitflags)",0
_cstring_ragdoll_debug:		db "ragdoll_debug",0
_cstring_ragdoll_update_f:		db "Ragdoll update frames per second",0
_cstring_ragdoll_fps:		db "ragdoll_fps",0
_cstring_max_lifetime_of_:		db "Max lifetime of a ragdoll system in msec",0
_cstring_ragdoll_max_life:		db "ragdoll_max_life",0
_cstring_max_number_of_si:		db "Max number of simultaneous active ragdolls",0
_cstring_ragdoll_max_simu:		db "ragdoll_max_simulating",0
_cstring_explosive_force_:		db "Explosive force applied to ragdolls",0
_cstring_ragdoll_explode_:		db "ragdoll_explode_force",0
_cstring_upwards_bias_app:		db "Upwards bias applied to ragdoll explosion effects",0
_cstring_ragdoll_explode_1:		db "ragdoll_explode_upbias",0
_cstring_bullet_force_app:		db "Bullet force applied to ragdolls",0
_cstring_ragdoll_bullet_f:		db "ragdoll_bullet_force",0
_cstring_upward_bias_appl:		db "Upward bias applied to ragdoll bullet effects",0
_cstring_ragdoll_bullet_u:		db "ragdoll_bullet_upbias",0
_cstring_default_time_rag:		db "Default time ragdoll baselerp bones take to reach the base pose",0
_cstring_ragdoll_baselerp:		db "ragdoll_baselerp_time",0
_cstring_default_time_tak:		db "Default time taken to lerp down ragdoll joint friction",0
_cstring_ragdoll_jointler:		db "ragdoll_jointlerp_time",0
_cstring_ragdoll_rotation:		db "Ragdoll rotational velocity estimate scale",0
_cstring_ragdoll_rotvel_s:		db "ragdoll_rotvel_scale",0
_cstring_scale_up_or_down:		db "Scale up or down the effect of physics jitter on ragdolls",0
_cstring_ragdoll_jitter_s:		db "ragdoll_jitter_scale",0
_cstring_scale_the_size_o:		db "Scale the size of the collision capsules used to prevent ragdoll limbs from interpenetrating",0
_cstring_ragdoll_self_col:		db "ragdoll_self_collision_scale",0
_cstring_dump_animation_d:		db "Dump animation data when ragdoll fails",0
_cstring_ragdoll_dump_ani:		db "ragdoll_dump_anims",0
_cstring_ragdoll_allocati:		db "Ragdoll allocation failed, out of ragdoll bodies (obj %d)",0ah,0



;All constant floats and doubles:
SECTION .rdata

