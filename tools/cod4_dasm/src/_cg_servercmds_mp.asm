;Imports of cg_servercmds_mp:
	extern cg_chatHeight
	extern cg_chatTime
	extern cgsArray
	extern cgArray
	extern cmd_args
	extern atoi
	extern atof
	extern DynEntCl_DestroyEvent
	extern Com_Printf
	extern CG_TranslateHudElemMessage
	extern CG_GameMessage
	extern BG_GetWeaponDef
	extern CG_SetEquippedOffHand
	extern Com_PrintError
	extern UpdateScores
	extern CL_ControllerIndexFromClientNum
	extern LiveStorage_SetStat
	extern CG_SelectWeaponIndex
	extern CL_GetConfigString
	extern Cvar_SetFromStringByName
	extern CL_ResetPlayerMuting
	extern UI_CloseInGameMenu
	extern memset
	extern CL_GetRankIcon
	extern CG_BoldGameMessage
	extern va
	extern Cbuf_AddText
	extern Q_stricmp
	extern Q_strncpyz
	extern UI_ClosePopupScriptMenu
	extern CL_IsFirstActiveLocalClient
	extern SND_StopMusic
	extern cg_teamChatsOnly
	extern SEH_LocalizeTextMessage
	extern SND_FadeAllSounds
	extern CL_PickSoundAlias
	extern SND_PlayMusicAlias
	extern CL_DumpReliableCommands
	extern Material_RegisterHandle
	extern UI_PopupScriptMenu
	extern floorf
	extern SND_SetEnvironmentEffects
	extern SND_DeactivateEnvironmentEffects
	extern BG_GetShellshockParms
	extern SND_SetChannelVolumes
	extern SND_DeactivateChannelVolumes
	extern CG_StopClientSoundAliasByName
	extern BG_LoadShellShockDvars
	extern BG_SetShellShockParmsFromDvars
	extern CG_SetupWeaponDef
	extern CG_PlayClientSoundAliasByName
	extern CG_RegisterItems
	extern CG_StartAmbient
	extern CG_VisionSetConfigString_Night
	extern R_RegisterModel
	extern CL_ParseMapCenter
	extern UI_GetMapDisplayNameFromPartialLoadNameMatch
	extern sscanf
	extern clients
	extern CG_MiniMapChanged
	extern CG_NorthDirectionChanged
	extern CG_VisionSetConfigString_Naked
	extern FX_Register
	extern Com_Parse
	extern R_SwitchFog
	extern R_SetFogFromServer
	extern cg_showmiss
	extern CG_ClearCenterPrint
	extern CG_InitLocalEntities
	extern FX_KillAllEffects
	extern FX_ShutdownSystem
	extern DynEntCl_Shutdown
	extern CL_IsLastActiveLocalClient
	extern DynEntCl_InitEntities
	extern R_InitPrimaryLights
	extern R_ClearShadowedPrimaryLightHistory
	extern FX_InitSystem
	extern cg_entitiesArray
	extern SND_StopSounds
	extern cg_thirdPerson
	extern Cvar_SetBool
	extern CL_SetStance
	extern CL_SetADS
	extern UI_CloseAllMenus
	extern CG_ScoresUp
	extern CL_SyncTimes
	extern CG_StartClientSideEffects
	extern Phys_Shutdown
	extern Phys_Init
	extern CL_GetLocalClientActiveCount
	extern cgDC
	extern Menus_ShowByName
	extern Info_ValueForKey
	extern strncpy
	extern Cvar_SetStringByName
	extern Com_GetBspFilename
	extern Load_ScriptMenu
	extern Com_Error
	extern CL_CGameNeedsServerCommand
	extern Cmd_EndTokenizedString

;Exports of cg_servercmds_mp:
	global cg_waitingScriptMenu
	global CG_AddToTeamChat
	global CG_DeployServerCommand
	global CG_ParseFog
	global CG_MapRestart
	global CG_ParseCodInfo
	global CG_MenuShowNotify
	global CG_CloseScriptMenu
	global CG_ParseServerInfo
	global CG_SetConfigValues
	global CG_ExecuteNewServerCommands
	global CG_CheckOpenWaitingScriptMenu


SECTION .text


;CG_AddToTeamChat(int, char const*)
CG_AddToTeamChat:
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
	jz CG_AddToTeamChat_10
	mov eax, cg_chatTime
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jle CG_AddToTeamChat_10
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
	jmp CG_AddToTeamChat_20
CG_AddToTeamChat_50:
	mov edx, ebx
	cmp byte [ebx], 0x5e
	jz CG_AddToTeamChat_30
CG_AddToTeamChat_80:
	add ebx, 0x1
	add edi, 0x1
CG_AddToTeamChat_100:
	movzx eax, byte [edx]
	cmp al, 0x20
	mov edx, [ebp-0x14]
	cmovz edx, ecx
	mov [ebp-0x14], edx
	mov [ecx], al
	add ecx, 0x1
CG_AddToTeamChat_20:
	cmp byte [ebx], 0x0
	jz CG_AddToTeamChat_40
	cmp edi, 0x34
	jle CG_AddToTeamChat_50
	mov edi, [ebp-0x14]
	test edi, edi
	jz CG_AddToTeamChat_60
	mov edx, ecx
	sub edx, [ebp-0x14]
	mov eax, ebx
	sub eax, edx
	lea ebx, [eax+0x1]
	sub ecx, edx
CG_AddToTeamChat_60:
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
	jz CG_AddToTeamChat_70
	mov edx, ebx
	xor edi, edi
	mov dword [ebp-0x14], 0x0
	cmp byte [ebx], 0x5e
	jnz CG_AddToTeamChat_80
CG_AddToTeamChat_30:
	add ebx, 0x1
	movzx eax, byte [edx+0x1]
	test al, al
	jz CG_AddToTeamChat_90
	cmp al, 0x5e
	jz CG_AddToTeamChat_90
	cmp al, 0x2f
	jle CG_AddToTeamChat_90
	cmp al, 0x39
	jg CG_AddToTeamChat_90
	mov byte [ecx], 0x5e
	movzx eax, byte [edx+0x1]
	movsx ebx, al
	mov [ebp-0x10], ebx
	mov [ecx+0x1], al
	add ecx, 0x2
	lea ebx, [edx+0x2]
	jmp CG_AddToTeamChat_20
CG_AddToTeamChat_10:
	mov eax, cgsArray
	mov dword [eax+0x13b4], 0x0
	mov dword [eax+0x13b0], 0x0
CG_AddToTeamChat_110:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddToTeamChat_90:
	add edi, 0x1
	jmp CG_AddToTeamChat_100
CG_AddToTeamChat_40:
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
	jge CG_AddToTeamChat_110
	mov eax, edx
	sub eax, esi
	mov [ecx+0x13b4], eax
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddToTeamChat_70:
	mov dword [ebp-0x14], 0x0
	xor edx, edx
	mov ebx, 0x1
	mov edi, 0x1
	jmp CG_AddToTeamChat_100


;CG_DeployServerCommand(int)
CG_DeployServerCommand:
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
	jle CG_DeployServerCommand_10
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax]
CG_DeployServerCommand_160:
	movsx eax, byte [eax]
	cmp eax, 0x76
	ja CG_DeployServerCommand_20
	jmp dword [eax*4+CG_DeployServerCommand_jumptab_0]
CG_DeployServerCommand_2210:
	sub edx, 0x1
	jle CG_DeployServerCommand_30
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1690:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg CG_DeployServerCommand_40
	mov eax, _cstring_null
CG_DeployServerCommand_970:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg CG_DeployServerCommand_50
	mov eax, _cstring_null
CG_DeployServerCommand_960:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3f0]
	cvtsd2ss xmm0, [ebp-0x3f0]
	movss [ebp-0x3a0], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg CG_DeployServerCommand_60
	mov eax, _cstring_null
CG_DeployServerCommand_950:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3e8]
	cvtsd2ss xmm0, [ebp-0x3e8]
	movss [ebp-0x39c], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg CG_DeployServerCommand_70
	mov eax, _cstring_null
CG_DeployServerCommand_1210:
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
	jg CG_DeployServerCommand_80
	mov eax, _cstring_null
CG_DeployServerCommand_1200:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3d8]
	cvtsd2ss xmm0, [ebp-0x3d8]
	movss [ebp-0x398], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x7
	jg CG_DeployServerCommand_90
	mov eax, _cstring_null
CG_DeployServerCommand_1190:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3d0]
	cvtsd2ss xmm0, [ebp-0x3d0]
	movss [ebp-0x394], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jg CG_DeployServerCommand_100
	mov eax, _cstring_null
CG_DeployServerCommand_1180:
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
	call DynEntCl_DestroyEvent
CG_DeployServerCommand_120:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DeployServerCommand_20:
	test edx, edx
	jle CG_DeployServerCommand_110
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax]
CG_DeployServerCommand_170:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_client_g
	mov dword [esp], 0xe
	call Com_Printf
	mov ebx, cmd_args
	mov eax, [ebx]
	mov edi, [ebx+eax*4+0x44]
	cmp edi, 0x1
	jle CG_DeployServerCommand_120
	lea eax, [edi-0x1]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_argumentsi
	mov dword [esp], 0xe
	call Com_Printf
	mov esi, 0x1
	jmp CG_DeployServerCommand_130
CG_DeployServerCommand_150:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+esi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s
	mov dword [esp], 0xe
	call Com_Printf
	add esi, 0x1
	cmp edi, esi
	jz CG_DeployServerCommand_140
CG_DeployServerCommand_130:
	mov eax, [ebx]
	cmp esi, [ebx+eax*4+0x44]
	jl CG_DeployServerCommand_150
	mov eax, _cstring_null
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s
	mov dword [esp], 0xe
	call Com_Printf
	add esi, 0x1
	cmp edi, esi
	jnz CG_DeployServerCommand_130
CG_DeployServerCommand_140:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DeployServerCommand_10:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_160
CG_DeployServerCommand_110:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_170
CG_DeployServerCommand_2170:
	sub edx, 0x1
	jle CG_DeployServerCommand_180
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1280:
	lea ebx, [ebp-0x2ce]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_game_message
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_TranslateHudElemMessage
	mov [esp+0x4], ebx
	mov [esp], edi
	call CG_GameMessage
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2020:
	sub edx, 0x1
	jle CG_DeployServerCommand_190
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1660:
	mov [esp], eax
	call atoi
	mov ebx, eax
	test eax, eax
	jz CG_DeployServerCommand_200
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x144]
	test eax, eax
	jz CG_DeployServerCommand_120
CG_DeployServerCommand_200:
	mov [esp+0x4], ebx
	mov [esp], edi
	call CG_SetEquippedOffHand
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2030:
	cmp edx, 0x3
	jz CG_DeployServerCommand_210
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_cg_deactiv
	mov dword [esp], 0xe
	call Com_PrintError
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2040:
	cmp edx, 0x4
	jz CG_DeployServerCommand_220
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_cg_setchan
	mov dword [esp], 0x9
	call Com_PrintError
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2060:
	sub edx, 0x1
	jle CG_DeployServerCommand_230
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1480:
	mov [esp], eax
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b0], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2050:
	cmp edx, 0x3
	jz CG_DeployServerCommand_240
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_cg_deactiv1
	mov dword [esp], 0x9
	call Com_PrintError
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2070:
	sub edx, 0x1
	jle CG_DeployServerCommand_250
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1450:
	mov [esp], eax
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b4], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2080:
	cmp edx, 0x2
	jg CG_DeployServerCommand_260
	mov eax, _cstring_null
CG_DeployServerCommand_1220:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CG_DeployServerCommand_270
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1680:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov ecx, cgArray
	mov [ebp-0x418], ecx
	mov ecx, [ecx+0x4f8a8]
	test ecx, ecx
	jg CG_DeployServerCommand_280
CG_DeployServerCommand_1020:
	mov edx, [ebp-0x418]
	mov eax, [edx+0x4f8a4]
	test eax, eax
	jz CG_DeployServerCommand_290
	add eax, 0x2710
	cmp eax, [edx+0x46128]
	jge CG_DeployServerCommand_120
CG_DeployServerCommand_290:
	mov [esp], edi
	call UpdateScores
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2120:
	cmp edx, 0x2
	jg CG_DeployServerCommand_300
	mov eax, _cstring_null
CG_DeployServerCommand_1110:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CG_DeployServerCommand_310
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1710:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov [esp], edi
	call CL_ControllerIndexFromClientNum
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call LiveStorage_SetStat
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2130:
	sub edx, 0x1
	jle CG_DeployServerCommand_320
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1630:
	mov [esp], eax
	call atoi
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_SelectWeaponIndex
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2160:
	sub edx, 0x1
	jle CG_DeployServerCommand_330
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1500:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	mov esi, eax
	cmp ebx, 0x8d2
	jz CG_DeployServerCommand_340
	cmp ebx, 0x90a
	jz CG_DeployServerCommand_350
	cmp ebx, 0x335
	jz CG_DeployServerCommand_360
	test ebx, ebx
	jz CG_DeployServerCommand_370
	lea eax, [ebx-0x14]
	cmp eax, 0xff
	ja CG_DeployServerCommand_380
	mov eax, cgsArray
	mov eax, [eax+0x1c]
	test eax, eax
	jnz CG_DeployServerCommand_120
	mov esi, 0x14
	jmp CG_DeployServerCommand_390
CG_DeployServerCommand_400:
	lea eax, [esi+0x80]
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cvar_SetFromStringByName
	add esi, 0x1
	cmp esi, 0x94
	jz CG_DeployServerCommand_120
CG_DeployServerCommand_390:
	mov [esp+0x4], esi
	mov [esp], edi
	call CL_GetConfigString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz CG_DeployServerCommand_400
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2100:
	sub edx, 0x1
	jle CG_DeployServerCommand_410
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1490:
	mov [esp], eax
	call atoi
	mov [esp], eax
	call CL_ResetPlayerMuting
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2110:
	mov [esp], edi
	call UI_CloseInGameMenu
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2140:
	mov eax, cgArray
	mov esi, [eax+0x4f8a8]
	test esi, esi
	jle CG_DeployServerCommand_420
CG_DeployServerCommand_1720:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle CG_DeployServerCommand_430
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1700:
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
	jg CG_DeployServerCommand_440
	mov eax, _cstring_null
CG_DeployServerCommand_1000:
	mov [esp], eax
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b0], eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg CG_DeployServerCommand_450
	mov eax, _cstring_null
CG_DeployServerCommand_990:
	mov [esp], eax
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b4], eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg CG_DeployServerCommand_460
	mov eax, _cstring_null
CG_DeployServerCommand_980:
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
	jle CG_DeployServerCommand_470
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
	jmp CG_DeployServerCommand_480
CG_DeployServerCommand_590:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x14]
CG_DeployServerCommand_600:
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
	jl CG_DeployServerCommand_490
	mov eax, _cstring_null
CG_DeployServerCommand_900:
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
	jl CG_DeployServerCommand_500
	mov eax, _cstring_null
CG_DeployServerCommand_890:
	mov [esp], eax
	call atoi
	lea edx, [esi+0x4f8e4]
	mov [ebp-0x308], edx
	mov [esi+0x4f8e4], eax
	mov ecx, [ebp-0x420]
	mov edx, [ecx]
	lea eax, [ebx+0x8]
	cmp eax, [ecx+edx*4+0x44]
	jl CG_DeployServerCommand_510
	mov eax, _cstring_null
CG_DeployServerCommand_880:
	mov [esp], eax
	call atoi
	mov [esi+0x4f8e8], eax
	mov ecx, [ebp-0x424]
	mov edx, [ecx]
	lea eax, [ebx+0x9]
	cmp eax, [ecx+edx*4+0x44]
	jl CG_DeployServerCommand_520
	mov eax, _cstring_null
CG_DeployServerCommand_870:
	mov [esp], eax
	call atoi
	mov [ebp-0x3b4], eax
	mov ecx, [ebp-0x428]
	mov edx, [ecx]
	lea eax, [ebx+0xa]
	cmp eax, [ecx+edx*4+0x44]
	jl CG_DeployServerCommand_530
	mov eax, _cstring_null
CG_DeployServerCommand_860:
	mov [esp], eax
	call atoi
	mov [esi+0x4f8f0], eax
	mov ecx, [ebp-0x438]
	mov edx, [ecx]
	lea eax, [ebx+0xb]
	cmp eax, [ecx+edx*4+0x44]
	jl CG_DeployServerCommand_540
	mov eax, _cstring_null
CG_DeployServerCommand_850:
	mov [esp], eax
	call atoi
	mov [esi+0x4f8f8], eax
	mov ecx, [ebp-0x300]
	mov ebx, [ecx]
	mov eax, [ebp-0x3b4]
	sub eax, 0x1
	cmp eax, 0x7
	jbe CG_DeployServerCommand_550
CG_DeployServerCommand_930:
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
	call CL_GetRankIcon
	mov ebx, [ebp-0x300]
	cmp dword [ebx], 0x3f
	jbe CG_DeployServerCommand_560
	mov dword [ebx], 0x0
	mov eax, [ebp-0x300]
CG_DeployServerCommand_840:
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
	jnz CG_DeployServerCommand_570
	xor eax, eax
CG_DeployServerCommand_830:
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
	jle CG_DeployServerCommand_580
	mov ebx, [ebp-0x310]
	mov ecx, [ebp-0x3f4]
CG_DeployServerCommand_480:
	mov edx, [ecx]
	lea eax, [ebx+0x5]
	cmp eax, [ecx+edx*4+0x44]
	jl CG_DeployServerCommand_590
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_600
CG_DeployServerCommand_2150:
	sub edx, 0x1
	jle CG_DeployServerCommand_610
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1460:
	lea ebx, [ebp-0x2ce]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_announcement_mes
CG_DeployServerCommand_800:
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_TranslateHudElemMessage
	mov [esp+0x4], ebx
	mov [esp], edi
	call CG_BoldGameMessage
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2290:
	sub edx, 0x1
	jle CG_DeployServerCommand_620
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1650:
	mov [esp], eax
	call atoi
	mov ebx, eax
	cmp eax, 0x1f
	jbe CG_DeployServerCommand_630
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_server_tried_to_
CG_DeployServerCommand_1780:
	mov dword [esp], 0xe
	call Com_Printf
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cmd_mr_i_bad
	call va
	mov [esp+0x4], eax
	mov [esp], edi
	call Cbuf_AddText
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2090:
	sub edx, 0x1
	jle CG_DeployServerCommand_640
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1640:
	mov [esp], eax
	call atoi
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_MenuShowNotify
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2310:
	sub edx, 0x1
	jle CG_DeployServerCommand_120
	mov esi, 0x1
	mov edi, 0x4
	jmp CG_DeployServerCommand_650
CG_DeployServerCommand_670:
	mov eax, [ebx+edx*4+0x64]
	mov ebx, [edi+eax+0x4]
CG_DeployServerCommand_680:
	mov dword [esp+0x4], _cstring_cg_objectivetext
	lea edx, [ebp-0xce]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz CG_DeployServerCommand_660
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov eax, cgArray
	add eax, 0x4f3a1
	mov [esp], eax
	call Q_strncpyz
CG_DeployServerCommand_920:
	add esi, 0x2
	mov ebx, cmd_args
	mov ecx, [ebx]
	add edi, 0x8
	cmp [ebx+ecx*4+0x44], esi
	jle CG_DeployServerCommand_120
CG_DeployServerCommand_650:
	mov dword [esp+0x8], 0x96
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+edi]
	mov [esp+0x4], eax
	lea eax, [ebp-0xce]
	mov [esp], eax
	call Q_strncpyz
	mov edx, [ebx]
	lea eax, [esi+0x1]
	cmp [ebx+edx*4+0x44], eax
	jg CG_DeployServerCommand_670
	mov ebx, _cstring_null
	jmp CG_DeployServerCommand_680
CG_DeployServerCommand_2220:
	cmp edx, 0x2
	jz CG_DeployServerCommand_690
	mov dword [esp+0x4], _cstring_error_localsound
	mov dword [esp], 0x9
	call Com_PrintError
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2230:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call CG_MapRestart
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2010:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call CG_MapRestart
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2300:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call UI_ClosePopupScriptMenu
	lea eax, [edi+edi*8]
	mov byte [eax*8+cg_waitingScriptMenu], 0x0
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2250:
	mov [esp], edi
	call CL_IsFirstActiveLocalClient
	test al, al
	jz CG_DeployServerCommand_120
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CG_DeployServerCommand_700
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1770:
	mov [esp], eax
	call atoi
	mov [esp], eax
	call SND_StopMusic
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2270:
	cmp edx, 0x6
	jz CG_DeployServerCommand_710
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_cg_reverbc
	mov dword [esp], 0xe
	call Com_PrintError
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2190:
	mov eax, cg_teamChatsOnly
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_DeployServerCommand_120
	sub edx, 0x1
	jle CG_DeployServerCommand_720
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1850:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_chat_message
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov dword [esp+0x8], 0x96
	mov [esp+0x4], eax
	lea ecx, [ebp-0xce]
	mov [esp], ecx
	call Q_strncpyz
	movzx eax, byte [ebp-0xce]
	test al, al
	jnz CG_DeployServerCommand_730
	xor eax, eax
CG_DeployServerCommand_1310:
	mov byte [ebp+eax-0xce], 0x0
	lea edx, [ebp-0xce]
	mov eax, edi
	call CG_AddToTeamChat
	lea ebx, [ebp-0xce]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xe
	call Com_Printf
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2260:
	mov [esp], edi
	call CL_IsFirstActiveLocalClient
	test al, al
	jz CG_DeployServerCommand_120
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg CG_DeployServerCommand_740
	mov eax, _cstring_null
CG_DeployServerCommand_1330:
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CG_DeployServerCommand_750
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1840:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x3c0]
	mov [esp+0x4], ebx
	cvtsd2ss xmm0, [ebp-0x3c0]
	movss [esp], xmm0
	call SND_FadeAllSounds
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2240:
	mov [esp], edi
	call CL_IsFirstActiveLocalClient
	test al, al
	jz CG_DeployServerCommand_120
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg CG_DeployServerCommand_760
	mov eax, _cstring_null
CG_DeployServerCommand_1320:
	mov [esp], eax
	call atoi
	xor ebx, ebx
	test eax, eax
	setnz bl
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CG_DeployServerCommand_770
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1860:
	mov [esp], eax
	call CL_PickSoundAlias
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], edi
	call SND_PlayMusicAlias
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2280:
	cmp edx, 0x2
	jz CG_DeployServerCommand_780
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_localsound1
	mov dword [esp], 0x9
	call Com_PrintError
CG_DeployServerCommand_1350:
	mov [esp], edi
	call CL_DumpReliableCommands
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_2180:
	sub edx, 0x1
	jle CG_DeployServerCommand_790
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1470:
	lea ebx, [ebp-0x2ce]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_bold_game_messag
	jmp CG_DeployServerCommand_800
CG_DeployServerCommand_2200:
	sub edx, 0x1
	jle CG_DeployServerCommand_810
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
CG_DeployServerCommand_1670:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_team_chat_messag
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov dword [esp+0x8], 0x96
	mov [esp+0x4], eax
	lea esi, [ebp-0xce]
	mov [esp], esi
	call Q_strncpyz
	movzx eax, byte [ebp-0xce]
	test al, al
	jnz CG_DeployServerCommand_820
	xor eax, eax
CG_DeployServerCommand_1170:
	mov byte [ebp+eax-0xce], 0x0
	lea edx, [ebp-0xce]
	mov eax, edi
	call CG_AddToTeamChat
	lea eax, [ebp-0xce]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xe
	call Com_Printf
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_570:
	mov eax, [eax+0xe9f50]
	jmp CG_DeployServerCommand_830
CG_DeployServerCommand_560:
	mov eax, ebx
	jmp CG_DeployServerCommand_840
CG_DeployServerCommand_540:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x2c]
	jmp CG_DeployServerCommand_850
CG_DeployServerCommand_530:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x28]
	jmp CG_DeployServerCommand_860
CG_DeployServerCommand_520:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x24]
	jmp CG_DeployServerCommand_870
CG_DeployServerCommand_510:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x20]
	jmp CG_DeployServerCommand_880
CG_DeployServerCommand_500:
	mov eax, [edx+eax*4+0x64]
	mov ecx, [ebp-0x30c]
	mov eax, [ecx+eax+0x1c]
	jmp CG_DeployServerCommand_890
CG_DeployServerCommand_490:
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x30c]
	mov eax, [edx+eax+0x18]
	jmp CG_DeployServerCommand_900
CG_DeployServerCommand_660:
	mov dword [esp+0x4], _cstring_hud_drawhud
	lea ecx, [ebp-0xce]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz CG_DeployServerCommand_910
	mov [esp], ebx
	call atoi
	mov edx, cgArray
	mov [edx+0x502f4], eax
	jmp CG_DeployServerCommand_920
CG_DeployServerCommand_550:
	mov eax, [ebp-0x3b4]
	add eax, 0x8d2
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	mov [esi+0x4f8fc], eax
	jmp CG_DeployServerCommand_930
CG_DeployServerCommand_910:
	mov dword [esp+0x4], _cstring_g_scriptmainmenu
	lea eax, [ebp-0xce]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CG_DeployServerCommand_940
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov eax, cgArray
	add eax, 0x4f7a1
	mov [esp], eax
	call Q_strncpyz
	jmp CG_DeployServerCommand_920
CG_DeployServerCommand_940:
	mov [esp+0x4], ebx
	lea edx, [ebp-0xce]
	mov [esp], edx
	call Cvar_SetFromStringByName
	jmp CG_DeployServerCommand_920
CG_DeployServerCommand_60:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp CG_DeployServerCommand_950
CG_DeployServerCommand_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp CG_DeployServerCommand_960
CG_DeployServerCommand_40:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_970
CG_DeployServerCommand_460:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp CG_DeployServerCommand_980
CG_DeployServerCommand_450:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp CG_DeployServerCommand_990
CG_DeployServerCommand_440:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_1000
CG_DeployServerCommand_280:
	mov eax, [ebp-0x418]
	cmp ebx, [eax+0x4f8dc]
	jz CG_DeployServerCommand_1010
	mov edx, eax
	mov dword [ebp-0x2f0], 0x0
CG_DeployServerCommand_1030:
	add dword [ebp-0x2f0], 0x1
	cmp ecx, [ebp-0x2f0]
	jz CG_DeployServerCommand_1020
	mov eax, [edx+0x4f904]
	add edx, 0x28
	cmp ebx, eax
	jnz CG_DeployServerCommand_1030
CG_DeployServerCommand_1810:
	mov ecx, [ebp-0x2f0]
	lea eax, [ecx+ecx*4]
	mov ebx, [ebp-0x418]
	mov [ebx+eax*8+0x4f8e0], esi
	test ecx, ecx
	jle CG_DeployServerCommand_1040
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
CG_DeployServerCommand_1830:
	lea esi, [ebx-0x1]
	mov [ebp-0x2f4], esi
	lea eax, [esi+esi*4]
	lea esi, [edx+eax*8+0x4f8dc]
	lea eax, [ebx+ebx*4]
	lea ecx, [edx+eax*8+0x4f8dc]
	mov eax, [ecx+0x10]
	mov edx, [esi+0x10]
	cmp eax, edx
	jz CG_DeployServerCommand_1050
	cmp eax, 0x3
	jz CG_DeployServerCommand_1060
	cmp edx, 0x3
	jz CG_DeployServerCommand_1060
CG_DeployServerCommand_1050:
	mov eax, [esi+0x4]
	cmp [ecx+0x4], eax
	jg CG_DeployServerCommand_1070
	jl CG_DeployServerCommand_1060
	mov eax, [ecx+0xc]
	cmp eax, [esi+0xc]
	jl CG_DeployServerCommand_1070
CG_DeployServerCommand_1060:
	mov [ebp-0x2f4], ebx
CG_DeployServerCommand_1820:
	mov ecx, [ebp-0x418]
	mov eax, [ecx+0x4f8a8]
	sub eax, 0x1
	cmp [ebp-0x2f4], eax
	jge CG_DeployServerCommand_120
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
CG_DeployServerCommand_1100:
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
	jz CG_DeployServerCommand_1080
	cmp eax, 0x3
	jz CG_DeployServerCommand_120
	cmp edx, 0x3
	jz CG_DeployServerCommand_120
CG_DeployServerCommand_1080:
	mov eax, [ebx+0x4]
	cmp [ecx+0x4], eax
	jg CG_DeployServerCommand_1090
	jl CG_DeployServerCommand_120
	mov eax, [ecx+0xc]
	cmp eax, [ebx+0xc]
	jge CG_DeployServerCommand_120
CG_DeployServerCommand_1090:
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
	jge CG_DeployServerCommand_120
	mov edx, [ebp-0x350]
	jmp CG_DeployServerCommand_1100
CG_DeployServerCommand_300:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_1110
CG_DeployServerCommand_470:
	mov edx, cgArray
	mov [ebp-0x418], edx
	mov ecx, edx
	mov ebx, edx
CG_DeployServerCommand_1270:
	add ebx, 0x10
CG_DeployServerCommand_1130:
	mov edx, [ecx+0x4f8cc]
	test edx, edx
	jle CG_DeployServerCommand_1120
	mov eax, [ecx+0x4f8bc]
	test eax, eax
	jle CG_DeployServerCommand_1120
	mov esi, edx
	cdq
	idiv esi
	mov [ecx+0x4f8bc], eax
CG_DeployServerCommand_1140:
	add ecx, 0x4
	cmp ebx, ecx
	jnz CG_DeployServerCommand_1130
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1120:
	mov dword [ecx+0x4f8bc], 0x0
	jmp CG_DeployServerCommand_1140
CG_DeployServerCommand_820:
	xor ecx, ecx
	lea edx, [ebp-0xce]
CG_DeployServerCommand_1160:
	cmp al, 0x19
	jz CG_DeployServerCommand_1150
	mov [ebp+ecx-0xce], al
	add ecx, 0x1
CG_DeployServerCommand_1150:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz CG_DeployServerCommand_1160
	mov eax, ecx
	jmp CG_DeployServerCommand_1170
CG_DeployServerCommand_100:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp CG_DeployServerCommand_1180
CG_DeployServerCommand_90:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x1c]
	jmp CG_DeployServerCommand_1190
CG_DeployServerCommand_80:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x20]
	jmp CG_DeployServerCommand_1200
CG_DeployServerCommand_70:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp CG_DeployServerCommand_1210
CG_DeployServerCommand_260:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_1220
CG_DeployServerCommand_630:
	lea eax, [eax+0x7b2]
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	mov [ebp-0x354], eax
	cmp byte [eax], 0x0
	jz CG_DeployServerCommand_1230
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jle CG_DeployServerCommand_1240
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	test eax, eax
	jz CG_DeployServerCommand_1240
	cmp byte [eax], 0x0
	jz CG_DeployServerCommand_1240
	mov byte [ebp-0x355], 0x0
	xor eax, eax
CG_DeployServerCommand_1440:
	mov [esp+0x8], eax
	mov eax, [ebp-0x354]
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_PopupScriptMenu
	test eax, eax
	jnz CG_DeployServerCommand_120
	lea eax, [edi+edi*8]
	lea esi, [eax*8]
	cmp byte [esi+cg_waitingScriptMenu], 0x0
	jz CG_DeployServerCommand_1250
	lea edx, [esi+cg_waitingScriptMenu]
	mov [ebp-0x414], edx
	mov [esp+0x4], edx
	mov ecx, [ebp-0x354]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jz CG_DeployServerCommand_120
	mov eax, [esi+cg_waitingScriptMenu+0x40]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cmd_mr_i_noop
	call va
	mov [esp+0x4], eax
	mov [esp], edi
	call Cbuf_AddText
CG_DeployServerCommand_1890:
	mov dword [esp+0x8], 0x40
	mov edx, [ebp-0x354]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x414]
	mov [esp], ecx
	call Q_strncpyz
	mov [esi+cg_waitingScriptMenu+0x40], ebx
	movzx ebx, byte [ebp-0x355]
	mov [esi+cg_waitingScriptMenu+0x44], bl
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_690:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	jbe CG_DeployServerCommand_1260
	mov dword [esp+0xc], 0x100
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_localsound2
	mov dword [esp], 0x9
	call Com_PrintError
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_580:
	mov ecx, [ebp-0x418]
	mov ebx, cgArray
	jmp CG_DeployServerCommand_1270
CG_DeployServerCommand_180:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1280
CG_DeployServerCommand_730:
	xor ecx, ecx
	lea edx, [ebp-0xce]
CG_DeployServerCommand_1300:
	cmp al, 0x19
	jz CG_DeployServerCommand_1290
	mov [ebp+ecx-0xce], al
	add ecx, 0x1
CG_DeployServerCommand_1290:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz CG_DeployServerCommand_1300
	mov eax, ecx
	jmp CG_DeployServerCommand_1310
CG_DeployServerCommand_760:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_1320
CG_DeployServerCommand_740:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_1330
CG_DeployServerCommand_780:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edx, eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	jbe CG_DeployServerCommand_1340
	mov dword [esp+0xc], 0x100
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_localsound3
	mov dword [esp], 0x9
	call Com_PrintError
	jmp CG_DeployServerCommand_1350
CG_DeployServerCommand_710:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jg CG_DeployServerCommand_1360
	mov eax, _cstring_null
CG_DeployServerCommand_1760:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x390]
	cvtsd2ss xmm0, [ebp-0x390]
	movss [ebp-0x378], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg CG_DeployServerCommand_1370
	mov eax, _cstring_null
CG_DeployServerCommand_1750:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x388]
	cvtsd2ss xmm0, [ebp-0x388]
	movss [ebp-0x374], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg CG_DeployServerCommand_1380
	mov eax, _cstring_null
CG_DeployServerCommand_1740:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x380]
	cvtsd2ss xmm0, [ebp-0x380]
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg CG_DeployServerCommand_1390
	mov ebx, _cstring_null
CG_DeployServerCommand_1730:
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
	call SND_SetEnvironmentEffects
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_210:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg CG_DeployServerCommand_1400
	mov eax, _cstring_null
CG_DeployServerCommand_1800:
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
	call SND_DeactivateEnvironmentEffects
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_220:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg CG_DeployServerCommand_1410
	mov eax, _cstring_null
CG_DeployServerCommand_1880:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg CG_DeployServerCommand_1420
	mov eax, _cstring_null
CG_DeployServerCommand_1870:
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
	call BG_GetShellshockParms
	mov [esp+0x8], ebx
	add eax, 0x144
	mov [esp+0x4], eax
	mov [esp], edi
	call SND_SetChannelVolumes
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_240:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg CG_DeployServerCommand_1430
	mov eax, _cstring_null
CG_DeployServerCommand_1790:
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
	call SND_DeactivateChannelVolumes
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1240:
	mov byte [ebp-0x355], 0x1
	mov eax, 0x1
	jmp CG_DeployServerCommand_1440
CG_DeployServerCommand_1260:
	lea eax, [edx+0x53e]
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_StopClientSoundAliasByName
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_250:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1450
CG_DeployServerCommand_610:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1460
CG_DeployServerCommand_790:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1470
CG_DeployServerCommand_230:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1480
CG_DeployServerCommand_410:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1490
CG_DeployServerCommand_330:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1500
CG_DeployServerCommand_380:
	cmp ebx, 0x4
	jz CG_DeployServerCommand_1510
	cmp ebx, 0x5
	jz CG_DeployServerCommand_1520
	cmp ebx, 0xd
	jz CG_DeployServerCommand_1530
	cmp ebx, 0xf
	jz CG_DeployServerCommand_1540
	cmp ebx, 0x10
	jz CG_DeployServerCommand_1550
	cmp ebx, 0xe
	jz CG_DeployServerCommand_1560
	cmp ebx, 0xc
	jz CG_DeployServerCommand_1570
	cmp ebx, 0xb
	jz CG_DeployServerCommand_1580
	cmp ebx, 0x9
	jz CG_DeployServerCommand_1590
	lea eax, [ebx-0x33e]
	mov [ebp-0x3b0], eax
	cmp eax, 0x1ff
	jbe CG_DeployServerCommand_1600
	lea eax, [ebx-0x63e]
	mov [ebp-0x3ac], eax
	cmp eax, 0x63
	jbe CG_DeployServerCommand_1610
	lea eax, [ebx-0x7a2]
	mov [ebp-0x3a8], eax
	cmp eax, 0xf
	ja CG_DeployServerCommand_1620
	cmp byte [esi], 0x0
	jz CG_DeployServerCommand_120
	mov [esp], esi
	call BG_LoadShellShockDvars
	test eax, eax
	jz CG_DeployServerCommand_120
	mov edx, [ebp-0x3a8]
	mov [esp], edx
	call BG_GetShellshockParms
	mov [esp], eax
	call BG_SetShellShockParmsFromDvars
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_320:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1630
CG_DeployServerCommand_640:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1640
CG_DeployServerCommand_620:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1650
CG_DeployServerCommand_190:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1660
CG_DeployServerCommand_810:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1670
CG_DeployServerCommand_270:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1680
CG_DeployServerCommand_30:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1690
CG_DeployServerCommand_430:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1700
CG_DeployServerCommand_310:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1710
CG_DeployServerCommand_420:
	mov dword [eax+0x502e8], 0xffffffff
	jmp CG_DeployServerCommand_1720
CG_DeployServerCommand_370:
	mov [esp], edi
	call CG_ParseServerInfo
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_340:
	mov [esp], edi
	call CG_SetupWeaponDef
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1390:
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x8]
	jmp CG_DeployServerCommand_1730
CG_DeployServerCommand_1380:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp CG_DeployServerCommand_1740
CG_DeployServerCommand_1370:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp CG_DeployServerCommand_1750
CG_DeployServerCommand_1360:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0xc]
	jmp CG_DeployServerCommand_1760
CG_DeployServerCommand_700:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1770
CG_DeployServerCommand_1230:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_server_tried_to_1
	jmp CG_DeployServerCommand_1780
CG_DeployServerCommand_1430:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_1790
CG_DeployServerCommand_1400:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_1800
CG_DeployServerCommand_1010:
	mov dword [ebp-0x2f0], 0x0
	jmp CG_DeployServerCommand_1810
CG_DeployServerCommand_1070:
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
	jz CG_DeployServerCommand_1820
	mov ebx, [ebp-0x2f4]
	mov edx, [ebp-0x418]
	jmp CG_DeployServerCommand_1830
CG_DeployServerCommand_750:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1840
CG_DeployServerCommand_1340:
	lea eax, [edx+0x53e]
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_PlayClientSoundAliasByName
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_720:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1850
CG_DeployServerCommand_770:
	mov eax, _cstring_null
	jmp CG_DeployServerCommand_1860
CG_DeployServerCommand_1420:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp CG_DeployServerCommand_1870
CG_DeployServerCommand_1410:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp CG_DeployServerCommand_1880
CG_DeployServerCommand_1250:
	lea eax, [esi+cg_waitingScriptMenu]
	mov [ebp-0x414], eax
	jmp CG_DeployServerCommand_1890
CG_DeployServerCommand_350:
	mov [esp], edi
	call CG_RegisterItems
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_360:
	mov [esp], edi
	call CG_StartAmbient
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1040:
	mov [ebp-0x2f4], ecx
	jmp CG_DeployServerCommand_1820
CG_DeployServerCommand_1620:
	lea eax, [ebx-0x8d3]
	cmp eax, 0x7
	jbe CG_DeployServerCommand_1900
	lea eax, [ebx-0x8db]
	cmp eax, 0xe
	jbe CG_DeployServerCommand_1900
	lea eax, [ebx-0x7d2]
	cmp eax, 0xff
	jbe CG_DeployServerCommand_1910
	cmp ebx, 0x336
	jz CG_DeployServerCommand_1920
	cmp ebx, 0x337
	jz CG_DeployServerCommand_1930
	cmp ebx, 0x338
	jz CG_DeployServerCommand_1940
	cmp ebx, 0x339
	jnz CG_DeployServerCommand_120
	mov [esp], edi
	call CG_VisionSetConfigString_Night
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1600:
	mov [esp], esi
	call R_RegisterModel
	mov edx, cgsArray
	mov ecx, [ebp-0x3b0]
	mov [edx+ecx*4+0x294], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1570:
	mov [esp], edi
	call CL_ParseMapCenter
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1560:
	mov dword [ebp-0x3a4], 0x0
	xor edi, edi
CG_DeployServerCommand_1990:
	lea ebx, [esi+edi]
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call UI_GetMapDisplayNameFromPartialLoadNameMatch
	test eax, eax
	jz CG_DeployServerCommand_1950
	movzx edx, byte [eax]
	test dl, dl
	jz CG_DeployServerCommand_1960
	lea ecx, [ebp-0x1ce]
	add ecx, [ebp-0x3a4]
	xor ebx, ebx
CG_DeployServerCommand_1970:
	mov [ecx], dl
	add ebx, 0x1
	movzx edx, byte [ebx+eax]
	add ecx, 0x1
	test dl, dl
	jnz CG_DeployServerCommand_1970
	add [ebp-0x3a4], ebx
CG_DeployServerCommand_1960:
	add edi, [ebp-0x1c]
	lea ebx, [edi+esi]
CG_DeployServerCommand_1950:
	movzx eax, byte [ebx]
	mov edx, [ebp-0x3a4]
	mov [ebp+edx-0x1ce], al
	add edx, 0x1
	mov [ebp-0x3a4], edx
	cmp byte [ebx], 0x0
	jz CG_DeployServerCommand_1980
	add edi, 0x1
	cmp edi, 0xff
	jle CG_DeployServerCommand_1990
CG_DeployServerCommand_1980:
	mov byte [ebp-0xcf], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_vote_string
	lea ecx, [ebp-0x1ce]
	mov [esp], ecx
	call SEH_LocalizeTextMessage
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov eax, cgsArray
	add eax, 0x194
	mov [esp], eax
	call Q_strncpyz
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1550:
	mov [esp], esi
	call atoi
	mov edx, cgsArray
	mov [edx+0x190], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1540:
	mov [esp], esi
	call atoi
	mov edx, cgsArray
	mov [edx+0x18c], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1530:
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
	jnz CG_DeployServerCommand_120
	mov eax, clients
	mov eax, [eax+0x256b4]
	cmp eax, [ebp-0x20]
	jnz CG_DeployServerCommand_120
	mov eax, [ebp-0x1c]
	mov [ebx+0x188], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1520:
	mov [esp], esi
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b4], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1510:
	mov [esp], esi
	call atoi
	mov edx, cgArray
	mov [edx+0x4f8b0], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1930:
	mov [esp], edi
	call CG_MiniMapChanged
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1920:
	mov [esp], edi
	call CG_NorthDirectionChanged
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1910:
	mov [esp+0x4], ebx
	mov [esp], edi
	call CL_GetConfigString
	cmp byte [eax], 0x0
	jz CG_DeployServerCommand_120
CG_DeployServerCommand_2000:
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1900:
	mov [esp+0x4], ebx
	mov [esp], edi
	call CL_GetConfigString
	jmp CG_DeployServerCommand_2000
CG_DeployServerCommand_1590:
	mov [esp], edi
	call CG_ParseFog
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1940:
	mov [esp], edi
	call CG_VisionSetConfigString_Naked
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1610:
	mov [esp], esi
	call FX_Register
	mov edx, cgsArray
	mov ecx, [ebp-0x3ac]
	mov [edx+ecx*4+0xa94], eax
	jmp CG_DeployServerCommand_120
CG_DeployServerCommand_1580:
	mov dword [esp+0x4], 0xb
	mov [esp], edi
	call CL_GetConfigString
	mov [esp], eax
	call atoi
	mov edx, cgsArray
	mov [edx+0x184], eax
	jmp CG_DeployServerCommand_120
	nop
	
	
CG_DeployServerCommand_jumptab_0:
	dd CG_DeployServerCommand_120
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_2010
	dd CG_DeployServerCommand_2020
	dd CG_DeployServerCommand_2030
	dd CG_DeployServerCommand_2040
	dd CG_DeployServerCommand_2050
	dd CG_DeployServerCommand_2060
	dd CG_DeployServerCommand_2070
	dd CG_DeployServerCommand_2080
	dd CG_DeployServerCommand_2090
	dd CG_DeployServerCommand_2100
	dd CG_DeployServerCommand_2110
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_2120
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_2130
	dd CG_DeployServerCommand_2140
	dd CG_DeployServerCommand_2150
	dd CG_DeployServerCommand_2160
	dd CG_DeployServerCommand_2170
	dd CG_DeployServerCommand_2170
	dd CG_DeployServerCommand_2180
	dd CG_DeployServerCommand_2190
	dd CG_DeployServerCommand_2200
	dd CG_DeployServerCommand_2210
	dd CG_DeployServerCommand_2220
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_20
	dd CG_DeployServerCommand_2230
	dd CG_DeployServerCommand_2240
	dd CG_DeployServerCommand_2250
	dd CG_DeployServerCommand_2260
	dd CG_DeployServerCommand_2270
	dd CG_DeployServerCommand_2280
	dd CG_DeployServerCommand_2290
	dd CG_DeployServerCommand_2300
	dd CG_DeployServerCommand_2310


;CG_ParseFog(int)
CG_ParseFog:
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
	call CL_GetConfigString
	mov [ebp-0xc], eax
	lea ebx, [ebp-0xc]
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atof
	fstp qword [ebp-0x48]
	cvtsd2ss xmm0, [ebp-0x48]
	movss [ebp-0x1c], xmm0
	mov [esp], ebx
	call Com_Parse
	test eax, eax
	jz CG_ParseFog_10
	cmp byte [eax], 0x0
	jnz CG_ParseFog_20
CG_ParseFog_10:
	cvttss2si eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call R_SwitchFog
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
CG_ParseFog_20:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atof
	fstp qword [ebp-0x28]
	mov [esp], ebx
	call Com_Parse
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
	call R_SetFogFromServer
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], 0x1
	call R_SwitchFog
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CG_MapRestart(int, int)
CG_MapRestart:
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
	jnz CG_MapRestart_10
CG_MapRestart_80:
	mov [esp], ebx
	call CG_ClearCenterPrint
	mov esi, cgArray
	mov dword [esi+0x50310], 0x0
	mov dword [esi+0x50328], 0x1
	mov [esp], ebx
	call CG_InitLocalEntities
	mov [esp], ebx
	call FX_KillAllEffects
	mov [esp], ebx
	call FX_ShutdownSystem
	mov [esp], ebx
	call DynEntCl_Shutdown
	mov [esp], ebx
	call CL_IsLastActiveLocalClient
	test al, al
	jnz CG_MapRestart_20
CG_MapRestart_70:
	mov [esp], ebx
	call DynEntCl_InitEntities
	lea eax, [esi+0x49388]
	mov [esp], eax
	call R_InitPrimaryLights
	mov [esp], ebx
	call R_ClearShadowedPrimaryLightHistory
	mov [esp], ebx
	call FX_InitSystem
	mov esi, [esi+0x20]
	mov [ebp-0x2c], esi
	mov edi, esi
	mov eax, [esi+0x2f70]
	test eax, eax
	jle CG_MapRestart_30
	xor esi, esi
	mov ecx, edi
	add ecx, 0x2f78
	jmp CG_MapRestart_40
CG_MapRestart_50:
	add esi, 0x1
	add ecx, 0xf4
	mov eax, [ebp-0x2c]
	cmp esi, [eax+0x2f70]
	jge CG_MapRestart_30
CG_MapRestart_40:
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
	ja CG_MapRestart_50
	mov dword [edx+0x44], 0x0
	mov dword [edx+0x40], 0x0
	add esi, 0x1
	add ecx, 0xf4
	mov eax, [ebp-0x2c]
	cmp esi, [eax+0x2f70]
	jl CG_MapRestart_40
CG_MapRestart_30:
	mov [esp], ebx
	call CG_VisionSetConfigString_Naked
	mov [esp], ebx
	call CG_VisionSetConfigString_Night
	mov [esp], ebx
	call DynEntCl_Shutdown
	mov eax, cgsArray
	mov dword [eax+0x188], 0x0
	mov esi, cgArray
	mov dword [esi+0x46134], 0x1
	mov dword [esp], 0x0
	call SND_StopSounds
	mov [esp], ebx
	call CG_StartAmbient
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
	call Cvar_SetBool
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call CL_SetStance
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call CL_SetADS
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz CG_MapRestart_60
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call UI_ClosePopupScriptMenu
	lea eax, [ebx+ebx*8]
	mov byte [eax*8+cg_waitingScriptMenu], 0x0
	mov [esp], ebx
	call UI_CloseAllMenus
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
CG_MapRestart_60:
	mov [esp], ebx
	call CG_ScoresUp
	mov byte [esi+0x4f3a1], 0x0
	mov [esp], ebx
	call CL_SyncTimes
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CG_StartClientSideEffects
CG_MapRestart_20:
	call Phys_Shutdown
	call Phys_Init
	jmp CG_MapRestart_70
CG_MapRestart_10:
	mov dword [esp+0x4], _cstring_cg_maprestart
	mov dword [esp], 0xe
	call Com_Printf
	jmp CG_MapRestart_80
	nop


;CG_ParseCodInfo(int)
CG_ParseCodInfo:
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
	jz CG_ParseCodInfo_10
CG_ParseCodInfo_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ParseCodInfo_10:
	mov esi, 0x14
	jmp CG_ParseCodInfo_20
CG_ParseCodInfo_40:
	lea eax, [esi+0x80]
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cvar_SetFromStringByName
	add esi, 0x1
	cmp esi, 0x94
	jz CG_ParseCodInfo_30
CG_ParseCodInfo_20:
	mov [esp+0x4], esi
	mov [esp], edi
	call CL_GetConfigString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz CG_ParseCodInfo_40
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_MenuShowNotify(int, int)
CG_MenuShowNotify:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp eax, 0x6
	ja CG_MenuShowNotify_10
	jmp dword [eax*4+CG_MenuShowNotify_jumptab_0]
CG_MenuShowNotify_90:
	mov edi, cgArray
	mov eax, [edi+0x46128]
	cmp [edi+0x504bc], eax
	jl CG_MenuShowNotify_20
CG_MenuShowNotify_70:
	cmp [edi+0x504c8], eax
	jl CG_MenuShowNotify_30
CG_MenuShowNotify_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_MenuShowNotify_80:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x504b8], edx
	jge CG_MenuShowNotify_10
	mov [eax+0x504b8], edx
	call CL_GetLocalClientActiveCount
	mov edx, _cstring_health
	sub eax, 0x1
	mov eax, _cstring_health_mp
	jmp CG_MenuShowNotify_40
CG_MenuShowNotify_130:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x504c4], edx
	jge CG_MenuShowNotify_10
	mov [eax+0x504c4], edx
	call CL_GetLocalClientActiveCount
	mov edx, _cstring_sprintmeter
	sub eax, 0x1
	mov eax, _cstring_sprintmeter_mp
	cmovnz edx, eax
	mov [ebp+0xc], edx
	jmp CG_MenuShowNotify_50
CG_MenuShowNotify_120:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x502e4], edx
	jge CG_MenuShowNotify_10
	mov [eax+0x502e4], edx
	mov dword [ebp+0xc], _cstring_objectiveinfo
	jmp CG_MenuShowNotify_50
CG_MenuShowNotify_110:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x504c0], edx
	jge CG_MenuShowNotify_10
	mov [eax+0x504c0], edx
	call CL_GetLocalClientActiveCount
	mov edx, _cstring_stance
	sub eax, 0x1
	mov eax, _cstring_stance_mp
	jmp CG_MenuShowNotify_40
CG_MenuShowNotify_100:
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp [eax+0x504b4], edx
	jge CG_MenuShowNotify_10
	mov [eax+0x504b4], edx
	call CL_GetLocalClientActiveCount
	mov edx, _cstring_compass
	sub eax, 0x1
	mov eax, _cstring_compass_mp
CG_MenuShowNotify_40:
	cmovnz edx, eax
	mov [ebp+0xc], edx
CG_MenuShowNotify_50:
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
	jmp Menus_ShowByName
CG_MenuShowNotify_30:
	mov [edi+0x504c8], eax
	call CL_GetLocalClientActiveCount
	mov edx, _cstring_offhandinfo
	sub eax, 0x1
	mov eax, _cstring_offhandinfo_mp
	cmovnz edx, eax
	mov [ebp+0xc], edx
	jmp CG_MenuShowNotify_50
CG_MenuShowNotify_20:
	mov [edi+0x504bc], eax
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz CG_MenuShowNotify_60
	mov dword [esp+0x4], _cstring_weaponinfo_mp
	lea edx, [esi+esi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, esi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_ShowByName
	mov eax, [edi+0x46128]
	jmp CG_MenuShowNotify_70
CG_MenuShowNotify_60:
	lea eax, [esi+esi*4]
	shl eax, 0x7
	mov ebx, eax
	sub ebx, esi
	lea ebx, [eax+ebx*8]
	add ebx, cgDC
	mov dword [esp+0x4], _cstring_weaponinfo
	mov [esp], ebx
	call Menus_ShowByName
	mov dword [esp+0x4], _cstring_weaponinfo_lowde
	mov [esp], ebx
	call Menus_ShowByName
	mov eax, [edi+0x46128]
	jmp CG_MenuShowNotify_70
	nop
	add [eax], al
	
	
CG_MenuShowNotify_jumptab_0:
	dd CG_MenuShowNotify_80
	dd CG_MenuShowNotify_90
	dd CG_MenuShowNotify_100
	dd CG_MenuShowNotify_110
	dd CG_MenuShowNotify_90
	dd CG_MenuShowNotify_120
	dd CG_MenuShowNotify_130


;CG_CloseScriptMenu(int, unsigned char)
CG_CloseScriptMenu:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call UI_ClosePopupScriptMenu
	lea ebx, [ebx+ebx*8]
	mov byte [ebx*8+cg_waitingScriptMenu], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CG_ParseServerInfo(int)
CG_ParseServerInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov esi, eax
	mov dword [esp+0x4], _cstring_sv_hostname
	mov [esp], eax
	call Info_ValueForKey
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov edi, cgsArray
	lea eax, [edi+0x40]
	mov [esp], eax
	call strncpy
	mov dword [esp+0x4], _cstring_g_gametype
	mov [esp], esi
	call Info_ValueForKey
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea ebx, [edi+0x20]
	mov [esp], ebx
	call strncpy
	mov eax, [edi+0x1c]
	test eax, eax
	jnz CG_ParseServerInfo_10
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_g_gametype
	call Cvar_SetStringByName
CG_ParseServerInfo_10:
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov [esp], esi
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov [edi+0x140], eax
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], esi
	call Info_ValueForKey
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x40
	lea eax, [edi+0x144]
	mov [esp], eax
	call Com_GetBspFilename
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_SetConfigValues(int)
CG_SetConfigValues:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CL_ParseMapCenter
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call CL_GetConfigString
	mov [esp], eax
	call atoi
	mov ebx, cgArray
	mov [ebx+0x4f8b0], eax
	mov dword [esp+0x4], 0x5
	mov [esp], esi
	call CL_GetConfigString
	mov [esp], eax
	call atoi
	mov [ebx+0x4f8b4], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0x46128]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call R_SwitchFog
	mov edi, 0x7b2
	jmp CG_SetConfigValues_10
CG_SetConfigValues_30:
	add edi, 0x1
	cmp edi, 0x7d2
	jz CG_SetConfigValues_20
CG_SetConfigValues_10:
	mov [esp+0x4], edi
	mov [esp], esi
	call CL_GetConfigString
	mov ebx, eax
	cmp byte [eax], 0x0
	jz CG_SetConfigValues_30
	mov dword [esp+0x8], 0x7
	mov [esp+0x4], eax
	mov [esp], esi
	call Load_ScriptMenu
	test eax, eax
	jnz CG_SetConfigValues_30
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0x2
	call Com_Error
	add edi, 0x1
	cmp edi, 0x7d2
	jnz CG_SetConfigValues_10
CG_SetConfigValues_20:
	mov ebx, 0x8d3
CG_SetConfigValues_40:
	mov [esp+0x4], ebx
	mov [esp], esi
	call CL_GetConfigString
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	add ebx, 0x1
	cmp ebx, 0x8db
	jnz CG_SetConfigValues_40
CG_SetConfigValues_50:
	mov [esp+0x4], ebx
	mov [esp], esi
	call CL_GetConfigString
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	add ebx, 0x1
	cmp ebx, 0x8ea
	jnz CG_SetConfigValues_50
	mov bx, 0x7d3
	jmp CG_SetConfigValues_60
CG_SetConfigValues_80:
	add ebx, 0x1
	cmp ebx, 0x8d2
	jz CG_SetConfigValues_70
CG_SetConfigValues_60:
	mov [esp+0x4], ebx
	mov [esp], esi
	call CL_GetConfigString
	cmp byte [eax], 0x0
	jz CG_SetConfigValues_80
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	add ebx, 0x1
	cmp ebx, 0x8d2
	jnz CG_SetConfigValues_60
CG_SetConfigValues_70:
	mov dword [esp+0x4], 0xb
	mov [esp], esi
	call CL_GetConfigString
	mov [esp], eax
	call atoi
	mov edx, cgsArray
	mov [edx+0x184], eax
	mov [esp], esi
	call CG_VisionSetConfigString_Naked
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CG_VisionSetConfigString_Night
	nop


;CG_ExecuteNewServerCommands(int, int)
CG_ExecuteNewServerCommands:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ebx, cgsArray
CG_ExecuteNewServerCommands_20:
	mov eax, [ebx+0x14]
	cmp eax, edi
	jge CG_ExecuteNewServerCommands_10
CG_ExecuteNewServerCommands_30:
	add eax, 0x1
	mov [ebx+0x14], eax
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_CGameNeedsServerCommand
	test eax, eax
	jz CG_ExecuteNewServerCommands_20
	mov eax, esi
	call CG_DeployServerCommand
	call Cmd_EndTokenizedString
	mov eax, [ebx+0x14]
	cmp eax, edi
	jl CG_ExecuteNewServerCommands_30
CG_ExecuteNewServerCommands_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_CheckOpenWaitingScriptMenu(int)
CG_CheckOpenWaitingScriptMenu:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	lea ebx, [eax*8]
	cmp byte [ebx+cg_waitingScriptMenu], 0x0
	jnz CG_CheckOpenWaitingScriptMenu_10
CG_CheckOpenWaitingScriptMenu_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_CheckOpenWaitingScriptMenu_10:
	movzx eax, byte [ebx+cg_waitingScriptMenu+0x44]
	mov [esp+0x8], eax
	lea eax, [ebx+cg_waitingScriptMenu]
	mov [esp+0x4], eax
	mov [esp], edx
	call UI_PopupScriptMenu
	test eax, eax
	jz CG_CheckOpenWaitingScriptMenu_20
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

