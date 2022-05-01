;Imports of MacMSS_Object:
	extern _ZN11StMutexLockC1ER6CMutex
	extern _ZN11StMutexLockD1Ev
	extern _Unwind_Resume
	extern _ZNK12CSoundEngine12GetMixerUnitEv
	extern AudioUnitGetProperty
	extern AudioUnitSetProperty
	extern AudioUnitSetParameter
	extern _ZN6CMutexC1Ev
	extern _ZNK12CSoundEngine21GetDefaultMaxDistanceEv
	extern _ZNK12CSoundEngine27GetDefaultReferenceDistanceEv
	extern _ZN6CMutexD1Ev
	extern _ZdlPv

;Exports of MacMSS_Object:
	global _ZN12CSoundObject10end_sampleEv
	global _ZN12CSoundObject11init_sampleEij
	global _ZN12CSoundObject11open_streamEPKc
	global _ZN12CSoundObject11stop_sampleEv
	global _ZN12CSoundObject12close_streamEv
	global _ZN12CSoundObject13ChangedFormatEv
	global _ZN12CSoundObject13ChangedVolumeEv
	global _ZN12CSoundObject13resume_sampleEv
	global _ZN12CSoundObject15get_3D_positionEPfS0_S0_
	global _ZN12CSoundObject15get_stream_infoEPiS0_S0_S0_
	global _ZN12CSoundObject15set_3D_positionEfff
	global _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO
	global _ZN12CSoundObject17Changed3DPositionEv
	global _ZN12CSoundObject17get_sample_statusEv
	global _ZN12CSoundObject18AUGetMixerPropertyEmPvm
	global _ZN12CSoundObject18AUSetMixerPropertyEmPKvm
	global _ZN12CSoundObject18Changed3DDistancesEv
	global _ZN12CSoundObject18load_sample_bufferEjPKvj
	global _ZN12CSoundObject18set_sample_addressEPKvj
	global _ZN12CSoundObject19AUSetMixerParameterEmf
	global _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription
	global _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2_
	global _ZN12CSoundObject19sample_buffer_readyEv
	global _ZN12CSoundObject21get_sample_volume_panEPfS0_
	global _ZN12CSoundObject21set_sample_loop_countEj
	global _ZN12CSoundObject22get_sample_ms_positionEPiS0_
	global _ZN12CSoundObject22set_sample_ms_positionEi
	global _ZN12CSoundObject23set_3D_sample_distancesEffi
	global _ZN12CSoundObject24get_sample_playback_rateEv
	global _ZN12CSoundObject24get_sample_volume_levelsEPfS0_
	global _ZN12CSoundObject24set_sample_playback_rateEi
	global _ZN12CSoundObject24set_sample_reverb_levelsEff
	global _ZN12CSoundObject24set_sample_volume_levelsEff
	global _ZN12CSoundObject7ReleaseEv
	global _ZN12CSoundObject9TheadIdleEv
	global _ZN12CSoundObjectC2ER12CSoundEnginem
	global _ZN12CSoundObjectD0Ev
	global _ZN12CSoundObjectD1Ev
	global _ZN12CSoundObjectD2Ev
	global _ZNK12CSoundObject11IsAvailableEv
	global _ZNK12CSoundObject12GetSoundTypeEv
	global _ZNK12CSoundObject9Is3DSoundEv
	global _ZTI12CSoundObject
	global _ZTV12CSoundObject


SECTION .text


;CSoundObject::end_sample()
_ZN12CSoundObject10end_sampleEv:
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
	jnz _ZN12CSoundObject10end_sampleEv_10
	mov dword [ebx+0x4c], 0x2
	mov dword [ebx+0x94], 0x0
_ZN12CSoundObject10end_sampleEv_10:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;CSoundObject::init_sample(int, unsigned int)
_ZN12CSoundObject11init_sampleEij:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea eax, [ebx+0x20]
	mov [ebp-0x2c], eax
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x10]
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x2c]
	mov dword [ebx+0x4c], 0x2
	mov dword [ebx+0x18], 0x0
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	lea esi, [ebp-0x28]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	mov dword [ebx+0x68], 0x0
	mov dword [ebx+0x7c], 0x0
	mov eax, ebx
	mov edx, 0x4
_ZN12CSoundObject11init_sampleEij_10:
	mov dword [eax+0x6c], 0x0
	mov dword [eax+0x80], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _ZN12CSoundObject11init_sampleEij_10
	mov dword [ebx+0x94], 0x0
	mov dword [ebx+0x98], 0x0
	mov byte [ebx+0x14], 0x0
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov dword [ebx+0x64], 0x1
	mov eax, [ebx]
	mov dword [esp+0x4], 0x2b11
	mov [esp], ebx
	call dword [eax+0x24]
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	cmp edi, [ebx+0x90]
	jz _ZN12CSoundObject11init_sampleEij_20
	mov [ebx+0x90], edi
	cmp edi, 0x2
	jz _ZN12CSoundObject11init_sampleEij_30
	jle _ZN12CSoundObject11init_sampleEij_40
	cmp edi, 0x40
	jz _ZN12CSoundObject11init_sampleEij_50
	cmp edi, 0x42
	jz _ZN12CSoundObject11init_sampleEij_60
	cmp edi, 0x3
	jz _ZN12CSoundObject11init_sampleEij_50
_ZN12CSoundObject11init_sampleEij_100:
	mov dword [ebx+0x1c], 0x1
_ZN12CSoundObject11init_sampleEij_110:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x34]
_ZN12CSoundObject11init_sampleEij_20:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebx+0x50]
	jp _ZN12CSoundObject11init_sampleEij_70
	jz _ZN12CSoundObject11init_sampleEij_80
_ZN12CSoundObject11init_sampleEij_70:
	movss [ebx+0x50], xmm0
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x30]
_ZN12CSoundObject11init_sampleEij_80:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov dword [ebx+0x5c], 0x3f000000
	mov dword [ebx+0x94], 0x0
	mov dword [ebx+0x98], 0x0
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x34]
	cmp dword [ebx+0x10], 0x1
	jnz _ZN12CSoundObject11init_sampleEij_90
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x38]
_ZN12CSoundObject11init_sampleEij_90:
	mov byte [ebx+0x14], 0x0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject11init_sampleEij_40:
	test edi, edi
	jz _ZN12CSoundObject11init_sampleEij_100
	sub edi, 0x1
	jnz _ZN12CSoundObject11init_sampleEij_100
_ZN12CSoundObject11init_sampleEij_30:
	mov dword [ebx+0x1c], 0x2
	jmp _ZN12CSoundObject11init_sampleEij_110
_ZN12CSoundObject11init_sampleEij_60:
	mov dword [ebx+0x1c], 0x8
	jmp _ZN12CSoundObject11init_sampleEij_110
_ZN12CSoundObject11init_sampleEij_50:
	mov dword [ebx+0x1c], 0x4
	jmp _ZN12CSoundObject11init_sampleEij_110
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
_ZN12CSoundObject11init_sampleEij_120:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	jmp _ZN12CSoundObject11init_sampleEij_120
	nop


;CSoundObject::open_stream(char const*)
_ZN12CSoundObject11open_streamEPKc:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CSoundObject::stop_sample()
_ZN12CSoundObject11stop_sampleEv:
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
	jnz _ZN12CSoundObject11stop_sampleEv_10
	mov dword [ebx+0x4c], 0x8
_ZN12CSoundObject11stop_sampleEv_10:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CSoundObject::close_stream()
_ZN12CSoundObject12close_streamEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CSoundObject::ChangedFormat()
_ZN12CSoundObject13ChangedFormatEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CSoundObject::ChangedVolume()
_ZN12CSoundObject13ChangedVolumeEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CSoundObject::resume_sample()
_ZN12CSoundObject13resume_sampleEv:
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
	jz _ZN12CSoundObject13resume_sampleEv_10
	cmp eax, 0x8
	jz _ZN12CSoundObject13resume_sampleEv_10
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSoundObject13resume_sampleEv_10:
	mov dword [ebx+0x4c], 0x4
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CSoundObject::get_3D_position(float*, float*, float*)
_ZN12CSoundObject15get_3D_positionEPfS0_S0_:
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
	mov edx, [ebx+0x9c]
	mov eax, [ebp+0xc]
	mov [eax], edx
	mov edx, [ebx+0xa0]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov eax, [ebx+0xa4]
	xor eax, 0x80000000
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CSoundObject::get_stream_info(int*, int*, int*, int*)
_ZN12CSoundObject15get_stream_infoEPiS0_S0_S0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	mov ebx, [ebp+0x18]
	test eax, eax
	jz _ZN12CSoundObject15get_stream_infoEPiS0_S0_S0__10
	mov dword [eax], 0x0
_ZN12CSoundObject15get_stream_infoEPiS0_S0_S0__10:
	test edx, edx
	jz _ZN12CSoundObject15get_stream_infoEPiS0_S0_S0__20
	mov esi, [ebp+0x8]
	mov eax, [esi+0x90]
	mov [edx], eax
_ZN12CSoundObject15get_stream_infoEPiS0_S0_S0__20:
	test ecx, ecx
	jz _ZN12CSoundObject15get_stream_infoEPiS0_S0_S0__30
	mov dword [ecx], 0x0
_ZN12CSoundObject15get_stream_infoEPiS0_S0_S0__30:
	test ebx, ebx
	jz _ZN12CSoundObject15get_stream_infoEPiS0_S0_S0__40
	mov dword [ebx], 0x0
_ZN12CSoundObject15get_stream_infoEPiS0_S0_S0__40:
	pop ebx
	pop esi
	pop ebp
	ret


;CSoundObject::set_3D_position(float, float, float)
_ZN12CSoundObject15set_3D_positionEfff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x14]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebp+0xc]
	mov [ebx+0x9c], eax
	mov eax, [ebp+0x10]
	mov [ebx+0xa0], eax
	xor esi, 0x80000000
	mov [ebx+0xa4], esi
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x38]
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CSoundObject::set_sample_info(_AILSOUNDINFO const*)
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	lea eax, [edi+0x20]
	mov [ebp-0x3c], eax
	mov [esp+0x4], eax
	lea ecx, [ebp-0x24]
	mov [esp], ecx
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebp+0xc]
	mov edx, [eax+0x14]
	mov eax, [eax+0x10]
	cmp eax, 0x10
	jz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_10
	mov ebx, 0x40
	cmp eax, 0x20
	mov eax, 0x0
	cmovnz ebx, eax
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_130:
	mov eax, ebx
	or eax, 0x2
	cmp edx, 0x2
	cmovz ebx, eax
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x2c]
	mov [esp], ecx
	call _ZN11StMutexLockC1ER6CMutex
	cmp ebx, [edi+0x90]
	jz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_20
	mov [edi+0x90], ebx
	cmp ebx, 0x2
	jz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_30
	jle _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_40
	cmp ebx, 0x40
	jz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_50
	cmp ebx, 0x42
	jz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_60
	cmp ebx, 0x3
	jz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_50
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_110:
	mov dword [edi+0x1c], 0x1
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_120:
	mov eax, [edi]
	mov [esp], edi
	call dword [eax+0x34]
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_20:
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x8]
	mov esi, [eax+0x4]
	mov ecx, [ebp-0x3c]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZN11StMutexLockC1ER6CMutex
	mov [edi+0x68], esi
	mov [edi+0x7c], ebx
	mov eax, edi
	mov edx, 0x4
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_70:
	mov dword [eax+0x6c], 0x0
	mov dword [eax+0x80], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_70
	mov dword [edi+0x94], 0x0
	mov [edi+0x98], ebx
	mov byte [edi+0x14], 0x0
	test esi, esi
	jz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_80
	test ebx, ebx
	jnz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_90
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_80:
	lea ecx, [ebp-0x2c]
	mov [esp], ecx
	call _ZN11StMutexLockD1Ev
	mov edx, [edi]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [edx+0x24]
	lea ecx, [ebp-0x24]
	mov [esp], ecx
	call _ZN11StMutexLockD1Ev
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_90:
	mov edx, esi
	and ebx, 0xfffffffc
	lea ecx, [ebx+esi]
	cmp esi, ecx
	jae _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_80
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_100:
	mov eax, [edx]
	mov [ebp-0x1c], eax
	add edx, 0x1000
	cmp ecx, edx
	ja _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_100
	jmp _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_80
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_40:
	test ebx, ebx
	jz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_110
	sub ebx, 0x1
	jnz _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_110
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_30:
	mov dword [edi+0x1c], 0x2
	jmp _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_120
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_10:
	mov ebx, 0x1
	jmp _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_130
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_60:
	mov dword [edi+0x1c], 0x8
	jmp _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_120
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_50:
	mov dword [edi+0x1c], 0x4
	jmp _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_120
	mov ebx, eax
_ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_140:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	lea ecx, [ebp-0x2c]
	mov [esp], ecx
	call _ZN11StMutexLockD1Ev
	jmp _ZN12CSoundObject15set_sample_infoEPK13_AILSOUNDINFO_140
	add [eax], al


;CSoundObject::Changed3DPosition()
_ZN12CSoundObject17Changed3DPositionEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CSoundObject::get_sample_status()
_ZN12CSoundObject17get_sample_statusEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4c]
	pop ebp
	ret
	nop
	add [eax], al


;CSoundObject::AUGetMixerProperty(unsigned long, void*, unsigned long)
_ZN12CSoundObject18AUGetMixerPropertyEmPvm:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x8]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine12GetMixerUnitEv
	lea edx, [ebp+0x14]
	mov [esp+0x14], edx
	mov edx, [ebp+0x10]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call AudioUnitGetProperty
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CSoundObject::AUSetMixerProperty(unsigned long, void const*, unsigned long)
_ZN12CSoundObject18AUSetMixerPropertyEmPKvm:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x8]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine12GetMixerUnitEv
	mov edx, [ebp+0x14]
	mov [esp+0x14], edx
	mov edx, [ebp+0x10]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call AudioUnitSetProperty
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CSoundObject::Changed3DDistances()
_ZN12CSoundObject18Changed3DDistancesEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CSoundObject::load_sample_buffer(unsigned int, void const*, unsigned int)
_ZN12CSoundObject18load_sample_bufferEjPKvj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov byte [ebx+0x14], 0x1
	cmp esi, 0x4
	jbe _ZN12CSoundObject18load_sample_bufferEjPKvj_10
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x14]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject18load_sample_bufferEjPKvj_10:
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebx+esi*4+0x68]
	test eax, eax
	jz _ZN12CSoundObject18load_sample_bufferEjPKvj_20
_ZN12CSoundObject18load_sample_bufferEjPKvj_40:
	mov ecx, [ebx+0x98]
	test ecx, ecx
	jnz _ZN12CSoundObject18load_sample_bufferEjPKvj_30
	mov eax, [ebp+0x14]
	mov [ebx+0x98], eax
_ZN12CSoundObject18load_sample_bufferEjPKvj_30:
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x14]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject18load_sample_bufferEjPKvj_20:
	mov eax, [ebp+0x10]
	mov [ebx+esi*4+0x68], eax
	mov eax, [ebp+0x14]
	mov [ebx+esi*4+0x7c], eax
	jmp _ZN12CSoundObject18load_sample_bufferEjPKvj_40
	nop


;CSoundObject::set_sample_address(void const*, unsigned int)
_ZN12CSoundObject18set_sample_addressEPKvj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN11StMutexLockC1ER6CMutex
	mov [ebx+0x68], edi
	mov [ebx+0x7c], esi
	mov eax, ebx
	mov edx, 0x4
_ZN12CSoundObject18set_sample_addressEPKvj_10:
	mov dword [eax+0x6c], 0x0
	mov dword [eax+0x80], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _ZN12CSoundObject18set_sample_addressEPKvj_10
	mov dword [ebx+0x94], 0x0
	mov [ebx+0x98], esi
	mov byte [ebx+0x14], 0x0
	test edi, edi
	jz _ZN12CSoundObject18set_sample_addressEPKvj_20
	test esi, esi
	jz _ZN12CSoundObject18set_sample_addressEPKvj_20
	mov edx, edi
	and esi, 0xfffffffc
	lea ecx, [esi+edi]
	cmp edi, ecx
	jb _ZN12CSoundObject18set_sample_addressEPKvj_30
_ZN12CSoundObject18set_sample_addressEPKvj_20:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN11StMutexLockD1Ev
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject18set_sample_addressEPKvj_30:
	mov eax, [edx]
	mov [ebp-0x1c], eax
	add edx, 0x1000
	cmp ecx, edx
	jbe _ZN12CSoundObject18set_sample_addressEPKvj_20
	mov eax, [edx]
	mov [ebp-0x1c], eax
	add edx, 0x1000
	cmp ecx, edx
	ja _ZN12CSoundObject18set_sample_addressEPKvj_30
	jmp _ZN12CSoundObject18set_sample_addressEPKvj_20
	nop
	add [eax], al


;CSoundObject::AUSetMixerParameter(unsigned long, float)
_ZN12CSoundObject19AUSetMixerParameterEmf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x8]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine12GetMixerUnitEv
	mov dword [esp+0x14], 0x0
	mov edx, [ebp+0x10]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call AudioUnitSetParameter
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	add [eax], al


;CSoundObject::FormatToDescription(int, int, AudioStreamBasicDescription&)
_ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp edx, 0x2
	jz _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_10
	jle _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_20
	cmp edx, 0x40
	jz _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_30
	cmp edx, 0x42
	jz _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_30
	cmp edx, 0x3
	jz _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_40
_ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_70:
	xor esi, esi
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	jmp _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_50
_ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_20:
	test edx, edx
	jz _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_60
	sub edx, 0x1
	jnz _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_70
	mov esi, 0x2c
	mov ebx, 0x2
	mov edx, 0x2
	mov ecx, 0x10
	jmp _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_50
_ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_10:
	mov esi, 0x8
	mov ebx, 0x2
	mov edx, 0x2
	mov ecx, 0x8
_ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_50:
	cvtsi2sd xmm0, dword [ebp+0x8]
	movsd [eax], xmm0
	mov dword [eax+0x8], 0x6c70636d
	mov [eax+0xc], esi
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x1
	mov [eax+0x18], edx
	mov [eax+0x1c], ebx
	mov [eax+0x20], ecx
	mov dword [eax+0x24], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_60:
	mov esi, 0x28
	mov ebx, 0x2
	mov edx, 0x1
	mov ecx, 0x8
	jmp _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_50
_ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_30:
	mov esi, 0x29
	mov ebx, 0x2
	mov edx, 0x4
	mov ecx, 0x20
	jmp _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_50
_ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_40:
	mov esi, 0xc
	mov ebx, 0x2
	mov edx, 0x4
	mov ecx, 0x10
	jmp _ZN12CSoundObject19FormatToDescriptionEiiR27AudioStreamBasicDescription_50
	nop


;CSoundObject::IsEqualDescriptions(AudioStreamBasicDescription const&, AudioStreamBasicDescription const&)
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	movsd xmm1, qword [ecx]
	pxor xmm2, xmm2
	ucomisd xmm1, xmm2
	jp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__10
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__20
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__10:
	movsd xmm0, qword [esi]
	ucomisd xmm0, xmm2
	jp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__30
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__30
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__20:
	mov eax, [ecx+0x8]
	test eax, eax
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__40
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__190:
	mov edx, [esi+0x8]
	test edx, edx
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__40
	cmp eax, edx
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__40
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__40:
	mov ebx, [ecx+0xc]
	mov edx, [esi+0xc]
	test eax, eax
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__50
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__130:
	mov eax, [ecx+0x10]
	test eax, eax
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__60
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__160:
	mov eax, [ecx+0x14]
	test eax, eax
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__70
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__170:
	mov eax, [ecx+0x18]
	test eax, eax
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__80
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__180:
	mov eax, [ecx+0x1c]
	test eax, eax
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__90
	mov edx, [esi+0x1c]
	test edx, edx
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__100
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__90:
	mov eax, [ecx+0x20]
	test eax, eax
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__110
	mov edx, [esi+0x20]
	test edx, edx
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__120
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__110:
	mov eax, 0x1
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__200:
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__50:
	mov edi, [esi+0x8]
	test edi, edi
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__130
	test ebx, ebx
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__130
	test edx, edx
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__130
	cmp eax, 0x6c70636d
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__140
	mov edi, edx
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__240:
	cmp ebx, edi
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__130
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__60:
	mov edx, [esi+0x10]
	test edx, edx
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__160
	cmp eax, edx
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__160
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__70:
	mov edx, [esi+0x14]
	test edx, edx
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__170
	cmp eax, edx
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__170
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__80:
	mov edx, [esi+0x18]
	test edx, edx
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__180
	cmp eax, edx
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__180
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__30:
	ucomisd xmm1, xmm0
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150
	jp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150
	mov eax, [ecx+0x8]
	test eax, eax
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__40
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__190
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__100:
	cmp eax, edx
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__90
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__120:
	cmp eax, edx
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__150
	mov eax, 0x1
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__200
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__140:
	mov eax, ebx
	and eax, 0x7fffffff
	mov [ebp-0x10], eax
	mov edi, edx
	and edi, 0x7fffffff
	and eax, edi
	test al, 0x8
	jnz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__210
	mov ebx, [ebp-0x10]
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__250:
	test al, 0x1
	jz _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__220
	and ebx, 0xfffffffb
	and edi, 0xfffffffb
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__220:
	cmp dword [ecx+0x20], 0x8
	ja _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__230
	mov eax, ebx
	and eax, 0xfffffffd
	test bl, 0x8
	cmovnz ebx, eax
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__230:
	cmp dword [esi+0x20], 0x8
	ja _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__240
	mov eax, edi
	and eax, 0xfffffffd
	test edi, 0x8
	cmovnz edi, eax
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__240
_ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__210:
	and ebx, 0x7fffffef
	mov edi, edx
	and edi, 0x7fffffef
	mov eax, ebx
	and eax, edi
	jmp _ZN12CSoundObject19IsEqualDescriptionsERK27AudioStreamBasicDescriptionS2__250
	nop


;CSoundObject::sample_buffer_ready()
_ZN12CSoundObject19sample_buffer_readyEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	lea eax, [esi+0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	mov byte [esi+0x14], 0x1
	mov ebx, [esi+0x18]
	cmp ebx, 0x4
	jg _ZN12CSoundObject19sample_buffer_readyEv_10
	mov edx, [esi+ebx*4+0x68]
	test edx, edx
	jz _ZN12CSoundObject19sample_buffer_readyEv_20
	lea ecx, [esi+ebx*4+0x68]
	mov edx, ebx
_ZN12CSoundObject19sample_buffer_readyEv_30:
	add edx, 0x1
	cmp edx, 0x5
	jz _ZN12CSoundObject19sample_buffer_readyEv_10
	mov eax, [ecx+0x4]
	add ecx, 0x4
	test eax, eax
	jnz _ZN12CSoundObject19sample_buffer_readyEv_30
_ZN12CSoundObject19sample_buffer_readyEv_70:
	mov ebx, edx
_ZN12CSoundObject19sample_buffer_readyEv_20:
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject19sample_buffer_readyEv_10:
	test ebx, ebx
	jz _ZN12CSoundObject19sample_buffer_readyEv_40
	mov eax, [esi+0x68]
	test eax, eax
	jnz _ZN12CSoundObject19sample_buffer_readyEv_50
	xor ebx, ebx
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject19sample_buffer_readyEv_40:
	mov ebx, 0xffffffff
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject19sample_buffer_readyEv_50:
	mov ecx, esi
	xor edx, edx
_ZN12CSoundObject19sample_buffer_readyEv_60:
	add edx, 0x1
	cmp ebx, edx
	jz _ZN12CSoundObject19sample_buffer_readyEv_40
	mov eax, [ecx+0x6c]
	add ecx, 0x4
	test eax, eax
	jnz _ZN12CSoundObject19sample_buffer_readyEv_60
	jmp _ZN12CSoundObject19sample_buffer_readyEv_70
	nop


;CSoundObject::get_sample_volume_pan(float*, float*)
_ZN12CSoundObject21get_sample_volume_panEPfS0_:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	test edx, edx
	jz _ZN12CSoundObject21get_sample_volume_panEPfS0__10
	mov eax, [ebx+0x50]
	mov [edx], eax
_ZN12CSoundObject21get_sample_volume_panEPfS0__10:
	test ecx, ecx
	jz _ZN12CSoundObject21get_sample_volume_panEPfS0__20
	mov eax, [ebx+0x5c]
	mov [ecx], eax
_ZN12CSoundObject21get_sample_volume_panEPfS0__20:
	pop ebx
	pop ebp
	ret


;CSoundObject::set_sample_loop_count(unsigned int)
_ZN12CSoundObject21set_sample_loop_countEj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	lea eax, [esi+0x20]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebp+0xc]
	mov [esi+0x64], eax
	mov [esp], ebx
	call _ZN11StMutexLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CSoundObject::get_sample_ms_position(int*, int*)
_ZN12CSoundObject22get_sample_ms_positionEPiS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	test esi, esi
	jz _ZN12CSoundObject22get_sample_ms_positionEPiS0__10
	mov edx, [ebx+0x98]
	test edx, edx
	js _ZN12CSoundObject22get_sample_ms_positionEPiS0__20
	cvtsi2ss xmm1, edx
	mov edx, [ebx+0x1c]
	test edx, edx
	js _ZN12CSoundObject22get_sample_ms_positionEPiS0__30
_ZN12CSoundObject22get_sample_ms_positionEPiS0__90:
	cvtsi2ss xmm0, edx
_ZN12CSoundObject22get_sample_ms_positionEPiS0__100:
	divss xmm1, xmm0
	cvtsi2ss xmm0, dword [ebx+0x60]
	divss xmm1, xmm0
	mulss xmm1, [_float_1000_00000000]
	movaps xmm0, xmm1
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm1, dword [_data16_4f000000]
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	andps xmm1, xmm2
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0x38], xmm0
	mov eax, [ebp-0x38]
	mov [esi], eax
_ZN12CSoundObject22get_sample_ms_positionEPiS0__10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _ZN12CSoundObject22get_sample_ms_positionEPiS0__40
	mov edx, [ebx+0x94]
	test edx, edx
	js _ZN12CSoundObject22get_sample_ms_positionEPiS0__50
	cvtsi2ss xmm1, edx
	mov edx, [ebx+0x1c]
	test edx, edx
	js _ZN12CSoundObject22get_sample_ms_positionEPiS0__60
_ZN12CSoundObject22get_sample_ms_positionEPiS0__70:
	cvtsi2ss xmm0, edx
_ZN12CSoundObject22get_sample_ms_positionEPiS0__80:
	divss xmm1, xmm0
	cvtsi2ss xmm0, dword [ebx+0x60]
	divss xmm1, xmm0
	mulss xmm1, [_float_1000_00000000]
	movaps xmm0, xmm1
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm1, dword [_data16_4f000000]
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	andps xmm1, xmm2
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0x48], xmm0
	mov eax, [ebp-0x48]
	mov edx, [ebp+0x10]
	mov [edx], eax
_ZN12CSoundObject22get_sample_ms_positionEPiS0__40:
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundObject22get_sample_ms_positionEPiS0__50:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	mov edx, [ebx+0x1c]
	test edx, edx
	jns _ZN12CSoundObject22get_sample_ms_positionEPiS0__70
_ZN12CSoundObject22get_sample_ms_positionEPiS0__60:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _ZN12CSoundObject22get_sample_ms_positionEPiS0__80
_ZN12CSoundObject22get_sample_ms_positionEPiS0__20:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	mov edx, [ebx+0x1c]
	test edx, edx
	jns _ZN12CSoundObject22get_sample_ms_positionEPiS0__90
_ZN12CSoundObject22get_sample_ms_positionEPiS0__30:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _ZN12CSoundObject22get_sample_ms_positionEPiS0__100
	nop


;CSoundObject::set_sample_ms_position(int)
_ZN12CSoundObject22set_sample_ms_positionEi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	js _ZN12CSoundObject22set_sample_ms_positionEi_10
	cvtsi2ss xmm0, edx
_ZN12CSoundObject22set_sample_ms_positionEi_60:
	movaps xmm1, xmm0
	divss xmm1, dword [_float_1000_00000000]
	cvtsi2ss xmm0, dword [ebx+0x60]
	mulss xmm1, xmm0
	mov edx, [ebx+0x1c]
	test edx, edx
	js _ZN12CSoundObject22set_sample_ms_positionEi_20
	cvtsi2ss xmm0, edx
_ZN12CSoundObject22set_sample_ms_positionEi_50:
	mulss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm1, dword [_data16_4f000000]
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	andps xmm1, xmm2
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0x28], xmm0
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebp-0x28]
	mov [ebx+0x94], eax
	mov edx, [ebx+0x90]
	test dl, 0x1
	jz _ZN12CSoundObject22set_sample_ms_positionEi_30
	and eax, 0xfffffffe
	mov [ebx+0x94], eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSoundObject22set_sample_ms_positionEi_30:
	and dl, 0x40
	jnz _ZN12CSoundObject22set_sample_ms_positionEi_40
	mov eax, [ebp-0x28]
	mov [ebx+0x94], eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSoundObject22set_sample_ms_positionEi_40:
	add eax, 0x3
	and eax, 0xfffffffc
	mov [ebx+0x94], eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSoundObject22set_sample_ms_positionEi_20:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _ZN12CSoundObject22set_sample_ms_positionEi_50
_ZN12CSoundObject22set_sample_ms_positionEi_10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _ZN12CSoundObject22set_sample_ms_positionEi_60


;CSoundObject::set_3D_sample_distances(float, float, int)
_ZN12CSoundObject23set_3D_sample_distancesEffi:
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
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebx+0xc0]
	jnz _ZN12CSoundObject23set_3D_sample_distancesEffi_10
	jp _ZN12CSoundObject23set_3D_sample_distancesEffi_10
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [ebx+0xc4]
	jp _ZN12CSoundObject23set_3D_sample_distancesEffi_20
	jz _ZN12CSoundObject23set_3D_sample_distancesEffi_30
_ZN12CSoundObject23set_3D_sample_distancesEffi_20:
	movss xmm0, dword [ebp+0xc]
_ZN12CSoundObject23set_3D_sample_distancesEffi_10:
	movss [ebx+0xc0], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [ebx+0xc4], xmm0
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x3c]
_ZN12CSoundObject23set_3D_sample_distancesEffi_30:
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
	add [eax], al


;CSoundObject::get_sample_playback_rate()
_ZN12CSoundObject24get_sample_playback_rateEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	pop ebp
	ret
	nop


;CSoundObject::get_sample_volume_levels(float*, float*)
_ZN12CSoundObject24get_sample_volume_levelsEPfS0_:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	test ecx, ecx
	jz _ZN12CSoundObject24get_sample_volume_levelsEPfS0__10
	mov eax, [edx+0x54]
	mov [ecx], eax
_ZN12CSoundObject24get_sample_volume_levelsEPfS0__10:
	test ebx, ebx
	jz _ZN12CSoundObject24get_sample_volume_levelsEPfS0__20
	mov eax, [edx+0x58]
	mov [ebx], eax
_ZN12CSoundObject24get_sample_volume_levelsEPfS0__20:
	test byte [edx+0x90], 0x2
	jnz _ZN12CSoundObject24get_sample_volume_levelsEPfS0__30
	test ecx, ecx
	jz _ZN12CSoundObject24get_sample_volume_levelsEPfS0__40
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ecx]
	movss [ecx], xmm0
_ZN12CSoundObject24get_sample_volume_levelsEPfS0__40:
	test ebx, ebx
	jz _ZN12CSoundObject24get_sample_volume_levelsEPfS0__30
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebx]
	movss [ebx], xmm0
_ZN12CSoundObject24get_sample_volume_levelsEPfS0__30:
	pop ebx
	pop ebp
	ret
	nop


;CSoundObject::set_sample_playback_rate(int)
_ZN12CSoundObject24set_sample_playback_rateEi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x20]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	cmp [ebx+0x60], edi
	jz _ZN12CSoundObject24set_sample_playback_rateEi_10
	mov [ebx+0x60], edi
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x34]
_ZN12CSoundObject24set_sample_playback_rateEi_10:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CSoundObject::set_sample_reverb_levels(float, float)
_ZN12CSoundObject24set_sample_reverb_levelsEff:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop
	add [eax], al


;CSoundObject::set_sample_volume_levels(float, float)
_ZN12CSoundObject24set_sample_volume_levelsEff:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov ebx, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	movss xmm2, dword [ebp+0x10]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x10]
	mov [esp], esi
	movss [ebp-0x28], xmm1
	movss [ebp-0x38], xmm2
	call _ZN11StMutexLockC1ER6CMutex
	pxor xmm3, xmm3
	movss xmm1, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm3, xmm1
	ja _ZN12CSoundObject24set_sample_volume_levelsEff_10
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm1
	movaps xmm1, xmm0
	ucomiss xmm3, xmm2
	ja _ZN12CSoundObject24set_sample_volume_levelsEff_20
_ZN12CSoundObject24set_sample_volume_levelsEff_50:
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm2
	movaps xmm2, xmm0
_ZN12CSoundObject24set_sample_volume_levelsEff_60:
	ucomiss xmm1, [ebx+0x54]
	jnz _ZN12CSoundObject24set_sample_volume_levelsEff_30
	jp _ZN12CSoundObject24set_sample_volume_levelsEff_30
	ucomiss xmm2, [ebx+0x58]
	jp _ZN12CSoundObject24set_sample_volume_levelsEff_30
	jz _ZN12CSoundObject24set_sample_volume_levelsEff_40
_ZN12CSoundObject24set_sample_volume_levelsEff_30:
	movss [ebx+0x54], xmm1
	movss [ebx+0x58], xmm2
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x30]
_ZN12CSoundObject24set_sample_volume_levelsEff_40:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSoundObject24set_sample_volume_levelsEff_10:
	movaps xmm1, xmm3
	ucomiss xmm3, xmm2
	jbe _ZN12CSoundObject24set_sample_volume_levelsEff_50
_ZN12CSoundObject24set_sample_volume_levelsEff_20:
	movaps xmm2, xmm3
	jmp _ZN12CSoundObject24set_sample_volume_levelsEff_60
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CSoundObject::Release()
_ZN12CSoundObject7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x10]
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x2c]
	mov byte [ebx+0xc], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CSoundObject::TheadIdle()
_ZN12CSoundObject9TheadIdleEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop
	add [eax], al


;CSoundObject::CSoundObject(CSoundEngine&, unsigned long)
_ZN12CSoundObjectC2ER12CSoundEnginem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [ebx], _ZTV12CSoundObject+0x8
	mov [ebx+0x4], esi
	mov eax, [ebp+0x10]
	mov [ebx+0x8], eax
	mov byte [ebx+0xc], 0x1
	mov dword [ebx+0x10], 0x0
	mov byte [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov dword [ebx+0x1c], 0x1
	lea edi, [ebx+0x20]
	mov [esp], edi
	call _ZN6CMutexC1Ev
	mov dword [ebx+0x4c], 0x2
	mov eax, 0x3f800000
	mov [ebx+0x50], eax
	mov [ebx+0x54], eax
	mov [ebx+0x58], eax
	mov dword [ebx+0x5c], 0x3f000000
	mov dword [ebx+0x60], 0x2b11
	mov dword [ebx+0x64], 0x1
	mov dword [ebx+0x90], 0x0
	mov dword [ebx+0x94], 0x0
	mov dword [ebx+0x98], 0x0
	lea edx, [ebx+0x9c]
	xor eax, eax
	mov [ebx+0x9c], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [ebx+0xa8]
	mov [ebx+0xa8], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [ebx+0xb4]
	mov [ebx+0xb4], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov [esp], esi
	call _ZNK12CSoundEngine21GetDefaultMaxDistanceEv
	fstp dword [ebx+0xc0]
	mov [esp], esi
	call _ZNK12CSoundEngine27GetDefaultReferenceDistanceEv
	fstp dword [ebx+0xc4]
	mov eax, ebx
	mov edx, 0x5
_ZN12CSoundObjectC2ER12CSoundEnginem_10:
	mov dword [eax+0x68], 0x0
	mov dword [eax+0x7c], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _ZN12CSoundObjectC2ER12CSoundEnginem_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], edi
	call _ZN6CMutexD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CSoundObject::~CSoundObject()
_ZN12CSoundObjectD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV12CSoundObject+0x8
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZN6CMutexD1Ev
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv


;CSoundObject::~CSoundObject()
_ZN12CSoundObjectD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV12CSoundObject+0x8
	add eax, 0x20
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN6CMutexD1Ev


;CSoundObject::~CSoundObject()
_ZN12CSoundObjectD2Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV12CSoundObject+0x8
	add eax, 0x20
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN6CMutexD1Ev


;CSoundObject::IsAvailable() const
_ZNK12CSoundObject11IsAvailableEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0xc]
	pop ebp
	ret


;CSoundObject::GetSoundType() const
_ZNK12CSoundObject12GetSoundTypeEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x10]
	pop ebp
	ret
	nop


;CSoundObject::Is3DSound() const
_ZNK12CSoundObject9Is3DSoundEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp dword [eax+0x10], 0x1
	setz al
	movzx eax, al
	pop ebp
	ret


;Initialized global or static variables of MacMSS_Object:
SECTION .data


;Initialized constant data of MacMSS_Object:
SECTION .rdata
;VTypeInfoTable for CSoundObject:
_ZTI12CSoundObject: dd 0x8, _cstring_12csoundobject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CSoundObject:
_ZTV12CSoundObject: dd 0x0, _ZTI12CSoundObject, _ZN12CSoundObjectD1Ev, _ZN12CSoundObjectD0Ev, _ZN12CSoundObject7ReleaseEv, _ZN12CSoundObject9TheadIdleEv, _ZN12CSoundObject11stop_sampleEv, _ZN12CSoundObject13resume_sampleEv, _ZN12CSoundObject10end_sampleEv, _ZN12CSoundObject22get_sample_ms_positionEPiS0_, _ZN12CSoundObject22set_sample_ms_positionEi, _ZN12CSoundObject24set_sample_playback_rateEi, _ZN12CSoundObject11open_streamEPKc, _ZN12CSoundObject12close_streamEv, _ZN12CSoundObject13ChangedVolumeEv, _ZN12CSoundObject13ChangedFormatEv, _ZN12CSoundObject17Changed3DPositionEv, _ZN12CSoundObject18Changed3DDistancesEv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of MacMSS_Object:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_12csoundobject:		db "12CSoundObject",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_1000_00000000:		dd 0x447a0000	; 1000
_data16_4f000000:		dd 0x4f000000, 0x0, 0x0, 0x0	; OWORD
_data16_4f800000:		dd 0x4f800000, 0x0, 0x0, 0x0	; OWORD
_float_0_50000000:		dd 0x3f000000	; 0.5

