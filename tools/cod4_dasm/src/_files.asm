;Imports of files:
	extern _Z18Cmd_TokenizeStringPKc
	extern cmd_args
	extern atoi
	extern _Z22Cmd_EndTokenizedStringv
	extern _Z9Com_Error11errorParm_tPKcz
	extern CopyStringInternal
	extern _Z10Com_PrintfiPKcz
	extern fs_searchpaths
	extern _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii
	extern _Z15FS_SortFileListPPKci
	extern FS_FreeFileList
	extern _Z14FS_ConvertPathPc
	extern _Z25FS_CheckFileSystemStartedv
	extern fs_homepath
	extern _Z14FS_BuildOSPathPKcS0_S0_Pc
	extern fs_debug
	extern rename
	extern _Z11FS_CopyFilePcS_
	extern _Z9FS_RemovePKc
	extern sprintf
	extern _Z13Sys_ListFilesPKcS0_S0_Pii
	extern _Z16Sys_FreeFileListPPc
	extern strcpy
	extern _Z9I_strncatPciPKc
	extern _Z16FS_FileForHandlei
	extern _Z10Com_MemsetPvii
	extern FS_FileRead
	extern _Z13FS_FCloseFilei
	extern _Z2vaPKcz
	extern _Z9FS_Path_fv
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z13FS_FullPath_fv
	extern _Z12FS_TouchFilePKc
	extern _Z10I_strnicmpPKcS0_i
	extern _Z9I_stricmpPKcS0_
	extern memcpy
	extern fs_iwdPureChecks
	extern fs_gameDirVar
	extern _Z17Cmd_RemoveCommandPKc
	extern fs_restrict
	extern _Z12Dvar_SetBoolPK6dvar_sh
	extern _Z11FS_Shutdowni
	extern _Z10FS_StartupPKc
	extern _Z16FS_UseSearchPathPK12searchpath_s
	extern _Z16FS_HandleForFile8FsThread
	extern fsh
	extern _Z10I_strncpyzPcPKci
	extern FS_FileOpenReadBinary
	extern _Z13FS_filelengthi
	extern fs_basepath
	extern fs_cdpath
	extern _Z13FS_CreatePathPc
	extern _Z11Com_DPrintfiPKcz
	extern FS_FileOpenWriteBinary
	extern fs_numServerReferencedIwds
	extern fs_serverReferencedIwdNames
	extern fs_serverReferencedIwds
	extern _Z8I_strlwrPc
	extern strstr
	extern FS_FileClose
	extern fs_numServerReferencedFFs
	extern strchr
	extern _Z20FS_AddUserMapDirIWDsPKc
	extern fs_serverReferencedFFNames
	extern fs_serverReferencedFFCheckSums
	extern _Z11DB_FileSizePKc6FF_DIR
	extern _Z30FS_ShutdownServerReferencedFFsv
	extern fs_numServerIwds
	extern _Z14SND_StopSounds20snd_stopsounds_arg_t
	extern _Z25FS_ShutdownServerIwdNamesv
	extern fs_serverIwds
	extern Com_Memcpy
	extern fs_serverIwdNames
	extern fs_fakeChkSum
	extern FreeStringInternal
	extern _Z31FS_ShutdownServerReferencedIwdsv
	extern fs_checksumFeed
	extern _ZZ16Dvar_AddCommandsvE17Dvar_Toggle_f_VAR
	extern FS_ListFiles
	extern _Z18FS_FilenameComparePKcS0_

;Exports of files:
	global info6
	global info8
	global info5
	global info4
	global info3
	global _ZZ11FS_ShiftStrPKciE3buf
	global _ZZ14FS_AddCommandsvE18FS_TouchFile_f_VAR
	global _ZZ14FS_AddCommandsvE15FS_NewDir_f_VAR
	global _ZZ14FS_AddCommandsvE12FS_Dir_f_VAR
	global _ZZ14FS_AddCommandsvE17FS_FullPath_f_VAR
	global _ZZ14FS_AddCommandsvE13FS_Path_f_VAR
	global _ZZ17FS_GetMapBaseNamePKcE8basename
	global _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0_
	global _Z11FS_NewDir_fv
	global _Z11FS_ShiftStrPKci
	global _Z12FS_SV_RenamePKcS0_
	global _Z13FS_GetModListPci
	global _Z13FS_LoadedIwdsPPKcS1_
	global _Z14FS_AddCommandsv
	global _Z14FS_TouchFile_fv
	global _Z17FS_GetMapBaseNamePKc
	global _Z17FS_ReferencedIwdsPPKcS1_
	global _Z17FS_RemoveCommandsv
	global _Z18FS_SetRestrictionsv
	global _Z19FS_SV_FOpenFileReadPKcPi
	global _Z20FS_SV_FOpenFileWritePKc
	global _Z25FS_CompareWithServerFilesPcii
	global _Z25FS_LoadedIwdPureChecksumsv
	global _Z25FS_ServerSetReferencedFFsPKcS0_
	global _Z26FS_PureServerSetLoadedIwdsPKcS0_
	global _Z26FS_ServerSetReferencedIwdsPKcS0_
	global _Z29FS_ReferencedIwdPureChecksumsv
	global _Z8FS_Dir_fv
	global _Z8FS_iwIwdPKcPc


SECTION .text


;FS_ServerSetReferencedFiles(char const*, char const*, int, int*, char const**)
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], edx
	mov edi, ecx
	mov [esp], eax
	call _Z18Cmd_TokenizeStringPKc
	mov edx, cmd_args
	mov eax, [edx]
	mov esi, [edx+eax*4+0x44]
	cmp esi, edi
	cmovg esi, edi
	test esi, esi
	jle _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__10
	xor ebx, ebx
	jmp _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__20
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__30:
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov edx, [ebp+0x8]
	mov [edx+ebx*4], eax
	add ebx, 0x1
	cmp esi, ebx
	jz _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__10
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__40:
	mov edx, cmd_args
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__20:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__30
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call atoi
	mov edx, [ebp+0x8]
	mov [edx+ebx*4], eax
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__40
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__10:
	call _Z22Cmd_EndTokenizedStringv
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__50
	mov ecx, [ebp-0x24]
	cmp byte [ecx], 0x0
	jnz _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__60
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__50:
	test esi, esi
	jnz _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__70
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__70:
	mov dword [esp+0x4], _cstring_file_sumname_mis
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__60:
	mov [esp], ecx
	call _Z18Cmd_TokenizeStringPKc
	mov ebx, cmd_args
	mov eax, [ebx]
	mov eax, [ebx+eax*4+0x44]
	cmp edi, eax
	cmovge edi, eax
	mov [ebp-0x1c], edi
	cmp esi, edi
	jz _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__80
	mov dword [esp+0x4], _cstring_file_sumname_mis
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__80:
	mov eax, [ebp-0x1c]
	test eax, eax
	jle _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__90
	xor edi, edi
	jmp _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__100
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__110:
	mov eax, _cstring_null
	mov [esp], eax
	call CopyStringInternal
	mov ecx, [ebp+0xc]
	mov edx, [ebp-0x20]
	mov [ecx+edx], eax
	add edi, 0x1
	cmp [ebp-0x1c], edi
	jz _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__90
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__100:
	lea eax, [edi*4]
	mov [ebp-0x20], eax
	mov eax, [ebx]
	cmp edi, [ebx+eax*4+0x44]
	jge _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__110
	mov eax, [ebx+eax*4+0x64]
	mov edx, [ebp-0x20]
	mov eax, [eax+edx]
	mov [esp], eax
	call CopyStringInternal
	mov ecx, [ebp+0xc]
	mov edx, [ebp-0x20]
	mov [ecx+edx], eax
	add edi, 0x1
	cmp [ebp-0x1c], edi
	jnz _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__100
_Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0__90:
	call _Z22Cmd_EndTokenizedStringv
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_NewDir_f()
_Z11FS_NewDir_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z11FS_NewDir_fv_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x18], 0xa
	lea eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_null
	mov eax, fs_searchpaths
	mov eax, [eax]
	mov [esp], eax
	call _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii
	mov edi, eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z15FS_SortFileListPPKci
	mov edx, [ebp-0x1c]
	test edx, edx
	jg _Z11FS_NewDir_fv_20
_Z11FS_NewDir_fv_40:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_d_files_listed
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], 0xa
	mov [esp], edi
	call FS_FreeFileList
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FS_NewDir_fv_20:
	mov esi, 0x1
	lea ebx, [edi+0x4]
_Z11FS_NewDir_fv_30:
	mov eax, [ebx-0x4]
	mov [esp], eax
	call _Z14FS_ConvertPathPc
	mov eax, [ebx-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, esi
	mov edx, [ebp-0x1c]
	add esi, 0x1
	add ebx, 0x4
	cmp edx, eax
	jg _Z11FS_NewDir_fv_30
	jmp _Z11FS_NewDir_fv_40
_Z11FS_NewDir_fv_10:
	mov dword [esp+0x4], _cstring_usage_fdir_filte
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_example_fdir_q3d
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FS_ShiftStr(char const*, int)
_Z11FS_ShiftStrPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	test ecx, ecx
	jg _Z11FS_ShiftStrPKci_10
	xor eax, eax
	mov byte [eax+_ZZ11FS_ShiftStrPKciE3buf], 0x0
	mov eax, _ZZ11FS_ShiftStrPKciE3buf
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FS_ShiftStrPKci_10:
	movzx ebx, byte [ebp+0xc]
	xor edx, edx
_Z11FS_ShiftStrPKci_20:
	mov eax, ebx
	add al, [esi+edx]
	mov [edx+_ZZ11FS_ShiftStrPKciE3buf], al
	add edx, 0x1
	cmp edx, ecx
	jnz _Z11FS_ShiftStrPKci_20
	mov eax, ecx
	mov byte [eax+_ZZ11FS_ShiftStrPKciE3buf], 0x0
	mov eax, _ZZ11FS_ShiftStrPKciE3buf
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;FS_SV_Rename(char const*, char const*)
_Z12FS_SV_RenamePKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	call _Z25FS_CheckFileSystemStartedv
	lea eax, [ebp-0x118]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov ebx, fs_homepath
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	lea esi, [ebp-0x218]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	lea edi, [ebp-0x118]
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x11a], 0x0
	mov ecx, edx
	mov edi, esi
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x21a], 0x0
	mov eax, fs_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z12FS_SV_RenamePKcS0__10
_Z12FS_SV_RenamePKcS0__30:
	mov [esp+0x4], esi
	lea eax, [ebp-0x118]
	mov [esp], eax
	call rename
	test eax, eax
	jz _Z12FS_SV_RenamePKcS0__20
	mov [esp+0x4], esi
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z11FS_CopyFilePcS_
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z9FS_RemovePKc
_Z12FS_SV_RenamePKcS0__20:
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12FS_SV_RenamePKcS0__10:
	mov [esp+0xc], esi
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fs_sv_rename_s__
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z12FS_SV_RenamePKcS0__30


;FS_GetModList(char*, int)
_Z13FS_GetModListPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	mov eax, [ebp+0x8]
	mov byte [eax], 0x0
	mov dword [esp+0xc], _cstring_mods
	mov eax, fs_homepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ss
	lea edx, [ebp-0x120]
	mov [esp], edx
	call sprintf
	mov dword [esp+0x10], 0x1
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0x120]
	mov [esp], ecx
	call _Z13Sys_ListFilesPKcS0_S0_Pii
	mov [ebp-0x134], eax
	test eax, eax
	jz _Z13FS_GetModListPci_10
	mov eax, [eax]
	test eax, eax
	jz _Z13FS_GetModListPci_10
	xor eax, eax
_Z13FS_GetModListPci_20:
	add eax, 0x1
	mov edx, [ebp-0x134]
	mov edx, [edx+eax*4]
	test edx, edx
	jnz _Z13FS_GetModListPci_20
	mov [ebp-0x12c], eax
	test eax, eax
	jg _Z13FS_GetModListPci_30
_Z13FS_GetModListPci_10:
	mov dword [ebp-0x13c], 0x0
_Z13FS_GetModListPci_50:
	mov ecx, [ebp-0x134]
	mov [esp], ecx
	call _Z16Sys_FreeFileListPPc
	mov eax, [ebp-0x13c]
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13FS_GetModListPci_30:
	mov dword [ebp-0x138], 0x0
	mov dword [ebp-0x13c], 0x0
	jmp _Z13FS_GetModListPci_40
_Z13FS_GetModListPci_60:
	mov edx, [ebp-0x130]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x120]
	mov [esp], ecx
	call strcpy
_Z13FS_GetModListPci_80:
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x120]
	xor eax, eax
	repne scasb
	mov esi, ecx
	not esi
	mov eax, [ebp-0x138]
	add eax, [ebp-0x140]
	lea eax, [esi+eax+0x2]
	cmp eax, [ebp+0xc]
	jge _Z13FS_GetModListPci_50
	mov eax, [ebp-0x130]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call strcpy
	mov ebx, [ebp+0x8]
	add ebx, [ebp-0x140]
	lea ecx, [ebp-0x120]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call strcpy
	add ebx, esi
	mov [ebp+0x8], ebx
	mov eax, [ebp-0x140]
	add eax, esi
	add [ebp-0x138], eax
	add dword [ebp-0x13c], 0x1
	mov eax, [ebp-0x12c]
	cmp [ebp-0x13c], eax
	jz _Z13FS_GetModListPci_50
_Z13FS_GetModListPci_40:
	mov ecx, [ebp-0x13c]
	mov eax, [ebp-0x134]
	mov ecx, [eax+ecx*4]
	mov [ebp-0x130], ecx
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x130]
	xor eax, eax
	repne scasb
	not ecx
	mov [ebp-0x140], ecx
	mov eax, [ebp-0x130]
	mov [esp+0x4], eax
	lea edx, [ebp-0x120]
	mov [esp], edx
	call strcpy
	mov dword [esp+0x8], _cstring_descriptiontxt
	mov dword [esp+0x4], 0x100
	lea ecx, [ebp-0x120]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x120]
	mov [esp], edx
	call _Z19FS_SV_FOpenFileReadPKcPi
	test eax, eax
	jle _Z13FS_GetModListPci_60
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z13FS_GetModListPci_60
	mov [esp], eax
	call _Z16FS_FileForHandlei
	mov ebx, eax
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0x120]
	mov [esp], ecx
	call _Z10Com_MemsetPvii
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x30
	lea eax, [ebp-0x120]
	mov [esp], eax
	call FS_FileRead
	test eax, eax
	js _Z13FS_GetModListPci_70
	mov byte [ebp+eax-0x120], 0x0
_Z13FS_GetModListPci_70:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z13FS_GetModListPci_80
	nop


;FS_LoadedIwds(char const**, char const**)
_Z13FS_LoadedIwdsPPKcS1_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov byte [info2], 0x0
	mov byte [info3], 0x0
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jnz _Z13FS_LoadedIwdsPPKcS1__10
	jmp _Z13FS_LoadedIwdsPPKcS1__20
_Z13FS_LoadedIwdsPPKcS1__30:
	mov ebx, [ebx]
	test ebx, ebx
	jz _Z13FS_LoadedIwdsPPKcS1__20
_Z13FS_LoadedIwdsPPKcS1__10:
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z13FS_LoadedIwdsPPKcS1__30
	mov ecx, [ebx+0xc]
	test ecx, ecx
	jnz _Z13FS_LoadedIwdsPPKcS1__30
	mov eax, [eax+0x304]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info2
	call _Z9I_strncatPciPKc
	cmp byte [info3], 0x0
	jnz _Z13FS_LoadedIwdsPPKcS1__40
_Z13FS_LoadedIwdsPPKcS1__50:
	mov eax, [ebx+0x4]
	add eax, 0x100
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info3
	call _Z9I_strncatPciPKc
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z13FS_LoadedIwdsPPKcS1__10
_Z13FS_LoadedIwdsPPKcS1__20:
	mov eax, [ebp+0x8]
	mov dword [eax], info2
	mov eax, [ebp+0xc]
	mov dword [eax], info3
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13FS_LoadedIwdsPPKcS1__40:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info3
	call _Z9I_strncatPciPKc
	jmp _Z13FS_LoadedIwdsPPKcS1__50
	nop


;FS_AddCommands()
_Z14FS_AddCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE13FS_Path_f_VAR
	mov eax, _Z9FS_Path_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_path
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE17FS_FullPath_f_VAR
	mov eax, _Z13FS_FullPath_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_fullpath
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE12FS_Dir_f_VAR
	mov dword [esp+0x4], _Z8FS_Dir_fv
	mov dword [esp], _cstring_dir
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE15FS_NewDir_f_VAR
	mov dword [esp+0x4], _Z11FS_NewDir_fv
	mov dword [esp], _cstring_fdir
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE18FS_TouchFile_f_VAR
	mov dword [esp+0x4], _Z14FS_TouchFile_fv
	mov dword [esp], _cstring_touchfile
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	leave
	ret


;FS_TouchFile_f()
_Z14FS_TouchFile_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z14FS_TouchFile_fv_10
	mov dword [esp+0x4], _cstring_usage_touchfile_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret
_Z14FS_TouchFile_fv_10:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12FS_TouchFilePKc
	leave
	ret
	nop


;FS_GetMapBaseName(char const*)
_Z17FS_GetMapBaseNamePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_mapsmp
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	mov edx, [ebp+0x8]
	add edx, 0x8
	test eax, eax
	cmovnz edx, [ebp+0x8]
	mov [ebp+0x8], edx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	mov esi, ecx
	not esi
	lea ebx, [esi-0x1]
	mov dword [esp+0x4], _cstring_bsp
	lea eax, [edx+ebx-0x3]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	lea edx, [esi-0x8]
	test eax, eax
	cmovz ebx, edx
	mov [esp+0x8], ebx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _ZZ17FS_GetMapBaseNamePKcE8basename
	call memcpy
	mov byte [ebx+_ZZ17FS_GetMapBaseNamePKcE8basename], 0x0
	test ebx, ebx
	jle _Z17FS_GetMapBaseNamePKc_10
	mov eax, _ZZ17FS_GetMapBaseNamePKcE8basename
	lea edx, [ebx+_ZZ17FS_GetMapBaseNamePKcE8basename]
	jmp _Z17FS_GetMapBaseNamePKc_20
_Z17FS_GetMapBaseNamePKc_30:
	add eax, 0x1
	cmp eax, edx
	jz _Z17FS_GetMapBaseNamePKc_10
_Z17FS_GetMapBaseNamePKc_20:
	cmp byte [eax], 0x25
	jnz _Z17FS_GetMapBaseNamePKc_30
	mov byte [eax], 0x5f
	add eax, 0x1
	cmp eax, edx
	jnz _Z17FS_GetMapBaseNamePKc_20
_Z17FS_GetMapBaseNamePKc_10:
	mov eax, _ZZ17FS_GetMapBaseNamePKcE8basename
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_ReferencedIwds(char const**, char const**)
_Z17FS_ReferencedIwdsPPKcS1_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov byte [info5], 0x0
	mov byte [info8], 0x0
	mov eax, fs_iwdPureChecks
	mov ebx, [eax]
	test ebx, ebx
	jnz _Z17FS_ReferencedIwdsPPKcS1__10
	jmp _Z17FS_ReferencedIwdsPPKcS1__20
_Z17FS_ReferencedIwdsPPKcS1__30:
	lea eax, [ebx+0x108]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call _Z9I_strncatPciPKc
	lea eax, [ebx+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call _Z9I_strncatPciPKc
	mov ebx, [ebx]
	test ebx, ebx
	jz _Z17FS_ReferencedIwdsPPKcS1__20
_Z17FS_ReferencedIwdsPPKcS1__10:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info5
	call _Z9I_strncatPciPKc
	cmp byte [info8], 0x0
	jz _Z17FS_ReferencedIwdsPPKcS1__30
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call _Z9I_strncatPciPKc
	jmp _Z17FS_ReferencedIwdsPPKcS1__30
_Z17FS_ReferencedIwdsPPKcS1__20:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz _Z17FS_ReferencedIwdsPPKcS1__40
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jnz _Z17FS_ReferencedIwdsPPKcS1__50
	jmp _Z17FS_ReferencedIwdsPPKcS1__40
_Z17FS_ReferencedIwdsPPKcS1__60:
	mov ebx, [ebx]
	test ebx, ebx
	jz _Z17FS_ReferencedIwdsPPKcS1__40
_Z17FS_ReferencedIwdsPPKcS1__50:
	mov edx, [ebx+0x4]
	test edx, edx
	jz _Z17FS_ReferencedIwdsPPKcS1__60
	mov ecx, [ebx+0xc]
	test ecx, ecx
	jnz _Z17FS_ReferencedIwdsPPKcS1__60
	cmp byte [edx+0x314], 0x0
	jnz _Z17FS_ReferencedIwdsPPKcS1__60
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea eax, [edx+0x200]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z17FS_ReferencedIwdsPPKcS1__70
_Z17FS_ReferencedIwdsPPKcS1__90:
	mov eax, [ebx+0x4]
	mov eax, [eax+0x304]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info5
	call _Z9I_strncatPciPKc
	cmp byte [info8], 0x0
	jnz _Z17FS_ReferencedIwdsPPKcS1__80
_Z17FS_ReferencedIwdsPPKcS1__100:
	mov eax, [ebx+0x4]
	add eax, 0x200
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call _Z9I_strncatPciPKc
	mov eax, [ebx+0x4]
	add eax, 0x100
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call _Z9I_strncatPciPKc
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z17FS_ReferencedIwdsPPKcS1__50
_Z17FS_ReferencedIwdsPPKcS1__40:
	mov eax, [ebp+0x8]
	mov dword [eax], info5
	mov eax, [ebp+0xc]
	mov dword [eax], info8
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17FS_ReferencedIwdsPPKcS1__70:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_usermaps
	mov eax, [ebx+0x4]
	add eax, 0x200
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z17FS_ReferencedIwdsPPKcS1__60
	jmp _Z17FS_ReferencedIwdsPPKcS1__90
_Z17FS_ReferencedIwdsPPKcS1__80:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call _Z9I_strncatPciPKc
	jmp _Z17FS_ReferencedIwdsPPKcS1__100
	nop


;FS_RemoveCommands()
_Z17FS_RemoveCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_path
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_fullpath
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_dir
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_fdir
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_touchfile
	call _Z17Cmd_RemoveCommandPKc
	leave
	ret


;FS_SetRestrictions()
_Z18FS_SetRestrictionsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, fs_restrict
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z18FS_SetRestrictionsv_10
_Z18FS_SetRestrictionsv_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18FS_SetRestrictionsv_10:
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12Dvar_SetBoolPK6dvar_sh
	mov dword [esp+0x4], _cstring_running_in_restr
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov dword [esp], 0x0
	call _Z11FS_Shutdowni
	mov dword [esp], _cstring_demomain
	call _Z10FS_StartupPKc
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jz _Z18FS_SetRestrictionsv_20
_Z18FS_SetRestrictionsv_40:
	mov [esp], ebx
	call _Z16FS_UseSearchPathPK12searchpath_s
	test eax, eax
	jz _Z18FS_SetRestrictionsv_30
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z18FS_SetRestrictionsv_30
	mov eax, [eax+0x304]
	cmp eax, 0xb1f595f5
	jz _Z18FS_SetRestrictionsv_30
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_corrupted_iw0iwd
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z18FS_SetRestrictionsv_30:
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z18FS_SetRestrictionsv_40
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;FS_SV_FOpenFileRead(char const*, int*)
_Z19FS_SV_FOpenFileReadPKcPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	call _Z25FS_CheckFileSystemStartedv
	mov dword [esp], 0x0
	call _Z16FS_HandleForFile8FsThread
	mov esi, eax
	mov edx, fsh
	lea eax, [eax+eax*8]
	shl eax, 0x3
	sub eax, esi
	shl eax, 0x2
	lea ebx, [eax+edx]
	mov dword [ebx+0x14], 0x0
	mov dword [esp+0x8], 0x100
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	lea eax, [eax+edx+0x1c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	lea eax, [ebp-0x118]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, fs_homepath
	mov eax, [ecx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x118]
	xor eax, eax
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x11a], 0x0
	mov edx, fs_debug
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z19FS_SV_FOpenFileReadPKcPi_10
_Z19FS_SV_FOpenFileReadPKcPi_40:
	lea eax, [ebp-0x118]
	mov [esp], eax
	call FS_FileOpenReadBinary
	mov [ebx], eax
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jz _Z19FS_SV_FOpenFileReadPKcPi_20
_Z19FS_SV_FOpenFileReadPKcPi_60:
	mov eax, [ebp+0xc]
	mov [eax], esi
	test esi, esi
	jnz _Z19FS_SV_FOpenFileReadPKcPi_30
	xor eax, eax
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19FS_SV_FOpenFileReadPKcPi_30:
	mov [esp], esi
	call _Z13FS_filelengthi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19FS_SV_FOpenFileReadPKcPi_10:
	lea ecx, [ebp-0x118]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_fs_sv_fopenfiler
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z19FS_SV_FOpenFileReadPKcPi_40
_Z19FS_SV_FOpenFileReadPKcPi_20:
	mov edi, fs_basepath
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov edx, fs_homepath
	mov eax, [edx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19FS_SV_FOpenFileReadPKcPi_50
_Z19FS_SV_FOpenFileReadPKcPi_90:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	lea ebx, [eax*4]
	mov edx, fsh
	mov eax, [ebx+edx]
	test eax, eax
	jnz _Z19FS_SV_FOpenFileReadPKcPi_60
	lea ecx, [ebp-0x118]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, fs_cdpath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x118]
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x11a], 0x0
	mov eax, fs_debug
	mov eax, [eax]
	mov edi, [eax+0xc]
	test edi, edi
	jnz _Z19FS_SV_FOpenFileReadPKcPi_70
_Z19FS_SV_FOpenFileReadPKcPi_110:
	lea ecx, [ebp-0x118]
	mov [esp], ecx
	call FS_FileOpenReadBinary
	mov edx, fsh
	mov [ebx+edx], eax
	lea eax, [ebx+edx]
	mov dword [eax+0x8], 0x0
	mov ecx, [eax]
	test ecx, ecx
	mov eax, 0x0
	cmovz esi, eax
	jmp _Z19FS_SV_FOpenFileReadPKcPi_60
_Z19FS_SV_FOpenFileReadPKcPi_50:
	lea ecx, [ebp-0x118]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x118]
	xor eax, eax
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x11a], 0x0
	mov edx, fs_debug
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z19FS_SV_FOpenFileReadPKcPi_80
_Z19FS_SV_FOpenFileReadPKcPi_100:
	lea eax, [ebp-0x118]
	mov [esp], eax
	call FS_FileOpenReadBinary
	mov [ebx], eax
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jnz _Z19FS_SV_FOpenFileReadPKcPi_60
	xor esi, esi
	jmp _Z19FS_SV_FOpenFileReadPKcPi_90
_Z19FS_SV_FOpenFileReadPKcPi_80:
	lea ecx, [ebp-0x118]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_fs_sv_fopenfiler1
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z19FS_SV_FOpenFileReadPKcPi_100
_Z19FS_SV_FOpenFileReadPKcPi_70:
	lea edx, [ebp-0x118]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_fs_sv_fopenfiler2
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z19FS_SV_FOpenFileReadPKcPi_110
	nop


;FS_SV_FOpenFileWrite(char const*)
_Z20FS_SV_FOpenFileWritePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	call _Z25FS_CheckFileSystemStartedv
	lea esi, [ebp-0x118]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, fs_homepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x11a], 0x0
	mov dword [esp], 0x0
	call _Z16FS_HandleForFile8FsThread
	mov edi, eax
	lea eax, [eax+eax*8]
	shl eax, 0x3
	sub eax, edi
	shl eax, 0x2
	mov [ebp-0x11c], eax
	mov ebx, eax
	add ebx, fsh
	mov dword [ebx+0x14], 0x0
	mov eax, fs_debug
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jnz _Z20FS_SV_FOpenFileWritePKc_10
_Z20FS_SV_FOpenFileWritePKc_40:
	mov [esp], esi
	call _Z13FS_CreatePathPc
	test eax, eax
	jz _Z20FS_SV_FOpenFileWritePKc_20
_Z20FS_SV_FOpenFileWritePKc_30:
	xor edi, edi
	mov eax, edi
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20FS_SV_FOpenFileWritePKc_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_writing_to_s
	mov dword [esp], 0xa
	call _Z11Com_DPrintfiPKcz
	mov [esp], esi
	call FS_FileOpenWriteBinary
	mov [ebx], eax
	mov dword [esp+0x8], 0x100
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x11c]
	mov edx, fsh
	lea eax, [ecx+edx+0x1c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [ebx+0x8], 0x0
	mov eax, [ebx]
	test eax, eax
	jz _Z20FS_SV_FOpenFileWritePKc_30
	mov eax, edi
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20FS_SV_FOpenFileWritePKc_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_fs_sv_fopenfilew
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z20FS_SV_FOpenFileWritePKc_40
	nop


;FS_CompareWithServerFiles(char*, int, int)
_Z25FS_CompareWithServerFilesPcii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x46c
	mov esi, [ebp+0x8]
	mov byte [esi], 0x0
	mov ebx, fs_numServerReferencedIwds
	mov edx, [ebx]
	test edx, edx
	jz _Z25FS_CompareWithServerFilesPcii_10
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov edi, [eax+0xc]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x440], ecx
	setz al
	movzx eax, al
	mov [ebp-0x450], eax
	mov eax, [ebx]
	test eax, eax
	jle _Z25FS_CompareWithServerFilesPcii_20
	mov dword [ebp-0x448], 0x0
	mov dword [ebp-0x444], 0x0
	mov ebx, fs_serverReferencedIwdNames
	mov eax, fs_serverReferencedIwds
	mov [ebp-0x420], eax
	jmp _Z25FS_CompareWithServerFilesPcii_30
_Z25FS_CompareWithServerFilesPcii_50:
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea edx, [ebp-0x418]
	mov [esp], edx
	call strcpy
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call _Z8I_strlwrPc
	mov dword [esp+0x4], _cstring__svr_
	lea eax, [ebp-0x418]
	mov [esp], eax
	call strstr
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_40
_Z25FS_CompareWithServerFilesPcii_100:
	add dword [ebp-0x444], 0x1
	add ebx, 0x4
	add dword [ebp-0x420], 0x4
	mov eax, fs_numServerReferencedIwds
	mov ecx, [ebp-0x444]
	cmp ecx, [eax]
	jge _Z25FS_CompareWithServerFilesPcii_20
_Z25FS_CompareWithServerFilesPcii_30:
	mov eax, [ebp-0x450]
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_50
_Z25FS_CompareWithServerFilesPcii_40:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_usermaps
	mov eax, [ebx]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	setz al
	movzx eax, al
	mov [ebp-0x44c], eax
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_60
	mov eax, [ebp-0x448]
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_70
_Z25FS_CompareWithServerFilesPcii_60:
	mov eax, fs_searchpaths
	mov edx, [eax]
	test edx, edx
	jz _Z25FS_CompareWithServerFilesPcii_80
_Z25FS_CompareWithServerFilesPcii_110:
	mov eax, [edx+0x4]
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_90
	mov eax, [eax+0x304]
	mov ecx, [ebp-0x420]
	cmp eax, [ecx]
	jz _Z25FS_CompareWithServerFilesPcii_100
_Z25FS_CompareWithServerFilesPcii_90:
	mov edx, [edx]
	test edx, edx
	jnz _Z25FS_CompareWithServerFilesPcii_110
_Z25FS_CompareWithServerFilesPcii_80:
	mov edx, [ebx]
	test edx, edx
	jz _Z25FS_CompareWithServerFilesPcii_100
	cmp byte [edx], 0x0
	jz _Z25FS_CompareWithServerFilesPcii_100
	mov eax, [ebp-0x450]
	test eax, eax
	jnz _Z25FS_CompareWithServerFilesPcii_120
	mov eax, [ebp-0x440]
	mov [esp+0x8], eax
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_130
	mov eax, [ebp-0x44c]
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_120
_Z25FS_CompareWithServerFilesPcii_130:
	mov dword [esp+0x4], _cstring_main
	mov eax, [ebx]
	mov [esp], eax
	call _Z8FS_iwIwdPKcPc
	test eax, eax
	jnz _Z25FS_CompareWithServerFilesPcii_120
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z25FS_CompareWithServerFilesPcii_140
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_iwd
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_siwd
	call _Z2vaPKcz
	lea edx, [ebp-0x418]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_null
	mov [esp+0x4], eax
	mov eax, fs_homepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x418]
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x41a], 0x0
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call FS_FileOpenReadBinary
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_150
	mov [esp], eax
	call FS_FileClose
	mov dword [esp+0x8], _cstring__local_file_exis
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_strncatPciPKc
_Z25FS_CompareWithServerFilesPcii_150:
	mov dword [esp+0x8], _cstring_2
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	add dword [ebp-0x444], 0x1
	add ebx, 0x4
	add dword [ebp-0x420], 0x4
	mov eax, fs_numServerReferencedIwds
	mov ecx, [ebp-0x444]
	cmp ecx, [eax]
	jl _Z25FS_CompareWithServerFilesPcii_30
_Z25FS_CompareWithServerFilesPcii_20:
	cmp byte [esi], 0x0
	jnz _Z25FS_CompareWithServerFilesPcii_160
_Z25FS_CompareWithServerFilesPcii_10:
	mov dword [ebp-0x458], 0x0
_Z25FS_CompareWithServerFilesPcii_220:
	xor ebx, ebx
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x454], ecx
	mov edx, [ebp+0xc]
	sub edx, ecx
	mov [ebp-0x43c], edx
	add ecx, esi
	mov [ebp-0x438], ecx
	mov edx, fs_numServerReferencedFFs
	mov edi, [edx]
	test edi, edi
	jnz _Z25FS_CompareWithServerFilesPcii_170
_Z25FS_CompareWithServerFilesPcii_200:
	xor eax, eax
_Z25FS_CompareWithServerFilesPcii_210:
	cmp dword [ebp-0x458], 0x1
	jz _Z25FS_CompareWithServerFilesPcii_180
	sub eax, 0x1
	jz _Z25FS_CompareWithServerFilesPcii_180
	xor eax, eax
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25FS_CompareWithServerFilesPcii_180:
	mov eax, 0x1
_Z25FS_CompareWithServerFilesPcii_410:
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25FS_CompareWithServerFilesPcii_170:
	mov byte [ecx], 0x0
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov edi, [eax+0xc]
	mov ecx, 0xffffffff
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x42c], ecx
	mov eax, [edx]
	test eax, eax
	jg _Z25FS_CompareWithServerFilesPcii_190
_Z25FS_CompareWithServerFilesPcii_320:
	mov ecx, [ebp-0x438]
	cmp byte [ecx], 0x0
	jz _Z25FS_CompareWithServerFilesPcii_200
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_need_ffs_s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	jmp _Z25FS_CompareWithServerFilesPcii_210
_Z25FS_CompareWithServerFilesPcii_140:
	mov dword [esp+0x8], _cstring_3
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_iwd
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_3
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_iwd
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_strncatPciPKc
	jmp _Z25FS_CompareWithServerFilesPcii_100
_Z25FS_CompareWithServerFilesPcii_160:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_need_iwds_s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov dword [ebp-0x458], 0x1
	jmp _Z25FS_CompareWithServerFilesPcii_220
_Z25FS_CompareWithServerFilesPcii_70:
	mov edx, [ebx]
	mov [ebp-0x41c], edx
	mov eax, edx
	add eax, 0x9
	mov dword [esp+0x4], 0x2f
	mov [esp], eax
	call strchr
	mov edi, eax
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_230
_Z25FS_CompareWithServerFilesPcii_420:
	mov edx, [ebx]
	mov eax, edi
	sub eax, edx
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x418]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z20FS_AddUserMapDirIWDsPKc
	mov dword [ebp-0x448], 0x1
	jmp _Z25FS_CompareWithServerFilesPcii_60
_Z25FS_CompareWithServerFilesPcii_190:
	mov dword [ebp-0x430], 0x0
	mov edx, fs_serverReferencedFFNames
	mov [ebp-0x428], edx
	mov ecx, fs_serverReferencedFFCheckSums
	mov [ebp-0x424], ecx
	jmp _Z25FS_CompareWithServerFilesPcii_240
_Z25FS_CompareWithServerFilesPcii_330:
	mov ecx, [ebp-0x428]
	mov edx, [ecx]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov eax, [ebp-0x42c]
	add eax, 0x1
	cmp ecx, eax
	jbe _Z25FS_CompareWithServerFilesPcii_250
	mov ecx, [ebp-0x42c]
	lea edx, [ecx+edx+0x1]
	mov [ebp-0x434], edx
	mov ebx, 0x1
_Z25FS_CompareWithServerFilesPcii_350:
	mov [esp+0x4], ebx
	mov [esp], edx
	call _Z11DB_FileSizePKc6FF_DIR
	mov edi, eax
	mov ecx, [ebp-0x424]
	cmp eax, [ecx]
	jz _Z25FS_CompareWithServerFilesPcii_260
	mov edx, [ebp-0x428]
	mov eax, [edx]
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_260
	cmp byte [eax], 0x0
	jz _Z25FS_CompareWithServerFilesPcii_260
	test ebx, ebx
	jz _Z25FS_CompareWithServerFilesPcii_270
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call _Z10I_strncpyzPcPKci
	cmp ebx, 0x2
	jz _Z25FS_CompareWithServerFilesPcii_280
_Z25FS_CompareWithServerFilesPcii_390:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_290
	mov dword [esp+0x8], _cstring_3
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	cmp ebx, 0x2
	jz _Z25FS_CompareWithServerFilesPcii_300
_Z25FS_CompareWithServerFilesPcii_450:
	mov dword [esp+0x8], _cstring_ff
	mov ecx, [ebp-0x43c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x438]
	mov [esp], eax
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_3
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	cmp ebx, 0x2
	jz _Z25FS_CompareWithServerFilesPcii_310
_Z25FS_CompareWithServerFilesPcii_440:
	mov dword [esp+0x8], _cstring_ff
	mov ecx, [ebp-0x43c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x438]
	mov [esp], eax
	call _Z9I_strncatPciPKc
_Z25FS_CompareWithServerFilesPcii_260:
	add dword [ebp-0x430], 0x1
	add dword [ebp-0x428], 0x4
	add dword [ebp-0x424], 0x4
	mov eax, fs_numServerReferencedFFs
	mov edx, [ebp-0x430]
	cmp edx, [eax]
	jge _Z25FS_CompareWithServerFilesPcii_320
	mov edx, [ebp-0x428]
_Z25FS_CompareWithServerFilesPcii_240:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_mods
	mov eax, [edx]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_330
_Z25FS_CompareWithServerFilesPcii_250:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_usermaps
	mov edx, [ebp-0x428]
	mov eax, [edx]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_340
	mov ecx, [ebp-0x428]
	mov ebx, [ecx]
_Z25FS_CompareWithServerFilesPcii_360:
	mov [ebp-0x434], ebx
	xor ebx, ebx
	mov edx, [ebp-0x434]
	jmp _Z25FS_CompareWithServerFilesPcii_350
_Z25FS_CompareWithServerFilesPcii_340:
	mov eax, [ebp-0x428]
	mov ebx, [eax]
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x9
	jbe _Z25FS_CompareWithServerFilesPcii_360
	add ebx, 0x9
	mov [ebp-0x434], ebx
	mov ebx, 0x2
	mov edx, [ebp-0x434]
	jmp _Z25FS_CompareWithServerFilesPcii_350
_Z25FS_CompareWithServerFilesPcii_290:
	lea edx, [ebp-0x418]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x43c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x438]
	mov [esp], eax
	call _Z9I_strncatPciPKc
	cmp ebx, 0x2
	jz _Z25FS_CompareWithServerFilesPcii_370
_Z25FS_CompareWithServerFilesPcii_430:
	mov dword [esp+0x8], _cstring_ff
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	test edi, edi
	jnz _Z25FS_CompareWithServerFilesPcii_380
_Z25FS_CompareWithServerFilesPcii_400:
	mov dword [esp+0x8], _cstring_2
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	jmp _Z25FS_CompareWithServerFilesPcii_260
_Z25FS_CompareWithServerFilesPcii_280:
	mov dword [esp+0x4], _cstring__load
	lea eax, [ebp-0x418]
	mov [esp], eax
	call strstr
	test eax, eax
	jz _Z25FS_CompareWithServerFilesPcii_390
	mov byte [eax], 0x0
	jmp _Z25FS_CompareWithServerFilesPcii_390
_Z25FS_CompareWithServerFilesPcii_380:
	mov dword [esp+0x8], _cstring__local_file_exis1
	mov ecx, [ebp-0x43c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x438]
	mov [esp], eax
	call _Z9I_strncatPciPKc
	jmp _Z25FS_CompareWithServerFilesPcii_400
_Z25FS_CompareWithServerFilesPcii_120:
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov eax, fs_serverReferencedIwdNames
	mov ecx, [ebp-0x444]
	mov eax, [eax+ecx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], _cstring_iwd
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_strncatPciPKc
	mov eax, 0x2
	jmp _Z25FS_CompareWithServerFilesPcii_410
_Z25FS_CompareWithServerFilesPcii_230:
	mov ecx, [ebp-0x41c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_invalid_iwd_info
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z25FS_CompareWithServerFilesPcii_420
_Z25FS_CompareWithServerFilesPcii_370:
	mov dword [esp+0x8], _cstring_1
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	mov eax, [ebp-0x434]
	mov [esp+0x8], eax
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	jmp _Z25FS_CompareWithServerFilesPcii_430
_Z25FS_CompareWithServerFilesPcii_310:
	mov dword [esp+0x8], _cstring_1
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	mov ecx, [ebp-0x434]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	jmp _Z25FS_CompareWithServerFilesPcii_440
_Z25FS_CompareWithServerFilesPcii_300:
	mov dword [esp+0x8], _cstring_1
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	mov ecx, [ebp-0x434]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	jmp _Z25FS_CompareWithServerFilesPcii_450
_Z25FS_CompareWithServerFilesPcii_270:
	mov ecx, [ebp-0x43c]
	mov [esp+0x8], ecx
	mov eax, fs_serverReferencedFFNames
	mov edx, [ebp-0x430]
	mov eax, [eax+edx*4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], _cstring_ff
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	mov eax, [ebp-0x454]
	test eax, eax
	jle _Z25FS_CompareWithServerFilesPcii_460
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp-0x438]
	mov [esp+0x4], edx
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
_Z25FS_CompareWithServerFilesPcii_460:
	mov eax, 0x2
	jmp _Z25FS_CompareWithServerFilesPcii_410


;FS_LoadedIwdPureChecksums()
_Z25FS_LoadedIwdPureChecksumsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov byte [info4], 0x0
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jnz _Z25FS_LoadedIwdPureChecksumsv_10
	jmp _Z25FS_LoadedIwdPureChecksumsv_20
_Z25FS_LoadedIwdPureChecksumsv_30:
	mov ebx, [ebx]
	test ebx, ebx
	jz _Z25FS_LoadedIwdPureChecksumsv_20
_Z25FS_LoadedIwdPureChecksumsv_10:
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z25FS_LoadedIwdPureChecksumsv_30
	mov edx, [ebx+0xc]
	test edx, edx
	jnz _Z25FS_LoadedIwdPureChecksumsv_30
	mov eax, [eax+0x308]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info4
	call _Z9I_strncatPciPKc
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z25FS_LoadedIwdPureChecksumsv_10
_Z25FS_LoadedIwdPureChecksumsv_20:
	mov eax, info4
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;FS_ServerSetReferencedFFs(char const*, char const*)
_Z25FS_ServerSetReferencedFFsPKcS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z30FS_ShutdownServerReferencedFFsv
	mov eax, fs_serverReferencedFFNames
	mov [esp+0x4], eax
	mov eax, fs_serverReferencedFFCheckSums
	mov [esp], eax
	mov ecx, 0x400
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0_
	mov edx, fs_numServerReferencedFFs
	mov [edx], eax
	leave
	ret


;FS_PureServerSetLoadedIwds(char const*, char const*)
_Z26FS_PureServerSetLoadedIwdsPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18Cmd_TokenizeStringPKc
	mov edx, cmd_args
	mov eax, [edx]
	mov edi, [edx+eax*4+0x44]
	cmp edi, 0x400
	jle _Z26FS_PureServerSetLoadedIwdsPKcS0__10
	mov edi, 0x400
_Z26FS_PureServerSetLoadedIwdsPKcS0__200:
	xor ebx, ebx
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__20
_Z26FS_PureServerSetLoadedIwdsPKcS0__40:
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov [ebp+ebx*4-0x1018], eax
	add ebx, 0x1
	cmp edi, ebx
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__30
_Z26FS_PureServerSetLoadedIwdsPKcS0__50:
	mov edx, cmd_args
_Z26FS_PureServerSetLoadedIwdsPKcS0__20:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge _Z26FS_PureServerSetLoadedIwdsPKcS0__40
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call atoi
	mov [ebp+ebx*4-0x1018], eax
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z26FS_PureServerSetLoadedIwdsPKcS0__50
_Z26FS_PureServerSetLoadedIwdsPKcS0__30:
	call _Z22Cmd_EndTokenizedStringv
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z18Cmd_TokenizeStringPKc
	mov edx, cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	mov [ebp-0x2024], eax
	cmp eax, 0x400
	jle _Z26FS_PureServerSetLoadedIwdsPKcS0__60
	mov dword [ebp-0x2024], 0x400
_Z26FS_PureServerSetLoadedIwdsPKcS0__190:
	xor ebx, ebx
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__70
_Z26FS_PureServerSetLoadedIwdsPKcS0__90:
	mov eax, _cstring_null
	mov [esp], eax
	call CopyStringInternal
	mov [ebp+ebx*4-0x2018], eax
	add ebx, 0x1
	cmp [ebp-0x2024], ebx
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__80
_Z26FS_PureServerSetLoadedIwdsPKcS0__100:
	mov edx, cmd_args
_Z26FS_PureServerSetLoadedIwdsPKcS0__70:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge _Z26FS_PureServerSetLoadedIwdsPKcS0__90
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call CopyStringInternal
	mov [ebp+ebx*4-0x2018], eax
	add ebx, 0x1
	cmp [ebp-0x2024], ebx
	jnz _Z26FS_PureServerSetLoadedIwdsPKcS0__100
_Z26FS_PureServerSetLoadedIwdsPKcS0__80:
	call _Z22Cmd_EndTokenizedStringv
	cmp edi, [ebp-0x2024]
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__110
	mov dword [esp+0x4], _cstring_iwd_sumname_mism
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z26FS_PureServerSetLoadedIwdsPKcS0__110:
	mov eax, fs_iwdPureChecks
	mov esi, [eax]
	test edi, edi
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__120
	test esi, esi
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__120
	test edi, edi
	jle _Z26FS_PureServerSetLoadedIwdsPKcS0__130
_Z26FS_PureServerSetLoadedIwdsPKcS0__160:
	xor ebx, ebx
	lea eax, [esi+0x8]
	mov [ebp-0x2028], eax
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__140
_Z26FS_PureServerSetLoadedIwdsPKcS0__150:
	add ebx, 0x1
	cmp edi, ebx
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__130
_Z26FS_PureServerSetLoadedIwdsPKcS0__140:
	lea edx, [ebx*4]
	mov eax, [ebp+edx-0x1018]
	cmp eax, [esi+0x4]
	jnz _Z26FS_PureServerSetLoadedIwdsPKcS0__150
	mov ecx, [ebp-0x2028]
	mov [esp+0x4], ecx
	mov eax, [ebp+edx-0x2018]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z26FS_PureServerSetLoadedIwdsPKcS0__150
	mov esi, [esi]
	test esi, esi
	jnz _Z26FS_PureServerSetLoadedIwdsPKcS0__160
_Z26FS_PureServerSetLoadedIwdsPKcS0__120:
	mov ecx, fs_numServerIwds
	cmp edi, [ecx]
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__170
_Z26FS_PureServerSetLoadedIwdsPKcS0__230:
	xor esi, esi
	mov dword [esp], 0x8
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	call _Z25FS_ShutdownServerIwdNamesv
	mov eax, fs_numServerIwds
	mov [eax], edi
	test edi, edi
	jnz _Z26FS_PureServerSetLoadedIwdsPKcS0__180
_Z26FS_PureServerSetLoadedIwdsPKcS0__210:
	mov eax, esi
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26FS_PureServerSetLoadedIwdsPKcS0__60:
	mov eax, [ebp-0x2024]
	test eax, eax
	jle _Z26FS_PureServerSetLoadedIwdsPKcS0__80
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__190
_Z26FS_PureServerSetLoadedIwdsPKcS0__10:
	test edi, edi
	jle _Z26FS_PureServerSetLoadedIwdsPKcS0__30
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__200
_Z26FS_PureServerSetLoadedIwdsPKcS0__130:
	mov esi, 0x1
	mov dword [esp], 0x8
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	call _Z25FS_ShutdownServerIwdNamesv
	mov eax, fs_numServerIwds
	mov [eax], edi
	test edi, edi
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__210
_Z26FS_PureServerSetLoadedIwdsPKcS0__180:
	mov dword [esp+0x4], _cstring_connected_to_a_p
	mov dword [esp], 0xa
	call _Z11Com_DPrintfiPKcz
	mov ebx, fs_numServerIwds
	mov eax, [ebx]
	shl eax, 0x2
	mov [esp+0x8], eax
	lea eax, [ebp-0x1018]
	mov [esp+0x4], eax
	mov eax, fs_serverIwds
	mov [esp], eax
	call Com_Memcpy
	mov eax, [ebx]
	shl eax, 0x2
	mov [esp+0x8], eax
	lea eax, [ebp-0x2018]
	mov [esp+0x4], eax
	mov eax, fs_serverIwdNames
	mov [esp], eax
	call Com_Memcpy
	mov eax, fs_fakeChkSum
	mov dword [eax], 0x0
	mov eax, esi
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26FS_PureServerSetLoadedIwdsPKcS0__170:
	test edi, edi
	jle _Z26FS_PureServerSetLoadedIwdsPKcS0__220
	mov dword [ebp-0x201c], 0x0
_Z26FS_PureServerSetLoadedIwdsPKcS0__290:
	mov esi, [ecx]
	test esi, esi
	jle _Z26FS_PureServerSetLoadedIwdsPKcS0__230
	xor esi, esi
	mov ebx, fs_serverIwds
	mov eax, fs_serverIwdNames
	mov [ebp-0x2020], eax
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__240
_Z26FS_PureServerSetLoadedIwdsPKcS0__250:
	add esi, 0x1
	add ebx, 0x4
	add dword [ebp-0x2020], 0x4
	cmp esi, [ecx]
	jge _Z26FS_PureServerSetLoadedIwdsPKcS0__230
_Z26FS_PureServerSetLoadedIwdsPKcS0__240:
	mov edx, [ebp-0x201c]
	shl edx, 0x2
	mov eax, [ebp+edx-0x1018]
	cmp eax, [ebx]
	jnz _Z26FS_PureServerSetLoadedIwdsPKcS0__250
	mov ecx, [ebp-0x2020]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+edx-0x2018]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__260
	mov ecx, fs_numServerIwds
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__250
_Z26FS_PureServerSetLoadedIwdsPKcS0__220:
	mov ebx, [ebp-0x2024]
	test ebx, ebx
	jg _Z26FS_PureServerSetLoadedIwdsPKcS0__270
	xor esi, esi
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__210
_Z26FS_PureServerSetLoadedIwdsPKcS0__270:
	xor ebx, ebx
_Z26FS_PureServerSetLoadedIwdsPKcS0__280:
	mov eax, [ebp+ebx*4-0x2018]
	mov [esp], eax
	call FreeStringInternal
	add ebx, 0x1
	cmp [ebp-0x2024], ebx
	jnz _Z26FS_PureServerSetLoadedIwdsPKcS0__280
	xor esi, esi
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__210
_Z26FS_PureServerSetLoadedIwdsPKcS0__260:
	add dword [ebp-0x201c], 0x1
	cmp edi, [ebp-0x201c]
	jz _Z26FS_PureServerSetLoadedIwdsPKcS0__220
	mov ecx, fs_numServerIwds
	jmp _Z26FS_PureServerSetLoadedIwdsPKcS0__290


;FS_ServerSetReferencedIwds(char const*, char const*)
_Z26FS_ServerSetReferencedIwdsPKcS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z31FS_ShutdownServerReferencedIwdsv
	mov eax, fs_serverReferencedIwdNames
	mov [esp+0x4], eax
	mov eax, fs_serverReferencedIwds
	mov [esp], eax
	mov ecx, 0x400
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z27FS_ServerSetReferencedFilesPKcS0_iPiPS0_
	mov edx, fs_numServerReferencedIwds
	mov [edx], eax
	leave
	ret


;FS_ReferencedIwdPureChecksums()
_Z29FS_ReferencedIwdPureChecksumsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov byte [info6], 0x0
	mov eax, fs_checksumFeed
	mov esi, [eax]
	mov edx, 0xffffffff
	mov edi, info6
	xor eax, eax
	cld
	mov ecx, edx
	repne scasb
	not ecx
	mov byte [ecx+info6], 0x0
	mov edi, info6
	mov ecx, edx
	repne scasb
	not ecx
	mov byte [ecx+info6+0x1], 0x0
	mov edi, info6
	mov ecx, edx
	repne scasb
	not ecx
	mov byte [ecx+_ZZ16Dvar_AddCommandsvE17Dvar_Toggle_f_VAR+0x63], 0x40
	mov edi, info6
	mov ecx, edx
	repne scasb
	not ecx
	mov byte [ecx+_ZZ16Dvar_AddCommandsvE17Dvar_Toggle_f_VAR+0x63], 0x20
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jz _Z29FS_ReferencedIwdPureChecksumsv_10
	xor edi, edi
	jmp _Z29FS_ReferencedIwdPureChecksumsv_20
_Z29FS_ReferencedIwdPureChecksumsv_40:
	mov ebx, [ebx]
	test ebx, ebx
	jz _Z29FS_ReferencedIwdPureChecksumsv_30
_Z29FS_ReferencedIwdPureChecksumsv_20:
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z29FS_ReferencedIwdPureChecksumsv_40
	mov edx, [ebx+0xc]
	test edx, edx
	jnz _Z29FS_ReferencedIwdPureChecksumsv_40
	cmp byte [eax+0x314], 0x0
	jz _Z29FS_ReferencedIwdPureChecksumsv_40
	mov eax, [eax+0x308]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info6
	call _Z9I_strncatPciPKc
	mov eax, [ebx+0x4]
	xor esi, [eax+0x308]
	add edi, 0x1
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z29FS_ReferencedIwdPureChecksumsv_20
_Z29FS_ReferencedIwdPureChecksumsv_30:
	mov eax, fs_fakeChkSum
	mov eax, [eax]
	test eax, eax
	jz _Z29FS_ReferencedIwdPureChecksumsv_50
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info6
	call _Z9I_strncatPciPKc
_Z29FS_ReferencedIwdPureChecksumsv_50:
	xor edi, esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_i_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info6
	call _Z9I_strncatPciPKc
	mov eax, info6
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29FS_ReferencedIwdPureChecksumsv_10:
	xor edi, edi
	jmp _Z29FS_ReferencedIwdPureChecksumsv_30
	nop


;FS_Dir_f()
_Z8FS_Dir_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ecx, cmd_args
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x1
	jle _Z8FS_Dir_fv_10
	cmp eax, 0x3
	jg _Z8FS_Dir_fv_10
	cmp eax, 0x2
	jz _Z8FS_Dir_fv_20
	mov edx, [ecx+edx*4+0x64]
	mov ebx, [edx+0x4]
	cmp eax, 0x3
	jz _Z8FS_Dir_fv_30
	mov esi, _cstring_null
_Z8FS_Dir_fv_70:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_directory_of_s_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x10], 0xa
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], ebx
	call FS_ListFiles
	mov esi, eax
	mov ecx, [ebp-0xc]
	test ecx, ecx
	jg _Z8FS_Dir_fv_40
_Z8FS_Dir_fv_60:
	mov dword [esp+0x4], 0xa
	mov [esp], esi
	call FS_FreeFileList
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z8FS_Dir_fv_10:
	mov dword [esp+0x4], _cstring_usage_dir_direct
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z8FS_Dir_fv_40:
	xor ebx, ebx
_Z8FS_Dir_fv_50:
	mov eax, [esi+ebx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add ebx, 0x1
	cmp [ebp-0xc], ebx
	jg _Z8FS_Dir_fv_50
	jmp _Z8FS_Dir_fv_60
_Z8FS_Dir_fv_20:
	mov eax, [ecx+edx*4+0x64]
	mov ebx, [eax+0x4]
	mov esi, _cstring_null
	jmp _Z8FS_Dir_fv_70
_Z8FS_Dir_fv_30:
	mov esi, [edx+0x8]
	jmp _Z8FS_Dir_fv_70


;FS_iwIwd(char const*, char*)
_Z8FS_iwIwdPKcPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	xor ebx, ebx
	jmp _Z8FS_iwIwdPKcPc_10
_Z8FS_iwIwdPKcPc_30:
	add ebx, 0x1
	cmp ebx, 0x19
	jz _Z8FS_iwIwdPKcPc_20
_Z8FS_iwIwdPKcPc_10:
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_siw_02d
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z18FS_FilenameComparePKcS0_
	test eax, eax
	jnz _Z8FS_iwIwdPKcPc_30
_Z8FS_iwIwdPKcPc_80:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8FS_iwIwdPKcPc_20:
	mov dword [esp+0x4], _cstring_localized_
	mov [esp], esi
	call strstr
	mov ebx, eax
	test eax, eax
	jz _Z8FS_iwIwdPKcPc_40
	mov [esp+0x4], esi
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcpy
	mov eax, ebx
	sub eax, esi
	mov byte [ebp+eax-0x4e], 0x0
	mov [esp+0x4], edi
	mov dword [esp], _cstring_slocalized_
	call _Z2vaPKcz
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z18FS_FilenameComparePKcS0_
	test eax, eax
	jz _Z8FS_iwIwdPKcPc_50
_Z8FS_iwIwdPKcPc_40:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8FS_iwIwdPKcPc_50:
	lea eax, [ebx+0xa]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcpy
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z8I_strlwrPc
	xor ebx, ebx
	jmp _Z8FS_iwIwdPKcPc_60
_Z8FS_iwIwdPKcPc_70:
	add ebx, 0x1
	cmp ebx, 0x19
	jz _Z8FS_iwIwdPKcPc_40
_Z8FS_iwIwdPKcPc_60:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring__iw02d
	call _Z2vaPKcz
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strstr
	test eax, eax
	jz _Z8FS_iwIwdPKcPc_70
	jmp _Z8FS_iwIwdPKcPc_80


;Initialized global or static variables of files:
SECTION .data


;Initialized constant data of files:
SECTION .rdata


;Zero initialized global or static variables of files:
SECTION .bss
info6: resb 0x2000
info8: resb 0x2000
info5: resb 0x2000
info4: resb 0x2000
info3: resb 0x2000
info2: resb 0x2000
_ZZ11FS_ShiftStrPKciE3buf: resb 0x400
_ZZ14FS_AddCommandsvE18FS_TouchFile_f_VAR: resb 0x14
_ZZ14FS_AddCommandsvE15FS_NewDir_f_VAR: resb 0x14
_ZZ14FS_AddCommandsvE12FS_Dir_f_VAR: resb 0x14
_ZZ14FS_AddCommandsvE17FS_FullPath_f_VAR: resb 0x14
_ZZ14FS_AddCommandsvE13FS_Path_f_VAR: resb 0x30
_ZZ17FS_GetMapBaseNamePKcE8basename: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_file_sumname_mis:		db "file sum/name mismatch",0
_cstring_:		db "---------------",0ah,0
_cstring_d_files_listed:		db "%d files listed",0ah,0
_cstring_s:		db "%s",0ah,0
_cstring_usage_fdir_filte:		db "usage: fdir <filter>",0ah,0
_cstring_example_fdir_q3d:		db "example: fdir *q3dm*.bsp",0ah,0
_cstring_fs_sv_rename_s__:		db "FS_SV_Rename: %s --> %s",0ah,0
_cstring_mods:		db "mods",0
_cstring_ss:		db "%s/%s",0
_cstring_descriptiontxt:		db "/description.txt",0
_cstring_i_:		db "%i ",0
_cstring_space:		db " ",0
_cstring_path:		db "path",0
_cstring_fullpath:		db "fullpath",0
_cstring_dir:		db "dir",0
_cstring_fdir:		db "fdir",0
_cstring_touchfile:		db "touchFile",0
_cstring_usage_touchfile_:		db "Usage: touchFile <file>",0ah,0
_cstring_mapsmp:		db "maps/mp/",0
_cstring_bsp:		db "bsp",0
_cstring_1:		db "/",0
_cstring_usermaps:		db "usermaps",0
_cstring_running_in_restr:		db 0ah,"Running in restricted demo mode.",0ah,0ah,0
_cstring_demomain:		db "demomain",0
_cstring_corrupted_iw0iwd:		db "Corrupted iw0.iwd: %u",0
_cstring_fs_sv_fopenfiler:		db "FS_SV_FOpenFileRead (fs_homepath): %s",0ah,0
_cstring_fs_sv_fopenfiler1:		db "FS_SV_FOpenFileRead (fs_basepath): %s",0ah,0
_cstring_fs_sv_fopenfiler2:		db "FS_SV_FOpenFileRead (fs_cdpath) : %s",0ah,0
_cstring_writing_to_s:		db "writing to: %s",0ah,0
_cstring_fs_sv_fopenfilew:		db "FS_SV_FOpenFileWrite: %s",0ah,0
_cstring__svr_:		db "_svr_",0
_cstring_main:		db "main",0
_cstring_iwd:		db ".iwd",0
_cstring_siwd:		db "%s.iwd",0
_cstring__local_file_exis:		db " (local file exists with wrong checksum)",0
_cstring_2:		db 0ah,0
_cstring_need_ffs_s:		db "Need FFs: %s",0ah,0
_cstring_3:		db "@",0
_cstring_need_iwds_s:		db "Need iwds: %s",0ah,0
_cstring_ff:		db ".ff",0
_cstring__load:		db "_load",0
_cstring__local_file_exis1:		db " (local file exists with wrong filesize)",0
_cstring_invalid_iwd_info:		db 015h,"Invalid IWD info from server: %s",0
_cstring_iwd_sumname_mism:		db "iwd sum/name mismatch",0
_cstring_connected_to_a_p:		db "Connected to a pure server.",0ah,0
_cstring_directory_of_s_s:		db "Directory of %s %s",0ah,0
_cstring_usage_dir_direct:		db "usage: dir <directory> [extension]",0ah,0
_cstring_siw_02d:		db "%s/iw_%02d",0
_cstring_localized_:		db "localized_",0
_cstring_slocalized_:		db "%s/localized_",0
_cstring__iw02d:		db "_iw%02d",0



;All constant floats and doubles:
SECTION .rdata

