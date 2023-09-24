;Imports of db_file_load:
	extern _Z22Sys_WaitDatabaseThreadv
	extern ReadFileEx
	extern GetLastError
	extern _Z9Com_Error11errorParm_tPKcz
	extern memset
	extern SleepEx
	extern iInterlockedIncrement
	extern _Z19DB_AuthLoad_InflateP10z_stream_si
	extern _Z20R_ShowDirtyDiscErrorv
	extern _Z22DB_AuthLoad_InflateEndP10z_stream_s
	extern CloseHandle
	extern _Z23DB_AuthLoad_InflateInitP10z_stream_shPKc
	extern _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj
	extern _Z14DB_InitStreamsP11XZoneMemory
	extern varXAssetList
	extern _Z16DB_PushStreamPosj
	extern varScriptStringList
	extern _Z21Load_ScriptStringListh
	extern _Z15DB_PopStreamPosv
	extern _Z16AllocLoad_XAssetv
	extern varXAsset
	extern _Z11Load_StreamhPKvi
	extern _Z23DB_FinishGeometryBlocksP11XZoneMemory
	extern _Z16Load_DelayStreamv
	extern _Z20DB_LoadDelayedImagesv
	extern _Z10Com_PrintfiPKcz
	extern _Z9I_stricmpPKcS0_
	extern iGetFileSize
	extern _Z11Load_XAsseth
	extern iInterlockedExchangeAdd

;Exports of db_file_load:
	global g_minimumFastFileLoaded
	global g_trackLoadProgress
	global g_loadedExternalBytes
	global g_totalExternalBytes
	global g_loadedSize
	global g_totalSize
	global g_varXAssetList
	global _Z21DB_FileReadCompletionmmP11_OVERLAPPED
	global _Z17DB_ReadXFileStagev
	global _Z12DB_LoadXFilePKcPvS0_P11XZoneMemoryPFvvEPhi
	global _Z16DB_LoadXFileDataPhi
	global _Z16DB_ResetZoneSizei
	global _Z20DB_GetLoadedFractionv
	global _Z20DB_LoadXFileInternalv
	global _Z21DB_LoadedExternalDatai
	global _Z26DB_IsMinimumFastFileLoadedv
	global _Z29DB_ResetMinimumFastFileLoadedv
	global g_loadingAssets


SECTION .text


;DB_FileReadCompletion(unsigned long, unsigned long, _OVERLAPPED*)
_Z21DB_FileReadCompletionmmP11_OVERLAPPED:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;DB_ReadXFileStage()
_Z17DB_ReadXFileStagev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [g_load]
	test eax, eax
	jz _Z17DB_ReadXFileStagev_10
	mov eax, [g_load+0x60]
	test eax, eax
	jz _Z17DB_ReadXFileStagev_20
	call eax
_Z17DB_ReadXFileStagev_20:
	mov ebx, [g_load+0x18]
	and ebx, 0x7ffff
	add ebx, [g_load+0x58]
	call _Z22Sys_WaitDatabaseThreadv
	mov dword [esp+0x10], _Z21DB_FileReadCompletionmmP11_OVERLAPPED
	mov dword [esp+0xc], g_load+0x10
	mov dword [esp+0x8], 0x40000
	mov [esp+0x4], ebx
	mov eax, [g_load]
	mov [esp], eax
	call ReadFileEx
	test eax, eax
	jnz _Z17DB_ReadXFileStagev_30
	call GetLastError
	cmp eax, 0x26
	jz _Z17DB_ReadXFileStagev_10
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_read_error_of_fi
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17DB_ReadXFileStagev_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z17DB_ReadXFileStagev_30:
	add dword [g_load+0xc], 0x1
	add dword [g_load+0x18], 0x40000
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;DB_LoadXFile(char const*, void*, char const*, XZoneMemory*, void (*)(), unsigned char*, int)
_Z12DB_LoadXFilePKcPvS0_P11XZoneMemoryPFvvEPhi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x1c]
	mov dword [esp+0x8], 0x68
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_load
	call memset
	mov eax, [ebp+0xc]
	mov [g_load], eax
	mov eax, [ebp+0x10]
	mov [g_load+0x4], eax
	mov eax, [ebp+0x14]
	mov [g_load+0x8], eax
	mov eax, [ebp+0x18]
	mov [g_load+0x60], eax
	mov eax, [ebp+0x20]
	mov [g_load+0x64], eax
	mov [g_load+0x58], ebx
	lea eax, [ebx+0x80000]
	mov [g_load+0x5c], eax
	mov [g_load+0x24], ebx
	mov dword [g_load+0x28], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;DB_LoadXFileData(unsigned char*, int)
_Z16DB_LoadXFileDataPhi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [g_load+0x30], eax
	mov eax, [ebp+0xc]
	mov [g_load+0x34], eax
	jmp _Z16DB_LoadXFileDataPhi_10
_Z16DB_LoadXFileDataPhi_70:
	mov ecx, [g_load+0x34]
	test ecx, ecx
	jz _Z16DB_LoadXFileDataPhi_20
_Z16DB_LoadXFileDataPhi_30:
	sub dword [g_load+0xc], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call iInterlockedIncrement
	add dword [g_load+0x28], 0x40000
	call _Z17DB_ReadXFileStagev
_Z16DB_LoadXFileDataPhi_10:
	mov eax, [g_load+0x28]
	test eax, eax
	jz _Z16DB_LoadXFileDataPhi_30
	mov dword [esp+0x4], 0x2
	mov dword [esp], g_load+0x24
	call _Z19DB_AuthLoad_InflateP10z_stream_si
	mov ebx, eax
	cmp eax, 0x1
	jbe _Z16DB_LoadXFileDataPhi_40
	call _Z20R_ShowDirtyDiscErrorv
	mov eax, [g_load+0x58]
	test eax, eax
	jz _Z16DB_LoadXFileDataPhi_50
	mov eax, [g_load+0xc]
	test eax, eax
	jnz _Z16DB_LoadXFileDataPhi_60
_Z16DB_LoadXFileDataPhi_80:
	mov dword [esp], g_load+0x24
	call _Z22DB_AuthLoad_InflateEndP10z_stream_s
	mov eax, [g_load]
	mov [esp], eax
	call CloseHandle
_Z16DB_LoadXFileDataPhi_50:
	lea eax, [ebx+0x6e]
	mov [esp+0xc], eax
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z16DB_LoadXFileDataPhi_40:
	mov ebx, [g_load]
	test ebx, ebx
	jz _Z16DB_LoadXFileDataPhi_70
	mov eax, [g_load+0x24]
	cmp eax, [g_load+0x5c]
	jnz _Z16DB_LoadXFileDataPhi_70
	mov eax, [g_load+0x58]
	mov [g_load+0x24], eax
	mov ecx, [g_load+0x34]
	test ecx, ecx
	jnz _Z16DB_LoadXFileDataPhi_30
_Z16DB_LoadXFileDataPhi_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z16DB_LoadXFileDataPhi_60:
	sub eax, 0x1
	mov [g_load+0xc], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call iInterlockedIncrement
	add dword [g_load+0x28], 0x40000
	mov eax, [g_load+0xc]
	test eax, eax
	jnz _Z16DB_LoadXFileDataPhi_60
	jmp _Z16DB_LoadXFileDataPhi_80


;DB_ResetZoneSize(int)
_Z16DB_ResetZoneSizei:
	push ebp
	mov ebp, esp
	mov dword [g_totalSize], 0x0
	mov dword [g_loadedSize], 0x0
	mov dword [g_totalExternalBytes], 0x0
	mov dword [g_loadedExternalBytes], 0x0
	mov eax, [ebp+0x8]
	mov [g_trackLoadProgress], eax
	pop ebp
	ret
	nop


;DB_GetLoadedFraction()
_Z20DB_GetLoadedFractionv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [g_totalSize]
	test eax, eax
	jz _Z20DB_GetLoadedFractionv_10
	mov eax, [g_totalSize]
	cvtsi2sd xmm2, eax
	movsd xmm0, qword [_double_262144_00000000]
	mulsd xmm2, xmm0
	mov eax, [g_loadedSize]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm0
	movapd xmm0, xmm2
	minsd xmm0, xmm1
	movapd xmm1, xmm0
	mov eax, [g_totalExternalBytes]
	cvtsi2sd xmm3, eax
	mov eax, [g_loadedExternalBytes]
	cvtsi2sd xmm0, eax
	movapd xmm4, xmm3
	minsd xmm4, xmm0
	addsd xmm1, xmm4
	addsd xmm2, xmm3
	divsd xmm1, xmm2
	cvtsd2ss xmm1, xmm1
	movss [ebp-0x4], xmm1
	mov eax, [ebp-0x4]
	mov [ebp-0x4], eax
	fld dword [ebp-0x4]
	leave
	ret
_Z20DB_GetLoadedFractionv_10:
	xor eax, eax
	mov [ebp-0x4], eax
	fld dword [ebp-0x4]
	leave
	ret
	nop
	add [eax], al


;DB_LoadXFileInternal()
_Z20DB_LoadXFileInternalv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	call _Z17DB_ReadXFileStagev
	mov edx, [g_load+0xc]
	test edx, edx
	jz _Z20DB_LoadXFileInternalv_10
_Z20DB_LoadXFileInternalv_220:
	sub dword [g_load+0xc], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call iInterlockedIncrement
	add dword [g_load+0x28], 0x40000
	call _Z17DB_ReadXFileStagev
	mov eax, [g_load+0x24]
	mov [ebp-0x70], eax
	mov edx, eax
	mov eax, [eax]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	add edx, 0x8
	mov [ebp-0x70], edx
	mov [g_load+0x24], edx
	mov ebx, [g_load+0x28]
	sub ebx, 0x8
	mov [g_load+0x28], ebx
	mov dword [ebp-0x5c], _cstring_iwff0100
	mov dword [ebp-0x6c], 0x8
	cld
	lea esi, [ebp-0x24]
	mov edi, _cstring_iwff0100
	mov ecx, 0x8
	repe cmpsb
	mov eax, 0x0
	jz _Z20DB_LoadXFileInternalv_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z20DB_LoadXFileInternalv_20:
	test eax, eax
	jnz _Z20DB_LoadXFileInternalv_30
_Z20DB_LoadXFileInternalv_200:
	mov eax, [ebp-0x70]
_Z20DB_LoadXFileInternalv_210:
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [g_load+0x24], eax
	sub ebx, 0x4
	mov [g_load+0x28], ebx
	cmp edx, 0x5
	jz _Z20DB_LoadXFileInternalv_40
	cmp edx, 0x4
	jbe _Z20DB_LoadXFileInternalv_50
	mov dword [esp+0x10], 0x5
	mov [esp+0xc], edx
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z20DB_LoadXFileInternalv_40:
	mov ecx, 0x8
	cld
	lea esi, [ebp-0x24]
	mov edi, _cstring_iwffu100
	repe cmpsb
	mov eax, 0x0
	jz _Z20DB_LoadXFileInternalv_60
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z20DB_LoadXFileInternalv_60:
	test eax, eax
	setnz bl
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	movzx eax, bl
	mov [esp+0x4], eax
	mov dword [esp], g_load+0x24
	call _Z23DB_AuthLoad_InflateInitP10z_stream_shPKc
	xor esi, esi
	test bl, bl
	mov edx, _cstring_file_not_support
	cmovnz esi, edx
	test eax, eax
	jnz _Z20DB_LoadXFileInternalv_70
	test esi, esi
	jz _Z20DB_LoadXFileInternalv_80
_Z20DB_LoadXFileInternalv_260:
	call _Z20R_ShowDirtyDiscErrorv
	mov eax, [g_load+0x58]
	test eax, eax
	jz _Z20DB_LoadXFileInternalv_90
	mov eax, [g_load+0xc]
	test eax, eax
	jnz _Z20DB_LoadXFileInternalv_100
_Z20DB_LoadXFileInternalv_170:
	mov dword [esp], g_load+0x24
	call _Z22DB_AuthLoad_InflateEndP10z_stream_s
	mov eax, [g_load]
	mov [esp], eax
	call CloseHandle
_Z20DB_LoadXFileInternalv_90:
	mov [esp+0xc], esi
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z20DB_LoadXFileInternalv_80:
	lea eax, [ebp-0x50]
	mov dword [esp+0x4], 0x2c
	mov [esp], eax
	call _Z16DB_LoadXFileDataPhi
	mov eax, [g_trackLoadProgress]
	test eax, eax
	jnz _Z20DB_LoadXFileInternalv_110
_Z20DB_LoadXFileInternalv_240:
	mov eax, [g_load+0x64]
	mov [esp+0xc], eax
	mov eax, [g_load+0x8]
	mov [esp+0x8], eax
	mov eax, [g_load+0x4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	call _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj
	mov eax, [g_load+0x8]
	mov [esp], eax
	call _Z14DB_InitStreamsP11XZoneMemory
	mov esi, varXAssetList
	mov dword [esi], g_varXAssetList
	mov dword [esp+0x4], 0x10
	mov dword [esp], g_varXAssetList
	call _Z16DB_LoadXFileDataPhi
	mov dword [esp], 0x4
	call _Z16DB_PushStreamPosj
	mov edx, [esi]
	mov eax, varScriptStringList
	mov [eax], edx
	mov dword [esp], 0x0
	call _Z21Load_ScriptStringListh
	call _Z15DB_PopStreamPosv
	mov dword [esp], 0x4
	call _Z16DB_PushStreamPosj
	mov ebx, [esi]
	mov eax, [ebx+0xc]
	test eax, eax
	jz _Z20DB_LoadXFileInternalv_120
	call _Z16AllocLoad_XAssetv
	mov [ebx+0xc], eax
	mov eax, [esi]
	mov edx, [eax+0xc]
	mov ecx, varXAsset
	mov [ecx], edx
	mov edi, [eax+0x8]
	lea eax, [edi*8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call _Z11Load_StreamhPKvi
	mov eax, varXAsset
	mov ebx, [eax]
	test edi, edi
	jg _Z20DB_LoadXFileInternalv_130
_Z20DB_LoadXFileInternalv_120:
	call _Z15DB_PopStreamPosv
	mov eax, [g_load+0x8]
	mov [esp], eax
	call _Z23DB_FinishGeometryBlocksP11XZoneMemory
	mov eax, [g_loadingAssets]
	sub eax, 0x1
	mov [g_loadingAssets], eax
	call _Z16Load_DelayStreamv
	call _Z20DB_LoadDelayedImagesv
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loaded_zone_s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	cmp byte [g_minimumFastFileLoaded], 0x0
	jz _Z20DB_LoadXFileInternalv_140
_Z20DB_LoadXFileInternalv_230:
	mov eax, [g_load+0x58]
	test eax, eax
	jz _Z20DB_LoadXFileInternalv_150
	mov eax, [g_load+0xc]
	test eax, eax
	jnz _Z20DB_LoadXFileInternalv_160
_Z20DB_LoadXFileInternalv_180:
	mov dword [esp], g_load+0x24
	call _Z22DB_AuthLoad_InflateEndP10z_stream_s
	mov eax, [g_load]
	mov [esp], eax
	call CloseHandle
_Z20DB_LoadXFileInternalv_150:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20DB_LoadXFileInternalv_100:
	sub eax, 0x1
	mov [g_load+0xc], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call iInterlockedIncrement
	add dword [g_load+0x28], 0x40000
	mov eax, [g_load+0xc]
	test eax, eax
	jnz _Z20DB_LoadXFileInternalv_100
	jmp _Z20DB_LoadXFileInternalv_170
_Z20DB_LoadXFileInternalv_160:
	sub eax, 0x1
	mov [g_load+0xc], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call iInterlockedIncrement
	add dword [g_load+0x28], 0x40000
	mov eax, [g_load+0xc]
	test eax, eax
	jnz _Z20DB_LoadXFileInternalv_160
	jmp _Z20DB_LoadXFileInternalv_180
_Z20DB_LoadXFileInternalv_50:
	mov dword [esp+0x10], 0x5
	mov [esp+0xc], edx
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon3
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20DB_LoadXFileInternalv_40
_Z20DB_LoadXFileInternalv_30:
	mov dword [ebp-0x60], 0x8
	lea esi, [ebp-0x24]
	mov edi, _cstring_iwffu100
	mov ecx, 0x8
	repe cmpsb
	mov eax, 0x0
	jz _Z20DB_LoadXFileInternalv_190
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z20DB_LoadXFileInternalv_190:
	test eax, eax
	jz _Z20DB_LoadXFileInternalv_200
	call _Z20R_ShowDirtyDiscErrorv
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon4
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ebx, [g_load+0x28]
	mov edi, [g_load+0x24]
	mov [ebp-0x70], edi
	mov eax, edi
	jmp _Z20DB_LoadXFileInternalv_210
_Z20DB_LoadXFileInternalv_10:
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon5
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20DB_LoadXFileInternalv_220
_Z20DB_LoadXFileInternalv_140:
	mov eax, [g_load+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_localized_code_p
	call _Z9I_stricmpPKcS0_
	mov edx, 0x1
	test eax, eax
	movzx eax, byte [g_minimumFastFileLoaded]
	cmovnz edx, eax
	mov [g_minimumFastFileLoaded], dl
	jmp _Z20DB_LoadXFileInternalv_230
_Z20DB_LoadXFileInternalv_110:
	mov dword [esp+0x4], 0x0
	mov eax, [g_load]
	mov [esp], eax
	call iGetFileSize
	mov edx, eax
	mov ecx, [ebp-0x4c]
	lea eax, [ecx+eax]
	cmp eax, 0xfffff
	jbe _Z20DB_LoadXFileInternalv_240
	mov ebx, [g_loadedSize]
	mov eax, edx
	add eax, 0x3ffff
	js _Z20DB_LoadXFileInternalv_250
_Z20DB_LoadXFileInternalv_290:
	sar eax, 0x12
	sub eax, ebx
	mov [g_totalSize], eax
	mov dword [g_loadedSize], 0x0
	mov eax, [g_loadedExternalBytes]
	sub ecx, eax
	mov [g_totalExternalBytes], ecx
	mov dword [g_loadedExternalBytes], 0x0
	jmp _Z20DB_LoadXFileInternalv_240
_Z20DB_LoadXFileInternalv_70:
	mov esi, _cstring_init_failed
	jmp _Z20DB_LoadXFileInternalv_260
_Z20DB_LoadXFileInternalv_130:
	xor esi, esi
	mov [ebp-0x64], eax
	mov edx, eax
	jmp _Z20DB_LoadXFileInternalv_270
_Z20DB_LoadXFileInternalv_280:
	mov edx, [ebp-0x64]
_Z20DB_LoadXFileInternalv_270:
	mov [edx], ebx
	mov dword [esp], 0x0
	call _Z11Load_XAsseth
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz _Z20DB_LoadXFileInternalv_280
	jmp _Z20DB_LoadXFileInternalv_120
_Z20DB_LoadXFileInternalv_250:
	lea eax, [edx+0x7fffe]
	jmp _Z20DB_LoadXFileInternalv_290


;DB_LoadedExternalData(int)
_Z21DB_LoadedExternalDatai:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], g_loadedExternalBytes
	call iInterlockedExchangeAdd
	leave
	ret
	nop


;DB_IsMinimumFastFileLoaded()
_Z26DB_IsMinimumFastFileLoadedv:
	push ebp
	mov ebp, esp
	movzx eax, byte [g_minimumFastFileLoaded]
	pop ebp
	ret


;DB_ResetMinimumFastFileLoaded()
_Z29DB_ResetMinimumFastFileLoadedv:
	push ebp
	mov ebp, esp
	mov byte [g_minimumFastFileLoaded], 0x0
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of db_file_load:
SECTION .data


;Initialized constant data of db_file_load:
SECTION .rdata


;Zero initialized global or static variables of db_file_load:
SECTION .bss
g_minimumFastFileLoaded: resb 0x20
g_load: resb 0x68
g_trackLoadProgress: resb 0x4
g_loadedExternalBytes: resb 0x4
g_totalExternalBytes: resb 0x4
g_loadedSize: resb 0x4
g_totalSize: resb 0x4
g_varXAssetList: resb 0x64
g_loadingAssets: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_read_error_of_fi:		db "Read error of file ",27h,"%s",27h,0
_cstring_fastfile_for_zon:		db "Fastfile for zone ",27h,"%s",27h," appears corrupt or unreadable (code %i.)",0
_cstring_iwff0100:		db "IWff0100",0
_cstring_fastfile_for_zon1:		db "Fastfile for zone ",27h,"%s",27h," is newer than client executable (version %d, expecting %d)",0
_cstring_iwffu100:		db "IWffu100",0
_cstring_file_not_support:		db "file not supported",0
_cstring_fastfile_for_zon2:		db "Fastfile for zone ",27h,"%s",27h," could not be loaded (%s)",0
_cstring_loaded_zone_s:		db "Loaded zone ",27h,"%s",27h,0ah,0
_cstring_fastfile_for_zon3:		db "Fastfile for zone ",27h,"%s",27h," is out of date (version %d, expecting %d)",0
_cstring_fastfile_for_zon4:		db "Fastfile for zone ",27h,"%s",27h," is corrupt or unreadable.",0
_cstring_fastfile_for_zon5:		db "Fastfile for zone ",27h,"%s",27h," is empty.",0
_cstring_localized_code_p:		db "localized_code_post_gfx_mp",0
_cstring_init_failed:		db "init failed",0



;All constant floats and doubles:
SECTION .rdata
_double_262144_00000000:		dq 0x4110000000000000	; 262144

