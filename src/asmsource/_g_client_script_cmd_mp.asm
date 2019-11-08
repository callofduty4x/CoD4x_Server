;Imports of g_client_script_cmd_mp:
	extern g_entities
	extern Scr_GetVector
	extern SV_UnlinkEntity
	extern BG_PlayerStateToEntityState
	extern SV_LinkEntity
	extern Scr_ObjectError
	extern va
	extern Scr_AddVector
	extern SetClientViewAngle
	extern Scr_GetString
	extern Scr_ParamError
	extern G_ModelIndex
	extern G_ModelName
	extern Scr_AddConstString
	extern GScr_GetLocSelIndex
	extern Scr_GetNumParam
	extern Scr_GetFloat
	extern level
	extern floorf
	extern Scr_ConstructMessageString
	extern G_Say
	extern Cmd_Score_f
	extern G_GetWeaponIndexForName
	extern BG_IsWeaponValid
	extern G_SelectWeaponIndex
	extern Scr_GetConstLowercaseString
	extern Drop_Weapon
	extern GScr_AddEntity
	extern G_FindItem
	extern Drop_Item
	extern scr_const
	extern Scr_GetInt
	extern Scr_GetType
	extern G_MeansOfDeathFromScriptParam
	extern Scr_GetConstString
	extern G_GetHitLocationIndexFromString
	extern Vec3NormalizeTo
	extern player_dmgtimer_maxTime
	extern player_dmgtimer_timePerPoint
	extern vectoyaw
	extern Scr_AddEntity
	extern Scr_AddInt
	extern Scr_Notify
	extern entityHandlers
	extern Scr_GetPointerType
	extern Scr_GetEntity
	extern g_knockback
	extern BG_GetWeaponDef
	extern G_TempEntity
	extern DirToByte
	extern Scr_Error
	extern Scr_Errorf
	extern Scr_PlayerLastStand
	extern Com_Printf
	extern player_die
	extern GScr_GetScriptMenuIndex
	extern snprintf
	extern SV_GameSendServerCommand
	extern G_FindConfigstringIndex
	extern BG_ClipForWeapon
	extern BG_WeaponIsClipOnly
	extern BG_AmmoForWeapon
	extern BG_GetAmmoPlayerMax
	extern Scr_VerifyWeaponIndex
	extern BG_WeaponAmmo
	extern Scr_MakeGameMessage
	extern ClientSpawn
	extern G_SpawnPlayerClone
	extern G_SetOrigin
	extern G_SetAngle
	extern Com_GetServerDObj
	extern DObjGetTree
	extern g_clonePlayerMaxVelocity
	extern G_GetFreePlayerCorpseIndex
	extern g_scr_data
	extern level_bgs
	extern memcpy
	extern XAnimCloneAnimTree
	extern Cvar_IsValidName
	extern memset
	extern Q_CleanChar
	extern Q_strncat
	extern Q_strncpyz
	extern G_SoundAliasIndex
	extern g_voiceChatTalkingDuration
	extern Scr_AddString
	extern Q_stricmp
	extern BG_FindWeaponIndexForName
	extern BG_GetPerkIndexForName
	extern Scr_AddBool
	extern BG_GetNumWeapons
	extern bg_lastParsedWeaponIndex
	extern Add_Ammo
	extern Fill_Clip
	extern strcmp
	extern PM_ExitAimDownSight
	extern Scr_AddFloat
	extern G_GivePlayerWeapon
	extern BG_TakePlayerWeapon
	extern Scr_MakeArray
	extern Scr_AddArray
	extern G_SetEquippedOffHand
	extern PlayerCmd_spawn
	extern PlayerCmd_GetGuid

;Exports of g_client_script_cmd_mp:
	global PlayerCmd_setOrigin
	global PlayerCmd_GetVelocity
	global PlayerCmd_setAngles
	global PlayerCmd_getAngles
	global PlayerCmd_SetViewmodel
	global PlayerCmd_GetViewmodel
	global PlayerCmd_BeginLocationSelection
	global PlayerCmd_EndLocationSelection
	global PlayerCmd_SayAll
	global PlayerCmd_SayTeam
	global PlayerCmd_showScoreboard
	global PlayerCmd_setSpawnWeapon
	global PlayerCmd_dropItem
	global PlayerCmd_finishPlayerDamage
	global PlayerCmd_Suicide
	global PlayerCmd_OpenMenu
	global PlayerCmd_OpenMenuNoMouse
	global PlayerCmd_CloseMenu
	global PlayerCmd_CloseInGameMenu
	global PlayerCmd_FreezeControls
	global PlayerCmd_DisableWeapons
	global PlayerCmd_EnableWeapons
	global PlayerCmd_SetReverb
	global PlayerCmd_DeactivateReverb
	global PlayerCmd_SetChannelVolumes
	global PlayerCmd_DeactivateChannelVolumes
	global PlayerCmd_SetWeaponAmmoClip
	global PlayerCmd_SetWeaponAmmoStock
	global PlayerCmd_GetWeaponAmmoClip
	global PlayerCmd_GetWeaponAmmoStock
	global PlayerCmd_AnyAmmoForWeaponModes
	global iclientprintln
	global iclientprintlnbold
	global PlayerCmd_setEnterTime
	global PlayerCmd_ClonePlayer
	global PlayerCmd_SetClientDvar
	global PlayerCmd_SetClientDvars
	global ScrCmd_PlayLocalSound
	global ScrCmd_StopLocalSound
	global PlayerCmd_IsTalking
	global PlayerCmd_AllowSpectateTeam
	global PlayerCmd_SetActionSlot
	global PlayerCmd_SetPerk
	global PlayerCmd_HasPerk
	global PlayerCmd_ClearPerks
	global PlayerCmd_UnsetPerk
	global PlayerCmd_UpdateScores
	global PlayerCmd_UpdateDMScores
	global PlayerCmd_SetRank
	global G_InitializeAmmo
	global PlayerCmd_AllowADS
	global PlayerCmd_AllowJump
	global PlayerCmd_hasWeapon
	global PlayerCmd_playerADS
	global PlayerCmd_giveWeapon
	global PlayerCmd_isOnGround
	global PlayerCmd_pingPlayer
	global PlayerCmd_takeWeapon
	global PlayerCmd_AllowSprint
	global PlayerCmd_giveMaxAmmo
	global PlayerCmd_giveStartAmmo
	global PlayerCmd_GetWeaponsList
	global PlayerCmd_switchToWeapon
	global PlayerCmd_takeAllWeapons
	global PlayerCmd_switchToOffhand
	global PlayerCmd_adsButtonPressed
	global PlayerCmd_getCurrentWeapon
	global PlayerCmd_useButtonPressed
	global PlayerCmd_SetSpreadOverride
	global PlayerCmd_fragButtonPressed
	global PlayerCmd_getCurrentOffhand
	global PlayerCmd_getFractionMaxAmmo
	global PlayerCmd_meleeButtonPressed
	global PlayerCmd_ResetSpreadOverride
	global PlayerCmd_attackButtonPressed
	global PlayerCmd_buttonPressedDEVONLY
	global PlayerCmd_getFractionStartAmmo
	global PlayerCmd_GetWeaponsListPrimaries
	global PlayerCmd_getOffhandSecondaryClass
	global PlayerCmd_setOffhandSecondaryClass
	global PlayerCmd_secondaryOffhandButtonPressed
	global BodyEnd


SECTION .text


;PlayerCmd_setOrigin(scr_entref_t)
PlayerCmd_setOrigin:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_setOrigin_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_setOrigin_20
PlayerCmd_setOrigin_30:
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	mov [esp], ebx
	call SV_UnlinkEntity
	mov edx, [ebx+0x15c]
	lea ecx, [edx+0x1c]
	mov eax, [ebp-0x14]
	mov [edx+0x1c], eax
	mov eax, [ebp-0x10]
	mov [ecx+0x4], eax
	mov eax, [ebp-0xc]
	mov [ecx+0x8], eax
	mov eax, [ebx+0x15c]
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [eax+0x24]
	movss [eax+0x24], xmm0
	mov eax, [ebx+0x15c]
	xor dword [eax+0xb0], 0x2
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call BG_PlayerStateToEntityState
	lea ecx, [ebx+0x13c]
	mov eax, [ebx+0x15c]
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov [ebx+0x13c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov [esp], ebx
	call SV_LinkEntity
	add esp, 0x24
	pop ebx
	pop ebp
	ret
PlayerCmd_setOrigin_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_setOrigin_30
PlayerCmd_setOrigin_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_setOrigin_30


;PlayerCmd_GetVelocity(scr_entref_t)
PlayerCmd_GetVelocity:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_GetVelocity_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_GetVelocity_20
	mov eax, [ebx+0x15c]
	add eax, 0x28
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddVector
PlayerCmd_GetVelocity_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	add eax, 0x28
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddVector
PlayerCmd_GetVelocity_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov eax, [ebx+0x15c]
	add eax, 0x28
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddVector
	nop


;PlayerCmd_setAngles(scr_entref_t)
PlayerCmd_setAngles:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_setAngles_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov eax, [esi+0x15c]
	test eax, eax
	jz PlayerCmd_setAngles_20
PlayerCmd_setAngles_40:
	lea ebx, [ebp-0x14]
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Scr_GetVector
	mov [esp+0x4], ebx
	mov [esp], esi
	call SetClientViewAngle
	mov eax, [esi+0x218]
	test eax, eax
	jz PlayerCmd_setAngles_30
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_setAngles_30:
	mov dword [esi+0x148], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_setAngles_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_setAngles_40
PlayerCmd_setAngles_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_setAngles_40
	nop


;PlayerCmd_getAngles(scr_entref_t)
PlayerCmd_getAngles:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_getAngles_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov edx, [ebx+0x15c]
	test edx, edx
	jz PlayerCmd_getAngles_20
	mov eax, [ebx+0x15c]
	add eax, 0x108
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddVector
PlayerCmd_getAngles_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	add eax, 0x108
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddVector
PlayerCmd_getAngles_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov eax, [ebx+0x15c]
	add eax, 0x108
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddVector
	nop


;PlayerCmd_SetViewmodel(scr_entref_t)
PlayerCmd_SetViewmodel:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetViewmodel_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov eax, [esi+0x15c]
	test eax, eax
	jz PlayerCmd_SetViewmodel_20
PlayerCmd_SetViewmodel_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	test eax, eax
	jz PlayerCmd_SetViewmodel_30
	cmp byte [eax], 0x0
	jnz PlayerCmd_SetViewmodel_40
PlayerCmd_SetViewmodel_30:
	mov dword [esp+0x4], _cstring_usage_setviewmod
	mov dword [esp], 0x0
	call Scr_ParamError
PlayerCmd_SetViewmodel_40:
	mov [esp], ebx
	call G_ModelIndex
	mov edx, [esi+0x15c]
	mov [edx+0x3000], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_SetViewmodel_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_SetViewmodel_50
PlayerCmd_SetViewmodel_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetViewmodel_50


;PlayerCmd_GetViewmodel(scr_entref_t)
PlayerCmd_GetViewmodel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_GetViewmodel_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_GetViewmodel_20
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x3000]
	mov [esp], eax
	call G_ModelName
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddConstString
PlayerCmd_GetViewmodel_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x3000]
	mov [esp], eax
	call G_ModelName
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddConstString
PlayerCmd_GetViewmodel_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x3000]
	mov [esp], eax
	call G_ModelName
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddConstString


;PlayerCmd_BeginLocationSelection(scr_entref_t)
PlayerCmd_BeginLocationSelection:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_BeginLocationSelection_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_BeginLocationSelection_20
PlayerCmd_BeginLocationSelection_130:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call GScr_GetLocSelIndex
	mov esi, eax
	call Scr_GetNumParam
	cmp eax, 0x1
	jbe PlayerCmd_BeginLocationSelection_30
PlayerCmd_BeginLocationSelection_100:
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	jae PlayerCmd_BeginLocationSelection_40
PlayerCmd_BeginLocationSelection_120:
	mov eax, level
	movss xmm1, dword [eax+0x2e5c]
	ucomiss xmm1, xmm2
	ja PlayerCmd_BeginLocationSelection_50
PlayerCmd_BeginLocationSelection_80:
	divss xmm0, dword [_float_1000_00000000]
PlayerCmd_BeginLocationSelection_90:
	ucomiss xmm2, xmm0
	ja PlayerCmd_BeginLocationSelection_60
	ucomiss xmm0, [_float_1_00000000]
	jbe PlayerCmd_BeginLocationSelection_70
	movss xmm0, dword [_float_63_00000000]
PlayerCmd_BeginLocationSelection_110:
	mov ebx, [ebx+0x15c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	shl eax, 0x2
	or eax, esi
	mov [ebx+0x5b4], eax
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_BeginLocationSelection_50:
	ucomiss xmm0, xmm2
	jbe PlayerCmd_BeginLocationSelection_80
	divss xmm0, xmm1
	jmp PlayerCmd_BeginLocationSelection_90
PlayerCmd_BeginLocationSelection_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call GScr_GetLocSelIndex
	mov esi, eax
	call Scr_GetNumParam
	cmp eax, 0x1
	ja PlayerCmd_BeginLocationSelection_100
PlayerCmd_BeginLocationSelection_30:
	movss xmm0, dword [_float_9_45000076]
	jmp PlayerCmd_BeginLocationSelection_110
PlayerCmd_BeginLocationSelection_60:
	movaps xmm0, xmm2
	jmp PlayerCmd_BeginLocationSelection_110
PlayerCmd_BeginLocationSelection_70:
	mulss xmm0, [_float_63_00000000]
	jmp PlayerCmd_BeginLocationSelection_110
PlayerCmd_BeginLocationSelection_40:
	mov dword [esp+0x4], _cstring_radius_of_locati
	mov dword [esp], 0x1
	movss [ebp-0x28], xmm0
	movss [ebp-0x38], xmm2
	call Scr_ParamError
	movss xmm2, dword [ebp-0x38]
	movss xmm0, dword [ebp-0x28]
	jmp PlayerCmd_BeginLocationSelection_120
PlayerCmd_BeginLocationSelection_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_BeginLocationSelection_130


;PlayerCmd_EndLocationSelection(scr_entref_t)
PlayerCmd_EndLocationSelection:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_EndLocationSelection_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_EndLocationSelection_20
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5b4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_EndLocationSelection_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5b4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_EndLocationSelection_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5b4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;PlayerCmd_SayAll(scr_entref_t)
PlayerCmd_SayAll:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SayAll_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov eax, [esi+0x15c]
	test eax, eax
	jz PlayerCmd_SayAll_20
PlayerCmd_SayAll_30:
	call Scr_GetNumParam
	mov dword [esp+0x10], 0x3ff
	lea ebx, [ebp-0x408]
	lea edx, [ebp-0x407]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_client_chat_mess
	sub eax, 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ConstructMessageString
	mov byte [ebp-0x408], 0x14
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call G_Say
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_SayAll_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_SayAll_30
PlayerCmd_SayAll_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SayAll_30
	nop


;PlayerCmd_SayTeam(scr_entref_t)
PlayerCmd_SayTeam:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SayTeam_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov eax, [esi+0x15c]
	test eax, eax
	jz PlayerCmd_SayTeam_20
PlayerCmd_SayTeam_30:
	call Scr_GetNumParam
	mov dword [esp+0x10], 0x3ff
	lea ebx, [ebp-0x408]
	lea edx, [ebp-0x407]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_client_chat_mess
	sub eax, 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ConstructMessageString
	mov byte [ebp-0x408], 0x14
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call G_Say
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_SayTeam_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_SayTeam_30
PlayerCmd_SayTeam_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SayTeam_30
	nop


;PlayerCmd_showScoreboard(scr_entref_t)
PlayerCmd_showScoreboard:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_showScoreboard_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_showScoreboard_20
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Cmd_Score_f
PlayerCmd_showScoreboard_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Cmd_Score_f
PlayerCmd_showScoreboard_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Cmd_Score_f


;PlayerCmd_setSpawnWeapon(scr_entref_t)
PlayerCmd_setSpawnWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edi, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_setSpawnWeapon_10
	movzx ecx, di
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_setSpawnWeapon_20
PlayerCmd_setSpawnWeapon_40:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov esi, eax
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call BG_IsWeaponValid
	test al, al
	jz PlayerCmd_setSpawnWeapon_30
	mov eax, [ebx+0x15c]
	mov [eax+0xe8], esi
	mov eax, [ebx+0x15c]
	mov dword [eax+0xec], 0x0
	mov ebx, [ebx+0x15c]
	add ebx, 0x56c
	mov edx, esi
	sar edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	or [ebx+edx*4], eax
	mov [esp+0x4], esi
	movzx eax, di
	mov [esp], eax
	call G_SelectWeaponIndex
PlayerCmd_setSpawnWeapon_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_setSpawnWeapon_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_setSpawnWeapon_40
PlayerCmd_setSpawnWeapon_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_setSpawnWeapon_40


;PlayerCmd_dropItem(scr_entref_t)
PlayerCmd_dropItem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_dropItem_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov edx, [edi+0x15c]
	test edx, edx
	jz PlayerCmd_dropItem_20
PlayerCmd_dropItem_60:
	mov dword [esp], 0x0
	call Scr_GetString
	mov esi, eax
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov ebx, eax
	test eax, eax
	jz PlayerCmd_dropItem_30
	call Scr_GetNumParam
	cmp eax, 0x1
	jbe PlayerCmd_dropItem_40
	mov dword [esp], 0x1
	call Scr_GetConstLowercaseString
PlayerCmd_dropItem_70:
	mov [esp+0xc], eax
	mov eax, [edi+0x15c]
	movzx eax, byte [ebx+eax+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call Drop_Weapon
PlayerCmd_dropItem_50:
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp GScr_AddEntity
PlayerCmd_dropItem_30:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call G_FindItem
	test eax, eax
	jz PlayerCmd_dropItem_50
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], edi
	call Drop_Item
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp GScr_AddEntity
PlayerCmd_dropItem_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp PlayerCmd_dropItem_60
PlayerCmd_dropItem_40:
	mov eax, scr_const
	movzx eax, word [eax+0xac]
	jmp PlayerCmd_dropItem_70
PlayerCmd_dropItem_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_dropItem_60


;PlayerCmd_finishPlayerDamage(scr_entref_t)
PlayerCmd_finishPlayerDamage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_finishPlayerDamage_10
	movzx ebx, dx
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ebx]
	add edi, g_entities
	mov ecx, [edi+0x15c]
	test ecx, ecx
	jz PlayerCmd_finishPlayerDamage_20
PlayerCmd_finishPlayerDamage_240:
	mov eax, [edi+0x15c]
	mov edx, [eax+0x317c]
	test edx, edx
	jz PlayerCmd_finishPlayerDamage_30
	mov edx, [eax+0x3180]
	mov eax, level
	cmp edx, [eax+0x1ec]
	jg PlayerCmd_finishPlayerDamage_40
PlayerCmd_finishPlayerDamage_30:
	mov dword [esp], 0x2
	call Scr_GetInt
	and eax, 0x7fffffff
	cmp eax, 0xffff
	js PlayerCmd_finishPlayerDamage_skipclamp
	mov eax, 0xffff
PlayerCmd_finishPlayerDamage_skipclamp:
	mov [ebp-0x68], eax
	test eax, eax
	jle PlayerCmd_finishPlayerDamage_40
	mov dword [esp], 0x0
	call Scr_GetType
	test eax, eax
	jnz PlayerCmd_finishPlayerDamage_50
PlayerCmd_finishPlayerDamage_270:
	mov eax, g_entities
	add eax, 0x9cb18
	mov [ebp-0x78], eax
PlayerCmd_finishPlayerDamage_280:
	mov dword [esp], 0x1
	call Scr_GetType
	test eax, eax
	jnz PlayerCmd_finishPlayerDamage_60
PlayerCmd_finishPlayerDamage_290:
	mov edx, g_entities
	add edx, 0x9cb18
	mov [ebp-0x74], edx
PlayerCmd_finishPlayerDamage_300:
	mov dword [esp], 0x3
	call Scr_GetInt
	mov esi, eax
	mov dword [esp], 0x4
	call G_MeansOfDeathFromScriptParam
	mov [ebp-0x64], eax
	mov dword [esp], 0x5
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov [ebp-0x60], eax
	mov dword [esp], 0x6
	call Scr_GetType
	test eax, eax
	jnz PlayerCmd_finishPlayerDamage_70
	mov dword [ebp-0x6c], 0x0
	mov dword [esp], 0x7
	call Scr_GetType
	test eax, eax
	jnz PlayerCmd_finishPlayerDamage_80
PlayerCmd_finishPlayerDamage_250:
	mov dword [ebp-0x70], 0x0
PlayerCmd_finishPlayerDamage_260:
	mov dword [esp], 0x8
	call Scr_GetConstString
	movzx eax, ax
	mov [esp], eax
	call G_GetHitLocationIndexFromString
	mov [ebp-0x5c], eax
	mov dword [esp], 0x9
	call Scr_GetInt
	mov [ebp-0x58], eax
	mov eax, [edi+0x15c]
	cmp dword [eax+0x4], 0x7
	jz PlayerCmd_finishPlayerDamage_90
	mov eax, [ebp-0x70]
	test eax, eax
	jz PlayerCmd_finishPlayerDamage_100
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x70]
	mov [esp], ecx
	call Vec3NormalizeTo
	fstp st0
PlayerCmd_finishPlayerDamage_420:
	mov eax, [edi+0x180]
	test al, 0x8
	jnz PlayerCmd_finishPlayerDamage_110
	and esi, 0x4
	jz PlayerCmd_finishPlayerDamage_120
PlayerCmd_finishPlayerDamage_110:
	test al, 0x1
	jnz PlayerCmd_finishPlayerDamage_40
	mov eax, [ebp-0x60]
	test eax, eax
	jnz PlayerCmd_finishPlayerDamage_130
PlayerCmd_finishPlayerDamage_430:
	mov dword [ebp-0x54], 0x0
	mov esi, [edi+0x15c]
PlayerCmd_finishPlayerDamage_450:
	mov eax, [ebp-0x68]
	add [esi+0x30ac], eax
	mov eax, [ebp-0x70]
	test eax, eax
	jz PlayerCmd_finishPlayerDamage_140
	mov edx, [edi+0x15c]
	lea ecx, [edx+0x30b0]
	mov eax, [ebp-0x3c]
	mov [edx+0x30b0], eax
	mov eax, [ebp-0x38]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x34]
	mov [ecx+0x8], eax
	mov eax, [edi+0x15c]
	mov dword [eax+0x30bc], 0x0
PlayerCmd_finishPlayerDamage_500:
	test byte [edi+0x180], 0x2
	jnz PlayerCmd_finishPlayerDamage_150
PlayerCmd_finishPlayerDamage_320:
	mov eax, player_dmgtimer_maxTime
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x50], xmm0
	mov edx, [edi+0x15c]
	mov eax, player_dmgtimer_timePerPoint
	mov eax, [eax]
	cvtsi2ss xmm0, dword [ebp-0x68]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	add [edx+0xa0], eax
	mov eax, [edx+0xa0]
	test eax, 0x80000000
	jz PlayerCmd_finishPlayerDamage_skipclamp2
	mov eax, 0x7fffffff
	mov [edx+0xa0], eax
PlayerCmd_finishPlayerDamage_skipclamp2:
	mov eax, [ebp-0x70]
	test eax, eax
	jz PlayerCmd_finishPlayerDamage_160
	mov eax, [ebp-0x70]
	mov [esp], eax
	call vectoyaw
	fstp dword [ebp-0x4c]
	mov esi, [edi+0x15c]
	movss xmm0, dword [esi+0x10c]
	ucomiss xmm0, [_float_0_00000000]
	jb PlayerCmd_finishPlayerDamage_170
PlayerCmd_finishPlayerDamage_540:
	cvttss2si eax, xmm0
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x4c]
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja PlayerCmd_finishPlayerDamage_180
PlayerCmd_finishPlayerDamage_550:
	ucomiss xmm1, [_float_315_00000000]
	jb PlayerCmd_finishPlayerDamage_190
PlayerCmd_finishPlayerDamage_380:
	mov dword [esi+0xa8], 0x0
PlayerCmd_finishPlayerDamage_410:
	mov esi, [edi+0x15c]
	cvtsi2ss xmm0, dword [esi+0xa0]
	ucomiss xmm0, [ebp-0x50]
	ja PlayerCmd_finishPlayerDamage_200
PlayerCmd_finishPlayerDamage_310:
	mov eax, [esi+0xa0]
	mov [esi+0xa4], eax
	mov edx, [ebp-0x68]
	sub [edi+0x1a0], edx
	mov ecx, [ebp-0x74]
	mov [esp], ecx
	call Scr_AddEntity
	mov eax, [ebp-0x68]
	mov [esp], eax
	call Scr_AddInt
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call Scr_Notify
	movzx edx, byte [edi+0x16e]
	mov ebx, entityHandlers
	lea eax, [edx+edx*4]
	mov esi, [ebx+eax*8+0x18]
	test esi, esi
	jz PlayerCmd_finishPlayerDamage_210
PlayerCmd_finishPlayerDamage_590:
	mov ecx, [edi+0x1a0]
	test ecx, ecx
	jle PlayerCmd_finishPlayerDamage_220
	movzx eax, byte [edi+0x16e]
	lea eax, [eax+eax*4]
	mov edx, [ebx+eax*8+0x14]
	test edx, edx
	jz PlayerCmd_finishPlayerDamage_230
	mov ecx, [ebp-0x60]
	mov [esp+0x1c], ecx
	mov eax, [ebp-0x5c]
	mov [esp+0x18], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x14], eax
	mov ecx, [ebp-0x64]
	mov [esp+0x10], ecx
	mov eax, [ebp-0x6c]
	mov [esp+0xc], eax
	mov ecx, [ebp-0x68]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov [esp], edi
	call edx
PlayerCmd_finishPlayerDamage_230:
	mov edx, [edi+0x15c]
	mov eax, [edi+0x1a0]
	mov [edx+0x148], eax
PlayerCmd_finishPlayerDamage_40:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_finishPlayerDamage_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp PlayerCmd_finishPlayerDamage_240
PlayerCmd_finishPlayerDamage_70:
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov dword [esp], 0x6
	call Scr_GetVector
	mov [ebp-0x6c], ebx
	mov dword [esp], 0x7
	call Scr_GetType
	test eax, eax
	jz PlayerCmd_finishPlayerDamage_250
PlayerCmd_finishPlayerDamage_80:
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov dword [esp], 0x7
	call Scr_GetVector
	mov [ebp-0x70], ebx
	jmp PlayerCmd_finishPlayerDamage_260
PlayerCmd_finishPlayerDamage_50:
	mov dword [esp], 0x0
	call Scr_GetPointerType
	cmp eax, 0x14
	jnz PlayerCmd_finishPlayerDamage_270
	mov dword [esp], 0x0
	call Scr_GetEntity
	mov [ebp-0x78], eax
	jmp PlayerCmd_finishPlayerDamage_280
PlayerCmd_finishPlayerDamage_60:
	mov dword [esp], 0x1
	call Scr_GetPointerType
	cmp eax, 0x14
	jnz PlayerCmd_finishPlayerDamage_290
	mov dword [esp], 0x1
	call Scr_GetEntity
	mov [ebp-0x74], eax
	jmp PlayerCmd_finishPlayerDamage_300
PlayerCmd_finishPlayerDamage_200:
	cvttss2si eax, [ebp-0x50]
	mov [esi+0xa0], eax
	mov esi, [edi+0x15c]
	jmp PlayerCmd_finishPlayerDamage_310
PlayerCmd_finishPlayerDamage_150:
	mov eax, [edi+0x1a0]
	mov edx, eax
	sub edx, [ebp-0x68]
	sub eax, 0x1
	test edx, edx
	cmovg eax, [ebp-0x68]
	mov [ebp-0x68], eax
	jmp PlayerCmd_finishPlayerDamage_320
PlayerCmd_finishPlayerDamage_120:
	mov esi, [edi+0x15c]
	mov edx, [esi+0xc]
	test dl, 0x1
	jz PlayerCmd_finishPlayerDamage_330
	movss xmm1, dword [_float_0_02000000]
PlayerCmd_finishPlayerDamage_530:
	cvtsi2ss xmm0, dword [ebp-0x68]
	mulss xmm1, xmm0
	cvttss2si edx, xmm1
	cmp edx, 0x3c
	jle PlayerCmd_finishPlayerDamage_340
	mov edx, 0x3c
PlayerCmd_finishPlayerDamage_510:
	test dword [esi+0xb0], 0x300
	jnz PlayerCmd_finishPlayerDamage_110
	mov eax, g_knockback
	mov eax, [eax]
	cvtsi2ss xmm0, edx
	mulss xmm0, [eax+0xc]
	divss xmm0, dword [_float_250_00000000]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x38]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x34]
	lea eax, [esi+0x28]
	mulss xmm0, [ebp-0x3c]
	addss xmm0, [esi+0x28]
	movss [esi+0x28], xmm0
	addss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	addss xmm2, [eax+0x8]
	movss [eax+0x8], xmm2
	mov esi, [edi+0x15c]
	mov eax, [esi+0x18]
	test eax, eax
	jnz PlayerCmd_finishPlayerDamage_350
	add edx, edx
	cmp edx, 0x31
	jg PlayerCmd_finishPlayerDamage_360
	mov edx, 0x32
PlayerCmd_finishPlayerDamage_600:
	mov [esi+0x18], edx
	mov eax, [edi+0x15c]
	or dword [eax+0xc], 0x100
	mov eax, [edi+0x180]
	jmp PlayerCmd_finishPlayerDamage_110
PlayerCmd_finishPlayerDamage_190:
	ucomiss xmm1, [_float_45_00000000]
	jae PlayerCmd_finishPlayerDamage_370
	jnp PlayerCmd_finishPlayerDamage_380
PlayerCmd_finishPlayerDamage_370:
	ucomiss xmm1, [_float_135_00000000]
	jae PlayerCmd_finishPlayerDamage_390
PlayerCmd_finishPlayerDamage_570:
	ucomiss xmm1, [_float_45_00000000]
	jb PlayerCmd_finishPlayerDamage_400
	ucomiss xmm1, [_float_135_00000000]
	jae PlayerCmd_finishPlayerDamage_400
	jp PlayerCmd_finishPlayerDamage_400
	mov dword [esi+0xa8], 0x2
	jmp PlayerCmd_finishPlayerDamage_410
PlayerCmd_finishPlayerDamage_100:
	xor eax, eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	jmp PlayerCmd_finishPlayerDamage_420
PlayerCmd_finishPlayerDamage_160:
	mov esi, [edi+0x15c]
	jmp PlayerCmd_finishPlayerDamage_380
PlayerCmd_finishPlayerDamage_130:
	mov eax, [ebp-0x60]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x12c]
	test eax, eax
	jnz PlayerCmd_finishPlayerDamage_430
	mov eax, [ebp-0x64]
	sub eax, 0x1
	cmp eax, 0x1
	jbe PlayerCmd_finishPlayerDamage_440
	cmp dword [ebp-0x64], 0x8
	jz PlayerCmd_finishPlayerDamage_440
	xor eax, eax
PlayerCmd_finishPlayerDamage_580:
	test eax, eax
	jz PlayerCmd_finishPlayerDamage_430
	mov dword [esp+0x4], 0x29
	lea esi, [ebp-0x30]
	mov [esp], esi
	call G_TempEntity
	mov [ebp-0x54], eax
	mov edx, [ebp-0x60]
	mov [eax+0xc4], edx
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call DirToByte
	movzx eax, al
	mov ecx, [ebp-0x54]
	mov [ecx+0x9c], eax
	xor eax, eax
	cmp dword [ebp-0x5c], 0x2
	setz al
	mov [ecx+0xd4], eax
	mov dword [ecx+0x84], 0x7
	mov edx, [ebp-0x74]
	mov eax, [edx]
	mov [ecx+0x74], eax
	mov eax, [edi+0x15c]
	mov ecx, [eax+0xdc]
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	mov ebx, 0x1
	mov edx, ebx
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x54]
	or [edx+eax*4+0xf8], ecx
	mov ecx, [ebp-0x60]
	mov [esp], ecx
	call BG_GetWeaponDef
	cmp dword [eax+0x4e0], 0x1
	sbb eax, eax
	add eax, 0x2b
	mov [esp+0x4], eax
	mov [esp], esi
	call G_TempEntity
	mov edx, [ebp-0x60]
	mov [eax+0xc4], edx
	mov dword [eax+0x84], 0x7
	mov ecx, [ebp-0x74]
	mov edx, [ecx]
	mov [eax+0x74], edx
	mov esi, [edi+0x15c]
	mov edx, [esi+0xdc]
	mov [eax+0x8c], edx
	mov dword [eax+0xf8], 0xffffffff
	mov dword [eax+0xfc], 0xffffffff
	mov ecx, [esi+0xdc]
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	shl ebx, cl
	not ebx
	and [eax+edx*4+0xf8], ebx
	jmp PlayerCmd_finishPlayerDamage_450
PlayerCmd_finishPlayerDamage_90:
	mov dword [esp], _cstring_trying_to_do_dam
	call Scr_Error
	jmp PlayerCmd_finishPlayerDamage_40
PlayerCmd_finishPlayerDamage_220:
	mov eax, [edi+0x15c]
	mov edx, [eax+0x317c]
	test edx, edx
	jnz PlayerCmd_finishPlayerDamage_460
	test byte [eax+0x5fc], 0x80
	jz PlayerCmd_finishPlayerDamage_460
	mov dword [eax+0x317c], 0x1
	mov edx, [edi+0x15c]
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x1f4
	mov [edx+0x3180], eax
	mov edx, [ebp-0x58]
	mov [esp+0x20], edx
	mov ecx, [ebp-0x5c]
	mov [esp+0x1c], ecx
	lea eax, [ebp-0x3c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x60]
	mov [esp+0x14], eax
	mov edx, [ebp-0x64]
	mov [esp+0x10], edx
	mov ecx, [ebp-0x68]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x74]
	mov [esp+0x8], eax
	mov edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov [esp], edi
	call Scr_PlayerLastStand
	jmp PlayerCmd_finishPlayerDamage_230
PlayerCmd_finishPlayerDamage_460:
	mov eax, [ebp-0x54]
	test eax, eax
	jz PlayerCmd_finishPlayerDamage_470
	mov ecx, [ebp-0x54]
	or dword [ecx+0xd4], 0x2
PlayerCmd_finishPlayerDamage_470:
	mov eax, [edi+0x1a0]
	add eax, 0x3e7
	cmp eax, 0x3e6
	ja PlayerCmd_finishPlayerDamage_480
PlayerCmd_finishPlayerDamage_560:
	movzx eax, byte [edi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov edx, [eax+0x18]
	test edx, edx
	jz PlayerCmd_finishPlayerDamage_490
	mov eax, [ebp-0x58]
	mov [esp+0x20], eax
	mov ecx, [ebp-0x5c]
	mov [esp+0x1c], ecx
	lea eax, [ebp-0x3c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x60]
	mov [esp+0x14], eax
	mov ecx, [ebp-0x64]
	mov [esp+0x10], ecx
	mov eax, [ebp-0x68]
	mov [esp+0xc], eax
	mov ecx, [ebp-0x74]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov [esp], edi
	call edx
PlayerCmd_finishPlayerDamage_490:
	cmp byte [edi+0x100], 0x0
	jnz PlayerCmd_finishPlayerDamage_230
	jmp PlayerCmd_finishPlayerDamage_40
PlayerCmd_finishPlayerDamage_20:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_finishPlayerDamage_240
PlayerCmd_finishPlayerDamage_140:
	mov edx, [edi+0x15c]
	lea ebx, [edx+0x30b0]
	lea ecx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [edx+0x30b0], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edi+0x15c]
	mov dword [eax+0x30bc], 0x1
	jmp PlayerCmd_finishPlayerDamage_500
PlayerCmd_finishPlayerDamage_340:
	test edx, edx
	jz PlayerCmd_finishPlayerDamage_110
	jmp PlayerCmd_finishPlayerDamage_510
PlayerCmd_finishPlayerDamage_330:
	and dl, 0x2
	jnz PlayerCmd_finishPlayerDamage_520
	movss xmm1, dword [_float_0_30000001]
	jmp PlayerCmd_finishPlayerDamage_530
PlayerCmd_finishPlayerDamage_170:
	jp PlayerCmd_finishPlayerDamage_540
	addss xmm0, [_float_360_00000000]
	jmp PlayerCmd_finishPlayerDamage_540
PlayerCmd_finishPlayerDamage_180:
	addss xmm1, [_float_360_00000000]
	jmp PlayerCmd_finishPlayerDamage_550
PlayerCmd_finishPlayerDamage_520:
	movss xmm1, dword [_float_0_15000001]
	jmp PlayerCmd_finishPlayerDamage_530
PlayerCmd_finishPlayerDamage_480:
	mov dword [edi+0x1a0], 0xfffffc19
	jmp PlayerCmd_finishPlayerDamage_560
PlayerCmd_finishPlayerDamage_390:
	ucomiss xmm1, [_float_225_00000000]
	jae PlayerCmd_finishPlayerDamage_570
	jp PlayerCmd_finishPlayerDamage_570
	mov dword [esi+0xa8], 0x1
	jmp PlayerCmd_finishPlayerDamage_410
PlayerCmd_finishPlayerDamage_440:
	mov eax, 0x1
	jmp PlayerCmd_finishPlayerDamage_580
PlayerCmd_finishPlayerDamage_210:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_no_die_handler_f
	call Scr_Errorf
	jmp PlayerCmd_finishPlayerDamage_590
PlayerCmd_finishPlayerDamage_400:
	mov dword [esi+0xa8], 0x3
	jmp PlayerCmd_finishPlayerDamage_410
PlayerCmd_finishPlayerDamage_350:
	mov eax, [edi+0x180]
	jmp PlayerCmd_finishPlayerDamage_110
PlayerCmd_finishPlayerDamage_360:
	cmp edx, 0xc9
	mov eax, 0xc8
	cmovge edx, eax
	jmp PlayerCmd_finishPlayerDamage_600


;PlayerCmd_Suicide(scr_entref_t)
PlayerCmd_Suicide:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_Suicide_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_Suicide_20
PlayerCmd_Suicide_30:
	and dword [ebx+0x180], 0xfffffffc
	mov eax, [ebx+0x15c]
	mov dword [ebx+0x1a0], 0x0
	mov dword [eax+0x148], 0x0
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0xc
	mov dword [esp+0xc], 0x186a0
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov [esp], ebx
	call player_die
	add esp, 0x34
	pop ebx
	pop ebp
	ret
PlayerCmd_Suicide_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_Suicide_30
PlayerCmd_Suicide_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_Suicide_30
	nop


;PlayerCmd_OpenMenu(scr_entref_t)
PlayerCmd_OpenMenu:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov esi, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_OpenMenu_10
	movzx ecx, si
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_OpenMenu_20
PlayerCmd_OpenMenu_50:
	mov eax, [ebx+0x15c]
	cmp dword [eax+0x2f8c], 0x2
	jz PlayerCmd_OpenMenu_30
PlayerCmd_OpenMenu_40:
	mov dword [esp], 0x0
	call Scr_AddInt
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_OpenMenu_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	cmp dword [eax+0x2f8c], 0x2
	jnz PlayerCmd_OpenMenu_40
PlayerCmd_OpenMenu_30:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call GScr_GetScriptMenuIndex
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x74
	mov dword [esp+0x8], _cstring_c_i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	movzx eax, si
	mov [esp], eax
	call SV_GameSendServerCommand
	mov dword [esp], 0x1
	call Scr_AddInt
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_OpenMenu_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_OpenMenu_50
	nop


;PlayerCmd_OpenMenuNoMouse(scr_entref_t)
PlayerCmd_OpenMenuNoMouse:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov esi, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_OpenMenuNoMouse_10
	movzx ecx, si
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_OpenMenuNoMouse_20
PlayerCmd_OpenMenuNoMouse_50:
	mov eax, [ebx+0x15c]
	cmp dword [eax+0x2f8c], 0x2
	jz PlayerCmd_OpenMenuNoMouse_30
PlayerCmd_OpenMenuNoMouse_40:
	mov dword [esp], 0x0
	call Scr_AddInt
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_OpenMenuNoMouse_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	cmp dword [eax+0x2f8c], 0x2
	jnz PlayerCmd_OpenMenuNoMouse_40
PlayerCmd_OpenMenuNoMouse_30:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call GScr_GetScriptMenuIndex
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x74
	mov dword [esp+0x8], _cstring_c_i_1
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	movzx eax, si
	mov [esp], eax
	call SV_GameSendServerCommand
	mov dword [esp], 0x1
	call Scr_AddInt
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_OpenMenuNoMouse_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_OpenMenuNoMouse_50
	nop


;PlayerCmd_CloseMenu(scr_entref_t)
PlayerCmd_CloseMenu:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_CloseMenu_10
	movzx esi, bx
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, esi
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz PlayerCmd_CloseMenu_20
PlayerCmd_CloseMenu_30:
	mov dword [esp+0xc], 0x75
	mov dword [esp+0x8], _cstring_c
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call SV_GameSendServerCommand
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_CloseMenu_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	movzx esi, bx
	jmp PlayerCmd_CloseMenu_30
PlayerCmd_CloseMenu_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_CloseMenu_30
	nop


;PlayerCmd_CloseInGameMenu(scr_entref_t)
PlayerCmd_CloseInGameMenu:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_CloseInGameMenu_10
	movzx esi, bx
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, esi
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz PlayerCmd_CloseInGameMenu_20
PlayerCmd_CloseInGameMenu_30:
	mov dword [esp+0xc], 0x4c
	mov dword [esp+0x8], _cstring_c
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call SV_GameSendServerCommand
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_CloseInGameMenu_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	movzx esi, bx
	jmp PlayerCmd_CloseInGameMenu_30
PlayerCmd_CloseInGameMenu_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_CloseInGameMenu_30
	nop


;PlayerCmd_FreezeControls(scr_entref_t)
PlayerCmd_FreezeControls:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_FreezeControls_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_FreezeControls_20
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x3080], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_FreezeControls_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x3080], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_FreezeControls_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x3080], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;PlayerCmd_DisableWeapons(scr_entref_t)
PlayerCmd_DisableWeapons:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_DisableWeapons_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_DisableWeapons_20
	mov eax, [ebx+0x15c]
	or dword [eax+0x10], 0x80
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_DisableWeapons_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	or dword [eax+0x10], 0x80
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_DisableWeapons_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov eax, [ebx+0x15c]
	or dword [eax+0x10], 0x80
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PlayerCmd_EnableWeapons(scr_entref_t)
PlayerCmd_EnableWeapons:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_EnableWeapons_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_EnableWeapons_20
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xffffff7f
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_EnableWeapons_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xffffff7f
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_EnableWeapons_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xffffff7f
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PlayerCmd_SetReverb(scr_entref_t)
PlayerCmd_SetReverb:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov esi, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetReverb_10
	movzx ecx, si
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz PlayerCmd_SetReverb_20
PlayerCmd_SetReverb_150:
	call Scr_GetNumParam
	cmp eax, 0x3
	jz PlayerCmd_SetReverb_30
PlayerCmd_SetReverb_90:
	jbe PlayerCmd_SetReverb_40
	cmp eax, 0x4
	jz PlayerCmd_SetReverb_50
	cmp eax, 0x5
	jnz PlayerCmd_SetReverb_60
	mov dword [esp], 0x4
	call Scr_GetFloat
	fstp dword [ebp-0x24]
PlayerCmd_SetReverb_130:
	mov dword [esp], 0x3
	call Scr_GetFloat
	fstp dword [ebp-0x28]
	jmp PlayerCmd_SetReverb_70
PlayerCmd_SetReverb_40:
	cmp eax, 0x2
	jz PlayerCmd_SetReverb_80
PlayerCmd_SetReverb_60:
	mov dword [ebp+0x8], _cstring_usage_player_set
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	jmp Scr_Error
PlayerCmd_SetReverb_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	call Scr_GetNumParam
	cmp eax, 0x3
	jnz PlayerCmd_SetReverb_90
PlayerCmd_SetReverb_30:
	pxor xmm0, xmm0
	movss [ebp-0x24], xmm0
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0x28], xmm0
PlayerCmd_SetReverb_70:
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x2c]
	cvtss2sd xmm0, [ebp-0x24]
	movsd [ebp-0x20], xmm0
	cvtss2sd xmm0, [ebp-0x28]
	movsd [ebp-0x18], xmm0
	cvtss2sd xmm0, [ebp-0x2c]
	movsd [ebp-0x10], xmm0
PlayerCmd_SetReverb_140:
	mov dword [esp], 0x1
	call Scr_GetString
	mov ebx, eax
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0x74]
	jz PlayerCmd_SetReverb_100
	cmp ax, [edx+0x76]
	jz PlayerCmd_SetReverb_110
	mov dword [esp], _cstring_priority_must_be
	call Scr_Error
PlayerCmd_SetReverb_100:
	mov eax, 0x1
PlayerCmd_SetReverb_120:
	movsd xmm0, qword [ebp-0x20]
	movsd [esp+0x20], xmm0
	movsd xmm0, qword [ebp-0x18]
	movsd [esp+0x18], xmm0
	movsd xmm0, qword [ebp-0x10]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x72
	mov dword [esp], _cstring_c_i_s_g_g_g
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, si
	mov [esp], eax
	call SV_GameSendServerCommand
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_SetReverb_110:
	mov eax, 0x2
	jmp PlayerCmd_SetReverb_120
PlayerCmd_SetReverb_50:
	pxor xmm0, xmm0
	movss [ebp-0x24], xmm0
	jmp PlayerCmd_SetReverb_130
PlayerCmd_SetReverb_80:
	pxor xmm0, xmm0
	movsd [ebp-0x20], xmm0
	movsd xmm0, qword [_double_0_50000000]
	movsd [ebp-0x18], xmm0
	movsd xmm0, qword [_double_1_00000000]
	movsd [ebp-0x10], xmm0
	jmp PlayerCmd_SetReverb_140
PlayerCmd_SetReverb_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetReverb_150


;PlayerCmd_DeactivateReverb(scr_entref_t)
PlayerCmd_DeactivateReverb:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_DeactivateReverb_10
	movzx ecx, bx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz PlayerCmd_DeactivateReverb_20
PlayerCmd_DeactivateReverb_100:
	call Scr_GetNumParam
	cmp eax, 0x1
	jz PlayerCmd_DeactivateReverb_30
PlayerCmd_DeactivateReverb_50:
	cmp eax, 0x2
	jz PlayerCmd_DeactivateReverb_40
	mov dword [ebp+0x8], _cstring_usage_player_dea
	add esp, 0x34
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_DeactivateReverb_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	call Scr_GetNumParam
	cmp eax, 0x1
	jnz PlayerCmd_DeactivateReverb_50
PlayerCmd_DeactivateReverb_30:
	pxor xmm0, xmm0
	movsd [ebp-0x10], xmm0
PlayerCmd_DeactivateReverb_80:
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0x74]
	jz PlayerCmd_DeactivateReverb_60
	cmp ax, [edx+0x76]
	jz PlayerCmd_DeactivateReverb_70
	mov dword [esp], _cstring_priority_must_be
	call Scr_Error
PlayerCmd_DeactivateReverb_60:
	mov eax, 0x1
PlayerCmd_DeactivateReverb_90:
	movsd xmm0, qword [ebp-0x10]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x44
	mov dword [esp], _cstring_c_i_s_g_g_g
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, bx
	mov [esp], eax
	call SV_GameSendServerCommand
	add esp, 0x34
	pop ebx
	pop ebp
	ret
PlayerCmd_DeactivateReverb_40:
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebp-0x14]
	cvtss2sd xmm0, [ebp-0x14]
	movsd [ebp-0x10], xmm0
	jmp PlayerCmd_DeactivateReverb_80
PlayerCmd_DeactivateReverb_70:
	mov eax, 0x2
	jmp PlayerCmd_DeactivateReverb_90
PlayerCmd_DeactivateReverb_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_DeactivateReverb_100
	nop


;PlayerCmd_SetChannelVolumes(scr_entref_t)
PlayerCmd_SetChannelVolumes:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov esi, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetChannelVolumes_10
	movzx ecx, si
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz PlayerCmd_SetChannelVolumes_20
PlayerCmd_SetChannelVolumes_110:
	call Scr_GetNumParam
	cmp eax, 0x2
	jz PlayerCmd_SetChannelVolumes_30
PlayerCmd_SetChannelVolumes_50:
	cmp eax, 0x3
	jz PlayerCmd_SetChannelVolumes_40
	mov dword [ebp+0x8], _cstring_usage_player_set1
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	jmp Scr_Error
PlayerCmd_SetChannelVolumes_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	call Scr_GetNumParam
	cmp eax, 0x2
	jnz PlayerCmd_SetChannelVolumes_50
PlayerCmd_SetChannelVolumes_30:
	pxor xmm0, xmm0
	movsd [ebp-0x10], xmm0
PlayerCmd_SetChannelVolumes_90:
	mov dword [esp], 0x1
	call Scr_GetString
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x7a2
	mov [esp], eax
	call G_FindConfigstringIndex
	mov ebx, eax
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0x78]
	jz PlayerCmd_SetChannelVolumes_60
	cmp ax, [edx+0x7a]
	jz PlayerCmd_SetChannelVolumes_70
	cmp ax, [edx+0x7c]
	jz PlayerCmd_SetChannelVolumes_80
	mov dword [esp], _cstring_priority_must_be1
	call Scr_Error
PlayerCmd_SetChannelVolumes_60:
	mov eax, 0x1
PlayerCmd_SetChannelVolumes_100:
	movsd xmm0, qword [ebp-0x10]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x45
	mov dword [esp], _cstring_c_i_i_g
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, si
	mov [esp], eax
	call SV_GameSendServerCommand
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_SetChannelVolumes_40:
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x14]
	cvtss2sd xmm0, [ebp-0x14]
	movsd [ebp-0x10], xmm0
	jmp PlayerCmd_SetChannelVolumes_90
PlayerCmd_SetChannelVolumes_80:
	mov eax, 0x3
	jmp PlayerCmd_SetChannelVolumes_100
PlayerCmd_SetChannelVolumes_70:
	mov eax, 0x2
	jmp PlayerCmd_SetChannelVolumes_100
PlayerCmd_SetChannelVolumes_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetChannelVolumes_110
	nop


;PlayerCmd_DeactivateChannelVolumes(scr_entref_t)
PlayerCmd_DeactivateChannelVolumes:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_DeactivateChannelVolumes_10
	movzx ecx, bx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	mov edx, [edx+eax+0x15c]
	test edx, edx
	jz PlayerCmd_DeactivateChannelVolumes_20
PlayerCmd_DeactivateChannelVolumes_110:
	call Scr_GetNumParam
	cmp eax, 0x1
	jz PlayerCmd_DeactivateChannelVolumes_30
PlayerCmd_DeactivateChannelVolumes_50:
	cmp eax, 0x2
	jz PlayerCmd_DeactivateChannelVolumes_40
	mov dword [ebp+0x8], _cstring_usage_player_dea1
	add esp, 0x34
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_DeactivateChannelVolumes_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	call Scr_GetNumParam
	cmp eax, 0x1
	jnz PlayerCmd_DeactivateChannelVolumes_50
PlayerCmd_DeactivateChannelVolumes_30:
	pxor xmm0, xmm0
	movsd [ebp-0x10], xmm0
PlayerCmd_DeactivateChannelVolumes_90:
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0x78]
	jz PlayerCmd_DeactivateChannelVolumes_60
	cmp ax, [edx+0x7a]
	jz PlayerCmd_DeactivateChannelVolumes_70
	cmp ax, [edx+0x7c]
	jz PlayerCmd_DeactivateChannelVolumes_80
	mov dword [esp], _cstring_priority_must_be1
	call Scr_Error
PlayerCmd_DeactivateChannelVolumes_60:
	mov eax, 0x1
PlayerCmd_DeactivateChannelVolumes_100:
	movsd xmm0, qword [ebp-0x10]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x46
	mov dword [esp], _cstring_c_i_s_g_g_g
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, bx
	mov [esp], eax
	call SV_GameSendServerCommand
	add esp, 0x34
	pop ebx
	pop ebp
	ret
PlayerCmd_DeactivateChannelVolumes_40:
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebp-0x14]
	cvtss2sd xmm0, [ebp-0x14]
	movsd [ebp-0x10], xmm0
	jmp PlayerCmd_DeactivateChannelVolumes_90
PlayerCmd_DeactivateChannelVolumes_80:
	mov eax, 0x3
	jmp PlayerCmd_DeactivateChannelVolumes_100
PlayerCmd_DeactivateChannelVolumes_70:
	mov eax, 0x2
	jmp PlayerCmd_DeactivateChannelVolumes_100
PlayerCmd_DeactivateChannelVolumes_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_DeactivateChannelVolumes_110


;PlayerCmd_SetWeaponAmmoClip(scr_entref_t)
PlayerCmd_SetWeaponAmmoClip:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetWeaponAmmoClip_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov eax, [edi+0x15c]
	test eax, eax
	jz PlayerCmd_SetWeaponAmmoClip_20
PlayerCmd_SetWeaponAmmoClip_60:
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov dword [esp], 0x1
	call Scr_GetInt
	mov esi, eax
	mov [esp], ebx
	call G_GetWeaponIndexForName
	mov ebx, eax
	test eax, eax
	jnz PlayerCmd_SetWeaponAmmoClip_30
	mov dword [ebp+0x8], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddInt
PlayerCmd_SetWeaponAmmoClip_30:
	mov [esp], eax
	call BG_ClipForWeapon
	mov [ebp-0x1c], eax
	test eax, eax
	jnz PlayerCmd_SetWeaponAmmoClip_40
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetWeaponAmmoClip_40:
	mov [esp], ebx
	call BG_GetWeaponDef
	test esi, esi
	js PlayerCmd_SetWeaponAmmoClip_50
	mov eax, [eax+0x338]
	cmp esi, eax
	cmovg esi, eax
PlayerCmd_SetWeaponAmmoClip_70:
	mov eax, [edi+0x15c]
	mov edx, [ebp-0x1c]
	mov [eax+edx*4+0x35c], esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetWeaponAmmoClip_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp PlayerCmd_SetWeaponAmmoClip_60
PlayerCmd_SetWeaponAmmoClip_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetWeaponAmmoClip_60
PlayerCmd_SetWeaponAmmoClip_50:
	xor esi, esi
	jmp PlayerCmd_SetWeaponAmmoClip_70


;PlayerCmd_SetWeaponAmmoStock(scr_entref_t)
PlayerCmd_SetWeaponAmmoStock:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetWeaponAmmoStock_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov eax, [esi+0x15c]
	test eax, eax
	jz PlayerCmd_SetWeaponAmmoStock_20
PlayerCmd_SetWeaponAmmoStock_60:
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov dword [esp], 0x1
	call Scr_GetInt
	mov edi, eax
	mov [esp], ebx
	call G_GetWeaponIndexForName
	mov ebx, eax
	mov esi, [esi+0x15c]
	test eax, eax
	jnz PlayerCmd_SetWeaponAmmoStock_30
PlayerCmd_SetWeaponAmmoStock_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetWeaponAmmoStock_30:
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x20], eax
	mov [esp], ebx
	call BG_WeaponIsClipOnly
	mov [ebp-0x24], eax
	test eax, eax
	jz PlayerCmd_SetWeaponAmmoStock_40
	mov [esp], ebx
	call BG_ClipForWeapon
	mov edx, eax
	test eax, eax
	jz PlayerCmd_SetWeaponAmmoStock_50
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0x338]
	cmp edi, eax
	cmovge edi, eax
	test edi, edi
	mov eax, 0x0
	cmovle edi, eax
	mov [esi+edx*4+0x35c], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetWeaponAmmoStock_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_SetWeaponAmmoStock_60
PlayerCmd_SetWeaponAmmoStock_40:
	mov [esp], ebx
	call BG_AmmoForWeapon
	mov [ebp-0x1c], eax
	test eax, eax
	jz PlayerCmd_SetWeaponAmmoStock_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call BG_GetAmmoPlayerMax
	cmp edi, eax
	cmovl eax, edi
	test eax, eax
	cmovle eax, [ebp-0x24]
	mov edx, [ebp-0x1c]
	mov [esi+edx*4+0x15c], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetWeaponAmmoStock_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetWeaponAmmoStock_60


;PlayerCmd_GetWeaponAmmoClip(scr_entref_t)
PlayerCmd_GetWeaponAmmoClip:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_GetWeaponAmmoClip_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov edx, [ebx+0x15c]
	test edx, edx
	jz PlayerCmd_GetWeaponAmmoClip_20
PlayerCmd_GetWeaponAmmoClip_40:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	test eax, eax
	jnz PlayerCmd_GetWeaponAmmoClip_30
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_GetWeaponAmmoClip_30:
	mov [esp], eax
	call BG_ClipForWeapon
	mov edx, [ebx+0x15c]
	mov eax, [edx+eax*4+0x35c]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_GetWeaponAmmoClip_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_GetWeaponAmmoClip_40
PlayerCmd_GetWeaponAmmoClip_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_GetWeaponAmmoClip_40


;PlayerCmd_GetWeaponAmmoStock(scr_entref_t)
PlayerCmd_GetWeaponAmmoStock:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_GetWeaponAmmoStock_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov ebx, [esi+0x15c]
	test ebx, ebx
	jz PlayerCmd_GetWeaponAmmoStock_20
PlayerCmd_GetWeaponAmmoStock_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov ebx, eax
	test eax, eax
	jnz PlayerCmd_GetWeaponAmmoStock_30
	mov dword [ebp+0x8], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_AddInt
PlayerCmd_GetWeaponAmmoStock_30:
	mov [esp], eax
	call BG_WeaponIsClipOnly
	test eax, eax
	jnz PlayerCmd_GetWeaponAmmoStock_40
	mov [esp], ebx
	call BG_AmmoForWeapon
	mov edx, [esi+0x15c]
	mov eax, [edx+eax*4+0x15c]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_AddInt
PlayerCmd_GetWeaponAmmoStock_40:
	mov [esp], ebx
	call BG_ClipForWeapon
	mov edx, [esi+0x15c]
	mov eax, [edx+eax*4+0x35c]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_AddInt
PlayerCmd_GetWeaponAmmoStock_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_GetWeaponAmmoStock_50
PlayerCmd_GetWeaponAmmoStock_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_GetWeaponAmmoStock_50


;PlayerCmd_AnyAmmoForWeaponModes(scr_entref_t)
PlayerCmd_AnyAmmoForWeaponModes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_AnyAmmoForWeaponModes_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov esi, [edi+0x15c]
	test esi, esi
	jz PlayerCmd_AnyAmmoForWeaponModes_20
PlayerCmd_AnyAmmoForWeaponModes_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov esi, eax
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call Scr_VerifyWeaponIndex
	mov [esp+0x4], ebx
	mov eax, [edi+0x15c]
	mov [esp], eax
	call BG_WeaponAmmo
	mov esi, eax
	mov [esp], ebx
	call BG_GetWeaponDef
	mov eax, [eax+0x540]
	test eax, eax
	jnz PlayerCmd_AnyAmmoForWeaponModes_30
PlayerCmd_AnyAmmoForWeaponModes_60:
	test esi, esi
	jz PlayerCmd_AnyAmmoForWeaponModes_40
	mov dword [ebp+0x8], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddInt
PlayerCmd_AnyAmmoForWeaponModes_40:
	mov dword [ebp+0x8], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddInt
PlayerCmd_AnyAmmoForWeaponModes_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp PlayerCmd_AnyAmmoForWeaponModes_50
PlayerCmd_AnyAmmoForWeaponModes_30:
	mov [esp+0x4], eax
	mov eax, [edi+0x15c]
	mov [esp], eax
	call BG_WeaponAmmo
	add esi, eax
	jmp PlayerCmd_AnyAmmoForWeaponModes_60
PlayerCmd_AnyAmmoForWeaponModes_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_AnyAmmoForWeaponModes_50
	nop


;iclientprintln(scr_entref_t)
iclientprintln:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz iclientprintln_10
	movzx esi, bx
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, esi
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz iclientprintln_20
iclientprintln_30:
	mov dword [esp+0xc], 0x66
	mov dword [esp+0x8], _cstring_c
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call Scr_MakeGameMessage
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
iclientprintln_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	movzx esi, bx
	jmp iclientprintln_30
iclientprintln_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp iclientprintln_30
	nop


;iclientprintlnbold(scr_entref_t)
iclientprintlnbold:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz iclientprintlnbold_10
	movzx esi, bx
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, esi
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz iclientprintlnbold_20
iclientprintlnbold_30:
	mov dword [esp+0xc], 0x67
	mov dword [esp+0x8], _cstring_c
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call Scr_MakeGameMessage
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
iclientprintlnbold_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	movzx esi, bx
	jmp iclientprintlnbold_30
iclientprintlnbold_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp iclientprintlnbold_30
	nop



;PlayerCmd_setEnterTime(scr_entref_t)
PlayerCmd_setEnterTime:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_setEnterTime_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_setEnterTime_20
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x2fec], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_setEnterTime_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x2fec], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_setEnterTime_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x2fec], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;PlayerCmd_ClonePlayer(scr_entref_t)
PlayerCmd_ClonePlayer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_ClonePlayer_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov [ebp-0x1c], eax
	mov edx, g_entities
	add eax, edx
	mov [ebp-0x1c], eax
	mov eax, [eax+0x15c]
	test eax, eax
	jz PlayerCmd_ClonePlayer_20
PlayerCmd_ClonePlayer_50:
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebp-0x28], eax
	mov ebx, [ebp-0x1c]
	mov ebx, [ebx+0x15c]
	mov [ebp-0x24], ebx
	call G_SpawnPlayerClone
	mov edi, eax
	mov eax, [ebx+0xdc]
	mov [edi+0x8c], eax
	mov eax, [ebx+0xb0]
	and eax, 0xfffffffd
	mov edx, [edi+0x8]
	and edx, 0x2
	or eax, edx
	or eax, 0xa0000
	mov [edi+0x8], eax
	mov eax, ebx
	add eax, 0x1c
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetOrigin
	mov eax, [ebp-0x1c]
	add eax, 0x148
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetAngle
	mov dword [edi+0xc], 0x5
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [edi+0x10], eax
	lea ecx, [edi+0x24]
	mov edx, ebx
	add edx, 0x28
	mov eax, [ebx+0x28]
	mov [edi+0x24], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [edi+0x4], 0x2
	mov byte [edi+0x16a], 0x1
	mov eax, [ebx+0xdc]
	mov [esp], eax
	call Com_GetServerDObj
	mov [esp], eax
	call DObjGetTree
	mov [ebp-0x20], eax
	mov edx, edi
	mov ecx, 0x2
	mov ebx, g_clonePlayerMaxVelocity
PlayerCmd_ClonePlayer_40:
	mov eax, [ebx]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [edx+0x24]
	ucomiss xmm0, xmm1
	jbe PlayerCmd_ClonePlayer_30
	movss [edx+0x24], xmm1
PlayerCmd_ClonePlayer_30:
	add edx, 0x4
	sub ecx, 0x1
	jnz PlayerCmd_ClonePlayer_40
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [edi+0x1b4], eax
	call G_GetFreePlayerCorpseIndex
	lea edx, [eax+eax*4]
	mov ebx, edx
	shl ebx, 0x5
	sub ebx, edx
	lea ebx, [eax+ebx*2]
	mov eax, g_scr_data
	lea ebx, [eax+ebx*4+0x10b0]
	lea esi, [ebx+0xc]
	mov eax, [edi]
	mov [esi+0x4], eax
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [esi+0x8], eax
	mov byte [esi+0x4d8], 0x1
	lea eax, [ebx+0x18]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x24]
	mov edx, [eax+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, level_bgs
	lea eax, [edx+eax*4+0x99a04]
	mov dword [esp+0x8], 0x4cc
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call memcpy
	mov eax, [ebx+0xc]
	mov [esi+0x4b4], eax
	mov [esp+0x4], eax
	mov ebx, [ebp-0x20]
	mov [esp], ebx
	call XAnimCloneAnimTree
	mov dword [edi+0x7c], 0x3ff
	mov byte [edi+0xf6], 0x2
	lea ecx, [edi+0x108]
	mov edx, [ebp-0x1c]
	add edx, 0x108
	mov ebx, [ebp-0x1c]
	mov eax, [ebx+0x108]
	mov [edi+0x108], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea ecx, [edi+0x114]
	mov edx, ebx
	add edx, 0x114
	mov eax, [ebx+0x114]
	mov [edi+0x114], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea ecx, [edi+0x124]
	add edx, 0x10
	mov eax, [ebx+0x124]
	mov [edi+0x124], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea ecx, [edi+0x130]
	add edx, 0xc
	mov eax, [ebx+0x130]
	mov [edi+0x130], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov edx, [ebp-0x24]
	mov eax, [edx+0x8c]
	mov [edi+0xcc], eax
	mov eax, [edx+0x94]
	mov [edi+0xd0], eax
	mov dword [edi+0x190], 0x10001
	mov dword [edi+0x120], 0x4004000
	mov [esp], edi
	call SV_LinkEntity
	mov ebx, level
	mov ebx, [ebx+0x1ec]
	add [ebp-0x28], ebx
	mov eax, [ebp-0x28]
	mov [edi+0x19c], eax
	mov byte [edi+0x16e], 0xd
	mov [ebp+0x8], edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp GScr_AddEntity
PlayerCmd_ClonePlayer_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	mov dword [ebp-0x1c], 0x0
	jmp PlayerCmd_ClonePlayer_50
PlayerCmd_ClonePlayer_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_ClonePlayer_50
	nop


;PlayerCmd_SetClientDvar(scr_entref_t)
PlayerCmd_SetClientDvar:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov eax, [ebp+0x8]
	mov [ebp-0x81a], ax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetClientDvar_10
	movzx ecx, word [ebp-0x81a]
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz PlayerCmd_SetClientDvar_20
PlayerCmd_SetClientDvar_100:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [ebp-0x820], eax
	mov dword [esp], 0x1
	call Scr_GetType
	cmp eax, 0x3
	jz PlayerCmd_SetClientDvar_30
PlayerCmd_SetClientDvar_80:
	mov dword [esp], 0x1
	call Scr_GetString
	mov edi, eax
PlayerCmd_SetClientDvar_90:
	mov eax, [ebp-0x820]
	mov [esp], eax
	call Cvar_IsValidName
	test al, al
	jnz PlayerCmd_SetClientDvar_40
	mov eax, [ebp-0x820]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_dvar_s_has_an_in
	call va
	mov [esp], eax
	call Scr_Error
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetClientDvar_40:
	lea esi, [ebp-0x818]
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov ebx, 0x1
	jmp PlayerCmd_SetClientDvar_50
PlayerCmd_SetClientDvar_70:
	movsx eax, al
	mov [esp], eax
	call Q_CleanChar
	mov edx, 0x27
	cmp al, 0x22
	cmovnz edx, eax
	mov [ebx+esi-0x1], dl
	add ebx, 0x1
	cmp ebx, 0x400
	jz PlayerCmd_SetClientDvar_60
PlayerCmd_SetClientDvar_50:
	movzx eax, byte [edi+ebx-0x1]
	test al, al
	jnz PlayerCmd_SetClientDvar_70
PlayerCmd_SetClientDvar_60:
	mov [esp+0xc], esi
	mov eax, [ebp-0x820]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x76
	mov dword [esp], _cstring_c_s_s
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, word [ebp-0x81a]
	mov [esp], eax
	call SV_GameSendServerCommand
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetClientDvar_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	mov dword [esp], 0x0
	call Scr_GetString
	mov [ebp-0x820], eax
	mov dword [esp], 0x1
	call Scr_GetType
	cmp eax, 0x3
	jnz PlayerCmd_SetClientDvar_80
PlayerCmd_SetClientDvar_30:
	call Scr_GetNumParam
	mov dword [esp+0x10], 0x400
	lea ebx, [ebp-0x418]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_client_dvar_valu
	sub eax, 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Scr_ConstructMessageString
	mov edi, ebx
	jmp PlayerCmd_SetClientDvar_90
PlayerCmd_SetClientDvar_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetClientDvar_100


;PlayerCmd_SetClientDvars(scr_entref_t)
PlayerCmd_SetClientDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	mov eax, [ebp+0x8]
	mov [ebp-0x81a], ax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetClientDvars_10
	movzx ecx, word [ebp-0x81a]
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz PlayerCmd_SetClientDvars_20
PlayerCmd_SetClientDvars_100:
	call Scr_GetNumParam
	test al, 0x1
	jnz PlayerCmd_SetClientDvars_30
PlayerCmd_SetClientDvars_90:
	mov byte [ebp-0x418], 0x76
	mov byte [ebp-0x417], 0x0
	mov dword [ebp-0x820], 0x0
	lea edi, [ebp-0x418]
	jmp PlayerCmd_SetClientDvars_40
PlayerCmd_SetClientDvars_70:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call Q_strncat
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call Q_strncat
	mov dword [esp+0x8], _cstring__
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call Q_strncat
	lea eax, [ebp-0x818]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call Q_strncat
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call Q_strncat
	add dword [ebp-0x820], 0x2
PlayerCmd_SetClientDvars_40:
	call Scr_GetNumParam
	cmp [ebp-0x820], eax
	jae PlayerCmd_SetClientDvars_50
	mov eax, [ebp-0x820]
	mov [esp], eax
	call Scr_GetString
	mov esi, eax
	mov eax, [ebp-0x820]
	add eax, 0x1
	mov [esp], eax
	call Scr_GetString
	mov ebx, eax
	mov [esp], esi
	call Cvar_IsValidName
	test al, al
	jz PlayerCmd_SetClientDvars_60
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	lea eax, [ebp-0x818]
	mov [esp], eax
	call Q_strncpyz
	movzx eax, byte [ebp-0x818]
	test al, al
	jz PlayerCmd_SetClientDvars_70
	lea ebx, [ebp-0x817]
PlayerCmd_SetClientDvars_80:
	movsx eax, al
	mov [esp], eax
	call Q_CleanChar
	mov edx, 0x27
	cmp al, 0x22
	cmovnz edx, eax
	mov [ebx-0x1], dl
	movzx eax, byte [ebx]
	add ebx, 0x1
	test al, al
	jnz PlayerCmd_SetClientDvars_80
	jmp PlayerCmd_SetClientDvars_70
PlayerCmd_SetClientDvars_50:
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, word [ebp-0x81a]
	mov [esp], eax
	call SV_GameSendServerCommand
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetClientDvars_60:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_dvar_s_has_an_in
	call va
	mov [esp], eax
	call Scr_Error
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetClientDvars_30:
	mov dword [esp], _cstring_not_enough_param
	call Scr_Error
	jmp PlayerCmd_SetClientDvars_90
PlayerCmd_SetClientDvars_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	jmp PlayerCmd_SetClientDvars_100
PlayerCmd_SetClientDvars_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetClientDvars_100
	nop


;ScrCmd_PlayLocalSound(scr_entref_t)
ScrCmd_PlayLocalSound:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScrCmd_PlayLocalSound_10
	movzx esi, bx
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, esi
	mov edx, g_entities
	mov ecx, [edx+eax+0x15c]
	test ecx, ecx
	jz ScrCmd_PlayLocalSound_20
ScrCmd_PlayLocalSound_30:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_SoundAliasIndex
	movzx eax, al
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x73
	mov dword [esp+0x8], _cstring_c_i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call SV_GameSendServerCommand
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
ScrCmd_PlayLocalSound_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	movzx esi, bx
	jmp ScrCmd_PlayLocalSound_30
ScrCmd_PlayLocalSound_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp ScrCmd_PlayLocalSound_30
	nop


;ScrCmd_StopLocalSound(scr_entref_t)
ScrCmd_StopLocalSound:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz ScrCmd_StopLocalSound_10
	movzx esi, bx
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, esi
	mov edx, g_entities
	mov ebx, [edx+eax+0x15c]
	test ebx, ebx
	jz ScrCmd_StopLocalSound_20
ScrCmd_StopLocalSound_30:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_SoundAliasIndex
	movzx eax, al
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x6b
	mov dword [esp+0x8], _cstring_c_i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call SV_GameSendServerCommand
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
ScrCmd_StopLocalSound_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	movzx esi, bx
	jmp ScrCmd_StopLocalSound_30
ScrCmd_StopLocalSound_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp ScrCmd_StopLocalSound_30
	nop


;PlayerCmd_IsTalking(scr_entref_t)
PlayerCmd_IsTalking:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_IsTalking_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov edx, [ebx+0x15c]
	test edx, edx
	jz PlayerCmd_IsTalking_20
PlayerCmd_IsTalking_50:
	mov edx, [ebx+0x15c]
	mov eax, level
	mov eax, [eax+0x1ec]
	sub eax, [edx+0x30d4]
	mov edx, eax
	js PlayerCmd_IsTalking_30
	mov eax, g_voiceChatTalkingDuration
	mov eax, [eax]
	cmp edx, [eax+0xc]
	jl PlayerCmd_IsTalking_40
PlayerCmd_IsTalking_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_IsTalking_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_IsTalking_50
PlayerCmd_IsTalking_40:
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_IsTalking_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_IsTalking_50


;PlayerCmd_AllowSpectateTeam(scr_entref_t)
PlayerCmd_AllowSpectateTeam:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_AllowSpectateTeam_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov ebx, [esi+0x15c]
	test ebx, ebx
	jz PlayerCmd_AllowSpectateTeam_20
PlayerCmd_AllowSpectateTeam_110:
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0xe]
	jz PlayerCmd_AllowSpectateTeam_30
PlayerCmd_AllowSpectateTeam_80:
	cmp ax, [edx+0xc]
	jz PlayerCmd_AllowSpectateTeam_40
	cmp ax, [edx+0x58]
	jz PlayerCmd_AllowSpectateTeam_50
	cmp ax, [edx+0x12a]
	jz PlayerCmd_AllowSpectateTeam_60
	mov dword [esp+0x4], _cstring_team_must_be_axi
	mov dword [esp], 0x0
	call Scr_ParamError
	xor ebx, ebx
	mov dword [esp], 0x1
	call Scr_GetInt
	test eax, eax
	jnz PlayerCmd_AllowSpectateTeam_70
PlayerCmd_AllowSpectateTeam_90:
	mov eax, [esi+0x15c]
	or [eax+0x3004], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_AllowSpectateTeam_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0xe]
	jnz PlayerCmd_AllowSpectateTeam_80
PlayerCmd_AllowSpectateTeam_30:
	mov ebx, 0x2
PlayerCmd_AllowSpectateTeam_100:
	mov dword [esp], 0x1
	call Scr_GetInt
	test eax, eax
	jz PlayerCmd_AllowSpectateTeam_90
PlayerCmd_AllowSpectateTeam_70:
	mov eax, [esi+0x15c]
	not ebx
	and [eax+0x3004], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_AllowSpectateTeam_40:
	mov ebx, 0x4
	jmp PlayerCmd_AllowSpectateTeam_100
PlayerCmd_AllowSpectateTeam_60:
	mov ebx, 0x10
	jmp PlayerCmd_AllowSpectateTeam_100
PlayerCmd_AllowSpectateTeam_50:
	mov ebx, 0x1
	jmp PlayerCmd_AllowSpectateTeam_100
PlayerCmd_AllowSpectateTeam_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_AllowSpectateTeam_110


;PlayerCmd_SetActionSlot(scr_entref_t)
PlayerCmd_SetActionSlot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetActionSlot_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_SetActionSlot_20
PlayerCmd_SetActionSlot_70:
	mov dword [esp], 0x0
	call Scr_GetInt
	lea edi, [eax-0x1]
	cmp edi, 0x3
	jbe PlayerCmd_SetActionSlot_30
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], _cstring_invalid_slot_i_g
	call va
	mov [ebp+0x8], eax
PlayerCmd_SetActionSlot_110:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
PlayerCmd_SetActionSlot_30:
	mov dword [esp], 0x1
	call Scr_GetString
	mov esi, eax
	mov dword [esp+0x4], _cstring_weapon
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz PlayerCmd_SetActionSlot_40
	mov dword [esp+0x4], _cstring_altmode
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz PlayerCmd_SetActionSlot_50
	mov eax, [ebx+0x15c]
	mov dword [eax+edi*4+0x600], 0x2
PlayerCmd_SetActionSlot_90:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetActionSlot_40:
	mov dword [esp], 0x2
	call Scr_GetString
	mov esi, eax
	mov [esp], eax
	call BG_FindWeaponIndexForName
	mov edx, eax
	test eax, eax
	jz PlayerCmd_SetActionSlot_60
	mov eax, [ebx+0x15c]
	mov dword [eax+edi*4+0x600], 0x1
	mov eax, [ebx+0x15c]
	mov [eax+edi*4+0x610], edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetActionSlot_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_SetActionSlot_70
PlayerCmd_SetActionSlot_50:
	mov dword [esp+0x4], _cstring_nightvision
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz PlayerCmd_SetActionSlot_80
	mov eax, [ebx+0x15c]
	mov dword [eax+edi*4+0x600], 0x3
	jmp PlayerCmd_SetActionSlot_90
PlayerCmd_SetActionSlot_60:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_unknown_weapon_n
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Scr_ParamError
	jmp PlayerCmd_SetActionSlot_90
PlayerCmd_SetActionSlot_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetActionSlot_70
PlayerCmd_SetActionSlot_80:
	mov dword [esp+0x4], _cstring_null
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz PlayerCmd_SetActionSlot_100
	mov eax, [ebx+0x15c]
	mov dword [eax+edi*4+0x600], 0x0
	jmp PlayerCmd_SetActionSlot_90
PlayerCmd_SetActionSlot_100:
	mov dword [ebp+0x8], _cstring_invalid_option_e
	jmp PlayerCmd_SetActionSlot_110


;PlayerCmd_SetPerk(scr_entref_t)
PlayerCmd_SetPerk:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetPerk_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov ebx, [esi+0x15c]
	test ebx, ebx
	jz PlayerCmd_SetPerk_20
PlayerCmd_SetPerk_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call BG_GetPerkIndexForName
	mov edi, eax
	cmp eax, 0x14
	jz PlayerCmd_SetPerk_30
PlayerCmd_SetPerk_40:
	mov eax, [esi+0x15c]
	mov edx, 0x1
	mov ecx, edi
	shl edx, cl
	or [eax+0x5fc], edx
	mov eax, [esi+0x15c]
	or [eax+0x3064], edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_SetPerk_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call BG_GetPerkIndexForName
	mov edi, eax
	cmp eax, 0x14
	jnz PlayerCmd_SetPerk_40
PlayerCmd_SetPerk_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_perk_s
	call va
	mov [esp], eax
	call Scr_Error
	jmp PlayerCmd_SetPerk_40
PlayerCmd_SetPerk_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetPerk_50
	nop


;PlayerCmd_HasPerk(scr_entref_t)
PlayerCmd_HasPerk:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_HasPerk_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov edi, [esi+0x15c]
	test edi, edi
	jz PlayerCmd_HasPerk_20
PlayerCmd_HasPerk_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call BG_GetPerkIndexForName
	mov edi, eax
	cmp eax, 0x14
	jz PlayerCmd_HasPerk_30
PlayerCmd_HasPerk_40:
	mov eax, [esi+0x15c]
	mov eax, [eax+0x5fc]
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddBool
PlayerCmd_HasPerk_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call BG_GetPerkIndexForName
	mov edi, eax
	cmp eax, 0x14
	jnz PlayerCmd_HasPerk_40
PlayerCmd_HasPerk_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_perk_s
	call va
	mov [esp], eax
	call Scr_Error
	mov eax, [esi+0x15c]
	mov eax, [eax+0x5fc]
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddBool
PlayerCmd_HasPerk_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_HasPerk_50


;PlayerCmd_ClearPerks(scr_entref_t)
PlayerCmd_ClearPerks:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_ClearPerks_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_ClearPerks_20
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5fc], 0x0
	mov eax, [ebx+0x15c]
	mov dword [eax+0x3064], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_ClearPerks_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5fc], 0x0
	mov eax, [ebx+0x15c]
	mov dword [eax+0x3064], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_ClearPerks_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5fc], 0x0
	mov eax, [ebx+0x15c]
	mov dword [eax+0x3064], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;PlayerCmd_UnsetPerk(scr_entref_t)
PlayerCmd_UnsetPerk:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_UnsetPerk_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov eax, [esi+0x15c]
	test eax, eax
	jz PlayerCmd_UnsetPerk_20
PlayerCmd_UnsetPerk_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call BG_GetPerkIndexForName
	mov edi, eax
	cmp eax, 0x14
	jz PlayerCmd_UnsetPerk_30
PlayerCmd_UnsetPerk_40:
	mov eax, [esi+0x15c]
	mov edx, 0xfffffffe
	mov ecx, edi
	rol edx, cl
	and [eax+0x5fc], edx
	mov eax, [esi+0x15c]
	and [eax+0x3064], edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_UnsetPerk_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call BG_GetPerkIndexForName
	mov edi, eax
	cmp eax, 0x14
	jnz PlayerCmd_UnsetPerk_40
PlayerCmd_UnsetPerk_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_perk_s
	call va
	mov [esp], eax
	call Scr_Error
	jmp PlayerCmd_UnsetPerk_40
PlayerCmd_UnsetPerk_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_UnsetPerk_50
	nop


;PlayerCmd_UpdateScores(scr_entref_t)
PlayerCmd_UpdateScores:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_UpdateScores_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_UpdateScores_20
PlayerCmd_UpdateScores_40:
	mov esi, ebx
PlayerCmd_UpdateScores_30:
	mov edi, level
	mov eax, [edi+0x204]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x48
	mov dword [esp+0x8], _cstring_c_i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x19], 0x0
	sub esi, g_entities
	sar esi, 0x2
	imul esi, esi, 0x2c0685b5
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call SV_GameSendServerCommand
	mov eax, [edi+0x200]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x47
	mov dword [esp+0x8], _cstring_c_i
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x19], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call SV_GameSendServerCommand
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_UpdateScores_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_UpdateScores_30
PlayerCmd_UpdateScores_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_UpdateScores_40
	nop


;PlayerCmd_UpdateDMScores(scr_entref_t)
PlayerCmd_UpdateDMScores:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_UpdateDMScores_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov esi, g_entities
	lea ebx, [eax+esi]
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_UpdateDMScores_20
PlayerCmd_UpdateDMScores_90:
	mov eax, ebx
PlayerCmd_UpdateDMScores_70:
	sub eax, esi
	sar eax, 0x2
	imul esi, eax, 0x2c0685b5
	mov eax, level
	mov ebx, [eax+0x21c]
	test ebx, ebx
	jle PlayerCmd_UpdateDMScores_30
	mov edx, eax
	mov eax, [eax+0x220]
	cmp esi, eax
	jz PlayerCmd_UpdateDMScores_40
	mov ebx, eax
	jmp PlayerCmd_UpdateDMScores_50
PlayerCmd_UpdateDMScores_30:
	mov ebx, 0xffffffff
PlayerCmd_UpdateDMScores_50:
	mov edx, level
	mov ecx, [edx]
	lea eax, [esi+esi*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	add eax, esi
	mov eax, [eax+ecx+0x2f78]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x49
	mov dword [esp+0x8], _cstring_c_i_i
	mov dword [esp+0x4], 0x40
	lea edi, [ebp-0x58]
	mov [esp], edi
	call snprintf
	mov byte [ebp-0x19], 0x0
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call SV_GameSendServerCommand
	test ebx, ebx
	js PlayerCmd_UpdateDMScores_60
	mov eax, level
	mov ecx, [eax]
	lea eax, [ebx+ebx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	add eax, ebx
	mov eax, [eax+ecx+0x2f78]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x49
	mov dword [esp+0x8], _cstring_c_i_i
	mov dword [esp+0x4], 0x40
	mov [esp], edi
	call snprintf
	mov byte [ebp-0x19], 0x0
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call SV_GameSendServerCommand
PlayerCmd_UpdateDMScores_60:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_UpdateDMScores_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor eax, eax
	mov esi, g_entities
	jmp PlayerCmd_UpdateDMScores_70
PlayerCmd_UpdateDMScores_40:
	mov eax, edx
	xor edx, edx
PlayerCmd_UpdateDMScores_80:
	add edx, 0x1
	cmp ebx, edx
	jz PlayerCmd_UpdateDMScores_30
	mov ecx, [eax+0x224]
	add eax, 0x4
	cmp esi, ecx
	jz PlayerCmd_UpdateDMScores_80
	mov ebx, ecx
	jmp PlayerCmd_UpdateDMScores_50
PlayerCmd_UpdateDMScores_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_UpdateDMScores_90
	nop


;PlayerCmd_SetRank(scr_entref_t)
PlayerCmd_SetRank:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetRank_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_SetRank_20
PlayerCmd_SetRank_60:
	mov dword [esp], 0x0
	call Scr_GetInt
	mov edx, eax
	cmp eax, 0xff
	jbe PlayerCmd_SetRank_30
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_is_an_illegal_
	call va
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_SetRank_30:
	mov eax, [ebx+0x15c]
	mov [eax+0x305c], edx
	call Scr_GetNumParam
	cmp eax, 0x1
	jbe PlayerCmd_SetRank_40
	mov dword [esp], 0x1
	call Scr_GetInt
	mov edx, eax
	cmp eax, 0xff
	ja PlayerCmd_SetRank_50
	mov eax, [ebx+0x15c]
	mov [eax+0x3060], edx
PlayerCmd_SetRank_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_SetRank_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_SetRank_60
PlayerCmd_SetRank_50:
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_is_an_illegal_1
	call va
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_SetRank_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetRank_60
	nop


;G_InitializeAmmo(gentity_s*, int, unsigned char, int)
G_InitializeAmmo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x28], eax
	mov [ebp-0x2c], edx
	mov [ebp-0x2d], cl
	call BG_GetNumWeapons
	mov [ebp-0x24], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x20], eax
	mov edx, [ebp-0x2c]
	mov [ebp-0x1c], edx
	mov ecx, [ebp-0x28]
	mov ecx, [ecx+0x15c]
	mov [ebp-0x34], ecx
	mov edx, eax
G_InitializeAmmo_60:
	mov eax, [edx+0x328]
	mov edi, [ecx+eax*4+0x15c]
	xor esi, esi
	jmp G_InitializeAmmo_10
G_InitializeAmmo_30:
	add esi, 0x1
	mov eax, bg_lastParsedWeaponIndex
	cmp [eax], esi
	jb G_InitializeAmmo_20
G_InitializeAmmo_10:
	mov [esp], esi
	call BG_GetWeaponDef
	mov ebx, eax
	mov eax, [eax+0x328]
	mov edx, [ebp-0x20]
	cmp eax, [edx+0x328]
	jnz G_InitializeAmmo_30
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x34]
	test [edx+eax*4+0x55c], ecx
	jz G_InitializeAmmo_30
	cmp [ebp-0x20], ebx
	jz G_InitializeAmmo_30
	mov edx, [ebx+0x330]
	mov eax, [ebx+0x320]
	mov ecx, [ebp-0x34]
	sub eax, [ecx+edx*4+0x35c]
	sub edi, eax
	add esi, 0x1
	mov eax, bg_lastParsedWeaponIndex
	cmp [eax], esi
	jae G_InitializeAmmo_10
G_InitializeAmmo_20:
	test edi, edi
	mov eax, 0x0
	cmovs edi, eax
	mov ecx, [ebp-0x20]
	mov edx, [ecx+0x320]
	sub edx, edi
	test edx, edx
	jle G_InitializeAmmo_40
	xor eax, eax
	cmp dword [ebp+0x8], 0x0
	setz al
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	movzx eax, byte [ebp-0x2d]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x28]
	mov [esp], edx
	call Add_Ammo
G_InitializeAmmo_70:
	mov ecx, [ebp-0x20]
	mov ecx, [ecx+0x540]
	mov [ebp-0x1c], ecx
	mov [esp], ecx
	call BG_GetWeaponDef
	mov [ebp-0x20], eax
	sub dword [ebp-0x24], 0x1
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz G_InitializeAmmo_50
G_InitializeAmmo_80:
	mov eax, [ebp-0x1c]
	cmp [ebp-0x2c], eax
	jz G_InitializeAmmo_50
	mov edx, [ebp-0x24]
	test edx, edx
	js G_InitializeAmmo_50
	sar eax, 0x5
	mov edx, [ebp-0x28]
	mov edx, [edx+0x15c]
	mov [ebp-0x34], edx
	mov ecx, [ebp-0x1c]
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x34]
	test [edx+eax*4+0x55c], ecx
	jz G_InitializeAmmo_50
	mov edx, [ebp-0x20]
	mov ecx, [ebp-0x34]
	jmp G_InitializeAmmo_60
G_InitializeAmmo_40:
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jnz G_InitializeAmmo_70
	mov ecx, [ebp-0x1c]
	mov [esp+0x4], ecx
	mov edx, [ebp-0x28]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call Fill_Clip
	mov ecx, [ebp-0x20]
	mov ecx, [ecx+0x540]
	mov [ebp-0x1c], ecx
	mov [esp], ecx
	call BG_GetWeaponDef
	mov [ebp-0x20], eax
	sub dword [ebp-0x24], 0x1
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz G_InitializeAmmo_80
G_InitializeAmmo_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PlayerCmd_AllowADS(scr_entref_t)
PlayerCmd_AllowADS:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_AllowADS_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_AllowADS_20
PlayerCmd_AllowADS_60:
	call Scr_GetNumParam
	sub eax, 0x1
	jz PlayerCmd_AllowADS_30
PlayerCmd_AllowADS_40:
	mov dword [ebp+0x8], _cstring_usage_player_all
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_AllowADS_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	call Scr_GetNumParam
	sub eax, 0x1
	jnz PlayerCmd_AllowADS_40
PlayerCmd_AllowADS_30:
	mov dword [esp], 0x0
	call Scr_GetInt
	test eax, eax
	jz PlayerCmd_AllowADS_50
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xffffffdf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_AllowADS_50:
	mov eax, [ebx+0x15c]
	or dword [eax+0x10], 0x20
	mov eax, [ebx+0x15c]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp PM_ExitAimDownSight
PlayerCmd_AllowADS_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_AllowADS_60


;PlayerCmd_AllowJump(scr_entref_t)
PlayerCmd_AllowJump:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_AllowJump_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_AllowJump_20
PlayerCmd_AllowJump_40:
	mov dword [esp], 0x0
	call Scr_GetInt
	test eax, eax
	jz PlayerCmd_AllowJump_30
	mov eax, [ebx+0x15c]
	and dword [eax+0xc], 0xfff7ffff
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_AllowJump_30:
	mov eax, [ebx+0x15c]
	or dword [eax+0xc], 0x80000
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_AllowJump_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_AllowJump_40
PlayerCmd_AllowJump_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_AllowJump_40
	nop


;PlayerCmd_hasWeapon(scr_entref_t)
PlayerCmd_hasWeapon:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_hasWeapon_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_hasWeapon_20
PlayerCmd_hasWeapon_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call BG_FindWeaponIndexForName
	mov ecx, eax
	test eax, eax
	jz PlayerCmd_hasWeapon_30
	mov esi, eax
	sar esi, 0x5
	mov edx, [ebx+0x15c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+esi*4+0x55c], eax
	jnz PlayerCmd_hasWeapon_40
PlayerCmd_hasWeapon_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_AddBool
PlayerCmd_hasWeapon_40:
	mov dword [ebp+0x8], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_AddBool
PlayerCmd_hasWeapon_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_hasWeapon_50
PlayerCmd_hasWeapon_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_hasWeapon_50
	nop


;PlayerCmd_playerADS(scr_entref_t)
PlayerCmd_playerADS:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_playerADS_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov edx, [ebx+0x15c]
	test edx, edx
	jz PlayerCmd_playerADS_20
	mov eax, [ebx+0x15c]
	mov eax, [eax+0xf4]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddFloat
PlayerCmd_playerADS_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	mov eax, [eax+0xf4]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddFloat
PlayerCmd_playerADS_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	mov eax, [ebx+0x15c]
	mov eax, [eax+0xf4]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddFloat


;PlayerCmd_giveWeapon(scr_entref_t)
PlayerCmd_giveWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_giveWeapon_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov ebx, [esi+0x15c]
	test ebx, ebx
	jz PlayerCmd_giveWeapon_20
PlayerCmd_giveWeapon_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov edi, eax
	mov ebx, eax
	sar ebx, 0x5
	mov edx, [esi+0x15c]
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	setnz al
	movzx eax, al
	mov [ebp-0x5c], eax
	call Scr_GetNumParam
	cmp eax, 0x2
	jz PlayerCmd_giveWeapon_30
PlayerCmd_giveWeapon_60:
	xor eax, eax
PlayerCmd_giveWeapon_70:
	movzx eax, al
	mov [ebp-0x60], eax
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [esi+0x15c]
	mov [esp], eax
	call G_GivePlayerWeapon
	test eax, eax
	jz PlayerCmd_giveWeapon_40
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x4a
	mov dword [esp+0x8], _cstring_c_i1
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x19], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, esi
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esp], eax
	call SV_GameSendServerCommand
	mov eax, [ebp-0x5c]
	mov [esp], eax
	mov ecx, [ebp-0x60]
	mov edx, edi
	mov eax, esi
	call G_InitializeAmmo
PlayerCmd_giveWeapon_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_giveWeapon_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_giveWeapon_50
PlayerCmd_giveWeapon_30:
	mov [esp], edi
	call BG_GetWeaponDef
	mov ebx, eax
	mov dword [esp], 0x1
	call Scr_GetInt
	cmp eax, 0xff
	ja PlayerCmd_giveWeapon_60
	mov edx, [ebx+eax*4+0xc]
	test edx, edx
	jnz PlayerCmd_giveWeapon_70
	jmp PlayerCmd_giveWeapon_60
PlayerCmd_giveWeapon_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_giveWeapon_50


;PlayerCmd_isOnGround(scr_entref_t)
PlayerCmd_isOnGround:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_isOnGround_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_isOnGround_20
PlayerCmd_isOnGround_50:
	mov eax, [ebx+0x15c]
	test dword [eax+0xb0], 0x300
	jnz PlayerCmd_isOnGround_30
	cmp dword [eax+0x70], 0x3ff
	jz PlayerCmd_isOnGround_40
PlayerCmd_isOnGround_30:
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_isOnGround_40:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_isOnGround_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_isOnGround_50
PlayerCmd_isOnGround_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_isOnGround_50


;PlayerCmd_pingPlayer(scr_entref_t)
PlayerCmd_pingPlayer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_pingPlayer_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_pingPlayer_20
PlayerCmd_pingPlayer_30:
	mov eax, [ebx+0x15c]
	or dword [eax+0xb0], 0x400000
	mov edx, [ebx+0x15c]
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0xbb8
	mov [edx+0x3108], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_pingPlayer_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_pingPlayer_30
PlayerCmd_pingPlayer_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_pingPlayer_30
	nop


;PlayerCmd_takeWeapon(scr_entref_t)
PlayerCmd_takeWeapon:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_takeWeapon_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_takeWeapon_20
PlayerCmd_takeWeapon_30:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call BG_TakePlayerWeapon
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_takeWeapon_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_takeWeapon_30
PlayerCmd_takeWeapon_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_takeWeapon_30
	nop


;PlayerCmd_AllowSprint(scr_entref_t)
PlayerCmd_AllowSprint:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_AllowSprint_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_AllowSprint_20
PlayerCmd_AllowSprint_40:
	mov dword [esp], 0x0
	call Scr_GetInt
	test eax, eax
	jz PlayerCmd_AllowSprint_30
	mov eax, [ebx+0x15c]
	and dword [eax+0xc], 0xfffbffff
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_AllowSprint_30:
	mov eax, [ebx+0x15c]
	or dword [eax+0xc], 0x40000
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_AllowSprint_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_AllowSprint_40
PlayerCmd_AllowSprint_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_AllowSprint_40
	nop


;PlayerCmd_giveMaxAmmo(scr_entref_t)
PlayerCmd_giveMaxAmmo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_giveMaxAmmo_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov eax, [edi+0x15c]
	test eax, eax
	jz PlayerCmd_giveMaxAmmo_20
PlayerCmd_giveMaxAmmo_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov esi, eax
	mov ebx, [edi+0x15c]
	mov edx, eax
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx*4+0x55c], eax
	jnz PlayerCmd_giveMaxAmmo_30
PlayerCmd_giveMaxAmmo_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_giveMaxAmmo_30:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], ebx
	call BG_GetAmmoPlayerMax
	mov ebx, eax
	mov [esp], esi
	call BG_GetWeaponDef
	mov edx, [edi+0x15c]
	mov eax, [eax+0x328]
	sub ebx, [edx+eax*4+0x15c]
	test ebx, ebx
	jle PlayerCmd_giveMaxAmmo_40
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	movzx eax, byte [esi+edx+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call Add_Ammo
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_giveMaxAmmo_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp PlayerCmd_giveMaxAmmo_50
PlayerCmd_giveMaxAmmo_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_giveMaxAmmo_50


;PlayerCmd_giveStartAmmo(scr_entref_t)
PlayerCmd_giveStartAmmo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_giveStartAmmo_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov esi, [edi+0x15c]
	test esi, esi
	jz PlayerCmd_giveStartAmmo_20
PlayerCmd_giveStartAmmo_40:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov ebx, eax
	mov esi, [edi+0x15c]
	mov edx, eax
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x55c], eax
	jnz PlayerCmd_giveStartAmmo_30
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_giveStartAmmo_30:
	movzx ecx, byte [ebx+esi+0x81c]
	mov dword [ebp+0x8], 0x0
	mov edx, ebx
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp G_InitializeAmmo
PlayerCmd_giveStartAmmo_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp PlayerCmd_giveStartAmmo_40
PlayerCmd_giveStartAmmo_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_giveStartAmmo_40
	nop


;PlayerCmd_GetWeaponsList(scr_entref_t)
PlayerCmd_GetWeaponsList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_GetWeaponsList_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov eax, [esi+0x15c]
	test eax, eax
	jz PlayerCmd_GetWeaponsList_20
PlayerCmd_GetWeaponsList_60:
	call BG_GetNumWeapons
	mov [ebp-0x1c], eax
	call Scr_MakeArray
	cmp dword [ebp-0x1c], 0x1
	jbe PlayerCmd_GetWeaponsList_30
	mov ebx, 0x1
	jmp PlayerCmd_GetWeaponsList_40
PlayerCmd_GetWeaponsList_50:
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jz PlayerCmd_GetWeaponsList_30
PlayerCmd_GetWeaponsList_40:
	mov edx, ebx
	sar edx, 0x5
	mov eax, [esi+0x15c]
	mov ecx, ebx
	and ecx, 0x1f
	mov edi, 0x1
	shl edi, cl
	test [eax+edx*4+0x55c], edi
	jz PlayerCmd_GetWeaponsList_50
	mov [esp], ebx
	call BG_GetWeaponDef
	mov eax, [eax]
	mov [esp], eax
	call Scr_AddString
	call Scr_AddArray
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jnz PlayerCmd_GetWeaponsList_40
PlayerCmd_GetWeaponsList_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_GetWeaponsList_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_GetWeaponsList_60
PlayerCmd_GetWeaponsList_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_GetWeaponsList_60


;PlayerCmd_switchToWeapon(scr_entref_t)
PlayerCmd_switchToWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1a], ax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_switchToWeapon_10
	movzx ecx, word [ebp-0x1a]
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov eax, [edi+0x15c]
	test eax, eax
	jz PlayerCmd_switchToWeapon_20
PlayerCmd_switchToWeapon_60:
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov esi, eax
	test eax, eax
	jz PlayerCmd_switchToWeapon_30
PlayerCmd_switchToWeapon_50:
	mov ebx, esi
	sar ebx, 0x5
	mov edx, [edi+0x15c]
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jz PlayerCmd_switchToWeapon_40
	mov [esp+0x4], esi
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	call G_SelectWeaponIndex
	mov dword [ebp+0x8], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddBool
PlayerCmd_switchToWeapon_40:
	mov dword [ebp+0x8], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddBool
PlayerCmd_switchToWeapon_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov esi, eax
	test eax, eax
	jnz PlayerCmd_switchToWeapon_50
PlayerCmd_switchToWeapon_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_weapon_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp PlayerCmd_switchToWeapon_50
PlayerCmd_switchToWeapon_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_switchToWeapon_60


;PlayerCmd_takeAllWeapons(scr_entref_t)
PlayerCmd_takeAllWeapons:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_takeAllWeapons_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov edx, [esi+0x15c]
	test edx, edx
	jz PlayerCmd_takeAllWeapons_20
PlayerCmd_takeAllWeapons_50:
	mov eax, [esi+0x15c]
	mov dword [eax+0xe8], 0x0
	mov ebx, 0x1
	jmp PlayerCmd_takeAllWeapons_30
PlayerCmd_takeAllWeapons_40:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov eax, [esi+0x15c]
	mov [esp], eax
	call BG_TakePlayerWeapon
	add ebx, 0x1
PlayerCmd_takeAllWeapons_30:
	call BG_GetNumWeapons
	cmp ebx, eax
	jb PlayerCmd_takeAllWeapons_40
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
PlayerCmd_takeAllWeapons_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_takeAllWeapons_50
PlayerCmd_takeAllWeapons_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_takeAllWeapons_50


;PlayerCmd_switchToOffhand(scr_entref_t)
PlayerCmd_switchToOffhand:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1a], ax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_switchToOffhand_10
	movzx ecx, word [ebp-0x1a]
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov eax, [edi+0x15c]
	test eax, eax
	jz PlayerCmd_switchToOffhand_20
PlayerCmd_switchToOffhand_60:
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov esi, eax
	test eax, eax
	jz PlayerCmd_switchToOffhand_30
PlayerCmd_switchToOffhand_50:
	mov ebx, esi
	sar ebx, 0x5
	mov edx, [edi+0x15c]
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jz PlayerCmd_switchToOffhand_40
	mov [esp+0x4], esi
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	call G_SetEquippedOffHand
	mov dword [ebp+0x8], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddBool
PlayerCmd_switchToOffhand_40:
	mov dword [ebp+0x8], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddBool
PlayerCmd_switchToOffhand_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov esi, eax
	test eax, eax
	jnz PlayerCmd_switchToOffhand_50
PlayerCmd_switchToOffhand_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_weapon_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp PlayerCmd_switchToOffhand_50
PlayerCmd_switchToOffhand_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_switchToOffhand_60


;PlayerCmd_adsButtonPressed(scr_entref_t)
PlayerCmd_adsButtonPressed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_adsButtonPressed_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_adsButtonPressed_20
PlayerCmd_adsButtonPressed_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test ah, 0x8
	jz PlayerCmd_adsButtonPressed_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_adsButtonPressed_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_adsButtonPressed_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_adsButtonPressed_40
PlayerCmd_adsButtonPressed_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_adsButtonPressed_40


;PlayerCmd_getCurrentWeapon(scr_entref_t)
PlayerCmd_getCurrentWeapon:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_getCurrentWeapon_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_getCurrentWeapon_20
PlayerCmd_getCurrentWeapon_40:
	mov eax, [ebx+0x15c]
	mov edx, [eax+0x2f64]
	test edx, edx
	jnz PlayerCmd_getCurrentWeapon_30
	mov eax, [eax+0xe8]
	test eax, eax
	jle PlayerCmd_getCurrentWeapon_30
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddString
PlayerCmd_getCurrentWeapon_30:
	mov dword [ebp+0x8], _cstring_none
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddString
PlayerCmd_getCurrentWeapon_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_getCurrentWeapon_40
PlayerCmd_getCurrentWeapon_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_getCurrentWeapon_40
	nop


;PlayerCmd_useButtonPressed(scr_entref_t)
PlayerCmd_useButtonPressed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_useButtonPressed_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_useButtonPressed_20
PlayerCmd_useButtonPressed_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test al, 0x28
	jz PlayerCmd_useButtonPressed_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_useButtonPressed_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_useButtonPressed_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_useButtonPressed_40
PlayerCmd_useButtonPressed_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_useButtonPressed_40
	nop


;PlayerCmd_SetSpreadOverride(scr_entref_t)
PlayerCmd_SetSpreadOverride:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_SetSpreadOverride_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_SetSpreadOverride_20
PlayerCmd_SetSpreadOverride_80:
	call Scr_GetNumParam
	sub eax, 0x1
	jz PlayerCmd_SetSpreadOverride_30
PlayerCmd_SetSpreadOverride_40:
	mov dword [ebp+0x8], _cstring_usage_player_set2
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_SetSpreadOverride_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	call Scr_GetNumParam
	sub eax, 0x1
	jnz PlayerCmd_SetSpreadOverride_40
PlayerCmd_SetSpreadOverride_30:
	mov dword [esp], 0x0
	call Scr_GetInt
	mov edx, eax
	test eax, eax
	jle PlayerCmd_SetSpreadOverride_50
	cmp eax, 0x3f
	jg PlayerCmd_SetSpreadOverride_60
	mov eax, [ebx+0x15c]
	mov [eax+0xfc], edx
	mov eax, [ebx+0x15c]
	mov dword [eax+0x100], 0x2
PlayerCmd_SetSpreadOverride_70:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_SetSpreadOverride_60:
	mov dword [esp+0x4], 0x40
	mov dword [esp], _cstring_setspreadoverrid
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp PlayerCmd_SetSpreadOverride_70
PlayerCmd_SetSpreadOverride_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_SetSpreadOverride_80
PlayerCmd_SetSpreadOverride_50:
	mov dword [esp+0x4], _cstring_setspreadoverrid1
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp PlayerCmd_SetSpreadOverride_70


;PlayerCmd_fragButtonPressed(scr_entref_t)
PlayerCmd_fragButtonPressed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_fragButtonPressed_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_fragButtonPressed_20
PlayerCmd_fragButtonPressed_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test ah, 0x40
	jz PlayerCmd_fragButtonPressed_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_fragButtonPressed_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_fragButtonPressed_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_fragButtonPressed_40
PlayerCmd_fragButtonPressed_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_fragButtonPressed_40


;PlayerCmd_getCurrentOffhand(scr_entref_t)
PlayerCmd_getCurrentOffhand:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_getCurrentOffhand_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_getCurrentOffhand_20
PlayerCmd_getCurrentOffhand_40:
	mov eax, [ebx+0x15c]
	mov ecx, [eax+0x2f64]
	test ecx, ecx
	jnz PlayerCmd_getCurrentOffhand_30
	mov eax, [eax+0xe0]
	test eax, eax
	jle PlayerCmd_getCurrentOffhand_30
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddString
PlayerCmd_getCurrentOffhand_30:
	mov dword [ebp+0x8], _cstring_none
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddString
PlayerCmd_getCurrentOffhand_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_getCurrentOffhand_40
PlayerCmd_getCurrentOffhand_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_getCurrentOffhand_40
	nop


;PlayerCmd_getFractionMaxAmmo(scr_entref_t)
PlayerCmd_getFractionMaxAmmo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_getFractionMaxAmmo_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov eax, [edi+0x15c]
	test eax, eax
	jz PlayerCmd_getFractionMaxAmmo_20
PlayerCmd_getFractionMaxAmmo_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov esi, eax
	mov ebx, eax
	sar ebx, 0x5
	mov edx, [edi+0x15c]
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jz PlayerCmd_getFractionMaxAmmo_30
	mov [esp], esi
	call BG_GetWeaponDef
	mov ecx, [eax+0x334]
	test ecx, ecx
	jle PlayerCmd_getFractionMaxAmmo_30
	mov edx, [edi+0x15c]
	mov eax, [eax+0x328]
	mov eax, [edx+eax*4+0x15c]
	test eax, eax
	jle PlayerCmd_getFractionMaxAmmo_40
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	movss [ebp+0x8], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddFloat
PlayerCmd_getFractionMaxAmmo_30:
	mov dword [ebp+0x8], 0x3f800000
PlayerCmd_getFractionMaxAmmo_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddFloat
PlayerCmd_getFractionMaxAmmo_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp PlayerCmd_getFractionMaxAmmo_50
PlayerCmd_getFractionMaxAmmo_40:
	mov dword [ebp+0x8], 0x0
	jmp PlayerCmd_getFractionMaxAmmo_60
PlayerCmd_getFractionMaxAmmo_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_getFractionMaxAmmo_50
	nop


;PlayerCmd_meleeButtonPressed(scr_entref_t)
PlayerCmd_meleeButtonPressed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_meleeButtonPressed_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_meleeButtonPressed_20
PlayerCmd_meleeButtonPressed_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test al, 0x4
	jz PlayerCmd_meleeButtonPressed_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_meleeButtonPressed_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_meleeButtonPressed_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_meleeButtonPressed_40
PlayerCmd_meleeButtonPressed_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_meleeButtonPressed_40
	nop


;PlayerCmd_ResetSpreadOverride(scr_entref_t)
PlayerCmd_ResetSpreadOverride:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_ResetSpreadOverride_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov edx, [ebx+0x15c]
	test edx, edx
	jz PlayerCmd_ResetSpreadOverride_20
PlayerCmd_ResetSpreadOverride_40:
	mov eax, [ebx+0x15c]
	mov dword [eax+0x100], 0x1
	mov eax, [ebx+0x15c]
	mov dword [eax+0x628], 0x437f0000
	call Scr_GetNumParam
	test eax, eax
	jnz PlayerCmd_ResetSpreadOverride_30
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_ResetSpreadOverride_30:
	mov dword [ebp+0x8], _cstring_usage_player_res
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_ResetSpreadOverride_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_ResetSpreadOverride_40
PlayerCmd_ResetSpreadOverride_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_ResetSpreadOverride_40
	nop


;PlayerCmd_attackButtonPressed(scr_entref_t)
PlayerCmd_attackButtonPressed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_attackButtonPressed_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_attackButtonPressed_20
PlayerCmd_attackButtonPressed_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test al, 0x1
	jz PlayerCmd_attackButtonPressed_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_attackButtonPressed_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_attackButtonPressed_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_attackButtonPressed_40
PlayerCmd_attackButtonPressed_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_attackButtonPressed_40
	nop


;PlayerCmd_buttonPressedDEVONLY(scr_entref_t)
PlayerCmd_buttonPressedDEVONLY:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp Scr_AddInt


;PlayerCmd_getFractionStartAmmo(scr_entref_t)
PlayerCmd_getFractionStartAmmo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_getFractionStartAmmo_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov eax, [edi+0x15c]
	test eax, eax
	jz PlayerCmd_getFractionStartAmmo_20
PlayerCmd_getFractionStartAmmo_50:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov esi, eax
	mov ebx, eax
	sar ebx, 0x5
	mov edx, [edi+0x15c]
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jz PlayerCmd_getFractionStartAmmo_30
	mov [esp], esi
	call BG_GetWeaponDef
	mov ecx, [eax+0x320]
	test ecx, ecx
	jle PlayerCmd_getFractionStartAmmo_30
	mov edx, [edi+0x15c]
	mov eax, [eax+0x328]
	mov eax, [edx+eax*4+0x15c]
	test eax, eax
	jle PlayerCmd_getFractionStartAmmo_40
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	movss [ebp+0x8], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddFloat
PlayerCmd_getFractionStartAmmo_30:
	mov dword [ebp+0x8], 0x3f800000
PlayerCmd_getFractionStartAmmo_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_AddFloat
PlayerCmd_getFractionStartAmmo_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor edi, edi
	jmp PlayerCmd_getFractionStartAmmo_50
PlayerCmd_getFractionStartAmmo_40:
	mov dword [ebp+0x8], 0x0
	jmp PlayerCmd_getFractionStartAmmo_60
PlayerCmd_getFractionStartAmmo_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_getFractionStartAmmo_50
	nop


;PlayerCmd_GetWeaponsListPrimaries(scr_entref_t)
PlayerCmd_GetWeaponsListPrimaries:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_GetWeaponsListPrimaries_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov ebx, [esi+0x15c]
	test ebx, ebx
	jz PlayerCmd_GetWeaponsListPrimaries_20
PlayerCmd_GetWeaponsListPrimaries_60:
	call BG_GetNumWeapons
	mov [ebp-0x1c], eax
	call Scr_MakeArray
	cmp dword [ebp-0x1c], 0x1
	jbe PlayerCmd_GetWeaponsListPrimaries_30
	mov ebx, 0x1
	jmp PlayerCmd_GetWeaponsListPrimaries_40
PlayerCmd_GetWeaponsListPrimaries_50:
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jz PlayerCmd_GetWeaponsListPrimaries_30
PlayerCmd_GetWeaponsListPrimaries_40:
	mov edx, ebx
	sar edx, 0x5
	mov eax, [esi+0x15c]
	mov ecx, ebx
	and ecx, 0x1f
	mov edi, 0x1
	shl edi, cl
	test [eax+edx*4+0x55c], edi
	jz PlayerCmd_GetWeaponsListPrimaries_50
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edx, [eax+0x13c]
	test edx, edx
	jnz PlayerCmd_GetWeaponsListPrimaries_50
	mov eax, [eax]
	mov [esp], eax
	call Scr_AddString
	call Scr_AddArray
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jnz PlayerCmd_GetWeaponsListPrimaries_40
PlayerCmd_GetWeaponsListPrimaries_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayerCmd_GetWeaponsListPrimaries_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp PlayerCmd_GetWeaponsListPrimaries_60
PlayerCmd_GetWeaponsListPrimaries_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_GetWeaponsListPrimaries_60


;PlayerCmd_getOffhandSecondaryClass(scr_entref_t)
PlayerCmd_getOffhandSecondaryClass:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_getOffhandSecondaryClass_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_getOffhandSecondaryClass_20
PlayerCmd_getOffhandSecondaryClass_50:
	mov eax, [ebx+0x15c]
	cmp dword [eax+0xe4], 0x1
	jz PlayerCmd_getOffhandSecondaryClass_30
PlayerCmd_getOffhandSecondaryClass_40:
	mov eax, scr_const
	movzx eax, word [eax+0xd2]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddConstString
PlayerCmd_getOffhandSecondaryClass_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	cmp dword [eax+0xe4], 0x1
	jnz PlayerCmd_getOffhandSecondaryClass_40
PlayerCmd_getOffhandSecondaryClass_30:
	mov eax, scr_const
	movzx eax, word [eax+0xd0]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddConstString
PlayerCmd_getOffhandSecondaryClass_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_getOffhandSecondaryClass_50
	nop


;PlayerCmd_setOffhandSecondaryClass(scr_entref_t)
PlayerCmd_setOffhandSecondaryClass:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_setOffhandSecondaryClass_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_setOffhandSecondaryClass_20
PlayerCmd_setOffhandSecondaryClass_80:
	call Scr_GetNumParam
	sub eax, 0x1
	jz PlayerCmd_setOffhandSecondaryClass_30
PlayerCmd_setOffhandSecondaryClass_40:
	mov dword [ebp+0x8], _cstring_incorrect_number
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_setOffhandSecondaryClass_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	call Scr_GetNumParam
	sub eax, 0x1
	jnz PlayerCmd_setOffhandSecondaryClass_40
PlayerCmd_setOffhandSecondaryClass_30:
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, eax
	mov ecx, scr_const
	movzx eax, word [ecx+0xd0]
	cmp edx, eax
	jz PlayerCmd_setOffhandSecondaryClass_50
	movzx eax, word [ecx+0xd2]
	cmp edx, eax
	jz PlayerCmd_setOffhandSecondaryClass_60
	mov dword [ebp+0x8], _cstring_must_specify_eit
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error
PlayerCmd_setOffhandSecondaryClass_60:
	mov eax, [ebx+0x15c]
	mov dword [eax+0xe4], 0x0
PlayerCmd_setOffhandSecondaryClass_70:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PlayerCmd_setOffhandSecondaryClass_50:
	mov eax, [ebx+0x15c]
	mov dword [eax+0xe4], 0x1
	jmp PlayerCmd_setOffhandSecondaryClass_70
PlayerCmd_setOffhandSecondaryClass_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_setOffhandSecondaryClass_80


;PlayerCmd_secondaryOffhandButtonPressed(scr_entref_t)
PlayerCmd_secondaryOffhandButtonPressed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz PlayerCmd_secondaryOffhandButtonPressed_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz PlayerCmd_secondaryOffhandButtonPressed_20
PlayerCmd_secondaryOffhandButtonPressed_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3088]
	movzx edx, word [edx+0x3094]
	or dx, ax
	jns PlayerCmd_secondaryOffhandButtonPressed_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_secondaryOffhandButtonPressed_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_AddInt
PlayerCmd_secondaryOffhandButtonPressed_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor ebx, ebx
	jmp PlayerCmd_secondaryOffhandButtonPressed_40
PlayerCmd_secondaryOffhandButtonPressed_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_ObjectError
	jmp PlayerCmd_secondaryOffhandButtonPressed_40
	nop


;BodyEnd(gentity_s*)
BodyEnd:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	and dword [eax+0x8], 0xfff7ffff
	mov dword [eax+0x120], 0x4000000
	mov byte [eax+0xf6], 0x0
	pop ebp
	ret


;Initialized global or static variables of g_client_script_cmd_mp:
SECTION .data


;Initialized constant data of g_client_script_cmd_mp:
SECTION .rdata

;Zero initialized global or static variables of g_client_script_cmd_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_not_an_entity:		db "not an entity",0
_cstring_entity_i_is_not_:		db "entity %i is not a player",0
_cstring_usage_setviewmod:		db "usage: setviewmodel(<model name>)",0
_cstring_radius_of_locati:		db "Radius of location selector must be greater than zero",0ah,0
_cstring_client_chat_mess:		db "Client Chat Message",0
_cstring_trying_to_do_dam:		db "Trying to do damage to a client that is already dead",0
_cstring_no_die_handler_f:		db "No die handler for player entity type %i",0
_cstring_c_i:		db "%c %i",0
_cstring_c_i_1:		db "%c %i 1",0
_cstring_c:		db "%c",0
_cstring_usage_player_set:		db "USAGE: player setReverb(",22h,"priority",22h,", ",22h,"roomtype",22h,", drylevel = 1.0, wetlevel = 0.5, fadetime = 0);",0ah,"Valid priorities are ",22h,"snd_enveffectsprio_level",22h," or ",22h,"snd_enveffectsprio_shellshock",22h,", dry level is a float from 0 (no source sound) to 1 (full source sound), wetlevel is a float from 0 (no effect) to 1 (full effect), fadetime is in sec and modifies drylevel and wetlevel",0ah,0
_cstring_priority_must_be:		db "priority must be ",27h,"snd_enveffectsprio_level",27h," or ",27h,"snd_enveffectsprio_shellshock",27h,0ah,0
_cstring_c_i_s_g_g_g:		db "%c %i ",22h,"%s",22h," %g %g %g",0
_cstring_usage_player_dea:		db "USAGE: player deactivateReverb(",22h,"priority",22h,", fadetime = 0);",0ah,"Valid priorities are ",22h,"snd_enveffectsprio_level",22h," or ",22h,"snd_enveffectsprio_shellshock",22h,", fadetime is the time spent fading to the next lowest active reverb priority level in seconds",0ah,0
_cstring_usage_player_set1:		db "USAGE: player setchannelvolumes(",22h,"priority",22h,", ",22h,"shock name",22h,", fadetime = 0);",0ah,"Valid priorities are ",22h,"snd_channelvolprio_holdbreath",22h,", ",22h,"snd_channelvolprio_pain",22h,", or ",22h,"snd_channelvolprio_shellshock",22h,", fadetime is in sec",0ah,0
_cstring_priority_must_be1:		db "priority must be ",27h,"snd_channelvolprio_holdbreath",27h,", ",27h,"snd_channelvolprio_pain",27h,", or ",27h,"snd_channelvolprio_shellshock",27h,0ah,0
_cstring_c_i_i_g:		db "%c %i %i %g",0
_cstring_usage_player_dea1:		db "USAGE: player deactivatechannelvolumes(",22h,"priority",22h,", fadetime = 0);",0ah,"Valid priorities are ",22h,"snd_channelvolprio_holdbreath",22h,", ",22h,"snd_channelvolprio_pain",22h,", or ",22h,"snd_channelvolprio_shellshock",22h,", fadetime is the time spent fading to the next lowest active reverb priority level in seconds",0ah,0
_cstring_dvar_s_has_an_in:		db "Dvar %s has an invalid dvar name",0
_cstring_c_s_s:		db "%c %s ",22h,"%s",22h,0
_cstring_client_dvar_valu:		db "Client Dvar Value",0
_cstring_space:		db " ",0
_cstring__:		db " ",22h,0
_cstring_:		db 22h,0
_cstring_not_enough_param:		db "Not enough parameters to setclientdvar() - must be an even number of parameters (dvar, value, dvar, value, etc.)",0ah,0
_cstring_team_must_be_axi:		db "team must be ",22h,"axis",22h,", ",22h,"allies",22h,", ",22h,"none",22h,", or ",22h,"freelook",22h,0
_cstring_usage_self_getgu:		db "USAGE: self getGuid()",0ah,0
_cstring_usage_self_getxu:		db "USAGE: self getXuid()",0ah,0
_cstring_0:		db "0",0
_cstring_invalid_slot_i_g:		db "Invalid slot (%i) given, expecting 1 - %i",0ah,0
_cstring_weapon:		db "weapon",0
_cstring_altmode:		db "altmode",0
_cstring_nightvision:		db "nightvision",0
_cstring_unknown_weapon_n:		db "Unknown weapon name ",22h,"%s",22h,".",0ah,0
_cstring_null:		db 0
_cstring_invalid_option_e:		db "Invalid option: expected ",22h,"weapon",22h,", ",22h,"altweapon",22h,", or ",22h,"nightvision",22h,".",0ah,0
_cstring_unknown_perk_s:		db "Unknown perk: %s",0ah,0
_cstring_c_i_i:		db "%c %i %i",0
_cstring_i_is_an_illegal_:		db 27h,"%i",27h," is an illegal rank value.  Must be less than %i.",0ah,0
_cstring_i_is_an_illegal_1:		db 27h,"%i",27h," is an illegal prestige value.  Must be less than %i.",0ah,0
_cstring_usage_player_all:		db "USAGE: <player> allowads( <boolean> )",0ah,0
_cstring_c_i1:		db "%c ",22h,"%i",22h,0
_cstring_unknown_weapon_s:		db "unknown weapon ",27h,"%s",27h,0
_cstring_none:		db "none",0
_cstring_usage_player_set2:		db "USAGE: <player> setspreadoverride( <spread> )",0ah,0
_cstring_setspreadoverrid:		db "setspreadoverride: spread must be < %d",0
_cstring_setspreadoverrid1:		db "setspreadoverride: spread must be > 0",0
_cstring_usage_player_res:		db "USAGE: <player> resetspreadoverride()",0ah,0
_cstring_incorrect_number:		db "Incorrect number of parameters.",0ah,0
_cstring_must_specify_eit:		db "Must specify either ",27h,"smoke",27h," or ",27h,"flash",27h," class to set secondary offhand to.",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_63_00000000:		dd 0x427c0000	; 63
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_9_45000076:		dd 0x41173334	; 9.45
_float_0_00000000:		dd 0x0	; 0
_float_315_00000000:		dd 0x439d8000	; 315
_float_0_02000000:		dd 0x3ca3d70a	; 0.02
_float_250_00000000:		dd 0x437a0000	; 250
_float_45_00000000:		dd 0x42340000	; 45
_float_135_00000000:		dd 0x43070000	; 135
_float_0_30000001:		dd 0x3e99999a	; 0.3
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_15000001:		dd 0x3e19999a	; 0.15
_float_225_00000000:		dd 0x43610000	; 225
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_double_1_00000000:		dq 0x3ff0000000000000	; 1

