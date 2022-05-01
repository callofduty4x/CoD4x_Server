;Imports of g_spawn_mp:
	extern _Z9Scr_ErrorPKc
	extern _Z13Scr_FindFieldPKcPi
	extern atoi
	extern _Z10Scr_AddInti
	extern sscanf
	extern _Z13Scr_AddVectorPKf
	extern _Z13Scr_AddStringPKc
	extern atof
	extern _Z12Scr_AddFloatf
	extern _Z9I_stricmpPKcS0_
	extern _Z25Scr_SetDynamicEntityFieldijj
	extern _Z13Scr_SetStringPtj
	extern _Z11G_NewStringPKc
	extern _Z22Com_IsLegacyXModelNamePKc
	extern _Z10G_SetModelP9gentity_sPKc
	extern level
	extern _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	extern _Z18Scr_GetConstStringj
	extern _Z13Scr_GetStringj
	extern _Z13Scr_GetOffsetjPKc
	extern g_entities
	extern _Z16Scr_AddEntityNumij
	extern _Z13Scr_NotifyNumijjj
	extern g_scr_data
	extern _Z14Scr_ExecThreadij
	extern _Z14Scr_FreeThreadt
	extern _Z16G_ParseSpawnVarsP8SpawnVar
	extern _Z17Scr_AddExecThreadij
	extern _Z13Scr_GetObjectj
	extern _Z18Scr_SetStructFieldjj
	extern _Z23G_ResetEntityParsePointv
	extern _Z18SV_SetConfigstringiPKc
	extern _Z2vaPKcz
	extern g_motd
	extern g_gravity
	extern _Z13Dvar_SetFloatPK6dvar_sf
	extern sinf
	extern cosf
	extern scr_const
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z16Scr_GetEntityRefj
	extern _Z14Scr_ParamErrorjPKc
	extern g_hudelems
	extern _Z17Scr_FreeEntityNumij
	extern _Z27Scr_FreeHudElemConstStringsP14game_hudelem_s
	extern _Z15Scr_GetNumParamv
	extern _Z13Scr_MakeArrayv
	extern _Z12Scr_AddArrayv
	extern _Z10Com_PrintfiPKcz
	extern _Z18SL_ConvertToStringj
	extern strcmp
	extern _Z23G_GetWeaponIndexForNamePKc
	extern _Z15BG_GetWeaponDefj
	extern _Z20BG_FindItemForWeaponii
	extern _Z11G_SpawnItemP9gentity_sPK7gitem_s
	extern _Z20Scr_ExecEntThreadNumijij
	extern _Z18Scr_GetClientFieldP9gclient_si
	extern _Z19Scr_GetHudElemFieldii
	extern _Z19Scr_SetHudElemFieldii
	extern _Z18Scr_SetClientFieldP9gclient_si
	extern _Z11G_ModelNamei
	extern _Z18Scr_AddConstStringj
	extern _Z13Scr_AddObjectj
	extern _Z11Scr_GetTypej
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern _Z10Scr_GetIntj
	extern _Z13Scr_GetVectorjPf
	extern _Z29Scr_GetConstStringIncludeNullj
	extern _Z12Scr_GetFloatj
	extern _Z17Scr_AddClassFieldjPKcj
	extern _Z23GScr_AddFieldsForClientv
	extern _Z13Scr_AddFieldsPKcS0_
	extern _Z7G_Spawnv
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z12G_FreeEntityP9gentity_s
	extern _Z11trigger_useP9gentity_s
	extern _Z17trigger_use_touchP9gentity_s
	extern _Z19SP_trigger_multipleP9gentity_s
	extern _Z15SP_trigger_diskP9gentity_s
	extern _Z15SP_trigger_hurtP9gentity_s
	extern _Z15SP_trigger_onceP9gentity_s
	extern _Z17SP_trigger_damageP9gentity_s
	extern _Z17SP_trigger_lookatP9gentity_s
	extern _Z8SP_lightP9gentity_s
	extern _Z9SP_turretP9gentity_s
	extern _Z20SP_script_brushmodelP9gentity_s
	extern _Z12G_VehSpawnerP9gentity_s
	extern _Z15SP_info_notnullP9gentity_s
	extern _Z17SP_trigger_radiusP9gentity_s
	extern _Z15SP_script_modelP9gentity_s
	extern _Z16SP_script_originP9gentity_s
	extern _Z19G_VehCollmapSpawnerP9gentity_s
	extern _Z13Scr_SetOriginP9gentity_si
	extern _Z13Scr_SetHealthP9gentity_si
	extern _Z13Scr_SetAnglesP9gentity_si

;Exports of g_spawn_mp:
	global s_bspOnlySpawns
	global s_bspOrDynamicSpawns
	global _Z17Scr_ReadOnlyFieldP9gentity_si
	global _Z33G_SetEntityScriptVariableInternalPKcS0_
	global _Z18G_ParseEntityFieldPKcS0_P9gentity_s
	global _Z10G_SpawnIntPKcS0_Pi
	global _Z10Scr_GetEntv
	global _Z10Scr_NotifyP9gentity_stj
	global _Z12G_SpawnFloatPKcS0_Pf
	global _Z13G_LoadStructsv
	global _Z13SP_worldspawnv
	global _Z13Scr_AddEntityP9gentity_s
	global _Z13Scr_GetEntityj
	global _Z14Scr_AddHudElemP14game_hudelem_s
	global _Z14Scr_FreeEntityP9gentity_s
	global _Z15Scr_FreeHudElemP14game_hudelem_s
	global _Z15Scr_GetEntArrayv
	global _Z17G_CallSpawnEntityP9gentity_s
	global _Z17Scr_ExecEntThreadP9gentity_sij
	global _Z18G_LevelSpawnStringPKcS0_PS0_
	global _Z18Scr_GetObjectFieldjii
	global _Z18Scr_SetObjectFieldjii
	global _Z19Scr_GetGenericFieldPh11fieldtype_ti
	global _Z19Scr_SetGenericFieldPh11fieldtype_ti
	global _Z23GScr_AddFieldsForEntityv
	global _Z23G_DuplicateEntityFieldsP9gentity_sPKS_
	global _Z24GScr_AddFieldsForRadiantv
	global _Z25G_SpawnEntitiesFromStringv


SECTION .text


;Scr_ReadOnlyField(gentity_s*, int)
_Z17Scr_ReadOnlyFieldP9gentity_si:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x8], _cstring_tried_to_set_a_r
	pop ebp
	jmp _Z9Scr_ErrorPKc


;G_SetEntityScriptVariableInternal(char const*, char const*)
_Z33G_SetEntityScriptVariableInternalPKcS0_:
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
	call _Z13Scr_FindFieldPKcPi
	mov edi, eax
	test eax, eax
	jz _Z33G_SetEntityScriptVariableInternalPKcS0__10
	mov eax, [ebp-0x1c]
	cmp eax, 0x4
	jz _Z33G_SetEntityScriptVariableInternalPKcS0__20
	jg _Z33G_SetEntityScriptVariableInternalPKcS0__30
	cmp eax, 0x2
	jz _Z33G_SetEntityScriptVariableInternalPKcS0__40
_Z33G_SetEntityScriptVariableInternalPKcS0__10:
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33G_SetEntityScriptVariableInternalPKcS0__30:
	cmp eax, 0x5
	jz _Z33G_SetEntityScriptVariableInternalPKcS0__50
	cmp eax, 0x6
	jnz _Z33G_SetEntityScriptVariableInternalPKcS0__10
	mov [esp], esi
	call atoi
	mov [esp], eax
	call _Z10Scr_AddInti
	jmp _Z33G_SetEntityScriptVariableInternalPKcS0__10
_Z33G_SetEntityScriptVariableInternalPKcS0__20:
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
	call _Z13Scr_AddVectorPKf
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33G_SetEntityScriptVariableInternalPKcS0__40:
	mov [esp], esi
	call _Z13Scr_AddStringPKc
	jmp _Z33G_SetEntityScriptVariableInternalPKcS0__10
_Z33G_SetEntityScriptVariableInternalPKcS0__50:
	mov [esp], esi
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	movss [esp], xmm0
	call _Z12Scr_AddFloatf
	jmp _Z33G_SetEntityScriptVariableInternalPKcS0__10


;G_ParseEntityField(char const*, char const*, gentity_s*)
_Z18G_ParseEntityFieldPKcS0_P9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, eax
	mov edi, edx
	mov [ebp-0x34], ecx
	mov eax, [fields]
	test eax, eax
	jz _Z18G_ParseEntityFieldPKcS0_P9gentity_s_10
	mov ebx, fields
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_30:
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18G_ParseEntityFieldPKcS0_P9gentity_s_20
	add ebx, 0x10
	mov eax, [ebx]
	test eax, eax
	jnz _Z18G_ParseEntityFieldPKcS0_P9gentity_s_30
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_10:
	mov edx, edi
	mov eax, esi
	call _Z33G_SetEntityScriptVariableInternalPKcS0_
	test eax, eax
	jnz _Z18G_ParseEntityFieldPKcS0_P9gentity_s_40
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x34]
	mov eax, [edx]
	mov [esp], eax
	call _Z25Scr_SetDynamicEntityFieldijj
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_20:
	cmp dword [ebx+0x8], 0x9
	ja _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
	mov eax, [ebx+0x8]
	jmp dword [eax*4+_Z18G_ParseEntityFieldPKcS0_P9gentity_s_jumptab_0]
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_70:
	mov eax, [ebx+0x4]
	add [ebp-0x34], eax
	mov [esp], edi
	call atoi
	mov edx, [ebp-0x34]
	mov [edx], eax
	jmp _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_80:
	mov ecx, [ebx+0x4]
	add [ebp-0x34], ecx
	mov [esp], edi
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	mov eax, [ebp-0x34]
	movss [eax], xmm0
	jmp _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_90:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x34]
	add eax, [ebx+0x4]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	mov eax, [ebx+0x4]
	add [ebp-0x34], eax
	mov [esp], edi
	call _Z11G_NewStringPKc
	mov edx, [ebp-0x34]
	mov [edx], ax
	jmp _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_100:
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
	jmp _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_110:
	cmp byte [edi], 0x2a
	jz _Z18G_ParseEntityFieldPKcS0_P9gentity_s_60
	mov [esp], edi
	call _Z22Com_IsLegacyXModelNamePKc
	lea edx, [edi+0x7]
	test eax, eax
	cmovnz edi, edx
	mov [esp+0x4], edi
	mov ecx, [ebp-0x34]
	mov [esp], ecx
	call _Z10G_SetModelP9gentity_sPKc
	jmp _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_60:
	lea eax, [edi+0x1]
	mov [esp], eax
	call atoi
	movzx eax, ax
	mov edx, [ebp-0x34]
	mov [edx+0x88], eax
	jmp _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
	
	
_Z18G_ParseEntityFieldPKcS0_P9gentity_s_jumptab_0:
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_70
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_80
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_90
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_100
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_50
	dd _Z18G_ParseEntityFieldPKcS0_P9gentity_s_110


;G_SpawnInt(char const*, char const*, int*)
_Z10G_SpawnIntPKcS0_Pi:
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
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
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
_Z10Scr_GetEntv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov [ebp-0x1a], ax
	mov dword [esp], 0x1
	call _Z13Scr_GetStringj
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetOffsetjPKc
	test eax, eax
	js _Z10Scr_GetEntv_10
	shl eax, 0x4
	lea edi, [eax+fields]
	cmp dword [edi+0x8], 0x3
	jz _Z10Scr_GetEntv_20
_Z10Scr_GetEntv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Scr_GetEntv_20:
	mov ecx, level
	mov ebx, [ecx+0xc]
	test ebx, ebx
	jle _Z10Scr_GetEntv_10
	xor esi, esi
	mov ebx, g_entities
	xor edx, edx
_Z10Scr_GetEntv_50:
	cmp byte [ebx+0x100], 0x0
	jz _Z10Scr_GetEntv_30
	mov eax, [edi+0x4]
	movzx eax, word [ebx+eax]
	test ax, ax
	jz _Z10Scr_GetEntv_30
	cmp [ebp-0x1a], ax
	jz _Z10Scr_GetEntv_40
_Z10Scr_GetEntv_30:
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [ecx+0xc]
	jl _Z10Scr_GetEntv_50
	test edx, edx
	jz _Z10Scr_GetEntv_10
	mov dword [esp+0x4], 0x0
	mov eax, [edx]
	mov [esp], eax
	call _Z16Scr_AddEntityNumij
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Scr_GetEntv_40:
	test edx, edx
	jz _Z10Scr_GetEntv_60
	mov dword [esp], _cstring_getent_used_with
	call _Z9Scr_ErrorPKc
	mov edx, ebx
	mov ecx, level
	jmp _Z10Scr_GetEntv_30
_Z10Scr_GetEntv_60:
	mov edx, ebx
	jmp _Z10Scr_GetEntv_30


;Scr_Notify(gentity_s*, unsigned short, unsigned int)
_Z10Scr_NotifyP9gentity_stj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, word [ebp+0xc]
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z13Scr_NotifyNumijjj
	leave
	ret


;G_SpawnFloat(char const*, char const*, float*)
_Z12G_SpawnFloatPKcS0_Pf:
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
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
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
_Z13G_LoadStructsv:
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
	call _Z14Scr_ExecThreadij
	movzx eax, ax
	mov [esp], eax
	call _Z14Scr_FreeThreadt
	mov ebx, level
	mov [ebp-0x30], ebx
	jmp _Z13G_LoadStructsv_10
_Z13G_LoadStructsv_40:
	mov ebx, level
_Z13G_LoadStructsv_10:
	lea esi, [ebx+0xb34]
	mov [esp], esi
	call _Z16G_ParseSpawnVarsP8SpawnVar
	test eax, eax
	jz _Z13G_LoadStructsv_20
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_classname
	mov [esp], esi
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	mov eax, [ebp-0x1c]
	mov esi, _cstring_script_struct
	mov ecx, 0xe
	cld
	mov edi, eax
	repe cmpsb
	mov eax, 0x0
	jz _Z13G_LoadStructsv_30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z13G_LoadStructsv_30:
	test eax, eax
	jnz _Z13G_LoadStructsv_40
	mov dword [esp+0x4], 0x0
	mov eax, g_scr_data
	mov eax, [eax+0x10b8]
	mov [esp], eax
	call _Z17Scr_AddExecThreadij
	mov dword [esp], 0x0
	call _Z13Scr_GetObjectj
	mov [ebp-0x2c], eax
	mov eax, [ebx+0xb38]
	test eax, eax
	jle _Z13G_LoadStructsv_40
	xor edi, edi
	mov esi, ebx
	jmp _Z13G_LoadStructsv_50
_Z13G_LoadStructsv_60:
	add edi, 0x1
	add esi, 0x8
	mov ebx, [ebp-0x30]
	cmp edi, [ebx+0xb38]
	jge _Z13G_LoadStructsv_10
_Z13G_LoadStructsv_50:
	mov edx, [esi+0xb40]
	mov eax, [esi+0xb3c]
	call _Z33G_SetEntityScriptVariableInternalPKcS0_
	test eax, eax
	jz _Z13G_LoadStructsv_60
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z18Scr_SetStructFieldjj
	jmp _Z13G_LoadStructsv_60
_Z13G_LoadStructsv_20:
	call _Z23G_ResetEntityParsePointv
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SP_worldspawn()
_Z13SP_worldspawnv:
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
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	mov dword [esp+0x4], _cstring_worldspawn
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13SP_worldspawnv_10
_Z13SP_worldspawnv_60:
	mov dword [esp+0x4], _cstring_cod
	mov dword [esp], 0x2
	call _Z18SV_SetConfigstringiPKc
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_ambienttrack
	mov [esp], ebx
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	mov eax, [ebp-0x1c]
	cmp byte [eax], 0x0
	jz _Z13SP_worldspawnv_20
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ns
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x335
	call _Z18SV_SetConfigstringiPKc
_Z13SP_worldspawnv_40:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_message
	mov edi, level
	lea ebx, [edi+0xb34]
	mov [esp], ebx
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call _Z18SV_SetConfigstringiPKc
	mov eax, g_motd
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0xa
	call _Z18SV_SetConfigstringiPKc
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_800
	mov dword [esp+0x4], _cstring_gravity
	mov [esp], ebx
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	cvtsd2ss xmm0, [ebp-0x40]
	movss [esp+0x4], xmm0
	mov eax, g_gravity
	mov eax, [eax]
	mov [esp], eax
	call _Z13Dvar_SetFloatPK6dvar_sf
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_northyaw
	mov [esp], ebx
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	mov eax, [ebp-0x1c]
	cmp byte [eax], 0x0
	jz _Z13SP_worldspawnv_30
	mov [esp+0x4], eax
	mov dword [esp], 0x336
	call _Z18SV_SetConfigstringiPKc
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
_Z13SP_worldspawnv_50:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_0
	mov dword [esp+0x4], _cstring_spawnflags
	mov eax, level
	add eax, 0xb34
	mov [esp], eax
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
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
	call _Z13Scr_SetStringPtj
	mov byte [ebx+0x9cc18], 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SP_worldspawnv_20:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], 0x335
	call _Z18SV_SetConfigstringiPKc
	jmp _Z13SP_worldspawnv_40
_Z13SP_worldspawnv_30:
	mov dword [esp+0x4], _cstring_0
	mov dword [esp], 0x336
	call _Z18SV_SetConfigstringiPKc
	mov dword [edi+0x2e60], 0x3f800000
	mov dword [edi+0x2e64], 0x0
	jmp _Z13SP_worldspawnv_50
_Z13SP_worldspawnv_10:
	mov dword [esp+0x4], _cstring_sp_worldspawn_th
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z13SP_worldspawnv_60


;Scr_AddEntity(gentity_s*)
_Z13Scr_AddEntityP9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z16Scr_AddEntityNumij
	leave
	ret
	nop


;Scr_GetEntity(unsigned int)
_Z13Scr_GetEntityj:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z16Scr_GetEntityRefj
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z13Scr_GetEntityj_10
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax]
	add eax, g_entities
_Z13Scr_GetEntityj_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13Scr_GetEntityj_10:
	mov dword [esp+0x4], _cstring_not_an_entity
	mov [esp], ebx
	call _Z14Scr_ParamErrorjPKc
	xor eax, eax
	jmp _Z13Scr_GetEntityj_20
	nop


;Scr_AddHudElem(game_hudelem_s*)
_Z14Scr_AddHudElemP14game_hudelem_s:
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
	call _Z16Scr_AddEntityNumij
	leave
	ret
	nop


;Scr_FreeEntity(gentity_s*)
_Z14Scr_FreeEntityP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [fields]
	test ebx, ebx
	jz _Z14Scr_FreeEntityP9gentity_s_10
	mov ebx, fields+0x8
	jmp _Z14Scr_FreeEntityP9gentity_s_20
_Z14Scr_FreeEntityP9gentity_s_30:
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jz _Z14Scr_FreeEntityP9gentity_s_10
_Z14Scr_FreeEntityP9gentity_s_20:
	cmp dword [ebx], 0x3
	jnz _Z14Scr_FreeEntityP9gentity_s_30
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	add eax, [ebx-0x4]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz _Z14Scr_FreeEntityP9gentity_s_20
_Z14Scr_FreeEntityP9gentity_s_10:
	mov esi, [ebp+0x8]
	xor edi, edi
	mov ebx, esi
	add ebx, 0x246
_Z14Scr_FreeEntityP9gentity_s_40:
	mov word [esi+0x220], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z13Scr_SetStringPtj
	add edi, 0x1
	add ebx, 0x2
	add esi, 0x2
	cmp edi, 0x13
	jnz _Z14Scr_FreeEntityP9gentity_s_40
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call _Z17Scr_FreeEntityNumij
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_FreeHudElem(game_hudelem_s*)
_Z15Scr_FreeHudElemP14game_hudelem_s:
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
	call _Z13Scr_NotifyNumijjj
	mov [esp], esi
	call _Z27Scr_FreeHudElemConstStringsP14game_hudelem_s
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z17Scr_FreeEntityNumij
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Scr_GetEntArray()
_Z15Scr_GetEntArrayv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call _Z15Scr_GetNumParamv
	test eax, eax
	jnz _Z15Scr_GetEntArrayv_10
	call _Z13Scr_MakeArrayv
	mov edx, level
	mov edi, [edx+0xc]
	test edi, edi
	jle _Z15Scr_GetEntArrayv_20
	xor esi, esi
	mov ebx, g_entities
	add ebx, 0x100
	mov edi, edx
	jmp _Z15Scr_GetEntArrayv_30
_Z15Scr_GetEntArrayv_40:
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [edx+0xc]
	jge _Z15Scr_GetEntArrayv_20
_Z15Scr_GetEntArrayv_30:
	cmp byte [ebx], 0x0
	jz _Z15Scr_GetEntArrayv_40
	mov dword [esp+0x4], 0x0
	mov eax, [ebx-0x100]
	mov [esp], eax
	call _Z16Scr_AddEntityNumij
	call _Z12Scr_AddArrayv
	mov edx, edi
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [edx+0xc]
	jl _Z15Scr_GetEntArrayv_30
_Z15Scr_GetEntArrayv_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Scr_GetEntArrayv_10:
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov [ebp-0x1a], ax
	mov dword [esp], 0x1
	call _Z13Scr_GetStringj
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetOffsetjPKc
	test eax, eax
	js _Z15Scr_GetEntArrayv_20
	shl eax, 0x4
	add eax, fields
	mov [ebp-0x20], eax
	cmp dword [eax+0x8], 0x3
	jnz _Z15Scr_GetEntArrayv_20
	call _Z13Scr_MakeArrayv
	mov edx, level
	mov esi, [edx+0xc]
	test esi, esi
	jle _Z15Scr_GetEntArrayv_20
	xor esi, esi
	mov ebx, g_entities
	mov edi, ebx
	add ebx, 0x100
	mov [ebp-0x24], edx
_Z15Scr_GetEntArrayv_70:
	cmp byte [ebx], 0x0
	jz _Z15Scr_GetEntArrayv_50
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0x4]
	movzx eax, word [eax+edi]
	test ax, ax
	jz _Z15Scr_GetEntArrayv_50
	cmp [ebp-0x1a], ax
	jz _Z15Scr_GetEntArrayv_60
_Z15Scr_GetEntArrayv_50:
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp [edx+0xc], esi
	jg _Z15Scr_GetEntArrayv_70
	jmp _Z15Scr_GetEntArrayv_20
_Z15Scr_GetEntArrayv_60:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx-0x100]
	mov [esp], eax
	call _Z16Scr_AddEntityNumij
	call _Z12Scr_AddArrayv
	mov edx, [ebp-0x24]
	jmp _Z15Scr_GetEntArrayv_50
	nop


;G_CallSpawnEntity(gentity_s*)
_Z17G_CallSpawnEntityP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x170]
	test ax, ax
	jnz _Z17G_CallSpawnEntityP9gentity_s_10
	mov dword [esp+0x4], _cstring_g_callspawnentit
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	xor eax, eax
_Z17G_CallSpawnEntityP9gentity_s_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17G_CallSpawnEntityP9gentity_s_10:
	movzx eax, ax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [ebp-0x1c], eax
	mov edi, _cstring_weapon_
	mov ecx, 0x7
	cld
	mov esi, eax
	repe cmpsb
	mov eax, 0x0
	jz _Z17G_CallSpawnEntityP9gentity_s_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z17G_CallSpawnEntityP9gentity_s_20:
	test eax, eax
	jz _Z17G_CallSpawnEntityP9gentity_s_30
_Z17G_CallSpawnEntityP9gentity_s_60:
	xor esi, esi
	mov ebx, s_bspOrDynamicSpawns
_Z17G_CallSpawnEntityP9gentity_s_50:
	lea edi, [esi+s_bspOrDynamicSpawns]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call strcmp
	test eax, eax
	jz _Z17G_CallSpawnEntityP9gentity_s_40
	add esi, 0x8
	add ebx, 0x8
	cmp esi, 0x30
	jnz _Z17G_CallSpawnEntityP9gentity_s_50
_Z17G_CallSpawnEntityP9gentity_s_80:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_cannot_be_spaw
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17G_CallSpawnEntityP9gentity_s_30:
	mov eax, [ebp-0x1c]
	add eax, 0x7
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov ebx, eax
	test eax, eax
	jz _Z17G_CallSpawnEntityP9gentity_s_60
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z20BG_FindItemForWeaponii
	test eax, eax
	jz _Z17G_CallSpawnEntityP9gentity_s_60
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11G_SpawnItemP9gentity_sPK7gitem_s
	mov eax, 0x1
	jmp _Z17G_CallSpawnEntityP9gentity_s_70
_Z17G_CallSpawnEntityP9gentity_s_40:
	mov eax, [edi+0x4]
	test eax, eax
	jz _Z17G_CallSpawnEntityP9gentity_s_80
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	mov eax, 0x1
	jmp _Z17G_CallSpawnEntityP9gentity_s_70


;Scr_ExecEntThread(gentity_s*, int, unsigned int)
_Z17Scr_ExecEntThreadP9gentity_sij:
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
	call _Z20Scr_ExecEntThreadNumijij
	movzx eax, ax
	leave
	ret


;G_LevelSpawnString(char const*, char const*, char const**)
_Z18G_LevelSpawnStringPKcS0_PS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, level
	add eax, 0xb34
	mov [esp], eax
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	leave
	ret
	nop


;Scr_GetObjectField(unsigned int, int, int)
_Z18Scr_GetObjectFieldjii:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	test eax, eax
	jz _Z18Scr_GetObjectFieldjii_10
	sub eax, 0x1
	jz _Z18Scr_GetObjectFieldjii_20
_Z18Scr_GetObjectFieldjii_40:
	pop ebx
	pop ebp
	ret
_Z18Scr_GetObjectFieldjii_10:
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
	jz _Z18Scr_GetObjectFieldjii_30
	shl ebx, 0x4
	lea eax, [ebx+fields]
	mov edx, [eax+0x4]
	mov [ebp+0x10], edx
	mov eax, [eax+0x8]
	mov [ebp+0xc], eax
	mov [ebp+0x8], ecx
	pop ebx
	pop ebp
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti
_Z18Scr_GetObjectFieldjii_30:
	mov eax, [ecx+0x15c]
	test eax, eax
	jz _Z18Scr_GetObjectFieldjii_40
	and bh, 0x3f
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	pop ebx
	pop ebp
	jmp _Z18Scr_GetClientFieldP9gclient_si
_Z18Scr_GetObjectFieldjii_20:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], ecx
	pop ebx
	pop ebp
	jmp _Z19Scr_GetHudElemFieldii
	nop


;Scr_SetObjectField(unsigned int, int, int)
_Z18Scr_SetObjectFieldjii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	test eax, eax
	jz _Z18Scr_SetObjectFieldjii_10
	sub eax, 0x1
	jz _Z18Scr_SetObjectFieldjii_20
_Z18Scr_SetObjectFieldjii_50:
	mov eax, 0x1
_Z18Scr_SetObjectFieldjii_60:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18Scr_SetObjectFieldjii_10:
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
	jz _Z18Scr_SetObjectFieldjii_30
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+fields]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z18Scr_SetObjectFieldjii_40
	mov [esp+0x4], ecx
	mov [esp], ebx
	call eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18Scr_SetObjectFieldjii_20:
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z19Scr_SetHudElemFieldii
	jmp _Z18Scr_SetObjectFieldjii_50
_Z18Scr_SetObjectFieldjii_30:
	mov eax, [ebx+0x15c]
	test eax, eax
	jz _Z18Scr_SetObjectFieldjii_60
	and ch, 0x3f
	mov [esp+0x4], ecx
	mov [esp], eax
	call _Z18Scr_SetClientFieldP9gclient_si
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18Scr_SetObjectFieldjii_40:
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19Scr_SetGenericFieldPh11fieldtype_ti
	mov eax, 0x1
	jmp _Z18Scr_SetObjectFieldjii_60


;Scr_GetGenericField(unsigned char*, fieldtype_t, int)
_Z19Scr_GetGenericFieldPh11fieldtype_ti:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0xc]
	cmp eax, 0x9
	ja _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
	jmp dword [eax*4+_Z19Scr_GetGenericFieldPh11fieldtype_ti_jumptab_0]
_Z19Scr_GetGenericFieldPh11fieldtype_ti_110:
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x8]
	movzx eax, word [ecx+ebx]
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [esp], eax
	call _Z18Scr_AddConstStringj
_Z19Scr_GetGenericFieldPh11fieldtype_ti_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z19Scr_GetGenericFieldPh11fieldtype_ti_20:
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov eax, [ebx+edx]
	mov [esp], eax
	call _Z10Scr_AddInti
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
_Z19Scr_GetGenericFieldPh11fieldtype_ti_100:
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x10]
	movzx eax, word [ebx+edx]
	test ax, ax
	jz _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
	movzx eax, ax
	mov [esp], eax
	call _Z13Scr_AddObjectj
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
_Z19Scr_GetGenericFieldPh11fieldtype_ti_90:
	xor eax, eax
	mov [ebp-0x14], eax
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov edx, [ecx+ebx]
	mov [ebp-0x10], edx
	mov [ebp-0xc], eax
	lea eax, [ebp-0x14]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
_Z19Scr_GetGenericFieldPh11fieldtype_ti_80:
	mov eax, [ebp+0x8]
	add eax, [ebp+0x10]
	cmp word [eax], 0x0
	jz _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
	mov dword [esp+0x4], 0x0
	movzx edx, word [eax]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	mov edx, g_entities
	mov eax, [edx+eax]
	mov [esp], eax
	call _Z16Scr_AddEntityNumij
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
_Z19Scr_GetGenericFieldPh11fieldtype_ti_70:
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov eax, [edx+ecx]
	test eax, eax
	jz _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
	mov dword [esp+0x4], 0x0
	mov eax, [eax]
	mov [esp], eax
	call _Z16Scr_AddEntityNumij
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
_Z19Scr_GetGenericFieldPh11fieldtype_ti_60:
	mov eax, [ebp+0x8]
	add eax, [ebp+0x10]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
_Z19Scr_GetGenericFieldPh11fieldtype_ti_50:
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	movzx eax, word [edx+ecx]
	test ax, ax
	jz _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
	movzx eax, ax
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
_Z19Scr_GetGenericFieldPh11fieldtype_ti_40:
	mov eax, [ebp+0x8]
	add eax, [ebp+0x10]
	mov [esp], eax
	call _Z13Scr_AddStringPKc
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
_Z19Scr_GetGenericFieldPh11fieldtype_ti_30:
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov eax, [ecx+ebx]
	mov [esp], eax
	call _Z12Scr_AddFloatf
	jmp _Z19Scr_GetGenericFieldPh11fieldtype_ti_10
	
	
_Z19Scr_GetGenericFieldPh11fieldtype_ti_jumptab_0:
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_20
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_30
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_40
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_50
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_60
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_70
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_80
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_90
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_100
	dd _Z19Scr_GetGenericFieldPh11fieldtype_ti_110


;Scr_SetGenericField(unsigned char*, fieldtype_t, int)
_Z19Scr_SetGenericFieldPh11fieldtype_ti:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0xc]
	cmp eax, 0x7
	ja _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
	jmp dword [eax*4+_Z19Scr_SetGenericFieldPh11fieldtype_ti_jumptab_0]
_Z19Scr_SetGenericFieldPh11fieldtype_ti_120:
	mov dword [esp], 0x0
	call _Z11Scr_GetTypej
	test eax, eax
	jnz _Z19Scr_SetGenericFieldPh11fieldtype_ti_20
_Z19Scr_SetGenericFieldPh11fieldtype_ti_50:
	xor eax, eax
_Z19Scr_SetGenericFieldPh11fieldtype_ti_60:
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	add eax, [ebp+0x8]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
_Z19Scr_SetGenericFieldPh11fieldtype_ti_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z19Scr_SetGenericFieldPh11fieldtype_ti_70:
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov [edx+ecx], eax
	jmp _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
_Z19Scr_SetGenericFieldPh11fieldtype_ti_130:
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	mov eax, [ebp-0x10]
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov [ecx+edx], eax
	jmp _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
_Z19Scr_SetGenericFieldPh11fieldtype_ti_110:
	mov ebx, [ebp+0x8]
	add ebx, [ebp+0x10]
	mov dword [esp], 0x0
	call _Z11Scr_GetTypej
	test eax, eax
	jnz _Z19Scr_SetGenericFieldPh11fieldtype_ti_30
_Z19Scr_SetGenericFieldPh11fieldtype_ti_40:
	xor eax, eax
	mov [ebx], eax
	jmp _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
_Z19Scr_SetGenericFieldPh11fieldtype_ti_90:
	mov dword [esp], 0x0
	call _Z29Scr_GetConstStringIncludeNullj
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, [ebp+0x10]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	jmp _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
_Z19Scr_SetGenericFieldPh11fieldtype_ti_100:
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	mov edx, [ebp+0x8]
	add edx, [ebp+0x10]
	mov eax, [ebp-0x14]
	mov [edx], eax
	mov eax, [ebp-0x10]
	mov [edx+0x4], eax
	mov eax, [ebp-0xc]
	mov [edx+0x8], eax
	jmp _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
_Z19Scr_SetGenericFieldPh11fieldtype_ti_80:
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	fstp dword [eax+edx]
	jmp _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
_Z19Scr_SetGenericFieldPh11fieldtype_ti_30:
	mov dword [esp], 0x0
	call _Z16Scr_GetEntityRefj
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19Scr_SetGenericFieldPh11fieldtype_ti_40
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax]
	add eax, g_entities
	mov [ebx], eax
	jmp _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
_Z19Scr_SetGenericFieldPh11fieldtype_ti_20:
	mov dword [esp], 0x0
	call _Z16Scr_GetEntityRefj
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19Scr_SetGenericFieldPh11fieldtype_ti_50
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax]
	add eax, g_entities
	jmp _Z19Scr_SetGenericFieldPh11fieldtype_ti_60
	nop
	
	
_Z19Scr_SetGenericFieldPh11fieldtype_ti_jumptab_0:
	dd _Z19Scr_SetGenericFieldPh11fieldtype_ti_70
	dd _Z19Scr_SetGenericFieldPh11fieldtype_ti_80
	dd _Z19Scr_SetGenericFieldPh11fieldtype_ti_10
	dd _Z19Scr_SetGenericFieldPh11fieldtype_ti_90
	dd _Z19Scr_SetGenericFieldPh11fieldtype_ti_100
	dd _Z19Scr_SetGenericFieldPh11fieldtype_ti_110
	dd _Z19Scr_SetGenericFieldPh11fieldtype_ti_120
	dd _Z19Scr_SetGenericFieldPh11fieldtype_ti_130


;GScr_AddFieldsForEntity()
_Z23GScr_AddFieldsForEntityv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov edx, [fields]
	test edx, edx
	jz _Z23GScr_AddFieldsForEntityv_10
	xor esi, esi
	mov ebx, fields+0x10
_Z23GScr_AddFieldsForEntityv_20:
	mov eax, esi
	sar eax, 0x4
	movzx eax, ax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call _Z17Scr_AddClassFieldjPKcj
	mov edx, [ebx]
	add esi, 0x10
	add ebx, 0x10
	test edx, edx
	jnz _Z23GScr_AddFieldsForEntityv_20
_Z23GScr_AddFieldsForEntityv_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z23GScr_AddFieldsForClientv


;G_DuplicateEntityFields(gentity_s*, gentity_s const*)
_Z23G_DuplicateEntityFieldsP9gentity_sPKS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [fields]
	test eax, eax
	jz _Z23G_DuplicateEntityFieldsP9gentity_sPKS__10
	mov ebx, fields+0x8
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__30:
	cmp dword [ebx], 0x9
	ja _Z23G_DuplicateEntityFieldsP9gentity_sPKS__20
	mov eax, [ebx]
	jmp dword [eax*4+_Z23G_DuplicateEntityFieldsP9gentity_sPKS__jumptab_0]
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__80:
	mov edx, [ebx-0x4]
	movzx eax, word [esi+edx]
	mov [edi+edx], ax
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__20:
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz _Z23G_DuplicateEntityFieldsP9gentity_sPKS__30
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__40:
	mov edx, [ebx-0x4]
	mov eax, [esi+edx]
	mov [edi+edx], eax
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz _Z23G_DuplicateEntityFieldsP9gentity_sPKS__30
	jmp _Z23G_DuplicateEntityFieldsP9gentity_sPKS__10
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__50:
	mov edx, [ebx-0x4]
	mov eax, [esi+edx]
	mov [edi+edx], eax
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz _Z23G_DuplicateEntityFieldsP9gentity_sPKS__30
	jmp _Z23G_DuplicateEntityFieldsP9gentity_sPKS__10
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__60:
	mov eax, [ebx-0x4]
	movzx edx, word [esi+eax]
	mov [esp+0x4], edx
	lea eax, [edi+eax]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	mov eax, [ebx+0x8]
	add ebx, 0x10
	test eax, eax
	jnz _Z23G_DuplicateEntityFieldsP9gentity_sPKS__30
	jmp _Z23G_DuplicateEntityFieldsP9gentity_sPKS__10
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__70:
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
	jnz _Z23G_DuplicateEntityFieldsP9gentity_sPKS__30
	jmp _Z23G_DuplicateEntityFieldsP9gentity_sPKS__10
	nop
	add [eax], al
	
	
_Z23G_DuplicateEntityFieldsP9gentity_sPKS__jumptab_0:
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__40
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__50
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__20
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__60
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__70
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__20
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__20
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__20
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__20
	dd _Z23G_DuplicateEntityFieldsP9gentity_sPKS__80


;GScr_AddFieldsForRadiant()
_Z24GScr_AddFieldsForRadiantv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_txt
	mov dword [esp], _cstring_radiant
	call _Z13Scr_AddFieldsPKcS0_
	leave
	ret
	add [eax], al


;G_SpawnEntitiesFromString()
_Z25G_SpawnEntitiesFromStringv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, level
	lea ebx, [esi+0xb34]
	mov [esp], ebx
	call _Z16G_ParseSpawnVarsP8SpawnVar
	test eax, eax
	jz _Z25G_SpawnEntitiesFromStringv_10
_Z25G_SpawnEntitiesFromStringv_220:
	call _Z13SP_worldspawnv
	mov [ebp-0x3c], esi
	mov [ebp-0x40], ebx
	mov [ebp-0x48], esi
	mov [ebp-0x44], esi
	mov [ebp-0x4c], esi
	mov eax, ebx
_Z25G_SpawnEntitiesFromStringv_150:
	mov [esp], eax
	call _Z16G_ParseSpawnVarsP8SpawnVar
	test eax, eax
	jz _Z25G_SpawnEntitiesFromStringv_20
_Z25G_SpawnEntitiesFromStringv_60:
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_classname
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz _Z25G_SpawnEntitiesFromStringv_30
	mov edi, _cstring_dyn_
	mov ecx, 0x4
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z25G_SpawnEntitiesFromStringv_40
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z25G_SpawnEntitiesFromStringv_40:
	test edx, edx
	jnz _Z25G_SpawnEntitiesFromStringv_50
_Z25G_SpawnEntitiesFromStringv_140:
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z16G_ParseSpawnVarsP8SpawnVar
	test eax, eax
	jnz _Z25G_SpawnEntitiesFromStringv_60
_Z25G_SpawnEntitiesFromStringv_20:
	call _Z23G_ResetEntityParsePointv
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25G_SpawnEntitiesFromStringv_50:
	mov edi, _cstring_weapon_
	mov ecx, 0x7
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z25G_SpawnEntitiesFromStringv_70
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z25G_SpawnEntitiesFromStringv_70:
	test edx, edx
	jz _Z25G_SpawnEntitiesFromStringv_80
_Z25G_SpawnEntitiesFromStringv_190:
	xor esi, esi
	mov edi, s_bspOrDynamicSpawns
_Z25G_SpawnEntitiesFromStringv_100:
	lea eax, [esi+s_bspOrDynamicSpawns]
	mov [ebp-0x2c], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcmp
	test eax, eax
	jz _Z25G_SpawnEntitiesFromStringv_90
	add esi, 0x8
	add edi, 0x8
	cmp esi, 0x30
	jnz _Z25G_SpawnEntitiesFromStringv_100
_Z25G_SpawnEntitiesFromStringv_210:
	xor esi, esi
	mov edi, s_bspOnlySpawns
_Z25G_SpawnEntitiesFromStringv_120:
	lea eax, [esi+s_bspOnlySpawns]
	mov [ebp-0x30], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcmp
	test eax, eax
	jz _Z25G_SpawnEntitiesFromStringv_110
	add esi, 0x8
	add edi, 0x8
	cmp esi, 0x70
	jnz _Z25G_SpawnEntitiesFromStringv_120
	mov dword [ebp-0x38], 0x0
	call _Z7G_Spawnv
	mov edi, eax
	mov eax, [ebp-0x4c]
	mov edx, [eax+0xb38]
	test edx, edx
	jg _Z25G_SpawnEntitiesFromStringv_130
_Z25G_SpawnEntitiesFromStringv_160:
	lea eax, [edi+0x13c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11G_SetOriginP9gentity_sPKf
	lea eax, [edi+0x148]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
	mov eax, [ebp-0x38]
	test eax, eax
	jz _Z25G_SpawnEntitiesFromStringv_140
	mov [esp], edi
	call dword [ebp-0x38]
	mov eax, [ebp-0x40]
	jmp _Z25G_SpawnEntitiesFromStringv_150
_Z25G_SpawnEntitiesFromStringv_30:
	mov dword [esp+0x4], _cstring_g_callspawn_null
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x40]
	jmp _Z25G_SpawnEntitiesFromStringv_150
_Z25G_SpawnEntitiesFromStringv_110:
	mov eax, [ebp-0x30]
	mov eax, [eax+0x4]
	mov [ebp-0x38], eax
_Z25G_SpawnEntitiesFromStringv_200:
	cmp eax, _Z12G_FreeEntityP9gentity_s
	jz _Z25G_SpawnEntitiesFromStringv_140
	call _Z7G_Spawnv
	mov edi, eax
	mov eax, [ebp-0x4c]
	mov edx, [eax+0xb38]
	test edx, edx
	jle _Z25G_SpawnEntitiesFromStringv_160
_Z25G_SpawnEntitiesFromStringv_130:
	xor esi, esi
	mov ebx, eax
_Z25G_SpawnEntitiesFromStringv_170:
	mov edx, [ebx+0xb40]
	mov eax, [ebx+0xb3c]
	mov ecx, edi
	call _Z18G_ParseEntityFieldPKcS0_P9gentity_s
	add esi, 0x1
	add ebx, 0x8
	mov eax, [ebp-0x48]
	cmp esi, [eax+0xb38]
	jl _Z25G_SpawnEntitiesFromStringv_170
	jmp _Z25G_SpawnEntitiesFromStringv_160
_Z25G_SpawnEntitiesFromStringv_80:
	lea eax, [ebx+0x7]
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov ebx, eax
	test eax, eax
	jnz _Z25G_SpawnEntitiesFromStringv_180
_Z25G_SpawnEntitiesFromStringv_230:
	mov ebx, [ebp-0x1c]
	jmp _Z25G_SpawnEntitiesFromStringv_190
_Z25G_SpawnEntitiesFromStringv_90:
	mov eax, [ebp-0x2c]
	mov eax, [eax+0x4]
	mov [ebp-0x38], eax
	test eax, eax
	jnz _Z25G_SpawnEntitiesFromStringv_200
	jmp _Z25G_SpawnEntitiesFromStringv_210
_Z25G_SpawnEntitiesFromStringv_10:
	mov dword [esp+0x4], _cstring_spawnentities_no
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z25G_SpawnEntitiesFromStringv_220
_Z25G_SpawnEntitiesFromStringv_180:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z20BG_FindItemForWeaponii
	mov [ebp-0x34], eax
	test eax, eax
	jz _Z25G_SpawnEntitiesFromStringv_230
	call _Z7G_Spawnv
	mov esi, eax
	mov eax, [ebp-0x3c]
	mov ecx, [eax+0xb38]
	test ecx, ecx
	jg _Z25G_SpawnEntitiesFromStringv_240
_Z25G_SpawnEntitiesFromStringv_260:
	lea eax, [esi+0x13c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11G_SetOriginP9gentity_sPKf
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10G_SetAngleP9gentity_sPKf
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11G_SpawnItemP9gentity_sPK7gitem_s
	mov eax, [ebp-0x40]
	jmp _Z25G_SpawnEntitiesFromStringv_150
_Z25G_SpawnEntitiesFromStringv_240:
	xor edi, edi
	mov ebx, eax
_Z25G_SpawnEntitiesFromStringv_250:
	mov edx, [ebx+0xb40]
	mov eax, [ebx+0xb3c]
	mov ecx, esi
	call _Z18G_ParseEntityFieldPKcS0_P9gentity_s
	add edi, 0x1
	add ebx, 0x8
	mov eax, [ebp-0x44]
	cmp [eax+0xb38], edi
	jg _Z25G_SpawnEntitiesFromStringv_250
	jmp _Z25G_SpawnEntitiesFromStringv_260
	nop


;Initialized global or static variables of g_spawn_mp:
SECTION .data


;Initialized constant data of g_spawn_mp:
SECTION .rdata
s_bspOnlySpawns: dd _cstring_trigger_use, _Z11trigger_useP9gentity_s, _cstring_trigger_use_touc, _Z17trigger_use_touchP9gentity_s, _cstring_trigger_multiple, _Z19SP_trigger_multipleP9gentity_s, _cstring_trigger_disk, _Z15SP_trigger_diskP9gentity_s, _cstring_trigger_hurt, _Z15SP_trigger_hurtP9gentity_s, _cstring_trigger_once, _Z15SP_trigger_onceP9gentity_s, _cstring_trigger_damage, _Z17SP_trigger_damageP9gentity_s, _cstring_trigger_lookat, _Z17SP_trigger_lookatP9gentity_s, _cstring_light, _Z8SP_lightP9gentity_s, _cstring_misc_mg42, _Z9SP_turretP9gentity_s, _cstring_misc_turret, _Z9SP_turretP9gentity_s, _cstring_script_brushmode, _Z20SP_script_brushmodelP9gentity_s, _cstring_script_struct, _Z12G_FreeEntityP9gentity_s, _cstring_script_vehicle_m, _Z12G_VehSpawnerP9gentity_s, 0x0, 0x0, 0x0, 0x0
s_bspOrDynamicSpawns: dd _cstring_info_notnull, _Z15SP_info_notnullP9gentity_s, _cstring_info_notnull_big, _Z15SP_info_notnullP9gentity_s, _cstring_trigger_radius, _Z17SP_trigger_radiusP9gentity_s, _cstring_script_model, _Z15SP_script_modelP9gentity_s, _cstring_script_origin, _Z16SP_script_originP9gentity_s, _cstring_script_vehicle_c, _Z19G_VehCollmapSpawnerP9gentity_s, 0x0, 0x0, 0x0, 0x0
fields: dd _cstring_classname, 0x170, 0x3, _Z17Scr_ReadOnlyFieldP9gentity_si, _cstring_origin, 0x13c, 0x4, _Z13Scr_SetOriginP9gentity_si, _cstring_model, 0x168, 0x9, _Z17Scr_ReadOnlyFieldP9gentity_si, _cstring_spawnflags, 0x17c, 0x0, _Z17Scr_ReadOnlyFieldP9gentity_si, _cstring_target, 0x172, 0x3, 0x0, _cstring_targetname, 0x174, 0x3, 0x0, _cstring_count, 0x1ac, 0x0, 0x0, _cstring_health, 0x1a0, 0x0, _Z13Scr_SetHealthP9gentity_si, _cstring_dmg, 0x1a8, 0x0, 0x0, _cstring_angles, 0x148, 0x4, _Z13Scr_SetAnglesP9gentity_si, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


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
_cstring_sp_worldspawn_th:		db 015h,"SP_worldspawn: The first entity isn",27h,"t ",27h,"worldspawn",27h,0
_cstring_not_an_entity:		db "not an entity",0
_cstring_g_callspawnentit:		db "G_CallSpawnEntity: NULL classname",0ah,0
_cstring_weapon_:		db "weapon_",0
_cstring_s_cannot_be_spaw:		db "%s cannot be spawned dynamically",0ah,0
_cstring_txt:		db "txt",0
_cstring_radiant:		db "radiant",0
_cstring_dyn_:		db "dyn_",0
_cstring_g_callspawn_null:		db "G_CallSpawn: NULL classname",0ah,0
_cstring_spawnentities_no:		db 015h,"SpawnEntities: no entities",0
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

