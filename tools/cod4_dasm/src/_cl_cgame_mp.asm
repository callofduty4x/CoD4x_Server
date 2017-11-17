;Imports of cl_cgame_mp:
	extern clients
	extern CG_RegisterSounds
	extern clientUIActives
	extern clientConnections
	extern UI_CloseAll
	extern cls
	extern Con_TimeJumped
	extern cl_activeAction
	extern Cbuf_AddText
	extern Cvar_SetString
	extern Sys_Milliseconds
	extern SND_ErrorCleanup
	extern Con_Close
	extern Info_ValueForKey
	extern Q_strncpyz
	extern Cvar_SetStringByName
	extern Com_GetBspFilename
	extern CL_WasMapAlreadyLoaded
	extern Com_Printf
	extern SCR_UpdateScreen
	extern cl_serverLoadingMap
	extern CG_Init
	extern R_EndRegistration
	extern Com_TouchMemory
	extern Con_ClearNotify
	extern Con_InitMessageBuffer
	extern Con_InitGameMsgChannels
	extern useFastFile
	extern DB_SyncXAssets
	extern CL_ControllerIndexFromClientNum
	extern Cmd_ExecuteSingleCommand
	extern Com_InitDObj
	extern DB_AddUserMapDir
	extern DB_LoadXAssets
	extern CM_LoadMap
	extern com_sv_running
	extern CM_LinkWorld
	extern Com_LoadWorld
	extern Com_LoadBsp
	extern Com_Error
	extern memcpy
	extern com_statmon
	extern StatMon_Warning
	extern Com_DPrintf
	extern ColorIndex
	extern cgArray
	extern R_RenderScene
	extern Cvar_GetUnpackedColorByName
	extern R_UpdateTeamColors
	extern CL_ReadDemoMessage
	extern sv_paused
	extern cl_freezeDemo
	extern cl_showTimeDelta
	extern com_timescaleValue
	extern cl_paused
	extern Con_TimeNudged
	extern Q_stricmp
	extern Cvar_VariableIntegerValue
	extern va
	extern FS_FOpenFileWrite
	extern FS_Printf
	extern CL_AnyLocalClientsRunning
	extern CL_InitRenderer
	extern CL_StartHunkUsers
	extern Com_UnloadSoundAliases
	extern CG_Shutdown
	extern SEH_StringEd_GetString
	extern CL_ConsolePrint
	extern loc_warnings
	extern loc_warningsAsErrors
	extern Com_PrintWarning
	extern ScrPlace_ApplyRect
	extern R_AddCmdDrawStretchPic
	extern Com_PickSoundAlias
	extern Com_LoadSoundAliases
	extern CG_ArchiveState
	extern FX_Archive
	extern R_ArchiveFogState
	extern R_AddCmdDrawStretchPicFlipST
	extern Com_PrintError
	extern FS_FOpenFileByMode
	extern Z_MallocInternal
	extern memset
	extern FS_Read
	extern FS_FCloseFile
	extern Com_Parse
	extern atoi
	extern com_expectedHunkUsage
	extern Z_FreeInternal
	extern Hunk_Used
	extern Q_strncat
	extern FS_Write
	extern Com_sprintf
	extern CL_GetSkelTimeStamp
	extern DObjSkelExists
	extern DObjSkelIsBoneUpToDate
	extern DObjGetAllocSkelSize
	extern CL_AllocSkelMemory
	extern DObjCreateSkel
	extern cl_showServerCommands
	extern Cmd_TokenizeString
	extern cmd_args
	extern strcasecmp
	extern SEH_SafeTranslateString
	extern UI_ReplaceConversionString
	extern Cmd_EndTokenizedString
	extern Cmd_TokenizeStringWithLimit
	extern strcat
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern strcmp
	extern CL_DisconnectError
	extern _ZN10LargeLocalD1Ev
	extern CL_SystemInfoChanged
	extern _Unwind_Resume
	extern R_AddCmdDrawStretchPicRotateST
	extern R_AddCmdDrawStretchPicRotateXY
	extern R_LoadWorld
	extern Com_UnloadBsp

;Exports of cl_cgame_mp:
	global color_axis
	global color_allies
	global g_color_table
	global bigConfigString
	global _ZZ24CL_DObjCreateSkelForBoneP6DObj_siE9warnCount
	global CL_FirstSnapshot
	global CL_InitCGame
	global CL_SyncTimes
	global CL_CM_LoadMap
	global CL_GetUserCmd
	global CL_CapTurnRate
	global CL_GetSnapshot
	global CL_LookupColor
	global CL_RenderScene
	global CL_UpdateColor
	global CL_SetCGameTime
	global CL_StartLoading
	global CL_ShutdownCGame
	global CL_SubtitlePrint
	global CL_DrawStretchPic
	global CL_PickSoundAlias
	global CL_GetConfigString
	global CL_SetExtraButtons
	global CL_LoadSoundAliases
	global CL_SetUserCmdOrigin
	global CL_SetUserCmdWeapons
	global CL_ArchiveClientState
	global CL_IsCgameInitialized
	global CL_IsServerRestarting
	global CL_GetCurrentCmdNumber
	global CL_GetScreenDimensions
	global CL_SetUserCmdAimValues
	global CL_DrawStretchPicFlipST
	global CL_DumpReliableCommands
	global CL_SetExpectedHunkUsage
	global CL_UpdateLevelHunkUsage
	global CL_DObjCreateSkelForBone
	global CL_DrawStretchPicPhysical
	global CL_SetFOVSensitivityScale
	global CL_CGameNeedsServerCommand
	global CL_DrawStretchPicRotatedST
	global CL_GetCurrentSnapshotNumber
	global CL_DrawStretchPicPhysicalRotateXY
	global CL_GetScreenAspectRatioDisplayPixel
	global CL_SetADS
	global LoadWorld


SECTION .text


;CL_FirstSnapshot(int)
CL_FirstSnapshot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, eax
	mov esi, clients
	test byte [esi+0xc], 0x2
	jz CL_FirstSnapshot_10
CL_FirstSnapshot_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_FirstSnapshot_10:
	call CG_RegisterSounds
	mov eax, edi
	shl eax, 0x4
	add eax, clientUIActives
	mov dword [eax+0xc], 0x9
	mov ebx, clientConnections
	mov byte [ebx+0x40140], 0x0
	mov [esp], edi
	call UI_CloseAll
	mov edx, [esi+0x10]
	mov eax, cls
	mov ecx, edx
	sub ecx, [eax+0x118]
	mov [esi+0x2fac], ecx
	mov [esi+0x2fa4], edx
	mov [esi+0x2fa0], edx
	mov [ebx+0x401b4], edx
	mov [esp+0x4], edx
	mov [esp], edi
	call Con_TimeJumped
	mov ebx, cl_activeAction
	mov eax, [ebx]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz CL_FirstSnapshot_20
	mov [esp+0x4], eax
	mov [esp], edi
	call Cbuf_AddText
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call Cbuf_AddText
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_SetString
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_InitCGame(int)
CL_InitCGame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	call Sys_Milliseconds
	mov [ebp-0x6c], eax
	call SND_ErrorCleanup
	mov [esp], edi
	call Con_Close
	mov dword [esp+0x4], _cstring_mapname
	mov ebx, clients
	mov eax, [ebx+0x2fbc]
	lea eax, [ebx+eax+0x55e4]
	mov [esp], eax
	call Info_ValueForKey
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea esi, [ebp-0x64]
	mov [esp], esi
	call Q_strncpyz
	mov [esp+0x4], esi
	mov dword [esp], _cstring_mapname
	call Cvar_SetStringByName
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40
	add ebx, 0x255e8
	mov [esp], ebx
	call Com_GetBspFilename
	mov [esp], edi
	call CL_WasMapAlreadyLoaded
	test al, al
	jz CL_InitCGame_10
CL_InitCGame_60:
	mov esi, clientUIActives
	mov ebx, edi
	shl ebx, 0x4
	add ebx, esi
	mov dword [ebx+0xc], 0x7
	mov dword [esp+0x4], _cstring_setting_state_to
	mov dword [esp], 0xe
	call Com_Printf
	call SCR_UpdateScreen
	mov byte [esi+0x3], 0x1
	mov eax, cl_serverLoadingMap
	mov byte [eax], 0x0
	mov edx, clientConnections
	mov eax, [edx+0x4]
	mov [esp+0xc], eax
	mov eax, [edx+0x2013c]
	mov [esp+0x8], eax
	mov eax, [edx+0x20134]
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_Init
	mov byte [esi+0x2], 0x1
	mov dword [ebx+0xc], 0x8
	call SCR_UpdateScreen
	call Sys_Milliseconds
	sub eax, [ebp-0x6c]
	cvtsi2sd xmm0, eax
	divsd xmm0, qword [_double_1000_00000000]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_cl_initcgame_52f
	mov dword [esp], 0xe
	call Com_Printf
	call R_EndRegistration
	call Com_TouchMemory
	mov [esp], edi
	call Con_ClearNotify
	call Con_InitMessageBuffer
	call Con_InitGameMsgChannels
	mov ebx, useFastFile
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz CL_InitCGame_20
CL_InitCGame_40:
	call SCR_UpdateScreen
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz CL_InitCGame_30
	call DB_SyncXAssets
CL_InitCGame_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_InitCGame_20:
	mov [esp], edi
	call CL_ControllerIndexFromClientNum
	mov dword [esp+0x8], _cstring_updatehunkusage
	mov [esp+0x4], eax
	mov [esp], edi
	call Cmd_ExecuteSingleCommand
	jmp CL_InitCGame_40
CL_InitCGame_10:
	call Com_InitDObj
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_InitCGame_50
	mov [esp], ebx
	call CL_SetExpectedHunkUsage
	jmp CL_InitCGame_60
CL_InitCGame_50:
	mov [esp], esi
	call DB_AddUserMapDir
	mov [ebp-0x24], esi
	mov dword [ebp-0x20], 0x8
	mov dword [ebp-0x1c], 0x8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call DB_LoadXAssets
	jmp CL_InitCGame_60
	nop


;CL_SyncTimes(int)
CL_SyncTimes:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jz CL_SyncTimes_10
	pop ebp
	ret
CL_SyncTimes_10:
	mov eax, edx
	pop ebp
	jmp CL_FirstSnapshot
	nop


;CL_CM_LoadMap(char const*)
CL_CM_LoadMap:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_CM_LoadMap_10
CL_CM_LoadMap_30:
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CM_LoadMap
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_CM_LoadMap_20
	call CM_LinkWorld
	mov [esp], ebx
	call Com_LoadWorld
CL_CM_LoadMap_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CL_CM_LoadMap_10:
	mov [esp], ebx
	call Com_LoadBsp
	jmp CL_CM_LoadMap_30


;CL_GetUserCmd(int, int, usercmd_s*)
CL_GetUserCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov edi, clients
	mov eax, [edi+0x666c8]
	cmp eax, ebx
	jl CL_GetUserCmd_10
CL_GetUserCmd_30:
	add eax, 0xffffff80
	cmp ebx, eax
	jle CL_GetUserCmd_20
	and ebx, 0x7f
	shl ebx, 0x5
	lea edx, [ebx+edi+0x656c0]
	mov eax, [edx+0x8]
	mov [esi], eax
	mov eax, [edx+0xc]
	mov [esi+0x4], eax
	mov eax, [edx+0x10]
	mov [esi+0x8], eax
	mov eax, [edx+0x14]
	mov [esi+0xc], eax
	mov eax, [edx+0x18]
	mov [esi+0x10], eax
	mov eax, [edx+0x1c]
	mov [esi+0x14], eax
	mov eax, [edx+0x20]
	mov [esi+0x18], eax
	mov eax, [edx+0x24]
	mov [esi+0x1c], eax
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_GetUserCmd_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_GetUserCmd_10:
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cl_getusercmd_i_
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [edi+0x666c8]
	jmp CL_GetUserCmd_30
	nop


;CL_CapTurnRate(int, float, float)
CL_CapTurnRate:
	push ebp
	mov ebp, esp
	mov eax, clients
	mov edx, [ebp+0xc]
	mov [eax+0x25660], edx
	mov edx, [ebp+0x10]
	mov [eax+0x25664], edx
	pop ebp
	ret


;CL_GetSnapshot(int, int, snapshot_s*)
CL_GetSnapshot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	mov esi, clients
	cmp [esi+0x14], ebx
	jl CL_GetSnapshot_10
CL_GetSnapshot_90:
	mov eax, [esi+0x14]
	sub eax, ebx
	cmp eax, 0x1f
	jg CL_GetSnapshot_20
	mov edx, ebx
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	lea edi, [esi+eax*4+0x69850]
	mov eax, [edi]
	test eax, eax
	jz CL_GetSnapshot_20
	mov eax, [esi+0x25628]
	sub eax, [edi+0x2f88]
	cmp eax, 0x7ff
	jg CL_GetSnapshot_20
	mov eax, [esi+0x2562c]
	sub eax, [edi+0x2f8c]
	cmp eax, 0x7ff
	jg CL_GetSnapshot_20
	mov eax, [edi+0x4]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, [edi+0x2f90]
	mov [edx+0x23078], eax
	mov eax, [edi+0x14]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov edx, [ebp+0x10]
	add edx, 0xc
	lea eax, [edi+0x1c]
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov eax, [edi+0x2f80]
	mov [ebp-0x20], eax
	cmp eax, 0x200
	jle CL_GetSnapshot_30
	mov eax, com_statmon
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_GetSnapshot_40
	mov dword [esp+0x8], _cstring_code_warning_sna
	mov dword [esp+0x4], 0xbb8
	mov dword [esp], 0x4
	call StatMon_Warning
	mov dword [ebp-0x20], 0x200
	mov edx, [ebp-0x20]
CL_GetSnapshot_100:
	mov eax, [ebp+0x10]
	mov [eax+0x2f70], edx
	test edx, edx
	jle CL_GetSnapshot_50
	mov ebx, eax
	xor esi, esi
CL_GetSnapshot_60:
	mov eax, esi
	add eax, [edi+0x2f88]
	and eax, 0x7ff
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	lea edx, [eax+edx*4]
	shl edx, 0x2
	add edx, clients
	add edx, 0x105ad0
	lea eax, [ebx+0x2f78]
	mov dword [esp+0x8], 0xf4
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	add esi, 0x1
	add ebx, 0xf4
	cmp [ebp-0x20], esi
	jnz CL_GetSnapshot_60
CL_GetSnapshot_50:
	mov eax, [edi+0x2f84]
	mov [ebp-0x1c], eax
	cmp eax, 0x41
	mov eax, 0x40
	cmovl eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x10]
	mov [edx+0x2f74], eax
	test eax, eax
	jle CL_GetSnapshot_70
	mov ebx, edx
	xor esi, esi
CL_GetSnapshot_80:
	mov eax, esi
	add eax, [edi+0x2f8c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	add eax, clients
	add eax, 0x17fad0
	lea edx, [ebx+0x21778]
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add esi, 0x1
	add ebx, 0x64
	cmp [ebp-0x1c], esi
	jnz CL_GetSnapshot_80
CL_GetSnapshot_70:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_GetSnapshot_20:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_GetSnapshot_10:
	mov dword [esp+0x4], _cstring_cl_getsnapshot_s
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_GetSnapshot_90
CL_GetSnapshot_30:
	mov edx, eax
	jmp CL_GetSnapshot_100
CL_GetSnapshot_40:
	mov dword [esp+0xc], 0x200
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_cl_getsnapshot_t
	mov dword [esp], 0xe
	call Com_DPrintf
	mov dword [ebp-0x20], 0x200
	mov edx, [ebp-0x20]
	jmp CL_GetSnapshot_100


;CL_LookupColor(int, unsigned char, float*)
CL_LookupColor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x10]
	movzx ebx, byte [ebp+0xc]
	movzx eax, bl
	mov [esp], eax
	call ColorIndex
	movzx eax, al
	cmp eax, 0x7
	ja CL_LookupColor_10
	shl eax, 0x4
	lea edx, [eax+g_color_table]
	mov eax, [eax+g_color_table]
CL_LookupColor_40:
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	mov eax, [edx+0xc]
	mov [esi+0xc], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_LookupColor_10:
	mov edi, cgArray
	mov edx, [edi]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov ecx, [edi+eax*4+0xe9f50]
	lea eax, [ecx-0x1]
	cmp eax, 0x2
	mov eax, 0x2
	cmovae ecx, eax
	cmp bl, 0x38
	jz CL_LookupColor_20
	cmp bl, 0x39
	jz CL_LookupColor_30
	mov eax, 0x3f800000
	mov [esi], eax
	mov [esi+0x4], eax
	mov [esi+0x8], eax
	mov [esi+0xc], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_LookupColor_20:
	mov edx, color_allies
	cmp ecx, 0x2
	mov eax, color_axis
	cmovnz edx, eax
	mov eax, [edx]
	jmp CL_LookupColor_40
CL_LookupColor_30:
	mov edx, color_axis
	cmp ecx, 0x2
	mov eax, color_allies
	cmovnz edx, eax
	mov eax, [edx]
	jmp CL_LookupColor_40
	nop


;CL_RenderScene(refdef_s const*)
CL_RenderScene:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	lea ebx, [ecx+0x18]
	mov edx, cls
	mov eax, [ecx+0x18]
	mov [edx+0x2dc6fc], eax
	mov eax, [ebx+0x4]
	mov [edx+0x2dc700], eax
	mov eax, [ebx+0x8]
	mov [edx+0x2dc704], eax
	pop ebx
	pop ebp
	jmp R_RenderScene


;CL_UpdateColor(int)
CL_UpdateColor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle CL_UpdateColor_10
	mov ebx, cgArray
	mov edx, [ebx]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov ebx, [ebx+eax*4+0xe9f50]
	lea eax, [ebx-0x1]
	cmp eax, 0x2
	mov eax, 0x2
	cmovae ebx, eax
	mov dword [esp+0x4], color_allies
	mov dword [esp], _cstring_g_teamcolor_alli
	call Cvar_GetUnpackedColorByName
	mov esi, 0x3f800000
	mov [color_allies+0xc], esi
	mov dword [esp+0x4], color_axis
	mov dword [esp], _cstring_g_teamcolor_axis
	call Cvar_GetUnpackedColorByName
	mov [color_axis+0xc], esi
	mov dword [esp+0x8], color_axis
	mov dword [esp+0x4], color_allies
	mov [esp], ebx
	call R_UpdateTeamColors
CL_UpdateColor_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CL_SetCGameTime(int)
CL_SetCGameTime:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	cmp eax, 0x9
	jz CL_SetCGameTime_10
	cmp eax, 0x8
	jz CL_SetCGameTime_20
CL_SetCGameTime_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_SetCGameTime_20:
	mov eax, clientConnections
	mov ebx, [eax+0x4018c]
	test ebx, ebx
	jz CL_SetCGameTime_30
	mov ecx, [eax+0x4019c]
	test ecx, ecx
	jnz CL_SetCGameTime_40
	mov dword [eax+0x4019c], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_SetCGameTime_40:
	mov [esp], esi
	call CL_ReadDemoMessage
CL_SetCGameTime_30:
	mov eax, clients
	mov edx, [eax+0x2fb8]
	test edx, edx
	jnz CL_SetCGameTime_50
CL_SetCGameTime_230:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jnz CL_SetCGameTime_60
CL_SetCGameTime_10:
	mov eax, clients
	mov eax, [eax+0x8]
	test eax, eax
	jz CL_SetCGameTime_70
CL_SetCGameTime_310:
	mov eax, sv_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz CL_SetCGameTime_80
CL_SetCGameTime_210:
	mov edx, clients
	mov eax, [edx+0x10]
	cmp eax, [edx+0x2fa8]
	jl CL_SetCGameTime_90
	mov ebx, edx
CL_SetCGameTime_330:
	mov ecx, [ebx+0x10]
	mov [ebx+0x2fa8], ecx
	mov edi, clientConnections
	mov eax, [edi+0x4018c]
	test eax, eax
	jz CL_SetCGameTime_100
	mov eax, cl_freezeDemo
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_SetCGameTime_110
	mov eax, clients
CL_SetCGameTime_220:
	mov edx, [eax+0x2fac]
	mov eax, cls
	add edx, [eax+0x118]
	mov ebx, clients
	mov [ebx+0x2fa0], edx
	mov eax, [ebx+0x2fa4]
	cmp edx, eax
	jge CL_SetCGameTime_120
	mov [ebx+0x2fa0], eax
	mov ebx, clients
CL_SetCGameTime_120:
	mov eax, [ebx+0x2fa0]
	mov [ebx+0x2fa4], eax
	lea eax, [ecx-0x5]
	cmp edx, eax
	jl CL_SetCGameTime_130
	mov dword [ebx+0x2fb4], 0x1
	mov eax, cl_showTimeDelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_SetCGameTime_140
CL_SetCGameTime_110:
	mov eax, clients
CL_SetCGameTime_300:
	mov ebx, [eax+0x2fb8]
	test ebx, ebx
	jz CL_SetCGameTime_150
	mov dword [eax+0x2fb8], 0x0
	mov ecx, [edi+0x4018c]
	test ecx, ecx
	jnz CL_SetCGameTime_150
	mov edx, eax
	mov eax, [eax+0x10]
	mov ecx, eax
	sub ecx, [edx+0x2fb0]
	mov ebx, [edx+0x2fac]
	mov edx, cls
	sub eax, [edx+0x118]
	mov edx, eax
	sub eax, ecx
	lea edi, [eax-0x5]
	mov eax, edi
	sub eax, ebx
	test eax, eax
	jle CL_SetCGameTime_160
	cmp ecx, 0x1f4
	ja CL_SetCGameTime_170
	sub eax, ecx
	jns CL_SetCGameTime_170
CL_SetCGameTime_370:
	movss xmm0, dword [_float_1_00000000]
	mov eax, com_timescaleValue
	ucomiss xmm0, [eax]
	jnz CL_SetCGameTime_180
	jp CL_SetCGameTime_180
	mov eax, clients
	mov edx, [eax+0x2fb4]
	test edx, edx
	jz CL_SetCGameTime_190
	mov dword [eax+0x2fb4], 0x0
	sub dword [eax+0x2fac], 0x2
	mov edx, clients
	jmp CL_SetCGameTime_200
CL_SetCGameTime_80:
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CL_SetCGameTime_210
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_SetCGameTime_210
	jmp CL_SetCGameTime_60
CL_SetCGameTime_100:
	mov eax, ebx
	jmp CL_SetCGameTime_220
CL_SetCGameTime_50:
	mov dword [eax+0x2fb8], 0x0
	mov eax, esi
	call CL_FirstSnapshot
	jmp CL_SetCGameTime_230
CL_SetCGameTime_160:
	neg eax
CL_SetCGameTime_170:
	cmp eax, 0x1f4
	jle CL_SetCGameTime_240
	lea eax, [edx-0x5]
	mov edx, clients
	mov [edx+0x2fac], eax
	mov eax, [edx+0x10]
	mov [edx+0x2fa4], eax
	mov [edx+0x2fa0], eax
	mov eax, cl_showTimeDelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_SetCGameTime_250
CL_SetCGameTime_200:
	mov eax, [edx+0x2fac]
	cmp ebx, eax
	jz CL_SetCGameTime_260
	sub eax, ebx
	mov [esp+0x4], eax
	mov [esp], esi
	call Con_TimeNudged
CL_SetCGameTime_260:
	mov eax, cl_showTimeDelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_SetCGameTime_270
	mov edi, clientConnections
CL_SetCGameTime_150:
	mov eax, [edi+0x4018c]
	test eax, eax
	jz CL_SetCGameTime_60
	mov eax, [edi+0x40190]
	test eax, eax
	jnz CL_SetCGameTime_280
CL_SetCGameTime_290:
	mov ebx, clients
CL_SetCGameTime_360:
	mov eax, [ebx+0x2fa0]
	cmp eax, [ebx+0x10]
	jl CL_SetCGameTime_60
	mov [esp], esi
	call CL_ReadDemoMessage
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jz CL_SetCGameTime_290
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_SetCGameTime_130:
	mov eax, ebx
	jmp CL_SetCGameTime_300
CL_SetCGameTime_70:
	mov dword [esp+0x4], _cstring_cl_setcgametime_
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_SetCGameTime_310
CL_SetCGameTime_90:
	mov dword [esp+0x4], _cstring_localhost
	mov eax, cls
	add eax, 0x8
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CL_SetCGameTime_320
	mov eax, esi
	call CL_FirstSnapshot
	mov ebx, clients
	jmp CL_SetCGameTime_330
CL_SetCGameTime_280:
	call Sys_Milliseconds
	mov ebx, eax
	mov eax, [edi+0x401a4]
	test eax, eax
	jz CL_SetCGameTime_340
	mov edi, clientConnections
CL_SetCGameTime_400:
	mov ecx, [edi+0x401ac]
	test ecx, ecx
	jnz CL_SetCGameTime_350
	mov [edi+0x401ac], ebx
CL_SetCGameTime_410:
	mov [edi+0x401b0], ebx
	mov eax, [edi+0x401a8]
	add eax, 0x1
	mov [edi+0x401a8], eax
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	mov edx, [edi+0x401b4]
	lea eax, [edx+eax*2]
	mov edx, clients
	mov [edx+0x2fa0], eax
	mov ebx, edx
	jmp CL_SetCGameTime_360
CL_SetCGameTime_320:
	mov dword [esp+0x4], _cstring_clsnapservertime
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, clients
	jmp CL_SetCGameTime_330
CL_SetCGameTime_240:
	cmp eax, 0x64
	jle CL_SetCGameTime_370
	mov eax, cl_showTimeDelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_SetCGameTime_380
CL_SetCGameTime_490:
	mov eax, edi
	mov edx, clients
	add eax, [edx+0x2fac]
	sar eax, 1
	mov [edx+0x2fac], eax
	jmp CL_SetCGameTime_200
CL_SetCGameTime_340:
	mov dword [esp], _cstring_r_mode
	call Cvar_VariableIntegerValue
	mov [ebp-0x20], eax
	mov eax, clients
	movzx edx, byte [eax+0x255e8]
	test dl, dl
	jnz CL_SetCGameTime_390
	lea edi, [eax+0x255e8]
CL_SetCGameTime_450:
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], _cstring_demostimedemo_s_
	call va
	mov [esp], eax
	call FS_FOpenFileWrite
	mov edi, clientConnections
	mov [edi+0x401a4], eax
	jmp CL_SetCGameTime_400
CL_SetCGameTime_140:
	mov dword [esp+0x4], _cstring_extrapolating_sn
	mov dword [esp], 0xe
	call Com_Printf
	mov eax, clients
	jmp CL_SetCGameTime_300
CL_SetCGameTime_350:
	mov edx, [edi+0x401a4]
	test edx, edx
	jz CL_SetCGameTime_410
	mov eax, ebx
	sub eax, [edi+0x401b0]
	mov [esp+0xc], eax
	mov eax, [edi+0x401a8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ii
	mov [esp], edx
	call FS_Printf
	mov edi, clientConnections
	jmp CL_SetCGameTime_410
CL_SetCGameTime_270:
	mov ebx, clients
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, cls
	mov eax, [eax+0x118]
	add eax, [ebx+0x2fac]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_time_i_se
	mov dword [esp], 0xe
	call Com_Printf
	mov eax, [ebx+0x2fac]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_ideal_delta_i_cu
	mov dword [esp], 0xe
	call Com_Printf
	mov edi, clientConnections
	jmp CL_SetCGameTime_150
CL_SetCGameTime_180:
	mov edx, clients
	jmp CL_SetCGameTime_200
CL_SetCGameTime_250:
	mov dword [esp+0x4], _cstring_reset_
	mov dword [esp], 0xe
	call Com_Printf
	mov edx, clients
	jmp CL_SetCGameTime_200
CL_SetCGameTime_390:
	add eax, 0x255e8
	mov edi, eax
	mov dword [ebp-0x1c], 0x0
CL_SetCGameTime_440:
	cmp dl, 0x2f
	jz CL_SetCGameTime_420
	cmp dl, 0x5c
	jz CL_SetCGameTime_420
	cmp dl, 0x2e
	jz CL_SetCGameTime_430
CL_SetCGameTime_460:
	add eax, 0x1
CL_SetCGameTime_470:
	movzx edx, byte [eax]
	test dl, dl
	jnz CL_SetCGameTime_440
	mov eax, [ebp-0x1c]
	test eax, eax
	jz CL_SetCGameTime_450
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s
	call va
	sub [ebp-0x1c], edi
	mov edx, [ebp-0x1c]
	mov byte [eax+edx], 0x0
	mov edi, eax
	jmp CL_SetCGameTime_450
CL_SetCGameTime_430:
	mov [ebp-0x1c], eax
	jmp CL_SetCGameTime_460
CL_SetCGameTime_420:
	lea edi, [eax+0x1]
	mov eax, edi
	mov dword [ebp-0x1c], 0x0
	jmp CL_SetCGameTime_470
CL_SetCGameTime_190:
	cmp ebx, edi
	jge CL_SetCGameTime_480
	lea eax, [ebx+0x1]
	mov edx, clients
	mov [edx+0x2fac], eax
	jmp CL_SetCGameTime_200
CL_SetCGameTime_380:
	mov dword [esp+0x4], _cstring_fast_
	mov dword [esp], 0xe
	call Com_Printf
	jmp CL_SetCGameTime_490
CL_SetCGameTime_480:
	jle CL_SetCGameTime_180
	lea eax, [ebx-0x1]
	mov edx, clients
	mov [edx+0x2fac], eax
	jmp CL_SetCGameTime_200


;CL_StartLoading(char const*, char const*)
CL_StartLoading:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call CL_AnyLocalClientsRunning
	test al, al
	jnz CL_StartLoading_10
	leave
	ret
CL_StartLoading_10:
	call CL_InitRenderer
	call CL_StartHunkUsers
	leave
	jmp SCR_UpdateScreen
	nop


;CL_ShutdownCGame(int)
CL_ShutdownCGame:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x1
	call Com_UnloadSoundAliases
	mov ebx, clientUIActives
	cmp byte [ebx+0x3], 0x0
	jz CL_ShutdownCGame_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_Shutdown
	mov byte [ebx+0x3], 0x0
	mov byte [ebx+0x2], 0x0
CL_ShutdownCGame_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_SubtitlePrint(int, char const*, int, int)
CL_SubtitlePrint:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call SEH_StringEd_GetString
	mov edx, eax
	test eax, eax
	jz CL_SubtitlePrint_10
CL_SubtitlePrint_40:
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ConsolePrint
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CL_SubtitlePrint_10:
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_SubtitlePrint_20
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_SubtitlePrint_30
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_could_not_transl
	mov dword [esp], 0x7
	call Com_Error
CL_SubtitlePrint_50:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_1unlocalized7s17
	call va
	mov edx, eax
	jmp CL_SubtitlePrint_40
CL_SubtitlePrint_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xe
	call Com_PrintWarning
	jmp CL_SubtitlePrint_50
CL_SubtitlePrint_20:
	mov edx, ebx
	jmp CL_SubtitlePrint_40


;CL_DrawStretchPic(ScreenPlacement const*, float, float, float, float, int, int, float, float, float, float, float const*, Material*)
CL_DrawStretchPic:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp+0x18]
	mov [esp+0x10], eax
	lea eax, [ebp+0x14]
	mov [esp+0xc], eax
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov eax, [ebp+0x38]
	mov [esp+0x24], eax
	mov eax, [ebp+0x34]
	mov [esp+0x20], eax
	mov eax, [ebp+0x30]
	mov [esp+0x1c], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x18], eax
	mov eax, [ebp+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_AddCmdDrawStretchPic
	leave
	ret
	nop


;CL_PickSoundAlias(char const*)
CL_PickSoundAlias:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Com_PickSoundAlias
	nop


;CL_GetConfigString(int, int)
CL_GetConfigString:
	push ebp
	mov ebp, esp
	mov eax, clients
	mov edx, [ebp+0xc]
	mov edx, [eax+edx*4+0x2fbc]
	lea eax, [eax+edx+0x55e4]
	pop ebp
	ret
	nop


;CL_SetExtraButtons(int, int)
CL_SetExtraButtons:
	push ebp
	mov ebp, esp
	mov edx, clients
	mov eax, [ebp+0xc]
	or [edx+0x256a0], eax
	pop ebp
	ret


;CL_LoadSoundAliases(char const*)
CL_LoadSoundAliases:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_all_mp
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_LoadSoundAliases
	leave
	ret
	nop


;CL_SetUserCmdOrigin(int, float const*, float const*, float const*, int, int)
CL_SetUserCmdOrigin:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov edx, clients
	mov eax, [edx+0x2fa0]
	mov [edx+0x256a4], eax
	mov eax, [ecx]
	mov [edx+0x25674], eax
	mov eax, [ecx+0x4]
	mov [edx+0x25678], eax
	mov eax, [ecx+0x8]
	mov [edx+0x2567c], eax
	mov eax, [ebx]
	mov [edx+0x25680], eax
	mov eax, [ebx+0x4]
	mov [edx+0x25684], eax
	mov eax, [ebx+0x8]
	mov [edx+0x25688], eax
	mov eax, [ebp+0x18]
	mov [edx+0x25698], eax
	mov eax, [ebp+0x1c]
	mov [edx+0x2569c], eax
	mov eax, [esi]
	mov [edx+0x2568c], eax
	mov eax, [esi+0x4]
	mov [edx+0x25690], eax
	mov eax, [esi+0x8]
	mov [edx+0x25694], eax
	pop ebx
	pop esi
	pop ebp
	ret


;CL_SetUserCmdWeapons(int, int, int)
CL_SetUserCmdWeapons:
	push ebp
	mov ebp, esp
	mov eax, clients
	mov edx, [ebp+0xc]
	mov [eax+0x25654], edx
	mov edx, [ebp+0x10]
	mov [eax+0x25658], edx
	pop ebp
	ret


;CL_ArchiveClientState(int, MemoryFile*, int)
CL_ArchiveClientState:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_ArchiveState
	mov [esp+0x4], ebx
	mov [esp], esi
	call FX_Archive
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp R_ArchiveFogState


;CL_IsCgameInitialized(int)
CL_IsCgameInitialized:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	movzx eax, byte [eax+0x2]
	pop ebp
	ret


;CL_IsServerRestarting(int)
CL_IsServerRestarting:
	push ebp
	mov ebp, esp
	mov eax, clientConnections
	movzx eax, byte [eax+0x40140]
	pop ebp
	ret
	nop


;CL_GetCurrentCmdNumber(int)
CL_GetCurrentCmdNumber:
	push ebp
	mov ebp, esp
	mov eax, clients
	mov eax, [eax+0x666c8]
	pop ebp
	ret


;CL_GetScreenDimensions(int*, int*, float*)
CL_GetScreenDimensions:
	push ebp
	mov ebp, esp
	mov edx, cls
	mov ecx, [edx+0x2dc004]
	mov eax, [ebp+0x8]
	mov [eax], ecx
	mov ecx, [edx+0x2dc008]
	mov eax, [ebp+0xc]
	mov [eax], ecx
	mov edx, [edx+0x2dc014]
	mov eax, [ebp+0x10]
	mov [eax], edx
	pop ebp
	ret


;CL_SetUserCmdAimValues(int, float const*)
CL_SetUserCmdAimValues:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov ecx, clients
	mov eax, [edx]
	mov [ecx+0x25668], eax
	mov eax, [edx+0x4]
	mov [ecx+0x2566c], eax
	mov eax, [edx+0x8]
	mov [ecx+0x25670], eax
	pop ebp
	ret


;CL_DrawStretchPicFlipST(ScreenPlacement const*, float, float, float, float, int, int, float, float, float, float, float const*, Material*)
CL_DrawStretchPicFlipST:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp+0x18]
	mov [esp+0x10], eax
	lea eax, [ebp+0x14]
	mov [esp+0xc], eax
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov eax, [ebp+0x38]
	mov [esp+0x24], eax
	mov eax, [ebp+0x34]
	mov [esp+0x20], eax
	mov eax, [ebp+0x30]
	mov [esp+0x1c], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x18], eax
	mov eax, [ebp+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_AddCmdDrawStretchPicFlipST
	leave
	ret
	nop


;CL_DumpReliableCommands(int)
CL_DumpReliableCommands:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	xor ebx, ebx
	mov esi, clientConnections
	add esi, 0x20140
CL_DumpReliableCommands_10:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmd_5d_s
	mov dword [esp], 0x1
	call Com_PrintError
	add ebx, 0x1
	add esi, 0x400
	cmp ebx, 0x80
	jnz CL_DumpReliableCommands_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CL_SetExpectedHunkUsage(char const*)
CL_SetExpectedHunkUsage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_hunkusagedat
	call FS_FOpenFileByMode
	mov esi, eax
	test eax, eax
	js CL_SetExpectedHunkUsage_10
	lea ebx, [eax+0x1]
	mov [esp], ebx
	call Z_MallocInternal
	mov edi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov [ebp-0x20], edi
	lea ebx, [ebp-0x20]
CL_SetExpectedHunkUsage_30:
	mov [esp], ebx
	call Com_Parse
	cmp byte [eax], 0x0
	jz CL_SetExpectedHunkUsage_20
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CL_SetExpectedHunkUsage_30
	mov [esp], ebx
	call Com_Parse
	test eax, eax
	jz CL_SetExpectedHunkUsage_30
	cmp byte [eax], 0x0
	jz CL_SetExpectedHunkUsage_30
	mov [esp], eax
	call atoi
	mov edx, com_expectedHunkUsage
	mov [edx], eax
	mov [esp], edi
	call Z_FreeInternal
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_SetExpectedHunkUsage_20:
	mov [esp], edi
	call Z_FreeInternal
CL_SetExpectedHunkUsage_10:
	mov eax, com_expectedHunkUsage
	mov dword [eax], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_UpdateLevelHunkUsage()
CL_UpdateLevelHunkUsage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	call Hunk_Used
	mov [ebp-0x12c], eax
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_hunkusagedat
	call FS_FOpenFileByMode
	mov edi, eax
	test eax, eax
	js CL_UpdateLevelHunkUsage_10
	lea ebx, [eax+0x1]
	mov [esp], ebx
	call Z_MallocInternal
	mov [ebp-0x130], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov [esp], ebx
	call Z_MallocInternal
	mov esi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edi, [ebp-0x130]
	mov [esp], edi
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov [ebp-0x20], edi
	mov byte [esi], 0x0
CL_UpdateLevelHunkUsage_40:
	lea edi, [ebp-0x20]
	mov [esp], edi
	call Com_Parse
	mov edi, eax
	test eax, eax
	jz CL_UpdateLevelHunkUsage_20
CL_UpdateLevelHunkUsage_80:
	cmp byte [eax], 0x0
	jz CL_UpdateLevelHunkUsage_20
	mov eax, clients
	add eax, 0x255e8
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz CL_UpdateLevelHunkUsage_30
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	test eax, eax
	jz CL_UpdateLevelHunkUsage_40
	cmp byte [eax], 0x0
	jz CL_UpdateLevelHunkUsage_40
	mov [esp], eax
	call atoi
	cmp [ebp-0x12c], eax
	jnz CL_UpdateLevelHunkUsage_40
	mov edi, [ebp-0x130]
	mov [esp], edi
	call Z_FreeInternal
	mov [esp], esi
	call Z_FreeInternal
	jmp CL_UpdateLevelHunkUsage_50
CL_UpdateLevelHunkUsage_30:
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], esi
	call Q_strncat
	mov dword [esp+0x8], _cstring_space
	mov [esp+0x4], ebx
	mov [esp], esi
	call Q_strncat
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	test eax, eax
	jz CL_UpdateLevelHunkUsage_60
	cmp byte [eax], 0x0
	jnz CL_UpdateLevelHunkUsage_70
CL_UpdateLevelHunkUsage_60:
	mov dword [esp+0x4], _cstring_exe_err_hungusag
	mov dword [esp], 0x2
	call Com_Error
	lea edi, [ebp-0x20]
	mov [esp], edi
	call Com_Parse
	mov edi, eax
	test eax, eax
	jnz CL_UpdateLevelHunkUsage_80
CL_UpdateLevelHunkUsage_20:
	mov dword [esp], _cstring_hunkusagedat
	call FS_FOpenFileWrite
	mov [ebp-0x1c], eax
	test eax, eax
	jz CL_UpdateLevelHunkUsage_90
CL_UpdateLevelHunkUsage_130:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FS_Write
	cmp ebx, eax
	jz CL_UpdateLevelHunkUsage_100
	mov dword [esp+0x8], _cstring_hunkusagedat
	mov dword [esp+0x4], _cstring_exe_err_cant_wri
	mov dword [esp], 0x2
	call Com_Error
CL_UpdateLevelHunkUsage_100:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov eax, [ebp-0x130]
	mov [esp], eax
	call Z_FreeInternal
	mov [esp], esi
	call Z_FreeInternal
CL_UpdateLevelHunkUsage_10:
	mov dword [esp+0x8], 0x2
	lea edi, [ebp-0x1c]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_hunkusagedat
	call FS_FOpenFileByMode
	mov edx, [ebp-0x1c]
	test edx, edx
	jz CL_UpdateLevelHunkUsage_110
CL_UpdateLevelHunkUsage_120:
	mov eax, [ebp-0x12c]
	mov [esp+0x10], eax
	mov eax, clients
	add eax, 0x255e8
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_i
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x120]
	mov [esp], ebx
	call Com_sprintf
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov [esp], ebx
	call FS_Write
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_hunkusagedat
	call FS_FOpenFileByMode
	test eax, eax
	js CL_UpdateLevelHunkUsage_50
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
CL_UpdateLevelHunkUsage_50:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_UpdateLevelHunkUsage_70:
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call Q_strncat
	mov dword [esp+0x8], _cstring_
	mov [esp+0x4], ebx
	mov [esp], esi
	call Q_strncat
	jmp CL_UpdateLevelHunkUsage_40
CL_UpdateLevelHunkUsage_110:
	mov dword [esp+0x4], _cstring_exe_err_hunkusag
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_UpdateLevelHunkUsage_120
CL_UpdateLevelHunkUsage_90:
	mov dword [esp+0x4], _cstring_hunkusagedat
	mov dword [esp], _cstring_exe_err_cant_cre
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_UpdateLevelHunkUsage_130


;CL_DObjCreateSkelForBone(DObj_s*, int)
CL_DObjCreateSkelForBone:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	call CL_GetSkelTimeStamp
	mov esi, eax
	mov [esp+0x4], eax
	mov [esp], ebx
	call DObjSkelExists
	test eax, eax
	jz CL_DObjCreateSkelForBone_10
	mov [ebp+0xc], edi
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DObjSkelIsBoneUpToDate
CL_DObjCreateSkelForBone_10:
	mov [esp], ebx
	call DObjGetAllocSkelSize
	mov [esp], eax
	call CL_AllocSkelMemory
	test eax, eax
	jz CL_DObjCreateSkelForBone_20
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], ebx
	call DObjCreateSkel
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DObjCreateSkelForBone_20:
	cmp esi, [_ZZ24CL_DObjCreateSkelForBoneP6DObj_siE9warnCount]
	jz CL_DObjCreateSkelForBone_30
	mov [_ZZ24CL_DObjCreateSkelForBoneP6DObj_siE9warnCount], esi
	mov dword [esp+0x4], _cstring_warning_cl_skel_
	mov dword [esp], 0xe
	call Com_PrintWarning
CL_DObjCreateSkelForBone_30:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;CL_DrawStretchPicPhysical(float, float, float, float, float, float, float, float, float const*, Material*)
CL_DrawStretchPicPhysical:
	push ebp
	mov ebp, esp
	pop ebp
	jmp R_AddCmdDrawStretchPic
	nop


;CL_SetFOVSensitivityScale(int, float)
CL_SetFOVSensitivityScale:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, clients
	mov [eax+0x2565c], edx
	pop ebp
	ret
	nop


;CL_CGameNeedsServerCommand(int, int)
CL_CGameNeedsServerCommand:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, clientConnections
	mov eax, [esi+0x20138]
	add eax, 0xffffff80
	cmp eax, [ebp+0xc]
	jge CL_CGameNeedsServerCommand_10
	mov edi, [ebp+0xc]
	and edi, 0x7f
	mov eax, [ebp+0xc]
	cmp eax, [esi+0x20138]
	jg CL_CGameNeedsServerCommand_20
CL_CGameNeedsServerCommand_80:
	mov edx, eax
	shl edi, 0xa
	lea edi, [edi+esi+0x20140]
	mov [esi+0x2013c], edx
	mov eax, cl_showServerCommands
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_CGameNeedsServerCommand_30
CL_CGameNeedsServerCommand_90:
	mov [esp], edi
	call Cmd_TokenizeString
	mov ecx, cmd_args
	mov edx, [ecx]
	mov ebx, [ecx+edx*4+0x44]
	test ebx, ebx
	jle CL_CGameNeedsServerCommand_40
CL_CGameNeedsServerCommand_100:
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax]
CL_CGameNeedsServerCommand_110:
	movsx eax, byte [eax]
	sub eax, 0x42
	cmp eax, 0x38
	jbe CL_CGameNeedsServerCommand_50
CL_CGameNeedsServerCommand_300:
	mov eax, 0x1
CL_CGameNeedsServerCommand_410:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_CGameNeedsServerCommand_10:
	mov edi, [esi+0x4018c]
	test edi, edi
	jz CL_CGameNeedsServerCommand_60
	xor eax, eax
CL_CGameNeedsServerCommand_160:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_CGameNeedsServerCommand_50:
	jmp dword [eax*4+CL_CGameNeedsServerCommand_jumptab_0]
CL_CGameNeedsServerCommand_60:
	mov dword [esp+0x4], _cstring__cl_cgameneedsse
	mov dword [esp], 0xe
	call Com_Printf
	mov edi, [ebp+0xc]
	and edi, 0x7f
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_servercommandnum
	mov dword [esp], 0xe
	call Com_Printf
	xor ebx, ebx
	mov [ebp-0x44], esi
	add esi, 0x20140
CL_CGameNeedsServerCommand_70:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmd_5d_s
	mov dword [esp], 0x1
	call Com_PrintError
	add ebx, 0x1
	add esi, 0x400
	cmp ebx, 0x80
	jnz CL_CGameNeedsServerCommand_70
	mov dword [esp+0x4], _cstring_cl_cgameneedsser
	mov dword [esp], 0x2
	call Com_Error
	mov esi, [ebp-0x44]
	mov eax, [ebp+0xc]
	cmp eax, [esi+0x20138]
	jle CL_CGameNeedsServerCommand_80
CL_CGameNeedsServerCommand_20:
	mov dword [esp+0x4], _cstring_cl_cgameneedsser1
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp+0xc]
	shl edi, 0xa
	lea edi, [edi+esi+0x20140]
	mov [esi+0x2013c], edx
	mov eax, cl_showServerCommands
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_CGameNeedsServerCommand_90
CL_CGameNeedsServerCommand_30:
	mov [esp+0xc], edi
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_servercommand_i_
	mov dword [esp], 0xe
	call Com_DPrintf
	mov [esp], edi
	call Cmd_TokenizeString
	mov ecx, cmd_args
	mov edx, [ecx]
	mov ebx, [ecx+edx*4+0x44]
	test ebx, ebx
	jg CL_CGameNeedsServerCommand_100
CL_CGameNeedsServerCommand_40:
	mov eax, _cstring_null
	jmp CL_CGameNeedsServerCommand_110
CL_CGameNeedsServerCommand_530:
	cmp ebx, 0x2
	jle CL_CGameNeedsServerCommand_120
	cmp dword [ecx+edx*4+0x44], 0x2
	jg CL_CGameNeedsServerCommand_130
	mov eax, _cstring_null
CL_CGameNeedsServerCommand_460:
	mov dword [esp+0x4], _cstring_pb
	mov [esp], eax
	call strcasecmp
	test eax, eax
	jnz CL_CGameNeedsServerCommand_120
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_CGameNeedsServerCommand_140
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
CL_CGameNeedsServerCommand_500:
	mov dword [esp], _cstring_exe_serverdiscon
	call SEH_SafeTranslateString
	mov [esp+0x4], ebx
	mov [esp], eax
	call UI_ReplaceConversionString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s1
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call Com_Error
CL_CGameNeedsServerCommand_350:
	call Cmd_EndTokenizedString
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call Cmd_TokenizeStringWithLimit
	mov ecx, cmd_args
	mov ebx, [ecx]
	cmp dword [ecx+ebx*4+0x44], 0x2
	jle CL_CGameNeedsServerCommand_150
	mov eax, [ecx+ebx*4+0x64]
	mov edx, [eax+0x8]
CL_CGameNeedsServerCommand_320:
	mov eax, [eax+0x4]
CL_CGameNeedsServerCommand_380:
	mov [esp+0x14], edx
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], _cstring_c_s_s
	mov dword [esp+0x4], 0x2000
	mov dword [esp], bigConfigString
	call Com_sprintf
	call Cmd_EndTokenizedString
	xor eax, eax
	jmp CL_CGameNeedsServerCommand_160
CL_CGameNeedsServerCommand_540:
	call Cmd_EndTokenizedString
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call Cmd_TokenizeStringWithLimit
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg CL_CGameNeedsServerCommand_170
	mov ebx, _cstring_null
CL_CGameNeedsServerCommand_370:
	mov edi, bigConfigString
	xor edx, edx
	cld
	mov ecx, 0xffffffff
	mov eax, edx
	repne scasb
	mov esi, ecx
	not esi
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	lea ecx, [ecx+esi-0x2]
	cmp ecx, 0x1fff
	ja CL_CGameNeedsServerCommand_180
CL_CGameNeedsServerCommand_450:
	mov [esp+0x4], ebx
	mov dword [esp], bigConfigString
	call strcat
	call Cmd_EndTokenizedString
	xor eax, eax
	jmp CL_CGameNeedsServerCommand_160
CL_CGameNeedsServerCommand_550:
	call Cmd_EndTokenizedString
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call Cmd_TokenizeStringWithLimit
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg CL_CGameNeedsServerCommand_190
	mov esi, _cstring_null
CL_CGameNeedsServerCommand_360:
	xor edx, edx
	cld
	mov edi, bigConfigString
	mov ecx, 0xffffffff
	mov eax, edx
	repne scasb
	not ecx
	mov [ebp-0x4c], ecx
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	not ecx
	mov eax, [ebp-0x4c]
	lea ecx, [ecx+eax-0x1]
	cmp ecx, 0x1fff
	ja CL_CGameNeedsServerCommand_200
CL_CGameNeedsServerCommand_440:
	mov [esp+0x4], esi
	mov dword [esp], bigConfigString
	call strcat
	call Cmd_EndTokenizedString
	mov edi, bigConfigString
	jmp CL_CGameNeedsServerCommand_90
CL_CGameNeedsServerCommand_520:
	call Cmd_EndTokenizedString
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call Cmd_TokenizeStringWithLimit
	mov dword [esp+0x4], 0x2262c
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _ZN10LargeLocalC1Ei
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _ZN10LargeLocal6GetBufEv
	mov [ebp-0x34], eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_CGameNeedsServerCommand_210
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CL_CGameNeedsServerCommand_390:
	mov [esp], eax
	call atoi
	mov [ebp-0x40], eax
	cmp eax, 0x989
	ja CL_CGameNeedsServerCommand_220
CL_CGameNeedsServerCommand_470:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg CL_CGameNeedsServerCommand_230
	mov dword [ebp-0x38], _cstring_null
CL_CGameNeedsServerCommand_420:
	mov esi, clients
	mov edx, [ebp-0x40]
	mov eax, [esi+edx*4+0x2fbc]
	lea eax, [esi+eax+0x55e4]
	mov ecx, [ebp-0x38]
	mov [esp+0x4], ecx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz CL_CGameNeedsServerCommand_240
	lea ebx, [esi+0x2fbc]
	mov dword [esp+0x8], 0x2262c
	mov [esp+0x4], ebx
	mov eax, [ebp-0x34]
	mov [esp], eax
	call memcpy
	mov dword [esp+0x8], 0x2262c
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov dword [esi+0x255e4], 0x1
	mov edx, [ebp-0x34]
	mov [ebp-0x2c], edx
	mov dword [ebp-0x3c], 0x0
	mov [ebp-0x30], esi
	mov [ebp-0x48], esi
	jmp CL_CGameNeedsServerCommand_250
CL_CGameNeedsServerCommand_280:
	add dword [ebp-0x3c], 0x1
	add dword [ebp-0x30], 0x4
	add dword [ebp-0x2c], 0x4
	cmp dword [ebp-0x3c], 0x98a
	jz CL_CGameNeedsServerCommand_260
CL_CGameNeedsServerCommand_250:
	mov eax, [ebp-0x3c]
	cmp [ebp-0x40], eax
	jz CL_CGameNeedsServerCommand_270
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov ecx, [ebp-0x34]
	lea ebx, [ecx+eax+0x2628]
CL_CGameNeedsServerCommand_400:
	cmp byte [ebx], 0x0
	jz CL_CGameNeedsServerCommand_280
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	mov esi, ecx
	not esi
	lea edi, [esi-0x1]
	mov eax, [ebp-0x48]
	mov edx, [eax+0x255e4]
	lea eax, [edi+edx+0x1]
	cmp eax, 0x20000
	jle CL_CGameNeedsServerCommand_290
	mov dword [esp+0x4], _cstring_max_gamestate_ch
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [ebp-0x48]
	mov edx, [ecx+0x255e4]
CL_CGameNeedsServerCommand_290:
	mov eax, [ebp-0x30]
	mov [eax+0x2fbc], edx
	mov ecx, [ebp-0x48]
	lea eax, [ecx+edx+0x55e4]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov eax, [ebp-0x48]
	add edi, [eax+0x255e4]
	lea eax, [edi+0x1]
	mov edx, [ebp-0x48]
	mov [edx+0x255e4], eax
	jmp CL_CGameNeedsServerCommand_280
CL_CGameNeedsServerCommand_510:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Con_ClearNotify
	mov eax, clients
	add eax, 0x656c8
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	jmp CL_CGameNeedsServerCommand_300
CL_CGameNeedsServerCommand_150:
	jnz CL_CGameNeedsServerCommand_310
	mov edx, _cstring_null
	mov eax, [ecx+ebx*4+0x64]
	jmp CL_CGameNeedsServerCommand_320
CL_CGameNeedsServerCommand_120:
	sub ebx, 0x1
	jle CL_CGameNeedsServerCommand_330
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_CGameNeedsServerCommand_340
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CL_CGameNeedsServerCommand_490:
	mov [esp], eax
	call CL_DisconnectError
	jmp CL_CGameNeedsServerCommand_350
CL_CGameNeedsServerCommand_190:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x8]
	jmp CL_CGameNeedsServerCommand_360
CL_CGameNeedsServerCommand_170:
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x8]
	jmp CL_CGameNeedsServerCommand_370
CL_CGameNeedsServerCommand_310:
	mov eax, _cstring_null
	mov edx, _cstring_null
	jmp CL_CGameNeedsServerCommand_380
CL_CGameNeedsServerCommand_210:
	mov eax, _cstring_null
	jmp CL_CGameNeedsServerCommand_390
CL_CGameNeedsServerCommand_270:
	mov ebx, [ebp-0x38]
	jmp CL_CGameNeedsServerCommand_400
CL_CGameNeedsServerCommand_240:
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _ZN10LargeLocalD1Ev
	mov eax, 0x1
	jmp CL_CGameNeedsServerCommand_410
CL_CGameNeedsServerCommand_230:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	mov [ebp-0x38], eax
	jmp CL_CGameNeedsServerCommand_420
CL_CGameNeedsServerCommand_260:
	cmp dword [ebp-0x40], 0x1
	jz CL_CGameNeedsServerCommand_430
CL_CGameNeedsServerCommand_480:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	mov eax, 0x1
	jmp CL_CGameNeedsServerCommand_410
CL_CGameNeedsServerCommand_200:
	mov dword [esp+0x4], _cstring_bcs_exceeded_big
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_CGameNeedsServerCommand_440
CL_CGameNeedsServerCommand_180:
	mov dword [esp+0x4], _cstring_bcs_exceeded_big
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_CGameNeedsServerCommand_450
CL_CGameNeedsServerCommand_130:
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp CL_CGameNeedsServerCommand_460
CL_CGameNeedsServerCommand_220:
	mov dword [esp+0x4], _cstring_configstring__ma
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_CGameNeedsServerCommand_470
CL_CGameNeedsServerCommand_430:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_SystemInfoChanged
	jmp CL_CGameNeedsServerCommand_480
CL_CGameNeedsServerCommand_340:
	mov eax, _cstring_null
	jmp CL_CGameNeedsServerCommand_490
CL_CGameNeedsServerCommand_330:
	mov dword [esp+0x4], _cstring_exe_server_disco
	mov dword [esp], 0x3
	call Com_Error
	jmp CL_CGameNeedsServerCommand_350
	mov ebx, eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
CL_CGameNeedsServerCommand_140:
	mov ebx, _cstring_null
	jmp CL_CGameNeedsServerCommand_500
	
	
CL_CGameNeedsServerCommand_jumptab_0:
	dd CL_CGameNeedsServerCommand_510
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_520
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_510
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_300
	dd CL_CGameNeedsServerCommand_530
	dd CL_CGameNeedsServerCommand_350
	dd CL_CGameNeedsServerCommand_540
	dd CL_CGameNeedsServerCommand_550


;CL_DrawStretchPicRotatedST(ScreenPlacement const*, float, float, float, float, int, int, float, float, float, float, float, float, float const*, Material*)
CL_DrawStretchPicRotatedST:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp+0x18]
	mov [esp+0x10], eax
	lea eax, [ebp+0x14]
	mov [esp+0xc], eax
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov eax, [ebp+0x40]
	mov [esp+0x2c], eax
	mov eax, [ebp+0x3c]
	mov [esp+0x28], eax
	mov eax, [ebp+0x38]
	mov [esp+0x24], eax
	mov eax, [ebp+0x34]
	mov [esp+0x20], eax
	mov eax, [ebp+0x30]
	mov [esp+0x1c], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x18], eax
	mov eax, [ebp+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_AddCmdDrawStretchPicRotateST
	leave
	ret
	nop


;CL_GetCurrentSnapshotNumber(int, int*, int*)
CL_GetCurrentSnapshotNumber:
	push ebp
	mov ebp, esp
	mov ecx, clients
	mov edx, [ecx+0x14]
	mov eax, [ebp+0xc]
	mov [eax], edx
	mov edx, [ecx+0x10]
	mov eax, [ebp+0x10]
	mov [eax], edx
	pop ebp
	ret
	nop


;CL_DrawStretchPicPhysicalRotateXY(float, float, float, float, float, float, float, float, float, float const*, Material*)
CL_DrawStretchPicPhysicalRotateXY:
	push ebp
	mov ebp, esp
	pop ebp
	jmp R_AddCmdDrawStretchPicRotateXY
	nop
	add [eax], al


;CL_GetScreenAspectRatioDisplayPixel()
CL_GetScreenAspectRatioDisplayPixel:
	push ebp
	mov ebp, esp
	mov eax, cls
	fld dword [eax+0x2dc01c]
	pop ebp
	ret


;CL_SetADS(int, unsigned char)
CL_SetADS:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, clients
	mov [eax], dl
	pop ebp
	ret
	nop


;LoadWorld(char const*)
LoadWorld:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_LoadWorld
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz LoadWorld_10
	mov eax, [ebp-0xc]
	leave
	ret
LoadWorld_10:
	call Com_UnloadBsp
	mov eax, [ebp-0xc]
	leave
	ret


;Initialized global or static variables of cl_cgame_mp:
SECTION .data


;Initialized constant data of cl_cgame_mp:
SECTION .rdata
g_color_table: dd 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x3eb851ec, 0x3eb851ec, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3eb851ec, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x94b81, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x949c7, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x94b81, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x946b2, 0x947e4, 0x94866, 0x948d0, 0x94948, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa38c6, 0xa39a1, 0xa392d, 0xa392d, 0xa3bdf, 0xa3bc8, 0xa3bb1, 0x0, 0xa4a9f, 0xa4b0d, 0xa4b43, 0xa4b79, 0xa4b79, 0xa4b79, 0xa4b79, 0xa4b79, 0xa4b79, 0xa4bbb, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa5c69, 0xa5c3c, 0xa5c1b, 0xa5c01, 0xa5bec, 0xa5bb3, 0xa5b9e, 0xa5ad2, 0xa5c93, 0xa5c7e, 0xa5ae5, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cl_cgame_mp:
SECTION .bss
color_axis: resb 0x10
color_allies: resb 0x10
bigConfigString: resb 0x2000
_ZZ24CL_DObjCreateSkelForBoneP6DObj_siE9warnCount: resb 0x60


;All cstrings:
SECTION .rdata
_cstring_:		db 0ah,0
_cstring_null:		db 0
_cstring_mapname:		db "mapname",0
_cstring_setting_state_to:		db "Setting state to CA_LOADING in CL_InitCGame",0ah,0
_cstring_cl_initcgame_52f:		db "CL_InitCGame: %5.2f seconds",0ah,0
_cstring_updatehunkusage:		db "updatehunkusage",0
_cstring_cl_getusercmd_i_:		db 015h,"CL_GetUserCmd: %i >= %i",0
_cstring_code_warning_sna:		db "code_warning_snapshotents",0
_cstring_cl_getsnapshot_s:		db 015h,"CL_GetSnapshot: snapshotNumber > cl->snapshot.messageNum",0
_cstring_cl_getsnapshot_t:		db "CL_GetSnapshot: truncated %i entities to %i",0ah,0
_cstring_g_teamcolor_alli:		db "g_TeamColor_Allies",0
_cstring_g_teamcolor_axis:		db "g_TeamColor_Axis",0
_cstring_cl_setcgametime_:		db 015h,"CL_SetCGameTime: !cl->snap.valid",0
_cstring_localhost:		db "localhost",0
_cstring_clsnapservertime:		db 015h,"cl->snap.serverTime < cl->oldFrameServerTime",0
_cstring_r_mode:		db "r_mode",0
_cstring_demostimedemo_s_:		db "demos/timedemo_%s_mode_%i.csv",0
_cstring_extrapolating_sn:		db "Extrapolating snapshot!",0ah,0
_cstring_ii:		db "%i,%i",0ah,0
_cstring_client_time_i_se:		db "client time: %i, server time: %i",0ah,0
_cstring_ideal_delta_i_cu:		db "ideal delta: %i, current delta: %i",0ah,0
_cstring_reset_:		db "<RESET> ",0
_cstring_s:		db "%s",0
_cstring_fast_:		db "<FAST> ",0
_cstring_could_not_transl:		db "Could not translate subtitle text: ",22h,"%s",22h,0
_cstring_1unlocalized7s17:		db "^1UNLOCALIZED(^7%s^1)^7",0
_cstring_warning_could_no:		db "WARNING: Could not translate subtitle text: ",22h,"%s",22h,0ah,0
_cstring_all_mp:		db "all_mp",0
_cstring_cmd_5d_s:		db "cmd %5d: ",27h,"%s",27h,0ah,0
_cstring_hunkusagedat:		db "hunkusage.dat",0
_cstring_space:		db " ",0
_cstring_exe_err_hungusag:		db "EXE_ERR_HUNGUSAGE_CORRUPT",0
_cstring_exe_err_cant_wri:		db "EXE_ERR_CANT_WRITE",015h,"%s",0
_cstring_s_i:		db "%s %i",0ah,0
_cstring_exe_err_hunkusag:		db "EXE_ERR_HUNKUSAGE_CANT_WRITE",0
_cstring_exe_err_cant_cre:		db "EXE_ERR_CANT_CREATE",015h,"%s",0
_cstring_warning_cl_skel_:		db "WARNING: CL_SKEL_MEMORY_SIZE exceeded - not calculating skeleton",0ah,0
_cstring__cl_cgameneedsse:		db "===== CL_CGameNeedsServerCommand =====",0ah,0
_cstring_servercommandnum:		db "serverCommandNumber: %d",0ah,0
_cstring_cl_cgameneedsser:		db 015h,"CL_CGameNeedsServerCommand: ",014h,"EXE_ERR_RELIABLE_CYCLED_OUT",0
_cstring_cl_cgameneedsser1:		db 015h,"CL_CGameNeedsServerCommand: ",014h,"EXE_ERR_NOT_RECEIVED",0
_cstring_servercommand_i_:		db "serverCommand: %i : %s",0ah,0
_cstring_pb:		db "PB",0
_cstring_exe_serverdiscon:		db "EXE_SERVERDISCONNECTREASON",0
_cstring_s1:		db 015h,"%s",0
_cstring_c_s_s:		db "%c %s %s",0
_cstring_max_gamestate_ch:		db 015h,"MAX_GAMESTATE_CHARS exceeded",0
_cstring_bcs_exceeded_big:		db 015h,"bcs exceeded BIG_INFO_STRING",0
_cstring_configstring__ma:		db 015h,"configstring > MAX_CONFIGSTRINGS",0
_cstring_exe_server_disco:		db "EXE_SERVER_DISCONNECTED",0



;All constant floats and doubles:
SECTION .rdata
_double_1000_00000000:		dq 0x408f400000000000	; 1000
_float_1_00000000:		dd 0x3f800000	; 1

