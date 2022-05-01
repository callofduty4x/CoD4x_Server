;Imports of g_client_script_cmd_mp:
	extern g_entities
	extern _Z13Scr_GetVectorjPf
	extern _Z15SV_UnlinkEntityP9gentity_s
	extern _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z15Scr_ObjectErrorPKc
	extern _Z2vaPKcz
	extern _Z13Scr_AddVectorPKf
	extern _Z18SetClientViewAngleP9gentity_sPKf
	extern _Z13Scr_GetStringj
	extern _Z14Scr_ParamErrorjPKc
	extern _Z12G_ModelIndexPKc
	extern _Z11G_ModelNamei
	extern _Z18Scr_AddConstStringj
	extern _Z19GScr_GetLocSelIndexPKc
	extern _Z15Scr_GetNumParamv
	extern _Z12Scr_GetFloatj
	extern level
	extern floorf
	extern _Z26Scr_ConstructMessageStringiiPKcPcj
	extern _Z5G_SayP9gentity_sS0_iPKc
	extern _Z11Cmd_Score_fP9gentity_s
	extern _Z23G_GetWeaponIndexForNamePKc
	extern _Z16BG_IsWeaponValidPK13playerState_sj
	extern _Z19G_SelectWeaponIndexii
	extern _Z27Scr_GetConstLowercaseStringj
	extern _Z11Drop_WeaponP9gentity_sihj
	extern _Z14GScr_AddEntityP9gentity_s
	extern _Z10G_FindItemPKci
	extern _Z9Drop_ItemP9gentity_sPK7gitem_sfi
	extern scr_const
	extern _Z10Scr_GetIntj
	extern _Z11Scr_GetTypej
	extern _Z29G_MeansOfDeathFromScriptParami
	extern _Z18Scr_GetConstStringj
	extern _Z31G_GetHitLocationIndexFromStringt
	extern _Z15Vec3NormalizeToPKfPf
	extern player_dmgtimer_maxTime
	extern player_dmgtimer_timePerPoint
	extern _Z8vectoyawPKf
	extern _Z13Scr_AddEntityP9gentity_s
	extern _Z10Scr_AddInti
	extern _Z10Scr_NotifyP9gentity_stj
	extern entityHandlers
	extern _Z18Scr_GetPointerTypej
	extern _Z13Scr_GetEntityj
	extern g_knockback
	extern _Z15BG_GetWeaponDefj
	extern _Z12G_TempEntityPKfi
	extern _Z9DirToBytePKf
	extern _Z9Scr_ErrorPKc
	extern _Z19Scr_PlayerLastStandP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	extern _Z10Com_PrintfiPKcz
	extern _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	extern _Z23GScr_GetScriptMenuIndexPKc
	extern snprintf
	extern _Z24SV_GameSendServerCommandi11svscmd_typePKc
	extern _Z23G_FindConfigstringIndexPKciiiS0_
	extern _Z16BG_ClipForWeaponi
	extern _Z19BG_WeaponIsClipOnlyi
	extern _Z16BG_AmmoForWeaponi
	extern _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	extern _Z21Scr_VerifyWeaponIndexiPKc
	extern _Z13BG_WeaponAmmoPK13playerState_si
	extern _Z19Scr_MakeGameMessageiPKc
	extern _Z11ClientSpawnP9gentity_sPKfS2_
	extern _Z18G_SpawnPlayerClonev
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z17Com_GetServerDObji
	extern _Z11DObjGetTreePK6DObj_s
	extern g_clonePlayerMaxVelocity
	extern _Z26G_GetFreePlayerCorpseIndexv
	extern g_scr_data
	extern level_bgs
	extern memcpy
	extern _Z18XAnimCloneAnimTreePK11XAnimTree_sPS_
	extern _Z16Dvar_IsValidNamePKc
	extern memset
	extern _Z11I_CleanCharc
	extern _Z9I_strncatPciPKc
	extern _Z10I_strncpyzPcPKci
	extern _Z17G_SoundAliasIndexPKc
	extern g_voiceChatTalkingDuration
	extern _Z10SV_GetGuidi
	extern _Z13Scr_AddStringPKc
	extern _Z9I_stricmpPKcS0_
	extern _Z25BG_FindWeaponIndexForNamePKc
	extern _Z22BG_GetPerkIndexForNamePKc
	extern _Z11Scr_AddBooli
	extern _Z16BG_GetNumWeaponsv
	extern bg_lastParsedWeaponIndex
	extern _Z8Add_AmmoP9gentity_sjhii
	extern _Z9Fill_ClipP13playerState_sj
	extern strcmp
	extern _Z19PM_ExitAimDownSightP13playerState_s
	extern _Z12Scr_AddFloatf
	extern _Z18G_GivePlayerWeaponP13playerState_sih
	extern _Z19BG_TakePlayerWeaponP13playerState_sji
	extern _Z13Scr_MakeArrayv
	extern _Z12Scr_AddArrayv
	extern _Z20G_SetEquippedOffHandii

;Exports of g_client_script_cmd_mp:
	global _Z19PlayerCmd_setOrigin12scr_entref_t
	global _Z21PlayerCmd_GetVelocity12scr_entref_t
	global _Z19PlayerCmd_setAngles12scr_entref_t
	global _Z19PlayerCmd_getAngles12scr_entref_t
	global _Z22PlayerCmd_SetViewmodel12scr_entref_t
	global _Z22PlayerCmd_GetViewmodel12scr_entref_t
	global _Z32PlayerCmd_BeginLocationSelection12scr_entref_t
	global _Z30PlayerCmd_EndLocationSelection12scr_entref_t
	global _Z16PlayerCmd_SayAll12scr_entref_t
	global _Z17PlayerCmd_SayTeam12scr_entref_t
	global _Z24PlayerCmd_showScoreboard12scr_entref_t
	global _Z24PlayerCmd_setSpawnWeapon12scr_entref_t
	global _Z18PlayerCmd_dropItem12scr_entref_t
	global _Z28PlayerCmd_finishPlayerDamage12scr_entref_t
	global _Z17PlayerCmd_Suicide12scr_entref_t
	global _Z18PlayerCmd_OpenMenu12scr_entref_t
	global _Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t
	global _Z19PlayerCmd_CloseMenu12scr_entref_t
	global _Z25PlayerCmd_CloseInGameMenu12scr_entref_t
	global _Z24PlayerCmd_FreezeControls12scr_entref_t
	global _Z24PlayerCmd_DisableWeapons12scr_entref_t
	global _Z23PlayerCmd_EnableWeapons12scr_entref_t
	global _Z19PlayerCmd_SetReverb12scr_entref_t
	global _Z26PlayerCmd_DeactivateReverb12scr_entref_t
	global _Z27PlayerCmd_SetChannelVolumes12scr_entref_t
	global _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t
	global _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t
	global _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t
	global _Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t
	global _Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t
	global _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t
	global _Z14iclientprintln12scr_entref_t
	global _Z18iclientprintlnbold12scr_entref_t
	global _Z15PlayerCmd_spawn12scr_entref_t
	global _Z22PlayerCmd_setEnterTime12scr_entref_t
	global _Z21PlayerCmd_ClonePlayer12scr_entref_t
	global _Z23PlayerCmd_SetClientDvar12scr_entref_t
	global _Z24PlayerCmd_SetClientDvars12scr_entref_t
	global _Z21ScrCmd_PlayLocalSound12scr_entref_t
	global _Z21ScrCmd_StopLocalSound12scr_entref_t
	global _Z19PlayerCmd_IsTalking12scr_entref_t
	global _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t
	global _Z17PlayerCmd_GetGuid12scr_entref_t
	global _Z17PlayerCmd_GetXuid12scr_entref_t
	global _Z23PlayerCmd_SetActionSlot12scr_entref_t
	global _Z17PlayerCmd_SetPerk12scr_entref_t
	global _Z17PlayerCmd_HasPerk12scr_entref_t
	global _Z20PlayerCmd_ClearPerks12scr_entref_t
	global _Z19PlayerCmd_UnsetPerk12scr_entref_t
	global _Z22PlayerCmd_UpdateScores12scr_entref_t
	global _Z24PlayerCmd_UpdateDMScores12scr_entref_t
	global _Z17PlayerCmd_SetRank12scr_entref_t
	global _Z16G_InitializeAmmoP9gentity_sihi
	global _Z16Player_GetMethodPPKc
	global _Z18PlayerCmd_AllowADS12scr_entref_t
	global _Z19PlayerCmd_AllowJump12scr_entref_t
	global _Z19PlayerCmd_hasWeapon12scr_entref_t
	global _Z19PlayerCmd_playerADS12scr_entref_t
	global _Z20PlayerCmd_giveWeapon12scr_entref_t
	global _Z20PlayerCmd_isOnGround12scr_entref_t
	global _Z20PlayerCmd_pingPlayer12scr_entref_t
	global _Z20PlayerCmd_takeWeapon12scr_entref_t
	global _Z21PlayerCmd_AllowSprint12scr_entref_t
	global _Z21PlayerCmd_giveMaxAmmo12scr_entref_t
	global _Z23PlayerCmd_giveStartAmmo12scr_entref_t
	global _Z24PlayerCmd_GetWeaponsList12scr_entref_t
	global _Z24PlayerCmd_switchToWeapon12scr_entref_t
	global _Z24PlayerCmd_takeAllWeapons12scr_entref_t
	global _Z25PlayerCmd_switchToOffhand12scr_entref_t
	global _Z26PlayerCmd_adsButtonPressed12scr_entref_t
	global _Z26PlayerCmd_getCurrentWeapon12scr_entref_t
	global _Z26PlayerCmd_useButtonPressed12scr_entref_t
	global _Z27PlayerCmd_SetSpreadOverride12scr_entref_t
	global _Z27PlayerCmd_fragButtonPressed12scr_entref_t
	global _Z27PlayerCmd_getCurrentOffhand12scr_entref_t
	global _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t
	global _Z28PlayerCmd_meleeButtonPressed12scr_entref_t
	global _Z29PlayerCmd_ResetSpreadOverride12scr_entref_t
	global _Z29PlayerCmd_attackButtonPressed12scr_entref_t
	global _Z30PlayerCmd_buttonPressedDEVONLY12scr_entref_t
	global _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t
	global _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t
	global _Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t
	global _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t
	global _Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t
	global _Z7BodyEndP9gentity_s


SECTION .text


;PlayerCmd_setOrigin(scr_entref_t)
_Z19PlayerCmd_setOrigin12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_setOrigin12scr_entref_t_10
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
	jz _Z19PlayerCmd_setOrigin12scr_entref_t_20
_Z19PlayerCmd_setOrigin12scr_entref_t_30:
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	mov [esp], ebx
	call _Z15SV_UnlinkEntityP9gentity_s
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
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
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
	call _Z13SV_LinkEntityP9gentity_s
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z19PlayerCmd_setOrigin12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z19PlayerCmd_setOrigin12scr_entref_t_30
_Z19PlayerCmd_setOrigin12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z19PlayerCmd_setOrigin12scr_entref_t_30


;PlayerCmd_GetVelocity(scr_entref_t)
_Z21PlayerCmd_GetVelocity12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z21PlayerCmd_GetVelocity12scr_entref_t_10
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
	jz _Z21PlayerCmd_GetVelocity12scr_entref_t_20
	mov eax, [ebx+0x15c]
	add eax, 0x28
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddVectorPKf
_Z21PlayerCmd_GetVelocity12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	add eax, 0x28
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddVectorPKf
_Z21PlayerCmd_GetVelocity12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov eax, [ebx+0x15c]
	add eax, 0x28
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddVectorPKf
	nop


;PlayerCmd_setAngles(scr_entref_t)
_Z19PlayerCmd_setAngles12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_setAngles12scr_entref_t_10
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
	jz _Z19PlayerCmd_setAngles12scr_entref_t_20
_Z19PlayerCmd_setAngles12scr_entref_t_40:
	lea ebx, [ebp-0x14]
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z18SetClientViewAngleP9gentity_sPKf
	mov eax, [esi+0x218]
	test eax, eax
	jz _Z19PlayerCmd_setAngles12scr_entref_t_30
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z19PlayerCmd_setAngles12scr_entref_t_30:
	mov dword [esi+0x148], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z19PlayerCmd_setAngles12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z19PlayerCmd_setAngles12scr_entref_t_40
_Z19PlayerCmd_setAngles12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z19PlayerCmd_setAngles12scr_entref_t_40
	nop


;PlayerCmd_getAngles(scr_entref_t)
_Z19PlayerCmd_getAngles12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_getAngles12scr_entref_t_10
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
	jz _Z19PlayerCmd_getAngles12scr_entref_t_20
	mov eax, [ebx+0x15c]
	add eax, 0x108
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddVectorPKf
_Z19PlayerCmd_getAngles12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	add eax, 0x108
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddVectorPKf
_Z19PlayerCmd_getAngles12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov eax, [ebx+0x15c]
	add eax, 0x108
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddVectorPKf
	nop


;PlayerCmd_SetViewmodel(scr_entref_t)
_Z22PlayerCmd_SetViewmodel12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z22PlayerCmd_SetViewmodel12scr_entref_t_10
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
	jz _Z22PlayerCmd_SetViewmodel12scr_entref_t_20
_Z22PlayerCmd_SetViewmodel12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	test eax, eax
	jz _Z22PlayerCmd_SetViewmodel12scr_entref_t_30
	cmp byte [eax], 0x0
	jnz _Z22PlayerCmd_SetViewmodel12scr_entref_t_40
_Z22PlayerCmd_SetViewmodel12scr_entref_t_30:
	mov dword [esp+0x4], _cstring_usage_setviewmod
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
_Z22PlayerCmd_SetViewmodel12scr_entref_t_40:
	mov [esp], ebx
	call _Z12G_ModelIndexPKc
	mov edx, [esi+0x15c]
	mov [edx+0x3000], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z22PlayerCmd_SetViewmodel12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z22PlayerCmd_SetViewmodel12scr_entref_t_50
_Z22PlayerCmd_SetViewmodel12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z22PlayerCmd_SetViewmodel12scr_entref_t_50


;PlayerCmd_GetViewmodel(scr_entref_t)
_Z22PlayerCmd_GetViewmodel12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z22PlayerCmd_GetViewmodel12scr_entref_t_10
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
	jz _Z22PlayerCmd_GetViewmodel12scr_entref_t_20
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x3000]
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z22PlayerCmd_GetViewmodel12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x3000]
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z22PlayerCmd_GetViewmodel12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x3000]
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z18Scr_AddConstStringj


;PlayerCmd_BeginLocationSelection(scr_entref_t)
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_10
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
	jz _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_20
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_130:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z19GScr_GetLocSelIndexPKc
	mov esi, eax
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jbe _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_30
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_100:
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	jae _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_40
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_120:
	mov eax, level
	movss xmm1, dword [eax+0x2e5c]
	ucomiss xmm1, xmm2
	ja _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_50
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_80:
	divss xmm0, dword [_float_1000_00000000]
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_90:
	ucomiss xmm2, xmm0
	ja _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_60
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_70
	movss xmm0, dword [_float_63_00000000]
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_110:
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
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_50:
	ucomiss xmm0, xmm2
	jbe _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_80
	divss xmm0, xmm1
	jmp _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_90
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z19GScr_GetLocSelIndexPKc
	mov esi, eax
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	ja _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_100
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_30:
	movss xmm0, dword [_float_9_45000076]
	jmp _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_110
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_60:
	movaps xmm0, xmm2
	jmp _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_110
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_70:
	mulss xmm0, [_float_63_00000000]
	jmp _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_110
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_40:
	mov dword [esp+0x4], _cstring_radius_of_locati
	mov dword [esp], 0x1
	movss [ebp-0x28], xmm0
	movss [ebp-0x38], xmm2
	call _Z14Scr_ParamErrorjPKc
	movss xmm2, dword [ebp-0x38]
	movss xmm0, dword [ebp-0x28]
	jmp _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_120
_Z32PlayerCmd_BeginLocationSelection12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z32PlayerCmd_BeginLocationSelection12scr_entref_t_130


;PlayerCmd_EndLocationSelection(scr_entref_t)
_Z30PlayerCmd_EndLocationSelection12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z30PlayerCmd_EndLocationSelection12scr_entref_t_10
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
	jz _Z30PlayerCmd_EndLocationSelection12scr_entref_t_20
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5b4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30PlayerCmd_EndLocationSelection12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5b4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30PlayerCmd_EndLocationSelection12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5b4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;PlayerCmd_SayAll(scr_entref_t)
_Z16PlayerCmd_SayAll12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z16PlayerCmd_SayAll12scr_entref_t_10
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
	jz _Z16PlayerCmd_SayAll12scr_entref_t_20
_Z16PlayerCmd_SayAll12scr_entref_t_30:
	call _Z15Scr_GetNumParamv
	mov dword [esp+0x10], 0x3ff
	lea ebx, [ebp-0x408]
	lea edx, [ebp-0x407]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_client_chat_mess
	sub eax, 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z26Scr_ConstructMessageStringiiPKcPcj
	mov byte [ebp-0x408], 0x14
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z5G_SayP9gentity_sS0_iPKc
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
_Z16PlayerCmd_SayAll12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z16PlayerCmd_SayAll12scr_entref_t_30
_Z16PlayerCmd_SayAll12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z16PlayerCmd_SayAll12scr_entref_t_30
	nop


;PlayerCmd_SayTeam(scr_entref_t)
_Z17PlayerCmd_SayTeam12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z17PlayerCmd_SayTeam12scr_entref_t_10
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
	jz _Z17PlayerCmd_SayTeam12scr_entref_t_20
_Z17PlayerCmd_SayTeam12scr_entref_t_30:
	call _Z15Scr_GetNumParamv
	mov dword [esp+0x10], 0x3ff
	lea ebx, [ebp-0x408]
	lea edx, [ebp-0x407]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_client_chat_mess
	sub eax, 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z26Scr_ConstructMessageStringiiPKcPcj
	mov byte [ebp-0x408], 0x14
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z5G_SayP9gentity_sS0_iPKc
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
_Z17PlayerCmd_SayTeam12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z17PlayerCmd_SayTeam12scr_entref_t_30
_Z17PlayerCmd_SayTeam12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z17PlayerCmd_SayTeam12scr_entref_t_30
	nop


;PlayerCmd_showScoreboard(scr_entref_t)
_Z24PlayerCmd_showScoreboard12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z24PlayerCmd_showScoreboard12scr_entref_t_10
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
	jz _Z24PlayerCmd_showScoreboard12scr_entref_t_20
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z11Cmd_Score_fP9gentity_s
_Z24PlayerCmd_showScoreboard12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z11Cmd_Score_fP9gentity_s
_Z24PlayerCmd_showScoreboard12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z11Cmd_Score_fP9gentity_s


;PlayerCmd_setSpawnWeapon(scr_entref_t)
_Z24PlayerCmd_setSpawnWeapon12scr_entref_t:
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
	jnz _Z24PlayerCmd_setSpawnWeapon12scr_entref_t_10
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
	jz _Z24PlayerCmd_setSpawnWeapon12scr_entref_t_20
_Z24PlayerCmd_setSpawnWeapon12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov esi, eax
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call _Z16BG_IsWeaponValidPK13playerState_sj
	test al, al
	jz _Z24PlayerCmd_setSpawnWeapon12scr_entref_t_30
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
	call _Z19G_SelectWeaponIndexii
_Z24PlayerCmd_setSpawnWeapon12scr_entref_t_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24PlayerCmd_setSpawnWeapon12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z24PlayerCmd_setSpawnWeapon12scr_entref_t_40
_Z24PlayerCmd_setSpawnWeapon12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z24PlayerCmd_setSpawnWeapon12scr_entref_t_40


;PlayerCmd_dropItem(scr_entref_t)
_Z18PlayerCmd_dropItem12scr_entref_t:
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
	jnz _Z18PlayerCmd_dropItem12scr_entref_t_10
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
	jz _Z18PlayerCmd_dropItem12scr_entref_t_20
_Z18PlayerCmd_dropItem12scr_entref_t_60:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov esi, eax
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov ebx, eax
	test eax, eax
	jz _Z18PlayerCmd_dropItem12scr_entref_t_30
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jbe _Z18PlayerCmd_dropItem12scr_entref_t_40
	mov dword [esp], 0x1
	call _Z27Scr_GetConstLowercaseStringj
_Z18PlayerCmd_dropItem12scr_entref_t_70:
	mov [esp+0xc], eax
	mov eax, [edi+0x15c]
	movzx eax, byte [ebx+eax+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z11Drop_WeaponP9gentity_sihj
_Z18PlayerCmd_dropItem12scr_entref_t_50:
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z14GScr_AddEntityP9gentity_s
_Z18PlayerCmd_dropItem12scr_entref_t_30:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z10G_FindItemPKci
	test eax, eax
	jz _Z18PlayerCmd_dropItem12scr_entref_t_50
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9Drop_ItemP9gentity_sPK7gitem_sfi
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z14GScr_AddEntityP9gentity_s
_Z18PlayerCmd_dropItem12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z18PlayerCmd_dropItem12scr_entref_t_60
_Z18PlayerCmd_dropItem12scr_entref_t_40:
	mov eax, scr_const
	movzx eax, word [eax+0xac]
	jmp _Z18PlayerCmd_dropItem12scr_entref_t_70
_Z18PlayerCmd_dropItem12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z18PlayerCmd_dropItem12scr_entref_t_60


;PlayerCmd_finishPlayerDamage(scr_entref_t)
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t:
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
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_10
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
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_20
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_240:
	mov eax, [edi+0x15c]
	mov edx, [eax+0x317c]
	test edx, edx
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_30
	mov edx, [eax+0x3180]
	mov eax, level
	cmp edx, [eax+0x1ec]
	jg _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_40
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_30:
	mov dword [esp], 0x2
	call _Z10Scr_GetIntj
	mov [ebp-0x68], eax
	test eax, eax
	jle _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_40
	mov dword [esp], 0x0
	call _Z11Scr_GetTypej
	test eax, eax
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_50
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_270:
	mov eax, g_entities
	add eax, 0x9cb18
	mov [ebp-0x78], eax
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_280:
	mov dword [esp], 0x1
	call _Z11Scr_GetTypej
	test eax, eax
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_60
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_290:
	mov edx, g_entities
	add edx, 0x9cb18
	mov [ebp-0x74], edx
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_300:
	mov dword [esp], 0x3
	call _Z10Scr_GetIntj
	mov esi, eax
	mov dword [esp], 0x4
	call _Z29G_MeansOfDeathFromScriptParami
	mov [ebp-0x64], eax
	mov dword [esp], 0x5
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov [ebp-0x60], eax
	mov dword [esp], 0x6
	call _Z11Scr_GetTypej
	test eax, eax
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_70
	mov dword [ebp-0x6c], 0x0
	mov dword [esp], 0x7
	call _Z11Scr_GetTypej
	test eax, eax
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_80
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_250:
	mov dword [ebp-0x70], 0x0
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_260:
	mov dword [esp], 0x8
	call _Z18Scr_GetConstStringj
	movzx eax, ax
	mov [esp], eax
	call _Z31G_GetHitLocationIndexFromStringt
	mov [ebp-0x5c], eax
	mov dword [esp], 0x9
	call _Z10Scr_GetIntj
	mov [ebp-0x58], eax
	mov eax, [edi+0x15c]
	cmp dword [eax+0x4], 0x7
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_90
	mov eax, [ebp-0x70]
	test eax, eax
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_100
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x70]
	mov [esp], ecx
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_420:
	mov eax, [edi+0x180]
	test al, 0x8
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_110
	and esi, 0x4
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_120
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_110:
	test al, 0x1
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_40
	mov eax, [ebp-0x60]
	test eax, eax
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_130
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_430:
	mov dword [ebp-0x54], 0x0
	mov esi, [edi+0x15c]
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_450:
	mov eax, [ebp-0x68]
	add [esi+0x30ac], eax
	mov eax, [ebp-0x70]
	test eax, eax
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_140
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
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_500:
	test byte [edi+0x180], 0x2
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_150
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_320:
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
	mov eax, [ebp-0x70]
	test eax, eax
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_160
	mov eax, [ebp-0x70]
	mov [esp], eax
	call _Z8vectoyawPKf
	fstp dword [ebp-0x4c]
	mov esi, [edi+0x15c]
	movss xmm0, dword [esi+0x10c]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_170
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_540:
	cvttss2si eax, xmm0
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x4c]
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_180
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_550:
	ucomiss xmm1, [_float_315_00000000]
	jb _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_190
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_380:
	mov dword [esi+0xa8], 0x0
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_410:
	mov esi, [edi+0x15c]
	cvtsi2ss xmm0, dword [esi+0xa0]
	ucomiss xmm0, [ebp-0x50]
	ja _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_200
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_310:
	mov eax, [esi+0xa0]
	mov [esi+0xa4], eax
	mov edx, [ebp-0x68]
	sub [edi+0x1a0], edx
	mov ecx, [ebp-0x74]
	mov [esp], ecx
	call _Z13Scr_AddEntityP9gentity_s
	mov eax, [ebp-0x68]
	mov [esp], eax
	call _Z10Scr_AddInti
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10Scr_NotifyP9gentity_stj
	movzx edx, byte [edi+0x16e]
	mov ebx, entityHandlers
	lea eax, [edx+edx*4]
	mov esi, [ebx+eax*8+0x18]
	test esi, esi
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_210
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_590:
	mov ecx, [edi+0x1a0]
	test ecx, ecx
	jle _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_220
	movzx eax, byte [edi+0x16e]
	lea eax, [eax+eax*4]
	mov edx, [ebx+eax*8+0x14]
	test edx, edx
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_230
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
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_230:
	mov edx, [edi+0x15c]
	mov eax, [edi+0x1a0]
	mov [edx+0x148], eax
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_40:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_240
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_70:
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov dword [esp], 0x6
	call _Z13Scr_GetVectorjPf
	mov [ebp-0x6c], ebx
	mov dword [esp], 0x7
	call _Z11Scr_GetTypej
	test eax, eax
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_250
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_80:
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov dword [esp], 0x7
	call _Z13Scr_GetVectorjPf
	mov [ebp-0x70], ebx
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_260
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z18Scr_GetPointerTypej
	cmp eax, 0x14
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_270
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov [ebp-0x78], eax
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_280
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_60:
	mov dword [esp], 0x1
	call _Z18Scr_GetPointerTypej
	cmp eax, 0x14
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_290
	mov dword [esp], 0x1
	call _Z13Scr_GetEntityj
	mov [ebp-0x74], eax
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_300
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_200:
	cvttss2si eax, [ebp-0x50]
	mov [esi+0xa0], eax
	mov esi, [edi+0x15c]
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_310
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_150:
	mov eax, [edi+0x1a0]
	mov edx, eax
	sub edx, [ebp-0x68]
	sub eax, 0x1
	test edx, edx
	cmovg eax, [ebp-0x68]
	mov [ebp-0x68], eax
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_320
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_120:
	mov esi, [edi+0x15c]
	mov edx, [esi+0xc]
	test dl, 0x1
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_330
	movss xmm1, dword [_float_0_02000000]
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_530:
	cvtsi2ss xmm0, dword [ebp-0x68]
	mulss xmm1, xmm0
	cvttss2si edx, xmm1
	cmp edx, 0x3c
	jle _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_340
	mov edx, 0x3c
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_510:
	test dword [esi+0xb0], 0x300
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_110
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
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_350
	add edx, edx
	cmp edx, 0x31
	jg _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_360
	mov edx, 0x32
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_600:
	mov [esi+0x18], edx
	mov eax, [edi+0x15c]
	or dword [eax+0xc], 0x100
	mov eax, [edi+0x180]
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_110
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_190:
	ucomiss xmm1, [_float_45_00000000]
	jae _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_370
	jnp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_380
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_370:
	ucomiss xmm1, [_float_135_00000000]
	jae _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_390
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_570:
	ucomiss xmm1, [_float_45_00000000]
	jb _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_400
	ucomiss xmm1, [_float_135_00000000]
	jae _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_400
	jp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_400
	mov dword [esi+0xa8], 0x2
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_410
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_100:
	xor eax, eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_420
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_160:
	mov esi, [edi+0x15c]
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_380
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_130:
	mov eax, [ebp-0x60]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x12c]
	test eax, eax
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_430
	mov eax, [ebp-0x64]
	sub eax, 0x1
	cmp eax, 0x1
	jbe _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_440
	cmp dword [ebp-0x64], 0x8
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_440
	xor eax, eax
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_580:
	test eax, eax
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_430
	mov dword [esp+0x4], 0x29
	lea esi, [ebp-0x30]
	mov [esp], esi
	call _Z12G_TempEntityPKfi
	mov [ebp-0x54], eax
	mov edx, [ebp-0x60]
	mov [eax+0xc4], edx
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z9DirToBytePKf
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
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x4e0], 0x1
	sbb eax, eax
	add eax, 0x2b
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z12G_TempEntityPKfi
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
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_450
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_90:
	mov dword [esp], _cstring_trying_to_do_dam
	call _Z9Scr_ErrorPKc
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_40
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_220:
	mov eax, [edi+0x15c]
	mov edx, [eax+0x317c]
	test edx, edx
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_460
	test byte [eax+0x5fc], 0x80
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_460
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
	call _Z19Scr_PlayerLastStandP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_230
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_460:
	mov eax, [ebp-0x54]
	test eax, eax
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_470
	mov ecx, [ebp-0x54]
	or dword [ecx+0xd4], 0x2
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_470:
	mov eax, [edi+0x1a0]
	add eax, 0x3e7
	cmp eax, 0x3e6
	ja _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_480
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_560:
	movzx eax, byte [edi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov edx, [eax+0x18]
	test edx, edx
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_490
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
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_490:
	cmp byte [edi+0x100], 0x0
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_230
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_40
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_20:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_240
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_140:
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
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_500
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_340:
	test edx, edx
	jz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_110
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_510
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_330:
	and dl, 0x2
	jnz _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_520
	movss xmm1, dword [_float_0_30000001]
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_530
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_170:
	jp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_540
	addss xmm0, [_float_360_00000000]
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_540
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_180:
	addss xmm1, [_float_360_00000000]
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_550
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_520:
	movss xmm1, dword [_float_0_15000001]
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_530
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_480:
	mov dword [edi+0x1a0], 0xfffffc19
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_560
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_390:
	ucomiss xmm1, [_float_225_00000000]
	jae _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_570
	jp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_570
	mov dword [esi+0xa8], 0x1
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_410
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_440:
	mov eax, 0x1
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_580
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_210:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_no_die_handler_f
	mov dword [esp], 0x1
	call _Z10Com_PrintfiPKcz
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_590
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_400:
	mov dword [esi+0xa8], 0x3
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_410
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_350:
	mov eax, [edi+0x180]
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_110
_Z28PlayerCmd_finishPlayerDamage12scr_entref_t_360:
	cmp edx, 0xc9
	mov eax, 0xc8
	cmovge edx, eax
	jmp _Z28PlayerCmd_finishPlayerDamage12scr_entref_t_600


;PlayerCmd_Suicide(scr_entref_t)
_Z17PlayerCmd_Suicide12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z17PlayerCmd_Suicide12scr_entref_t_10
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
	jz _Z17PlayerCmd_Suicide12scr_entref_t_20
_Z17PlayerCmd_Suicide12scr_entref_t_30:
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
	call _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z17PlayerCmd_Suicide12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z17PlayerCmd_Suicide12scr_entref_t_30
_Z17PlayerCmd_Suicide12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z17PlayerCmd_Suicide12scr_entref_t_30
	nop


;PlayerCmd_OpenMenu(scr_entref_t)
_Z18PlayerCmd_OpenMenu12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov esi, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z18PlayerCmd_OpenMenu12scr_entref_t_10
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
	jz _Z18PlayerCmd_OpenMenu12scr_entref_t_20
_Z18PlayerCmd_OpenMenu12scr_entref_t_50:
	mov eax, [ebx+0x15c]
	cmp dword [eax+0x2f8c], 0x2
	jz _Z18PlayerCmd_OpenMenu12scr_entref_t_30
_Z18PlayerCmd_OpenMenu12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z10Scr_AddInti
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z18PlayerCmd_OpenMenu12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	cmp dword [eax+0x2f8c], 0x2
	jnz _Z18PlayerCmd_OpenMenu12scr_entref_t_40
_Z18PlayerCmd_OpenMenu12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23GScr_GetScriptMenuIndexPKc
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov dword [esp], 0x1
	call _Z10Scr_AddInti
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z18PlayerCmd_OpenMenu12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z18PlayerCmd_OpenMenu12scr_entref_t_50
	nop


;PlayerCmd_OpenMenuNoMouse(scr_entref_t)
_Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov esi, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_10
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
	jz _Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_20
_Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_50:
	mov eax, [ebx+0x15c]
	cmp dword [eax+0x2f8c], 0x2
	jz _Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_30
_Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z10Scr_AddInti
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	cmp dword [eax+0x2f8c], 0x2
	jnz _Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_40
_Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23GScr_GetScriptMenuIndexPKc
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov dword [esp], 0x1
	call _Z10Scr_AddInti
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t_50
	nop


;PlayerCmd_CloseMenu(scr_entref_t)
_Z19PlayerCmd_CloseMenu12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_CloseMenu12scr_entref_t_10
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
	jz _Z19PlayerCmd_CloseMenu12scr_entref_t_20
_Z19PlayerCmd_CloseMenu12scr_entref_t_30:
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
_Z19PlayerCmd_CloseMenu12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	movzx esi, bx
	jmp _Z19PlayerCmd_CloseMenu12scr_entref_t_30
_Z19PlayerCmd_CloseMenu12scr_entref_t_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z19PlayerCmd_CloseMenu12scr_entref_t_30
	nop


;PlayerCmd_CloseInGameMenu(scr_entref_t)
_Z25PlayerCmd_CloseInGameMenu12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z25PlayerCmd_CloseInGameMenu12scr_entref_t_10
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
	jz _Z25PlayerCmd_CloseInGameMenu12scr_entref_t_20
_Z25PlayerCmd_CloseInGameMenu12scr_entref_t_30:
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z25PlayerCmd_CloseInGameMenu12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	movzx esi, bx
	jmp _Z25PlayerCmd_CloseInGameMenu12scr_entref_t_30
_Z25PlayerCmd_CloseInGameMenu12scr_entref_t_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z25PlayerCmd_CloseInGameMenu12scr_entref_t_30
	nop


;PlayerCmd_FreezeControls(scr_entref_t)
_Z24PlayerCmd_FreezeControls12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z24PlayerCmd_FreezeControls12scr_entref_t_10
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
	jz _Z24PlayerCmd_FreezeControls12scr_entref_t_20
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebx+0x3080], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z24PlayerCmd_FreezeControls12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebx+0x3080], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z24PlayerCmd_FreezeControls12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebx+0x3080], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;PlayerCmd_DisableWeapons(scr_entref_t)
_Z24PlayerCmd_DisableWeapons12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z24PlayerCmd_DisableWeapons12scr_entref_t_10
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
	jz _Z24PlayerCmd_DisableWeapons12scr_entref_t_20
	mov eax, [ebx+0x15c]
	or dword [eax+0x10], 0x80
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z24PlayerCmd_DisableWeapons12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	or dword [eax+0x10], 0x80
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z24PlayerCmd_DisableWeapons12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov eax, [ebx+0x15c]
	or dword [eax+0x10], 0x80
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PlayerCmd_EnableWeapons(scr_entref_t)
_Z23PlayerCmd_EnableWeapons12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z23PlayerCmd_EnableWeapons12scr_entref_t_10
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
	jz _Z23PlayerCmd_EnableWeapons12scr_entref_t_20
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xffffff7f
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23PlayerCmd_EnableWeapons12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xffffff7f
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23PlayerCmd_EnableWeapons12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xffffff7f
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PlayerCmd_SetReverb(scr_entref_t)
_Z19PlayerCmd_SetReverb12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov esi, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_SetReverb12scr_entref_t_10
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
	jz _Z19PlayerCmd_SetReverb12scr_entref_t_20
_Z19PlayerCmd_SetReverb12scr_entref_t_150:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x3
	jz _Z19PlayerCmd_SetReverb12scr_entref_t_30
_Z19PlayerCmd_SetReverb12scr_entref_t_90:
	jbe _Z19PlayerCmd_SetReverb12scr_entref_t_40
	cmp eax, 0x4
	jz _Z19PlayerCmd_SetReverb12scr_entref_t_50
	cmp eax, 0x5
	jnz _Z19PlayerCmd_SetReverb12scr_entref_t_60
	mov dword [esp], 0x4
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x24]
_Z19PlayerCmd_SetReverb12scr_entref_t_130:
	mov dword [esp], 0x3
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x28]
	jmp _Z19PlayerCmd_SetReverb12scr_entref_t_70
_Z19PlayerCmd_SetReverb12scr_entref_t_40:
	cmp eax, 0x2
	jz _Z19PlayerCmd_SetReverb12scr_entref_t_80
_Z19PlayerCmd_SetReverb12scr_entref_t_60:
	mov dword [ebp+0x8], _cstring_usage_player_set
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z19PlayerCmd_SetReverb12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	call _Z15Scr_GetNumParamv
	cmp eax, 0x3
	jnz _Z19PlayerCmd_SetReverb12scr_entref_t_90
_Z19PlayerCmd_SetReverb12scr_entref_t_30:
	pxor xmm0, xmm0
	movss [ebp-0x24], xmm0
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0x28], xmm0
_Z19PlayerCmd_SetReverb12scr_entref_t_70:
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x2c]
	cvtss2sd xmm0, [ebp-0x24]
	movsd [ebp-0x20], xmm0
	cvtss2sd xmm0, [ebp-0x28]
	movsd [ebp-0x18], xmm0
	cvtss2sd xmm0, [ebp-0x2c]
	movsd [ebp-0x10], xmm0
_Z19PlayerCmd_SetReverb12scr_entref_t_140:
	mov dword [esp], 0x1
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0x74]
	jz _Z19PlayerCmd_SetReverb12scr_entref_t_100
	cmp ax, [edx+0x76]
	jz _Z19PlayerCmd_SetReverb12scr_entref_t_110
	mov dword [esp], _cstring_priority_must_be
	call _Z9Scr_ErrorPKc
_Z19PlayerCmd_SetReverb12scr_entref_t_100:
	mov eax, 0x1
_Z19PlayerCmd_SetReverb12scr_entref_t_120:
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
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, si
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z19PlayerCmd_SetReverb12scr_entref_t_110:
	mov eax, 0x2
	jmp _Z19PlayerCmd_SetReverb12scr_entref_t_120
_Z19PlayerCmd_SetReverb12scr_entref_t_50:
	pxor xmm0, xmm0
	movss [ebp-0x24], xmm0
	jmp _Z19PlayerCmd_SetReverb12scr_entref_t_130
_Z19PlayerCmd_SetReverb12scr_entref_t_80:
	pxor xmm0, xmm0
	movsd [ebp-0x20], xmm0
	movsd xmm0, qword [_double_0_50000000]
	movsd [ebp-0x18], xmm0
	movsd xmm0, qword [_double_1_00000000]
	movsd [ebp-0x10], xmm0
	jmp _Z19PlayerCmd_SetReverb12scr_entref_t_140
_Z19PlayerCmd_SetReverb12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z19PlayerCmd_SetReverb12scr_entref_t_150


;PlayerCmd_DeactivateReverb(scr_entref_t)
_Z26PlayerCmd_DeactivateReverb12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z26PlayerCmd_DeactivateReverb12scr_entref_t_10
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
	jz _Z26PlayerCmd_DeactivateReverb12scr_entref_t_20
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_100:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jz _Z26PlayerCmd_DeactivateReverb12scr_entref_t_30
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_50:
	cmp eax, 0x2
	jz _Z26PlayerCmd_DeactivateReverb12scr_entref_t_40
	mov dword [ebp+0x8], _cstring_usage_player_dea
	add esp, 0x34
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jnz _Z26PlayerCmd_DeactivateReverb12scr_entref_t_50
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_30:
	pxor xmm0, xmm0
	movsd [ebp-0x10], xmm0
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_80:
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0x74]
	jz _Z26PlayerCmd_DeactivateReverb12scr_entref_t_60
	cmp ax, [edx+0x76]
	jz _Z26PlayerCmd_DeactivateReverb12scr_entref_t_70
	mov dword [esp], _cstring_priority_must_be
	call _Z9Scr_ErrorPKc
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_60:
	mov eax, 0x1
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_90:
	movsd xmm0, qword [ebp-0x10]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x44
	mov dword [esp], _cstring_c_i_s_g_g_g
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, bx
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_40:
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x14]
	cvtss2sd xmm0, [ebp-0x14]
	movsd [ebp-0x10], xmm0
	jmp _Z26PlayerCmd_DeactivateReverb12scr_entref_t_80
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_70:
	mov eax, 0x2
	jmp _Z26PlayerCmd_DeactivateReverb12scr_entref_t_90
_Z26PlayerCmd_DeactivateReverb12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z26PlayerCmd_DeactivateReverb12scr_entref_t_100
	nop


;PlayerCmd_SetChannelVolumes(scr_entref_t)
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov esi, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_10
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
	jz _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_20
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_110:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x2
	jz _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_30
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_50:
	cmp eax, 0x3
	jz _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_40
	mov dword [ebp+0x8], _cstring_usage_player_set1
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	call _Z15Scr_GetNumParamv
	cmp eax, 0x2
	jnz _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_50
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_30:
	pxor xmm0, xmm0
	movsd [ebp-0x10], xmm0
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_90:
	mov dword [esp], 0x1
	call _Z13Scr_GetStringj
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x7a2
	mov [esp], eax
	call _Z23G_FindConfigstringIndexPKciiiS0_
	mov ebx, eax
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0x78]
	jz _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_60
	cmp ax, [edx+0x7a]
	jz _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_70
	cmp ax, [edx+0x7c]
	jz _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_80
	mov dword [esp], _cstring_priority_must_be1
	call _Z9Scr_ErrorPKc
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_60:
	mov eax, 0x1
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_100:
	movsd xmm0, qword [ebp-0x10]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x45
	mov dword [esp], _cstring_c_i_i_g
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, si
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_40:
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x14]
	cvtss2sd xmm0, [ebp-0x14]
	movsd [ebp-0x10], xmm0
	jmp _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_90
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_80:
	mov eax, 0x3
	jmp _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_100
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_70:
	mov eax, 0x2
	jmp _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_100
_Z27PlayerCmd_SetChannelVolumes12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z27PlayerCmd_SetChannelVolumes12scr_entref_t_110
	nop


;PlayerCmd_DeactivateChannelVolumes(scr_entref_t)
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_10
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
	jz _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_20
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_110:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jz _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_30
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_50:
	cmp eax, 0x2
	jz _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_40
	mov dword [ebp+0x8], _cstring_usage_player_dea1
	add esp, 0x34
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jnz _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_50
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_30:
	pxor xmm0, xmm0
	movsd [ebp-0x10], xmm0
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_90:
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0x78]
	jz _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_60
	cmp ax, [edx+0x7a]
	jz _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_70
	cmp ax, [edx+0x7c]
	jz _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_80
	mov dword [esp], _cstring_priority_must_be1
	call _Z9Scr_ErrorPKc
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_60:
	mov eax, 0x1
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_100:
	movsd xmm0, qword [ebp-0x10]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x46
	mov dword [esp], _cstring_c_i_s_g_g_g
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, bx
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_40:
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x14]
	cvtss2sd xmm0, [ebp-0x14]
	movsd [ebp-0x10], xmm0
	jmp _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_90
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_80:
	mov eax, 0x3
	jmp _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_100
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_70:
	mov eax, 0x2
	jmp _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_100
_Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t_110


;PlayerCmd_SetWeaponAmmoClip(scr_entref_t)
_Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t:
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
	jnz _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_10
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
	jz _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_20
_Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_60:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	mov esi, eax
	mov [esp], ebx
	call _Z23G_GetWeaponIndexForNamePKc
	mov ebx, eax
	test eax, eax
	jnz _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_30
	mov dword [ebp+0x8], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10Scr_AddInti
_Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_30:
	mov [esp], eax
	call _Z16BG_ClipForWeaponi
	mov [ebp-0x1c], eax
	test eax, eax
	jnz _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_40
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_40:
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	test esi, esi
	js _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_50
	mov eax, [eax+0x338]
	cmp esi, eax
	cmovg esi, eax
_Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_70:
	mov eax, [edi+0x15c]
	mov edx, [ebp-0x1c]
	mov [eax+edx*4+0x35c], esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_60
_Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_60
_Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_50:
	xor esi, esi
	jmp _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t_70


;PlayerCmd_SetWeaponAmmoStock(scr_entref_t)
_Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t:
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
	jnz _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_10
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
	jz _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_20
_Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_60:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	mov edi, eax
	mov [esp], ebx
	call _Z23G_GetWeaponIndexForNamePKc
	mov ebx, eax
	mov esi, [esi+0x15c]
	test eax, eax
	jnz _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_30
_Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_30:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x20], eax
	mov [esp], ebx
	call _Z19BG_WeaponIsClipOnlyi
	mov [ebp-0x24], eax
	test eax, eax
	jz _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_40
	mov [esp], ebx
	call _Z16BG_ClipForWeaponi
	mov edx, eax
	test eax, eax
	jz _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_50
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
_Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_60
_Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_40:
	mov [esp], ebx
	call _Z16BG_AmmoForWeaponi
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
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
_Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t_60


;PlayerCmd_GetWeaponAmmoClip(scr_entref_t)
_Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_10
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
	jz _Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_20
_Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	test eax, eax
	jnz _Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_30
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_30:
	mov [esp], eax
	call _Z16BG_ClipForWeaponi
	mov edx, [ebx+0x15c]
	mov eax, [edx+eax*4+0x35c]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_40
_Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t_40


;PlayerCmd_GetWeaponAmmoStock(scr_entref_t)
_Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_10
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
	jz _Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_20
_Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov ebx, eax
	test eax, eax
	jnz _Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_30
	mov dword [ebp+0x8], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z10Scr_AddInti
_Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_30:
	mov [esp], eax
	call _Z19BG_WeaponIsClipOnlyi
	test eax, eax
	jnz _Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_40
	mov [esp], ebx
	call _Z16BG_AmmoForWeaponi
	mov edx, [esi+0x15c]
	mov eax, [edx+eax*4+0x15c]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z10Scr_AddInti
_Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_40:
	mov [esp], ebx
	call _Z16BG_ClipForWeaponi
	mov edx, [esi+0x15c]
	mov eax, [edx+eax*4+0x35c]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z10Scr_AddInti
_Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_50
_Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t_50


;PlayerCmd_AnyAmmoForWeaponModes(scr_entref_t)
_Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t:
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
	jnz _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_10
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
	jz _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_20
_Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov esi, eax
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z21Scr_VerifyWeaponIndexiPKc
	mov [esp+0x4], ebx
	mov eax, [edi+0x15c]
	mov [esp], eax
	call _Z13BG_WeaponAmmoPK13playerState_si
	mov esi, eax
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x540]
	test eax, eax
	jnz _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_30
_Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_60:
	test esi, esi
	jz _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_40
	mov dword [ebp+0x8], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10Scr_AddInti
_Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_40:
	mov dword [ebp+0x8], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10Scr_AddInti
_Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_50
_Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_30:
	mov [esp+0x4], eax
	mov eax, [edi+0x15c]
	mov [esp], eax
	call _Z13BG_WeaponAmmoPK13playerState_si
	add esi, eax
	jmp _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_60
_Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t_50
	nop


;iclientprintln(scr_entref_t)
_Z14iclientprintln12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z14iclientprintln12scr_entref_t_10
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
	jz _Z14iclientprintln12scr_entref_t_20
_Z14iclientprintln12scr_entref_t_30:
	mov dword [esp+0xc], 0x66
	mov dword [esp+0x8], _cstring_c
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19Scr_MakeGameMessageiPKc
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z14iclientprintln12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	movzx esi, bx
	jmp _Z14iclientprintln12scr_entref_t_30
_Z14iclientprintln12scr_entref_t_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z14iclientprintln12scr_entref_t_30
	nop


;iclientprintlnbold(scr_entref_t)
_Z18iclientprintlnbold12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z18iclientprintlnbold12scr_entref_t_10
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
	jz _Z18iclientprintlnbold12scr_entref_t_20
_Z18iclientprintlnbold12scr_entref_t_30:
	mov dword [esp+0xc], 0x67
	mov dword [esp+0x8], _cstring_c
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call snprintf
	mov byte [ebp-0x9], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19Scr_MakeGameMessageiPKc
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z18iclientprintlnbold12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	movzx esi, bx
	jmp _Z18iclientprintlnbold12scr_entref_t_30
_Z18iclientprintlnbold12scr_entref_t_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z18iclientprintlnbold12scr_entref_t_30
	nop


;PlayerCmd_spawn(scr_entref_t)
_Z15PlayerCmd_spawn12scr_entref_t:
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
	jnz _Z15PlayerCmd_spawn12scr_entref_t_10
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
	jz _Z15PlayerCmd_spawn12scr_entref_t_20
_Z15PlayerCmd_spawn12scr_entref_t_30:
	lea esi, [ebp-0x24]
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call _Z13Scr_GetVectorjPf
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z11ClientSpawnP9gentity_sPKfS2_
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PlayerCmd_spawn12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z15PlayerCmd_spawn12scr_entref_t_30
_Z15PlayerCmd_spawn12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z15PlayerCmd_spawn12scr_entref_t_30
	nop


;PlayerCmd_setEnterTime(scr_entref_t)
_Z22PlayerCmd_setEnterTime12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z22PlayerCmd_setEnterTime12scr_entref_t_10
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
	jz _Z22PlayerCmd_setEnterTime12scr_entref_t_20
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebx+0x2fec], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z22PlayerCmd_setEnterTime12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebx+0x2fec], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z22PlayerCmd_setEnterTime12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov ebx, [ebx+0x15c]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebx+0x2fec], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;PlayerCmd_ClonePlayer(scr_entref_t)
_Z21PlayerCmd_ClonePlayer12scr_entref_t:
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
	jnz _Z21PlayerCmd_ClonePlayer12scr_entref_t_10
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
	jz _Z21PlayerCmd_ClonePlayer12scr_entref_t_20
_Z21PlayerCmd_ClonePlayer12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebp-0x28], eax
	mov ebx, [ebp-0x1c]
	mov ebx, [ebx+0x15c]
	mov [ebp-0x24], ebx
	call _Z18G_SpawnPlayerClonev
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
	call _Z11G_SetOriginP9gentity_sPKf
	mov eax, [ebp-0x1c]
	add eax, 0x148
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
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
	call _Z17Com_GetServerDObji
	mov [esp], eax
	call _Z11DObjGetTreePK6DObj_s
	mov [ebp-0x20], eax
	mov edx, edi
	mov ecx, 0x2
	mov ebx, g_clonePlayerMaxVelocity
_Z21PlayerCmd_ClonePlayer12scr_entref_t_40:
	mov eax, [ebx]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [edx+0x24]
	ucomiss xmm0, xmm1
	jbe _Z21PlayerCmd_ClonePlayer12scr_entref_t_30
	movss [edx+0x24], xmm1
_Z21PlayerCmd_ClonePlayer12scr_entref_t_30:
	add edx, 0x4
	sub ecx, 0x1
	jnz _Z21PlayerCmd_ClonePlayer12scr_entref_t_40
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [edi+0x1b4], eax
	call _Z26G_GetFreePlayerCorpseIndexv
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
	call _Z18XAnimCloneAnimTreePK11XAnimTree_sPS_
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
	call _Z13SV_LinkEntityP9gentity_s
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
	jmp _Z14GScr_AddEntityP9gentity_s
_Z21PlayerCmd_ClonePlayer12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	mov dword [ebp-0x1c], 0x0
	jmp _Z21PlayerCmd_ClonePlayer12scr_entref_t_50
_Z21PlayerCmd_ClonePlayer12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z21PlayerCmd_ClonePlayer12scr_entref_t_50
	nop


;PlayerCmd_SetClientDvar(scr_entref_t)
_Z23PlayerCmd_SetClientDvar12scr_entref_t:
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
	jnz _Z23PlayerCmd_SetClientDvar12scr_entref_t_10
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
	jz _Z23PlayerCmd_SetClientDvar12scr_entref_t_20
_Z23PlayerCmd_SetClientDvar12scr_entref_t_100:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [ebp-0x820], eax
	mov dword [esp], 0x1
	call _Z11Scr_GetTypej
	cmp eax, 0x3
	jz _Z23PlayerCmd_SetClientDvar12scr_entref_t_30
_Z23PlayerCmd_SetClientDvar12scr_entref_t_80:
	mov dword [esp], 0x1
	call _Z13Scr_GetStringj
	mov edi, eax
_Z23PlayerCmd_SetClientDvar12scr_entref_t_90:
	mov eax, [ebp-0x820]
	mov [esp], eax
	call _Z16Dvar_IsValidNamePKc
	test al, al
	jnz _Z23PlayerCmd_SetClientDvar12scr_entref_t_40
	mov eax, [ebp-0x820]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_dvar_s_has_an_in
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23PlayerCmd_SetClientDvar12scr_entref_t_40:
	lea esi, [ebp-0x818]
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov ebx, 0x1
	jmp _Z23PlayerCmd_SetClientDvar12scr_entref_t_50
_Z23PlayerCmd_SetClientDvar12scr_entref_t_70:
	movsx eax, al
	mov [esp], eax
	call _Z11I_CleanCharc
	mov edx, 0x27
	cmp al, 0x22
	cmovnz edx, eax
	mov [ebx+esi-0x1], dl
	add ebx, 0x1
	cmp ebx, 0x400
	jz _Z23PlayerCmd_SetClientDvar12scr_entref_t_60
_Z23PlayerCmd_SetClientDvar12scr_entref_t_50:
	movzx eax, byte [edi+ebx-0x1]
	test al, al
	jnz _Z23PlayerCmd_SetClientDvar12scr_entref_t_70
_Z23PlayerCmd_SetClientDvar12scr_entref_t_60:
	mov [esp+0xc], esi
	mov eax, [ebp-0x820]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x76
	mov dword [esp], _cstring_c_s_s
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, word [ebp-0x81a]
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23PlayerCmd_SetClientDvar12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [ebp-0x820], eax
	mov dword [esp], 0x1
	call _Z11Scr_GetTypej
	cmp eax, 0x3
	jnz _Z23PlayerCmd_SetClientDvar12scr_entref_t_80
_Z23PlayerCmd_SetClientDvar12scr_entref_t_30:
	call _Z15Scr_GetNumParamv
	mov dword [esp+0x10], 0x400
	lea ebx, [ebp-0x418]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_client_dvar_valu
	sub eax, 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z26Scr_ConstructMessageStringiiPKcPcj
	mov edi, ebx
	jmp _Z23PlayerCmd_SetClientDvar12scr_entref_t_90
_Z23PlayerCmd_SetClientDvar12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z23PlayerCmd_SetClientDvar12scr_entref_t_100


;PlayerCmd_SetClientDvars(scr_entref_t)
_Z24PlayerCmd_SetClientDvars12scr_entref_t:
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
	jnz _Z24PlayerCmd_SetClientDvars12scr_entref_t_10
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
	jz _Z24PlayerCmd_SetClientDvars12scr_entref_t_20
_Z24PlayerCmd_SetClientDvars12scr_entref_t_100:
	call _Z15Scr_GetNumParamv
	test al, 0x1
	jnz _Z24PlayerCmd_SetClientDvars12scr_entref_t_30
_Z24PlayerCmd_SetClientDvars12scr_entref_t_90:
	mov byte [ebp-0x418], 0x76
	mov byte [ebp-0x417], 0x0
	mov dword [ebp-0x820], 0x0
	lea edi, [ebp-0x418]
	jmp _Z24PlayerCmd_SetClientDvars12scr_entref_t_40
_Z24PlayerCmd_SetClientDvars12scr_entref_t_70:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call _Z9I_strncatPciPKc
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring__
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call _Z9I_strncatPciPKc
	lea eax, [ebp-0x818]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call _Z9I_strncatPciPKc
	add dword [ebp-0x820], 0x2
_Z24PlayerCmd_SetClientDvars12scr_entref_t_40:
	call _Z15Scr_GetNumParamv
	cmp [ebp-0x820], eax
	jae _Z24PlayerCmd_SetClientDvars12scr_entref_t_50
	mov eax, [ebp-0x820]
	mov [esp], eax
	call _Z13Scr_GetStringj
	mov esi, eax
	mov eax, [ebp-0x820]
	add eax, 0x1
	mov [esp], eax
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], esi
	call _Z16Dvar_IsValidNamePKc
	test al, al
	jz _Z24PlayerCmd_SetClientDvars12scr_entref_t_60
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	lea eax, [ebp-0x818]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	movzx eax, byte [ebp-0x818]
	test al, al
	jz _Z24PlayerCmd_SetClientDvars12scr_entref_t_70
	lea ebx, [ebp-0x817]
_Z24PlayerCmd_SetClientDvars12scr_entref_t_80:
	movsx eax, al
	mov [esp], eax
	call _Z11I_CleanCharc
	mov edx, 0x27
	cmp al, 0x22
	cmovnz edx, eax
	mov [ebx-0x1], dl
	movzx eax, byte [ebx]
	add ebx, 0x1
	test al, al
	jnz _Z24PlayerCmd_SetClientDvars12scr_entref_t_80
	jmp _Z24PlayerCmd_SetClientDvars12scr_entref_t_70
_Z24PlayerCmd_SetClientDvars12scr_entref_t_50:
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	movzx eax, word [ebp-0x81a]
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24PlayerCmd_SetClientDvars12scr_entref_t_60:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_dvar_s_has_an_in
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24PlayerCmd_SetClientDvars12scr_entref_t_30:
	mov dword [esp], _cstring_not_enough_param
	call _Z9Scr_ErrorPKc
	jmp _Z24PlayerCmd_SetClientDvars12scr_entref_t_90
_Z24PlayerCmd_SetClientDvars12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	jmp _Z24PlayerCmd_SetClientDvars12scr_entref_t_100
_Z24PlayerCmd_SetClientDvars12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z24PlayerCmd_SetClientDvars12scr_entref_t_100
	nop


;ScrCmd_PlayLocalSound(scr_entref_t)
_Z21ScrCmd_PlayLocalSound12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z21ScrCmd_PlayLocalSound12scr_entref_t_10
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
	jz _Z21ScrCmd_PlayLocalSound12scr_entref_t_20
_Z21ScrCmd_PlayLocalSound12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z17G_SoundAliasIndexPKc
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z21ScrCmd_PlayLocalSound12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	movzx esi, bx
	jmp _Z21ScrCmd_PlayLocalSound12scr_entref_t_30
_Z21ScrCmd_PlayLocalSound12scr_entref_t_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z21ScrCmd_PlayLocalSound12scr_entref_t_30
	nop


;ScrCmd_StopLocalSound(scr_entref_t)
_Z21ScrCmd_StopLocalSound12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z21ScrCmd_StopLocalSound12scr_entref_t_10
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
	jz _Z21ScrCmd_StopLocalSound12scr_entref_t_20
_Z21ScrCmd_StopLocalSound12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z17G_SoundAliasIndexPKc
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z21ScrCmd_StopLocalSound12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	movzx esi, bx
	jmp _Z21ScrCmd_StopLocalSound12scr_entref_t_30
_Z21ScrCmd_StopLocalSound12scr_entref_t_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z21ScrCmd_StopLocalSound12scr_entref_t_30
	nop


;PlayerCmd_IsTalking(scr_entref_t)
_Z19PlayerCmd_IsTalking12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_IsTalking12scr_entref_t_10
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
	jz _Z19PlayerCmd_IsTalking12scr_entref_t_20
_Z19PlayerCmd_IsTalking12scr_entref_t_50:
	mov edx, [ebx+0x15c]
	mov eax, level
	mov eax, [eax+0x1ec]
	sub eax, [edx+0x30d4]
	mov edx, eax
	js _Z19PlayerCmd_IsTalking12scr_entref_t_30
	mov eax, g_voiceChatTalkingDuration
	mov eax, [eax]
	cmp edx, [eax+0xc]
	jl _Z19PlayerCmd_IsTalking12scr_entref_t_40
_Z19PlayerCmd_IsTalking12scr_entref_t_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z19PlayerCmd_IsTalking12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z19PlayerCmd_IsTalking12scr_entref_t_50
_Z19PlayerCmd_IsTalking12scr_entref_t_40:
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z19PlayerCmd_IsTalking12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z19PlayerCmd_IsTalking12scr_entref_t_50


;PlayerCmd_AllowSpectateTeam(scr_entref_t)
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_10
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
	jz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_20
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_110:
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0xe]
	jz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_30
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_80:
	cmp ax, [edx+0xc]
	jz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_40
	cmp ax, [edx+0x58]
	jz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_50
	cmp ax, [edx+0x12a]
	jz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_60
	mov dword [esp+0x4], _cstring_team_must_be_axi
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	xor ebx, ebx
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	test eax, eax
	jnz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_70
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_90:
	mov eax, [esi+0x15c]
	or [eax+0x3004], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0xe]
	jnz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_80
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_30:
	mov ebx, 0x2
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_100:
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	test eax, eax
	jz _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_90
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_70:
	mov eax, [esi+0x15c]
	not ebx
	and [eax+0x3004], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_40:
	mov ebx, 0x4
	jmp _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_100
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_60:
	mov ebx, 0x10
	jmp _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_100
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_50:
	mov ebx, 0x1
	jmp _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_100
_Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t_110


;PlayerCmd_GetGuid(scr_entref_t)
_Z17PlayerCmd_GetGuid12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z17PlayerCmd_GetGuid12scr_entref_t_10
	movzx ebx, bx
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ebx
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz _Z17PlayerCmd_GetGuid12scr_entref_t_20
_Z17PlayerCmd_GetGuid12scr_entref_t_40:
	call _Z15Scr_GetNumParamv
	test eax, eax
	jz _Z17PlayerCmd_GetGuid12scr_entref_t_30
	mov dword [esp], _cstring_usage_self_getgu
	call _Z9Scr_ErrorPKc
_Z17PlayerCmd_GetGuid12scr_entref_t_30:
	mov [esp], ebx
	call _Z10SV_GetGuidi
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddStringPKc
_Z17PlayerCmd_GetGuid12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	movzx ebx, bx
	jmp _Z17PlayerCmd_GetGuid12scr_entref_t_40
_Z17PlayerCmd_GetGuid12scr_entref_t_20:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z17PlayerCmd_GetGuid12scr_entref_t_40


;PlayerCmd_GetXuid(scr_entref_t)
_Z17PlayerCmd_GetXuid12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z17PlayerCmd_GetXuid12scr_entref_t_10
	movzx ecx, dx
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	mov eax, [edx+eax+0x15c]
	test eax, eax
	jz _Z17PlayerCmd_GetXuid12scr_entref_t_20
_Z17PlayerCmd_GetXuid12scr_entref_t_40:
	call _Z15Scr_GetNumParamv
	test eax, eax
	jz _Z17PlayerCmd_GetXuid12scr_entref_t_30
	mov dword [esp], _cstring_usage_self_getxu
	call _Z9Scr_ErrorPKc
_Z17PlayerCmd_GetXuid12scr_entref_t_30:
	mov dword [ebp+0x8], _cstring_0
	leave
	jmp _Z13Scr_AddStringPKc
_Z17PlayerCmd_GetXuid12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	jmp _Z17PlayerCmd_GetXuid12scr_entref_t_40
_Z17PlayerCmd_GetXuid12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z17PlayerCmd_GetXuid12scr_entref_t_40


;PlayerCmd_SetActionSlot(scr_entref_t)
_Z23PlayerCmd_SetActionSlot12scr_entref_t:
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
	jnz _Z23PlayerCmd_SetActionSlot12scr_entref_t_10
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
	jz _Z23PlayerCmd_SetActionSlot12scr_entref_t_20
_Z23PlayerCmd_SetActionSlot12scr_entref_t_70:
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	lea edi, [eax-0x1]
	cmp edi, 0x3
	jbe _Z23PlayerCmd_SetActionSlot12scr_entref_t_30
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], _cstring_invalid_slot_i_g
	call _Z2vaPKcz
	mov [ebp+0x8], eax
_Z23PlayerCmd_SetActionSlot12scr_entref_t_110:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z23PlayerCmd_SetActionSlot12scr_entref_t_30:
	mov dword [esp], 0x1
	call _Z13Scr_GetStringj
	mov esi, eax
	mov dword [esp+0x4], _cstring_weapon
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23PlayerCmd_SetActionSlot12scr_entref_t_40
	mov dword [esp+0x4], _cstring_altmode
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23PlayerCmd_SetActionSlot12scr_entref_t_50
	mov eax, [ebx+0x15c]
	mov dword [eax+edi*4+0x600], 0x2
_Z23PlayerCmd_SetActionSlot12scr_entref_t_90:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23PlayerCmd_SetActionSlot12scr_entref_t_40:
	mov dword [esp], 0x2
	call _Z13Scr_GetStringj
	mov esi, eax
	mov [esp], eax
	call _Z25BG_FindWeaponIndexForNamePKc
	mov edx, eax
	test eax, eax
	jz _Z23PlayerCmd_SetActionSlot12scr_entref_t_60
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
_Z23PlayerCmd_SetActionSlot12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z23PlayerCmd_SetActionSlot12scr_entref_t_70
_Z23PlayerCmd_SetActionSlot12scr_entref_t_50:
	mov dword [esp+0x4], _cstring_nightvision
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23PlayerCmd_SetActionSlot12scr_entref_t_80
	mov eax, [ebx+0x15c]
	mov dword [eax+edi*4+0x600], 0x3
	jmp _Z23PlayerCmd_SetActionSlot12scr_entref_t_90
_Z23PlayerCmd_SetActionSlot12scr_entref_t_60:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_unknown_weapon_n
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z14Scr_ParamErrorjPKc
	jmp _Z23PlayerCmd_SetActionSlot12scr_entref_t_90
_Z23PlayerCmd_SetActionSlot12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z23PlayerCmd_SetActionSlot12scr_entref_t_70
_Z23PlayerCmd_SetActionSlot12scr_entref_t_80:
	mov dword [esp+0x4], _cstring_null
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23PlayerCmd_SetActionSlot12scr_entref_t_100
	mov eax, [ebx+0x15c]
	mov dword [eax+edi*4+0x600], 0x0
	jmp _Z23PlayerCmd_SetActionSlot12scr_entref_t_90
_Z23PlayerCmd_SetActionSlot12scr_entref_t_100:
	mov dword [ebp+0x8], _cstring_invalid_option_e
	jmp _Z23PlayerCmd_SetActionSlot12scr_entref_t_110


;PlayerCmd_SetPerk(scr_entref_t)
_Z17PlayerCmd_SetPerk12scr_entref_t:
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
	jnz _Z17PlayerCmd_SetPerk12scr_entref_t_10
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
	jz _Z17PlayerCmd_SetPerk12scr_entref_t_20
_Z17PlayerCmd_SetPerk12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z22BG_GetPerkIndexForNamePKc
	mov edi, eax
	cmp eax, 0x14
	jz _Z17PlayerCmd_SetPerk12scr_entref_t_30
_Z17PlayerCmd_SetPerk12scr_entref_t_40:
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
_Z17PlayerCmd_SetPerk12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z22BG_GetPerkIndexForNamePKc
	mov edi, eax
	cmp eax, 0x14
	jnz _Z17PlayerCmd_SetPerk12scr_entref_t_40
_Z17PlayerCmd_SetPerk12scr_entref_t_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_perk_s
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z17PlayerCmd_SetPerk12scr_entref_t_40
_Z17PlayerCmd_SetPerk12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z17PlayerCmd_SetPerk12scr_entref_t_50
	nop


;PlayerCmd_HasPerk(scr_entref_t)
_Z17PlayerCmd_HasPerk12scr_entref_t:
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
	jnz _Z17PlayerCmd_HasPerk12scr_entref_t_10
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
	jz _Z17PlayerCmd_HasPerk12scr_entref_t_20
_Z17PlayerCmd_HasPerk12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z22BG_GetPerkIndexForNamePKc
	mov edi, eax
	cmp eax, 0x14
	jz _Z17PlayerCmd_HasPerk12scr_entref_t_30
_Z17PlayerCmd_HasPerk12scr_entref_t_40:
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
	jmp _Z11Scr_AddBooli
_Z17PlayerCmd_HasPerk12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z22BG_GetPerkIndexForNamePKc
	mov edi, eax
	cmp eax, 0x14
	jnz _Z17PlayerCmd_HasPerk12scr_entref_t_40
_Z17PlayerCmd_HasPerk12scr_entref_t_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_perk_s
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
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
	jmp _Z11Scr_AddBooli
_Z17PlayerCmd_HasPerk12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z17PlayerCmd_HasPerk12scr_entref_t_50


;PlayerCmd_ClearPerks(scr_entref_t)
_Z20PlayerCmd_ClearPerks12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z20PlayerCmd_ClearPerks12scr_entref_t_10
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
	jz _Z20PlayerCmd_ClearPerks12scr_entref_t_20
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5fc], 0x0
	mov eax, [ebx+0x15c]
	mov dword [eax+0x3064], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20PlayerCmd_ClearPerks12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	mov dword [eax+0x5fc], 0x0
	mov eax, [ebx+0x15c]
	mov dword [eax+0x3064], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20PlayerCmd_ClearPerks12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
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
_Z19PlayerCmd_UnsetPerk12scr_entref_t:
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
	jnz _Z19PlayerCmd_UnsetPerk12scr_entref_t_10
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
	jz _Z19PlayerCmd_UnsetPerk12scr_entref_t_20
_Z19PlayerCmd_UnsetPerk12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z22BG_GetPerkIndexForNamePKc
	mov edi, eax
	cmp eax, 0x14
	jz _Z19PlayerCmd_UnsetPerk12scr_entref_t_30
_Z19PlayerCmd_UnsetPerk12scr_entref_t_40:
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
_Z19PlayerCmd_UnsetPerk12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z22BG_GetPerkIndexForNamePKc
	mov edi, eax
	cmp eax, 0x14
	jnz _Z19PlayerCmd_UnsetPerk12scr_entref_t_40
_Z19PlayerCmd_UnsetPerk12scr_entref_t_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_perk_s
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z19PlayerCmd_UnsetPerk12scr_entref_t_40
_Z19PlayerCmd_UnsetPerk12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z19PlayerCmd_UnsetPerk12scr_entref_t_50
	nop


;PlayerCmd_UpdateScores(scr_entref_t)
_Z22PlayerCmd_UpdateScores12scr_entref_t:
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
	jnz _Z22PlayerCmd_UpdateScores12scr_entref_t_10
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
	jz _Z22PlayerCmd_UpdateScores12scr_entref_t_20
_Z22PlayerCmd_UpdateScores12scr_entref_t_40:
	mov esi, ebx
_Z22PlayerCmd_UpdateScores12scr_entref_t_30:
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PlayerCmd_UpdateScores12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z22PlayerCmd_UpdateScores12scr_entref_t_30
_Z22PlayerCmd_UpdateScores12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z22PlayerCmd_UpdateScores12scr_entref_t_40
	nop


;PlayerCmd_UpdateDMScores(scr_entref_t)
_Z24PlayerCmd_UpdateDMScores12scr_entref_t:
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
	jnz _Z24PlayerCmd_UpdateDMScores12scr_entref_t_10
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
	jz _Z24PlayerCmd_UpdateDMScores12scr_entref_t_20
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_90:
	mov eax, ebx
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_70:
	sub eax, esi
	sar eax, 0x2
	imul esi, eax, 0x2c0685b5
	mov eax, level
	mov ebx, [eax+0x21c]
	test ebx, ebx
	jle _Z24PlayerCmd_UpdateDMScores12scr_entref_t_30
	mov edx, eax
	mov eax, [eax+0x220]
	cmp esi, eax
	jz _Z24PlayerCmd_UpdateDMScores12scr_entref_t_40
	mov ebx, eax
	jmp _Z24PlayerCmd_UpdateDMScores12scr_entref_t_50
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_30:
	mov ebx, 0xffffffff
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_50:
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	test ebx, ebx
	js _Z24PlayerCmd_UpdateDMScores12scr_entref_t_60
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_60:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor eax, eax
	mov esi, g_entities
	jmp _Z24PlayerCmd_UpdateDMScores12scr_entref_t_70
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_40:
	mov eax, edx
	xor edx, edx
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_80:
	add edx, 0x1
	cmp ebx, edx
	jz _Z24PlayerCmd_UpdateDMScores12scr_entref_t_30
	mov ecx, [eax+0x224]
	add eax, 0x4
	cmp esi, ecx
	jz _Z24PlayerCmd_UpdateDMScores12scr_entref_t_80
	mov ebx, ecx
	jmp _Z24PlayerCmd_UpdateDMScores12scr_entref_t_50
_Z24PlayerCmd_UpdateDMScores12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z24PlayerCmd_UpdateDMScores12scr_entref_t_90
	nop


;PlayerCmd_SetRank(scr_entref_t)
_Z17PlayerCmd_SetRank12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z17PlayerCmd_SetRank12scr_entref_t_10
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
	jz _Z17PlayerCmd_SetRank12scr_entref_t_20
_Z17PlayerCmd_SetRank12scr_entref_t_60:
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov edx, eax
	cmp eax, 0xff
	jbe _Z17PlayerCmd_SetRank12scr_entref_t_30
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_is_an_illegal_
	call _Z2vaPKcz
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z17PlayerCmd_SetRank12scr_entref_t_30:
	mov eax, [ebx+0x15c]
	mov [eax+0x305c], edx
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jbe _Z17PlayerCmd_SetRank12scr_entref_t_40
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	mov edx, eax
	cmp eax, 0xff
	ja _Z17PlayerCmd_SetRank12scr_entref_t_50
	mov eax, [ebx+0x15c]
	mov [eax+0x3060], edx
_Z17PlayerCmd_SetRank12scr_entref_t_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17PlayerCmd_SetRank12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z17PlayerCmd_SetRank12scr_entref_t_60
_Z17PlayerCmd_SetRank12scr_entref_t_50:
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_is_an_illegal_1
	call _Z2vaPKcz
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z17PlayerCmd_SetRank12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z17PlayerCmd_SetRank12scr_entref_t_60
	nop


;G_InitializeAmmo(gentity_s*, int, unsigned char, int)
_Z16G_InitializeAmmoP9gentity_sihi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x28], eax
	mov [ebp-0x2c], edx
	mov [ebp-0x2d], cl
	call _Z16BG_GetNumWeaponsv
	mov [ebp-0x24], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x20], eax
	mov edx, [ebp-0x2c]
	mov [ebp-0x1c], edx
	mov ecx, [ebp-0x28]
	mov ecx, [ecx+0x15c]
	mov [ebp-0x34], ecx
	mov edx, eax
_Z16G_InitializeAmmoP9gentity_sihi_60:
	mov eax, [edx+0x328]
	mov edi, [ecx+eax*4+0x15c]
	xor esi, esi
	jmp _Z16G_InitializeAmmoP9gentity_sihi_10
_Z16G_InitializeAmmoP9gentity_sihi_30:
	add esi, 0x1
	mov eax, bg_lastParsedWeaponIndex
	cmp [eax], esi
	jb _Z16G_InitializeAmmoP9gentity_sihi_20
_Z16G_InitializeAmmoP9gentity_sihi_10:
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	mov eax, [eax+0x328]
	mov edx, [ebp-0x20]
	cmp eax, [edx+0x328]
	jnz _Z16G_InitializeAmmoP9gentity_sihi_30
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x34]
	test [edx+eax*4+0x55c], ecx
	jz _Z16G_InitializeAmmoP9gentity_sihi_30
	cmp [ebp-0x20], ebx
	jz _Z16G_InitializeAmmoP9gentity_sihi_30
	mov edx, [ebx+0x330]
	mov eax, [ebx+0x320]
	mov ecx, [ebp-0x34]
	sub eax, [ecx+edx*4+0x35c]
	sub edi, eax
	add esi, 0x1
	mov eax, bg_lastParsedWeaponIndex
	cmp [eax], esi
	jae _Z16G_InitializeAmmoP9gentity_sihi_10
_Z16G_InitializeAmmoP9gentity_sihi_20:
	test edi, edi
	mov eax, 0x0
	cmovs edi, eax
	mov ecx, [ebp-0x20]
	mov edx, [ecx+0x320]
	sub edx, edi
	test edx, edx
	jle _Z16G_InitializeAmmoP9gentity_sihi_40
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
	call _Z8Add_AmmoP9gentity_sjhii
_Z16G_InitializeAmmoP9gentity_sihi_70:
	mov ecx, [ebp-0x20]
	mov ecx, [ecx+0x540]
	mov [ebp-0x1c], ecx
	mov [esp], ecx
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x20], eax
	sub dword [ebp-0x24], 0x1
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz _Z16G_InitializeAmmoP9gentity_sihi_50
_Z16G_InitializeAmmoP9gentity_sihi_80:
	mov eax, [ebp-0x1c]
	cmp [ebp-0x2c], eax
	jz _Z16G_InitializeAmmoP9gentity_sihi_50
	mov edx, [ebp-0x24]
	test edx, edx
	js _Z16G_InitializeAmmoP9gentity_sihi_50
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
	jz _Z16G_InitializeAmmoP9gentity_sihi_50
	mov edx, [ebp-0x20]
	mov ecx, [ebp-0x34]
	jmp _Z16G_InitializeAmmoP9gentity_sihi_60
_Z16G_InitializeAmmoP9gentity_sihi_40:
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jnz _Z16G_InitializeAmmoP9gentity_sihi_70
	mov ecx, [ebp-0x1c]
	mov [esp+0x4], ecx
	mov edx, [ebp-0x28]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z9Fill_ClipP13playerState_sj
	mov ecx, [ebp-0x20]
	mov ecx, [ecx+0x540]
	mov [ebp-0x1c], ecx
	mov [esp], ecx
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x20], eax
	sub dword [ebp-0x24], 0x1
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz _Z16G_InitializeAmmoP9gentity_sihi_80
_Z16G_InitializeAmmoP9gentity_sihi_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Player_GetMethod(char const**)
_Z16Player_GetMethodPPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	xor esi, esi
	mov ebx, methods
	xor edi, edi
	mov edx, eax
	jmp _Z16Player_GetMethodPPKc_10
_Z16Player_GetMethodPPKc_30:
	add esi, 0x1
	add edi, 0xc
	add ebx, 0xc
	cmp esi, 0x53
	jz _Z16Player_GetMethodPPKc_20
	mov edx, [ebp-0x1c]
_Z16Player_GetMethodPPKc_10:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz _Z16Player_GetMethodPPKc_30
	mov eax, [edi+methods]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [edi+methods+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Player_GetMethodPPKc_20:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PlayerCmd_AllowADS(scr_entref_t)
_Z18PlayerCmd_AllowADS12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z18PlayerCmd_AllowADS12scr_entref_t_10
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
	jz _Z18PlayerCmd_AllowADS12scr_entref_t_20
_Z18PlayerCmd_AllowADS12scr_entref_t_60:
	call _Z15Scr_GetNumParamv
	sub eax, 0x1
	jz _Z18PlayerCmd_AllowADS12scr_entref_t_30
_Z18PlayerCmd_AllowADS12scr_entref_t_40:
	mov dword [ebp+0x8], _cstring_usage_player_all
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z18PlayerCmd_AllowADS12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	call _Z15Scr_GetNumParamv
	sub eax, 0x1
	jnz _Z18PlayerCmd_AllowADS12scr_entref_t_40
_Z18PlayerCmd_AllowADS12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	test eax, eax
	jz _Z18PlayerCmd_AllowADS12scr_entref_t_50
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xffffffdf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18PlayerCmd_AllowADS12scr_entref_t_50:
	mov eax, [ebx+0x15c]
	or dword [eax+0x10], 0x20
	mov eax, [ebx+0x15c]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z19PM_ExitAimDownSightP13playerState_s
_Z18PlayerCmd_AllowADS12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z18PlayerCmd_AllowADS12scr_entref_t_60


;PlayerCmd_AllowJump(scr_entref_t)
_Z19PlayerCmd_AllowJump12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_AllowJump12scr_entref_t_10
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
	jz _Z19PlayerCmd_AllowJump12scr_entref_t_20
_Z19PlayerCmd_AllowJump12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	test eax, eax
	jz _Z19PlayerCmd_AllowJump12scr_entref_t_30
	mov eax, [ebx+0x15c]
	and dword [eax+0xc], 0xfff7ffff
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19PlayerCmd_AllowJump12scr_entref_t_30:
	mov eax, [ebx+0x15c]
	or dword [eax+0xc], 0x80000
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19PlayerCmd_AllowJump12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z19PlayerCmd_AllowJump12scr_entref_t_40
_Z19PlayerCmd_AllowJump12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z19PlayerCmd_AllowJump12scr_entref_t_40
	nop


;PlayerCmd_hasWeapon(scr_entref_t)
_Z19PlayerCmd_hasWeapon12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_hasWeapon12scr_entref_t_10
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
	jz _Z19PlayerCmd_hasWeapon12scr_entref_t_20
_Z19PlayerCmd_hasWeapon12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z25BG_FindWeaponIndexForNamePKc
	mov ecx, eax
	test eax, eax
	jz _Z19PlayerCmd_hasWeapon12scr_entref_t_30
	mov esi, eax
	sar esi, 0x5
	mov edx, [ebx+0x15c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+esi*4+0x55c], eax
	jnz _Z19PlayerCmd_hasWeapon12scr_entref_t_40
_Z19PlayerCmd_hasWeapon12scr_entref_t_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z11Scr_AddBooli
_Z19PlayerCmd_hasWeapon12scr_entref_t_40:
	mov dword [ebp+0x8], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z11Scr_AddBooli
_Z19PlayerCmd_hasWeapon12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z19PlayerCmd_hasWeapon12scr_entref_t_50
_Z19PlayerCmd_hasWeapon12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z19PlayerCmd_hasWeapon12scr_entref_t_50
	nop


;PlayerCmd_playerADS(scr_entref_t)
_Z19PlayerCmd_playerADS12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z19PlayerCmd_playerADS12scr_entref_t_10
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
	jz _Z19PlayerCmd_playerADS12scr_entref_t_20
	mov eax, [ebx+0x15c]
	mov eax, [eax+0xf4]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z12Scr_AddFloatf
_Z19PlayerCmd_playerADS12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	mov eax, [eax+0xf4]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z12Scr_AddFloatf
_Z19PlayerCmd_playerADS12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	mov eax, [ebx+0x15c]
	mov eax, [eax+0xf4]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z12Scr_AddFloatf


;PlayerCmd_giveWeapon(scr_entref_t)
_Z20PlayerCmd_giveWeapon12scr_entref_t:
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
	jnz _Z20PlayerCmd_giveWeapon12scr_entref_t_10
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
	jz _Z20PlayerCmd_giveWeapon12scr_entref_t_20
_Z20PlayerCmd_giveWeapon12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
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
	call _Z15Scr_GetNumParamv
	cmp eax, 0x2
	jz _Z20PlayerCmd_giveWeapon12scr_entref_t_30
_Z20PlayerCmd_giveWeapon12scr_entref_t_60:
	xor eax, eax
_Z20PlayerCmd_giveWeapon12scr_entref_t_70:
	movzx eax, al
	mov [ebp-0x60], eax
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [esi+0x15c]
	mov [esp], eax
	call _Z18G_GivePlayerWeaponP13playerState_sih
	test eax, eax
	jz _Z20PlayerCmd_giveWeapon12scr_entref_t_40
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
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov eax, [ebp-0x5c]
	mov [esp], eax
	mov ecx, [ebp-0x60]
	mov edx, edi
	mov eax, esi
	call _Z16G_InitializeAmmoP9gentity_sihi
_Z20PlayerCmd_giveWeapon12scr_entref_t_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20PlayerCmd_giveWeapon12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z20PlayerCmd_giveWeapon12scr_entref_t_50
_Z20PlayerCmd_giveWeapon12scr_entref_t_30:
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	cmp eax, 0xff
	ja _Z20PlayerCmd_giveWeapon12scr_entref_t_60
	mov edx, [ebx+eax*4+0xc]
	test edx, edx
	jnz _Z20PlayerCmd_giveWeapon12scr_entref_t_70
	jmp _Z20PlayerCmd_giveWeapon12scr_entref_t_60
_Z20PlayerCmd_giveWeapon12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z20PlayerCmd_giveWeapon12scr_entref_t_50


;PlayerCmd_isOnGround(scr_entref_t)
_Z20PlayerCmd_isOnGround12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z20PlayerCmd_isOnGround12scr_entref_t_10
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
	jz _Z20PlayerCmd_isOnGround12scr_entref_t_20
_Z20PlayerCmd_isOnGround12scr_entref_t_50:
	mov eax, [ebx+0x15c]
	test dword [eax+0xb0], 0x300
	jnz _Z20PlayerCmd_isOnGround12scr_entref_t_30
	cmp dword [eax+0x70], 0x3ff
	jz _Z20PlayerCmd_isOnGround12scr_entref_t_40
_Z20PlayerCmd_isOnGround12scr_entref_t_30:
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z20PlayerCmd_isOnGround12scr_entref_t_40:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z20PlayerCmd_isOnGround12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z20PlayerCmd_isOnGround12scr_entref_t_50
_Z20PlayerCmd_isOnGround12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z20PlayerCmd_isOnGround12scr_entref_t_50


;PlayerCmd_pingPlayer(scr_entref_t)
_Z20PlayerCmd_pingPlayer12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z20PlayerCmd_pingPlayer12scr_entref_t_10
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
	jz _Z20PlayerCmd_pingPlayer12scr_entref_t_20
_Z20PlayerCmd_pingPlayer12scr_entref_t_30:
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
_Z20PlayerCmd_pingPlayer12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z20PlayerCmd_pingPlayer12scr_entref_t_30
_Z20PlayerCmd_pingPlayer12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z20PlayerCmd_pingPlayer12scr_entref_t_30
	nop


;PlayerCmd_takeWeapon(scr_entref_t)
_Z20PlayerCmd_takeWeapon12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z20PlayerCmd_takeWeapon12scr_entref_t_10
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
	jz _Z20PlayerCmd_takeWeapon12scr_entref_t_20
_Z20PlayerCmd_takeWeapon12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call _Z19BG_TakePlayerWeaponP13playerState_sji
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20PlayerCmd_takeWeapon12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z20PlayerCmd_takeWeapon12scr_entref_t_30
_Z20PlayerCmd_takeWeapon12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z20PlayerCmd_takeWeapon12scr_entref_t_30
	nop


;PlayerCmd_AllowSprint(scr_entref_t)
_Z21PlayerCmd_AllowSprint12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z21PlayerCmd_AllowSprint12scr_entref_t_10
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
	jz _Z21PlayerCmd_AllowSprint12scr_entref_t_20
_Z21PlayerCmd_AllowSprint12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	test eax, eax
	jz _Z21PlayerCmd_AllowSprint12scr_entref_t_30
	mov eax, [ebx+0x15c]
	and dword [eax+0xc], 0xfffbffff
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z21PlayerCmd_AllowSprint12scr_entref_t_30:
	mov eax, [ebx+0x15c]
	or dword [eax+0xc], 0x40000
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z21PlayerCmd_AllowSprint12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z21PlayerCmd_AllowSprint12scr_entref_t_40
_Z21PlayerCmd_AllowSprint12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z21PlayerCmd_AllowSprint12scr_entref_t_40
	nop


;PlayerCmd_giveMaxAmmo(scr_entref_t)
_Z21PlayerCmd_giveMaxAmmo12scr_entref_t:
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
	jnz _Z21PlayerCmd_giveMaxAmmo12scr_entref_t_10
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
	jz _Z21PlayerCmd_giveMaxAmmo12scr_entref_t_20
_Z21PlayerCmd_giveMaxAmmo12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov esi, eax
	mov ebx, [edi+0x15c]
	mov edx, eax
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx*4+0x55c], eax
	jnz _Z21PlayerCmd_giveMaxAmmo12scr_entref_t_30
_Z21PlayerCmd_giveMaxAmmo12scr_entref_t_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21PlayerCmd_giveMaxAmmo12scr_entref_t_30:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	mov ebx, eax
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov edx, [edi+0x15c]
	mov eax, [eax+0x328]
	sub ebx, [edx+eax*4+0x15c]
	test ebx, ebx
	jle _Z21PlayerCmd_giveMaxAmmo12scr_entref_t_40
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	movzx eax, byte [esi+edx+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z8Add_AmmoP9gentity_sjhii
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21PlayerCmd_giveMaxAmmo12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z21PlayerCmd_giveMaxAmmo12scr_entref_t_50
_Z21PlayerCmd_giveMaxAmmo12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z21PlayerCmd_giveMaxAmmo12scr_entref_t_50


;PlayerCmd_giveStartAmmo(scr_entref_t)
_Z23PlayerCmd_giveStartAmmo12scr_entref_t:
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
	jnz _Z23PlayerCmd_giveStartAmmo12scr_entref_t_10
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
	jz _Z23PlayerCmd_giveStartAmmo12scr_entref_t_20
_Z23PlayerCmd_giveStartAmmo12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov ebx, eax
	mov esi, [edi+0x15c]
	mov edx, eax
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x55c], eax
	jnz _Z23PlayerCmd_giveStartAmmo12scr_entref_t_30
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23PlayerCmd_giveStartAmmo12scr_entref_t_30:
	movzx ecx, byte [ebx+esi+0x81c]
	mov dword [ebp+0x8], 0x0
	mov edx, ebx
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z16G_InitializeAmmoP9gentity_sihi
_Z23PlayerCmd_giveStartAmmo12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z23PlayerCmd_giveStartAmmo12scr_entref_t_40
_Z23PlayerCmd_giveStartAmmo12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z23PlayerCmd_giveStartAmmo12scr_entref_t_40
	nop


;PlayerCmd_GetWeaponsList(scr_entref_t)
_Z24PlayerCmd_GetWeaponsList12scr_entref_t:
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
	jnz _Z24PlayerCmd_GetWeaponsList12scr_entref_t_10
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
	jz _Z24PlayerCmd_GetWeaponsList12scr_entref_t_20
_Z24PlayerCmd_GetWeaponsList12scr_entref_t_60:
	call _Z16BG_GetNumWeaponsv
	mov [ebp-0x1c], eax
	call _Z13Scr_MakeArrayv
	cmp dword [ebp-0x1c], 0x1
	jbe _Z24PlayerCmd_GetWeaponsList12scr_entref_t_30
	mov ebx, 0x1
	jmp _Z24PlayerCmd_GetWeaponsList12scr_entref_t_40
_Z24PlayerCmd_GetWeaponsList12scr_entref_t_50:
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jz _Z24PlayerCmd_GetWeaponsList12scr_entref_t_30
_Z24PlayerCmd_GetWeaponsList12scr_entref_t_40:
	mov edx, ebx
	sar edx, 0x5
	mov eax, [esi+0x15c]
	mov ecx, ebx
	and ecx, 0x1f
	mov edi, 0x1
	shl edi, cl
	test [eax+edx*4+0x55c], edi
	jz _Z24PlayerCmd_GetWeaponsList12scr_entref_t_50
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov eax, [eax]
	mov [esp], eax
	call _Z13Scr_AddStringPKc
	call _Z12Scr_AddArrayv
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jnz _Z24PlayerCmd_GetWeaponsList12scr_entref_t_40
_Z24PlayerCmd_GetWeaponsList12scr_entref_t_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24PlayerCmd_GetWeaponsList12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z24PlayerCmd_GetWeaponsList12scr_entref_t_60
_Z24PlayerCmd_GetWeaponsList12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z24PlayerCmd_GetWeaponsList12scr_entref_t_60


;PlayerCmd_switchToWeapon(scr_entref_t)
_Z24PlayerCmd_switchToWeapon12scr_entref_t:
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
	jnz _Z24PlayerCmd_switchToWeapon12scr_entref_t_10
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
	jz _Z24PlayerCmd_switchToWeapon12scr_entref_t_20
_Z24PlayerCmd_switchToWeapon12scr_entref_t_60:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov esi, eax
	test eax, eax
	jz _Z24PlayerCmd_switchToWeapon12scr_entref_t_30
_Z24PlayerCmd_switchToWeapon12scr_entref_t_50:
	mov ebx, esi
	sar ebx, 0x5
	mov edx, [edi+0x15c]
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jz _Z24PlayerCmd_switchToWeapon12scr_entref_t_40
	mov [esp+0x4], esi
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	call _Z19G_SelectWeaponIndexii
	mov dword [ebp+0x8], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11Scr_AddBooli
_Z24PlayerCmd_switchToWeapon12scr_entref_t_40:
	mov dword [ebp+0x8], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11Scr_AddBooli
_Z24PlayerCmd_switchToWeapon12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov esi, eax
	test eax, eax
	jnz _Z24PlayerCmd_switchToWeapon12scr_entref_t_50
_Z24PlayerCmd_switchToWeapon12scr_entref_t_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_weapon_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z24PlayerCmd_switchToWeapon12scr_entref_t_50
_Z24PlayerCmd_switchToWeapon12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z24PlayerCmd_switchToWeapon12scr_entref_t_60


;PlayerCmd_takeAllWeapons(scr_entref_t)
_Z24PlayerCmd_takeAllWeapons12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z24PlayerCmd_takeAllWeapons12scr_entref_t_10
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
	jz _Z24PlayerCmd_takeAllWeapons12scr_entref_t_20
_Z24PlayerCmd_takeAllWeapons12scr_entref_t_50:
	mov eax, [esi+0x15c]
	mov dword [eax+0xe8], 0x0
	mov ebx, 0x1
	jmp _Z24PlayerCmd_takeAllWeapons12scr_entref_t_30
_Z24PlayerCmd_takeAllWeapons12scr_entref_t_40:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov eax, [esi+0x15c]
	mov [esp], eax
	call _Z19BG_TakePlayerWeaponP13playerState_sji
	add ebx, 0x1
_Z24PlayerCmd_takeAllWeapons12scr_entref_t_30:
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jb _Z24PlayerCmd_takeAllWeapons12scr_entref_t_40
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24PlayerCmd_takeAllWeapons12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z24PlayerCmd_takeAllWeapons12scr_entref_t_50
_Z24PlayerCmd_takeAllWeapons12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z24PlayerCmd_takeAllWeapons12scr_entref_t_50


;PlayerCmd_switchToOffhand(scr_entref_t)
_Z25PlayerCmd_switchToOffhand12scr_entref_t:
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
	jnz _Z25PlayerCmd_switchToOffhand12scr_entref_t_10
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
	jz _Z25PlayerCmd_switchToOffhand12scr_entref_t_20
_Z25PlayerCmd_switchToOffhand12scr_entref_t_60:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov esi, eax
	test eax, eax
	jz _Z25PlayerCmd_switchToOffhand12scr_entref_t_30
_Z25PlayerCmd_switchToOffhand12scr_entref_t_50:
	mov ebx, esi
	sar ebx, 0x5
	mov edx, [edi+0x15c]
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jz _Z25PlayerCmd_switchToOffhand12scr_entref_t_40
	mov [esp+0x4], esi
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	call _Z20G_SetEquippedOffHandii
	mov dword [ebp+0x8], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11Scr_AddBooli
_Z25PlayerCmd_switchToOffhand12scr_entref_t_40:
	mov dword [ebp+0x8], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11Scr_AddBooli
_Z25PlayerCmd_switchToOffhand12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov esi, eax
	test eax, eax
	jnz _Z25PlayerCmd_switchToOffhand12scr_entref_t_50
_Z25PlayerCmd_switchToOffhand12scr_entref_t_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_weapon_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z25PlayerCmd_switchToOffhand12scr_entref_t_50
_Z25PlayerCmd_switchToOffhand12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z25PlayerCmd_switchToOffhand12scr_entref_t_60


;PlayerCmd_adsButtonPressed(scr_entref_t)
_Z26PlayerCmd_adsButtonPressed12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z26PlayerCmd_adsButtonPressed12scr_entref_t_10
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
	jz _Z26PlayerCmd_adsButtonPressed12scr_entref_t_20
_Z26PlayerCmd_adsButtonPressed12scr_entref_t_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test ah, 0x8
	jz _Z26PlayerCmd_adsButtonPressed12scr_entref_t_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z26PlayerCmd_adsButtonPressed12scr_entref_t_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z26PlayerCmd_adsButtonPressed12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z26PlayerCmd_adsButtonPressed12scr_entref_t_40
_Z26PlayerCmd_adsButtonPressed12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z26PlayerCmd_adsButtonPressed12scr_entref_t_40


;PlayerCmd_getCurrentWeapon(scr_entref_t)
_Z26PlayerCmd_getCurrentWeapon12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z26PlayerCmd_getCurrentWeapon12scr_entref_t_10
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
	jz _Z26PlayerCmd_getCurrentWeapon12scr_entref_t_20
_Z26PlayerCmd_getCurrentWeapon12scr_entref_t_40:
	mov eax, [ebx+0x15c]
	mov edx, [eax+0x2f64]
	test edx, edx
	jnz _Z26PlayerCmd_getCurrentWeapon12scr_entref_t_30
	mov eax, [eax+0xe8]
	test eax, eax
	jle _Z26PlayerCmd_getCurrentWeapon12scr_entref_t_30
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddStringPKc
_Z26PlayerCmd_getCurrentWeapon12scr_entref_t_30:
	mov dword [ebp+0x8], _cstring_none
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddStringPKc
_Z26PlayerCmd_getCurrentWeapon12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z26PlayerCmd_getCurrentWeapon12scr_entref_t_40
_Z26PlayerCmd_getCurrentWeapon12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z26PlayerCmd_getCurrentWeapon12scr_entref_t_40
	nop


;PlayerCmd_useButtonPressed(scr_entref_t)
_Z26PlayerCmd_useButtonPressed12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z26PlayerCmd_useButtonPressed12scr_entref_t_10
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
	jz _Z26PlayerCmd_useButtonPressed12scr_entref_t_20
_Z26PlayerCmd_useButtonPressed12scr_entref_t_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test al, 0x28
	jz _Z26PlayerCmd_useButtonPressed12scr_entref_t_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z26PlayerCmd_useButtonPressed12scr_entref_t_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z26PlayerCmd_useButtonPressed12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z26PlayerCmd_useButtonPressed12scr_entref_t_40
_Z26PlayerCmd_useButtonPressed12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z26PlayerCmd_useButtonPressed12scr_entref_t_40
	nop


;PlayerCmd_SetSpreadOverride(scr_entref_t)
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_10
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
	jz _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_20
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t_80:
	call _Z15Scr_GetNumParamv
	sub eax, 0x1
	jz _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_30
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t_40:
	mov dword [ebp+0x8], _cstring_usage_player_set2
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	call _Z15Scr_GetNumParamv
	sub eax, 0x1
	jnz _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_40
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov edx, eax
	test eax, eax
	jle _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_50
	cmp eax, 0x3f
	jg _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_60
	mov eax, [ebx+0x15c]
	mov [eax+0xfc], edx
	mov eax, [ebx+0x15c]
	mov dword [eax+0x100], 0x2
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t_70:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t_60:
	mov dword [esp+0x4], 0x40
	mov dword [esp], _cstring_setspreadoverrid
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_70
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_80
_Z27PlayerCmd_SetSpreadOverride12scr_entref_t_50:
	mov dword [esp+0x4], _cstring_setspreadoverrid1
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z27PlayerCmd_SetSpreadOverride12scr_entref_t_70


;PlayerCmd_fragButtonPressed(scr_entref_t)
_Z27PlayerCmd_fragButtonPressed12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z27PlayerCmd_fragButtonPressed12scr_entref_t_10
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
	jz _Z27PlayerCmd_fragButtonPressed12scr_entref_t_20
_Z27PlayerCmd_fragButtonPressed12scr_entref_t_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test ah, 0x40
	jz _Z27PlayerCmd_fragButtonPressed12scr_entref_t_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z27PlayerCmd_fragButtonPressed12scr_entref_t_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z27PlayerCmd_fragButtonPressed12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z27PlayerCmd_fragButtonPressed12scr_entref_t_40
_Z27PlayerCmd_fragButtonPressed12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z27PlayerCmd_fragButtonPressed12scr_entref_t_40


;PlayerCmd_getCurrentOffhand(scr_entref_t)
_Z27PlayerCmd_getCurrentOffhand12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z27PlayerCmd_getCurrentOffhand12scr_entref_t_10
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
	jz _Z27PlayerCmd_getCurrentOffhand12scr_entref_t_20
_Z27PlayerCmd_getCurrentOffhand12scr_entref_t_40:
	mov eax, [ebx+0x15c]
	mov ecx, [eax+0x2f64]
	test ecx, ecx
	jnz _Z27PlayerCmd_getCurrentOffhand12scr_entref_t_30
	mov eax, [eax+0xe0]
	test eax, eax
	jle _Z27PlayerCmd_getCurrentOffhand12scr_entref_t_30
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddStringPKc
_Z27PlayerCmd_getCurrentOffhand12scr_entref_t_30:
	mov dword [ebp+0x8], _cstring_none
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z13Scr_AddStringPKc
_Z27PlayerCmd_getCurrentOffhand12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z27PlayerCmd_getCurrentOffhand12scr_entref_t_40
_Z27PlayerCmd_getCurrentOffhand12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z27PlayerCmd_getCurrentOffhand12scr_entref_t_40
	nop


;PlayerCmd_getFractionMaxAmmo(scr_entref_t)
_Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t:
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
	jnz _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_10
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
	jz _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_20
_Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov esi, eax
	mov ebx, eax
	sar ebx, 0x5
	mov edx, [edi+0x15c]
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jz _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_30
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov ecx, [eax+0x334]
	test ecx, ecx
	jle _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_30
	mov edx, [edi+0x15c]
	mov eax, [eax+0x328]
	mov eax, [edx+eax*4+0x15c]
	test eax, eax
	jle _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_40
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	movss [ebp+0x8], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z12Scr_AddFloatf
_Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_30:
	mov dword [ebp+0x8], 0x3f800000
_Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z12Scr_AddFloatf
_Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_50
_Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_40:
	mov dword [ebp+0x8], 0x0
	jmp _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_60
_Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t_50
	nop


;PlayerCmd_meleeButtonPressed(scr_entref_t)
_Z28PlayerCmd_meleeButtonPressed12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z28PlayerCmd_meleeButtonPressed12scr_entref_t_10
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
	jz _Z28PlayerCmd_meleeButtonPressed12scr_entref_t_20
_Z28PlayerCmd_meleeButtonPressed12scr_entref_t_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test al, 0x4
	jz _Z28PlayerCmd_meleeButtonPressed12scr_entref_t_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z28PlayerCmd_meleeButtonPressed12scr_entref_t_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z28PlayerCmd_meleeButtonPressed12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z28PlayerCmd_meleeButtonPressed12scr_entref_t_40
_Z28PlayerCmd_meleeButtonPressed12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z28PlayerCmd_meleeButtonPressed12scr_entref_t_40
	nop


;PlayerCmd_ResetSpreadOverride(scr_entref_t)
_Z29PlayerCmd_ResetSpreadOverride12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_10
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
	jz _Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_20
_Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_40:
	mov eax, [ebx+0x15c]
	mov dword [eax+0x100], 0x1
	mov eax, [ebx+0x15c]
	mov dword [eax+0x628], 0x437f0000
	call _Z15Scr_GetNumParamv
	test eax, eax
	jnz _Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_30
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_30:
	mov dword [ebp+0x8], _cstring_usage_player_res
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_40
_Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z29PlayerCmd_ResetSpreadOverride12scr_entref_t_40
	nop


;PlayerCmd_attackButtonPressed(scr_entref_t)
_Z29PlayerCmd_attackButtonPressed12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z29PlayerCmd_attackButtonPressed12scr_entref_t_10
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
	jz _Z29PlayerCmd_attackButtonPressed12scr_entref_t_20
_Z29PlayerCmd_attackButtonPressed12scr_entref_t_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3094]
	or eax, [edx+0x3088]
	test al, 0x1
	jz _Z29PlayerCmd_attackButtonPressed12scr_entref_t_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z29PlayerCmd_attackButtonPressed12scr_entref_t_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z29PlayerCmd_attackButtonPressed12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z29PlayerCmd_attackButtonPressed12scr_entref_t_40
_Z29PlayerCmd_attackButtonPressed12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z29PlayerCmd_attackButtonPressed12scr_entref_t_40
	nop


;PlayerCmd_buttonPressedDEVONLY(scr_entref_t)
_Z30PlayerCmd_buttonPressedDEVONLY12scr_entref_t:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp _Z10Scr_AddInti


;PlayerCmd_getFractionStartAmmo(scr_entref_t)
_Z30PlayerCmd_getFractionStartAmmo12scr_entref_t:
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
	jnz _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_10
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
	jz _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_20
_Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_50:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov esi, eax
	mov ebx, eax
	sar ebx, 0x5
	mov edx, [edi+0x15c]
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jz _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_30
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov ecx, [eax+0x320]
	test ecx, ecx
	jle _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_30
	mov edx, [edi+0x15c]
	mov eax, [eax+0x328]
	mov eax, [edx+eax*4+0x15c]
	test eax, eax
	jle _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_40
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	movss [ebp+0x8], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z12Scr_AddFloatf
_Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_30:
	mov dword [ebp+0x8], 0x3f800000
_Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z12Scr_AddFloatf
_Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
	jmp _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_50
_Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_40:
	mov dword [ebp+0x8], 0x0
	jmp _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_60
_Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t_50
	nop


;PlayerCmd_GetWeaponsListPrimaries(scr_entref_t)
_Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t:
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
	jnz _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_10
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
	jz _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_20
_Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_60:
	call _Z16BG_GetNumWeaponsv
	mov [ebp-0x1c], eax
	call _Z13Scr_MakeArrayv
	cmp dword [ebp-0x1c], 0x1
	jbe _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_30
	mov ebx, 0x1
	jmp _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_40
_Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_50:
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jz _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_30
_Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_40:
	mov edx, ebx
	sar edx, 0x5
	mov eax, [esi+0x15c]
	mov ecx, ebx
	and ecx, 0x1f
	mov edi, 0x1
	shl edi, cl
	test [eax+edx*4+0x55c], edi
	jz _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_50
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov edx, [eax+0x13c]
	test edx, edx
	jnz _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_50
	mov eax, [eax]
	mov [esp], eax
	call _Z13Scr_AddStringPKc
	call _Z12Scr_AddArrayv
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jnz _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_40
_Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_60
_Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t_60


;PlayerCmd_getOffhandSecondaryClass(scr_entref_t)
_Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_10
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
	jz _Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_20
_Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_50:
	mov eax, [ebx+0x15c]
	cmp dword [eax+0xe4], 0x1
	jz _Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_30
_Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_40:
	mov eax, scr_const
	movzx eax, word [eax+0xd2]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x15c]
	cmp dword [eax+0xe4], 0x1
	jnz _Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_40
_Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_30:
	mov eax, scr_const
	movzx eax, word [eax+0xd0]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t_50
	nop


;PlayerCmd_setOffhandSecondaryClass(scr_entref_t)
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_10
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
	jz _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_20
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_80:
	call _Z15Scr_GetNumParamv
	sub eax, 0x1
	jz _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_30
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_40:
	mov dword [ebp+0x8], _cstring_incorrect_number
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	call _Z15Scr_GetNumParamv
	sub eax, 0x1
	jnz _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_40
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, eax
	mov ecx, scr_const
	movzx eax, word [ecx+0xd0]
	cmp edx, eax
	jz _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_50
	movzx eax, word [ecx+0xd2]
	cmp edx, eax
	jz _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_60
	mov dword [ebp+0x8], _cstring_must_specify_eit
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_60:
	mov eax, [ebx+0x15c]
	mov dword [eax+0xe4], 0x0
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_70:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_50:
	mov eax, [ebx+0x15c]
	mov dword [eax+0xe4], 0x1
	jmp _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_70
_Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t_80


;PlayerCmd_secondaryOffhandButtonPressed(scr_entref_t)
_Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_10
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
	jz _Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_20
_Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_40:
	mov edx, [ebx+0x15c]
	mov eax, [edx+0x3088]
	movzx edx, word [edx+0x3094]
	or dx, ax
	jns _Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_30
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_30:
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10Scr_AddInti
_Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	jmp _Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_40
_Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_20:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z15Scr_ObjectErrorPKc
	jmp _Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t_40
	nop


;BodyEnd(gentity_s*)
_Z7BodyEndP9gentity_s:
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
methods: dd _cstring_giveweapon, _Z20PlayerCmd_giveWeapon12scr_entref_t, 0x0, _cstring_takeweapon, _Z20PlayerCmd_takeWeapon12scr_entref_t, 0x0, _cstring_takeallweapons, _Z24PlayerCmd_takeAllWeapons12scr_entref_t, 0x0, _cstring_getcurrentweapon, _Z26PlayerCmd_getCurrentWeapon12scr_entref_t, 0x0, _cstring_getcurrentoffhan, _Z27PlayerCmd_getCurrentOffhand12scr_entref_t, 0x0, _cstring_hasweapon, _Z19PlayerCmd_hasWeapon12scr_entref_t, 0x0, _cstring_switchtoweapon, _Z24PlayerCmd_switchToWeapon12scr_entref_t, 0x0, _cstring_switchtooffhand, _Z25PlayerCmd_switchToOffhand12scr_entref_t, 0x0, _cstring_givestartammo, _Z23PlayerCmd_giveStartAmmo12scr_entref_t, 0x0, _cstring_givemaxammo, _Z21PlayerCmd_giveMaxAmmo12scr_entref_t, 0x0, _cstring_getfractionstart, _Z30PlayerCmd_getFractionStartAmmo12scr_entref_t, 0x0, _cstring_getfractionmaxam, _Z28PlayerCmd_getFractionMaxAmmo12scr_entref_t, 0x0, _cstring_setorigin, _Z19PlayerCmd_setOrigin12scr_entref_t, 0x0, _cstring_getvelocity, _Z21PlayerCmd_GetVelocity12scr_entref_t, 0x0, _cstring_setplayerangles, _Z19PlayerCmd_setAngles12scr_entref_t, 0x0, _cstring_getplayerangles, _Z19PlayerCmd_getAngles12scr_entref_t, 0x0, _cstring_usebuttonpressed, _Z26PlayerCmd_useButtonPressed12scr_entref_t, 0x0, _cstring_attackbuttonpres, _Z29PlayerCmd_attackButtonPressed12scr_entref_t, 0x0, _cstring_adsbuttonpressed, _Z26PlayerCmd_adsButtonPressed12scr_entref_t, 0x0, _cstring_meleebuttonpress, _Z28PlayerCmd_meleeButtonPressed12scr_entref_t, 0x0, _cstring_fragbuttonpresse, _Z27PlayerCmd_fragButtonPressed12scr_entref_t, 0x0, _cstring_secondaryoffhand, _Z39PlayerCmd_secondaryOffhandButtonPressed12scr_entref_t, 0x0, _cstring_playerads, _Z19PlayerCmd_playerADS12scr_entref_t, 0x0, _cstring_isonground, _Z20PlayerCmd_isOnGround12scr_entref_t, 0x0, _cstring_pingplayer, _Z20PlayerCmd_pingPlayer12scr_entref_t, 0x0, _cstring_setviewmodel, _Z22PlayerCmd_SetViewmodel12scr_entref_t, 0x0, _cstring_getviewmodel, _Z22PlayerCmd_GetViewmodel12scr_entref_t, 0x0, _cstring_setoffhandsecond, _Z34PlayerCmd_setOffhandSecondaryClass12scr_entref_t, 0x0, _cstring_getoffhandsecond, _Z34PlayerCmd_getOffhandSecondaryClass12scr_entref_t, 0x0, _cstring_beginlocationsel, _Z32PlayerCmd_BeginLocationSelection12scr_entref_t, 0x0, _cstring_endlocationselec, _Z30PlayerCmd_EndLocationSelection12scr_entref_t, 0x0, _cstring_buttonpressed, _Z30PlayerCmd_buttonPressedDEVONLY12scr_entref_t, 0x0, _cstring_sayall, _Z16PlayerCmd_SayAll12scr_entref_t, 0x0, _cstring_sayteam, _Z17PlayerCmd_SayTeam12scr_entref_t, 0x0, _cstring_showscoreboard, _Z24PlayerCmd_showScoreboard12scr_entref_t, 0x0, _cstring_setspawnweapon, _Z24PlayerCmd_setSpawnWeapon12scr_entref_t, 0x0, _cstring_dropitem, _Z18PlayerCmd_dropItem12scr_entref_t, 0x0, _cstring_finishplayerdama, _Z28PlayerCmd_finishPlayerDamage12scr_entref_t, 0x0, _cstring_suicide, _Z17PlayerCmd_Suicide12scr_entref_t, 0x0, _cstring_openmenu, _Z18PlayerCmd_OpenMenu12scr_entref_t, 0x0, _cstring_openmenunomouse, _Z25PlayerCmd_OpenMenuNoMouse12scr_entref_t, 0x0, _cstring_closemenu, _Z19PlayerCmd_CloseMenu12scr_entref_t, 0x0, _cstring_closeingamemenu, _Z25PlayerCmd_CloseInGameMenu12scr_entref_t, 0x0, _cstring_freezecontrols, _Z24PlayerCmd_FreezeControls12scr_entref_t, 0x0, _cstring_disableweapons, _Z24PlayerCmd_DisableWeapons12scr_entref_t, 0x0, _cstring_enableweapons, _Z23PlayerCmd_EnableWeapons12scr_entref_t, 0x0, _cstring_setreverb, _Z19PlayerCmd_SetReverb12scr_entref_t, 0x0, _cstring_deactivatereverb, _Z26PlayerCmd_DeactivateReverb12scr_entref_t, 0x0, _cstring_setchannelvolume, _Z27PlayerCmd_SetChannelVolumes12scr_entref_t, 0x0, _cstring_deactivatechanne, _Z34PlayerCmd_DeactivateChannelVolumes12scr_entref_t, 0x0, _cstring_setweaponammocli, _Z27PlayerCmd_SetWeaponAmmoClip12scr_entref_t, 0x0, _cstring_setweaponammosto, _Z28PlayerCmd_SetWeaponAmmoStock12scr_entref_t, 0x0, _cstring_getweaponammocli, _Z27PlayerCmd_GetWeaponAmmoClip12scr_entref_t, 0x0, _cstring_getweaponammosto, _Z28PlayerCmd_GetWeaponAmmoStock12scr_entref_t, 0x0, _cstring_anyammoforweapon, _Z31PlayerCmd_AnyAmmoForWeaponModes12scr_entref_t, 0x0, _cstring_iprintln, _Z14iclientprintln12scr_entref_t, 0x0, _cstring_iprintlnbold, _Z18iclientprintlnbold12scr_entref_t, 0x0, _cstring_spawn, _Z15PlayerCmd_spawn12scr_entref_t, 0x0, _cstring_setentertime, _Z22PlayerCmd_setEnterTime12scr_entref_t, 0x0, _cstring_cloneplayer, _Z21PlayerCmd_ClonePlayer12scr_entref_t, 0x0, _cstring_setclientdvar, _Z23PlayerCmd_SetClientDvar12scr_entref_t, 0x0, _cstring_setclientdvars, _Z24PlayerCmd_SetClientDvars12scr_entref_t, 0x0, _cstring_playlocalsound, _Z21ScrCmd_PlayLocalSound12scr_entref_t, 0x0, _cstring_stoplocalsound, _Z21ScrCmd_StopLocalSound12scr_entref_t, 0x0, _cstring_istalking, _Z19PlayerCmd_IsTalking12scr_entref_t, 0x0, _cstring_allowspectatetea, _Z27PlayerCmd_AllowSpectateTeam12scr_entref_t, 0x0, _cstring_getguid, _Z17PlayerCmd_GetGuid12scr_entref_t, 0x0, _cstring_getxuid, _Z17PlayerCmd_GetXuid12scr_entref_t, 0x0, _cstring_allowads, _Z18PlayerCmd_AllowADS12scr_entref_t, 0x0, _cstring_allowjump, _Z19PlayerCmd_AllowJump12scr_entref_t, 0x0, _cstring_allowsprint, _Z21PlayerCmd_AllowSprint12scr_entref_t, 0x0, _cstring_setspreadoverrid2, _Z27PlayerCmd_SetSpreadOverride12scr_entref_t, 0x0, _cstring_resetspreadoverr, _Z29PlayerCmd_ResetSpreadOverride12scr_entref_t, 0x0, _cstring_setactionslot, _Z23PlayerCmd_SetActionSlot12scr_entref_t, 0x0, _cstring_getweaponslist, _Z24PlayerCmd_GetWeaponsList12scr_entref_t, 0x0, _cstring_getweaponslistpr, _Z33PlayerCmd_GetWeaponsListPrimaries12scr_entref_t, 0x0, _cstring_setperk, _Z17PlayerCmd_SetPerk12scr_entref_t, 0x0, _cstring_hasperk, _Z17PlayerCmd_HasPerk12scr_entref_t, 0x0, _cstring_clearperks, _Z20PlayerCmd_ClearPerks12scr_entref_t, 0x0, _cstring_unsetperk, _Z19PlayerCmd_UnsetPerk12scr_entref_t, 0x0, _cstring_updatescores, _Z22PlayerCmd_UpdateScores12scr_entref_t, 0x0, _cstring_updatedmscores, _Z24PlayerCmd_UpdateDMScores12scr_entref_t, 0x0, _cstring_setrank, _Z17PlayerCmd_SetRank12scr_entref_t, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


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
_cstring_giveweapon:		db "giveweapon",0
_cstring_takeweapon:		db "takeweapon",0
_cstring_takeallweapons:		db "takeallweapons",0
_cstring_getcurrentweapon:		db "getcurrentweapon",0
_cstring_getcurrentoffhan:		db "getcurrentoffhand",0
_cstring_hasweapon:		db "hasweapon",0
_cstring_switchtoweapon:		db "switchtoweapon",0
_cstring_switchtooffhand:		db "switchtooffhand",0
_cstring_givestartammo:		db "givestartammo",0
_cstring_givemaxammo:		db "givemaxammo",0
_cstring_getfractionstart:		db "getfractionstartammo",0
_cstring_getfractionmaxam:		db "getfractionmaxammo",0
_cstring_setorigin:		db "setorigin",0
_cstring_getvelocity:		db "getvelocity",0
_cstring_setplayerangles:		db "setplayerangles",0
_cstring_getplayerangles:		db "getplayerangles",0
_cstring_usebuttonpressed:		db "usebuttonpressed",0
_cstring_attackbuttonpres:		db "attackbuttonpressed",0
_cstring_adsbuttonpressed:		db "adsbuttonpressed",0
_cstring_meleebuttonpress:		db "meleebuttonpressed",0
_cstring_fragbuttonpresse:		db "fragbuttonpressed",0
_cstring_secondaryoffhand:		db "secondaryoffhandbuttonpressed",0
_cstring_playerads:		db "playerads",0
_cstring_isonground:		db "isonground",0
_cstring_pingplayer:		db "pingplayer",0
_cstring_setviewmodel:		db "setviewmodel",0
_cstring_getviewmodel:		db "getviewmodel",0
_cstring_setoffhandsecond:		db "setoffhandsecondaryclass",0
_cstring_getoffhandsecond:		db "getoffhandsecondaryclass",0
_cstring_beginlocationsel:		db "beginlocationselection",0
_cstring_endlocationselec:		db "endlocationselection",0
_cstring_buttonpressed:		db "buttonpressed",0
_cstring_sayall:		db "sayall",0
_cstring_sayteam:		db "sayteam",0
_cstring_showscoreboard:		db "showscoreboard",0
_cstring_setspawnweapon:		db "setspawnweapon",0
_cstring_dropitem:		db "dropitem",0
_cstring_finishplayerdama:		db "finishplayerdamage",0
_cstring_suicide:		db "suicide",0
_cstring_openmenu:		db "openmenu",0
_cstring_openmenunomouse:		db "openmenunomouse",0
_cstring_closemenu:		db "closemenu",0
_cstring_closeingamemenu:		db "closeingamemenu",0
_cstring_freezecontrols:		db "freezecontrols",0
_cstring_disableweapons:		db "disableweapons",0
_cstring_enableweapons:		db "enableweapons",0
_cstring_setreverb:		db "setreverb",0
_cstring_deactivatereverb:		db "deactivatereverb",0
_cstring_setchannelvolume:		db "setchannelvolumes",0
_cstring_deactivatechanne:		db "deactivatechannelvolumes",0
_cstring_setweaponammocli:		db "setweaponammoclip",0
_cstring_setweaponammosto:		db "setweaponammostock",0
_cstring_getweaponammocli:		db "getweaponammoclip",0
_cstring_getweaponammosto:		db "getweaponammostock",0
_cstring_anyammoforweapon:		db "anyammoforweaponmodes",0
_cstring_iprintln:		db "iprintln",0
_cstring_iprintlnbold:		db "iprintlnbold",0
_cstring_spawn:		db "spawn",0
_cstring_setentertime:		db "setentertime",0
_cstring_cloneplayer:		db "cloneplayer",0
_cstring_setclientdvar:		db "setclientdvar",0
_cstring_setclientdvars:		db "setclientdvars",0
_cstring_playlocalsound:		db "playlocalsound",0
_cstring_stoplocalsound:		db "stoplocalsound",0
_cstring_istalking:		db "istalking",0
_cstring_allowspectatetea:		db "allowspectateteam",0
_cstring_getguid:		db "getguid",0
_cstring_getxuid:		db "getxuid",0
_cstring_allowads:		db "allowads",0
_cstring_allowjump:		db "allowjump",0
_cstring_allowsprint:		db "allowsprint",0
_cstring_setspreadoverrid2:		db "setspreadoverride",0
_cstring_resetspreadoverr:		db "resetspreadoverride",0
_cstring_setactionslot:		db "setactionslot",0
_cstring_getweaponslist:		db "getweaponslist",0
_cstring_getweaponslistpr:		db "getweaponslistprimaries",0
_cstring_setperk:		db "setperk",0
_cstring_hasperk:		db "hasperk",0
_cstring_clearperks:		db "clearperks",0
_cstring_unsetperk:		db "unsetperk",0
_cstring_updatescores:		db "updatescores",0
_cstring_updatedmscores:		db "updatedmscores",0
_cstring_setrank:		db "setrank",0



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

