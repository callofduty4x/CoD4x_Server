;Imports of MacMSS_Engine:
	extern _ZN6CMutex4LockEv
	extern _ZN10CCondition9BroadcastEv
	extern _ZN6CMutex6UnlockEv
	extern SetEventLoopTimerNextFireTime
	extern _ZN12StThreadLockC1EP7CThread
	extern _ZN12StThreadLockD1Ev
	extern _Unwind_Resume
	extern _Znwm
	extern _ZN12CStreamSoundC1ER12CSoundEngine
	extern _ZdlPv
	extern _ZN12CStreamSound16UpdateAllStreamsEv
	extern AUGraphGetCPULoad
	extern _ZNK12CSoundObject11IsAvailableEv
	extern _ZNK12CSoundObject12GetSoundTypeEv
	extern _ZN12CSampleSound10InitSampleEmmmm
	extern AudioUnitGetProperty
	extern AudioDeviceGetPropertyInfo
	extern calloc
	extern AudioDeviceGetProperty
	extern free
	extern __cxa_begin_catch
	extern __cxa_end_catch
	extern __cxa_allocate_exception
	extern __cxa_throw
	extern _ZN7CThread9IsRunningEv
	extern _ZN10CCondition4WaitER6CMutex
	extern QTGetTimeUntilNextTask
	extern _ZN7CThreadC2Ev
	extern _ZN6CMutexC1Ev
	extern _ZN10CConditionC1Ev
	extern FindNextComponent
	extern OpenComponent
	extern GetComponentVersion
	extern CloseComponent
	extern NewAUGraph
	extern AUGraphNewNode
	extern AUGraphOpen
	extern AUGraphGetNodeInfo
	extern AudioUnitSetProperty
	extern _Znam
	extern AUGraphUpdate
	extern _ZN12CSampleSoundC1ER12CSoundEnginem
	extern AUGraphConnectNodeInput
	extern AUGraphInitialize
	extern AUGraphStart
	extern _ZN7CThread3RunEPv
	extern GetMainEventLoop
	extern InstallEventLoopTimer
	extern QTInstallNextTaskNeededSoonerCallback
	extern _ZN10CConditionD1Ev
	extern _ZN6CMutexD1Ev
	extern _ZN7CThreadD2Ev
	extern _ZN7CThread4StopEv
	extern QTUninstallNextTaskNeededSoonerCallback
	extern RemoveEventLoopTimer
	extern _ZdaPv
	extern AUGraphStop
	extern DisposeAUGraph
	extern memmove
	extern _ZSt17__throw_bad_allocv
	extern _ZSt20__throw_length_errorPKc
	extern _ZTI7CThread

;Exports of MacMSS_Engine:
	global _ZN12CSoundEngine10WakeEngineEv
	global _ZN12CSoundEngine11mixer_countEv
	global _ZN12CSoundEngine12QTSoonerProcElmPv
	global _ZN12CSoundEngine14AddSoundObjectEP12CSoundObject
	global _ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE
	global _ZN12CSoundEngine14GetStreamSoundEP7_STREAM
	global _ZN12CSoundEngine14NewSampleSoundEv
	global _ZN12CSoundEngine14NewStreamSoundEv
	global _ZN12CSoundEngine15UpdateAllSoundsEv
	global _ZN12CSoundEngine15get_cpu_percentEv
	global _ZN12CSoundEngine16NewSampleSound3DEv
	global _ZN12CSoundEngine16set_3D_room_typeEi
	global _ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject
	global _ZN12CSoundEngine21GetAvailableSampleBusEm
	global _ZN12CSoundEngine21set_3D_rolloff_factorEf
	global _ZN12CSoundEngine22get_3D_distance_factorEv
	global _ZN12CSoundEngine22set_3D_distance_factorEf
	global _ZN12CSoundEngine24GetPreferredChannelCountEv
	global _ZN12CSoundEngine26minimum_sample_buffer_sizeEii
	global _ZN12CSoundEngine32set_digital_master_reverb_levelsEff
	global _ZN12CSoundEngine7ExecuteEPv
	global _ZN12CSoundEngine9TimerProcEP16__EventLoopTimerPv
	global _ZN12CSoundEngineC1Emh
	global _ZN12CSoundEngineD0Ev
	global _ZN12CSoundEngineD1Ev
	global _ZNK12CSoundEngine12GetMixerUnitEv
	global _ZNK12CSoundEngine15GetChannelCountEv
	global _ZNK12CSoundEngine19GetListenerUpVectorER11D3DXVECTOR3
	global _ZNK12CSoundEngine21GetDefaultMaxDistanceEv
	global _ZNK12CSoundEngine21GetListenerFaceVectorER11D3DXVECTOR3
	global _ZNK12CSoundEngine25IsDistanceScalingRequiredEv
	global _ZNK12CSoundEngine27GetDefaultReferenceDistanceEv
	global _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	global _ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
	global _ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7_
	global _ZTI12CSoundEngine
	global _ZTV12CSoundEngine


SECTION .text


;CSoundEngine::WakeEngine()
_ZN12CSoundEngine10WakeEngineEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	lea esi, [ebx+0x168]
	mov [esp], esi
	call _ZN6CMutex4LockEv
	test al, al
	jnz _ZN12CSoundEngine10WakeEngineEv_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSoundEngine10WakeEngineEv_10:
	lea eax, [ebx+0x194]
	mov [esp], eax
	call _ZN10CCondition9BroadcastEv
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN6CMutex6UnlockEv


;CSoundEngine::mixer_count()
_ZN12CSoundEngine11mixer_countEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x50]
	pop ebp
	ret
	nop


;CSoundEngine::QTSoonerProc(long, unsigned long, void*)
_ZN12CSoundEngine12QTSoonerProcElmPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cvtsi2sd xmm0, dword [ebp+0x8]
	mulsd xmm0, [_double_0_00100000]
	movsd [esp+0x4], xmm0
	mov eax, [ebp+0x10]
	mov eax, [eax+0x1b0]
	mov [esp], eax
	call SetEventLoopTimerNextFireTime
	leave
	ret


;CSoundEngine::AddSoundObject(CSoundObject*)
_ZN12CSoundEngine14AddSoundObjectEP12CSoundObject:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	lea esi, [ebp-0x10]
	mov [esp], esi
	call _ZN12StThreadLockC1EP7CThread
	lea ecx, [ebx+0x15c]
	mov edx, [ecx+0x4]
	cmp edx, [ecx+0x8]
	jz _ZN12CSoundEngine14AddSoundObjectEP12CSoundObject_10
	test edx, edx
	jz _ZN12CSoundEngine14AddSoundObjectEP12CSoundObject_20
	mov eax, [ebp+0xc]
	mov [edx], eax
	mov edx, [ecx+0x4]
_ZN12CSoundEngine14AddSoundObjectEP12CSoundObject_20:
	add edx, 0x4
	mov [ecx+0x4], edx
_ZN12CSoundEngine14AddSoundObjectEP12CSoundObject_30:
	mov [esp], esi
	call _ZN12StThreadLockD1Ev
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12CSoundEngine14AddSoundObjectEP12CSoundObject_10:
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	jmp _ZN12CSoundEngine14AddSoundObjectEP12CSoundObject_30
	mov ebx, eax
	mov [esp], esi
	call _ZN12StThreadLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;CSoundEngine::GetSampleSound(_SAMPLE*)
_ZN12CSoundEngine14GetSampleSoundEP7_SAMPLE:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	pop ebp
	ret


;CSoundEngine::GetStreamSound(_STREAM*)
_ZN12CSoundEngine14GetStreamSoundEP7_STREAM:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	pop ebp
	ret


;CSoundEngine::NewSampleSound()
_ZN12CSoundEngine14NewSampleSoundEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN12CSoundEngine21GetAvailableSampleBusEm
	leave
	ret
	nop
	add [eax], al


;CSoundEngine::NewStreamSound()
_ZN12CSoundEngine14NewStreamSoundEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0xd8
	call _Znwm
	mov esi, eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZN12CStreamSoundC1ER12CSoundEngine
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], esi
	call _ZdlPv
	mov [esp], ebx
	call _Unwind_Resume


;CSoundEngine::UpdateAllSounds()
_ZN12CSoundEngine15UpdateAllSoundsEv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _ZN12CStreamSound16UpdateAllStreamsEv
	nop


;CSoundEngine::get_cpu_percent()
_ZN12CSoundEngine15get_cpu_percentEv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x3c]
	mov [esp], eax
	call AUGraphGetCPULoad
	test eax, eax
	jnz _ZN12CSoundEngine15get_cpu_percentEv_10
	movss xmm0, dword [_float_100_00000000]
	mulss xmm0, [ebp-0xc]
	cvttss2si eax, xmm0
	test eax, eax
	jle _ZN12CSoundEngine15get_cpu_percentEv_10
	leave
	ret
_ZN12CSoundEngine15get_cpu_percentEv_10:
	mov eax, 0x1
	leave
	ret
	nop


;CSoundEngine::NewSampleSound3D()
_ZN12CSoundEngine16NewSampleSound3DEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN12CSoundEngine21GetAvailableSampleBusEm
	leave
	ret
	nop


;CSoundEngine::set_3D_room_type(int)
_ZN12CSoundEngine16set_3D_room_typeEi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x1cc], edx
	pop ebp
	ret
	nop


;CSoundEngine::RemoveSoundObject(CSoundObject*)
_ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN12StThreadLockC1EP7CThread
	lea edi, [ebx+0x15c]
	mov edx, [ebx+0x15c]
	mov eax, edx
	mov ecx, [ebx+0x160]
	cmp edx, ecx
	jz _ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject_10
	cmp esi, [edx]
	jz _ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject_20
	mov edx, ecx
_ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject_30:
	add eax, 0x4
	cmp eax, edx
	jz _ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject_10
	cmp esi, [eax]
	jnz _ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject_30
_ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject_20:
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
_ZN12CSoundEngine17RemoveSoundObjectEP12CSoundObject_10:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN12StThreadLockD1Ev
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CSoundEngine::GetAvailableSampleBus(unsigned long)
_ZN12CSoundEngine21GetAvailableSampleBusEm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov ecx, [edi+0x50]
	test ecx, ecx
	jz _ZN12CSoundEngine21GetAvailableSampleBusEm_10
	xor esi, esi
	jmp _ZN12CSoundEngine21GetAvailableSampleBusEm_20
_ZN12CSoundEngine21GetAvailableSampleBusEm_40:
	add esi, 0x1
	cmp esi, [edi+0x50]
	jae _ZN12CSoundEngine21GetAvailableSampleBusEm_30
_ZN12CSoundEngine21GetAvailableSampleBusEm_20:
	mov eax, [edi+0x54]
	mov ebx, [eax+esi*4]
	test ebx, ebx
	jz _ZN12CSoundEngine21GetAvailableSampleBusEm_40
	mov [esp], ebx
	call _ZNK12CSoundObject11IsAvailableEv
	test al, al
	jz _ZN12CSoundEngine21GetAvailableSampleBusEm_40
	mov [esp], ebx
	call _ZNK12CSoundObject12GetSoundTypeEv
	cmp [ebp+0xc], eax
	jnz _ZN12CSoundEngine21GetAvailableSampleBusEm_40
	mov eax, [edi+0x1c8]
	mov [esp+0x10], eax
	mov eax, [edi+0x1c4]
	mov [esp+0xc], eax
	mov eax, [edi+0x1c0]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN12CSampleSound10InitSampleEmmmm
	test eax, eax
	jnz _ZN12CSoundEngine21GetAvailableSampleBusEm_40
	mov eax, ebx
	jmp _ZN12CSoundEngine21GetAvailableSampleBusEm_50
_ZN12CSoundEngine21GetAvailableSampleBusEm_10:
	xor eax, eax
_ZN12CSoundEngine21GetAvailableSampleBusEm_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundEngine21GetAvailableSampleBusEm_30:
	mov edx, [edi+0x50]
	test edx, edx
	jz _ZN12CSoundEngine21GetAvailableSampleBusEm_10
	xor esi, esi
	jmp _ZN12CSoundEngine21GetAvailableSampleBusEm_60
_ZN12CSoundEngine21GetAvailableSampleBusEm_70:
	add esi, 0x1
	cmp esi, [edi+0x50]
	jae _ZN12CSoundEngine21GetAvailableSampleBusEm_10
_ZN12CSoundEngine21GetAvailableSampleBusEm_60:
	mov eax, [edi+0x54]
	mov ebx, [eax+esi*4]
	test ebx, ebx
	jz _ZN12CSoundEngine21GetAvailableSampleBusEm_70
	mov [esp], ebx
	call _ZNK12CSoundObject11IsAvailableEv
	test al, al
	jz _ZN12CSoundEngine21GetAvailableSampleBusEm_70
	mov eax, [edi+0x1c8]
	mov [esp+0x10], eax
	mov eax, [edi+0x1c4]
	mov [esp+0xc], eax
	mov eax, [edi+0x1c0]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN12CSampleSound10InitSampleEmmmm
	test eax, eax
	jnz _ZN12CSoundEngine21GetAvailableSampleBusEm_70
	mov eax, ebx
	jmp _ZN12CSoundEngine21GetAvailableSampleBusEm_50
	nop


;CSoundEngine::set_3D_rolloff_factor(float)
_ZN12CSoundEngine21set_3D_rolloff_factorEf:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x1d0], edx
	pop ebp
	ret
	nop


;CSoundEngine::get_3D_distance_factor()
_ZN12CSoundEngine22get_3D_distance_factorEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	fld dword [eax+0x1d4]
	pop ebp
	ret


;CSoundEngine::set_3D_distance_factor(float)
_ZN12CSoundEngine22set_3D_distance_factorEf:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x1d4], edx
	pop ebp
	ret
	nop
	add [eax], al


;CSoundEngine::GetPreferredChannelCount()
_ZN12CSoundEngine24GetPreferredChannelCountEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	xor edi, edi
	mov dword [ebp-0x20], 0x4
	lea esi, [ebp-0x20]
	mov [esp+0x14], esi
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x7d0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4c]
	mov [esp], eax
	call AudioUnitGetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngine24GetPreferredChannelCountEv_10
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x73726e64
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call AudioDeviceGetPropertyInfo
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngine24GetPreferredChannelCountEv_10
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call calloc
	mov ebx, eax
	mov edi, eax
	test eax, eax
	jz _ZN12CSoundEngine24GetPreferredChannelCountEv_20
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x73726e64
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call AudioDeviceGetProperty
	mov esi, eax
	test eax, eax
	jnz _ZN12CSoundEngine24GetPreferredChannelCountEv_30
	mov eax, [ebx]
	test eax, eax
	jz _ZN12CSoundEngine24GetPreferredChannelCountEv_40
	cmp eax, 0x10000
	jz _ZN12CSoundEngine24GetPreferredChannelCountEv_50
	movzx ebx, ax
_ZN12CSoundEngine24GetPreferredChannelCountEv_110:
	mov [esp], edi
	call free
	test ebx, ebx
	jz _ZN12CSoundEngine24GetPreferredChannelCountEv_60
	cmp ebx, 0x3
	jbe _ZN12CSoundEngine24GetPreferredChannelCountEv_60
	cmp ebx, 0x5
	jbe _ZN12CSoundEngine24GetPreferredChannelCountEv_70
	mov ebx, 0x5
_ZN12CSoundEngine24GetPreferredChannelCountEv_70:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundEngine24GetPreferredChannelCountEv_40:
	mov esi, [ebx+0x8]
	cmp esi, 0x2
	jz _ZN12CSoundEngine24GetPreferredChannelCountEv_80
	test esi, esi
	jz _ZN12CSoundEngine24GetPreferredChannelCountEv_90
	mov ecx, ebx
	xor ebx, ebx
	xor edx, edx
_ZN12CSoundEngine24GetPreferredChannelCountEv_100:
	lea eax, [ebx+0x1]
	cmp dword [ecx+0xc], 0xffffffff
	cmovnz ebx, eax
	add edx, 0x1
	add ecx, 0x14
	cmp esi, edx
	jnz _ZN12CSoundEngine24GetPreferredChannelCountEv_100
	jmp _ZN12CSoundEngine24GetPreferredChannelCountEv_110
	mov [esp], eax
	call __cxa_begin_catch
	call __cxa_end_catch
	test edi, edi
	jnz _ZN12CSoundEngine24GetPreferredChannelCountEv_90
_ZN12CSoundEngine24GetPreferredChannelCountEv_60:
	mov ebx, 0x2
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundEngine24GetPreferredChannelCountEv_90:
	xor ebx, ebx
	jmp _ZN12CSoundEngine24GetPreferredChannelCountEv_110
_ZN12CSoundEngine24GetPreferredChannelCountEv_80:
	mov ebx, 0x2
	jmp _ZN12CSoundEngine24GetPreferredChannelCountEv_110
_ZN12CSoundEngine24GetPreferredChannelCountEv_50:
	mov edx, [ebx+0x4]
	mov eax, edx
	shr eax, 1
	and eax, 0x55555555
	sub edx, eax
	mov eax, edx
	shr eax, 0x2
	and eax, 0x33333333
	and edx, 0x33333333
	add eax, edx
	mov edx, eax
	shr edx, 0x4
	add eax, edx
	and eax, 0xf0f0f0f
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	lea ebx, [eax+edx]
	shr ebx, 0x18
	jmp _ZN12CSoundEngine24GetPreferredChannelCountEv_110
_ZN12CSoundEngine24GetPreferredChannelCountEv_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], ebx
_ZN12CSoundEngine24GetPreferredChannelCountEv_120:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_ZN12CSoundEngine24GetPreferredChannelCountEv_30:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], esi
	jmp _ZN12CSoundEngine24GetPreferredChannelCountEv_120
_ZN12CSoundEngine24GetPreferredChannelCountEv_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], 0xffffffce
	jmp _ZN12CSoundEngine24GetPreferredChannelCountEv_120


;CSoundEngine::minimum_sample_buffer_size(int, int)
_ZN12CSoundEngine26minimum_sample_buffer_sizeEii:
	push ebp
	mov ebp, esp
	mov eax, 0x800
	pop ebp
	ret
	add [eax], al


;CSoundEngine::set_digital_master_reverb_levels(float, float)
_ZN12CSoundEngine32set_digital_master_reverb_levelsEff:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CSoundEngine::Execute(void*)
_ZN12CSoundEngine7ExecuteEPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
_ZN12CSoundEngine7ExecuteEPv_50:
	mov [esp], edi
	call _ZN7CThread9IsRunningEv
	test al, al
	jz _ZN12CSoundEngine7ExecuteEPv_10
_ZN12CSoundEngine7ExecuteEPv_60:
	mov eax, [edi+0x160]
	sub eax, [edi+0x15c]
	sar eax, 0x2
	test eax, eax
	jz _ZN12CSoundEngine7ExecuteEPv_20
	mov [esp+0x4], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN12StThreadLockC1EP7CThread
	mov ebx, [edi+0x15c]
	lea esi, [edi+0x160]
	cmp ebx, [edi+0x160]
	jz _ZN12CSoundEngine7ExecuteEPv_30
_ZN12CSoundEngine7ExecuteEPv_40:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	add ebx, 0x4
	cmp ebx, [esi]
	jnz _ZN12CSoundEngine7ExecuteEPv_40
_ZN12CSoundEngine7ExecuteEPv_30:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN12StThreadLockD1Ev
_ZN12CSoundEngine7ExecuteEPv_20:
	lea ebx, [edi+0x168]
	mov [esp], ebx
	call _ZN6CMutex4LockEv
	test al, al
	jz _ZN12CSoundEngine7ExecuteEPv_50
	mov [esp+0x4], ebx
	lea eax, [edi+0x194]
	mov [esp], eax
	call _ZN10CCondition4WaitER6CMutex
	mov [esp], ebx
	call _ZN6CMutex6UnlockEv
	mov [esp], edi
	call _ZN7CThread9IsRunningEv
	test al, al
	jnz _ZN12CSoundEngine7ExecuteEPv_60
_ZN12CSoundEngine7ExecuteEPv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov ebx, eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN12StThreadLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CSoundEngine::TimerProc(__EventLoopTimer*, void*)
_ZN12CSoundEngine9TimerProcEP16__EventLoopTimerPv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	call _ZN12CStreamSound16UpdateAllStreamsEv
	mov dword [esp+0x4], 0x3e8
	lea eax, [ebp-0xc]
	mov [esp], eax
	call QTGetTimeUntilNextTask
	test ax, ax
	jnz _ZN12CSoundEngine9TimerProcEP16__EventLoopTimerPv_10
	mov eax, 0x1
	mov edx, [ebp-0xc]
	test edx, edx
	cmovnz eax, [ebp-0xc]
	mov [ebp-0xc], eax
	cvtsi2sd xmm0, eax
	mulsd xmm0, [_double_0_00100000]
	movsd [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SetEventLoopTimerNextFireTime
_ZN12CSoundEngine9TimerProcEP16__EventLoopTimerPv_10:
	leave
	ret
	nop
	add [eax], al


;CSoundEngine::CSoundEngine(unsigned long, unsigned char)
_ZN12CSoundEngineC1Emh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov esi, [ebp+0x8]
	movzx eax, byte [ebp+0x10]
	mov [ebp-0xb5], al
	mov [esp], esi
	call _ZN7CThreadC2Ev
	mov dword [esi], _ZTV12CSoundEngine+0x8
	mov dword [esi+0x3c], 0x0
	mov dword [esi+0x40], 0x0
	mov dword [esi+0x44], 0x0
	mov dword [esi+0x48], 0x0
	mov dword [esi+0x4c], 0x0
	mov eax, [ebp+0xc]
	mov [esi+0x50], eax
	mov dword [esi+0x54], 0x0
	mov dword [esi+0x58], 0x0
	lea eax, [esi+0x15c]
	mov [ebp-0xac], eax
	mov dword [esi+0x15c], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea eax, [esi+0x168]
	mov [ebp-0xb4], eax
	mov [esp], eax
	call _ZN6CMutexC1Ev
	lea eax, [esi+0x194]
	mov [ebp-0xb0], eax
	mov [esp], eax
	call _ZN10CConditionC1Ev
	mov dword [esi+0x1b0], 0x0
	mov byte [esi+0x1b4], 0x0
	mov ecx, 0x3f800000
	mov [esi+0x1b8], ecx
	mov dword [esi+0x1bc], 0x47c35000
	mov dword [esi+0x1c0], 0x5
	mov dword [esi+0x1c4], 0x0
	mov dword [esi+0x1c8], 0x0
	mov dword [esi+0x1cc], 0x0
	mov [esi+0x1d0], ecx
	mov [esi+0x1d4], ecx
	lea edx, [esi+0x1d8]
	xor eax, eax
	mov [esi+0x1d8], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [esi+0x1e4]
	mov [esi+0x1e4], eax
	mov [edx+0x4], eax
	mov dword [edx+0x8], 0xbf800000
	lea edx, [esi+0x1f0]
	mov [esi+0x1f0], eax
	mov [edx+0x4], ecx
	mov [edx+0x8], eax
	lea eax, [esi+0x5c]
	mov [ebp-0xbc], eax
	mov dword [esi+0x5c], 0x61666544
	mov dword [eax+0x4], 0x20746c75
	mov dword [eax+0x8], 0x69647541
	mov word [eax+0xc], 0x6f
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x4c], 0x61756d78
	mov dword [ebp-0x48], 0x33646d78
	mov dword [ebp-0x44], 0x6170706c
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call FindNextComponent
	test eax, eax
	jz _ZN12CSoundEngineC1Emh_10
	mov [esp], eax
	call OpenComponent
	mov edi, eax
	test eax, eax
	jz _ZN12CSoundEngineC1Emh_10
	mov [esp], eax
	call GetComponentVersion
	mov ebx, eax
	mov [esp], edi
	call CloseComponent
	cmp ebx, 0x1ffff
	jle _ZN12CSoundEngineC1Emh_20
	cmp ebx, 0x20000
	jz _ZN12CSoundEngineC1Emh_30
_ZN12CSoundEngineC1Emh_130:
	mov dword [ebp-0x54], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x60], 0x61756f75
	mov dword [ebp-0x5c], 0x64656620
	mov dword [ebp-0x58], 0x6170706c
	lea eax, [esi+0x3c]
	mov [esp], eax
	call NewAUGraph
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	lea eax, [esi+0x40]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphNewNode
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	lea eax, [esi+0x48]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphNewNode
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphOpen
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	lea eax, [esi+0x44]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, [esi+0x40]
	mov [esp+0x4], eax
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphGetNodeInfo
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	lea eax, [esi+0x4c]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, [esi+0x48]
	mov [esp+0x4], eax
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphGetNodeInfo
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov dword [ebp-0x28], 0x4
	lea eax, [ebp-0x28]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb
	mov eax, [esi+0x44]
	mov [esp], eax
	call AudioUnitGetProperty
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_50
	mov eax, [esi+0x50]
	cmp eax, [ebp-0x24]
	jz _ZN12CSoundEngineC1Emh_60
	mov dword [esp+0x14], 0x4
	lea eax, [esi+0x50]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb
	mov eax, [esi+0x44]
	mov [esp], eax
	call AudioUnitSetProperty
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_70
_ZN12CSoundEngineC1Emh_50:
	mov eax, [esi+0x50]
_ZN12CSoundEngineC1Emh_60:
	shl eax, 0x2
	mov [esp], eax
	call _Znam
	mov [esi+0x54], eax
	mov ecx, [esi+0x50]
	test ecx, ecx
	jnz _ZN12CSoundEngineC1Emh_80
_ZN12CSoundEngineC1Emh_90:
	mov dword [esp+0x4], 0x0
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphUpdate
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_90
	cld
	mov ecx, 0xa
	lea edi, [ebp-0xa8]
	rep stosd
	mov dword [ebp-0x28], 0x28
	lea eax, [ebp-0x28]
	mov [esp+0x14], eax
	lea eax, [ebp-0xa8]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x8
	mov eax, [esi+0x4c]
	mov [esp], eax
	call AudioUnitGetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov [esp], esi
	call _ZN12CSoundEngine24GetPreferredChannelCountEv
	mov [esi+0x58], eax
	mov dword [ebp-0xa0], 0x6c70636d
	mov dword [ebp-0x88], 0x20
	mov [ebp-0x8c], eax
	mov dword [ebp-0x94], 0x1
	mov dword [ebp-0x90], 0x4
	mov dword [ebp-0x98], 0x4
	mov dword [ebp-0x9c], 0x29
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x40e58880
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	lea eax, [ebp-0xa8]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x8
	mov eax, [esi+0x4c]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	lea eax, [ebp-0xa8]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x8
	mov eax, [esi+0x44]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov eax, [esi+0x58]
	cmp eax, 0x4
	jz _ZN12CSoundEngineC1Emh_100
	cmp eax, 0x5
	jz _ZN12CSoundEngineC1Emh_110
	cmp eax, 0x2
	jz _ZN12CSoundEngineC1Emh_120
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], 0xffffff33
_ZN12CSoundEngineC1Emh_250:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_ZN12CSoundEngineC1Emh_30:
	mov byte [esi+0x1b4], 0x1
	jmp _ZN12CSoundEngineC1Emh_130
_ZN12CSoundEngineC1Emh_80:
	xor ebx, ebx
_ZN12CSoundEngineC1Emh_140:
	mov dword [esp], 0x124
	call _Znwm
	mov edi, eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call _ZN12CSampleSoundC1ER12CSoundEnginem
	mov eax, [esi+0x54]
	mov [eax+ebx*4], edi
	add ebx, 0x1
	cmp ebx, [esi+0x50]
	jb _ZN12CSoundEngineC1Emh_140
	jmp _ZN12CSoundEngineC1Emh_90
_ZN12CSoundEngineC1Emh_100:
	mov dword [ebp-0x80], 0x6c0004
_ZN12CSoundEngineC1Emh_230:
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x28], 0x20
	mov dword [esp+0x14], 0x20
	lea edi, [ebp-0x80]
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x13
	mov eax, [esi+0x44]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x13
	mov eax, [esi+0x4c]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov dword [ebp-0x28], 0x4
	lea eax, [ebp-0x28]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x7d0
	mov eax, [esi+0x4c]
	mov [esp], eax
	call AudioUnitGetProperty
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_150
	mov dword [ebp-0x28], 0x4
	lea ebx, [ebp-0x2c]
	mov [esp+0x14], ebx
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x6673697a
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call AudioDeviceGetProperty
	test eax, eax
	jz _ZN12CSoundEngineC1Emh_160
_ZN12CSoundEngineC1Emh_240:
	mov dword [ebp-0x28], 0x100
	mov eax, [ebp-0xbc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x6e616d65
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call AudioDeviceGetProperty
_ZN12CSoundEngineC1Emh_150:
	mov dword [ebp-0x20], 0x0
	mov dword [esp+0x14], 0x4
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3ed
	mov eax, [esi+0x44]
	mov [esp], eax
	call AudioUnitSetProperty
	mov dword [esp+0x10], 0x0
	mov eax, [esi+0x48]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [esi+0x40]
	mov [esp+0x4], eax
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphConnectNodeInput
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphInitialize
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
_ZN12CSoundEngineC1Emh_170:
	mov dword [esp+0x4], 0x0
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphUpdate
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_170
	mov dword [ebp-0x28], 0xc
	lea eax, [ebp-0x28]
	mov [esp+0x14], eax
	lea eax, [ebp-0x38]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xbc2
	mov eax, [esi+0x44]
	mov [esp], eax
	call AudioUnitGetProperty
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_180
	mov eax, [ebp-0x38]
	mov [esi+0x1b8], eax
	mov eax, [ebp-0x34]
	mov [esi+0x1bc], eax
_ZN12CSoundEngineC1Emh_180:
	cmp dword [esi+0x58], 0x2
	jbe _ZN12CSoundEngineC1Emh_190
	mov dword [esi+0x1c0], 0x3
_ZN12CSoundEngineC1Emh_220:
	cmp byte [ebp-0xb5], 0x1
	sbb eax, eax
	add eax, 0x5
	mov [esi+0x1c4], eax
	mov edx, [ebp-0x20]
	test edx, edx
	jz _ZN12CSoundEngineC1Emh_200
	or eax, 0x10
	mov [esi+0x1c4], eax
_ZN12CSoundEngineC1Emh_200:
	mov eax, [esi+0x3c]
	mov [esp], eax
	call AUGraphStart
	mov ebx, eax
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_40
	mov eax, [esi+0x1b0]
	test eax, eax
	jz _ZN12CSoundEngineC1Emh_210
_ZN12CSoundEngineC1Emh_260:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _ZN7CThread3RunEPv
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundEngineC1Emh_190:
	cmp byte [ebp-0xb5], 0x1
	sbb eax, eax
	not eax
	and eax, 0x2
	mov [esi+0x1c0], eax
	jmp _ZN12CSoundEngineC1Emh_220
_ZN12CSoundEngineC1Emh_110:
	mov dword [ebp-0x80], 0x760005
	jmp _ZN12CSoundEngineC1Emh_230
_ZN12CSoundEngineC1Emh_70:
	mov eax, [ebp-0x24]
	mov [esi+0x50], eax
	jmp _ZN12CSoundEngineC1Emh_60
_ZN12CSoundEngineC1Emh_160:
	mov dword [esp+0x14], 0x4
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe
	mov eax, [esi+0x44]
	mov [esp], eax
	call AudioUnitSetProperty
	mov dword [esp+0x14], 0x4
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe
	mov eax, [esi+0x4c]
	mov [esp], eax
	call AudioUnitSetProperty
	jmp _ZN12CSoundEngineC1Emh_240
_ZN12CSoundEngineC1Emh_120:
	mov dword [ebp-0x80], 0x650002
	jmp _ZN12CSoundEngineC1Emh_230
_ZN12CSoundEngineC1Emh_40:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], ebx
	jmp _ZN12CSoundEngineC1Emh_250
_ZN12CSoundEngineC1Emh_210:
	lea ebx, [esi+0x1b0]
	call GetMainEventLoop
	mov [esp+0x1c], ebx
	mov [esp+0x18], esi
	mov dword [esp+0x14], _ZN12CSoundEngine9TimerProcEP16__EventLoopTimerPv
	mov dword [esp+0xc], 0xd2f1a9fc
	mov dword [esp+0x10], 0x3f50624d
	mov dword [esp+0x4], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp], eax
	call InstallEventLoopTimer
	test eax, eax
	jnz _ZN12CSoundEngineC1Emh_260
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3e8
	mov dword [esp], _ZN12CSoundEngine12QTSoonerProcElmPv
	call QTInstallNextTaskNeededSoonerCallback
	jmp _ZN12CSoundEngineC1Emh_260
_ZN12CSoundEngineC1Emh_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], 0xffffffce
	jmp _ZN12CSoundEngineC1Emh_250
_ZN12CSoundEngineC1Emh_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], 0xffffea83
	jmp _ZN12CSoundEngineC1Emh_250
	mov ebx, eax
_ZN12CSoundEngineC1Emh_320:
	mov eax, [ebp-0xb0]
	mov [esp], eax
	call _ZN10CConditionD1Ev
_ZN12CSoundEngineC1Emh_300:
	mov eax, [ebp-0xb4]
	mov [esp], eax
	call _ZN6CMutexD1Ev
_ZN12CSoundEngineC1Emh_310:
	mov eax, [ebp-0xac]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov eax, edx
	cmp ecx, edx
	jz _ZN12CSoundEngineC1Emh_270
_ZN12CSoundEngineC1Emh_280:
	add eax, 0x4
	cmp ecx, eax
	jnz _ZN12CSoundEngineC1Emh_280
_ZN12CSoundEngineC1Emh_270:
	test edx, edx
	jz _ZN12CSoundEngineC1Emh_290
	mov [esp], edx
	call _ZdlPv
_ZN12CSoundEngineC1Emh_290:
	mov [esp], esi
	call _ZN7CThreadD2Ev
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	jmp _ZN12CSoundEngineC1Emh_300
	mov ebx, eax
	jmp _ZN12CSoundEngineC1Emh_310
	mov ebx, eax
	mov [esp], edi
	call _ZdlPv
	jmp _ZN12CSoundEngineC1Emh_320
	nop


;CSoundEngine::~CSoundEngine()
_ZN12CSoundEngineD0Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV12CSoundEngine+0x8
	mov [esp+0x4], eax
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	lea edx, [eax+0x15c]
	mov [ebp-0x2c], edx
	call _ZN12StThreadLockC1EP7CThread
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x4]
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7_
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZN7CThread4StopEv
	mov [esp], ebx
	call _ZN12StThreadLockD1Ev
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x1b0]
	test esi, esi
	jz _ZN12CSoundEngineD0Ev_10
	mov [esp+0x4], ecx
	mov dword [esp], _ZN12CSoundEngine12QTSoonerProcElmPv
	call QTUninstallNextTaskNeededSoonerCallback
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1b0]
	mov [esp], eax
	call RemoveEventLoopTimer
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x1b0], 0x0
	mov edx, [ebp+0x8]
_ZN12CSoundEngineD0Ev_130:
	mov eax, [edx+0x54]
	test eax, eax
	jz _ZN12CSoundEngineD0Ev_20
	mov ebx, [edx+0x50]
	test ebx, ebx
	jnz _ZN12CSoundEngineD0Ev_30
_ZN12CSoundEngineD0Ev_100:
	mov [esp], eax
	call _ZdaPv
_ZN12CSoundEngineD0Ev_20:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x3c]
	test eax, eax
	jz _ZN12CSoundEngineD0Ev_40
_ZN12CSoundEngineD0Ev_110:
	mov [esp], eax
	call AUGraphStop
	mov edx, [ebp+0x8]
	mov eax, [edx+0x3c]
	mov [esp], eax
	call DisposeAUGraph
	mov eax, [ebp+0x8]
_ZN12CSoundEngineD0Ev_120:
	add eax, 0x194
	mov [esp], eax
	call _ZN10CConditionD1Ev
	mov eax, [ebp+0x8]
	add eax, 0x168
	mov [esp], eax
	call _ZN6CMutexD1Ev
	mov ecx, [ebp-0x2c]
	mov edx, [ecx+0x4]
	mov ecx, [ecx]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN12CSoundEngineD0Ev_50
_ZN12CSoundEngineD0Ev_60:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN12CSoundEngineD0Ev_60
_ZN12CSoundEngineD0Ev_50:
	test ecx, ecx
	jz _ZN12CSoundEngineD0Ev_70
	mov [esp], ecx
	call _ZdlPv
_ZN12CSoundEngineD0Ev_70:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN7CThreadD2Ev
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZdlPv
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundEngineD0Ev_30:
	xor esi, esi
_ZN12CSoundEngineD0Ev_90:
	lea edi, [esi*4]
	mov ebx, [eax+edi]
	test ebx, ebx
	jz _ZN12CSoundEngineD0Ev_80
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x4]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x54]
	mov dword [eax+edi], 0x0
	mov eax, [ecx+0x54]
_ZN12CSoundEngineD0Ev_80:
	add esi, 0x1
	mov edx, [ebp+0x8]
	cmp esi, [edx+0x50]
	jb _ZN12CSoundEngineD0Ev_90
	test eax, eax
	jnz _ZN12CSoundEngineD0Ev_100
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x3c]
	test eax, eax
	jnz _ZN12CSoundEngineD0Ev_110
_ZN12CSoundEngineD0Ev_40:
	mov eax, ecx
	jmp _ZN12CSoundEngineD0Ev_120
_ZN12CSoundEngineD0Ev_10:
	mov edx, ecx
	jmp _ZN12CSoundEngineD0Ev_130
	mov esi, eax
_ZN12CSoundEngineD0Ev_170:
	mov ecx, [ebp-0x2c]
	mov edx, [ecx+0x4]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	cmp edx, eax
	jz _ZN12CSoundEngineD0Ev_140
_ZN12CSoundEngineD0Ev_150:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN12CSoundEngineD0Ev_150
_ZN12CSoundEngineD0Ev_140:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	test eax, eax
	jz _ZN12CSoundEngineD0Ev_160
	mov [esp], eax
	call _ZdlPv
_ZN12CSoundEngineD0Ev_160:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _ZN7CThreadD2Ev
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	mov [esp], ebx
	call _ZN12StThreadLockD1Ev
_ZN12CSoundEngineD0Ev_190:
	mov eax, [ebp+0x8]
	add eax, 0x194
	mov [esp], eax
	call _ZN10CConditionD1Ev
_ZN12CSoundEngineD0Ev_180:
	mov eax, [ebp+0x8]
	add eax, 0x168
	mov [esp], eax
	call _ZN6CMutexD1Ev
	jmp _ZN12CSoundEngineD0Ev_170
	mov esi, eax
	jmp _ZN12CSoundEngineD0Ev_180
	mov esi, eax
	jmp _ZN12CSoundEngineD0Ev_190
	nop


;CSoundEngine::~CSoundEngine()
_ZN12CSoundEngineD1Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV12CSoundEngine+0x8
	mov [esp+0x4], eax
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	lea edx, [eax+0x15c]
	mov [ebp-0x2c], edx
	call _ZN12StThreadLockC1EP7CThread
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x4]
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7_
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZN7CThread4StopEv
	mov [esp], ebx
	call _ZN12StThreadLockD1Ev
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1b0]
	test ebx, ebx
	jz _ZN12CSoundEngineD1Ev_10
	mov [esp+0x4], ecx
	mov dword [esp], _ZN12CSoundEngine12QTSoonerProcElmPv
	call QTUninstallNextTaskNeededSoonerCallback
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1b0]
	mov [esp], eax
	call RemoveEventLoopTimer
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x1b0], 0x0
	mov edx, [ebp+0x8]
_ZN12CSoundEngineD1Ev_130:
	mov eax, [edx+0x54]
	test eax, eax
	jz _ZN12CSoundEngineD1Ev_20
	mov edx, [edx+0x50]
	test edx, edx
	jnz _ZN12CSoundEngineD1Ev_30
_ZN12CSoundEngineD1Ev_100:
	mov [esp], eax
	call _ZdaPv
_ZN12CSoundEngineD1Ev_20:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x3c]
	test eax, eax
	jz _ZN12CSoundEngineD1Ev_40
_ZN12CSoundEngineD1Ev_110:
	mov [esp], eax
	call AUGraphStop
	mov edx, [ebp+0x8]
	mov eax, [edx+0x3c]
	mov [esp], eax
	call DisposeAUGraph
	mov eax, [ebp+0x8]
_ZN12CSoundEngineD1Ev_120:
	add eax, 0x194
	mov [esp], eax
	call _ZN10CConditionD1Ev
	mov eax, [ebp+0x8]
	add eax, 0x168
	mov [esp], eax
	call _ZN6CMutexD1Ev
	mov ecx, [ebp-0x2c]
	mov edx, [ecx+0x4]
	mov ecx, [ecx]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN12CSoundEngineD1Ev_50
_ZN12CSoundEngineD1Ev_60:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN12CSoundEngineD1Ev_60
_ZN12CSoundEngineD1Ev_50:
	test ecx, ecx
	jz _ZN12CSoundEngineD1Ev_70
	mov [esp], ecx
	call _ZdlPv
_ZN12CSoundEngineD1Ev_70:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN7CThreadD2Ev
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CSoundEngineD1Ev_30:
	xor esi, esi
_ZN12CSoundEngineD1Ev_90:
	lea edi, [esi*4]
	mov ebx, [eax+edi]
	test ebx, ebx
	jz _ZN12CSoundEngineD1Ev_80
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x4]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x54]
	mov dword [eax+edi], 0x0
	mov eax, [ecx+0x54]
_ZN12CSoundEngineD1Ev_80:
	add esi, 0x1
	mov edx, [ebp+0x8]
	cmp esi, [edx+0x50]
	jb _ZN12CSoundEngineD1Ev_90
	test eax, eax
	jnz _ZN12CSoundEngineD1Ev_100
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x3c]
	test eax, eax
	jnz _ZN12CSoundEngineD1Ev_110
_ZN12CSoundEngineD1Ev_40:
	mov eax, ecx
	jmp _ZN12CSoundEngineD1Ev_120
_ZN12CSoundEngineD1Ev_10:
	mov edx, ecx
	jmp _ZN12CSoundEngineD1Ev_130
	mov esi, eax
_ZN12CSoundEngineD1Ev_170:
	mov ecx, [ebp-0x2c]
	mov edx, [ecx+0x4]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	cmp edx, eax
	jz _ZN12CSoundEngineD1Ev_140
_ZN12CSoundEngineD1Ev_150:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN12CSoundEngineD1Ev_150
_ZN12CSoundEngineD1Ev_140:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	test eax, eax
	jz _ZN12CSoundEngineD1Ev_160
	mov [esp], eax
	call _ZdlPv
_ZN12CSoundEngineD1Ev_160:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _ZN7CThreadD2Ev
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	mov [esp], ebx
	call _ZN12StThreadLockD1Ev
_ZN12CSoundEngineD1Ev_190:
	mov eax, [ebp+0x8]
	add eax, 0x194
	mov [esp], eax
	call _ZN10CConditionD1Ev
_ZN12CSoundEngineD1Ev_180:
	mov eax, [ebp+0x8]
	add eax, 0x168
	mov [esp], eax
	call _ZN6CMutexD1Ev
	jmp _ZN12CSoundEngineD1Ev_170
	mov esi, eax
	jmp _ZN12CSoundEngineD1Ev_180
	mov esi, eax
	jmp _ZN12CSoundEngineD1Ev_190
	add [eax], al


;CSoundEngine::GetMixerUnit() const
_ZNK12CSoundEngine12GetMixerUnitEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x44]
	pop ebp
	ret
	nop


;CSoundEngine::GetChannelCount() const
_ZNK12CSoundEngine15GetChannelCountEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x58]
	pop ebp
	ret
	nop


;CSoundEngine::GetListenerUpVector(D3DXVECTOR3&) const
_ZNK12CSoundEngine19GetListenerUpVectorER11D3DXVECTOR3:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx+0x1f0]
	mov [ecx], eax
	mov eax, [edx+0x1f4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x1f8]
	mov [ecx+0x8], eax
	pop ebp
	ret
	nop


;CSoundEngine::GetDefaultMaxDistance() const
_ZNK12CSoundEngine21GetDefaultMaxDistanceEv:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x1bc]
	divss xmm0, dword [eax+0x1d4]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	nop
	add [eax], al


;CSoundEngine::GetListenerFaceVector(D3DXVECTOR3&) const
_ZNK12CSoundEngine21GetListenerFaceVectorER11D3DXVECTOR3:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx+0x1e4]
	mov [ecx], eax
	mov eax, [edx+0x1e8]
	mov [ecx+0x4], eax
	mov eax, [edx+0x1ec]
	mov [ecx+0x8], eax
	pop ebp
	ret
	nop


;CSoundEngine::IsDistanceScalingRequired() const
_ZNK12CSoundEngine25IsDistanceScalingRequiredEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x1b4]
	pop ebp
	ret
	nop


;CSoundEngine::GetDefaultReferenceDistance() const
_ZNK12CSoundEngine27GetDefaultReferenceDistanceEv:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x1b8]
	divss xmm0, dword [eax+0x1d4]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	nop


;std::vector<CSoundObject*, std::allocator<CSoundObject*> >::_M_insert_aux(__gnu_cxx::__normal_iterator<CSoundObject**, std::vector<CSoundObject*, std::allocator<CSoundObject*> > >, CSoundObject* const&)
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x4]
	cmp edx, [edi+0x8]
	jz _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__10
	test edx, edx
	jz _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__20
	mov eax, [edx-0x4]
	mov [edx], eax
	mov edx, [edi+0x4]
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__20:
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
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__10:
	mov eax, edx
	sub eax, [edi]
	sar eax, 0x2
	cmp eax, 0x3fffffff
	jz _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__30
	test eax, eax
	jnz _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__40
	mov edx, 0x1
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100:
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
	jz _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__50
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [edx], eax
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__50:
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
	jz _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__60
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__70:
	add eax, 0x4
	cmp eax, edx
	jnz _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__70
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__60:
	test ecx, ecx
	jz _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__80
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__80:
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
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__40:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__90
	cmp edx, 0x3fffffff
	jbe _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__90:
	mov edx, 0x3fffffff
	jmp _ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100
_ZNSt6vectorIP12CSoundObjectSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__30:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc


;std::vector<CSoundObject*, std::allocator<CSoundObject*> >::erase(__gnu_cxx::__normal_iterator<CSoundObject**, std::vector<CSoundObject*, std::allocator<CSoundObject*> > >)
_ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE:
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
	jz _ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE_10
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memmove
	mov eax, [esi+0x4]
_ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE_10:
	sub eax, 0x4
	mov [esi+0x4], eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;std::vector<CSoundObject*, std::allocator<CSoundObject*> >::erase(__gnu_cxx::__normal_iterator<CSoundObject**, std::vector<CSoundObject*, std::allocator<CSoundObject*> > >, __gnu_cxx::__normal_iterator<CSoundObject**, std::vector<CSoundObject*, std::allocator<CSoundObject*> > >)
_ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x4]
	sub ebx, esi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call memmove
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	lea eax, [edi+ebx]
	cmp edx, eax
	jz _ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7__10
_ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7__20:
	add eax, 0x4
	cmp edx, eax
	jnz _ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7__20
_ZNSt6vectorIP12CSoundObjectSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7__10:
	sub esi, edi
	and esi, 0xfffffffc
	sub edx, esi
	mov eax, [ebp+0x8]
	mov [eax+0x4], edx
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of MacMSS_Engine:
SECTION .data


;Initialized constant data of MacMSS_Engine:
SECTION .rdata
;VTypeInfoTable for CSoundEngine:
_ZTI12CSoundEngine: dd 0x8, _cstring_12csoundengine, _ZTI7CThread, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CSoundEngine:
_ZTV12CSoundEngine: dd 0x0, _ZTI12CSoundEngine, _ZN12CSoundEngineD1Ev, _ZN12CSoundEngineD0Ev, _ZN12CSoundEngine7ExecuteEPv, 0x0, 0x0, 0x0


;Zero initialized global or static variables of MacMSS_Engine:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_vector_m_insert_:		db "vector::_M_insert_aux",0
_cstring_12csoundengine:		db "12CSoundEngine",0



;All constant floats and doubles:
SECTION .rdata
_double_0_00100000:		dq 0x3f50624dd2f1a9fc	; 0.001
_float_100_00000000:		dd 0x42c80000	; 100

