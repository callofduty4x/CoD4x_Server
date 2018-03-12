;Imports of g_spawn_mp:
	extern Scr_Error
	extern Scr_FindField
	extern atoi
	extern Scr_AddInt
	extern sscanf
	extern Scr_AddVector
	extern Scr_AddString
	extern atof
	extern Scr_AddFloat
	extern Q_stricmp
	extern Scr_SetDynamicEntityField
	extern Scr_SetString
	extern G_NewString
	extern Com_IsLegacyXModelName
	extern G_SetModel
	extern level
	extern G_SpawnString
	extern Scr_GetConstString
	extern Scr_GetString
	extern Scr_GetOffset
	extern g_entities
	extern Scr_AddEntityNum
	extern Scr_NotifyNum
	extern g_scr_data
	extern Scr_ExecThread
	extern Scr_FreeThread
	extern G_ParseSpawnVars
	extern Scr_AddExecThread
	extern Scr_GetObject
	extern Scr_SetStructField
	extern G_ResetEntityParsePoint
	extern SV_SetConfigstring
	extern va
	extern g_motd
	extern g_gravity
	extern Cvar_SetFloat
	extern sinf
	extern cosf
	extern scr_const
	extern Com_Error
	extern Scr_GetEntityRef
	extern Scr_ParamError
	extern g_hudelems
	extern Scr_FreeEntityNum
	extern Scr_FreeHudElemConstStrings
	extern Scr_GetNumParam
	extern Scr_MakeArray
	extern Scr_AddArray
	extern Com_Printf
	extern SL_ConvertToString
	extern strcmp
	extern G_GetWeaponIndexForName
	extern BG_GetWeaponDef
	extern BG_FindItemForWeapon
	extern G_SpawnItem
	extern Scr_ExecEntThreadNum
	extern Scr_GetClientField
	extern Scr_GetHudElemField
	extern Scr_SetHudElemField
	extern Scr_SetClientField
	extern G_ModelName
	extern Scr_AddConstString
	extern Scr_AddObject
	extern Scr_GetType
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern Scr_GetInt
	extern Scr_GetVector
	extern Scr_GetConstStringIncludeNull
	extern Scr_GetFloat
	extern Scr_AddClassField
	extern GScr_AddFieldsForClient
	extern Scr_AddFields
	extern G_Spawn
	extern G_SetOrigin
	extern G_SetAngle
	extern G_FreeEntity
	extern trigger_use
	extern trigger_use_touch
	extern SP_trigger_multiple
	extern SP_trigger_disk
	extern SP_trigger_hurt
	extern SP_trigger_once
	extern SP_trigger_damage
	extern SP_trigger_lookat
	extern SP_light
	extern SP_turret
	extern SP_script_brushmodel
	extern G_VehSpawner
	extern SP_info_notnull
	extern SP_trigger_radius
	extern SP_script_model
	extern SP_script_origin
	extern G_VehCollmapSpawner
	extern Scr_SetOrigin
	extern Scr_SetHealth
	extern Scr_SetAngles
	extern Scr_GetGenericField
	extern Scr_SetGenericField

;Exports of g_spawn_mp:
	global s_bspOnlySpawns
	global s_bspOrDynamicSpawns
	global Scr_ReadOnlyField
	global G_SetEntityScriptVariableInternal
	global G_ParseEntityField
	global G_SpawnInt
	global Scr_GetEnt
	global G_SpawnFloat
	global G_LoadStructs
	global SP_worldspawn
	global Scr_AddEntity
	global Scr_GetEntity
	global Scr_AddHudElem
	global Scr_FreeEntity
	global Scr_FreeHudElem
	global Scr_GetEntArray
	global G_CallSpawnEntity
	global Scr_ExecEntThread
	global Scr_GetObjectField
	global Scr_SetObjectField
	global G_DuplicateEntityFields
	global GScr_AddFieldsForRadiant
	global G_SpawnEntitiesFromString
	global GScr_AddFieldsForEntity

SECTION .text


;Scr_ReadOnlyField(gentity_s*, int)
Scr_ReadOnlyField:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x8], _cstring_tried_to_set_a_r
	pop ebp
	jmp Scr_Error


;G_SetEntityScriptVariableInternal(char const*, char const*)
G_SetEntityScriptVariableInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, edx
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call Scr_FindField
	mov edi, eax
	test eax, eax
	jz G_SetEntityScriptVariableInternal_10
	mov eax, [ebp-0x1c]
	cmp eax, 0x4
	jz G_SetEntityScriptVariableInternal_20
	jg G_SetEntityScriptVariableInternal_30
	cmp eax, 0x2
	jz G_SetEntityScriptVariableInternal_40
G_SetEntityScriptVariableInternal_10:
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_SetEntityScriptVariableInternal_30:
	cmp eax, 0x5
	jz G_SetEntityScriptVariableInternal_50
	cmp eax, 0x6
	jnz G_SetEntityScriptVariableInternal_10
	mov [esp], esi
	call atoi
	mov [esp], eax
	call Scr_AddInt
	jmp G_SetEntityScriptVariableInternal_10
G_SetEntityScriptVariableInternal_20:
	xor eax, eax
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	lea ebx, [ebp-0x28]
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], esi
	call sscanf
	mov [esp], ebx
	call Scr_AddVector
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_SetEntityScriptVariableInternal_40:
	mov [esp], esi
	call Scr_AddString
	jmp G_SetEntityScriptVariableInternal_10
G_SetEntityScriptVariableInternal_50:
	mov [esp], esi
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	movss [esp], xmm0
	call Scr_AddFloat
	jmp G_SetEntityScriptVariableInternal_10


;G_ParseEntityField(char const*, char const*, gentity_s*)
G_ParseEntityField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, eax
	mov edi, edx
	mov [ebp-0x34], ecx
	mov eax, [ent_fields]
	test eax, eax
	jz G_ParseEntityField_10
	mov ebx, ent_fields
G_ParseEntityField_30:
	mov [esp+0x4], esi
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz G_ParseEntityField_20
	add ebx, 0x10
	mov eax, [ebx]
	test eax, eax
	jnz G_ParseEntityField_30
G_ParseEntityField_10:
	mov edx, edi
	mov eax, esi
	call G_SetEntityScriptVariableInternal
	test eax, eax
	jnz G_ParseEntityField_40
G_ParseEntityField_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_ParseEntityField_40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x34]
	mov eax, [edx]
	mov [esp], eax
	call Scr_SetDynamicEntityField
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_ParseEntityField_20:
	cmp dword [ebx+0x8], 0x9
	ja G_ParseEntityField_50
	mov eax, [ebx+0x8]
	jmp dword [eax*4+G_ParseEntityField_jumptab_0]
G_ParseEntityField_70:
	mov eax, [ebx+0x4]
	add [ebp-0x34], eax
	mov [esp], edi
	call atoi
	mov edx, [ebp-0x34]
	mov [edx], eax
	jmp G_ParseEntityField_50
G_ParseEntityField_80:
	mov ecx, [ebx+0x4]
	add [ebp-0x34], ecx
	mov [esp], edi
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	mov eax, [ebp-0x34]
	movss [eax], xmm0
	jmp G_ParseEntityField_50
G_ParseEntityField_90:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x34]
	add eax, [ebx+0x4]
	mov [esp], eax
	call Scr_SetString
	mov eax, [ebx+0x4]
	add [ebp-0x34], eax
	mov [esp], edi
	call G_NewString
	mov edx, [ebp-0x34]
	mov [edx], ax
	jmp G_ParseEntityField_50
G_ParseEntityField_100:
	xor eax, eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	mov edx, [ebx+0x4]
	mov eax, [ebp-0x24]
	mov ecx, [ebp-0x34]
	mov [ecx+edx], eax
	mov edx, [ebx+0x4]
	mov eax, [ebp-0x20]
	mov [ecx+edx+0x4], eax
	mov edx, [ebx+0x4]
	mov eax, [ebp-0x1c]
	mov [ecx+edx+0x8], eax
	jmp G_ParseEntityField_50
G_ParseEntityField_110:
	cmp byte [edi], 0x2a
	jz G_ParseEntityField_60
	mov [esp], edi
	call Com_IsLegacyXModelName
	lea edx, [edi+0x7]
	test eax, eax
	cmovnz edi, edx
	mov [esp+0x4], edi
	mov ecx, [ebp-0x34]
	mov [esp], ecx
	call G_SetModel
	jmp G_ParseEntityField_50
G_ParseEntityField_60:
	lea eax, [edi+0x1]
	mov [esp], eax
	call atoi
	movzx eax, ax
	mov edx, [ebp-0x34]
	mov [edx+0x88], eax
	jmp G_ParseEntityField_50
	
	
G_ParseEntityField_jumptab_0:
	dd G_ParseEntityField_70
	dd G_ParseEntityField_80
	dd G_ParseEntityField_50
	dd G_ParseEntityField_90
	dd G_ParseEntityField_100
	dd G_ParseEntityField_50
	dd G_ParseEntityField_50
	dd G_ParseEntityField_50
	dd G_ParseEntityField_50
	dd G_ParseEntityField_110


;G_SpawnInt(char const*, char const*, int*)
G_SpawnInt:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, level
	add eax, 0xb34
	mov [esp], eax
	call G_SpawnString
	mov ebx, eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call atoi
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Scr_GetEnt()
Scr_GetEnt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov [ebp-0x1a], ax
	mov dword [esp], 0x1
	call Scr_GetString
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetOffset
	test eax, eax
	js Scr_GetEnt_10
	shl eax, 0x4
	lea edi, [eax+ent_fields]
	cmp dword [edi+0x8], 0x3
	jz Scr_GetEnt_20
Scr_GetEnt_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetEnt_20:
	mov ecx, level
	mov ebx, [ecx+0xc]
	test ebx, ebx
	jle Scr_GetEnt_10
	xor esi, esi
	mov ebx, g_entities
	xor edx, edx
Scr_GetEnt_50:
	cmp byte [ebx+0x100], 0x0
	jz Scr_GetEnt_30
	mov eax, [edi+0x4]
	movzx eax, word [ebx+eax]
	test ax, ax
	jz Scr_GetEnt_30
	cmp [ebp-0x1a], ax
	jz Scr_GetEnt_40
Scr_GetEnt_30:
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [ecx+0xc]
	jl Scr_GetEnt_50
	test edx, edx
	jz Scr_GetEnt_10
	mov dword [esp+0x4], 0x0
	mov eax, [edx]
	mov [esp], eax
	call Scr_AddEntityNum
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetEnt_40:
	test edx, edx
	jz Scr_GetEnt_60
	mov dword [esp], _cstring_getent_used_with
	call Scr_Error
	mov edx, ebx
	mov ecx, level
	jmp Scr_GetEnt_30
Scr_GetEnt_60:
	mov edx, ebx
	jmp Scr_GetEnt_30



;G_SpawnFloat(char const*, char const*, float*)
G_SpawnFloat:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, level
	add eax, 0xb34
	mov [esp], eax
	call G_SpawnString
	mov ebx, eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	mov eax, [ebp+0x10]
	cvtsd2ss xmm0, [ebp-0x20]
	movss [eax], xmm0
	mov eax, ebx
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;G_LoadStructs()
G_LoadStructs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [esp+0x4], 0x0
	mov eax, g_scr_data
	mov eax, [eax+0x10b4]
	mov [esp], eax
	call Scr_ExecThread
	movzx eax, ax
	mov [esp], eax
	call Scr_FreeThread
	mov ebx, level
	mov [ebp-0x30], ebx
	jmp G_LoadStructs_10
G_LoadStructs_40:
	mov ebx, level
G_LoadStructs_10:
	lea esi, [ebx+0xb34]
	mov [esp], esi
	call G_ParseSpawnVars
	test eax, eax
	jz G_LoadStructs_20
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_classname
	mov [esp], esi
	call G_SpawnString
	mov eax, [ebp-0x1c]
	mov esi, _cstring_script_struct
	mov ecx, 0xe
	cld
	mov edi, eax
	repe cmpsb
	mov eax, 0x0
	jz G_LoadStructs_30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
G_LoadStructs_30:
	test eax, eax
	jnz G_LoadStructs_40
	mov dword [esp+0x4], 0x0
	mov eax, g_scr_data
	mov eax, [eax+0x10b8]
	mov [esp], eax
	call Scr_AddExecThread
	mov dword [esp], 0x0
	call Scr_GetObject
	mov [ebp-0x2c], eax
	mov eax, [ebx+0xb38]
	test eax, eax
	jle G_LoadStructs_40
	xor edi, edi
	mov esi, ebx
	jmp G_LoadStructs_50
G_LoadStructs_60:
	add edi, 0x1
	add esi, 0x8
	mov ebx, [ebp-0x30]
	cmp edi, [ebx+0xb38]
	jge G_LoadStructs_10
G_LoadStructs_50:
	mov edx, [esi+0xb40]
	mov eax, [esi+0xb3c]
	call G_SetEntityScriptVariableInternal
	test eax, eax
	jz G_LoadStructs_60
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Scr_SetStructField
	jmp G_LoadStructs_60
G_LoadStructs_20:
	call G_ResetEntityParsePoint
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SP_worldspawn()
SP_worldspawn:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	lea esi, [ebp-0x1c]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_classname
	mov ebx, level
	add ebx, 0xb34
	mov [esp], ebx
	call G_SpawnString
	mov dword [esp+0x4], _cstring_worldspawn
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz SP_worldspawn_10
SP_worldspawn_60:
	mov dword [esp+0x4], _cstring_cod
	mov dword [esp], 0x2
	call SV_SetConfigstring
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_ambienttrack
	mov [esp], ebx
	call G_SpawnString
	mov eax, [ebp-0x1c]
	cmp byte [eax], 0x0
	jz SP_worldspawn_20
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ns
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x335
	call SV_SetConfigstring
SP_worldspawn_40:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_message
	mov edi, level
	lea ebx, [edi+0xb34]
	mov [esp], ebx
	call G_SpawnString
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call SV_SetConfigstring
	mov eax, g_motd
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0xa
	call SV_SetConfigstring
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_800
	mov dword [esp+0x4], _cstring_gravity
	mov [esp], ebx
	call G_SpawnString
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	cvtsd2ss xmm0, [ebp-0x40]
	movss [esp+0x4], xmm0
	mov eax, g_gravity
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetFloat
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_northyaw
	mov [esp], ebx
	call G_SpawnString
	mov eax, [ebp-0x1c]
	cmp byte [eax], 0x0
	jz SP_worldspawn_30
	mov [esp+0x4], eax
	mov dword [esp], 0x336
	call SV_SetConfigstring
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x2c], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [edi+0x2e64]
	movss xmm0, dword [ebp-0x2c]
	movss [esp], xmm0
	call cosf
	fstp dword [edi+0x2e60]
SP_worldspawn_50:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_0
	mov dword [esp+0x4], _cstring_spawnflags
	mov eax, level
	add eax, 0xb34
	mov [esp], eax
	call G_SpawnString
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, g_entities
	mov [ebx+0x9cc94], eax
	mov dword [ebx+0x9cb18], 0x3fe
	mov eax, scr_const
	movzx eax, word [eax+0xcc]
	mov [esp+0x4], eax
	lea eax, [ebx+0x9cc88]
	mov [esp], eax
	call Scr_SetString
	mov byte [ebx+0x9cc18], 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SP_worldspawn_20:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], 0x335
	call SV_SetConfigstring
	jmp SP_worldspawn_40
SP_worldspawn_30:
	mov dword [esp+0x4], _cstring_0
	mov dword [esp], 0x336
	call SV_SetConfigstring
	mov dword [edi+0x2e60], 0x3f800000
	mov dword [edi+0x2e64], 0x0
	jmp SP_worldspawn_50
SP_worldspawn_10:
	mov dword [esp+0x4], _cstring_sp_worldspawn_th
	mov dword [esp], 0x2
	call Com_Error
	jmp SP_worldspawn_60


;Scr_AddEntity(gentity_s*)
Scr_AddEntity:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Scr_AddEntityNum
	leave
	ret
	nop


;Scr_GetEntity(unsigned int)
Scr_GetEntity:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Scr_GetEntityRef
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz Scr_GetEntity_10
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax]
	add eax, g_entities
Scr_GetEntity_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_GetEntity_10:
	mov dword [esp+0x4], _cstring_not_an_entity
	mov [esp], ebx
	call Scr_ParamError
	xor eax, eax
	jmp Scr_GetEntity_20
	nop


;Scr_AddHudElem(game_hudelem_s*)
Scr_AddHudElem:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov dword [esp+0x4], 0x1
	sub edx, g_hudelems
	sar edx, 0x2
	lea ecx, [edx+edx*2]
	mov eax, ecx
	shl eax, 0x7
	sub eax, ecx
	mov ecx, eax
	shl ecx, 0xe
	add eax, ecx
	shl eax, 0x6
	add eax, edx
	lea eax, [edx+eax*2]
	mov [esp], eax
	call Scr_AddEntityNum
	leave
	ret
	nop


;Scr_FreeEntity(gentity_s*)
Scr_FreeEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ent_fields]
	test ebx, ebx
	jz Scr_FreeEntity_10
	mov ebx, ent_fields+0x8
	jmp Scr_FreeEntity_20
Scr_FreeEntity_30:
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jz Scr_FreeEntity_10
Scr_FreeEntity_20:
	cmp dword [ebx], 0x3
	jnz Scr_FreeEntity_30
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	add eax, [ebx-0x4]
	mov [esp], eax
	call Scr_SetString
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz Scr_FreeEntity_20
Scr_FreeEntity_10:
	mov esi, [ebp+0x8]
	xor edi, edi
	mov ebx, esi
	add ebx, 0x246
Scr_FreeEntity_40:
	mov word [esi+0x220], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call Scr_SetString
	add edi, 0x1
	add ebx, 0x2
	add esi, 0x2
	cmp edi, 0x13
	jnz Scr_FreeEntity_40
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Scr_FreeEntityNum
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_FreeHudElem(game_hudelem_s*)
Scr_FreeHudElem:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov edx, esi
	sub edx, g_hudelems
	sar edx, 0x2
	lea eax, [edx+edx*2]
	mov ebx, eax
	shl ebx, 0x7
	sub ebx, eax
	mov eax, ebx
	shl eax, 0xe
	add ebx, eax
	shl ebx, 0x6
	add ebx, edx
	lea ebx, [edx+ebx*2]
	mov dword [esp+0xc], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Scr_NotifyNum
	mov [esp], esi
	call Scr_FreeHudElemConstStrings
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Scr_FreeEntityNum
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Scr_GetEntArray()
Scr_GetEntArray:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call Scr_GetNumParam
	test eax, eax
	jnz Scr_GetEntArray_10
	call Scr_MakeArray
	mov edx, level
	mov edi, [edx+0xc]
	test edi, edi
	jle Scr_GetEntArray_20
	xor esi, esi
	mov ebx, g_entities
	add ebx, 0x100
	mov edi, edx
	jmp Scr_GetEntArray_30
Scr_GetEntArray_40:
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [edx+0xc]
	jge Scr_GetEntArray_20
Scr_GetEntArray_30:
	cmp byte [ebx], 0x0
	jz Scr_GetEntArray_40
	mov dword [esp+0x4], 0x0
	mov eax, [ebx-0x100]
	mov [esp], eax
	call Scr_AddEntityNum
	call Scr_AddArray
	mov edx, edi
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [edx+0xc]
	jl Scr_GetEntArray_30
Scr_GetEntArray_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetEntArray_10:
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov [ebp-0x1a], ax
	mov dword [esp], 0x1
	call Scr_GetString
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetOffset
	test eax, eax
	js Scr_GetEntArray_20
	shl eax, 0x4
	add eax, ent_fields
	mov [ebp-0x20], eax
	cmp dword [eax+0x8], 0x3
	jnz Scr_GetEntArray_20
	call Scr_MakeArray
	mov edx, level
	mov esi, [edx+0xc]
	test esi, esi
	jle Scr_GetEntArray_20
	xor esi, esi
	mov ebx, g_entities
	mov edi, ebx
	add ebx, 0x100
	mov [ebp-0x24], edx
Scr_GetEntArray_70:
	cmp byte [ebx], 0x0
	jz Scr_GetEntArray_50
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0x4]
	movzx eax, word [eax+edi]
	test ax, ax
	jz Scr_GetEntArray_50
	cmp [ebp-0x1a], ax
	jz Scr_GetEntArray_60
Scr_GetEntArray_50:
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp [edx+0xc], esi
	jg Scr_GetEntArray_70
	jmp Scr_GetEntArray_20
Scr_GetEntArray_60:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx-0x100]
	mov [esp], eax
	call Scr_AddEntityNum
	call Scr_AddArray
	mov edx, [ebp-0x24]
	jmp Scr_GetEntArray_50
	nop


;G_CallSpawnEntity(gentity_s*)
G_CallSpawnEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x170]
	test ax, ax
	jnz G_CallSpawnEntity_10
	mov dword [esp+0x4], _cstring_g_callspawnentit
	mov dword [esp], 0xf
	call Com_Printf
	xor eax, eax
G_CallSpawnEntity_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_CallSpawnEntity_10:
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x1c], eax
	mov edi, _cstring_weapon_
	mov ecx, 0x7
	cld
	mov esi, eax
	repe cmpsb
	mov eax, 0x0
	jz G_CallSpawnEntity_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
G_CallSpawnEntity_20:
	test eax, eax
	jz G_CallSpawnEntity_30
G_CallSpawnEntity_60:
	xor esi, esi
	mov ebx, s_bspOrDynamicSpawns
G_CallSpawnEntity_50:
	lea edi, [esi+s_bspOrDynamicSpawns]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call strcmp
	test eax, eax
	jz G_CallSpawnEntity_40
	add esi, 0x8
	add ebx, 0x8
	cmp esi, 0x30
	jnz G_CallSpawnEntity_50
G_CallSpawnEntity_80:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_cannot_be_spaw
	mov dword [esp], 0xf
	call Com_Printf
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_CallSpawnEntity_30:
	mov eax, [ebp-0x1c]
	add eax, 0x7
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov ebx, eax
	test eax, eax
	jz G_CallSpawnEntity_60
	mov [esp], eax
	call BG_GetWeaponDef
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_FindItemForWeapon
	test eax, eax
	jz G_CallSpawnEntity_60
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_SpawnItem
	mov eax, 0x1
	jmp G_CallSpawnEntity_70
G_CallSpawnEntity_40:
	mov eax, [edi+0x4]
	test eax, eax
	jz G_CallSpawnEntity_80
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	mov eax, 0x1
	jmp G_CallSpawnEntity_70


;Scr_ExecEntThread(gentity_s*, int, unsigned int)
Scr_ExecEntThread:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Scr_ExecEntThreadNum
	movzx eax, ax
	leave
	ret


;Scr_GetObjectField(unsigned int, int, int)
Scr_GetObjectField:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	test eax, eax
	jz Scr_GetObjectField_10
	sub eax, 0x1
	jz Scr_GetObjectField_20
Scr_GetObjectField_40:
	pop ebx
	pop ebp
	ret
Scr_GetObjectField_10:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ecx, [eax+ecx]
	add ecx, g_entities
	mov eax, ebx
	and eax, 0xc000
	cmp eax, 0xc000
	jz Scr_GetObjectField_30
	shl ebx, 0x4
	lea eax, [ebx+ent_fields]
	mov edx, [eax+0x4]
	mov [ebp+0x10], edx
	mov eax, [eax+0x8]
	mov [ebp+0xc], eax
	mov [ebp+0x8], ecx
	pop ebx
	pop ebp
	jmp Scr_GetGenericField
Scr_GetObjectField_30:
	mov eax, [ecx+0x15c]
	test eax, eax
	jz Scr_GetObjectField_40
	and bh, 0x3f
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	pop ebx
	pop ebp
	jmp Scr_GetClientField
Scr_GetObjectField_20:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], ecx
	pop ebx
	pop ebp
	jmp Scr_GetHudElemField
	nop


;Scr_SetObjectField(unsigned int, int, int)
Scr_SetObjectField:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	test eax, eax
	jz Scr_SetObjectField_10
	sub eax, 0x1
	jz Scr_SetObjectField_20
Scr_SetObjectField_50:
	mov eax, 0x1
Scr_SetObjectField_60:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_SetObjectField_10:
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ebx]
	add ebx, g_entities
	mov eax, ecx
	and eax, 0xc000
	cmp eax, 0xc000
	jz Scr_SetObjectField_30
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+ent_fields]
	mov eax, [edx+0xc]
	test eax, eax
	jz Scr_SetObjectField_40
	mov [esp+0x4], ecx
	mov [esp], ebx
	call eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_SetObjectField_20:
	mov [esp+0x4], ecx
	mov [esp], ebx
	call Scr_SetHudElemField
	jmp Scr_SetObjectField_50
Scr_SetObjectField_30:
	mov eax, [ebx+0x15c]
	test eax, eax
	jz Scr_SetObjectField_60
	and ch, 0x3f
	mov [esp+0x4], ecx
	mov [esp], eax
	call Scr_SetClientField
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_SetObjectField_40:
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_SetGenericField
	mov eax, 0x1
	jmp Scr_SetObjectField_60



;G_DuplicateEntityFields(gentity_s*, gentity_s const*)
G_DuplicateEntityFields:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ent_fields]
	test eax, eax
	jz G_DuplicateEntityFields_10
	mov ebx, ent_fields+0x8
G_DuplicateEntityFields_30:
	cmp dword [ebx], 0x9
	ja G_DuplicateEntityFields_20
	mov eax, [ebx]
	jmp dword [eax*4+G_DuplicateEntityFields_jumptab_0]
G_DuplicateEntityFields_80:
	mov edx, [ebx-0x4]
	movzx eax, word [esi+edx]
	mov [edi+edx], ax
G_DuplicateEntityFields_20:
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz G_DuplicateEntityFields_30
G_DuplicateEntityFields_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_DuplicateEntityFields_40:
	mov edx, [ebx-0x4]
	mov eax, [esi+edx]
	mov [edi+edx], eax
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz G_DuplicateEntityFields_30
	jmp G_DuplicateEntityFields_10
G_DuplicateEntityFields_50:
	mov edx, [ebx-0x4]
	mov eax, [esi+edx]
	mov [edi+edx], eax
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz G_DuplicateEntityFields_30
	jmp G_DuplicateEntityFields_10
G_DuplicateEntityFields_60:
	mov eax, [ebx-0x4]
	movzx edx, word [esi+eax]
	mov [esp+0x4], edx
	lea eax, [edi+eax]
	mov [esp], eax
	call Scr_SetString
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz G_DuplicateEntityFields_30
	jmp G_DuplicateEntityFields_10
G_DuplicateEntityFields_70:
	mov eax, [ebx-0x4]
	lea ecx, [edi+eax]
	lea eax, [esi+eax]
	mov edx, [eax]
	mov [ecx], edx
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov eax, [eax+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz G_DuplicateEntityFields_30
	jmp G_DuplicateEntityFields_10
	nop
	add [eax], al
	
	
G_DuplicateEntityFields_jumptab_0:
	dd G_DuplicateEntityFields_40
	dd G_DuplicateEntityFields_50
	dd G_DuplicateEntityFields_20
	dd G_DuplicateEntityFields_60
	dd G_DuplicateEntityFields_70
	dd G_DuplicateEntityFields_20
	dd G_DuplicateEntityFields_20
	dd G_DuplicateEntityFields_20
	dd G_DuplicateEntityFields_20
	dd G_DuplicateEntityFields_80


;GScr_AddFieldsForRadiant()
GScr_AddFieldsForRadiant:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_txt
	mov dword [esp], _cstring_radiant
	call Scr_AddFields
	leave
	ret
	add [eax], al


;G_SpawnEntitiesFromString()
G_SpawnEntitiesFromString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, level
	lea ebx, [esi+0xb34]
	mov [esp], ebx
	call G_ParseSpawnVars
	test eax, eax
	jz G_SpawnEntitiesFromString_10
G_SpawnEntitiesFromString_220:
	call SP_worldspawn
	mov [ebp-0x3c], esi
	mov [ebp-0x40], ebx
	mov [ebp-0x48], esi
	mov [ebp-0x44], esi
	mov [ebp-0x4c], esi
	mov eax, ebx
G_SpawnEntitiesFromString_150:
	mov [esp], eax
	call G_ParseSpawnVars
	test eax, eax
	jz G_SpawnEntitiesFromString_20
G_SpawnEntitiesFromString_60:
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_classname
	mov eax, [ebp-0x40]
	mov [esp], eax
	call G_SpawnString
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz G_SpawnEntitiesFromString_30
	mov edi, _cstring_dyn_
	mov ecx, 0x4
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz G_SpawnEntitiesFromString_40
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
G_SpawnEntitiesFromString_40:
	test edx, edx
	jnz G_SpawnEntitiesFromString_50
G_SpawnEntitiesFromString_140:
	mov eax, [ebp-0x40]
	mov [esp], eax
	call G_ParseSpawnVars
	test eax, eax
	jnz G_SpawnEntitiesFromString_60
G_SpawnEntitiesFromString_20:
	call G_ResetEntityParsePoint
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_SpawnEntitiesFromString_50:
	mov edi, _cstring_weapon_
	mov ecx, 0x7
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz G_SpawnEntitiesFromString_70
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
G_SpawnEntitiesFromString_70:
	test edx, edx
	jz G_SpawnEntitiesFromString_80
G_SpawnEntitiesFromString_190:
	xor esi, esi
	mov edi, s_bspOrDynamicSpawns
G_SpawnEntitiesFromString_100:
	lea eax, [esi+s_bspOrDynamicSpawns]
	mov [ebp-0x2c], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcmp
	test eax, eax
	jz G_SpawnEntitiesFromString_90
	add esi, 0x8
	add edi, 0x8
	cmp esi, 0x30
	jnz G_SpawnEntitiesFromString_100
G_SpawnEntitiesFromString_210:
	xor esi, esi
	mov edi, s_bspOnlySpawns
G_SpawnEntitiesFromString_120:
	lea eax, [esi+s_bspOnlySpawns]
	mov [ebp-0x30], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcmp
	test eax, eax
	jz G_SpawnEntitiesFromString_110
	add esi, 0x8
	add edi, 0x8
	cmp esi, 0x70
	jnz G_SpawnEntitiesFromString_120
	mov dword [ebp-0x38], 0x0
	call G_Spawn
	mov edi, eax
	mov eax, [ebp-0x4c]
	mov edx, [eax+0xb38]
	test edx, edx
	jg G_SpawnEntitiesFromString_130
G_SpawnEntitiesFromString_160:
	lea eax, [edi+0x13c]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetOrigin
	lea eax, [edi+0x148]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetAngle
	mov eax, [ebp-0x38]
	test eax, eax
	jz G_SpawnEntitiesFromString_140
	mov [esp], edi
	call dword [ebp-0x38]
	mov eax, [ebp-0x40]
	jmp G_SpawnEntitiesFromString_150
G_SpawnEntitiesFromString_30:
	mov dword [esp+0x4], _cstring_g_callspawn_null
	mov dword [esp], 0xf
	call Com_Printf
	mov eax, [ebp-0x40]
	jmp G_SpawnEntitiesFromString_150
G_SpawnEntitiesFromString_110:
	mov eax, [ebp-0x30]
	mov eax, [eax+0x4]
	mov [ebp-0x38], eax
G_SpawnEntitiesFromString_200:
	cmp eax, G_FreeEntity
	jz G_SpawnEntitiesFromString_140
	call G_Spawn
	mov edi, eax
	mov eax, [ebp-0x4c]
	mov edx, [eax+0xb38]
	test edx, edx
	jle G_SpawnEntitiesFromString_160
G_SpawnEntitiesFromString_130:
	xor esi, esi
	mov ebx, eax
G_SpawnEntitiesFromString_170:
	mov edx, [ebx+0xb40]
	mov eax, [ebx+0xb3c]
	mov ecx, edi
	call G_ParseEntityField
	add esi, 0x1
	add ebx, 0x8
	mov eax, [ebp-0x48]
	cmp esi, [eax+0xb38]
	jl G_SpawnEntitiesFromString_170
	jmp G_SpawnEntitiesFromString_160
G_SpawnEntitiesFromString_80:
	lea eax, [ebx+0x7]
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov ebx, eax
	test eax, eax
	jnz G_SpawnEntitiesFromString_180
G_SpawnEntitiesFromString_230:
	mov ebx, [ebp-0x1c]
	jmp G_SpawnEntitiesFromString_190
G_SpawnEntitiesFromString_90:
	mov eax, [ebp-0x2c]
	mov eax, [eax+0x4]
	mov [ebp-0x38], eax
	test eax, eax
	jnz G_SpawnEntitiesFromString_200
	jmp G_SpawnEntitiesFromString_210
G_SpawnEntitiesFromString_10:
	mov dword [esp+0x4], _cstring_spawnentities_no
	mov dword [esp], 0x2
	call Com_Error
	jmp G_SpawnEntitiesFromString_220
G_SpawnEntitiesFromString_180:
	mov [esp], eax
	call BG_GetWeaponDef
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_FindItemForWeapon
	mov [ebp-0x34], eax
	test eax, eax
	jz G_SpawnEntitiesFromString_230
	call G_Spawn
	mov esi, eax
	mov eax, [ebp-0x3c]
	mov ecx, [eax+0xb38]
	test ecx, ecx
	jg G_SpawnEntitiesFromString_240
G_SpawnEntitiesFromString_260:
	lea eax, [esi+0x13c]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetOrigin
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetAngle
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SpawnItem
	mov eax, [ebp-0x40]
	jmp G_SpawnEntitiesFromString_150
G_SpawnEntitiesFromString_240:
	xor edi, edi
	mov ebx, eax
G_SpawnEntitiesFromString_250:
	mov edx, [ebx+0xb40]
	mov eax, [ebx+0xb3c]
	mov ecx, esi
	call G_ParseEntityField
	add edi, 0x1
	add ebx, 0x8
	mov eax, [ebp-0x44]
	cmp [eax+0xb38], edi
	jg G_SpawnEntitiesFromString_250
	jmp G_SpawnEntitiesFromString_260
	nop


;GScr_AddFieldsForEntity()
GScr_AddFieldsForEntity:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov edx, [ent_fields]
	test edx, edx
	jz GScr_AddFieldsForEntity_10
	xor esi, esi
	mov ebx, ent_fields+0x10
GScr_AddFieldsForEntity_20:
	mov eax, esi
	sar eax, 0x4
	movzx eax, ax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Scr_AddClassField
	mov edx, [ebx]
	add esi, 0x10
	add ebx, 0x10
	test edx, edx
	jnz GScr_AddFieldsForEntity_20
GScr_AddFieldsForEntity_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp GScr_AddFieldsForClient

;Initialized global or static variables of g_spawn_mp:
SECTION .data


;Initialized constant data of g_spawn_mp:
SECTION .rdata
s_bspOnlySpawns: dd _cstring_trigger_use, trigger_use, _cstring_trigger_use_touc, trigger_use_touch, _cstring_trigger_multiple, SP_trigger_multiple, _cstring_trigger_disk, SP_trigger_disk, _cstring_trigger_hurt, SP_trigger_hurt, _cstring_trigger_once, SP_trigger_once, _cstring_trigger_damage, SP_trigger_damage, _cstring_trigger_lookat, SP_trigger_lookat, _cstring_light, SP_light, _cstring_misc_mg42, SP_turret, _cstring_misc_turret, SP_turret, _cstring_script_brushmode, SP_script_brushmodel, _cstring_script_struct, G_FreeEntity, _cstring_script_vehicle_m, G_VehSpawner, 0x0, 0x0, 0x0, 0x0
s_bspOrDynamicSpawns: dd _cstring_info_notnull, SP_info_notnull, _cstring_info_notnull_big, SP_info_notnull, _cstring_trigger_radius, SP_trigger_radius, _cstring_script_model, SP_script_model, _cstring_script_origin, SP_script_origin, _cstring_script_vehicle_c, G_VehCollmapSpawner, 0x0, 0x0, 0x0, 0x0
ent_fields: dd _cstring_classname, 0x170, 0x3, Scr_ReadOnlyField, _cstring_origin, 0x13c, 0x4, Scr_SetOrigin, _cstring_model, 0x168, 0x9, Scr_ReadOnlyField, _cstring_spawnflags, 0x17c, 0x0, Scr_ReadOnlyField, _cstring_target, 0x172, 0x3, 0x0, _cstring_targetname, 0x174, 0x3, 0x0, _cstring_count, 0x1ac, 0x0, 0x0, _cstring_health, 0x1a0, 0x0, Scr_SetHealth, _cstring_dmg, 0x1a8, 0x0, 0x0, _cstring_angles, 0x148, 0x4, Scr_SetAngles, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_spawn_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_tried_to_set_a_r:		db "Tried to set a read only entity field",0
_cstring_f_f_f:		db "%f %f %f",0
_cstring_getent_used_with:		db "getent used with more than one entity",0
_cstring_null:		db 0
_cstring_classname:		db "classname",0
_cstring_script_struct:		db "script_struct",0
_cstring_worldspawn:		db "worldspawn",0
_cstring_cod:		db "cod",0
_cstring_ambienttrack:		db "ambienttrack",0
_cstring_ns:		db "n",5ch,"%s",0
_cstring_message:		db "message",0
_cstring_800:		db "800",0
_cstring_gravity:		db "gravity",0
_cstring_northyaw:		db "northyaw",0
_cstring_0:		db "0",0
_cstring_spawnflags:		db "spawnflags",0
_cstring_sp_worldspawn_th:		db 15h,"SP_worldspawn: The first entity isn",27h,"t ",27h,"worldspawn",27h,0
_cstring_not_an_entity:		db "not an entity",0
_cstring_g_callspawnentit:		db "G_CallSpawnEntity: NULL classname",0ah,0
_cstring_weapon_:		db "weapon_",0
_cstring_s_cannot_be_spaw:		db "%s cannot be spawned dynamically",0ah,0
_cstring_txt:		db "txt",0
_cstring_radiant:		db "radiant",0
_cstring_dyn_:		db "dyn_",0
_cstring_g_callspawn_null:		db "G_CallSpawn: NULL classname",0ah,0
_cstring_spawnentities_no:		db 15h,"SpawnEntities: no entities",0
_cstring_trigger_use:		db "trigger_use",0
_cstring_trigger_use_touc:		db "trigger_use_touch",0
_cstring_trigger_multiple:		db "trigger_multiple",0
_cstring_trigger_disk:		db "trigger_disk",0
_cstring_trigger_hurt:		db "trigger_hurt",0
_cstring_trigger_once:		db "trigger_once",0
_cstring_trigger_damage:		db "trigger_damage",0
_cstring_trigger_lookat:		db "trigger_lookat",0
_cstring_light:		db "light",0
_cstring_misc_mg42:		db "misc_mg42",0
_cstring_misc_turret:		db "misc_turret",0
_cstring_script_brushmode:		db "script_brushmodel",0
_cstring_script_vehicle_m:		db "script_vehicle_mp",0
_cstring_info_notnull:		db "info_notnull",0
_cstring_info_notnull_big:		db "info_notnull_big",0
_cstring_trigger_radius:		db "trigger_radius",0
_cstring_script_model:		db "script_model",0
_cstring_script_origin:		db "script_origin",0
_cstring_script_vehicle_c:		db "script_vehicle_collmap",0
_cstring_origin:		db "origin",0
_cstring_model:		db "model",0
_cstring_target:		db "target",0
_cstring_targetname:		db "targetname",0
_cstring_count:		db "count",0
_cstring_health:		db "health",0
_cstring_dmg:		db "dmg",0
_cstring_angles:		db "angles",0


;All constant floats and doubles:
SECTION .rdata
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533

