;Imports of MacMSS_Stream:
	extern __cxa_atexit
	extern _ZdlPv
	extern _ZN12CSoundObject10end_sampleEv
	extern StopMovie
	extern GoToBeginningOfMovie
	extern FSPathMakeRef
	extern _ZN10MacFolders20GetDataFolderItemRefEPKcR5FSRef
	extern QTNewDataReferenceFromFSRef
	extern _ZN10MacDisplay13GetMainWindowEv
	extern _ZN11StPortStateC1EP15OpaqueWindowPtr
	extern NewMovieFromDataRef
	extern DisposeHandle
	extern GetMoviePreferredRate
	extern GetMovieTime
	extern PrerollMovie
	extern GetMovieIndTrackType
	extern GetTrackMedia
	extern NewHandle
	extern GetMediaSampleDescription
	extern GetHandleSize
	extern _ZN11StPortStateD1Ev
	extern _Unwind_Resume
	extern _ZN12CSoundObject11stop_sampleEv
	extern DisposeMovie
	extern SetTrackVolume
	extern GetMediaHandler
	extern MediaSetSoundBalance
	extern _ZN12CSoundObject13resume_sampleEv
	extern SetMovieRate
	extern MoviesTask
	extern IsMovieDone
	extern GetMovieTimeScale
	extern GetMovieDuration
	extern SetMovieTimeValue
	extern _ZN12CSoundObject24set_sample_playback_rateEi
	extern _ZN12CSoundObject7ReleaseEv
	extern _ZN12CSoundObjectC2ER12CSoundEnginem
	extern _ZN12CSoundObjectD2Ev
	extern memmove
	extern _Znwm
	extern _ZSt17__throw_bad_allocv
	extern _ZSt20__throw_length_errorPKc
	extern _ZN12CSoundObject9TheadIdleEv
	extern _ZN12CSoundObject13ChangedFormatEv
	extern _ZN12CSoundObject17Changed3DPositionEv
	extern _ZN12CSoundObject18Changed3DDistancesEv

;Exports of MacMSS_Stream:
	global _GLOBAL__I__ZN12CStreamSound10sQTStreamsE
	global _ZN12CStreamSound10end_sampleEv
	global _ZN12CStreamSound11open_streamEPKc
	global _ZN12CStreamSound11stop_sampleEv
	global _ZN12CStreamSound12close_streamEv
	global _ZN12CStreamSound13ChangedVolumeEv
	global _ZN12CStreamSound13resume_sampleEv
	global _ZN12CStreamSound16UpdateAllStreamsEv
	global _ZN12CStreamSound22get_sample_ms_positionEPiS0_
	global _ZN12CStreamSound22set_sample_ms_positionEi
	global _ZN12CStreamSound24set_sample_playback_rateEi
	global _ZN12CStreamSound7ReleaseEv
	global _ZN12CStreamSoundC1ER12CSoundEngine
	global _ZN12CStreamSoundD0Ev
	global _ZN12CStreamSoundD1Ev
	global _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	global _ZNSt6vectorIP12CStreamSoundSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
	global _ZN12CStreamSound10sQTStreamsE
	global _ZTV12CStreamSound


SECTION .text


;global constructors keyed to CStreamSound::sQTStreams
_GLOBAL__I__ZN12CStreamSound10sQTStreamsE:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	leave
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov dword [_ZN12CStreamSound10sQTStreamsE], 0x0
	mov dword [_ZN12CStreamSound10sQTStreamsE+0x4], 0x0
	mov dword [_ZN12CStreamSound10sQTStreamsE+0x8], 0x0
	mov eax, [0xd5cc00c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_0
	call __cxa_atexit
	leave
	ret


;__tcf_0
__tcf_0:
	push ebp
	mov ebp, esp
	mov edx, [_ZN12CStreamSound10sQTStreamsE+0x4]
	mov ecx, [_ZN12CStreamSound10sQTStreamsE]
	mov eax, ecx
	cmp edx, ecx
	jz __tcf_0_10
__tcf_0_20:
	add eax, 0x4
	cmp edx, eax
	jnz __tcf_0_20
__tcf_0_10:
	test ecx, ecx
	jz __tcf_0_30
	mov [ebp+0x8], ecx
	pop ebp
	jmp _ZdlPv
__tcf_0_30:
	pop ebp
	ret


;CStreamSound::end_sample()
_ZN12CStreamSound10end_sampleEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x4c], 0x4
	jz _ZN12CStreamSound10end_sampleEv_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12CStreamSound10end_sampleEv_10:
	mov [esp], ebx
	call _ZN12CSoundObject10end_sampleEv
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call StopMovie
	mov eax, [ebx+0xc8]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp GoToBeginningOfMovie
	nop


;CStreamSound::open_stream(char const*)
_ZN12CStreamSound11open_streamEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x2c]
	mov dword [esp+0x8], 0x0
	lea ebx, [ebp-0x7c]
	mov [esp+0x4], ebx
	mov [esp], edi
	call FSPathMakeRef
	test eax, eax
	jz _ZN12CStreamSound11open_streamEPKc_10
	mov [esp+0x4], ebx
	mov [esp], edi
	call _ZN10MacFolders20GetDataFolderItemRefEPKcR5FSRef
	test eax, eax
	jnz _ZN12CStreamSound11open_streamEPKc_20
_ZN12CStreamSound11open_streamEPKc_10:
	mov dword [ebp-0x24], 0x0
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call QTNewDataReferenceFromFSRef
	test ax, ax
	jz _ZN12CStreamSound11open_streamEPKc_30
_ZN12CStreamSound11open_streamEPKc_20:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CStreamSound11open_streamEPKc_30:
	call _ZN10MacDisplay13GetMainWindowEv
	mov [esp+0x4], eax
	lea edi, [ebp-0x2c]
	mov [esp], edi
	call _ZN11StPortStateC1EP15OpaqueWindowPtr
	mov word [ebp-0x1a], 0x0
	mov eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x401
	lea eax, [esi+0xc8]
	mov [esp], eax
	call NewMovieFromDataRef
	mov ebx, eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call DisposeHandle
	test bx, bx
	jnz _ZN12CStreamSound11open_streamEPKc_40
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x30]
	mov eax, [esi+0xc8]
	mov [esp], eax
	call GoToBeginningOfMovie
	mov eax, [esi+0xc8]
	mov [esp], eax
	call GetMoviePreferredRate
	mov ebx, eax
	mov dword [esp+0x4], 0x0
	mov eax, [esi+0xc8]
	mov [esp], eax
	call GetMovieTime
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [esi+0xc8]
	mov [esp], eax
	call PrerollMovie
	mov dword [esp+0xc], 0x6
	mov dword [esp+0x8], 0x65617273
	mov dword [esp+0x4], 0x1
	mov eax, [esi+0xc8]
	mov [esp], eax
	call GetMovieIndTrackType
	mov [esi+0xcc], eax
	mov [esp], eax
	call GetTrackMedia
	mov [esi+0xd0], eax
	mov dword [esi+0x4c], 0x2
	mov eax, 0x3f800000
	mov [esi+0x50], eax
	mov [esi+0x54], eax
	mov [esi+0x58], eax
	mov dword [esi+0x5c], 0x3f000000
	mov dword [esi+0x64], 0x1
	mov dword [esp], 0x0
	call NewHandle
	mov ebx, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [esi+0xd0]
	mov [esp], eax
	call GetMediaSampleDescription
	mov [esp], ebx
	call GetHandleSize
	test eax, eax
	jle _ZN12CStreamSound11open_streamEPKc_50
	mov eax, [ebx]
	mov eax, [eax+0x20]
	add eax, 0x8000
	shr eax, 0x10
	mov [esi+0x60], eax
	mov dword [esi+0x90], 0x0
	mov eax, [ebx]
	cmp word [eax+0x1a], 0x10
	jz _ZN12CStreamSound11open_streamEPKc_60
_ZN12CStreamSound11open_streamEPKc_110:
	cmp word [eax+0x18], 0x2
	jz _ZN12CStreamSound11open_streamEPKc_70
_ZN12CStreamSound11open_streamEPKc_120:
	mov [esp], ebx
	call DisposeHandle
	mov eax, [esi+0x60]
	mov [esi+0xd4], eax
	mov [ebp-0x20], esi
	mov edx, [_ZN12CStreamSound10sQTStreamsE+0x4]
	cmp edx, [_ZN12CStreamSound10sQTStreamsE+0x8]
	jz _ZN12CStreamSound11open_streamEPKc_80
	test edx, edx
	jz _ZN12CStreamSound11open_streamEPKc_90
	mov [edx], esi
	mov edx, [_ZN12CStreamSound10sQTStreamsE+0x4]
_ZN12CStreamSound11open_streamEPKc_90:
	add edx, 0x4
	mov [_ZN12CStreamSound10sQTStreamsE+0x4], edx
	mov ebx, 0x1
	jmp _ZN12CStreamSound11open_streamEPKc_100
_ZN12CStreamSound11open_streamEPKc_40:
	xor ebx, ebx
_ZN12CStreamSound11open_streamEPKc_100:
	mov [esp], edi
	call _ZN11StPortStateD1Ev
	mov eax, ebx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CStreamSound11open_streamEPKc_60:
	mov dword [esi+0x90], 0x1
	mov eax, [ebx]
	jmp _ZN12CStreamSound11open_streamEPKc_110
_ZN12CStreamSound11open_streamEPKc_70:
	or dword [esi+0x90], 0x2
	jmp _ZN12CStreamSound11open_streamEPKc_120
_ZN12CStreamSound11open_streamEPKc_50:
	mov dword [esi+0x60], 0x2b11
	mov dword [esi+0x90], 0x0
	jmp _ZN12CStreamSound11open_streamEPKc_120
_ZN12CStreamSound11open_streamEPKc_80:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], _ZN12CStreamSound10sQTStreamsE
	call _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	mov ebx, 0x1
	jmp _ZN12CStreamSound11open_streamEPKc_100
	mov ebx, eax
	mov [esp], edi
	call _ZN11StPortStateD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CStreamSound::stop_sample()
_ZN12CStreamSound11stop_sampleEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x4c], 0x4
	jz _ZN12CStreamSound11stop_sampleEv_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12CStreamSound11stop_sampleEv_10:
	mov [esp], ebx
	call _ZN12CSoundObject11stop_sampleEv
	mov eax, [ebx+0xc8]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp StopMovie
	nop


;CStreamSound::close_stream()
_ZN12CStreamSound12close_streamEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc8]
	test eax, eax
	jz _ZN12CStreamSound12close_streamEv_10
	mov [esp], eax
	call StopMovie
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call DisposeMovie
	mov dword [ebx+0xc8], 0x0
	mov dword [ebx+0x4c], 0x2
	mov edx, [_ZN12CStreamSound10sQTStreamsE]
	mov eax, edx
	mov ecx, [_ZN12CStreamSound10sQTStreamsE+0x4]
	cmp edx, ecx
	jz _ZN12CStreamSound12close_streamEv_10
	cmp ebx, [edx]
	jz _ZN12CStreamSound12close_streamEv_20
_ZN12CStreamSound12close_streamEv_30:
	add eax, 0x4
	cmp eax, ecx
	jz _ZN12CStreamSound12close_streamEv_10
	cmp ebx, [eax]
	jnz _ZN12CStreamSound12close_streamEv_30
_ZN12CStreamSound12close_streamEv_20:
	mov [esp+0x4], eax
	mov dword [esp], _ZN12CStreamSound10sQTStreamsE
	call _ZNSt6vectorIP12CStreamSoundSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
_ZN12CStreamSound12close_streamEv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CStreamSound::ChangedVolume()
_ZN12CStreamSound13ChangedVolumeEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	movss xmm1, dword [ebx+0x50]
	lea eax, [ebx+0x54]
	lea edx, [ebx+0x58]
	movss xmm0, dword [ebx+0x58]
	ucomiss xmm0, [ebx+0x54]
	cmova eax, edx
	mulss xmm1, [eax]
	mulss xmm1, [_float_256_00000000]
	cvttss2si eax, xmm1
	cmp ax, 0x100
	jle _ZN12CStreamSound13ChangedVolumeEv_10
	mov eax, 0x100
_ZN12CStreamSound13ChangedVolumeEv_50:
	mov [esp+0x4], eax
	mov eax, [ebx+0xcc]
	mov [esp], eax
	call SetTrackVolume
	movss xmm0, dword [ebx+0x58]
	subss xmm0, [ebx+0x54]
	mulss xmm0, [_float_128_00000000]
	cvttss2si eax, xmm0
	cmp ax, 0x80
	jg _ZN12CStreamSound13ChangedVolumeEv_20
	cmp ax, 0xff80
	jge _ZN12CStreamSound13ChangedVolumeEv_30
	mov esi, 0xffffff80
_ZN12CStreamSound13ChangedVolumeEv_60:
	mov eax, [ebx+0xd0]
	mov [esp], eax
	call GetMediaHandler
	mov [esp+0x4], esi
	mov [esp], eax
	call MediaSetSoundBalance
	lea eax, [esi+0x80]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00390625]
	movss [ebx+0x5c], xmm0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CStreamSound13ChangedVolumeEv_10:
	test ax, ax
	js _ZN12CStreamSound13ChangedVolumeEv_40
	cwde
	jmp _ZN12CStreamSound13ChangedVolumeEv_50
_ZN12CStreamSound13ChangedVolumeEv_30:
	movsx esi, ax
	jmp _ZN12CStreamSound13ChangedVolumeEv_60
_ZN12CStreamSound13ChangedVolumeEv_20:
	mov esi, 0x80
	jmp _ZN12CStreamSound13ChangedVolumeEv_60
_ZN12CStreamSound13ChangedVolumeEv_40:
	xor eax, eax
	jmp _ZN12CStreamSound13ChangedVolumeEv_50
	nop
	add [eax], al


;CStreamSound::resume_sample()
_ZN12CStreamSound13resume_sampleEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4c]
	cmp eax, 0x2
	jz _ZN12CStreamSound13resume_sampleEv_10
	cmp eax, 0x8
	jz _ZN12CStreamSound13resume_sampleEv_10
_ZN12CStreamSound13resume_sampleEv_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12CStreamSound13resume_sampleEv_10:
	mov [esp], ebx
	call _ZN12CSoundObject13resume_sampleEv
	cmp dword [ebx+0x4c], 0x4
	jnz _ZN12CStreamSound13resume_sampleEv_20
	cvtsi2ss xmm0, dword [ebx+0x60]
	cvtsi2ss xmm1, dword [ebx+0xd4]
	divss xmm0, xmm1
	mulss xmm0, [_float_65536_00000000]
	cvttss2si eax, xmm0
	mov [esp+0x4], eax
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call SetMovieRate
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CStreamSound::UpdateAllStreams()
_ZN12CStreamSound16UpdateAllStreamsEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [_ZN12CStreamSound10sQTStreamsE+0x4]
	sub eax, [_ZN12CStreamSound10sQTStreamsE]
	sar eax, 0x2
	test eax, eax
	jnz _ZN12CStreamSound16UpdateAllStreamsEv_10
_ZN12CStreamSound16UpdateAllStreamsEv_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CStreamSound16UpdateAllStreamsEv_10:
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call MoviesTask
	mov esi, [_ZN12CStreamSound10sQTStreamsE]
	mov eax, [_ZN12CStreamSound10sQTStreamsE+0x4]
	cmp eax, esi
	jnz _ZN12CStreamSound16UpdateAllStreamsEv_20
	jmp _ZN12CStreamSound16UpdateAllStreamsEv_30
_ZN12CStreamSound16UpdateAllStreamsEv_40:
	add esi, 0x4
	cmp eax, esi
	jz _ZN12CStreamSound16UpdateAllStreamsEv_30
_ZN12CStreamSound16UpdateAllStreamsEv_20:
	mov ebx, [esi]
	cmp dword [ebx+0x4c], 0x4
	jnz _ZN12CStreamSound16UpdateAllStreamsEv_40
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call IsMovieDone
	test al, al
	jz _ZN12CStreamSound16UpdateAllStreamsEv_50
	mov eax, [ebx+0x64]
	cmp eax, 0x1
	jz _ZN12CStreamSound16UpdateAllStreamsEv_60
	test eax, eax
	jz _ZN12CStreamSound16UpdateAllStreamsEv_70
	sub eax, 0x1
	mov [ebx+0x64], eax
_ZN12CStreamSound16UpdateAllStreamsEv_70:
	cmp dword [ebx+0x4c], 0x4
	jz _ZN12CStreamSound16UpdateAllStreamsEv_80
_ZN12CStreamSound16UpdateAllStreamsEv_50:
	mov eax, [_ZN12CStreamSound10sQTStreamsE+0x4]
	jmp _ZN12CStreamSound16UpdateAllStreamsEv_40
_ZN12CStreamSound16UpdateAllStreamsEv_60:
	mov dword [ebx+0x4c], 0x2
	jmp _ZN12CStreamSound16UpdateAllStreamsEv_70
_ZN12CStreamSound16UpdateAllStreamsEv_80:
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call GoToBeginningOfMovie
	cmp dword [ebx+0x4c], 0x4
	jz _ZN12CStreamSound16UpdateAllStreamsEv_90
_ZN12CStreamSound16UpdateAllStreamsEv_100:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call MoviesTask
	mov eax, [_ZN12CStreamSound10sQTStreamsE+0x4]
	jmp _ZN12CStreamSound16UpdateAllStreamsEv_40
_ZN12CStreamSound16UpdateAllStreamsEv_90:
	cvtsi2ss xmm0, dword [ebx+0x60]
	cvtsi2ss xmm1, dword [ebx+0xd4]
	divss xmm0, xmm1
	mulss xmm0, [_float_65536_00000000]
	cvttss2si eax, xmm0
	mov [esp+0x4], eax
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call SetMovieRate
	jmp _ZN12CStreamSound16UpdateAllStreamsEv_100
	nop


;CStreamSound::get_sample_ms_position(int*, int*)
_ZN12CStreamSound22get_sample_ms_positionEPiS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call GetMovieTimeScale
	mov esi, eax
	test edi, edi
	jz _ZN12CStreamSound22get_sample_ms_positionEPiS0__10
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call GetMovieDuration
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov [edi], eax
_ZN12CStreamSound22get_sample_ms_positionEPiS0__10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _ZN12CStreamSound22get_sample_ms_positionEPiS0__20
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0xc8]
	mov [esp], eax
	call GetMovieTime
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov edx, [ebp+0x10]
	mov [edx], eax
_ZN12CStreamSound22get_sample_ms_positionEPiS0__20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CStreamSound::set_sample_ms_position(int)
_ZN12CStreamSound22set_sample_ms_positionEi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [esi+0xc8]
	test eax, eax
	jz _ZN12CStreamSound22set_sample_ms_positionEi_10
	mov [esp], eax
	call GetMovieTimeScale
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [_float_1000_00000000]
	cvtsi2ss xmm1, eax
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [ebp+0xc], eax
	mov eax, [esi+0xc8]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp SetMovieTimeValue
_ZN12CStreamSound22set_sample_ms_positionEi_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CStreamSound::set_sample_playback_rate(int)
_ZN12CStreamSound24set_sample_playback_rateEi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp [ebx+0x60], eax
	jz _ZN12CStreamSound24set_sample_playback_rateEi_10
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN12CSoundObject24set_sample_playback_rateEi
	cmp dword [ebx+0x4c], 0x4
	jz _ZN12CStreamSound24set_sample_playback_rateEi_20
_ZN12CStreamSound24set_sample_playback_rateEi_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12CStreamSound24set_sample_playback_rateEi_20:
	cvtsi2ss xmm0, dword [ebx+0x60]
	cvtsi2ss xmm1, dword [ebx+0xd4]
	divss xmm0, xmm1
	mulss xmm0, [_float_65536_00000000]
	cvttss2si eax, xmm0
	mov [ebp+0xc], eax
	mov eax, [ebx+0xc8]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SetMovieRate
	nop


;CStreamSound::Release()
_ZN12CStreamSound7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _ZN12CSoundObject7ReleaseEv
	test ebx, ebx
	jz _ZN12CStreamSound7ReleaseEv_10
	mov eax, [ebx]
	mov [ebp+0x8], ebx
	mov ecx, [eax+0x4]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
_ZN12CStreamSound7ReleaseEv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CStreamSound::CStreamSound(CSoundEngine&)
_ZN12CStreamSoundC1ER12CSoundEngine:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN12CSoundObjectC2ER12CSoundEnginem
	mov dword [ebx], _ZTV12CStreamSound+0x8
	mov dword [ebx+0xc8], 0x0
	mov dword [ebx+0xcc], 0x0
	mov dword [ebx+0xd0], 0x0
	mov dword [ebx+0xd4], 0x0
	mov dword [ebx+0x10], 0x2
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;CStreamSound::~CStreamSound()
_ZN12CStreamSoundD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV12CStreamSound+0x8
	mov [esp], ebx
	call _ZN12CSoundObjectD2Ev
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv
	nop


;CStreamSound::~CStreamSound()
_ZN12CStreamSoundD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV12CStreamSound+0x8
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN12CSoundObjectD2Ev
	nop


;std::vector<CStreamSound*, std::allocator<CStreamSound*> >::_M_insert_aux(__gnu_cxx::__normal_iterator<CStreamSound**, std::vector<CStreamSound*, std::allocator<CStreamSound*> > >, CStreamSound* const&)
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x4]
	cmp edx, [edi+0x8]
	jz _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__10
	test edx, edx
	jz _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__20
	mov eax, [edx-0x4]
	mov [edx], eax
	mov edx, [edi+0x4]
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__20:
	mov eax, edx
	add edx, 0x4
	mov [edi+0x4], edx
	mov edx, [ebp+0x10]
	mov ebx, [edx]
	lea edx, [eax-0x4]
	sub edx, [ebp+0xc]
	and edx, 0xfffffffc
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	sub eax, edx
	mov [esp], eax
	call memmove
	mov eax, [ebp+0xc]
	mov [eax], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__10:
	mov eax, edx
	sub eax, [edi]
	sar eax, 0x2
	cmp eax, 0x3fffffff
	jz _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__30
	test eax, eax
	jnz _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__40
	mov edx, 0x1
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100:
	shl edx, 0x2
	mov [ebp-0x1c], edx
	mov [esp], edx
	call _Znwm
	mov [ebp-0x20], eax
	mov eax, [edi]
	mov ebx, [ebp+0xc]
	sub ebx, eax
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov edx, [ebp-0x20]
	mov [esp], edx
	call memmove
	mov edx, [ebp-0x20]
	add edx, ebx
	jz _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__50
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [edx], eax
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__50:
	lea esi, [edx+0x4]
	mov ebx, [edi+0x4]
	sub ebx, [ebp+0xc]
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call memmove
	add ebx, esi
	mov edx, [edi+0x4]
	mov ecx, [edi]
	mov eax, ecx
	cmp ecx, edx
	jz _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__60
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__70:
	add eax, 0x4
	cmp eax, edx
	jnz _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__70
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__60:
	test ecx, ecx
	jz _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__80
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__80:
	mov edx, [ebp-0x20]
	mov [edi], edx
	mov [edi+0x4], ebx
	mov eax, edx
	add eax, [ebp-0x1c]
	mov [edi+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__40:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__90
	cmp edx, 0x3fffffff
	jbe _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__90:
	mov edx, 0x3fffffff
	jmp _ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100
_ZNSt6vectorIP12CStreamSoundSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__30:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc


;std::vector<CStreamSound*, std::allocator<CStreamSound*> >::erase(__gnu_cxx::__normal_iterator<CStreamSound**, std::vector<CStreamSound*, std::allocator<CStreamSound*> > >)
_ZNSt6vectorIP12CStreamSoundSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [esi+0x4]
	lea edx, [ebx+0x4]
	cmp edx, eax
	jz _ZNSt6vectorIP12CStreamSoundSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE_10
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memmove
	mov eax, [esi+0x4]
_ZNSt6vectorIP12CStreamSoundSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE_10:
	sub eax, 0x4
	mov [esi+0x4], eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of MacMSS_Stream:
SECTION .data


;Initialized constant data of MacMSS_Stream:
SECTION .rdata
;VTable for CStreamSound:
_ZTV12CStreamSound: dd 0x0, 0x3b4f00, _ZN12CStreamSoundD1Ev, _ZN12CStreamSoundD0Ev, _ZN12CStreamSound7ReleaseEv, _ZN12CSoundObject9TheadIdleEv, _ZN12CStreamSound11stop_sampleEv, _ZN12CStreamSound13resume_sampleEv, _ZN12CStreamSound10end_sampleEv, _ZN12CStreamSound22get_sample_ms_positionEPiS0_, _ZN12CStreamSound22set_sample_ms_positionEi, _ZN12CStreamSound24set_sample_playback_rateEi, _ZN12CStreamSound11open_streamEPKc, _ZN12CStreamSound12close_streamEv, _ZN12CStreamSound13ChangedVolumeEv, _ZN12CSoundObject13ChangedFormatEv, _ZN12CSoundObject17Changed3DPositionEv, _ZN12CSoundObject18Changed3DDistancesEv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of MacMSS_Stream:
SECTION .bss
_ZN12CStreamSound10sQTStreamsE: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_vector_m_insert_:		db "vector::_M_insert_aux",0



;All constant floats and doubles:
SECTION .rdata
_float_256_00000000:		dd 0x43800000	; 256
_float_128_00000000:		dd 0x43000000	; 128
_float_0_00390625:		dd 0x3b800000	; 0.00390625
_float_65536_00000000:		dd 0x47800000	; 65536
_float_1000_00000000:		dd 0x447a0000	; 1000

