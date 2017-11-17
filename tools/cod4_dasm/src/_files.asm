;Imports of files:
	extern Cmd_TokenizeString
	extern cmd_args
	extern atoi
	extern Cmd_EndTokenizedString
	extern Com_Error
	extern CopyStringInternal
	extern Com_Printf
	extern fs_searchpaths
	extern FS_ListFilteredFiles
	extern FS_SortFileList
	extern FS_FreeFileList
	extern FS_ConvertPath
	extern FS_CheckFileSystemStarted
	extern fs_homepath
	extern FS_BuildOSPath
	extern fs_debug
	extern rename
	extern FS_CopyFile
	extern FS_Remove
	extern sprintf
	extern Sys_ListFiles
	extern Sys_FreeFileList
	extern strcpy
	extern Q_strncat
	extern FS_FileForHandle
	extern Com_Memset
	extern FS_FileRead
	extern FS_FCloseFile
	extern va
	extern FS_Path_f
	extern Cmd_AddCommand
	extern FS_FullPath_f
	extern FS_TouchFile
	extern Q_stricmpn
	extern Q_stricmp
	extern memcpy
	extern fs_iwdPureChecks
	extern fs_gameDirVar
	extern Cmd_RemoveCommand
	extern fs_restrict
	extern Cvar_SetBool
	extern FS_Shutdown
	extern FS_Startup
	extern FS_UseSearchPath
	extern FS_HandleForFile
	extern fsh
	extern Q_strncpyz
	extern FS_FileOpenReadBinary
	extern FS_filelength
	extern fs_basepath
	extern fs_cdpath
	extern FS_CreatePath
	extern Com_DPrintf
	extern FS_FileOpenWriteBinary
	extern fs_numServerReferencedIwds
	extern fs_serverReferencedIwdNames
	extern fs_serverReferencedIwds
	extern Q_strlwr
	extern strstr
	extern FS_FileClose
	extern fs_numServerReferencedFFs
	extern strchr
	extern FS_AddUserMapDirIWDs
	extern fs_serverReferencedFFNames
	extern fs_serverReferencedFFCheckSums
	extern DB_FileSize
	extern FS_ShutdownServerReferencedFFs
	extern fs_numServerIwds
	extern SND_StopSounds
	extern FS_ShutdownServerIwdNames
	extern fs_serverIwds
	extern Com_Memcpy
	extern fs_serverIwdNames
	extern fs_fakeChkSum
	extern FreeStringInternal
	extern FS_ShutdownServerReferencedIwds
	extern fs_checksumFeed
	extern _ZZ16Dvar_AddCommandsvE17Dvar_Toggle_f_VAR
	extern FS_ListFiles
	extern FS_FilenameCompare

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
	global FS_ServerSetReferencedFiles
	global FS_NewDir_f
	global FS_ShiftStr
	global FS_SV_Rename
	global FS_GetModList
	global FS_LoadedIwds
	global FS_AddCommands
	global FS_TouchFile_f
	global FS_GetMapBaseName
	global FS_ReferencedIwds
	global FS_RemoveCommands
	global FS_SetRestrictions
	global FS_SV_FOpenFileRead
	global FS_SV_FOpenFileWrite
	global FS_CompareWithServerFiles
	global FS_LoadedIwdPureChecksums
	global FS_ServerSetReferencedFFs
	global FS_PureServerSetLoadedIwds
	global FS_ServerSetReferencedIwds
	global FS_ReferencedIwdPureChecksums
	global FS_Dir_f
	global FS_iwIwd


SECTION .text


;FS_ServerSetReferencedFiles(char const*, char const*, int, int*, char const**)
FS_ServerSetReferencedFiles:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], edx
	mov edi, ecx
	mov [esp], eax
	call Cmd_TokenizeString
	mov edx, cmd_args
	mov eax, [edx]
	mov esi, [edx+eax*4+0x44]
	cmp esi, edi
	cmovg esi, edi
	test esi, esi
	jle FS_ServerSetReferencedFiles_10
	xor ebx, ebx
	jmp FS_ServerSetReferencedFiles_20
FS_ServerSetReferencedFiles_30:
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov edx, [ebp+0x8]
	mov [edx+ebx*4], eax
	add ebx, 0x1
	cmp esi, ebx
	jz FS_ServerSetReferencedFiles_10
FS_ServerSetReferencedFiles_40:
	mov edx, cmd_args
FS_ServerSetReferencedFiles_20:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge FS_ServerSetReferencedFiles_30
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call atoi
	mov edx, [ebp+0x8]
	mov [edx+ebx*4], eax
	add ebx, 0x1
	cmp esi, ebx
	jnz FS_ServerSetReferencedFiles_40
FS_ServerSetReferencedFiles_10:
	call Cmd_EndTokenizedString
	mov eax, [ebp-0x24]
	test eax, eax
	jz FS_ServerSetReferencedFiles_50
	mov ecx, [ebp-0x24]
	cmp byte [ecx], 0x0
	jnz FS_ServerSetReferencedFiles_60
FS_ServerSetReferencedFiles_50:
	test esi, esi
	jnz FS_ServerSetReferencedFiles_70
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ServerSetReferencedFiles_70:
	mov dword [esp+0x4], _cstring_file_sumname_mis
	mov dword [esp], 0x2
	call Com_Error
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ServerSetReferencedFiles_60:
	mov [esp], ecx
	call Cmd_TokenizeString
	mov ebx, cmd_args
	mov eax, [ebx]
	mov eax, [ebx+eax*4+0x44]
	cmp edi, eax
	cmovge edi, eax
	mov [ebp-0x1c], edi
	cmp esi, edi
	jz FS_ServerSetReferencedFiles_80
	mov dword [esp+0x4], _cstring_file_sumname_mis
	mov dword [esp], 0x2
	call Com_Error
FS_ServerSetReferencedFiles_80:
	mov eax, [ebp-0x1c]
	test eax, eax
	jle FS_ServerSetReferencedFiles_90
	xor edi, edi
	jmp FS_ServerSetReferencedFiles_100
FS_ServerSetReferencedFiles_110:
	mov eax, _cstring_null
	mov [esp], eax
	call CopyStringInternal
	mov ecx, [ebp+0xc]
	mov edx, [ebp-0x20]
	mov [ecx+edx], eax
	add edi, 0x1
	cmp [ebp-0x1c], edi
	jz FS_ServerSetReferencedFiles_90
FS_ServerSetReferencedFiles_100:
	lea eax, [edi*4]
	mov [ebp-0x20], eax
	mov eax, [ebx]
	cmp edi, [ebx+eax*4+0x44]
	jge FS_ServerSetReferencedFiles_110
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
	jnz FS_ServerSetReferencedFiles_100
FS_ServerSetReferencedFiles_90:
	call Cmd_EndTokenizedString
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_NewDir_f()
FS_NewDir_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle FS_NewDir_f_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
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
	call FS_ListFilteredFiles
	mov edi, eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call FS_SortFileList
	mov edx, [ebp-0x1c]
	test edx, edx
	jg FS_NewDir_f_20
FS_NewDir_f_40:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_d_files_listed
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], 0xa
	mov [esp], edi
	call FS_FreeFileList
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_NewDir_f_20:
	mov esi, 0x1
	lea ebx, [edi+0x4]
FS_NewDir_f_30:
	mov eax, [ebx-0x4]
	mov [esp], eax
	call FS_ConvertPath
	mov eax, [ebx-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, esi
	mov edx, [ebp-0x1c]
	add esi, 0x1
	add ebx, 0x4
	cmp edx, eax
	jg FS_NewDir_f_30
	jmp FS_NewDir_f_40
FS_NewDir_f_10:
	mov dword [esp+0x4], _cstring_usage_fdir_filte
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_example_fdir_q3d
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FS_ShiftStr(char const*, int)
FS_ShiftStr:
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
	jg FS_ShiftStr_10
	xor eax, eax
	mov byte [eax+_ZZ11FS_ShiftStrPKciE3buf], 0x0
	mov eax, _ZZ11FS_ShiftStrPKciE3buf
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ShiftStr_10:
	movzx ebx, byte [ebp+0xc]
	xor edx, edx
FS_ShiftStr_20:
	mov eax, ebx
	add al, [esi+edx]
	mov [edx+_ZZ11FS_ShiftStrPKciE3buf], al
	add edx, 0x1
	cmp edx, ecx
	jnz FS_ShiftStr_20
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
FS_SV_Rename:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	call FS_CheckFileSystemStarted
	lea eax, [ebp-0x118]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov ebx, fs_homepath
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
	lea esi, [ebp-0x218]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
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
	jnz FS_SV_Rename_10
FS_SV_Rename_30:
	mov [esp+0x4], esi
	lea eax, [ebp-0x118]
	mov [esp], eax
	call rename
	test eax, eax
	jz FS_SV_Rename_20
	mov [esp+0x4], esi
	lea eax, [ebp-0x118]
	mov [esp], eax
	call FS_CopyFile
	lea eax, [ebp-0x118]
	mov [esp], eax
	call FS_Remove
FS_SV_Rename_20:
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_SV_Rename_10:
	mov [esp+0xc], esi
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fs_sv_rename_s__
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_SV_Rename_30


;FS_GetModList(char*, int)
FS_GetModList:
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
	call Sys_ListFiles
	mov [ebp-0x134], eax
	test eax, eax
	jz FS_GetModList_10
	mov eax, [eax]
	test eax, eax
	jz FS_GetModList_10
	xor eax, eax
FS_GetModList_20:
	add eax, 0x1
	mov edx, [ebp-0x134]
	mov edx, [edx+eax*4]
	test edx, edx
	jnz FS_GetModList_20
	mov [ebp-0x12c], eax
	test eax, eax
	jg FS_GetModList_30
FS_GetModList_10:
	mov dword [ebp-0x13c], 0x0
FS_GetModList_50:
	mov ecx, [ebp-0x134]
	mov [esp], ecx
	call Sys_FreeFileList
	mov eax, [ebp-0x13c]
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_GetModList_30:
	mov dword [ebp-0x138], 0x0
	mov dword [ebp-0x13c], 0x0
	jmp FS_GetModList_40
FS_GetModList_60:
	mov edx, [ebp-0x130]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x120]
	mov [esp], ecx
	call strcpy
FS_GetModList_80:
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
	jge FS_GetModList_50
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
	jz FS_GetModList_50
FS_GetModList_40:
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
	call Q_strncat
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x120]
	mov [esp], edx
	call FS_SV_FOpenFileRead
	test eax, eax
	jle FS_GetModList_60
	mov eax, [ebp-0x1c]
	test eax, eax
	jz FS_GetModList_60
	mov [esp], eax
	call FS_FileForHandle
	mov ebx, eax
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0x120]
	mov [esp], ecx
	call Com_Memset
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x30
	lea eax, [ebp-0x120]
	mov [esp], eax
	call FS_FileRead
	test eax, eax
	js FS_GetModList_70
	mov byte [ebp+eax-0x120], 0x0
FS_GetModList_70:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	jmp FS_GetModList_80
	nop


;FS_LoadedIwds(char const**, char const**)
FS_LoadedIwds:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov byte [info2], 0x0
	mov byte [info3], 0x0
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jnz FS_LoadedIwds_10
	jmp FS_LoadedIwds_20
FS_LoadedIwds_30:
	mov ebx, [ebx]
	test ebx, ebx
	jz FS_LoadedIwds_20
FS_LoadedIwds_10:
	mov eax, [ebx+0x4]
	test eax, eax
	jz FS_LoadedIwds_30
	mov ecx, [ebx+0xc]
	test ecx, ecx
	jnz FS_LoadedIwds_30
	mov eax, [eax+0x304]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info2
	call Q_strncat
	cmp byte [info3], 0x0
	jnz FS_LoadedIwds_40
FS_LoadedIwds_50:
	mov eax, [ebx+0x4]
	add eax, 0x100
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info3
	call Q_strncat
	mov ebx, [ebx]
	test ebx, ebx
	jnz FS_LoadedIwds_10
FS_LoadedIwds_20:
	mov eax, [ebp+0x8]
	mov dword [eax], info2
	mov eax, [ebp+0xc]
	mov dword [eax], info3
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FS_LoadedIwds_40:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info3
	call Q_strncat
	jmp FS_LoadedIwds_50
	nop


;FS_AddCommands()
FS_AddCommands:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE13FS_Path_f_VAR
	mov eax, FS_Path_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_path
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE17FS_FullPath_f_VAR
	mov eax, FS_FullPath_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_fullpath
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE12FS_Dir_f_VAR
	mov dword [esp+0x4], FS_Dir_f
	mov dword [esp], _cstring_dir
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE15FS_NewDir_f_VAR
	mov dword [esp+0x4], FS_NewDir_f
	mov dword [esp], _cstring_fdir
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14FS_AddCommandsvE18FS_TouchFile_f_VAR
	mov dword [esp+0x4], FS_TouchFile_f
	mov dword [esp], _cstring_touchfile
	call Cmd_AddCommand
	leave
	ret


;FS_TouchFile_f()
FS_TouchFile_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz FS_TouchFile_f_10
	mov dword [esp+0x4], _cstring_usage_touchfile_
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret
FS_TouchFile_f_10:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call FS_TouchFile
	leave
	ret
	nop


;FS_GetMapBaseName(char const*)
FS_GetMapBaseName:
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
	call Q_stricmpn
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
	call Q_stricmp
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
	jle FS_GetMapBaseName_10
	mov eax, _ZZ17FS_GetMapBaseNamePKcE8basename
	lea edx, [ebx+_ZZ17FS_GetMapBaseNamePKcE8basename]
	jmp FS_GetMapBaseName_20
FS_GetMapBaseName_30:
	add eax, 0x1
	cmp eax, edx
	jz FS_GetMapBaseName_10
FS_GetMapBaseName_20:
	cmp byte [eax], 0x25
	jnz FS_GetMapBaseName_30
	mov byte [eax], 0x5f
	add eax, 0x1
	cmp eax, edx
	jnz FS_GetMapBaseName_20
FS_GetMapBaseName_10:
	mov eax, _ZZ17FS_GetMapBaseNamePKcE8basename
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_ReferencedIwds(char const**, char const**)
FS_ReferencedIwds:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov byte [info5], 0x0
	mov byte [info8], 0x0
	mov eax, fs_iwdPureChecks
	mov ebx, [eax]
	test ebx, ebx
	jnz FS_ReferencedIwds_10
	jmp FS_ReferencedIwds_20
FS_ReferencedIwds_30:
	lea eax, [ebx+0x108]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call Q_strncat
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call Q_strncat
	lea eax, [ebx+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call Q_strncat
	mov ebx, [ebx]
	test ebx, ebx
	jz FS_ReferencedIwds_20
FS_ReferencedIwds_10:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info5
	call Q_strncat
	cmp byte [info8], 0x0
	jz FS_ReferencedIwds_30
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call Q_strncat
	jmp FS_ReferencedIwds_30
FS_ReferencedIwds_20:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz FS_ReferencedIwds_40
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jnz FS_ReferencedIwds_50
	jmp FS_ReferencedIwds_40
FS_ReferencedIwds_60:
	mov ebx, [ebx]
	test ebx, ebx
	jz FS_ReferencedIwds_40
FS_ReferencedIwds_50:
	mov edx, [ebx+0x4]
	test edx, edx
	jz FS_ReferencedIwds_60
	mov ecx, [ebx+0xc]
	test ecx, ecx
	jnz FS_ReferencedIwds_60
	cmp byte [edx+0x314], 0x0
	jnz FS_ReferencedIwds_60
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea eax, [edx+0x200]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_ReferencedIwds_70
FS_ReferencedIwds_90:
	mov eax, [ebx+0x4]
	mov eax, [eax+0x304]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info5
	call Q_strncat
	cmp byte [info8], 0x0
	jnz FS_ReferencedIwds_80
FS_ReferencedIwds_100:
	mov eax, [ebx+0x4]
	add eax, 0x200
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call Q_strncat
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call Q_strncat
	mov eax, [ebx+0x4]
	add eax, 0x100
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call Q_strncat
	mov ebx, [ebx]
	test ebx, ebx
	jnz FS_ReferencedIwds_50
FS_ReferencedIwds_40:
	mov eax, [ebp+0x8]
	mov dword [eax], info5
	mov eax, [ebp+0xc]
	mov dword [eax], info8
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FS_ReferencedIwds_70:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_usermaps
	mov eax, [ebx+0x4]
	add eax, 0x200
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jnz FS_ReferencedIwds_60
	jmp FS_ReferencedIwds_90
FS_ReferencedIwds_80:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info8
	call Q_strncat
	jmp FS_ReferencedIwds_100
	nop


;FS_RemoveCommands()
FS_RemoveCommands:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_path
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_fullpath
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_dir
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_fdir
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_touchfile
	call Cmd_RemoveCommand
	leave
	ret


;FS_SetRestrictions()
FS_SetRestrictions:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, fs_restrict
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FS_SetRestrictions_10
FS_SetRestrictions_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FS_SetRestrictions_10:
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Cvar_SetBool
	mov dword [esp+0x4], _cstring_running_in_restr
	mov dword [esp], 0xa
	call Com_Printf
	mov dword [esp], 0x0
	call FS_Shutdown
	mov dword [esp], _cstring_demomain
	call FS_Startup
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jz FS_SetRestrictions_20
FS_SetRestrictions_40:
	mov [esp], ebx
	call FS_UseSearchPath
	test eax, eax
	jz FS_SetRestrictions_30
	mov eax, [ebx+0x4]
	test eax, eax
	jz FS_SetRestrictions_30
	mov eax, [eax+0x304]
	cmp eax, 0xb1f595f5
	jz FS_SetRestrictions_30
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_corrupted_iw0iwd
	mov dword [esp], 0x1
	call Com_Error
FS_SetRestrictions_30:
	mov ebx, [ebx]
	test ebx, ebx
	jnz FS_SetRestrictions_40
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;FS_SV_FOpenFileRead(char const*, int*)
FS_SV_FOpenFileRead:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	call FS_CheckFileSystemStarted
	mov dword [esp], 0x0
	call FS_HandleForFile
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
	call Q_strncpyz
	lea eax, [ebp-0x118]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, fs_homepath
	mov eax, [ecx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
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
	jnz FS_SV_FOpenFileRead_10
FS_SV_FOpenFileRead_40:
	lea eax, [ebp-0x118]
	mov [esp], eax
	call FS_FileOpenReadBinary
	mov [ebx], eax
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jz FS_SV_FOpenFileRead_20
FS_SV_FOpenFileRead_60:
	mov eax, [ebp+0xc]
	mov [eax], esi
	test esi, esi
	jnz FS_SV_FOpenFileRead_30
	xor eax, eax
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_SV_FOpenFileRead_30:
	mov [esp], esi
	call FS_filelength
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_SV_FOpenFileRead_10:
	lea ecx, [ebp-0x118]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_fs_sv_fopenfiler
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_SV_FOpenFileRead_40
FS_SV_FOpenFileRead_20:
	mov edi, fs_basepath
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov edx, fs_homepath
	mov eax, [edx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_SV_FOpenFileRead_50
FS_SV_FOpenFileRead_90:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	lea ebx, [eax*4]
	mov edx, fsh
	mov eax, [ebx+edx]
	test eax, eax
	jnz FS_SV_FOpenFileRead_60
	lea ecx, [ebp-0x118]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, fs_cdpath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
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
	jnz FS_SV_FOpenFileRead_70
FS_SV_FOpenFileRead_110:
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
	jmp FS_SV_FOpenFileRead_60
FS_SV_FOpenFileRead_50:
	lea ecx, [ebp-0x118]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
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
	jnz FS_SV_FOpenFileRead_80
FS_SV_FOpenFileRead_100:
	lea eax, [ebp-0x118]
	mov [esp], eax
	call FS_FileOpenReadBinary
	mov [ebx], eax
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jnz FS_SV_FOpenFileRead_60
	xor esi, esi
	jmp FS_SV_FOpenFileRead_90
FS_SV_FOpenFileRead_80:
	lea ecx, [ebp-0x118]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_fs_sv_fopenfiler1
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_SV_FOpenFileRead_100
FS_SV_FOpenFileRead_70:
	lea edx, [ebp-0x118]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_fs_sv_fopenfiler2
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_SV_FOpenFileRead_110
	nop


;FS_SV_FOpenFileWrite(char const*)
FS_SV_FOpenFileWrite:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	call FS_CheckFileSystemStarted
	lea esi, [ebp-0x118]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, fs_homepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x11a], 0x0
	mov dword [esp], 0x0
	call FS_HandleForFile
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
	jnz FS_SV_FOpenFileWrite_10
FS_SV_FOpenFileWrite_40:
	mov [esp], esi
	call FS_CreatePath
	test eax, eax
	jz FS_SV_FOpenFileWrite_20
FS_SV_FOpenFileWrite_30:
	xor edi, edi
	mov eax, edi
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_SV_FOpenFileWrite_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_writing_to_s
	mov dword [esp], 0xa
	call Com_DPrintf
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
	call Q_strncpyz
	mov dword [ebx+0x8], 0x0
	mov eax, [ebx]
	test eax, eax
	jz FS_SV_FOpenFileWrite_30
	mov eax, edi
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_SV_FOpenFileWrite_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_fs_sv_fopenfilew
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_SV_FOpenFileWrite_40
	nop


;FS_CompareWithServerFiles(char*, int, int)
FS_CompareWithServerFiles:
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
	jz FS_CompareWithServerFiles_10
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
	jle FS_CompareWithServerFiles_20
	mov dword [ebp-0x448], 0x0
	mov dword [ebp-0x444], 0x0
	mov ebx, fs_serverReferencedIwdNames
	mov eax, fs_serverReferencedIwds
	mov [ebp-0x420], eax
	jmp FS_CompareWithServerFiles_30
FS_CompareWithServerFiles_50:
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea edx, [ebp-0x418]
	mov [esp], edx
	call strcpy
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call Q_strlwr
	mov dword [esp+0x4], _cstring__svr_
	lea eax, [ebp-0x418]
	mov [esp], eax
	call strstr
	test eax, eax
	jz FS_CompareWithServerFiles_40
FS_CompareWithServerFiles_100:
	add dword [ebp-0x444], 0x1
	add ebx, 0x4
	add dword [ebp-0x420], 0x4
	mov eax, fs_numServerReferencedIwds
	mov ecx, [ebp-0x444]
	cmp ecx, [eax]
	jge FS_CompareWithServerFiles_20
FS_CompareWithServerFiles_30:
	mov eax, [ebp-0x450]
	test eax, eax
	jz FS_CompareWithServerFiles_50
FS_CompareWithServerFiles_40:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_usermaps
	mov eax, [ebx]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	setz al
	movzx eax, al
	mov [ebp-0x44c], eax
	test eax, eax
	jz FS_CompareWithServerFiles_60
	mov eax, [ebp-0x448]
	test eax, eax
	jz FS_CompareWithServerFiles_70
FS_CompareWithServerFiles_60:
	mov eax, fs_searchpaths
	mov edx, [eax]
	test edx, edx
	jz FS_CompareWithServerFiles_80
FS_CompareWithServerFiles_110:
	mov eax, [edx+0x4]
	test eax, eax
	jz FS_CompareWithServerFiles_90
	mov eax, [eax+0x304]
	mov ecx, [ebp-0x420]
	cmp eax, [ecx]
	jz FS_CompareWithServerFiles_100
FS_CompareWithServerFiles_90:
	mov edx, [edx]
	test edx, edx
	jnz FS_CompareWithServerFiles_110
FS_CompareWithServerFiles_80:
	mov edx, [ebx]
	test edx, edx
	jz FS_CompareWithServerFiles_100
	cmp byte [edx], 0x0
	jz FS_CompareWithServerFiles_100
	mov eax, [ebp-0x450]
	test eax, eax
	jnz FS_CompareWithServerFiles_120
	mov eax, [ebp-0x440]
	mov [esp+0x8], eax
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call Q_stricmpn
	test eax, eax
	jz FS_CompareWithServerFiles_130
	mov eax, [ebp-0x44c]
	test eax, eax
	jz FS_CompareWithServerFiles_120
FS_CompareWithServerFiles_130:
	mov dword [esp+0x4], _cstring_main
	mov eax, [ebx]
	mov [esp], eax
	call FS_iwIwd
	test eax, eax
	jnz FS_CompareWithServerFiles_120
	mov eax, [ebp+0x10]
	test eax, eax
	jnz FS_CompareWithServerFiles_140
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call Q_strncat
	mov dword [esp+0x8], _cstring_iwd
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call Q_strncat
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_siwd
	call va
	lea edx, [ebp-0x418]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_null
	mov [esp+0x4], eax
	mov eax, fs_homepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
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
	jz FS_CompareWithServerFiles_150
	mov [esp], eax
	call FS_FileClose
	mov dword [esp+0x8], _cstring__local_file_exis
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncat
FS_CompareWithServerFiles_150:
	mov dword [esp+0x8], _cstring_2
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call Q_strncat
	add dword [ebp-0x444], 0x1
	add ebx, 0x4
	add dword [ebp-0x420], 0x4
	mov eax, fs_numServerReferencedIwds
	mov ecx, [ebp-0x444]
	cmp ecx, [eax]
	jl FS_CompareWithServerFiles_30
FS_CompareWithServerFiles_20:
	cmp byte [esi], 0x0
	jnz FS_CompareWithServerFiles_160
FS_CompareWithServerFiles_10:
	mov dword [ebp-0x458], 0x0
FS_CompareWithServerFiles_220:
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
	jnz FS_CompareWithServerFiles_170
FS_CompareWithServerFiles_200:
	xor eax, eax
FS_CompareWithServerFiles_210:
	cmp dword [ebp-0x458], 0x1
	jz FS_CompareWithServerFiles_180
	sub eax, 0x1
	jz FS_CompareWithServerFiles_180
	xor eax, eax
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_CompareWithServerFiles_180:
	mov eax, 0x1
FS_CompareWithServerFiles_410:
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_CompareWithServerFiles_170:
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
	jg FS_CompareWithServerFiles_190
FS_CompareWithServerFiles_320:
	mov ecx, [ebp-0x438]
	cmp byte [ecx], 0x0
	jz FS_CompareWithServerFiles_200
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_need_ffs_s
	mov dword [esp], 0xa
	call Com_Printf
	mov eax, 0x1
	jmp FS_CompareWithServerFiles_210
FS_CompareWithServerFiles_140:
	mov dword [esp+0x8], _cstring_3
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call Q_strncat
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call Q_strncat
	mov dword [esp+0x8], _cstring_iwd
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncat
	mov dword [esp+0x8], _cstring_3
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call Q_strncat
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call Q_strncat
	mov dword [esp+0x8], _cstring_iwd
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncat
	jmp FS_CompareWithServerFiles_100
FS_CompareWithServerFiles_160:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_need_iwds_s
	mov dword [esp], 0xa
	call Com_Printf
	mov dword [ebp-0x458], 0x1
	jmp FS_CompareWithServerFiles_220
FS_CompareWithServerFiles_70:
	mov edx, [ebx]
	mov [ebp-0x41c], edx
	mov eax, edx
	add eax, 0x9
	mov dword [esp+0x4], 0x2f
	mov [esp], eax
	call strchr
	mov edi, eax
	test eax, eax
	jz FS_CompareWithServerFiles_230
FS_CompareWithServerFiles_420:
	mov edx, [ebx]
	mov eax, edi
	sub eax, edx
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x418]
	mov [esp], eax
	call Q_strncpyz
	lea edx, [ebp-0x418]
	mov [esp], edx
	call FS_AddUserMapDirIWDs
	mov dword [ebp-0x448], 0x1
	jmp FS_CompareWithServerFiles_60
FS_CompareWithServerFiles_190:
	mov dword [ebp-0x430], 0x0
	mov edx, fs_serverReferencedFFNames
	mov [ebp-0x428], edx
	mov ecx, fs_serverReferencedFFCheckSums
	mov [ebp-0x424], ecx
	jmp FS_CompareWithServerFiles_240
FS_CompareWithServerFiles_330:
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
	jbe FS_CompareWithServerFiles_250
	mov ecx, [ebp-0x42c]
	lea edx, [ecx+edx+0x1]
	mov [ebp-0x434], edx
	mov ebx, 0x1
FS_CompareWithServerFiles_350:
	mov [esp+0x4], ebx
	mov [esp], edx
	call DB_FileSize
	mov edi, eax
	mov ecx, [ebp-0x424]
	cmp eax, [ecx]
	jz FS_CompareWithServerFiles_260
	mov edx, [ebp-0x428]
	mov eax, [edx]
	test eax, eax
	jz FS_CompareWithServerFiles_260
	cmp byte [eax], 0x0
	jz FS_CompareWithServerFiles_260
	test ebx, ebx
	jz FS_CompareWithServerFiles_270
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call Q_strncpyz
	cmp ebx, 0x2
	jz FS_CompareWithServerFiles_280
FS_CompareWithServerFiles_390:
	mov eax, [ebp+0x10]
	test eax, eax
	jz FS_CompareWithServerFiles_290
	mov dword [esp+0x8], _cstring_3
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call Q_strncat
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call Q_strncat
	cmp ebx, 0x2
	jz FS_CompareWithServerFiles_300
FS_CompareWithServerFiles_450:
	mov dword [esp+0x8], _cstring_ff
	mov ecx, [ebp-0x43c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x438]
	mov [esp], eax
	call Q_strncat
	mov dword [esp+0x8], _cstring_3
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call Q_strncat
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call Q_strncat
	cmp ebx, 0x2
	jz FS_CompareWithServerFiles_310
FS_CompareWithServerFiles_440:
	mov dword [esp+0x8], _cstring_ff
	mov ecx, [ebp-0x43c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x438]
	mov [esp], eax
	call Q_strncat
FS_CompareWithServerFiles_260:
	add dword [ebp-0x430], 0x1
	add dword [ebp-0x428], 0x4
	add dword [ebp-0x424], 0x4
	mov eax, fs_numServerReferencedFFs
	mov edx, [ebp-0x430]
	cmp edx, [eax]
	jge FS_CompareWithServerFiles_320
	mov edx, [ebp-0x428]
FS_CompareWithServerFiles_240:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_mods
	mov eax, [edx]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jz FS_CompareWithServerFiles_330
FS_CompareWithServerFiles_250:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_usermaps
	mov edx, [ebp-0x428]
	mov eax, [edx]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jz FS_CompareWithServerFiles_340
	mov ecx, [ebp-0x428]
	mov ebx, [ecx]
FS_CompareWithServerFiles_360:
	mov [ebp-0x434], ebx
	xor ebx, ebx
	mov edx, [ebp-0x434]
	jmp FS_CompareWithServerFiles_350
FS_CompareWithServerFiles_340:
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
	jbe FS_CompareWithServerFiles_360
	add ebx, 0x9
	mov [ebp-0x434], ebx
	mov ebx, 0x2
	mov edx, [ebp-0x434]
	jmp FS_CompareWithServerFiles_350
FS_CompareWithServerFiles_290:
	lea edx, [ebp-0x418]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x43c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x438]
	mov [esp], eax
	call Q_strncat
	cmp ebx, 0x2
	jz FS_CompareWithServerFiles_370
FS_CompareWithServerFiles_430:
	mov dword [esp+0x8], _cstring_ff
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call Q_strncat
	test edi, edi
	jnz FS_CompareWithServerFiles_380
FS_CompareWithServerFiles_400:
	mov dword [esp+0x8], _cstring_2
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call Q_strncat
	jmp FS_CompareWithServerFiles_260
FS_CompareWithServerFiles_280:
	mov dword [esp+0x4], _cstring__load
	lea eax, [ebp-0x418]
	mov [esp], eax
	call strstr
	test eax, eax
	jz FS_CompareWithServerFiles_390
	mov byte [eax], 0x0
	jmp FS_CompareWithServerFiles_390
FS_CompareWithServerFiles_380:
	mov dword [esp+0x8], _cstring__local_file_exis1
	mov ecx, [ebp-0x43c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x438]
	mov [esp], eax
	call Q_strncat
	jmp FS_CompareWithServerFiles_400
FS_CompareWithServerFiles_120:
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov eax, fs_serverReferencedIwdNames
	mov ecx, [ebp-0x444]
	mov eax, [eax+ecx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncpyz
	mov dword [esp+0x8], _cstring_iwd
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncat
	mov eax, 0x2
	jmp FS_CompareWithServerFiles_410
FS_CompareWithServerFiles_230:
	mov ecx, [ebp-0x41c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_invalid_iwd_info
	mov dword [esp], 0x2
	call Com_Error
	jmp FS_CompareWithServerFiles_420
FS_CompareWithServerFiles_370:
	mov dword [esp+0x8], _cstring_1
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call Q_strncat
	mov eax, [ebp-0x434]
	mov [esp+0x8], eax
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call Q_strncat
	jmp FS_CompareWithServerFiles_430
FS_CompareWithServerFiles_310:
	mov dword [esp+0x8], _cstring_1
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call Q_strncat
	mov ecx, [ebp-0x434]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call Q_strncat
	jmp FS_CompareWithServerFiles_440
FS_CompareWithServerFiles_300:
	mov dword [esp+0x8], _cstring_1
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call Q_strncat
	mov ecx, [ebp-0x434]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call Q_strncat
	jmp FS_CompareWithServerFiles_450
FS_CompareWithServerFiles_270:
	mov ecx, [ebp-0x43c]
	mov [esp+0x8], ecx
	mov eax, fs_serverReferencedFFNames
	mov edx, [ebp-0x430]
	mov eax, [eax+edx*4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call Q_strncpyz
	mov dword [esp+0x8], _cstring_ff
	mov eax, [ebp-0x43c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x438]
	mov [esp], edx
	call Q_strncat
	mov eax, [ebp-0x454]
	test eax, eax
	jle FS_CompareWithServerFiles_460
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp-0x438]
	mov [esp+0x4], edx
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call Q_strncpyz
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov [esp], esi
	call Q_strncpyz
FS_CompareWithServerFiles_460:
	mov eax, 0x2
	jmp FS_CompareWithServerFiles_410


;FS_LoadedIwdPureChecksums()
FS_LoadedIwdPureChecksums:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov byte [info4], 0x0
	mov eax, fs_searchpaths
	mov ebx, [eax]
	test ebx, ebx
	jnz FS_LoadedIwdPureChecksums_10
	jmp FS_LoadedIwdPureChecksums_20
FS_LoadedIwdPureChecksums_30:
	mov ebx, [ebx]
	test ebx, ebx
	jz FS_LoadedIwdPureChecksums_20
FS_LoadedIwdPureChecksums_10:
	mov eax, [ebx+0x4]
	test eax, eax
	jz FS_LoadedIwdPureChecksums_30
	mov edx, [ebx+0xc]
	test edx, edx
	jnz FS_LoadedIwdPureChecksums_30
	mov eax, [eax+0x308]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info4
	call Q_strncat
	mov ebx, [ebx]
	test ebx, ebx
	jnz FS_LoadedIwdPureChecksums_10
FS_LoadedIwdPureChecksums_20:
	mov eax, info4
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;FS_ServerSetReferencedFFs(char const*, char const*)
FS_ServerSetReferencedFFs:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call FS_ShutdownServerReferencedFFs
	mov eax, fs_serverReferencedFFNames
	mov [esp+0x4], eax
	mov eax, fs_serverReferencedFFCheckSums
	mov [esp], eax
	mov ecx, 0x400
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call FS_ServerSetReferencedFiles
	mov edx, fs_numServerReferencedFFs
	mov [edx], eax
	leave
	ret


;FS_PureServerSetLoadedIwds(char const*, char const*)
FS_PureServerSetLoadedIwds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cmd_TokenizeString
	mov edx, cmd_args
	mov eax, [edx]
	mov edi, [edx+eax*4+0x44]
	cmp edi, 0x400
	jle FS_PureServerSetLoadedIwds_10
	mov edi, 0x400
FS_PureServerSetLoadedIwds_200:
	xor ebx, ebx
	jmp FS_PureServerSetLoadedIwds_20
FS_PureServerSetLoadedIwds_40:
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov [ebp+ebx*4-0x1018], eax
	add ebx, 0x1
	cmp edi, ebx
	jz FS_PureServerSetLoadedIwds_30
FS_PureServerSetLoadedIwds_50:
	mov edx, cmd_args
FS_PureServerSetLoadedIwds_20:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge FS_PureServerSetLoadedIwds_40
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call atoi
	mov [ebp+ebx*4-0x1018], eax
	add ebx, 0x1
	cmp edi, ebx
	jnz FS_PureServerSetLoadedIwds_50
FS_PureServerSetLoadedIwds_30:
	call Cmd_EndTokenizedString
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Cmd_TokenizeString
	mov edx, cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	mov [ebp-0x2024], eax
	cmp eax, 0x400
	jle FS_PureServerSetLoadedIwds_60
	mov dword [ebp-0x2024], 0x400
FS_PureServerSetLoadedIwds_190:
	xor ebx, ebx
	jmp FS_PureServerSetLoadedIwds_70
FS_PureServerSetLoadedIwds_90:
	mov eax, _cstring_null
	mov [esp], eax
	call CopyStringInternal
	mov [ebp+ebx*4-0x2018], eax
	add ebx, 0x1
	cmp [ebp-0x2024], ebx
	jz FS_PureServerSetLoadedIwds_80
FS_PureServerSetLoadedIwds_100:
	mov edx, cmd_args
FS_PureServerSetLoadedIwds_70:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge FS_PureServerSetLoadedIwds_90
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call CopyStringInternal
	mov [ebp+ebx*4-0x2018], eax
	add ebx, 0x1
	cmp [ebp-0x2024], ebx
	jnz FS_PureServerSetLoadedIwds_100
FS_PureServerSetLoadedIwds_80:
	call Cmd_EndTokenizedString
	cmp edi, [ebp-0x2024]
	jz FS_PureServerSetLoadedIwds_110
	mov dword [esp+0x4], _cstring_iwd_sumname_mism
	mov dword [esp], 0x2
	call Com_Error
FS_PureServerSetLoadedIwds_110:
	mov eax, fs_iwdPureChecks
	mov esi, [eax]
	test edi, edi
	jz FS_PureServerSetLoadedIwds_120
	test esi, esi
	jz FS_PureServerSetLoadedIwds_120
	test edi, edi
	jle FS_PureServerSetLoadedIwds_130
FS_PureServerSetLoadedIwds_160:
	xor ebx, ebx
	lea eax, [esi+0x8]
	mov [ebp-0x2028], eax
	jmp FS_PureServerSetLoadedIwds_140
FS_PureServerSetLoadedIwds_150:
	add ebx, 0x1
	cmp edi, ebx
	jz FS_PureServerSetLoadedIwds_130
FS_PureServerSetLoadedIwds_140:
	lea edx, [ebx*4]
	mov eax, [ebp+edx-0x1018]
	cmp eax, [esi+0x4]
	jnz FS_PureServerSetLoadedIwds_150
	mov ecx, [ebp-0x2028]
	mov [esp+0x4], ecx
	mov eax, [ebp+edx-0x2018]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_PureServerSetLoadedIwds_150
	mov esi, [esi]
	test esi, esi
	jnz FS_PureServerSetLoadedIwds_160
FS_PureServerSetLoadedIwds_120:
	mov ecx, fs_numServerIwds
	cmp edi, [ecx]
	jz FS_PureServerSetLoadedIwds_170
FS_PureServerSetLoadedIwds_230:
	xor esi, esi
	mov dword [esp], 0x8
	call SND_StopSounds
	call FS_ShutdownServerIwdNames
	mov eax, fs_numServerIwds
	mov [eax], edi
	test edi, edi
	jnz FS_PureServerSetLoadedIwds_180
FS_PureServerSetLoadedIwds_210:
	mov eax, esi
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_PureServerSetLoadedIwds_60:
	mov eax, [ebp-0x2024]
	test eax, eax
	jle FS_PureServerSetLoadedIwds_80
	jmp FS_PureServerSetLoadedIwds_190
FS_PureServerSetLoadedIwds_10:
	test edi, edi
	jle FS_PureServerSetLoadedIwds_30
	jmp FS_PureServerSetLoadedIwds_200
FS_PureServerSetLoadedIwds_130:
	mov esi, 0x1
	mov dword [esp], 0x8
	call SND_StopSounds
	call FS_ShutdownServerIwdNames
	mov eax, fs_numServerIwds
	mov [eax], edi
	test edi, edi
	jz FS_PureServerSetLoadedIwds_210
FS_PureServerSetLoadedIwds_180:
	mov dword [esp+0x4], _cstring_connected_to_a_p
	mov dword [esp], 0xa
	call Com_DPrintf
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
FS_PureServerSetLoadedIwds_170:
	test edi, edi
	jle FS_PureServerSetLoadedIwds_220
	mov dword [ebp-0x201c], 0x0
FS_PureServerSetLoadedIwds_290:
	mov esi, [ecx]
	test esi, esi
	jle FS_PureServerSetLoadedIwds_230
	xor esi, esi
	mov ebx, fs_serverIwds
	mov eax, fs_serverIwdNames
	mov [ebp-0x2020], eax
	jmp FS_PureServerSetLoadedIwds_240
FS_PureServerSetLoadedIwds_250:
	add esi, 0x1
	add ebx, 0x4
	add dword [ebp-0x2020], 0x4
	cmp esi, [ecx]
	jge FS_PureServerSetLoadedIwds_230
FS_PureServerSetLoadedIwds_240:
	mov edx, [ebp-0x201c]
	shl edx, 0x2
	mov eax, [ebp+edx-0x1018]
	cmp eax, [ebx]
	jnz FS_PureServerSetLoadedIwds_250
	mov ecx, [ebp-0x2020]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+edx-0x2018]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz FS_PureServerSetLoadedIwds_260
	mov ecx, fs_numServerIwds
	jmp FS_PureServerSetLoadedIwds_250
FS_PureServerSetLoadedIwds_220:
	mov ebx, [ebp-0x2024]
	test ebx, ebx
	jg FS_PureServerSetLoadedIwds_270
	xor esi, esi
	jmp FS_PureServerSetLoadedIwds_210
FS_PureServerSetLoadedIwds_270:
	xor ebx, ebx
FS_PureServerSetLoadedIwds_280:
	mov eax, [ebp+ebx*4-0x2018]
	mov [esp], eax
	call FreeStringInternal
	add ebx, 0x1
	cmp [ebp-0x2024], ebx
	jnz FS_PureServerSetLoadedIwds_280
	xor esi, esi
	jmp FS_PureServerSetLoadedIwds_210
FS_PureServerSetLoadedIwds_260:
	add dword [ebp-0x201c], 0x1
	cmp edi, [ebp-0x201c]
	jz FS_PureServerSetLoadedIwds_220
	mov ecx, fs_numServerIwds
	jmp FS_PureServerSetLoadedIwds_290


;FS_ServerSetReferencedIwds(char const*, char const*)
FS_ServerSetReferencedIwds:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call FS_ShutdownServerReferencedIwds
	mov eax, fs_serverReferencedIwdNames
	mov [esp+0x4], eax
	mov eax, fs_serverReferencedIwds
	mov [esp], eax
	mov ecx, 0x400
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call FS_ServerSetReferencedFiles
	mov edx, fs_numServerReferencedIwds
	mov [edx], eax
	leave
	ret


;FS_ReferencedIwdPureChecksums()
FS_ReferencedIwdPureChecksums:
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
	jz FS_ReferencedIwdPureChecksums_10
	xor edi, edi
	jmp FS_ReferencedIwdPureChecksums_20
FS_ReferencedIwdPureChecksums_40:
	mov ebx, [ebx]
	test ebx, ebx
	jz FS_ReferencedIwdPureChecksums_30
FS_ReferencedIwdPureChecksums_20:
	mov eax, [ebx+0x4]
	test eax, eax
	jz FS_ReferencedIwdPureChecksums_40
	mov edx, [ebx+0xc]
	test edx, edx
	jnz FS_ReferencedIwdPureChecksums_40
	cmp byte [eax+0x314], 0x0
	jz FS_ReferencedIwdPureChecksums_40
	mov eax, [eax+0x308]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info6
	call Q_strncat
	mov eax, [ebx+0x4]
	xor esi, [eax+0x308]
	add edi, 0x1
	mov ebx, [ebx]
	test ebx, ebx
	jnz FS_ReferencedIwdPureChecksums_20
FS_ReferencedIwdPureChecksums_30:
	mov eax, fs_fakeChkSum
	mov eax, [eax]
	test eax, eax
	jz FS_ReferencedIwdPureChecksums_50
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info6
	call Q_strncat
FS_ReferencedIwdPureChecksums_50:
	xor edi, esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_i_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov dword [esp], info6
	call Q_strncat
	mov eax, info6
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ReferencedIwdPureChecksums_10:
	xor edi, edi
	jmp FS_ReferencedIwdPureChecksums_30
	nop


;FS_Dir_f()
FS_Dir_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ecx, cmd_args
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x1
	jle FS_Dir_f_10
	cmp eax, 0x3
	jg FS_Dir_f_10
	cmp eax, 0x2
	jz FS_Dir_f_20
	mov edx, [ecx+edx*4+0x64]
	mov ebx, [edx+0x4]
	cmp eax, 0x3
	jz FS_Dir_f_30
	mov esi, _cstring_null
FS_Dir_f_70:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_directory_of_s_s
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
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
	jg FS_Dir_f_40
FS_Dir_f_60:
	mov dword [esp+0x4], 0xa
	mov [esp], esi
	call FS_FreeFileList
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
FS_Dir_f_10:
	mov dword [esp+0x4], _cstring_usage_dir_direct
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
FS_Dir_f_40:
	xor ebx, ebx
FS_Dir_f_50:
	mov eax, [esi+ebx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	add ebx, 0x1
	cmp [ebp-0xc], ebx
	jg FS_Dir_f_50
	jmp FS_Dir_f_60
FS_Dir_f_20:
	mov eax, [ecx+edx*4+0x64]
	mov ebx, [eax+0x4]
	mov esi, _cstring_null
	jmp FS_Dir_f_70
FS_Dir_f_30:
	mov esi, [edx+0x8]
	jmp FS_Dir_f_70


;FS_iwIwd(char const*, char*)
FS_iwIwd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	xor ebx, ebx
	jmp FS_iwIwd_10
FS_iwIwd_30:
	add ebx, 0x1
	cmp ebx, 0x19
	jz FS_iwIwd_20
FS_iwIwd_10:
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_siw_02d
	call va
	mov [esp+0x4], eax
	mov [esp], esi
	call FS_FilenameCompare
	test eax, eax
	jnz FS_iwIwd_30
FS_iwIwd_80:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_iwIwd_20:
	mov dword [esp+0x4], _cstring_localized_
	mov [esp], esi
	call strstr
	mov ebx, eax
	test eax, eax
	jz FS_iwIwd_40
	mov [esp+0x4], esi
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcpy
	mov eax, ebx
	sub eax, esi
	mov byte [ebp+eax-0x4e], 0x0
	mov [esp+0x4], edi
	mov dword [esp], _cstring_slocalized_
	call va
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call FS_FilenameCompare
	test eax, eax
	jz FS_iwIwd_50
FS_iwIwd_40:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_iwIwd_50:
	lea eax, [ebx+0xa]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcpy
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Q_strlwr
	xor ebx, ebx
	jmp FS_iwIwd_60
FS_iwIwd_70:
	add ebx, 0x1
	cmp ebx, 0x19
	jz FS_iwIwd_40
FS_iwIwd_60:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring__iw02d
	call va
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strstr
	test eax, eax
	jz FS_iwIwd_70
	jmp FS_iwIwd_80


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

