;Imports of snd_driver:
	extern FS_FOpenFileReadStream
	extern FS_FCloseFile
	extern FS_Seek
	extern FS_FTell
	extern FS_Read
	extern Cvar_RegisterInt
	extern AIL_set_file_callbacks
	extern AIL_set_redist_directory
	extern Cvar_RegisterEnum
	extern AIL_startup
	extern Com_Printf
	extern AIL_set_preference
	extern AIL_open_digital_driver
	extern AIL_speaker_configuration
	extern AIL_set_3D_distance_factor
	extern AIL_set_3D_rolloff_factor
	extern AIL_set_speaker_configuration
	extern g_snd
	extern AIL_last_error
	extern Com_PrintError
	extern AIL_shutdown
	extern memset
	extern Cvar_VariableIntegerValue
	extern AIL_allocate_sample_handle
	extern AIL_init_sample
	extern Com_Error
	extern AIL_set_room_type
	extern AIL_set_digital_master_reverb_levels
	extern SND_GetListenerIndexNearestToOrigin
	extern MatrixTransposeTransformVector
	extern AIL_set_sample_3D_position
	extern AIL_end_sample
	extern SND_ResetChannelInfo
	extern SND_RemoveVoice
	extern AIL_stop_sample
	extern R_Cinematic_StopPlayback
	extern R_Cinematic_SyncNow
	extern AIL_set_sample_volume_levels
	extern SND_GetLerpedSlavePercentage
	extern AIL_sample_status
	extern SND_StopChannelAndPlayChainAlias
	extern AIL_resume_sample
	extern SND_GetCurrent3DPosition
	extern SND_Attenuate
	extern AIL_close_stream
	extern AIL_sample_ms_position
	extern AIL_sample_volume_levels
	extern AIL_pause_stream
	extern SND_HasFreeVoice
	extern SND_FindFree2DChannel
	extern AIL_set_sample_info
	extern AIL_sample_playback_rate
	extern floorf
	extern AIL_set_sample_playback_rate
	extern Com_GetSpeakerMap
	extern AIL_set_sample_channel_levels
	extern AIL_set_sample_loop_count
	extern snd_enableReverb
	extern AIL_set_sample_reverb_levels
	extern AIL_set_sample_ms_position
	extern SND_SetChannelStartInfo
	extern SND_SetSoundFileChannelInfo
	extern SND_AcquirePlaybackId
	extern SND_AddVoice
	extern SND_SetPlaybackIdNotPlayed
	extern randomf
	extern SND_FindFree3DChannel
	extern AIL_set_sample_3D_distances
	extern AIL_sample_channel_levels
	extern SND_IsAliasChannel3D
	extern AIL_stream_sample_handle
	extern SND_UpdateBackgroundVolume
	extern AIL_stream_status
	extern AIL_sample_volume_pan
	extern AIL_sample_3D_position
	extern AIL_digital_CPU_percent
	extern AIL_stream_ms_position
	extern Com_GetSoundFileName
	extern Com_sprintf
	extern strstr
	extern AIL_open_stream
	extern AIL_stream_info
	extern AIL_set_stream_loop_count
	extern AIL_set_stream_ms_position
	extern Com_DPrintf
	extern FS_ShortOSFilePath

;Exports of snd_driver:
	global milesGlob
	global snd_outputConfiguration
	global snd_outputConfigurationStrings
	global snd_khz
	global mss_spec
	global MSS_FileOpenCallback
	global MSS_FileCloseCallback
	global MSS_FileSeekCallback
	global MSS_FileReadCallback
	global SND_SaveEq
	global SND_SetEqQ
	global SND_DisableEq
	global SND_RestoreEq
	global SND_SetEqFreq
	global SND_SetEqGain
	global SND_SetEqType
	global SND_InitDriver
	global SND_SetEqParams
	global SND_SetRoomtype
	global SND_PrintEqParams
	global SND_Set3DPosition
	global SND_Stop2DChannel
	global SND_Stop3DChannel
	global SND_IsMultiChannel
	global SND_Pause2DChannel
	global SND_Pause3DChannel
	global SND_ShutdownDriver
	global SND_DriverPreUpdate
	global SND_Is2DChannelFree
	global SND_Is3DChannelFree
	global SND_Update2DChannel
	global SND_Update3DChannel
	global SND_DriverPostUpdate
	global SND_GetSoundFileSize
	global SND_Unpause2DChannel
	global SND_Unpause3DChannel
	global SND_StopStreamChannel
	global SND_Get2DChannelLength
	global SND_Get2DChannelVolume
	global SND_Get3DChannelLength
	global SND_Get3DChannelVolume
	global SND_PauseStreamChannel
	global SND_StartAlias2DSample
	global SND_StartAlias3DSample
	global SND_IsStreamChannelFree
	global SND_UpdateStreamChannel
	global SND_Get2DChannelSaveInfo
	global SND_Get3DChannelSaveInfo
	global SND_UnpauseStreamChannel
	global SND_Update2DChannelReverb
	global SND_Update3DChannelReverb
	global SND_GetDriverCPUPercentage
	global SND_GetStreamChannelLength
	global SND_GetStreamChannelVolume
	global SND_Get2DChannelPlaybackRate
	global SND_Get3DChannelPlaybackRate
	global SND_GetStreamChannelSaveInfo
	global SND_Set2DChannelFromSaveInfo
	global SND_Set2DChannelPlaybackRate
	global SND_Set3DChannelPlaybackRate
	global SND_StartAliasStreamOnChannel
	global SND_UpdateStreamChannelReverb
	global SND_GetStreamChannelPlaybackRate
	global SND_SetStreamChannelFromSaveInfo
	global SND_SetStreamChannelPlaybackRate


SECTION .text


;MSS_FileOpenCallback(char const*, unsigned int*)
MSS_FileOpenCallback:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_FOpenFileReadStream
	shr eax, 0x1f
	xor eax, 0x1
	leave
	ret


;MSS_FileCloseCallback(unsigned int)
MSS_FileCloseCallback:
	push ebp
	mov ebp, esp
	pop ebp
	jmp FS_FCloseFile
	nop


;MSS_FileSeekCallback(unsigned int, int, unsigned int)
MSS_FileSeekCallback:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp eax, 0x1
	jz MSS_FileSeekCallback_10
	jae MSS_FileSeekCallback_20
	mov eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call FS_Seek
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp FS_FTell
MSS_FileSeekCallback_20:
	cmp eax, 0x2
	jz MSS_FileSeekCallback_30
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
MSS_FileSeekCallback_10:
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call FS_Seek
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp FS_FTell
MSS_FileSeekCallback_30:
	mov eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call FS_Seek
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp FS_FTell
	nop


;MSS_FileReadCallback(unsigned int, void*, unsigned int)
MSS_FileReadCallback:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [ebp+0x10], eax
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	pop ebp
	jmp FS_Read
	nop


;SND_SaveEq(MemoryFile*)
SND_SaveEq:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_SetEqQ(int, int, int, float)
SND_SetEqQ:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_DisableEq(int, int, int)
SND_DisableEq:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_RestoreEq(MemoryFile*)
SND_RestoreEq:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_SetEqFreq(int, int, int, float)
SND_SetEqFreq:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_SetEqGain(int, int, int, float)
SND_SetEqGain:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_SetEqType(int, int, int, SND_EQTYPE)
SND_SetEqType:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_InitDriver()
SND_InitDriver:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp+0x14], _cstring_the_game_sound_f
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0x2c
	mov dword [esp+0x8], 0xb
	mov dword [esp+0x4], 0x2c
	mov dword [esp], _cstring_snd_khz
	call Cvar_RegisterInt
	mov [snd_khz], eax
	mov dword [esp+0xc], MSS_FileReadCallback
	mov dword [esp+0x8], MSS_FileSeekCallback
	mov dword [esp+0x4], MSS_FileCloseCallback
	mov dword [esp], MSS_FileOpenCallback
	call AIL_set_file_callbacks
	mov dword [esp], _cstring_miles
	call AIL_set_redist_directory
	mov dword [esp+0x10], _cstring_sound_output_con
	mov dword [esp+0xc], 0x21
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], snd_outputConfigurationStrings
	mov dword [esp], _cstring_snd_outputconfig
	call Cvar_RegisterEnum
	mov [snd_outputConfiguration], eax
	mov dword [esp], 0x75
	call AIL_startup
	test eax, eax
	jz SND_InitDriver_10
	mov eax, [snd_outputConfiguration]
	mov eax, [eax+0xc]
	mov eax, [eax*4+snd_outputConfigurationStrings]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x10
	mov dword [esp+0x8], 0x2c
	mov dword [esp+0x4], _cstring_attempting_i_khz
	mov dword [esp], 0x9
	call Com_Printf
	mov eax, [snd_outputConfiguration]
	mov eax, [eax+0xc]
	mov ebx, [eax*4+mss_spec]
	mov dword [esp+0x4], 0x35
	mov dword [esp], 0x1
	call AIL_set_preference
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0xac44
	call AIL_open_digital_driver
	mov ebx, eax
	test eax, eax
	jz SND_InitDriver_20
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call AIL_speaker_configuration
	mov eax, [ebp-0x1c]
	cmp eax, 0x2
	jle SND_InitDriver_30
SND_InitDriver_70:
	mov eax, 0x1
SND_InitDriver_80:
	mov [milesGlob+0x8c8], al
SND_InitDriver_20:
	mov [milesGlob], ebx
	test ebx, ebx
	jz SND_InitDriver_40
	mov dword [esp+0x4], 0x3cd013a9
	mov [esp], ebx
	call AIL_set_3D_distance_factor
	mov dword [esp+0x4], 0x0
	mov eax, [milesGlob]
	mov [esp], eax
	call AIL_set_3D_rolloff_factor
	mov dword [esp+0xc], 0x40400000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [milesGlob]
	mov [esp], eax
	call AIL_set_speaker_configuration
	mov edx, g_snd
	mov byte [edx], 0x1
	mov byte [edx+0x1], 0x1
	mov dword [edx+0x7eec], 0x8
	mov dword [edx+0x7ef0], 0x20
	mov dword [edx+0x7ef4], 0xd
	mov dword [edx+0x8], 0x7fffffff
	mov eax, [snd_outputConfiguration]
	mov eax, [eax+0xc]
	cmp dword [eax*4+mss_spec], 0x1
	setnz al
	movzx eax, al
	add eax, 0x1
	mov [edx+0xc], eax
	mov dword [edx+0x10], 0x3f800000
	mov eax, 0x20
	add eax, [edx+0x7eec]
	test eax, eax
	jg SND_InitDriver_50
SND_InitDriver_120:
	mov dword [edx+0x4c70], 0x1
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_InitDriver_40:
	call AIL_last_error
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_couldnt_in
	mov dword [esp], 0x9
	call Com_PrintError
	call AIL_shutdown
	mov dword [esp+0x8], 0x8cc
	mov dword [esp+0x4], 0x0
	mov dword [esp], milesGlob
	call memset
SND_InitDriver_10:
	mov dword [esp], _cstring_r_vc_compile
	call Cvar_VariableIntegerValue
	cmp eax, 0x2
	jz SND_InitDriver_60
	mov dword [esp+0x4], _cstring_miles_sound_syst
	mov dword [esp], 0x9
	call Com_Printf
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_InitDriver_30:
	test eax, eax
	jz SND_InitDriver_70
	xor eax, eax
	jmp SND_InitDriver_80
SND_InitDriver_60:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_InitDriver_50:
	xor ebx, ebx
	mov edi, milesGlob
	jmp SND_InitDriver_90
SND_InitDriver_110:
	mov ebx, esi
SND_InitDriver_90:
	xor eax, eax
	cmp ebx, 0x7
	setg al
	mov [esp+0x4], eax
	mov eax, [milesGlob]
	mov [esp], eax
	call AIL_allocate_sample_handle
	mov [edi+ebx*4+0x4], eax
	test eax, eax
	jz SND_InitDriver_100
	lea esi, [ebx+0x1]
SND_InitDriver_130:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_init_sample
	mov edx, g_snd
	mov eax, [edx+0x7ef0]
	add eax, [edx+0x7eec]
	cmp esi, eax
	jl SND_InitDriver_110
	jmp SND_InitDriver_120
SND_InitDriver_100:
	lea esi, [ebx+0x1]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_miles_sound_samp
	mov dword [esp], 0x2
	call Com_Error
	jmp SND_InitDriver_130


;SND_SetEqParams(int, int, int, SND_EQTYPE, float, float, float)
SND_SetEqParams:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_SetRoomtype(int)
SND_SetRoomtype:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [milesGlob]
	mov [esp], eax
	call AIL_set_room_type
	mov eax, g_snd
	mov eax, [eax+0x4cd8]
	mov eax, [eax+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov eax, [milesGlob]
	mov [esp], eax
	call AIL_set_digital_master_reverb_levels
	leave
	ret
	nop


;SND_PrintEqParams()
SND_PrintEqParams:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_Set3DPosition(int, float const*)
SND_Set3DPosition:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call SND_GetListenerIndexNearestToOrigin
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov edx, g_snd
	lea eax, [eax+edx+0x4d50]
	lea edx, [eax+0xc]
	movss xmm0, dword [ebx]
	subss xmm0, [eax+0xc]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebx+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebx+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0x18], xmm0
	lea edx, [ebp-0x14]
	mov [esp+0x8], edx
	add eax, 0x18
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call MatrixTransposeTransformVector
	mov eax, [ebp-0x14]
	mov [esp+0xc], eax
	mov eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov eax, [ebp-0x10]
	xor eax, 0x80000000
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_3D_position
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;SND_Stop2DChannel(int)
SND_Stop2DChannel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_end_sample
	mov [esp], ebx
	call SND_ResetChannelInfo
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	mov eax, [eax+0x6204]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SND_RemoveVoice
	nop


;SND_Stop3DChannel(int)
SND_Stop3DChannel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_end_sample
	mov [esp], ebx
	call SND_ResetChannelInfo
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	mov eax, [eax+0x6204]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SND_RemoveVoice
	nop


;SND_IsMultiChannel()
SND_IsMultiChannel:
	push ebp
	mov ebp, esp
	movzx eax, byte [milesGlob+0x8c8]
	pop ebp
	ret


;SND_Pause2DChannel(int)
SND_Pause2DChannel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_stop_sample
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	mov byte [eax+0x6274], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SND_Pause3DChannel(int)
SND_Pause3DChannel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_stop_sample
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	mov byte [eax+0x6274], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SND_ShutdownDriver()
SND_ShutdownDriver:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call R_Cinematic_StopPlayback
	call R_Cinematic_SyncNow
	call AIL_shutdown
	mov dword [esp+0x8], 0x8cc
	mov dword [esp+0x4], 0x0
	mov dword [esp], milesGlob
	call memset
	leave
	ret
	nop


;SND_DriverPreUpdate(int)
SND_DriverPreUpdate:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop
	add [eax], al


;SND_Is2DChannelFree(int)
SND_Is2DChannelFree:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	lea eax, [edx*4]
	add eax, g_snd
	cmp byte [eax+0x6274], 0x0
	jnz SND_Is2DChannelFree_10
	mov ecx, [eax+0x6208]
	test ecx, ecx
	jnz SND_Is2DChannelFree_10
	mov edx, [eax+0x6248]
	test edx, edx
	setz al
	movzx eax, al
	pop ebp
	ret
SND_Is2DChannelFree_10:
	xor eax, eax
	pop ebp
	ret


;SND_Is3DChannelFree(int)
SND_Is3DChannelFree:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	lea eax, [edx*4]
	add eax, g_snd
	cmp byte [eax+0x6274], 0x0
	jnz SND_Is3DChannelFree_10
	mov edx, [eax+0x6208]
	test edx, edx
	jnz SND_Is3DChannelFree_10
	mov eax, [eax+0x6248]
	test eax, eax
	setz al
	movzx eax, al
	pop ebp
	ret
SND_Is3DChannelFree_10:
	xor eax, eax
	pop ebp
	ret


;SND_Update2DChannel(int, int)
SND_Update2DChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x24], eax
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	mov edx, g_snd
	mov [ebp-0x28], edx
	lea ebx, [edx+eax*4+0x61f0]
	cmp byte [ebx+0x84], 0x0
	jnz SND_Update2DChannel_10
	mov edi, [ebx+0x58]
	mov eax, [ebx+0x5c]
	test edi, edi
	jz SND_Update2DChannel_10
	test eax, eax
	jz SND_Update2DChannel_10
	movss xmm0, dword [ebx+0x50]
	movss [ebp-0x1c], xmm0
	mov eax, [ebx+0x18]
	test eax, eax
	jz SND_Update2DChannel_20
SND_Update2DChannel_100:
	mov eax, [ebx+0x1c]
	add eax, [ebx+0x24]
	mov edx, [ebp-0x28]
	sub eax, [edx+0x4dcc]
	mov ebx, [edi+0xc]
	test ebx, ebx
	jz SND_Update2DChannel_30
	test eax, eax
	jle SND_Update2DChannel_40
SND_Update2DChannel_30:
	mov ebx, g_snd
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x4c74]
	jp SND_Update2DChannel_50
	jnz SND_Update2DChannel_50
SND_Update2DChannel_70:
	mov eax, [edi+0x30]
SND_Update2DChannel_80:
	movss xmm0, dword [ebp-0x1c]
SND_Update2DChannel_90:
	mov edx, [ebx+0x4c44]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*2]
	mulss xmm0, [edx+eax*4]
	mulss xmm0, [ebx+0x4024]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov eax, [esi*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_volume_levels
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	lea ecx, [ebx+eax*4]
	mov eax, [ecx+0x6208]
	test eax, eax
	jz SND_Update2DChannel_10
	sub eax, [ebp-0x24]
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov [ecx+0x6208], eax
	test eax, eax
	jz SND_Update2DChannel_60
SND_Update2DChannel_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Update2DChannel_50:
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	cmp byte [ebx+eax*4+0x6275], 0x0
	jnz SND_Update2DChannel_70
	mov eax, [edi+0x30]
	test al, 0x4
	jz SND_Update2DChannel_80
	mov eax, [edi+0x34]
	mov [esp], eax
	call SND_GetLerpedSlavePercentage
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x1c], xmm0
	mov ebx, g_snd
	mov eax, [edi+0x30]
	jmp SND_Update2DChannel_90
SND_Update2DChannel_20:
	mov eax, [esi*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_sample_status
	cmp eax, 0x2
	jnz SND_Update2DChannel_100
SND_Update2DChannel_40:
	mov [ebp+0x8], esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SND_StopChannelAndPlayChainAlias
SND_Update2DChannel_60:
	mov eax, [esi*4+milesGlob+0x4]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp AIL_resume_sample
	nop


;SND_Update3DChannel(int, int)
SND_Update3DChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, [ebp+0x8]
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	mov edx, g_snd
	mov [ebp-0x60], edx
	lea ebx, [edx+eax*4+0x61f0]
	cmp byte [ebx+0x84], 0x0
	jnz SND_Update3DChannel_10
	mov edi, [ebx+0x58]
	mov ecx, [ebx+0x5c]
	mov [ebp-0x50], ecx
	test edi, edi
	jz SND_Update3DChannel_10
	test ecx, ecx
	jz SND_Update3DChannel_10
	movss xmm0, dword [ebx+0x68]
	movss [ebp-0x54], xmm0
	movss xmm1, dword [ebx+0x50]
	movss [ebp-0x4c], xmm1
	mov eax, [ebx+0x18]
	test eax, eax
	jz SND_Update3DChannel_20
SND_Update3DChannel_100:
	mov eax, [ebx+0x1c]
	add eax, [ebx+0x24]
	mov edx, [ebp-0x60]
	sub eax, [edx+0x4dcc]
	mov ecx, [edi+0xc]
	test ecx, ecx
	jz SND_Update3DChannel_30
	test eax, eax
	jle SND_Update3DChannel_40
SND_Update3DChannel_30:
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	mov ecx, g_snd
	mov edx, [eax+ecx+0x6200]
	lea ebx, [ebp-0x24]
	mov [esp+0x8], ebx
	lea eax, [eax+ecx+0x6268]
	mov [esp+0x4], eax
	mov [esp], edx
	call SND_GetCurrent3DPosition
	mov [esp], ebx
	call SND_GetListenerIndexNearestToOrigin
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov edx, g_snd
	lea eax, [eax+edx+0x4d50]
	lea edx, [eax+0xc]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [eax+0xc]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0x20]
	subss xmm0, [edx+0x4]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [edx+0x8]
	movss [ebp-0x34], xmm0
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	add eax, 0x18
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call MatrixTransposeTransformVector
	mov eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [ebp-0x2c]
	xor eax, 0x80000000
	mov [esp+0x4], eax
	mov eax, [esi*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_3D_position
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x54]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0x28]
	movss [ebp-0x58], xmm1
	movss xmm1, dword [ebp-0x54]
	mov eax, [ebp-0x50]
	mulss xmm1, [eax+0x28]
	addss xmm1, [ebp-0x58]
	movss [ebp-0x58], xmm1
	mulss xmm0, [edi+0x2c]
	movss xmm1, dword [ebp-0x54]
	mulss xmm1, [eax+0x2c]
	addss xmm0, xmm1
	movss [ebp-0x54], xmm0
	mov [esp], ebx
	call SND_GetListenerIndexNearestToOrigin
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov edx, g_snd
	lea eax, [eax+edx+0x4d50]
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	subss xmm0, [ebp-0x24]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ebp-0x20]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [ebp-0x1c]
	movss xmm3, dword [ebp-0x54]
	movss [esp+0xc], xmm3
	movss xmm3, dword [ebp-0x58]
	movss [esp+0x8], xmm3
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [esp+0x4], xmm0
	mov eax, [edi+0x48]
	mov [esp], eax
	call SND_Attenuate
	fstp dword [ebp-0x7c]
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, [ebp-0x4c]
	pxor xmm0, xmm0
	mov eax, g_snd
	ucomiss xmm0, [eax+0x4c74]
	jp SND_Update3DChannel_50
	jnz SND_Update3DChannel_50
	mov ebx, eax
SND_Update3DChannel_80:
	mov eax, [edi+0x30]
SND_Update3DChannel_90:
	mov edx, [ebx+0x4c44]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*2]
	movaps xmm0, xmm1
	mulss xmm0, [edx+eax*4]
	mulss xmm0, [ebx+0x4024]
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	cmp dword [ebx+eax*4+0x61f4], 0x2
	jz SND_Update3DChannel_60
	mulss xmm0, [_float_0_50000000]
SND_Update3DChannel_60:
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov eax, [esi*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_volume_levels
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	lea ecx, [eax*4]
	add ecx, g_snd
	mov eax, [ecx+0x6208]
	test eax, eax
	jz SND_Update3DChannel_10
	sub eax, [ebp+0xc]
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov [ecx+0x6208], eax
	test eax, eax
	jz SND_Update3DChannel_70
SND_Update3DChannel_10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Update3DChannel_50:
	mov ebx, g_snd
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	cmp byte [ebx+eax*4+0x6275], 0x0
	jnz SND_Update3DChannel_80
	mov eax, [edi+0x30]
	test al, 0x4
	jz SND_Update3DChannel_90
	mov eax, [edi+0x34]
	mov [esp], eax
	movss [ebp-0x78], xmm1
	call SND_GetLerpedSlavePercentage
	fstp dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, [ebp-0x5c]
	mov eax, [edi+0x30]
	jmp SND_Update3DChannel_90
SND_Update3DChannel_20:
	mov eax, [esi*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_sample_status
	cmp eax, 0x2
	jnz SND_Update3DChannel_100
SND_Update3DChannel_40:
	mov [esp], esi
	call SND_StopChannelAndPlayChainAlias
	jmp SND_Update3DChannel_10
SND_Update3DChannel_70:
	mov eax, [esi*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_resume_sample
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_DriverPostUpdate(int)
SND_DriverPostUpdate:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SND_GetSoundFileSize(void const*)
SND_GetSoundFileSize:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	pop ebp
	ret
	nop


;SND_Unpause2DChannel(int, int)
SND_Unpause2DChannel:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea edx, [ecx+ecx*4]
	lea eax, [edx*8]
	sub eax, edx
	lea ebx, [eax*4]
	add ebx, g_snd
	mov eax, [ebx+0x6208]
	test eax, eax
	jnz SND_Unpause2DChannel_10
	mov eax, [ecx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_resume_sample
SND_Unpause2DChannel_10:
	add [ebx+0x61fc], esi
	add [ebx+0x620c], esi
	mov byte [ebx+0x6274], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SND_Unpause3DChannel(int, int)
SND_Unpause3DChannel:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea edx, [ecx+ecx*4]
	lea eax, [edx*8]
	sub eax, edx
	lea ebx, [eax*4]
	add ebx, g_snd
	mov eax, [ebx+0x6208]
	test eax, eax
	jnz SND_Unpause3DChannel_10
	mov eax, [ecx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_resume_sample
SND_Unpause3DChannel_10:
	add [ebx+0x61fc], esi
	add [ebx+0x620c], esi
	mov byte [ebx+0x6274], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SND_StopStreamChannel(int)
SND_StopStreamChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	lea edi, [ebx-0x28]
	mov esi, milesGlob+0xa0
	mov eax, [esi+edi*4+0x4]
	mov [esp], eax
	call AIL_close_stream
	mov dword [esi+edi*4+0x4], 0x0
	mov [esp], ebx
	call SND_ResetChannelInfo
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	mov eax, [eax+0x6204]
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SND_RemoveVoice


;SND_Get2DChannelLength(int)
SND_Get2DChannelLength:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_sample_ms_position
	mov eax, [ebp-0xc]
	leave
	ret


;SND_Get2DChannelVolume(int)
SND_Get2DChannelVolume:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_sample_volume_levels
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	cmp dword [eax+0x61f4], 0x2
	jz SND_Get2DChannelVolume_10
	movss xmm0, dword [ebp-0xc]
	addss xmm0, [ebp-0x10]
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SND_Get2DChannelVolume_10:
	movss xmm0, dword [ebp-0xc]
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;SND_Get3DChannelLength(int)
SND_Get3DChannelLength:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_sample_ms_position
	mov eax, [ebp-0xc]
	leave
	ret


;SND_Get3DChannelVolume(int)
SND_Get3DChannelVolume:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_sample_volume_levels
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	cmp dword [eax+0x61f4], 0x2
	jz SND_Get3DChannelVolume_10
	movss xmm0, dword [ebp-0xc]
	addss xmm0, [ebp-0x10]
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SND_Get3DChannelVolume_10:
	movss xmm0, dword [ebp-0xc]
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;SND_PauseStreamChannel(int)
SND_PauseStreamChannel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x1
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_pause_stream
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	mov byte [eax+0x6274], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SND_StartAlias2DSample(SndStartAliasInfo*, int*)
SND_StartAlias2DSample:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov esi, [eax+0x30]
	and esi, 0x3f00
	sar esi, 0x8
	mov [esp], esi
	call SND_HasFreeVoice
	test al, al
	jnz SND_StartAlias2DSample_10
SND_StartAlias2DSample_30:
	mov ebx, 0xffffffff
SND_StartAlias2DSample_200:
	mov eax, ebx
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartAlias2DSample_10:
	mov [esp+0x4], esi
	mov [esp], ebx
	call SND_FindFree2DChannel
	mov [ebp-0x80], eax
	mov edx, [ebp+0xc]
	test edx, edx
	jz SND_StartAlias2DSample_20
	mov edx, [ebp+0xc]
	mov [edx], eax
SND_StartAlias2DSample_20:
	mov eax, [ebp-0x80]
	test eax, eax
	js SND_StartAlias2DSample_30
	mov eax, [ebp-0x80]
	mov eax, [eax*4+milesGlob+0x4]
	mov [ebp-0x7c], eax
	mov eax, [ebx]
	mov eax, [eax+0x10]
	mov eax, [eax+0x4]
	add eax, 0x4
	mov [ebp-0x74], eax
	mov [esp+0x4], eax
	mov edx, [ebp-0x7c]
	mov [esp], edx
	call AIL_set_sample_info
	cmp byte [ebx+0x31], 0x0
	jz SND_StartAlias2DSample_40
	movss xmm0, dword [ebx+0x20]
	mov eax, [ebp-0x7c]
	mov [esp], eax
	movss [ebp-0xa8], xmm0
	call AIL_sample_playback_rate
	cvtsi2ss xmm1, eax
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm1
	mov eax, g_snd
	mulss xmm0, [eax+0x10]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x8c]
	cvttss2si eax, [ebp-0x8c]
SND_StartAlias2DSample_220:
	mov [esp+0x4], eax
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call AIL_set_sample_playback_rate
	mov edi, [ebx]
	mov edx, [edi+0x30]
	mov [ebp-0x6c], edx
	mov edx, g_snd
	movss xmm0, dword [ebx+0x1c]
	mulss xmm0, [edx+0x4024]
	movss [ebp-0x70], xmm0
	mov ecx, [edx+0x4c44]
	mov eax, [ebp-0x6c]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*2]
	mulss xmm0, [ecx+eax*4]
	movss [ebp-0x70], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x4c74]
	jp SND_StartAlias2DSample_50
	jz SND_StartAlias2DSample_60
SND_StartAlias2DSample_50:
	cmp byte [ebx+0x30], 0x0
	jnz SND_StartAlias2DSample_60
	test byte [ebp-0x6c], 0x4
	jnz SND_StartAlias2DSample_70
SND_StartAlias2DSample_60:
	mov edx, [ebp-0x74]
	mov eax, [edx+0x14]
	mov [esp+0x4], eax
	mov eax, [edi+0x58]
	mov [esp], eax
	call Com_GetSpeakerMap
	mov edi, eax
	test eax, eax
	jz SND_StartAlias2DSample_80
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x64]
	mov [esp], eax
	call memset
	mov eax, [edi]
	test eax, eax
	jle SND_StartAlias2DSample_90
	mov edx, edi
	xor ecx, ecx
	pxor xmm3, xmm3
SND_StartAlias2DSample_100:
	movss xmm1, dword [edx+0x10]
	movss xmm2, dword [edx+0xc]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp+ecx*4-0x64], xmm0
	add ecx, 0x1
	mov eax, [edi]
	add edx, 0x10
	cmp eax, ecx
	jg SND_StartAlias2DSample_100
SND_StartAlias2DSample_90:
	mov [esp+0x8], eax
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov edx, [ebp-0x7c]
	mov [esp], edx
	call AIL_set_sample_channel_levels
SND_StartAlias2DSample_80:
	movss xmm0, dword [ebp-0x70]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov edx, [ebp-0x80]
	mov eax, [edx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_volume_levels
	mov eax, [ebx]
	movzx eax, byte [eax+0x30]
	and al, 0x1
	xor al, 0x1
	movzx eax, al
	mov [esp+0x4], eax
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call AIL_set_sample_loop_count
	mov edx, [ebx]
	test edx, edx
	jz SND_StartAlias2DSample_110
	mov eax, snd_enableReverb
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SND_StartAlias2DSample_120
	test byte [edx+0x30], 0x10
	jnz SND_StartAlias2DSample_120
SND_StartAlias2DSample_110:
	mov eax, g_snd
	mov eax, [eax+0x4cd8]
	mov eax, [eax+0x10]
SND_StartAlias2DSample_210:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov edx, [ebp-0x7c]
	mov [esp], edx
	call AIL_set_sample_reverb_levels
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call AIL_sample_ms_position
	mov edx, [ebx+0x24]
	mov [ebp-0x78], edx
	mov edi, [ebp-0x1c]
	cmp edx, edi
	jge SND_StartAlias2DSample_130
	movss xmm1, dword [ebx+0x28]
	ucomiss xmm1, [_float_0_00000000]
	jp SND_StartAlias2DSample_140
	jnz SND_StartAlias2DSample_140
	mov eax, [ebp-0x78]
	test eax, eax
	jnz SND_StartAlias2DSample_150
	mov eax, [ebx]
	test byte [eax+0x30], 0x20
	jnz SND_StartAlias2DSample_160
SND_StartAlias2DSample_230:
	mov edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call AIL_set_sample_ms_position
	mov eax, [ebx+0x2c]
	test eax, eax
	jnz SND_StartAlias2DSample_170
	mov edx, g_snd
	cmp byte [edx+0x2], 0x0
	jz SND_StartAlias2DSample_180
	mov edi, [ebx]
	mov eax, [edi+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	cmp byte [eax+edx+0x4d1c], 0x0
	jnz SND_StartAlias2DSample_190
SND_StartAlias2DSample_180:
	mov edx, [ebp-0x7c]
	mov [esp], edx
	call AIL_resume_sample
SND_StartAlias2DSample_170:
	mov edi, [ebx]
SND_StartAlias2DSample_190:
	mov eax, [ebx+0x2c]
	add [ebp-0x1c], eax
	xor eax, eax
	test byte [edi+0x30], 0x1
	cmovz eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x80]
	mov [esp], eax
	call SND_SetChannelStartInfo
	mov dword [esp+0x14], 0x2
	mov edx, [ebp-0x78]
	mov [esp+0x10], edx
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov edx, [ebp-0x74]
	mov eax, [edx+0xc]
	mov [esp+0x8], eax
	mov eax, [edx+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp-0x80]
	mov [esp], eax
	call SND_SetSoundFileChannelInfo
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x80]
	mov [esp], edx
	call SND_AcquirePlaybackId
	mov ebx, eax
	cmp eax, 0xffffffff
	jz SND_StartAlias2DSample_200
	mov [esp], esi
	call SND_AddVoice
	jmp SND_StartAlias2DSample_200
SND_StartAlias2DSample_120:
	xor eax, eax
	jmp SND_StartAlias2DSample_210
SND_StartAlias2DSample_40:
	movss xmm1, dword [ebx+0x20]
	mov edx, [ebp-0x7c]
	mov [esp], edx
	movss [ebp-0xb8], xmm1
	call AIL_sample_playback_rate
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x90]
	cvttss2si eax, [ebp-0x90]
	jmp SND_StartAlias2DSample_220
SND_StartAlias2DSample_140:
	cvtsi2ss xmm0, edi
	mulss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x94]
	cvttss2si edx, [ebp-0x94]
	mov [ebp-0x78], edx
SND_StartAlias2DSample_240:
	mov eax, [ebp-0x78]
	test eax, eax
	jz SND_StartAlias2DSample_230
SND_StartAlias2DSample_150:
	mov dword [ebx+0x2c], 0x0
	jmp SND_StartAlias2DSample_230
SND_StartAlias2DSample_130:
	mov eax, [ebp-0x80]
	mov [esp], eax
	call SND_SetPlaybackIdNotPlayed
	mov ebx, eax
	jmp SND_StartAlias2DSample_200
SND_StartAlias2DSample_70:
	mov eax, [edi+0x34]
	mov [esp], eax
	call SND_GetLerpedSlavePercentage
	fstp dword [ebp-0x88]
	movss xmm4, dword [ebp-0x70]
	mulss xmm4, [ebp-0x88]
	movss [ebp-0x70], xmm4
	mov edi, [ebx]
	jmp SND_StartAlias2DSample_60
SND_StartAlias2DSample_160:
	call randomf
	fstp dword [ebp-0x84]
	cvtsi2ss xmm0, edi
	mulss xmm0, [ebp-0x84]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x98]
	cvttss2si eax, [ebp-0x98]
	and eax, 0xffffff80
	mov [ebp-0x78], eax
	jmp SND_StartAlias2DSample_240


;SND_StartAlias3DSample(SndStartAliasInfo*, int*)
SND_StartAlias3DSample:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov esi, [eax+0x30]
	and esi, 0x3f00
	sar esi, 0x8
	mov [esp], esi
	call SND_HasFreeVoice
	test al, al
	jnz SND_StartAlias3DSample_10
SND_StartAlias3DSample_30:
	mov ebx, 0xffffffff
SND_StartAlias3DSample_210:
	mov eax, ebx
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartAlias3DSample_10:
	mov [esp+0x4], esi
	mov [esp], edi
	call SND_FindFree3DChannel
	mov [ebp-0x9c], eax
	mov edx, [ebp+0xc]
	test edx, edx
	jz SND_StartAlias3DSample_20
	mov edx, [ebp+0xc]
	mov [edx], eax
SND_StartAlias3DSample_20:
	mov eax, [ebp-0x9c]
	test eax, eax
	js SND_StartAlias3DSample_30
	mov ecx, [ebp-0x9c]
	mov ecx, [ecx*4+milesGlob+0x4]
	mov [ebp-0x98], ecx
	mov edx, [edi]
	mov eax, [edx+0x10]
	mov eax, [eax+0x4]
	add eax, 0x4
	mov [ebp-0x90], eax
	movss xmm1, dword [edi+0x8]
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, xmm1
	mov eax, [edi+0x4]
	movaps xmm0, xmm3
	mulss xmm0, [edx+0x28]
	movss [ebp-0x8c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x28]
	addss xmm0, [ebp-0x8c]
	movss [ebp-0x8c], xmm0
	mulss xmm3, [edx+0x2c]
	mulss xmm1, [eax+0x2c]
	addss xmm3, xmm1
	mov eax, [ebp-0x90]
	mov [esp+0x4], eax
	mov [esp], ecx
	movss [ebp-0xf8], xmm3
	call AIL_set_sample_info
	lea edx, [edi+0x10]
	mov [ebp-0xa4], edx
	mov [esp], edx
	call SND_GetListenerIndexNearestToOrigin
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov ebx, g_snd
	lea eax, [eax+ebx+0x4d50]
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	subss xmm0, [edi+0x10]
	lea ecx, [edi+0x14]
	mov [ebp-0x84], ecx
	movss xmm2, dword [edx+0x4]
	subss xmm2, [edi+0x14]
	lea eax, [edi+0x18]
	mov [ebp-0x80], eax
	movss xmm1, dword [edx+0x8]
	subss xmm1, [edi+0x18]
	movss xmm3, dword [ebp-0xf8]
	movss [esp+0xc], xmm3
	movss xmm3, dword [ebp-0x8c]
	movss [esp+0x8], xmm3
	mulss xmm0, xmm0
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [esp+0x4], xmm0
	mov eax, [edi]
	mov eax, [eax+0x48]
	mov [esp], eax
	call SND_Attenuate
	fstp dword [ebp-0x88]
	mov eax, [edi]
	mov [ebp-0xc4], eax
	mov ecx, [eax+0x30]
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [edi+0x1c]
	movss [ebp-0x88], xmm0
	mov edx, [ebx+0x4c44]
	mov eax, ecx
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*2]
	mulss xmm0, [edx+eax*4]
	mulss xmm0, [ebx+0x4024]
	movss [ebp-0x88], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x4c74]
	jp SND_StartAlias3DSample_40
	jz SND_StartAlias3DSample_50
SND_StartAlias3DSample_40:
	cmp byte [edi+0x30], 0x0
	jnz SND_StartAlias3DSample_50
	and cl, 0x4
	jnz SND_StartAlias3DSample_60
SND_StartAlias3DSample_50:
	cmp byte [milesGlob+0x8c8], 0x0
	jnz SND_StartAlias3DSample_70
SND_StartAlias3DSample_320:
	mov ecx, [ebp-0x9c]
	lea edx, [ecx+ecx*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	add eax, g_snd
	cmp dword [eax+0x61f4], 0x2
	jz SND_StartAlias3DSample_80
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [_float_0_50000000]
SND_StartAlias3DSample_330:
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov eax, [ecx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_volume_levels
	mov eax, [edi]
	mov dword [esp+0xc], 0x1
	mov edx, [eax+0x28]
	mov [esp+0x8], edx
	mov eax, [eax+0x2c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x98]
	mov [esp], ecx
	call AIL_set_sample_3D_distances
	cmp byte [edi+0x31], 0x0
	jz SND_StartAlias3DSample_90
	movss xmm0, dword [edi+0x20]
	mov eax, [ebp-0x98]
	mov [esp], eax
	movss [ebp-0xd8], xmm0
	call AIL_sample_playback_rate
	cvtsi2ss xmm1, eax
	movss xmm0, dword [ebp-0xd8]
	mulss xmm0, xmm1
	mov eax, g_snd
	mulss xmm0, [eax+0x10]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xa8]
	cvttss2si ebx, [ebp-0xa8]
SND_StartAlias3DSample_230:
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x98]
	mov [esp], ecx
	call AIL_set_sample_playback_rate
	mov eax, [ebp-0xa4]
	mov [esp], eax
	call SND_GetListenerIndexNearestToOrigin
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov edx, g_snd
	mov [ebp-0xb0], edx
	lea eax, [eax+edx+0x4d50]
	lea edx, [eax+0xc]
	mov ecx, [ebp-0xa4]
	movss xmm0, dword [ecx]
	subss xmm0, [eax+0xc]
	movss [ebp-0x70], xmm0
	mov ecx, [ebp-0x84]
	movss xmm0, dword [ecx]
	subss xmm0, [edx+0x4]
	movss [ebp-0x6c], xmm0
	mov ecx, [ebp-0x80]
	movss xmm0, dword [ecx]
	subss xmm0, [edx+0x8]
	movss [ebp-0x68], xmm0
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	add eax, 0x18
	mov [esp+0x4], eax
	lea eax, [ebp-0x70]
	mov [esp], eax
	call MatrixTransposeTransformVector
	mov eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x24]
	xor eax, 0x80000000
	mov [esp+0x4], eax
	mov edx, [ebp-0x9c]
	mov eax, [edx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_3D_position
	mov eax, [edi]
	movzx eax, byte [eax+0x30]
	and al, 0x1
	xor al, 0x1
	movzx eax, al
	mov [esp+0x4], eax
	mov ecx, [ebp-0x98]
	mov [esp], ecx
	call AIL_set_sample_loop_count
	mov edx, [edi]
	test edx, edx
	jz SND_StartAlias3DSample_100
	mov eax, snd_enableReverb
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SND_StartAlias3DSample_110
	test byte [edx+0x30], 0x10
	jnz SND_StartAlias3DSample_110
	mov ecx, [ebp-0xb0]
	mov eax, [ecx+0x4cd8]
	mov eax, [eax+0x10]
SND_StartAlias3DSample_220:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov eax, [ebp-0x98]
	mov [esp], eax
	call AIL_set_sample_reverb_levels
	cmp byte [edi+0x31], 0x0
	jnz SND_StartAlias3DSample_120
	mov ecx, [ebp-0x90]
	mov eax, [ecx+0x18]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	xor edx, edx
	div ebx
	mov ebx, eax
SND_StartAlias3DSample_260:
	mov eax, [edi+0x24]
	mov [ebp-0x94], eax
	cmp ebx, eax
	jle SND_StartAlias3DSample_130
	movss xmm0, dword [edi+0x28]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp SND_StartAlias3DSample_140
	jnz SND_StartAlias3DSample_140
	mov eax, [ebp-0x94]
	test eax, eax
	jnz SND_StartAlias3DSample_150
	mov eax, [edi]
	test byte [eax+0x30], 0x20
	jnz SND_StartAlias3DSample_160
	cvtsi2ss xmm0, ebx
	movss [ebp-0x7c], xmm0
SND_StartAlias3DSample_350:
	mov eax, [ebp-0x90]
	mov edx, [eax+0x8]
	test edx, edx
	js SND_StartAlias3DSample_170
	cvtsi2ss xmm0, edx
SND_StartAlias3DSample_370:
	divss xmm1, dword [ebp-0x7c]
	mulss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc0]
	cvttss2si eax, [ebp-0xc0]
	mov [esp+0x4], eax
	mov edx, [ebp-0x98]
	mov [esp], edx
	call AIL_set_sample_ms_position
	mov ecx, [edi+0x2c]
	test ecx, ecx
	jnz SND_StartAlias3DSample_180
	mov edx, g_snd
	cmp byte [edx+0x2], 0x0
	jz SND_StartAlias3DSample_190
	mov ecx, [edi]
	mov [ebp-0xc4], ecx
	mov eax, [ecx+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	cmp byte [eax+edx+0x4d1c], 0x0
	jnz SND_StartAlias3DSample_200
SND_StartAlias3DSample_190:
	mov eax, [ebp-0x98]
	mov [esp], eax
	call AIL_resume_sample
	mov edx, [edi]
	mov [ebp-0xc4], edx
	mov eax, edx
SND_StartAlias3DSample_240:
	add ebx, [edi+0x2c]
	test byte [eax+0x30], 0x1
	mov eax, 0x0
	cmovnz ebx, eax
	mov [esp+0x4], edi
	mov edx, [ebp-0x9c]
	mov [esp], edx
	call SND_SetChannelStartInfo
	mov dword [esp+0x14], 0x2
	mov ecx, [ebp-0x94]
	mov [esp+0x10], ecx
	mov [esp+0xc], ebx
	mov edx, [ebp-0x90]
	mov eax, [edx+0xc]
	mov [esp+0x8], eax
	mov eax, [edx+0x14]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x9c]
	mov [esp], ecx
	call SND_SetSoundFileChannelInfo
	mov [esp+0x4], ebx
	mov eax, [ebp-0x9c]
	mov [esp], eax
	call SND_AcquirePlaybackId
	mov ebx, eax
	cmp eax, 0xffffffff
	jz SND_StartAlias3DSample_210
	mov [esp], esi
	call SND_AddVoice
	jmp SND_StartAlias3DSample_210
SND_StartAlias3DSample_110:
	xor eax, eax
	jmp SND_StartAlias3DSample_220
SND_StartAlias3DSample_90:
	movss xmm1, dword [edi+0x20]
	mov edx, [ebp-0x98]
	mov [esp], edx
	movss [ebp-0xe8], xmm1
	call AIL_sample_playback_rate
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0xe8]
	mulss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0xac]
	cvttss2si ebx, [ebp-0xac]
	jmp SND_StartAlias3DSample_230
SND_StartAlias3DSample_180:
	mov ecx, [edi]
	mov [ebp-0xc4], ecx
	mov eax, ecx
	jmp SND_StartAlias3DSample_240
SND_StartAlias3DSample_120:
	mov edx, [ebp-0x90]
	mov eax, [edx+0x18]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	js SND_StartAlias3DSample_250
	cvtsi2ss xmm1, eax
SND_StartAlias3DSample_390:
	mov eax, g_snd
	mulss xmm1, [eax+0x10]
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0xb4]
	cvttss2si ebx, [ebp-0xb4]
	jmp SND_StartAlias3DSample_260
SND_StartAlias3DSample_130:
	mov edx, [ebp-0x9c]
	mov [esp], edx
	call SND_SetPlaybackIdNotPlayed
	mov ebx, eax
	jmp SND_StartAlias3DSample_210
SND_StartAlias3DSample_70:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x98]
	mov [esp], edx
	call AIL_sample_channel_levels
	mov edx, [ebp-0x1c]
	test edx, edx
	jle SND_StartAlias3DSample_270
	xor eax, eax
SND_StartAlias3DSample_280:
	mov dword [ebp+eax*4-0x70], 0x3f800000
	add eax, 0x1
	cmp eax, edx
	jnz SND_StartAlias3DSample_280
SND_StartAlias3DSample_270:
	mov ecx, [ebp-0xc4]
	movss xmm0, dword [ecx+0x40]
	ucomiss xmm0, [_float_0_00000000]
	jp SND_StartAlias3DSample_290
	jz SND_StartAlias3DSample_300
SND_StartAlias3DSample_290:
	cmp byte [milesGlob+0x8c8], 0x0
	jz SND_StartAlias3DSample_300
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	test edx, edx
	jle SND_StartAlias3DSample_300
	xor ecx, ecx
	lea eax, [ebp-0x70]
SND_StartAlias3DSample_310:
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	movss [eax], xmm0
	add ecx, 0x1
	add eax, 0x4
	cmp ecx, edx
	jnz SND_StartAlias3DSample_310
	mov eax, [ebp-0xc4]
	movss xmm0, dword [eax+0x40]
	mov ecx, eax
SND_StartAlias3DSample_340:
	movss [ebp-0x68], xmm0
	mov eax, [ecx+0x3c]
	mov [ebp-0x64], eax
	mov [esp+0x8], edx
	lea eax, [ebp-0x70]
	mov [esp+0x4], eax
	mov edx, [ebp-0x98]
	mov [esp], edx
	call AIL_set_sample_channel_levels
	jmp SND_StartAlias3DSample_320
SND_StartAlias3DSample_80:
	movss xmm0, dword [ebp-0x88]
	jmp SND_StartAlias3DSample_330
SND_StartAlias3DSample_300:
	mov ecx, [ebp-0xc4]
	jmp SND_StartAlias3DSample_340
SND_StartAlias3DSample_150:
	cvtsi2ss xmm0, ebx
	movss [ebp-0xc8], xmm0
SND_StartAlias3DSample_360:
	mov dword [edi+0x2c], 0x0
	cvtsi2ss xmm1, dword [ebp-0x94]
	movss xmm3, dword [ebp-0xc8]
	movss [ebp-0x7c], xmm3
	jmp SND_StartAlias3DSample_350
SND_StartAlias3DSample_140:
	cvtsi2ss xmm1, ebx
	movss [ebp-0x7c], xmm1
	movss [ebp-0xc8], xmm1
	mulss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xb8]
	cvttss2si eax, [ebp-0xb8]
	mov [ebp-0x94], eax
SND_StartAlias3DSample_380:
	mov eax, [ebp-0x94]
	pxor xmm1, xmm1
	test eax, eax
	jz SND_StartAlias3DSample_350
	jmp SND_StartAlias3DSample_360
SND_StartAlias3DSample_100:
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x4cd8]
	mov eax, [eax+0x10]
	jmp SND_StartAlias3DSample_220
SND_StartAlias3DSample_170:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp SND_StartAlias3DSample_370
SND_StartAlias3DSample_200:
	mov eax, ecx
	jmp SND_StartAlias3DSample_240
SND_StartAlias3DSample_60:
	mov edx, [ebp-0xc4]
	mov eax, [edx+0x34]
	mov [esp], eax
	call SND_GetLerpedSlavePercentage
	fstp dword [ebp-0xa0]
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [ebp-0xa0]
	movss [ebp-0x88], xmm0
	mov eax, [edi]
	mov [ebp-0xc4], eax
	jmp SND_StartAlias3DSample_50
SND_StartAlias3DSample_160:
	cvtsi2ss xmm1, ebx
	movss [ebp-0x7c], xmm1
	movss [ebp-0xc8], xmm1
	call randomf
	fstp dword [ebp-0xfc]
	movss xmm0, dword [ebp-0xfc]
	mulss xmm0, [ebp-0x7c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xbc]
	cvttss2si eax, [ebp-0xbc]
	and eax, 0xffffff80
	mov [ebp-0x94], eax
	jmp SND_StartAlias3DSample_380
SND_StartAlias3DSample_250:
	shr eax, 1
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp SND_StartAlias3DSample_390


;SND_IsStreamChannelFree(int)
SND_IsStreamChannelFree:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [eax*4+milesGlob+0x4]
	test ecx, ecx
	jz SND_IsStreamChannelFree_10
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	add eax, g_snd
	cmp byte [eax+0x6274], 0x0
	jnz SND_IsStreamChannelFree_20
	mov edx, [eax+0x6208]
	test edx, edx
	jnz SND_IsStreamChannelFree_20
	mov eax, [eax+0x6248]
	test eax, eax
	setz al
	movzx eax, al
	pop ebp
	ret
SND_IsStreamChannelFree_20:
	xor eax, eax
	pop ebp
	ret
SND_IsStreamChannelFree_10:
	mov eax, 0x1
	pop ebp
	ret


;SND_UpdateStreamChannel(int, int)
SND_UpdateStreamChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	lea esi, [eax*4]
	mov edi, g_snd
	lea ebx, [esi+edi+0x61f0]
	cmp byte [ebx+0x84], 0x0
	jnz SND_UpdateStreamChannel_10
	cmp dword [ebp+0x8], 0x2c
	jle SND_UpdateStreamChannel_20
SND_UpdateStreamChannel_110:
	mov ecx, [ebx+0x58]
	mov [ebp-0x48], ecx
	mov eax, [ebx+0x5c]
	test ecx, ecx
	jz SND_UpdateStreamChannel_10
	test eax, eax
	jz SND_UpdateStreamChannel_10
	movss xmm0, dword [ebx+0x50]
	movss [ebp-0x4c], xmm0
	mov eax, [esi+edi+0x6208]
	test eax, eax
	jz SND_UpdateStreamChannel_30
	mov eax, [ebp+0x8]
	sub eax, 0x28
	mov [ebp-0x40], eax
SND_UpdateStreamChannel_120:
	mov ecx, [ebp-0x48]
	mov eax, [ecx+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	mov [esp], eax
	call SND_IsAliasChannel3D
	test al, al
	jnz SND_UpdateStreamChannel_40
SND_UpdateStreamChannel_140:
	mov ebx, g_snd
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x4c74]
	jp SND_UpdateStreamChannel_50
	jz SND_UpdateStreamChannel_60
SND_UpdateStreamChannel_50:
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	cmp byte [ebx+eax*4+0x6275], 0x0
	jz SND_UpdateStreamChannel_70
	mov edx, [ebp-0x48]
	mov eax, [edx+0x30]
	movss xmm0, dword [ebp-0x4c]
	jmp SND_UpdateStreamChannel_80
SND_UpdateStreamChannel_60:
	mov ecx, [ebp-0x48]
	mov eax, [ecx+0x30]
SND_UpdateStreamChannel_130:
	movss xmm0, dword [ebp-0x4c]
SND_UpdateStreamChannel_80:
	mov edx, [ebx+0x4c44]
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*2]
	mulss xmm0, [edx+eax*4]
	mulss xmm0, [ebx+0x4024]
	movss [ebp-0x3c], xmm0
	mov edx, [ebp-0x40]
	mov eax, [edx*4+milesGlob+0xa4]
	mov [esp], eax
	call AIL_stream_sample_handle
	mov esi, eax
	mov ecx, [ebp+0x8]
	lea edx, [ecx+ecx*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [ebx+eax*4]
	cmp dword [eax+0x61f4], 0x2
	jz SND_UpdateStreamChannel_90
	mov eax, [eax+0x6248]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	mov [esp], eax
	call SND_IsAliasChannel3D
	test al, al
	jnz SND_UpdateStreamChannel_100
SND_UpdateStreamChannel_90:
	movss xmm0, dword [ebp-0x3c]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov [esp], esi
	call AIL_set_sample_volume_levels
SND_UpdateStreamChannel_150:
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	lea ecx, [eax*4]
	add ecx, g_snd
	mov eax, [ecx+0x6208]
	test eax, eax
	jz SND_UpdateStreamChannel_10
	sub eax, [ebp+0xc]
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov [ecx+0x6208], eax
	test eax, eax
	jnz SND_UpdateStreamChannel_10
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x40]
	mov eax, [edx*4+milesGlob+0xa4]
	mov [esp], eax
	call AIL_pause_stream
SND_UpdateStreamChannel_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_UpdateStreamChannel_20:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	sub eax, 0x28
	mov [esp], eax
	call SND_UpdateBackgroundVolume
	test al, al
	jnz SND_UpdateStreamChannel_110
	jmp SND_UpdateStreamChannel_10
SND_UpdateStreamChannel_30:
	mov edx, [ebp+0x8]
	sub edx, 0x28
	mov [ebp-0x40], edx
	mov eax, [edx*4+milesGlob+0xa4]
	mov [esp], eax
	call AIL_stream_status
	cmp eax, 0x2
	jnz SND_UpdateStreamChannel_120
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SND_StopChannelAndPlayChainAlias
	jmp SND_UpdateStreamChannel_10
SND_UpdateStreamChannel_70:
	mov edx, [ebp-0x48]
	mov eax, [edx+0x30]
	test al, 0x4
	jz SND_UpdateStreamChannel_130
	mov eax, [edx+0x34]
	mov [esp], eax
	call SND_GetLerpedSlavePercentage
	fstp dword [ebp-0x50]
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [ebp-0x50]
	movss [ebp-0x4c], xmm0
	mov edx, [ebp-0x48]
	mov eax, [edx+0x30]
	jmp SND_UpdateStreamChannel_80
SND_UpdateStreamChannel_40:
	mov ecx, [ebp+0x8]
	lea edx, [ecx+ecx*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	mov ebx, g_snd
	lea esi, [eax+ebx+0x6250]
	lea edi, [esi+0xc]
	lea edx, [eax+ebx]
	mov [ebp-0x54], edx
	mov edx, [edx+0x6200]
	mov [esp+0x8], edi
	lea eax, [eax+ebx+0x6268]
	mov [esp+0x4], eax
	mov [esp], edx
	call SND_GetCurrent3DPosition
	mov [esp], edi
	call SND_GetListenerIndexNearestToOrigin
	mov edx, eax
	lea eax, [eax*8]
	shl edx, 0x6
	sub edx, eax
	lea ebx, [edx+ebx+0x4d50]
	movss xmm0, dword [esi+0xc]
	subss xmm0, [ebx+0xc]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [esi+0x10]
	subss xmm0, [ebx+0x10]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [esi+0x14]
	subss xmm0, [ebx+0x14]
	movss [ebp-0x28], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebx+0x18]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call MatrixTransposeTransformVector
	mov edx, [ebp-0x40]
	mov eax, [edx*4+milesGlob+0xa4]
	mov [esp], eax
	call AIL_stream_sample_handle
	mov edx, [ebp-0x24]
	mov [esp+0xc], edx
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp-0x20]
	xor edx, 0x80000000
	mov [esp+0x4], edx
	mov [esp], eax
	call AIL_set_sample_3D_position
	mov ecx, [ebp-0x54]
	mov eax, [ecx+0x6248]
	mov edx, [ecx+0x624c]
	movss xmm3, dword [ebx+0xc]
	subss xmm3, [esi+0xc]
	movss xmm5, dword [ebx+0x10]
	subss xmm5, [esi+0x10]
	movss xmm6, dword [ebx+0x14]
	subss xmm6, [esi+0x14]
	movss xmm4, dword [ecx+0x6258]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm4
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x2c]
	movaps xmm2, xmm4
	mulss xmm2, [edx+0x2c]
	addss xmm1, xmm2
	movss [esp+0xc], xmm1
	mulss xmm0, [eax+0x28]
	mulss xmm4, [edx+0x28]
	addss xmm0, xmm4
	movss [esp+0x8], xmm0
	mulss xmm3, xmm3
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm6, xmm6
	addss xmm3, xmm6
	sqrtss xmm3, xmm3
	movss [esp+0x4], xmm3
	mov eax, [eax+0x48]
	mov [esp], eax
	call SND_Attenuate
	fstp dword [ebp-0x44]
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x4c], xmm0
	jmp SND_UpdateStreamChannel_140
SND_UpdateStreamChannel_100:
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_0_50000000]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov [esp], esi
	call AIL_set_sample_volume_levels
	jmp SND_UpdateStreamChannel_150


;SND_Get2DChannelSaveInfo(int, snd_save_2D_sample_t*)
SND_Get2DChannelSaveInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [edi*4+milesGlob+0x4]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call AIL_sample_ms_position
	cvtsi2ss xmm0, dword [ebp-0x1c]
	cvtsi2ss xmm1, dword [ebp-0x20]
	divss xmm0, xmm1
	mov eax, [ebp+0xc]
	movss [eax], xmm0
	mov ebx, g_snd
	lea edx, [edi+edi*4]
	lea eax, [edx*8]
	sub eax, edx
	mov eax, [ebx+eax*4+0x6244]
	mov edx, [ebp+0xc]
	mov [edx+0x4], eax
	mov dword [esp+0x8], 0x0
	mov eax, edx
	add eax, 0x8
	mov [esp+0x4], eax
	mov [esp], esi
	call AIL_sample_volume_pan
	movss xmm1, dword [ebx+0x4024]
	ucomiss xmm1, [_float_0_00000000]
	jp SND_Get2DChannelSaveInfo_10
	jz SND_Get2DChannelSaveInfo_20
SND_Get2DChannelSaveInfo_10:
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x8]
	divss xmm0, xmm1
	movss [eax+0x8], xmm0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Get2DChannelSaveInfo_20:
	lea eax, [edi+edi*4]
	lea edx, [eax*8]
	sub edx, eax
	shl edx, 0x2
	add edx, g_snd
	mov eax, [edx+0x6240]
	mov edx, [ebp+0xc]
	mov [edx+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SND_Get3DChannelSaveInfo(int, snd_save_3D_sample_t*)
SND_Get3DChannelSaveInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov edi, [eax*4+milesGlob+0x4]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call AIL_sample_ms_position
	cvtsi2ss xmm0, dword [ebp-0x1c]
	cvtsi2ss xmm1, dword [ebp-0x20]
	divss xmm0, xmm1
	movss [esi], xmm0
	mov ebx, g_snd
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	mov eax, [ebx+eax*4+0x6244]
	mov [esi+0x4], eax
	mov dword [esp+0x8], 0x0
	lea eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call AIL_sample_volume_pan
	movss xmm1, dword [ebx+0x4024]
	ucomiss xmm1, [_float_0_00000000]
	jp SND_Get3DChannelSaveInfo_10
	jz SND_Get3DChannelSaveInfo_20
SND_Get3DChannelSaveInfo_10:
	movss xmm0, dword [esi+0x8]
	divss xmm0, xmm1
	movss [esi+0x8], xmm0
	lea eax, [esi+0x10]
	mov [esp+0xc], eax
	lea eax, [esi+0x14]
	mov [esp+0x8], eax
	lea eax, [esi+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call AIL_sample_3D_position
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_Get3DChannelSaveInfo_20:
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	lea edx, [eax*8]
	sub edx, eax
	shl edx, 0x2
	add edx, g_snd
	mov eax, [edx+0x6240]
	mov [esi+0x8], eax
	lea eax, [esi+0x10]
	mov [esp+0xc], eax
	lea eax, [esi+0x14]
	mov [esp+0x8], eax
	lea eax, [esi+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call AIL_sample_3D_position
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_UnpauseStreamChannel(int, int)
SND_UnpauseStreamChannel:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea edx, [ecx+ecx*4]
	lea eax, [edx*8]
	sub eax, edx
	lea ebx, [eax*4]
	add ebx, g_snd
	mov eax, [ebx+0x6208]
	test eax, eax
	jnz SND_UnpauseStreamChannel_10
	mov dword [esp+0x4], 0x0
	mov eax, [ecx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_pause_stream
SND_UnpauseStreamChannel_10:
	add [ebx+0x61fc], esi
	add [ebx+0x620c], esi
	mov byte [ebx+0x6274], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SND_Update2DChannelReverb(int)
SND_Update2DChannelReverb:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov ecx, g_snd
	lea edx, [ebx+ebx*4]
	lea eax, [edx*8]
	sub eax, edx
	mov edx, [ecx+eax*4+0x6248]
	test edx, edx
	jz SND_Update2DChannelReverb_10
	mov eax, snd_enableReverb
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SND_Update2DChannelReverb_20
	test byte [edx+0x30], 0x10
	jnz SND_Update2DChannelReverb_20
SND_Update2DChannelReverb_10:
	mov eax, [ecx+0x4cd8]
	mov eax, [eax+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_reverb_levels
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_Update2DChannelReverb_20:
	xor eax, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_reverb_levels
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SND_Update3DChannelReverb(int)
SND_Update3DChannelReverb:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov ecx, g_snd
	lea edx, [ebx+ebx*4]
	lea eax, [edx*8]
	sub eax, edx
	mov edx, [ecx+eax*4+0x6248]
	test edx, edx
	jz SND_Update3DChannelReverb_10
	mov eax, snd_enableReverb
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SND_Update3DChannelReverb_20
	test byte [edx+0x30], 0x10
	jnz SND_Update3DChannelReverb_20
SND_Update3DChannelReverb_10:
	mov eax, [ecx+0x4cd8]
	mov eax, [eax+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_reverb_levels
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_Update3DChannelReverb_20:
	xor eax, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_reverb_levels
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;SND_GetDriverCPUPercentage()
SND_GetDriverCPUPercentage:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [milesGlob]
	mov [esp], eax
	call AIL_digital_CPU_percent
	leave
	ret
	nop


;SND_GetStreamChannelLength(int)
SND_GetStreamChannelLength:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_stream_ms_position
	mov eax, [ebp-0xc]
	leave
	ret


;SND_GetStreamChannelVolume(int)
SND_GetStreamChannelVolume:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_stream_sample_handle
	lea edx, [ebp-0x10]
	mov [esp+0x8], edx
	lea edx, [ebp-0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call AIL_sample_volume_levels
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	shl eax, 0x2
	add eax, g_snd
	cmp dword [eax+0x61f4], 0x2
	jz SND_GetStreamChannelVolume_10
	mov eax, [eax+0x6248]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	mov [esp], eax
	call SND_IsAliasChannel3D
	test al, al
	jnz SND_GetStreamChannelVolume_20
SND_GetStreamChannelVolume_10:
	fld dword [ebp-0xc]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SND_GetStreamChannelVolume_20:
	fld dword [ebp-0xc]
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [ebp-0x10]
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;SND_Get2DChannelPlaybackRate(int)
SND_Get2DChannelPlaybackRate:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp AIL_sample_playback_rate


;SND_Get3DChannelPlaybackRate(int)
SND_Get3DChannelPlaybackRate:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp AIL_sample_playback_rate


;SND_GetStreamChannelSaveInfo(int, snd_save_stream_t*)
SND_GetStreamChannelSaveInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ebx, [esi*4+milesGlob+0x4]
	mov [esp], ebx
	call AIL_stream_sample_handle
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AIL_stream_ms_position
	cvtsi2ss xmm0, dword [ebp-0x1c]
	cvtsi2ss xmm1, dword [ebp-0x20]
	divss xmm0, xmm1
	movss [edi], xmm0
	mov ebx, g_snd
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	cmp byte [ebx+eax*4+0x6276], 0x0
	jz SND_GetStreamChannelSaveInfo_10
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call AIL_sample_playback_rate
	cvtsi2ss xmm0, eax
	divss xmm0, dword [ebx+0x10]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x30]
	cvttss2si eax, [ebp-0x30]
SND_GetStreamChannelSaveInfo_40:
	mov [edi+0x4], eax
	mov ebx, g_snd
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	mov eax, [ebx+eax*4+0x6240]
	mov [edi+0x8], eax
	mov dword [esp+0x8], 0x0
	lea eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call AIL_sample_volume_pan
	movss xmm1, dword [ebx+0x4024]
	ucomiss xmm1, [_float_0_00000000]
	jp SND_GetStreamChannelSaveInfo_20
	jz SND_GetStreamChannelSaveInfo_30
SND_GetStreamChannelSaveInfo_20:
	movss xmm0, dword [edi+0xc]
	divss xmm0, xmm1
	movss [edi+0xc], xmm0
SND_GetStreamChannelSaveInfo_50:
	lea ecx, [edi+0x14]
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [ebx+eax*4+0x6250]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov [edi+0x14], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_GetStreamChannelSaveInfo_10:
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call AIL_sample_playback_rate
	jmp SND_GetStreamChannelSaveInfo_40
SND_GetStreamChannelSaveInfo_30:
	mov ebx, g_snd
	lea eax, [esi+esi*4]
	lea edx, [eax*8]
	sub edx, eax
	mov eax, [ebx+edx*4+0x6240]
	mov [edi+0xc], eax
	jmp SND_GetStreamChannelSaveInfo_50
	add [eax], al


;SND_Set2DChannelFromSaveInfo(int, snd_save_2D_sample_t*)
SND_Set2DChannelFromSaveInfo:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x8]
	mov eax, g_snd
	mulss xmm0, [eax+0x4024]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_set_sample_volume_levels
	leave
	ret
	nop


;SND_Set2DChannelPlaybackRate(int, int)
SND_Set2DChannelPlaybackRate:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp AIL_set_sample_playback_rate


;SND_Set3DChannelPlaybackRate(int, int)
SND_Set3DChannelPlaybackRate:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp AIL_set_sample_playback_rate


;SND_StartAliasStreamOnChannel(SndStartAliasInfo*, int)
SND_StartAliasStreamOnChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x24c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	mov [ebp-0x200], eax
	mov [esp], eax
	call SND_HasFreeVoice
	test al, al
	jz SND_StartAliasStreamOnChannel_10
	mov ecx, [ebp+0x8]
	mov esi, [ecx]
	mov eax, [esi+0x10]
	cmp byte [eax+0x1], 0x0
	jz SND_StartAliasStreamOnChannel_20
	mov eax, [ebp+0xc]
	sub eax, 0x28
	mov [ebp-0x220], eax
	mov edi, milesGlob+0xa0
	mov eax, [eax*4+milesGlob+0xa4]
	test eax, eax
	jz SND_StartAliasStreamOnChannel_30
	mov [esp], eax
	call AIL_close_stream
	mov ecx, [ebp-0x220]
	mov dword [edi+ecx*4+0x4], 0x0
	mov eax, [ebp+0x8]
	mov esi, [eax]
SND_StartAliasStreamOnChannel_30:
	mov dword [esp+0x8], 0x80
	lea ebx, [ebp-0xf8]
	mov [esp+0x4], ebx
	mov [esp], esi
	call Com_GetSoundFileName
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_sounds
	mov dword [esp+0x4], 0x100
	lea edx, [ebp-0x1f8]
	mov [esp], edx
	call Com_sprintf
	mov dword [esp+0x4], _cstring_mp3
	lea ecx, [ebp-0x1f8]
	mov [esp], ecx
	call strstr
	test eax, eax
	jz SND_StartAliasStreamOnChannel_40
	mov dword [eax], 0x61346d2e
	mov byte [eax+0x4], 0x0
SND_StartAliasStreamOnChannel_40:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1f8]
	mov [esp+0x4], eax
	mov eax, [milesGlob]
	mov [esp], eax
	call AIL_open_stream
	mov [ebp-0x214], eax
	test eax, eax
	jz SND_StartAliasStreamOnChannel_50
SND_StartAliasStreamOnChannel_330:
	mov edx, eax
	mov eax, [ebp-0x220]
	mov [edi+eax*4+0x4], edx
	mov [esp], edx
	call AIL_stream_sample_handle
	mov [ebp-0x210], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x214]
	mov [esp], ecx
	call AIL_stream_info
	mov eax, [ebp-0x20]
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	add eax, 0x2
	mov [ebp-0x204], eax
	mov edx, [ebp-0x210]
	mov [esp], edx
	call AIL_sample_playback_rate
	mov [ebp-0x20c], eax
	mov ecx, [ebp+0x8]
	cmp byte [ecx+0x31], 0x0
	jz SND_StartAliasStreamOnChannel_60
	cvtsi2ss xmm0, eax
	mulss xmm0, [ecx+0x20]
	mov eax, g_snd
	mulss xmm0, [eax+0x10]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x224]
	cvttss2si eax, [ebp-0x224]
	mov [esp+0x4], eax
	mov eax, [ebp-0x210]
	mov [esp], eax
	call AIL_set_sample_playback_rate
SND_StartAliasStreamOnChannel_200:
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov ebx, [esi+0x30]
	mov edx, g_snd
	movss xmm0, dword [eax+0x1c]
	mulss xmm0, [edx+0x4024]
	movss [ebp-0x208], xmm0
	mov ecx, [edx+0x4c44]
	mov eax, ebx
	and eax, 0x3f00
	sar eax, 0x8
	lea eax, [eax+eax*2]
	mulss xmm0, [ecx+eax*4]
	movss [ebp-0x208], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x4c74]
	jp SND_StartAliasStreamOnChannel_70
	jz SND_StartAliasStreamOnChannel_80
SND_StartAliasStreamOnChannel_70:
	mov eax, [ebp+0x8]
	cmp byte [eax+0x30], 0x0
	jz SND_StartAliasStreamOnChannel_90
SND_StartAliasStreamOnChannel_80:
	movzx eax, byte [esi+0x30]
	and al, 0x1
	xor al, 0x1
	movzx eax, al
	mov [esp+0x4], eax
	mov edx, [ebp-0x214]
	mov [esp], edx
	call AIL_set_stream_loop_count
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	test edx, edx
	jz SND_StartAliasStreamOnChannel_100
	mov eax, snd_enableReverb
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SND_StartAliasStreamOnChannel_110
SND_StartAliasStreamOnChannel_210:
	xor eax, eax
SND_StartAliasStreamOnChannel_220:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov eax, [ebp-0x210]
	mov [esp], eax
	call AIL_set_sample_reverb_levels
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x214]
	mov [esp], edx
	call AIL_stream_ms_position
	mov ecx, [ebp+0x8]
	mov edi, [ecx+0x24]
	mov ebx, [ebp-0x1c]
	cmp edi, ebx
	jge SND_StartAliasStreamOnChannel_120
	test ebx, ebx
	jz SND_StartAliasStreamOnChannel_130
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax+0x28]
	ucomiss xmm1, [_float_0_00000000]
	jp SND_StartAliasStreamOnChannel_140
	jnz SND_StartAliasStreamOnChannel_140
	test edi, edi
	jnz SND_StartAliasStreamOnChannel_150
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test byte [eax+0x30], 0x20
	jnz SND_StartAliasStreamOnChannel_160
SND_StartAliasStreamOnChannel_230:
	mov [esp+0x4], edi
	mov eax, [ebp-0x214]
	mov [esp], eax
	call AIL_set_stream_ms_position
	mov edx, [ebp+0x8]
	mov eax, [edx+0x2c]
	test eax, eax
	jnz SND_StartAliasStreamOnChannel_170
SND_StartAliasStreamOnChannel_240:
	mov ecx, g_snd
	cmp byte [ecx+0x2], 0x0
	jz SND_StartAliasStreamOnChannel_180
	mov esi, [edx]
	mov eax, [esi+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	cmp byte [eax+ecx+0x4d1c], 0x0
	jz SND_StartAliasStreamOnChannel_180
	mov edx, [ebp+0x8]
	jmp SND_StartAliasStreamOnChannel_190
SND_StartAliasStreamOnChannel_20:
	mov dword [esp+0x8], 0x80
	lea ebx, [ebp-0xf8]
	mov [esp+0x4], ebx
	mov [esp], esi
	call Com_GetSoundFileName
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_tried_to_play_st
	mov dword [esp], 0x9
	call Com_DPrintf
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call SND_SetPlaybackIdNotPlayed
	mov ebx, eax
SND_StartAliasStreamOnChannel_290:
	mov eax, ebx
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartAliasStreamOnChannel_10:
	mov ebx, 0xffffffff
	mov eax, ebx
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartAliasStreamOnChannel_60:
	cvtsi2ss xmm0, dword [ebp-0x20c]
	mulss xmm0, [ecx+0x20]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x228]
	cvttss2si eax, [ebp-0x228]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x210]
	mov [esp], ecx
	call AIL_set_sample_playback_rate
	jmp SND_StartAliasStreamOnChannel_200
SND_StartAliasStreamOnChannel_110:
	test byte [edx+0x30], 0x10
	jnz SND_StartAliasStreamOnChannel_210
SND_StartAliasStreamOnChannel_100:
	mov eax, g_snd
	mov eax, [eax+0x4cd8]
	mov eax, [eax+0x10]
	jmp SND_StartAliasStreamOnChannel_220
SND_StartAliasStreamOnChannel_90:
	and bl, 0x4
	jz SND_StartAliasStreamOnChannel_80
	mov eax, [esi+0x34]
	mov [esp], eax
	call SND_GetLerpedSlavePercentage
	fstp dword [ebp-0x21c]
	movss xmm0, dword [ebp-0x208]
	mulss xmm0, [ebp-0x21c]
	movss [ebp-0x208], xmm0
	mov eax, [ebp+0x8]
	mov esi, [eax]
	jmp SND_StartAliasStreamOnChannel_80
SND_StartAliasStreamOnChannel_140:
	cvtsi2ss xmm0, ebx
	mulss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x22c]
	cvttss2si edi, [ebp-0x22c]
SND_StartAliasStreamOnChannel_410:
	test edi, edi
	jz SND_StartAliasStreamOnChannel_230
SND_StartAliasStreamOnChannel_150:
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x2c], 0x0
	mov [esp+0x4], edi
	mov eax, [ebp-0x214]
	mov [esp], eax
	call AIL_set_stream_ms_position
	mov edx, [ebp+0x8]
	mov eax, [edx+0x2c]
	test eax, eax
	jz SND_StartAliasStreamOnChannel_240
SND_StartAliasStreamOnChannel_170:
	mov esi, [edx]
SND_StartAliasStreamOnChannel_190:
	mov eax, [edx+0x2c]
	add [ebp-0x1c], eax
	xor eax, eax
	test byte [esi+0x30], 0x1
	cmovz eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	mov ecx, [ebp+0xc]
	lea edx, [ecx+ecx*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	mov [ebp-0x234], eax
	mov edx, g_snd
	lea esi, [eax+edx+0x6250]
	lea ebx, [esi+0xc]
	mov edx, [ebp+0x8]
	add edx, 0x10
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x10]
	mov [esi+0xc], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SND_SetChannelStartInfo
	mov dword [esp+0x14], 0x2
	mov [esp+0x10], edi
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov edx, [ebp-0x20c]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x204]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SND_SetSoundFileChannelInfo
	mov edi, [ebp-0x234]
	add edi, g_snd
	mov eax, [edi+0x6248]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	mov [esp], eax
	call SND_IsAliasChannel3D
	test al, al
	jz SND_StartAliasStreamOnChannel_250
	mov edx, [edi+0x6200]
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x234]
	mov eax, g_snd
	lea ecx, [ecx+eax+0x6268]
	mov [esp+0x4], ecx
	mov [esp], edx
	call SND_GetCurrent3DPosition
	mov [esp], ebx
	call SND_GetListenerIndexNearestToOrigin
	mov edx, eax
	lea eax, [eax*8]
	shl edx, 0x6
	sub edx, eax
	mov eax, g_snd
	lea ebx, [edx+eax+0x4d50]
	movss xmm0, dword [esi+0xc]
	subss xmm0, [ebx+0xc]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [esi+0x10]
	subss xmm0, [ebx+0x10]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [esi+0x14]
	subss xmm0, [ebx+0x14]
	movss [ebp-0x28], xmm0
	lea edx, [ebp-0x78]
	mov [esp+0x8], edx
	lea eax, [ebx+0x18]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call MatrixTransposeTransformVector
	mov ecx, [ebp-0x220]
	mov eax, [ecx*4+milesGlob+0xa4]
	mov [esp], eax
	call AIL_stream_sample_handle
	mov edx, [ebp-0x78]
	mov [esp+0xc], edx
	mov edx, [ebp-0x70]
	mov [esp+0x8], edx
	mov edx, [ebp-0x74]
	xor edx, 0x80000000
	mov [esp+0x4], edx
	mov [esp], eax
	call AIL_set_sample_3D_position
	mov eax, [edi+0x6248]
	mov edx, [edi+0x624c]
	movss xmm3, dword [ebx+0xc]
	subss xmm3, [esi+0xc]
	movss xmm5, dword [ebx+0x10]
	subss xmm5, [esi+0x10]
	movss xmm6, dword [ebx+0x14]
	subss xmm6, [esi+0x14]
	movss xmm4, dword [edi+0x6258]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm4
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x2c]
	movaps xmm2, xmm4
	mulss xmm2, [edx+0x2c]
	addss xmm1, xmm2
	movss [esp+0xc], xmm1
	mulss xmm0, [eax+0x28]
	mulss xmm4, [edx+0x28]
	addss xmm0, xmm4
	movss [esp+0x8], xmm0
	mulss xmm3, xmm3
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm6, xmm6
	addss xmm3, xmm6
	sqrtss xmm3, xmm3
	movss [esp+0x4], xmm3
	mov eax, [eax+0x48]
	mov [esp], eax
	call SND_Attenuate
	fstp dword [ebp-0x1fc]
	movss xmm0, dword [ebp-0x208]
	mulss xmm0, [ebp-0x1fc]
	movss [ebp-0x208], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov dword [esp+0xc], 0x1
	mov eax, [edx+0x28]
	mov [esp+0x8], eax
	mov eax, [edx+0x2c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x210]
	mov [esp], edx
	call AIL_set_sample_3D_distances
	mov ecx, [ebp+0x8]
	mov ebx, [ecx]
	cmp byte [milesGlob+0x8c8], 0x0
	jnz SND_StartAliasStreamOnChannel_260
SND_StartAliasStreamOnChannel_300:
	mov ecx, [ebp-0x220]
	mov eax, [ecx*4+milesGlob+0xa4]
	mov [esp], eax
	call AIL_stream_sample_handle
	mov ebx, eax
	mov eax, [ebp+0xc]
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	add eax, g_snd
	cmp dword [eax+0x61f4], 0x2
	jz SND_StartAliasStreamOnChannel_270
	mov eax, [eax+0x6248]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	mov [esp], eax
	call SND_IsAliasChannel3D
	test al, al
	jnz SND_StartAliasStreamOnChannel_280
SND_StartAliasStreamOnChannel_270:
	movss xmm0, dword [ebp-0x208]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call AIL_set_sample_volume_levels
SND_StartAliasStreamOnChannel_350:
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SND_AcquirePlaybackId
	mov ebx, eax
	cmp eax, 0xffffffff
	jz SND_StartAliasStreamOnChannel_290
	mov edx, [ebp-0x200]
	mov [esp], edx
	call SND_AddVoice
	mov eax, ebx
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartAliasStreamOnChannel_180:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x214]
	mov [esp], eax
	call AIL_pause_stream
	mov edx, [ebp+0x8]
	jmp SND_StartAliasStreamOnChannel_170
SND_StartAliasStreamOnChannel_120:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SND_SetPlaybackIdNotPlayed
	mov ebx, eax
	mov eax, ebx
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartAliasStreamOnChannel_250:
	mov eax, [ebp-0x204]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [eax+0x58]
	mov [esp], eax
	call Com_GetSpeakerMap
	mov ebx, eax
	test eax, eax
	jz SND_StartAliasStreamOnChannel_300
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0x78]
	mov [esp], ecx
	call memset
	mov eax, [ebx]
	test eax, eax
	jle SND_StartAliasStreamOnChannel_310
	mov edx, ebx
	xor ecx, ecx
	pxor xmm3, xmm3
SND_StartAliasStreamOnChannel_320:
	movss xmm1, dword [edx+0x10]
	movss xmm2, dword [edx+0xc]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp+ecx*4-0x78], xmm0
	add ecx, 0x1
	mov eax, [ebx]
	add edx, 0x10
	cmp eax, ecx
	jg SND_StartAliasStreamOnChannel_320
SND_StartAliasStreamOnChannel_310:
	mov [esp+0x8], eax
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov edx, [ebp-0x210]
	mov [esp], edx
	call AIL_set_sample_channel_levels
	jmp SND_StartAliasStreamOnChannel_300
SND_StartAliasStreamOnChannel_130:
	lea edx, [ebp-0x1f8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_sound_file
	mov dword [esp], 0x1
	call Com_PrintError
SND_StartAliasStreamOnChannel_340:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call SND_SetPlaybackIdNotPlayed
	mov ebx, eax
	mov eax, ebx
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_StartAliasStreamOnChannel_50:
	lea edx, [ebp-0x1f8]
	mov [esp], edx
	call FS_ShortOSFilePath
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov eax, [milesGlob]
	mov [esp], eax
	call AIL_open_stream
	mov [ebp-0x214], eax
	test eax, eax
	jnz SND_StartAliasStreamOnChannel_330
	jmp SND_StartAliasStreamOnChannel_340
SND_StartAliasStreamOnChannel_280:
	movss xmm0, dword [ebp-0x208]
	mulss xmm0, [_float_0_50000000]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call AIL_set_sample_volume_levels
	jmp SND_StartAliasStreamOnChannel_350
SND_StartAliasStreamOnChannel_260:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x210]
	mov [esp], eax
	call AIL_sample_channel_levels
	mov eax, [ebp-0x24]
	test eax, eax
	jle SND_StartAliasStreamOnChannel_360
	xor eax, eax
	mov edx, [ebp-0x24]
SND_StartAliasStreamOnChannel_370:
	mov dword [ebp+eax*4-0x78], 0x3f800000
	add eax, 0x1
	cmp edx, eax
	jg SND_StartAliasStreamOnChannel_370
SND_StartAliasStreamOnChannel_360:
	movss xmm0, dword [ebx+0x40]
	ucomiss xmm0, [_float_0_00000000]
	jp SND_StartAliasStreamOnChannel_380
	jz SND_StartAliasStreamOnChannel_390
SND_StartAliasStreamOnChannel_380:
	cmp byte [milesGlob+0x8c8], 0x0
	jz SND_StartAliasStreamOnChannel_390
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mov eax, [ebp-0x24]
	test eax, eax
	jle SND_StartAliasStreamOnChannel_390
	mov ecx, 0x1
	mov esi, [ebp-0x24]
	lea edx, [ebp-0x78]
	add edx, 0x4
SND_StartAliasStreamOnChannel_400:
	movaps xmm0, xmm1
	mulss xmm0, [edx-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	add edx, 0x4
	cmp esi, eax
	jg SND_StartAliasStreamOnChannel_400
	movss xmm0, dword [ebx+0x40]
SND_StartAliasStreamOnChannel_390:
	movss [ebp-0x70], xmm0
	mov eax, [ebx+0x3c]
	mov [ebp-0x6c], eax
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x210]
	mov [esp], ecx
	call AIL_set_sample_channel_levels
	jmp SND_StartAliasStreamOnChannel_300
SND_StartAliasStreamOnChannel_160:
	call randomf
	fstp dword [ebp-0x218]
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp-0x218]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x230]
	cvttss2si edi, [ebp-0x230]
	and edi, 0xffffff80
	jmp SND_StartAliasStreamOnChannel_410


;SND_UpdateStreamChannelReverb(int)
SND_UpdateStreamChannelReverb:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_stream_sample_handle
	mov esi, eax
	mov ecx, g_snd
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	mov edx, [ecx+eax*4+0x6248]
	test edx, edx
	jz SND_UpdateStreamChannelReverb_10
	mov eax, snd_enableReverb
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SND_UpdateStreamChannelReverb_20
	test byte [edx+0x30], 0x10
	jnz SND_UpdateStreamChannelReverb_20
SND_UpdateStreamChannelReverb_10:
	mov eax, [ecx+0x4cd8]
	mov eax, [eax+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov [esp], esi
	call AIL_set_sample_reverb_levels
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SND_UpdateStreamChannelReverb_20:
	xor eax, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3f800000
	mov [esp], esi
	call AIL_set_sample_reverb_levels
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SND_GetStreamChannelPlaybackRate(int)
SND_GetStreamChannelPlaybackRate:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_stream_sample_handle
	mov [ebp+0x8], eax
	leave
	jmp AIL_sample_playback_rate
	nop


;SND_SetStreamChannelFromSaveInfo(int, snd_save_stream_t*)
SND_SetStreamChannelFromSaveInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, g_snd
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [esi+0x4024]
	movss [ebp-0x1c], xmm0
	mov eax, [ebx*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_stream_sample_handle
	mov edi, eax
	lea ebx, [ebx+ebx*4]
	lea eax, [ebx*8]
	sub eax, ebx
	lea eax, [esi+eax*4]
	cmp dword [eax+0x61f4], 0x2
	jz SND_SetStreamChannelFromSaveInfo_10
	mov eax, [eax+0x6248]
	mov eax, [eax+0x30]
	and eax, 0x3f00
	sar eax, 0x8
	mov [esp], eax
	call SND_IsAliasChannel3D
	test al, al
	jnz SND_SetStreamChannelFromSaveInfo_20
SND_SetStreamChannelFromSaveInfo_10:
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov [esp], edi
	call AIL_set_sample_volume_levels
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_SetStreamChannelFromSaveInfo_20:
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_0_50000000]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm0
	mov [esp], edi
	call AIL_set_sample_volume_levels
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_SetStreamChannelPlaybackRate(int, int)
SND_SetStreamChannelPlaybackRate:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov eax, [eax*4+milesGlob+0x4]
	mov [esp], eax
	call AIL_stream_sample_handle
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp AIL_set_sample_playback_rate


;Initialized global or static variables of snd_driver:
SECTION .data
snd_outputConfigurationStrings: dd _cstring_windows_default, _cstring_mono, _cstring_stereo, _cstring_4_speakers, _cstring_51_speakers, 0x0
mss_spec: dd 0x10, 0x1, 0x20, 0x50, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of snd_driver:
SECTION .rdata


;Zero initialized global or static variables of snd_driver:
SECTION .bss
milesGlob: resb 0x8cc
snd_outputConfiguration: resb 0x4
snd_khz: resb 0x30


;All cstrings:
SECTION .rdata
_cstring_the_game_sound_f:		db "The game sound frequency.",0
_cstring_snd_khz:		db "snd_khz",0
_cstring_miles:		db "miles",0
_cstring_sound_output_con:		db "Sound output configuration",0
_cstring_snd_outputconfig:		db "snd_outputConfiguration",0
_cstring_attempting_i_khz:		db "Attempting %i kHz %i bit [%s] sound",0ah,0
_cstring_error_couldnt_in:		db "ERROR: Couldn",27h,"t initialize digital driver: %s",0ah,0
_cstring_r_vc_compile:		db "r_vc_compile",0
_cstring_miles_sound_syst:		db "Miles sound system initialization failed",0ah,0
_cstring_miles_sound_samp:		db 015h,"MILES sound sample allocation failed on channel %i",0ah,0
_cstring_sounds:		db "sound/%s",0
_cstring_mp3:		db ".mp3",0
_cstring_tried_to_play_st:		db "Tried to play streamed sound ",27h,"%s",27h," from alias ",27h,"%s",27h,", but it was not found at load time.",0ah,0
_cstring_error_sound_file:		db "ERROR: Sound file ",27h,"%s",27h," is zero length, invalid",0ah,0
_cstring_windows_default:		db "Windows default",0
_cstring_mono:		db "Mono",0
_cstring_stereo:		db "Stereo",0
_cstring_4_speakers:		db "4 speakers",0
_cstring_51_speakers:		db "5.1 speakers",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000000:		dd 0x0	; 0

