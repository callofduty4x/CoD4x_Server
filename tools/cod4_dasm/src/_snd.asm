;Imports of snd:
	extern Q_stricmp
	extern SND_Is2DChannelFree
	extern SND_Stop2DChannel
	extern SND_Is3DChannelFree
	extern SND_Stop3DChannel
	extern SND_IsStreamChannelFree
	extern SND_StopStreamChannel
	extern Com_Error
	extern SND_Pause2DChannel
	extern SND_PauseStreamChannel
	extern SND_Pause3DChannel
	extern SND_Unpause2DChannel
	extern SND_UnpauseStreamChannel
	extern SND_Unpause3DChannel
	extern cl_paused
	extern Com_GetSoundFileName
	extern randomf
	extern SND_StartAliasStreamOnChannel
	extern cmd_args
	extern atoi
	extern Com_Printf
	extern atof
	extern Com_PickSoundAlias
	extern AxisToAngles
	extern AngleVectors
	extern CL_AddDebugStarWithText
	extern colorLtCyan
	extern colorWhiteFaded
	extern CL_AddDebugString
	extern CL_AddDebugStar
	extern colorGreen
	extern va
	extern memset
	extern floorf
	extern SND_Set2DChannelPlaybackRate
	extern StreamFileNameIsNullSound
	extern Com_PrintError
	extern Com_AliasNameRefersToSingleAlias
	extern SND_Set3DChannelPlaybackRate
	extern SND_Set3DPosition
	extern SND_SetStreamChannelPlaybackRate
	extern Com_DPrintf
	extern SND_StartAlias2DSample
	extern SND_StartAlias3DSample
	extern MemFile_WriteData
	extern MemFile_WriteCString
	extern SND_GetAliasOffset
	extern MemFile_ReadData
	extern MemFile_ReadCString
	extern SND_GetAliasWithOffset
	extern SND_SetStreamChannelFromSaveInfo
	extern SND_GetDriverCPUPercentage
	extern com_statmon
	extern Sys_Milliseconds
	extern SND_DriverPreUpdate
	extern Com_GetTimescaleForSnd
	extern Sys_EnterCriticalSection
	extern Sys_LeaveCriticalSection
	extern SND_DriverPostUpdate
	extern Cvar_ClearModified
	extern SND_Update3DChannel
	extern clientUIActives
	extern StatMon_Warning
	extern MemFile_InitForReading
	extern MemFile_MoveToSegment
	extern SND_UpdateStreamChannel
	extern SND_Update2DChannel
	extern SND_Get2DChannelPlaybackRate
	extern Com_PickSoundAliasFromList
	extern SND_GetStreamChannelPlaybackRate
	extern SND_Get3DChannelPlaybackRate
	extern SND_RestoreEq
	extern SND_SetRoomtype
	extern SND_Set2DChannelFromSaveInfo
	extern SND_PrintEqParams
	extern snd_eqTypeStrings
	extern SND_SetEqParams
	extern SND_SetEqQ
	extern Voice_Shutdown
	extern Com_UnloadSoundAliases
	extern SND_ShutdownDriver
	extern Cmd_RemoveCommand
	extern DB_FindXAssetHeader
	extern Com_GetVolumeFalloffCurveValue
	extern SND_DisableEq
	extern SND_SetEqFreq
	extern SND_SetEqGain
	extern SND_SetEqType
	extern AxisCopy
	extern memcpy
	extern SND_Update3DChannelReverb
	extern SND_UpdateStreamChannelReverb
	extern SND_Update2DChannelReverb
	extern Com_PrintWarning
	extern CG_SubtitleSndLengthNotify
	extern Com_sprintf
	extern SND_GetStreamChannelVolume
	extern SND_Get2DChannelVolume
	extern SND_Get3DChannelVolume
	extern CG_GetSoundEntityOrientation
	extern snd_roomStrings
	extern Cvar_RegisterBool
	extern Cvar_RegisterFloat
	extern Cvar_RegisterInt
	extern Cvar_RegisterEnum
	extern Com_LoadRawTextFile
	extern Com_BeginParseSession
	extern Com_SetCSV
	extern Com_Parse
	extern strcpy
	extern Com_ParseOnLine
	extern Com_SkipRestOfLine
	extern Com_EndParseSession
	extern Com_UnloadRawTextFile
	extern BG_RegisterShockVolumeDvars
	extern Cmd_AddCommand
	extern Voice_Init
	extern SND_SaveEq
	extern SND_Get3DChannelLength
	extern SND_Get3DChannelSaveInfo
	extern SND_Get2DChannelLength
	extern SND_Get2DChannelSaveInfo
	extern SND_GetStreamChannelLength
	extern SND_GetStreamChannelSaveInfo

;Exports of snd:
	global g_sndPhysics
	global snd_draw3DNames
	global g_FXPlaySoundCount
	global g_FXPlaySounds
	global StopSoundAliasesOnEnt
	global SND_ValidateSoundAliasBlend
	global SND_PauseSounds
	global SND_UnpauseSounds
	global SND_StartBackground
	global SND_ParseChannelAndBand_f
	global _ZZ8SND_InitvE22SND_DeactivateEq_f_VAR
	global _ZZ8SND_InitvE19SND_SetEqType_f_VAR
	global _ZZ8SND_InitvE16SND_SetEqQ_f_VAR
	global _ZZ8SND_InitvE19SND_SetEqGain_f_VAR
	global _ZZ8SND_InitvE19SND_SetEqFreq_f_VAR
	global _ZZ8SND_InitvE15SND_SetEq_f_VAR
	global _ZZ8SND_InitvE19SND_PlayLocal_f_VAR
	global _ZZ8SND_InitvE38SND_DeactivateEnvironmentEffects_f_VAR
	global _ZZ8SND_InitvE31SND_SetEnvironmentEffects_f_VAR
	global SND_PlayLocal_f
	global DebugDrawWorldSound3D
	global DebugDrawWorldSounds
	global SND_FindReplaceableChannel
	global SND_StartAliasStream
	global SND_PlaySoundAlias_Internal
	global _ZZ15SND_PlayLocal_fvE7MYCOLOR
	global SND_SaveChanInfo
	global SND_RestoreChanInfo
	global SND_RestoreStreamChannel
	global SND_Update
	global SND_Restore
	global SND_SetEq_f
	global SND_AddVoice
	global SND_SetEqQ_f
	global SND_Shutdown
	global DB_LoadSounds
	global DB_SaveSounds
	global SND_Attenuate
	global SND_StopMusic
	global SND_StopSounds
	global SND_RemoveVoice
	global SND_SetEqFreq_f
	global SND_SetEqGain_f
	global SND_SetEqType_f
	global SND_SetListener
	global SND_StopAmbient
	global SND_ErrorCleanup
	global SND_HasFreeVoice
	global SND_InitFXSounds
	global SND_PlayFXSounds
	global SND_FadeAllSounds
	global SND_SaveListeners
	global SND_UpdateReverbs
	global SND_DeactivateEq_f
	global SND_GetKnownLength
	global SND_PlayMusicAlias
	global SND_PlaySoundAlias
	global SND_AddLengthNotify
	global SND_AddPhysicsSound
	global SND_GetSoundOverlay
	global SND_StopSoundsOnEnt
	global SND_IsAliasChannel3D
	global SND_PlayAmbientAlias
	global SND_ResetChannelInfo
	global SND_RestoreListeners
	global SND_ShutdownChannels
	global SND_AcquirePlaybackId
	global SND_FindFree2DChannel
	global SND_FindFree3DChannel
	global SND_GetEntChannelName
	global SND_SetChannelVolumes
	global SND_AnyActiveListeners
	global SND_DisconnectListener
	global SND_GetEntChannelCount
	global SND_AddPlayFXSoundAlias
	global SND_GetVolumeNormalized
	global SND_SetChannelStartInfo
	global SND_StopSoundAliasOnEnt
	global SND_UpdateLoopingSounds
	global SND_GetCurrent3DPosition
	global SND_SetEnvironmentEffects
	global SND_PlaySoundAliasAsMaster
	global SND_SetPlaybackIdNotPlayed
	global SND_UpdateBackgroundVolume
	global SND_PlayBlendedSoundAliases
	global SND_SetEnvironmentEffects_f
	global SND_SetSoundFileChannelInfo
	global SND_DeactivateChannelVolumes
	global SND_GetLerpedSlavePercentage
	global SND_PlayLocalSoundAliasByName
	global SND_DeactivateEnvironmentEffects
	global SND_StopChannelAndPlayChainAlias
	global SND_DeactivateEnvironmentEffects_f
	global SND_GetListenerIndexNearestToOrigin
	global SND_Init
	global SND_Save
	global snd_cinematicVolumeScale
	global snd_errorOnMissing
	global snd_touchStreamFilesOnLoad
	global g_snd
	global snd_enableReverb
	global snd_draw3D
	global snd_enable2D
	global snd_enable3D
	global snd_enableEq
	global snd_enableStream
	global snd_levelFadeTime
	global snd_slaveFadeTime
	global snd_volume


SECTION .text


;StopSoundAliasesOnEnt(SndEntHandle, char const*)
StopSoundAliasesOnEnt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov [ebp-0x20], edx
	cmp byte [g_snd], 0x0
	jz StopSoundAliasesOnEnt_10
	mov dword [ebp-0x1c], 0x0
	xor ebx, ebx
	mov esi, g_snd+0x61f0
	jmp StopSoundAliasesOnEnt_20
StopSoundAliasesOnEnt_30:
	add ebx, 0x1
	add esi, 0x8c
	cmp ebx, 0x35
	jz StopSoundAliasesOnEnt_10
StopSoundAliasesOnEnt_20:
	cmp [esi+0x10], edi
	jnz StopSoundAliasesOnEnt_30
	test ebx, ebx
	js StopSoundAliasesOnEnt_40
	cmp [g_snd+0x7eec], ebx
	jg StopSoundAliasesOnEnt_50
StopSoundAliasesOnEnt_40:
	cmp ebx, 0x7
	jle StopSoundAliasesOnEnt_60
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, ebx
	jg StopSoundAliasesOnEnt_70
StopSoundAliasesOnEnt_60:
	cmp ebx, 0x27
	jle StopSoundAliasesOnEnt_80
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, ebx
	jg StopSoundAliasesOnEnt_90
StopSoundAliasesOnEnt_80:
	mov eax, [ebp-0x20]
	test eax, eax
	jz StopSoundAliasesOnEnt_100
	mov eax, [esi+0x58]
	test eax, eax
	jz StopSoundAliasesOnEnt_110
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz StopSoundAliasesOnEnt_100
StopSoundAliasesOnEnt_110:
	mov eax, [esi+0x5c]
	test eax, eax
	jz StopSoundAliasesOnEnt_30
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz StopSoundAliasesOnEnt_30
StopSoundAliasesOnEnt_100:
	mov [esp], ebx
	call dword [ebp-0x1c]
	add ebx, 0x1
	add esi, 0x8c
	cmp ebx, 0x35
	jnz StopSoundAliasesOnEnt_20
StopSoundAliasesOnEnt_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
StopSoundAliasesOnEnt_50:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz StopSoundAliasesOnEnt_30
	mov eax, SND_Stop2DChannel
	mov [ebp-0x1c], eax
	jmp StopSoundAliasesOnEnt_80
StopSoundAliasesOnEnt_70:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz StopSoundAliasesOnEnt_30
	mov edx, SND_Stop3DChannel
	mov [ebp-0x1c], edx
	jmp StopSoundAliasesOnEnt_80
StopSoundAliasesOnEnt_90:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz StopSoundAliasesOnEnt_30
	mov eax, SND_StopStreamChannel
	mov [ebp-0x1c], eax
	jmp StopSoundAliasesOnEnt_80


;SND_ValidateSoundAliasBlend(snd_alias_t const*, snd_alias_t const*, unsigned char)
SND_ValidateSoundAliasBlend:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov ebx, edx
	cmp eax, edx
	jz SND_ValidateSoundAliasBlend_10
	mov eax, [eax+0x10]
	cmp eax, [edx+0x10]
	jz SND_ValidateSoundAliasBlend_20
	test cl, cl
	jnz SND_ValidateSoundAliasBlend_30
SND_ValidateSoundAliasBlend_50:
	xor eax, eax
SND_ValidateSoundAliasBlend_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_ValidateSoundAliasBlend_30:
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_ValidateSoundAliasBlend_20:
	mov eax, [esi+0x48]
	cmp eax, [edx+0x48]
	jz SND_ValidateSoundAliasBlend_40
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b1
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_210:
	mov eax, [ebx+0x8]
	test eax, eax
	jnz SND_ValidateSoundAliasBlend_70
SND_ValidateSoundAliasBlend_10:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_ValidateSoundAliasBlend_40:
	mov eax, [esi+0x30]
	mov [ebp-0x20], eax
	and eax, 0x1
	mov [ebp-0x1c], eax
	mov edi, [edx+0x30]
	mov eax, edi
	and eax, 0x1
	cmp [ebp-0x1c], eax
	jz SND_ValidateSoundAliasBlend_80
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b2
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_80:
	mov edx, [ebp-0x20]
	and edx, 0xc0
	mov eax, edi
	and eax, 0xc0
	cmp eax, edx
	jz SND_ValidateSoundAliasBlend_90
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b3
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_90:
	mov edx, [ebp-0x20]
	and edx, 0x3f00
	mov eax, edi
	and eax, 0x3f00
	cmp eax, edx
	jz SND_ValidateSoundAliasBlend_100
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b4
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_100:
	mov edx, [ebp-0x20]
	and edx, 0x2
	mov eax, edi
	and eax, 0x2
	cmp edx, eax
	jz SND_ValidateSoundAliasBlend_110
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b5
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_110:
	mov edx, [ebp-0x20]
	and edx, 0x4
	mov eax, edi
	and eax, 0x4
	cmp edx, eax
	jz SND_ValidateSoundAliasBlend_120
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b6
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_120:
	mov edx, [ebp-0x20]
	and edx, 0x8
	mov eax, edi
	and eax, 0x8
	cmp edx, eax
	jz SND_ValidateSoundAliasBlend_130
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b7
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_130:
	and dword [ebp-0x20], 0x10
	and edi, 0x10
	cmp [ebp-0x20], edi
	jz SND_ValidateSoundAliasBlend_140
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b8
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_140:
	movss xmm0, dword [esi+0x34]
	ucomiss xmm0, [ebx+0x34]
	jp SND_ValidateSoundAliasBlend_150
	jz SND_ValidateSoundAliasBlend_160
SND_ValidateSoundAliasBlend_150:
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b9
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_160:
	mov eax, [esi+0x44]
	cmp eax, [ebx+0x44]
	jz SND_ValidateSoundAliasBlend_170
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b10
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_170:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz SND_ValidateSoundAliasBlend_180
	movss xmm0, dword [esi+0x20]
	ucomiss xmm0, [esi+0x24]
	jnz SND_ValidateSoundAliasBlend_190
	jp SND_ValidateSoundAliasBlend_190
	movss xmm0, dword [ebx+0x20]
	ucomiss xmm0, [ebx+0x24]
	jp SND_ValidateSoundAliasBlend_190
	jz SND_ValidateSoundAliasBlend_200
SND_ValidateSoundAliasBlend_190:
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b11
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_180:
	mov eax, [esi+0x8]
	test eax, eax
	jz SND_ValidateSoundAliasBlend_210
SND_ValidateSoundAliasBlend_70:
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b12
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60
SND_ValidateSoundAliasBlend_200:
	movss xmm0, dword [esi+0x18]
	ucomiss xmm0, [esi+0x1c]
	jnz SND_ValidateSoundAliasBlend_220
	jp SND_ValidateSoundAliasBlend_220
	movss xmm0, dword [ebx+0x18]
	ucomiss xmm0, [ebx+0x1c]
	jp SND_ValidateSoundAliasBlend_220
	jz SND_ValidateSoundAliasBlend_180
SND_ValidateSoundAliasBlend_220:
	test cl, cl
	jz SND_ValidateSoundAliasBlend_50
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_blend_b13
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp SND_ValidateSoundAliasBlend_60


;SND_PauseSounds()
SND_PauseSounds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	cmp byte [g_snd], 0x0
	jz SND_PauseSounds_10
	cmp byte [g_snd+0x2], 0x0
	jnz SND_PauseSounds_10
	mov eax, [g_snd+0x7eec]
	test eax, eax
	jg SND_PauseSounds_20
SND_PauseSounds_60:
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg SND_PauseSounds_30
SND_PauseSounds_120:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg SND_PauseSounds_40
SND_PauseSounds_90:
	mov byte [g_snd+0x2], 0x1
	mov eax, [g_snd+0x4dcc]
	mov [g_snd+0x14], eax
SND_PauseSounds_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SND_PauseSounds_20:
	xor ebx, ebx
	mov esi, g_snd
	jmp SND_PauseSounds_50
SND_PauseSounds_70:
	add ebx, 0x1
	add esi, 0x8c
	cmp ebx, [g_snd+0x7eec]
	jge SND_PauseSounds_60
SND_PauseSounds_50:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_PauseSounds_70
	mov eax, [esi+0x6248]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	cmp byte [eax+g_snd+0x4d1c], 0x0
	jz SND_PauseSounds_70
	mov [esp], ebx
	call SND_Pause2DChannel
	jmp SND_PauseSounds_70
SND_PauseSounds_40:
	mov ebx, 0x28
	mov esi, g_snd
	jmp SND_PauseSounds_80
SND_PauseSounds_100:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp ebx, eax
	jge SND_PauseSounds_90
SND_PauseSounds_80:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_PauseSounds_100
	mov eax, [esi+0x7828]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	cmp byte [eax+g_snd+0x4d1c], 0x0
	jz SND_PauseSounds_100
	mov [esp], ebx
	call SND_PauseStreamChannel
	jmp SND_PauseSounds_100
SND_PauseSounds_30:
	mov ebx, 0x8
	mov esi, g_snd
	jmp SND_PauseSounds_110
SND_PauseSounds_130:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp ebx, eax
	jge SND_PauseSounds_120
SND_PauseSounds_110:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz SND_PauseSounds_130
	mov eax, [esi+0x66a8]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	cmp byte [eax+g_snd+0x4d1c], 0x0
	jz SND_PauseSounds_130
	mov [esp], ebx
	call SND_Pause3DChannel
	jmp SND_PauseSounds_130
	nop


;SND_UnpauseSounds()
SND_UnpauseSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	cmp byte [g_snd], 0x0
	jz SND_UnpauseSounds_10
	cmp byte [g_snd+0x2], 0x0
	jz SND_UnpauseSounds_10
	mov edi, [g_snd+0x4dcc]
	sub edi, [g_snd+0x14]
	mov eax, [g_snd+0x7eec]
	test eax, eax
	jg SND_UnpauseSounds_20
SND_UnpauseSounds_60:
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg SND_UnpauseSounds_30
SND_UnpauseSounds_120:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg SND_UnpauseSounds_40
SND_UnpauseSounds_90:
	mov byte [g_snd+0x2], 0x0
	mov dword [g_snd+0x14], 0x0
SND_UnpauseSounds_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_UnpauseSounds_20:
	xor ebx, ebx
	mov esi, g_snd
	jmp SND_UnpauseSounds_50
SND_UnpauseSounds_70:
	add ebx, 0x1
	add esi, 0x8c
	cmp ebx, [g_snd+0x7eec]
	jge SND_UnpauseSounds_60
SND_UnpauseSounds_50:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_UnpauseSounds_70
	cmp byte [esi+0x6274], 0x0
	jz SND_UnpauseSounds_70
	mov [esp+0x4], edi
	mov [esp], ebx
	call SND_Unpause2DChannel
	jmp SND_UnpauseSounds_70
SND_UnpauseSounds_40:
	mov ebx, 0x28
	mov esi, g_snd
	jmp SND_UnpauseSounds_80
SND_UnpauseSounds_100:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp ebx, eax
	jge SND_UnpauseSounds_90
SND_UnpauseSounds_80:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_UnpauseSounds_100
	cmp byte [esi+0x7854], 0x0
	jz SND_UnpauseSounds_100
	mov [esp+0x4], edi
	mov [esp], ebx
	call SND_UnpauseStreamChannel
	jmp SND_UnpauseSounds_100
SND_UnpauseSounds_30:
	mov ebx, 0x8
	mov esi, g_snd
	jmp SND_UnpauseSounds_110
SND_UnpauseSounds_130:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp ebx, eax
	jge SND_UnpauseSounds_120
SND_UnpauseSounds_110:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz SND_UnpauseSounds_130
	cmp byte [esi+0x66d4], 0x0
	jz SND_UnpauseSounds_130
	mov [esp+0x4], edi
	mov [esp], ebx
	call SND_Unpause3DChannel
	jmp SND_UnpauseSounds_130


;SND_StartBackground(int, int, snd_alias_t const*, int, float, unsigned char, snd_alias_system_t)
SND_StartBackground:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov edi, eax
	mov [ebp-0xf4], edx
	mov esi, ecx
	movss [ebp-0xf8], xmm0
	movzx eax, byte [ebp+0xc]
	mov [ebp-0xf9], al
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	setnz al
	cmp al, [g_snd+0x2]
	jz SND_StartBackground_10
	test al, al
	jnz SND_StartBackground_20
	call SND_UnpauseSounds
SND_StartBackground_10:
	mov edx, [esi+0x30]
	mov eax, edx
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e30], 0x0
	jnz SND_StartBackground_30
SND_StartBackground_80:
	and edx, 0xc0
	add edx, 0xffffff80
	jz SND_StartBackground_40
	mov dword [esp+0x8], 0x80
	lea ebx, [ebp-0xd0]
	mov [esp+0x4], ebx
	mov [esp], esi
	call Com_GetSoundFileName
	mov [esp+0xc], ebx
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_alias_s_sound_s_
	mov dword [esp], 0x2
	call Com_Error
SND_StartBackground_40:
	movss xmm0, dword [esi+0x18]
	movss [ebp-0xf0], xmm0
	movss xmm0, dword [esi+0x1c]
	subss xmm0, [ebp-0xf0]
	movss [ebp-0xe0], xmm0
	call randomf
	fstp dword [ebp-0xec]
	movss xmm0, dword [ebp-0xe0]
	mulss xmm0, [ebp-0xec]
	movss [ebp-0xe0], xmm0
	movss xmm0, dword [ebp-0xf0]
	addss xmm0, [ebp-0xe0]
	movss [ebp-0xe0], xmm0
	movss xmm0, dword [esi+0x20]
	movss [ebp-0xe8], xmm0
	movss xmm0, dword [esi+0x24]
	subss xmm0, [ebp-0xe8]
	movss [ebp-0xdc], xmm0
	call randomf
	fstp dword [ebp-0xe4]
	movss xmm0, dword [ebp-0xdc]
	mulss xmm0, [ebp-0xe4]
	movss [ebp-0xdc], xmm0
	movss xmm0, dword [ebp-0xe8]
	addss xmm0, [ebp-0xdc]
	movss [ebp-0xdc], xmm0
	mov ebx, [ebp-0xf4]
	add ebx, 0x28
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jz SND_StartBackground_50
SND_StartBackground_90:
	lea edx, [ebx+ebx*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	movss xmm0, dword [ebp-0xe0]
	movss [eax+g_snd+0x6240], xmm0
	mov edx, g_snd+0x4c40
	mov ecx, [ebp-0xf4]
	movss [edx+ecx*8+0x8], xmm0
	cmp dword [ebp+0x8], 0x0
	jle SND_StartBackground_60
	cvtsi2ss xmm1, dword [ebp+0x8]
	movss xmm0, dword [eax+g_snd+0x6240]
	divss xmm0, xmm1
	movss [edx+ecx*8+0xc], xmm0
	mov dword [eax+g_snd+0x6240], 0x0
SND_StartBackground_100:
	mov [ebp-0x50], esi
	mov [ebp-0x4c], esi
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0xffff
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	lea eax, [edi+g_snd+0x4d50]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov [ebp-0x40], eax
	mov eax, [edx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x38], eax
	lea edx, [ebx+ebx*4]
	lea eax, [edx*8]
	sub eax, edx
	mov eax, [eax*4+g_snd+0x6240]
	mov [ebp-0x34], eax
	movss xmm0, dword [ebp-0xdc]
	movss [ebp-0x30], xmm0
	mov dword [ebp-0x2c], 0x0
	movss xmm0, dword [ebp-0xf8]
	movss [ebp-0x28], xmm0
	mov eax, [esi+0x44]
	mov [ebp-0x24], eax
	mov eax, [esi+0x30]
	shr eax, 1
	and eax, 0x1
	mov [ebp-0x20], al
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	movzx eax, byte [ebp-0xf9]
	mov [ebp-0x1f], al
	mov eax, [snd_enableStream]
	cmp byte [eax+0xc], 0x0
	jz SND_StartBackground_70
	mov [esp+0x4], ebx
	lea eax, [ebp-0x50]
	mov [esp], eax
	call SND_StartAliasStreamOnChannel
SND_StartBackground_70:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartBackground_20:
	call SND_PauseSounds
	mov edx, [esi+0x30]
	mov eax, edx
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e30], 0x0
	jz SND_StartBackground_80
SND_StartBackground_30:
	mov dword [esp+0x8], 0x80
	lea ebx, [ebp-0xd0]
	mov [esp+0x4], ebx
	mov [esp], esi
	call Com_GetSoundFileName
	mov [esp+0xc], ebx
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_alias_s_sound_s_1
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [esi+0x30]
	jmp SND_StartBackground_80
SND_StartBackground_50:
	mov [esp], ebx
	call SND_StopStreamChannel
	jmp SND_StartBackground_90
SND_StartBackground_60:
	mov eax, [ebp-0xf4]
	mov dword [edx+eax*8+0xc], 0x0
	jmp SND_StartBackground_100


;SND_ParseChannelAndBand_f(int*, int*, int*)
SND_ParseChannelAndBand_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SND_ParseChannelAndBand_f_10
	mov eax, [eax+edx*4+0x64]
	mov edi, [eax+0x4]
SND_ParseChannelAndBand_f_120:
	mov edx, [g_snd+0x61ec]
	test edx, edx
	jg SND_ParseChannelAndBand_f_20
SND_ParseChannelAndBand_f_110:
	mov ebx, 0xffffffff
SND_ParseChannelAndBand_f_90:
	mov eax, [ebp-0x1c]
	mov [eax], ebx
	test ebx, ebx
	js SND_ParseChannelAndBand_f_30
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg SND_ParseChannelAndBand_f_40
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov edx, [ebp-0x20]
	mov [edx], eax
	cmp eax, 0x1
	jbe SND_ParseChannelAndBand_f_50
SND_ParseChannelAndBand_f_60:
	mov dword [esp+0xc], 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_eqindex_
	mov dword [esp], 0x9
	call Com_Printf
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_ParseChannelAndBand_f_40:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call atoi
	mov edx, [ebp-0x20]
	mov [edx], eax
	cmp eax, 0x1
	ja SND_ParseChannelAndBand_f_60
SND_ParseChannelAndBand_f_50:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg SND_ParseChannelAndBand_f_70
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov edx, [ebp-0x24]
	mov [edx], eax
	cmp eax, 0x2
	ja SND_ParseChannelAndBand_f_80
SND_ParseChannelAndBand_f_130:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_ParseChannelAndBand_f_20:
	xor ebx, ebx
	mov esi, g_snd+0x4dec
SND_ParseChannelAndBand_f_100:
	mov [esp+0x4], esi
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz SND_ParseChannelAndBand_f_90
	add ebx, 0x1
	add esi, 0x50
	cmp ebx, [g_snd+0x61ec]
	jl SND_ParseChannelAndBand_f_100
	jmp SND_ParseChannelAndBand_f_110
SND_ParseChannelAndBand_f_10:
	mov edi, _cstring_null
	jmp SND_ParseChannelAndBand_f_120
SND_ParseChannelAndBand_f_70:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	mov [esp], eax
	call atoi
	mov edx, [ebp-0x24]
	mov [edx], eax
	cmp eax, 0x2
	jbe SND_ParseChannelAndBand_f_130
SND_ParseChannelAndBand_f_80:
	mov dword [esp+0xc], 0x3
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_band_i_m
	mov dword [esp], 0x9
	call Com_Printf
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_ParseChannelAndBand_f_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_unknown_channel_
	mov dword [esp], 0x9
	call Com_Printf
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_PlayLocal_f()
SND_PlayLocal_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov ecx, cmd_args
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x3
	jz SND_PlayLocal_f_10
	jg SND_PlayLocal_f_20
	cmp eax, 0x2
	jz SND_PlayLocal_f_30
SND_PlayLocal_f_60:
	test eax, eax
	jle SND_PlayLocal_f_40
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax]
SND_PlayLocal_f_230:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_sndalias
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
SND_PlayLocal_f_20:
	cmp eax, 0x4
	jz SND_PlayLocal_f_50
	cmp eax, 0x5
	jnz SND_PlayLocal_f_60
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+0x10]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x60]
	cvtsd2ss xmm0, [ebp-0x60]
	movss [ebp-0x40], xmm0
	mov ecx, cmd_args
SND_PlayLocal_f_210:
	mov eax, [ecx]
	cmp dword [ecx+eax*4+0x44], 0x3
	jg SND_PlayLocal_f_70
	mov eax, _cstring_null
SND_PlayLocal_f_240:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x58]
	cvtsd2ss xmm1, [ebp-0x58]
	movss [ebp-0x44], xmm1
	mov ecx, cmd_args
	mov eax, [ecx]
	cmp dword [ecx+eax*4+0x44], 0x2
	jg SND_PlayLocal_f_80
SND_PlayLocal_f_150:
	mov eax, _cstring_null
SND_PlayLocal_f_160:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x50]
	cvtsd2ss xmm0, [ebp-0x50]
	movss [ebp-0x3c], xmm0
	mov ecx, cmd_args
SND_PlayLocal_f_220:
	mov eax, [ecx]
	cmp dword [ecx+eax*4+0x44], 0x1
	jle SND_PlayLocal_f_90
	mov eax, [ecx+eax*4+0x64]
	mov eax, [eax+0x4]
SND_PlayLocal_f_200:
	mov [esp], eax
	call Com_PickSoundAlias
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SND_PlayLocal_f_100
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
SND_PlayLocal_f_190:
	mov [esp], eax
	call Com_PickSoundAlias
	mov ebx, eax
	test eax, eax
	jz SND_PlayLocal_f_110
	xor dword [ebp-0x44], 0x80000000
	movss xmm1, dword [ebp-0x44]
	movss [ebp-0x1c], xmm1
	xor dword [ebp-0x40], 0x80000000
	movss xmm0, dword [ebp-0x40]
	movss [ebp-0x20], xmm0
	mov dword [ebp-0x18], 0x0
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov dword [esp], g_snd+0x4d68
	call AxisToAngles
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call AngleVectors
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x14], xmm0
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x34]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x30]
	movss [ebp-0xc], xmm0
	movss xmm0, dword [g_snd+0x4d5c]
	addss xmm0, [ebp-0x14]
	movss [ebp-0x14], xmm0
	movss xmm0, dword [g_snd+0x4d60]
	addss xmm0, [ebp-0x10]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [g_snd+0x4d64]
	addss xmm0, [ebp-0xc]
	movss [ebp-0xc], xmm0
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	lea esi, [ebp-0x14]
	mov [esp], esi
	xor ecx, ecx
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, ebx
	mov eax, ebx
	call SND_PlaySoundAlias_Internal
	cvtss2sd xmm2, [ebp-0xc]
	cvtss2sd xmm1, [ebp-0x10]
	cvtss2sd xmm0, [ebp-0x14]
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SND_PlayLocal_f_120
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
SND_PlayLocal_f_250:
	movsd [esp+0x1c], xmm2
	movsd [esp+0x14], xmm1
	movsd [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_playing_local_so
	mov dword [esp], 0xe
	call Com_Printf
	movss xmm1, dword [ebp-0x3c]
	ucomiss xmm1, [_float_400_00000000]
	jae SND_PlayLocal_f_130
	jp SND_PlayLocal_f_130
	mov ecx, 0x3f000000
SND_PlayLocal_f_180:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SND_PlayLocal_f_140
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
SND_PlayLocal_f_260:
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0xc8
	mov [esp+0x10], ecx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _ZZ15SND_PlayLocal_fvE7MYCOLOR
	mov dword [esp+0x4], _ZZ15SND_PlayLocal_fvE7MYCOLOR
	mov [esp], esi
	call CL_AddDebugStarWithText
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
SND_PlayLocal_f_10:
	pxor xmm0, xmm0
	movss [ebp-0x40], xmm0
	movss [ebp-0x44], xmm0
	mov eax, [ecx]
	cmp dword [ecx+eax*4+0x44], 0x2
	jle SND_PlayLocal_f_150
SND_PlayLocal_f_80:
	mov eax, [ecx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp SND_PlayLocal_f_160
SND_PlayLocal_f_110:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SND_PlayLocal_f_170
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
SND_PlayLocal_f_270:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_find_sou
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
SND_PlayLocal_f_130:
	mov ecx, 0x3fc00000
	jmp SND_PlayLocal_f_180
SND_PlayLocal_f_100:
	mov eax, _cstring_null
	jmp SND_PlayLocal_f_190
SND_PlayLocal_f_90:
	mov eax, _cstring_null
	jmp SND_PlayLocal_f_200
SND_PlayLocal_f_50:
	pxor xmm1, xmm1
	movss [ebp-0x40], xmm1
	jmp SND_PlayLocal_f_210
SND_PlayLocal_f_30:
	movss xmm0, dword [_float_100_00000000]
	movss [ebp-0x3c], xmm0
	pxor xmm1, xmm1
	movss [ebp-0x40], xmm1
	movss [ebp-0x44], xmm1
	jmp SND_PlayLocal_f_220
SND_PlayLocal_f_40:
	mov eax, _cstring_null
	jmp SND_PlayLocal_f_230
SND_PlayLocal_f_70:
	mov eax, [ecx+eax*4+0x64]
	mov eax, [eax+0xc]
	jmp SND_PlayLocal_f_240
SND_PlayLocal_f_120:
	mov eax, _cstring_null
	jmp SND_PlayLocal_f_250
SND_PlayLocal_f_140:
	mov eax, _cstring_null
	jmp SND_PlayLocal_f_260
SND_PlayLocal_f_170:
	mov eax, _cstring_null
	jmp SND_PlayLocal_f_270
	nop


;DebugDrawWorldSound3D(int, int, int*, int*, float*)
DebugDrawWorldSound3D:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov edi, eax
	mov ebx, edx
	mov [ebp-0x14c], ecx
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	lea esi, [eax*4+g_snd+0x61f0]
	mov edx, [esi+0x10]
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [esi+0x78]
	mov [esp+0x4], eax
	mov [esp], edx
	call SND_GetCurrent3DPosition
	movss xmm4, dword [ebp-0x2c]
	movss xmm6, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x150], xmm0
	xor edx, edx
	mov ecx, g_snd
	movss xmm3, dword [_float_34028234663852885_float_3]
	mov eax, g_snd+0x4d50
DebugDrawWorldSound3D_20:
	cmp byte [ecx+0x4d90], 0x0
	jnz DebugDrawWorldSound3D_10
	movaps xmm2, xmm3
DebugDrawWorldSound3D_120:
	movss [ebp+edx*4-0x20], xmm2
	add edx, 0x1
	add eax, 0x38
	add ecx, 0x38
	cmp edx, 0x2
	jnz DebugDrawWorldSound3D_20
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jz DebugDrawWorldSound3D_30
	mov eax, [g_snd+0x4ddc]
	imul eax, eax
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0x1c]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_34028234663852885_float_3]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
DebugDrawWorldSound3D_30:
	movss xmm0, dword [ebp-0x20]
	xor ecx, ecx
	ucomiss xmm0, [ebp-0x1c]
	seta cl
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	add eax, g_snd+0x4d50
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm4
	movss xmm3, dword [edx+0x4]
	movaps xmm1, xmm3
	subss xmm1, xmm6
	movss xmm5, dword [edx+0x8]
	movaps xmm2, xmm5
	subss xmm2, [ebp-0x150]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0x144], xmm0
	ucomiss xmm0, [_float_10_00000000]
	jae DebugDrawWorldSound3D_40
	jp DebugDrawWorldSound3D_40
	movss xmm0, dword [_float_0_05000000]
	movss [ebp-0x140], xmm0
DebugDrawWorldSound3D_140:
	mov eax, [g_snd+0x14]
	test eax, eax
	jz DebugDrawWorldSound3D_50
	sub eax, [esi+0x1c]
	mov [ebp-0x13c], eax
DebugDrawWorldSound3D_130:
	cmp ebx, 0x3
	jz DebugDrawWorldSound3D_60
	subss xmm4, [edx]
	subss xmm6, xmm3
	movaps xmm3, xmm6
	movss xmm2, dword [ebp-0x150]
	subss xmm2, xmm5
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb DebugDrawWorldSound3D_70
	movss xmm5, dword [_float_1_00000000]
DebugDrawWorldSound3D_190:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	lea eax, [ecx+g_snd+0x4d50]
	lea edx, [eax+0x18]
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	mulss xmm0, [eax+0x18]
	mulss xmm3, xmm5
	mulss xmm3, [edx+0x4]
	addss xmm0, xmm3
	mulss xmm5, xmm2
	mulss xmm5, [edx+0x8]
	addss xmm0, xmm5
	mov ecx, [ebp+0xc]
	ucomiss xmm0, [ecx]
	jbe DebugDrawWorldSound3D_60
	mov eax, [ebp+0x8]
	mov [eax], edi
	movss [ecx], xmm0
DebugDrawWorldSound3D_60:
	mov edx, [esi+0x10]
	cmp edx, 0x3fe
	jz DebugDrawWorldSound3D_80
	mov ecx, [ebp-0x14c]
	cvtsi2ss xmm0, dword [ecx+edx*4]
	addss xmm0, [ebp-0x150]
	movss [ebp-0x24], xmm0
	mov edi, colorLtCyan
DebugDrawWorldSound3D_160:
	cmp ebx, 0x2
	jz DebugDrawWorldSound3D_90
	cmp ebx, 0x3
	jz DebugDrawWorldSound3D_100
	sub ebx, 0x1
	jz DebugDrawWorldSound3D_110
	mov ecx, [ebp-0x14c]
DebugDrawWorldSound3D_150:
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [_float_1_25000000]
	mulss xmm0, [_float__12_00000000]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x140], xmm0
	subss xmm0, [ebp-0x150]
	cvttss2si eax, xmm0
	mov [ecx+edx*4], eax
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DebugDrawWorldSound3D_10:
	movss xmm2, dword [eax+0xc]
	subss xmm2, xmm4
	movss xmm0, dword [eax+0x10]
	subss xmm0, xmm6
	movss xmm1, dword [eax+0x14]
	subss xmm1, [ebp-0x150]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp DebugDrawWorldSound3D_120
DebugDrawWorldSound3D_50:
	mov eax, [g_snd+0x4dcc]
	mov [ebp-0x13c], eax
	mov eax, [esi+0x1c]
	sub [ebp-0x13c], eax
	jmp DebugDrawWorldSound3D_130
DebugDrawWorldSound3D_40:
	divss xmm0, dword [_float_2000_00000000]
	mulss xmm0, [_float_3_50000000]
	movss [ebp-0x140], xmm0
	jmp DebugDrawWorldSound3D_140
DebugDrawWorldSound3D_90:
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov eax, [esi+0x58]
	mov eax, [eax]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x140]
	movss [esp+0x8], xmm0
	mov eax, colorWhiteFaded
	mov [esp+0x4], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call CL_AddDebugString
	mov edx, [esi+0x10]
DebugDrawWorldSound3D_110:
	mov ecx, [ebp-0x14c]
	mov eax, [ecx+edx*4]
	test eax, eax
	jnz DebugDrawWorldSound3D_150
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	lea edi, [ebp-0x2c]
	mov [esp], edi
	call CL_AddDebugStar
	mov edx, [esi+0x10]
	mov ecx, [ebp-0x14c]
	jmp DebugDrawWorldSound3D_150
DebugDrawWorldSound3D_80:
	mov edi, colorGreen
	jmp DebugDrawWorldSound3D_160
DebugDrawWorldSound3D_100:
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [_float_0_85000002]
	movss [ebp-0x140], xmm0
	mov [esp+0x8], edx
	mov eax, [esi+0x58]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_details_s
	call va
	mov edx, eax
	mov eax, [esi+0x10]
	mov ecx, [ebp-0x14c]
	mov ebx, [ecx+eax*4]
	test ebx, ebx
	jnz DebugDrawWorldSound3D_170
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x1
	movss xmm0, dword [ebp-0x140]
	movss [esp+0x10], xmm0
	mov [esp+0xc], edx
	mov eax, colorWhiteFaded
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call CL_AddDebugStarWithText
DebugDrawWorldSound3D_200:
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [_float__12_00000000]
	movss [ebp-0x148], xmm0
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	lea ebx, [ebp-0x12c]
	mov dword [ebp-0x12c], 0x656c6946
	mov word [ebp-0x128], 0x203a
	mov byte [ebp-0x126], 0x0
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov eax, 0x100
	sub eax, ecx
	mov [esp+0x8], eax
	lea ecx, [ebx+ecx]
	mov [esp+0x4], ecx
	mov eax, [esi+0x58]
	mov [esp], eax
	call Com_GetSoundFileName
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	movss xmm0, dword [ebp-0x140]
	movss [esp+0x8], xmm0
	mov ebx, colorWhiteFaded
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call CL_AddDebugString
	mov eax, [esi+0x10]
	cmp eax, 0x3fe
	jz DebugDrawWorldSound3D_180
	movss xmm0, dword [ebp-0x148]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	mov [esp+0x4], eax
	mov dword [esp], _cstring_owner_entity_i
DebugDrawWorldSound3D_210:
	call va
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x140]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call CL_AddDebugString
	movss xmm0, dword [ebp-0x148]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	mov eax, [esi+0x58]
	cvtss2sd xmm0, [eax+0x2c]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebp-0x144]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_distance_0f__0f
	call va
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x140]
	movss [esp+0x8], xmm0
	mov ebx, colorWhiteFaded
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call CL_AddDebugString
	movss xmm0, dword [ebp-0x148]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	cvtsi2ss xmm0, dword [ebp-0x13c]
	divss xmm0, dword [_float_1000_00000000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_time_3f
	call va
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x140]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call CL_AddDebugString
	mov edx, [esi+0x10]
	mov ecx, [ebp-0x14c]
	jmp DebugDrawWorldSound3D_150
DebugDrawWorldSound3D_70:
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm1
	jmp DebugDrawWorldSound3D_190
DebugDrawWorldSound3D_170:
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edx
	movss xmm0, dword [ebp-0x140]
	movss [esp+0x8], xmm0
	mov eax, colorWhiteFaded
	mov [esp+0x4], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call CL_AddDebugString
	jmp DebugDrawWorldSound3D_200
DebugDrawWorldSound3D_180:
	movss xmm0, dword [ebp-0x148]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	mov dword [esp], _cstring_owner_world
	jmp DebugDrawWorldSound3D_210
	nop


;DebugDrawWorldSounds(int)
DebugDrawWorldSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x122c
	mov edi, [ebp+0x8]
	test edi, edi
	jnz DebugDrawWorldSounds_10
DebugDrawWorldSounds_40:
	add esp, 0x122c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DebugDrawWorldSounds_10:
	mov dword [ebp-0x1c], 0xffffffff
	mov dword [ebp-0x20], 0xc0000000
	mov dword [esp+0x8], 0x1200
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1220]
	mov [esp], eax
	call memset
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg DebugDrawWorldSounds_20
DebugDrawWorldSounds_90:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg DebugDrawWorldSounds_30
DebugDrawWorldSounds_60:
	mov eax, [ebp-0x1c]
	cmp eax, 0xffffffff
	jz DebugDrawWorldSounds_40
	movss xmm0, dword [ebp-0x20]
	ucomiss xmm0, [_float_0_93000001]
	jb DebugDrawWorldSounds_40
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	lea ecx, [ebp-0x1220]
	mov edx, 0x3
	call DebugDrawWorldSound3D
	add esp, 0x122c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DebugDrawWorldSounds_30:
	mov ebx, 0x28
	mov esi, g_snd
	jmp DebugDrawWorldSounds_50
DebugDrawWorldSounds_70:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp ebx, eax
	jge DebugDrawWorldSounds_60
DebugDrawWorldSounds_50:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz DebugDrawWorldSounds_70
	mov eax, [esi+0x7828]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e30], 0x0
	jz DebugDrawWorldSounds_70
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	lea ecx, [ebp-0x1220]
	mov edx, edi
	mov eax, ebx
	call DebugDrawWorldSound3D
	jmp DebugDrawWorldSounds_70
DebugDrawWorldSounds_20:
	mov ebx, 0x8
	lea esi, [ebp-0x1c]
	jmp DebugDrawWorldSounds_80
DebugDrawWorldSounds_100:
	add ebx, 0x1
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp ebx, eax
	jge DebugDrawWorldSounds_90
DebugDrawWorldSounds_80:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz DebugDrawWorldSounds_100
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	lea ecx, [ebp-0x1220]
	mov edx, edi
	mov eax, ebx
	call DebugDrawWorldSound3D
	jmp DebugDrawWorldSounds_100
	nop


;SND_FindReplaceableChannel(SndStartAliasInfo*, int, int, int)
SND_FindReplaceableChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x50], eax
	mov esi, edx
	mov [ebp-0x54], ecx
	lea eax, [edx+edx*4]
	shl eax, 0x4
	movzx edx, byte [eax+g_snd+0x4e30]
	mov [ebp-0x39], dl
	mov eax, [eax+g_snd+0x4e2c]
	mov [ebp-0x44], eax
	test dl, dl
	jz SND_FindReplaceableChannel_10
	mov ebx, [ebp-0x50]
	add ebx, 0x10
	xor edx, edx
	mov ecx, g_snd
	movss xmm3, dword [_float_34028234663852885_float_3]
	mov eax, g_snd+0x4d50
SND_FindReplaceableChannel_30:
	cmp byte [ecx+0x4d90], 0x0
	jnz SND_FindReplaceableChannel_20
	movaps xmm2, xmm3
SND_FindReplaceableChannel_60:
	movss [ebp+edx*4-0x20], xmm2
	add edx, 0x1
	add eax, 0x38
	add ecx, 0x38
	cmp edx, 0x2
	jnz SND_FindReplaceableChannel_30
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jnz SND_FindReplaceableChannel_40
SND_FindReplaceableChannel_210:
	movss xmm0, dword [ebp-0x20]
	xor eax, eax
	ucomiss xmm0, [ebp-0x1c]
	seta al
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, g_snd+0x4d50
	lea edx, [eax+0xc]
	movss xmm3, dword [eax+0xc]
	subss xmm3, [ebx]
	movss xmm0, dword [edx+0x4]
	subss xmm0, [ebx+0x4]
	movss xmm1, dword [edx+0x8]
	subss xmm1, [ebx+0x8]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mov edx, [ebp-0x50]
	mov eax, [edx]
	mov eax, [eax+0x4]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x54]
	add eax, [ebp+0x8]
	mov [ebp-0x48], eax
	cmp [ebp-0x54], eax
	jl SND_FindReplaceableChannel_50
SND_FindReplaceableChannel_70:
	mov edi, 0xffffffff
SND_FindReplaceableChannel_120:
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_FindReplaceableChannel_20:
	movss xmm2, dword [eax+0xc]
	subss xmm2, [ebx]
	movss xmm0, dword [eax+0x10]
	subss xmm0, [ebx+0x4]
	movss xmm1, dword [eax+0x14]
	subss xmm1, [ebx+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp SND_FindReplaceableChannel_60
SND_FindReplaceableChannel_10:
	mov eax, [ebp-0x50]
	movss xmm3, dword [eax+0x1c]
	xorps xmm3, [_data16_80000000]
	mov edx, eax
	mov eax, [edx]
	mov eax, [eax+0x4]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x54]
	add eax, [ebp+0x8]
	mov [ebp-0x48], eax
	cmp [ebp-0x54], eax
	jge SND_FindReplaceableChannel_70
SND_FindReplaceableChannel_50:
	mov edi, [ebp-0x54]
	mov byte [ebp-0x3a], 0x0
	mov dword [ebp-0x40], 0xffffffff
	lea esi, [esi+esi*4]
	mov [ebp-0x58], esi
	shl dword [ebp-0x58], 0x4
	lea edx, [edi+edi*4]
	lea eax, [edx*8]
	sub eax, edx
	lea ebx, [eax*4+g_snd+0x61f0]
	jmp SND_FindReplaceableChannel_80
SND_FindReplaceableChannel_150:
	mov edx, [ebx+0x10]
	mov eax, [ebp-0x50]
	cmp edx, [eax+0xc]
	jz SND_FindReplaceableChannel_90
SND_FindReplaceableChannel_140:
	add edi, 0x1
	add ebx, 0x8c
	cmp edi, [ebp-0x48]
	jz SND_FindReplaceableChannel_100
SND_FindReplaceableChannel_80:
	mov edx, [ebx+0x58]
	mov eax, [ebx+0x1c]
	add eax, [ebx+0x24]
	sub eax, [g_snd+0x4dcc]
	test byte [edx+0x30], 0x1
	jnz SND_FindReplaceableChannel_110
	test eax, eax
	jle SND_FindReplaceableChannel_120
SND_FindReplaceableChannel_110:
	mov eax, [ebp-0x4c]
	test eax, eax
	jz SND_FindReplaceableChannel_130
SND_FindReplaceableChannel_190:
	mov eax, [ebx+0x14]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov esi, [eax+g_snd+0x4e2c]
	mov edx, [ebp-0x58]
	cmp esi, [edx+g_snd+0x4e2c]
	jg SND_FindReplaceableChannel_140
	cmp byte [ebp-0x3a], 0x0
	jnz SND_FindReplaceableChannel_150
	mov edx, [ebx+0x10]
	mov eax, [ebp-0x50]
	cmp edx, [eax+0xc]
	jz SND_FindReplaceableChannel_160
SND_FindReplaceableChannel_90:
	cmp [ebp-0x44], esi
	jg SND_FindReplaceableChannel_170
	jnz SND_FindReplaceableChannel_140
	cmp byte [ebp-0x39], 0x0
	jnz SND_FindReplaceableChannel_180
	movss xmm2, dword [ebx+0x50]
	xorps xmm2, [_data16_80000000]
SND_FindReplaceableChannel_290:
	ucomiss xmm2, xmm3
	jbe SND_FindReplaceableChannel_140
	movaps xmm3, xmm2
	mov [ebp-0x40], edi
	jmp SND_FindReplaceableChannel_140
SND_FindReplaceableChannel_130:
	mov eax, [edx+0x4]
	test eax, eax
	jz SND_FindReplaceableChannel_190
	add edi, 0x1
	add ebx, 0x8c
	cmp edi, [ebp-0x48]
	jnz SND_FindReplaceableChannel_80
SND_FindReplaceableChannel_100:
	mov edi, [ebp-0x40]
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_FindReplaceableChannel_170:
	mov eax, [ebp-0x50]
SND_FindReplaceableChannel_160:
	cmp edx, [eax+0xc]
	setz byte [ebp-0x3a]
	cmp byte [ebp-0x39], 0x0
	jnz SND_FindReplaceableChannel_200
	movss xmm3, dword [ebx+0x50]
	xorps xmm3, [_data16_80000000]
	mov [ebp-0x44], esi
	mov [ebp-0x40], edi
	jmp SND_FindReplaceableChannel_140
SND_FindReplaceableChannel_40:
	mov eax, [g_snd+0x4ddc]
	imul eax, eax
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0x1c]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_34028234663852885_float_3]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
	jmp SND_FindReplaceableChannel_210
SND_FindReplaceableChannel_200:
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [ebx+0x78]
	mov [esp+0x4], eax
	mov [esp], edx
	call SND_GetCurrent3DPosition
	movss xmm5, dword [ebp-0x2c]
	movss xmm4, dword [ebp-0x28]
	movss xmm6, dword [ebp-0x24]
	xor eax, eax
	mov ecx, g_snd
	mov edx, g_snd+0x4d50
SND_FindReplaceableChannel_230:
	cmp byte [ecx+0x4d90], 0x0
	jnz SND_FindReplaceableChannel_220
	movss xmm2, dword [_float_34028234663852885_float_3]
SND_FindReplaceableChannel_250:
	movss [ebp+eax*4-0x20], xmm2
	add eax, 0x1
	add edx, 0x38
	add ecx, 0x38
	cmp eax, 0x2
	jnz SND_FindReplaceableChannel_230
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jz SND_FindReplaceableChannel_240
	mov eax, [g_snd+0x4ddc]
	imul eax, eax
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0x1c]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_34028234663852885_float_3]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
SND_FindReplaceableChannel_240:
	movss xmm0, dword [ebp-0x20]
	xor eax, eax
	ucomiss xmm0, [ebp-0x1c]
	seta al
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, g_snd+0x4d50
	lea edx, [eax+0xc]
	movss xmm3, dword [eax+0xc]
	subss xmm3, xmm5
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm4
	movss xmm1, dword [edx+0x8]
	subss xmm1, xmm6
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mov [ebp-0x44], esi
	mov [ebp-0x40], edi
	jmp SND_FindReplaceableChannel_140
SND_FindReplaceableChannel_220:
	movss xmm2, dword [edx+0xc]
	subss xmm2, xmm5
	movss xmm0, dword [edx+0x10]
	subss xmm0, xmm4
	movss xmm1, dword [edx+0x14]
	subss xmm1, xmm6
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp SND_FindReplaceableChannel_250
SND_FindReplaceableChannel_180:
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [ebx+0x78]
	mov [esp+0x4], eax
	mov [esp], edx
	movss [ebp-0x68], xmm3
	call SND_GetCurrent3DPosition
	movss xmm6, dword [ebp-0x2c]
	movss xmm5, dword [ebp-0x28]
	movss xmm4, dword [ebp-0x24]
	xor eax, eax
	mov ecx, g_snd
	mov edx, g_snd+0x4d50
	movss xmm3, dword [ebp-0x68]
SND_FindReplaceableChannel_270:
	cmp byte [ecx+0x4d90], 0x0
	jnz SND_FindReplaceableChannel_260
	movss xmm2, dword [_float_34028234663852885_float_3]
SND_FindReplaceableChannel_300:
	movss [ebp+eax*4-0x20], xmm2
	add eax, 0x1
	add edx, 0x38
	add ecx, 0x38
	cmp eax, 0x2
	jnz SND_FindReplaceableChannel_270
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jz SND_FindReplaceableChannel_280
	mov eax, [g_snd+0x4ddc]
	imul eax, eax
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0x1c]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_34028234663852885_float_3]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
SND_FindReplaceableChannel_280:
	movss xmm0, dword [ebp-0x20]
	xor eax, eax
	ucomiss xmm0, [ebp-0x1c]
	seta al
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, g_snd+0x4d50
	lea edx, [eax+0xc]
	movss xmm2, dword [eax+0xc]
	subss xmm2, xmm6
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm5
	movss xmm1, dword [edx+0x8]
	subss xmm1, xmm4
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp SND_FindReplaceableChannel_290
SND_FindReplaceableChannel_260:
	movss xmm2, dword [edx+0xc]
	subss xmm2, xmm6
	movss xmm0, dword [edx+0x10]
	subss xmm0, xmm5
	movss xmm1, dword [edx+0x14]
	subss xmm1, xmm4
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp SND_FindReplaceableChannel_300
	nop


;SND_StartAliasStream(SndStartAliasInfo*, int*)
SND_StartAliasStream:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov eax, [eax]
	mov esi, [eax+0x30]
	and esi, 0x3f00
	sar esi, 0x8
	xor ecx, ecx
	mov edx, g_snd
	mov ebx, g_snd+0x71c
SND_StartAliasStream_20:
	cmp dword [edx+0x77d0], 0x1
	jnz SND_StartAliasStream_10
	lea eax, [ecx+0x1]
	cmp esi, [edx+0x77e4]
	cmovz ecx, eax
SND_StartAliasStream_10:
	add edx, 0x8c
	cmp ebx, edx
	jnz SND_StartAliasStream_20
	lea eax, [esi+esi*4]
	shl eax, 0x4
	add ecx, [eax+g_snd+0x4e38]
	cmp ecx, [eax+g_snd+0x4e34]
	jge SND_StartAliasStream_30
	mov eax, [g_snd+0x7ef4]
	cmp eax, 0x5
	jg SND_StartAliasStream_40
SND_StartAliasStream_110:
	sub eax, 0x5
	mov [esp], eax
	mov ecx, 0x2d
	mov edx, esi
	mov eax, [ebp-0x1c]
	call SND_FindReplaceableChannel
	mov edi, eax
	test eax, eax
	js SND_StartAliasStream_50
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	shl edx, 0x2
	mov eax, [edx+g_snd+0x6248]
	mov ecx, [ebp-0x1c]
	cmp eax, [ecx]
	jz SND_StartAliasStream_60
SND_StartAliasStream_70:
	mov [esp], edi
	call SND_StopStreamChannel
	jmp SND_StartAliasStream_50
SND_StartAliasStream_60:
	mov eax, ecx
	add eax, 0x10
	movss xmm0, dword [g_snd+0x4d5c]
	movaps xmm3, xmm0
	mov ecx, [ebp-0x1c]
	subss xmm3, [ecx+0x10]
	movss xmm1, dword [g_snd+0x4d60]
	movaps xmm4, xmm1
	subss xmm4, [eax+0x4]
	movss xmm2, dword [g_snd+0x4d64]
	movaps xmm5, xmm2
	subss xmm5, [eax+0x8]
	lea eax, [edx+g_snd+0x6250]
	lea edx, [eax+0xc]
	subss xmm0, [eax+0xc]
	subss xmm1, [edx+0x4]
	subss xmm2, [edx+0x8]
	mulss xmm3, xmm3
	mulss xmm4, xmm4
	addss xmm3, xmm4
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, xmm3
	ja SND_StartAliasStream_70
SND_StartAliasStream_30:
	mov edi, 0xffffffff
SND_StartAliasStream_50:
	mov eax, [ebp-0x20]
	test eax, eax
	jz SND_StartAliasStream_80
	mov eax, [ebp-0x20]
	mov [eax], edi
SND_StartAliasStream_80:
	test edi, edi
	jns SND_StartAliasStream_90
SND_StartAliasStream_120:
	mov eax, 0xffffffff
SND_StartAliasStream_160:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartAliasStream_40:
	mov ebx, 0x5
SND_StartAliasStream_100:
	lea edi, [ebx+0x28]
	mov [esp], edi
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_StartAliasStream_50
	add ebx, 0x1
	mov eax, [g_snd+0x7ef4]
	cmp eax, ebx
	jg SND_StartAliasStream_100
	jmp SND_StartAliasStream_110
SND_StartAliasStream_90:
	mov eax, [snd_enableStream]
	cmp byte [eax+0xc], 0x0
	jz SND_StartAliasStream_120
	mov ecx, [ebp-0x1c]
	mov edx, [ecx]
	mov eax, [edx+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e30], 0x0
	jz SND_StartAliasStream_130
	mov eax, g_snd
	mov ecx, g_snd+0x70
SND_StartAliasStream_150:
	cmp byte [eax+0x4d90], 0x0
	jnz SND_StartAliasStream_140
	add eax, 0x38
	cmp ecx, eax
	jnz SND_StartAliasStream_150
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_attempted_to_pla
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp-0x1c]
SND_StartAliasStream_170:
	mov [esp+0x4], edi
	mov [esp], eax
	call SND_StartAliasStreamOnChannel
	jmp SND_StartAliasStream_160
SND_StartAliasStream_130:
	mov eax, ecx
	jmp SND_StartAliasStream_170
SND_StartAliasStream_140:
	mov eax, [ebp-0x1c]
	jmp SND_StartAliasStream_170
	nop


;SND_PlaySoundAlias_Internal(snd_alias_t const*, snd_alias_t const*, float, float, SndEntHandle, float const*, int*, int, unsigned char, unsigned char, snd_alias_system_t)
SND_PlaySoundAlias_Internal:
SND_PlaySoundAlias_Internal_140:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov [ebp-0xf0], eax
	mov [ebp-0xf4], edx
	movss [ebp-0xf8], xmm0
	movss [ebp-0xfc], xmm1
	mov [ebp-0x100], ecx
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x101], al
	movzx edx, byte [ebp+0x18]
	mov [ebp-0x102], dl
	cmp byte [g_snd], 0x0
	jz SND_PlaySoundAlias_Internal_10
	mov eax, [ebp+0xc]
	test eax, eax
	jz SND_PlaySoundAlias_Internal_20
	mov ebx, [ebp+0xc]
	mov dword [ebx], 0xffffffff
SND_PlaySoundAlias_Internal_20:
	mov eax, [ebp-0xf0]
	mov edx, [eax+0x30]
	and edx, 0x3f00
	sar edx, 0x8
	mov [ebp-0xec], edx
	lea eax, [edx+edx*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e30], 0x0
	jz SND_PlaySoundAlias_Internal_30
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, [ebp-0xf8]
	mov ebx, [ebp-0xf0]
	mulss xmm3, [ebx+0x2c]
	movss xmm0, dword [ebp-0xf8]
	mov eax, [ebp-0xf4]
	mulss xmm0, [eax+0x2c]
	addss xmm3, xmm0
	xor edx, edx
	mov ecx, g_snd
	movss xmm4, dword [_float_34028234663852885_float_3]
	mov eax, g_snd+0x4d50
SND_PlaySoundAlias_Internal_50:
	cmp byte [ecx+0x4d90], 0x0
	jnz SND_PlaySoundAlias_Internal_40
	movaps xmm2, xmm4
SND_PlaySoundAlias_Internal_480:
	movss [ebp+edx*4-0xd0], xmm2
	add edx, 0x1
	add eax, 0x38
	add ecx, 0x38
	cmp edx, 0x2
	jnz SND_PlaySoundAlias_Internal_50
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jnz SND_PlaySoundAlias_Internal_60
SND_PlaySoundAlias_Internal_490:
	movss xmm0, dword [ebp-0xd0]
	xor eax, eax
	ucomiss xmm0, [ebp-0xcc]
	seta al
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, g_snd+0x4d50
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	mov eax, [ebp+0x8]
	subss xmm0, [eax]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	jbe SND_PlaySoundAlias_Internal_30
SND_PlaySoundAlias_Internal_520:
	mov dword [ebp-0xe8], 0xffffffff
SND_PlaySoundAlias_Internal_530:
	mov edx, [ebp-0xf0]
	mov eax, [edx+0x8]
	test eax, eax
	jz SND_PlaySoundAlias_Internal_70
	mov [esp], eax
	call Com_PickSoundAlias
	mov edi, eax
	test eax, eax
	jz SND_PlaySoundAlias_Internal_80
	mov ebx, [ebp-0xf0]
	test byte [ebx+0x30], 0x1
	jz SND_PlaySoundAlias_Internal_90
	test byte [eax+0x30], 0x1
	jnz SND_PlaySoundAlias_Internal_100
SND_PlaySoundAlias_Internal_500:
	mov ebx, edi
	xor esi, esi
SND_PlaySoundAlias_Internal_130:
	mov eax, [ebx+0x8]
	test eax, eax
	jz SND_PlaySoundAlias_Internal_110
	cmp esi, 0xa
	jz SND_PlaySoundAlias_Internal_110
	mov [esp+0x4], eax
	mov edx, [ebp-0xf0]
	mov eax, [edx]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz SND_PlaySoundAlias_Internal_120
	add esi, 0x1
	mov eax, [ebx+0x8]
	mov [esp], eax
	call Com_PickSoundAlias
	mov ebx, eax
	test eax, eax
	jnz SND_PlaySoundAlias_Internal_130
SND_PlaySoundAlias_Internal_110:
	mov ebx, [ebp+0x1c]
	mov [esp+0x14], ebx
	movzx eax, byte [ebp-0x102]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x101]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, [ebp-0x100]
	movss xmm1, dword [ebp-0xfc]
	movss xmm0, dword [ebp-0xf8]
	mov edx, edi
	mov eax, edi
	call SND_PlaySoundAlias_Internal_140
	mov eax, [ebp-0xe8]
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_PlaySoundAlias_Internal_30:
	mov edx, [g_snd+0x7ef0]
	lea eax, [edx+0x8]
	cmp eax, 0x8
	jle SND_PlaySoundAlias_Internal_150
	mov esi, 0x8
	mov ebx, g_snd
	mov edi, 0x460
	jmp SND_PlaySoundAlias_Internal_160
SND_PlaySoundAlias_Internal_170:
	add esi, 0x1
	add edi, 0x8c
	add ebx, 0x8c
	lea eax, [edx+0x8]
	cmp esi, eax
	jge SND_PlaySoundAlias_Internal_150
SND_PlaySoundAlias_Internal_160:
	mov eax, [ebp-0x100]
	cmp [ebx+0x6660], eax
	jnz SND_PlaySoundAlias_Internal_170
	mov [esp], esi
	call SND_Is3DChannelFree
	test al, al
	jnz SND_PlaySoundAlias_Internal_180
	mov eax, [ebx+0x66a8]
	test byte [eax+0x30], 0x1
	jz SND_PlaySoundAlias_Internal_180
	mov eax, [eax]
	mov edx, [ebp-0xf0]
	cmp eax, [edx]
	jz SND_PlaySoundAlias_Internal_190
SND_PlaySoundAlias_Internal_180:
	mov edx, [g_snd+0x7ef0]
	add esi, 0x1
	add edi, 0x8c
	add ebx, 0x8c
	lea eax, [edx+0x8]
	cmp esi, eax
	jl SND_PlaySoundAlias_Internal_160
SND_PlaySoundAlias_Internal_150:
	mov ebx, [g_snd+0x7eec]
	test ebx, ebx
	jle SND_PlaySoundAlias_Internal_200
	xor edi, edi
	mov ebx, g_snd
	xor esi, esi
	jmp SND_PlaySoundAlias_Internal_210
SND_PlaySoundAlias_Internal_220:
	add edi, 0x1
	add esi, 0x8c
	add ebx, 0x8c
	cmp [g_snd+0x7eec], edi
	jle SND_PlaySoundAlias_Internal_200
SND_PlaySoundAlias_Internal_210:
	mov eax, [ebp-0x100]
	cmp [ebx+0x6200], eax
	jnz SND_PlaySoundAlias_Internal_220
	mov [esp], edi
	call SND_Is2DChannelFree
	test al, al
	jnz SND_PlaySoundAlias_Internal_220
	mov eax, [ebx+0x6248]
	test byte [eax+0x30], 0x1
	jz SND_PlaySoundAlias_Internal_220
	mov eax, [eax]
	mov edx, [ebp-0xf0]
	cmp eax, [edx]
	jnz SND_PlaySoundAlias_Internal_220
	mov eax, [ebx+0x624c]
	mov eax, [eax]
	mov edx, [ebp-0xf4]
	cmp eax, [edx]
	jnz SND_PlaySoundAlias_Internal_220
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, [ebp-0xf8]
	mov eax, [esi+g_snd+0x6248]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x18]
	mov edx, [esi+g_snd+0x624c]
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	mulss xmm1, [ebp-0xfc]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movss xmm5, dword [_float_1_00000000]
	andnps xmm0, xmm5
	orps xmm0, xmm2
	movaps xmm2, xmm4
	subss xmm2, xmm1
	movaps xmm5, xmm4
	cmpss xmm5, xmm2, 0x6
	andps xmm0, xmm5
	orps xmm0, xmm4
	movss [esi+g_snd+0x6240], xmm0
	mulss xmm3, [eax+0x20]
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, [edx+0x20]
	addss xmm3, xmm0
	movss [esi+g_snd+0x6244], xmm3
	cmp byte [esi+g_snd+0x6276], 0x0
	jz SND_PlaySoundAlias_Internal_230
	cvtsi2ss xmm0, dword [esi+g_snd+0x61f8]
	mulss xmm3, xmm0
	mulss xmm3, [g_snd+0x10]
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x110]
	cvttss2si eax, [ebp-0x110]
SND_PlaySoundAlias_Internal_680:
	mov [esp+0x4], eax
	mov [esp], edi
	call SND_Set2DChannelPlaybackRate
	mov eax, [g_snd+0x4dd0]
	mov [esi+g_snd+0x6210], eax
	movss xmm0, dword [ebp-0xf8]
	movss [esi+g_snd+0x6258], xmm0
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz SND_PlaySoundAlias_Internal_240
	mov eax, [ebp+0xc]
	mov [eax], edi
SND_PlaySoundAlias_Internal_240:
	mov edx, [ebp-0xf0]
	mov eax, [edx+0x8]
	test eax, eax
	jz SND_PlaySoundAlias_Internal_250
	mov [esp], eax
	call Com_PickSoundAlias
	mov ebx, eax
	test eax, eax
	jz SND_PlaySoundAlias_Internal_250
	test byte [eax+0x30], 0x1
	jz SND_PlaySoundAlias_Internal_250
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x102]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x101]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [ebp-0x100]
	movss xmm1, dword [ebp-0xfc]
	movss xmm0, dword [ebp-0xf8]
	mov edx, ebx
	mov eax, ebx
	call SND_PlaySoundAlias_Internal_140
SND_PlaySoundAlias_Internal_250:
	mov dword [ebp-0xe8], 0x0
	jmp SND_PlaySoundAlias_Internal_70
SND_PlaySoundAlias_Internal_200:
	mov edx, [g_snd+0x7ef4]
	lea eax, [edx+0x28]
	cmp eax, 0x28
	jle SND_PlaySoundAlias_Internal_260
	mov edi, 0x28
	mov ebx, g_snd
	mov esi, 0x15e0
	jmp SND_PlaySoundAlias_Internal_270
SND_PlaySoundAlias_Internal_280:
	add edi, 0x1
	add esi, 0x8c
	add ebx, 0x8c
	lea eax, [edx+0x28]
	cmp eax, edi
	jle SND_PlaySoundAlias_Internal_260
SND_PlaySoundAlias_Internal_270:
	mov eax, [ebp-0x100]
	cmp [ebx+0x77e0], eax
	jnz SND_PlaySoundAlias_Internal_280
	mov [esp], edi
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_PlaySoundAlias_Internal_290
	mov eax, [ebx+0x7828]
	test byte [eax+0x30], 0x1
	jz SND_PlaySoundAlias_Internal_290
	mov eax, [eax]
	mov edx, [ebp-0xf0]
	cmp eax, [edx]
	jz SND_PlaySoundAlias_Internal_300
SND_PlaySoundAlias_Internal_290:
	mov edx, [g_snd+0x7ef4]
	add edi, 0x1
	add esi, 0x8c
	add ebx, 0x8c
	lea eax, [edx+0x28]
	cmp eax, edi
	jg SND_PlaySoundAlias_Internal_270
SND_PlaySoundAlias_Internal_260:
	mov edx, [ebp-0xec]
	lea eax, [edx+edx*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e31], 0x0
	jnz SND_PlaySoundAlias_Internal_310
SND_PlaySoundAlias_Internal_450:
	mov edx, [ebp-0xf0]
	mov eax, [edx+0x10]
	cmp byte [eax], 0x2
	jz SND_PlaySoundAlias_Internal_320
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_nullwav
	call Q_stricmp
	test eax, eax
	jnz SND_PlaySoundAlias_Internal_330
SND_PlaySoundAlias_Internal_10:
	mov dword [ebp-0xe8], 0xffffffff
SND_PlaySoundAlias_Internal_70:
	mov eax, [ebp-0xe8]
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_PlaySoundAlias_Internal_310:
	mov edx, [g_snd+0x7ef0]
	lea eax, [edx+0x8]
	cmp eax, 0x8
	jle SND_PlaySoundAlias_Internal_340
	mov esi, 0x8
	mov ebx, g_snd
	jmp SND_PlaySoundAlias_Internal_350
SND_PlaySoundAlias_Internal_360:
	add esi, 0x1
	add ebx, 0x8c
	lea eax, [edx+0x8]
	cmp esi, eax
	jge SND_PlaySoundAlias_Internal_340
SND_PlaySoundAlias_Internal_350:
	mov eax, [ebp-0x100]
	cmp [ebx+0x6660], eax
	jnz SND_PlaySoundAlias_Internal_360
	mov eax, [ebp-0xec]
	cmp eax, [ebx+0x6664]
	jnz SND_PlaySoundAlias_Internal_360
	mov [esp], esi
	call SND_Is3DChannelFree
	test al, al
	jz SND_PlaySoundAlias_Internal_370
SND_PlaySoundAlias_Internal_650:
	mov edx, [g_snd+0x7ef0]
	jmp SND_PlaySoundAlias_Internal_360
SND_PlaySoundAlias_Internal_320:
	add eax, 0x4
	mov [esp], eax
	call StreamFileNameIsNullSound
	test eax, eax
	jnz SND_PlaySoundAlias_Internal_10
SND_PlaySoundAlias_Internal_330:
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0xf8]
	movaps xmm2, xmm0
	mov ebx, [ebp-0xf0]
	mulss xmm2, [ebx+0x18]
	movss xmm1, dword [ebp-0xf8]
	mov eax, [ebp-0xf4]
	mulss xmm1, [eax+0x18]
	addss xmm2, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x20]
	movss [ebp-0xe0], xmm1
	movss xmm1, dword [ebp-0xf8]
	mulss xmm1, [eax+0x20]
	addss xmm1, [ebp-0xe0]
	movss [ebp-0xe0], xmm1
	movaps xmm3, xmm0
	mulss xmm3, [ebx+0x24]
	movss xmm1, dword [ebp-0xf8]
	mulss xmm1, [eax+0x24]
	addss xmm1, xmm3
	movss [ebp-0xdc], xmm1
	mulss xmm0, [ebx+0x1c]
	movss xmm1, dword [ebp-0xf8]
	mulss xmm1, [eax+0x1c]
	addss xmm0, xmm1
	subss xmm0, xmm2
	movss [ebp-0x138], xmm0
	movss [ebp-0x148], xmm2
	call randomf
	fstp dword [ebp-0x15c]
	movss xmm1, dword [ebp-0x15c]
	movss xmm0, dword [ebp-0x138]
	mulss xmm1, xmm0
	movss xmm2, dword [ebp-0x148]
	addss xmm1, xmm2
	mulss xmm1, [ebp-0xfc]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm4, xmm4
	movaps xmm5, xmm4
	cmpss xmm5, xmm0, 0x6
	movaps xmm0, xmm5
	movaps xmm2, xmm1
	andps xmm2, xmm5
	movss xmm3, dword [_float_1_00000000]
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movaps xmm5, xmm4
	subss xmm5, xmm1
	movaps xmm2, xmm4
	cmpss xmm2, xmm5, 0x6
	andps xmm0, xmm2
	orps xmm0, xmm4
	movss [ebp-0x34], xmm0
	movss [ebp-0x158], xmm4
	call randomf
	fstp dword [ebp-0xe4]
	movss xmm3, dword [ebp-0xdc]
	subss xmm3, [ebp-0xe0]
	movss [ebp-0xdc], xmm3
	mulss xmm3, [ebp-0xe4]
	movss xmm5, dword [ebp-0xe0]
	addss xmm5, xmm3
	movss [ebp-0x30], xmm5
	mov [ebp-0x50], ebx
	mov eax, [ebp-0xf4]
	mov [ebp-0x4c], eax
	movss xmm0, dword [ebp-0xf8]
	movss [ebp-0x48], xmm0
	mov eax, [ebp-0x100]
	mov [ebp-0x44], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebp-0x40], eax
	mov eax, [edx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x38], eax
	mov ebx, [ebp+0x10]
	mov [ebp-0x2c], ebx
	movss xmm4, dword [ebp-0x158]
	movss [ebp-0x28], xmm4
	mov edx, [ebp-0xf0]
	mov eax, [edx+0x44]
	mov [ebp-0x24], eax
	cmp byte [ebp-0x101], 0x0
	jnz SND_PlaySoundAlias_Internal_380
	mov eax, [edx+0x30]
	test al, 0x2
	jnz SND_PlaySoundAlias_Internal_390
	xor edx, edx
	jmp SND_PlaySoundAlias_Internal_400
SND_PlaySoundAlias_Internal_340:
	mov edx, [g_snd+0x7ef4]
	lea eax, [edx+0x28]
	cmp eax, 0x28
	jle SND_PlaySoundAlias_Internal_410
	mov esi, 0x28
	mov ebx, g_snd
	jmp SND_PlaySoundAlias_Internal_420
SND_PlaySoundAlias_Internal_430:
	add esi, 0x1
	add ebx, 0x8c
	lea eax, [edx+0x28]
	cmp esi, eax
	jge SND_PlaySoundAlias_Internal_410
SND_PlaySoundAlias_Internal_420:
	mov eax, [ebp-0x100]
	cmp [ebx+0x77e0], eax
	jnz SND_PlaySoundAlias_Internal_430
	mov eax, [ebp-0xec]
	cmp eax, [ebx+0x77e4]
	jnz SND_PlaySoundAlias_Internal_430
	mov [esp], esi
	call SND_IsStreamChannelFree
	test al, al
	jz SND_PlaySoundAlias_Internal_440
SND_PlaySoundAlias_Internal_640:
	mov edx, [g_snd+0x7ef4]
	jmp SND_PlaySoundAlias_Internal_430
SND_PlaySoundAlias_Internal_410:
	mov eax, [g_snd+0x7eec]
	test eax, eax
	jle SND_PlaySoundAlias_Internal_450
	xor esi, esi
	mov ebx, g_snd
	jmp SND_PlaySoundAlias_Internal_460
SND_PlaySoundAlias_Internal_470:
	add esi, 0x1
	add ebx, 0x8c
	cmp esi, [g_snd+0x7eec]
	jge SND_PlaySoundAlias_Internal_450
SND_PlaySoundAlias_Internal_460:
	mov edx, [ebp-0x100]
	cmp [ebx+0x6200], edx
	jnz SND_PlaySoundAlias_Internal_470
	mov eax, [ebp-0xec]
	cmp eax, [ebx+0x6204]
	jnz SND_PlaySoundAlias_Internal_470
	mov [esp], esi
	call SND_Is2DChannelFree
	test al, al
	jnz SND_PlaySoundAlias_Internal_470
	mov [esp], esi
	call SND_Stop2DChannel
	jmp SND_PlaySoundAlias_Internal_470
SND_PlaySoundAlias_Internal_40:
	movss xmm2, dword [eax+0xc]
	mov ebx, [ebp+0x8]
	subss xmm2, [ebx]
	movss xmm0, dword [eax+0x10]
	subss xmm0, [ebx+0x4]
	movss xmm1, dword [eax+0x14]
	subss xmm1, [ebx+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp SND_PlaySoundAlias_Internal_480
SND_PlaySoundAlias_Internal_60:
	mov eax, [g_snd+0x4ddc]
	imul eax, eax
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0xcc]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_34028234663852885_float_3]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0xcc], xmm0
	jmp SND_PlaySoundAlias_Internal_490
SND_PlaySoundAlias_Internal_90:
	test byte [eax+0x30], 0x1
	jz SND_PlaySoundAlias_Internal_500
	mov eax, [ebx+0x8]
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_a_nonloopi
	mov dword [esp], 0x9
	call Com_PrintError
	jmp SND_PlaySoundAlias_Internal_500
SND_PlaySoundAlias_Internal_380:
	mov eax, [edx+0x30]
SND_PlaySoundAlias_Internal_390:
	mov edx, 0x1
SND_PlaySoundAlias_Internal_400:
	mov [ebp-0x20], dl
	movzx edx, byte [ebp-0x102]
	mov [ebp-0x1f], dl
	mov ebx, [ebp+0x1c]
	mov [ebp-0x1c], ebx
	and eax, 0xc0
	sar eax, 0x6
	cmp eax, 0x1
	jz SND_PlaySoundAlias_Internal_510
	cmp eax, 0x2
	jnz SND_PlaySoundAlias_Internal_520
	lea eax, [ebp-0x50]
	mov edx, [ebp+0xc]
	call SND_StartAliasStream
	mov [ebp-0xe8], eax
	jmp SND_PlaySoundAlias_Internal_530
SND_PlaySoundAlias_Internal_100:
	mov edx, [ebp-0xf0]
	mov eax, [edx+0x8]
	mov [esp], eax
	call Com_AliasNameRefersToSingleAlias
	test al, al
	jnz SND_PlaySoundAlias_Internal_500
	mov ebx, [ebp-0xf0]
	mov eax, [ebx+0x8]
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_a_looping_
	mov dword [esp], 0x9
	call Com_PrintError
	jmp SND_PlaySoundAlias_Internal_500
SND_PlaySoundAlias_Internal_510:
	mov edx, [ebp-0x50]
	mov eax, [edx+0x10]
	cmp byte [eax+0x1], 0x0
	jz SND_PlaySoundAlias_Internal_540
	mov eax, [edx+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e30], 0x0
	jz SND_PlaySoundAlias_Internal_550
	mov eax, [snd_enable3D]
	cmp byte [eax+0xc], 0x0
	jz SND_PlaySoundAlias_Internal_560
	mov eax, g_snd
	mov ecx, g_snd+0x70
SND_PlaySoundAlias_Internal_580:
	cmp byte [eax+0x4d90], 0x0
	jnz SND_PlaySoundAlias_Internal_570
	add eax, 0x38
	cmp ecx, eax
	jnz SND_PlaySoundAlias_Internal_580
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_attempted_to_pla
	mov dword [esp], 0x2
	call Com_Error
	mov dword [ebp-0xe8], 0x0
	jmp SND_PlaySoundAlias_Internal_530
SND_PlaySoundAlias_Internal_550:
	mov eax, [snd_enable2D]
	cmp byte [eax+0xc], 0x0
	jnz SND_PlaySoundAlias_Internal_590
SND_PlaySoundAlias_Internal_560:
	mov dword [ebp-0xe8], 0x0
	jmp SND_PlaySoundAlias_Internal_530
SND_PlaySoundAlias_Internal_190:
	mov eax, [ebx+0x66ac]
	mov eax, [eax]
	mov edx, [ebp-0xf4]
	cmp eax, [edx]
	jnz SND_PlaySoundAlias_Internal_180
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, [ebp-0xf8]
	mov eax, [edi+g_snd+0x6248]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x18]
	mov edx, [edi+g_snd+0x624c]
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	mulss xmm1, [ebp-0xfc]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movss xmm5, dword [_float_1_00000000]
	andnps xmm0, xmm5
	orps xmm0, xmm2
	movaps xmm2, xmm4
	subss xmm2, xmm1
	movaps xmm5, xmm4
	cmpss xmm5, xmm2, 0x6
	andps xmm0, xmm5
	orps xmm0, xmm4
	movss [edi+g_snd+0x6240], xmm0
	mulss xmm3, [eax+0x20]
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, [edx+0x20]
	addss xmm3, xmm0
	movss [edi+g_snd+0x6244], xmm3
	cmp byte [edi+g_snd+0x6276], 0x0
	jz SND_PlaySoundAlias_Internal_600
	cvtsi2ss xmm0, dword [edi+g_snd+0x61f8]
	mulss xmm3, xmm0
	mulss xmm3, [g_snd+0x10]
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x108]
	cvttss2si eax, [ebp-0x108]
SND_PlaySoundAlias_Internal_660:
	mov [esp+0x4], eax
	mov [esp], esi
	call SND_Set3DChannelPlaybackRate
	mov eax, [g_snd+0x4dd0]
	mov [edi+g_snd+0x6210], eax
	movss xmm0, dword [ebp-0xf8]
	movss [edi+g_snd+0x6258], xmm0
	mov edi, [ebp+0xc]
	test edi, edi
	jz SND_PlaySoundAlias_Internal_610
	mov eax, [ebp+0xc]
	mov [eax], esi
SND_PlaySoundAlias_Internal_610:
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], esi
	call SND_Set3DPosition
	jmp SND_PlaySoundAlias_Internal_240
SND_PlaySoundAlias_Internal_300:
	mov eax, [ebx+0x782c]
	mov eax, [eax]
	mov edx, [ebp-0xf4]
	cmp eax, [edx]
	jnz SND_PlaySoundAlias_Internal_290
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, [ebp-0xf8]
	mov eax, [esi+g_snd+0x6248]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x18]
	mov edx, [esi+g_snd+0x624c]
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	mulss xmm1, [ebp-0xfc]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movss xmm5, dword [_float_1_00000000]
	andnps xmm0, xmm5
	orps xmm0, xmm2
	movaps xmm2, xmm4
	subss xmm2, xmm1
	movaps xmm5, xmm4
	cmpss xmm5, xmm2, 0x6
	andps xmm0, xmm5
	orps xmm0, xmm4
	movss [esi+g_snd+0x6240], xmm0
	mulss xmm3, [eax+0x20]
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, [edx+0x20]
	addss xmm3, xmm0
	movss [esi+g_snd+0x6244], xmm3
	cmp byte [esi+g_snd+0x6276], 0x0
	jz SND_PlaySoundAlias_Internal_620
	cvtsi2ss xmm0, dword [esi+g_snd+0x61f8]
	mulss xmm3, xmm0
	mulss xmm3, [g_snd+0x10]
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x118]
	cvttss2si eax, [ebp-0x118]
SND_PlaySoundAlias_Internal_670:
	mov [esp+0x4], eax
	mov [esp], edi
	call SND_SetStreamChannelPlaybackRate
	mov eax, [g_snd+0x4dd0]
	mov [esi+g_snd+0x6210], eax
	movss xmm0, dword [ebp-0xf8]
	movss [esi+g_snd+0x6258], xmm0
	mov edx, [ebp+0xc]
	test edx, edx
	jz SND_PlaySoundAlias_Internal_630
	mov eax, [ebp+0xc]
	mov [eax], edi
SND_PlaySoundAlias_Internal_630:
	lea edx, [esi+g_snd+0x6250]
	lea ecx, [edx+0xc]
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [edx+0xc], eax
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	jmp SND_PlaySoundAlias_Internal_240
SND_PlaySoundAlias_Internal_80:
	mov ebx, [ebp-0xf0]
	mov eax, [ebx+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_unable_to_
	mov dword [esp], 0x9
	call Com_PrintError
	jmp SND_PlaySoundAlias_Internal_70
SND_PlaySoundAlias_Internal_120:
	mov edx, [ebp-0xf0]
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_infinite_r
	mov dword [esp], 0x9
	call Com_PrintError
	mov dword [ebp-0xe8], 0xffffffff
	jmp SND_PlaySoundAlias_Internal_70
SND_PlaySoundAlias_Internal_540:
	mov dword [esp+0x8], 0x80
	lea ebx, [ebp-0xd0]
	mov [esp+0x4], ebx
	mov [esp], edx
	call Com_GetSoundFileName
	mov eax, [ebp-0x50]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_tried_to_play_so
	mov dword [esp], 0x9
	call Com_DPrintf
	mov eax, [ebp+0xc]
	test eax, eax
	jz SND_PlaySoundAlias_Internal_560
	mov eax, [ebp+0xc]
	mov dword [eax], 0xffffffff
	jmp SND_PlaySoundAlias_Internal_560
SND_PlaySoundAlias_Internal_440:
	mov [esp], esi
	call SND_StopStreamChannel
	jmp SND_PlaySoundAlias_Internal_640
SND_PlaySoundAlias_Internal_370:
	mov [esp], esi
	call SND_Stop3DChannel
	jmp SND_PlaySoundAlias_Internal_650
SND_PlaySoundAlias_Internal_590:
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x50]
	mov [esp], eax
	call SND_StartAlias2DSample
	mov [ebp-0xe8], eax
	jmp SND_PlaySoundAlias_Internal_530
SND_PlaySoundAlias_Internal_570:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x50]
	mov [esp], eax
	call SND_StartAlias3DSample
	mov [ebp-0xe8], eax
	jmp SND_PlaySoundAlias_Internal_530
SND_PlaySoundAlias_Internal_600:
	cvtsi2ss xmm0, dword [edi+g_snd+0x61f8]
	mulss xmm3, xmm0
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x10c]
	cvttss2si eax, [ebp-0x10c]
	jmp SND_PlaySoundAlias_Internal_660
SND_PlaySoundAlias_Internal_620:
	cvtsi2ss xmm0, dword [esi+g_snd+0x61f8]
	mulss xmm3, xmm0
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x11c]
	cvttss2si eax, [ebp-0x11c]
	jmp SND_PlaySoundAlias_Internal_670
SND_PlaySoundAlias_Internal_230:
	cvtsi2ss xmm0, dword [esi+g_snd+0x61f8]
	mulss xmm3, xmm0
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x114]
	cvttss2si eax, [ebp-0x114]
	jmp SND_PlaySoundAlias_Internal_680
	nop


;SND_SaveChanInfo(snd_channel_info_t const*, MemoryFile*)
SND_SaveChanInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov edi, edx
	movsx eax, word [eax+0x10]
	mov [ebp-0x1c], ax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edx
	call MemFile_WriteData
	movzx eax, byte [ebx+0x14]
	mov [ebp-0x1c], al
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call MemFile_WriteData
	movzx eax, byte [ebx+0x85]
	mov [ebp-0x1c], al
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call MemFile_WriteData
	movzx eax, byte [ebx+0x86]
	mov [ebp-0x1c], al
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call MemFile_WriteData
	mov eax, [ebx+0x18]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_WriteData
	mov eax, [ebx+0x1c]
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_WriteData
	mov eax, [ebx+0x50]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_WriteData
	mov eax, [ebx+0x68]
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_WriteData
	lea eax, [ebx+0x78]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov [esp], edi
	call MemFile_WriteData
	add ebx, 0x2c
	mov [ebp-0x2c], ebx
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_WriteData
	mov edx, [ebp-0x2c]
	cmp dword [edx+0x20], 0x0
	jz SND_SaveChanInfo_10
	jg SND_SaveChanInfo_20
SND_SaveChanInfo_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_SaveChanInfo_20:
	mov esi, [ebp-0x2c]
	mov dword [ebp-0x30], 0x0
	jmp SND_SaveChanInfo_30
SND_SaveChanInfo_50:
	sub eax, 0x1
	jz SND_SaveChanInfo_40
SND_SaveChanInfo_60:
	add dword [ebp-0x30], 0x1
	add esi, 0x4
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
	cmp eax, [edx+0x20]
	jge SND_SaveChanInfo_10
SND_SaveChanInfo_30:
	movzx eax, byte [esi]
	mov [ebp-0x1c], al
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call MemFile_WriteData
	mov eax, [esi]
	test eax, eax
	jnz SND_SaveChanInfo_50
	mov eax, [esi+0x10]
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_WriteData
	jmp SND_SaveChanInfo_60
SND_SaveChanInfo_40:
	mov ebx, [esi+0x10]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call MemFile_WriteCString
	mov [esp], ebx
	call SND_GetAliasOffset
	mov [ebp-0x1c], ax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call MemFile_WriteData
	jmp SND_SaveChanInfo_60
	nop


;SND_RestoreChanInfo(snd_channel_info_t*, MemoryFile*)
SND_RestoreChanInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov edi, edx
	mov dword [esp+0x8], 0x8c
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call MemFile_ReadData
	movzx eax, word [ebp-0x1c]
	mov [ebx+0x10], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call MemFile_ReadData
	movzx eax, byte [ebp-0x1c]
	mov [ebx+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call MemFile_ReadData
	cmp byte [ebp-0x1c], 0x0
	setnz byte [ebx+0x85]
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call MemFile_ReadData
	cmp byte [ebp-0x1c], 0x0
	setnz byte [ebx+0x86]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov [ebx+0x18], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov [ebx+0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov [ebx+0x50], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov [ebx+0x68], eax
	lea esi, [ebx+0x78]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov [ebx+0x78], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov [esi+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov [esi+0x8], eax
	add ebx, 0x2c
	mov [ebp-0x30], ebx
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x30]
	mov [edx+0x20], eax
	cmp eax, 0x0
	jz SND_RestoreChanInfo_10
	jg SND_RestoreChanInfo_20
SND_RestoreChanInfo_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_RestoreChanInfo_20:
	mov esi, [ebp-0x30]
	xor ebx, ebx
	jmp SND_RestoreChanInfo_30
SND_RestoreChanInfo_50:
	sub eax, 0x1
	jz SND_RestoreChanInfo_40
SND_RestoreChanInfo_60:
	add ebx, 0x1
	add esi, 0x4
	mov eax, [ebp-0x30]
	cmp ebx, [eax+0x20]
	jge SND_RestoreChanInfo_10
SND_RestoreChanInfo_30:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call MemFile_ReadData
	movzx eax, byte [ebp-0x1c]
	mov [esi], eax
	test eax, eax
	jnz SND_RestoreChanInfo_50
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [ebp-0x1c]
	mov [esi+0x10], eax
	jmp SND_RestoreChanInfo_60
SND_RestoreChanInfo_40:
	mov [esp], edi
	call MemFile_ReadCString
	mov [ebp-0x2c], eax
	cmp byte [eax], 0x0
	jnz SND_RestoreChanInfo_70
	xor eax, eax
	mov [esi+0x10], eax
	jmp SND_RestoreChanInfo_60
SND_RestoreChanInfo_70:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call MemFile_ReadData
	movzx eax, word [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call SND_GetAliasWithOffset
	mov [esi+0x10], eax
	jmp SND_RestoreChanInfo_60
	nop


;SND_RestoreStreamChannel(int, MemoryFile*)
SND_RestoreStreamChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov [ebp-0x10c], eax
	mov esi, edx
	mov [esp], edx
	call MemFile_ReadCString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz SND_RestoreStreamChannel_10
SND_RestoreStreamChannel_20:
	xor eax, eax
SND_RestoreStreamChannel_80:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_RestoreStreamChannel_10:
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call MemFile_ReadData
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_GetAliasWithOffset
	mov edi, eax
	test eax, eax
	jz SND_RestoreStreamChannel_20
	mov [esp], esi
	call MemFile_ReadCString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz SND_RestoreStreamChannel_30
	xor ebx, ebx
SND_RestoreStreamChannel_90:
	lea eax, [ebp-0x100]
	mov edx, esi
	call SND_RestoreChanInfo
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20
	mov [esp], esi
	call MemFile_ReadData
	mov eax, [edi+0x30]
	and eax, 0xc0
	add eax, 0xffffff80
	jz SND_RestoreStreamChannel_40
SND_RestoreStreamChannel_50:
	mov eax, 0x1
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_RestoreStreamChannel_40:
	mov eax, [ebx+0x30]
	and eax, 0xc0
	add eax, 0xffffff80
	jnz SND_RestoreStreamChannel_50
	xor ecx, ecx
	mov edx, ebx
	mov eax, edi
	call SND_ValidateSoundAliasBlend
	test al, al
	jz SND_RestoreStreamChannel_50
	mov [ebp-0x74], edi
	mov [ebp-0x70], ebx
	mov eax, [ebp-0x98]
	mov [ebp-0x6c], eax
	mov eax, [ebp-0xf0]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x58], eax
	mov dword [ebp-0x54], 0x3f800000
	mov dword [ebp-0x50], 0x0
	mov eax, [ebp-0x3c]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0xe8]
	mov [ebp-0x48], eax
	mov dword [ebp-0x40], 0x1
	movzx eax, byte [ebp-0x7a]
	mov [ebp-0x43], al
	mov edx, [ebp-0x10c]
	test edx, edx
	js SND_RestoreStreamChannel_60
	mov eax, [snd_enableStream]
	cmp byte [eax+0xc], 0x0
	jz SND_RestoreStreamChannel_50
	movzx eax, byte [ebp-0x7b]
	mov [ebp-0x44], al
	mov [esp+0x4], edx
	lea eax, [ebp-0x74]
	mov [esp], eax
	call SND_StartAliasStreamOnChannel
SND_RestoreStreamChannel_100:
	add eax, 0x1
	jz SND_RestoreStreamChannel_50
	mov eax, [ebp-0x10c]
	mov [esp], eax
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_RestoreStreamChannel_50
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x10c]
	mov [esp], eax
	call SND_SetStreamChannelFromSaveInfo
	mov ebx, [ebp-0x10c]
	lea edx, [ebx+ebx*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	cmp byte [eax+g_snd+0x6276], 0x0
	jz SND_RestoreStreamChannel_70
	cvtsi2ss xmm0, dword [ebp-0x38]
	mulss xmm0, [eax+g_snd+0x6244]
	mulss xmm0, [g_snd+0x10]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x110]
	cvttss2si eax, [ebp-0x110]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_SetStreamChannelPlaybackRate
SND_RestoreStreamChannel_110:
	mov eax, [ebp-0x10c]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	shl edx, 0x2
	lea ecx, [edx+g_snd+0x6260]
	lea ebx, [ecx+0x8]
	mov eax, [ebp-0x88]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x84]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x80]
	mov [ebx+0x8], eax
	add edx, g_snd+0x6210
	lea ecx, [edx+0xc]
	mov eax, [ebp-0xd4]
	mov [edx+0xc], eax
	mov eax, [ebp-0xd0]
	mov [ecx+0x4], eax
	mov eax, [ebp-0xcc]
	mov [ecx+0x8], eax
	mov eax, [ebp-0xc8]
	mov [ecx+0xc], eax
	mov eax, [ebp-0xc4]
	mov [ecx+0x10], eax
	mov eax, [ebp-0xc0]
	mov [ecx+0x14], eax
	mov eax, [ebp-0xbc]
	mov [ecx+0x18], eax
	mov eax, [ebp-0xb8]
	mov [ecx+0x1c], eax
	mov eax, [ebp-0xb4]
	mov [ecx+0x20], eax
	mov eax, 0x1
	jmp SND_RestoreStreamChannel_80
SND_RestoreStreamChannel_30:
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call MemFile_ReadData
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_GetAliasWithOffset
	mov ebx, eax
	jmp SND_RestoreStreamChannel_90
SND_RestoreStreamChannel_60:
	mov byte [ebp-0x44], 0x0
	lea edx, [ebp-0x10c]
	lea eax, [ebp-0x74]
	call SND_StartAliasStream
	jmp SND_RestoreStreamChannel_100
SND_RestoreStreamChannel_70:
	cvtsi2ss xmm0, dword [ebp-0x38]
	mulss xmm0, [eax+g_snd+0x6244]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x114]
	cvttss2si eax, [ebp-0x114]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_SetStreamChannelPlaybackRate
	jmp SND_RestoreStreamChannel_110
	nop


;SND_Update()
SND_Update:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	cmp byte [g_snd], 0x0
	jnz SND_Update_10
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Update_10:
	call SND_GetDriverCPUPercentage
	mov edx, eax
	mov [g_snd+0x18], eax
	mov eax, com_statmon
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SND_Update_20
	cmp edx, 0x2
	jg SND_Update_30
SND_Update_20:
	call Sys_Milliseconds
	mov edi, eax
	sub edi, [g_snd+0x4dcc]
	mov [g_snd+0x4dcc], eax
	mov [esp], edi
	call SND_DriverPreUpdate
	mov eax, cl_paused
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	setnz al
	cmp al, [g_snd+0x2]
	jz SND_Update_40
	test al, al
	jnz SND_Update_50
	call SND_UnpauseSounds
SND_Update_40:
	mov eax, [g_snd+0x61ec]
	pxor xmm4, xmm4
	test eax, eax
	jle SND_Update_60
	xor ecx, ecx
	mov ebx, g_snd
	pxor xmm4, xmm4
	cvtsi2ss xmm2, edi
	xor edx, edx
	jmp SND_Update_70
SND_Update_100:
	movss xmm1, dword [eax+0x4]
	ucomiss xmm0, xmm1
	jbe SND_Update_80
SND_Update_110:
	movss [eax], xmm1
	mov dword [eax+0x8], 0x0
SND_Update_80:
	add ecx, 0x1
	add edx, 0xc
	add ebx, 0x50
	cmp ecx, [g_snd+0x61ec]
	jge SND_Update_60
SND_Update_70:
	cmp byte [g_snd+0x2], 0x0
	jz SND_Update_90
	cmp byte [ebx+0x4e32], 0x0
	jnz SND_Update_80
SND_Update_90:
	mov eax, edx
	add eax, [g_snd+0x4c44]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm0, [eax]
	movss [eax], xmm0
	ucomiss xmm4, [eax+0x8]
	jbe SND_Update_100
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, xmm0
	ja SND_Update_110
	add ecx, 0x1
	add edx, 0xc
	add ebx, 0x50
	cmp ecx, [g_snd+0x61ec]
	jl SND_Update_70
SND_Update_60:
	movss xmm1, dword [g_snd+0x4030]
	ucomiss xmm1, xmm4
	jnz SND_Update_120
	jp SND_Update_120
	mov eax, [snd_volume]
	cmp byte [eax+0xb], 0x0
	jnz SND_Update_130
SND_Update_380:
	cmp byte [g_snd+0x2], 0x0
	jnz SND_Update_140
	mov edx, [g_snd+0x401c]
	test edx, edx
	jnz SND_Update_150
SND_Update_540:
	call Com_GetTimescaleForSnd
	fstp dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x5c]
	pxor xmm4, xmm4
	movaps xmm0, xmm1
	cmpss xmm0, xmm4, 0x6
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movss xmm1, dword [_float_1_00000000]
	andnps xmm0, xmm1
	movaps xmm1, xmm0
	orps xmm1, xmm2
	movss xmm0, dword [g_snd+0x10]
	ucomiss xmm1, xmm0
	jp SND_Update_160
	jz SND_Update_170
SND_Update_160:
	movaps xmm2, xmm1
	divss xmm2, xmm0
	movss [ebp-0x40], xmm2
	movss [g_snd+0x10], xmm1
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg SND_Update_180
SND_Update_880:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg SND_Update_190
SND_Update_850:
	mov eax, [g_snd+0x7eec]
	test eax, eax
	jg SND_Update_200
SND_Update_720:
	pxor xmm4, xmm4
SND_Update_170:
	mov eax, [g_snd+0x4cd8]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm4
	jnz SND_Update_210
	jp SND_Update_210
	movss xmm0, dword [eax+0x18]
	ucomiss xmm0, xmm4
	jp SND_Update_220
	jnz SND_Update_220
SND_Update_140:
	mov ebx, 0x8
	mov esi, g_snd
SND_Update_260:
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, ebx
	jle SND_Update_230
SND_Update_420:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jz SND_Update_240
SND_Update_390:
	xor eax, eax
	test eax, eax
	jnz SND_Update_250
SND_Update_400:
	xor edx, edx
	add ebx, 0x1
	add esi, 0x8c
	test dl, dl
	jz SND_Update_260
SND_Update_410:
	mov eax, [snd_slaveFadeTime]
	mov eax, [eax+0xc]
	test eax, eax
	jnz SND_Update_270
SND_Update_450:
	mov eax, 0x3f800000
	test dl, dl
	jz SND_Update_280
	mov [g_snd+0x4c74], eax
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg SND_Update_290
SND_Update_470:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg SND_Update_300
SND_Update_580:
	mov esi, [g_snd+0x7eec]
	test esi, esi
	jg SND_Update_310
SND_Update_610:
	mov dword [esp], 0xd
	call Sys_EnterCriticalSection
	mov ebx, [g_sndPhysics+0x200]
	mov dword [g_sndPhysics+0x200], 0x0
	mov eax, g_snd
	mov edx, g_snd+0x70
SND_Update_330:
	cmp byte [eax+0x4d90], 0x0
	jnz SND_Update_320
	add eax, 0x38
	cmp edx, eax
	jnz SND_Update_330
SND_Update_810:
	mov dword [esp], 0xd
	call Sys_LeaveCriticalSection
	mov [esp], edi
	call SND_DriverPostUpdate
	mov eax, [snd_draw3D]
	mov eax, [eax+0xc]
	mov [esp], eax
	call DebugDrawWorldSounds
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Update_120:
	cvtsi2ss xmm0, edi
	mulss xmm0, xmm1
	addss xmm0, [g_snd+0x4028]
	movss [g_snd+0x4028], xmm0
	ucomiss xmm4, [g_snd+0x4030]
	ja SND_Update_340
	movss xmm1, dword [g_snd+0x402c]
	ucomiss xmm0, xmm1
	jbe SND_Update_350
SND_Update_630:
	movss [g_snd+0x4028], xmm1
	mov dword [g_snd+0x4030], 0x0
SND_Update_350:
	ucomiss xmm4, [g_snd+0x4028]
	jnz SND_Update_360
	jp SND_Update_360
	ucomiss xmm4, [g_snd+0x4030]
	jz SND_Update_370
SND_Update_360:
	mov eax, [snd_volume]
SND_Update_130:
	mov [esp], eax
	call Cvar_ClearModified
	movss xmm0, dword [g_snd+0x4028]
	mov eax, [snd_volume]
	mulss xmm0, [eax+0xc]
	mulss xmm0, [_float_0_75000000]
	movss [g_snd+0x4024], xmm0
	jmp SND_Update_380
SND_Update_240:
	mov eax, [esi+0x6668]
	test eax, eax
	jnz SND_Update_390
	mov eax, 0x1
	test eax, eax
	jz SND_Update_400
SND_Update_250:
	cmp byte [esi+0x66d5], 0x0
	jz SND_Update_400
	mov edx, 0x1
	add ebx, 0x1
	add esi, 0x8c
	test dl, dl
	jnz SND_Update_410
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, ebx
	jg SND_Update_420
SND_Update_230:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg SND_Update_430
SND_Update_780:
	mov eax, [g_snd+0x7eec]
	test eax, eax
	jg SND_Update_440
SND_Update_670:
	xor edx, edx
	mov eax, [snd_slaveFadeTime]
	mov eax, [eax+0xc]
	test eax, eax
	jz SND_Update_450
SND_Update_270:
	test dl, dl
	jnz SND_Update_460
	cvtsi2ss xmm0, edi
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	movss xmm1, dword [g_snd+0x4c74]
	subss xmm1, xmm0
	movss [g_snd+0x4c74], xmm1
SND_Update_530:
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movaps xmm2, xmm4
	subss xmm2, xmm1
	movaps xmm1, xmm2
	movaps xmm2, xmm4
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	orps xmm0, xmm4
	movss [g_snd+0x4c74], xmm0
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jle SND_Update_470
SND_Update_290:
	mov ebx, 0x8
	jmp SND_Update_480
SND_Update_490:
	add ebx, 0x1
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp ebx, eax
	jge SND_Update_470
SND_Update_480:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz SND_Update_490
	mov [esp+0x4], edi
	mov [esp], ebx
	call SND_Update3DChannel
	jmp SND_Update_490
SND_Update_50:
	call SND_PauseSounds
	jmp SND_Update_40
SND_Update_210:
	cvtsi2ss xmm1, edi
	mulss xmm0, xmm1
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mov eax, [g_snd+0x4cd8]
	ucomiss xmm4, [eax+0xc]
	ja SND_Update_500
	movss xmm2, dword [eax+0x8]
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, xmm2
	jae SND_Update_510
SND_Update_640:
	movss xmm0, dword [eax+0x18]
	ucomiss xmm0, xmm4
	jp SND_Update_520
	jnz SND_Update_520
SND_Update_560:
	call SND_UpdateReverbs
	jmp SND_Update_140
SND_Update_30:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x8
	jle SND_Update_20
	mov dword [esp+0x8], _cstring_code_warning_sou
	mov dword [esp+0x4], 0xbb8
	mov dword [esp], 0x2
	call StatMon_Warning
	jmp SND_Update_20
SND_Update_460:
	cvtsi2ss xmm0, edi
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	addss xmm0, [g_snd+0x4c74]
	movss [g_snd+0x4c74], xmm0
	movaps xmm1, xmm0
	jmp SND_Update_530
SND_Update_280:
	xor eax, eax
	mov [g_snd+0x4c74], eax
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jle SND_Update_470
	jmp SND_Update_290
SND_Update_150:
	movzx eax, byte [g_snd+0x4020]
	mov [esp+0xc], eax
	mov dword [esp+0x8], g_snd+0x1c
	mov [esp+0x4], edx
	lea ebx, [ebp-0x34]
	mov [esp], ebx
	call MemFile_InitForReading
	mov [esp], ebx
	call SND_Restore
	mov dword [esp+0x4], 0xffffffff
	mov [esp], ebx
	call MemFile_MoveToSegment
	mov dword [g_snd+0x401c], 0x0
	jmp SND_Update_540
SND_Update_220:
	cvtsi2ss xmm1, edi
SND_Update_520:
	mulss xmm1, xmm0
	addss xmm1, [eax+0x10]
	movss [eax+0x10], xmm1
	mov eax, [g_snd+0x4cd8]
	ucomiss xmm4, [eax+0x18]
	ja SND_Update_550
	movss xmm1, dword [eax+0x14]
	movss xmm0, dword [eax+0x10]
	ucomiss xmm0, xmm1
	jb SND_Update_560
	movss [eax+0x10], xmm1
	mov eax, [g_snd+0x4cd8]
	mov dword [eax+0x18], 0x0
	call SND_UpdateReverbs
	jmp SND_Update_140
SND_Update_300:
	mov ebx, 0x28
	jmp SND_Update_570
SND_Update_590:
	add ebx, 0x1
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp ebx, eax
	jge SND_Update_580
SND_Update_570:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_Update_590
	mov [esp+0x4], edi
	mov [esp], ebx
	call SND_UpdateStreamChannel
	jmp SND_Update_590
SND_Update_310:
	xor ebx, ebx
	jmp SND_Update_600
SND_Update_620:
	add ebx, 0x1
	cmp ebx, [g_snd+0x7eec]
	jge SND_Update_610
SND_Update_600:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_Update_620
	mov [esp+0x4], edi
	mov [esp], ebx
	call SND_Update2DChannel
	jmp SND_Update_620
SND_Update_340:
	movss xmm1, dword [g_snd+0x402c]
	ucomiss xmm1, xmm0
	jbe SND_Update_350
	jmp SND_Update_630
SND_Update_510:
	movss [eax+0x4], xmm2
	mov eax, [g_snd+0x4cd8]
	mov dword [eax+0xc], 0x0
	mov eax, [g_snd+0x4cd8]
	jmp SND_Update_640
SND_Update_440:
	xor ebx, ebx
	mov esi, g_snd
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jz SND_Update_650
SND_Update_680:
	xor eax, eax
	test eax, eax
	jnz SND_Update_660
SND_Update_690:
	xor edx, edx
SND_Update_700:
	add ebx, 0x1
	test dl, dl
	jnz SND_Update_410
	add esi, 0x8c
	cmp ebx, [g_snd+0x7eec]
	jge SND_Update_670
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_Update_680
SND_Update_650:
	mov eax, [esi+0x6208]
	test eax, eax
	jnz SND_Update_680
	mov eax, 0x1
	test eax, eax
	jz SND_Update_690
SND_Update_660:
	cmp byte [esi+0x6275], 0x0
	jz SND_Update_690
	mov edx, 0x1
	jmp SND_Update_700
SND_Update_200:
	xor ebx, ebx
	mov esi, g_snd
	jmp SND_Update_710
SND_Update_730:
	add ebx, 0x1
	add esi, 0x8c
	cmp ebx, [g_snd+0x7eec]
	jge SND_Update_720
SND_Update_710:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_Update_730
	cmp byte [esi+0x6276], 0x0
	jz SND_Update_730
	mov [esp], ebx
	call SND_Get2DChannelPlaybackRate
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x40]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_Set2DChannelPlaybackRate
	jmp SND_Update_730
SND_Update_430:
	mov ebx, 0x28
	mov esi, g_snd
SND_Update_770:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_Update_740
	mov eax, [esi+0x77e8]
	test eax, eax
	jle SND_Update_750
SND_Update_740:
	xor eax, eax
SND_Update_790:
	test eax, eax
	jz SND_Update_760
	cmp byte [esi+0x7855], 0x0
	jz SND_Update_760
	mov edx, 0x1
SND_Update_800:
	add ebx, 0x1
	test dl, dl
	jnz SND_Update_410
	add esi, 0x8c
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp ebx, eax
	jl SND_Update_770
	jmp SND_Update_780
SND_Update_750:
	mov eax, 0x1
	jmp SND_Update_790
SND_Update_760:
	xor edx, edx
	jmp SND_Update_800
SND_Update_320:
	test ebx, ebx
	jle SND_Update_810
	mov dword [ebp-0x3c], 0x0
	mov esi, g_sndPhysics
	mov dword [ebp-0x50], g_sndPhysics+0x4
SND_Update_830:
	mov eax, [esi]
	mov [esp], eax
	call Com_PickSoundAliasFromList
	test eax, eax
	jz SND_Update_820
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x50]
	mov [esp], edx
	mov ecx, 0x3fe
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, eax
	call SND_PlaySoundAlias_Internal
SND_Update_820:
	add dword [ebp-0x3c], 0x1
	add dword [ebp-0x50], 0x10
	add esi, 0x10
	cmp ebx, [ebp-0x3c]
	jnz SND_Update_830
	jmp SND_Update_810
SND_Update_190:
	mov ebx, 0x28
	mov esi, g_snd
	jmp SND_Update_840
SND_Update_860:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, ebx
	jle SND_Update_850
SND_Update_840:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_Update_860
	cmp byte [esi+0x7856], 0x0
	jz SND_Update_860
	mov [esp], ebx
	call SND_GetStreamChannelPlaybackRate
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x40]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x48]
	cvttss2si eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_SetStreamChannelPlaybackRate
	jmp SND_Update_860
SND_Update_370:
	jp SND_Update_360
	mov dword [esp], 0x0
	call SND_StopSounds
	mov eax, [snd_volume]
	jmp SND_Update_130
SND_Update_180:
	mov ebx, 0x8
	mov esi, g_snd
	jmp SND_Update_870
SND_Update_890:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp ebx, eax
	jge SND_Update_880
SND_Update_870:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz SND_Update_890
	cmp byte [esi+0x66d6], 0x0
	jz SND_Update_890
	mov [esp], ebx
	call SND_Get3DChannelPlaybackRate
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x40]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_Set3DChannelPlaybackRate
	jmp SND_Update_890
SND_Update_550:
	movss xmm0, dword [eax+0x14]
	ucomiss xmm0, [eax+0x10]
	jb SND_Update_560
	movss [eax+0x10], xmm0
	mov eax, [g_snd+0x4cd8]
	mov dword [eax+0x18], 0x0
	call SND_UpdateReverbs
	jmp SND_Update_140
SND_Update_500:
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [eax+0x4]
	jb SND_Update_640
	movss [eax+0x4], xmm0
	mov eax, [g_snd+0x4cd8]
	mov dword [eax+0xc], 0x0
	mov eax, [g_snd+0x4cd8]
	jmp SND_Update_640
	add [eax], al


;SND_Restore(MemoryFile*)
SND_Restore:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov edi, [ebp+0x8]
	cmp byte [g_snd], 0x0
	jnz SND_Restore_10
SND_Restore_110:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Restore_10:
	mov ebx, 0x1
	mov esi, 0x303
SND_Restore_20:
	lea eax, [esi+ebx+g_snd+0x4034]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x304
	mov [esp], edi
	call MemFile_ReadData
	add ebx, 0x1
	add esi, 0x303
	cmp ebx, 0x4
	jnz SND_Restore_20
	xor edx, edx
	mov ecx, g_snd
	and ebx, 0xffffff00
SND_Restore_40:
	cmp byte [ecx+0x4334], 0x0
	jz SND_Restore_30
	lea eax, [ebx+edx+g_snd+0x4034]
	mov [g_snd+0x4c44], eax
SND_Restore_30:
	add edx, 0x1
	add ebx, 0x303
	add ecx, 0x304
	cmp edx, 0x4
	jnz SND_Restore_40
	mov esi, 0x1
	mov ebx, g_snd+0x4c98
SND_Restore_50:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x20
	mov [esp], edi
	call MemFile_ReadData
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x3
	jnz SND_Restore_50
	mov [esp], edi
	call SND_RestoreEq
	xor ebx, ebx
	mov ecx, g_snd
	mov edx, g_snd+0x4c78
	mov eax, [g_snd+0x4cd8]
SND_Restore_60:
	cmp byte [ecx+0x4c94], 0x0
	cmovnz eax, edx
	mov [g_snd+0x4cd8], eax
	add ebx, 0x1
	add edx, 0x20
	add ecx, 0x20
	cmp ebx, 0x3
	jnz SND_Restore_60
	mov eax, [eax]
	mov [esp], eax
	call SND_SetRoomtype
	mov dword [esp+0x8], g_snd+0x4c48
	mov dword [esp+0x4], 0x8
	mov [esp], edi
	call MemFile_ReadData
SND_Restore_180:
	mov [esp], edi
	call MemFile_ReadCString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz SND_Restore_70
SND_Restore_160:
	mov [esp], edi
	call MemFile_ReadCString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz SND_Restore_80
SND_Restore_140:
	mov ebx, 0xffffffff
SND_Restore_100:
	lea eax, [ebx+0x29]
	cmp ebx, 0x3
	ja SND_Restore_90
SND_Restore_130:
	add ebx, 0x1
	cmp ebx, 0x4
	jnz SND_Restore_100
SND_Restore_120:
	mov edx, edi
	mov eax, 0xffffffff
	call SND_RestoreStreamChannel
	test al, al
	jz SND_Restore_110
	mov edx, edi
	mov eax, 0xffffffff
	call SND_RestoreStreamChannel
	test al, al
	jnz SND_Restore_120
	jmp SND_Restore_110
SND_Restore_90:
	mov edx, edi
	call SND_RestoreStreamChannel
	jmp SND_Restore_130
SND_Restore_80:
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call MemFile_ReadData
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_GetAliasWithOffset
	mov esi, eax
	test eax, eax
	jz SND_Restore_140
	mov [esp], edi
	call MemFile_ReadCString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz SND_Restore_150
	xor ebx, ebx
SND_Restore_200:
	mov edx, edi
	lea eax, [ebp-0xfc]
	call SND_RestoreChanInfo
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x10
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [esi+0x10]
	cmp eax, [ebx+0x10]
	jnz SND_Restore_160
	cmp byte [eax+0x1], 0x0
	jz SND_Restore_160
	cmp byte [eax], 0x1
	jnz SND_Restore_160
	xor ecx, ecx
	mov edx, ebx
	mov eax, esi
	call SND_ValidateSoundAliasBlend
	test al, al
	jz SND_Restore_160
	mov eax, [snd_enable2D]
	cmp byte [eax+0xc], 0x0
	jz SND_Restore_160
	mov [ebp-0x70], esi
	mov [ebp-0x6c], ebx
	mov eax, [ebp-0x94]
	mov [ebp-0x68], eax
	mov eax, [ebp-0xec]
	mov [ebp-0x64], eax
	mov eax, [ebp-0xac]
	mov [ebp-0x54], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x50], eax
	mov dword [ebp-0x4c], 0x0
	mov eax, [ebp-0x38]
	mov [ebp-0x48], eax
	mov eax, [ebp-0xe4]
	mov [ebp-0x44], eax
	movzx eax, byte [ebp-0x77]
	mov [ebp-0x40], al
	mov dword [ebp-0x3c], 0x1
	movzx eax, byte [ebp-0x76]
	mov [ebp-0x3f], al
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x70]
	mov [esp], eax
	call SND_StartAlias2DSample
	add eax, 0x1
	jz SND_Restore_160
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call SND_Set2DChannelFromSaveInfo
	mov eax, [ebp-0x20]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	shl edx, 0x2
	lea ecx, [edx+g_snd+0x6260]
	lea ebx, [ecx+0x8]
	mov eax, [ebp-0x84]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x80]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x7c]
	mov [ebx+0x8], eax
	add edx, g_snd+0x6210
	lea ecx, [edx+0xc]
	mov eax, [ebp-0xd0]
	mov [edx+0xc], eax
	mov eax, [ebp-0xcc]
	mov [ecx+0x4], eax
	mov eax, [ebp-0xc8]
	mov [ecx+0x8], eax
	mov eax, [ebp-0xc4]
	mov [ecx+0xc], eax
	mov eax, [ebp-0xc0]
	mov [ecx+0x10], eax
	mov eax, [ebp-0xbc]
	mov [ecx+0x14], eax
	mov eax, [ebp-0xb8]
	mov [ecx+0x18], eax
	mov eax, [ebp-0xb4]
	mov [ecx+0x1c], eax
	mov eax, [ebp-0xb0]
	mov [ecx+0x20], eax
	jmp SND_Restore_160
SND_Restore_70:
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call MemFile_ReadData
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_GetAliasWithOffset
	mov esi, eax
	test eax, eax
	jz SND_Restore_160
	mov [esp], edi
	call MemFile_ReadCString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz SND_Restore_170
	xor ebx, ebx
SND_Restore_190:
	mov edx, edi
	lea eax, [ebp-0xfc]
	call SND_RestoreChanInfo
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov [esp], edi
	call MemFile_ReadData
	mov eax, [esi+0x10]
	cmp eax, [ebx+0x10]
	jnz SND_Restore_180
	cmp byte [eax+0x1], 0x0
	jz SND_Restore_180
	cmp byte [eax], 0x1
	jnz SND_Restore_180
	xor ecx, ecx
	mov edx, ebx
	mov eax, esi
	call SND_ValidateSoundAliasBlend
	test al, al
	jz SND_Restore_180
	mov eax, [snd_enable3D]
	cmp byte [eax+0xc], 0x0
	jz SND_Restore_180
	mov [ebp-0x70], esi
	mov [ebp-0x6c], ebx
	mov eax, [ebp-0x94]
	mov [ebp-0x68], eax
	mov eax, [ebp-0xec]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x58], eax
	mov eax, [ebp-0xac]
	mov [ebp-0x54], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x50], eax
	mov dword [ebp-0x4c], 0x0
	mov eax, [ebp-0x38]
	mov [ebp-0x48], eax
	mov eax, [ebp-0xe4]
	mov [ebp-0x44], eax
	movzx eax, byte [ebp-0x77]
	mov [ebp-0x40], al
	mov dword [ebp-0x3c], 0x1
	movzx eax, byte [ebp-0x76]
	mov [ebp-0x3f], al
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x70]
	mov [esp], eax
	call SND_StartAlias3DSample
	add eax, 0x1
	jz SND_Restore_180
	mov eax, [ebp-0x20]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	shl edx, 0x2
	lea ecx, [edx+g_snd+0x6260]
	lea ebx, [ecx+0x8]
	mov eax, [ebp-0x84]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x80]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x7c]
	mov [ebx+0x8], eax
	add edx, g_snd+0x6210
	lea ecx, [edx+0xc]
	mov eax, [ebp-0xd0]
	mov [edx+0xc], eax
	mov eax, [ebp-0xcc]
	mov [ecx+0x4], eax
	mov eax, [ebp-0xc8]
	mov [ecx+0x8], eax
	mov eax, [ebp-0xc4]
	mov [ecx+0xc], eax
	mov eax, [ebp-0xc0]
	mov [ecx+0x10], eax
	mov eax, [ebp-0xbc]
	mov [ecx+0x14], eax
	mov eax, [ebp-0xb8]
	mov [ecx+0x18], eax
	mov eax, [ebp-0xb4]
	mov [ecx+0x1c], eax
	mov eax, [ebp-0xb0]
	mov [ecx+0x20], eax
	jmp SND_Restore_180
SND_Restore_170:
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call MemFile_ReadData
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_GetAliasWithOffset
	mov ebx, eax
	jmp SND_Restore_190
SND_Restore_150:
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call MemFile_ReadData
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SND_GetAliasWithOffset
	mov ebx, eax
	jmp SND_Restore_200


;SND_SetEq_f()
SND_SetEq_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x8
	jz SND_SetEq_f_10
	mov dword [esp+0x4], _cstring_usage_snd_seteq_
	mov dword [esp], 0x9
	call Com_Printf
	call SND_PrintEqParams
SND_SetEq_f_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_SetEq_f_10:
	lea ecx, [ebp-0x20]
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x1c]
	call SND_ParseChannelAndBand_f
	test al, al
	jz SND_SetEq_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg SND_SetEq_f_30
	mov esi, _cstring_null
SND_SetEq_f_90:
	mov edx, snd_eqTypeStrings
	mov eax, [edx]
	test eax, eax
	jz SND_SetEq_f_40
	xor edi, edi
	mov ebx, edx
SND_SetEq_f_60:
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz SND_SetEq_f_50
	add edi, 0x1
	mov eax, [ebx+0x4]
	add ebx, 0x4
	test eax, eax
	jnz SND_SetEq_f_60
SND_SetEq_f_40:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_invalid_eq_type_
	mov dword [esp], 0x9
	call Com_Printf
	mov edx, snd_eqTypeStrings
	mov eax, [edx]
	test eax, eax
	jz SND_SetEq_f_20
	mov ebx, edx
	jmp SND_SetEq_f_70
SND_SetEq_f_80:
	mov eax, [ebx+0x4]
	add ebx, 0x4
	test eax, eax
	jz SND_SetEq_f_20
SND_SetEq_f_70:
	cmp byte [eax], 0x0
	jz SND_SetEq_f_80
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEq_f_80
SND_SetEq_f_30:
	mov eax, [ebx+eax*4+0x64]
	mov esi, [eax+0x10]
	jmp SND_SetEq_f_90
SND_SetEq_f_50:
	cmp edi, 0x5
	jz SND_SetEq_f_20
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x5
	jle SND_SetEq_f_100
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+0x14]
SND_SetEq_f_160:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x48]
	cvtsd2ss xmm0, [ebp-0x48]
	movss [ebp-0x2c], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jg SND_SetEq_f_110
	mov eax, _cstring_null
SND_SetEq_f_150:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	cvtsd2ss xmm1, [ebp-0x40]
	ucomiss xmm1, [_float_0_00000000]
	jp SND_SetEq_f_120
	jb SND_SetEq_f_130
SND_SetEq_f_120:
	ucomiss xmm1, [_float_20000_00000000]
	jbe SND_SetEq_f_140
SND_SetEq_f_130:
	mov dword [esp+0x10], 0x4e20
	cvtss2sd xmm1, xmm1
	movsd [esp+0x8], xmm1
	mov dword [esp+0x4], _cstring_invalid_freq_f_m
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEq_f_20
SND_SetEq_f_110:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp SND_SetEq_f_150
SND_SetEq_f_100:
	mov eax, _cstring_null
	jmp SND_SetEq_f_160
SND_SetEq_f_140:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x7
	jg SND_SetEq_f_170
	mov eax, _cstring_null
SND_SetEq_f_190:
	mov [esp], eax
	movss [ebp-0x58], xmm1
	call atof
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	movss xmm1, dword [ebp-0x58]
	ucomiss xmm0, [_float_0_00000000]
	jbe SND_SetEq_f_180
SND_SetEq_f_200:
	movss [esp+0x18], xmm0
	movss [esp+0x14], xmm1
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov [esp+0xc], edi
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call SND_SetEqParams
	jmp SND_SetEq_f_20
SND_SetEq_f_170:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x1c]
	jmp SND_SetEq_f_190
SND_SetEq_f_180:
	jp SND_SetEq_f_200
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_invalid_q_f_must
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEq_f_20
	nop


;SND_AddVoice(int)
SND_AddVoice:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add dword [eax+g_snd+0x4e38], 0x1
	pop ebp
	ret
	nop


;SND_SetEqQ_f()
SND_SetEqQ_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x5
	jz SND_SetEqQ_f_10
	mov dword [esp+0x4], _cstring_usage_snd_seteqq
	mov dword [esp], 0x9
	call Com_Printf
SND_SetEqQ_f_20:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SND_SetEqQ_f_10:
	lea ecx, [ebp-0x10]
	lea edx, [ebp-0x14]
	lea eax, [ebp-0xc]
	call SND_ParseChannelAndBand_f
	test al, al
	jz SND_SetEqQ_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg SND_SetEqQ_f_30
	mov eax, _cstring_null
SND_SetEqQ_f_50:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	ucomiss xmm0, [_float_0_00000000]
	jbe SND_SetEqQ_f_40
SND_SetEqQ_f_60:
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call SND_SetEqQ
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SND_SetEqQ_f_30:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x10]
	jmp SND_SetEqQ_f_50
SND_SetEqQ_f_40:
	jp SND_SetEqQ_f_60
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_invalid_q_f_must
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEqQ_f_20


;SND_Shutdown()
SND_Shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Voice_Shutdown
	cmp byte [g_snd], 0x0
	jnz SND_Shutdown_10
	leave
	ret
SND_Shutdown_10:
	mov dword [esp], 0x0
	call SND_StopSounds
	mov dword [esp], 0x1
	call Com_UnloadSoundAliases
	mov dword [esp], 0x0
	call Com_UnloadSoundAliases
	call SND_ShutdownDriver
	mov dword [esp+0x8], 0x7ef8
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_snd
	call memset
	mov dword [esp], _cstring_snd_setenvironme
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_deactivateen
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_playlocal
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_seteq
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_seteqfreq
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_seteqgain
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_seteqq
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_seteqtype
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_deactivateeq
	call Cmd_RemoveCommand
	leave
	ret
	nop


;DB_LoadSounds()
DB_LoadSounds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	xor esi, esi
	mov ebx, g_snd+0x61f0
DB_LoadSounds_30:
	mov edx, [ebx+0x58]
	test edx, edx
	jz DB_LoadSounds_10
	mov eax, [ebx+0x60]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call SND_GetAliasWithOffset
	mov [ebx+0x58], eax
DB_LoadSounds_10:
	mov edx, [ebx+0x5c]
	test edx, edx
	jz DB_LoadSounds_20
	mov eax, [ebx+0x64]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call SND_GetAliasWithOffset
	mov [ebx+0x5c], eax
DB_LoadSounds_20:
	add esi, 0x1
	add ebx, 0x8c
	cmp esi, 0x35
	jnz DB_LoadSounds_30
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;DB_SaveSounds()
DB_SaveSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [ebp-0x1c], 0x0
	mov edi, g_snd+0x61f0
DB_SaveSounds_30:
	mov esi, [edi+0x58]
	test esi, esi
	jz DB_SaveSounds_10
	mov eax, [esi]
	mov [esp+0x4], eax
	mov dword [esp], 0x7
	call DB_FindXAssetHeader
	mov ebx, eax
	mov [esp], esi
	call SND_GetAliasOffset
	mov [edi+0x60], eax
	mov [edi+0x58], ebx
DB_SaveSounds_10:
	mov esi, [edi+0x5c]
	test esi, esi
	jz DB_SaveSounds_20
	mov eax, [esi]
	mov [esp+0x4], eax
	mov dword [esp], 0x7
	call DB_FindXAssetHeader
	mov ebx, eax
	mov [esp], esi
	call SND_GetAliasOffset
	mov [edi+0x64], eax
	mov [edi+0x5c], ebx
DB_SaveSounds_20:
	add dword [ebp-0x1c], 0x1
	add edi, 0x8c
	cmp dword [ebp-0x1c], 0x35
	jnz DB_SaveSounds_30
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SND_Attenuate(SndCurve*, float, float, float)
SND_Attenuate:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	movss xmm2, dword [ebp+0x10]
	movss xmm1, dword [ebp+0x14]
	subss xmm0, xmm2
	fldz
	ucomiss xmm0, [_float_0_00000000]
	jbe SND_Attenuate_10
SND_Attenuate_30:
	subss xmm1, xmm2
	divss xmm0, xmm1
	ucomiss xmm0, [_float_1_00000000]
	jb SND_Attenuate_20
	pop ebp
	ret
SND_Attenuate_20:
	fstp st0
	movss [ebp+0xc], xmm0
	mov [ebp+0x8], eax
	pop ebp
	jmp Com_GetVolumeFalloffCurveValue
SND_Attenuate_10:
	jp SND_Attenuate_30
	fstp st0
	fld1
	pop ebp
	ret
	nop


;SND_StopMusic(int)
SND_StopMusic:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [g_snd], 0x0
	jnz SND_StopMusic_10
SND_StopMusic_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_StopMusic_10:
	mov dword [esp], 0x28
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_StopMusic_20
	test ebx, ebx
	jz SND_StopMusic_30
	movss xmm1, dword [g_snd+0x4c48]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jbe SND_StopMusic_20
	xorps xmm1, [_data16_80000000]
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	movss [g_snd+0x4c4c], xmm1
	movss [g_snd+0x4c48], xmm2
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_StopMusic_30:
	mov dword [ebp+0x8], 0x28
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SND_StopStreamChannel


;SND_StopSounds(snd_stopsounds_arg_t)
SND_StopSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	cmp byte [g_snd], 0x0
	jz SND_StopSounds_10
	test byte [ebp+0x8], 0x8
	jnz SND_StopSounds_20
	mov eax, [g_snd+0x7eec]
	test eax, eax
	jg SND_StopSounds_30
SND_StopSounds_290:
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg SND_StopSounds_40
SND_StopSounds_20:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg SND_StopSounds_50
SND_StopSounds_220:
	test byte [ebp+0x8], 0x1
	jnz SND_StopSounds_60
	xor edi, edi
	mov dword [ebp-0x1c], g_snd
	lea eax, [edi+0x1]
	mov [ebp-0x20], eax
	shl eax, 0x5
	lea ebx, [eax+g_snd+0x4c78]
	mov byte [ebx+0x1c], 0x0
	cmp ebx, [g_snd+0x4cd8]
	jz SND_StopSounds_70
SND_StopSounds_80:
	add dword [ebp-0x1c], 0x20
	cmp dword [ebp-0x20], 0x2
	jz SND_StopSounds_60
SND_StopSounds_120:
	mov edi, [ebp-0x20]
	lea eax, [edi+0x1]
	mov [ebp-0x20], eax
	shl eax, 0x5
	lea ebx, [eax+g_snd+0x4c78]
	mov byte [ebx+0x1c], 0x0
	cmp ebx, [g_snd+0x4cd8]
	jnz SND_StopSounds_80
SND_StopSounds_70:
	mov edx, edi
	test edi, edi
	js SND_StopSounds_90
	mov eax, [ebp-0x1c]
	cmp byte [eax+0x4c94], 0x0
	jnz SND_StopSounds_90
	mov eax, edi
	shl eax, 0x5
	lea ecx, [eax+g_snd+0x4c58]
	xor esi, esi
	jmp SND_StopSounds_100
SND_StopSounds_110:
	movzx eax, byte [ecx+0x1c]
	add esi, 0x1
	sub ecx, 0x20
	test al, al
	jnz SND_StopSounds_90
SND_StopSounds_100:
	sub edx, 0x1
	cmp esi, edi
	jnz SND_StopSounds_110
SND_StopSounds_90:
	shl edx, 0x5
	add edx, g_snd+0x4c70
	lea eax, [edx+0x8]
	mov [g_snd+0x4cd8], eax
	mov eax, [edx+0x8]
	mov [esp], eax
	call SND_SetRoomtype
	mov edx, [ebx+0x4]
	mov eax, [g_snd+0x4cd8]
	mov [eax+0x4], edx
	mov eax, [g_snd+0x4cd8]
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebx+0x4]
	movss [eax+0xc], xmm0
	mov edx, [ebx+0x10]
	mov eax, [g_snd+0x4cd8]
	mov [eax+0x10], edx
	mov eax, [g_snd+0x4cd8]
	movss xmm0, dword [eax+0x14]
	subss xmm0, [ebx+0x10]
	movss [eax+0x18], xmm0
	add dword [ebp-0x1c], 0x20
	cmp dword [ebp-0x20], 0x2
	jnz SND_StopSounds_120
SND_StopSounds_60:
	test byte [ebp+0x8], 0x10
	jnz SND_StopSounds_130
	xor esi, esi
	mov dword [ebp-0x24], g_snd
	lea ebx, [esi+0x1]
	cmp byte [g_snd], 0x0
	jz SND_StopSounds_140
SND_StopSounds_160:
	lea eax, [ebx+ebx*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea edi, [eax+ebx+g_snd+0x4034]
	mov byte [edi+0x300], 0x0
	cmp edi, [g_snd+0x4c44]
	jz SND_StopSounds_150
SND_StopSounds_140:
	add dword [ebp-0x24], 0x304
	cmp ebx, 0x3
	jz SND_StopSounds_130
SND_StopSounds_170:
	mov esi, ebx
	lea ebx, [esi+0x1]
	cmp byte [g_snd], 0x0
	jnz SND_StopSounds_160
	add dword [ebp-0x24], 0x304
	cmp ebx, 0x3
	jnz SND_StopSounds_170
SND_StopSounds_130:
	xor edi, edi
SND_StopSounds_200:
	xor esi, esi
SND_StopSounds_190:
	xor ebx, ebx
SND_StopSounds_180:
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], esi
	call SND_DisableEq
	add ebx, 0x1
	cmp ebx, 0x3
	jnz SND_StopSounds_180
	add esi, 0x1
	cmp esi, 0x40
	jnz SND_StopSounds_190
	add edi, 0x1
	cmp edi, 0x2
	jnz SND_StopSounds_200
SND_StopSounds_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StopSounds_50:
	mov edi, [ebp+0x8]
	shr edi, 1
	and edi, 0x1
	mov esi, [ebp+0x8]
	shr esi, 0x2
	and esi, 0x1
	mov ebx, 0x28
	jmp SND_StopSounds_210
SND_StopSounds_230:
	add ebx, 0x1
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, ebx
	jle SND_StopSounds_220
SND_StopSounds_210:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_StopSounds_230
	test edi, edi
	jz SND_StopSounds_240
	cmp ebx, 0x28
	jz SND_StopSounds_230
SND_StopSounds_240:
	test esi, esi
	jz SND_StopSounds_250
	lea eax, [ebx-0x29]
	cmp eax, 0x3
	jbe SND_StopSounds_230
SND_StopSounds_250:
	mov [esp], ebx
	call SND_StopStreamChannel
	jmp SND_StopSounds_230
SND_StopSounds_40:
	mov ebx, 0x8
	jmp SND_StopSounds_260
SND_StopSounds_270:
	add ebx, 0x1
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, ebx
	jle SND_StopSounds_20
SND_StopSounds_260:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz SND_StopSounds_270
	mov [esp], ebx
	call SND_Stop3DChannel
	jmp SND_StopSounds_270
SND_StopSounds_30:
	xor ebx, ebx
	jmp SND_StopSounds_280
SND_StopSounds_300:
	add ebx, 0x1
	cmp ebx, [g_snd+0x7eec]
	jge SND_StopSounds_290
SND_StopSounds_280:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_StopSounds_300
	mov [esp], ebx
	call SND_Stop2DChannel
	jmp SND_StopSounds_300
SND_StopSounds_150:
	mov ecx, esi
	test esi, esi
	js SND_StopSounds_310
	mov eax, [ebp-0x24]
	cmp byte [eax+0x4334], 0x0
	jnz SND_StopSounds_310
	lea eax, [esi+esi*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea edx, [eax+esi+g_snd+0x3d30]
	mov dword [ebp-0x28], 0x0
SND_StopSounds_320:
	sub ecx, 0x1
	cmp esi, [ebp-0x28]
	jz SND_StopSounds_310
	movzx eax, byte [edx+0x300]
	add dword [ebp-0x28], 0x1
	sub edx, 0x304
	test al, al
	jz SND_StopSounds_320
SND_StopSounds_310:
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea eax, [eax+ecx+g_snd+0x4034]
	mov [g_snd+0x4c44], eax
	mov eax, [g_snd+0x61ec]
	test eax, eax
	jle SND_StopSounds_140
	mov ecx, edi
	xor edi, edi
	xor esi, esi
SND_StopSounds_330:
	mov edx, [ecx]
	mov eax, [g_snd+0x4c44]
	mov [esi+eax], edx
	mov eax, esi
	add eax, [g_snd+0x4c44]
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ecx]
	movss [eax+0x8], xmm0
	add edi, 0x1
	add esi, 0xc
	add ecx, 0xc
	cmp edi, [g_snd+0x61ec]
	jl SND_StopSounds_330
	jmp SND_StopSounds_140
	nop


;SND_RemoveVoice(int)
SND_RemoveVoice:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	sub dword [eax+g_snd+0x4e38], 0x1
	pop ebp
	ret
	nop
	add [eax], al


;SND_SetEqFreq_f()
SND_SetEqFreq_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x5
	jz SND_SetEqFreq_f_10
	mov dword [esp+0x4], _cstring_usage_snd_seteqf
	mov dword [esp], 0x9
	call Com_Printf
SND_SetEqFreq_f_20:
	add esp, 0x44
	pop ebx
	pop ebp
	ret
SND_SetEqFreq_f_10:
	lea ecx, [ebp-0x10]
	lea edx, [ebp-0x14]
	lea eax, [ebp-0xc]
	call SND_ParseChannelAndBand_f
	test al, al
	jz SND_SetEqFreq_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg SND_SetEqFreq_f_30
	mov eax, _cstring_null
SND_SetEqFreq_f_70:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	ucomiss xmm0, [_float_0_00000000]
	jp SND_SetEqFreq_f_40
	jb SND_SetEqFreq_f_50
SND_SetEqFreq_f_40:
	ucomiss xmm0, [_float_20000_00000000]
	jbe SND_SetEqFreq_f_60
SND_SetEqFreq_f_50:
	mov dword [esp+0x10], 0x4e20
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_invalid_freq_f_m1
	mov dword [esp], 0x9
	call Com_Printf
	add esp, 0x44
	pop ebx
	pop ebp
	ret
SND_SetEqFreq_f_30:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x10]
	jmp SND_SetEqFreq_f_70
SND_SetEqFreq_f_60:
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call SND_SetEqFreq
	jmp SND_SetEqFreq_f_20
	nop


;SND_SetEqGain_f()
SND_SetEqGain_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x5
	jz SND_SetEqGain_f_10
	mov dword [esp+0x4], _cstring_usage_snd_seteqg
	mov dword [esp], 0x9
	call Com_Printf
SND_SetEqGain_f_20:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SND_SetEqGain_f_10:
	lea ecx, [ebp-0x10]
	lea edx, [ebp-0x14]
	lea eax, [ebp-0xc]
	call SND_ParseChannelAndBand_f
	test al, al
	jz SND_SetEqGain_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg SND_SetEqGain_f_30
	mov eax, _cstring_null
SND_SetEqGain_f_40:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call SND_SetEqGain
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SND_SetEqGain_f_30:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x10]
	jmp SND_SetEqGain_f_40


;SND_SetEqType_f()
SND_SetEqType_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x5
	jz SND_SetEqType_f_10
	mov dword [esp+0x4], _cstring_usage_snd_seteqt
	mov dword [esp], 0x9
	call Com_Printf
SND_SetEqType_f_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_SetEqType_f_10:
	lea ecx, [ebp-0x20]
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x1c]
	call SND_ParseChannelAndBand_f
	test al, al
	jz SND_SetEqType_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg SND_SetEqType_f_30
	mov edi, _cstring_null
SND_SetEqType_f_90:
	mov edx, snd_eqTypeStrings
	mov eax, [edx]
	test eax, eax
	jz SND_SetEqType_f_40
	xor esi, esi
	mov ebx, edx
SND_SetEqType_f_60:
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz SND_SetEqType_f_50
	add esi, 0x1
	mov eax, [ebx+0x4]
	add ebx, 0x4
	test eax, eax
	jnz SND_SetEqType_f_60
SND_SetEqType_f_40:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_invalid_eq_type_
	mov dword [esp], 0x9
	call Com_Printf
	mov edx, snd_eqTypeStrings
	mov eax, [edx]
	test eax, eax
	jz SND_SetEqType_f_20
	mov ebx, edx
	jmp SND_SetEqType_f_70
SND_SetEqType_f_80:
	mov eax, [ebx+0x4]
	add ebx, 0x4
	test eax, eax
	jz SND_SetEqType_f_20
SND_SetEqType_f_70:
	cmp byte [eax], 0x0
	jz SND_SetEqType_f_80
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEqType_f_80
SND_SetEqType_f_30:
	mov eax, [ebx+eax*4+0x64]
	mov edi, [eax+0x10]
	jmp SND_SetEqType_f_90
SND_SetEqType_f_50:
	cmp esi, 0x5
	jz SND_SetEqType_f_20
	mov [esp+0xc], esi
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call SND_SetEqType
	jmp SND_SetEqType_f_20
	nop


;SND_SetListener(int, int, float const*, float const (*) [3])
SND_SetListener:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x20], eax
	cmp byte [g_snd], 0x0
	jnz SND_SetListener_10
SND_SetListener_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_SetListener_10:
	lea eax, [edx*8]
	mov esi, edx
	shl esi, 0x6
	sub esi, eax
	lea ebx, [esi+g_snd+0x4d50]
	lea eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov edx, [ebp-0x20]
	mov [esp], edx
	call AxisCopy
	lea edx, [ebx+0xc]
	mov eax, [edi]
	mov [ebx+0xc], eax
	mov eax, [edi+0x4]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov eax, g_snd+0x4d80
	mov edx, [ebp-0x1c]
	mov [esi+eax+0xc], edx
	mov byte [esi+eax+0x10], 0x1
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jz SND_SetListener_20
	add eax, 0xc
	mov [ebp+0xc], eax
	mov eax, [ebp-0x20]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp AxisCopy


;SND_StopAmbient(int, int, snd_alias_system_t)
SND_StopAmbient:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	cmp byte [g_snd], 0x0
	jnz SND_StopAmbient_10
SND_StopAmbient_80:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_StopAmbient_10:
	mov dword [esp], 0x29
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_StopAmbient_20
	test ebx, ebx
	jz SND_StopAmbient_30
	movss xmm1, dword [g_snd+0x4c50]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jbe SND_StopAmbient_20
	xorps xmm1, [_data16_80000000]
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	movss [g_snd+0x4c54], xmm1
	movss [g_snd+0x4c50], xmm2
SND_StopAmbient_20:
	mov dword [esp], 0x2a
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_StopAmbient_40
	test ebx, ebx
	jz SND_StopAmbient_50
	movss xmm1, dword [g_snd+0x4c58]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jbe SND_StopAmbient_40
	xorps xmm1, [_data16_80000000]
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	movss [g_snd+0x4c5c], xmm1
	movss [g_snd+0x4c58], xmm2
SND_StopAmbient_40:
	mov dword [esp], 0x2b
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_StopAmbient_60
	test ebx, ebx
	jz SND_StopAmbient_70
	movss xmm1, dword [g_snd+0x4c60]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jbe SND_StopAmbient_60
	xorps xmm1, [_data16_80000000]
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	movss [g_snd+0x4c64], xmm1
	movss [g_snd+0x4c60], xmm2
SND_StopAmbient_60:
	mov dword [esp], 0x2c
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_StopAmbient_80
	test ebx, ebx
	jz SND_StopAmbient_90
	movss xmm1, dword [g_snd+0x4c68]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jbe SND_StopAmbient_80
	xorps xmm1, [_data16_80000000]
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	movss [g_snd+0x4c6c], xmm1
	movss [g_snd+0x4c68], xmm2
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_StopAmbient_50:
	mov dword [esp], 0x2a
	call SND_StopStreamChannel
	jmp SND_StopAmbient_40
SND_StopAmbient_30:
	mov dword [esp], 0x29
	call SND_StopStreamChannel
	jmp SND_StopAmbient_20
SND_StopAmbient_70:
	mov dword [esp], 0x2b
	call SND_StopStreamChannel
	jmp SND_StopAmbient_60
SND_StopAmbient_90:
	mov dword [ebp+0x8], 0x2c
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SND_StopStreamChannel
	nop


;SND_ErrorCleanup()
SND_ErrorCleanup:
	push ebp
	mov ebp, esp
	mov dword [g_snd+0x401c], 0x0
	pop ebp
	ret
	nop


;SND_HasFreeVoice(int)
SND_HasFreeVoice:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	xor ecx, ecx
	mov edx, g_snd
	mov ebx, g_snd+0x71c
SND_HasFreeVoice_20:
	cmp dword [edx+0x77d0], 0x1
	jnz SND_HasFreeVoice_10
	lea eax, [ecx+0x1]
	cmp esi, [edx+0x77e4]
	cmovz ecx, eax
SND_HasFreeVoice_10:
	add edx, 0x8c
	cmp ebx, edx
	jnz SND_HasFreeVoice_20
	lea eax, [esi+esi*4]
	shl eax, 0x4
	add ecx, [eax+g_snd+0x4e38]
	cmp ecx, [eax+g_snd+0x4e34]
	setl al
	movzx eax, al
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SND_InitFXSounds()
SND_InitFXSounds:
	push ebp
	mov ebp, esp
	mov dword [g_FXPlaySoundCount], 0x0
	pop ebp
	ret
	nop


;SND_PlayFXSounds()
SND_PlayFXSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [g_FXPlaySoundCount]
	test eax, eax
	jz SND_PlayFXSounds_10
	xor esi, esi
	xor ebx, ebx
	mov edi, g_FXPlaySounds+0x8
SND_PlayFXSounds_30:
	mov ecx, [ebx+g_FXPlaySounds+0x4]
	mov eax, [ebx+g_FXPlaySounds]
	test eax, eax
	jz SND_PlayFXSounds_20
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, eax
	call SND_PlaySoundAlias_Internal
SND_PlayFXSounds_20:
	add esi, 0x1
	add ebx, 0x14
	add edi, 0x14
	cmp [g_FXPlaySoundCount], esi
	ja SND_PlayFXSounds_30
SND_PlayFXSounds_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_FadeAllSounds(float, int)
SND_FadeAllSounds:
	push ebp
	mov ebp, esp
	movss xmm0, dword [ebp+0x8]
	mov eax, [ebp+0xc]
	movss [g_snd+0x402c], xmm0
	movaps xmm1, xmm0
	subss xmm1, [g_snd+0x4028]
	movss [g_snd+0x4030], xmm1
	test eax, eax
	jz SND_FadeAllSounds_10
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	movss [g_snd+0x4030], xmm1
SND_FadeAllSounds_20:
	pop ebp
	ret
SND_FadeAllSounds_10:
	ucomiss xmm0, [_float_0_00000000]
	jnz SND_FadeAllSounds_20
	jp SND_FadeAllSounds_20
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp SND_StopSounds


;SND_SaveListeners(snd_listener*)
SND_SaveListeners:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x70
	mov dword [esp+0x4], g_snd+0x4d5c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memcpy
	leave
	ret
	nop


;SND_UpdateReverbs()
SND_UpdateReverbs:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg SND_UpdateReverbs_10
SND_UpdateReverbs_50:
	mov eax, [g_snd+0x7eec]
	test eax, eax
	jg SND_UpdateReverbs_20
SND_UpdateReverbs_110:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg SND_UpdateReverbs_30
SND_UpdateReverbs_80:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_UpdateReverbs_10:
	mov ebx, 0x8
	jmp SND_UpdateReverbs_40
SND_UpdateReverbs_60:
	add ebx, 0x1
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp ebx, eax
	jge SND_UpdateReverbs_50
SND_UpdateReverbs_40:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz SND_UpdateReverbs_60
	mov [esp], ebx
	call SND_Update3DChannelReverb
	jmp SND_UpdateReverbs_60
SND_UpdateReverbs_30:
	mov ebx, 0x28
	jmp SND_UpdateReverbs_70
SND_UpdateReverbs_90:
	add ebx, 0x1
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp ebx, eax
	jge SND_UpdateReverbs_80
SND_UpdateReverbs_70:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_UpdateReverbs_90
	mov [esp], ebx
	call SND_UpdateStreamChannelReverb
	jmp SND_UpdateReverbs_90
SND_UpdateReverbs_20:
	xor ebx, ebx
	jmp SND_UpdateReverbs_100
SND_UpdateReverbs_120:
	add ebx, 0x1
	cmp ebx, [g_snd+0x7eec]
	jge SND_UpdateReverbs_110
SND_UpdateReverbs_100:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_UpdateReverbs_120
	mov [esp], ebx
	call SND_Update2DChannelReverb
	jmp SND_UpdateReverbs_120
	nop


;SND_DeactivateEq_f()
SND_DeactivateEq_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, cmd_args
	mov ecx, [edx]
	mov ebx, [edx+ecx*4+0x44]
	lea eax, [ebx-0x2]
	cmp eax, 0x2
	ja SND_DeactivateEq_f_10
	cmp ebx, 0x1
	jle SND_DeactivateEq_f_20
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x4]
SND_DeactivateEq_f_140:
	mov [esp], eax
	call atoi
	mov edi, eax
	cmp eax, 0x1
	jbe SND_DeactivateEq_f_30
	mov dword [esp+0xc], 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_eqindex_
	mov dword [esp], 0x9
	call Com_Printf
SND_DeactivateEq_f_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_DeactivateEq_f_30:
	cmp ebx, 0x3
	jz SND_DeactivateEq_f_40
	cmp ebx, 0x4
	jz SND_DeactivateEq_f_50
	cmp ebx, 0x2
	jnz SND_DeactivateEq_f_60
	xor esi, esi
SND_DeactivateEq_f_80:
	xor ebx, ebx
SND_DeactivateEq_f_70:
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], esi
	call SND_DisableEq
	add ebx, 0x1
	cmp ebx, 0x3
	jnz SND_DeactivateEq_f_70
	add esi, 0x1
	cmp esi, 0x40
	jnz SND_DeactivateEq_f_80
	jmp SND_DeactivateEq_f_60
SND_DeactivateEq_f_10:
	mov dword [esp+0x4], _cstring_usage_snd_deacti
	mov dword [esp], 0x9
	call Com_Printf
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_DeactivateEq_f_40:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg SND_DeactivateEq_f_90
	mov esi, _cstring_null
SND_DeactivateEq_f_210:
	mov dword [ebp-0x1c], 0x0
SND_DeactivateEq_f_130:
	mov eax, [g_snd+0x61ec]
	test eax, eax
	jle SND_DeactivateEq_f_100
	xor ebx, ebx
SND_DeactivateEq_f_120:
	lea eax, [ebx+ebx*4]
	shl eax, 0x4
	add eax, g_snd+0x4dec
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz SND_DeactivateEq_f_110
	add ebx, 0x1
	cmp [g_snd+0x61ec], ebx
	jg SND_DeactivateEq_f_120
SND_DeactivateEq_f_100:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_channel_
	mov dword [esp], 0x9
	call Com_PrintError
SND_DeactivateEq_f_230:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x3
	jnz SND_DeactivateEq_f_130
	jmp SND_DeactivateEq_f_60
SND_DeactivateEq_f_20:
	mov eax, _cstring_null
	jmp SND_DeactivateEq_f_140
SND_DeactivateEq_f_50:
	mov ebx, cmd_args
	mov edx, [ebx]
	mov ecx, [ebx+edx*4+0x44]
	cmp ecx, 0x2
	jg SND_DeactivateEq_f_150
	mov dword [ebp-0x20], _cstring_null
SND_DeactivateEq_f_220:
	cmp ecx, 0x3
	jg SND_DeactivateEq_f_160
	mov eax, _cstring_null
SND_DeactivateEq_f_240:
	mov [esp], eax
	call atoi
	mov esi, eax
	cmp eax, 0x2
	ja SND_DeactivateEq_f_170
	mov eax, [g_snd+0x61ec]
	test eax, eax
	jle SND_DeactivateEq_f_180
	xor ebx, ebx
SND_DeactivateEq_f_200:
	lea eax, [ebx+ebx*4]
	shl eax, 0x4
	add eax, g_snd+0x4dec
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz SND_DeactivateEq_f_190
	add ebx, 0x1
	cmp ebx, [g_snd+0x61ec]
	jl SND_DeactivateEq_f_200
SND_DeactivateEq_f_180:
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_channel_
	mov dword [esp], 0x9
	call Com_PrintError
	jmp SND_DeactivateEq_f_60
SND_DeactivateEq_f_90:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x8]
	jmp SND_DeactivateEq_f_210
SND_DeactivateEq_f_150:
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x8]
	mov [ebp-0x20], eax
	jmp SND_DeactivateEq_f_220
SND_DeactivateEq_f_110:
	test ebx, ebx
	js SND_DeactivateEq_f_100
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call SND_DisableEq
	jmp SND_DeactivateEq_f_230
SND_DeactivateEq_f_160:
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp SND_DeactivateEq_f_240
SND_DeactivateEq_f_170:
	mov dword [esp+0xc], 0x3
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_band_i_m
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_DeactivateEq_f_60
SND_DeactivateEq_f_190:
	test ebx, ebx
	js SND_DeactivateEq_f_180
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov [esp], ebx
	call SND_DisableEq
	jmp SND_DeactivateEq_f_60
	nop


;SND_GetKnownLength(int, int*)
SND_GetKnownLength:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [ebx], 0x0
	lea eax, [ecx+0x1]
	cmp eax, 0x1
	jbe SND_GetKnownLength_10
	xor edx, edx
	mov eax, g_snd
	jmp SND_GetKnownLength_20
SND_GetKnownLength_40:
	add edx, 0x1
	add eax, 0x8c
	cmp edx, 0x35
	jz SND_GetKnownLength_30
SND_GetKnownLength_20:
	cmp ecx, [eax+0x6218]
	jnz SND_GetKnownLength_40
	lea edx, [edx+edx*4]
	lea eax, [edx*8]
	sub eax, edx
	mov eax, [eax*4+g_snd+0x6214]
	test eax, eax
	js SND_GetKnownLength_30
	mov [ebx], eax
SND_GetKnownLength_10:
	mov eax, 0x1
	pop ebx
	pop ebp
	ret
SND_GetKnownLength_30:
	xor eax, eax
	pop ebx
	pop ebp
	ret
	add [eax], al


;SND_PlayMusicAlias(int, snd_alias_t const*, unsigned char, snd_alias_system_t)
SND_PlayMusicAlias:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x14]
	movzx esi, byte [ebp+0x10]
	cmp byte [g_snd], 0x0
	jz SND_PlayMusicAlias_10
	test ebx, ebx
	jz SND_PlayMusicAlias_10
	mov dword [esp], 0x28
	call SND_IsStreamChannelFree
	test al, al
	jz SND_PlayMusicAlias_20
	mov [ebp+0x10], edi
	mov edx, esi
	movzx eax, dl
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x0
	pxor xmm0, xmm0
	mov ecx, ebx
	xor edx, edx
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SND_StartBackground
SND_PlayMusicAlias_20:
	mov eax, [ebx]
	mov [ebp+0x10], eax
	mov dword [ebp+0xc], _cstring_unable_to_play_m
	mov dword [ebp+0x8], 0x9
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_PrintWarning
SND_PlayMusicAlias_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_PlaySoundAlias(snd_alias_t const*, SndEntHandle, float const*, int, snd_alias_system_t)
SND_PlaySoundAlias:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	test eax, eax
	jz SND_PlaySoundAlias_10
	mov edx, [ebp+0x18]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x10]
	mov [esp], edx
	mov ecx, [ebp+0xc]
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, eax
	call SND_PlaySoundAlias_Internal
	leave
	ret
SND_PlaySoundAlias_10:
	mov eax, 0xffffffff
	leave
	ret


;SND_AddLengthNotify(int, void*, SndLengthId)
SND_AddLengthNotify:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0x10]
	lea eax, [ecx+0x1]
	cmp eax, 0x1
	jbe SND_AddLengthNotify_10
	xor edx, edx
	mov eax, g_snd
	jmp SND_AddLengthNotify_20
SND_AddLengthNotify_40:
	add edx, 0x1
	add eax, 0x8c
	cmp edx, 0x35
	jz SND_AddLengthNotify_30
SND_AddLengthNotify_20:
	cmp ecx, [eax+0x6218]
	jnz SND_AddLengthNotify_40
	lea edx, [edx+edx*4]
	lea eax, [edx*8]
	sub eax, edx
	lea ebx, [eax*4+g_snd+0x61f0]
	mov eax, [ebx+0x24]
	test eax, eax
	js SND_AddLengthNotify_50
	sub esi, 0x1
	jz SND_AddLengthNotify_60
SND_AddLengthNotify_70:
	mov eax, 0x1
SND_AddLengthNotify_80:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_AddLengthNotify_10:
	sub esi, 0x1
	jnz SND_AddLengthNotify_70
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CG_SubtitleSndLengthNotify
	mov eax, 0x1
	jmp SND_AddLengthNotify_80
SND_AddLengthNotify_30:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_AddLengthNotify_60:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call CG_SubtitleSndLengthNotify
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_AddLengthNotify_50:
	mov eax, [ebx+0x4c]
	test eax, eax
	jg SND_AddLengthNotify_90
	xor edx, edx
SND_AddLengthNotify_130:
	add eax, 0x1
	mov [ebx+0x4c], eax
	mov [ebx+edx*4+0x2c], esi
	mov eax, [ebp+0xc]
	mov [ebx+edx*4+0x3c], eax
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_AddLengthNotify_90:
	mov edx, ebx
	xor ecx, ecx
	jmp SND_AddLengthNotify_100
SND_AddLengthNotify_120:
	add ecx, 0x1
	add edx, 0x4
	cmp eax, ecx
	jz SND_AddLengthNotify_110
SND_AddLengthNotify_100:
	cmp esi, [edx+0x2c]
	jnz SND_AddLengthNotify_120
	mov edi, [ebp+0xc]
	cmp edi, [edx+0x3c]
	jnz SND_AddLengthNotify_120
	jmp SND_AddLengthNotify_70
SND_AddLengthNotify_110:
	mov edx, ecx
	jmp SND_AddLengthNotify_130
	nop


;SND_AddPhysicsSound(snd_alias_list_t*, float const*)
SND_AddPhysicsSound:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp], 0xd
	call Sys_EnterCriticalSection
	mov eax, [g_sndPhysics+0x200]
	cmp eax, 0x1f
	jg SND_AddPhysicsSound_10
	shl eax, 0x4
	mov [eax+g_sndPhysics], esi
	mov eax, [g_sndPhysics+0x200]
	shl eax, 0x4
	add eax, g_sndPhysics
	lea ecx, [eax+0x4]
	mov edx, [ebx]
	mov [eax+0x4], edx
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	add dword [g_sndPhysics+0x200], 0x1
SND_AddPhysicsSound_10:
	mov dword [ebp+0x8], 0xd
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Sys_LeaveCriticalSection
	nop


;SND_GetSoundOverlay(snd_overlay_type_t, snd_overlay_info_t*, int, int*)
SND_GetSoundOverlay:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x14]
	cmp byte [g_snd], 0x0
	jz SND_GetSoundOverlay_10
	test ecx, ecx
	jz SND_GetSoundOverlay_20
	mov eax, [g_snd+0x18]
	mov [ecx], eax
SND_GetSoundOverlay_20:
	cmp edx, 0x2
	jz SND_GetSoundOverlay_30
	cmp edx, 0x3
	jz SND_GetSoundOverlay_40
	sub edx, 0x1
	jz SND_GetSoundOverlay_50
SND_GetSoundOverlay_10:
	mov dword [ebp-0x3c], 0x0
	mov eax, [ebp-0x3c]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_GetSoundOverlay_30:
	mov eax, [g_snd+0x7ef4]
	cmp [ebp+0x10], eax
	mov edx, [ebp+0x10]
	cmovg edx, eax
	mov [ebp-0x3c], edx
	test edx, edx
	jg SND_GetSoundOverlay_60
SND_GetSoundOverlay_70:
	mov eax, edx
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_GetSoundOverlay_50:
	mov eax, [g_snd+0x7ef0]
	cmp [ebp+0x10], eax
	mov edx, [ebp+0x10]
	cmovg edx, eax
	mov [ebp-0x3c], edx
	test edx, edx
	jle SND_GetSoundOverlay_70
	mov esi, [ebp+0xc]
	mov dword [ebp-0x4c], 0x0
	mov edi, g_snd
	mov dword [ebp-0x5c], g_snd+0x66c8
SND_GetSoundOverlay_100:
	mov ebx, [ebp-0x4c]
	add ebx, 0x8
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz SND_GetSoundOverlay_80
	cmp dword [edi+0x6650], 0x2
	jz SND_GetSoundOverlay_90
SND_GetSoundOverlay_80:
	mov byte [esi], 0x0
SND_GetSoundOverlay_330:
	add dword [ebp-0x4c], 0x1
	add dword [ebp-0x5c], 0x8c
	add esi, 0x110
	add edi, 0x8c
	mov edx, [ebp-0x4c]
	cmp [ebp-0x3c], edx
	jnz SND_GetSoundOverlay_100
SND_GetSoundOverlay_130:
	mov eax, [ebp-0x3c]
SND_GetSoundOverlay_210:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_GetSoundOverlay_60:
	mov esi, [ebp+0xc]
	mov dword [ebp-0x44], 0x0
	mov edi, g_snd
	mov dword [ebp-0x58], g_snd+0x7848
	mov ebx, [ebp-0x44]
SND_GetSoundOverlay_140:
	add ebx, 0x28
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_GetSoundOverlay_110
	cmp dword [edi+0x77d0], 0x2
	jz SND_GetSoundOverlay_120
SND_GetSoundOverlay_110:
	mov byte [esi], 0x0
SND_GetSoundOverlay_170:
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x58], 0x8c
	add esi, 0x110
	add edi, 0x8c
	mov edx, [ebp-0x44]
	cmp [ebp-0x3c], edx
	jz SND_GetSoundOverlay_130
	mov ebx, edx
	jmp SND_GetSoundOverlay_140
SND_GetSoundOverlay_120:
	lea eax, [edi+0x7828]
	mov [ebp-0x40], eax
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], esi
	mov eax, [edi+0x7828]
	mov [esp], eax
	call Com_GetSoundFileName
	mov eax, [edi+0x7828]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x40
	lea eax, [esi+0x80]
	mov [esp], eax
	call Com_sprintf
	mov eax, [edi+0x77e4]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add eax, g_snd+0x4dec
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x40
	lea eax, [esi+0xc0]
	mov [esp], eax
	call Com_sprintf
	mov [esp], ebx
	call SND_GetStreamChannelPlaybackRate
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, dword [edi+0x77d8]
	divss xmm0, xmm1
	movss [esi+0x10c], xmm0
	mov eax, [edi+0x7820]
	mov [esi+0x100], eax
	mov [esp], ebx
	call SND_GetStreamChannelVolume
	fstp dword [ebp-0x48]
	movss xmm0, dword [ebp-0x48]
	movss [esi+0x104], xmm0
	movss xmm0, dword [g_snd+0x4024]
	ucomiss xmm0, [_float_0_00000000]
	jp SND_GetSoundOverlay_150
	jnz SND_GetSoundOverlay_150
SND_GetSoundOverlay_260:
	mov edx, [ebp-0x40]
	mov eax, [edx]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e30], 0x0
	jnz SND_GetSoundOverlay_160
	mov dword [esi+0x108], 0xffffffff
	jmp SND_GetSoundOverlay_170
SND_GetSoundOverlay_40:
	mov eax, [g_snd+0x7eec]
	cmp [ebp+0x10], eax
	mov edx, [ebp+0x10]
	cmovg edx, eax
	mov [ebp-0x3c], edx
	test edx, edx
	jle SND_GetSoundOverlay_70
	mov ebx, [ebp+0xc]
	xor edi, edi
	mov esi, g_snd
SND_GetSoundOverlay_200:
	mov [esp], edi
	call SND_Is2DChannelFree
	test al, al
	jnz SND_GetSoundOverlay_180
	cmp dword [esi+0x61f0], 0x2
	jz SND_GetSoundOverlay_190
SND_GetSoundOverlay_180:
	mov byte [ebx], 0x0
SND_GetSoundOverlay_250:
	add edi, 0x1
	add ebx, 0x110
	add esi, 0x8c
	cmp [ebp-0x3c], edi
	jnz SND_GetSoundOverlay_200
	mov eax, [ebp-0x3c]
	jmp SND_GetSoundOverlay_210
SND_GetSoundOverlay_190:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	mov eax, [esi+0x6248]
	mov [esp], eax
	call Com_GetSoundFileName
	mov eax, [esi+0x6248]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x40
	lea eax, [ebx+0x80]
	mov [esp], eax
	call Com_sprintf
	mov eax, [esi+0x6204]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add eax, g_snd+0x4dec
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x40
	lea eax, [ebx+0xc0]
	mov [esp], eax
	call Com_sprintf
	mov [esp], edi
	call SND_Get2DChannelPlaybackRate
	test eax, eax
	jnz SND_GetSoundOverlay_220
	mov eax, [esi+0x61f8]
SND_GetSoundOverlay_220:
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, dword [esi+0x61f8]
	divss xmm0, xmm1
	movss [ebx+0x10c], xmm0
	mov eax, [esi+0x6240]
	mov [ebx+0x100], eax
	mov [esp], edi
	call SND_Get2DChannelVolume
	fstp dword [ebp-0x54]
	movss xmm0, dword [ebp-0x54]
	movss [ebx+0x104], xmm0
	movss xmm0, dword [g_snd+0x4024]
	ucomiss xmm0, [_float_0_00000000]
	jp SND_GetSoundOverlay_230
	jz SND_GetSoundOverlay_240
SND_GetSoundOverlay_230:
	movss xmm1, dword [ebp-0x54]
	divss xmm1, xmm0
	movss [ebx+0x104], xmm1
SND_GetSoundOverlay_240:
	mov dword [ebx+0x108], 0xffffffff
	jmp SND_GetSoundOverlay_250
SND_GetSoundOverlay_150:
	movss xmm1, dword [ebp-0x48]
	divss xmm1, xmm0
	movss [esi+0x104], xmm1
	jmp SND_GetSoundOverlay_260
SND_GetSoundOverlay_90:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], esi
	mov eax, [edi+0x66a8]
	mov [esp], eax
	call Com_GetSoundFileName
	mov eax, [edi+0x66a8]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x40
	lea eax, [esi+0x80]
	mov [esp], eax
	call Com_sprintf
	mov eax, [edi+0x6664]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add eax, g_snd+0x4dec
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x40
	lea eax, [esi+0xc0]
	mov [esp], eax
	call Com_sprintf
	mov [esp], ebx
	call SND_Get3DChannelPlaybackRate
	test eax, eax
	jnz SND_GetSoundOverlay_270
	mov eax, [edi+0x6658]
SND_GetSoundOverlay_270:
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, dword [edi+0x6658]
	divss xmm0, xmm1
	movss [esi+0x10c], xmm0
	mov eax, [edi+0x66a0]
	mov [esi+0x100], eax
	mov [esp], ebx
	call SND_Get3DChannelVolume
	fstp dword [ebp-0x50]
	movss xmm0, dword [ebp-0x50]
	movss [esi+0x104], xmm0
	movss xmm0, dword [g_snd+0x4024]
	ucomiss xmm0, [_float_0_00000000]
	jp SND_GetSoundOverlay_280
	jz SND_GetSoundOverlay_290
SND_GetSoundOverlay_280:
	movss xmm1, dword [ebp-0x50]
	divss xmm1, xmm0
	movss [esi+0x104], xmm1
SND_GetSoundOverlay_290:
	mov edx, [edi+0x6660]
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov [esp], edx
	call SND_GetCurrent3DPosition
	movss xmm5, dword [ebp-0x2c]
	movss xmm4, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x24]
	xor eax, eax
	mov ecx, g_snd
	mov edx, g_snd+0x4d50
SND_GetSoundOverlay_310:
	cmp byte [ecx+0x4d90], 0x0
	jnz SND_GetSoundOverlay_300
	movss xmm2, dword [_float_34028234663852885_float_3]
SND_GetSoundOverlay_370:
	movss [ebp+eax*4-0x20], xmm2
	add eax, 0x1
	add edx, 0x38
	add ecx, 0x38
	cmp eax, 0x2
	jnz SND_GetSoundOverlay_310
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jz SND_GetSoundOverlay_320
	mov eax, [g_snd+0x4ddc]
	imul eax, eax
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0x1c]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_34028234663852885_float_3]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
SND_GetSoundOverlay_320:
	movss xmm0, dword [ebp-0x20]
	xor eax, eax
	ucomiss xmm0, [ebp-0x1c]
	seta al
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, g_snd+0x4d50
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm5
	movss xmm1, dword [edx+0x4]
	subss xmm1, xmm4
	movss xmm2, dword [edx+0x8]
	subss xmm2, xmm3
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	cvttss2si eax, xmm0
	mov [esi+0x108], eax
	jmp SND_GetSoundOverlay_330
SND_GetSoundOverlay_160:
	mov edx, [edi+0x77e0]
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov [esp], edx
	call SND_GetCurrent3DPosition
	movss xmm5, dword [ebp-0x2c]
	movss xmm4, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x24]
	xor eax, eax
	mov ecx, g_snd
	mov edx, g_snd+0x4d50
SND_GetSoundOverlay_350:
	cmp byte [ecx+0x4d90], 0x0
	jnz SND_GetSoundOverlay_340
	movss xmm2, dword [_float_34028234663852885_float_3]
SND_GetSoundOverlay_380:
	movss [ebp+eax*4-0x20], xmm2
	add eax, 0x1
	add edx, 0x38
	add ecx, 0x38
	cmp eax, 0x2
	jnz SND_GetSoundOverlay_350
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jz SND_GetSoundOverlay_360
	mov eax, [g_snd+0x4ddc]
	imul eax, eax
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0x1c]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_34028234663852885_float_3]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
SND_GetSoundOverlay_360:
	movss xmm0, dword [ebp-0x20]
	xor eax, eax
	ucomiss xmm0, [ebp-0x1c]
	seta al
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, g_snd+0x4d50
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm5
	movss xmm1, dword [edx+0x4]
	subss xmm1, xmm4
	movss xmm2, dword [edx+0x8]
	subss xmm2, xmm3
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	cvttss2si eax, xmm0
	mov [esi+0x108], eax
	jmp SND_GetSoundOverlay_170
SND_GetSoundOverlay_300:
	movss xmm2, dword [edx+0xc]
	subss xmm2, xmm5
	movss xmm0, dword [edx+0x10]
	subss xmm0, xmm4
	movss xmm1, dword [edx+0x14]
	subss xmm1, xmm3
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp SND_GetSoundOverlay_370
SND_GetSoundOverlay_340:
	movss xmm2, dword [edx+0xc]
	subss xmm2, xmm5
	movss xmm0, dword [edx+0x10]
	subss xmm0, xmm4
	movss xmm1, dword [edx+0x14]
	subss xmm1, xmm3
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp SND_GetSoundOverlay_380


;SND_StopSoundsOnEnt(SndEntHandle)
SND_StopSoundsOnEnt:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	xor edx, edx
	pop ebp
	jmp StopSoundAliasesOnEnt


;SND_IsAliasChannel3D(int)
SND_IsAliasChannel3D:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	movzx eax, byte [eax+g_snd+0x4e30]
	pop ebp
	ret
	nop
	add [eax], al


;SND_PlayAmbientAlias(int, snd_alias_t const*, int, snd_alias_system_t)
SND_PlayAmbientAlias:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0xc]
	cmp byte [g_snd], 0x0
	jz SND_PlayAmbientAlias_10
	test ebx, ebx
	jz SND_PlayAmbientAlias_10
	mov esi, [ebx+0x8]
	mov [ebp-0x20], ebx
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x2c], 0x4
	mov eax, [g_snd+0x4c70]
	sub [ebp-0x2c], eax
	test byte [ebx+0x30], 0x20
	jnz SND_PlayAmbientAlias_20
	pxor xmm0, xmm0
	movss [ebp-0x38], xmm0
SND_PlayAmbientAlias_150:
	test esi, esi
	jz SND_PlayAmbientAlias_30
	mov eax, [ebx+0x8]
	mov [esp], eax
	call Com_PickSoundAlias
	mov [ebp-0x1c], eax
SND_PlayAmbientAlias_30:
	mov byte [ebp-0x31], 0x0
	mov dword [ebp-0x30], 0x0
SND_PlayAmbientAlias_120:
	mov eax, [g_snd+0x4c70]
	mov edx, [ebp-0x30]
	lea ebx, [edx+eax+0x28]
	mov edi, [ebp+edx*4-0x20]
	test edi, edi
	jz SND_PlayAmbientAlias_40
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_PlayAmbientAlias_50
	lea eax, [ebx+ebx*4]
	lea edx, [eax*8]
	sub edx, eax
	lea ebx, [edx*4]
	mov ecx, [ebx+g_snd+0x6248]
	mov eax, [ecx]
	cmp eax, [edi]
	jz SND_PlayAmbientAlias_60
	mov eax, [ecx+0x10]
	cmp eax, [edi+0x10]
	jz SND_PlayAmbientAlias_70
SND_PlayAmbientAlias_50:
	mov eax, [g_snd+0x4c70]
	mov ebx, [ebp-0x30]
SND_PlayAmbientAlias_140:
	add ebx, eax
	lea esi, [ebx+0x28]
	mov [esp], esi
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_PlayAmbientAlias_80
	mov eax, [ebp+0x10]
	test eax, eax
	jz SND_PlayAmbientAlias_90
	mov eax, g_snd+0x4c40
	movss xmm1, dword [ebx*8+g_snd+0x4c48]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe SND_PlayAmbientAlias_80
	xorps xmm1, [_data16_80000000]
	cvtsi2ss xmm0, dword [ebp+0x10]
	divss xmm1, xmm0
	movss [eax+ebx*8+0xc], xmm1
	mov dword [eax+ebx*8+0x8], 0x0
SND_PlayAmbientAlias_80:
	test edi, edi
	jz SND_PlayAmbientAlias_60
	mov eax, [ebp-0x30]
	test eax, eax
	jz SND_PlayAmbientAlias_100
	cmp byte [ebp-0x31], 0x0
	jz SND_PlayAmbientAlias_110
SND_PlayAmbientAlias_130:
	mov edx, [ebp-0x30]
	add edx, [ebp-0x2c]
SND_PlayAmbientAlias_160:
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x10]
	mov [esp], eax
	movss xmm0, dword [ebp-0x38]
	mov ecx, edi
	mov eax, [ebp+0x8]
	call SND_StartBackground
SND_PlayAmbientAlias_60:
	add dword [ebp-0x30], 0x1
	cmp dword [ebp-0x30], 0x2
	jnz SND_PlayAmbientAlias_120
	cmp byte [ebp-0x31], 0x0
	mov eax, [ebp-0x2c]
	cmovz eax, [g_snd+0x4c70]
	mov [g_snd+0x4c70], eax
SND_PlayAmbientAlias_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_PlayAmbientAlias_100:
	mov byte [ebp-0x31], 0x1
	jmp SND_PlayAmbientAlias_130
SND_PlayAmbientAlias_40:
	mov ebx, edx
	jmp SND_PlayAmbientAlias_140
SND_PlayAmbientAlias_20:
	call randomf
	fstp dword [ebp-0x38]
	jmp SND_PlayAmbientAlias_150
SND_PlayAmbientAlias_110:
	mov edx, [ebp-0x30]
	add edx, [g_snd+0x4c70]
	jmp SND_PlayAmbientAlias_160
SND_PlayAmbientAlias_90:
	mov [esp], esi
	call SND_StopStreamChannel
	jmp SND_PlayAmbientAlias_80
SND_PlayAmbientAlias_70:
	mov eax, [ecx+0x30]
	mov [ebp-0x44], eax
	mov esi, [edi+0x30]
	mov edx, eax
	and edx, 0x1
	mov eax, esi
	and eax, 0x1
	cmp edx, eax
	jnz SND_PlayAmbientAlias_50
	movss xmm0, dword [ecx+0x20]
	ucomiss xmm0, [edi+0x20]
	jnz SND_PlayAmbientAlias_50
	jp SND_PlayAmbientAlias_50
	movss xmm0, dword [ecx+0x24]
	ucomiss xmm0, [edi+0x24]
	jnz SND_PlayAmbientAlias_50
	jp SND_PlayAmbientAlias_50
	and dword [ebp-0x44], 0x3f00
	and esi, 0x3f00
	cmp esi, [ebp-0x44]
	jnz SND_PlayAmbientAlias_50
	mov [ebx+g_snd+0x6248], edi
	mov [ebx+g_snd+0x624c], edi
	movss xmm0, dword [edi+0x18]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [edi+0x1c]
	subss xmm0, [ebp-0x40]
	movss [ebp-0x3c], xmm0
	call randomf
	fstp dword [ebp-0x4c]
	movss xmm2, dword [ebp-0x4c]
	mulss xmm2, [ebp-0x3c]
	addss xmm2, [ebp-0x40]
	mov eax, [ebp-0x30]
	add eax, [g_snd+0x4c70]
	lea edx, [eax*8+g_snd+0x4c40]
	lea eax, [edx+0x8]
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz SND_PlayAmbientAlias_170
	movaps xmm0, xmm2
	subss xmm0, [edx+0x8]
	cvtsi2ss xmm1, dword [ebp+0x10]
	divss xmm0, xmm1
	movss [eax+0x4], xmm0
	movss [eax], xmm2
	jmp SND_PlayAmbientAlias_60
SND_PlayAmbientAlias_170:
	mov dword [eax+0x4], 0x0
	movss [eax], xmm2
	jmp SND_PlayAmbientAlias_60
	nop


;SND_ResetChannelInfo(int)
SND_ResetChannelInfo:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea edx, [edx+edx*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	mov byte [eax+g_snd+0x6274], 0x0
	mov dword [eax+g_snd+0x6208], 0x0
	mov dword [eax+g_snd+0x61f0], 0x0
	mov dword [eax+g_snd+0x6248], 0x0
	pop ebp
	ret


;SND_RestoreListeners(snd_listener*)
SND_RestoreListeners:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x70
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], g_snd+0x4d5c
	call memcpy
	leave
	ret
	nop


;SND_ShutdownChannels()
SND_ShutdownChannels:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call SND_StopSounds
	mov dword [esp+0x8], 0x1cfc
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_snd+0x61f0
	call memset
	leave
	ret


;SND_AcquirePlaybackId(int, int)
SND_AcquirePlaybackId:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	lea edx, [edx*4+g_snd+0x61f0]
	mov eax, [edx+0x58]
	test byte [eax+0x30], 0x1
	jz SND_AcquirePlaybackId_10
	mov dword [edx+0x24], 0x0
	mov dword [edx+0x28], 0x0
	mov eax, 0x1
	mov ecx, [g_snd+0x4]
	test ecx, ecx
	cmovg eax, [g_snd+0x4]
	mov [g_snd+0x4], eax
	mov eax, [edx+0x28]
	pop ebp
	ret
SND_AcquirePlaybackId_10:
	mov eax, [ebp+0xc]
	mov [edx+0x24], eax
	mov eax, [g_snd+0x4]
	mov [edx+0x28], eax
	add eax, 0x1
	mov [g_snd+0x4], eax
	mov eax, 0x1
	mov ecx, [g_snd+0x4]
	test ecx, ecx
	cmovg eax, [g_snd+0x4]
	mov [g_snd+0x4], eax
	mov eax, [edx+0x28]
	pop ebp
	ret


;SND_FindFree2DChannel(SndStartAliasInfo*, int)
SND_FindFree2DChannel:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	xor ecx, ecx
	mov edx, g_snd
SND_FindFree2DChannel_20:
	cmp dword [edx+0x77d0], 0x1
	jnz SND_FindFree2DChannel_10
	lea eax, [ecx+0x1]
	cmp esi, [edx+0x77e4]
	cmovz ecx, eax
SND_FindFree2DChannel_10:
	add edx, 0x8c
	cmp edx, g_snd+0x71c
	jnz SND_FindFree2DChannel_20
	lea eax, [esi+esi*4]
	shl eax, 0x4
	add ecx, [eax+g_snd+0x4e38]
	cmp ecx, [eax+g_snd+0x4e34]
	jge SND_FindFree2DChannel_30
	mov eax, [g_snd+0x7eec]
	test eax, eax
	jle SND_FindFree2DChannel_40
	xor ebx, ebx
SND_FindFree2DChannel_60:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_FindFree2DChannel_50
	add ebx, 0x1
	mov eax, [g_snd+0x7eec]
	cmp eax, ebx
	jg SND_FindFree2DChannel_60
SND_FindFree2DChannel_40:
	mov [esp], eax
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp+0x8]
	call SND_FindReplaceableChannel
	mov ebx, eax
	test eax, eax
	js SND_FindFree2DChannel_50
	mov [esp], eax
	call SND_Stop2DChannel
SND_FindFree2DChannel_50:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SND_FindFree2DChannel_30:
	mov ebx, 0xffffffff
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SND_FindFree3DChannel(SndStartAliasInfo*, int)
SND_FindFree3DChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	xor ecx, ecx
	mov edx, g_snd
SND_FindFree3DChannel_20:
	cmp dword [edx+0x77d0], 0x1
	jnz SND_FindFree3DChannel_10
	lea eax, [ecx+0x1]
	cmp esi, [edx+0x77e4]
	cmovz ecx, eax
SND_FindFree3DChannel_10:
	add edx, 0x8c
	cmp edx, g_snd+0x71c
	jnz SND_FindFree3DChannel_20
	lea eax, [esi+esi*4]
	shl eax, 0x4
	add ecx, [eax+g_snd+0x4e38]
	cmp ecx, [eax+g_snd+0x4e34]
	jge SND_FindFree3DChannel_30
	mov eax, [g_snd+0x7ef0]
	test eax, eax
	jle SND_FindFree3DChannel_40
	xor ebx, ebx
SND_FindFree3DChannel_60:
	lea edi, [ebx+0x8]
	mov [esp], edi
	call SND_Is3DChannelFree
	test al, al
	jnz SND_FindFree3DChannel_50
	add ebx, 0x1
	mov eax, [g_snd+0x7ef0]
	cmp eax, ebx
	jg SND_FindFree3DChannel_60
SND_FindFree3DChannel_40:
	mov [esp], eax
	mov ecx, 0x8
	mov edx, esi
	mov eax, [ebp+0x8]
	call SND_FindReplaceableChannel
	mov edi, eax
	test eax, eax
	js SND_FindFree3DChannel_50
	mov [esp], eax
	call SND_Stop3DChannel
SND_FindFree3DChannel_50:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_FindFree3DChannel_30:
	mov edi, 0xffffffff
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SND_GetEntChannelName(int)
SND_GetEntChannelName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add eax, g_snd+0x4dec
	pop ebp
	ret
	nop


;SND_SetChannelVolumes(int, float const*, int)
SND_SetChannelVolumes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0x10]
	lea eax, [edi+edi*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea eax, [eax+edi+g_snd+0x4034]
	mov [ebp-0x10], eax
	mov byte [eax+0x300], 0x1
	test ecx, ecx
	mov eax, 0x1
	cmovle ecx, eax
	mov eax, [g_snd+0x61ec]
	test eax, eax
	jle SND_SetChannelVolumes_10
	cvtsi2ss xmm2, ecx
	mov edx, [ebp-0x10]
	xor esi, esi
	xor ebx, ebx
	mov ecx, [ebp+0xc]
SND_SetChannelVolumes_20:
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov eax, [g_snd+0x4c44]
	movss xmm1, dword [ebx+eax]
	movss [edx], xmm1
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	divss xmm0, xmm2
	movss [edx+0x8], xmm0
	add esi, 0x1
	add ecx, 0x4
	add ebx, 0xc
	add edx, 0xc
	cmp [g_snd+0x61ec], esi
	jg SND_SetChannelVolumes_20
SND_SetChannelVolumes_10:
	mov eax, [ebp-0x10]
	cmp eax, [g_snd+0x4c44]
	jz SND_SetChannelVolumes_30
	lea ecx, [edi+0x1]
	cmp ecx, 0x3
	jg SND_SetChannelVolumes_40
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	cmp byte [eax+ecx+g_snd+0x4334], 0x0
	jnz SND_SetChannelVolumes_30
	lea eax, [edi+edi*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea edx, [eax+edi+g_snd+0x463c]
	jmp SND_SetChannelVolumes_50
SND_SetChannelVolumes_60:
	movzx eax, byte [edx+0x300]
	add edx, 0x304
	test al, al
	jnz SND_SetChannelVolumes_30
SND_SetChannelVolumes_50:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz SND_SetChannelVolumes_60
SND_SetChannelVolumes_40:
	mov eax, [ebp-0x10]
	mov [g_snd+0x4c44], eax
SND_SetChannelVolumes_30:
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_AnyActiveListeners()
SND_AnyActiveListeners:
	push ebp
	mov ebp, esp
	mov eax, g_snd
SND_AnyActiveListeners_20:
	cmp byte [eax+0x4d90], 0x0
	jnz SND_AnyActiveListeners_10
	add eax, 0x38
	cmp eax, g_snd+0x70
	jnz SND_AnyActiveListeners_20
	xor eax, eax
	pop ebp
	ret
SND_AnyActiveListeners_10:
	mov eax, 0x1
	pop ebp
	ret


;SND_DisconnectListener(int)
SND_DisconnectListener:
	push ebp
	mov ebp, esp
	push edi
	mov edi, [ebp+0x8]
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	add edi, g_snd+0x4d5c
	cld
	mov ecx, 0xe
	xor eax, eax
	rep stosd
	pop edi
	pop ebp
	ret


;SND_GetEntChannelCount()
SND_GetEntChannelCount:
	push ebp
	mov ebp, esp
	mov eax, [g_snd+0x61ec]
	pop ebp
	ret
	add [eax], al


;SND_AddPlayFXSoundAlias(snd_alias_t*, SndEntHandle, float const*)
SND_AddPlayFXSoundAlias:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ebx, [g_FXPlaySoundCount]
	cmp ebx, 0x20
	jz SND_AddPlayFXSoundAlias_10
	lea eax, [ebx+ebx*4]
	shl eax, 0x2
	lea edx, [eax+g_FXPlaySounds]
	mov [eax+g_FXPlaySounds], ecx
	mov [edx+0x4], edi
	lea ecx, [edx+0x8]
	mov eax, [esi]
	mov [edx+0x8], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	lea eax, [ebx+0x1]
	mov [g_FXPlaySoundCount], eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_AddPlayFXSoundAlias_10:
	mov dword [ebp+0x10], 0x20
	mov dword [ebp+0xc], _cstring_error_too_many_f
	mov dword [ebp+0x8], 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_PrintError


;SND_GetVolumeNormalized()
SND_GetVolumeNormalized:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	movss xmm0, dword [_float_1_33333337]
	mulss xmm0, [g_snd+0x4024]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret


;SND_SetChannelStartInfo(int, SndStartAliasInfo*)
SND_SetChannelStartInfo:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x40
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edx, [edx+edx*4]
	lea eax, [edx*8]
	sub eax, edx
	lea edi, [eax*4+g_snd+0x61f0]
	cmp dword [ebx+0xc], 0xffff
	jz SND_SetChannelStartInfo_10
	mov eax, [ebx]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*4]
	shl eax, 0x4
	cmp byte [eax+g_snd+0x4e30], 0x0
	jnz SND_SetChannelStartInfo_20
SND_SetChannelStartInfo_10:
	lea edx, [edi+0x78]
	xor eax, eax
	mov [edi+0x78], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
SND_SetChannelStartInfo_50:
	mov edx, [ebx+0xc]
	mov [edi+0x10], edx
	mov eax, [ebx]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	mov [edi+0x14], eax
	mov eax, [ebx+0x1c]
	mov [edi+0x50], eax
	mov eax, [ebx+0x20]
	mov [edi+0x54], eax
	mov eax, [ebx]
	mov [edi+0x58], eax
	mov eax, [ebx+0x4]
	mov [edi+0x5c], eax
	mov eax, [ebx+0x8]
	mov [edi+0x68], eax
	mov eax, [ebx+0x2c]
	mov [edi+0x18], eax
	mov eax, [g_snd+0x4dd0]
	mov [edi+0x20], eax
	cmp byte [g_snd+0x2], 0x0
	jz SND_SetChannelStartInfo_30
	mov eax, [ebx]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	cmp byte [eax+g_snd+0x4d1c], 0x0
	jz SND_SetChannelStartInfo_30
	mov eax, 0x1
	jmp SND_SetChannelStartInfo_40
SND_SetChannelStartInfo_30:
	xor eax, eax
SND_SetChannelStartInfo_40:
	mov [edi+0x84], al
	movzx eax, byte [ebx+0x30]
	mov [edi+0x85], al
	mov eax, [ebx+0x34]
	mov [edi+0x88], eax
	mov eax, [edi+0x18]
	add eax, [g_snd+0x4dcc]
	mov [edi+0x1c], eax
	movzx eax, byte [ebx+0x31]
	mov [edi+0x86], al
	add edi, 0x2c
	cld
	mov ecx, 0x9
	xor eax, eax
	rep stosd
	add esp, 0x40
	pop ebx
	pop edi
	pop ebp
	ret
SND_SetChannelStartInfo_20:
	mov edx, [ebx+0xc]
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov [esp], edx
	call CG_GetSoundEntityOrientation
	lea eax, [ebx+0x10]
	movss xmm2, dword [ebx+0x10]
	subss xmm2, [ebp-0x14]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [ebp-0x10]
	movss xmm4, dword [eax+0x8]
	subss xmm4, [ebp-0xc]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x38]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x34]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x30]
	addss xmm0, xmm1
	movss [edi+0x78], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x2c]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x28]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x24]
	addss xmm0, xmm1
	movss [edi+0x7c], xmm0
	mulss xmm2, [ebp-0x20]
	mulss xmm3, [ebp-0x1c]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x18]
	addss xmm2, xmm4
	movss [edi+0x80], xmm2
	jmp SND_SetChannelStartInfo_50


;SND_StopSoundAliasOnEnt(SndEntHandle, char const*)
SND_StopSoundAliasOnEnt:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	pop ebp
	jmp StopSoundAliasesOnEnt
	nop


;SND_UpdateLoopingSounds()
SND_UpdateLoopingSounds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	cmp byte [g_snd], 0x0
	jz SND_UpdateLoopingSounds_10
	cmp byte [g_snd+0x2], 0x0
	jnz SND_UpdateLoopingSounds_10
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg SND_UpdateLoopingSounds_20
	mov edx, [g_snd+0x7eec]
	test edx, edx
	jg SND_UpdateLoopingSounds_30
SND_UpdateLoopingSounds_70:
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jg SND_UpdateLoopingSounds_40
SND_UpdateLoopingSounds_100:
	mov eax, [g_snd+0x4dcc]
	mov [g_snd+0x4dd0], eax
SND_UpdateLoopingSounds_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SND_UpdateLoopingSounds_20:
	mov ebx, 0x8
	mov esi, g_snd
SND_UpdateLoopingSounds_60:
	mov [esp], ebx
	call SND_Is3DChannelFree
	test al, al
	jnz SND_UpdateLoopingSounds_50
	mov eax, [esi+0x66a8]
	test byte [eax+0x30], 0x1
	jz SND_UpdateLoopingSounds_50
	mov eax, [esi+0x6670]
	cmp eax, [g_snd+0x4dd0]
	jz SND_UpdateLoopingSounds_50
	mov [esp], ebx
	call SND_Stop3DChannel
SND_UpdateLoopingSounds_50:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp ebx, eax
	jl SND_UpdateLoopingSounds_60
	mov edx, [g_snd+0x7eec]
	test edx, edx
	jle SND_UpdateLoopingSounds_70
SND_UpdateLoopingSounds_30:
	xor ebx, ebx
	mov esi, g_snd
SND_UpdateLoopingSounds_90:
	mov [esp], ebx
	call SND_Is2DChannelFree
	test al, al
	jnz SND_UpdateLoopingSounds_80
	mov eax, [esi+0x6248]
	test byte [eax+0x30], 0x1
	jz SND_UpdateLoopingSounds_80
	mov eax, [esi+0x6210]
	cmp eax, [g_snd+0x4dd0]
	jz SND_UpdateLoopingSounds_80
	mov [esp], ebx
	call SND_Stop2DChannel
SND_UpdateLoopingSounds_80:
	add ebx, 0x1
	add esi, 0x8c
	cmp ebx, [g_snd+0x7eec]
	jl SND_UpdateLoopingSounds_90
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp eax, 0x28
	jle SND_UpdateLoopingSounds_100
SND_UpdateLoopingSounds_40:
	mov ebx, 0x28
	mov esi, g_snd
SND_UpdateLoopingSounds_120:
	mov [esp], ebx
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_UpdateLoopingSounds_110
	mov eax, [esi+0x7828]
	test byte [eax+0x30], 0x1
	jz SND_UpdateLoopingSounds_110
	mov eax, [esi+0x77f0]
	cmp eax, [g_snd+0x4dd0]
	jz SND_UpdateLoopingSounds_110
	mov [esp], ebx
	call SND_StopStreamChannel
SND_UpdateLoopingSounds_110:
	add ebx, 0x1
	add esi, 0x8c
	mov eax, [g_snd+0x7ef4]
	add eax, 0x28
	cmp ebx, eax
	jl SND_UpdateLoopingSounds_120
	jmp SND_UpdateLoopingSounds_100
	nop


;SND_GetCurrent3DPosition(SndEntHandle, float const*, float*)
SND_GetCurrent3DPosition:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_GetSoundEntityOrientation
	movss xmm1, dword [ebx]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	addss xmm0, [ebp-0x14]
	movss [ebp-0x14], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x34]
	addss xmm0, [ebp-0x10]
	movss [ebp-0x10], xmm0
	mulss xmm1, [ebp-0x30]
	addss xmm1, [ebp-0xc]
	movss [ebp-0xc], xmm1
	movss xmm1, dword [ebx+0x4]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [ebp-0x14]
	movss [ebp-0x14], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x28]
	addss xmm0, [ebp-0x10]
	movss [ebp-0x10], xmm0
	mulss xmm1, [ebp-0x24]
	addss xmm1, [ebp-0xc]
	movss [ebp-0xc], xmm1
	movss xmm0, dword [ebx+0x8]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x20]
	addss xmm2, [ebp-0x14]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x1c]
	addss xmm1, [ebp-0x10]
	mulss xmm0, [ebp-0x18]
	addss xmm0, [ebp-0xc]
	movss [esi], xmm2
	movss [esi+0x4], xmm1
	movss [esi+0x8], xmm0
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret


;SND_SetEnvironmentEffects(int, char const*, float, float, int)
SND_SetEnvironmentEffects:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov edi, [ebp+0xc]
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x24], xmm0
	movss xmm1, dword [ebp+0x14]
	movss [ebp-0x28], xmm1
	mov eax, [ebp+0x18]
	mov [ebp-0x2c], eax
	cmp byte [g_snd], 0x0
	jz SND_SetEnvironmentEffects_10
	mov eax, [ebp-0x20]
	shl eax, 0x5
	lea esi, [eax+g_snd+0x4c78]
	mov byte [esi+0x1c], 0x1
	mov edx, snd_roomStrings
	mov eax, [edx]
	test eax, eax
	jz SND_SetEnvironmentEffects_20
	mov dword [ebp-0x1c], 0x0
	mov ebx, edx
SND_SetEnvironmentEffects_40:
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz SND_SetEnvironmentEffects_30
	add dword [ebp-0x1c], 0x1
	mov eax, [ebx+0x4]
	add ebx, 0x4
	test eax, eax
	jnz SND_SetEnvironmentEffects_40
SND_SetEnvironmentEffects_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_invalid_roomtype
	mov dword [esp], 0x9
	call Com_Printf
	mov edx, snd_roomStrings
	mov eax, [edx]
	test eax, eax
	jz SND_SetEnvironmentEffects_50
	mov ebx, edx
	jmp SND_SetEnvironmentEffects_60
SND_SetEnvironmentEffects_70:
	mov eax, [ebx+0x4]
	add ebx, 0x4
	test eax, eax
	jz SND_SetEnvironmentEffects_50
SND_SetEnvironmentEffects_60:
	cmp byte [eax], 0x0
	jz SND_SetEnvironmentEffects_70
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x9
	call Com_Printf
	mov eax, [ebx+0x4]
	add ebx, 0x4
	test eax, eax
	jnz SND_SetEnvironmentEffects_60
SND_SetEnvironmentEffects_50:
	mov dword [ebp-0x1c], 0x0
SND_SetEnvironmentEffects_30:
	mov eax, [ebp-0x1c]
	mov [esi], eax
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jle SND_SetEnvironmentEffects_80
	cvtsi2ss xmm0, dword [ebp-0x2c]
SND_SetEnvironmentEffects_120:
	movss xmm1, dword [ebp-0x24]
	movss [esi+0x8], xmm1
	mov eax, [g_snd+0x4cd8]
	mov eax, [eax+0x4]
	mov [esi+0x4], eax
	mov eax, [g_snd+0x4cd8]
	subss xmm1, [eax+0x4]
	movss [ebp-0x24], xmm1
	divss xmm1, xmm0
	movss [esi+0xc], xmm1
	movss xmm1, dword [ebp-0x28]
	movss [esi+0x14], xmm1
	mov eax, [g_snd+0x4cd8]
	mov eax, [eax+0x10]
	mov [esi+0x10], eax
	mov eax, [g_snd+0x4cd8]
	subss xmm1, [eax+0x10]
	movss [ebp-0x28], xmm1
	divss xmm1, xmm0
	movss [esi+0x18], xmm1
	cmp esi, [g_snd+0x4cd8]
	jz SND_SetEnvironmentEffects_90
	mov ecx, [ebp-0x20]
	add ecx, 0x1
	cmp ecx, 0x2
	jg SND_SetEnvironmentEffects_100
	mov eax, ecx
	shl eax, 0x5
	cmp byte [eax+g_snd+0x4c94], 0x0
	jnz SND_SetEnvironmentEffects_10
	shl dword [ebp-0x20], 0x5
	mov edx, [ebp-0x20]
	add edx, g_snd+0x4cb8
SND_SetEnvironmentEffects_110:
	add ecx, 0x1
	cmp ecx, 0x3
	jz SND_SetEnvironmentEffects_100
	movzx eax, byte [edx+0x1c]
	add edx, 0x20
	test al, al
	jz SND_SetEnvironmentEffects_110
SND_SetEnvironmentEffects_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_SetEnvironmentEffects_100:
	mov [g_snd+0x4cd8], esi
SND_SetEnvironmentEffects_90:
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SND_SetRoomtype
SND_SetEnvironmentEffects_80:
	movss xmm0, dword [_float_1_00000000]
	jmp SND_SetEnvironmentEffects_120
	nop


;SND_PlaySoundAliasAsMaster(snd_alias_t const*, SndEntHandle, float const*, int, snd_alias_system_t)
SND_PlaySoundAliasAsMaster:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	test eax, eax
	jz SND_PlaySoundAliasAsMaster_10
	mov edx, [ebp+0x18]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x10]
	mov [esp], edx
	mov ecx, [ebp+0xc]
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, eax
	call SND_PlaySoundAlias_Internal
	leave
	ret
SND_PlaySoundAliasAsMaster_10:
	mov eax, 0xffffffff
	leave
	ret


;SND_SetPlaybackIdNotPlayed(int)
SND_SetPlaybackIdNotPlayed:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	mov dword [edx*4+g_snd+0x6218], 0xffffffff
	mov eax, 0xffffffff
	pop ebp
	ret


;SND_UpdateBackgroundVolume(int, int)
SND_UpdateBackgroundVolume:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea ecx, [ebx+0x28]
	movss xmm0, dword [ebx*8+g_snd+0x4c4c]
	lea edx, [ecx+ecx*4]
	lea eax, [edx*8]
	sub eax, edx
	cvtsi2ss xmm1, dword [ebp+0xc]
	mulss xmm1, xmm0
	addss xmm1, [eax*4+g_snd+0x6240]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe SND_UpdateBackgroundVolume_10
	movss xmm0, dword [ebx*8+g_snd+0x4c48]
	ucomiss xmm1, xmm0
	ja SND_UpdateBackgroundVolume_20
SND_UpdateBackgroundVolume_30:
	lea eax, [ecx+ecx*4]
	lea edx, [eax*8]
	sub edx, eax
	shl edx, 0x2
	mov eax, [g_snd+0x4dd0]
	mov [edx+g_snd+0x6210], eax
	movss [edx+g_snd+0x6240], xmm1
	mov eax, 0x1
SND_UpdateBackgroundVolume_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_UpdateBackgroundVolume_10:
	movss xmm0, dword [ebx*8+g_snd+0x4c48]
	ucomiss xmm0, xmm1
	jbe SND_UpdateBackgroundVolume_30
	ucomiss xmm0, xmm2
	jz SND_UpdateBackgroundVolume_40
SND_UpdateBackgroundVolume_20:
	movaps xmm1, xmm0
	jmp SND_UpdateBackgroundVolume_30
SND_UpdateBackgroundVolume_40:
	jp SND_UpdateBackgroundVolume_20
	mov [esp], ecx
	call SND_StopStreamChannel
	xor eax, eax
	jmp SND_UpdateBackgroundVolume_50


;SND_PlayBlendedSoundAliases(snd_alias_t const*, snd_alias_t const*, float, float, SndEntHandle, float const*, int, snd_alias_system_t)
SND_PlayBlendedSoundAliases:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebp-0x20], xmm0
	mov eax, [ebp+0x18]
	mov [ebp-0x24], eax
	mov eax, [ebp+0x1c]
	mov [ebp-0x28], eax
	mov eax, [ebp+0x20]
	mov [ebp-0x2c], eax
	mov esi, [ebp+0x24]
	test ebx, ebx
	jnz SND_PlayBlendedSoundAliases_10
SND_PlayBlendedSoundAliases_20:
	mov eax, 0xffffffff
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_PlayBlendedSoundAliases_10:
	test edi, edi
	jz SND_PlayBlendedSoundAliases_20
	mov ecx, 0x1
	mov edx, edi
	mov eax, ebx
	call SND_ValidateSoundAliasBlend
	mov [ebp+0x1c], esi
	mov dword [ebp+0x18], 0x1
	mov dword [ebp+0x14], 0x0
	mov eax, [ebp-0x2c]
	mov [ebp+0x10], eax
	mov dword [ebp+0xc], 0x0
	mov eax, [ebp-0x28]
	mov [ebp+0x8], eax
	mov ecx, [ebp-0x24]
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	mov edx, edi
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SND_PlaySoundAlias_Internal


;SND_SetEnvironmentEffects_f()
SND_SetEnvironmentEffects_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jz SND_SetEnvironmentEffects_f_10
	mov dword [esp+0x4], _cstring_usage_snd_setenv
	mov dword [esp], 0x9
	call Com_Printf
SND_SetEnvironmentEffects_f_140:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_SetEnvironmentEffects_f_10:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x4]
	mov dword [ebp-0x24], _cstring_none
	mov dword [ebp-0x20], _cstring_level
	mov dword [ebp-0x1c], _cstring_shellshock
	mov edi, 0x1
	lea ebx, [ebp-0x20]
SND_SetEnvironmentEffects_f_30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz SND_SetEnvironmentEffects_f_20
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz SND_SetEnvironmentEffects_f_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_invalid_priority
	mov dword [esp], 0x9
	call Com_Printf
	xor esi, esi
	lea ebx, [ebp-0x20]
SND_SetEnvironmentEffects_f_40:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x9
	call Com_Printf
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x2
	jnz SND_SetEnvironmentEffects_f_40
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_SetEnvironmentEffects_f_20:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg SND_SetEnvironmentEffects_f_50
	mov dword [ebp-0x30], _cstring_null
SND_SetEnvironmentEffects_f_190:
	mov edx, snd_roomStrings
	mov eax, [edx]
	test eax, eax
	jz SND_SetEnvironmentEffects_f_60
	xor esi, esi
	mov ebx, edx
SND_SetEnvironmentEffects_f_80:
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz SND_SetEnvironmentEffects_f_70
	add esi, 0x1
	mov eax, [ebx+0x4]
	add ebx, 0x4
	test eax, eax
	jnz SND_SetEnvironmentEffects_f_80
SND_SetEnvironmentEffects_f_60:
	mov eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_roomtype
	mov dword [esp], 0x9
	call Com_Printf
	mov eax, snd_roomStrings
	mov edx, [eax]
	test edx, edx
	jz SND_SetEnvironmentEffects_f_90
	mov ebx, eax
	jmp SND_SetEnvironmentEffects_f_100
SND_SetEnvironmentEffects_f_120:
	mov edx, [ebx+0x4]
	add ebx, 0x4
	test edx, edx
	jz SND_SetEnvironmentEffects_f_110
SND_SetEnvironmentEffects_f_100:
	cmp byte [edx], 0x0
	jz SND_SetEnvironmentEffects_f_120
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEnvironmentEffects_f_120
SND_SetEnvironmentEffects_f_70:
	test esi, esi
	jnz SND_SetEnvironmentEffects_f_130
SND_SetEnvironmentEffects_f_110:
	mov eax, snd_roomStrings
	mov eax, [eax]
SND_SetEnvironmentEffects_f_210:
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz SND_SetEnvironmentEffects_f_140
SND_SetEnvironmentEffects_f_130:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg SND_SetEnvironmentEffects_f_150
	mov eax, _cstring_null
SND_SetEnvironmentEffects_f_200:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x40]
	cvtsd2ss xmm0, [ebp-0x40]
	movss [ebp-0x2c], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp SND_SetEnvironmentEffects_f_160
	jb SND_SetEnvironmentEffects_f_170
SND_SetEnvironmentEffects_f_160:
	ucomiss xmm0, [_float_1_00000000]
	jbe SND_SetEnvironmentEffects_f_180
SND_SetEnvironmentEffects_f_170:
	cvtss2sd xmm0, [ebp-0x2c]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_invalid_drylevel
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEnvironmentEffects_f_140
SND_SetEnvironmentEffects_f_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	mov [ebp-0x30], eax
	jmp SND_SetEnvironmentEffects_f_190
SND_SetEnvironmentEffects_f_150:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp SND_SetEnvironmentEffects_f_200
SND_SetEnvironmentEffects_f_90:
	mov eax, edx
	jmp SND_SetEnvironmentEffects_f_210
SND_SetEnvironmentEffects_f_180:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg SND_SetEnvironmentEffects_f_220
	mov eax, _cstring_null
SND_SetEnvironmentEffects_f_260:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	ucomiss xmm0, [_float_0_00000000]
	jp SND_SetEnvironmentEffects_f_230
	jb SND_SetEnvironmentEffects_f_240
SND_SetEnvironmentEffects_f_230:
	ucomiss xmm0, [_float_1_00000000]
	jbe SND_SetEnvironmentEffects_f_250
SND_SetEnvironmentEffects_f_240:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_invalid_wetlevel
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEnvironmentEffects_f_140
SND_SetEnvironmentEffects_f_220:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp SND_SetEnvironmentEffects_f_260
SND_SetEnvironmentEffects_f_250:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg SND_SetEnvironmentEffects_f_270
	mov eax, _cstring_null
SND_SetEnvironmentEffects_f_290:
	mov [esp], eax
	movss [ebp-0x58], xmm0
	call atoi
	test eax, eax
	movss xmm0, dword [ebp-0x58]
	js SND_SetEnvironmentEffects_f_280
	mov [esp+0x10], eax
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edi
	call SND_SetEnvironmentEffects
	jmp SND_SetEnvironmentEffects_f_140
SND_SetEnvironmentEffects_f_270:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp SND_SetEnvironmentEffects_f_290
SND_SetEnvironmentEffects_f_280:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_fademsec
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_SetEnvironmentEffects_f_140


;SND_SetSoundFileChannelInfo(int, int, int, int, int, SndFileLoadingState)
SND_SetSoundFileChannelInfo:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x14]
	mov ebx, g_snd+0x61f0
	lea edx, [edx+edx*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	mov edx, [ebp+0x1c]
	mov [eax+g_snd+0x61f0], edx
	mov edx, [ebp+0xc]
	mov [eax+ebx+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+ebx+0x8], edx
	add ecx, [g_snd+0x4dcc]
	sub ecx, [ebp+0x18]
	mov [eax+ebx+0xc], ecx
	pop ebx
	pop ebp
	ret
	nop


;SND_DeactivateChannelVolumes(int, int)
SND_DeactivateChannelVolumes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	cmp byte [g_snd], 0x0
	jz SND_DeactivateChannelVolumes_10
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea edi, [eax+ecx+g_snd+0x4034]
	mov byte [edi+0x300], 0x0
	cmp edi, [g_snd+0x4c44]
	jz SND_DeactivateChannelVolumes_20
SND_DeactivateChannelVolumes_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_DeactivateChannelVolumes_20:
	mov esi, ecx
	sub esi, 0x1
	js SND_DeactivateChannelVolumes_30
	lea eax, [esi+esi*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	cmp byte [eax+esi+g_snd+0x4334], 0x0
	jnz SND_DeactivateChannelVolumes_30
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea ecx, [eax+ecx+g_snd+0x3a2c]
	mov ebx, esi
	xor edx, edx
SND_DeactivateChannelVolumes_50:
	sub ebx, 0x1
	cmp edx, esi
	jz SND_DeactivateChannelVolumes_40
	movzx eax, byte [ecx+0x300]
	add edx, 0x1
	sub ecx, 0x304
	test al, al
	jz SND_DeactivateChannelVolumes_50
SND_DeactivateChannelVolumes_40:
	mov eax, [ebp+0xc]
	test eax, eax
	jle SND_DeactivateChannelVolumes_60
SND_DeactivateChannelVolumes_80:
	lea eax, [ebx+ebx*2]
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea eax, [eax+ebx+g_snd+0x4034]
	mov [g_snd+0x4c44], eax
	mov eax, [g_snd+0x61ec]
	test eax, eax
	jle SND_DeactivateChannelVolumes_10
	cvtsi2ss xmm1, dword [ebp+0xc]
	mov ecx, edi
	xor esi, esi
	xor ebx, ebx
SND_DeactivateChannelVolumes_70:
	mov edx, [ecx]
	mov eax, [g_snd+0x4c44]
	mov [ebx+eax], edx
	mov eax, ebx
	add eax, [g_snd+0x4c44]
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ecx]
	divss xmm0, xmm1
	movss [eax+0x8], xmm0
	add esi, 0x1
	add ebx, 0xc
	add ecx, 0xc
	cmp esi, [g_snd+0x61ec]
	jl SND_DeactivateChannelVolumes_70
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_DeactivateChannelVolumes_30:
	mov ebx, esi
	jmp SND_DeactivateChannelVolumes_40
SND_DeactivateChannelVolumes_60:
	mov dword [ebp+0xc], 0x1
	jmp SND_DeactivateChannelVolumes_80


;SND_GetLerpedSlavePercentage(float)
SND_GetLerpedSlavePercentage:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	movss xmm0, dword [_float_1_00000000]
	movaps xmm1, xmm0
	subss xmm1, [ebp+0x8]
	mulss xmm1, [g_snd+0x4c74]
	subss xmm0, xmm1
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret


;SND_PlayLocalSoundAliasByName(int, char const*, snd_alias_system_t)
SND_PlayLocalSoundAliasByName:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0xc]
	test eax, eax
	jnz SND_PlayLocalSoundAliasByName_10
SND_PlayLocalSoundAliasByName_20:
	mov eax, 0xffffffff
SND_PlayLocalSoundAliasByName_30:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
SND_PlayLocalSoundAliasByName_10:
	mov [esp], eax
	call Com_PickSoundAlias
	mov ebx, eax
	test eax, eax
	jz SND_PlayLocalSoundAliasByName_20
	mov eax, [ebp+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	shl eax, 0x3
	shl dword [ebp+0x8], 0x6
	sub [ebp+0x8], eax
	mov eax, [ebp+0x8]
	add eax, g_snd+0x4d5c
	mov [esp], eax
	xor ecx, ecx
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, ebx
	mov eax, ebx
	call SND_PlaySoundAlias_Internal
	jmp SND_PlayLocalSoundAliasByName_30
	nop


;SND_DeactivateEnvironmentEffects(int, int)
SND_DeactivateEnvironmentEffects:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	shl edx, 0x5
	lea edi, [edx+g_snd+0x4c78]
	mov byte [edi+0x1c], 0x0
	cmp edi, [g_snd+0x4cd8]
	jz SND_DeactivateEnvironmentEffects_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_DeactivateEnvironmentEffects_10:
	mov esi, [ebp+0x8]
	sub esi, 0x1
	js SND_DeactivateEnvironmentEffects_20
	mov eax, esi
	shl eax, 0x5
	cmp byte [eax+g_snd+0x4c94], 0x0
	jz SND_DeactivateEnvironmentEffects_30
SND_DeactivateEnvironmentEffects_20:
	mov ebx, esi
SND_DeactivateEnvironmentEffects_50:
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jle SND_DeactivateEnvironmentEffects_40
	cvtsi2ss xmm0, dword [ebp+0xc]
	movss [ebp-0x1c], xmm0
SND_DeactivateEnvironmentEffects_70:
	shl ebx, 0x5
	lea edx, [ebx+g_snd+0x4c70]
	lea eax, [edx+0x8]
	mov [g_snd+0x4cd8], eax
	mov eax, [edx+0x8]
	mov [esp], eax
	call SND_SetRoomtype
	mov edx, [edi+0x4]
	mov eax, [g_snd+0x4cd8]
	mov [eax+0x4], edx
	mov eax, [g_snd+0x4cd8]
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edi+0x4]
	divss xmm0, dword [ebp-0x1c]
	movss [eax+0xc], xmm0
	mov edx, [edi+0x10]
	mov eax, [g_snd+0x4cd8]
	mov [eax+0x10], edx
	mov eax, [g_snd+0x4cd8]
	movss xmm0, dword [eax+0x14]
	subss xmm0, [edi+0x10]
	divss xmm0, dword [ebp-0x1c]
	movss [eax+0x18], xmm0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_DeactivateEnvironmentEffects_30:
	add edx, g_snd+0x4c38
	mov ebx, esi
	xor ecx, ecx
SND_DeactivateEnvironmentEffects_60:
	sub ebx, 0x1
	cmp ecx, esi
	jz SND_DeactivateEnvironmentEffects_50
	movzx eax, byte [edx+0x1c]
	add ecx, 0x1
	sub edx, 0x20
	test al, al
	jz SND_DeactivateEnvironmentEffects_60
	jmp SND_DeactivateEnvironmentEffects_50
SND_DeactivateEnvironmentEffects_40:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x1c], xmm0
	jmp SND_DeactivateEnvironmentEffects_70


;SND_StopChannelAndPlayChainAlias(int)
SND_StopChannelAndPlayChainAlias:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	lea eax, [esi+esi*4]
	lea edx, [eax*8]
	sub edx, eax
	lea ebx, [edx*4+g_snd+0x61f0]
	mov eax, [ebx+0x58]
	mov eax, [eax+0xc]
	test eax, eax
	jz SND_StopChannelAndPlayChainAlias_10
	mov eax, [ebx+0x10]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebx+0x78]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call SND_GetCurrent3DPosition
	mov eax, [ebx+0x58]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Com_PickSoundAlias
	mov edi, eax
	cmp eax, [ebx+0x58]
	jz SND_StopChannelAndPlayChainAlias_20
	cmp esi, 0x27
	jg SND_StopChannelAndPlayChainAlias_30
	cmp esi, 0x7
	jle SND_StopChannelAndPlayChainAlias_40
	mov [esp], esi
	call SND_Stop3DChannel
SND_StopChannelAndPlayChainAlias_80:
	test edi, edi
	jz SND_StopChannelAndPlayChainAlias_50
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, [ebp-0x2c]
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, edi
	mov eax, edi
	call SND_PlaySoundAlias_Internal
SND_StopChannelAndPlayChainAlias_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StopChannelAndPlayChainAlias_20:
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_soundalias_s_is_
	mov dword [esp], 0x9
	call Com_PrintError
SND_StopChannelAndPlayChainAlias_10:
	cmp esi, 0x27
	jg SND_StopChannelAndPlayChainAlias_60
	cmp esi, 0x7
	jg SND_StopChannelAndPlayChainAlias_70
	mov [esp], esi
	call SND_Stop2DChannel
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StopChannelAndPlayChainAlias_40:
	mov [esp], esi
	call SND_Stop2DChannel
	jmp SND_StopChannelAndPlayChainAlias_80
SND_StopChannelAndPlayChainAlias_30:
	mov [esp], esi
	call SND_StopStreamChannel
	jmp SND_StopChannelAndPlayChainAlias_80
SND_StopChannelAndPlayChainAlias_70:
	mov [esp], esi
	call SND_Stop3DChannel
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StopChannelAndPlayChainAlias_60:
	mov [esp], esi
	call SND_StopStreamChannel
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_DeactivateEnvironmentEffects_f()
SND_DeactivateEnvironmentEffects_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jz SND_DeactivateEnvironmentEffects_f_10
	mov dword [esp+0x4], _cstring_usage_snd_deacti1
	mov dword [esp], 0x9
	call Com_Printf
SND_DeactivateEnvironmentEffects_f_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_DeactivateEnvironmentEffects_f_10:
	mov eax, [eax+edx*4+0x64]
	mov edi, [eax+0x4]
	mov dword [ebp-0x24], _cstring_none
	mov dword [ebp-0x20], _cstring_level
	mov dword [ebp-0x1c], _cstring_shellshock
	mov esi, 0x1
	lea ebx, [ebp-0x20]
SND_DeactivateEnvironmentEffects_f_30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz SND_DeactivateEnvironmentEffects_f_20
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x3
	jnz SND_DeactivateEnvironmentEffects_f_30
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_invalid_priority
	mov dword [esp], 0x9
	call Com_Printf
	xor si, si
	lea ebx, [ebp-0x20]
SND_DeactivateEnvironmentEffects_f_40:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x9
	call Com_Printf
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x2
	jnz SND_DeactivateEnvironmentEffects_f_40
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_DeactivateEnvironmentEffects_f_20:
	mov ebx, esi
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg SND_DeactivateEnvironmentEffects_f_50
	mov eax, _cstring_null
SND_DeactivateEnvironmentEffects_f_120:
	mov [esp], eax
	call atoi
	mov edi, eax
	test eax, eax
	js SND_DeactivateEnvironmentEffects_f_60
	mov edx, ebx
	shl edx, 0x5
	lea eax, [edx+g_snd+0x4c78]
	mov [ebp-0x30], eax
	mov byte [eax+0x1c], 0x0
	cmp eax, [g_snd+0x4cd8]
	jnz SND_DeactivateEnvironmentEffects_f_70
	mov esi, ebx
	sub esi, 0x1
	js SND_DeactivateEnvironmentEffects_f_80
	mov eax, esi
	shl eax, 0x5
	cmp byte [eax+g_snd+0x4c94], 0x0
	jnz SND_DeactivateEnvironmentEffects_f_80
	lea ebx, [edx+g_snd+0x4c38]
	mov edx, esi
	xor ecx, ecx
SND_DeactivateEnvironmentEffects_f_100:
	sub edx, 0x1
	cmp ecx, esi
	jz SND_DeactivateEnvironmentEffects_f_90
	movzx eax, byte [ebx+0x1c]
	add ecx, 0x1
	sub ebx, 0x20
	test al, al
	jz SND_DeactivateEnvironmentEffects_f_100
SND_DeactivateEnvironmentEffects_f_90:
	test edi, edi
	jz SND_DeactivateEnvironmentEffects_f_110
	cvtsi2ss xmm0, edi
	movss [ebp-0x2c], xmm0
SND_DeactivateEnvironmentEffects_f_130:
	shl edx, 0x5
	add edx, g_snd+0x4c70
	lea eax, [edx+0x8]
	mov [g_snd+0x4cd8], eax
	mov eax, [edx+0x8]
	mov [esp], eax
	call SND_SetRoomtype
	mov eax, [ebp-0x30]
	mov edx, [eax+0x4]
	mov eax, [g_snd+0x4cd8]
	mov [eax+0x4], edx
	mov eax, [g_snd+0x4cd8]
	movss xmm0, dword [eax+0x8]
	mov edx, [ebp-0x30]
	subss xmm0, [edx+0x4]
	divss xmm0, dword [ebp-0x2c]
	movss [eax+0xc], xmm0
	mov eax, [ebp-0x30]
	mov edx, [eax+0x10]
	mov eax, [g_snd+0x4cd8]
	mov [eax+0x10], edx
	mov eax, [g_snd+0x4cd8]
	movss xmm0, dword [eax+0x14]
	mov edx, [ebp-0x30]
	subss xmm0, [edx+0x10]
	divss xmm0, dword [ebp-0x2c]
	movss [eax+0x18], xmm0
	jmp SND_DeactivateEnvironmentEffects_f_70
SND_DeactivateEnvironmentEffects_f_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp SND_DeactivateEnvironmentEffects_f_120
SND_DeactivateEnvironmentEffects_f_80:
	mov edx, esi
	jmp SND_DeactivateEnvironmentEffects_f_90
SND_DeactivateEnvironmentEffects_f_110:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2c], xmm0
	jmp SND_DeactivateEnvironmentEffects_f_130
SND_DeactivateEnvironmentEffects_f_60:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_fademsec
	mov dword [esp], 0x9
	call Com_Printf
	jmp SND_DeactivateEnvironmentEffects_f_70


;SND_GetListenerIndexNearestToOrigin(float const*)
SND_GetListenerIndexNearestToOrigin:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	xor edx, edx
	mov ecx, g_snd
	movss xmm3, dword [_float_34028234663852885_float_3]
	mov eax, g_snd+0x4d50
SND_GetListenerIndexNearestToOrigin_20:
	cmp byte [ecx+0x4d90], 0x0
	jnz SND_GetListenerIndexNearestToOrigin_10
	movaps xmm2, xmm3
SND_GetListenerIndexNearestToOrigin_40:
	movss [ebp+edx*4-0x10], xmm2
	add edx, 0x1
	add eax, 0x38
	add ecx, 0x38
	cmp edx, 0x2
	jnz SND_GetListenerIndexNearestToOrigin_20
	mov eax, [g_snd+0x4dd4]
	cmp byte [eax+0x34], 0x0
	jz SND_GetListenerIndexNearestToOrigin_30
	mov eax, [g_snd+0x4ddc]
	imul eax, eax
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0xc]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_34028234663852885_float_3]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0xc], xmm0
SND_GetListenerIndexNearestToOrigin_30:
	movss xmm0, dword [ebp-0x10]
	xor eax, eax
	ucomiss xmm0, [ebp-0xc]
	seta al
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_GetListenerIndexNearestToOrigin_10:
	movss xmm2, dword [eax+0xc]
	subss xmm2, [ebx]
	movss xmm0, dword [eax+0x10]
	subss xmm0, [ebx+0x4]
	movss xmm1, dword [eax+0x14]
	subss xmm1, [ebx+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	jmp SND_GetListenerIndexNearestToOrigin_40
	nop


;SND_Init()
SND_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [esp+0x4], _cstring__sound_system_in
	mov dword [esp], 0x9
	call Com_Printf
	mov dword [esp+0xc], _cstring_cause_a_com_erro
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_snd_erroronmissi
	call Cvar_RegisterBool
	mov [snd_errorOnMissing], eax
	mov dword [esp+0x14], _cstring_game_sound_maste
	mov dword [esp+0x10], 0x1
	mov esi, 0x3f800000
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_snd_volume
	call Cvar_RegisterFloat
	mov [snd_volume], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti
	mov dword [esp+0x10], 0x81
	mov dword [esp+0xc], 0x1388
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1f4
	mov dword [esp], _cstring_snd_slavefadetim
	call Cvar_RegisterInt
	mov [snd_slaveFadeTime], eax
	mov dword [esp+0xc], _cstring_enable_2d_sounds
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_snd_enable2d
	call Cvar_RegisterBool
	mov [snd_enable2D], eax
	mov dword [esp+0xc], _cstring_enable_3d_sounds
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_snd_enable3d
	call Cvar_RegisterBool
	mov [snd_enable3D], eax
	mov dword [esp+0xc], _cstring_enable_streamed_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_snd_enablestream
	call Cvar_RegisterBool
	mov [snd_enableStream], eax
	mov dword [esp+0xc], _cstring_enable_sound_rev
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_snd_enablereverb
	call Cvar_RegisterBool
	mov [snd_enableReverb], eax
	mov dword [esp+0xc], _cstring_enable_equalizat
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_snd_enableeq
	call Cvar_RegisterBool
	mov [snd_enableEq], eax
	mov dword [esp+0x10], _cstring_draw_the_positio
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], snd_draw3DNames
	mov dword [esp], _cstring_snd_draw3d
	call Cvar_RegisterEnum
	mov [snd_draw3D], eax
	mov dword [esp+0x14], _cstring_the_amout_of_tim
	mov dword [esp+0x10], 0x81
	mov dword [esp+0xc], 0x1388
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xfa
	mov dword [esp], _cstring_snd_levelfadetim
	call Cvar_RegisterInt
	mov [snd_levelFadeTime], eax
	mov dword [esp+0x14], _cstring_scales_the_volum
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f59999a
	mov dword [esp], _cstring_snd_cinematicvol
	call Cvar_RegisterFloat
	mov [snd_cinematicVolumeScale], eax
	mov dword [esp+0xc], _cstring_check_whether_st
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_snd_touchstreamf
	call Cvar_RegisterBool
	mov [snd_touchStreamFilesOnLoad], eax
	mov dword [g_snd+0x4cd8], g_snd+0x4c78
	mov dword [g_snd+0x4c78], 0x0
	mov [g_snd+0x4c7c], esi
	mov [g_snd+0x4c80], esi
	mov [g_snd+0x4c84], ebx
	mov [g_snd+0x4c88], ebx
	mov [g_snd+0x4c8c], ebx
	mov [g_snd+0x4c90], ebx
	mov byte [g_snd+0x4c94], 0x1
	mov dword [g_snd+0x4dd4], g_snd+0x4d94
	mov dword [esp], _cstring_soundaliaseschan
	call Com_LoadRawTextFile
	mov [ebp-0x6c], eax
	test eax, eax
	jz SND_Init_10
SND_Init_310:
	mov [ebp-0x1c], eax
	mov dword [g_snd+0x61ec], 0x0
	mov dword [esp], _cstring_soundaliaseschan
	call Com_BeginParseSession
	mov dword [esp], 0x1
	call Com_SetCSV
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz SND_Init_20
SND_Init_110:
	movzx eax, byte [ebx]
	test al, al
	jz SND_Init_30
	cmp al, 0x23
	jz SND_Init_30
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	ja SND_Init_40
SND_Init_280:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call strcpy
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	cmp byte [eax], 0x0
	jnz SND_Init_50
	mov eax, [g_snd+0x61ec]
	mov edi, g_snd+0x4e20
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov dword [eax+edi+0xc], 0x0
SND_Init_270:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	mov esi, [g_snd+0x61ec]
	cmp byte [eax], 0x0
	jnz SND_Init_60
SND_Init_290:
	xor edx, edx
SND_Init_300:
	lea eax, [esi+esi*4]
	shl eax, 0x4
	mov [eax+edi+0x10], dl
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	mov esi, [g_snd+0x61ec]
	cmp byte [eax], 0x0
	jnz SND_Init_70
SND_Init_240:
	mov edx, 0x1
SND_Init_260:
	lea eax, [esi+esi*4]
	shl eax, 0x4
	mov [eax+edi+0x11], dl
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	mov esi, [g_snd+0x61ec]
	cmp byte [eax], 0x0
	jnz SND_Init_80
SND_Init_200:
	mov edx, 0x1
SND_Init_220:
	lea eax, [esi+esi*4]
	shl eax, 0x4
	mov [eax+edi+0x12], dl
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz SND_Init_90
SND_Init_190:
	mov esi, 0x35
SND_Init_180:
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov eax, [g_snd+0x61ec]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add eax, g_snd+0x4dec
	mov [esp], eax
	call strcpy
	mov eax, [g_snd+0x61ec]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov [eax+edi+0x14], esi
	mov eax, [g_snd+0x61ec]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov dword [eax+edi+0x18], 0x0
	mov eax, [g_snd+0x61ec]
	add eax, 0x1
	mov [g_snd+0x61ec], eax
	cmp eax, 0x40
	jg SND_Init_100
SND_Init_30:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_SkipRestOfLine
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz SND_Init_110
SND_Init_20:
	call Com_EndParseSession
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call Com_UnloadRawTextFile
	call BG_RegisterShockVolumeDvars
	mov dword [g_snd+0x4], 0x1
	mov eax, 0x3f800000
	mov [g_snd+0x4028], eax
	mov [g_snd+0x402c], eax
	mov dword [g_snd+0x4030], 0x0
	mov dword [g_snd+0x4c44], g_snd+0x4034
	mov edi, [g_snd+0x61ec]
	test edi, edi
	jle SND_Init_120
	xor ecx, ecx
	xor edx, edx
SND_Init_130:
	mov eax, [g_snd+0x4c44]
	mov dword [edx+eax], 0x3f800000
	mov eax, edx
	add eax, [g_snd+0x4c44]
	mov dword [eax+0x4], 0x3f800000
	mov eax, edx
	add eax, [g_snd+0x4c44]
	mov dword [eax+0x8], 0x0
	add ecx, 0x1
	add edx, 0xc
	cmp ecx, [g_snd+0x61ec]
	jl SND_Init_130
SND_Init_120:
	mov eax, [g_snd+0x4c44]
	mov byte [eax+0x300], 0x1
	call Sys_Milliseconds
	mov [g_snd+0x4dcc], eax
	mov [g_snd+0x4dd0], eax
	mov dword [g_snd+0x4c74], 0x0
	movss xmm0, dword [_float_0_75000000]
	mov eax, [snd_volume]
	mulss xmm0, [eax+0xc]
	movss [g_snd+0x4024], xmm0
	mov esi, [g_snd+0x61ec]
	test esi, esi
	jle SND_Init_140
	xor ebx, ebx
	mov ecx, g_snd
	mov edx, g_snd
SND_Init_150:
	movzx eax, byte [ecx+0x4e32]
	mov [edx+0x4cdc], al
	add ebx, 0x1
	add ecx, 0x50
	add edx, 0x1
	cmp ebx, [g_snd+0x61ec]
	jl SND_Init_150
SND_Init_140:
	mov edx, g_snd
	mov ecx, g_snd+0x40
SND_Init_160:
	movzx eax, byte [edx+0x4cdc]
	mov [edx+0x4d1c], al
	add edx, 0x1
	cmp ecx, edx
	jnz SND_Init_160
	mov dword [g_sndPhysics+0x200], 0x0
	mov dword [esp+0x8], _ZZ8SND_InitvE31SND_SetEnvironmentEffects_f_VAR
	mov dword [esp+0x4], SND_SetEnvironmentEffects_f
	mov dword [esp], _cstring_snd_setenvironme
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8SND_InitvE38SND_DeactivateEnvironmentEffects_f_VAR
	mov dword [esp+0x4], SND_DeactivateEnvironmentEffects_f
	mov dword [esp], _cstring_snd_deactivateen
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8SND_InitvE19SND_PlayLocal_f_VAR
	mov dword [esp+0x4], SND_PlayLocal_f
	mov dword [esp], _cstring_snd_playlocal
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8SND_InitvE15SND_SetEq_f_VAR
	mov dword [esp+0x4], SND_SetEq_f
	mov dword [esp], _cstring_snd_seteq
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8SND_InitvE19SND_SetEqFreq_f_VAR
	mov dword [esp+0x4], SND_SetEqFreq_f
	mov dword [esp], _cstring_snd_seteqfreq
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8SND_InitvE19SND_SetEqGain_f_VAR
	mov dword [esp+0x4], SND_SetEqGain_f
	mov dword [esp], _cstring_snd_seteqgain
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8SND_InitvE16SND_SetEqQ_f_VAR
	mov dword [esp+0x4], SND_SetEqQ_f
	mov dword [esp], _cstring_snd_seteqq
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8SND_InitvE19SND_SetEqType_f_VAR
	mov dword [esp+0x4], SND_SetEqType_f
	mov dword [esp], _cstring_snd_seteqtype
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8SND_InitvE22SND_DeactivateEq_f_VAR
	mov dword [esp+0x4], SND_DeactivateEq_f
	mov dword [esp], _cstring_snd_deactivateeq
	call Cmd_AddCommand
	mov dword [esp+0x4], _cstring__sound_system_su
	mov dword [esp], 0x9
	call Com_Printf
	call Voice_Init
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Init_90:
	mov [esp], eax
	call atoi
	mov esi, eax
	test eax, eax
	jle SND_Init_170
	cmp eax, 0x35
	jle SND_Init_180
	mov dword [esp+0x14], 0x35
	mov dword [esp+0x10], _cstring_soundaliaseschan
	lea eax, [ebp-0x5c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x35
	mov dword [esp+0x4], _cstring_max_number_d_of_
	mov dword [esp], 0x9
	call Com_PrintError
	jmp SND_Init_190
SND_Init_80:
	mov dword [esp+0x4], _cstring_pause
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz SND_Init_200
	mov dword [esp+0x4], _cstring_nopause
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SND_Init_210
	xor edx, edx
	jmp SND_Init_220
SND_Init_60:
	mov dword [esp+0x4], _cstring_3d
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz SND_Init_230
	mov edx, 0x1
	lea eax, [esi+esi*4]
	shl eax, 0x4
	mov [eax+edi+0x10], dl
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	mov esi, [g_snd+0x61ec]
	cmp byte [eax], 0x0
	jz SND_Init_240
SND_Init_70:
	mov dword [esp+0x4], _cstring_restricted
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz SND_Init_240
	mov dword [esp+0x4], _cstring_unrestricted
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SND_Init_250
	xor edx, edx
	jmp SND_Init_260
SND_Init_50:
	mov ebx, [g_snd+0x61ec]
	mov [esp], eax
	call atoi
	mov edi, g_snd+0x4e20
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x4
	mov [ebx+edi+0xc], eax
	jmp SND_Init_270
SND_Init_100:
	call Com_EndParseSession
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_channel_definiti
	mov dword [esp], 0x2
	call Com_Error
	jmp SND_Init_30
SND_Init_40:
	call Com_EndParseSession
	mov dword [esp+0x10], _cstring_soundaliaseschan
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_channel_name_too
	mov dword [esp], 0x2
	call Com_Error
	jmp SND_Init_280
SND_Init_230:
	mov dword [esp+0x4], _cstring_2d
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz SND_Init_290
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], _cstring_2d
	mov dword [esp+0xc], _cstring_3d
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_value_s_
	mov dword [esp], 0x9
	call Com_PrintError
	xor edx, edx
	jmp SND_Init_300
SND_Init_170:
	mov dword [esp+0x14], 0x35
	mov dword [esp+0x10], _cstring_soundaliaseschan
	mov [esp+0xc], ebx
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_channel_s_has_no
	mov dword [esp], 0x9
	call Com_PrintError
	mov esi, 0x35
	jmp SND_Init_180
SND_Init_10:
	mov dword [esp+0x8], _cstring_soundaliaseschan
	mov dword [esp+0x4], _cstring_unable_to_load_e
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp-0x6c]
	jmp SND_Init_310
SND_Init_210:
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], _cstring_nopause
	mov dword [esp+0xc], _cstring_pause
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_value_s_
	mov dword [esp], 0x9
	call Com_PrintError
	mov edx, 0x1
	jmp SND_Init_220
SND_Init_250:
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], _cstring_unrestricted
	mov dword [esp+0xc], _cstring_restricted
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_value_s_
	mov dword [esp], 0x9
	call Com_PrintError
	mov edx, 0x1
	jmp SND_Init_260


;SND_Save(MemoryFile*)
SND_Save:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, 0x1
	mov esi, 0x303
SND_Save_10:
	lea eax, [esi+ebx+g_snd+0x4034]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x304
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	add ebx, 0x1
	add esi, 0x303
	cmp ebx, 0x4
	jnz SND_Save_10
	mov esi, 0x1
	mov ebx, g_snd+0x4c98
SND_Save_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x3
	jnz SND_Save_20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SND_SaveEq
	mov dword [esp+0x8], g_snd+0x4c48
	mov dword [esp+0x4], 0x8
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	cmp byte [g_snd], 0x0
	jz SND_Save_30
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp eax, 0x8
	jg SND_Save_40
SND_Save_30:
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	cmp byte [g_snd], 0x0
	jz SND_Save_50
	mov ebx, [g_snd+0x7eec]
	test ebx, ebx
	jg SND_Save_60
SND_Save_50:
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	cmp byte [g_snd], 0x0
	jz SND_Save_70
	mov edx, [g_snd+0x7ef4]
	lea eax, [edx+0x28]
	cmp eax, 0x28
	jle SND_Save_70
	mov dword [ebp-0x4c], 0x28
SND_Save_90:
	mov eax, [ebp-0x4c]
	sub eax, 0x29
	cmp eax, 0x3
	ja SND_Save_80
SND_Save_130:
	add dword [ebp-0x4c], 0x1
	lea eax, [edx+0x28]
	cmp [ebp-0x4c], eax
	jge SND_Save_70
	cmp dword [ebp-0x4c], 0x2c
	jle SND_Save_90
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call SND_IsStreamChannelFree
	test al, al
	jnz SND_Save_100
SND_Save_140:
	mov eax, [ebp-0x4c]
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	mov [ebp-0x5c], eax
	cmp dword [eax+g_snd+0x6278], 0x1
	jz SND_Save_110
SND_Save_220:
	cmp dword [ebp-0x4c], 0x2c
	jle SND_Save_120
SND_Save_100:
	mov edx, [g_snd+0x7ef4]
	jmp SND_Save_130
SND_Save_70:
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Save_80:
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call SND_IsStreamChannelFree
	test al, al
	jz SND_Save_140
SND_Save_210:
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	mov edx, [g_snd+0x7ef4]
	jmp SND_Save_130
SND_Save_60:
	xor edi, edi
	mov dword [ebp-0x54], g_snd
SND_Save_170:
	mov [esp], edi
	call SND_Is2DChannelFree
	test al, al
	jnz SND_Save_150
	mov eax, [ebp-0x54]
	cmp dword [eax+0x6278], 0x1
	jz SND_Save_160
SND_Save_150:
	add edi, 0x1
	add dword [ebp-0x54], 0x8c
	cmp edi, [g_snd+0x7eec]
	jl SND_Save_170
	jmp SND_Save_50
SND_Save_40:
	mov dword [ebp-0x58], 0x8
	mov dword [ebp-0x50], g_snd
SND_Save_200:
	mov eax, [ebp-0x58]
	mov [esp], eax
	call SND_Is3DChannelFree
	test al, al
	jnz SND_Save_180
	mov eax, [ebp-0x50]
	cmp dword [eax+0x66d8], 0x1
	jz SND_Save_190
SND_Save_180:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x50], 0x8c
	mov eax, [g_snd+0x7ef0]
	add eax, 0x8
	cmp [ebp-0x58], eax
	jl SND_Save_200
	jmp SND_Save_30
SND_Save_120:
	mov eax, [ebp-0x4c]
	sub eax, 0x29
	cmp eax, 0x3
	jbe SND_Save_100
	jmp SND_Save_210
SND_Save_190:
	mov eax, [ebp-0x58]
	mov [esp], eax
	call SND_Get3DChannelLength
	test eax, eax
	jz SND_Save_180
	mov eax, [ebp-0x58]
	mov [esp], eax
	call SND_Get3DChannelPlaybackRate
	test eax, eax
	jz SND_Save_180
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x58]
	mov [esp], eax
	call SND_Get3DChannelSaveInfo
	mov eax, [ebp-0x50]
	mov ebx, [eax+0x66a8]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	mov [esp], ebx
	call SND_GetAliasOffset
	mov [ebp-0x1a], ax
	lea esi, [ebp-0x1a]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	mov eax, [ebp-0x50]
	mov ebx, [eax+0x66ac]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	mov [esp], ebx
	call SND_GetAliasOffset
	mov [ebp-0x1a], ax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	mov eax, [ebp-0x58]
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [eax*4+g_snd+0x61f0]
	mov edx, [ebp+0x8]
	call SND_SaveChanInfo
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	jmp SND_Save_180
SND_Save_160:
	mov [esp], edi
	call SND_Get2DChannelLength
	test eax, eax
	jz SND_Save_150
	mov [esp], edi
	call SND_Get2DChannelPlaybackRate
	test eax, eax
	jz SND_Save_150
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edi
	call SND_Get2DChannelSaveInfo
	mov eax, [ebp-0x54]
	mov ebx, [eax+0x6248]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	mov [esp], ebx
	call SND_GetAliasOffset
	mov [ebp-0x1a], ax
	lea esi, [ebp-0x1a]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	mov eax, [ebp-0x54]
	mov ebx, [eax+0x624c]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	mov [esp], ebx
	call SND_GetAliasOffset
	mov [ebp-0x1a], ax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	lea edx, [edi+edi*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [eax*4+g_snd+0x61f0]
	mov edx, [ebp+0x8]
	call SND_SaveChanInfo
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	jmp SND_Save_150
SND_Save_110:
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call SND_GetStreamChannelLength
	test eax, eax
	jz SND_Save_220
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call SND_GetStreamChannelSaveInfo
	mov eax, [ebp-0x5c]
	mov ebx, [eax+g_snd+0x6248]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	mov [esp], ebx
	call SND_GetAliasOffset
	mov [ebp-0x1a], ax
	lea esi, [ebp-0x1a]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	mov eax, [ebp-0x5c]
	mov ebx, [eax+g_snd+0x624c]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteCString
	mov [esp], ebx
	call SND_GetAliasOffset
	mov [ebp-0x1a], ax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	mov eax, [ebp-0x5c]
	add eax, g_snd+0x61f0
	mov edx, [ebp+0x8]
	call SND_SaveChanInfo
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MemFile_WriteData
	mov edx, [g_snd+0x7ef4]
	jmp SND_Save_130
	nop


;Initialized global or static variables of snd:
SECTION .data
snd_draw3DNames: dd _cstring_off, _cstring_targets, _cstring_names, _cstring_verbose, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of snd:
SECTION .rdata
_ZZ15SND_PlayLocal_fvE7MYCOLOR: dd 0x3f333333, 0x3f333333, 0x3f800000, 0x3f800000, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x2ae61e, 0x2ae666, 0x2ae74d, 0x2ae61e, 0x2ae71e, 0x2ae6d6, 0x2ae68e, 0x0


;Zero initialized global or static variables of snd:
SECTION .bss
g_sndPhysics: resb 0x204
g_FXPlaySoundCount: resb 0x1c
g_FXPlaySounds: resb 0x280
_ZZ8SND_InitvE22SND_DeactivateEq_f_VAR: resb 0x14
_ZZ8SND_InitvE19SND_SetEqType_f_VAR: resb 0x14
_ZZ8SND_InitvE16SND_SetEqQ_f_VAR: resb 0x14
_ZZ8SND_InitvE19SND_SetEqGain_f_VAR: resb 0x14
_ZZ8SND_InitvE19SND_SetEqFreq_f_VAR: resb 0x14
_ZZ8SND_InitvE15SND_SetEq_f_VAR: resb 0x14
_ZZ8SND_InitvE19SND_PlayLocal_f_VAR: resb 0x14
_ZZ8SND_InitvE38SND_DeactivateEnvironmentEffects_f_VAR: resb 0x14
_ZZ8SND_InitvE31SND_SetEnvironmentEffects_f_VAR: resb 0x40
snd_cinematicVolumeScale: resb 0x4
snd_errorOnMissing: resb 0x8
snd_touchStreamFilesOnLoad: resb 0x4
g_snd: resb 0x7f40
snd_enableReverb: resb 0x4
snd_draw3D: resb 0x4
snd_enable2D: resb 0x4
snd_enable3D: resb 0x4
snd_enableEq: resb 0x4
snd_enableStream: resb 0x4
snd_levelFadeTime: resb 0x4
snd_slaveFadeTime: resb 0x4
snd_volume: resb 0xc


;All cstrings:
SECTION .rdata
_cstring_tried_to_blend_b:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they don",27h,"t use the same sound file",0ah,0
_cstring_tried_to_blend_b1:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they do not have the same volume falloff curve",0ah,0
_cstring_tried_to_blend_b2:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they do not have the same looping status",0ah,0
_cstring_tried_to_blend_b3:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they are not both loaded or both streamed",0ah,0
_cstring_tried_to_blend_b4:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they don",27h,"t use the same channel",0ah,0
_cstring_tried_to_blend_b5:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but only one of them is a ",27h,"master",27h," alias",0ah,0
_cstring_tried_to_blend_b6:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but only one of them is a ",27h,"slave",27h," alias",0ah,0
_cstring_tried_to_blend_b7:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they don",27h,"t use the same fulldrylevel setting",0ah,0
_cstring_tried_to_blend_b8:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they don",27h,"t use the same nowetlevel setting",0ah,0
_cstring_tried_to_blend_b9:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they do not have the same slave percentages.",0ah,0
_cstring_tried_to_blend_b10:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they do not have the same start delay.",0ah,0
_cstring_tried_to_blend_b11:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they are looping and at least one of them has a random pitch",0ah,0
_cstring_tried_to_blend_b12:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but one or both has a secondary alias.",0ah,0
_cstring_tried_to_blend_b13:		db 015h,"tried to blend between sound aliases ",27h,"%s",27h," and ",27h,"%s",27h,", but they are looping and at least one of them has a random volume",0ah,0
_cstring_alias_s_sound_s_:		db 015h,"alias %s sound %s played as an ambient / music track is not streamed; type must be ",27h,"streamed",27h,0ah,0
_cstring_alias_s_sound_s_1:		db 015h,"alias %s sound %s played as an ambient / music track uses a 3D channel type; should probably be channel ",27h,"local",27h,0ah,0
_cstring_null:		db 0
_cstring_invalid_eqindex_:		db "invalid ",27h,"eqIndex",27h," %i, must be >= 0 and < %i",0ah,0
_cstring_invalid_band_i_m:		db "invalid ",27h,"band",27h," %i, must be >= 0 and < %i",0ah,0
_cstring_unknown_channel_:		db "Unknown channel name (%s), please check channel definitions file",0ah,0
_cstring_usage_s_sndalias:		db "USAGE: %s <sndalias> [<dist> <yaw> <pitch>]",0ah,0
_cstring_playing_local_so:		db "Playing local sound alias ",22h,"%s",22h," at (%.2f, %.2f, %.2f).",0ah,0
_cstring_couldnt_find_sou:		db "Couldn",27h,"t find sound alias ",22h,"%s",22h,".",0ah,0
_cstring_details_s:		db "Details: %s",0
_cstring_owner_entity_i:		db "Owner: entity #%i",0
_cstring_distance_0f__0f:		db "Distance: %.0f / %.0f",0
_cstring_time_3f:		db "Time: %.3f",0
_cstring_owner_world:		db "Owner: World",0
_cstring_attempted_to_pla:		db "attempted to play spatialized alias ",27h,"%s",27h," while there is no active listener. Most likely this means you tried to play a spatialized sound while not in a level.",0ah,0
_cstring_nullwav:		db "null.wav",0
_cstring_error_a_nonloopi:		db "Error: a non-looping alias cannot have a looping secondary alias.",0ah,"Alias sequence: ",27h,"%s",27h,"->",27h,"%s",27h,0ah,0
_cstring_error_a_looping_:		db "Error: a looping alias cannot have a looping secondary aliasName that refers to multiple aliases.",0ah,"Alias sequence: ",27h,"%s",27h,"->",27h,"%s",27h,0ah,0
_cstring_error_unable_to_:		db "Error: unable to find ",27h,"%s",27h," alias",0ah,0
_cstring_error_infinite_r:		db "Error: Infinite recursion in secondary aliases sequenced together.",0ah,"Alias sequence start: ",27h,"%s",27h,"->",27h,"%s",27h,0ah,0
_cstring_tried_to_play_so:		db "Tried to play sound ",27h,"%s",27h," from alias ",27h,"%s",27h,", but it was not successfully loaded.",0ah,0
_cstring_code_warning_sou:		db "code_warning_soundcpu",0
_cstring_usage_snd_seteq_:		db "USAGE: snd_setEq <const char *channelName> <int eqIndex> <int band> <const char *type> <float gain> <float freq> <float q>",0ah,0
_cstring_invalid_eq_type_:		db "invalid eq type string ",27h,"%s",27h,", it must be one of the following strings:",0ah,0
_cstring___s:		db "  %s",0ah,0
_cstring_invalid_freq_f_m:		db "invalid ",27h,"freq",27h," %f, must be >= 0 and <= %i",0ah,0
_cstring_invalid_q_f_must:		db "invalid ",27h,"q",27h," %f, must be > 0",0ah,0
_cstring_usage_snd_seteqq:		db "USAGE: snd_setEqQ <const char *channelName> <int eqIndex> <int band> <float q>",0ah,0
_cstring_snd_setenvironme:		db "snd_setEnvironmentEffects",0
_cstring_snd_deactivateen:		db "snd_deactivateEnvironmentEffects",0
_cstring_snd_playlocal:		db "snd_playLocal",0
_cstring_snd_seteq:		db "snd_setEq",0
_cstring_snd_seteqfreq:		db "snd_setEqFreq",0
_cstring_snd_seteqgain:		db "snd_setEqGain",0
_cstring_snd_seteqq:		db "snd_setEqQ",0
_cstring_snd_seteqtype:		db "snd_setEqType",0
_cstring_snd_deactivateeq:		db "snd_deactivateEq",0
_cstring_usage_snd_seteqf:		db "USAGE: snd_setEqFreq <const char *channelName> <int eqIndex> <int band> <float freq>",0ah,0
_cstring_invalid_freq_f_m1:		db "invalid ",27h,"freq",27h," %f, must be >= 0 and < %i",0ah,0
_cstring_usage_snd_seteqg:		db "USAGE: snd_setEqGain <const char *channelName> <int eqIndex> <int band> <float gain>",0ah,0
_cstring_usage_snd_seteqt:		db "USAGE: snd_setEqType <const char *channelName> <int eqIndex> <int band> <const char *type>",0ah,0
_cstring_usage_snd_deacti:		db "USAGE: snd_deactivateEq <int eqIndex> [(optional) const char *channelName] [(optional) int band]",0ah,0
_cstring_unable_to_play_m:		db "Unable to play music alias %s",0ah,0
_cstring_s:		db "%s",0
_cstring_error_too_many_f:		db "ERROR: too many FX sounds %d",0ah,0
_cstring_invalid_roomtype:		db "invalid roomtype string ",27h,"%s",27h,", it must be one of the following strings:",0ah,0
_cstring_usage_snd_setenv:		db "USAGE: snd_setEnvironmentEffects <const char *priority> <const char *roomstring> <float drylevel> <float wetlevel> <int fademsec>",0ah,0
_cstring_none:		db "none",0
_cstring_level:		db "level",0
_cstring_shellshock:		db "shellshock",0
_cstring_invalid_priority:		db "invalid priority string ",27h,"%s",27h,", it must be one of the following strings:",0ah,0
_cstring_invalid_drylevel:		db "invalid ",27h,"drylevel",27h," %g, must be in the range of 0.0-1.0",0ah,0
_cstring_invalid_wetlevel:		db "invalid ",27h,"wetlevel",27h," %g, must be in the range of 0.0-1.0",0ah,0
_cstring_invalid_fademsec:		db "invalid ",27h,"fademsec",27h," %i, must be greater than or equal to zero",0ah,0
_cstring_soundalias_s_is_:		db "Soundalias ",22h,"%s",22h," is trying to chain to itself - check sound .csv files and correct.",0ah,0
_cstring_usage_snd_deacti1:		db "USAGE: snd_deactivateEnvironmentEffects <int priority> <int fademsec>",0ah,0
_cstring__sound_system_in:		db 0ah,"------- sound system initialization -------",0ah,0
_cstring_cause_a_com_erro:		db "Cause a Com_Error if a sound file is missing.",0
_cstring_snd_erroronmissi:		db "snd_errorOnMissing",0
_cstring_game_sound_maste:		db "Game sound master volume",0
_cstring_snd_volume:		db "snd_volume",0
_cstring_the_amount_of_ti:		db "The amount of time in milliseconds for a ",27h,"slave",27h," sound",0ah,"to fade its volumes when a master sound starts or stops",0
_cstring_snd_slavefadetim:		db "snd_slaveFadeTime",0
_cstring_enable_2d_sounds:		db "Enable 2D sounds",0
_cstring_snd_enable2d:		db "snd_enable2D",0
_cstring_enable_3d_sounds:		db "Enable 3D sounds",0
_cstring_snd_enable3d:		db "snd_enable3D",0
_cstring_enable_streamed_:		db "Enable streamed sounds",0
_cstring_snd_enablestream:		db "snd_enableStream",0
_cstring_enable_sound_rev:		db "Enable sound reverberation",0
_cstring_snd_enablereverb:		db "snd_enableReverb",0
_cstring_enable_equalizat:		db "Enable equalization filter",0
_cstring_snd_enableeq:		db "snd_enableEq",0
_cstring_draw_the_positio:		db "Draw the position and info of world sounds",0
_cstring_snd_draw3d:		db "snd_draw3D",0
_cstring_the_amout_of_tim:		db "The amout of time in milliseconds for all audio to fade in at the start of a level",0
_cstring_snd_levelfadetim:		db "snd_levelFadeTime",0
_cstring_scales_the_volum:		db "Scales the volume of Bink videos.",0
_cstring_snd_cinematicvol:		db "snd_cinematicVolumeScale",0
_cstring_check_whether_st:		db "Check whether stream sound files exist while loading",0
_cstring_snd_touchstreamf:		db "snd_touchStreamFilesOnLoad",0
_cstring_soundaliaseschan:		db "soundaliases/channels.def",0
_cstring__sound_system_su:		db "------- sound system successfully initialized -------",0ah,0
_cstring_max_number_d_of_:		db "max number (%d) of voices exceeded for channel ",27h,"%s",27h," in file [%s], defaulting to max (%i).",0ah,0
_cstring_pause:		db "pause",0
_cstring_nopause:		db "nopause",0
_cstring_3d:		db "3d",0
_cstring_restricted:		db "restricted",0
_cstring_unrestricted:		db "unrestricted",0
_cstring_channel_definiti:		db "channel definition file exceeded max number of channels (%d).",0ah,0
_cstring_channel_name_too:		db "channel name too long (max chars %d): %s in file [%s].",0ah,0
_cstring_2d:		db "2d",0
_cstring_unknown_value_s_:		db "unknown value (%s), should be either ",27h,"%s",27h," or ",27h,"%s",27h,".  using default: %d.",0ah,0
_cstring_channel_s_has_no:		db "channel ",27h,"%s",27h," has nonnumeric or negative value (%s) in file [%s], defaulting to max (%i).",0ah,0
_cstring_unable_to_load_e:		db "unable to load entity channel file [%s].",0ah,0
_cstring_off:		db "Off",0
_cstring_targets:		db "Targets",0
_cstring_names:		db "Names",0
_cstring_verbose:		db "Verbose",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_400_00000000:		dd 0x43c80000	; 400
_float_100_00000000:		dd 0x42c80000	; 100
_float_34028234663852885_float_3:		dd 0x7f7fffff	; 3.40282e+38
_float_10_00000000:		dd 0x41200000	; 10
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00000000:		dd 0x0	; 0
_float_1_25000000:		dd 0x3fa00000	; 1.25
_float__12_00000000:		dd 0xc1400000	; -12
_float_2000_00000000:		dd 0x44fa0000	; 2000
_float_3_50000000:		dd 0x40600000	; 3.5
_float_0_85000002:		dd 0x3f59999a	; 0.85
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_93000001:		dd 0x3f6e147b	; 0.93
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_75000000:		dd 0x3f400000	; 0.75
_float_20000_00000000:		dd 0x469c4000	; 20000
_float_1_33333337:		dd 0x3faaaaab	; 1.33333

