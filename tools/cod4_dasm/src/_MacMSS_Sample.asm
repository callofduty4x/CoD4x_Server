;Imports of MacMSS_Sample:
	extern _ZN11StMutexLockC1ER6CMutex
	extern _ZN12CSoundObject11init_sampleEij
	extern _ZN12CSoundObject18AUGetMixerPropertyEmPvm
	extern _ZNK12CSoundObject9Is3DSoundEv
	extern _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	extern _ZN11StMutexLockD1Ev
	extern _Unwind_Resume
	extern calloc
	extern gMinDataBufferSize
	extern iAIL_WAV_info
	extern free
	extern fread
	extern _ZN12CSoundEngine26minimum_sample_buffer_sizeEii
	extern malloc
	extern _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO
	extern _ZN12CSoundEngine14AddSoundObjectEP12CSoundObject
	extern _ZN12CSoundEngine10WakeEngineEv
	extern fseek
	extern _ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject
	extern fclose
	extern log10f
	extern _ZN12CSoundObject19AUSetMixerParameterEmf
	extern _ZNK12CSoundEngine12GetMixerUnitEv
	extern AudioUnitAddRenderNotify
	extern _ZN12CSampleSound21Calculate3DAttributesERfS0_S0_
	extern _ZNK12CSoundEngine25IsDistanceScalingRequiredEv
	extern _ZN12CSoundEngine22get_3D_distance_factorEv
	extern AudioUnitRemoveRenderNotify
	extern __cxa_begin_catch
	extern __cxa_end_catch
	extern _ZN12CSoundObject19sample_buffer_readyEv
	extern _ZN12CSoundObject18load_sample_bufferEjPKvj
	extern _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription
	extern AudioConverterDispose
	extern _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2_
	extern AudioConverterNew
	extern AudioConverterReset
	extern strcat
	extern access
	extern fopen
	extern fileno
	extern fcntl
	extern _ZN12CSoundObject7ReleaseEv
	extern memset
	extern AudioConverterFillComplexBuffer
	extern memcpy
	extern _ZN12CSoundObjectC2ER12CSoundEnginem
	extern usleep
	extern _ZN12CSoundObjectD2Ev
	extern _ZdlPv
	extern _ZTI12CSoundObject
	extern _ZN12CSoundObject22get_sample_ms_positionEPiS0_
	extern _ZN12CSoundObject22set_sample_ms_positionEi
	extern _ZN12CSoundObject24set_sample_playback_rateEi

;Exports of MacMSS_Sample:
	global _ZN12CSampleSound10InitSampleEmmmm
	global _ZN12CSampleSound10end_sampleEv
	global _ZN12CSampleSound11open_streamEPKc
	global _ZN12CSampleSound11stop_sampleEv
	global _ZN12CSampleSound12close_streamEv
	global _ZN12CSampleSound13ChangedFormatEv
	global _ZN12CSampleSound13ChangedVolumeEv
	global _ZN12CSampleSound13resume_sampleEv
	global _ZN12CSampleSound14Update3DValuesEv
	global _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	global _ZN12CSampleSound17Changed3DPositionEv
	global _ZN12CSampleSound17LoadStreamBuffersEi
	global _ZN12CSampleSound18AudioConverterProcEP20OpaqueAudioConverterPmP15AudioBufferListPP28AudioStreamPacketDescriptionPv
	global _ZN12CSampleSound18Changed3DDistancesEv
	global _ZN12CSampleSound18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	global _ZN12CSampleSound18UpdateStreamFormatEv
	global _ZN12CSampleSound18file_open_callbackEPKcPj
	global _ZN12CSampleSound18set_file_callbacksEPFjPKcPjEPFvjEPFijijEPFjjPvjE
	global _ZN12CSampleSound7ReleaseEv
	global _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList
	global _ZN12CSampleSound9DoConvertEPmP15AudioBufferList
	global _ZN12CSampleSound9TheadIdleEv
	global _ZN12CSampleSoundC1ER12CSoundEnginem
	global _ZN12CSampleSoundD0Ev
	global _ZN12CSampleSoundD1Ev
	global _ZTI12CSampleSound
	global _ZN12CSampleSound13sOpenCallbackE
	global _ZN12CSampleSound13sReadCallbackE
	global _ZN12CSampleSound13sSeekCallbackE
	global _ZN12CSampleSound14sCloseCallbackE
	global _ZTV12CSampleSound


SECTION .text


;CSampleSound::InitSample(unsigned long, unsigned long, unsigned long, unsigned long)
_ZN12CSampleSound10InitSampleEmmmm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	lea eax, [esi+0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockC1ER6CMutex
	mov byte [esi+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [esi+0x10], eax
	xor eax, eax
	mov [esi+0xa4], eax
	mov [esi+0xa0], eax
	mov [esi+0x9c], eax
	mov [esi+0xb0], eax
	mov [esi+0xac], eax
	mov [esi+0xa8], eax
	mov [esi+0xbc], eax
	mov [esi+0xb8], eax
	mov [esi+0xb4], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _ZN12CSoundObject11init_sampleEij
	mov dword [esp+0xc], 0x28
	lea edi, [ebp-0x48]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x8
	mov [esp], esi
	call _ZN12CSoundObject18AUGetMixerPropertyEmPvm
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSampleSound10InitSampleEmmmm_10
	mov [esp], esi
	call _ZNK12CSoundObject9Is3DSoundEv
	cmp al, 0x1
	sbb eax, eax
	not eax
	add eax, 0x2
	cmp eax, [ebp-0x2c]
	jz _ZN12CSampleSound10InitSampleEmmmm_20
	mov [ebp-0x2c], eax
	mov dword [esp+0xc], 0x28
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x8
	mov [esp], esi
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSampleSound10InitSampleEmmmm_10
_ZN12CSampleSound10InitSampleEmmmm_20:
	mov [esp], esi
	call _ZNK12CSoundObject9Is3DSoundEv
	test al, al
	jnz _ZN12CSampleSound10InitSampleEmmmm_30
	mov dword [ebp+0x10], 0x5
	mov dword [esp+0xc], 0x4
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbb8
	mov [esp], esi
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	mov ebx, eax
_ZN12CSampleSound10InitSampleEmmmm_10:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound10InitSampleEmmmm_30:
	mov dword [esp+0xc], 0x4
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbb8
	mov [esp], esi
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSampleSound10InitSampleEmmmm_10
	mov dword [esp+0xc], 0x4
	lea eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbbb
	mov [esp], esi
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSampleSound10InitSampleEmmmm_10
	mov dword [esp+0xc], 0x4
	lea eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbba
	mov [esp], esi
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSampleSound10InitSampleEmmmm_10
	mov byte [esi+0xf8], 0x1
	jmp _ZN12CSampleSound10InitSampleEmmmm_10
	mov ebx, eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CSampleSound::end_sample()
_ZN12CSampleSound10end_sampleEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	cmp dword [ebx+0x4c], 0x4
	jnz _ZN12CSampleSound10end_sampleEv_10
	mov dword [ebx+0x4c], 0x2
	mov dword [ebx+0x94], 0x0
	mov byte [ebx+0xf6], 0x1
_ZN12CSampleSound10end_sampleEv_10:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CSampleSound::open_stream(char const*)
_ZN12CSampleSound11open_streamEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x2c]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _ZN12CSoundObject11init_sampleEij
	lea eax, [esi+0xfc]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZN12CSampleSound18file_open_callbackEPKcPj
	test eax, eax
	jnz _ZN12CSampleSound11open_streamEPKc_10
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound11open_streamEPKc_10:
	mov dword [esp+0x4], 0x400
	mov dword [esp], 0x1
	call calloc
	mov [ebp-0x4c], eax
	mov edx, [esi+0xfc]
	cmp byte [esi+0x106], 0x0
	jnz _ZN12CSampleSound11open_streamEPKc_20
	mov eax, [_ZN12CSampleSound13sReadCallbackE]
	test eax, eax
	jz _ZN12CSampleSound11open_streamEPKc_30
	mov dword [esp+0x8], 0x400
	mov ecx, [ebp-0x4c]
	mov [esp+0x4], ecx
	mov [esp], edx
	call eax
_ZN12CSampleSound11open_streamEPKc_60:
	test eax, eax
	jz _ZN12CSampleSound11open_streamEPKc_30
	mov eax, gMinDataBufferSize
	mov dword [eax], 0x400
	lea ecx, [ebp-0x44]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call iAIL_WAV_info
	test eax, eax
	jnz _ZN12CSampleSound11open_streamEPKc_40
	cmp dword [ebp-0x40], 0xffffffff
	jz _ZN12CSampleSound11open_streamEPKc_50
_ZN12CSampleSound11open_streamEPKc_30:
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x2c]
	xor ebx, ebx
_ZN12CSampleSound11open_streamEPKc_110:
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call free
	mov eax, ebx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound11open_streamEPKc_20:
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call fread
	jmp _ZN12CSampleSound11open_streamEPKc_60
_ZN12CSampleSound11open_streamEPKc_40:
	mov eax, [ebp-0x40]
	sub eax, [ebp-0x4c]
	mov [esi+0x100], eax
	mov ecx, [esi+0xfc]
	cmp byte [esi+0x106], 0x0
	jnz _ZN12CSampleSound11open_streamEPKc_70
	mov edx, [_ZN12CSampleSound13sSeekCallbackE]
	test edx, edx
	jz _ZN12CSampleSound11open_streamEPKc_80
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], ecx
	call edx
_ZN12CSampleSound11open_streamEPKc_80:
	lea eax, [esi+0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockC1ER6CMutex
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [esi+0x4]
	mov [esp], eax
	call _ZN12CSoundEngine26minimum_sample_buffer_sizeEii
	cmp byte [esi+0x106], 0x1
	sbb edx, edx
	and edx, 0xfffffffc
	add edx, 0x8
	imul edx, eax
	mov [esi+0x11c], edx
	mov ebx, esi
	lea edi, [esi+0x14]
	mov eax, edx
	mov [esp], eax
	call malloc
	mov [ebx+0x108], eax
	add ebx, 0x4
	cmp edi, ebx
	jz _ZN12CSampleSound11open_streamEPKc_90
_ZN12CSampleSound11open_streamEPKc_100:
	mov eax, [esi+0x11c]
	mov [esp], eax
	call malloc
	mov [ebx+0x108], eax
	add ebx, 0x4
	cmp edi, ebx
	jnz _ZN12CSampleSound11open_streamEPKc_100
_ZN12CSampleSound11open_streamEPKc_90:
	mov dword [esi+0x120], 0x0
	mov ebx, [ebp-0x3c]
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	lea ecx, [ebp-0x44]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO
	mov [esi+0x98], ebx
	mov byte [esi+0x14], 0x1
	mov byte [esi+0x104], 0x1
	mov byte [esi+0x105], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _ZN12CSampleSound17LoadStreamBuffersEi
	mov [esp+0x4], esi
	mov eax, [esi+0x4]
	mov [esp], eax
	call _ZN12CSoundEngine14AddSoundObjectEP12CSoundObject
	mov eax, [esi+0x4]
	mov [esp], eax
	call _ZN12CSoundEngine10WakeEngineEv
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	mov ebx, 0x1
	jmp _ZN12CSampleSound11open_streamEPKc_110
_ZN12CSampleSound11open_streamEPKc_50:
	mov edx, [esi+0xfc]
	cmp byte [esi+0x106], 0x0
	jnz _ZN12CSampleSound11open_streamEPKc_120
	mov eax, [_ZN12CSampleSound13sSeekCallbackE]
	test eax, eax
	jz _ZN12CSampleSound11open_streamEPKc_130
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call eax
_ZN12CSampleSound11open_streamEPKc_130:
	mov dword [esp+0x4], 0x1400
	mov dword [esp], 0x1
	call calloc
	mov ebx, eax
	mov edx, [esi+0xfc]
	cmp byte [esi+0x106], 0x0
	jnz _ZN12CSampleSound11open_streamEPKc_140
	mov eax, [_ZN12CSampleSound13sReadCallbackE]
	test eax, eax
	jz _ZN12CSampleSound11open_streamEPKc_150
	mov dword [esp+0x8], 0x1400
	mov [esp+0x4], ebx
	mov [esp], edx
	call eax
_ZN12CSampleSound11open_streamEPKc_190:
	test eax, eax
	jnz _ZN12CSampleSound11open_streamEPKc_160
_ZN12CSampleSound11open_streamEPKc_150:
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x2c]
	mov [esp], ebx
	call free
	xor ebx, ebx
	jmp _ZN12CSampleSound11open_streamEPKc_110
_ZN12CSampleSound11open_streamEPKc_70:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], ecx
	call fseek
	jmp _ZN12CSampleSound11open_streamEPKc_80
_ZN12CSampleSound11open_streamEPKc_160:
	mov eax, gMinDataBufferSize
	mov dword [eax], 0x1400
	lea ecx, [ebp-0x44]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call iAIL_WAV_info
	test eax, eax
	jz _ZN12CSampleSound11open_streamEPKc_150
	mov eax, [ebp-0x40]
	sub eax, ebx
	mov [esi+0x100], eax
	mov ecx, [esi+0xfc]
	cmp byte [esi+0x106], 0x0
	jnz _ZN12CSampleSound11open_streamEPKc_170
	mov edx, [_ZN12CSampleSound13sSeekCallbackE]
	test edx, edx
	jz _ZN12CSampleSound11open_streamEPKc_180
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], ecx
	call edx
_ZN12CSampleSound11open_streamEPKc_180:
	mov [esp], ebx
	call free
	jmp _ZN12CSampleSound11open_streamEPKc_80
_ZN12CSampleSound11open_streamEPKc_140:
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1400
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call fread
	jmp _ZN12CSampleSound11open_streamEPKc_190
_ZN12CSampleSound11open_streamEPKc_120:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call fseek
	jmp _ZN12CSampleSound11open_streamEPKc_130
_ZN12CSampleSound11open_streamEPKc_170:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], ecx
	call fseek
	jmp _ZN12CSampleSound11open_streamEPKc_180
	mov esi, eax
	mov [esp], ebx
	call free
_ZN12CSampleSound11open_streamEPKc_200:
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call free
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	jmp _ZN12CSampleSound11open_streamEPKc_200
	mov esi, eax
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSound11open_streamEPKc_200
	nop


;CSampleSound::stop_sample()
_ZN12CSampleSound11stop_sampleEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	cmp dword [ebx+0x4c], 0x4
	jnz _ZN12CSampleSound11stop_sampleEv_10
	mov dword [ebx+0x4c], 0x8
	mov byte [ebx+0xf6], 0x1
_ZN12CSampleSound11stop_sampleEv_10:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CSampleSound::close_stream()
_ZN12CSampleSound12close_streamEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x104], 0x0
	jnz _ZN12CSampleSound12close_streamEv_10
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSampleSound12close_streamEv_10:
	mov [esp+0x4], ebx
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebx+0xfc]
	test eax, eax
	jz _ZN12CSampleSound12close_streamEv_20
	cmp byte [ebx+0x106], 0x0
	jnz _ZN12CSampleSound12close_streamEv_30
	mov edx, [_ZN12CSampleSound14sCloseCallbackE]
	test edx, edx
	jz _ZN12CSampleSound12close_streamEv_40
	mov [esp], eax
	call edx
_ZN12CSampleSound12close_streamEv_40:
	mov dword [ebx+0xfc], 0x0
_ZN12CSampleSound12close_streamEv_20:
	mov byte [ebx+0x104], 0x0
	mov byte [ebx+0x105], 0x1
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSampleSound12close_streamEv_30:
	mov [esp], eax
	call fclose
	mov byte [ebx+0x106], 0x0
	jmp _ZN12CSampleSound12close_streamEv_40
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume


;CSampleSound::ChangedFormat()
_ZN12CSampleSound13ChangedFormatEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0xf7], 0x1
	pop ebp
	ret
	nop


;CSampleSound::ChangedVolume()
_ZN12CSampleSound13ChangedVolumeEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx+0x54]
	addss xmm0, [ebx+0x58]
	mulss xmm0, [_float_0_50000000]
	mulss xmm0, [ebx+0x50]
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm0, xmm1
	jbe _ZN12CSampleSound13ChangedVolumeEv_10
	movaps xmm0, xmm1
_ZN12CSampleSound13ChangedVolumeEv_40:
	movss [esp], xmm0
	call log10f
	fstp dword [ebp-0xc]
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, [_float_20_00000000]
	movss xmm0, dword [_float__120_00000000]
	maxss xmm0, xmm1
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call _ZN12CSoundObject19AUSetMixerParameterEmf
	mov byte [ebx+0xf9], 0x0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN12CSampleSound13ChangedVolumeEv_10:
	ucomiss xmm0, [_float_0_00000000]
	jp _ZN12CSampleSound13ChangedVolumeEv_20
	jb _ZN12CSampleSound13ChangedVolumeEv_30
_ZN12CSampleSound13ChangedVolumeEv_20:
	ucomiss xmm0, [_float_0_00000000]
	ja _ZN12CSampleSound13ChangedVolumeEv_40
_ZN12CSampleSound13ChangedVolumeEv_30:
	mov byte [ebx+0xf9], 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CSampleSound::resume_sample()
_ZN12CSampleSound13resume_sampleEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebx+0x4c]
	cmp eax, 0x2
	jz _ZN12CSampleSound13resume_sampleEv_10
	cmp eax, 0x8
	jz _ZN12CSampleSound13resume_sampleEv_10
_ZN12CSampleSound13resume_sampleEv_50:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSampleSound13resume_sampleEv_10:
	mov dword [ebx+0x4c], 0x4
	mov [esp], ebx
	call _ZN12CSampleSound18UpdateStreamFormatEv
	mov [esp], ebx
	call _ZNK12CSoundObject9Is3DSoundEv
	test al, al
	jnz _ZN12CSampleSound13resume_sampleEv_20
_ZN12CSampleSound13resume_sampleEv_60:
	mov [esp], ebx
	call _ZNK12CSoundObject9Is3DSoundEv
	test al, al
	jnz _ZN12CSampleSound13resume_sampleEv_30
	cmp byte [ebx+0xf5], 0x0
	jz _ZN12CSampleSound13resume_sampleEv_40
_ZN12CSampleSound13resume_sampleEv_80:
	mov byte [ebx+0xf6], 0x0
	cmp byte [ebx+0x14], 0x0
	jz _ZN12CSampleSound13resume_sampleEv_50
_ZN12CSampleSound13resume_sampleEv_70:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZN12CSoundEngine10WakeEngineEv
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSampleSound13resume_sampleEv_20:
	mov [esp], ebx
	call _ZN12CSampleSound14Update3DValuesEv
	jmp _ZN12CSampleSound13resume_sampleEv_60
_ZN12CSampleSound13resume_sampleEv_40:
	mov dword [ebp-0x18], _ZN12CSampleSound18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	mov [ebp-0x14], ebx
	mov dword [esp+0xc], 0x8
	lea eax, [ebp-0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x17
	mov [esp], ebx
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine12GetMixerUnitEv
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	mov [esp], eax
	call AudioUnitAddRenderNotify
	mov byte [ebx+0xf5], 0x1
	mov byte [ebx+0xf6], 0x0
	cmp byte [ebx+0x14], 0x0
	jz _ZN12CSampleSound13resume_sampleEv_50
	jmp _ZN12CSampleSound13resume_sampleEv_70
_ZN12CSampleSound13resume_sampleEv_30:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x3c]
	cmp byte [ebx+0xf5], 0x0
	jnz _ZN12CSampleSound13resume_sampleEv_80
	jmp _ZN12CSampleSound13resume_sampleEv_40
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume


;CSampleSound::Update3DValues()
_ZN12CSampleSound14Update3DValuesEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0xf8], 0x0
	jnz _ZN12CSampleSound14Update3DValuesEv_10
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_ZN12CSampleSound14Update3DValuesEv_10:
	lea eax, [ebp-0x14]
	mov [esp+0xc], eax
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN12CSampleSound21Calculate3DAttributesERfS0_S0_
	mov eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZN12CSoundObject19AUSetMixerParameterEmf
	mov eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _ZN12CSoundObject19AUSetMixerParameterEmf
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine25IsDistanceScalingRequiredEv
	test al, al
	jnz _ZN12CSampleSound14Update3DValuesEv_20
_ZN12CSampleSound14Update3DValuesEv_30:
	mov eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call _ZN12CSoundObject19AUSetMixerParameterEmf
	mov byte [ebx+0xf8], 0x0
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_ZN12CSampleSound14Update3DValuesEv_20:
	movss xmm0, dword [ebx+0xc0]
	movss [ebp-0x20], xmm0
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZN12CSoundEngine22get_3D_distance_factorEv
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [_float_10_00000000]
	divss xmm0, dword [ebp-0x20]
	mulss xmm0, [ebp-0x14]
	movss [ebp-0x14], xmm0
	jmp _ZN12CSampleSound14Update3DValuesEv_30
	add [eax], al


;CSampleSound::RenderNotifyProc(void*, unsigned long*, AudioTimeStamp const*, unsigned long, unsigned long, AudioBufferList*)
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_10
	mov edx, [ebp+0xc]
	mov eax, [edx]
	test al, 0x4
	jnz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_20
	test al, 0x8
	jz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_30
	cmp byte [ebx+0xf6], 0x0
	jnz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_40
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_30:
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_20:
	cmp byte [ebx+0xf6], 0x0
	jz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_30
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x18]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	cmp byte [ebx+0xf5], 0x0
	jz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_50
	cmp byte [ebx+0xf6], 0x0
	jnz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_60
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_50:
	mov byte [ebx+0xf6], 0x0
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_30
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_40:
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	cmp byte [ebx+0xf5], 0x0
	jz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_50
	cmp byte [ebx+0xf6], 0x0
	jz _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_50
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine12GetMixerUnitEv
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	mov [esp], eax
	call AudioUnitRemoveRenderNotify
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x14], 0x0
	mov dword [esp+0xc], 0x8
	lea eax, [ebp-0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x17
	mov [esp], ebx
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	jmp _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_70
	mov ebx, eax
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_80:
	mov [esp], ebx
	call __cxa_begin_catch
	call __cxa_end_catch
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_10:
	mov eax, 0xffffffce
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_60:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine12GetMixerUnitEv
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	mov [esp], eax
	call AudioUnitRemoveRenderNotify
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [esp+0xc], 0x8
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x17
	mov [esp], ebx
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
_ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_70:
	mov byte [ebx+0xf5], 0x0
	jmp _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_50
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_80
	nop


;CSampleSound::Changed3DPosition()
_ZN12CSampleSound17Changed3DPositionEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0xf8], 0x1
	pop ebp
	ret
	nop


;CSampleSound::LoadStreamBuffers(int)
_ZN12CSampleSound17LoadStreamBuffersEi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	jg _ZN12CSampleSound17LoadStreamBuffersEi_10
_ZN12CSampleSound17LoadStreamBuffersEi_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound17LoadStreamBuffersEi_10:
	mov dword [ebp-0x2c], 0x0
_ZN12CSampleSound17LoadStreamBuffersEi_60:
	mov [esp], ebx
	call _ZN12CSoundObject19sample_buffer_readyEv
	mov esi, eax
	cmp eax, 0xffffffff
	jz _ZN12CSampleSound17LoadStreamBuffersEi_20
	mov ecx, [ebx+0x120]
	mov eax, [ebx+0x98]
	sub eax, ecx
	mov [ebp-0x20], eax
	mov edx, [ebx+0x11c]
	mov [ebp-0x1c], edx
	cmp eax, edx
	jge _ZN12CSampleSound17LoadStreamBuffersEi_30
	lea eax, [ebp-0x20]
	mov eax, [eax]
	cmp eax, 0x0
	jl _ZN12CSampleSound17LoadStreamBuffersEi_40
_ZN12CSampleSound17LoadStreamBuffersEi_70:
	jle _ZN12CSampleSound17LoadStreamBuffersEi_40
	lea ecx, [eax+ecx]
	mov [ebx+0x120], ecx
	mov edi, [ebx+esi*4+0x108]
	mov ecx, [ebx+0xfc]
	cmp byte [ebx+0x106], 0x0
	jnz _ZN12CSampleSound17LoadStreamBuffersEi_50
	mov edx, [_ZN12CSampleSound13sReadCallbackE]
	test edx, edx
	jz _ZN12CSampleSound17LoadStreamBuffersEi_40
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ecx
	call edx
_ZN12CSampleSound17LoadStreamBuffersEi_120:
	test eax, eax
	jle _ZN12CSampleSound17LoadStreamBuffersEi_40
	mov [esp+0xc], eax
	mov eax, [ebx+esi*4+0x108]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN12CSoundObject18load_sample_bufferEjPKvj
	add dword [ebp-0x2c], 0x1
	mov eax, [ebp-0x2c]
	cmp [ebp+0xc], eax
	jnz _ZN12CSampleSound17LoadStreamBuffersEi_60
	jmp _ZN12CSampleSound17LoadStreamBuffersEi_20
_ZN12CSampleSound17LoadStreamBuffersEi_30:
	lea eax, [ebp-0x1c]
	mov eax, [eax]
	cmp eax, 0x0
	jge _ZN12CSampleSound17LoadStreamBuffersEi_70
_ZN12CSampleSound17LoadStreamBuffersEi_40:
	mov eax, [ebx+0x64]
	cmp eax, 0x1
	jz _ZN12CSampleSound17LoadStreamBuffersEi_80
	test eax, eax
	jz _ZN12CSampleSound17LoadStreamBuffersEi_90
	sub eax, 0x1
	mov [ebx+0x64], eax
_ZN12CSampleSound17LoadStreamBuffersEi_90:
	mov edx, [ebx+0x100]
	mov ecx, [ebx+0xfc]
	cmp byte [ebx+0x106], 0x0
	jnz _ZN12CSampleSound17LoadStreamBuffersEi_100
	mov eax, [_ZN12CSampleSound13sSeekCallbackE]
	test eax, eax
	jz _ZN12CSampleSound17LoadStreamBuffersEi_110
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov [esp], ecx
	call eax
_ZN12CSampleSound17LoadStreamBuffersEi_110:
	mov dword [ebx+0x120], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound17LoadStreamBuffersEi_80:
	mov byte [ebx+0x105], 0x1
	jmp _ZN12CSampleSound17LoadStreamBuffersEi_20
_ZN12CSampleSound17LoadStreamBuffersEi_50:
	mov [esp+0xc], ecx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	jmp _ZN12CSampleSound17LoadStreamBuffersEi_120
_ZN12CSampleSound17LoadStreamBuffersEi_100:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov [esp], ecx
	call fseek
	jmp _ZN12CSampleSound17LoadStreamBuffersEi_110
	nop


;CSampleSound::AudioConverterProc(OpaqueAudioConverter*, unsigned long*, AudioBufferList*, AudioStreamPacketDescription**, void*)
_ZN12CSampleSound18AudioConverterProcEP20OpaqueAudioConverterPmP15AudioBufferListPP28AudioStreamPacketDescriptionPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x18]
	test eax, eax
	jz _ZN12CSampleSound18AudioConverterProcEP20OpaqueAudioConverterPmP15AudioBufferListPP28AudioStreamPacketDescriptionPv_10
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN12CSampleSound9DoConvertEPmP15AudioBufferList
	leave
	ret
	mov [esp], eax
	call __cxa_begin_catch
	call __cxa_end_catch
_ZN12CSampleSound18AudioConverterProcEP20OpaqueAudioConverterPmP15AudioBufferListPP28AudioStreamPacketDescriptionPv_10:
	mov eax, 0xffffffce
	leave
	ret
	nop


;CSampleSound::Changed3DDistances()
_ZN12CSampleSound18Changed3DDistancesEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x20]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	mov dword [esp+0xc], 0xc
	lea edi, [ebp-0x2c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0xbc2
	mov [esp], ebx
	call _ZN12CSoundObject18AUGetMixerPropertyEmPvm
	test eax, eax
	jnz _ZN12CSampleSound18Changed3DDistancesEv_10
	movss xmm0, dword [ebx+0xc4]
	movss [ebp-0x40], xmm0
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZN12CSoundEngine22get_3D_distance_factorEv
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, [ebp-0x40]
	movss xmm0, dword [ebx+0xc0]
	movss [ebp-0x3c], xmm0
	mov eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x68], xmm1
	call _ZN12CSoundEngine22get_3D_distance_factorEv
	movss xmm1, dword [ebp-0x68]
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [ebp-0x3c]
	ucomiss xmm1, xmm0
	jae _ZN12CSampleSound18Changed3DDistancesEv_20
	ucomiss xmm1, [ebp-0x2c]
	jnz _ZN12CSampleSound18Changed3DDistancesEv_30
_ZN12CSampleSound18Changed3DDistancesEv_50:
	jp _ZN12CSampleSound18Changed3DDistancesEv_30
	ucomiss xmm0, [ebp-0x28]
	jp _ZN12CSampleSound18Changed3DDistancesEv_30
	jz _ZN12CSampleSound18Changed3DDistancesEv_10
_ZN12CSampleSound18Changed3DDistancesEv_30:
	mov eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x58], xmm0
	movss [ebp-0x68], xmm1
	call _ZNK12CSoundEngine25IsDistanceScalingRequiredEv
	movss xmm1, dword [ebp-0x68]
	movss xmm0, dword [ebp-0x58]
	test al, al
	jnz _ZN12CSampleSound18Changed3DDistancesEv_40
_ZN12CSampleSound18Changed3DDistancesEv_60:
	movss [ebp-0x2c], xmm1
	movss [ebp-0x28], xmm0
	mov dword [ebp-0x24], 0x0
	mov dword [esp+0xc], 0xc
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0xbc2
	mov [esp], ebx
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
_ZN12CSampleSound18Changed3DDistancesEv_10:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound18Changed3DDistancesEv_20:
	movaps xmm0, xmm1
	addss xmm0, [_float_0_01000000]
	ucomiss xmm1, [ebp-0x2c]
	jz _ZN12CSampleSound18Changed3DDistancesEv_50
	jmp _ZN12CSampleSound18Changed3DDistancesEv_30
_ZN12CSampleSound18Changed3DDistancesEv_40:
	divss xmm1, xmm0
	movss xmm0, dword [_float_10_00000000]
	mulss xmm1, xmm0
	jmp _ZN12CSampleSound18Changed3DDistancesEv_60
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CSampleSound::RenderCallbackProc(void*, unsigned long*, AudioTimeStamp const*, unsigned long, unsigned long, AudioBufferList*)
_ZN12CSampleSound18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	test eax, eax
	jz _ZN12CSampleSound18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_10
	mov edx, [ebp+0x1c]
	mov [esp+0xc], edx
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList
	leave
	ret
	mov [esp], eax
	call __cxa_begin_catch
	call __cxa_end_catch
_ZN12CSampleSound18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_10:
	mov eax, 0xffffffce
	leave
	ret


;CSampleSound::UpdateStreamFormat()
_ZN12CSampleSound18UpdateStreamFormatEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0xf7], 0x0
	jnz _ZN12CSampleSound18UpdateStreamFormatEv_10
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound18UpdateStreamFormatEv_10:
	lea eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov eax, [ebx+0x90]
	mov [esp+0x4], eax
	mov eax, [ebx+0x60]
	mov [esp], eax
	call _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription
	mov dword [esp+0xc], 0x28
	lea edi, [ebp-0x68]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x8
	mov [esp], ebx
	call _ZN12CSoundObject18AUGetMixerPropertyEmPvm
	test eax, eax
	jz _ZN12CSampleSound18UpdateStreamFormatEv_20
_ZN12CSampleSound18UpdateStreamFormatEv_90:
	mov eax, [ebx+0xf0]
	test eax, eax
	jz _ZN12CSampleSound18UpdateStreamFormatEv_30
	mov [esp], eax
	call AudioConverterDispose
	mov dword [ebx+0xf0], 0x0
_ZN12CSampleSound18UpdateStreamFormatEv_30:
	mov byte [ebx+0xf4], 0x0
_ZN12CSampleSound18UpdateStreamFormatEv_80:
	mov byte [ebx+0xf7], 0x0
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound18UpdateStreamFormatEv_20:
	mov [esp+0x4], edi
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2_
	test al, al
	jnz _ZN12CSampleSound18UpdateStreamFormatEv_40
	mov byte [ebx+0xf4], 0x0
	mov eax, [ebx+0xf0]
	test eax, eax
	jz _ZN12CSampleSound18UpdateStreamFormatEv_50
	lea esi, [ebx+0xc8]
	mov [esp+0x4], esi
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2_
	test al, al
	jnz _ZN12CSampleSound18UpdateStreamFormatEv_60
_ZN12CSampleSound18UpdateStreamFormatEv_100:
	mov eax, [ebp-0x40]
	mov [ebx+0xc8], eax
	mov eax, [ebp-0x3c]
	mov [esi+0x4], eax
	mov eax, [ebp-0x38]
	mov [esi+0x8], eax
	mov eax, [ebp-0x34]
	mov [esi+0xc], eax
	mov eax, [ebp-0x30]
	mov [esi+0x10], eax
	mov eax, [ebp-0x2c]
	mov [esi+0x14], eax
	mov eax, [ebp-0x28]
	mov [esi+0x18], eax
	mov eax, [ebp-0x24]
	mov [esi+0x1c], eax
	mov eax, [ebp-0x20]
	mov [esi+0x20], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x24], eax
	mov eax, [ebx+0xf0]
	test eax, eax
	jz _ZN12CSampleSound18UpdateStreamFormatEv_70
	mov [esp], eax
	call AudioConverterDispose
	mov dword [ebx+0xf0], 0x0
_ZN12CSampleSound18UpdateStreamFormatEv_70:
	lea eax, [ebx+0xf0]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x40]
	mov [esp], eax
	call AudioConverterNew
	test eax, eax
	jz _ZN12CSampleSound18UpdateStreamFormatEv_80
	jmp _ZN12CSampleSound18UpdateStreamFormatEv_90
_ZN12CSampleSound18UpdateStreamFormatEv_40:
	mov byte [ebx+0xf4], 0x1
	lea eax, [ebx+0xc8]
	mov dword [ebx+0xc8], 0xffffffff
	mov dword [eax+0x4], 0xffffffff
	mov dword [eax+0x8], 0xffffffff
	mov dword [eax+0xc], 0xffffffff
	mov dword [eax+0x10], 0xffffffff
	mov dword [eax+0x14], 0xffffffff
	mov dword [eax+0x18], 0xffffffff
	mov dword [eax+0x1c], 0xffffffff
	mov dword [eax+0x20], 0xffffffff
	mov dword [eax+0x24], 0xffffffff
	jmp _ZN12CSampleSound18UpdateStreamFormatEv_80
_ZN12CSampleSound18UpdateStreamFormatEv_60:
	mov eax, [ebx+0xf0]
	mov [esp], eax
	call AudioConverterReset
	jmp _ZN12CSampleSound18UpdateStreamFormatEv_80
_ZN12CSampleSound18UpdateStreamFormatEv_50:
	lea esi, [ebx+0xc8]
	jmp _ZN12CSampleSound18UpdateStreamFormatEv_100
	nop


;CSampleSound::file_open_callback(char const*, unsigned int*)
_ZN12CSampleSound18file_open_callbackEPKcPj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov esi, [ebp+0xc]
	lea ebx, [ebp-0x408]
	mov dword [ebp-0x408], 0x6e69616d
	mov word [ebp-0x404], 0x2f
	mov [esp+0x4], esi
	mov [esp], ebx
	call strcat
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call access
	test eax, eax
	jz _ZN12CSampleSound18file_open_callbackEPKcPj_10
_ZN12CSampleSound18file_open_callbackEPKcPj_30:
	mov eax, [_ZN12CSampleSound13sOpenCallbackE]
	test eax, eax
	jz _ZN12CSampleSound18file_open_callbackEPKcPj_20
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], esi
	call eax
_ZN12CSampleSound18file_open_callbackEPKcPj_20:
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSampleSound18file_open_callbackEPKcPj_10:
	mov dword [esp+0x4], _cstring_rb
	mov [esp], ebx
	call fopen
	mov ebx, eax
	test eax, eax
	jz _ZN12CSampleSound18file_open_callbackEPKcPj_30
	mov [esp], eax
	call fileno
	cmp eax, 0xffffffff
	jz _ZN12CSampleSound18file_open_callbackEPKcPj_40
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2d
	mov [esp], eax
	call fcntl
_ZN12CSampleSound18file_open_callbackEPKcPj_40:
	mov eax, [ebp+0x8]
	mov byte [eax+0x106], 0x1
	mov edx, [ebp+0x10]
	mov [edx], ebx
	mov eax, 0x1
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;CSampleSound::set_file_callbacks(unsigned int (*)(char const*, unsigned int*), void (*)(unsigned int), int (*)(unsigned int, int, unsigned int), unsigned int (*)(unsigned int, void*, unsigned int))
_ZN12CSampleSound18set_file_callbacksEPFjPKcPjEPFvjEPFijijEPFjjPvjE:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [_ZN12CSampleSound13sOpenCallbackE], eax
	mov eax, [ebp+0xc]
	mov [_ZN12CSampleSound14sCloseCallbackE], eax
	mov eax, [ebp+0x10]
	mov [_ZN12CSampleSound13sSeekCallbackE], eax
	mov eax, [ebp+0x14]
	mov [_ZN12CSampleSound13sReadCallbackE], eax
	pop ebp
	ret
	nop


;CSampleSound::Release()
_ZN12CSampleSound7ReleaseEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _ZN12CSoundObject7ReleaseEv
	mov ebx, edi
	mov esi, 0x5
_ZN12CSampleSound7ReleaseEv_20:
	mov eax, [ebx+0x108]
	test eax, eax
	jz _ZN12CSampleSound7ReleaseEv_10
	mov [esp], eax
	call free
	mov dword [ebx+0x108], 0x0
_ZN12CSampleSound7ReleaseEv_10:
	add ebx, 0x4
	sub esi, 0x1
	jnz _ZN12CSampleSound7ReleaseEv_20
	mov dword [edi+0x11c], 0x0
	mov dword [edi+0x120], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CSampleSound::DoRender(unsigned long*, unsigned long, AudioBufferList*)
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x14]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN11StMutexLockC1ER6CMutex
	mov [esp], ebx
	call _ZN12CSampleSound18UpdateStreamFormatEv
	mov [esp], ebx
	call _ZNK12CSoundObject9Is3DSoundEv
	test al, al
	jnz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_10
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_100:
	mov eax, [ebx+0x4c]
	cmp eax, 0x2
	jz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_20
	cmp eax, 0x8
	jz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_20
	cmp byte [ebx+0xf9], 0x0
	jnz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_30
	mov eax, [ebx+0xf0]
	test eax, eax
	jz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_30
	cmp byte [ebx+0xf4], 0x0
	jz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_40
	mov dword [ebp-0x34], 0x1
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN12CSampleSound9DoConvertEPmP15AudioBufferList
	test eax, eax
	jnz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_50
	mov edx, [ebp-0x28]
	mov [ebp-0x48], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x44], eax
	mov eax, [edi]
	test eax, eax
	jnz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_60
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_190:
	mov eax, [ebp+0x10]
	cmp eax, [ebp-0x1c]
	jbe _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_70
	mov eax, [edi]
	test eax, eax
	jz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_70
	mov ebx, edi
	xor esi, esi
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_80:
	mov eax, [ebx+0x8]
	sub eax, [ebp-0x44]
	mov edx, [ebp-0x44]
	add edx, [ebx+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	add esi, 0x1
	add ebx, 0xc
	cmp esi, [edi]
	jb _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_80
	jmp _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_70
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_30:
	mov dword [ebp-0x34], 0x1
	mov edx, [ebp+0x10]
	mov [ebp-0x1c], edx
	lea eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN12CSampleSound9DoConvertEPmP15AudioBufferList
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_20:
	or dword [esi], 0x10
	mov eax, [edi]
	test eax, eax
	jnz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_90
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_70:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_10:
	mov [esp], ebx
	call _ZN12CSampleSound14Update3DValuesEv
	jmp _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_100
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_90:
	mov ebx, edi
	xor esi, esi
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_110:
	mov edx, [ebx+0xc]
	mov eax, [ebx+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	add esi, 0x1
	add ebx, 0xc
	cmp esi, [edi]
	jb _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_110
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_40:
	mov edx, [ebp+0x10]
	mov [ebp-0x1c], edx
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], edi
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _ZN12CSampleSound18AudioConverterProcEP20OpaqueAudioConverterPmP15AudioBufferListPP28AudioStreamPacketDescriptionPv
	mov eax, [ebx+0xf0]
	mov [esp], eax
	call AudioConverterFillComplexBuffer
	test eax, eax
	jnz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_50
	mov edx, [ebp-0x1c]
	cmp [ebp+0x10], edx
	jbe _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_70
	sub [ebp+0x10], edx
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov [ebp-0x40], eax
	mov esi, [edi]
	test esi, esi
	jnz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_120
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_220:
	cmp edx, 0x0
	jz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_130
	jl _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_140
	cvtsi2ss xmm0, edx
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_230:
	movss xmm3, dword [_float_1_00000000]
	movaps xmm2, xmm3
	divss xmm2, xmm0
	mov ecx, [edi]
	test ecx, ecx
	jz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_130
	mov ecx, edi
	xor esi, esi
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_170:
	mov eax, [ecx+0xc]
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_150
	movaps xmm1, xmm3
	xor edx, edx
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_160:
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	movss [eax], xmm0
	subss xmm1, xmm2
	add eax, 0x4
	add edx, 0x1
	cmp edx, [ebp-0x1c]
	jb _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_160
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_150:
	add esi, 0x1
	add ecx, 0xc
	cmp esi, [edi]
	jb _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_170
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_130:
	mov eax, [ebx+0xf0]
	mov [esp], eax
	call AudioConverterReset
	jmp _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_70
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_50:
	cmp eax, 0x69354e44
	jnz _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_70
	jmp _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_20
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_60:
	mov ebx, edi
	xor esi, esi
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_180:
	mov eax, [ebx+0xc]
	mov edx, [ebp-0x44]
	mov [esp+0x8], edx
	mov edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	add esi, 0x1
	add ebx, 0xc
	cmp esi, [edi]
	jb _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_180
	jmp _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_190
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_120:
	mov esi, edi
	mov dword [ebp-0x3c], 0x0
	jmp _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_200
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_210:
	mov edx, [ebp-0x1c]
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_200:
	mov eax, [esi+0xc]
	lea eax, [eax+edx*4]
	mov edx, [ebp-0x40]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add dword [ebp-0x3c], 0x1
	add esi, 0xc
	mov eax, [ebp-0x3c]
	cmp eax, [edi]
	jb _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_210
	mov edx, [ebp-0x1c]
	jmp _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_220
_ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_140:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _ZN12CSampleSound8DoRenderEPmmP15AudioBufferList_230
	mov ebx, eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume


;CSampleSound::DoConvert(unsigned long*, AudioBufferList*)
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockC1ER6CMutex
	cmp dword [ebx+0x4c], 0x4
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_10
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_180:
	mov eax, [ebx+0x4c]
	cmp eax, 0x2
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_20
	cmp eax, 0x8
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_20
	xor ebx, ebx
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_100:
	mov eax, [ebx+0x64]
	cmp eax, 0x1
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_30
	test eax, eax
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_40
	sub eax, 0x1
	mov [ebx+0x64], eax
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_40:
	mov dword [ebx+0x94], 0x0
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_90:
	cmp dword [ebx+0x4c], 0x2
	jnz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_50
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_20:
	mov ebx, [esi]
	test ebx, ebx
	jnz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_60
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_80:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	xor ebx, ebx
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_220:
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_60:
	mov eax, esi
	xor edx, edx
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_70:
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	add edx, 0x1
	add eax, 0xc
	cmp edx, [esi]
	jb _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_70
	jmp _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_80
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_10:
	mov edx, [ebx+0x18]
	mov eax, [ebx+0x94]
	cmp eax, [ebx+edx*4+0x7c]
	jl _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_90
	cmp byte [ebx+0x14], 0x0
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_100
	mov dword [ebx+edx*4+0x68], 0x0
	mov dword [ebx+edx*4+0x7c], 0x0
	add edx, 0x1
	xor eax, eax
	cmp edx, 0x5
	cmovb eax, edx
	mov [ebx+0x18], eax
	mov dword [ebx+0x94], 0x0
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZN12CSoundEngine10WakeEngineEv
	mov edx, [ebx+0x18]
	mov eax, [ebx+edx*4+0x68]
	test eax, eax
	jnz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_90
	cmp byte [ebx+0x104], 0x0
	jnz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_110
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_230:
	mov eax, [esi]
	test eax, eax
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_120
	mov eax, esi
	xor edx, edx
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_130:
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	add edx, 0x1
	add eax, 0xc
	cmp [esi], edx
	ja _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_130
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_120:
	mov edi, [ebp+0xc]
	mov dword [edi], 0x0
	mov ebx, 0x69354e44
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_50:
	mov ecx, [ebx+edx*4+0x68]
	test ecx, ecx
	jnz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_140
	mov ecx, [esi]
	test ecx, ecx
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_120
	mov eax, esi
	xor edx, edx
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_150:
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	add edx, 0x1
	add eax, 0xc
	cmp edx, [esi]
	jb _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_150
	jmp _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_120
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_140:
	mov edi, [ebp+0xc]
	mov eax, [edi]
	imul eax, [ebx+0x1c]
	mov edi, [ebx+0x94]
	mov edx, [ebx+edx*4+0x7c]
	sub edx, edi
	cmp eax, edx
	cmovb edx, eax
	add ecx, edi
	mov [ebp-0x2c], ecx
	mov eax, [esi]
	test eax, eax
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_160
	mov eax, esi
	xor ecx, ecx
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_170:
	mov [eax+0x8], edx
	mov edi, [ebp-0x2c]
	mov [eax+0xc], edi
	add ecx, 0x1
	add eax, 0xc
	cmp [esi], ecx
	ja _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_170
	mov edi, [ebx+0x94]
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_160:
	lea eax, [edx+edi]
	mov [ebx+0x94], eax
	mov eax, edx
	xor edx, edx
	div dword [ebx+0x1c]
	mov edx, [ebp+0xc]
	mov [edx], eax
	jmp _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_180
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_30:
	mov dword [ebx+0x4c], 0x2
	jmp _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_90
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_110:
	cmp byte [ebx+0x105], 0x0
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_190
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_240:
	mov dword [ebx+0x4c], 0x2
	mov eax, [esi]
	test eax, eax
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_200
	mov eax, esi
	xor edx, edx
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_210:
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	add edx, 0x1
	add eax, 0xc
	cmp [esi], edx
	ja _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_210
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_200:
	mov edx, [ebp+0xc]
	mov dword [edx], 0x0
	xor ebx, ebx
	jmp _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_220
_ZN12CSampleSound9DoConvertEPmP15AudioBufferList_190:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _ZN12CSampleSound17LoadStreamBuffersEi
	cmp byte [ebx+0x105], 0x0
	jz _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_230
	jmp _ZN12CSampleSound9DoConvertEPmP15AudioBufferList_240
	mov ebx, eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume


;CSampleSound::TheadIdle()
_ZN12CSampleSound9TheadIdleEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	cmp byte [ebp-0xc], 0x0
	jz _ZN12CSampleSound9TheadIdleEv_10
	cmp dword [ebx+0x4c], 0x4
	jz _ZN12CSampleSound9TheadIdleEv_20
_ZN12CSampleSound9TheadIdleEv_10:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSampleSound9TheadIdleEv_20:
	mov dword [esp+0x4], 0x5
	mov [esp], ebx
	call _ZN12CSampleSound17LoadStreamBuffersEi
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CSampleSound::CSampleSound(CSoundEngine&, unsigned long)
_ZN12CSampleSoundC1ER12CSoundEnginem:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN12CSoundObjectC2ER12CSoundEnginem
	mov dword [ebx], _ZTV12CSampleSound+0x8
	mov dword [ebx+0xf0], 0x0
	mov byte [ebx+0xf4], 0x0
	mov byte [ebx+0xf5], 0x0
	mov byte [ebx+0xf6], 0x0
	mov byte [ebx+0xf7], 0x1
	mov byte [ebx+0xf8], 0x0
	mov byte [ebx+0xf9], 0x0
	mov dword [ebx+0xfc], 0x0
	mov dword [ebx+0x100], 0x0
	mov byte [ebx+0x104], 0x0
	mov byte [ebx+0x105], 0x0
	mov byte [ebx+0x106], 0x0
	mov dword [ebx+0x11c], 0x0
	mov dword [ebx+0x120], 0x0
	lea eax, [ebx+0xc8]
	mov dword [ebx+0xc8], 0xffffffff
	mov dword [eax+0x4], 0xffffffff
	mov dword [eax+0x8], 0xffffffff
	mov dword [eax+0xc], 0xffffffff
	mov dword [eax+0x10], 0xffffffff
	mov dword [eax+0x14], 0xffffffff
	mov dword [eax+0x18], 0xffffffff
	mov dword [eax+0x1c], 0xffffffff
	mov dword [eax+0x20], 0xffffffff
	mov dword [eax+0x24], 0xffffffff
	mov eax, ebx
	mov edx, 0x5
_ZN12CSampleSoundC1ER12CSoundEnginem_10:
	mov dword [eax+0x108], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _ZN12CSampleSoundC1ER12CSoundEnginem_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CSampleSound::~CSampleSound()
_ZN12CSampleSoundD0Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV12CSampleSound+0x8
	cmp byte [esi+0xf5], 0x0
	jz _ZN12CSampleSoundD0Ev_10
	mov byte [esi+0xf6], 0x1
	mov dword [esp], 0x4e20
	call usleep
	cmp byte [esi+0xf5], 0x0
	jnz _ZN12CSampleSoundD0Ev_20
_ZN12CSampleSoundD0Ev_10:
	lea ebx, [esi+0x20]
_ZN12CSampleSoundD0Ev_60:
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [esi+0xf0]
	test eax, eax
	jz _ZN12CSampleSoundD0Ev_30
	mov [esp], eax
	call AudioConverterDispose
_ZN12CSampleSoundD0Ev_30:
	mov [esp], ebx
	call _ZN11StMutexLockD1Ev
	mov [esp], esi
	call _ZN12CSoundObjectD2Ev
	mov [esp], esi
	call _ZdlPv
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSoundD0Ev_20:
	mov dword [esp], 0x7530
	call usleep
	cmp byte [esi+0xf5], 0x0
	jz _ZN12CSampleSoundD0Ev_10
	lea ebx, [esi+0x20]
	mov [esp+0x4], ebx
	lea edi, [ebp-0x28]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	cmp byte [esi+0xf5], 0x0
	jz _ZN12CSampleSoundD0Ev_40
	cmp byte [esi+0xf6], 0x0
	jnz _ZN12CSampleSoundD0Ev_50
_ZN12CSampleSoundD0Ev_40:
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSoundD0Ev_60
_ZN12CSampleSoundD0Ev_50:
	mov eax, [esi+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine12GetMixerUnitEv
	mov [esp+0x8], esi
	mov dword [esp+0x4], _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	mov [esp], eax
	call AudioUnitRemoveRenderNotify
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [esp+0xc], 0x8
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x17
	mov [esp], esi
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	mov byte [esi+0xf5], 0x0
	jmp _ZN12CSampleSoundD0Ev_40
	mov [ebp-0x3c], eax
_ZN12CSampleSoundD0Ev_70:
	mov [esp], esi
	call _ZN12CSoundObjectD2Ev
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Unwind_Resume
	mov [ebp-0x3c], eax
	mov [esp], ebx
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSoundD0Ev_70
	mov [ebp-0x3c], eax
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSoundD0Ev_70


;CSampleSound::~CSampleSound()
_ZN12CSampleSoundD1Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV12CSampleSound+0x8
	cmp byte [esi+0xf5], 0x0
	jz _ZN12CSampleSoundD1Ev_10
	mov byte [esi+0xf6], 0x1
	mov dword [esp], 0x4e20
	call usleep
	cmp byte [esi+0xf5], 0x0
	jnz _ZN12CSampleSoundD1Ev_20
_ZN12CSampleSoundD1Ev_10:
	lea ebx, [esi+0x20]
_ZN12CSampleSoundD1Ev_60:
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [esi+0xf0]
	test eax, eax
	jz _ZN12CSampleSoundD1Ev_30
	mov [esp], eax
	call AudioConverterDispose
_ZN12CSampleSoundD1Ev_30:
	mov [esp], ebx
	call _ZN11StMutexLockD1Ev
	mov [esp], esi
	call _ZN12CSoundObjectD2Ev
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSampleSoundD1Ev_20:
	mov dword [esp], 0x7530
	call usleep
	cmp byte [esi+0xf5], 0x0
	jz _ZN12CSampleSoundD1Ev_10
	lea ebx, [esi+0x20]
	mov [esp+0x4], ebx
	lea edi, [ebp-0x28]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	cmp byte [esi+0xf5], 0x0
	jz _ZN12CSampleSoundD1Ev_40
	cmp byte [esi+0xf6], 0x0
	jnz _ZN12CSampleSoundD1Ev_50
_ZN12CSampleSoundD1Ev_40:
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSoundD1Ev_60
_ZN12CSampleSoundD1Ev_50:
	mov eax, [esi+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine12GetMixerUnitEv
	mov [esp+0x8], esi
	mov dword [esp+0x4], _ZN12CSampleSound16RenderNotifyProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	mov [esp], eax
	call AudioUnitRemoveRenderNotify
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [esp+0xc], 0x8
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x17
	mov [esp], esi
	call _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	mov byte [esi+0xf5], 0x0
	jmp _ZN12CSampleSoundD1Ev_40
	mov [ebp-0x3c], eax
_ZN12CSampleSoundD1Ev_70:
	mov [esp], esi
	call _ZN12CSoundObjectD2Ev
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Unwind_Resume
	mov [ebp-0x3c], eax
	mov [esp], ebx
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSoundD1Ev_70
	mov [ebp-0x3c], eax
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSampleSoundD1Ev_70
	nop


;Initialized global or static variables of MacMSS_Sample:
SECTION .data
_ZN12CSampleSound13sOpenCallbackE: dd 0x0, 0x0, 0x0, 0x0, 0x0
_ZN12CSampleSound13sReadCallbackE: dd 0x0
_ZN12CSampleSound13sSeekCallbackE: dd 0x0
_ZN12CSampleSound14sCloseCallbackE: dd 0x0


;Initialized constant data of MacMSS_Sample:
SECTION .rdata
;VTypeInfoTable for CSampleSound:
_ZTI12CSampleSound: dd 0x8, _cstring_12csamplesound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CSampleSound:
_ZTV12CSampleSound: dd 0x0, _ZTI12CSampleSound, _ZN12CSampleSoundD1Ev, _ZN12CSampleSoundD0Ev, _ZN12CSampleSound7ReleaseEv, _ZN12CSampleSound9TheadIdleEv, _ZN12CSampleSound11stop_sampleEv, _ZN12CSampleSound13resume_sampleEv, _ZN12CSampleSound10end_sampleEv, _ZN12CSoundObject22get_sample_ms_positionEPiS0_, _ZN12CSoundObject22set_sample_ms_positionEi, _ZN12CSoundObject24set_sample_playback_rateEi, _ZN12CSampleSound11open_streamEPKc, _ZN12CSampleSound12close_streamEv, _ZN12CSampleSound13ChangedVolumeEv, _ZN12CSampleSound13ChangedFormatEv, _ZN12CSampleSound17Changed3DPositionEv, _ZN12CSampleSound18Changed3DDistancesEv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of MacMSS_Sample:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_rb:		db "rb",0
_cstring_12csamplesound:		db "12CSampleSound",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_20_00000000:		dd 0x41a00000	; 20
_float__120_00000000:		dd 0xc2f00000	; -120
_float_0_00000000:		dd 0x0	; 0
_float_10_00000000:		dd 0x41200000	; 10
_float_0_01000000:		dd 0x3c23d70a	; 0.01

