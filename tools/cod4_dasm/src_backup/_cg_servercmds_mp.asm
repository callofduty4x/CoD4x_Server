;Imports of cg_servercmds_mp:
	extern cg_chatHeight
	extern cg_chatTime
	extern cgsArray
	extern cgArray
	extern cmd_args
	extern atoi
	extern atof
	extern _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1_
	extern _Z10Com_PrintfiPKcz
	extern _Z26CG_TranslateHudElemMessageiPKcS0_Pc
	extern _Z14CG_GameMessageiPKc
	extern _Z15BG_GetWeaponDefj
	extern _Z21CG_SetEquippedOffHandii
	extern _Z14Com_PrintErroriPKcz
	extern _Z12UpdateScoresi
	extern _Z31CL_ControllerIndexFromClientNumi
	extern _Z19LiveStorage_SetStatiii
	extern _Z20CG_SelectWeaponIndexij
	extern _Z18CL_GetConfigStringii
	extern _Z24Dvar_SetFromStringByNamePKcS0_
	extern _Z20CL_ResetPlayerMutingi
	extern _Z18UI_CloseInGameMenui
	extern memset
	extern _Z14CL_GetRankIconiiPP8Material
	extern _Z18CG_BoldGameMessageiPKc
	extern _Z2vaPKcz
	extern _Z12Cbuf_AddTextiPKc
	extern _Z9I_stricmpPKcS0_
	extern _Z10I_strncpyzPcPKci
	extern _Z23UI_ClosePopupScriptMenuih
	extern _Z27CL_IsFirstActiveLocalClienti
	extern _Z13SND_StopMusici
	extern cg_teamChatsOnly
	extern _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	extern _Z17SND_FadeAllSoundsfi
	extern _Z17CL_PickSoundAliasPKc
	extern _Z18SND_PlayMusicAliasiPK11snd_alias_th18snd_alias_system_t
	extern _Z23CL_DumpReliableCommandsi
	extern _Z23Material_RegisterHandlePKci
	extern _Z18UI_PopupScriptMenuiPKch
	extern floorf
	extern _Z25SND_SetEnvironmentEffectsiPKcffi
	extern _Z32SND_DeactivateEnvironmentEffectsii
	extern _Z21BG_GetShellshockParmsi
	extern _Z21SND_SetChannelVolumesiPKfi
	extern _Z28SND_DeactivateChannelVolumesii
	extern _Z29CG_StopClientSoundAliasByNameiPKc
	extern _Z22BG_LoadShellShockDvarsPKc
	extern _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t
	extern _Z17CG_SetupWeaponDefi
	extern _Z29CG_PlayClientSoundAliasByNameiPKc
	extern _Z16CG_RegisterItemsi
	extern _Z15CG_StartAmbienti
	extern _Z30CG_VisionSetConfigString_Nighti
	extern _Z15R_RegisterModelPKc
	extern _Z17CL_ParseMapCenteri
	extern _Z44UI_GetMapDisplayNameFromPartialLoadNameMatchPKcPi
	extern sscanf
	extern clients
	extern _Z17CG_MiniMapChangedi
	extern _Z24CG_NorthDirectionChangedi
	extern _Z30CG_VisionSetConfigString_Nakedi
	extern _Z11FX_RegisterPKc
	extern _Z9Com_ParsePPKc
	extern _Z11R_SwitchFogiii
	extern _Z18R_SetFogFromServerfhhhf
	extern cg_showmiss
	extern _Z19CG_ClearCenterPrinti
	extern _Z20CG_InitLocalEntitiesi
	extern _Z17FX_KillAllEffectsi
	extern _Z17FX_ShutdownSystemi
	extern _Z17DynEntCl_Shutdowni
	extern _Z26CL_IsLastActiveLocalClienti
	extern _Z21DynEntCl_InitEntitiesi
	extern _Z19R_InitPrimaryLightsP8GfxLight
	extern _Z34R_ClearShadowedPrimaryLightHistoryi
	extern _Z13FX_InitSystemi
	extern cg_entitiesArray
	extern _Z14SND_StopSounds20snd_stopsounds_arg_t
	extern cg_thirdPerson
	extern _Z12Dvar_SetBoolPK6dvar_sh
	extern _Z12CL_SetStancei11StanceState
	extern _Z9CL_SetADSih
	extern _Z16UI_CloseAllMenusi
	extern _Z11CG_ScoresUpi
	extern _Z12CL_SyncTimesi
	extern _Z25CG_StartClientSideEffectsi
	extern _Z13Phys_Shutdownv
	extern _Z9Phys_Initv
	extern _Z28CL_GetLocalClientActiveCountv
	extern cgDC
	extern _Z16Menus_ShowByNamePK9UiContextPKc
	extern _Z16Info_ValueForKeyPKcS0_
	extern strncpy
	extern _Z20Dvar_SetStringByNamePKcS0_
	extern _Z18Com_GetBspFilenamePciPKc
	extern _Z15Load_ScriptMenuiPKci
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z26CL_CGameNeedsServerCommandii
	extern _Z22Cmd_EndTokenizedStringv

;Exports of cg_servercmds_mp:
	global cg_waitingScriptMenu
	global _Z16CG_AddToTeamChatiPKc
	global _Z22CG_DeployServerCommandi
	global _Z11CG_ParseFogi
	global _Z13CG_MapRestartii
	global _Z15CG_ParseCodInfoi
	global _Z17CG_MenuShowNotifyii
	global _Z18CG_CloseScriptMenuih
	global _Z18CG_ParseServerInfoi
	global _Z18CG_SetConfigValuesi
	global _Z27CG_ExecuteNewServerCommandsii
	global _Z29CG_CheckOpenWaitingScriptMenui


SECTION .text


;CG_AddToTeamChat(int, char const*)
_Z16CG_AddToTeamChatiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov ebx, edx
	mov eax, cg_chatHeight
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz _Z16CG_AddToTeamChatiPKc_10
	mov eax, cg_chatTime
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z16CG_AddToTeamChatiPKc_10
	mov edx, cgsArray
	mov eax, [edx+0x13b0]
	cdq
	idiv esi
	lea edx, [edx+edx*4]
	shl edx, 0x5
	mov eax, cgsArray
	lea ecx, [edx+eax+0xe90]
	mov byte [ecx], 0x0
	xor edi, edi
	mov dword [ebp-0x10], 0x37
	mov dword [ebp-0x14], 0x0
	jmp _Z16CG_AddToTeamChatiPKc_20
_Z16CG_AddToTeamChatiPKc_50:
	mov edx, ebx
	cmp byte [ebx], 0x5e
	jz _Z16CG_AddToTeamChatiPKc_30
_Z16CG_AddToTeamChatiPKc_80:
	add ebx, 0x1
	add edi, 0x1
_Z16CG_AddToTeamChatiPKc_100:
	movzx eax, byte [edx]
	cmp al, 0x20
	mov edx, [ebp-0x14]
	cmovz edx, ecx
	mov [ebp-0x14], edx
	mov [ecx], al
	add ecx, 0x1
_Z16CG_AddToTeamChatiPKc_20:
	cmp byte [ebx], 0x0
	jz _Z16CG_AddToTeamChatiPKc_40
	cmp edi, 0x34
	jle _Z16CG_AddToTeamChatiPKc_50
	mov edi, [ebp-0x14]
	test edi, edi
	jz _Z16CG_AddToTeamChatiPKc_60
	mov edx, ecx
	sub edx, [ebp-0x14]
	mov eax, ebx
	sub eax, edx
	lea ebx, [eax+0x1]
	sub ecx, edx
_Z16CG_AddToTeamChatiPKc_60:
	mov byte [ecx], 0x0
	mov edx, cgsArray
	mov edi, [edx+0x13b0]
	mov eax, edi
	cdq
	idiv esi
	mov ecx, edx
	mov eax, cgArray
	mov edx, [eax+0x46128]
	mov eax, cgsArray
	mov [eax+ecx*4+0x1390], edx
	lea eax, [edi+0x1]
	mov edx, cgsArray
	mov [edx+0x13b0], eax
	cdq
	idiv esi
	lea edx, [edx+edx*4]
	shl edx, 0x5
	mov ecx, cgsArray
	lea edx, [edx+ecx+0xe90]
	mov byte [edx], 0x5e
	movzx eax, byte [ebp-0x10]
	mov [edx+0x1], al
	lea ecx, [edx+0x2]
	test ebx, ebx
	jz _Z16CG_AddToTeamChatiPKc_70
	mov edx, ebx
	xor edi, edi
	mov dword [ebp-0x14], 0x0
	cmp byte [ebx], 0x5e
	jnz _Z16CG_AddToTeamChatiPKc_80
_Z16CG_AddToTeamChatiPKc_30:
	add ebx, 0x1
	movzx eax, byte [edx+0x1]
	test al, al
	jz _Z16CG_AddToTeamChatiPKc_90
	cmp al, 0x5e
	jz _Z16CG_AddToTeamChatiPKc_90
	cmp al, 0x2f
	jle _Z16CG_AddToTeamChatiPKc_90
	cmp al, 0x39
	jg _Z16CG_AddToTeamChatiPKc_90
	mov byte [ecx], 0x5e
	movzx eax, byte [edx+0x1]
	movsx ebx, al
	mov [ebp-0x10], ebx
	mov [ecx+0x1], al
	add ecx, 0x2
	lea ebx, [edx+0x2]
	jmp _Z16CG_AddToTeamChatiPKc_20
_Z16CG_AddToTeamChatiPKc_10:
	mov eax, cgsArray
	mov dword [eax+0x13b4], 0x0
	mov dword [eax+0x13b0], 0x0
_Z16CG_AddToTeamChatiPKc_110:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CG_AddToTeamChatiPKc_90:
	add edi, 0x1
	jmp _Z16CG_AddToTeamChatiPKc_100
_Z16CG_AddToTeamChatiPKc_40:
	mov byte [ecx], 0x0
	mov ecx, cgsArray
	mov ebx, [ecx+0x13b0]
	mov eax, ebx
	cdq
	idiv esi
	mov ecx, edx
	mov eax, cgArray
	mov edx, [eax+0x46128]
	mov eax, cgsArray
	mov [eax+ecx*4+0x1390], edx
	lea edx, [ebx+0x1]
	mov [eax+0x13b0], edx
	mov eax, edx
	mov ecx, cgsArray
	sub eax, [ecx+0x13b4]
	cmp esi, eax
	jge _Z16CG_AddToTeamChatiPKc_110
	mov eax, edx
	sub eax, esi
	mov [ecx+0x13b4], eax
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CG_AddToTeamChatiPKc_70:
	mov dword [ebp-0x14], 0x0
	xor edx, edx
	mov ebx, 0x1
	mov edi, 0x1
	jmp _Z16CG_AddToTeamChatiPKc_100


;CG_DeployServerCommand(int)
_Z22CG_DeployServerCommandi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x49c
	mov edi, eax
	mov ebx, cmd_args
	mov ecx, [ebx]
	mov edx, [ebx+ecx*4+0x44]
	test edx, edx
	jle _Z22CG_DeployServerCommandi_10
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax]
_Z22CG_DeployServerCommandi_160:
	movsx eax, byte [eax]
	cmp eax, 0x76
	ja _Z22CG_DeployServerCommandi_20
	jmp dword [eax*4+_Z22CG_DeployServerCommandi_jumptab_0]
_Z22CG_DeployServerCommandi_2210:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_30
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1690:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z22CG_DeployServerCommandi_40
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_970:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg _Z22CG_DeployServerCommandi_50
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_960:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3f0]
	cvtsd2ss xmm0, [ebp-0x3f0]
	movss [ebp-0x3a0], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg _Z22CG_DeployServerCommandi_60
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_950:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3e8]
	cvtsd2ss xmm0, [ebp-0x3e8]
	movss [ebp-0x39c], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg _Z22CG_DeployServerCommandi_70
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1210:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3e0]
	cvtsd2ss xmm0, [ebp-0x3e0]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x39c]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x3a0]
	movss [ebp-0x30], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x8
	jg _Z22CG_DeployServerCommandi_80
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1200:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3d8]
	cvtsd2ss xmm0, [ebp-0x3d8]
	movss [ebp-0x398], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x7
	jg _Z22CG_DeployServerCommandi_90
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1190:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3d0]
	cvtsd2ss xmm0, [ebp-0x3d0]
	movss [ebp-0x394], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jg _Z22CG_DeployServerCommandi_100
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1180:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3c8]
	cvtsd2ss xmm0, [ebp-0x3c8]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x394]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x398]
	movss [ebp-0x24], xmm0
	lea eax, [ebp-0x2c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	movzx eax, si
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1_
_Z22CG_DeployServerCommandi_120:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22CG_DeployServerCommandi_20:
	test edx, edx
	jle _Z22CG_DeployServerCommandi_110
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax]
_Z22CG_DeployServerCommandi_170:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_client_g
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov ebx, cmd_args
	mov eax, [ebx]
	mov edi, [ebx+eax*4+0x44]
	cmp edi, 0x1
	jle _Z22CG_DeployServerCommandi_120
	lea eax, [edi-0x1]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_argumentsi
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov esi, 0x1
	jmp _Z22CG_DeployServerCommandi_130
_Z22CG_DeployServerCommandi_150:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+esi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	add esi, 0x1
	cmp edi, esi
	jz _Z22CG_DeployServerCommandi_140
_Z22CG_DeployServerCommandi_130:
	mov eax, [ebx]
	cmp esi, [ebx+eax*4+0x44]
	jl _Z22CG_DeployServerCommandi_150
	mov eax, _cstring_null
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	add esi, 0x1
	cmp edi, esi
	jnz _Z22CG_DeployServerCommandi_130
_Z22CG_DeployServerCommandi_140:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22CG_DeployServerCommandi_10:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_160
_Z22CG_DeployServerCommandi_110:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_170
_Z22CG_DeployServerCommandi_2170:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_180
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1280:
	lea ebx, [ebp-0x2ce]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_game_message
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z26CG_TranslateHudElemMessageiPKcS0_Pc
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z14CG_GameMessageiPKc
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2020:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_190
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1660:
	mov [esp], eax
	call atoi
	mov ebx, eax
	test eax, eax
	jz _Z22CG_DeployServerCommandi_200
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x144]
	test eax, eax
	jz _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_200:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z21CG_SetEquippedOffHandii
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2030:
	cmp edx, 0x3
	jz _Z22CG_DeployServerCommandi_210
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_cg_deactiv
	mov dword [esp], 0xe
	call _Z14Com_PrintErroriPKcz
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2040:
	cmp edx, 0x4
	jz _Z22CG_DeployServerCommandi_220
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_cg_setchan
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2060:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_230
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1480:
	mov [esp], eax
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b0], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2050:
	cmp edx, 0x3
	jz _Z22CG_DeployServerCommandi_240
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_cg_deactiv1
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2070:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_250
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1450:
	mov [esp], eax
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b4], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2080:
	cmp edx, 0x2
	jg _Z22CG_DeployServerCommandi_260
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1220:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z22CG_DeployServerCommandi_270
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1680:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov ecx, cgArray
	mov [ebp-0x418], ecx
	mov ecx, [ecx+0x4f8a8]
	test ecx, ecx
	jg _Z22CG_DeployServerCommandi_280
_Z22CG_DeployServerCommandi_1020:
	mov edx, [ebp-0x418]
	mov eax, [edx+0x4f8a4]
	test eax, eax
	jz _Z22CG_DeployServerCommandi_290
	add eax, 0x2710
	cmp eax, [edx+0x46128]
	jge _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_290:
	mov [esp], edi
	call _Z12UpdateScoresi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2120:
	cmp edx, 0x2
	jg _Z22CG_DeployServerCommandi_300
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1110:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z22CG_DeployServerCommandi_310
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1710:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov [esp], edi
	call _Z31CL_ControllerIndexFromClientNumi
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z19LiveStorage_SetStatiii
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2130:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_320
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1630:
	mov [esp], eax
	call atoi
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z20CG_SelectWeaponIndexij
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2160:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_330
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1500:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov esi, eax
	cmp ebx, 0x8d2
	jz _Z22CG_DeployServerCommandi_340
	cmp ebx, 0x90a
	jz _Z22CG_DeployServerCommandi_350
	cmp ebx, 0x335
	jz _Z22CG_DeployServerCommandi_360
	test ebx, ebx
	jz _Z22CG_DeployServerCommandi_370
	lea eax, [ebx-0x14]
	cmp eax, 0xff
	ja _Z22CG_DeployServerCommandi_380
	mov eax, cgsArray
	mov eax, [eax+0x1c]
	test eax, eax
	jnz _Z22CG_DeployServerCommandi_120
	mov esi, 0x14
	jmp _Z22CG_DeployServerCommandi_390
_Z22CG_DeployServerCommandi_400:
	lea eax, [esi+0x80]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24Dvar_SetFromStringByNamePKcS0_
	add esi, 0x1
	cmp esi, 0x94
	jz _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_390:
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz _Z22CG_DeployServerCommandi_400
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2100:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_410
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1490:
	mov [esp], eax
	call atoi
	mov [esp], eax
	call _Z20CL_ResetPlayerMutingi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2110:
	mov [esp], edi
	call _Z18UI_CloseInGameMenui
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2140:
	mov eax, cgArray
	mov esi, [eax+0x4f8a8]
	test esi, esi
	jle _Z22CG_DeployServerCommandi_420
_Z22CG_DeployServerCommandi_1720:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z22CG_DeployServerCommandi_430
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1700:
	mov [esp], eax
	call atoi
	mov ecx, cgArray
	mov edx, 0x40
	cmp eax, 0x41
	cmovl edx, eax
	mov [ecx+0x4f8a8], edx
	lea eax, [ecx+0x4f8ac]
	mov dword [ecx+0x4f8ac], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z22CG_DeployServerCommandi_440
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1000:
	mov [esp], eax
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b0], eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg _Z22CG_DeployServerCommandi_450
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_990:
	mov [esp], eax
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b4], eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg _Z22CG_DeployServerCommandi_460
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_980:
	mov [esp], eax
	call atoi
	mov esi, cgArray
	mov [esi+0x502dc], eax
	lea eax, [esi+0x4f8dc]
	mov dword [esp+0x8], 0xa00
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [esi+0x4f8bc]
	mov dword [esi+0x4f8bc], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	lea eax, [esi+0x4f8cc]
	mov dword [esi+0x4f8cc], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov ecx, [esi+0x4f8a8]
	test ecx, ecx
	jle _Z22CG_DeployServerCommandi_470
	mov dword [ebp-0x3b8], 0x0
	xor ebx, ebx
	mov dword [ebp-0x30c], 0x0
	mov eax, cmd_args
	mov [ebp-0x3f4], eax
	mov [ebp-0x420], eax
	mov [ebp-0x41c], eax
	mov [ebp-0x428], eax
	mov [ebp-0x424], eax
	mov [ebp-0x42c], esi
	mov [ebp-0x430], esi
	mov dword [ebp-0x434], 0x4f8f0
	mov [ebp-0x438], eax
	mov ecx, eax
	jmp _Z22CG_DeployServerCommandi_480
_Z22CG_DeployServerCommandi_590:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x14]
_Z22CG_DeployServerCommandi_600:
	mov [esp], eax
	call atoi
	lea ecx, [esi+0x4f8dc]
	mov [ebp-0x300], ecx
	mov [esi+0x4f8dc], eax
	mov eax, cmd_args
	mov edx, [eax]
	lea eax, [ebx+0x6]
	mov ecx, cmd_args
	cmp eax, [ecx+edx*4+0x44]
	jl _Z22CG_DeployServerCommandi_490
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_900:
	mov [esp], eax
	call atoi
	lea ecx, [esi+0x4f8e0]
	mov [ebp-0x304], ecx
	mov [esi+0x4f8e0], eax
	lea eax, [ebx+0x7]
	mov [ebp-0x310], eax
	mov edx, [ebp-0x41c]
	mov eax, [edx]
	mov ecx, [ebp-0x310]
	cmp ecx, [edx+eax*4+0x44]
	jl _Z22CG_DeployServerCommandi_500
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_890:
	mov [esp], eax
	call atoi
	lea edx, [esi+0x4f8e4]
	mov [ebp-0x308], edx
	mov [esi+0x4f8e4], eax
	mov ecx, [ebp-0x420]
	mov edx, [ecx]
	lea eax, [ebx+0x8]
	cmp eax, [ecx+edx*4+0x44]
	jl _Z22CG_DeployServerCommandi_510
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_880:
	mov [esp], eax
	call atoi
	mov [esi+0x4f8e8], eax
	mov ecx, [ebp-0x424]
	mov edx, [ecx]
	lea eax, [ebx+0x9]
	cmp eax, [ecx+edx*4+0x44]
	jl _Z22CG_DeployServerCommandi_520
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_870:
	mov [esp], eax
	call atoi
	mov [ebp-0x3b4], eax
	mov ecx, [ebp-0x428]
	mov edx, [ecx]
	lea eax, [ebx+0xa]
	cmp eax, [ecx+edx*4+0x44]
	jl _Z22CG_DeployServerCommandi_530
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_860:
	mov [esp], eax
	call atoi
	mov [esi+0x4f8f0], eax
	mov ecx, [ebp-0x438]
	mov edx, [ecx]
	lea eax, [ebx+0xb]
	cmp eax, [ecx+edx*4+0x44]
	jl _Z22CG_DeployServerCommandi_540
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_850:
	mov [esp], eax
	call atoi
	mov [esi+0x4f8f8], eax
	mov ecx, [ebp-0x300]
	mov ebx, [ecx]
	mov eax, [ebp-0x3b4]
	sub eax, 0x1
	cmp eax, 0x7
	jbe _Z22CG_DeployServerCommandi_550
_Z22CG_DeployServerCommandi_930:
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	mov ebx, [ebp-0x42c]
	lea eax, [ebx+eax*4]
	mov edx, [eax+0xe9f58]
	mov [esi+0x4f8f4], edx
	mov ecx, [ebp-0x434]
	lea edx, [ecx+ebx+0x10]
	mov [esp+0x8], edx
	mov edx, [eax+0xe9f5c]
	mov [esp+0x4], edx
	mov eax, [eax+0xe9f58]
	mov [esp], eax
	call _Z14CL_GetRankIconiiPP8Material
	mov ebx, [ebp-0x300]
	cmp dword [ebx], 0x3f
	jbe _Z22CG_DeployServerCommandi_560
	mov dword [ebx], 0x0
	mov eax, [ebp-0x300]
_Z22CG_DeployServerCommandi_840:
	mov edx, [eax]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov ecx, [ebp-0x304]
	mov edx, [ecx]
	mov ebx, [ebp-0x42c]
	mov [ebx+eax*4+0xe9f64], edx
	mov eax, [ebp-0x300]
	mov edx, [eax]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4]
	mov edx, [eax+0xe9f34]
	test edx, edx
	jnz _Z22CG_DeployServerCommandi_570
	xor eax, eax
_Z22CG_DeployServerCommandi_830:
	mov [esi+0x4f8ec], eax
	mov edx, [ebp-0x430]
	mov [ebp-0x418], edx
	add dword [edx+eax*4+0x4f8cc], 0x1
	mov edx, [esi+0x4f8ec]
	mov ecx, [ebp-0x418]
	mov eax, [ecx+edx*4+0x4f8bc]
	mov ebx, [ebp-0x308]
	add eax, [ebx]
	mov [ecx+edx*4+0x4f8bc], eax
	add dword [ebp-0x3b8], 0x1
	add dword [ebp-0x434], 0x28
	add esi, 0x28
	add dword [ebp-0x30c], 0x1c
	mov eax, [ebp-0x3b8]
	cmp [ecx+0x4f8a8], eax
	jle _Z22CG_DeployServerCommandi_580
	mov ebx, [ebp-0x310]
	mov ecx, [ebp-0x3f4]
_Z22CG_DeployServerCommandi_480:
	mov edx, [ecx]
	lea eax, [ebx+0x5]
	cmp eax, [ecx+edx*4+0x44]
	jl _Z22CG_DeployServerCommandi_590
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_600
_Z22CG_DeployServerCommandi_2150:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_610
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1460:
	lea ebx, [ebp-0x2ce]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_announcement_mes
_Z22CG_DeployServerCommandi_800:
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z26CG_TranslateHudElemMessageiPKcS0_Pc
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z18CG_BoldGameMessageiPKc
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2290:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_620
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1650:
	mov [esp], eax
	call atoi
	mov ebx, eax
	cmp eax, 0x1f
	jbe _Z22CG_DeployServerCommandi_630
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_server_tried_to_
_Z22CG_DeployServerCommandi_1780:
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cmd_mr_i_bad
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z12Cbuf_AddTextiPKc
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2090:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_640
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1640:
	mov [esp], eax
	call atoi
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z17CG_MenuShowNotifyii
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2310:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_120
	mov esi, 0x1
	mov edi, 0x4
	jmp _Z22CG_DeployServerCommandi_650
_Z22CG_DeployServerCommandi_670:
	mov eax, [ebx+edx*4+0x64]
	mov ebx, [edi+eax+0x4]
_Z22CG_DeployServerCommandi_680:
	mov dword [esp+0x4], _cstring_cg_objectivetext
	lea edx, [ebp-0xce]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22CG_DeployServerCommandi_660
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov eax, cgArray
	add eax, 0x4f3a1
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
_Z22CG_DeployServerCommandi_920:
	add esi, 0x2
	mov ebx, cmd_args
	mov ecx, [ebx]
	add edi, 0x8
	cmp [ebx+ecx*4+0x44], esi
	jle _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_650:
	mov dword [esp+0x8], 0x96
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+edi]
	mov [esp+0x4], eax
	lea eax, [ebp-0xce]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov edx, [ebx]
	lea eax, [esi+0x1]
	cmp [ebx+edx*4+0x44], eax
	jg _Z22CG_DeployServerCommandi_670
	mov ebx, _cstring_null
	jmp _Z22CG_DeployServerCommandi_680
_Z22CG_DeployServerCommandi_2220:
	cmp edx, 0x2
	jz _Z22CG_DeployServerCommandi_690
	mov dword [esp+0x4], _cstring_error_localsound
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2230:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z13CG_MapRestartii
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2010:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z13CG_MapRestartii
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2300:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z23UI_ClosePopupScriptMenuih
	lea eax, [edi+edi*8]
	mov byte [eax*8+cg_waitingScriptMenu], 0x0
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2250:
	mov [esp], edi
	call _Z27CL_IsFirstActiveLocalClienti
	test al, al
	jz _Z22CG_DeployServerCommandi_120
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z22CG_DeployServerCommandi_700
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1770:
	mov [esp], eax
	call atoi
	mov [esp], eax
	call _Z13SND_StopMusici
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2270:
	cmp edx, 0x6
	jz _Z22CG_DeployServerCommandi_710
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_cg_reverbc
	mov dword [esp], 0xe
	call _Z14Com_PrintErroriPKcz
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2190:
	mov eax, cg_teamChatsOnly
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z22CG_DeployServerCommandi_120
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_720
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1850:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_chat_message
	mov [esp], eax
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	mov dword [esp+0x8], 0x96
	mov [esp+0x4], eax
	lea ecx, [ebp-0xce]
	mov [esp], ecx
	call _Z10I_strncpyzPcPKci
	movzx eax, byte [ebp-0xce]
	test al, al
	jnz _Z22CG_DeployServerCommandi_730
	xor eax, eax
_Z22CG_DeployServerCommandi_1310:
	mov byte [ebp+eax-0xce], 0x0
	lea edx, [ebp-0xce]
	mov eax, edi
	call _Z16CG_AddToTeamChatiPKc
	lea ebx, [ebp-0xce]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2260:
	mov [esp], edi
	call _Z27CL_IsFirstActiveLocalClienti
	test al, al
	jz _Z22CG_DeployServerCommandi_120
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z22CG_DeployServerCommandi_740
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1330:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z22CG_DeployServerCommandi_750
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1840:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3c0]
	mov [esp+0x4], ebx
	cvtsd2ss xmm0, [ebp-0x3c0]
	movss [esp], xmm0
	call _Z17SND_FadeAllSoundsfi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2240:
	mov [esp], edi
	call _Z27CL_IsFirstActiveLocalClienti
	test al, al
	jz _Z22CG_DeployServerCommandi_120
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z22CG_DeployServerCommandi_760
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1320:
	mov [esp], eax
	call atoi
	xor ebx, ebx
	test eax, eax
	setnz bl
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z22CG_DeployServerCommandi_770
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1860:
	mov [esp], eax
	call _Z17CL_PickSoundAliasPKc
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18SND_PlayMusicAliasiPK11snd_alias_th18snd_alias_system_t
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2280:
	cmp edx, 0x2
	jz _Z22CG_DeployServerCommandi_780
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_localsound1
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
_Z22CG_DeployServerCommandi_1350:
	mov [esp], edi
	call _Z23CL_DumpReliableCommandsi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2180:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_790
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1470:
	lea ebx, [ebp-0x2ce]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_bold_game_messag
	jmp _Z22CG_DeployServerCommandi_800
_Z22CG_DeployServerCommandi_2200:
	sub edx, 0x1
	jle _Z22CG_DeployServerCommandi_810
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z22CG_DeployServerCommandi_1670:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_team_chat_messag
	mov [esp], eax
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	mov dword [esp+0x8], 0x96
	mov [esp+0x4], eax
	lea esi, [ebp-0xce]
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	movzx eax, byte [ebp-0xce]
	test al, al
	jnz _Z22CG_DeployServerCommandi_820
	xor eax, eax
_Z22CG_DeployServerCommandi_1170:
	mov byte [ebp+eax-0xce], 0x0
	lea edx, [ebp-0xce]
	mov eax, edi
	call _Z16CG_AddToTeamChatiPKc
	lea eax, [ebp-0xce]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_570:
	mov eax, [eax+0xe9f50]
	jmp _Z22CG_DeployServerCommandi_830
_Z22CG_DeployServerCommandi_560:
	mov eax, ebx
	jmp _Z22CG_DeployServerCommandi_840
_Z22CG_DeployServerCommandi_540:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x2c]
	jmp _Z22CG_DeployServerCommandi_850
_Z22CG_DeployServerCommandi_530:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x28]
	jmp _Z22CG_DeployServerCommandi_860
_Z22CG_DeployServerCommandi_520:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x24]
	jmp _Z22CG_DeployServerCommandi_870
_Z22CG_DeployServerCommandi_510:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x20]
	jmp _Z22CG_DeployServerCommandi_880
_Z22CG_DeployServerCommandi_500:
	mov eax, [edx+eax*4+0x64]
	mov ecx, [ebp-0x30c]
	mov eax, [ecx+eax+0x1c]
	jmp _Z22CG_DeployServerCommandi_890
_Z22CG_DeployServerCommandi_490:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x18]
	jmp _Z22CG_DeployServerCommandi_900
_Z22CG_DeployServerCommandi_660:
	mov dword [esp+0x4], _cstring_hud_drawhud
	lea ecx, [ebp-0xce]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22CG_DeployServerCommandi_910
	mov [esp], ebx
	call atoi
	mov edx, cgArray
	mov [edx+0x502f4], eax
	jmp _Z22CG_DeployServerCommandi_920
_Z22CG_DeployServerCommandi_550:
	mov eax, [ebp-0x3b4]
	add eax, 0x8d2
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	mov [esi+0x4f8fc], eax
	jmp _Z22CG_DeployServerCommandi_930
_Z22CG_DeployServerCommandi_910:
	mov dword [esp+0x4], _cstring_g_scriptmainmenu
	lea eax, [ebp-0xce]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22CG_DeployServerCommandi_940
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov eax, cgArray
	add eax, 0x4f7a1
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	jmp _Z22CG_DeployServerCommandi_920
_Z22CG_DeployServerCommandi_940:
	mov [esp+0x4], ebx
	lea edx, [ebp-0xce]
	mov [esp], edx
	call _Z24Dvar_SetFromStringByNamePKcS0_
	jmp _Z22CG_DeployServerCommandi_920
_Z22CG_DeployServerCommandi_60:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z22CG_DeployServerCommandi_950
_Z22CG_DeployServerCommandi_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp _Z22CG_DeployServerCommandi_960
_Z22CG_DeployServerCommandi_40:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_970
_Z22CG_DeployServerCommandi_460:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z22CG_DeployServerCommandi_980
_Z22CG_DeployServerCommandi_450:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp _Z22CG_DeployServerCommandi_990
_Z22CG_DeployServerCommandi_440:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1000
_Z22CG_DeployServerCommandi_280:
	mov eax, [ebp-0x418]
	cmp ebx, [eax+0x4f8dc]
	jz _Z22CG_DeployServerCommandi_1010
	mov edx, eax
	mov dword [ebp-0x2f0], 0x0
_Z22CG_DeployServerCommandi_1030:
	add dword [ebp-0x2f0], 0x1
	cmp ecx, [ebp-0x2f0]
	jz _Z22CG_DeployServerCommandi_1020
	mov eax, [edx+0x4f904]
	add edx, 0x28
	cmp ebx, eax
	jnz _Z22CG_DeployServerCommandi_1030
_Z22CG_DeployServerCommandi_1810:
	mov ecx, [ebp-0x2f0]
	lea eax, [ecx+ecx*4]
	mov ebx, [ebp-0x418]
	mov [ebx+eax*8+0x4f8e0], esi
	test ecx, ecx
	jle _Z22CG_DeployServerCommandi_1040
	mov eax, [ebp-0x2f0]
	sub eax, 0x1
	mov [ebp-0x314], eax
	lea eax, [eax+eax*4]
	mov ecx, [ebp-0x418]
	lea eax, [ecx+eax*8+0x4f8e8]
	mov [ebp-0x318], eax
	mov ebx, [ebp-0x2f0]
	mov dword [ebp-0x31c], 0x0
	mov edx, ecx
_Z22CG_DeployServerCommandi_1830:
	lea esi, [ebx-0x1]
	mov [ebp-0x2f4], esi
	lea eax, [esi+esi*4]
	lea esi, [edx+eax*8+0x4f8dc]
	lea eax, [ebx+ebx*4]
	lea ecx, [edx+eax*8+0x4f8dc]
	mov eax, [ecx+0x10]
	mov edx, [esi+0x10]
	cmp eax, edx
	jz _Z22CG_DeployServerCommandi_1050
	cmp eax, 0x3
	jz _Z22CG_DeployServerCommandi_1060
	cmp edx, 0x3
	jz _Z22CG_DeployServerCommandi_1060
_Z22CG_DeployServerCommandi_1050:
	mov eax, [esi+0x4]
	cmp [ecx+0x4], eax
	jg _Z22CG_DeployServerCommandi_1070
	jl _Z22CG_DeployServerCommandi_1060
	mov eax, [ecx+0xc]
	cmp eax, [esi+0xc]
	jl _Z22CG_DeployServerCommandi_1070
_Z22CG_DeployServerCommandi_1060:
	mov [ebp-0x2f4], ebx
_Z22CG_DeployServerCommandi_1820:
	mov ecx, [ebp-0x418]
	mov eax, [ecx+0x4f8a8]
	sub eax, 0x1
	cmp [ebp-0x2f4], eax
	jge _Z22CG_DeployServerCommandi_120
	mov ebx, [ebp-0x2f4]
	add ebx, 0x1
	mov [ebp-0x324], ebx
	lea eax, [ebx+ebx*4]
	lea eax, [ecx+eax*8+0x4f8dc]
	mov [ebp-0x328], eax
	mov esi, [ebp-0x2f4]
	lea eax, [esi+esi*4]
	lea eax, [ecx+eax*8+0x4f8dc]
	mov [ebp-0x320], eax
	mov [ebp-0x350], esi
	mov edx, esi
_Z22CG_DeployServerCommandi_1100:
	lea eax, [edx+edx*4]
	mov ecx, [ebp-0x418]
	lea ebx, [ecx+eax*8+0x4f8dc]
	add edx, 0x1
	mov [ebp-0x350], edx
	lea eax, [edx+edx*4]
	lea ecx, [ecx+eax*8+0x4f8dc]
	mov eax, [ecx+0x10]
	mov edx, [ebx+0x10]
	cmp eax, edx
	jz _Z22CG_DeployServerCommandi_1080
	cmp eax, 0x3
	jz _Z22CG_DeployServerCommandi_120
	cmp edx, 0x3
	jz _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1080:
	mov eax, [ebx+0x4]
	cmp [ecx+0x4], eax
	jg _Z22CG_DeployServerCommandi_1090
	jl _Z22CG_DeployServerCommandi_120
	mov eax, [ecx+0xc]
	cmp eax, [ebx+0xc]
	jge _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1090:
	mov eax, [ebp-0x328]
	mov eax, [eax+0x24]
	mov [ebp-0x47c], eax
	mov edx, [ebp-0x328]
	mov ebx, [edx+0x20]
	mov esi, [edx+0x1c]
	mov edi, [edx+0x18]
	mov ecx, [edx+0x14]
	mov [ebp-0x2e0], ecx
	mov eax, [edx+0x10]
	mov [ebp-0x2e8], eax
	mov edx, [edx+0xc]
	mov [ebp-0x340], edx
	mov ecx, [ebp-0x328]
	mov ecx, [ecx+0x8]
	mov [ebp-0x2ec], ecx
	mov eax, [ebp-0x328]
	mov eax, [eax+0x4]
	mov [ebp-0x2e4], eax
	mov edx, [ebp-0x328]
	mov edx, [edx]
	mov [ebp-0x34c], edx
	mov ecx, [ebp-0x324]
	lea edx, [ecx+ecx*4]
	mov eax, [ebp-0x2f4]
	lea eax, [eax+eax*4]
	sub edx, eax
	shl edx, 0x3
	mov ecx, [ebp-0x320]
	mov ecx, [ecx]
	mov eax, [ebp-0x320]
	mov [edx+eax], ecx
	mov ecx, [eax+0x4]
	mov [edx+eax+0x4], ecx
	mov eax, [eax+0x8]
	mov ecx, [ebp-0x320]
	mov [edx+ecx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+ecx+0xc], eax
	mov ecx, [ecx+0x10]
	mov eax, [ebp-0x320]
	mov [edx+eax+0x10], ecx
	mov ecx, [eax+0x14]
	mov [edx+eax+0x14], ecx
	mov eax, [eax+0x18]
	mov ecx, [ebp-0x320]
	mov [edx+ecx+0x18], eax
	mov eax, [ecx+0x1c]
	mov [edx+ecx+0x1c], eax
	mov ecx, [ecx+0x20]
	mov eax, [ebp-0x320]
	mov [edx+eax+0x20], ecx
	mov ecx, [eax+0x24]
	mov [edx+eax+0x24], ecx
	mov edx, [ebp-0x47c]
	mov [eax+0x24], edx
	mov [eax+0x20], ebx
	mov [eax+0x1c], esi
	mov [eax+0x18], edi
	mov ecx, [ebp-0x2e0]
	mov [eax+0x14], ecx
	mov ebx, [ebp-0x2e8]
	mov [eax+0x10], ebx
	mov esi, [ebp-0x340]
	mov [eax+0xc], esi
	mov edx, [ebp-0x2ec]
	mov [eax+0x8], edx
	mov ecx, [ebp-0x2e4]
	mov [eax+0x4], ecx
	mov ebx, [ebp-0x34c]
	mov [eax], ebx
	add dword [ebp-0x328], 0x28
	add eax, 0x28
	mov [ebp-0x320], eax
	mov esi, [ebp-0x418]
	mov eax, [esi+0x4f8a8]
	sub eax, 0x1
	cmp [ebp-0x350], eax
	jge _Z22CG_DeployServerCommandi_120
	mov edx, [ebp-0x350]
	jmp _Z22CG_DeployServerCommandi_1100
_Z22CG_DeployServerCommandi_300:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1110
_Z22CG_DeployServerCommandi_470:
	mov edx, cgArray
	mov [ebp-0x418], edx
	mov ecx, edx
	mov ebx, edx
_Z22CG_DeployServerCommandi_1270:
	add ebx, 0x10
_Z22CG_DeployServerCommandi_1130:
	mov edx, [ecx+0x4f8cc]
	test edx, edx
	jle _Z22CG_DeployServerCommandi_1120
	mov eax, [ecx+0x4f8bc]
	test eax, eax
	jle _Z22CG_DeployServerCommandi_1120
	mov esi, edx
	cdq
	idiv esi
	mov [ecx+0x4f8bc], eax
_Z22CG_DeployServerCommandi_1140:
	add ecx, 0x4
	cmp ebx, ecx
	jnz _Z22CG_DeployServerCommandi_1130
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1120:
	mov dword [ecx+0x4f8bc], 0x0
	jmp _Z22CG_DeployServerCommandi_1140
_Z22CG_DeployServerCommandi_820:
	xor ecx, ecx
	lea edx, [ebp-0xce]
_Z22CG_DeployServerCommandi_1160:
	cmp al, 0x19
	jz _Z22CG_DeployServerCommandi_1150
	mov [ebp+ecx-0xce], al
	add ecx, 0x1
_Z22CG_DeployServerCommandi_1150:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz _Z22CG_DeployServerCommandi_1160
	mov eax, ecx
	jmp _Z22CG_DeployServerCommandi_1170
_Z22CG_DeployServerCommandi_100:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp _Z22CG_DeployServerCommandi_1180
_Z22CG_DeployServerCommandi_90:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x1c]
	jmp _Z22CG_DeployServerCommandi_1190
_Z22CG_DeployServerCommandi_80:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x20]
	jmp _Z22CG_DeployServerCommandi_1200
_Z22CG_DeployServerCommandi_70:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp _Z22CG_DeployServerCommandi_1210
_Z22CG_DeployServerCommandi_260:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1220
_Z22CG_DeployServerCommandi_630:
	lea eax, [eax+0x7b2]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov [ebp-0x354], eax
	cmp byte [eax], 0x0
	jz _Z22CG_DeployServerCommandi_1230
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jle _Z22CG_DeployServerCommandi_1240
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	test eax, eax
	jz _Z22CG_DeployServerCommandi_1240
	cmp byte [eax], 0x0
	jz _Z22CG_DeployServerCommandi_1240
	mov byte [ebp-0x355], 0x0
	xor eax, eax
_Z22CG_DeployServerCommandi_1440:
	mov [esp+0x8], eax
	mov eax, [ebp-0x354]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18UI_PopupScriptMenuiPKch
	test eax, eax
	jnz _Z22CG_DeployServerCommandi_120
	lea eax, [edi+edi*8]
	lea esi, [eax*8]
	cmp byte [esi+cg_waitingScriptMenu], 0x0
	jz _Z22CG_DeployServerCommandi_1250
	lea edx, [esi+cg_waitingScriptMenu]
	mov [ebp-0x414], edx
	mov [esp+0x4], edx
	mov ecx, [ebp-0x354]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z22CG_DeployServerCommandi_120
	mov eax, [esi+cg_waitingScriptMenu+0x40]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cmd_mr_i_noop
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z12Cbuf_AddTextiPKc
_Z22CG_DeployServerCommandi_1890:
	mov dword [esp+0x8], 0x40
	mov edx, [ebp-0x354]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x414]
	mov [esp], ecx
	call _Z10I_strncpyzPcPKci
	mov [esi+cg_waitingScriptMenu+0x40], ebx
	movzx ebx, byte [ebp-0x355]
	mov [esi+cg_waitingScriptMenu+0x44], bl
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_690:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	jbe _Z22CG_DeployServerCommandi_1260
	mov dword [esp+0xc], 0x100
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_localsound2
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_580:
	mov ecx, [ebp-0x418]
	mov ebx, cgArray
	jmp _Z22CG_DeployServerCommandi_1270
_Z22CG_DeployServerCommandi_180:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1280
_Z22CG_DeployServerCommandi_730:
	xor ecx, ecx
	lea edx, [ebp-0xce]
_Z22CG_DeployServerCommandi_1300:
	cmp al, 0x19
	jz _Z22CG_DeployServerCommandi_1290
	mov [ebp+ecx-0xce], al
	add ecx, 0x1
_Z22CG_DeployServerCommandi_1290:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz _Z22CG_DeployServerCommandi_1300
	mov eax, ecx
	jmp _Z22CG_DeployServerCommandi_1310
_Z22CG_DeployServerCommandi_760:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1320
_Z22CG_DeployServerCommandi_740:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1330
_Z22CG_DeployServerCommandi_780:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	jbe _Z22CG_DeployServerCommandi_1340
	mov dword [esp+0xc], 0x100
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_localsound3
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22CG_DeployServerCommandi_1350
_Z22CG_DeployServerCommandi_710:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jg _Z22CG_DeployServerCommandi_1360
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1760:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x390]
	cvtsd2ss xmm0, [ebp-0x390]
	movss [ebp-0x378], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg _Z22CG_DeployServerCommandi_1370
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1750:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x388]
	cvtsd2ss xmm0, [ebp-0x388]
	movss [ebp-0x374], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg _Z22CG_DeployServerCommandi_1380
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1740:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x380]
	cvtsd2ss xmm0, [ebp-0x380]
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z22CG_DeployServerCommandi_1390
	mov ebx, _cstring_null
_Z22CG_DeployServerCommandi_1730:
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3f8]
	cvttss2si eax, [ebp-0x3f8]
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov [esp+0x10], eax
	movss xmm0, dword [ebp-0x374]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x378]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z25SND_SetEnvironmentEffectsiPKcffi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_210:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z22CG_DeployServerCommandi_1400
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1800:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x370]
	cvtsd2ss xmm0, [ebp-0x370]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3fc]
	cvttss2si eax, [ebp-0x3fc]
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z32SND_DeactivateEnvironmentEffectsii
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_220:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z22CG_DeployServerCommandi_1410
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1880:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg _Z22CG_DeployServerCommandi_1420
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1870:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x368]
	cvtsd2ss xmm0, [ebp-0x368]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x400]
	cvttss2si ebx, [ebp-0x400]
	test ebx, ebx
	mov eax, 0x0
	cmovle ebx, eax
	mov [esp], esi
	call _Z21BG_GetShellshockParmsi
	mov [esp+0x8], ebx
	add eax, 0x144
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21SND_SetChannelVolumesiPKfi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_240:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z22CG_DeployServerCommandi_1430
	mov eax, _cstring_null
_Z22CG_DeployServerCommandi_1790:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x360]
	cvtsd2ss xmm0, [ebp-0x360]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x404]
	cvttss2si eax, [ebp-0x404]
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z28SND_DeactivateChannelVolumesii
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1240:
	mov byte [ebp-0x355], 0x1
	mov eax, 0x1
	jmp _Z22CG_DeployServerCommandi_1440
_Z22CG_DeployServerCommandi_1260:
	lea eax, [edx+0x53e]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z29CG_StopClientSoundAliasByNameiPKc
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_250:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1450
_Z22CG_DeployServerCommandi_610:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1460
_Z22CG_DeployServerCommandi_790:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1470
_Z22CG_DeployServerCommandi_230:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1480
_Z22CG_DeployServerCommandi_410:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1490
_Z22CG_DeployServerCommandi_330:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1500
_Z22CG_DeployServerCommandi_380:
	cmp ebx, 0x4
	jz _Z22CG_DeployServerCommandi_1510
	cmp ebx, 0x5
	jz _Z22CG_DeployServerCommandi_1520
	cmp ebx, 0xd
	jz _Z22CG_DeployServerCommandi_1530
	cmp ebx, 0xf
	jz _Z22CG_DeployServerCommandi_1540
	cmp ebx, 0x10
	jz _Z22CG_DeployServerCommandi_1550
	cmp ebx, 0xe
	jz _Z22CG_DeployServerCommandi_1560
	cmp ebx, 0xc
	jz _Z22CG_DeployServerCommandi_1570
	cmp ebx, 0xb
	jz _Z22CG_DeployServerCommandi_1580
	cmp ebx, 0x9
	jz _Z22CG_DeployServerCommandi_1590
	lea eax, [ebx-0x33e]
	mov [ebp-0x3b0], eax
	cmp eax, 0x1ff
	jbe _Z22CG_DeployServerCommandi_1600
	lea eax, [ebx-0x63e]
	mov [ebp-0x3ac], eax
	cmp eax, 0x63
	jbe _Z22CG_DeployServerCommandi_1610
	lea eax, [ebx-0x7a2]
	mov [ebp-0x3a8], eax
	cmp eax, 0xf
	ja _Z22CG_DeployServerCommandi_1620
	cmp byte [esi], 0x0
	jz _Z22CG_DeployServerCommandi_120
	mov [esp], esi
	call _Z22BG_LoadShellShockDvarsPKc
	test eax, eax
	jz _Z22CG_DeployServerCommandi_120
	mov edx, [ebp-0x3a8]
	mov [esp], edx
	call _Z21BG_GetShellshockParmsi
	mov [esp], eax
	call _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_320:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1630
_Z22CG_DeployServerCommandi_640:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1640
_Z22CG_DeployServerCommandi_620:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1650
_Z22CG_DeployServerCommandi_190:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1660
_Z22CG_DeployServerCommandi_810:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1670
_Z22CG_DeployServerCommandi_270:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1680
_Z22CG_DeployServerCommandi_30:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1690
_Z22CG_DeployServerCommandi_430:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1700
_Z22CG_DeployServerCommandi_310:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1710
_Z22CG_DeployServerCommandi_420:
	mov dword [eax+0x502e8], 0xffffffff
	jmp _Z22CG_DeployServerCommandi_1720
_Z22CG_DeployServerCommandi_370:
	mov [esp], edi
	call _Z18CG_ParseServerInfoi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_340:
	mov [esp], edi
	call _Z17CG_SetupWeaponDefi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1390:
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1730
_Z22CG_DeployServerCommandi_1380:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp _Z22CG_DeployServerCommandi_1740
_Z22CG_DeployServerCommandi_1370:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z22CG_DeployServerCommandi_1750
_Z22CG_DeployServerCommandi_1360:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0xc]
	jmp _Z22CG_DeployServerCommandi_1760
_Z22CG_DeployServerCommandi_700:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1770
_Z22CG_DeployServerCommandi_1230:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_server_tried_to_1
	jmp _Z22CG_DeployServerCommandi_1780
_Z22CG_DeployServerCommandi_1430:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1790
_Z22CG_DeployServerCommandi_1400:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1800
_Z22CG_DeployServerCommandi_1010:
	mov dword [ebp-0x2f0], 0x0
	jmp _Z22CG_DeployServerCommandi_1810
_Z22CG_DeployServerCommandi_1070:
	mov eax, [ebp-0x318]
	mov eax, [eax+0x18]
	mov [ebp-0x32c], eax
	mov edx, [ebp-0x318]
	mov edx, [edx+0x14]
	mov [ebp-0x2dc], edx
	mov ecx, [ebp-0x318]
	mov ecx, [ecx+0x10]
	mov [ebp-0x330], ecx
	mov ebx, [ebp-0x318]
	mov ebx, [ebx+0xc]
	mov [ebp-0x334], ebx
	mov esi, [ebp-0x318]
	mov esi, [esi+0x8]
	mov [ebp-0x338], esi
	mov eax, [ebp-0x318]
	mov eax, [eax+0x4]
	mov [ebp-0x33c], eax
	mov edx, [ebp-0x318]
	mov edx, [edx]
	mov [ebp-0x2f8], edx
	mov ecx, [ebp-0x318]
	mov ecx, [ecx-0x4]
	mov [ebp-0x344], ecx
	mov ebx, [ebp-0x318]
	mov ebx, [ebx-0x8]
	mov [ebp-0x348], ebx
	mov esi, [ebp-0x318]
	mov esi, [esi-0xc]
	mov [ebp-0x2fc], esi
	mov eax, [ebp-0x2f0]
	lea ecx, [eax+eax*4]
	shl ecx, 0x3
	mov [ebp-0x47c], ecx
	mov edi, ecx
	add edi, 0x4f8d0
	mov edx, [ebp-0x314]
	lea ebx, [edx+edx*4]
	mov ecx, [ebp-0x418]
	add ecx, 0xc
	mov [ebp-0x408], ecx
	lea esi, [edi+ecx]
	mov eax, [ebp-0x418]
	add eax, 0x18
	mov [ebp-0x40c], eax
	lea ebx, [eax+ebx*8+0x4f8d0]
	sub esi, ebx
	mov edx, [ebp-0x318]
	mov eax, [edx+esi]
	mov [edx-0xc], eax
	mov eax, [edx+esi+0x4]
	mov [edx-0x8], eax
	mov eax, [edx+esi+0x8]
	mov [edx-0x4], eax
	mov eax, [edx+esi+0xc]
	mov [edx], eax
	mov eax, [edx+esi+0x10]
	mov [edx+0x4], eax
	mov eax, [edx+esi+0x14]
	mov [edx+0x8], eax
	mov eax, [edx+esi+0x18]
	mov [edx+0xc], eax
	mov eax, [edx+esi+0x1c]
	mov [edx+0x10], eax
	mov eax, [edx+esi+0x20]
	mov [edx+0x14], eax
	mov eax, [edx+esi+0x24]
	mov [edx+0x18], eax
	mov ecx, [ebp-0x47c]
	add ecx, 0x4f8f0
	mov [ebp-0x43c], ecx
	mov eax, [ebp-0x418]
	add eax, 0x10
	mov [ebp-0x410], eax
	add ecx, eax
	sub ecx, ebx
	mov eax, [ebp-0x32c]
	mov [edx+ecx], eax
	mov edx, [ebp-0x43c]
	add edx, [ebp-0x408]
	sub edx, ebx
	mov eax, [ebp-0x2dc]
	mov ecx, [ebp-0x318]
	mov [ecx+edx], eax
	mov edx, [ebp-0x47c]
	add edx, 0x4f8e0
	mov [ebp-0x47c], edx
	mov ecx, [ebp-0x40c]
	add ecx, edx
	sub ecx, ebx
	mov edx, [ebp-0x330]
	mov eax, [ebp-0x318]
	mov [eax+ecx], edx
	mov ecx, [ebp-0x418]
	add ecx, 0x14
	mov [ebp-0x43c], ecx
	add ecx, [ebp-0x47c]
	sub ecx, ebx
	mov edx, [ebp-0x334]
	mov [eax+ecx], edx
	mov ecx, [ebp-0x410]
	add ecx, [ebp-0x47c]
	sub ecx, ebx
	mov [ebp-0x440], ecx
	mov edx, [ebp-0x338]
	mov [eax+ecx], edx
	mov ecx, [ebp-0x47c]
	add ecx, [ebp-0x408]
	sub ecx, ebx
	mov edx, [ebp-0x33c]
	mov [eax+ecx], edx
	mov ecx, [ebp-0x40c]
	lea eax, [edi+ecx]
	sub eax, ebx
	mov ecx, [ebp-0x2f8]
	mov edx, [ebp-0x318]
	mov [edx+eax], ecx
	mov eax, [ebp-0x43c]
	lea edx, [edi+eax]
	sub edx, ebx
	mov eax, [ebp-0x344]
	mov ecx, [ebp-0x318]
	mov [ecx+edx], eax
	add edi, [ebp-0x410]
	sub edi, ebx
	mov edx, [ebp-0x348]
	mov [ecx+edi], edx
	mov ebx, [ebp-0x2fc]
	mov [ecx+esi], ebx
	add dword [ebp-0x31c], 0x1
	sub ecx, 0x28
	mov [ebp-0x318], ecx
	mov esi, [ebp-0x2f0]
	cmp [ebp-0x31c], esi
	jz _Z22CG_DeployServerCommandi_1820
	mov ebx, [ebp-0x2f4]
	mov edx, [ebp-0x418]
	jmp _Z22CG_DeployServerCommandi_1830
_Z22CG_DeployServerCommandi_750:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1840
_Z22CG_DeployServerCommandi_1340:
	lea eax, [edx+0x53e]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z29CG_PlayClientSoundAliasByNameiPKc
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_720:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1850
_Z22CG_DeployServerCommandi_770:
	mov eax, _cstring_null
	jmp _Z22CG_DeployServerCommandi_1860
_Z22CG_DeployServerCommandi_1420:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp _Z22CG_DeployServerCommandi_1870
_Z22CG_DeployServerCommandi_1410:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z22CG_DeployServerCommandi_1880
_Z22CG_DeployServerCommandi_1250:
	lea eax, [esi+cg_waitingScriptMenu]
	mov [ebp-0x414], eax
	jmp _Z22CG_DeployServerCommandi_1890
_Z22CG_DeployServerCommandi_350:
	mov [esp], edi
	call _Z16CG_RegisterItemsi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_360:
	mov [esp], edi
	call _Z15CG_StartAmbienti
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1040:
	mov [ebp-0x2f4], ecx
	jmp _Z22CG_DeployServerCommandi_1820
_Z22CG_DeployServerCommandi_1620:
	lea eax, [ebx-0x8d3]
	cmp eax, 0x7
	jbe _Z22CG_DeployServerCommandi_1900
	lea eax, [ebx-0x8db]
	cmp eax, 0xe
	jbe _Z22CG_DeployServerCommandi_1900
	lea eax, [ebx-0x7d2]
	cmp eax, 0xff
	jbe _Z22CG_DeployServerCommandi_1910
	cmp ebx, 0x336
	jz _Z22CG_DeployServerCommandi_1920
	cmp ebx, 0x337
	jz _Z22CG_DeployServerCommandi_1930
	cmp ebx, 0x338
	jz _Z22CG_DeployServerCommandi_1940
	cmp ebx, 0x339
	jnz _Z22CG_DeployServerCommandi_120
	mov [esp], edi
	call _Z30CG_VisionSetConfigString_Nighti
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1600:
	mov [esp], esi
	call _Z15R_RegisterModelPKc
	mov edx, cgsArray
	mov ecx, [ebp-0x3b0]
	mov [edx+ecx*4+0x294], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1570:
	mov [esp], edi
	call _Z17CL_ParseMapCenteri
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1560:
	mov dword [ebp-0x3a4], 0x0
	xor edi, edi
_Z22CG_DeployServerCommandi_1990:
	lea ebx, [esi+edi]
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z44UI_GetMapDisplayNameFromPartialLoadNameMatchPKcPi
	test eax, eax
	jz _Z22CG_DeployServerCommandi_1950
	movzx edx, byte [eax]
	test dl, dl
	jz _Z22CG_DeployServerCommandi_1960
	lea ecx, [ebp-0x1ce]
	add ecx, [ebp-0x3a4]
	xor ebx, ebx
_Z22CG_DeployServerCommandi_1970:
	mov [ecx], dl
	add ebx, 0x1
	movzx edx, byte [ebx+eax]
	add ecx, 0x1
	test dl, dl
	jnz _Z22CG_DeployServerCommandi_1970
	add [ebp-0x3a4], ebx
_Z22CG_DeployServerCommandi_1960:
	add edi, [ebp-0x1c]
	lea ebx, [edi+esi]
_Z22CG_DeployServerCommandi_1950:
	movzx eax, byte [ebx]
	mov edx, [ebp-0x3a4]
	mov [ebp+edx-0x1ce], al
	add edx, 0x1
	mov [ebp-0x3a4], edx
	cmp byte [ebx], 0x0
	jz _Z22CG_DeployServerCommandi_1980
	add edi, 0x1
	cmp edi, 0xff
	jle _Z22CG_DeployServerCommandi_1990
_Z22CG_DeployServerCommandi_1980:
	mov byte [ebp-0xcf], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_vote_string
	lea ecx, [ebp-0x1ce]
	mov [esp], ecx
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov eax, cgsArray
	add eax, 0x194
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1550:
	mov [esp], esi
	call atoi
	mov edx, cgsArray
	mov [edx+0x190], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1540:
	mov [esp], esi
	call atoi
	mov edx, cgsArray
	mov [edx+0x18c], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1530:
	mov ebx, cgsArray
	mov dword [ebx+0x188], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_d
	mov [esp], esi
	call sscanf
	cmp eax, 0x2
	jnz _Z22CG_DeployServerCommandi_120
	mov eax, clients
	mov eax, [eax+0x256b4]
	cmp eax, [ebp-0x20]
	jnz _Z22CG_DeployServerCommandi_120
	mov eax, [ebp-0x1c]
	mov [ebx+0x188], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1520:
	mov [esp], esi
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b4], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1510:
	mov [esp], esi
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b0], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1930:
	mov [esp], edi
	call _Z17CG_MiniMapChangedi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1920:
	mov [esp], edi
	call _Z24CG_NorthDirectionChangedi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1910:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	cmp byte [eax], 0x0
	jz _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_2000:
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1900:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	jmp _Z22CG_DeployServerCommandi_2000
_Z22CG_DeployServerCommandi_1590:
	mov [esp], edi
	call _Z11CG_ParseFogi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1940:
	mov [esp], edi
	call _Z30CG_VisionSetConfigString_Nakedi
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1610:
	mov [esp], esi
	call _Z11FX_RegisterPKc
	mov edx, cgsArray
	mov ecx, [ebp-0x3ac]
	mov [edx+ecx*4+0xa94], eax
	jmp _Z22CG_DeployServerCommandi_120
_Z22CG_DeployServerCommandi_1580:
	mov dword [esp+0x4], 0xb
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov [esp], eax
	call atoi
	mov edx, cgsArray
	mov [edx+0x184], eax
	jmp _Z22CG_DeployServerCommandi_120
	nop
	
	
_Z22CG_DeployServerCommandi_jumptab_0:
	dd _Z22CG_DeployServerCommandi_120
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_2010
	dd _Z22CG_DeployServerCommandi_2020
	dd _Z22CG_DeployServerCommandi_2030
	dd _Z22CG_DeployServerCommandi_2040
	dd _Z22CG_DeployServerCommandi_2050
	dd _Z22CG_DeployServerCommandi_2060
	dd _Z22CG_DeployServerCommandi_2070
	dd _Z22CG_DeployServerCommandi_2080
	dd _Z22CG_DeployServerCommandi_2090
	dd _Z22CG_DeployServerCommandi_2100
	dd _Z22CG_DeployServerCommandi_2110
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_2120
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_2130
	dd _Z22CG_DeployServerCommandi_2140
	dd _Z22CG_DeployServerCommandi_2150
	dd _Z22CG_DeployServerCommandi_2160
	dd _Z22CG_DeployServerCommandi_2170
	dd _Z22CG_DeployServerCommandi_2170
	dd _Z22CG_DeployServerCommandi_2180
	dd _Z22CG_DeployServerCommandi_2190
	dd _Z22CG_DeployServerCommandi_2200
	dd _Z22CG_DeployServerCommandi_2210
	dd _Z22CG_DeployServerCommandi_2220
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_20
	dd _Z22CG_DeployServerCommandi_2230
	dd _Z22CG_DeployServerCommandi_2240
	dd _Z22CG_DeployServerCommandi_2250
	dd _Z22CG_DeployServerCommandi_2260
	dd _Z22CG_DeployServerCommandi_2270
	dd _Z22CG_DeployServerCommandi_2280
	dd _Z22CG_DeployServerCommandi_2290
	dd _Z22CG_DeployServerCommandi_2300
	dd _Z22CG_DeployServerCommandi_2310


;CG_ParseFog(int)
_Z11CG_ParseFogi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x70
	mov eax, cgArray
	mov esi, [eax+0x46128]
	mov dword [esp+0x4], 0x9
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_GetConfigStringii
	mov [ebp-0xc], eax
	lea ebx, [ebp-0xc]
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atof
	fstp qword [ebp-0x48]
	cvtsd2ss xmm0, [ebp-0x48]
	movss [ebp-0x1c], xmm0
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	test eax, eax
	jz _Z11CG_ParseFogi_10
	cmp byte [eax], 0x0
	jnz _Z11CG_ParseFogi_20
_Z11CG_ParseFogi_10:
	cvttss2si eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call _Z11R_SwitchFogiii
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
_Z11CG_ParseFogi_20:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atof
	fstp qword [ebp-0x28]
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atoi
	mov ebx, eax
	cvtsd2ss xmm0, [ebp-0x40]
	movss [esp+0x10], xmm0
	cvtsd2ss xmm0, [ebp-0x28]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	movzx eax, al
	mov [esp+0xc], eax
	cvtsd2ss xmm0, [ebp-0x30]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si eax, [ebp-0x50]
	movzx eax, al
	mov [esp+0x8], eax
	cvtsd2ss xmm0, [ebp-0x38]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	movzx eax, al
	mov [esp+0x4], eax
	movss xmm0, dword [ebp-0x1c]
	movss [esp], xmm0
	call _Z18R_SetFogFromServerfhhhf
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], 0x1
	call _Z11R_SwitchFogiii
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CG_MapRestart(int, int)
_Z13CG_MapRestartii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov eax, cg_showmiss
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z13CG_MapRestartii_10
_Z13CG_MapRestartii_80:
	mov [esp], ebx
	call _Z19CG_ClearCenterPrinti
	mov esi, cgArray
	mov dword [esi+0x50310], 0x0
	mov dword [esi+0x50328], 0x1
	mov [esp], ebx
	call _Z20CG_InitLocalEntitiesi
	mov [esp], ebx
	call _Z17FX_KillAllEffectsi
	mov [esp], ebx
	call _Z17FX_ShutdownSystemi
	mov [esp], ebx
	call _Z17DynEntCl_Shutdowni
	mov [esp], ebx
	call _Z26CL_IsLastActiveLocalClienti
	test al, al
	jnz _Z13CG_MapRestartii_20
_Z13CG_MapRestartii_70:
	mov [esp], ebx
	call _Z21DynEntCl_InitEntitiesi
	lea eax, [esi+0x49388]
	mov [esp], eax
	call _Z19R_InitPrimaryLightsP8GfxLight
	mov [esp], ebx
	call _Z34R_ClearShadowedPrimaryLightHistoryi
	mov [esp], ebx
	call _Z13FX_InitSystemi
	mov esi, [esi+0x20]
	mov [ebp-0x2c], esi
	mov edi, esi
	mov eax, [esi+0x2f70]
	test eax, eax
	jle _Z13CG_MapRestartii_30
	xor esi, esi
	mov ecx, edi
	add ecx, 0x2f78
	jmp _Z13CG_MapRestartii_40
_Z13CG_MapRestartii_50:
	add esi, 0x1
	add ecx, 0xf4
	mov eax, [ebp-0x2c]
	cmp esi, [eax+0x2f70]
	jge _Z13CG_MapRestartii_30
_Z13CG_MapRestartii_40:
	mov eax, [ecx]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edi, cg_entitiesArray
	lea edx, [eax+edi]
	mov eax, [edx+0xd0]
	sub eax, 0x8
	cmp eax, 0x1
	ja _Z13CG_MapRestartii_50
	mov dword [edx+0x44], 0x0
	mov dword [edx+0x40], 0x0
	add esi, 0x1
	add ecx, 0xf4
	mov eax, [ebp-0x2c]
	cmp esi, [eax+0x2f70]
	jl _Z13CG_MapRestartii_40
_Z13CG_MapRestartii_30:
	mov [esp], ebx
	call _Z30CG_VisionSetConfigString_Nakedi
	mov [esp], ebx
	call _Z30CG_VisionSetConfigString_Nighti
	mov [esp], ebx
	call _Z17DynEntCl_Shutdowni
	mov eax, cgsArray
	mov dword [eax+0x188], 0x0
	mov esi, cgArray
	mov dword [esi+0x46134], 0x1
	mov dword [esp], 0x0
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	mov [esp], ebx
	call _Z15CG_StartAmbienti
	mov dword [esi+0x503fc], 0x0
	lea eax, [esi+0x50380]
	mov dword [esp+0x8], 0x60
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x4], 0x0
	mov eax, cg_thirdPerson
	mov eax, [eax]
	mov [esp], eax
	call _Z12Dvar_SetBoolPK6dvar_sh
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z12CL_SetStancei11StanceState
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z9CL_SetADSih
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z13CG_MapRestartii_60
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z23UI_ClosePopupScriptMenuih
	lea eax, [ebx+ebx*8]
	mov byte [eax*8+cg_waitingScriptMenu], 0x0
	mov [esp], ebx
	call _Z16UI_CloseAllMenusi
	lea eax, [esi+0x4f8dc]
	mov dword [esp+0x8], 0xa00
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [esi+0x4f8ac]
	mov dword [esi+0x4f8ac], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
_Z13CG_MapRestartii_60:
	mov [esp], ebx
	call _Z11CG_ScoresUpi
	mov byte [esi+0x4f3a1], 0x0
	mov [esp], ebx
	call _Z12CL_SyncTimesi
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z25CG_StartClientSideEffectsi
_Z13CG_MapRestartii_20:
	call _Z13Phys_Shutdownv
	call _Z9Phys_Initv
	jmp _Z13CG_MapRestartii_70
_Z13CG_MapRestartii_10:
	mov dword [esp+0x4], _cstring_cg_maprestart
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z13CG_MapRestartii_80
	nop


;CG_ParseCodInfo(int)
_Z15CG_ParseCodInfoi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, cgsArray
	mov edx, [eax+0x1c]
	test edx, edx
	jz _Z15CG_ParseCodInfoi_10
_Z15CG_ParseCodInfoi_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CG_ParseCodInfoi_10:
	mov esi, 0x14
	jmp _Z15CG_ParseCodInfoi_20
_Z15CG_ParseCodInfoi_40:
	lea eax, [esi+0x80]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24Dvar_SetFromStringByNamePKcS0_
	add esi, 0x1
	cmp esi, 0x94
	jz _Z15CG_ParseCodInfoi_30
_Z15CG_ParseCodInfoi_20:
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz _Z15CG_ParseCodInfoi_40
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_MenuShowNotify(int, int)
_Z17CG_MenuShowNotifyii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp eax, 0x6
	ja _Z17CG_MenuShowNotifyii_10
	jmp dword [eax*4+_Z17CG_MenuShowNotifyii_jumptab_0]
_Z17CG_MenuShowNotifyii_90:
	mov edi, cgArray
	mov eax, [edi+0x46128]
	cmp [edi+0x504bc], eax
	jl _Z17CG_MenuShowNotifyii_20
_Z17CG_MenuShowNotifyii_70:
	cmp [edi+0x504c8], eax
	jl _Z17CG_MenuShowNotifyii_30
_Z17CG_MenuShowNotifyii_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CG_MenuShowNotifyii_80:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x504b8], edx
	jge _Z17CG_MenuShowNotifyii_10
	mov [eax+0x504b8], edx
	call _Z28CL_GetLocalClientActiveCountv
	mov edx, _cstring_health
	sub eax, 0x1
	mov eax, _cstring_health_mp
	jmp _Z17CG_MenuShowNotifyii_40
_Z17CG_MenuShowNotifyii_130:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x504c4], edx
	jge _Z17CG_MenuShowNotifyii_10
	mov [eax+0x504c4], edx
	call _Z28CL_GetLocalClientActiveCountv
	mov edx, _cstring_sprintmeter
	sub eax, 0x1
	mov eax, _cstring_sprintmeter_mp
	cmovnz edx, eax
	mov [ebp+0xc], edx
	jmp _Z17CG_MenuShowNotifyii_50
_Z17CG_MenuShowNotifyii_120:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x502e4], edx
	jge _Z17CG_MenuShowNotifyii_10
	mov [eax+0x502e4], edx
	mov dword [ebp+0xc], _cstring_objectiveinfo
	jmp _Z17CG_MenuShowNotifyii_50
_Z17CG_MenuShowNotifyii_110:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x504c0], edx
	jge _Z17CG_MenuShowNotifyii_10
	mov [eax+0x504c0], edx
	call _Z28CL_GetLocalClientActiveCountv
	mov edx, _cstring_stance
	sub eax, 0x1
	mov eax, _cstring_stance_mp
	jmp _Z17CG_MenuShowNotifyii_40
_Z17CG_MenuShowNotifyii_100:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x504b4], edx
	jge _Z17CG_MenuShowNotifyii_10
	mov [eax+0x504b4], edx
	call _Z28CL_GetLocalClientActiveCountv
	mov edx, _cstring_compass
	sub eax, 0x1
	mov eax, _cstring_compass_mp
_Z17CG_MenuShowNotifyii_40:
	cmovnz edx, eax
	mov [ebp+0xc], edx
_Z17CG_MenuShowNotifyii_50:
	lea edx, [esi+esi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, esi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z16Menus_ShowByNamePK9UiContextPKc
_Z17CG_MenuShowNotifyii_30:
	mov [edi+0x504c8], eax
	call _Z28CL_GetLocalClientActiveCountv
	mov edx, _cstring_offhandinfo
	sub eax, 0x1
	mov eax, _cstring_offhandinfo_mp
	cmovnz edx, eax
	mov [ebp+0xc], edx
	jmp _Z17CG_MenuShowNotifyii_50
_Z17CG_MenuShowNotifyii_20:
	mov [edi+0x504bc], eax
	call _Z28CL_GetLocalClientActiveCountv
	sub eax, 0x1
	jz _Z17CG_MenuShowNotifyii_60
	mov dword [esp+0x4], _cstring_weaponinfo_mp
	lea edx, [esi+esi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, esi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call _Z16Menus_ShowByNamePK9UiContextPKc
	mov eax, [edi+0x46128]
	jmp _Z17CG_MenuShowNotifyii_70
_Z17CG_MenuShowNotifyii_60:
	lea eax, [esi+esi*4]
	shl eax, 0x7
	mov ebx, eax
	sub ebx, esi
	lea ebx, [eax+ebx*8]
	add ebx, cgDC
	mov dword [esp+0x4], _cstring_weaponinfo
	mov [esp], ebx
	call _Z16Menus_ShowByNamePK9UiContextPKc
	mov dword [esp+0x4], _cstring_weaponinfo_lowde
	mov [esp], ebx
	call _Z16Menus_ShowByNamePK9UiContextPKc
	mov eax, [edi+0x46128]
	jmp _Z17CG_MenuShowNotifyii_70
	nop
	add [eax], al
	
	
_Z17CG_MenuShowNotifyii_jumptab_0:
	dd _Z17CG_MenuShowNotifyii_80
	dd _Z17CG_MenuShowNotifyii_90
	dd _Z17CG_MenuShowNotifyii_100
	dd _Z17CG_MenuShowNotifyii_110
	dd _Z17CG_MenuShowNotifyii_90
	dd _Z17CG_MenuShowNotifyii_120
	dd _Z17CG_MenuShowNotifyii_130


;CG_CloseScriptMenu(int, unsigned char)
_Z18CG_CloseScriptMenuih:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23UI_ClosePopupScriptMenuih
	lea ebx, [ebx+ebx*8]
	mov byte [ebx*8+cg_waitingScriptMenu], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CG_ParseServerInfo(int)
_Z18CG_ParseServerInfoi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_GetConfigStringii
	mov esi, eax
	mov dword [esp+0x4], _cstring_sv_hostname
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov edi, cgsArray
	lea eax, [edi+0x40]
	mov [esp], eax
	call strncpy
	mov dword [esp+0x4], _cstring_g_gametype
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea ebx, [edi+0x20]
	mov [esp], ebx
	call strncpy
	mov eax, [edi+0x1c]
	test eax, eax
	jnz _Z18CG_ParseServerInfoi_10
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_g_gametype
	call _Z20Dvar_SetStringByNamePKcS0_
_Z18CG_ParseServerInfoi_10:
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [edi+0x140], eax
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x40
	lea eax, [edi+0x144]
	mov [esp], eax
	call _Z18Com_GetBspFilenamePciPKc
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_SetConfigValues(int)
_Z18CG_SetConfigValuesi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z17CL_ParseMapCenteri
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call _Z18CL_GetConfigStringii
	mov [esp], eax
	call atoi
	mov ebx, cgArray
	mov [ebx+0x4f8b0], eax
	mov dword [esp+0x4], 0x5
	mov [esp], esi
	call _Z18CL_GetConfigStringii
	mov [esp], eax
	call atoi
	mov [ebx+0x4f8b4], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0x46128]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z11R_SwitchFogiii
	mov edi, 0x7b2
	jmp _Z18CG_SetConfigValuesi_10
_Z18CG_SetConfigValuesi_30:
	add edi, 0x1
	cmp edi, 0x7d2
	jz _Z18CG_SetConfigValuesi_20
_Z18CG_SetConfigValuesi_10:
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z18CL_GetConfigStringii
	mov ebx, eax
	cmp byte [eax], 0x0
	jz _Z18CG_SetConfigValuesi_30
	mov dword [esp+0x8], 0x7
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15Load_ScriptMenuiPKci
	test eax, eax
	jnz _Z18CG_SetConfigValuesi_30
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add edi, 0x1
	cmp edi, 0x7d2
	jnz _Z18CG_SetConfigValuesi_10
_Z18CG_SetConfigValuesi_20:
	mov ebx, 0x8d3
_Z18CG_SetConfigValuesi_40:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z18CL_GetConfigStringii
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	add ebx, 0x1
	cmp ebx, 0x8db
	jnz _Z18CG_SetConfigValuesi_40
_Z18CG_SetConfigValuesi_50:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z18CL_GetConfigStringii
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	add ebx, 0x1
	cmp ebx, 0x8ea
	jnz _Z18CG_SetConfigValuesi_50
	mov bx, 0x7d3
	jmp _Z18CG_SetConfigValuesi_60
_Z18CG_SetConfigValuesi_80:
	add ebx, 0x1
	cmp ebx, 0x8d2
	jz _Z18CG_SetConfigValuesi_70
_Z18CG_SetConfigValuesi_60:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z18CL_GetConfigStringii
	cmp byte [eax], 0x0
	jz _Z18CG_SetConfigValuesi_80
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	add ebx, 0x1
	cmp ebx, 0x8d2
	jnz _Z18CG_SetConfigValuesi_60
_Z18CG_SetConfigValuesi_70:
	mov dword [esp+0x4], 0xb
	mov [esp], esi
	call _Z18CL_GetConfigStringii
	mov [esp], eax
	call atoi
	mov edx, cgsArray
	mov [edx+0x184], eax
	mov [esp], esi
	call _Z30CG_VisionSetConfigString_Nakedi
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z30CG_VisionSetConfigString_Nighti
	nop


;CG_ExecuteNewServerCommands(int, int)
_Z27CG_ExecuteNewServerCommandsii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ebx, cgsArray
_Z27CG_ExecuteNewServerCommandsii_20:
	mov eax, [ebx+0x14]
	cmp eax, edi
	jge _Z27CG_ExecuteNewServerCommandsii_10
_Z27CG_ExecuteNewServerCommandsii_30:
	add eax, 0x1
	mov [ebx+0x14], eax
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z26CL_CGameNeedsServerCommandii
	test eax, eax
	jz _Z27CG_ExecuteNewServerCommandsii_20
	mov eax, esi
	call _Z22CG_DeployServerCommandi
	call _Z22Cmd_EndTokenizedStringv
	mov eax, [ebx+0x14]
	cmp eax, edi
	jl _Z27CG_ExecuteNewServerCommandsii_30
_Z27CG_ExecuteNewServerCommandsii_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_CheckOpenWaitingScriptMenu(int)
_Z29CG_CheckOpenWaitingScriptMenui:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	lea ebx, [eax*8]
	cmp byte [ebx+cg_waitingScriptMenu], 0x0
	jnz _Z29CG_CheckOpenWaitingScriptMenui_10
_Z29CG_CheckOpenWaitingScriptMenui_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z29CG_CheckOpenWaitingScriptMenui_10:
	movzx eax, byte [ebx+cg_waitingScriptMenu+0x44]
	mov [esp+0x8], eax
	lea eax, [ebx+cg_waitingScriptMenu]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z18UI_PopupScriptMenuiPKch
	test eax, eax
	jz _Z29CG_CheckOpenWaitingScriptMenui_20
	mov byte [ebx+cg_waitingScriptMenu], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of cg_servercmds_mp:
SECTION .data


;Initialized constant data of cg_servercmds_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_servercmds_mp:
SECTION .bss
cg_waitingScriptMenu: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_unknown_client_g:		db "Unknown client game command: %s",0ah,0
_cstring_argumentsi:		db "Arguments(%i):",0
_cstring__s:		db " %s",0
_cstring_:		db 0ah,0
_cstring_game_message:		db "game message",0
_cstring_error_cg_deactiv:		db "ERROR: CG_DeactivateReverbCmd called with %i args (should be 3)",0ah,0
_cstring_error_cg_setchan:		db "ERROR: CG_SetChannelVolCmd called with %i args (should be 4)",0ah,0
_cstring_error_cg_deactiv1:		db "ERROR: CG_DeactivateChannelVolCmd called with %i args (should be 3)",0ah,0
_cstring_announcement_mes:		db "announcement message",0
_cstring_server_tried_to_:		db "Server tried to open a bad script menu index: %i",0ah,0
_cstring_cmd_mr_i_bad:		db "cmd mr %i bad",0ah,0
_cstring_cg_objectivetext:		db "cg_objectiveText",0
_cstring_error_localsound:		db "ERROR: LocalSoundStop(), should be called with 2 arguments.",0ah,0
_cstring_error_cg_reverbc:		db "ERROR: CG_ReverbCmd called with %i args (should be 6)",0ah,0
_cstring_chat_message:		db "chat message",0
_cstring_s:		db "%s",0ah,0
_cstring_error_localsound1:		db "ERROR: LocalSound() called with %i args (should be 2)",0ah,0
_cstring_bold_game_messag:		db "bold game message",0
_cstring_team_chat_messag:		db "team chat message",0
_cstring_hud_drawhud:		db "hud_drawHud",0
_cstring_g_scriptmainmenu:		db "g_scriptMainMenu",0
_cstring_cmd_mr_i_noop:		db "cmd mr %i noop",0ah,0
_cstring_error_localsound2:		db "ERROR: LocalSoundStop() called with index %i (should be in range[1,%i])",0ah,0
_cstring_error_localsound3:		db "ERROR: LocalSound() called with index %i (should be in range[1,%i])",0ah,0
_cstring_server_tried_to_1:		db "Server tried to open a non-loaded script menu index: %i",0ah,0
_cstring_vote_string:		db "vote string",0
_cstring_d_d:		db "%d %d",0
_cstring_cg_maprestart:		db "CG_MapRestart",0ah,0
_cstring_health:		db "Health",0
_cstring_health_mp:		db "Health_mp",0
_cstring_sprintmeter:		db "sprintMeter",0
_cstring_sprintmeter_mp:		db "sprintMeter_mp",0
_cstring_objectiveinfo:		db "objectiveinfo",0
_cstring_stance:		db "stance",0
_cstring_stance_mp:		db "stance_mp",0
_cstring_compass:		db "Compass",0
_cstring_compass_mp:		db "Compass_mp",0
_cstring_offhandinfo:		db "offhandinfo",0
_cstring_offhandinfo_mp:		db "offhandinfo_mp",0
_cstring_weaponinfo_mp:		db "weaponinfo_mp",0
_cstring_weaponinfo:		db "weaponinfo",0
_cstring_weaponinfo_lowde:		db "weaponinfo_lowdef",0
_cstring_sv_hostname:		db "sv_hostname",0
_cstring_g_gametype:		db "g_gametype",0
_cstring_sv_maxclients:		db "sv_maxclients",0
_cstring_mapname:		db "mapname",0
_cstring_could_not_load_s:		db 015h,"Could not load script menu file ",27h,"%s",27h,0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_255_00000000:		dd 0x437f0000	; 255

