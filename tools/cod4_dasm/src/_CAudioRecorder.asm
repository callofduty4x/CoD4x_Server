;Imports of CAudioRecorder:
	extern FindNextComponent
	extern OpenAComponent
	extern AudioUnitSetProperty
	extern AudioHardwareGetProperty
	extern AudioDeviceGetProperty
	extern AudioUnitInitialize
	extern AudioUnitGetProperty
	extern AudioConverterNew
	extern malloc
	extern _ZN15CCircularBuffer5AllocEm
	extern __cxa_allocate_exception
	extern __cxa_throw
	extern __cxa_begin_catch
	extern __cxa_end_catch
	extern _Unwind_Resume
	extern _ZN11StMutexLockC1ER6CMutex
	extern _ZN11StMutexLockD1Ev
	extern AudioDeviceSetProperty
	extern _ZN15CCircularBuffer7ReadPtrERm
	extern memset
	extern AudioOutputUnitStop
	extern AudioOutputUnitStart
	extern AudioUnitRender
	extern _ZN15CCircularBuffer5WriteEPKvRm
	extern usleep
	extern AudioUnitUninitialize
	extern AudioConverterDispose
	extern CloseComponent
	extern free
	extern AudioConverterFillBuffer
	extern AudioConverterReset
	extern _ZN15CCircularBuffer5ResetEv
	extern _ZN6CMutexC1Ev
	extern _ZN15CCircularBufferC1Ev
	extern _ZN6CMutexD1Ev
	extern _ZN15CCircularBufferD1Ev

;Exports of CAudioRecorder:
	global _ZN14CAudioRecorder10InitializeEv
	global _ZN14CAudioRecorder14GetRecordLevelEv
	global _ZN14CAudioRecorder14SetRecordLevelEf
	global _ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3_
	global _ZN14CAudioRecorder18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	global _ZN14CAudioRecorder4MuteEh
	global _ZN14CAudioRecorder4StopEv
	global _ZN14CAudioRecorder5StartEv
	global _ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm
	global _ZN14CAudioRecorder8ShutdownEv
	global _ZN14CAudioRecorder9GetBufferERm
	global _ZN14CAudioRecorderC1Edmm
	global _ZN14CAudioRecorderD1Ev


SECTION .text


;CAudioRecorder::Initialize()
_ZN14CAudioRecorder10InitializeEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov edi, [ebp+0x8]
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x40], 0x61756f75
	mov dword [ebp-0x3c], 0x6168616c
	mov dword [ebp-0x38], 0x6170706c
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call FindNextComponent
	mov edx, eax
	test eax, eax
	jz _ZN14CAudioRecorder10InitializeEv_10
	lea eax, [edi+0x14]
	mov [esp+0x4], eax
	mov [esp], edx
	call OpenAComponent
	movsx ebx, ax
	test ax, ax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov dword [ebp-0x20], 0x1
	mov dword [esp+0x14], 0x4
	lea esi, [ebp-0x20]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x7d3
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov dword [ebp-0x20], 0x0
	mov dword [esp+0x14], 0x4
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x7d3
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov dword [ebp-0x24], 0x4
	lea esi, [edi+0x10]
	mov [esp+0x8], esi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x64496e20
	call AudioHardwareGetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov dword [esp+0x14], 0x4
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7d0
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov dword [ebp-0x24], 0x4
	lea eax, [edi+0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x766f6c6d
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov eax, [edi+0x10]
	mov [esp], eax
	call AudioDeviceGetProperty
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_30
_ZN14CAudioRecorder10InitializeEv_40:
	mov dword [ebp-0x2c], _ZN14CAudioRecorder18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList
	mov [ebp-0x28], edi
	mov dword [esp+0x14], 0x8
	lea eax, [ebp-0x2c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7d5
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitInitialize
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov dword [ebp-0x24], 0x28
	lea eax, [ebp-0x24]
	mov [esp+0x14], eax
	lea esi, [ebp-0x68]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x8
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitGetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov ecx, [edi+0xc]
	xor eax, eax
	cmp ecx, 0x10
	setz al
	lea eax, [eax*4+0x8]
	mov edx, ecx
	shr edx, 0x3
	imul edx, [edi+0x8]
	mov dword [ebp-0x88], 0x6c70636d
	mov [ebp-0x84], eax
	mov [ebp-0x80], edx
	mov dword [ebp-0x7c], 0x1
	mov [ebp-0x78], edx
	mov eax, [edi+0x8]
	mov [ebp-0x74], eax
	mov [ebp-0x70], ecx
	movsd xmm0, qword [ebp-0x68]
	movsd [ebp-0x90], xmm0
	mov dword [esp+0x14], 0x28
	lea eax, [ebp-0x90]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x8
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitSetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov dword [ebp-0x24], 0x28
	lea eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x8
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitGetProperty
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	movsd xmm0, qword [edi]
	movsd [ebp-0x90], xmm0
	lea eax, [edi+0x4c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x90]
	mov [esp+0x4], eax
	mov [esp], esi
	call AudioConverterNew
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder10InitializeEv_20
	mov dword [ebp-0x24], 0x4
	lea eax, [ebp-0x24]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe
	mov eax, [edi+0x14]
	mov [esp], eax
	call AudioUnitGetProperty
	mov edx, 0x200
	test eax, eax
	cmovz edx, [ebp-0x1c]
	mov [ebp-0x1c], edx
	movsd xmm0, qword [ebp-0x90]
	movsd xmm3, qword [_data16_0]
	cmpsd xmm3, xmm0, 0x2
	minsd xmm0, qword [_data16_ffe00000]
	xorpd xmm1, xmm1
	maxsd xmm0, xmm1
	movapd xmm2, xmm3
	andpd xmm2, [_data16_0]
	subpd xmm0, xmm2
	cvttpd2dq xmm0, xmm0
	psllq xmm3, 0x1f
	movdqa xmm1, xmm3
	pxor xmm1, xmm0
	movdqa [ebp-0xb8], xmm1
	mov eax, [ebp-0xb8]
	imul eax, [ebp-0x78]
	lea eax, [eax+eax*2]
	mov [edi+0x54], eax
	mov [esp], eax
	call malloc
	mov [edi+0x50], eax
	mov eax, [ebp-0x50]
	imul eax, [ebp-0x1c]
	mov [edi+0x5c], eax
	mov [esp], eax
	call malloc
	mov [edi+0x58], eax
	movsd xmm0, qword [ebp-0x68]
	movsd xmm2, qword [_data16_0]
	cmpsd xmm2, xmm0, 0x2
	minsd xmm0, qword [_data16_ffe00000]
	xorpd xmm1, xmm1
	maxsd xmm0, xmm1
	movsd xmm1, qword [_data16_0]
	andpd xmm1, xmm2
	subpd xmm0, xmm1
	cvttpd2dq xmm0, xmm0
	psllq xmm2, 0x1f
	movdqa xmm1, xmm2
	pxor xmm1, xmm0
	movdqa [ebp-0xd8], xmm1
	mov eax, [ebp-0xd8]
	imul eax, [ebp-0x50]
	lea eax, [eax+eax*4]
	mov [esp+0x4], eax
	lea eax, [edi+0x60]
	mov [esp], eax
	call _ZN15CCircularBuffer5AllocEm
	mov eax, 0x1
_ZN14CAudioRecorder10InitializeEv_60:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CAudioRecorder10InitializeEv_30:
	mov dword [edi+0x1c], 0x3f800000
	jmp _ZN14CAudioRecorder10InitializeEv_40
_ZN14CAudioRecorder10InitializeEv_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], ebx
_ZN14CAudioRecorder10InitializeEv_50:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_ZN14CAudioRecorder10InitializeEv_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], 0xffffffce
	jmp _ZN14CAudioRecorder10InitializeEv_50
	mov [esp], eax
	call __cxa_begin_catch
	mov [esp], edi
	call _ZN14CAudioRecorder8ShutdownEv
	call __cxa_end_catch
	xor eax, eax
	jmp _ZN14CAudioRecorder10InitializeEv_60
	mov ebx, eax
	call __cxa_end_catch
	mov [esp], ebx
	call _Unwind_Resume


;CAudioRecorder::GetRecordLevel()
_ZN14CAudioRecorder14GetRecordLevelEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	lea eax, [esi+0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x28]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [esi+0x10]
	test eax, eax
	jz _ZN14CAudioRecorder14GetRecordLevelEv_10
	mov dword [ebp-0x20], 0x4
	lea eax, [ebp-0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x766f6c6d
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov eax, [esi+0x10]
	mov [esp], eax
	call AudioDeviceGetProperty
	test eax, eax
	jnz _ZN14CAudioRecorder14GetRecordLevelEv_10
	mov ebx, [ebp-0x1c]
	mov [ebp-0x2c], ebx
	movss xmm0, dword [ebp-0x2c]
	divss xmm0, dword [esi+0x1c]
	movss [ebp-0x2c], xmm0
	mov ebx, [ebp-0x2c]
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov [ebp-0x2c], ebx
	fld dword [ebp-0x2c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CAudioRecorder14GetRecordLevelEv_10:
	mov ebx, 0x3f800000
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov [ebp-0x2c], ebx
	fld dword [ebp-0x2c]
	add esp, 0x4c
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


;CAudioRecorder::SetRecordLevel(float)
_ZN14CAudioRecorder14SetRecordLevelEf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x14]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	mov edx, [ebx+0x10]
	test edx, edx
	jz _ZN14CAudioRecorder14SetRecordLevelEf_10
	movss xmm0, dword [ebp+0xc]
	mulss xmm0, [ebx+0x1c]
	movss [ebp-0xc], xmm0
	lea eax, [ebp-0xc]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x4
	mov dword [esp+0x10], 0x766f6c6d
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0x10]
	mov [esp], eax
	call AudioDeviceSetProperty
_ZN14CAudioRecorder14SetRecordLevelEf_10:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume


;CAudioRecorder::AudioConverterProc(OpaqueAudioConverter*, unsigned long*, void**, void*)
_ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz _ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__10
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea esi, [ebp-0x20]
	mov [esp], esi
	call _ZN11StMutexLockC1ER6CMutex
	mov [esp+0x4], edi
	lea eax, [ebx+0x60]
	mov [esp], eax
	call _ZN15CCircularBuffer7ReadPtrERm
	mov edx, eax
	mov eax, [ebp+0x10]
	mov [eax], edx
	cmp byte [ebx+0x19], 0x0
	jnz _ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__20
_ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__30:
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__20:
	test edx, edx
	jz _ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__30
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	jmp _ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__30
	mov ebx, eax
	mov [esp], esi
	call _ZN11StMutexLockD1Ev
_ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__40:
	mov [esp], ebx
	call __cxa_begin_catch
	call __cxa_end_catch
_ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__10:
	mov eax, 0xffffffce
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov ebx, eax
	jmp _ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3__40


;CAudioRecorder::RenderCallbackProc(void*, unsigned long*, AudioTimeStamp const*, unsigned long, unsigned long, AudioBufferList*)
_ZN14CAudioRecorder18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	test eax, eax
	jz _ZN14CAudioRecorder18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_10
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm
	leave
	ret
	mov [esp], eax
	call __cxa_begin_catch
	call __cxa_end_catch
_ZN14CAudioRecorder18RenderCallbackProcEPvPmPK14AudioTimeStampmmP15AudioBufferList_10:
	mov eax, 0xffffffce
	leave
	ret
	nop


;CAudioRecorder::Mute(unsigned char)
_ZN14CAudioRecorder4MuteEh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea eax, [esi+0x20]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, edi
	mov [esi+0x19], al
	mov [esp], ebx
	call _ZN11StMutexLockD1Ev
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CAudioRecorder::Stop()
_ZN14CAudioRecorder4StopEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x18], 0x0
	jz _ZN14CAudioRecorder4StopEv_10
	mov eax, [ebx+0x14]
	mov [esp], eax
	call AudioOutputUnitStop
	mov byte [ebx+0x18], 0x0
_ZN14CAudioRecorder4StopEv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CAudioRecorder::Start()
_ZN14CAudioRecorder5StartEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x18], 0x0
	jz _ZN14CAudioRecorder5StartEv_10
_ZN14CAudioRecorder5StartEv_20:
	movzx eax, byte [ebx+0x18]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN14CAudioRecorder5StartEv_10:
	mov eax, [ebx+0x14]
	mov [esp], eax
	call AudioOutputUnitStart
	test eax, eax
	jnz _ZN14CAudioRecorder5StartEv_20
	mov byte [ebx+0x18], 0x1
	movzx eax, byte [ebx+0x18]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CAudioRecorder::DoRender(AudioTimeStamp const*, unsigned long)
_ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	lea eax, [esi+0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x28]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	cmp byte [esi+0x18], 0x0
	jz _ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_10
	cmp byte [esi+0x74], 0x0
	jz _ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_20
_ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_10:
	xor ebx, ebx
_ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_30:
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_20:
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x38], 0x1
	mov eax, [esi+0x8]
	mov [ebp-0x34], eax
	mov eax, [esi+0x5c]
	mov [ebp-0x30], eax
	mov eax, [esi+0x58]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x38]
	mov [esp+0x14], eax
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [esi+0x14]
	mov [esp], eax
	call AudioUnitRender
	mov ebx, eax
	test eax, eax
	jnz _ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_30
	mov eax, [ebp-0x30]
	mov [ebp-0x20], eax
	test eax, eax
	jz _ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_10
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	lea eax, [esi+0x60]
	mov [esp], eax
	call _ZN15CCircularBuffer5WriteEPKvRm
	mov eax, [ebp-0x30]
	cmp eax, [ebp-0x20]
	jz _ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_10
	mov byte [esi+0x74], 0x1
	jmp _ZN14CAudioRecorder8DoRenderEPK14AudioTimeStampm_30
	mov ebx, eax
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CAudioRecorder::Shutdown()
_ZN14CAudioRecorder8ShutdownEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x14]
	test eax, eax
	jz _ZN14CAudioRecorder8ShutdownEv_10
	cmp byte [esi+0x18], 0x0
	jnz _ZN14CAudioRecorder8ShutdownEv_20
_ZN14CAudioRecorder8ShutdownEv_80:
	mov dword [esp], 0x2710
	call usleep
	mov eax, [esi+0x14]
	mov [esp], eax
	call AudioUnitUninitialize
	mov dword [esp], 0x2710
	call usleep
	mov eax, [esi+0x4c]
	test eax, eax
	jz _ZN14CAudioRecorder8ShutdownEv_30
	mov [esp], eax
	call AudioConverterDispose
	mov dword [esi+0x4c], 0x0
_ZN14CAudioRecorder8ShutdownEv_30:
	mov dword [esp], 0x2710
	call usleep
	lea ebx, [esi+0x20]
	mov [esp+0x4], ebx
	lea edi, [ebp-0x24]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x2c]
	mov [esp], ebx
	call _ZN11StMutexLockC1ER6CMutex
	mov ecx, [esi+0x10]
	test ecx, ecx
	jnz _ZN14CAudioRecorder8ShutdownEv_40
_ZN14CAudioRecorder8ShutdownEv_70:
	mov [esp], ebx
	call _ZN11StMutexLockD1Ev
	mov eax, [esi+0x14]
	mov [esp], eax
	call CloseComponent
	mov dword [esi+0x14], 0x0
	mov eax, [esi+0x50]
	test eax, eax
	jz _ZN14CAudioRecorder8ShutdownEv_50
	mov [esp], eax
	call free
	mov dword [esi+0x50], 0x0
_ZN14CAudioRecorder8ShutdownEv_50:
	mov eax, [esi+0x58]
	test eax, eax
	jz _ZN14CAudioRecorder8ShutdownEv_60
	mov [esp], eax
	call free
	mov dword [esi+0x58], 0x0
_ZN14CAudioRecorder8ShutdownEv_60:
	mov byte [esi+0x74], 0x0
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
_ZN14CAudioRecorder8ShutdownEv_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CAudioRecorder8ShutdownEv_40:
	mov eax, [esi+0x1c]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x4
	mov dword [esp+0x10], 0x766f6c6d
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [esi+0x10]
	mov [esp], eax
	call AudioDeviceSetProperty
	jmp _ZN14CAudioRecorder8ShutdownEv_70
_ZN14CAudioRecorder8ShutdownEv_20:
	mov [esp], eax
	call AudioOutputUnitStop
	mov byte [esi+0x18], 0x0
	jmp _ZN14CAudioRecorder8ShutdownEv_80
	mov esi, eax
	mov [esp], ebx
	call _ZN11StMutexLockD1Ev
_ZN14CAudioRecorder8ShutdownEv_90:
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	jmp _ZN14CAudioRecorder8ShutdownEv_90


;CAudioRecorder::GetBuffer(unsigned long&)
_ZN14CAudioRecorder9GetBufferERm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x24]
	mov [esp], edi
	call _ZN11StMutexLockC1ER6CMutex
	mov eax, [ebx+0x54]
	mov [ebp-0x1c], eax
	mov eax, [ebx+0x50]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _ZN14CAudioRecorder18AudioConverterProcEP20OpaqueAudioConverterPmPPvS3_
	mov eax, [ebx+0x4c]
	mov [esp], eax
	call AudioConverterFillBuffer
	mov esi, eax
	cmp byte [ebx+0x74], 0x0
	jnz _ZN14CAudioRecorder9GetBufferERm_10
	xor edx, edx
_ZN14CAudioRecorder9GetBufferERm_50:
	test esi, esi
	jnz _ZN14CAudioRecorder9GetBufferERm_20
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _ZN14CAudioRecorder9GetBufferERm_30
_ZN14CAudioRecorder9GetBufferERm_20:
	test dl, dl
	jnz _ZN14CAudioRecorder9GetBufferERm_40
	mov eax, [ebx+0x4c]
	mov [esp], eax
	call AudioConverterReset
_ZN14CAudioRecorder9GetBufferERm_40:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	xor ebx, ebx
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CAudioRecorder9GetBufferERm_30:
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov ebx, [ebx+0x50]
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CAudioRecorder9GetBufferERm_10:
	mov eax, [ebx+0x4c]
	mov [esp], eax
	call AudioConverterReset
	lea eax, [ebx+0x60]
	mov [esp], eax
	call _ZN15CCircularBuffer5ResetEv
	mov byte [ebx+0x74], 0x0
	mov edx, 0x1
	jmp _ZN14CAudioRecorder9GetBufferERm_50
	mov ebx, eax
	mov [esp], edi
	call _ZN11StMutexLockD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CAudioRecorder::CAudioRecorder(double, unsigned long, unsigned long)
_ZN14CAudioRecorderC1Edmm:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	movsd xmm0, qword [ebp+0xc]
	movsd [ebx], xmm0
	mov eax, [ebp+0x14]
	mov [ebx+0x8], eax
	mov eax, [ebp+0x18]
	mov [ebx+0xc], eax
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov byte [ebx+0x18], 0x0
	mov byte [ebx+0x19], 0x0
	mov dword [ebx+0x1c], 0x0
	lea esi, [ebx+0x20]
	mov [esp], esi
	call _ZN6CMutexC1Ev
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x58], 0x0
	mov dword [ebx+0x5c], 0x0
	lea eax, [ebx+0x60]
	mov [esp], eax
	call _ZN15CCircularBufferC1Ev
	mov byte [ebx+0x74], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], esi
	call _ZN6CMutexD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CAudioRecorder::~CAudioRecorder()
_ZN14CAudioRecorderD1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _ZN14CAudioRecorder8ShutdownEv
	lea eax, [ebx+0x60]
	mov [esp], eax
	call _ZN15CCircularBufferD1Ev
	lea eax, [ebx+0x20]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN6CMutexD1Ev
	mov esi, eax
	lea eax, [ebx+0x60]
	mov [esp], eax
	call _ZN15CCircularBufferD1Ev
_ZN14CAudioRecorderD1Ev_10:
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZN6CMutexD1Ev
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	jmp _ZN14CAudioRecorderD1Ev_10
	nop


;Initialized global or static variables of CAudioRecorder:
SECTION .data


;Initialized constant data of CAudioRecorder:
SECTION .rdata


;Zero initialized global or static variables of CAudioRecorder:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_0:		dd 0x0, 0x41e00000, 0x0, 0x0	; OWORD
_data16_ffe00000:		dd 0xffe00000, 0x41efffff, 0x0, 0x0	; OWORD

