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
	global AIL_WAV_info
	global AIL_allocate_sample_handle
	global AIL_close_stream
	global AIL_digital_CPU_percent
	global AIL_end_sample
	global AIL_init_sample
	global AIL_last_error
	global AIL_open_digital_driver
	global AIL_open_stream
	global AIL_pause_stream
	global AIL_resume_sample
	global AIL_sample_3D_position
	global AIL_sample_channel_levels
	global AIL_sample_ms_position
	global AIL_sample_playback_rate
	global AIL_sample_status
	global AIL_sample_volume_levels
	global AIL_sample_volume_pan
	global AIL_set_3D_distance_factor
	global AIL_set_3D_rolloff_factor
	global AIL_set_digital_master_reverb_levels
	global AIL_set_file_callbacks
	global AIL_set_preference
	global AIL_set_redist_directory
	global AIL_set_room_type
	global AIL_set_sample_3D_distances
	global AIL_set_sample_3D_position
	global AIL_set_sample_address
	global AIL_set_sample_channel_levels
	global AIL_set_sample_info
	global AIL_set_sample_loop_count
	global AIL_set_sample_ms_position
	global AIL_set_sample_playback_rate
	global AIL_set_sample_reverb_levels
	global AIL_set_sample_volume_levels
	global AIL_set_speaker_configuration
	global AIL_set_stream_loop_count
	global AIL_set_stream_ms_position
	global AIL_shutdown
	global AIL_speaker_configuration
	global AIL_startup
	global AIL_stop_sample
	global AIL_stream_info
	global AIL_stream_ms_position
	global AIL_stream_sample_handle
	global AIL_stream_status
	global _Z19AIL_UpdateAllSoundsv
	global gMinDataBufferSize


SECTION .text


;AIL_WAV_info
AIL_WAV_info:
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
	jae AIL_WAV_info_10
AIL_WAV_info_110:
	mov edx, edi
	mov eax, [edi]
	bswap eax
	mov ebx, [edi+0x4]
	add edi, 0x8
	cmp eax, 0x656c6d31
	jz AIL_WAV_info_20
	ja AIL_WAV_info_30
	cmp eax, 0x50414420
	jz AIL_WAV_info_20
	jbe AIL_WAV_info_40
	cmp eax, 0x62657874
	jz AIL_WAV_info_20
	cmp eax, 0x64617461
	jz AIL_WAV_info_50
	cmp eax, 0x52494646
	jz AIL_WAV_info_60
AIL_WAV_info_10:
	cmp [ebp-0x18], edi
	ja AIL_WAV_info_70
	mov ebx, [esi+0x4]
	test ebx, ebx
	jz AIL_WAV_info_80
AIL_WAV_info_70:
	xor eax, eax
AIL_WAV_info_140:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AIL_WAV_info_30:
	cmp eax, 0x6d696e66
	jz AIL_WAV_info_20
	ja AIL_WAV_info_90
	cmp eax, 0x66616374
	jz AIL_WAV_info_20
	cmp eax, 0x666d7420
	jz AIL_WAV_info_100
	cmp eax, 0x656c6d6f
	jnz AIL_WAV_info_10
AIL_WAV_info_20:
	add edi, ebx
AIL_WAV_info_120:
	cmp edi, [ebp-0x18]
	jb AIL_WAV_info_110
	jmp AIL_WAV_info_10
AIL_WAV_info_80:
	mov dword [esi+0x4], 0xffffffff
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AIL_WAV_info_40:
	cmp eax, 0x4a554e4b
	jz AIL_WAV_info_20
	cmp eax, 0x4c495354
	jnz AIL_WAV_info_10
	jmp AIL_WAV_info_20
AIL_WAV_info_90:
	cmp eax, 0x7265676e
	jz AIL_WAV_info_20
	cmp eax, 0x756d6964
	jz AIL_WAV_info_20
	cmp eax, 0x6f767766
	jnz AIL_WAV_info_10
	jmp AIL_WAV_info_20
AIL_WAV_info_60:
	mov eax, [edx+0x8]
	bswap eax
	lea edi, [edx+0xc]
	cmp eax, 0x57415645
	jnz AIL_WAV_info_10
	jmp AIL_WAV_info_120
AIL_WAV_info_50:
	mov eax, [esi+0x14]
	mov [ebp-0x1c], eax
	test eax, eax
	jz AIL_WAV_info_130
	mov ecx, [esi+0x10]
	test ecx, ecx
	jz AIL_WAV_info_130
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
AIL_WAV_info_170:
	add edi, ebx
	test al, al
	jz AIL_WAV_info_10
	mov eax, 0x1
	jmp AIL_WAV_info_140
AIL_WAV_info_100:
	cmp ebx, 0xf
	jbe AIL_WAV_info_10
	movzx eax, word [edx+0x8]
	cmp ax, 0x1
	jz AIL_WAV_info_150
	cmp ax, 0x11
	jz AIL_WAV_info_160
	mov eax, 0x1
AIL_WAV_info_180:
	add edi, ebx
	test al, al
	jz AIL_WAV_info_120
	jmp AIL_WAV_info_10
AIL_WAV_info_130:
	xor eax, eax
	jmp AIL_WAV_info_170
AIL_WAV_info_150:
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
	jmp AIL_WAV_info_180
AIL_WAV_info_160:
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
	jmp AIL_WAV_info_180
	add [eax], al


;AIL_allocate_sample_handle
AIL_allocate_sample_handle:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	test edx, edx
	jz AIL_allocate_sample_handle_10
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine16NewSampleSound3DEv
AIL_allocate_sample_handle_10:
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine14NewSampleSoundEv


;AIL_close_stream
AIL_close_stream:
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
	jz AIL_close_stream_10
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x8]
	leave
	jmp ecx
AIL_close_stream_10:
	leave
	ret
	nop


;AIL_digital_CPU_percent
AIL_digital_CPU_percent:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine15get_cpu_percentEv
	nop


;AIL_end_sample
AIL_end_sample:
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
	jz AIL_end_sample_10
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x18]
	leave
	jmp ecx
AIL_end_sample_10:
	leave
	ret
	nop


;AIL_init_sample
AIL_init_sample:
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
	jz AIL_init_sample_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject11init_sampleEij
AIL_init_sample_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_last_error
AIL_last_error:
	push ebp
	mov ebp, esp
	mov eax, _cstring_mac_audio_error
	pop ebp
	ret


;AIL_open_digital_driver
AIL_open_digital_driver:
	push ebp
	mov ebp, esp
	mov eax, 0x4d444449
	pop ebp
	ret


;AIL_open_stream
AIL_open_stream:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov eax, [ebp+0xc]
	test eax, eax
	jz AIL_open_stream_10
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
	jz AIL_open_stream_20
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine16NewSampleSound3DEv
	mov ebx, eax
AIL_open_stream_60:
	test ebx, ebx
	jz AIL_open_stream_30
	mov eax, [ebx]
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [eax+0x28]
	test al, al
	jz AIL_open_stream_40
	mov eax, ebx
AIL_open_stream_10:
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
AIL_open_stream_20:
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call access
	test eax, eax
	jz AIL_open_stream_50
AIL_open_stream_30:
	xor eax, eax
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
AIL_open_stream_40:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	xor eax, eax
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
AIL_open_stream_50:
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14NewStreamSoundEv
	mov ebx, eax
	jmp AIL_open_stream_60


;AIL_pause_stream
AIL_pause_stream:
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
	jz AIL_pause_stream_10
	test ebx, ebx
	jz AIL_pause_stream_20
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x10]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
AIL_pause_stream_20:
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x14]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
AIL_pause_stream_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_resume_sample
AIL_resume_sample:
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
	jz AIL_resume_sample_10
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x14]
	leave
	jmp ecx
AIL_resume_sample_10:
	leave
	ret
	nop


;AIL_sample_3D_position
AIL_sample_3D_position:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz AIL_sample_3D_position_10
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN12CSoundObject15get_3D_positionEPfS0_S0_
AIL_sample_3D_position_10:
	xor eax, eax
	leave
	ret
	nop


;AIL_sample_channel_levels
AIL_sample_channel_levels:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	xor eax, eax
	pop ebp
	ret


;AIL_sample_ms_position
AIL_sample_ms_position:
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
	jz AIL_sample_ms_position_10
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
AIL_sample_ms_position_10:
	test ebx, ebx
	jz AIL_sample_ms_position_20
	mov dword [ebx], 0x0
AIL_sample_ms_position_20:
	test esi, esi
	jz AIL_sample_ms_position_30
	mov dword [esi], 0x0
AIL_sample_ms_position_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_sample_playback_rate
AIL_sample_playback_rate:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz AIL_sample_playback_rate_10
	mov [ebp+0x8], eax
	leave
	jmp _ZN12CSoundObject24get_sample_playback_rateEv
AIL_sample_playback_rate_10:
	xor eax, eax
	leave
	ret
	nop


;AIL_sample_status
AIL_sample_status:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	test eax, eax
	jz AIL_sample_status_10
	mov [ebp+0x8], eax
	leave
	jmp _ZN12CSoundObject17get_sample_statusEv
AIL_sample_status_10:
	mov eax, 0x1
	leave
	ret


;AIL_sample_volume_levels
AIL_sample_volume_levels:
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
	jz AIL_sample_volume_levels_10
	mov [ebp+0x10], esi
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject24get_sample_volume_levelsEPfS0_
AIL_sample_volume_levels_10:
	test ebx, ebx
	jz AIL_sample_volume_levels_20
	mov dword [ebx], 0x3f000000
AIL_sample_volume_levels_20:
	test esi, esi
	jz AIL_sample_volume_levels_30
	mov dword [esi], 0x3f000000
AIL_sample_volume_levels_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_sample_volume_pan
AIL_sample_volume_pan:
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
	jz AIL_sample_volume_pan_10
	mov [ebp+0x10], esi
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject21get_sample_volume_panEPfS0_
AIL_sample_volume_pan_10:
	test ebx, ebx
	jz AIL_sample_volume_pan_20
	mov dword [ebx], 0x3f000000
AIL_sample_volume_pan_20:
	test esi, esi
	jz AIL_sample_volume_pan_30
	mov dword [esi], 0x3f000000
AIL_sample_volume_pan_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_3D_distance_factor
AIL_set_3D_distance_factor:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine22set_3D_distance_factorEf
	nop


;AIL_set_3D_rolloff_factor
AIL_set_3D_rolloff_factor:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine21set_3D_rolloff_factorEf
	nop


;AIL_set_digital_master_reverb_levels
AIL_set_digital_master_reverb_levels:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine32set_digital_master_reverb_levelsEff
	nop


;AIL_set_file_callbacks
AIL_set_file_callbacks:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _ZN12CSampleSound18set_file_callbacksEPFjPKcPjEPFvjEPFijijEPFjjPvjE
	nop


;AIL_set_preference
AIL_set_preference:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine11mixer_countEv
	nop


;AIL_set_redist_directory
AIL_set_redist_directory:
	push ebp
	mov ebp, esp
	mov eax, _cstring_null
	pop ebp
	ret


;AIL_set_room_type
AIL_set_room_type:
	push ebp
	mov ebp, esp
	mov eax, [sSoundEngine]
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundEngine16set_3D_room_typeEi
	nop


;AIL_set_sample_3D_distances
AIL_set_sample_3D_distances:
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
	jz AIL_set_sample_3D_distances_10
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
AIL_set_sample_3D_distances_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;AIL_set_sample_3D_position
AIL_set_sample_3D_position:
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
	jz AIL_set_sample_3D_position_10
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
AIL_set_sample_3D_position_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;AIL_set_sample_address
AIL_set_sample_address:
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
	jz AIL_set_sample_address_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject18set_sample_addressEPKvj
AIL_set_sample_address_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_sample_channel_levels
AIL_set_sample_channel_levels:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;AIL_set_sample_info
AIL_set_sample_info:
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
	jz AIL_set_sample_info_10
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
AIL_set_sample_info_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_sample_loop_count
AIL_set_sample_loop_count:
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
	jz AIL_set_sample_loop_count_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN12CSoundObject21set_sample_loop_countEj
AIL_set_sample_loop_count_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_set_sample_ms_position
AIL_set_sample_ms_position:
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
	jz AIL_set_sample_ms_position_10
	mov eax, [eax]
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edx
	mov ecx, [eax+0x20]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
AIL_set_sample_ms_position_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_set_sample_playback_rate
AIL_set_sample_playback_rate:
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
	jz AIL_set_sample_playback_rate_10
	mov eax, [eax]
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edx
	mov ecx, [eax+0x24]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
AIL_set_sample_playback_rate_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_set_sample_reverb_levels
AIL_set_sample_reverb_levels:
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
	jz AIL_set_sample_reverb_levels_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject24set_sample_reverb_levelsEff
AIL_set_sample_reverb_levels_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_sample_volume_levels
AIL_set_sample_volume_levels:
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
	jz AIL_set_sample_volume_levels_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN12CSoundObject24set_sample_volume_levelsEff
AIL_set_sample_volume_levels_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_set_speaker_configuration
AIL_set_speaker_configuration:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;AIL_set_stream_loop_count
AIL_set_stream_loop_count:
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
	jz AIL_set_stream_loop_count_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN12CSoundObject21set_sample_loop_countEj
AIL_set_stream_loop_count_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_set_stream_ms_position
AIL_set_stream_ms_position:
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
	jz AIL_set_stream_ms_position_10
	mov eax, [eax]
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edx
	mov ecx, [eax+0x20]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
AIL_set_stream_ms_position_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;AIL_shutdown
AIL_shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sSoundEngine]
	test eax, eax
	jz AIL_shutdown_10
	xor eax, eax
	cmp byte [sHighQualityEngine], 0x0
	setnz al
	mov [esp+0x4], eax
	mov eax, [kHighQualityKey]
	mov [esp], eax
	call _ZN14MacPreferences10PutBooleanEPKcb
	mov edx, [sSoundEngine]
	test edx, edx
	jz AIL_shutdown_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
AIL_shutdown_20:
	mov dword [sSoundEngine], 0x0
AIL_shutdown_10:
	leave
	ret


;AIL_speaker_configuration
AIL_speaker_configuration:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz AIL_speaker_configuration_10
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZNK12CSoundEngine15GetChannelCountEv
	mov [ebx], eax
AIL_speaker_configuration_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;AIL_startup
AIL_startup:
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
	ja AIL_startup_10
	lea eax, [ebp-0xc]
AIL_startup_20:
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
AIL_startup_30:
	xor eax, eax
	cmp dword [sSoundEngine], 0x0
	setnz al
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
AIL_startup_10:
	lea eax, [ebp+0x8]
	jmp AIL_startup_20
	mov esi, eax
AIL_startup_40:
	mov [esp], esi
	call __cxa_begin_catch
	mov dword [sSoundEngine], 0x0
	call __cxa_end_catch
	jmp AIL_startup_30
	mov esi, eax
	mov [esp], ebx
	call _ZdlPv
	jmp AIL_startup_40


;AIL_stop_sample
AIL_stop_sample:
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
	jz AIL_stop_sample_10
	mov eax, [eax]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x10]
	leave
	jmp ecx
AIL_stop_sample_10:
	leave
	ret
	nop


;AIL_stream_info
AIL_stream_info:
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
	jz AIL_stream_info_10
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
AIL_stream_info_10:
	test ebx, ebx
	jz AIL_stream_info_20
	mov dword [ebx], 0x0
AIL_stream_info_20:
	test esi, esi
	jz AIL_stream_info_30
	mov dword [esi], 0x0
AIL_stream_info_30:
	test edi, edi
	jz AIL_stream_info_40
	mov dword [edi], 0x0
AIL_stream_info_40:
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz AIL_stream_info_50
	mov eax, [ebp-0x1c]
	mov dword [eax], 0x0
AIL_stream_info_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;AIL_stream_ms_position
AIL_stream_ms_position:
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
	jz AIL_stream_ms_position_10
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
AIL_stream_ms_position_10:
	test ebx, ebx
	jz AIL_stream_ms_position_20
	mov dword [ebx], 0x0
AIL_stream_ms_position_20:
	test esi, esi
	jz AIL_stream_ms_position_30
	mov dword [esi], 0x0
AIL_stream_ms_position_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AIL_stream_sample_handle
AIL_stream_sample_handle:
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
AIL_stream_status:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sSoundEngine]
	mov [esp], eax
	call _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	test eax, eax
	jz AIL_stream_status_10
	mov [ebp+0x8], eax
	leave
	jmp _ZN12CSoundObject17get_sample_statusEv
AIL_stream_status_10:
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

