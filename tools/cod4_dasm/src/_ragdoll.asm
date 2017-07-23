;Imports of ragdoll:
	extern Q_stricmp
	extern SL_FindString
	extern memset
	extern Cvar_SetInt
	extern Ragdoll_HandleBody
	extern Ragdoll_BodyNewState
	extern Com_GetClientDObj
	extern CG_GetPose
	extern Ragdoll_InitCommands
	extern CL_ControllerIndexFromClientNum
	extern Cmd_ExecuteSingleCommand
	extern Cvar_RegisterBool
	extern Cvar_RegisterInt
	extern Cvar_RegisterFloat
	extern Ragdoll_BodyBoneOrientations
	extern Com_Printf

;Exports of ragdoll:
	global ragdollFirstInit
	global Ragdoll_BindDef
	global Ragdoll_Init
	global Ragdoll_Remove
	global Ragdoll_BodyDef
	global Ragdoll_BodyDObj
	global Ragdoll_BodyPose
	global Ragdoll_Register
	global Ragdoll_Shutdown
	global Ragdoll_DebugDraw
	global Ragdoll_InitDvars
	global Ragdoll_GetRootOrigin
	global Ragdoll_CountPhysicsBodies
	global Ragdoll_CreateRagdollForDObj
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
Ragdoll_BindDef:
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
	jz Ragdoll_BindDef_10
	cmp byte [edx+0x1], 0x0
	jnz Ragdoll_BindDef_20
	mov edx, [ebp-0x28]
	add edx, 0x8
	mov [ebp-0x20], edx
	test eax, eax
	jle Ragdoll_BindDef_30
	mov [ebp-0x30], edx
	mov dword [ebp-0x2c], 0x0
	mov esi, edx
Ragdoll_BindDef_70:
	xor edi, edi
	mov ebx, esi
Ragdoll_BindDef_50:
	mov dword [esp+0x4], _cstring_none
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Ragdoll_BindDef_40
	mov dword [esi+0x28], 0x0
Ragdoll_BindDef_90:
	add edi, 0x1
	add ebx, 0x14
	add esi, 0x4
	cmp edi, 0x2
	jnz Ragdoll_BindDef_50
	add dword [ebp-0x2c], 0x1
	add dword [ebp-0x30], 0x4c
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	cmp edx, [eax+0x4]
	jge Ragdoll_BindDef_60
	mov esi, [ebp-0x30]
	jmp Ragdoll_BindDef_70
Ragdoll_BindDef_30:
	mov ebx, [ebp-0x28]
	add ebx, 0x434
	mov eax, [ebp-0x28]
	mov edx, [eax+0x430]
	test edx, edx
	jg Ragdoll_BindDef_80
Ragdoll_BindDef_100:
	mov edx, eax
	mov byte [edx+0x1], 0x1
Ragdoll_BindDef_20:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_BindDef_40:
	mov [esp], ebx
	call SL_FindString
	mov [esi+0x28], eax
	test eax, eax
	jnz Ragdoll_BindDef_90
Ragdoll_BindDef_10:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_BindDef_60:
	mov ebx, eax
	add ebx, 0x434
	mov eax, [ebp-0x28]
	mov edx, [eax+0x430]
	test edx, edx
	jle Ragdoll_BindDef_100
Ragdoll_BindDef_80:
	mov dword [ebp-0x1c], 0x0
Ragdoll_BindDef_150:
	mov [esp], ebx
	call SL_FindString
	mov ecx, eax
	mov [ebx+0x14], eax
	test eax, eax
	jz Ragdoll_BindDef_10
	lea edx, [ebx+0x18]
	mov [ebp-0x24], edx
	mov eax, [ebx+0x18]
	test eax, eax
	jnz Ragdoll_BindDef_110
	mov eax, [ebp-0x28]
	mov edi, [eax+0x4]
	test edi, edi
	jle Ragdoll_BindDef_120
	mov edx, [ebp-0x20]
	cmp ecx, [edx+0x2c]
	jz Ragdoll_BindDef_130
	add edx, 0x74
	xor esi, esi
Ragdoll_BindDef_140:
	add esi, 0x1
	cmp edi, esi
	jz Ragdoll_BindDef_10
	mov eax, [edx+0x4]
	add edx, 0x4c
	cmp eax, ecx
	jnz Ragdoll_BindDef_140
	mov eax, esi
Ragdoll_BindDef_180:
	mov edx, [ebp-0x24]
	mov [edx], eax
Ragdoll_BindDef_170:
	mov eax, [ebp-0x28]
	cmp [eax+0x4], esi
	jz Ragdoll_BindDef_10
	mov edx, eax
Ragdoll_BindDef_160:
	add dword [ebp-0x1c], 0x1
	add ebx, 0x20
	mov eax, [ebp-0x1c]
	cmp eax, [edx+0x430]
	jl Ragdoll_BindDef_150
	mov byte [edx+0x1], 0x1
	jmp Ragdoll_BindDef_20
Ragdoll_BindDef_110:
	mov edx, [ebp-0x28]
	jmp Ragdoll_BindDef_160
Ragdoll_BindDef_120:
	xor esi, esi
	jmp Ragdoll_BindDef_170
Ragdoll_BindDef_130:
	xor esi, esi
	xor eax, eax
	jmp Ragdoll_BindDef_180
	nop


;Ragdoll_Init()
Ragdoll_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [ragdollInited], 0x0
	jnz Ragdoll_Init_10
	mov eax, [ragdoll_enable]
	cmp byte [eax+0xc], 0x0
	jnz Ragdoll_Init_20
Ragdoll_Init_40:
	mov dword [esp+0x8], 0x13a80
	mov dword [esp+0x4], 0x0
	mov dword [esp], ragdollBodies
	call memset
	mov eax, ragdollDefs+0x1
Ragdoll_Init_30:
	mov byte [eax], 0x0
	mov byte [eax-0x1], 0x0
	add eax, 0xed0
	cmp eax, ragdoll_dump_anims+0x1
	jnz Ragdoll_Init_30
	mov byte [ragdollInited], 0x1
Ragdoll_Init_10:
	leave
	ret
Ragdoll_Init_20:
	mov eax, [ragdoll_max_simulating]
	cmp dword [eax+0xc], 0x7
	jg Ragdoll_Init_40
	mov dword [esp+0x4], 0x8
	mov [esp], eax
	call Cvar_SetInt
	jmp Ragdoll_Init_40


;Ragdoll_Remove(int)
Ragdoll_Remove:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Ragdoll_HandleBody
	mov edx, eax
	mov eax, [eax]
	cmp eax, 0x1
	jz Ragdoll_Remove_10
	sub eax, 0x1
	mov [edx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Ragdoll_Remove_10:
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call Ragdoll_BodyNewState
	mov [esp], ebx
	call Ragdoll_HandleBody
	mov ebx, eax
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Ragdoll_BodyNewState
	mov dword [ebx], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Ragdoll_BodyDef(RagdollBody*)
Ragdoll_BodyDef:
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
Ragdoll_BodyDObj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	test eax, eax
	jz Ragdoll_BodyDObj_10
	leave
	ret
Ragdoll_BodyDObj_10:
	mov eax, [edx+0x20]
	mov [esp+0x4], eax
	mov eax, [edx+0x8]
	mov [esp], eax
	call Com_GetClientDObj
	leave
	ret


;Ragdoll_BodyPose(RagdollBody*)
Ragdoll_BodyPose:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	test eax, eax
	jz Ragdoll_BodyPose_10
	leave
	ret
Ragdoll_BodyPose_10:
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [edx+0x20]
	mov [esp], eax
	call CG_GetPose
	leave
	ret


;Ragdoll_Register()
Ragdoll_Register:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Ragdoll_InitDvars
	call Ragdoll_InitCommands
	mov dword [esp], 0x0
	call CL_ControllerIndexFromClientNum
	mov dword [esp+0x8], _cstring_exec_ragdollcfg
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cmd_ExecuteSingleCommand
	mov byte [ragdollFirstInit], 0x1
	leave
	ret
	nop


;Ragdoll_Shutdown()
Ragdoll_Shutdown:
	push ebp
	mov ebp, esp
	mov byte [ragdollInited], 0x0
	pop ebp
	ret


;Ragdoll_DebugDraw()
Ragdoll_DebugDraw:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Ragdoll_InitDvars()
Ragdoll_InitDvars:
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
	call Cvar_RegisterBool
	mov [ragdoll_enable], eax
	mov dword [esp+0x14], _cstring_draw_ragdoll_deb
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ragdoll_debug
	call Cvar_RegisterInt
	mov [ragdoll_debug], eax
	mov dword [esp+0x14], _cstring_ragdoll_update_f
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x14
	mov dword [esp], _cstring_ragdoll_fps
	call Cvar_RegisterInt
	mov [ragdoll_fps], eax
	mov dword [esp+0x14], _cstring_max_lifetime_of_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1194
	mov dword [esp], _cstring_ragdoll_max_life
	call Cvar_RegisterInt
	mov [ragdoll_max_life], eax
	mov dword [esp+0x14], _cstring_max_number_of_si
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x20
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x10
	mov dword [esp], _cstring_ragdoll_max_simu
	call Cvar_RegisterInt
	mov [ragdoll_max_simulating], eax
	mov dword [esp+0x14], _cstring_explosive_force_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x476a6000
	xor edi, edi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x468ca000
	mov dword [esp], _cstring_ragdoll_explode_
	call Cvar_RegisterFloat
	mov [ragdoll_explode_force], eax
	mov dword [esp+0x14], _cstring_upwards_bias_app
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x40000000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_ragdoll_explode_1
	call Cvar_RegisterFloat
	mov [ragdoll_explode_upbias], eax
	mov dword [esp+0x14], _cstring_bullet_force_app
	mov dword [esp+0x10], 0x80
	mov ebx, 0x461c4000
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43fa0000
	mov dword [esp], _cstring_ragdoll_bullet_f
	call Cvar_RegisterFloat
	mov [ragdoll_bullet_force], eax
	mov dword [esp+0x14], _cstring_upward_bias_appl
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_ragdoll_bullet_u
	call Cvar_RegisterFloat
	mov [ragdoll_bullet_upbias], eax
	mov dword [esp+0x14], _cstring_default_time_rag
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x1770
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x3e8
	mov dword [esp], _cstring_ragdoll_baselerp
	call Cvar_RegisterInt
	mov [ragdoll_baselerp_time], eax
	mov dword [esp+0x14], _cstring_default_time_tak
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x1770
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0xbb8
	mov dword [esp], _cstring_ragdoll_jointler
	call Cvar_RegisterInt
	mov [ragdoll_jointlerp_time], eax
	mov dword [esp+0x14], _cstring_ragdoll_rotation
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x44fa0000
	mov [esp+0x8], edi
	mov esi, 0x3f800000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_ragdoll_rotvel_s
	call Cvar_RegisterFloat
	mov [ragdoll_rotvel_scale], eax
	mov dword [esp+0x14], _cstring_scale_up_or_down
	mov dword [esp+0x10], 0x80
	mov ebx, 0x41200000
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_ragdoll_jitter_s
	call Cvar_RegisterFloat
	mov [ragdoll_jitter_scale], eax
	mov dword [esp+0x14], _cstring_scale_the_size_o
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x3f99999a
	mov dword [esp], _cstring_ragdoll_self_col
	call Cvar_RegisterFloat
	mov [ragdoll_self_collision_scale], eax
	mov dword [esp+0xc], _cstring_dump_animation_d
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ragdoll_dump_ani
	call Cvar_RegisterBool
	mov [ragdoll_dump_anims], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Ragdoll_GetRootOrigin(int, float*)
Ragdoll_GetRootOrigin:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_HandleBody
	cmp dword [eax+0x24], 0x2
	jle Ragdoll_GetRootOrigin_10
	mov [esp], eax
	call Ragdoll_BodyBoneOrientations
	mov edx, [eax]
	mov [ebx], edx
	mov edx, [eax+0x4]
	mov [ebx+0x4], edx
	mov eax, [eax+0x8]
	mov [ebx+0x8], eax
Ragdoll_GetRootOrigin_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Ragdoll_CountPhysicsBodies()
Ragdoll_CountPhysicsBodies:
	push ebp
	mov ebp, esp
	push ebx
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx
Ragdoll_CountPhysicsBodies_20:
	mov eax, [edx+ragdollBodies]
	test eax, eax
	jle Ragdoll_CountPhysicsBodies_10
	mov eax, [edx+ragdollBodies+0x24]
	sub eax, 0x3
	cmp eax, 0x1
	setbe al
	cmp al, 0x1
	sbb ebx, 0xffffffff
Ragdoll_CountPhysicsBodies_10:
	add ecx, 0x1
	add edx, 0x9d4
	cmp ecx, 0x20
	jnz Ragdoll_CountPhysicsBodies_20
	mov eax, ebx
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;Ragdoll_CreateRagdollForDObj(int, int, int, unsigned char, unsigned char)
Ragdoll_CreateRagdollForDObj:
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
	call Ragdoll_BindDef
	test al, al
	jz Ragdoll_CreateRagdollForDObj_10
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx
Ragdoll_CreateRagdollForDObj_30:
	mov eax, [edx+ragdollBodies]
	test eax, eax
	jle Ragdoll_CreateRagdollForDObj_20
	mov eax, [edx+ragdollBodies+0x24]
	sub eax, 0x3
	cmp eax, 0x1
	setbe al
	cmp al, 0x1
	sbb ebx, 0xffffffff
Ragdoll_CreateRagdollForDObj_20:
	add ecx, 0x1
	add edx, 0x9d4
	cmp ecx, 0x20
	jnz Ragdoll_CreateRagdollForDObj_30
	mov eax, [ragdoll_max_simulating]
	cmp ebx, [eax+0xc]
	jge Ragdoll_CreateRagdollForDObj_10
	mov eax, esi
	test al, al
	jz Ragdoll_CreateRagdollForDObj_40
	mov ebx, ragdollBodies
	and ecx, 0xffffff00
	mov edx, ragdollBodies
Ragdoll_CreateRagdollForDObj_70:
	mov eax, [edx]
	test eax, eax
	jle Ragdoll_CreateRagdollForDObj_50
	cmp edi, [edx+0x8]
	jz Ragdoll_CreateRagdollForDObj_60
Ragdoll_CreateRagdollForDObj_50:
	add ecx, 0x1
	add ebx, 0x9d4
	add edx, 0x9d4
	cmp ecx, 0x20
	jnz Ragdoll_CreateRagdollForDObj_70
Ragdoll_CreateRagdollForDObj_180:
	mov esi, ragdollBodies
	xor ebx, ebx
	jmp Ragdoll_CreateRagdollForDObj_80
Ragdoll_CreateRagdollForDObj_100:
	add ebx, 0x1
	add esi, 0x9d4
	cmp ebx, 0x20
	jz Ragdoll_CreateRagdollForDObj_90
Ragdoll_CreateRagdollForDObj_80:
	mov eax, [esi]
	test eax, eax
	jg Ragdoll_CreateRagdollForDObj_100
Ragdoll_CreateRagdollForDObj_150:
	mov dword [esp+0x8], 0x9d4
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call Ragdoll_BodyNewState
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add dword [eax*4+ragdollBodies], 0x1
	add ebx, 0x1
	test ebx, ebx
	jz Ragdoll_CreateRagdollForDObj_90
Ragdoll_CreateRagdollForDObj_170:
	mov [esp], ebx
	call Ragdoll_HandleBody
	mov esi, eax
	cmp byte [ebp-0x19], 0x0
	jnz Ragdoll_CreateRagdollForDObj_110
Ragdoll_CreateRagdollForDObj_160:
	mov eax, [esi+0x24]
	test eax, eax
	jnz Ragdoll_CreateRagdollForDObj_120
	mov [esi+0x8], edi
	mov eax, [ebp+0x8]
	mov [esi+0x20], eax
	mov dword [esi+0x4], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call Ragdoll_BodyNewState
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_CreateRagdollForDObj_10:
	xor ebx, ebx
Ragdoll_CreateRagdollForDObj_120:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_CreateRagdollForDObj_40:
	mov esi, ragdollBodies
	xor ebx, ebx
	jmp Ragdoll_CreateRagdollForDObj_130
Ragdoll_CreateRagdollForDObj_140:
	add ebx, 0x1
	add esi, 0x9d4
	cmp ebx, 0x20
	jz Ragdoll_CreateRagdollForDObj_90
Ragdoll_CreateRagdollForDObj_130:
	mov eax, [esi]
	test eax, eax
	jg Ragdoll_CreateRagdollForDObj_140
	jmp Ragdoll_CreateRagdollForDObj_150
Ragdoll_CreateRagdollForDObj_90:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_ragdoll_allocati
	mov dword [esp], 0x14
	call Com_Printf
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_CreateRagdollForDObj_110:
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Ragdoll_BodyNewState
	jmp Ragdoll_CreateRagdollForDObj_160
Ragdoll_CreateRagdollForDObj_60:
	add eax, 0x1
	mov [ebx], eax
	mov ebx, ecx
	add ebx, 0x1
	jnz Ragdoll_CreateRagdollForDObj_170
	jmp Ragdoll_CreateRagdollForDObj_180
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

