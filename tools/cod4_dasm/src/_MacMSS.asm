;Imports of MacMSS:
	extern _ZN12CSoundEngine16NewSampleSound3DEv
	extern _ZN12CSoundEngine14NewSampleSoundEv
	extern _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	extern _ZN12CSoundEngine15get_cpu_percentEv
	extern _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	extern _ZN12CSoundObject11init_sampleEij
	extern _ZN8MacFiles9CleanPathEPKcPci
	extern _Z6strlwrPc
	extern strstr
	extern access
	extern _ZN12CSoundEngine14NewStreamSoundEv
	extern _ZN12CSoundObject15get_3D_positionEPfS0_S0_
	extern _ZN12CSoundObject24get_sample_playback_rateEv
	extern _ZN12CSoundObject17get_sample_statusEv
	extern _ZN12CSoundObject24get_sample_volume_levelsEPfS0_
	extern _ZN12CSoundObject21get_sample_volume_panEPfS0_
	extern _ZN12CSoundEngine22set_3D_distance_factorEf
	extern _ZN12CSoundEngine21set_3D_rolloff_factorEf
	extern _ZN12CSoundEngine32set_digital_master_reverb_levelsEff
	extern _ZN12CSampleSound18set_file_callbacksEPFjPKcPjEPFvjEPFijijEPFjjPvjE
	extern _ZN12CSoundEngine11mixer_countEv
	extern _ZN12CSoundEngine16set_3D_room_typeEi
	extern _ZN12CSoundObject23set_3D_sample_distancesEffi
	extern _ZN12CSoundObject15set_3D_positionEfff
	extern _ZN12CSoundObject18set_sample_addressEPKvj
	extern _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO
	extern _ZN12CSoundObject21set_sample_loop_countEj
	extern _ZN12CSoundObject24set_sample_reverb_levelsEff
	extern _ZN12CSoundObject24set_sample_volume_levelsEff
	extern _ZN14MacPreferences10PutBooleanEPKcb
	extern _ZNK12CSoundEngine15GetChannelCountEv
	extern _ZN14MacPreferences10GetBooleanEPKcb
	extern _Znwm
	extern _ZN12CSoundEngineC1Emh
	extern __cxa_begin_catch
	extern __cxa_end_catch
	extern _ZdlPv
	extern _ZN12CSoundObject15get_stream_infoEPiS0_S0_S0_
	extern _ZN12CSoundEngine15UpdateAllSoundsEv

;Exports of MacMSS:
	global sSoundEngine
	global kHighQualityKey
	global sHighQualityEngine
	global sPaused
	global iAIL_WAV_info
	global iAIL_allocate_sample_handle
	global iAIL_close_stream
	global iAIL_digital_CPU_percent
	global iAIL_end_sample
	global iAIL_init_sample
	global iAIL_last_error
	global iAIL_open_digital_driver
	global iAIL_open_stream
	global iAIL_pause_stream
	global iAIL_resume_sample
	global iAIL_sample_3D_position
	global iAIL_sample_channel_levels
	global iAIL_sample_ms_position
	global iAIL_sample_playback_rate
	global iAIL_sample_status
	global iAIL_sample_volume_levels
	global iAIL_sample_volume_pan
	global iAIL_set_3D_distance_factor
	global iAIL_set_3D_rolloff_factor
	global iAIL_set_digital_master_reverb_levels
	global iAIL_set_file_callbacks
	global iAIL_set_preference
	global iAIL_set_redist_directory
	global iAIL_set_room_type
	global iAIL_set_sample_3D_distances
	global iAIL_set_sample_3D_position
	global iAIL_set_sample_address
	global iAIL_set_sample_channel_levels
	global iAIL_set_sample_info
	global iAIL_set_sample_loop_count
	global iAIL_set_sample_ms_position
	global iAIL_set_sample_playback_rate
	global iAIL_set_sample_reverb_levels
	global iAIL_set_sample_volume_levels
	global iAIL_set_speaker_configuration
	global iAIL_set_stream_loop_count
	global iAIL_set_stream_ms_position
	global iAIL_shutdown
	global iAIL_speaker_configuration
	global iAIL_startup
	global iAIL_stop_sample
	global iAIL_stream_info
	global iAIL_stream_ms_position
	global iAIL_stream_sample_handle
	global iAIL_stream_status
	global _Z19AIL_UpdateAllSoundsv
	global gMinDataBufferSize


SECTION .text


;AIL_WAV_info
iAIL_WAV_info:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov esi, [ebp+0xc]
	cld
	mov ecx, 0x9
	xor eax, eax
	mov edi, esi
	rep stosd
	mov edi, [ebp+0x8]
	mov edx, [gMinDataBufferSize]
	mov eax, 0x7fffffff
	test edx, edx
	cmovnz eax, edx
	mov dword [gMinDataBufferSize], 0x0
	lea eax, [edi+eax]
	mov [ebp-0x18], eax
	cmp edi, eax
	jae iAIL_WAV_info_10
iAIL_WAV_info_110:
	mov edx, edi
	mov eax, [edi]
	bswap eax
	mov ebx, [edi+0x4]
	add edi, 0x8
	cmp eax, 0x656c6d31
	jz iAIL_WAV_info_20
	ja iAIL_WAV_info_30
	cmp eax, 0x50414420
	jz iAIL_WAV_info_20
	jbe iAIL_WAV_info_40
	cmp eax, 0x62657874
	jz iAIL_WAV_info_20
	cmp eax, 0x64617461
	jz iAIL_WAV_info_50
	cmp eax, 0x52494646
	jz iAIL_WAV_info_60
iAIL_WAV_info_10:
	cmp [ebp-0x18], edi
	ja iAIL_WAV_info_70
	mov ebx, [esi+0x4]
	test ebx, ebx
	jz iAIL_WAV_info_80
iAIL_WAV_info_70:
	xor eax, eax
iAIL_WAV_info_140:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iAIL_WAV_info_30:
	cmp eax, 0x6d696e66
	jz iAIL_WAV_info_20
	ja iAIL_WAV_info_90
	cmp eax, 0x66616374
	jz iAIL_WAV_info_20
	cmp eax, 0x666d7420
	jz iAIL_WAV_info_100
	cmp eax, 0x656c6d6f
	jnz iAIL_WAV_info_10
iAIL_WAV_info_20:
	add edi, ebx
iAIL_WAV_info_120:
	cmp edi, [ebp-0x18]
	jb iAIL_WAV_info_110
	jmp iAIL_WAV_info_10
iAIL_WAV_info_80:
	mov dword [esi+0x4], 0xffffffff
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iAIL_WAV_info_40:
	cmp eax, 0x4a554e4b
	jz iAIL_WAV_info_20
	cmp eax, 0x4c495354
	jnz iAIL_WAV_info_10
	jmp iAIL_WAV_info_20
iAIL_WAV_info_90:
	cmp eax, 0x7265676e
	jz iAIL_WAV_info_20
	cmp eax, 0x756d6964
	jz iAIL_WAV_info_20
	cmp eax, 0x6f767766
	jnz iAIL_WAV_info_10
	jmp iAIL_WAV_info_20
iAIL_WAV_info_60:
	mov eax, [edx+0x8]
	bswap eax
	lea edi, [edx+0xc]
	cmp eax, 0x57415645
	jnz iAIL_WAV_info_10
	jmp iAIL_WAV_info_120
iAIL_WAV_info_50:
	mov eax, [esi+0x14]
	mov [ebp-0x1c], eax
	test eax, eax
	jz iAIL_WAV_info_130
	mov ecx, [esi+0x10]
	test ecx, ecx
	jz iAIL_WAV_info_130
	mov [esi+0x4], edi
	mov [esi+0x8], ebx
	mov eax, ebx
	xor edx, edx
	div dword [ebp-0x1c]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], ecx
	add ecx, 0x7
	cmp dword [ebp-0x1c], 0xffffffff
	cmovg ecx, [ebp-0x1c]
	mov [ebp-0x1c], ecx
	sar dword [ebp-0x1c], 0x3
	xor edx, edx
	div dword [ebp-0x1c]
	mov [esi+0x18], eax
	mov dword [esi+0x20], 0x0
	mov eax, 0x1
iAIL_WAV_info_170:
	add edi, ebx
	test al, al
	jz iAIL_WAV_info_10
	mov eax, 0x1
	jmp iAIL_WAV_info_140
iAIL_WAV_info_100:
	cmp ebx, 0xf
	jbe iAIL_WAV_info_10
	movzx eax, word [edx+0x8]
	cmp ax, 0x1
	jz iAIL_WAV_info_150
	cmp ax, 0x11
	jz iAIL_WAV_info_160
	mov eax, 0x1
iAIL_WAV_info_180:
	add edi, ebx
	test al, al
	jz iAIL_WAV_info_120
	jmp iAIL_WAV_info_10
iAIL_WAV_info_130:
	xor eax, eax
	jmp iAIL_WAV_info_170
iAIL_WAV_info_150:
	movzx eax, word [edi+0xc]
	mov [ebp-0x14], eax
	movzx edx, word [edi+0x2]
	movzx eax, word [edi+0xe]
	mov ecx, [edi+0x4]
	mov dword [esi], 0x1
	mov [esi+0xc], ecx
	mov [esi+0x10], eax
	mov [esi+0x14], edx
	mov eax, [ebp-0x14]
	mov [esi+0x1c], eax
	xor eax, eax
	jmp iAIL_WAV_info_180
iAIL_WAV_info_160:
	movzx edx, word [edi+0xc]
	mov [ebp-0x10], edx
	movzx edx, word [edi+0x2]
	movzx eax, word [edi+0xe]
	mov ecx, [edi+0x4]
	mov dword [esi], 0x11
	mov [esi+0xc], ecx
	mov [esi+0x10], eax
	mov [esi+0x14], edx
	mov eax, [ebp-0x10]
	mov [esi+0x1c], eax
	xor eax, eax
	jmp iAIL_WAV_info_180
	add [eax], al


;AIL_allocate_sample_handle
iAIL_allocate_sample_handle:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	test edx, edx
	jz iAIL_allocate_sample_handle_10
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine16NewSampleSound3DEv
iAIL_allocate_sample_handle_10:
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine14NewSampleSoundEv


;AIL_close_stream
iAIL_close_stream:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	mov edx, eax
	test eax, eax
	jz iAIL_close_stream_10
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x8]
	leave
	jmp ecx
iAIL_close_stream_10:
	leave
	ret
	nop


;AIL_digital_CPU_percent
iAIL_digital_CPU_percent:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine15get_cpu_percentEv
	nop


;AIL_end_sample
iAIL_end_sample:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	mov edx, eax
	test eax, eax
	jz iAIL_end_sample_10
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x18]
	leave
	jmp ecx
iAIL_end_sample_10:
	leave
	ret
	nop


;AIL_init_sample
iAIL_init_sample:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_init_sample_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject11init_sampleEij
iAIL_init_sample_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_last_error
iAIL_last_error:
	push ebp
	mov ebp, esp
	mov eax, _cstring_mac_audio_error
	pop ebp
	ret


;AIL_open_digital_driver
iAIL_open_digital_driver:
	push ebp
	mov ebp, esp
	mov eax, 0x4d444449
	pop ebp
	ret


;AIL_open_stream
iAIL_open_stream:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov eax, [ebp+0xc]
	test eax, eax
	jz iAIL_open_stream_10
	mov dword [esp+0x8], 0x400
	lea esi, [ebp-0x408]
	mov [esp+0x4], esi
	mov [esp], eax
	call _ZN8MacFiles9CleanPathEPKcPci
	mov [esp], esi
	call _Z6strlwrPc
	mov dword [esp+0x4], _cstring_wav
	mov [esp], esi
	call strstr
	test eax, eax
	jz iAIL_open_stream_20
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine16NewSampleSound3DEv
	mov ebx, eax
iAIL_open_stream_60:
	test ebx, ebx
	jz iAIL_open_stream_30
	mov eax, [ebx]
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [eax+0x28]
	test al, al
	jz iAIL_open_stream_40
	mov eax, ebx
iAIL_open_stream_10:
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
iAIL_open_stream_20:
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call access
	test eax, eax
	jz iAIL_open_stream_50
iAIL_open_stream_30:
	xor eax, eax
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
iAIL_open_stream_40:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	xor eax, eax
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
iAIL_open_stream_50:
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14NewStreamSoundEv
	mov ebx, eax
	jmp iAIL_open_stream_60


;AIL_pause_stream
iAIL_pause_stream:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	mov edx, eax
	test eax, eax
	jz iAIL_pause_stream_10
	test ebx, ebx
	jz iAIL_pause_stream_20
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x10]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
iAIL_pause_stream_20:
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x14]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
iAIL_pause_stream_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_resume_sample
iAIL_resume_sample:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	mov edx, eax
	test eax, eax
	jz iAIL_resume_sample_10
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x14]
	leave
	jmp ecx
iAIL_resume_sample_10:
	leave
	ret
	nop


;AIL_sample_3D_position
iAIL_sample_3D_position:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_sample_3D_position_10
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN12CSoundObject15get_3D_positionEPfS0_S0_
iAIL_sample_3D_position_10:
	xor eax, eax
	leave
	ret
	nop


;AIL_sample_channel_levels
iAIL_sample_channel_levels:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	xor eax, eax
	pop ebp
	ret


;AIL_sample_ms_position
iAIL_sample_ms_position:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	mov edx, eax
	test eax, eax
	jz iAIL_sample_ms_position_10
	mov eax, [eax]
	mov [ebp+0x10], esi
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edx
	mov ecx, [eax+0x1c]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
iAIL_sample_ms_position_10:
	test ebx, ebx
	jz iAIL_sample_ms_position_20
	mov dword [ebx], 0x0
iAIL_sample_ms_position_20:
	test esi, esi
	jz iAIL_sample_ms_position_30
	mov dword [esi], 0x0
iAIL_sample_ms_position_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_sample_playback_rate
iAIL_sample_playback_rate:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_sample_playback_rate_10
	mov [ebp+0x8], eax
	leave
	jmp _ZN12CSoundObject24get_sample_playback_rateEv
iAIL_sample_playback_rate_10:
	xor eax, eax
	leave
	ret
	nop


;AIL_sample_status
iAIL_sample_status:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_sample_status_10
	mov [ebp+0x8], eax
	leave
	jmp _ZN12CSoundObject17get_sample_statusEv
iAIL_sample_status_10:
	mov eax, 0x1
	leave
	ret


;AIL_sample_volume_levels
iAIL_sample_volume_levels:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_sample_volume_levels_10
	mov [ebp+0x10], esi
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject24get_sample_volume_levelsEPfS0_
iAIL_sample_volume_levels_10:
	test ebx, ebx
	jz iAIL_sample_volume_levels_20
	mov dword [ebx], 0x3f000000
iAIL_sample_volume_levels_20:
	test esi, esi
	jz iAIL_sample_volume_levels_30
	mov dword [esi], 0x3f000000
iAIL_sample_volume_levels_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_sample_volume_pan
iAIL_sample_volume_pan:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_sample_volume_pan_10
	mov [ebp+0x10], esi
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject21get_sample_volume_panEPfS0_
iAIL_sample_volume_pan_10:
	test ebx, ebx
	jz iAIL_sample_volume_pan_20
	mov dword [ebx], 0x3f000000
iAIL_sample_volume_pan_20:
	test esi, esi
	jz iAIL_sample_volume_pan_30
	mov dword [esi], 0x3f000000
iAIL_sample_volume_pan_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_3D_distance_factor
iAIL_set_3D_distance_factor:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine22set_3D_distance_factorEf
	nop


;AIL_set_3D_rolloff_factor
iAIL_set_3D_rolloff_factor:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine21set_3D_rolloff_factorEf
	nop


;AIL_set_digital_master_reverb_levels
iAIL_set_digital_master_reverb_levels:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine32set_digital_master_reverb_levelsEff
	nop


;AIL_set_file_callbacks
iAIL_set_file_callbacks:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _ZN12CSampleSound18set_file_callbacksEPFjPKcPjEPFvjEPFijijEPFjjPvjE
	nop


;AIL_set_preference
iAIL_set_preference:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine11mixer_countEv
	nop


;AIL_set_redist_directory
iAIL_set_redist_directory:
	push ebp
	mov ebp, esp
	mov eax, _cstring_null
	pop ebp
	ret


;AIL_set_room_type
iAIL_set_room_type:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine16set_3D_room_typeEi
	nop


;AIL_set_sample_3D_distances
iAIL_set_sample_3D_distances:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_set_sample_3D_distances_10
	mov [ebp+0x14], ebx
	mov [ebp+0x10], esi
	mov [ebp+0xc], edi
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZN12CSoundObject23set_3D_sample_distancesEffi
iAIL_set_sample_3D_distances_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;AIL_set_sample_3D_position
iAIL_set_sample_3D_position:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_set_sample_3D_position_10
	mov [ebp+0x14], ebx
	mov [ebp+0x10], esi
	mov [ebp+0xc], edi
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZN12CSoundObject15set_3D_positionEfff
iAIL_set_sample_3D_position_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;AIL_set_sample_address
iAIL_set_sample_address:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_set_sample_address_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject18set_sample_addressEPKvj
iAIL_set_sample_address_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_sample_channel_levels
iAIL_set_sample_channel_levels:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;AIL_set_sample_info
iAIL_set_sample_info:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	mov ebx, eax
	test eax, eax
	jz iAIL_set_sample_info_10
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN12CSoundObject11init_sampleEij
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO
iAIL_set_sample_info_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_sample_loop_count
iAIL_set_sample_loop_count:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_set_sample_loop_count_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN12CSoundObject21set_sample_loop_countEj
iAIL_set_sample_loop_count_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_set_sample_ms_position
iAIL_set_sample_ms_position:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	mov edx, eax
	test eax, eax
	jz iAIL_set_sample_ms_position_10
	mov eax, [eax]
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edx
	mov ecx, [eax+0x20]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
iAIL_set_sample_ms_position_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_set_sample_playback_rate
iAIL_set_sample_playback_rate:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	mov edx, eax
	test eax, eax
	jz iAIL_set_sample_playback_rate_10
	mov eax, [eax]
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edx
	mov ecx, [eax+0x24]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
iAIL_set_sample_playback_rate_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_set_sample_reverb_levels
iAIL_set_sample_reverb_levels:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_set_sample_reverb_levels_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject24set_sample_reverb_levelsEff
iAIL_set_sample_reverb_levels_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_sample_volume_levels
iAIL_set_sample_volume_levels:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz iAIL_set_sample_volume_levels_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject24set_sample_volume_levelsEff
iAIL_set_sample_volume_levels_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_speaker_configuration
iAIL_set_speaker_configuration:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;AIL_set_stream_loop_count
iAIL_set_stream_loop_count:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	test eax, eax
	jz iAIL_set_stream_loop_count_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN12CSoundObject21set_sample_loop_countEj
iAIL_set_stream_loop_count_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_set_stream_ms_position
iAIL_set_stream_ms_position:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	mov edx, eax
	test eax, eax
	jz iAIL_set_stream_ms_position_10
	mov eax, [eax]
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edx
	mov ecx, [eax+0x20]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
iAIL_set_stream_ms_position_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_shutdown
iAIL_shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sSoundEngine]
	test eax, eax
	jz iAIL_shutdown_10
	xor eax, eax
	cmp byte [sHighQualityEngine], 0x0
	setnz al
	mov [esp+0x4], eax
	mov eax, [kHighQualityKey]
	mov [esp], eax
	call _ZN14MacPreferences10PutBooleanEPKcb
	mov edx, [sSoundEngine]
	test edx, edx
	jz iAIL_shutdown_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
iAIL_shutdown_20:
	mov dword [sSoundEngine], 0x0
iAIL_shutdown_10:
	leave
	ret


;AIL_speaker_configuration
iAIL_speaker_configuration:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz iAIL_speaker_configuration_10
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZNK12CSoundEngine15GetChannelCountEv
	mov [ebx], eax
iAIL_speaker_configuration_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;AIL_startup
iAIL_startup:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	xor eax, eax
	cmp byte [sHighQualityEngine], 0x0
	setnz al
	mov [esp+0x4], eax
	mov eax, [kHighQualityKey]
	mov [esp], eax
	call _ZN14MacPreferences10GetBooleanEPKcb
	mov [sHighQualityEngine], al
	mov dword [ebp-0xc], 0x40
	cmp dword [ebp+0x8], 0x3f
	ja iAIL_startup_10
	lea eax, [ebp-0xc]
iAIL_startup_20:
	mov esi, [eax]
	mov dword [esp], 0x1fc
	call _Znwm
	mov ebx, eax
	movzx eax, byte [sHighQualityEngine]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN12CSoundEngineC1Emh
	mov [sSoundEngine], ebx
iAIL_startup_30:
	xor eax, eax
	cmp dword [sSoundEngine], 0x0
	setnz al
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
iAIL_startup_10:
	lea eax, [ebp+0x8]
	jmp iAIL_startup_20
	mov esi, eax
iAIL_startup_40:
	mov [esp], esi
	call __cxa_begin_catch
	mov dword [sSoundEngine], 0x0
	call __cxa_end_catch
	jmp iAIL_startup_30
	mov esi, eax
	mov [esp], ebx
	call _ZdlPv
	jmp iAIL_startup_40


;AIL_stop_sample
iAIL_stop_sample:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	mov edx, eax
	test eax, eax
	jz iAIL_stop_sample_10
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x10]
	leave
	jmp ecx
iAIL_stop_sample_10:
	leave
	ret
	nop


;AIL_stream_info
iAIL_stream_info:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov eax, [ebp+0x18]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	test eax, eax
	jz iAIL_stream_info_10
	mov edx, [ebp-0x1c]
	mov [ebp+0x18], edx
	mov [ebp+0x14], edi
	mov [ebp+0x10], esi
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZN12CSoundObject15get_stream_infoEPiS0_S0_S0_
iAIL_stream_info_10:
	test ebx, ebx
	jz iAIL_stream_info_20
	mov dword [ebx], 0x0
iAIL_stream_info_20:
	test esi, esi
	jz iAIL_stream_info_30
	mov dword [esi], 0x0
iAIL_stream_info_30:
	test edi, edi
	jz iAIL_stream_info_40
	mov dword [edi], 0x0
iAIL_stream_info_40:
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz iAIL_stream_info_50
	mov eax, [ebp-0x1c]
	mov dword [eax], 0x0
iAIL_stream_info_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;AIL_stream_ms_position
iAIL_stream_ms_position:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	mov edx, eax
	test eax, eax
	jz iAIL_stream_ms_position_10
	mov eax, [eax]
	mov [ebp+0x10], esi
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edx
	mov ecx, [eax+0x1c]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
iAIL_stream_ms_position_10:
	test ebx, ebx
	jz iAIL_stream_ms_position_20
	mov dword [ebx], 0x0
iAIL_stream_ms_position_20:
	test esi, esi
	jz iAIL_stream_ms_position_30
	mov dword [esi], 0x0
iAIL_stream_ms_position_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_stream_sample_handle
iAIL_stream_sample_handle:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	leave
	ret


;AIL_stream_status
iAIL_stream_status:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	test eax, eax
	jz iAIL_stream_status_10
	mov [ebp+0x8], eax
	leave
	jmp _ZN12CSoundObject17get_sample_statusEv
iAIL_stream_status_10:
	mov eax, 0x1
	leave
	ret


;AIL_UpdateAllSounds()
_Z19AIL_UpdateAllSoundsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sSoundEngine]
	test eax, eax
	jz _Z19AIL_UpdateAllSoundsv_10
	cmp byte [sPaused], 0x0
	jz _Z19AIL_UpdateAllSoundsv_20
_Z19AIL_UpdateAllSoundsv_10:
	leave
	ret
_Z19AIL_UpdateAllSoundsv_20:
	mov [esp], eax
	call _ZN12CSoundEngine15UpdateAllSoundsEv
	leave
	ret


;Initialized global or static variables of MacMSS:
SECTION .data
kHighQualityKey: dd _cstring_macsoundhighqual, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
gMinDataBufferSize: dd 0x0


;Initialized constant data of MacMSS:
SECTION .rdata


;Zero initialized global or static variables of MacMSS:
SECTION .bss
sSoundEngine: resb 0x4
sHighQualityEngine: resb 0x1
sPaused: resb 0x7b


;All cstrings:
SECTION .rdata
_cstring_mac_audio_error:		db "Mac audio error",0
_cstring_wav:		db ".wav",0
_cstring_null:		db 0
_cstring_macsoundhighqual:		db "mac.sound.high.quality",0



;All constant floats and doubles:
SECTION .rdata

