;Imports of cl_cgame_mp:
	extern clients
	extern _Z17CG_RegisterSoundsv
	extern clientUIActives
	extern clientConnections
	extern _Z11UI_CloseAlli
	extern cls
	extern _Z14Con_TimeJumpedii
	extern cl_activeAction
	extern _Z12Cbuf_AddTextiPKc
	extern _Z14Dvar_SetStringPK6dvar_sPKc
	extern _Z16Sys_Millisecondsv
	extern _Z16SND_ErrorCleanupv
	extern _Z9Con_Closei
	extern _Z16Info_ValueForKeyPKcS0_
	extern _Z10I_strncpyzPcPKci
	extern _Z20Dvar_SetStringByNamePKcS0_
	extern _Z18Com_GetBspFilenamePciPKc
	extern _Z22CL_WasMapAlreadyLoadedi
	extern _Z10Com_PrintfiPKcz
	extern _Z16SCR_UpdateScreenv
	extern cl_serverLoadingMap
	extern _Z7CG_Initiiii
	extern _Z17R_EndRegistrationv
	extern Com_TouchMemory
	extern _Z15Con_ClearNotifyi
	extern _Z21Con_InitMessageBufferv
	extern _Z23Con_InitGameMsgChannelsv
	extern useFastFile
	extern _Z14DB_SyncXAssetsv
	extern _Z31CL_ControllerIndexFromClientNumi
	extern _Z24Cmd_ExecuteSingleCommandiiPKc
	extern _Z12Com_InitDObjv
	extern _Z16DB_AddUserMapDirPKc
	extern _Z14DB_LoadXAssetsP9XZoneInfoji
	extern _Z10CM_LoadMapPKcPi
	extern com_sv_running
	extern _Z12CM_LinkWorldv
	extern _Z13Com_LoadWorldPKc
	extern _Z11Com_LoadBspPKc
	extern _Z9Com_Error11errorParm_tPKcz
	extern memcpy
	extern com_statmon
	extern _Z15StatMon_WarningiiPKc
	extern _Z11Com_DPrintfiPKcz
	extern _Z10ColorIndexh
	extern cgArray
	extern _Z13R_RenderScenePK8refdef_s
	extern _Z27Dvar_GetUnpackedColorByNamePKcPf
	extern _Z18R_UpdateTeamColorsiPKfS0_
	extern _Z18CL_ReadDemoMessagei
	extern sv_paused
	extern cl_freezeDemo
	extern cl_showTimeDelta
	extern com_timescaleValue
	extern cl_paused
	extern _Z14Con_TimeNudgedii
	extern _Z9I_stricmpPKcS0_
	extern _Z11Dvar_GetIntPKc
	extern _Z2vaPKcz
	extern _Z17FS_FOpenFileWritePKc
	extern _Z9FS_PrintfiPKcz
	extern _Z25CL_AnyLocalClientsRunningv
	extern _Z15CL_InitRendererv
	extern _Z17CL_StartHunkUsersv
	extern _Z22Com_UnloadSoundAliases18snd_alias_system_t
	extern _Z11CG_Shutdowni
	extern _Z22SEH_StringEd_GetStringPKc
	extern _Z15CL_ConsolePrintiiPKciii
	extern loc_warnings
	extern loc_warningsAsErrors
	extern _Z16Com_PrintWarningiPKcz
	extern _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	extern _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	extern _Z18Com_PickSoundAliasPKc
	extern _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t
	extern _Z15CG_ArchiveStateiP10MemoryFile
	extern _Z10FX_ArchiveiP10MemoryFile
	extern _Z17R_ArchiveFogStateP10MemoryFile
	extern _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material
	extern _Z14Com_PrintErroriPKcz
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern Z_MallocInternal
	extern memset
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern _Z9Com_ParsePPKc
	extern atoi
	extern com_expectedHunkUsage
	extern Z_FreeInternal
	extern Hunk_Used
	extern _Z9I_strncatPciPKc
	extern _Z8FS_WritePKvii
	extern _Z11Com_sprintfPciPKcz
	extern _Z19CL_GetSkelTimeStampv
	extern _Z14DObjSkelExistsPK6DObj_si
	extern _Z22DObjSkelIsBoneUpToDateP6DObj_si
	extern _Z20DObjGetAllocSkelSizePK6DObj_s
	extern _Z18CL_AllocSkelMemoryj
	extern _Z14DObjCreateSkelPK6DObj_sPci
	extern cl_showServerCommands
	extern _Z18Cmd_TokenizeStringPKc
	extern cmd_args
	extern strcasecmp
	extern _Z23SEH_SafeTranslateStringPKc
	extern _Z26UI_ReplaceConversionStringPKcS0_
	extern _Z22Cmd_EndTokenizedStringv
	extern _Z27Cmd_TokenizeStringWithLimitPKci
	extern strcat
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern strcmp
	extern _Z18CL_DisconnectErrorPKc
	extern _ZN10LargeLocalD1Ev
	extern _Z20CL_SystemInfoChangedi
	extern _Unwind_Resume
	extern _Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material
	extern _Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material
	extern _Z11R_LoadWorldPKcPii
	extern _Z13Com_UnloadBspv

;Exports of cl_cgame_mp:
	global color_axis
	global color_allies
	global g_color_table
	global bigConfigString
	global _ZZ24CL_DObjCreateSkelForBoneP6DObj_siE9warnCount
	global _Z16CL_FirstSnapshoti
	global _Z12CL_InitCGamei
	global _Z12CL_SyncTimesi
	global _Z13CL_CM_LoadMapPKc
	global _Z13CL_GetUserCmdiiP9usercmd_s
	global _Z14CL_CapTurnRateiff
	global _Z14CL_GetSnapshotiiP10snapshot_s
	global _Z14CL_LookupColorihPf
	global _Z14CL_RenderScenePK8refdef_s
	global _Z14CL_UpdateColori
	global _Z15CL_SetCGameTimei
	global _Z15CL_StartLoadingPKcS0_
	global _Z16CL_ShutdownCGamei
	global _Z16CL_SubtitlePrintiPKcii
	global _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	global _Z17CL_PickSoundAliasPKc
	global _Z18CL_GetConfigStringii
	global _Z18CL_SetExtraButtonsii
	global _Z19CL_LoadSoundAliasesPKc
	global _Z19CL_SetUserCmdOriginiPKfS0_S0_ii
	global _Z20CL_SetUserCmdWeaponsiii
	global _Z21CL_ArchiveClientStateiP10MemoryFilei
	global _Z21CL_IsCgameInitializedi
	global _Z21CL_IsServerRestartingi
	global _Z22CL_GetCurrentCmdNumberi
	global _Z22CL_GetScreenDimensionsPiS_Pf
	global _Z22CL_SetUserCmdAimValuesiPKf
	global _Z23CL_DrawStretchPicFlipSTPK15ScreenPlacementffffiiffffPKfP8Material
	global _Z23CL_DumpReliableCommandsi
	global _Z23CL_SetExpectedHunkUsagePKc
	global _Z23CL_UpdateLevelHunkUsagev
	global _Z24CL_DObjCreateSkelForBoneP6DObj_si
	global _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	global _Z25CL_SetFOVSensitivityScaleif
	global _Z26CL_CGameNeedsServerCommandii
	global _Z26CL_DrawStretchPicRotatedSTPK15ScreenPlacementffffiiffffffPKfP8Material
	global _Z27CL_GetCurrentSnapshotNumberiPiS_
	global _Z33CL_DrawStretchPicPhysicalRotateXYfffffffffPKfP8Material
	global _Z35CL_GetScreenAspectRatioDisplayPixelv
	global _Z9CL_SetADSih
	global _Z9LoadWorldPKc


SECTION .text


;CL_FirstSnapshot(int)
_Z16CL_FirstSnapshoti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, eax
	mov esi, clients
	test byte [esi+0xc], 0x2
	jz _Z16CL_FirstSnapshoti_10
_Z16CL_FirstSnapshoti_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_FirstSnapshoti_10:
	call _Z17CG_RegisterSoundsv
	mov eax, edi
	shl eax, 0x4
	add eax, clientUIActives
	mov dword [eax+0xc], 0x9
	mov ebx, clientConnections
	mov byte [ebx+0x40140], 0x0
	mov [esp], edi
	call _Z11UI_CloseAlli
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
	call _Z14Con_TimeJumpedii
	mov ebx, cl_activeAction
	mov eax, [ebx]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz _Z16CL_FirstSnapshoti_20
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z12Cbuf_AddTextiPKc
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call _Z12Cbuf_AddTextiPKc
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebx]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_InitCGame(int)
_Z12CL_InitCGamei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	call _Z16Sys_Millisecondsv
	mov [ebp-0x6c], eax
	call _Z16SND_ErrorCleanupv
	mov [esp], edi
	call _Z9Con_Closei
	mov dword [esp+0x4], _cstring_mapname
	mov ebx, clients
	mov eax, [ebx+0x2fbc]
	lea eax, [ebx+eax+0x55e4]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea esi, [ebp-0x64]
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	mov [esp+0x4], esi
	mov dword [esp], _cstring_mapname
	call _Z20Dvar_SetStringByNamePKcS0_
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40
	add ebx, 0x255e8
	mov [esp], ebx
	call _Z18Com_GetBspFilenamePciPKc
	mov [esp], edi
	call _Z22CL_WasMapAlreadyLoadedi
	test al, al
	jz _Z12CL_InitCGamei_10
_Z12CL_InitCGamei_60:
	mov esi, clientUIActives
	mov ebx, edi
	shl ebx, 0x4
	add ebx, esi
	mov dword [ebx+0xc], 0x7
	mov dword [esp+0x4], _cstring_setting_state_to
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	call _Z16SCR_UpdateScreenv
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
	call _Z7CG_Initiiii
	mov byte [esi+0x2], 0x1
	mov dword [ebx+0xc], 0x8
	call _Z16SCR_UpdateScreenv
	call _Z16Sys_Millisecondsv
	sub eax, [ebp-0x6c]
	cvtsi2sd xmm0, eax
	divsd xmm0, qword [_double_1000_00000000]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_cl_initcgame_52f
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	call _Z17R_EndRegistrationv
	call Com_TouchMemory
	mov [esp], edi
	call _Z15Con_ClearNotifyi
	call _Z21Con_InitMessageBufferv
	call _Z23Con_InitGameMsgChannelsv
	mov ebx, useFastFile
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz _Z12CL_InitCGamei_20
_Z12CL_InitCGamei_40:
	call _Z16SCR_UpdateScreenv
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz _Z12CL_InitCGamei_30
	call _Z14DB_SyncXAssetsv
_Z12CL_InitCGamei_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CL_InitCGamei_20:
	mov [esp], edi
	call _Z31CL_ControllerIndexFromClientNumi
	mov dword [esp+0x8], _cstring_updatehunkusage
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	jmp _Z12CL_InitCGamei_40
_Z12CL_InitCGamei_10:
	call _Z12Com_InitDObjv
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z12CL_InitCGamei_50
	mov [esp], ebx
	call _Z23CL_SetExpectedHunkUsagePKc
	jmp _Z12CL_InitCGamei_60
_Z12CL_InitCGamei_50:
	mov [esp], esi
	call _Z16DB_AddUserMapDirPKc
	mov [ebp-0x24], esi
	mov dword [ebp-0x20], 0x8
	mov dword [ebp-0x1c], 0x8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z14DB_LoadXAssetsP9XZoneInfoji
	jmp _Z12CL_InitCGamei_60
	nop


;CL_SyncTimes(int)
_Z12CL_SyncTimesi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jz _Z12CL_SyncTimesi_10
	pop ebp
	ret
_Z12CL_SyncTimesi_10:
	mov eax, edx
	pop ebp
	jmp _Z16CL_FirstSnapshoti
	nop


;CL_CM_LoadMap(char const*)
_Z13CL_CM_LoadMapPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z13CL_CM_LoadMapPKc_10
_Z13CL_CM_LoadMapPKc_30:
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10CM_LoadMapPKcPi
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z13CL_CM_LoadMapPKc_20
	call _Z12CM_LinkWorldv
	mov [esp], ebx
	call _Z13Com_LoadWorldPKc
_Z13CL_CM_LoadMapPKc_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z13CL_CM_LoadMapPKc_10:
	mov [esp], ebx
	call _Z11Com_LoadBspPKc
	jmp _Z13CL_CM_LoadMapPKc_30


;CL_GetUserCmd(int, int, usercmd_s*)
_Z13CL_GetUserCmdiiP9usercmd_s:
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
	jl _Z13CL_GetUserCmdiiP9usercmd_s_10
_Z13CL_GetUserCmdiiP9usercmd_s_30:
	add eax, 0xffffff80
	cmp ebx, eax
	jle _Z13CL_GetUserCmdiiP9usercmd_s_20
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
_Z13CL_GetUserCmdiiP9usercmd_s_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13CL_GetUserCmdiiP9usercmd_s_10:
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cl_getusercmd_i_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [edi+0x666c8]
	jmp _Z13CL_GetUserCmdiiP9usercmd_s_30
	nop


;CL_CapTurnRate(int, float, float)
_Z14CL_CapTurnRateiff:
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
_Z14CL_GetSnapshotiiP10snapshot_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	mov esi, clients
	cmp [esi+0x14], ebx
	jl _Z14CL_GetSnapshotiiP10snapshot_s_10
_Z14CL_GetSnapshotiiP10snapshot_s_90:
	mov eax, [esi+0x14]
	sub eax, ebx
	cmp eax, 0x1f
	jg _Z14CL_GetSnapshotiiP10snapshot_s_20
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
	jz _Z14CL_GetSnapshotiiP10snapshot_s_20
	mov eax, [esi+0x25628]
	sub eax, [edi+0x2f88]
	cmp eax, 0x7ff
	jg _Z14CL_GetSnapshotiiP10snapshot_s_20
	mov eax, [esi+0x2562c]
	sub eax, [edi+0x2f8c]
	cmp eax, 0x7ff
	jg _Z14CL_GetSnapshotiiP10snapshot_s_20
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
	jle _Z14CL_GetSnapshotiiP10snapshot_s_30
	mov eax, com_statmon
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CL_GetSnapshotiiP10snapshot_s_40
	mov dword [esp+0x8], _cstring_code_warning_sna
	mov dword [esp+0x4], 0xbb8
	mov dword [esp], 0x4
	call _Z15StatMon_WarningiiPKc
	mov dword [ebp-0x20], 0x200
	mov edx, [ebp-0x20]
_Z14CL_GetSnapshotiiP10snapshot_s_100:
	mov eax, [ebp+0x10]
	mov [eax+0x2f70], edx
	test edx, edx
	jle _Z14CL_GetSnapshotiiP10snapshot_s_50
	mov ebx, eax
	xor esi, esi
_Z14CL_GetSnapshotiiP10snapshot_s_60:
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
	jnz _Z14CL_GetSnapshotiiP10snapshot_s_60
_Z14CL_GetSnapshotiiP10snapshot_s_50:
	mov eax, [edi+0x2f84]
	mov [ebp-0x1c], eax
	cmp eax, 0x41
	mov eax, 0x40
	cmovl eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x10]
	mov [edx+0x2f74], eax
	test eax, eax
	jle _Z14CL_GetSnapshotiiP10snapshot_s_70
	mov ebx, edx
	xor esi, esi
_Z14CL_GetSnapshotiiP10snapshot_s_80:
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
	jnz _Z14CL_GetSnapshotiiP10snapshot_s_80
_Z14CL_GetSnapshotiiP10snapshot_s_70:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CL_GetSnapshotiiP10snapshot_s_20:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CL_GetSnapshotiiP10snapshot_s_10:
	mov dword [esp+0x4], _cstring_cl_getsnapshot_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14CL_GetSnapshotiiP10snapshot_s_90
_Z14CL_GetSnapshotiiP10snapshot_s_30:
	mov edx, eax
	jmp _Z14CL_GetSnapshotiiP10snapshot_s_100
_Z14CL_GetSnapshotiiP10snapshot_s_40:
	mov dword [esp+0xc], 0x200
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_cl_getsnapshot_t
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	mov dword [ebp-0x20], 0x200
	mov edx, [ebp-0x20]
	jmp _Z14CL_GetSnapshotiiP10snapshot_s_100


;CL_LookupColor(int, unsigned char, float*)
_Z14CL_LookupColorihPf:
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
	call _Z10ColorIndexh
	movzx eax, al
	cmp eax, 0x7
	ja _Z14CL_LookupColorihPf_10
	shl eax, 0x4
	lea edx, [eax+g_color_table]
	mov eax, [eax+g_color_table]
_Z14CL_LookupColorihPf_40:
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
_Z14CL_LookupColorihPf_10:
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
	jz _Z14CL_LookupColorihPf_20
	cmp bl, 0x39
	jz _Z14CL_LookupColorihPf_30
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
_Z14CL_LookupColorihPf_20:
	mov edx, color_allies
	cmp ecx, 0x2
	mov eax, color_axis
	cmovnz edx, eax
	mov eax, [edx]
	jmp _Z14CL_LookupColorihPf_40
_Z14CL_LookupColorihPf_30:
	mov edx, color_axis
	cmp ecx, 0x2
	mov eax, color_allies
	cmovnz edx, eax
	mov eax, [edx]
	jmp _Z14CL_LookupColorihPf_40
	nop


;CL_RenderScene(refdef_s const*)
_Z14CL_RenderScenePK8refdef_s:
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
	jmp _Z13R_RenderScenePK8refdef_s


;CL_UpdateColor(int)
_Z14CL_UpdateColori:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z14CL_UpdateColori_10
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
	call _Z27Dvar_GetUnpackedColorByNamePKcPf
	mov esi, 0x3f800000
	mov [color_allies+0xc], esi
	mov dword [esp+0x4], color_axis
	mov dword [esp], _cstring_g_teamcolor_axis
	call _Z27Dvar_GetUnpackedColorByNamePKcPf
	mov [color_axis+0xc], esi
	mov dword [esp+0x8], color_axis
	mov dword [esp+0x4], color_allies
	mov [esp], ebx
	call _Z18R_UpdateTeamColorsiPKfS0_
_Z14CL_UpdateColori_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CL_SetCGameTime(int)
_Z15CL_SetCGameTimei:
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
	jz _Z15CL_SetCGameTimei_10
	cmp eax, 0x8
	jz _Z15CL_SetCGameTimei_20
_Z15CL_SetCGameTimei_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CL_SetCGameTimei_20:
	mov eax, clientConnections
	mov ebx, [eax+0x4018c]
	test ebx, ebx
	jz _Z15CL_SetCGameTimei_30
	mov ecx, [eax+0x4019c]
	test ecx, ecx
	jnz _Z15CL_SetCGameTimei_40
	mov dword [eax+0x4019c], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CL_SetCGameTimei_40:
	mov [esp], esi
	call _Z18CL_ReadDemoMessagei
_Z15CL_SetCGameTimei_30:
	mov eax, clients
	mov edx, [eax+0x2fb8]
	test edx, edx
	jnz _Z15CL_SetCGameTimei_50
_Z15CL_SetCGameTimei_230:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jnz _Z15CL_SetCGameTimei_60
_Z15CL_SetCGameTimei_10:
	mov eax, clients
	mov eax, [eax+0x8]
	test eax, eax
	jz _Z15CL_SetCGameTimei_70
_Z15CL_SetCGameTimei_310:
	mov eax, sv_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z15CL_SetCGameTimei_80
_Z15CL_SetCGameTimei_210:
	mov edx, clients
	mov eax, [edx+0x10]
	cmp eax, [edx+0x2fa8]
	jl _Z15CL_SetCGameTimei_90
	mov ebx, edx
_Z15CL_SetCGameTimei_330:
	mov ecx, [ebx+0x10]
	mov [ebx+0x2fa8], ecx
	mov edi, clientConnections
	mov eax, [edi+0x4018c]
	test eax, eax
	jz _Z15CL_SetCGameTimei_100
	mov eax, cl_freezeDemo
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z15CL_SetCGameTimei_110
	mov eax, clients
_Z15CL_SetCGameTimei_220:
	mov edx, [eax+0x2fac]
	mov eax, cls
	add edx, [eax+0x118]
	mov ebx, clients
	mov [ebx+0x2fa0], edx
	mov eax, [ebx+0x2fa4]
	cmp edx, eax
	jge _Z15CL_SetCGameTimei_120
	mov [ebx+0x2fa0], eax
	mov ebx, clients
_Z15CL_SetCGameTimei_120:
	mov eax, [ebx+0x2fa0]
	mov [ebx+0x2fa4], eax
	lea eax, [ecx-0x5]
	cmp edx, eax
	jl _Z15CL_SetCGameTimei_130
	mov dword [ebx+0x2fb4], 0x1
	mov eax, cl_showTimeDelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z15CL_SetCGameTimei_140
_Z15CL_SetCGameTimei_110:
	mov eax, clients
_Z15CL_SetCGameTimei_300:
	mov ebx, [eax+0x2fb8]
	test ebx, ebx
	jz _Z15CL_SetCGameTimei_150
	mov dword [eax+0x2fb8], 0x0
	mov ecx, [edi+0x4018c]
	test ecx, ecx
	jnz _Z15CL_SetCGameTimei_150
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
	jle _Z15CL_SetCGameTimei_160
	cmp ecx, 0x1f4
	ja _Z15CL_SetCGameTimei_170
	sub eax, ecx
	jns _Z15CL_SetCGameTimei_170
_Z15CL_SetCGameTimei_370:
	movss xmm0, dword [_float_1_00000000]
	mov eax, com_timescaleValue
	ucomiss xmm0, [eax]
	jnz _Z15CL_SetCGameTimei_180
	jp _Z15CL_SetCGameTimei_180
	mov eax, clients
	mov edx, [eax+0x2fb4]
	test edx, edx
	jz _Z15CL_SetCGameTimei_190
	mov dword [eax+0x2fb4], 0x0
	sub dword [eax+0x2fac], 0x2
	mov edx, clients
	jmp _Z15CL_SetCGameTimei_200
_Z15CL_SetCGameTimei_80:
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z15CL_SetCGameTimei_210
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z15CL_SetCGameTimei_210
	jmp _Z15CL_SetCGameTimei_60
_Z15CL_SetCGameTimei_100:
	mov eax, ebx
	jmp _Z15CL_SetCGameTimei_220
_Z15CL_SetCGameTimei_50:
	mov dword [eax+0x2fb8], 0x0
	mov eax, esi
	call _Z16CL_FirstSnapshoti
	jmp _Z15CL_SetCGameTimei_230
_Z15CL_SetCGameTimei_160:
	neg eax
_Z15CL_SetCGameTimei_170:
	cmp eax, 0x1f4
	jle _Z15CL_SetCGameTimei_240
	lea eax, [edx-0x5]
	mov edx, clients
	mov [edx+0x2fac], eax
	mov eax, [edx+0x10]
	mov [edx+0x2fa4], eax
	mov [edx+0x2fa0], eax
	mov eax, cl_showTimeDelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z15CL_SetCGameTimei_250
_Z15CL_SetCGameTimei_200:
	mov eax, [edx+0x2fac]
	cmp ebx, eax
	jz _Z15CL_SetCGameTimei_260
	sub eax, ebx
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14Con_TimeNudgedii
_Z15CL_SetCGameTimei_260:
	mov eax, cl_showTimeDelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z15CL_SetCGameTimei_270
	mov edi, clientConnections
_Z15CL_SetCGameTimei_150:
	mov eax, [edi+0x4018c]
	test eax, eax
	jz _Z15CL_SetCGameTimei_60
	mov eax, [edi+0x40190]
	test eax, eax
	jnz _Z15CL_SetCGameTimei_280
_Z15CL_SetCGameTimei_290:
	mov ebx, clients
_Z15CL_SetCGameTimei_360:
	mov eax, [ebx+0x2fa0]
	cmp eax, [ebx+0x10]
	jl _Z15CL_SetCGameTimei_60
	mov [esp], esi
	call _Z18CL_ReadDemoMessagei
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jz _Z15CL_SetCGameTimei_290
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CL_SetCGameTimei_130:
	mov eax, ebx
	jmp _Z15CL_SetCGameTimei_300
_Z15CL_SetCGameTimei_70:
	mov dword [esp+0x4], _cstring_cl_setcgametime_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z15CL_SetCGameTimei_310
_Z15CL_SetCGameTimei_90:
	mov dword [esp+0x4], _cstring_localhost
	mov eax, cls
	add eax, 0x8
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15CL_SetCGameTimei_320
	mov eax, esi
	call _Z16CL_FirstSnapshoti
	mov ebx, clients
	jmp _Z15CL_SetCGameTimei_330
_Z15CL_SetCGameTimei_280:
	call _Z16Sys_Millisecondsv
	mov ebx, eax
	mov eax, [edi+0x401a4]
	test eax, eax
	jz _Z15CL_SetCGameTimei_340
	mov edi, clientConnections
_Z15CL_SetCGameTimei_400:
	mov ecx, [edi+0x401ac]
	test ecx, ecx
	jnz _Z15CL_SetCGameTimei_350
	mov [edi+0x401ac], ebx
_Z15CL_SetCGameTimei_410:
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
	jmp _Z15CL_SetCGameTimei_360
_Z15CL_SetCGameTimei_320:
	mov dword [esp+0x4], _cstring_clsnapservertime
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ebx, clients
	jmp _Z15CL_SetCGameTimei_330
_Z15CL_SetCGameTimei_240:
	cmp eax, 0x64
	jle _Z15CL_SetCGameTimei_370
	mov eax, cl_showTimeDelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z15CL_SetCGameTimei_380
_Z15CL_SetCGameTimei_490:
	mov eax, edi
	mov edx, clients
	add eax, [edx+0x2fac]
	sar eax, 1
	mov [edx+0x2fac], eax
	jmp _Z15CL_SetCGameTimei_200
_Z15CL_SetCGameTimei_340:
	mov dword [esp], _cstring_r_mode
	call _Z11Dvar_GetIntPKc
	mov [ebp-0x20], eax
	mov eax, clients
	movzx edx, byte [eax+0x255e8]
	test dl, dl
	jnz _Z15CL_SetCGameTimei_390
	lea edi, [eax+0x255e8]
_Z15CL_SetCGameTimei_450:
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], _cstring_demostimedemo_s_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z17FS_FOpenFileWritePKc
	mov edi, clientConnections
	mov [edi+0x401a4], eax
	jmp _Z15CL_SetCGameTimei_400
_Z15CL_SetCGameTimei_140:
	mov dword [esp+0x4], _cstring_extrapolating_sn
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov eax, clients
	jmp _Z15CL_SetCGameTimei_300
_Z15CL_SetCGameTimei_350:
	mov edx, [edi+0x401a4]
	test edx, edx
	jz _Z15CL_SetCGameTimei_410
	mov eax, ebx
	sub eax, [edi+0x401b0]
	mov [esp+0xc], eax
	mov eax, [edi+0x401a8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ii
	mov [esp], edx
	call _Z9FS_PrintfiPKcz
	mov edi, clientConnections
	jmp _Z15CL_SetCGameTimei_410
_Z15CL_SetCGameTimei_270:
	mov ebx, clients
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, cls
	mov eax, [eax+0x118]
	add eax, [ebx+0x2fac]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_time_i_se
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x2fac]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_ideal_delta_i_cu
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov edi, clientConnections
	jmp _Z15CL_SetCGameTimei_150
_Z15CL_SetCGameTimei_180:
	mov edx, clients
	jmp _Z15CL_SetCGameTimei_200
_Z15CL_SetCGameTimei_250:
	mov dword [esp+0x4], _cstring_reset_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov edx, clients
	jmp _Z15CL_SetCGameTimei_200
_Z15CL_SetCGameTimei_390:
	add eax, 0x255e8
	mov edi, eax
	mov dword [ebp-0x1c], 0x0
_Z15CL_SetCGameTimei_440:
	cmp dl, 0x2f
	jz _Z15CL_SetCGameTimei_420
	cmp dl, 0x5c
	jz _Z15CL_SetCGameTimei_420
	cmp dl, 0x2e
	jz _Z15CL_SetCGameTimei_430
_Z15CL_SetCGameTimei_460:
	add eax, 0x1
_Z15CL_SetCGameTimei_470:
	movzx edx, byte [eax]
	test dl, dl
	jnz _Z15CL_SetCGameTimei_440
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z15CL_SetCGameTimei_450
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	sub [ebp-0x1c], edi
	mov edx, [ebp-0x1c]
	mov byte [eax+edx], 0x0
	mov edi, eax
	jmp _Z15CL_SetCGameTimei_450
_Z15CL_SetCGameTimei_430:
	mov [ebp-0x1c], eax
	jmp _Z15CL_SetCGameTimei_460
_Z15CL_SetCGameTimei_420:
	lea edi, [eax+0x1]
	mov eax, edi
	mov dword [ebp-0x1c], 0x0
	jmp _Z15CL_SetCGameTimei_470
_Z15CL_SetCGameTimei_190:
	cmp ebx, edi
	jge _Z15CL_SetCGameTimei_480
	lea eax, [ebx+0x1]
	mov edx, clients
	mov [edx+0x2fac], eax
	jmp _Z15CL_SetCGameTimei_200
_Z15CL_SetCGameTimei_380:
	mov dword [esp+0x4], _cstring_fast_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z15CL_SetCGameTimei_490
_Z15CL_SetCGameTimei_480:
	jle _Z15CL_SetCGameTimei_180
	lea eax, [ebx-0x1]
	mov edx, clients
	mov [edx+0x2fac], eax
	jmp _Z15CL_SetCGameTimei_200


;CL_StartLoading(char const*, char const*)
_Z15CL_StartLoadingPKcS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z25CL_AnyLocalClientsRunningv
	test al, al
	jnz _Z15CL_StartLoadingPKcS0__10
	leave
	ret
_Z15CL_StartLoadingPKcS0__10:
	call _Z15CL_InitRendererv
	call _Z17CL_StartHunkUsersv
	leave
	jmp _Z16SCR_UpdateScreenv
	nop


;CL_ShutdownCGame(int)
_Z16CL_ShutdownCGamei:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x1
	call _Z22Com_UnloadSoundAliases18snd_alias_system_t
	mov ebx, clientUIActives
	cmp byte [ebx+0x3], 0x0
	jz _Z16CL_ShutdownCGamei_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11CG_Shutdowni
	mov byte [ebx+0x3], 0x0
	mov byte [ebx+0x2], 0x0
_Z16CL_ShutdownCGamei_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_SubtitlePrint(int, char const*, int, int)
_Z16CL_SubtitlePrintiPKcii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z22SEH_StringEd_GetStringPKc
	mov edx, eax
	test eax, eax
	jz _Z16CL_SubtitlePrintiPKcii_10
_Z16CL_SubtitlePrintiPKcii_40:
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15CL_ConsolePrintiiPKciii
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z16CL_SubtitlePrintiPKcii_10:
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16CL_SubtitlePrintiPKcii_20
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16CL_SubtitlePrintiPKcii_30
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_could_not_transl
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
_Z16CL_SubtitlePrintiPKcii_50:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_1unlocalized7s17
	call _Z2vaPKcz
	mov edx, eax
	jmp _Z16CL_SubtitlePrintiPKcii_40
_Z16CL_SubtitlePrintiPKcii_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
	jmp _Z16CL_SubtitlePrintiPKcii_50
_Z16CL_SubtitlePrintiPKcii_20:
	mov edx, ebx
	jmp _Z16CL_SubtitlePrintiPKcii_40


;CL_DrawStretchPic(ScreenPlacement const*, float, float, float, float, int, int, float, float, float, float, float const*, Material*)
_Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material:
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
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
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	leave
	ret
	nop


;CL_PickSoundAlias(char const*)
_Z17CL_PickSoundAliasPKc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Com_PickSoundAliasPKc
	nop


;CL_GetConfigString(int, int)
_Z18CL_GetConfigStringii:
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
_Z18CL_SetExtraButtonsii:
	push ebp
	mov ebp, esp
	mov edx, clients
	mov eax, [ebp+0xc]
	or [edx+0x256a0], eax
	pop ebp
	ret


;CL_LoadSoundAliases(char const*)
_Z19CL_LoadSoundAliasesPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_all_mp
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t
	leave
	ret
	nop


;CL_SetUserCmdOrigin(int, float const*, float const*, float const*, int, int)
_Z19CL_SetUserCmdOriginiPKfS0_S0_ii:
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
_Z20CL_SetUserCmdWeaponsiii:
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
_Z21CL_ArchiveClientStateiP10MemoryFilei:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z15CG_ArchiveStateiP10MemoryFile
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z10FX_ArchiveiP10MemoryFile
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z17R_ArchiveFogStateP10MemoryFile


;CL_IsCgameInitialized(int)
_Z21CL_IsCgameInitializedi:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	movzx eax, byte [eax+0x2]
	pop ebp
	ret


;CL_IsServerRestarting(int)
_Z21CL_IsServerRestartingi:
	push ebp
	mov ebp, esp
	mov eax, clientConnections
	movzx eax, byte [eax+0x40140]
	pop ebp
	ret
	nop


;CL_GetCurrentCmdNumber(int)
_Z22CL_GetCurrentCmdNumberi:
	push ebp
	mov ebp, esp
	mov eax, clients
	mov eax, [eax+0x666c8]
	pop ebp
	ret


;CL_GetScreenDimensions(int*, int*, float*)
_Z22CL_GetScreenDimensionsPiS_Pf:
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
_Z22CL_SetUserCmdAimValuesiPKf:
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
_Z23CL_DrawStretchPicFlipSTPK15ScreenPlacementffffiiffffPKfP8Material:
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
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
	call _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material
	leave
	ret
	nop


;CL_DumpReliableCommands(int)
_Z23CL_DumpReliableCommandsi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	xor ebx, ebx
	mov esi, clientConnections
	add esi, 0x20140
_Z23CL_DumpReliableCommandsi_10:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmd_5d_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add ebx, 0x1
	add esi, 0x400
	cmp ebx, 0x80
	jnz _Z23CL_DumpReliableCommandsi_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CL_SetExpectedHunkUsage(char const*)
_Z23CL_SetExpectedHunkUsagePKc:
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
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov esi, eax
	test eax, eax
	js _Z23CL_SetExpectedHunkUsagePKc_10
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
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov [ebp-0x20], edi
	lea ebx, [ebp-0x20]
_Z23CL_SetExpectedHunkUsagePKc_30:
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x0
	jz _Z23CL_SetExpectedHunkUsagePKc_20
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23CL_SetExpectedHunkUsagePKc_30
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	test eax, eax
	jz _Z23CL_SetExpectedHunkUsagePKc_30
	cmp byte [eax], 0x0
	jz _Z23CL_SetExpectedHunkUsagePKc_30
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
_Z23CL_SetExpectedHunkUsagePKc_20:
	mov [esp], edi
	call Z_FreeInternal
_Z23CL_SetExpectedHunkUsagePKc_10:
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
_Z23CL_UpdateLevelHunkUsagev:
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
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov edi, eax
	test eax, eax
	js _Z23CL_UpdateLevelHunkUsagev_10
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
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov [ebp-0x20], edi
	mov byte [esi], 0x0
_Z23CL_UpdateLevelHunkUsagev_40:
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov edi, eax
	test eax, eax
	jz _Z23CL_UpdateLevelHunkUsagev_20
_Z23CL_UpdateLevelHunkUsagev_80:
	cmp byte [eax], 0x0
	jz _Z23CL_UpdateLevelHunkUsagev_20
	mov eax, clients
	add eax, 0x255e8
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23CL_UpdateLevelHunkUsagev_30
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	test eax, eax
	jz _Z23CL_UpdateLevelHunkUsagev_40
	cmp byte [eax], 0x0
	jz _Z23CL_UpdateLevelHunkUsagev_40
	mov [esp], eax
	call atoi
	cmp [ebp-0x12c], eax
	jnz _Z23CL_UpdateLevelHunkUsagev_40
	mov edi, [ebp-0x130]
	mov [esp], edi
	call Z_FreeInternal
	mov [esp], esi
	call Z_FreeInternal
	jmp _Z23CL_UpdateLevelHunkUsagev_50
_Z23CL_UpdateLevelHunkUsagev_30:
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_space
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	test eax, eax
	jz _Z23CL_UpdateLevelHunkUsagev_60
	cmp byte [eax], 0x0
	jnz _Z23CL_UpdateLevelHunkUsagev_70
_Z23CL_UpdateLevelHunkUsagev_60:
	mov dword [esp+0x4], _cstring_exe_err_hungusag
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov edi, eax
	test eax, eax
	jnz _Z23CL_UpdateLevelHunkUsagev_80
_Z23CL_UpdateLevelHunkUsagev_20:
	mov dword [esp], _cstring_hunkusagedat
	call _Z17FS_FOpenFileWritePKc
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z23CL_UpdateLevelHunkUsagev_90
_Z23CL_UpdateLevelHunkUsagev_130:
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
	call _Z8FS_WritePKvii
	cmp ebx, eax
	jz _Z23CL_UpdateLevelHunkUsagev_100
	mov dword [esp+0x8], _cstring_hunkusagedat
	mov dword [esp+0x4], _cstring_exe_err_cant_wri
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z23CL_UpdateLevelHunkUsagev_100:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov eax, [ebp-0x130]
	mov [esp], eax
	call Z_FreeInternal
	mov [esp], esi
	call Z_FreeInternal
_Z23CL_UpdateLevelHunkUsagev_10:
	mov dword [esp+0x8], 0x2
	lea edi, [ebp-0x1c]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_hunkusagedat
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z23CL_UpdateLevelHunkUsagev_110
_Z23CL_UpdateLevelHunkUsagev_120:
	mov eax, [ebp-0x12c]
	mov [esp+0x10], eax
	mov eax, clients
	add eax, 0x255e8
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_i
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x120]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
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
	call _Z8FS_WritePKvii
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_hunkusagedat
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	test eax, eax
	js _Z23CL_UpdateLevelHunkUsagev_50
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
_Z23CL_UpdateLevelHunkUsagev_50:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CL_UpdateLevelHunkUsagev_70:
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	jmp _Z23CL_UpdateLevelHunkUsagev_40
_Z23CL_UpdateLevelHunkUsagev_110:
	mov dword [esp+0x4], _cstring_exe_err_hunkusag
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z23CL_UpdateLevelHunkUsagev_120
_Z23CL_UpdateLevelHunkUsagev_90:
	mov dword [esp+0x4], _cstring_hunkusagedat
	mov dword [esp], _cstring_exe_err_cant_cre
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z23CL_UpdateLevelHunkUsagev_130


;CL_DObjCreateSkelForBone(DObj_s*, int)
_Z24CL_DObjCreateSkelForBoneP6DObj_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	call _Z19CL_GetSkelTimeStampv
	mov esi, eax
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14DObjSkelExistsPK6DObj_si
	test eax, eax
	jz _Z24CL_DObjCreateSkelForBoneP6DObj_si_10
	mov [ebp+0xc], edi
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z22DObjSkelIsBoneUpToDateP6DObj_si
_Z24CL_DObjCreateSkelForBoneP6DObj_si_10:
	mov [esp], ebx
	call _Z20DObjGetAllocSkelSizePK6DObj_s
	mov [esp], eax
	call _Z18CL_AllocSkelMemoryj
	test eax, eax
	jz _Z24CL_DObjCreateSkelForBoneP6DObj_si_20
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14DObjCreateSkelPK6DObj_sPci
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CL_DObjCreateSkelForBoneP6DObj_si_20:
	cmp esi, [_ZZ24CL_DObjCreateSkelForBoneP6DObj_siE9warnCount]
	jz _Z24CL_DObjCreateSkelForBoneP6DObj_si_30
	mov [_ZZ24CL_DObjCreateSkelForBoneP6DObj_siE9warnCount], esi
	mov dword [esp+0x4], _cstring_warning_cl_skel_
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
_Z24CL_DObjCreateSkelForBoneP6DObj_si_30:
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
_Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	nop


;CL_SetFOVSensitivityScale(int, float)
_Z25CL_SetFOVSensitivityScaleif:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, clients
	mov [eax+0x2565c], edx
	pop ebp
	ret
	nop


;CL_CGameNeedsServerCommand(int, int)
_Z26CL_CGameNeedsServerCommandii:
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
	jge _Z26CL_CGameNeedsServerCommandii_10
	mov edi, [ebp+0xc]
	and edi, 0x7f
	mov eax, [ebp+0xc]
	cmp eax, [esi+0x20138]
	jg _Z26CL_CGameNeedsServerCommandii_20
_Z26CL_CGameNeedsServerCommandii_80:
	mov edx, eax
	shl edi, 0xa
	lea edi, [edi+esi+0x20140]
	mov [esi+0x2013c], edx
	mov eax, cl_showServerCommands
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z26CL_CGameNeedsServerCommandii_30
_Z26CL_CGameNeedsServerCommandii_90:
	mov [esp], edi
	call _Z18Cmd_TokenizeStringPKc
	mov ecx, cmd_args
	mov edx, [ecx]
	mov ebx, [ecx+edx*4+0x44]
	test ebx, ebx
	jle _Z26CL_CGameNeedsServerCommandii_40
_Z26CL_CGameNeedsServerCommandii_100:
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax]
_Z26CL_CGameNeedsServerCommandii_110:
	movsx eax, byte [eax]
	sub eax, 0x42
	cmp eax, 0x38
	jbe _Z26CL_CGameNeedsServerCommandii_50
_Z26CL_CGameNeedsServerCommandii_300:
	mov eax, 0x1
_Z26CL_CGameNeedsServerCommandii_410:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26CL_CGameNeedsServerCommandii_10:
	mov edi, [esi+0x4018c]
	test edi, edi
	jz _Z26CL_CGameNeedsServerCommandii_60
	xor eax, eax
_Z26CL_CGameNeedsServerCommandii_160:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26CL_CGameNeedsServerCommandii_50:
	jmp dword [eax*4+_Z26CL_CGameNeedsServerCommandii_jumptab_0]
_Z26CL_CGameNeedsServerCommandii_60:
	mov dword [esp+0x4], _cstring__cl_cgameneedsse
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov edi, [ebp+0xc]
	and edi, 0x7f
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_servercommandnum
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	xor ebx, ebx
	mov [ebp-0x44], esi
	add esi, 0x20140
_Z26CL_CGameNeedsServerCommandii_70:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmd_5d_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add ebx, 0x1
	add esi, 0x400
	cmp ebx, 0x80
	jnz _Z26CL_CGameNeedsServerCommandii_70
	mov dword [esp+0x4], _cstring_cl_cgameneedsser
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov esi, [ebp-0x44]
	mov eax, [ebp+0xc]
	cmp eax, [esi+0x20138]
	jle _Z26CL_CGameNeedsServerCommandii_80
_Z26CL_CGameNeedsServerCommandii_20:
	mov dword [esp+0x4], _cstring_cl_cgameneedsser1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp+0xc]
	shl edi, 0xa
	lea edi, [edi+esi+0x20140]
	mov [esi+0x2013c], edx
	mov eax, cl_showServerCommands
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z26CL_CGameNeedsServerCommandii_90
_Z26CL_CGameNeedsServerCommandii_30:
	mov [esp+0xc], edi
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_servercommand_i_
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	mov [esp], edi
	call _Z18Cmd_TokenizeStringPKc
	mov ecx, cmd_args
	mov edx, [ecx]
	mov ebx, [ecx+edx*4+0x44]
	test ebx, ebx
	jg _Z26CL_CGameNeedsServerCommandii_100
_Z26CL_CGameNeedsServerCommandii_40:
	mov eax, _cstring_null
	jmp _Z26CL_CGameNeedsServerCommandii_110
_Z26CL_CGameNeedsServerCommandii_530:
	cmp ebx, 0x2
	jle _Z26CL_CGameNeedsServerCommandii_120
	cmp dword [ecx+edx*4+0x44], 0x2
	jg _Z26CL_CGameNeedsServerCommandii_130
	mov eax, _cstring_null
_Z26CL_CGameNeedsServerCommandii_460:
	mov dword [esp+0x4], _cstring_pb
	mov [esp], eax
	call strcasecmp
	test eax, eax
	jnz _Z26CL_CGameNeedsServerCommandii_120
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z26CL_CGameNeedsServerCommandii_140
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
_Z26CL_CGameNeedsServerCommandii_500:
	mov dword [esp], _cstring_exe_serverdiscon
	call _Z23SEH_SafeTranslateStringPKc
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z26UI_ReplaceConversionStringPKcS0_
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s1
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call _Z9Com_Error11errorParm_tPKcz
_Z26CL_CGameNeedsServerCommandii_350:
	call _Z22Cmd_EndTokenizedStringv
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call _Z27Cmd_TokenizeStringWithLimitPKci
	mov ecx, cmd_args
	mov ebx, [ecx]
	cmp dword [ecx+ebx*4+0x44], 0x2
	jle _Z26CL_CGameNeedsServerCommandii_150
	mov eax, [ecx+ebx*4+0x64]
	mov edx, [eax+0x8]
_Z26CL_CGameNeedsServerCommandii_320:
	mov eax, [eax+0x4]
_Z26CL_CGameNeedsServerCommandii_380:
	mov [esp+0x14], edx
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], _cstring_c_s_s
	mov dword [esp+0x4], 0x2000
	mov dword [esp], bigConfigString
	call _Z11Com_sprintfPciPKcz
	call _Z22Cmd_EndTokenizedStringv
	xor eax, eax
	jmp _Z26CL_CGameNeedsServerCommandii_160
_Z26CL_CGameNeedsServerCommandii_540:
	call _Z22Cmd_EndTokenizedStringv
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call _Z27Cmd_TokenizeStringWithLimitPKci
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z26CL_CGameNeedsServerCommandii_170
	mov ebx, _cstring_null
_Z26CL_CGameNeedsServerCommandii_370:
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
	ja _Z26CL_CGameNeedsServerCommandii_180
_Z26CL_CGameNeedsServerCommandii_450:
	mov [esp+0x4], ebx
	mov dword [esp], bigConfigString
	call strcat
	call _Z22Cmd_EndTokenizedStringv
	xor eax, eax
	jmp _Z26CL_CGameNeedsServerCommandii_160
_Z26CL_CGameNeedsServerCommandii_550:
	call _Z22Cmd_EndTokenizedStringv
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call _Z27Cmd_TokenizeStringWithLimitPKci
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z26CL_CGameNeedsServerCommandii_190
	mov esi, _cstring_null
_Z26CL_CGameNeedsServerCommandii_360:
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
	ja _Z26CL_CGameNeedsServerCommandii_200
_Z26CL_CGameNeedsServerCommandii_440:
	mov [esp+0x4], esi
	mov dword [esp], bigConfigString
	call strcat
	call _Z22Cmd_EndTokenizedStringv
	mov edi, bigConfigString
	jmp _Z26CL_CGameNeedsServerCommandii_90
_Z26CL_CGameNeedsServerCommandii_520:
	call _Z22Cmd_EndTokenizedStringv
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call _Z27Cmd_TokenizeStringWithLimitPKci
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
	jle _Z26CL_CGameNeedsServerCommandii_210
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z26CL_CGameNeedsServerCommandii_390:
	mov [esp], eax
	call atoi
	mov [ebp-0x40], eax
	cmp eax, 0x989
	ja _Z26CL_CGameNeedsServerCommandii_220
_Z26CL_CGameNeedsServerCommandii_470:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z26CL_CGameNeedsServerCommandii_230
	mov dword [ebp-0x38], _cstring_null
_Z26CL_CGameNeedsServerCommandii_420:
	mov esi, clients
	mov edx, [ebp-0x40]
	mov eax, [esi+edx*4+0x2fbc]
	lea eax, [esi+eax+0x55e4]
	mov ecx, [ebp-0x38]
	mov [esp+0x4], ecx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z26CL_CGameNeedsServerCommandii_240
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
	jmp _Z26CL_CGameNeedsServerCommandii_250
_Z26CL_CGameNeedsServerCommandii_280:
	add dword [ebp-0x3c], 0x1
	add dword [ebp-0x30], 0x4
	add dword [ebp-0x2c], 0x4
	cmp dword [ebp-0x3c], 0x98a
	jz _Z26CL_CGameNeedsServerCommandii_260
_Z26CL_CGameNeedsServerCommandii_250:
	mov eax, [ebp-0x3c]
	cmp [ebp-0x40], eax
	jz _Z26CL_CGameNeedsServerCommandii_270
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov ecx, [ebp-0x34]
	lea ebx, [ecx+eax+0x2628]
_Z26CL_CGameNeedsServerCommandii_400:
	cmp byte [ebx], 0x0
	jz _Z26CL_CGameNeedsServerCommandii_280
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
	jle _Z26CL_CGameNeedsServerCommandii_290
	mov dword [esp+0x4], _cstring_max_gamestate_ch
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp-0x48]
	mov edx, [ecx+0x255e4]
_Z26CL_CGameNeedsServerCommandii_290:
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
	jmp _Z26CL_CGameNeedsServerCommandii_280
_Z26CL_CGameNeedsServerCommandii_510:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15Con_ClearNotifyi
	mov eax, clients
	add eax, 0x656c8
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	jmp _Z26CL_CGameNeedsServerCommandii_300
_Z26CL_CGameNeedsServerCommandii_150:
	jnz _Z26CL_CGameNeedsServerCommandii_310
	mov edx, _cstring_null
	mov eax, [ecx+ebx*4+0x64]
	jmp _Z26CL_CGameNeedsServerCommandii_320
_Z26CL_CGameNeedsServerCommandii_120:
	sub ebx, 0x1
	jle _Z26CL_CGameNeedsServerCommandii_330
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z26CL_CGameNeedsServerCommandii_340
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z26CL_CGameNeedsServerCommandii_490:
	mov [esp], eax
	call _Z18CL_DisconnectErrorPKc
	jmp _Z26CL_CGameNeedsServerCommandii_350
_Z26CL_CGameNeedsServerCommandii_190:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x8]
	jmp _Z26CL_CGameNeedsServerCommandii_360
_Z26CL_CGameNeedsServerCommandii_170:
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x8]
	jmp _Z26CL_CGameNeedsServerCommandii_370
_Z26CL_CGameNeedsServerCommandii_310:
	mov eax, _cstring_null
	mov edx, _cstring_null
	jmp _Z26CL_CGameNeedsServerCommandii_380
_Z26CL_CGameNeedsServerCommandii_210:
	mov eax, _cstring_null
	jmp _Z26CL_CGameNeedsServerCommandii_390
_Z26CL_CGameNeedsServerCommandii_270:
	mov ebx, [ebp-0x38]
	jmp _Z26CL_CGameNeedsServerCommandii_400
_Z26CL_CGameNeedsServerCommandii_240:
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _ZN10LargeLocalD1Ev
	mov eax, 0x1
	jmp _Z26CL_CGameNeedsServerCommandii_410
_Z26CL_CGameNeedsServerCommandii_230:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	mov [ebp-0x38], eax
	jmp _Z26CL_CGameNeedsServerCommandii_420
_Z26CL_CGameNeedsServerCommandii_260:
	cmp dword [ebp-0x40], 0x1
	jz _Z26CL_CGameNeedsServerCommandii_430
_Z26CL_CGameNeedsServerCommandii_480:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	mov eax, 0x1
	jmp _Z26CL_CGameNeedsServerCommandii_410
_Z26CL_CGameNeedsServerCommandii_200:
	mov dword [esp+0x4], _cstring_bcs_exceeded_big
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z26CL_CGameNeedsServerCommandii_440
_Z26CL_CGameNeedsServerCommandii_180:
	mov dword [esp+0x4], _cstring_bcs_exceeded_big
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z26CL_CGameNeedsServerCommandii_450
_Z26CL_CGameNeedsServerCommandii_130:
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z26CL_CGameNeedsServerCommandii_460
_Z26CL_CGameNeedsServerCommandii_220:
	mov dword [esp+0x4], _cstring_configstring__ma
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z26CL_CGameNeedsServerCommandii_470
_Z26CL_CGameNeedsServerCommandii_430:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z20CL_SystemInfoChangedi
	jmp _Z26CL_CGameNeedsServerCommandii_480
_Z26CL_CGameNeedsServerCommandii_340:
	mov eax, _cstring_null
	jmp _Z26CL_CGameNeedsServerCommandii_490
_Z26CL_CGameNeedsServerCommandii_330:
	mov dword [esp+0x4], _cstring_exe_server_disco
	mov dword [esp], 0x3
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z26CL_CGameNeedsServerCommandii_350
	mov ebx, eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
_Z26CL_CGameNeedsServerCommandii_140:
	mov ebx, _cstring_null
	jmp _Z26CL_CGameNeedsServerCommandii_500
	
	
_Z26CL_CGameNeedsServerCommandii_jumptab_0:
	dd _Z26CL_CGameNeedsServerCommandii_510
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_520
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_510
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_300
	dd _Z26CL_CGameNeedsServerCommandii_530
	dd _Z26CL_CGameNeedsServerCommandii_350
	dd _Z26CL_CGameNeedsServerCommandii_540
	dd _Z26CL_CGameNeedsServerCommandii_550


;CL_DrawStretchPicRotatedST(ScreenPlacement const*, float, float, float, float, int, int, float, float, float, float, float, float, float const*, Material*)
_Z26CL_DrawStretchPicRotatedSTPK15ScreenPlacementffffiiffffffPKfP8Material:
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
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
	call _Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material
	leave
	ret
	nop


;CL_GetCurrentSnapshotNumber(int, int*, int*)
_Z27CL_GetCurrentSnapshotNumberiPiS_:
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
_Z33CL_DrawStretchPicPhysicalRotateXYfffffffffPKfP8Material:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material
	nop
	add [eax], al


;CL_GetScreenAspectRatioDisplayPixel()
_Z35CL_GetScreenAspectRatioDisplayPixelv:
	push ebp
	mov ebp, esp
	mov eax, cls
	fld dword [eax+0x2dc01c]
	pop ebp
	ret


;CL_SetADS(int, unsigned char)
_Z9CL_SetADSih:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, clients
	mov [eax], dl
	pop ebp
	ret
	nop


;LoadWorld(char const*)
_Z9LoadWorldPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11R_LoadWorldPKcPii
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z9LoadWorldPKc_10
	mov eax, [ebp-0xc]
	leave
	ret
_Z9LoadWorldPKc_10:
	call _Z13Com_UnloadBspv
	mov eax, [ebp-0xc]
	leave
	ret


;Initialized global or static variables of cl_cgame_mp:
SECTION .data


;Initialized constant data of cl_cgame_mp:
SECTION .rdata
g_color_table: dd 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x3eb851ec, 0x3eb851ec, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3eb851ec, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000


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

