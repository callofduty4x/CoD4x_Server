;Imports of com_memory:
	extern Com_Printf
	extern useFastFile
	extern PMem_DumpMemStats
	extern XAnimFreeList
	extern XModelPartsFree
	extern XAnimFree
	extern FS_LoadStack
	extern R_ReflectionProbeRegisterDvars
	extern r_reflectionProbeGenerate
	extern _VirtualAlloc
	extern _VirtualFree
	extern Cmd_AddCommand
	extern Com_Error
	extern Sys_OutOfMemErrorInternal
	extern SL_GetString_
	extern SL_ConvertToString
	extern SL_FindString
	extern SL_RemoveRefToString
	extern malloc
	extern Com_Memset
	extern Com_PrintError
	extern FS_HashFileName
	extern Q_stricmp
	extern free
	extern strcpy
	extern memset

;Exports of com_memory:
	global g_debugUser
	global g_largeLocalPos
	global g_largeLocalBuf
	global hunk_high
	global hunk_low
	global s_hunkData
	global s_hunkTotal
	global com_hunkData
	global com_fileDataHashTable
	global s_origHunkData
	global Hunk_AddAsset
	global Com_Meminfo_f
	global Hunk_ClearData
	global _ZZ18Com_InitHunkMemoryE17Com_Meminfo_f_VAR
	global Com_InitHunkMemory
	global Com_TouchMemory
	global CopyStringInternal
	global FreeStringInternal
	global Hunk_AddData
	global Hunk_AllocateTempMemoryHigh
	global Hunk_AllocateTempMemory
	global Hunk_Clear
	global Hunk_ClearTempMemory
	global Hunk_ClearTempMemoryHigh
	global Hunk_ClearToMarkLow
	global Hunk_DataOnHunk
	global Hunk_FindDataForFile
	global Hunk_FreeTempMemory
	global Hunk_HideTempMemory
	global Hunk_OverrideDataForFile
	global Hunk_SetDataForFile
	global Hunk_ShowTempMemory
	global Hunk_Used
	global ReplaceStringInternal
	global Z_FreeInternal
	global Z_MallocGarbageInternal
	global Z_MallocInternal
	global Z_TryVirtualAllocInternal
	global Z_VirtualAllocInternal
	global Z_VirtualCommitInternal
	global Z_VirtualDecommitInternal
	global Z_VirtualFreeInternal
	global Z_VirtualReserve
	global Hunk_UserAlloc
	global Hunk_UserReset
	global Hunk_CopyString
	global Hunk_UserCreate
	global Hunk_UserSetPos
	global LargeLocalReset
	global Hunk_UserDestroy
	global Hunk_FreeDebugMem
	global Hunk_AllocDebugMem
	global Hunk_AllocInternal
	global Hunk_ResetDebugMem
	global Hunk_UserAllocAlign
	global Hunk_InitDebugMemory
	global Hunk_AllocLowInternal
	global Hunk_AllocAlignInternal
	global Hunk_ShutdownDebugMemory
	global Hunk_UserAllocAlignStrict
	global Hunk_AllocLowAlignInternal
	global _ZN10LargeLocal6GetBufEv
	global _ZN10LargeLocalC1Ei
	global _ZN10LargeLocalD1Ev
	global com_dedicated


SECTION .text


;Hunk_AddAsset(XAssetHeader, void*)
Hunk_AddAsset:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0xc]
	mov ebx, [eax]
	mov ecx, [eax+0x8]
	mov edx, [ebp+0x8]
	mov [ecx+ebx*4], edx
	add dword [eax], 0x1
	pop ebx
	pop ebp
	ret


;Com_Meminfo_f()
Com_Meminfo_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [s_hunkTotal]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_8i_bytes_total_h
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [hunk_low]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_8i_low_permanent
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [hunk_low+0x4]
	cmp eax, [hunk_low]
	jz Com_Meminfo_f_10
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_8i_low_temp
	mov dword [esp], 0x0
	call Com_Printf
Com_Meminfo_f_10:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [hunk_high]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_8i_high_permanen
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [hunk_high+0x4]
	cmp eax, [hunk_high]
	jz Com_Meminfo_f_20
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_8i_high_temp
	mov dword [esp], 0x0
	call Com_Printf
Com_Meminfo_f_20:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [hunk_low]
	add eax, [hunk_high]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_8i_total_hunk_in
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Com_Meminfo_f_30
	call PMem_DumpMemStats
Com_Meminfo_f_30:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret


;Hunk_ClearData()
Hunk_ClearData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [s_hunkData]
	mov edi, eax
	add edi, [hunk_low]
	mov esi, eax
	add esi, [s_hunkTotal]
	sub esi, [hunk_high]
	mov dword [ebp-0x1c], 0x0
Hunk_ClearData_70:
	mov eax, [ebp-0x1c]
	lea ebx, [eax*4+com_fileDataHashTable]
Hunk_ClearData_50:
	mov edx, [ebx]
	test edx, edx
	jz Hunk_ClearData_10
Hunk_ClearData_60:
	cmp edi, edx
	ja Hunk_ClearData_20
	cmp esi, edx
	jbe Hunk_ClearData_20
	mov eax, [edx+0x4]
	mov [ebx], eax
	mov ecx, [edx]
	movzx eax, byte [edx+0x8]
	cmp al, 0x4
	jz Hunk_ClearData_30
	cmp al, 0x6
	jz Hunk_ClearData_40
	cmp al, 0x2
	jnz Hunk_ClearData_50
	mov [esp], ecx
	call XAnimFreeList
	mov edx, [ebx]
	test edx, edx
	jnz Hunk_ClearData_60
Hunk_ClearData_10:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x400
	jnz Hunk_ClearData_70
	mov ebx, com_hunkData
Hunk_ClearData_120:
	mov edx, [ebx]
	test edx, edx
	jz Hunk_ClearData_80
Hunk_ClearData_130:
	cmp edi, edx
	ja Hunk_ClearData_90
	cmp esi, edx
	jbe Hunk_ClearData_90
	mov eax, [edx+0x4]
	mov [ebx], eax
	mov ecx, [edx]
	movzx eax, byte [edx+0x8]
	cmp al, 0x4
	jz Hunk_ClearData_100
	cmp al, 0x6
	jz Hunk_ClearData_110
	cmp al, 0x2
	jnz Hunk_ClearData_120
	mov [esp], ecx
	call XAnimFreeList
	mov edx, [ebx]
	test edx, edx
	jnz Hunk_ClearData_130
Hunk_ClearData_80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_ClearData_20:
	lea ebx, [edx+0x4]
	jmp Hunk_ClearData_50
Hunk_ClearData_90:
	lea ebx, [edx+0x4]
	jmp Hunk_ClearData_120
Hunk_ClearData_30:
	mov [esp], ecx
	call XModelPartsFree
	jmp Hunk_ClearData_50
Hunk_ClearData_40:
	mov [esp], ecx
	call XAnimFree
	jmp Hunk_ClearData_50
Hunk_ClearData_100:
	mov [esp], ecx
	call XModelPartsFree
	jmp Hunk_ClearData_120
Hunk_ClearData_110:
	mov [esp], ecx
	call XAnimFree
	jmp Hunk_ClearData_120


;Com_InitHunkMemory
Com_InitHunkMemory:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call FS_LoadStack
	test eax, eax
	jnz Com_InitHunkMemory_10
Com_InitHunkMemory_30:
	mov eax, useFastFile
	mov eax, [eax]
	movzx edx, byte [eax+0xc]
	mov eax, 0xa000000
	test dl, dl
	cmovnz eax, [s_hunkTotal]
	mov [s_hunkTotal], eax
	mov eax, 0xa00000
	cmovz eax, [s_hunkTotal]
	mov [s_hunkTotal], eax
	call R_ReflectionProbeRegisterDvars
	mov eax, r_reflectionProbeGenerate
	mov edx, [eax]
	mov eax, 0x20000000
	cmp byte [edx+0xc], 0x0
	cmovz eax, [s_hunkTotal]
	mov [s_hunkTotal], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x2000
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _VirtualAlloc
	mov [s_hunkData], eax
	test eax, eax
	jz Com_InitHunkMemory_20
Com_InitHunkMemory_40:
	mov [s_origHunkData], eax
	mov dword [hunk_low], 0x0
	mov dword [hunk_low+0x4], 0x0
	mov dword [hunk_high], 0x0
	mov dword [hunk_high+0x4], 0x0
	call Hunk_ClearData
	mov dword [esp+0x8], 0x4000
	mov eax, [s_hunkTotal]
	mov [esp+0x4], eax
	mov eax, [s_hunkData]
	mov [esp], eax
	call _VirtualFree
	mov dword [esp+0x8], _ZZ18Com_InitHunkMemoryE17Com_Meminfo_f_VAR
	mov dword [esp+0x4], Com_Meminfo_f
	mov dword [esp], _cstring_meminfo
	call Cmd_AddCommand
	leave
	ret
Com_InitHunkMemory_10:
	mov dword [esp+0x4], _cstring_hunk_initializat
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_InitHunkMemory_30
Com_InitHunkMemory_20:
	mov dword [esp+0x4], 0x530
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov eax, [s_hunkData]
	jmp Com_InitHunkMemory_40
	nop


;Com_TouchMemory
Com_TouchMemory:
	push ebp
	mov ebp, esp
	mov edx, [hunk_low]
	sar edx, 0x2
	test edx, edx
	jle Com_TouchMemory_10
	xor eax, eax
Com_TouchMemory_20:
	add eax, 0x40
	cmp edx, eax
	jg Com_TouchMemory_20
Com_TouchMemory_10:
	mov eax, [hunk_high]
	mov edx, [s_hunkTotal]
	sub edx, eax
	sar edx, 0x2
	sar eax, 0x2
	cmp edx, eax
	jge Com_TouchMemory_30
Com_TouchMemory_40:
	add edx, 0x40
	cmp eax, edx
	jg Com_TouchMemory_40
Com_TouchMemory_30:
	pop ebp
	ret
	nop


;CopyStringInternal
CopyStringInternal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x15
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SL_GetString_
	mov [ebp+0x8], eax
	leave
	jmp SL_ConvertToString


;FreeStringInternal
FreeStringInternal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SL_FindString
	test eax, eax
	jnz FreeStringInternal_10
	leave
	ret
FreeStringInternal_10:
	mov [ebp+0x8], eax
	leave
	jmp SL_RemoveRefToString


;Hunk_AddData
Hunk_AddData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x9
	call dword [ebp+0x10]
	mov edx, [ebp+0xc]
	mov [eax], edx
	mov edx, [ebp+0x8]
	mov [eax+0x8], dl
	mov edx, [com_hunkData]
	mov [eax+0x4], edx
	mov [com_hunkData], eax
	leave
	ret
	nop


;Hunk_AllocateTempMemoryHighInternal
Hunk_AllocateTempMemoryHigh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [s_hunkTotal]
	mov edx, [hunk_high+0x4]
	mov ecx, [s_hunkData]
	lea esi, [ebx+ecx]
	sub esi, edx
	and esi, 0xfffff000
	mov eax, [ebp+0x8]
	lea edx, [edx+eax+0xf]
	and edx, 0xfffffff0
	mov [hunk_high+0x4], edx
	mov edi, [hunk_low+0x4]
	lea eax, [edx+edi]
	cmp ebx, eax
	jl Hunk_AllocateTempMemoryHigh_10
Hunk_AllocateTempMemoryHigh_60:
	lea ebx, [ecx+ebx]
	sub ebx, edx
	mov eax, ebx
	and eax, 0xfffff000
	mov edx, esi
	sub edx, eax
	jnz Hunk_AllocateTempMemoryHigh_20
Hunk_AllocateTempMemoryHigh_30:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_AllocateTempMemoryHigh_20:
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], edx
	mov [esp], eax
	call _VirtualAlloc
	test eax, eax
	jnz Hunk_AllocateTempMemoryHigh_30
	mov dword [esp+0x4], 0x1aa
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_AllocateTempMemoryHigh_10:
	mov eax, edx
	test edx, edx
	js Hunk_AllocateTempMemoryHigh_40
Hunk_AllocateTempMemoryHigh_70:
	sar eax, 0x14
	mov [esp+0x14], eax
	mov eax, edi
	lea edx, [edi+0xfffff]
	cmp edi, 0xffffffff
	cmovle eax, edx
	sar eax, 0x14
	mov [esp+0x10], eax
	mov eax, ebx
	test ebx, ebx
	js Hunk_AllocateTempMemoryHigh_50
Hunk_AllocateTempMemoryHigh_80:
	sar eax, 0x14
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hunk_allocatetem
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, [s_hunkTotal]
	mov edx, [hunk_high+0x4]
	mov ecx, [s_hunkData]
	jmp Hunk_AllocateTempMemoryHigh_60
Hunk_AllocateTempMemoryHigh_40:
	lea eax, [edx+0xfffff]
	jmp Hunk_AllocateTempMemoryHigh_70
Hunk_AllocateTempMemoryHigh_50:
	lea eax, [ebx+0xfffff]
	jmp Hunk_AllocateTempMemoryHigh_80


;Hunk_AllocateTempMemoryInternal
Hunk_AllocateTempMemory:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [s_hunkData]
	test ebx, ebx
	jz Hunk_AllocateTempMemory_10
	mov edx, [ebp+0x8]
	add edx, 0x10
	mov [ebp-0x1c], edx
	mov eax, [hunk_low+0x4]
	mov [ebp-0x24], eax
	lea edi, [ebx+eax+0xfff]
	and edi, 0xfffff000
	add eax, 0xf
	and eax, 0xfffffff0
	lea edx, [ebx+eax]
	mov [ebp-0x20], edx
	mov ecx, [ebp-0x1c]
	add ecx, eax
	mov [hunk_low+0x4], ecx
	mov eax, [hunk_high+0x4]
	lea edx, [ecx+eax]
	mov esi, [s_hunkTotal]
	cmp edx, esi
	jg Hunk_AllocateTempMemory_20
	mov esi, [ebp-0x20]
	add esi, 0x10
	lea eax, [ecx+ebx+0xfff]
	and eax, 0xfffff000
	sub eax, edi
	jnz Hunk_AllocateTempMemory_30
Hunk_AllocateTempMemory_50:
	mov edx, [ebp-0x20]
	mov dword [edx], 0x89537892
	mov eax, [hunk_low+0x4]
	sub eax, [ebp-0x24]
	mov [edx+0x4], eax
Hunk_AllocateTempMemory_70:
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_AllocateTempMemory_20:
	sub edx, esi
	mov [esp+0x18], edx
	lea edx, [eax+0xfffff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x14
	mov [esp+0x14], eax
	mov eax, ecx
	test ecx, ecx
	js Hunk_AllocateTempMemory_40
Hunk_AllocateTempMemory_80:
	sar eax, 0x14
	mov [esp+0x10], eax
	mov eax, esi
	lea edx, [esi+0xfffff]
	cmp esi, 0xffffffff
	cmovle eax, edx
	sar eax, 0x14
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hunk_allocatetem1
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, [s_hunkData]
	mov ecx, [hunk_low+0x4]
	mov esi, [ebp-0x20]
	add esi, 0x10
	lea eax, [ecx+ebx+0xfff]
	and eax, 0xfffff000
	sub eax, edi
	jz Hunk_AllocateTempMemory_50
Hunk_AllocateTempMemory_30:
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], eax
	mov [esp], edi
	call _VirtualAlloc
	test eax, eax
	jnz Hunk_AllocateTempMemory_50
	mov dword [esp+0x4], 0x1aa
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	jmp Hunk_AllocateTempMemory_50
Hunk_AllocateTempMemory_10:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call malloc
	mov esi, eax
	test eax, eax
	jz Hunk_AllocateTempMemory_60
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Com_Memset
	jmp Hunk_AllocateTempMemory_70
Hunk_AllocateTempMemory_40:
	lea eax, [ecx+0xfffff]
	jmp Hunk_AllocateTempMemory_80
Hunk_AllocateTempMemory_60:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_z_mall
	mov dword [esp], 0x10
	call Com_PrintError
	mov dword [esp+0x4], 0x251
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	jmp Hunk_AllocateTempMemory_70
	nop


;Hunk_Clear
Hunk_Clear:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [hunk_low], 0x0
	mov dword [hunk_low+0x4], 0x0
	mov dword [hunk_high], 0x0
	mov dword [hunk_high+0x4], 0x0
	call Hunk_ClearData
	mov dword [esp+0x8], 0x4000
	mov eax, [s_hunkTotal]
	mov [esp+0x4], eax
	mov eax, [s_hunkData]
	mov [esp], eax
	call _VirtualFree
	leave
	ret
	nop


;Hunk_ClearTempMemory
Hunk_ClearTempMemory:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [s_hunkData]
	mov edx, eax
	add edx, [hunk_low+0x4]
	add edx, 0xfff
	and edx, 0xfffff000
	mov ecx, [hunk_low]
	mov [hunk_low+0x4], ecx
	lea eax, [eax+ecx+0xfff]
	and eax, 0xfffff000
	sub edx, eax
	jnz Hunk_ClearTempMemory_10
	leave
	ret
Hunk_ClearTempMemory_10:
	mov dword [esp+0x8], 0x4000
	mov [esp+0x4], edx
	mov [esp], eax
	call _VirtualFree
	leave
	ret
	nop


;Hunk_ClearTempMemoryHigh
Hunk_ClearTempMemoryHigh:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [s_hunkData]
	add eax, [s_hunkTotal]
	mov ecx, eax
	sub ecx, [hunk_high+0x4]
	and ecx, 0xfffff000
	mov edx, [hunk_high]
	mov [hunk_high+0x4], edx
	sub eax, edx
	and eax, 0xfffff000
	sub eax, ecx
	jnz Hunk_ClearTempMemoryHigh_10
	leave
	ret
Hunk_ClearTempMemoryHigh_10:
	mov dword [esp+0x8], 0x4000
	mov [esp+0x4], eax
	mov [esp], ecx
	call _VirtualFree
	leave
	ret


;Hunk_ClearToMarkLow
Hunk_ClearToMarkLow:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [hunk_low+0x4]
	add ebx, [s_hunkData]
	add ebx, 0xfff
	and ebx, 0xfffff000
	mov [hunk_low+0x4], eax
	mov [hunk_low], eax
	call Hunk_ClearData
	mov eax, [hunk_low+0x4]
	add eax, [s_hunkData]
	add eax, 0xfff
	and eax, 0xfffff000
	mov edx, ebx
	sub edx, eax
	jz Hunk_ClearToMarkLow_10
	mov dword [esp+0x8], 0x4000
	mov [esp+0x4], edx
	mov [esp], eax
	call _VirtualFree
Hunk_ClearToMarkLow_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Hunk_DataOnHunk
Hunk_DataOnHunk:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [s_hunkData]
	cmp edx, eax
	jb Hunk_DataOnHunk_10
	add eax, [s_hunkTotal]
	cmp edx, eax
	jb Hunk_DataOnHunk_20
Hunk_DataOnHunk_10:
	xor eax, eax
	pop ebp
	ret
Hunk_DataOnHunk_20:
	mov eax, 0x1
	pop ebp
	ret


;Hunk_FindDataForFile
Hunk_FindDataForFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call FS_HashFileName
	mov ebx, [eax*4+com_fileDataHashTable]
	test ebx, ebx
	jz Hunk_FindDataForFile_10
Hunk_FindDataForFile_40:
	movzx eax, byte [ebx+0x8]
	cmp esi, eax
	jnz Hunk_FindDataForFile_20
	mov [esp+0x4], edi
	lea eax, [ebx+0x9]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Hunk_FindDataForFile_30
Hunk_FindDataForFile_20:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz Hunk_FindDataForFile_40
Hunk_FindDataForFile_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_FindDataForFile_30:
	mov eax, [ebx]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Hunk_FreeTempMemory
Hunk_FreeTempMemory:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, [s_hunkData]
	test eax, eax
	jz Hunk_FreeTempMemory_10
	lea esi, [ebx-0x10]
	cmp dword [ebx-0x10], 0x89537892
	jz Hunk_FreeTempMemory_20
	mov dword [esp+0x4], _cstring_hunk_freetempmem
	mov dword [esp], 0x1
	call Com_Error
Hunk_FreeTempMemory_20:
	mov dword [ebx-0x10], 0x89537893
	mov eax, [hunk_low+0x4]
	mov ecx, [s_hunkData]
	mov edx, eax
	sub edx, [esi+0x4]
	mov [hunk_low+0x4], edx
	lea edx, [ecx+edx+0xfff]
	and edx, 0xfffff000
	lea eax, [eax+ecx+0xfff]
	and eax, 0xfffff000
	sub eax, edx
	jnz Hunk_FreeTempMemory_30
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Hunk_FreeTempMemory_30:
	mov dword [esp+0x8], 0x4000
	mov [esp+0x4], eax
	mov [esp], edx
	call _VirtualFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Hunk_FreeTempMemory_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp free
	nop


;Hunk_HideTempMemory
Hunk_HideTempMemory:
	push ebp
	mov ebp, esp
	mov eax, [hunk_low]
	mov edx, [hunk_low+0x4]
	mov [hunk_low], edx
	pop ebp
	ret


;Hunk_OverrideDataForFile
Hunk_OverrideDataForFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call FS_HashFileName
	mov ebx, [eax*4+com_fileDataHashTable]
	test ebx, ebx
	jnz Hunk_OverrideDataForFile_10
	jmp Hunk_OverrideDataForFile_20
Hunk_OverrideDataForFile_30:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz Hunk_OverrideDataForFile_20
Hunk_OverrideDataForFile_10:
	movzx eax, byte [ebx+0x8]
	cmp eax, esi
	jnz Hunk_OverrideDataForFile_30
	mov [esp+0x4], edi
	lea eax, [ebx+0x9]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Hunk_OverrideDataForFile_30
	mov eax, [ebp+0x10]
	mov [ebx], eax
Hunk_OverrideDataForFile_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Hunk_SetDataForFile
Hunk_SetDataForFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x4], 0x400
	mov eax, [ebp+0xc]
	mov [esp], eax
	call FS_HashFileName
	mov esi, eax
	mov edi, [ebp+0xc]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	add ecx, 0x9
	mov [esp], ecx
	call dword [ebp+0x14]
	mov ebx, eax
	mov eax, [ebp+0x10]
	mov [ebx], eax
	mov eax, [ebp+0x8]
	mov [ebx+0x8], al
	lea edi, [ebx+0x9]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcpy
	mov edx, com_fileDataHashTable
	mov eax, [edx+esi*4]
	mov [ebx+0x4], eax
	mov [edx+esi*4], ebx
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Hunk_ShowTempMemory
Hunk_ShowTempMemory:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [hunk_low], eax
	pop ebp
	ret
	nop


;Hunk_Used
Hunk_Used:
	push ebp
	mov ebp, esp
	mov eax, [hunk_low]
	add eax, [hunk_high]
	pop ebp
	ret


;ReplaceStringInternal
ReplaceStringInternal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esp+0x8], 0x15
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SL_GetString_
	mov [esp], eax
	call SL_ConvertToString
	mov ebx, eax
	mov eax, [esi]
	test eax, eax
	jz ReplaceStringInternal_10
	mov [esp], eax
	call SL_FindString
	test eax, eax
	jnz ReplaceStringInternal_20
ReplaceStringInternal_10:
	mov [esi], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
ReplaceStringInternal_20:
	mov [esp], eax
	call SL_RemoveRefToString
	mov [esi], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Z_FreeInternal
Z_FreeInternal:
	push ebp
	mov ebp, esp
	pop ebp
	jmp free
	nop


;Z_MallocGarbageInternal
Z_MallocGarbageInternal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp], esi
	call malloc
	mov ebx, eax
	test eax, eax
	jz Z_MallocGarbageInternal_10
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Z_MallocGarbageInternal_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_failed_to_z_mall
	mov dword [esp], 0x10
	call Com_PrintError
	mov dword [esp+0x4], 0x251
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Z_MallocInternal
Z_MallocInternal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp], esi
	call malloc
	mov ebx, eax
	test eax, eax
	jz Z_MallocInternal_10
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Com_Memset
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Z_MallocInternal_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_failed_to_z_mall
	mov dword [esp], 0x10
	call Com_PrintError
	mov dword [esp+0x4], 0x251
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Z_TryVirtualAllocInternal
Z_TryVirtualAllocInternal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x2000
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call _VirtualAlloc
	mov esi, eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], ebx
	mov [esp], eax
	call _VirtualAlloc
	test eax, eax
	jz Z_TryVirtualAllocInternal_10
Z_TryVirtualAllocInternal_20:
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Z_TryVirtualAllocInternal_10:
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _VirtualFree
	xor esi, esi
	jmp Z_TryVirtualAllocInternal_20


;Z_VirtualAllocInternal
Z_VirtualAllocInternal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x2000
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call _VirtualAlloc
	mov esi, eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], ebx
	mov [esp], eax
	call _VirtualAlloc
	test eax, eax
	jz Z_VirtualAllocInternal_10
	test esi, esi
	jz Z_VirtualAllocInternal_20
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Z_VirtualAllocInternal_10:
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _VirtualFree
	xor esi, esi
Z_VirtualAllocInternal_20:
	mov dword [esp+0x4], 0x3a5
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Z_VirtualCommitInternal
Z_VirtualCommitInternal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _VirtualAlloc
	test eax, eax
	jz Z_VirtualCommitInternal_10
	leave
	ret
Z_VirtualCommitInternal_10:
	mov dword [ebp+0xc], 0x1aa
	mov dword [ebp+0x8], _cstring_aspyrbuilddepotc
	leave
	jmp Sys_OutOfMemErrorInternal


;Z_VirtualDecommitInternal
Z_VirtualDecommitInternal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4000
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _VirtualFree
	leave
	ret


;Z_VirtualFreeInternal
Z_VirtualFreeInternal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _VirtualFree
	leave
	ret
	nop


;Z_VirtualReserve
Z_VirtualReserve:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x2000
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _VirtualAlloc
	leave
	ret
	nop


;Hunk_UserAlloc(HunkUser*, int, int)
Hunk_UserAlloc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x10]
	sub eax, 0x1
	mov [ebp-0x1c], eax
	mov edx, [edi]
	mov [ebp-0x28], edx
	mov eax, [edx+0x10]
	mov ecx, [ebp-0x1c]
	not ecx
	mov [ebp-0x2c], ecx
	mov esi, [ebp-0x1c]
	add esi, eax
	and esi, ecx
	mov edx, [ebp+0xc]
	add edx, esi
	mov ecx, [ebp-0x28]
	cmp edx, [ecx+0xc]
	jg Hunk_UserAlloc_10
Hunk_UserAlloc_90:
	mov [ecx+0x10], edx
	lea ecx, [eax+0xfff]
	and ecx, 0xfffff000
	lea eax, [edx+0xfff]
	and eax, 0xfffff000
	cmp ecx, eax
	jz Hunk_UserAlloc_20
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	sub edx, ecx
	mov [esp+0x4], edx
	mov [esp], ecx
	call _VirtualAlloc
	test eax, eax
	jz Hunk_UserAlloc_30
Hunk_UserAlloc_20:
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_UserAlloc_70:
	mov dword [esp+0x4], _cstring_hunk_useralloc_o
	mov dword [esp], 0x1
	call Com_Error
Hunk_UserAlloc_60:
	mov eax, [edi+0x1c]
	mov [ebp-0x24], eax
	mov edx, [edi+0x14]
	mov [ebp-0x20], edx
	mov esi, [edi+0x8]
	movzx ecx, byte [edi+0x19]
	mov [ebp-0x30], ecx
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x2000
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call _VirtualAlloc
	mov ebx, eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call _VirtualAlloc
	test eax, eax
	jz Hunk_UserAlloc_40
Hunk_UserAlloc_80:
	lea eax, [esi+ebx]
	mov [ebx+0xc], eax
	lea eax, [ebx+0x20]
	mov [ebx+0x10], eax
	mov [ebx+0x8], esi
	mov [ebx], ebx
	mov byte [ebx+0x18], 0x0
	mov edx, [ebp-0x20]
	mov [ebx+0x14], edx
	movzx ecx, byte [ebp-0x30]
	mov [ebx+0x19], cl
	mov edx, [ebp-0x24]
	mov [ebx+0x1c], edx
	mov [edi], ebx
	mov ecx, [ebp-0x28]
	mov [ecx+0x4], ebx
	mov esi, [ebp-0x1c]
	add esi, eax
	and esi, [ebp-0x2c]
	mov ecx, [ebp+0xc]
	lea edx, [esi+ecx]
	cmp edx, [ebx+0xc]
	jle Hunk_UserAlloc_50
	mov [ebp-0x28], ebx
Hunk_UserAlloc_10:
	cmp byte [edi+0x18], 0x0
	jz Hunk_UserAlloc_60
	jmp Hunk_UserAlloc_70
Hunk_UserAlloc_40:
	mov dword [esp+0x4], 0x1aa
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	jmp Hunk_UserAlloc_80
Hunk_UserAlloc_50:
	mov [ebp-0x28], ebx
	mov ecx, ebx
	jmp Hunk_UserAlloc_90
Hunk_UserAlloc_30:
	mov dword [esp+0x4], 0x1aa
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Hunk_UserReset(HunkUser*)
Hunk_UserReset:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [edi+0x4]
	test esi, esi
	jz Hunk_UserReset_10
	mov eax, [esi+0x4]
	test eax, eax
	jnz Hunk_UserReset_20
	jmp Hunk_UserReset_30
Hunk_UserReset_40:
	mov eax, ebx
Hunk_UserReset_20:
	mov ebx, [eax+0x4]
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _VirtualFree
	test ebx, ebx
	jnz Hunk_UserReset_40
Hunk_UserReset_30:
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _VirtualFree
	mov [edi], edi
	mov dword [edi+0x4], 0x0
Hunk_UserReset_10:
	lea ebx, [edi+0x20]
	lea ecx, [edi+0x101f]
	and ecx, 0xfffff000
	mov edx, [edi+0x10]
	lea eax, [edx+0xfff]
	and eax, 0xfffff000
	cmp ecx, eax
	jz Hunk_UserReset_50
	mov dword [esp+0x8], 0x4000
	sub edx, ecx
	mov [esp+0x4], edx
	mov [esp], ecx
	call _VirtualFree
Hunk_UserReset_50:
	mov [edi+0x10], ebx
	mov dword [esp+0x8], 0xfe0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Hunk_CopyString(HunkUser*, char const*)
Hunk_CopyString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	mov dword [esp+0x8], 0x1
	mov edi, esi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Hunk_UserAlloc
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Hunk_UserCreate(int, char const*, unsigned char, unsigned char, int)
Hunk_UserCreate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x1c], eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x2000
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call _VirtualAlloc
	mov ebx, eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call _VirtualAlloc
	test eax, eax
	jnz Hunk_UserCreate_10
	mov dword [esp+0x4], 0x1aa
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
Hunk_UserCreate_10:
	lea eax, [esi+ebx]
	mov [ebx+0xc], eax
	lea eax, [ebx+0x20]
	mov [ebx+0x10], eax
	mov [ebx+0x8], esi
	mov [ebx], ebx
	mov eax, edi
	mov [ebx+0x18], al
	mov eax, [ebp+0xc]
	mov [ebx+0x14], eax
	movzx eax, byte [ebp-0x1c]
	mov [ebx+0x19], al
	mov eax, [ebp+0x18]
	mov [ebx+0x1c], eax
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Hunk_UserSetPos(HunkUser*, void*)
Hunk_UserSetPos:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x10], edx
	pop ebp
	ret


;LargeLocalReset()
LargeLocalReset:
	push ebp
	mov ebp, esp
	mov dword [g_largeLocalPos], 0x0
	pop ebp
	ret
	nop


;Hunk_UserDestroy(HunkUser*)
Hunk_UserDestroy:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	test eax, eax
	jnz Hunk_UserDestroy_10
	jmp Hunk_UserDestroy_20
Hunk_UserDestroy_30:
	mov eax, ebx
Hunk_UserDestroy_10:
	mov ebx, [eax+0x4]
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _VirtualFree
	test ebx, ebx
	jnz Hunk_UserDestroy_30
Hunk_UserDestroy_20:
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _VirtualFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Hunk_FreeDebugMem(void*)
Hunk_FreeDebugMem:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Hunk_AllocDebugMem(int, char const*)
Hunk_AllocDebugMem:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_debugUser]
	mov [esp], eax
	call Hunk_UserAlloc
	leave
	ret


;Hunk_AllocInternal(int)
Hunk_AllocInternal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Hunk_AllocAlignInternal
	leave
	ret
	nop


Hunk_ResetDebugMem:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_debugUser]
	mov [esp], eax
	call Hunk_UserReset
	leave
	ret
	nop


;Hunk_UserAllocAlign(HunkUser*, int)
Hunk_UserAllocAlign:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Hunk_UserAlloc
	leave
	ret


;Hunk_InitDebugMemory()
Hunk_InitDebugMemory:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x1000000
	mov dword [esp], 0x0
	call _VirtualAlloc
	mov ebx, eax
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call _VirtualAlloc
	test eax, eax
	jnz Hunk_InitDebugMemory_10
	mov dword [esp+0x4], 0x1aa
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
Hunk_InitDebugMemory_10:
	lea eax, [ebx+0x1000000]
	mov [ebx+0xc], eax
	lea eax, [ebx+0x20]
	mov [ebx+0x10], eax
	mov dword [ebx+0x8], 0x1000000
	mov [ebx], ebx
	mov byte [ebx+0x18], 0x0
	mov dword [ebx+0x14], _cstring_hunk_initdebugme
	mov byte [ebx+0x19], 0x0
	mov dword [ebx+0x1c], 0x0
	mov [g_debugUser], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Hunk_AllocLowInternal(int)
Hunk_AllocLowInternal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Hunk_AllocLowAlignInternal
	leave
	ret
	nop


;Hunk_AllocAlignInternal(int, int)
Hunk_AllocAlignInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	sub eax, 0x1
	mov ecx, [s_hunkTotal]
	mov edx, [hunk_high]
	mov ebx, [s_hunkData]
	lea esi, [ecx+ebx]
	sub esi, edx
	and esi, 0xfffff000
	add edx, [ebp+0x8]
	lea edx, [eax+edx]
	not eax
	and edx, eax
	mov [hunk_high], edx
	mov [hunk_high+0x4], edx
	mov edi, [hunk_low+0x4]
	lea eax, [edx+edi]
	cmp ecx, eax
	jl Hunk_AllocAlignInternal_10
Hunk_AllocAlignInternal_60:
	add ebx, ecx
	sub ebx, edx
	mov eax, ebx
	and eax, 0xfffff000
	mov edx, esi
	sub edx, eax
	jnz Hunk_AllocAlignInternal_20
Hunk_AllocAlignInternal_30:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_AllocAlignInternal_20:
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], edx
	mov [esp], eax
	call _VirtualAlloc
	test eax, eax
	jnz Hunk_AllocAlignInternal_30
	mov dword [esp+0x4], 0x1aa
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_AllocAlignInternal_10:
	mov eax, edx
	test edx, edx
	js Hunk_AllocAlignInternal_40
Hunk_AllocAlignInternal_70:
	sar eax, 0x14
	mov [esp+0x14], eax
	mov eax, edi
	lea edx, [edi+0xfffff]
	cmp edi, 0xffffffff
	cmovle eax, edx
	sar eax, 0x14
	mov [esp+0x10], eax
	mov eax, ecx
	test ecx, ecx
	js Hunk_AllocAlignInternal_50
Hunk_AllocAlignInternal_80:
	sar eax, 0x14
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hunk_allocalign_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [s_hunkTotal]
	mov edx, [hunk_high]
	mov ebx, [s_hunkData]
	jmp Hunk_AllocAlignInternal_60
Hunk_AllocAlignInternal_40:
	lea eax, [edx+0xfffff]
	jmp Hunk_AllocAlignInternal_70
Hunk_AllocAlignInternal_50:
	lea eax, [ecx+0xfffff]
	jmp Hunk_AllocAlignInternal_80
	nop


Hunk_ShutdownDebugMemory:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [g_debugUser]
	test esi, esi
	jz Hunk_ShutdownDebugMemory_Exit
	mov eax, [esi+0x4]
	test eax, eax
	jnz Hunk_ShutdownDebugMemory_10
	jmp Hunk_ShutdownDebugMemory_20
Hunk_ShutdownDebugMemory_30:
	mov eax, ebx
Hunk_ShutdownDebugMemory_10:
	mov ebx, [eax+0x4]
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _VirtualFree
	test ebx, ebx
	jnz Hunk_ShutdownDebugMemory_30
Hunk_ShutdownDebugMemory_20:
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _VirtualFree
	mov dword [g_debugUser], 0x0
Hunk_ShutdownDebugMemory_Exit:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Hunk_UserAllocAlignStrict(HunkUser*, int)
Hunk_UserAllocAlignStrict:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Hunk_UserAlloc
	leave
	ret


;Hunk_AllocLowAlignInternal(int, int)
Hunk_AllocLowAlignInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0xc]
	sub eax, 0x1
	mov ecx, [hunk_low]
	mov ebx, [s_hunkData]
	lea esi, [ecx+ebx+0xfff]
	and esi, 0xfffff000
	lea edx, [eax+ecx]
	not eax
	and edx, eax
	lea eax, [ebx+edx]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x8]
	lea ecx, [edx+eax]
	mov [hunk_low], ecx
	mov [hunk_low+0x4], ecx
	mov edx, [hunk_high+0x4]
	mov edi, [s_hunkTotal]
	lea eax, [ecx+edx]
	cmp eax, edi
	jg Hunk_AllocLowAlignInternal_10
Hunk_AllocLowAlignInternal_50:
	lea eax, [ecx+ebx+0xfff]
	and eax, 0xfffff000
	sub eax, esi
	jnz Hunk_AllocLowAlignInternal_20
Hunk_AllocLowAlignInternal_30:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memset
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_AllocLowAlignInternal_20:
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], eax
	mov [esp], esi
	call _VirtualAlloc
	test eax, eax
	jnz Hunk_AllocLowAlignInternal_30
	mov dword [esp+0x4], 0x1aa
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memset
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Hunk_AllocLowAlignInternal_10:
	mov eax, edx
	lea edx, [edx+0xfffff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x14
	mov [esp+0x14], eax
	mov eax, ecx
	test ecx, ecx
	js Hunk_AllocLowAlignInternal_40
Hunk_AllocLowAlignInternal_60:
	sar eax, 0x14
	mov [esp+0x10], eax
	mov eax, edi
	lea edx, [edi+0xfffff]
	cmp edi, 0xffffffff
	cmovle eax, edx
	sar eax, 0x14
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hunk_alloclowali
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [hunk_low]
	mov ebx, [s_hunkData]
	jmp Hunk_AllocLowAlignInternal_50
Hunk_AllocLowAlignInternal_40:
	lea eax, [ecx+0xfffff]
	jmp Hunk_AllocLowAlignInternal_60
	nop


;LargeLocal::GetBuf()
_ZN10LargeLocal6GetBufEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	add eax, g_largeLocalBuf
	pop ebp
	ret
	nop


;LargeLocal::LargeLocal(int)
_ZN10LargeLocalC1Ei:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [g_largeLocalPos]
	lea eax, [ecx+0x3]
	and eax, 0xfffffffc
	add eax, edx
	mov [g_largeLocalPos], eax
	mov [ebx], edx
	mov [ebx+0x4], ecx
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;LargeLocal::~LargeLocal()
_ZN10LargeLocalD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [g_largeLocalPos], eax
	pop ebp
	ret
	nop
	add [eax], al


;Zero initialized global or static variables of com_memory:
SECTION .bss
g_debugUser: resb 0x4
g_largeLocalPos: resb 0x1c
g_largeLocalBuf: resb 0x80000
hunk_high: resb 0x8
hunk_low: resb 0x8
s_hunkData: resb 0x4
s_hunkTotal: resb 0x4
com_hunkData: resb 0x8
com_fileDataHashTable: resb 0x1000
s_origHunkData: resb 0x4
_ZZ18Com_InitHunkMemoryE17Com_Meminfo_f_VAR: resb 0x3c
com_dedicated: resb 0x80


;Initialized global or static variables of com_memory:
SECTION .data


;Initialized constant data of com_memory:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_8i_bytes_total_h:		db "%8i bytes total hunk",0ah,0
_cstring_:		db 0ah,0
_cstring_8i_low_permanent:		db "%8i low permanent",0ah,0
_cstring_8i_low_temp:		db "%8i low temp",0ah,0
_cstring_8i_high_permanen:		db "%8i high permanent",0ah,0
_cstring_8i_high_temp:		db "%8i high temp",0ah,0
_cstring_8i_total_hunk_in:		db "%8i total hunk in use",0ah,0
_cstring_meminfo:		db "meminfo",0
_cstring_hunk_initializat:		db 15h,"Hunk initialization failed. File system load stack not zero",0
_cstring_aspyrbuilddepotc:		db "/AspyrBuild/depot/CoD4/PC/src/universal/com_memory.cpp",0
_cstring_hunk_allocatetem:		db 15h,"Hunk_AllocateTempMemoryHigh: failed on %i bytes (total %i MB, low %i MB, high %i MB)",0
_cstring_hunk_allocatetem1:		db 15h,"Hunk_AllocateTempMemory: failed on %i bytes (total %i MB, low %i MB, high %i MB), needs %i more hunk bytes",0
_cstring_failed_to_z_mall:		db "Failed to Z_Malloc %i bytes",0ah,0
_cstring_hunk_freetempmem:		db 15h,"Hunk_FreeTempMemory: bad magic",0
_cstring_hunk_useralloc_o:		db "Hunk_UserAlloc: out of memory",0
_cstring_hunk_initdebugme:		db "Hunk_InitDebugMemory",0
_cstring_hunk_allocalign_:		db 15h,"Hunk_AllocAlign failed on %i bytes (total %i MB, low %i MB, high %i MB)",0
_cstring_hunk_alloclowali:		db 15h,"Hunk_AllocLowAlign failed on %i bytes (total %i MB, low %i MB, high %i MB)",0



;All constant floats and doubles:
SECTION .rdata

