;Imports of db_file_load:
	extern Sys_WaitDatabaseThread
	extern ReadFileEx
	extern GetLastError
	extern Com_Error
	extern memset
	extern SleepEx
	extern InterlockedIncrement
	extern DB_AuthLoad_Inflate
	extern R_ShowDirtyDiscError
	extern DB_AuthLoad_InflateEnd
	extern CloseHandle
	extern DB_AuthLoad_InflateInit
	extern DB_AllocXZoneMemory
	extern DB_InitStreams
	extern varXAssetList
	extern DB_PushStreamPos
	extern varScriptStringList
	extern Load_ScriptStringList
	extern DB_PopStreamPos
	extern AllocLoad_XAsset
	extern varXAsset
	extern Load_Stream
	extern DB_FinishGeometryBlocks
	extern Load_DelayStream
	extern DB_LoadDelayedImages
	extern Com_Printf
	extern Q_stricmp
	extern GetFileSize
	extern Load_XAsset
	extern InterlockedExchangeAdd

;Exports of db_file_load:
	global g_minimumFastFileLoaded
	global g_trackLoadProgress
	global g_loadedExternalBytes
	global g_totalExternalBytes
	global g_loadedSize
	global g_totalSize
	global g_varXAssetList
	global DB_FileReadCompletion
	global DB_ReadXFileStage
	global DB_LoadXFile
	global DB_LoadXFileData
	global DB_ResetZoneSize
	global DB_GetLoadedFraction
	global DB_LoadXFileInternal
	global DB_LoadedExternalData
	global DB_IsMinimumFastFileLoaded
	global DB_ResetMinimumFastFileLoaded
	global g_loadingAssets


SECTION .text


;DB_FileReadCompletion(unsigned long, unsigned long, _OVERLAPPED*)
DB_FileReadCompletion:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;DB_ReadXFileStage()
DB_ReadXFileStage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [g_load]
	test eax, eax
	jz DB_ReadXFileStage_10
	mov eax, [g_load+0x60]
	test eax, eax
	jz DB_ReadXFileStage_20
	call eax
DB_ReadXFileStage_20:
	mov ebx, [g_load+0x18]
	and ebx, 0x7ffff
	add ebx, [g_load+0x58]
	call Sys_WaitDatabaseThread
	mov dword [esp+0x10], DB_FileReadCompletion
	mov dword [esp+0xc], g_load+0x10
	mov dword [esp+0x8], 0x40000
	mov [esp+0x4], ebx
	mov eax, [g_load]
	mov [esp], eax
	call ReadFileEx
	test eax, eax
	jnz DB_ReadXFileStage_30
	call GetLastError
	cmp eax, 0x26
	jz DB_ReadXFileStage_10
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_read_error_of_fi
	mov dword [esp], 0x2
	call Com_Error
DB_ReadXFileStage_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
DB_ReadXFileStage_30:
	add dword [g_load+0xc], 0x1
	add dword [g_load+0x18], 0x40000
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;DB_LoadXFile(char const*, void*, char const*, XZoneMemory*, void (*)(), unsigned char*, int)
DB_LoadXFile:
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
DB_LoadXFileData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [g_load+0x30], eax
	mov eax, [ebp+0xc]
	mov [g_load+0x34], eax
	jmp DB_LoadXFileData_10
DB_LoadXFileData_70:
	mov ecx, [g_load+0x34]
	test ecx, ecx
	jz DB_LoadXFileData_20
DB_LoadXFileData_30:
	sub dword [g_load+0xc], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call InterlockedIncrement
	add dword [g_load+0x28], 0x40000
	call DB_ReadXFileStage
DB_LoadXFileData_10:
	mov eax, [g_load+0x28]
	test eax, eax
	jz DB_LoadXFileData_30
	mov dword [esp+0x4], 0x2
	mov dword [esp], g_load+0x24
	call DB_AuthLoad_Inflate
	mov ebx, eax
	cmp eax, 0x1
	jbe DB_LoadXFileData_40
	call R_ShowDirtyDiscError
	mov eax, [g_load+0x58]
	test eax, eax
	jz DB_LoadXFileData_50
	mov eax, [g_load+0xc]
	test eax, eax
	jnz DB_LoadXFileData_60
DB_LoadXFileData_80:
	mov dword [esp], g_load+0x24
	call DB_AuthLoad_InflateEnd
	mov eax, [g_load]
	mov [esp], eax
	call CloseHandle
DB_LoadXFileData_50:
	lea eax, [ebx+0x6e]
	mov [esp+0xc], eax
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon
	mov dword [esp], 0x2
	call Com_Error
DB_LoadXFileData_40:
	mov ebx, [g_load]
	test ebx, ebx
	jz DB_LoadXFileData_70
	mov eax, [g_load+0x24]
	cmp eax, [g_load+0x5c]
	jnz DB_LoadXFileData_70
	mov eax, [g_load+0x58]
	mov [g_load+0x24], eax
	mov ecx, [g_load+0x34]
	test ecx, ecx
	jnz DB_LoadXFileData_30
DB_LoadXFileData_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
DB_LoadXFileData_60:
	sub eax, 0x1
	mov [g_load+0xc], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call InterlockedIncrement
	add dword [g_load+0x28], 0x40000
	mov eax, [g_load+0xc]
	test eax, eax
	jnz DB_LoadXFileData_60
	jmp DB_LoadXFileData_80


;DB_ResetZoneSize(int)
DB_ResetZoneSize:
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
DB_GetLoadedFraction:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [g_totalSize]
	test eax, eax
	jz DB_GetLoadedFraction_10
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
DB_GetLoadedFraction_10:
	xor eax, eax
	mov [ebp-0x4], eax
	fld dword [ebp-0x4]
	leave
	ret
	nop
	add [eax], al


;DB_LoadXFileInternal()
DB_LoadXFileInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	call DB_ReadXFileStage
	mov edx, [g_load+0xc]
	test edx, edx
	jz DB_LoadXFileInternal_10
DB_LoadXFileInternal_220:
	sub dword [g_load+0xc], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call InterlockedIncrement
	add dword [g_load+0x28], 0x40000
	call DB_ReadXFileStage
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
	jz DB_LoadXFileInternal_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
DB_LoadXFileInternal_20:
	test eax, eax
	jnz DB_LoadXFileInternal_30
DB_LoadXFileInternal_200:
	mov eax, [ebp-0x70]
DB_LoadXFileInternal_210:
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [g_load+0x24], eax
	sub ebx, 0x4
	mov [g_load+0x28], ebx
	cmp edx, 0x5
	jz DB_LoadXFileInternal_40
	cmp edx, 0x4
	jbe DB_LoadXFileInternal_50
	mov dword [esp+0x10], 0x5
	mov [esp+0xc], edx
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon1
	mov dword [esp], 0x2
	call Com_Error
DB_LoadXFileInternal_40:
	mov ecx, 0x8
	cld
	lea esi, [ebp-0x24]
	mov edi, _cstring_iwffu100
	repe cmpsb
	mov eax, 0x0
	jz DB_LoadXFileInternal_60
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
DB_LoadXFileInternal_60:
	test eax, eax
	setnz bl
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	movzx eax, bl
	mov [esp+0x4], eax
	mov dword [esp], g_load+0x24
	call DB_AuthLoad_InflateInit
	xor esi, esi
	test bl, bl
	mov edx, _cstring_file_not_support
	cmovnz esi, edx
	test eax, eax
	jnz DB_LoadXFileInternal_70
	test esi, esi
	jz DB_LoadXFileInternal_80
DB_LoadXFileInternal_260:
	call R_ShowDirtyDiscError
	mov eax, [g_load+0x58]
	test eax, eax
	jz DB_LoadXFileInternal_90
	mov eax, [g_load+0xc]
	test eax, eax
	jnz DB_LoadXFileInternal_100
DB_LoadXFileInternal_170:
	mov dword [esp], g_load+0x24
	call DB_AuthLoad_InflateEnd
	mov eax, [g_load]
	mov [esp], eax
	call CloseHandle
DB_LoadXFileInternal_90:
	mov [esp+0xc], esi
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon2
	mov dword [esp], 0x2
	call Com_Error
DB_LoadXFileInternal_80:
	lea eax, [ebp-0x50]
	mov dword [esp+0x4], 0x2c
	mov [esp], eax
	call DB_LoadXFileData
	mov eax, [g_trackLoadProgress]
	test eax, eax
	jnz DB_LoadXFileInternal_110
DB_LoadXFileInternal_240:
	mov eax, [g_load+0x64]
	mov [esp+0xc], eax
	mov eax, [g_load+0x8]
	mov [esp+0x8], eax
	mov eax, [g_load+0x4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	call DB_AllocXZoneMemory
	mov eax, [g_load+0x8]
	mov [esp], eax
	call DB_InitStreams
	mov esi, varXAssetList
	mov dword [esi], g_varXAssetList
	mov dword [esp+0x4], 0x10
	mov dword [esp], g_varXAssetList
	call DB_LoadXFileData
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov edx, [esi]
	mov eax, varScriptStringList
	mov [eax], edx
	mov dword [esp], 0x0
	call Load_ScriptStringList
	call DB_PopStreamPos
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov ebx, [esi]
	mov eax, [ebx+0xc]
	test eax, eax
	jz DB_LoadXFileInternal_120
	call AllocLoad_XAsset
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
	call Load_Stream
	mov eax, varXAsset
	mov ebx, [eax]
	test edi, edi
	jg DB_LoadXFileInternal_130
DB_LoadXFileInternal_120:
	call DB_PopStreamPos
	mov eax, [g_load+0x8]
	mov [esp], eax
	call DB_FinishGeometryBlocks
	mov eax, [g_loadingAssets]
	sub eax, 0x1
	mov [g_loadingAssets], eax
	call Load_DelayStream
	call DB_LoadDelayedImages
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loaded_zone_s
	mov dword [esp], 0xa
	call Com_Printf
	cmp byte [g_minimumFastFileLoaded], 0x0
	jz DB_LoadXFileInternal_140
DB_LoadXFileInternal_230:
	mov eax, [g_load+0x58]
	test eax, eax
	jz DB_LoadXFileInternal_150
	mov eax, [g_load+0xc]
	test eax, eax
	jnz DB_LoadXFileInternal_160
DB_LoadXFileInternal_180:
	mov dword [esp], g_load+0x24
	call DB_AuthLoad_InflateEnd
	mov eax, [g_load]
	mov [esp], eax
	call CloseHandle
DB_LoadXFileInternal_150:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_LoadXFileInternal_100:
	sub eax, 0x1
	mov [g_load+0xc], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call InterlockedIncrement
	add dword [g_load+0x28], 0x40000
	mov eax, [g_load+0xc]
	test eax, eax
	jnz DB_LoadXFileInternal_100
	jmp DB_LoadXFileInternal_170
DB_LoadXFileInternal_160:
	sub eax, 0x1
	mov [g_load+0xc], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call SleepEx
	mov dword [esp], g_loadedSize
	call InterlockedIncrement
	add dword [g_load+0x28], 0x40000
	mov eax, [g_load+0xc]
	test eax, eax
	jnz DB_LoadXFileInternal_160
	jmp DB_LoadXFileInternal_180
DB_LoadXFileInternal_50:
	mov dword [esp+0x10], 0x5
	mov [esp+0xc], edx
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon3
	mov dword [esp], 0x2
	call Com_Error
	jmp DB_LoadXFileInternal_40
DB_LoadXFileInternal_30:
	mov dword [ebp-0x60], 0x8
	lea esi, [ebp-0x24]
	mov edi, _cstring_iwffu100
	mov ecx, 0x8
	repe cmpsb
	mov eax, 0x0
	jz DB_LoadXFileInternal_190
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
DB_LoadXFileInternal_190:
	test eax, eax
	jz DB_LoadXFileInternal_200
	call R_ShowDirtyDiscError
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon4
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, [g_load+0x28]
	mov edi, [g_load+0x24]
	mov [ebp-0x70], edi
	mov eax, edi
	jmp DB_LoadXFileInternal_210
DB_LoadXFileInternal_10:
	mov eax, [g_load+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fastfile_for_zon5
	mov dword [esp], 0x2
	call Com_Error
	jmp DB_LoadXFileInternal_220
DB_LoadXFileInternal_140:
	mov eax, [g_load+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_localized_code_p
	call Q_stricmp
	mov edx, 0x1
	test eax, eax
	movzx eax, byte [g_minimumFastFileLoaded]
	cmovnz edx, eax
	mov [g_minimumFastFileLoaded], dl
	jmp DB_LoadXFileInternal_230
DB_LoadXFileInternal_110:
	mov dword [esp+0x4], 0x0
	mov eax, [g_load]
	mov [esp], eax
	call GetFileSize
	mov edx, eax
	mov ecx, [ebp-0x4c]
	lea eax, [ecx+eax]
	cmp eax, 0xfffff
	jbe DB_LoadXFileInternal_240
	mov ebx, [g_loadedSize]
	mov eax, edx
	add eax, 0x3ffff
	js DB_LoadXFileInternal_250
DB_LoadXFileInternal_290:
	sar eax, 0x12
	sub eax, ebx
	mov [g_totalSize], eax
	mov dword [g_loadedSize], 0x0
	mov eax, [g_loadedExternalBytes]
	sub ecx, eax
	mov [g_totalExternalBytes], ecx
	mov dword [g_loadedExternalBytes], 0x0
	jmp DB_LoadXFileInternal_240
DB_LoadXFileInternal_70:
	mov esi, _cstring_init_failed
	jmp DB_LoadXFileInternal_260
DB_LoadXFileInternal_130:
	xor esi, esi
	mov [ebp-0x64], eax
	mov edx, eax
	jmp DB_LoadXFileInternal_270
DB_LoadXFileInternal_280:
	mov edx, [ebp-0x64]
DB_LoadXFileInternal_270:
	mov [edx], ebx
	mov dword [esp], 0x0
	call Load_XAsset
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz DB_LoadXFileInternal_280
	jmp DB_LoadXFileInternal_120
DB_LoadXFileInternal_250:
	lea eax, [edx+0x7fffe]
	jmp DB_LoadXFileInternal_290


;DB_LoadedExternalData(int)
DB_LoadedExternalData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], g_loadedExternalBytes
	call InterlockedExchangeAdd
	leave
	ret
	nop


;DB_IsMinimumFastFileLoaded()
DB_IsMinimumFastFileLoaded:
	push ebp
	mov ebp, esp
	movzx eax, byte [g_minimumFastFileLoaded]
	pop ebp
	ret


;DB_ResetMinimumFastFileLoaded()
DB_ResetMinimumFastFileLoaded:
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

