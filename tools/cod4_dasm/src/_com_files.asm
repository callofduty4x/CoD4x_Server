;Imports of com_files:
	extern unzClose
	extern Z_FreeInternal
	extern Com_Error
	extern memcpy
	extern Q_stricmpn
	extern LiveStorage_ClearWriteFlag
	extern strstr
	extern Q_strncmp
	extern I_islower
	extern Q_stricmp
	extern memset
	extern __maskrune
	extern Sys_ListFiles
	extern qsort
	extern Sys_FreeFileList
	extern unzOpen
	extern unzGetGlobalInfo
	extern Com_PrintWarning
	extern unzGoToFirstFile
	extern Z_MallocInternal
	extern Q_strncpyz
	extern Com_BlockChecksumKey32
	extern strcpy
	extern SEH_GetLanguageIndexForName
	extern unzGetCurrentFileInfo
	extern unzGoToNextFile
	extern unzGetCurrentFileInfoPosition
	extern Q_strlwr
	extern tolower
	extern Com_Printf
	extern SEH_GetLanguageName
	extern Com_sprintf
	extern Sys_DirectoryHasContents
	extern SEH_GetCurrentLanguage
	extern va
	extern FS_FileOpenReadBinary
	extern InterlockedCompareExchange
	extern unzSetCurrentFileInfoPosition
	extern Com_Memcpy
	extern unzOpenCurrentFile
	extern FS_FileClose
	extern unzReOpen
	extern Com_GetExtensionSubString
	extern FS_FileGetFileSize
	extern ms_rand
	extern Sys_Mkdir
	extern FS_FileOpenWriteBinary
	extern Hunk_FreeTempMemory
	extern Hunk_UserDestroy
	extern Hunk_UserCreate
	extern Hunk_UserAlloc
	extern Hunk_AllocateTempMemory
	extern SND_StopSounds
	extern SEH_Shutdown_StringEd
	extern FS_RemoveCommands
	extern SEH_Init_StringEd
	extern SEH_UpdateLanguageInfo
	extern FS_SetRestrictions
	extern Com_SafeMode
	extern Cbuf_AddText
	extern FS_PureServerSetLoadedIwds
	extern Cvar_SetString
	extern Cvar_SetBool
	extern Cvar_RegisterInt
	extern Cvar_RegisterBool
	extern Sys_DefaultCDPath
	extern Cvar_RegisterString
	extern Sys_Cwd
	extern Cvar_SetDomainFunc
	extern Sys_DefaultHomePath
	extern Com_ReadCDKey
	extern FS_AddCommands
	extern Cvar_ClearModified
	extern malloc
	extern FS_FileRead
	extern free
	extern FS_FileWrite
	extern fflush
	extern remove
	extern unzCloseCurrentFile
	extern Com_Memset
	extern FS_GetModList
	extern com_sv_running
	extern Com_StartupVariable
	extern SEH_InitLanguage
	extern Sys_IsMainThread
	extern FS_FileOpenAppendText
	extern access
	extern Com_FilterPath
	extern Hunk_CopyString
	extern GetFileAttributesA
	extern SetFileAttributesA
	extern FS_FileOpenWriteText
	extern FreeStringInternal
	extern unzReadCurrentFile
	extern unztell
	extern FS_FileSeek
	extern ftell
	extern vsnprintf
	extern rename

;Exports of com_files:
	global g_disablePureCheck
	global FS_ShutdownSearchPaths
	global FS_SanitizeFilename
	global _ZZ15IwdFileLanguagePKcE7iString
	global _ZZ15IwdFileLanguagePKcE17szIwdLanguageName
	global FS_BuildOSPathForThread
	global FS_GameDirDomainFunc
	global iwdsort
	global _ZZ30FS_AddIwdFilesForGameDirectoryPKcS0_E16bLanguagesListed
	global FS_AddIwdFilesForGameDirectory
	global FS_AddGameDirectory
	global FS_FOpenFileReadForThread
	global FS_FOpenFileWriteToDirForThread
	global FS_FreeFile
	global FS_FreeFileList
	global FS_ListFiles
	global FS_ListFilesInLocation
	global FS_ListFilteredFilesInLocation
	global FS_ReadFile
	global FS_Restart
	global FS_Startup
	global FS_CopyFile
	global FS_Shutdown
	global FS_WriteLog
	global FS_LoadStack
	global FS_TouchFile
	global FS_WriteFile
	global FS_CreatePath
	global FS_FCloseFile
	global FS_FileExists
	global FS_FullPath_f
	global FS_ResetFiles
	global FS_filelength
	global FS_BuildOSPath
	global FS_ConvertPath
	global FS_DeleteInDir
	global FS_DisplayPath
	global FS_GetFileList
	global FS_Initialized
	global FS_NeedRestart
	global FS_HashFileName
	global FS_SortFileList
	global FS_FCloseLogFile
	global FS_FOpenFileRead
	global FS_FileForHandle
	global FS_GetFileOsPath
	global FS_HandleForFile
	global FS_UseSearchPath
	global FS_FOpenFileWrite
	global FS_InitFilesystem
	global FS_WriteFileToDir
	global Com_GetBspFilename
	global FS_FOpenFileAppend
	global FS_FOpenFileByMode
	global FS_FilenameCompare
	global FS_ShortOSFilePath
	global FS_DisablePureCheck
	global FS_AddUserMapDirIWDs
	global FS_LanguageHasAssets
	global FS_ListFilteredFiles
	global FS_OpenFileOverwrite
	global FS_ReplaceSeparators
	global FS_ClearIwdReferences
	global FS_ConditionalRestart
	global FS_FOpenTextFileWrite
	global FS_FOpenFileReadStream
	global FS_FOpenFileWriteToDir
	global FS_FOpenFileReadDatabase
	global FS_CheckFileSystemStarted
	global FS_ShutdownServerIwdNames
	global FS_AddIwdPureCheckReference
	global FS_ShutdownServerReferencedFFs
	global FS_ShutdownServerReferencedIwds
	global FS_ShutDownIwdPureCheckReferences
	global FS_Read
	global FS_Seek
	global FS_FTell
	global FS_Flush
	global FS_Write
	global FS_Path_f
	global FS_Printf
	global FS_Remove
	global FS_Rename
	global fs_gameDirVar
	global fs_checksumFeed
	global fs_homepath
	global fs_basepath
	global com_fileAccessed
	global fs_cdpath
	global fs_debug
	global fs_fakeChkSum
	global fs_iwdPureChecks
	global fs_numServerIwds
	global fs_numServerReferencedFFs
	global fs_numServerReferencedIwds
	global fs_restrict
	global fs_searchpaths
	global fs_serverIwdNames
	global fs_serverIwds
	global fs_serverReferencedFFCheckSums
	global fs_serverReferencedFFNames
	global fs_serverReferencedIwdNames
	global fs_serverReferencedIwds
	global fsh
	global fs_ignoreLocalized
	global fs_basegame
	global fs_copyfiles
	global fs_gamedir
	global fs_iwdFileCount
	global fs_loadStack
	global fs_usedevdir
	global lastValidBase
	global lastValidGame


SECTION .text


;FS_ShutdownSearchPaths(searchpath_s*)
FS_ShutdownSearchPaths:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	test eax, eax
	jnz FS_ShutdownSearchPaths_10
	jmp FS_ShutdownSearchPaths_20
FS_ShutdownSearchPaths_50:
	mov ebx, esi
FS_ShutdownSearchPaths_10:
	mov esi, [ebx]
	mov eax, [ebx+0x4]
	test eax, eax
	jz FS_ShutdownSearchPaths_30
	mov eax, [eax+0x300]
	mov [esp], eax
	call unzClose
	mov eax, [ebx+0x4]
	mov eax, [eax+0x320]
	mov [esp], eax
	call Z_FreeInternal
	mov eax, [ebx+0x4]
	mov [esp], eax
	call Z_FreeInternal
FS_ShutdownSearchPaths_30:
	mov eax, [ebx+0x8]
	test eax, eax
	jz FS_ShutdownSearchPaths_40
	mov [esp], eax
	call Z_FreeInternal
FS_ShutdownSearchPaths_40:
	mov [esp], ebx
	call Z_FreeInternal
	test esi, esi
	jnz FS_ShutdownSearchPaths_50
FS_ShutdownSearchPaths_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_SanitizeFilename(char const*, char*, int)
FS_SanitizeFilename:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov esi, eax
	mov [ebp-0x14], edx
	mov [ebp-0x18], ecx
	xor ecx, ecx
FS_SanitizeFilename_30:
	movzx eax, byte [esi+ecx]
	cmp al, 0x2f
	jz FS_SanitizeFilename_10
	cmp al, 0x5c
	jnz FS_SanitizeFilename_20
FS_SanitizeFilename_10:
	add ecx, 0x1
	jmp FS_SanitizeFilename_30
FS_SanitizeFilename_20:
	lea ebx, [esi+ecx]
	test al, al
	jz FS_SanitizeFilename_40
	mov dword [ebp-0x10], 0x0
FS_SanitizeFilename_140:
	cmp al, 0x2e
	jz FS_SanitizeFilename_50
	cmp al, 0x3a
	jnz FS_SanitizeFilename_60
	cmp byte [ebx+0x1], 0x3a
	jz FS_SanitizeFilename_70
FS_SanitizeFilename_60:
	cmp al, 0x2e
	jz FS_SanitizeFilename_80
FS_SanitizeFilename_170:
	mov edi, [ebp-0x10]
	add edi, 0x1
	cmp edi, [ebp-0x18]
	jge FS_SanitizeFilename_70
	cmp al, 0x2f
	jz FS_SanitizeFilename_90
	cmp al, 0x5c
	jnz FS_SanitizeFilename_100
FS_SanitizeFilename_90:
	mov eax, [ebp-0x14]
	mov edx, [ebp-0x10]
	mov byte [eax+edx], 0x2f
	xor edx, edx
FS_SanitizeFilename_130:
	movzx eax, byte [ebx+edx+0x1]
	cmp al, 0x2f
	jz FS_SanitizeFilename_110
	cmp al, 0x5c
	jnz FS_SanitizeFilename_120
FS_SanitizeFilename_110:
	add edx, 0x1
	jmp FS_SanitizeFilename_130
FS_SanitizeFilename_120:
	add ecx, edx
	mov [ebp-0x10], edi
FS_SanitizeFilename_160:
	add ecx, 0x1
	lea ebx, [esi+ecx]
	movzx eax, byte [ebx]
	test al, al
	jnz FS_SanitizeFilename_140
	mov eax, [ebp-0x10]
	jmp FS_SanitizeFilename_150
FS_SanitizeFilename_40:
	xor eax, eax
FS_SanitizeFilename_150:
	mov ebx, [ebp-0x14]
	mov byte [eax+ebx], 0x0
	mov eax, 0x1
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_SanitizeFilename_100:
	mov edx, [ebp-0x14]
	mov ebx, [ebp-0x10]
	mov [edx+ebx], al
	mov [ebp-0x10], edi
	jmp FS_SanitizeFilename_160
FS_SanitizeFilename_50:
	cmp byte [ebx+0x1], 0x2e
	jnz FS_SanitizeFilename_60
FS_SanitizeFilename_70:
	xor eax, eax
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_SanitizeFilename_80:
	movzx edx, byte [esi+ecx+0x1]
	test dl, dl
	jz FS_SanitizeFilename_160
	cmp dl, 0x2f
	jz FS_SanitizeFilename_160
	cmp dl, 0x5c
	jz FS_SanitizeFilename_160
	jmp FS_SanitizeFilename_170


;FS_BuildOSPathForThread(char const*, char const*, char const*, char*, FsThread)
FS_BuildOSPathForThread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x24], eax
	mov [ebp-0x28], edx
	mov [ebp-0x2c], ecx
	mov esi, [ebp+0x8]
	test edx, edx
	jz FS_BuildOSPathForThread_10
	cmp byte [edx], 0x0
	jz FS_BuildOSPathForThread_10
FS_BuildOSPathForThread_40:
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, [ebp-0x24]
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov ecx, edx
	mov edi, [ebp-0x28]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x20], ecx
	mov ecx, edx
	mov edi, [ebp-0x2c]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x1c], ecx
	mov eax, [ebp-0x20]
	lea edi, [ebx+eax]
	lea eax, [ecx+edi+0x2]
	cmp eax, 0xff
	jle FS_BuildOSPathForThread_20
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz FS_BuildOSPathForThread_30
FS_BuildOSPathForThread_50:
	mov byte [esi], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_BuildOSPathForThread_10:
	mov dword [ebp-0x28], fs_gamedir
	jmp FS_BuildOSPathForThread_40
FS_BuildOSPathForThread_30:
	mov dword [esp+0x4], _cstring_fs_buildospath_o
	mov dword [esp], 0x1
	call Com_Error
FS_BuildOSPathForThread_20:
	mov [esp+0x8], ebx
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	lea ebx, [esi+ebx]
	mov byte [ebx], 0x2f
	lea eax, [ebx+0x1]
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov byte [esi+edi+0x1], 0x2f
	mov eax, [ebp-0x20]
	lea ebx, [ebx+eax+0x2]
	mov eax, [ebp-0x1c]
	add eax, 0x1
	mov [esp+0x8], eax
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	movzx eax, byte [esi]
	test al, al
	jz FS_BuildOSPathForThread_50
	mov edx, esi
	xor ecx, ecx
	jmp FS_BuildOSPathForThread_60
FS_BuildOSPathForThread_80:
	cmp al, 0x5c
	jz FS_BuildOSPathForThread_70
	mov [esi], al
	add esi, 0x1
	xor ecx, ecx
FS_BuildOSPathForThread_90:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz FS_BuildOSPathForThread_50
FS_BuildOSPathForThread_60:
	cmp al, 0x2f
	jnz FS_BuildOSPathForThread_80
FS_BuildOSPathForThread_70:
	test cl, cl
	jnz FS_BuildOSPathForThread_90
	mov byte [esi], 0x2f
	add esi, 0x1
	mov ecx, 0x1
	jmp FS_BuildOSPathForThread_90
	nop


;FS_GameDirDomainFunc(dvar_s*, DvarValue)
FS_GameDirDomainFunc:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x50
	mov ebx, [ebp+0xc]
	cmp byte [ebx], 0x0
	jnz FS_GameDirDomainFunc_10
FS_GameDirDomainFunc_80:
	mov eax, 0x1
	add esp, 0x50
	pop ebx
	pop edi
	pop ebp
	ret
FS_GameDirDomainFunc_10:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_mods
	mov [esp], ebx
	call Q_stricmpn
	test eax, eax
	jz FS_GameDirDomainFunc_20
	mov ebx, [ebp+0xc]
	mov [ebp-0x38], ebx
	mov ecx, [ebp+0x10]
	mov [ebp-0x34], ecx
	mov edx, [ebp+0x14]
	mov [ebp-0x30], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x2c], eax
FS_GameDirDomainFunc_50:
	mov [ebp-0x48], ebx
	mov [ebp-0x44], ecx
	mov [ebp-0x40], edx
	mov [ebp-0x3c], eax
	call LiveStorage_ClearWriteFlag
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_invalid_se
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	add esp, 0x50
	pop ebx
	pop edi
	pop ebp
	ret
FS_GameDirDomainFunc_20:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x5
	jbe FS_GameDirDomainFunc_30
	movzx eax, byte [ebx+0x4]
	cmp al, 0x2f
	jz FS_GameDirDomainFunc_40
	cmp al, 0x5c
	jz FS_GameDirDomainFunc_40
FS_GameDirDomainFunc_30:
	mov ebx, [ebp+0xc]
	mov [ebp-0x28], ebx
	mov ecx, [ebp+0x10]
	mov [ebp-0x24], ecx
	mov edx, [ebp+0x14]
	mov [ebp-0x20], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x1c], eax
	jmp FS_GameDirDomainFunc_50
FS_GameDirDomainFunc_40:
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jz FS_GameDirDomainFunc_60
FS_GameDirDomainFunc_70:
	mov ebx, [ebp+0xc]
	mov [ebp-0x18], ebx
	mov ecx, [ebp+0x10]
	mov [ebp-0x14], ecx
	mov edx, [ebp+0x14]
	mov [ebp-0x10], edx
	mov eax, [ebp+0x18]
	mov [ebp-0xc], eax
	jmp FS_GameDirDomainFunc_50
FS_GameDirDomainFunc_60:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz FS_GameDirDomainFunc_70
	jmp FS_GameDirDomainFunc_80


;iwdsort(void const*, void const*)
iwdsort:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x28], eax
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp-0x24], eax
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring___________
	mov eax, [ebp-0x28]
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jnz iwdsort_10
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring___________
	mov eax, [ebp-0x24]
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jz iwdsort_20
iwdsort_10:
	mov eax, [ebp-0x28]
	mov [ebp-0x1c], eax
	mov esi, [ebp-0x24]
	jmp iwdsort_30
iwdsort_90:
	cmp ebx, 0x3a
	jz iwdsort_40
	cmp edi, 0x5c
	jz iwdsort_50
iwdsort_100:
	cmp edi, 0x3a
	jz iwdsort_50
	cmp ebx, edi
	jl iwdsort_60
iwdsort_110:
	jg iwdsort_70
	test ebx, ebx
	jz iwdsort_80
	mov eax, [ebp-0x1c]
iwdsort_30:
	movsx ebx, byte [eax]
	add eax, 0x1
	mov [ebp-0x1c], eax
	movsx edi, byte [esi]
	add esi, 0x1
	mov [esp], ebx
	call I_islower
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	mov [esp], edi
	call I_islower
	lea edx, [edi-0x20]
	test al, al
	cmovnz edi, edx
	cmp ebx, 0x5c
	jnz iwdsort_90
iwdsort_40:
	mov ebx, 0x2f
	cmp edi, 0x5c
	jnz iwdsort_100
iwdsort_50:
	mov edi, 0x2f
	cmp ebx, edi
	jge iwdsort_110
iwdsort_60:
	mov eax, 0xffffffff
iwdsort_250:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iwdsort_80:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iwdsort_20:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	xor ebx, 0x1
	mov [_ZZ15IwdFileLanguagePKcE7iString], ebx
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x28]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x9
	ja iwdsort_120
	mov eax, ebx
	shl eax, 0x6
	mov byte [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], 0x0
iwdsort_170:
	mov eax, ebx
	shl eax, 0x6
	add eax, _ZZ15IwdFileLanguagePKcE17szIwdLanguageName
	mov [ebp-0x20], eax
	xor ebx, 0x1
	mov [_ZZ15IwdFileLanguagePKcE7iString], ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x24]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x9
	ja iwdsort_130
	mov eax, ebx
	shl eax, 0x6
	mov byte [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], 0x0
iwdsort_220:
	shl ebx, 0x6
	add ebx, _ZZ15IwdFileLanguagePKcE17szIwdLanguageName
	mov dword [esp+0x4], _cstring_english
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz iwdsort_140
	mov dword [esp+0x4], _cstring_english
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz iwdsort_10
iwdsort_70:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
iwdsort_120:
	shl ebx, 0x6
	lea eax, [ebx+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor esi, esi
	jmp iwdsort_150
iwdsort_180:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0x8
	and eax, 0x1
iwdsort_190:
	test eax, eax
	jz iwdsort_160
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	mov edx, ebx
	shl edx, 0x6
	movzx eax, byte [edi]
	mov [edx+esi+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], al
	add esi, 0x1
	cmp esi, 0x36
	jz iwdsort_170
iwdsort_150:
	mov eax, [ebp-0x28]
	add eax, esi
	lea edi, [eax+0xa]
	movzx eax, byte [eax+0xa]
	test al, al
	jz iwdsort_160
	movsx edx, al
	test edx, 0xffffff80
	jz iwdsort_180
	mov dword [esp+0x4], 0x100
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp iwdsort_190
iwdsort_130:
	shl ebx, 0x6
	lea eax, [ebx+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor esi, esi
	jmp iwdsort_200
iwdsort_230:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0x8
	and eax, 0x1
iwdsort_240:
	test eax, eax
	jz iwdsort_210
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	mov edx, ebx
	shl edx, 0x6
	movzx eax, byte [edi]
	mov [edx+esi+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], al
	add esi, 0x1
	cmp esi, 0x36
	jz iwdsort_220
iwdsort_200:
	mov eax, [ebp-0x24]
	add eax, esi
	lea edi, [eax+0xa]
	movzx eax, byte [eax+0xa]
	test al, al
	jz iwdsort_210
	movsx edx, al
	test edx, 0xffffff80
	jz iwdsort_230
	mov dword [esp+0x4], 0x100
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp iwdsort_240
iwdsort_210:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	jmp iwdsort_220
iwdsort_160:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	jmp iwdsort_170
iwdsort_140:
	mov dword [esp+0x4], _cstring_english
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz iwdsort_10
	mov eax, 0xffffffff
	jmp iwdsort_250


;FS_AddIwdFilesForGameDirectory(char const*, char const*)
FS_AddIwdFilesForGameDirectory:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12dc
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x178]
	mov [esp], eax
	mov ecx, _cstring_null
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call FS_BuildOSPathForThread
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x178]
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x17a], 0x0
	mov dword [esp+0x10], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_iwd
	lea edx, [ebp-0x178]
	mov [esp], edx
	call Sys_ListFiles
	mov [ebp-0x12b0], eax
	mov eax, [ebp-0x1c]
	cmp eax, 0x400
	jg FS_AddIwdFilesForGameDirectory_10
FS_AddIwdFilesForGameDirectory_400:
	mov dword [esp+0x4], _cstring_main
	mov edx, [ebp+0xc]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jz FS_AddIwdFilesForGameDirectory_20
FS_AddIwdFilesForGameDirectory_380:
	mov byte [ebp-0x12b5], 0x0
FS_AddIwdFilesForGameDirectory_390:
	mov esi, [ebp-0x1c]
	test esi, esi
	jnz FS_AddIwdFilesForGameDirectory_30
	cmp byte [ebp-0x12b5], 0x0
	jnz FS_AddIwdFilesForGameDirectory_40
FS_AddIwdFilesForGameDirectory_30:
	mov edx, [ebp-0x1c]
	test edx, edx
	jg FS_AddIwdFilesForGameDirectory_50
	lea edi, [ebp-0x1278]
FS_AddIwdFilesForGameDirectory_360:
	mov dword [esp+0xc], iwdsort
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], edi
	call qsort
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jg FS_AddIwdFilesForGameDirectory_60
FS_AddIwdFilesForGameDirectory_100:
	mov eax, [ebp-0x12b0]
	mov [esp], eax
	call Sys_FreeFileList
	add esp, 0x12dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_AddIwdFilesForGameDirectory_60:
	mov dword [ebp-0x1280], 0x1
	add edi, 0x4
	mov [ebp-0x12bc], edi
	mov ecx, edi
	jmp FS_AddIwdFilesForGameDirectory_70
FS_AddIwdFilesForGameDirectory_110:
	cmp byte [ebp-0x12b5], 0x0
	jnz FS_AddIwdFilesForGameDirectory_80
FS_AddIwdFilesForGameDirectory_240:
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x12b4], 0x0
FS_AddIwdFilesForGameDirectory_260:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x178]
	mov [esp], eax
	mov edx, [ebp-0x12bc]
	mov ecx, [edx-0x4]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call FS_BuildOSPathForThread
	mov ecx, [ebp-0x12bc]
	mov ecx, [ecx-0x4]
	mov [ebp-0x12a8], ecx
	lea eax, [ebp-0x178]
	mov [esp], eax
	call unzOpen
	mov [ebp-0x12a0], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x12a0]
	mov [esp], edx
	call unzGetGlobalInfo
	test eax, eax
	jz FS_AddIwdFilesForGameDirectory_90
FS_AddIwdFilesForGameDirectory_140:
	mov eax, [ebp-0x1280]
	add dword [ebp-0x1280], 0x1
	add dword [ebp-0x12bc], 0x4
	cmp [ebp-0x1c], eax
	jle FS_AddIwdFilesForGameDirectory_100
	mov ecx, [ebp-0x12bc]
FS_AddIwdFilesForGameDirectory_70:
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring___________
	mov eax, [ecx-0x4]
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_110
	mov edx, [ebp-0x12bc]
	mov eax, [edx-0x4]
	mov dword [eax], 0x61636f6c
	mov dword [eax+0x4], 0x657a696c
	mov word [eax+0x8], 0x5f64
	mov ecx, [edx-0x4]
	mov [ebp-0x12ac], ecx
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	xor ebx, 0x1
	mov [_ZZ15IwdFileLanguagePKcE7iString], ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x12ac]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x9
	ja FS_AddIwdFilesForGameDirectory_120
	mov eax, ebx
	shl eax, 0x6
	mov byte [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], 0x0
FS_AddIwdFilesForGameDirectory_320:
	mov eax, ebx
	shl eax, 0x6
	lea edx, [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName]
	cmp byte [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], 0x0
	jnz FS_AddIwdFilesForGameDirectory_130
	mov edx, [ebp-0x12bc]
	mov eax, [edx-0x4]
	mov [esp+0x10], eax
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_localize
	mov dword [esp], 0xa
	call Com_PrintWarning
	jmp FS_AddIwdFilesForGameDirectory_140
FS_AddIwdFilesForGameDirectory_90:
	mov eax, [ebp-0x28]
	add [fs_iwdFileCount], eax
	mov ecx, [ebp-0x12a0]
	mov [esp], ecx
	call unzGoToFirstFile
	mov eax, [ebp-0x28]
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_150
	xor esi, esi
FS_AddIwdFilesForGameDirectory_420:
	mov eax, [ebp-0x28]
	lea eax, [eax+eax*2]
	lea eax, [esi+eax*4]
	mov [esp], eax
	call Z_MallocInternal
	mov [ebp-0x12a4], eax
	mov eax, [ebp-0x28]
	lea edx, [eax+eax*2]
	mov ecx, [ebp-0x12a4]
	lea edx, [ecx+edx*4]
	mov [ebp-0x1294], edx
	shl eax, 0x2
	mov [esp], eax
	call Z_MallocInternal
	mov [ebp-0x1298], eax
	mov edx, [ebp-0x28]
	mov edi, 0x1
	mov eax, 0xb
FS_AddIwdFilesForGameDirectory_170:
	cmp edx, edi
	jb FS_AddIwdFilesForGameDirectory_160
	add edi, edi
	sub eax, 0x1
	jnz FS_AddIwdFilesForGameDirectory_170
FS_AddIwdFilesForGameDirectory_160:
	lea eax, [edi*4+0x324]
	mov [esp], eax
	call Z_MallocInternal
	mov esi, eax
	mov [eax+0x318], edi
	lea eax, [eax+0x324]
	mov [esi+0x31c], eax
	test edi, edi
	jz FS_AddIwdFilesForGameDirectory_180
	xor edx, edx
FS_AddIwdFilesForGameDirectory_190:
	mov eax, [esi+0x31c]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp [esi+0x318], edx
	ja FS_AddIwdFilesForGameDirectory_190
FS_AddIwdFilesForGameDirectory_180:
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x178]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncpyz
	lea ebx, [esi+0x100]
	mov dword [esp+0x8], 0x100
	mov edx, [ebp-0x12a8]
	mov [esp+0x4], edx
	mov [esp], ebx
	call Q_strncpyz
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x4
	ja FS_AddIwdFilesForGameDirectory_200
FS_AddIwdFilesForGameDirectory_410:
	mov edx, [ebp-0x12a0]
	mov [esi+0x300], edx
	mov eax, [ebp-0x28]
	mov [esi+0x310], eax
	mov dword [esi+0x30c], 0x0
	mov [esp], edx
	call unzGoToFirstFile
	mov eax, [ebp-0x28]
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_210
	xor ebx, ebx
FS_AddIwdFilesForGameDirectory_520:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x1298]
	mov [esp], ecx
	call Com_BlockChecksumKey32
	mov [esi+0x304], eax
	mov edx, [fs_checksumFeed]
	test edx, edx
	jnz FS_AddIwdFilesForGameDirectory_220
	mov [esi+0x308], eax
FS_AddIwdFilesForGameDirectory_440:
	mov edx, [ebp-0x1298]
	mov [esp], edx
	call Z_FreeInternal
	mov ecx, [ebp-0x12a4]
	mov [esi+0x320], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [esi+0x200]
	mov [esp], eax
	call strcpy
	mov dword [esp], 0x1c
	call Z_MallocInternal
	mov edx, eax
	mov [eax+0x4], esi
	mov ecx, [ebp-0x12b4]
	mov [eax+0xc], ecx
	mov eax, [ebp-0x20]
	mov [edx+0x18], eax
	test ecx, ecx
	jnz FS_AddIwdFilesForGameDirectory_230
FS_AddIwdFilesForGameDirectory_270:
	mov ecx, fs_searchpaths
	mov eax, [ecx]
FS_AddIwdFilesForGameDirectory_280:
	mov [edx], eax
	mov [ecx], edx
	jmp FS_AddIwdFilesForGameDirectory_140
FS_AddIwdFilesForGameDirectory_80:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_iw_
	mov edx, [ebp-0x12bc]
	mov eax, [edx-0x4]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jz FS_AddIwdFilesForGameDirectory_240
	mov ecx, [ebp-0x12bc]
	mov eax, [ecx-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_invalid_
	mov dword [esp], 0xa
	call Com_PrintWarning
	jmp FS_AddIwdFilesForGameDirectory_140
FS_AddIwdFilesForGameDirectory_130:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call SEH_GetLanguageIndexForName
	test eax, eax
	jz FS_AddIwdFilesForGameDirectory_250
	mov dword [ebp-0x12b4], 0x1
	jmp FS_AddIwdFilesForGameDirectory_260
FS_AddIwdFilesForGameDirectory_230:
	mov eax, [fs_searchpaths]
	test eax, eax
	jz FS_AddIwdFilesForGameDirectory_270
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz FS_AddIwdFilesForGameDirectory_270
FS_AddIwdFilesForGameDirectory_290:
	mov ecx, eax
	mov eax, [eax]
	test eax, eax
	jz FS_AddIwdFilesForGameDirectory_280
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz FS_AddIwdFilesForGameDirectory_290
	mov eax, [ecx]
	mov [edx], eax
	mov [ecx], edx
	jmp FS_AddIwdFilesForGameDirectory_140
FS_AddIwdFilesForGameDirectory_120:
	shl ebx, 0x6
	lea eax, [ebx+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor edi, edi
	jmp FS_AddIwdFilesForGameDirectory_300
FS_AddIwdFilesForGameDirectory_330:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0x8
	and eax, 0x1
	test eax, eax
	jz FS_AddIwdFilesForGameDirectory_310
FS_AddIwdFilesForGameDirectory_340:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	mov edx, ebx
	shl edx, 0x6
	movzx eax, byte [esi]
	mov [edx+edi+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], al
	add edi, 0x1
	cmp edi, 0x36
	jz FS_AddIwdFilesForGameDirectory_320
FS_AddIwdFilesForGameDirectory_300:
	mov eax, [ebp-0x12ac]
	add eax, edi
	lea esi, [eax+0xa]
	movzx eax, byte [eax+0xa]
	test al, al
	jz FS_AddIwdFilesForGameDirectory_310
	movsx edx, al
	test edx, 0xffffff80
	jz FS_AddIwdFilesForGameDirectory_330
	mov dword [esp+0x4], 0x100
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_340
FS_AddIwdFilesForGameDirectory_310:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	jmp FS_AddIwdFilesForGameDirectory_320
FS_AddIwdFilesForGameDirectory_50:
	mov ebx, 0x1
	lea edi, [ebp-0x1278]
	lea esi, [ebp-0x1274]
	jmp FS_AddIwdFilesForGameDirectory_350
FS_AddIwdFilesForGameDirectory_370:
	mov eax, ebx
	mov edx, [ebp-0x1c]
	add ebx, 0x1
	add esi, 0x4
	cmp edx, eax
	jle FS_AddIwdFilesForGameDirectory_360
FS_AddIwdFilesForGameDirectory_350:
	mov edx, [ebp-0x12b0]
	mov eax, [edx+ebx*4-0x4]
	mov [esi-0x4], eax
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_localized_
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_370
	mov eax, [esi-0x4]
	mov dword [eax], 0x20202020
	mov dword [eax+0x4], 0x20202020
	mov word [eax+0x8], 0x2020
	jmp FS_AddIwdFilesForGameDirectory_370
FS_AddIwdFilesForGameDirectory_20:
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_380
	mov byte [ebp-0x12b5], 0x1
	jmp FS_AddIwdFilesForGameDirectory_390
FS_AddIwdFilesForGameDirectory_10:
	mov dword [esp+0x14], 0x400
	mov [esp+0x10], eax
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_exceeded
	mov dword [esp], 0xa
	call Com_PrintWarning
	mov dword [ebp-0x1c], 0x400
	jmp FS_AddIwdFilesForGameDirectory_400
FS_AddIwdFilesForGameDirectory_200:
	mov dword [esp+0x4], _cstring_iwd1
	lea eax, [ebx+eax-0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_410
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov byte [ecx+esi+0xfb], 0x0
	jmp FS_AddIwdFilesForGameDirectory_410
FS_AddIwdFilesForGameDirectory_150:
	xor ebx, ebx
	xor esi, esi
FS_AddIwdFilesForGameDirectory_430:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x100
	lea eax, [ebp-0x278]
	mov [esp+0x8], eax
	lea edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x12a0]
	mov [esp], ecx
	call unzGetCurrentFileInfo
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_420
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x278]
	repne scasb
	not ecx
	lea esi, [ecx+esi]
	mov edx, [ebp-0x12a0]
	mov [esp], edx
	call unzGoToNextFile
	add ebx, 0x1
	cmp [ebp-0x28], ebx
	ja FS_AddIwdFilesForGameDirectory_430
	jmp FS_AddIwdFilesForGameDirectory_420
FS_AddIwdFilesForGameDirectory_220:
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1298]
	mov [esp], eax
	call Com_BlockChecksumKey32
	mov [esi+0x308], eax
	jmp FS_AddIwdFilesForGameDirectory_440
FS_AddIwdFilesForGameDirectory_210:
	mov ecx, [ebp-0x12a4]
	mov [ebp-0x1284], ecx
	mov dword [ebp-0x127c], 0x0
	mov dword [ebp-0x129c], 0x0
	jmp FS_AddIwdFilesForGameDirectory_450
FS_AddIwdFilesForGameDirectory_480:
	mov dword [ebp-0x128c], 0x0
	mov dword [ebp-0x1288], 0x0
	xor ebx, ebx
FS_AddIwdFilesForGameDirectory_510:
	mov ecx, [ebp-0x1294]
	mov edx, [ebp-0x1284]
	mov [edx+0x4], ecx
	lea eax, [ebp-0x278]
	mov [esp+0x4], eax
	mov [esp], ecx
	call strcpy
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	lea edi, [ebp-0x278]
	repne scasb
	not ecx
	add [ebp-0x1294], ecx
	mov edx, [ebp-0x1284]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x12a0]
	mov [esp], ecx
	call unzGetCurrentFileInfoPosition
	mov eax, [ebp-0x1288]
	xor [ebp-0x128c], eax
	xor ebx, [ebp-0x128c]
	mov eax, [ebp-0x1290]
	sub eax, 0x1
	and ebx, eax
	lea edx, [ebx*4]
	mov eax, [esi+0x31c]
	mov eax, [eax+edx]
	mov ecx, [ebp-0x1284]
	mov [ecx+0x8], eax
	mov eax, [esi+0x31c]
	mov [edx+eax], ecx
	mov eax, [ebp-0x12a0]
	mov [esp], eax
	call unzGoToNextFile
	add dword [ebp-0x127c], 0x1
	add dword [ebp-0x1284], 0xc
	mov edx, [ebp-0x127c]
	cmp edx, [ebp-0x28]
	jae FS_AddIwdFilesForGameDirectory_460
FS_AddIwdFilesForGameDirectory_450:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x100
	lea eax, [ebp-0x278]
	mov [esp+0x8], eax
	lea edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x12a0]
	mov [esp], ecx
	call unzGetCurrentFileInfo
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_460
	mov edi, [ebp-0x5c]
	test edi, edi
	jz FS_AddIwdFilesForGameDirectory_470
	mov eax, [ebp-0x64]
	mov edx, [ebp-0x129c]
	mov ecx, [ebp-0x1298]
	mov [ecx+edx*4], eax
	add edx, 0x1
	mov [ebp-0x129c], edx
FS_AddIwdFilesForGameDirectory_470:
	lea eax, [ebp-0x278]
	mov [esp], eax
	call Q_strlwr
	mov edx, [esi+0x318]
	mov [ebp-0x1290], edx
	movzx eax, byte [ebp-0x278]
	test al, al
	jz FS_AddIwdFilesForGameDirectory_480
	mov dword [ebp-0x128c], 0x0
	mov ebx, 0x77
FS_AddIwdFilesForGameDirectory_500:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, eax
	cmp eax, 0x2e
	jz FS_AddIwdFilesForGameDirectory_490
	cmp eax, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	imul edx, ebx
	add [ebp-0x128c], edx
	movzx eax, byte [ebx+ebp-0x2ee]
	add ebx, 0x1
	test al, al
	jnz FS_AddIwdFilesForGameDirectory_500
	mov eax, [ebp-0x128c]
	sar eax, 0xa
	mov [ebp-0x1288], eax
	mov ebx, [ebp-0x128c]
	sar ebx, 0x14
	jmp FS_AddIwdFilesForGameDirectory_510
FS_AddIwdFilesForGameDirectory_460:
	mov ebx, [ebp-0x129c]
	shl ebx, 0x2
	jmp FS_AddIwdFilesForGameDirectory_520
FS_AddIwdFilesForGameDirectory_40:
	mov dword [esp+0x4], _cstring_no_iwd_files_fou
	mov dword [esp], 0x1
	call Com_Error
	jmp FS_AddIwdFilesForGameDirectory_30
FS_AddIwdFilesForGameDirectory_250:
	mov edx, [ebp-0x12bc]
	mov eax, [edx-0x4]
	mov [esp+0x10], eax
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_localize1
	mov dword [esp], 0xa
	call Com_PrintWarning
	mov eax, [_ZZ30FS_AddIwdFilesForGameDirectoryPKcS0_E16bLanguagesListed]
	test eax, eax
	jnz FS_AddIwdFilesForGameDirectory_140
	mov dword [esp+0x4], _cstring_supported_langua
	mov dword [esp], 0xa
	call Com_Printf
	xor ebx, ebx
FS_AddIwdFilesForGameDirectory_530:
	mov [esp], ebx
	call SEH_GetLanguageName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_____s
	mov dword [esp], 0xa
	call Com_Printf
	add ebx, 0x1
	cmp ebx, 0xf
	jnz FS_AddIwdFilesForGameDirectory_530
	mov dword [_ZZ30FS_AddIwdFilesForGameDirectoryPKcS0_E16bLanguagesListed], 0x1
	jmp FS_AddIwdFilesForGameDirectory_140
FS_AddIwdFilesForGameDirectory_490:
	mov ecx, [ebp-0x128c]
	sar ecx, 0xa
	mov [ebp-0x1288], ecx
	mov ebx, [ebp-0x128c]
	sar ebx, 0x14
	jmp FS_AddIwdFilesForGameDirectory_510
	nop


;FS_AddGameDirectory(char const*, char const*, int, int)
FS_AddGameDirectory:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov ebx, eax
	mov [ebp-0x15c], edx
	mov esi, ecx
	test ecx, ecx
	jz FS_AddGameDirectory_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SEH_GetLanguageName
	mov [esp+0x10], eax
	mov edi, [ebp-0x15c]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Com_sprintf
FS_AddGameDirectory_100:
	mov edi, [fs_searchpaths]
	test edi, edi
	jnz FS_AddGameDirectory_20
	jmp FS_AddGameDirectory_30
FS_AddGameDirectory_40:
	mov edi, [edi]
	test edi, edi
	jz FS_AddGameDirectory_30
FS_AddGameDirectory_20:
	mov eax, [edi+0x8]
	test eax, eax
	jz FS_AddGameDirectory_40
	mov [esp+0x4], ebx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_AddGameDirectory_40
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	add eax, 0x100
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_AddGameDirectory_40
	mov edx, [edi+0xc]
	cmp esi, edx
	jz FS_AddGameDirectory_50
	mov eax, _cstring_localized
	test edx, edx
	mov edx, _cstring_nonlocalized
	cmovz eax, edx
	mov [esp+0x10], eax
	lea eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_game_fol
	mov dword [esp], 0xa
	call Com_PrintWarning
FS_AddGameDirectory_50:
	mov eax, [edi+0xc]
	test eax, eax
	jz FS_AddGameDirectory_60
	mov eax, [ebp+0x8]
	cmp eax, [edi+0x18]
	jz FS_AddGameDirectory_60
	lea edi, [ebp-0x58]
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_game_fol1
	mov dword [esp], 0xa
	call Com_PrintWarning
	jmp FS_AddGameDirectory_60
FS_AddGameDirectory_30:
	test esi, esi
	jz FS_AddGameDirectory_70
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x158]
	mov [esp], eax
	mov ecx, _cstring_null
	lea edx, [ebp-0x58]
	mov eax, ebx
	call FS_BuildOSPathForThread
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x158]
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x15a], 0x0
	lea eax, [ebp-0x158]
	mov [esp], eax
	call Sys_DirectoryHasContents
	test eax, eax
	jz FS_AddGameDirectory_60
FS_AddGameDirectory_120:
	mov dword [esp], 0x1c
	call Z_MallocInternal
	mov edi, eax
	mov dword [esp], 0x200
	call Z_MallocInternal
	mov [edi+0x8], eax
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov [esp], eax
	call Q_strncpyz
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	add eax, 0x100
	mov [esp], eax
	call Q_strncpyz
	mov [edi+0xc], esi
	mov eax, [ebp+0x8]
	mov [edi+0x18], eax
	mov dword [esp+0x4], _cstring_main
	mov eax, [ebp-0x15c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	setz al
	movzx eax, al
	mov [edi+0x10], eax
	mov dword [esp+0x4], _cstring_players
	mov eax, [ebp-0x15c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	setz al
	movzx eax, al
	mov [edi+0x14], eax
	mov esi, [edi+0xc]
	test esi, esi
	jz FS_AddGameDirectory_80
	mov eax, [fs_searchpaths]
	test eax, eax
	jz FS_AddGameDirectory_80
	mov edx, [eax+0xc]
	test edx, edx
	jz FS_AddGameDirectory_90
FS_AddGameDirectory_80:
	mov edx, fs_searchpaths
	mov eax, [edx]
FS_AddGameDirectory_110:
	mov [edi], eax
	mov [edx], edi
	lea edi, [ebp-0x58]
	mov [esp+0x4], edi
	mov [esp], ebx
	call FS_AddIwdFilesForGameDirectory
FS_AddGameDirectory_60:
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_AddGameDirectory_10:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], edx
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Q_strncpyz
	jmp FS_AddGameDirectory_100
FS_AddGameDirectory_90:
	mov edx, eax
	mov eax, [eax]
	test eax, eax
	jz FS_AddGameDirectory_110
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz FS_AddGameDirectory_90
	mov eax, [edx]
	jmp FS_AddGameDirectory_110
FS_AddGameDirectory_70:
	mov dword [esp+0x8], 0x100
	lea edi, [ebp-0x58]
	mov [esp+0x4], edi
	mov dword [esp], fs_gamedir
	call Q_strncpyz
	jmp FS_AddGameDirectory_120
	nop


;FS_FOpenFileReadForThread(char const*, int*, FsThread)
FS_FOpenFileReadForThread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x35c
	mov [ebp-0x340], eax
	mov [ebp-0x344], edx
	mov [ebp-0x348], ecx
	mov ecx, 0x100
	lea edx, [ebp-0x118]
	call FS_SanitizeFilename
	test al, al
	jz FS_FOpenFileReadForThread_10
	mov eax, [ebp-0x344]
	test eax, eax
	jz FS_FOpenFileReadForThread_20
	mov edx, [ebp-0x348]
	mov [esp], edx
	call FS_HandleForFile
	mov ecx, [ebp-0x344]
	mov [ecx], eax
	test eax, eax
	jz FS_FOpenFileReadForThread_30
	mov eax, [fs_searchpaths]
	mov [ebp-0x31c], eax
	test eax, eax
	jz FS_FOpenFileReadForThread_40
	mov byte [ebp-0x32d], 0x0
	mov dword [ebp-0x334], 0x0
FS_FOpenFileReadForThread_80:
	mov edx, [ebp-0x31c]
	mov edi, [edx+0xc]
	test edi, edi
	jz FS_FOpenFileReadForThread_50
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jnz FS_FOpenFileReadForThread_60
	mov ebx, [edx+0x18]
	call SEH_GetCurrentLanguage
	cmp ebx, eax
	jz FS_FOpenFileReadForThread_70
FS_FOpenFileReadForThread_60:
	mov edx, [ebp-0x31c]
FS_FOpenFileReadForThread_360:
	mov edx, [edx]
	mov [ebp-0x31c], edx
	test edx, edx
	jnz FS_FOpenFileReadForThread_80
FS_FOpenFileReadForThread_790:
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jz FS_FOpenFileReadForThread_90
	mov eax, [ebp-0x348]
	test eax, eax
	jz FS_FOpenFileReadForThread_100
FS_FOpenFileReadForThread_90:
	mov eax, [ebp-0x344]
	mov dword [eax], 0x0
	mov eax, [ebp-0x334]
	test eax, eax
	jz FS_FOpenFileReadForThread_110
	mov edx, [ebp-0x334]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_impure_client_de
	mov dword [esp], _cstring_ss1
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
FS_FOpenFileReadForThread_110:
	cmp byte [ebp-0x32d], 0x0
	jz FS_FOpenFileReadForThread_30
	mov eax, [fs_numServerIwds]
	test eax, eax
	jnz FS_FOpenFileReadForThread_120
	mov eax, [fs_restrict]
	cmp byte [eax+0xc], 0x0
	jz FS_FOpenFileReadForThread_130
FS_FOpenFileReadForThread_120:
	mov ecx, [ebp-0x340]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_s_must_be_
	mov dword [esp], 0xa
	call Com_Printf
	mov eax, 0xfffffffe
	add esp, 0x35c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_FOpenFileReadForThread_520:
	mov edx, [ebp-0x33c]
FS_FOpenFileReadForThread_500:
	mov eax, [edx+0x8]
	test eax, eax
	jz FS_FOpenFileReadForThread_140
	lea edx, [eax+0x100]
	mov ecx, [ebp-0x348]
	mov [esp+0x4], ecx
	lea ecx, [ebp-0x218]
	mov [esp], ecx
	lea ecx, [ebp-0x118]
	call FS_BuildOSPathForThread
	lea eax, [ebp-0x218]
	mov [esp], eax
	call FS_FileOpenReadBinary
	test eax, eax
	jnz FS_FOpenFileReadForThread_150
FS_FOpenFileReadForThread_480:
	mov eax, [ebp-0x33c]
FS_FOpenFileReadForThread_720:
	mov eax, [eax]
	mov [ebp-0x33c], eax
	test eax, eax
	jnz FS_FOpenFileReadForThread_160
FS_FOpenFileReadForThread_30:
	mov eax, 0xffffffff
FS_FOpenFileReadForThread_440:
	add esp, 0x35c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_FOpenFileReadForThread_50:
	mov eax, edx
FS_FOpenFileReadForThread_670:
	mov eax, [eax+0x4]
	mov [ebp-0x324], eax
	test eax, eax
	jz FS_FOpenFileReadForThread_170
	mov edi, [eax+0x318]
	cmp byte [ebp-0x118], 0x0
	jnz FS_FOpenFileReadForThread_180
	xor esi, esi
	xor eax, eax
	xor edx, edx
FS_FOpenFileReadForThread_640:
	xor eax, esi
	xor edx, eax
	lea eax, [edi-0x1]
	and edx, eax
	lea eax, [edx*4]
	mov edx, [ebp-0x324]
	add eax, [edx+0x31c]
	mov eax, [eax]
	test eax, eax
	jz FS_FOpenFileReadForThread_170
	mov [ebp-0x320], eax
	mov ecx, eax
FS_FOpenFileReadForThread_270:
	mov edi, [ecx+0x4]
	lea eax, [ebp-0x118]
	mov [ebp-0x328], eax
	mov edx, eax
	jmp FS_FOpenFileReadForThread_190
FS_FOpenFileReadForThread_240:
	cmp esi, 0x3a
	jz FS_FOpenFileReadForThread_200
	cmp ebx, 0x5c
	jz FS_FOpenFileReadForThread_210
FS_FOpenFileReadForThread_250:
	cmp ebx, 0x3a
	jz FS_FOpenFileReadForThread_210
	cmp esi, ebx
	jnz FS_FOpenFileReadForThread_220
FS_FOpenFileReadForThread_260:
	test esi, esi
	jz FS_FOpenFileReadForThread_230
	mov edx, [ebp-0x328]
FS_FOpenFileReadForThread_190:
	movsx esi, byte [edi]
	add edi, 0x1
	movsx ebx, byte [edx]
	add edx, 0x1
	mov [ebp-0x328], edx
	mov [esp], esi
	call I_islower
	lea edx, [esi-0x20]
	test al, al
	cmovnz esi, edx
	mov [esp], ebx
	call I_islower
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	cmp esi, 0x5c
	jnz FS_FOpenFileReadForThread_240
FS_FOpenFileReadForThread_200:
	mov esi, 0x2f
	cmp ebx, 0x5c
	jnz FS_FOpenFileReadForThread_250
FS_FOpenFileReadForThread_210:
	mov ebx, 0x2f
	cmp esi, ebx
	jz FS_FOpenFileReadForThread_260
FS_FOpenFileReadForThread_220:
	mov ecx, [ebp-0x320]
	mov ecx, [ecx+0x8]
	mov [ebp-0x320], ecx
	test ecx, ecx
	jz FS_FOpenFileReadForThread_60
	mov ecx, [ebp-0x320]
	jmp FS_FOpenFileReadForThread_270
FS_FOpenFileReadForThread_230:
	cmp byte [g_disablePureCheck], 0x0
	jnz FS_FOpenFileReadForThread_280
	mov eax, [ebp-0x31c]
	mov esi, [eax+0xc]
	test esi, esi
	jnz FS_FOpenFileReadForThread_280
	mov ebx, [eax+0x14]
	test ebx, ebx
	jnz FS_FOpenFileReadForThread_280
	mov esi, [fs_numServerIwds]
	cmp esi, 0x0
	jz FS_FOpenFileReadForThread_280
	jle FS_FOpenFileReadForThread_290
	mov ecx, [ebp-0x324]
	mov ebx, [ecx+0x304]
	cmp ebx, [fs_serverIwds]
	jz FS_FOpenFileReadForThread_300
	xor ecx, ecx
	mov edx, fs_serverIwds
FS_FOpenFileReadForThread_310:
	add ecx, 0x1
	cmp esi, ecx
	jz FS_FOpenFileReadForThread_290
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp ebx, eax
	jnz FS_FOpenFileReadForThread_310
FS_FOpenFileReadForThread_280:
	mov edx, [ebp-0x324]
FS_FOpenFileReadForThread_800:
	movzx eax, byte [edx+0x314]
	test al, al
	jz FS_FOpenFileReadForThread_320
	mov eax, edx
FS_FOpenFileReadForThread_660:
	add eax, 0x30c
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call InterlockedCompareExchange
	sub eax, 0x1
	jz FS_FOpenFileReadForThread_330
	mov eax, [ebp-0x344]
	mov edx, [eax]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov dword [eax*4+fsh+0x4], 0x0
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	mov eax, [ebp-0x324]
	mov ecx, [eax+0x300]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov [eax*4+fsh], ecx
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
FS_FOpenFileReadForThread_730:
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x118]
	mov [esp+0x4], eax
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	lea eax, [eax*4+fsh+0x1c]
	mov [esp], eax
	call Q_strncpyz
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov edx, [ebp-0x324]
	mov [eax*4+fsh+0x14], edx
	mov edx, [ecx]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov edi, [eax*4+fsh]
	mov ebx, [edi]
	mov esi, [edi+0x7c]
	mov ecx, [ebp-0x320]
	mov eax, [ecx]
	mov ecx, [ebp-0x324]
	mov edx, [ecx+0x300]
	mov [esp+0x4], eax
	mov [esp], edx
	call unzSetCurrentFileInfoPosition
	mov edx, [ebp-0x324]
	mov eax, [edx+0x300]
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	mov [esp], edi
	call Com_Memcpy
	mov [edi], ebx
	mov [edi+0x7c], esi
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov eax, [eax*4+fsh]
	mov [esp], eax
	call unzOpenCurrentFile
	mov eax, [ebp-0x344]
	mov edx, [eax]
	mov eax, [ebp-0x320]
	mov ecx, [eax]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov [eax*4+fsh+0x10], ecx
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jz FS_FOpenFileReadForThread_340
	mov eax, [ebp-0x348]
	test eax, eax
	jz FS_FOpenFileReadForThread_350
FS_FOpenFileReadForThread_340:
	mov eax, [edi+0x44]
FS_FOpenFileReadForThread_710:
	add esp, 0x35c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_FOpenFileReadForThread_290:
	mov ecx, [ebp-0x324]
	mov [ebp-0x334], ecx
	mov edx, [ebp-0x31c]
	jmp FS_FOpenFileReadForThread_360
FS_FOpenFileReadForThread_170:
	mov eax, [ebp-0x31c]
	mov esi, [eax+0x8]
	test esi, esi
	jz FS_FOpenFileReadForThread_370
	mov eax, [eax+0x10]
	test eax, eax
	jnz FS_FOpenFileReadForThread_380
	mov eax, [fs_restrict]
	cmp byte [eax+0xc], 0x0
	jnz FS_FOpenFileReadForThread_380
	mov eax, [fs_numServerIwds]
	test eax, eax
	jnz FS_FOpenFileReadForThread_380
FS_FOpenFileReadForThread_450:
	lea edi, [esi+0x100]
	mov eax, [ebp-0x348]
	mov [esp+0x4], eax
	lea edx, [ebp-0x218]
	mov [esp], edx
	lea ecx, [ebp-0x118]
	mov edx, edi
	mov eax, esi
	call FS_BuildOSPathForThread
	mov ecx, [ebp-0x344]
	mov ebx, [ecx]
	lea eax, [ebp-0x218]
	mov [esp], eax
	call FS_FileOpenReadBinary
	lea edx, [ebx+ebx*8]
	shl edx, 0x3
	sub edx, ebx
	mov [edx*4+fsh], eax
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov ebx, [eax*4+fsh]
	test ebx, ebx
	jz FS_FOpenFileReadForThread_60
	mov eax, [ebp-0x31c]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz FS_FOpenFileReadForThread_390
	mov eax, [eax+0x14]
	test eax, eax
	jz FS_FOpenFileReadForThread_400
FS_FOpenFileReadForThread_390:
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x118]
	mov [esp+0x4], eax
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	lea eax, [eax*4+fsh+0x1c]
	mov [esp], eax
	call Q_strncpyz
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov dword [eax*4+fsh+0x14], 0x0
	mov eax, [fs_debug]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz FS_FOpenFileReadForThread_410
	mov ecx, [ebp-0x348]
	test ecx, ecx
	jnz FS_FOpenFileReadForThread_410
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fs_fopenfileread
	mov dword [esp], 0xa
	call Com_Printf
FS_FOpenFileReadForThread_410:
	mov eax, [fs_copyfiles]
	cmp byte [eax+0xc], 0x0
	jnz FS_FOpenFileReadForThread_420
FS_FOpenFileReadForThread_820:
	mov eax, [ebp-0x344]
	mov edx, [eax]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov edx, [eax+fsh+0x14]
	test edx, edx
	jz FS_FOpenFileReadForThread_430
	mov eax, [eax+fsh]
	mov eax, [eax+0x44]
	jmp FS_FOpenFileReadForThread_440
FS_FOpenFileReadForThread_380:
	mov edx, [ebp-0x31c]
	mov eax, [edx+0xc]
	test eax, eax
	jnz FS_FOpenFileReadForThread_450
	mov edi, [edx+0x14]
	test edi, edi
	jnz FS_FOpenFileReadForThread_450
	mov dword [esp+0x4], _cstring_bantxt
	lea ecx, [ebp-0x118]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz FS_FOpenFileReadForThread_460
	mov eax, [ebp-0x31c]
	mov esi, [eax+0x8]
	jmp FS_FOpenFileReadForThread_450
FS_FOpenFileReadForThread_20:
	mov edx, [fs_searchpaths]
	mov [ebp-0x33c], edx
	test edx, edx
	jz FS_FOpenFileReadForThread_30
FS_FOpenFileReadForThread_160:
	mov ecx, [ebp-0x33c]
	mov eax, [ecx+0xc]
	test eax, eax
	jz FS_FOpenFileReadForThread_470
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jnz FS_FOpenFileReadForThread_480
	mov ebx, [ecx+0x18]
	call SEH_GetCurrentLanguage
	cmp ebx, eax
	jnz FS_FOpenFileReadForThread_480
	mov edx, [ebp-0x33c]
	jmp FS_FOpenFileReadForThread_490
FS_FOpenFileReadForThread_470:
	mov edx, ecx
FS_FOpenFileReadForThread_490:
	mov ecx, [edx+0x4]
	test ecx, ecx
	jz FS_FOpenFileReadForThread_500
	mov edi, [ecx+0x318]
	cmp byte [ebp-0x118], 0x0
	jnz FS_FOpenFileReadForThread_510
	xor esi, esi
	xor eax, eax
	xor ebx, ebx
FS_FOpenFileReadForThread_700:
	mov edx, esi
	xor edx, eax
	xor edx, ebx
	lea eax, [edi-0x1]
	and edx, eax
	test ecx, ecx
	jz FS_FOpenFileReadForThread_520
	lea eax, [edx*4]
	add eax, [ecx+0x31c]
	mov eax, [eax]
	test eax, eax
	jz FS_FOpenFileReadForThread_520
	mov [ebp-0x338], eax
	mov ecx, eax
FS_FOpenFileReadForThread_610:
	mov edi, [ecx+0x4]
	lea eax, [ebp-0x118]
	mov [ebp-0x32c], eax
	mov edx, eax
	jmp FS_FOpenFileReadForThread_530
FS_FOpenFileReadForThread_580:
	cmp esi, 0x3a
	jz FS_FOpenFileReadForThread_540
	cmp ebx, 0x5c
	jz FS_FOpenFileReadForThread_550
FS_FOpenFileReadForThread_590:
	cmp ebx, 0x3a
	jz FS_FOpenFileReadForThread_550
	cmp esi, ebx
	jnz FS_FOpenFileReadForThread_560
FS_FOpenFileReadForThread_600:
	test esi, esi
	jz FS_FOpenFileReadForThread_570
	mov edx, [ebp-0x32c]
FS_FOpenFileReadForThread_530:
	movsx esi, byte [edi]
	add edi, 0x1
	movsx ebx, byte [edx]
	add edx, 0x1
	mov [ebp-0x32c], edx
	mov [esp], esi
	call I_islower
	lea edx, [esi-0x20]
	test al, al
	cmovnz esi, edx
	mov [esp], ebx
	call I_islower
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	cmp esi, 0x5c
	jnz FS_FOpenFileReadForThread_580
FS_FOpenFileReadForThread_540:
	mov esi, 0x2f
	cmp ebx, 0x5c
	jnz FS_FOpenFileReadForThread_590
FS_FOpenFileReadForThread_550:
	mov ebx, 0x2f
	cmp esi, ebx
	jz FS_FOpenFileReadForThread_600
FS_FOpenFileReadForThread_560:
	mov ecx, [ebp-0x338]
	mov ecx, [ecx+0x8]
	mov [ebp-0x338], ecx
	test ecx, ecx
	jz FS_FOpenFileReadForThread_480
	mov ecx, [ebp-0x338]
	jmp FS_FOpenFileReadForThread_610
FS_FOpenFileReadForThread_150:
	mov [esp], eax
	call FS_FileClose
FS_FOpenFileReadForThread_570:
	mov eax, 0x1
	add esp, 0x35c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_FOpenFileReadForThread_180:
	xor ebx, ebx
	xor esi, esi
	movzx eax, byte [ebp-0x118]
FS_FOpenFileReadForThread_630:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, eax
	cmp eax, 0x2e
	jz FS_FOpenFileReadForThread_620
	cmp eax, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	lea eax, [ebx+0x77]
	imul edx, eax
	add esi, edx
	add ebx, 0x1
	movzx eax, byte [ebx+ebp-0x118]
	test al, al
	jnz FS_FOpenFileReadForThread_630
FS_FOpenFileReadForThread_620:
	mov eax, esi
	sar eax, 0xa
	mov edx, esi
	sar edx, 0x14
	jmp FS_FOpenFileReadForThread_640
FS_FOpenFileReadForThread_320:
	mov dword [ebp-0x318], _cstring_hlsl
	mov dword [ebp-0x314], _cstring_txt
	mov dword [ebp-0x310], _cstring_cfg
	mov dword [ebp-0x30c], _cstring_levelshots
	mov dword [ebp-0x308], _cstring_menu
	mov dword [ebp-0x304], _cstring_arena
	mov dword [ebp-0x300], _cstring_str
	mov dword [ebp-0x2fc], _cstring_null
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x118]
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	mov edx, _cstring_hlsl
	cmp byte [_cstring_hlsl], 0x0
	jnz FS_FOpenFileReadForThread_650
FS_FOpenFileReadForThread_760:
	mov edx, [ebp-0x324]
	mov byte [edx+0x314], 0x1
	mov ecx, [ebp-0x31c]
	mov [esp], ecx
	call FS_AddIwdPureCheckReference
	mov eax, [ebp-0x324]
	jmp FS_FOpenFileReadForThread_660
FS_FOpenFileReadForThread_70:
	mov eax, [ebp-0x31c]
	jmp FS_FOpenFileReadForThread_670
FS_FOpenFileReadForThread_510:
	xor ebx, ebx
	xor esi, esi
	movzx eax, byte [ebp-0x118]
FS_FOpenFileReadForThread_690:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, eax
	cmp eax, 0x2e
	jz FS_FOpenFileReadForThread_680
	cmp eax, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	lea eax, [ebx+0x77]
	imul edx, eax
	add esi, edx
	add ebx, 0x1
	movzx eax, byte [ebx+ebp-0x118]
	test al, al
	jnz FS_FOpenFileReadForThread_690
FS_FOpenFileReadForThread_680:
	mov eax, esi
	sar eax, 0xa
	mov ebx, esi
	sar ebx, 0x14
	mov edx, [ebp-0x33c]
	mov ecx, [edx+0x4]
	jmp FS_FOpenFileReadForThread_700
FS_FOpenFileReadForThread_370:
	mov edx, eax
	jmp FS_FOpenFileReadForThread_360
FS_FOpenFileReadForThread_350:
	mov edx, [ebp-0x324]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x118]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_fs_fopenfileread1
	mov dword [esp], 0xa
	call Com_Printf
	mov eax, [edi+0x44]
	jmp FS_FOpenFileReadForThread_710
FS_FOpenFileReadForThread_140:
	mov eax, edx
	jmp FS_FOpenFileReadForThread_720
FS_FOpenFileReadForThread_10:
	mov eax, [ebp-0x344]
	test eax, eax
	jz FS_FOpenFileReadForThread_30
	mov eax, [ebp-0x344]
	mov dword [eax], 0x0
	mov eax, 0xffffffff
	jmp FS_FOpenFileReadForThread_440
FS_FOpenFileReadForThread_330:
	mov eax, [ebp-0x344]
	mov edx, [eax]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov dword [eax*4+fsh+0x4], 0x1
	mov edx, [ebp-0x344]
	mov ebx, [edx]
	mov ecx, [ebp-0x324]
	mov eax, [ecx+0x300]
	mov [esp+0x4], eax
	mov [esp], ecx
	call unzReOpen
	lea edx, [ebx+ebx*8]
	shl edx, 0x3
	sub edx, ebx
	mov [edx*4+fsh], eax
	mov eax, [ebp-0x344]
	mov edx, [eax]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov ecx, [eax*4+fsh]
	test ecx, ecx
	jnz FS_FOpenFileReadForThread_730
	mov eax, [ebp-0x348]
	test eax, eax
	jnz FS_FOpenFileReadForThread_740
	mov edx, [ebp-0x324]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_couldnt_reopen_s
	mov dword [esp], 0x1
	call Com_Error
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	jmp FS_FOpenFileReadForThread_730
FS_FOpenFileReadForThread_100:
	mov ecx, [ebp-0x340]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_cant_find_s
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_FOpenFileReadForThread_90
FS_FOpenFileReadForThread_650:
	lea esi, [ebp-0x118]
	add esi, eax
	lea ebx, [ebp-0x318]
	jmp FS_FOpenFileReadForThread_750
FS_FOpenFileReadForThread_770:
	mov edx, [ebx+0x4]
	add ebx, 0x4
	cmp byte [edx], 0x0
	jz FS_FOpenFileReadForThread_760
FS_FOpenFileReadForThread_750:
	mov [esp+0x4], edx
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov eax, esi
	sub eax, ecx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_FOpenFileReadForThread_770
	mov eax, [ebp-0x324]
	jmp FS_FOpenFileReadForThread_660
FS_FOpenFileReadForThread_460:
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Com_GetExtensionSubString
	mov ebx, eax
	lea eax, [eax+0x1]
	cmp byte [ebx], 0x2e
	cmovz ebx, eax
	mov dword [esp+0x4], _cstring_cfg1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz FS_FOpenFileReadForThread_780
	mov edx, [ebp-0x31c]
	mov esi, [edx+0x8]
	jmp FS_FOpenFileReadForThread_450
FS_FOpenFileReadForThread_40:
	mov dword [ebp-0x334], 0x0
	mov byte [ebp-0x32d], 0x0
	jmp FS_FOpenFileReadForThread_790
FS_FOpenFileReadForThread_300:
	mov edx, ecx
	jmp FS_FOpenFileReadForThread_800
FS_FOpenFileReadForThread_780:
	mov dword [esp+0x4], _cstring_dm_network_proto
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz FS_FOpenFileReadForThread_810
	cmp byte [ebp-0x32d], 0x0
	jnz FS_FOpenFileReadForThread_60
	mov edx, [ebp-0x31c]
	mov eax, [edx+0x8]
	lea edx, [eax+0x100]
	mov ecx, [ebp-0x348]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x218]
	mov [esp], ebx
	lea ecx, [ebp-0x118]
	call FS_BuildOSPathForThread
	mov [esp], ebx
	call FS_FileOpenReadBinary
	test eax, eax
	jz FS_FOpenFileReadForThread_60
	mov [esp], eax
	call FS_FileClose
	mov byte [ebp-0x32d], 0x1
	mov edx, [ebp-0x31c]
	jmp FS_FOpenFileReadForThread_360
FS_FOpenFileReadForThread_130:
	mov eax, [ebp-0x340]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_must_be_1
	mov dword [esp], 0xa
	call Com_Printf
	mov eax, 0xfffffffe
	jmp FS_FOpenFileReadForThread_440
FS_FOpenFileReadForThread_810:
	mov ecx, [ebp-0x31c]
	mov esi, [ecx+0x8]
	jmp FS_FOpenFileReadForThread_450
FS_FOpenFileReadForThread_420:
	mov eax, [fs_cdpath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz FS_FOpenFileReadForThread_820
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov edx, [ebp-0x348]
	mov [esp+0x4], edx
	lea ebx, [ebp-0x318]
	mov [esp], ebx
	lea ecx, [ebp-0x118]
	mov edx, edi
	call FS_BuildOSPathForThread
	mov [esp+0x4], ebx
	lea ecx, [ebp-0x218]
	mov [esp], ecx
	call FS_CopyFile
	jmp FS_FOpenFileReadForThread_820
FS_FOpenFileReadForThread_430:
	mov eax, [eax+fsh]
	mov [esp], eax
	call FS_FileGetFileSize
	jmp FS_FOpenFileReadForThread_440
FS_FOpenFileReadForThread_400:
	mov dword [esp+0x4], _cstring_bantxt
	lea edx, [ebp-0x118]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz FS_FOpenFileReadForThread_830
FS_FOpenFileReadForThread_850:
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	jmp FS_FOpenFileReadForThread_390
FS_FOpenFileReadForThread_740:
	mov [esp], edx
	call FS_FCloseFile
	mov edx, [ebp-0x344]
	mov dword [edx], 0x0
	mov eax, 0xffffffff
	jmp FS_FOpenFileReadForThread_440
FS_FOpenFileReadForThread_830:
	lea ecx, [ebp-0x118]
	mov [esp], ecx
	call Com_GetExtensionSubString
	mov ebx, eax
	lea eax, [eax+0x1]
	cmp byte [ebx], 0x2e
	cmovz ebx, eax
	mov dword [esp+0x4], _cstring_cfg1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz FS_FOpenFileReadForThread_840
	mov eax, [ebp-0x344]
	mov edx, [eax]
	jmp FS_FOpenFileReadForThread_390
FS_FOpenFileReadForThread_840:
	mov dword [esp+0x4], _cstring_dm_network_proto
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz FS_FOpenFileReadForThread_850
	call ms_rand
	add eax, 0x1
	mov [fs_fakeChkSum], eax
	mov eax, [ebp-0x344]
	mov edx, [eax]
	jmp FS_FOpenFileReadForThread_390
	nop
	add [eax], al


;FS_FOpenFileWriteToDirForThread(char const*, char const*, FsThread)
FS_FOpenFileWriteToDirForThread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edi, eax
	mov [ebp-0x120], ecx
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	mov ecx, edi
	call FS_BuildOSPathForThread
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jnz FS_FOpenFileWriteToDirForThread_10
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jz FS_FOpenFileWriteToDirForThread_20
FS_FOpenFileWriteToDirForThread_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call Com_PrintWarning
	xor esi, esi
FS_FOpenFileWriteToDirForThread_80:
	mov eax, esi
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_FOpenFileWriteToDirForThread_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_fs_fopenfilewrit
	mov dword [esp], 0xa
	call Com_Printf
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz FS_FOpenFileWriteToDirForThread_30
FS_FOpenFileWriteToDirForThread_20:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz FS_FOpenFileWriteToDirForThread_30
	movzx eax, byte [ebp-0x117]
	test al, al
	jz FS_FOpenFileWriteToDirForThread_40
	mov esi, ebx
	jmp FS_FOpenFileWriteToDirForThread_50
FS_FOpenFileWriteToDirForThread_60:
	movzx eax, byte [esi+0x2]
	add esi, 0x1
	test al, al
	jz FS_FOpenFileWriteToDirForThread_40
FS_FOpenFileWriteToDirForThread_50:
	cmp al, 0x2f
	jnz FS_FOpenFileWriteToDirForThread_60
	mov byte [esi+0x1], 0x0
	mov [esp], ebx
	call Sys_Mkdir
	mov byte [esi+0x1], 0x2f
	jmp FS_FOpenFileWriteToDirForThread_60
FS_FOpenFileWriteToDirForThread_40:
	mov [esp], ebx
	call FS_FileOpenWriteBinary
	mov [ebp-0x11c], eax
	test eax, eax
	jz FS_FOpenFileWriteToDirForThread_70
	mov eax, [ebp-0x120]
	mov [esp], eax
	call FS_HandleForFile
	mov esi, eax
	lea ebx, [eax+eax*8]
	shl ebx, 0x3
	sub ebx, eax
	shl ebx, 0x2
	mov dword [ebx+fsh+0x14], 0x0
	mov eax, [ebp-0x11c]
	mov [ebx+fsh], eax
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], edi
	lea eax, [ebx+fsh+0x1c]
	mov [esp], eax
	call Q_strncpyz
	mov dword [ebx+fsh+0x8], 0x0
	jmp FS_FOpenFileWriteToDirForThread_80
FS_FOpenFileWriteToDirForThread_70:
	xor esi, esi
	jmp FS_FOpenFileWriteToDirForThread_80


;FS_FreeFile
FS_FreeFile:
	push ebp
	mov ebp, esp
	sub dword [fs_loadStack], 0x1
	pop ebp
	jmp Hunk_FreeTempMemory


;FS_FreeFileList
FS_FreeFileList:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz FS_FreeFileList_10
	mov eax, [eax-0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp Hunk_UserDestroy
FS_FreeFileList_10:
	pop ebp
	ret


;FS_ListFiles
FS_ListFiles:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x18]
	mov [esp+0x18], eax
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [fs_searchpaths]
	mov [esp], eax
	call FS_ListFilteredFiles
	leave
	ret


;FS_ListFilesInLocation
FS_ListFilesInLocation:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x1c]
	mov [esp+0x18], eax
	mov eax, [ebp+0x18]
	mov [esp+0x14], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_ListFilteredFilesInLocation
	leave
	ret


;FS_ListFilteredFilesInLocation
FS_ListFilteredFilesInLocation:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_fs_listfilteredf
	mov dword [esp], 0x20000
	call Hunk_UserCreate
	mov [ebp-0x34], eax
	mov ebx, [fs_searchpaths]
	test ebx, ebx
	jz FS_ListFilteredFilesInLocation_10
	mov eax, [ebp+0x1c]
	and eax, 0x1
	mov [ebp-0x30], eax
	mov eax, [ebp+0x1c]
	shr eax, 1
	and eax, 0x1
	mov [ebp-0x2c], eax
	mov eax, [ebp+0x1c]
	shr eax, 0x2
	and eax, 0x1
	mov [ebp-0x28], eax
	mov eax, [ebp+0x1c]
	shr eax, 0x3
	and eax, 0x1
	mov [ebp-0x24], eax
	mov eax, [ebp+0x1c]
	shr eax, 0x4
	and eax, 0x1
	mov [ebp-0x20], eax
	mov eax, [ebp+0x1c]
	shr eax, 0x5
	and eax, 0x1
	mov [ebp-0x1c], eax
	xor edi, edi
	mov dword [ebp-0x38], 0x0
	jmp FS_ListFilteredFilesInLocation_20
FS_ListFilteredFilesInLocation_110:
	mov ecx, [ebp-0x30]
	test ecx, ecx
	jnz FS_ListFilteredFilesInLocation_30
FS_ListFilteredFilesInLocation_130:
	mov edx, [ebp-0x2c]
	test edx, edx
	jnz FS_ListFilteredFilesInLocation_40
	mov eax, [ebp-0x28]
	test eax, eax
	jnz FS_ListFilteredFilesInLocation_50
FS_ListFilteredFilesInLocation_190:
	mov eax, [ebp-0x24]
	test eax, eax
	jnz FS_ListFilteredFilesInLocation_60
FS_ListFilteredFilesInLocation_200:
	mov eax, [ebp-0x20]
	test eax, eax
	jnz FS_ListFilteredFilesInLocation_70
FS_ListFilteredFilesInLocation_210:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz FS_ListFilteredFilesInLocation_80
FS_ListFilteredFilesInLocation_220:
	mov ebx, [ebx]
	test ebx, ebx
	jz FS_ListFilteredFilesInLocation_90
FS_ListFilteredFilesInLocation_20:
	mov eax, [ebx+0x8]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_100
	lea esi, [eax+0x100]
FS_ListFilteredFilesInLocation_170:
	cmp dword [ebp+0x1c], 0x3f
	jnz FS_ListFilteredFilesInLocation_110
FS_ListFilteredFilesInLocation_180:
	mov eax, [ebp-0x38]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_120
FS_ListFilteredFilesInLocation_140:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x1c
	mov eax, [ebp-0x34]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [edi], eax
	mov edi, eax
FS_ListFilteredFilesInLocation_150:
	mov dword [edi], 0x0
	mov eax, [ebx+0x8]
	mov [edi+0x8], eax
	mov eax, [ebx+0x18]
	mov [edi+0x18], eax
	mov eax, [ebx+0xc]
	mov [edi+0xc], eax
	mov eax, [ebx+0x4]
	mov [edi+0x4], eax
	mov ebx, [ebx]
	test ebx, ebx
	jnz FS_ListFilteredFilesInLocation_20
FS_ListFilteredFilesInLocation_90:
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x18]
	mov [esp+0x14], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call FS_ListFilteredFiles
	mov ebx, eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call Hunk_UserDestroy
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ListFilteredFilesInLocation_30:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_main
	mov [esp], esi
	call Q_strncmp
	test eax, eax
	jnz FS_ListFilteredFilesInLocation_130
	mov eax, [ebp-0x38]
	test eax, eax
	jnz FS_ListFilteredFilesInLocation_140
FS_ListFilteredFilesInLocation_120:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x1c
	mov eax, [ebp-0x34]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [ebp-0x38], eax
	mov edi, eax
	jmp FS_ListFilteredFilesInLocation_150
FS_ListFilteredFilesInLocation_100:
	mov eax, [ebx+0x4]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_160
	lea esi, [eax+0x200]
	jmp FS_ListFilteredFilesInLocation_170
FS_ListFilteredFilesInLocation_40:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_dev
	mov [esp], esi
	call Q_strncmp
	test eax, eax
	jz FS_ListFilteredFilesInLocation_180
	mov eax, [ebp-0x28]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_190
FS_ListFilteredFilesInLocation_50:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_temp
	mov [esp], esi
	call Q_strncmp
	test eax, eax
	jz FS_ListFilteredFilesInLocation_180
	mov eax, [ebp-0x24]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_200
FS_ListFilteredFilesInLocation_60:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_raw
	mov [esp], esi
	call Q_strncmp
	test eax, eax
	jz FS_ListFilteredFilesInLocation_180
	mov eax, [ebp-0x20]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_210
FS_ListFilteredFilesInLocation_70:
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_raw_shared
	mov [esp], esi
	call Q_strncmp
	test eax, eax
	jz FS_ListFilteredFilesInLocation_180
	mov eax, [ebp-0x1c]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_220
FS_ListFilteredFilesInLocation_80:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_devraw
	mov [esp], esi
	call Q_strncmp
	test eax, eax
	jnz FS_ListFilteredFilesInLocation_220
	jmp FS_ListFilteredFilesInLocation_180
FS_ListFilteredFilesInLocation_160:
	xor esi, esi
	jmp FS_ListFilteredFilesInLocation_170
FS_ListFilteredFilesInLocation_10:
	mov dword [ebp-0x38], 0x0
	jmp FS_ListFilteredFilesInLocation_90


;FS_ReadFile
FS_ReadFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	test ebx, ebx
	jz FS_ReadFile_10
	cmp byte [ebx], 0x0
	jz FS_ReadFile_10
FS_ReadFile_40:
	mov dword [com_fileAccessed], 0x1
	lea edx, [ebp-0x1c]
	xor ecx, ecx
	mov eax, ebx
	call FS_FOpenFileReadForThread
	mov esi, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz FS_ReadFile_20
	test edi, edi
	jz FS_ReadFile_30
	add dword [fs_loadStack], 0x1
	lea eax, [esi+0x1]
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov ebx, eax
	mov [edi], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call FS_Read
	mov byte [ebx+esi], 0x0
	mov eax, [ebp-0x1c]
FS_ReadFile_30:
	mov [esp], eax
	call FS_FCloseFile
FS_ReadFile_60:
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ReadFile_10:
	mov dword [esp+0x4], _cstring_fs_readfile_with
	mov dword [esp], 0x1
	call Com_Error
	jmp FS_ReadFile_40
FS_ReadFile_20:
	test edi, edi
	jnz FS_ReadFile_50
	mov esi, 0xffffffff
	jmp FS_ReadFile_60
FS_ReadFile_50:
	mov dword [edi], 0x0
	mov esi, 0xffffffff
	jmp FS_ReadFile_60
	nop


;FS_Restart(int, int)
FS_Restart:
FS_Restart_120:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov dword [esp], 0x8
	call SND_StopSounds
	call SEH_Shutdown_StringEd
	mov esi, 0x1
	mov ebx, fsh
	jmp FS_Restart_10
FS_Restart_30:
	add esi, 0x1
	add ebx, 0x11c
	cmp esi, 0x41
	jz FS_Restart_20
FS_Restart_10:
	mov eax, [ebx+0x128]
	test eax, eax
	jz FS_Restart_30
	mov [esp], esi
	call FS_FCloseFile
	add esi, 0x1
	add ebx, 0x11c
	cmp esi, 0x41
	jnz FS_Restart_10
FS_Restart_20:
	mov eax, [fs_searchpaths]
	call FS_ShutdownSearchPaths
	mov dword [fs_searchpaths], 0x0
	call FS_RemoveCommands
	mov [fs_checksumFeed], edi
	mov eax, [fs_searchpaths]
	test eax, eax
	jz FS_Restart_40
FS_Restart_60:
	mov edx, [eax+0x4]
	test edx, edx
	jz FS_Restart_50
	mov byte [edx+0x314], 0x0
FS_Restart_50:
	mov eax, [eax]
	test eax, eax
	jnz FS_Restart_60
FS_Restart_40:
	mov dword [esp], _cstring_main
	call FS_Startup
	call SEH_Init_StringEd
	call SEH_UpdateLanguageInfo
	call FS_SetRestrictions
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_default_mpcfg
	call FS_ReadFile
	test eax, eax
	jle FS_Restart_70
FS_Restart_110:
	mov dword [esp+0x4], lastValidGame
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_Restart_80
FS_Restart_90:
	mov dword [esp+0x8], 0x100
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], lastValidBase
	call Q_strncpyz
	mov dword [esp+0x8], 0x100
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], lastValidGame
	call Q_strncpyz
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Restart_80:
	call Com_SafeMode
	test eax, eax
	jnz FS_Restart_90
	mov dword [esp+0x4], _cstring_config_mpcfg
	mov dword [esp], _cstring_exec_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_AddText
	jmp FS_Restart_90
FS_Restart_70:
	cmp byte [lastValidBase], 0x0
	jnz FS_Restart_100
FS_Restart_130:
	mov dword [esp+0x8], _cstring_default_mpcfg
	mov dword [esp+0x4], _cstring_couldnt_load_s__
	mov dword [esp], 0x1
	call Com_Error
	jmp FS_Restart_110
FS_Restart_100:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_null
	call FS_PureServerSetLoadedIwds
	mov dword [esp+0x4], lastValidBase
	mov eax, [fs_basepath]
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0x4], lastValidGame
	mov eax, [fs_gameDirVar]
	mov [esp], eax
	call Cvar_SetString
	mov byte [lastValidBase], 0x0
	mov byte [lastValidGame], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [fs_restrict]
	mov [esp], eax
	call Cvar_SetBool
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_Restart_120
	mov dword [esp+0x4], _cstring_invalid_game_fol
	mov dword [esp], 0x2
	call Com_Error
	jmp FS_Restart_130


;FS_Startup(char const*)
FS_Startup:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov dword [esp+0x4], _cstring__fs_startup_
	mov dword [esp], 0xa
	call Com_Printf
	mov dword [esp+0x14], _cstring_enable_file_syst
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_debug
	call Cvar_RegisterInt
	mov [fs_debug], eax
	mov dword [esp+0xc], _cstring_copy_all_used_fi
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_copyfiles
	call Cvar_RegisterBool
	mov [fs_copyfiles], eax
	call Sys_DefaultCDPath
	mov dword [esp+0xc], _cstring_cd_path
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], _cstring_fs_cdpath
	call Cvar_RegisterString
	mov [fs_cdpath], eax
	call Sys_Cwd
	mov dword [esp+0xc], _cstring_base_game_path
	mov dword [esp+0x8], 0x210
	mov [esp+0x4], eax
	mov dword [esp], _cstring_fs_basepath
	call Cvar_RegisterString
	mov [fs_basepath], eax
	mov dword [esp+0xc], _cstring_base_game_name
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_fs_basegame
	call Cvar_RegisterString
	mov [fs_basegame], eax
	mov dword [esp+0xc], _cstring_game_data_direct
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_fs_game
	call Cvar_RegisterString
	mov [fs_gameDirVar], eax
	mov dword [esp+0x4], FS_GameDirDomainFunc
	mov [esp], eax
	call Cvar_SetDomainFunc
	mov eax, [fs_gameDirVar]
	mov ebx, [eax+0xc]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x130], ecx
	mov dword [esp+0x8], 0x104
	mov [esp+0x4], ebx
	lea esi, [ebp-0x11c]
	mov [esp], esi
	call Q_strncpyz
	mov eax, [ebp-0x130]
	test eax, eax
	jle FS_Startup_10
	xor ebx, ebx
	mov byte [ebp-0x129], 0x0
	jmp FS_Startup_20
FS_Startup_60:
	movsx edx, al
	test edx, 0xffffff80
	jnz FS_Startup_30
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xf
	and eax, 0x1
FS_Startup_180:
	test eax, eax
	jnz FS_Startup_40
FS_Startup_170:
	add ebx, 0x1
	cmp [ebp-0x130], ebx
	jz FS_Startup_50
FS_Startup_20:
	lea edi, [ebx+esi]
	movzx eax, byte [edi]
	cmp al, 0x5c
	jnz FS_Startup_60
	mov byte [edi], 0x2f
	mov byte [ebp-0x129], 0x1
	add ebx, 0x1
	cmp [ebp-0x130], ebx
	jnz FS_Startup_20
FS_Startup_50:
	cmp byte [ebp-0x129], 0x0
	jz FS_Startup_10
	mov [esp+0x4], esi
	mov eax, [fs_gameDirVar]
	mov [esp], eax
	call Cvar_SetString
FS_Startup_10:
	mov dword [esp+0xc], _cstring_ignore_localized
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_ignorelocaliz
	call Cvar_RegisterBool
	mov [fs_ignoreLocalized], eax
	call Sys_DefaultHomePath
	test eax, eax
	jz FS_Startup_70
	cmp byte [eax], 0x0
	jz FS_Startup_70
FS_Startup_160:
	mov dword [esp+0xc], _cstring_game_home_path
	mov dword [esp+0x8], 0x210
	mov [esp+0x4], eax
	mov dword [esp], _cstring_fs_homepath
	call Cvar_RegisterString
	mov [fs_homepath], eax
	mov dword [esp+0xc], _cstring_restrict_file_ac
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_restrict
	call Cvar_RegisterBool
	mov [fs_restrict], eax
	mov dword [esp+0xc], _cstring_use_development_
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_usedevdir
	call Cvar_RegisterBool
	mov [fs_usedevdir], eax
	mov edx, [fs_basepath]
	mov ebx, [edx+0xc]
	cmp byte [ebx], 0x0
	jz FS_Startup_80
	cmp byte [eax+0xc], 0x0
	jnz FS_Startup_90
FS_Startup_540:
	mov ebx, [edx+0xc]
	mov edi, 0xe
FS_Startup_100:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_players
	mov eax, ebx
	call FS_AddGameDirectory
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz FS_Startup_100
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_players
	mov eax, ebx
	call FS_AddGameDirectory
	mov edx, [fs_basepath]
FS_Startup_80:
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz FS_Startup_110
FS_Startup_300:
	mov eax, [fs_cdpath]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz FS_Startup_120
FS_Startup_310:
	mov eax, [edx+0xc]
	cmp byte [eax], 0x0
	jnz FS_Startup_130
FS_Startup_390:
	mov eax, [fs_basegame]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz FS_Startup_140
FS_Startup_440:
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz FS_Startup_150
FS_Startup_190:
	call Com_ReadCDKey
	call FS_AddCommands
	mov dword [esp], 0x1
	call FS_DisplayPath
	mov eax, [fs_gameDirVar]
	mov [esp], eax
	call Cvar_ClearModified
	mov dword [esp+0x4], _cstring_2
	mov dword [esp], 0xa
	call Com_Printf
	mov eax, [fs_iwdFileCount]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_files_in_iwd_f
	mov dword [esp], 0xa
	call Com_Printf
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Startup_70:
	mov eax, [fs_basepath]
	mov eax, [eax+0x2c]
	jmp FS_Startup_160
FS_Startup_40:
	movsx eax, byte [edi]
	mov [esp], eax
	call tolower
	mov [edi], al
	mov byte [ebp-0x129], 0x1
	jmp FS_Startup_170
FS_Startup_30:
	mov dword [esp+0x4], 0x8000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp FS_Startup_180
FS_Startup_150:
	mov dword [esp+0x4], _cstring_main
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_Startup_190
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz FS_Startup_190
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	cmp byte [esi], 0x0
	jz FS_Startup_200
	mov eax, [fs_gameDirVar]
	mov edi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_210:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_210
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
FS_Startup_200:
	mov eax, [fs_basepath]
	mov esi, [eax+0xc]
	cmp byte [esi], 0x0
	jz FS_Startup_220
	mov eax, [fs_gameDirVar]
	mov edi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_230:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_230
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
FS_Startup_220:
	mov eax, [fs_homepath]
	mov edx, [eax+0xc]
	cmp byte [edx], 0x0
	jz FS_Startup_190
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jz FS_Startup_190
	mov eax, [fs_gameDirVar]
	mov edi, [eax+0xc]
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_240:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_240
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	jmp FS_Startup_190
FS_Startup_110:
	mov [esp+0x4], eax
	mov eax, [edx+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz FS_Startup_250
	mov eax, [fs_usedevdir]
	cmp byte [eax+0xc], 0x0
	jz FS_Startup_250
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_260:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_devraw_shared
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_260
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw_shared
	mov eax, esi
	call FS_AddGameDirectory
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_270:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_devraw
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_270
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw
	mov eax, esi
	call FS_AddGameDirectory
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_280:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_raw_shared
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_280
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw_shared
	mov eax, esi
	call FS_AddGameDirectory
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_290:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_raw
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_290
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw
	mov eax, esi
	call FS_AddGameDirectory
	mov edx, [fs_basepath]
	jmp FS_Startup_300
FS_Startup_250:
	mov edx, [fs_basepath]
	mov eax, [fs_cdpath]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz FS_Startup_310
FS_Startup_120:
	mov [esp+0x4], eax
	mov eax, [edx+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz FS_Startup_320
	mov eax, [fs_usedevdir]
	cmp byte [eax+0xc], 0x0
	jz FS_Startup_330
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_340:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_devraw_shared
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_340
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw_shared
	mov eax, esi
	call FS_AddGameDirectory
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_350:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_devraw
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_350
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw
	mov eax, esi
	call FS_AddGameDirectory
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_360:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_raw_shared
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_360
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw_shared
	mov eax, esi
	call FS_AddGameDirectory
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_370:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_raw
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_370
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw
	mov eax, esi
	call FS_AddGameDirectory
FS_Startup_330:
	mov eax, [fs_cdpath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
FS_Startup_380:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, [ebp+0x8]
	mov eax, ebx
	call FS_AddGameDirectory
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz FS_Startup_380
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, [ebp+0x8]
	mov eax, ebx
	call FS_AddGameDirectory
	mov edx, [fs_basepath]
	mov eax, [edx+0xc]
	cmp byte [eax], 0x0
	jz FS_Startup_390
FS_Startup_130:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_shared
	call va
	mov esi, eax
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
FS_Startup_400:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, esi
	mov eax, ebx
	call FS_AddGameDirectory
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz FS_Startup_400
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, esi
	mov eax, ebx
	call FS_AddGameDirectory
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
FS_Startup_410:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, [ebp+0x8]
	mov eax, ebx
	call FS_AddGameDirectory
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz FS_Startup_410
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, [ebp+0x8]
	mov eax, ebx
	call FS_AddGameDirectory
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz FS_Startup_390
	mov [esp+0x4], eax
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz FS_Startup_390
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s_shared
	call va
	mov edi, eax
	mov eax, [fs_basepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_420:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_420
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_430:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, [ebp+0x8]
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_430
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, [ebp+0x8]
	mov eax, esi
	call FS_AddGameDirectory
	jmp FS_Startup_390
FS_Startup_140:
	mov dword [esp+0x4], _cstring_main
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_Startup_440
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov eax, [fs_basegame]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz FS_Startup_440
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	cmp byte [esi], 0x0
	jz FS_Startup_450
	mov eax, [fs_basegame]
	mov edi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_460:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_460
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
FS_Startup_450:
	mov eax, [fs_basepath]
	mov esi, [eax+0xc]
	cmp byte [esi], 0x0
	jz FS_Startup_470
	mov eax, [fs_basegame]
	mov edi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_480:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_480
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
FS_Startup_470:
	mov eax, [fs_homepath]
	mov edx, [eax+0xc]
	cmp byte [edx], 0x0
	jz FS_Startup_440
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jz FS_Startup_440
	mov eax, [fs_basegame]
	mov edi, [eax+0xc]
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
FS_Startup_490:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz FS_Startup_490
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call FS_AddGameDirectory
	jmp FS_Startup_440
FS_Startup_320:
	mov edx, [fs_basepath]
	jmp FS_Startup_310
FS_Startup_90:
	mov edi, 0xe
FS_Startup_500:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_devraw_shared
	mov eax, ebx
	call FS_AddGameDirectory
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz FS_Startup_500
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw_shared
	mov eax, ebx
	call FS_AddGameDirectory
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
FS_Startup_510:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_devraw
	mov eax, ebx
	call FS_AddGameDirectory
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz FS_Startup_510
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw
	mov eax, ebx
	call FS_AddGameDirectory
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
FS_Startup_520:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_raw_shared
	mov eax, ebx
	call FS_AddGameDirectory
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz FS_Startup_520
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw_shared
	mov eax, ebx
	call FS_AddGameDirectory
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
FS_Startup_530:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_raw
	mov eax, ebx
	call FS_AddGameDirectory
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz FS_Startup_530
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw
	mov eax, ebx
	call FS_AddGameDirectory
	mov edx, [fs_basepath]
	jmp FS_Startup_540
	nop


;FS_CopyFile(char*, char*)
FS_CopyFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_FileOpenReadBinary
	mov ebx, eax
	test eax, eax
	jz FS_CopyFile_10
	mov [esp], eax
	call FS_FileGetFileSize
	mov edi, eax
	mov [esp], eax
	call malloc
	mov [ebp-0x1c], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], eax
	call FS_FileRead
	cmp edi, eax
	jz FS_CopyFile_20
	mov dword [esp+0x4], _cstring_short_read_in_fs
	mov dword [esp], 0x1
	call Com_Error
FS_CopyFile_20:
	mov [esp], ebx
	call FS_FileClose
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call strstr
	test eax, eax
	jz FS_CopyFile_30
FS_CopyFile_40:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call Com_PrintWarning
FS_CopyFile_80:
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp free
FS_CopyFile_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_CopyFile_30:
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call strstr
	test eax, eax
	jnz FS_CopyFile_40
	lea edx, [esi+0x1]
	movzx eax, byte [esi+0x1]
	test al, al
	jz FS_CopyFile_50
	mov ebx, edx
	jmp FS_CopyFile_60
FS_CopyFile_70:
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz FS_CopyFile_50
FS_CopyFile_60:
	cmp al, 0x2f
	jnz FS_CopyFile_70
	mov byte [ebx], 0x0
	mov [esp], esi
	call Sys_Mkdir
	mov byte [ebx], 0x2f
	jmp FS_CopyFile_70
FS_CopyFile_50:
	mov [esp], esi
	call FS_FileOpenWriteBinary
	mov ebx, eax
	test eax, eax
	jz FS_CopyFile_80
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FileWrite
	cmp edi, eax
	jz FS_CopyFile_90
	mov dword [esp+0x4], _cstring_short_write_in_f
	mov dword [esp], 0x1
	call Com_Error
FS_CopyFile_90:
	mov [esp], ebx
	call FS_FileClose
	jmp FS_CopyFile_80


;FS_Shutdown(int)
FS_Shutdown:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0x8
	call SND_StopSounds
	call SEH_Shutdown_StringEd
	mov esi, 0x1
	mov ebx, fsh
	jmp FS_Shutdown_10
FS_Shutdown_30:
	add esi, 0x1
	add ebx, 0x11c
	cmp esi, 0x41
	jz FS_Shutdown_20
FS_Shutdown_10:
	mov eax, [ebx+0x128]
	test eax, eax
	jz FS_Shutdown_30
	mov [esp], esi
	call FS_FCloseFile
	add esi, 0x1
	add ebx, 0x11c
	cmp esi, 0x41
	jnz FS_Shutdown_10
FS_Shutdown_20:
	mov eax, [fs_searchpaths]
	call FS_ShutdownSearchPaths
	mov dword [fs_searchpaths], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp FS_RemoveCommands


;FS_WriteLog(void const*, int, int)
FS_WriteLog:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x10]
	test edi, edi
	jz FS_WriteLog_10
	lea eax, [edi+edi*8]
	shl eax, 0x3
	sub eax, edi
	mov eax, [eax*4+fsh]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jnz FS_WriteLog_20
FS_WriteLog_50:
	lea eax, [edi+edi*8]
	shl eax, 0x3
	sub eax, edi
	mov ecx, [eax*4+fsh+0x8]
	test ecx, ecx
	jnz FS_WriteLog_30
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_WriteLog_30:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call fflush
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_WriteLog_20:
	mov ebx, [ebp+0xc]
	mov dword [ebp-0x20], 0x0
	jmp FS_WriteLog_40
FS_WriteLog_60:
	mov edx, [ebp-0x20]
	test edx, edx
	jnz FS_WriteLog_10
	mov dword [ebp-0x20], 0x1
FS_WriteLog_70:
	add esi, eax
	sub ebx, eax
	jz FS_WriteLog_50
FS_WriteLog_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FS_FileWrite
	test eax, eax
	jz FS_WriteLog_60
	cmp eax, 0xffffffff
	jnz FS_WriteLog_70
FS_WriteLog_10:
	mov dword [ebp+0xc], 0x0
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_LoadStack()
FS_LoadStack:
	push ebp
	mov ebp, esp
	mov eax, [fs_loadStack]
	pop ebp
	ret


;FS_TouchFile(char const*)
FS_TouchFile:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov dword [com_fileAccessed], 0x1
	lea edx, [ebp-0xc]
	xor ecx, ecx
	call FS_FOpenFileReadForThread
	mov eax, [ebp-0xc]
	test eax, eax
	jnz FS_TouchFile_10
	leave
	ret
FS_TouchFile_10:
	mov [esp], eax
	call FS_FCloseFile
	mov eax, 0x1
	leave
	ret
	nop


;FS_WriteFile(char const*, void const*, int)
FS_WriteFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	xor ecx, ecx
	mov edx, fs_gamedir
	mov eax, [ebp+0x8]
	call FS_FOpenFileWriteToDirForThread
	mov esi, eax
	test eax, eax
	jz FS_WriteFile_10
	lea eax, [eax+eax*8]
	shl eax, 0x3
	sub eax, esi
	mov eax, [eax*4+fsh]
	mov [ebp-0x11c], eax
	mov edi, [ebp+0xc]
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jnz FS_WriteFile_20
FS_WriteFile_90:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	mov ebx, [eax*4+fsh+0x8]
	test ebx, ebx
	jnz FS_WriteFile_30
FS_WriteFile_130:
	mov ebx, [ebp+0x10]
FS_WriteFile_120:
	mov [esp], esi
	call FS_FCloseFile
	cmp ebx, [ebp+0x10]
	jz FS_WriteFile_40
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz FS_WriteFile_50
FS_WriteFile_60:
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_WriteFile_50:
	mov ecx, eax
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	mov edx, fs_gamedir
	call FS_BuildOSPathForThread
	mov [esp], ebx
	call remove
	jmp FS_WriteFile_60
FS_WriteFile_20:
	mov ebx, [ebp+0x10]
	mov dword [ebp-0x120], 0x0
	jmp FS_WriteFile_70
FS_WriteFile_100:
	mov edx, [ebp-0x120]
	test edx, edx
	jnz FS_WriteFile_80
	mov dword [ebp-0x120], 0x1
FS_WriteFile_110:
	add edi, eax
	sub ebx, eax
	jz FS_WriteFile_90
FS_WriteFile_70:
	mov eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FS_FileWrite
	test eax, eax
	jz FS_WriteFile_100
	cmp eax, 0xffffffff
	jnz FS_WriteFile_110
FS_WriteFile_80:
	xor ebx, ebx
	jmp FS_WriteFile_120
FS_WriteFile_10:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_open_s
	mov dword [esp], 0xa
	call Com_Printf
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_WriteFile_30:
	mov eax, [ebp-0x11c]
	mov [esp], eax
	call fflush
	jmp FS_WriteFile_130
FS_WriteFile_40:
	mov eax, 0x1
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FS_CreatePath(char*)
FS_CreatePath:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jz FS_CreatePath_10
FS_CreatePath_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call Com_PrintWarning
	mov eax, 0x1
FS_CreatePath_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FS_CreatePath_10:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz FS_CreatePath_20
	lea edx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	test al, al
	jz FS_CreatePath_30
	mov esi, edx
	jmp FS_CreatePath_40
FS_CreatePath_50:
	movzx eax, byte [esi+0x1]
	add esi, 0x1
	test al, al
	jz FS_CreatePath_30
FS_CreatePath_40:
	cmp al, 0x2f
	jnz FS_CreatePath_50
	mov byte [esi], 0x0
	mov [esp], ebx
	call Sys_Mkdir
	mov byte [esi], 0x2f
	jmp FS_CreatePath_50
FS_CreatePath_30:
	xor eax, eax
	jmp FS_CreatePath_60
	nop


;FS_FCloseFile(int)
FS_FCloseFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	lea ebx, [eax*4]
	mov eax, [ebx+fsh+0x14]
	test eax, eax
	jz FS_FCloseFile_10
	mov eax, [ebx+fsh]
	mov [esp], eax
	call unzCloseCurrentFile
	mov ecx, [ebx+fsh+0x4]
	test ecx, ecx
	jnz FS_FCloseFile_20
	mov eax, [ebx+fsh+0x14]
	mov dword [eax+0x30c], 0x0
FS_FCloseFile_40:
	mov dword [esp+0x8], 0x11c
	mov dword [esp+0x4], 0x0
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	lea eax, [eax*4+fsh]
	mov [esp], eax
	call Com_Memset
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FS_FCloseFile_10:
	test esi, esi
	jnz FS_FCloseFile_30
FS_FCloseFile_50:
	mov dword [esp+0x8], 0x11c
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+fsh]
	mov [esp], eax
	call Com_Memset
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FS_FCloseFile_20:
	mov eax, [ebx+fsh]
	mov [esp], eax
	call unzClose
	jmp FS_FCloseFile_40
FS_FCloseFile_30:
	mov eax, [ebx+fsh]
	mov [esp], eax
	call FS_FileClose
	jmp FS_FCloseFile_50
	nop


;FS_FileExists(char const*)
FS_FileExists:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov ecx, [ebp+0x8]
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov edx, fs_gamedir
	call FS_BuildOSPathForThread
	mov [esp], ebx
	call FS_FileOpenReadBinary
	test eax, eax
	jz FS_FileExists_10
	mov [esp], eax
	call FS_FileClose
	mov eax, 0x1
FS_FileExists_10:
	add esp, 0x114
	pop ebx
	pop ebp
	ret


;FS_FullPath_f()
FS_FullPath_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call FS_DisplayPath
	leave
	ret


;FS_ResetFiles()
FS_ResetFiles:
	push ebp
	mov ebp, esp
	mov dword [fs_loadStack], 0x0
	pop ebp
	ret
	nop


;FS_filelength(int)
FS_filelength:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov edx, [eax+fsh+0x14]
	test edx, edx
	jz FS_filelength_10
	mov eax, [eax+fsh]
	mov eax, [eax+0x44]
	pop ebp
	ret
FS_filelength_10:
	mov eax, [eax+fsh]
	mov [ebp+0x8], eax
	pop ebp
	jmp FS_FileGetFileSize
	nop


;FS_BuildOSPath(char const*, char const*, char const*, char*)
FS_BuildOSPath:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0xc], 0x0
	mov ebx, [ebp+0x14]
	mov [ebp+0x8], ebx
	pop ebx
	pop ebp
	jmp FS_BuildOSPathForThread
	nop


;FS_ConvertPath(char*)
FS_ConvertPath:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jz FS_ConvertPath_10
	jmp FS_ConvertPath_20
FS_ConvertPath_40:
	cmp al, 0x3a
	jz FS_ConvertPath_30
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz FS_ConvertPath_10
FS_ConvertPath_20:
	cmp al, 0x5c
	jnz FS_ConvertPath_40
FS_ConvertPath_30:
	mov byte [edx], 0x2f
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz FS_ConvertPath_20
FS_ConvertPath_10:
	pop ebp
	ret
	add [eax], al


;FS_DeleteInDir(char const*, char const*)
FS_DeleteInDir:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov ecx, [ebp+0x8]
	cmp byte [ecx], 0x0
	jnz FS_DeleteInDir_10
FS_DeleteInDir_20:
	xor eax, eax
	add esp, 0x114
	pop ebx
	pop ebp
	ret
FS_DeleteInDir_10:
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov edx, [ebp+0xc]
	call FS_BuildOSPathForThread
	mov [esp], ebx
	call remove
	add eax, 0x1
	jz FS_DeleteInDir_20
	mov eax, 0x1
	add esp, 0x114
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;FS_DisplayPath(int)
FS_DisplayPath:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call SEH_GetCurrentLanguage
	mov [esp], eax
	call SEH_GetLanguageName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_current_language
	mov dword [esp], 0xa
	call Com_Printf
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jnz FS_DisplayPath_10
FS_DisplayPath_170:
	mov dword [esp+0x4], _cstring_current_search_p
	mov dword [esp], 0xa
	call Com_Printf
	mov esi, [fs_searchpaths]
	test esi, esi
	jnz FS_DisplayPath_20
	jmp FS_DisplayPath_30
FS_DisplayPath_60:
	mov eax, [esi+0xc]
	test eax, eax
	jz FS_DisplayPath_40
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz FS_DisplayPath_50
FS_DisplayPath_90:
	mov esi, [esi]
	test esi, esi
	jz FS_DisplayPath_30
FS_DisplayPath_20:
	mov edx, [ebp+0x8]
	test edx, edx
	jnz FS_DisplayPath_60
FS_DisplayPath_40:
	mov edx, [esi+0x4]
	test edx, edx
	jz FS_DisplayPath_70
	mov eax, [edx+0x310]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_s_i_files
	mov dword [esp], 0xa
	call Com_Printf
	mov eax, [esi+0xc]
	test eax, eax
	jnz FS_DisplayPath_80
FS_DisplayPath_130:
	mov ebx, [fs_numServerIwds]
	cmp ebx, 0x0
	jz FS_DisplayPath_90
	mov eax, [esi+0x4]
	jg FS_DisplayPath_100
FS_DisplayPath_150:
	mov dword [esp+0x4], _cstring_____not_on_the_p
	mov dword [esp], 0xa
	call Com_Printf
	mov esi, [esi]
	test esi, esi
	jnz FS_DisplayPath_20
FS_DisplayPath_30:
	mov dword [esp+0x4], _cstring_file_handles
	mov dword [esp], 0xa
	call Com_Printf
	mov ebx, 0x1
	mov esi, fsh
	mov edi, fsh+0x138
FS_DisplayPath_120:
	mov eax, [esi+0x11c]
	test eax, eax
	jz FS_DisplayPath_110
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_handle_i_s
	mov dword [esp], 0xa
	call Com_Printf
FS_DisplayPath_110:
	add ebx, 0x1
	add edi, 0x11c
	add esi, 0x11c
	cmp ebx, 0x41
	jnz FS_DisplayPath_120
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_DisplayPath_80:
	mov eax, [esi+0x18]
	mov [esp], eax
	call SEH_GetLanguageName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_____localized_as
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_DisplayPath_130
FS_DisplayPath_100:
	mov edi, [eax+0x304]
	cmp edi, [fs_serverIwds]
	jz FS_DisplayPath_140
	xor ecx, ecx
	mov edx, fs_serverIwds
FS_DisplayPath_160:
	add ecx, 0x1
	cmp ebx, ecx
	jz FS_DisplayPath_150
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp edi, eax
	jnz FS_DisplayPath_160
FS_DisplayPath_140:
	mov dword [esp+0x4], _cstring_____on_the_pure_
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_DisplayPath_90
FS_DisplayPath_70:
	mov edx, [esi+0x8]
	lea eax, [edx+0x100]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ss2
	mov dword [esp], 0xa
	call Com_Printf
	mov eax, [esi+0xc]
	test eax, eax
	jz FS_DisplayPath_90
	mov eax, [esi+0x18]
	mov [esp], eax
	call SEH_GetLanguageName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_____localized_as1
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_DisplayPath_90
FS_DisplayPath_50:
	mov ebx, [esi+0x18]
	call SEH_GetCurrentLanguage
	cmp ebx, eax
	jnz FS_DisplayPath_90
	jmp FS_DisplayPath_40
FS_DisplayPath_10:
	mov dword [esp+0x4], _cstring_____localized_as2
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_DisplayPath_170
	nop


;FS_GetFileList(char const*, char const*, FsListBehavior_e, char*, int)
FS_GetFileList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x14]
	mov byte [esi], 0x0
	mov dword [ebp-0x1c], 0x0
	mov dword [esp+0x4], _cstring_modlist
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz FS_GetFileList_10
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov [esp], esi
	call FS_GetModList
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_GetFileList_10:
	mov dword [esp+0x18], 0x3
	lea eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov edx, [ebp+0x10]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x0
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov eax, [fs_searchpaths]
	mov [esp], eax
	call FS_ListFilteredFiles
	mov [ebp-0x2c], eax
	mov edi, [ebp-0x1c]
	test edi, edi
	jg FS_GetFileList_20
FS_GetFileList_70:
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jz FS_GetFileList_30
FS_GetFileList_60:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call Hunk_UserDestroy
FS_GetFileList_30:
	mov eax, [ebp-0x1c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_GetFileList_20:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x34], 0x0
FS_GetFileList_50:
	mov eax, [ebp-0x34]
	mov ecx, [ebp-0x2c]
	mov edx, [ecx+eax*4]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	add [ebp-0x30], ebx
	mov eax, [ebp-0x30]
	add eax, 0x1
	cmp eax, [ebp+0x18]
	jge FS_GetFileList_40
	mov [esp+0x4], edx
	mov [esp], esi
	call strcpy
	add esi, ebx
	add dword [ebp-0x34], 0x1
	mov eax, [ebp-0x34]
	cmp [ebp-0x1c], eax
	jg FS_GetFileList_50
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jnz FS_GetFileList_60
	jmp FS_GetFileList_30
FS_GetFileList_40:
	mov edx, [ebp-0x34]
	mov [ebp-0x1c], edx
	jmp FS_GetFileList_70


;FS_Initialized()
FS_Initialized:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [fs_searchpaths], 0x0
	setnz al
	pop ebp
	ret
	nop


;FS_NeedRestart(int)
FS_NeedRestart:
	push ebp
	mov ebp, esp
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FS_NeedRestart_10
	mov eax, [fs_gameDirVar]
	cmp byte [eax+0xb], 0x0
	jnz FS_NeedRestart_20
	mov eax, [ebp+0x8]
	cmp [fs_checksumFeed], eax
	jz FS_NeedRestart_10
FS_NeedRestart_20:
	mov eax, 0x1
	pop ebp
	ret
FS_NeedRestart_10:
	xor eax, eax
	pop ebp
	ret
	nop


;FS_HashFileName(char const*, int)
FS_HashFileName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz FS_HashFileName_10
	xor esi, esi
	xor eax, eax
	xor edx, edx
	xor esi, eax
	xor edx, esi
	mov eax, [ebp+0xc]
	sub eax, 0x1
	and edx, eax
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_HashFileName_10:
	xor esi, esi
	mov ebx, 0x77
FS_HashFileName_30:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, eax
	cmp eax, 0x2e
	jz FS_HashFileName_20
	cmp eax, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	imul edx, ebx
	add esi, edx
	movzx eax, byte [edi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz FS_HashFileName_30
FS_HashFileName_20:
	mov eax, esi
	sar eax, 0xa
	mov edx, esi
	sar edx, 0x14
	xor esi, eax
	xor edx, esi
	mov eax, [ebp+0xc]
	sub eax, 0x1
	and edx, eax
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_SortFileList(char const**, int)
FS_SortFileList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x30], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x34], edx
	lea eax, [edx*4+0x4]
	mov [esp], eax
	call Z_MallocInternal
	mov [ebp-0x24], eax
	mov dword [eax], 0x0
	mov edx, [ebp-0x34]
	test edx, edx
	jle FS_SortFileList_10
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x28], 0x0
	mov edx, [ebp-0x28]
FS_SortFileList_150:
	mov ecx, [ebp-0x30]
	mov eax, [ecx+edx*4]
	mov edx, [ebp-0x2c]
	mov ecx, [ebp-0x24]
	mov [ecx+edx*4], eax
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	mov eax, [ebp-0x28]
	cmp [ebp-0x34], eax
	jz FS_SortFileList_10
FS_SortFileList_120:
	mov dword [ebp-0x2c], 0x0
	test eax, eax
	jle FS_SortFileList_20
	mov ecx, [ebp-0x2c]
FS_SortFileList_140:
	mov eax, [ebp-0x24]
	mov ecx, [eax+ecx*4]
	mov [ebp-0x20], ecx
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x30]
	mov edi, [edx+eax*4]
	jmp FS_SortFileList_30
FS_SortFileList_80:
	cmp esi, 0x3a
	jz FS_SortFileList_40
	cmp ebx, 0x5c
	jz FS_SortFileList_50
FS_SortFileList_90:
	cmp ebx, 0x3a
	jz FS_SortFileList_50
	cmp esi, ebx
	jl FS_SortFileList_60
FS_SortFileList_100:
	jg FS_SortFileList_70
	test esi, esi
	jz FS_SortFileList_70
	mov ecx, [ebp-0x20]
FS_SortFileList_30:
	movsx esi, byte [edi]
	add edi, 0x1
	movsx ebx, byte [ecx]
	add ecx, 0x1
	mov [ebp-0x20], ecx
	mov [esp], esi
	call I_islower
	lea edx, [esi-0x20]
	test al, al
	cmovnz esi, edx
	mov [esp], ebx
	call I_islower
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	cmp esi, 0x5c
	jnz FS_SortFileList_80
FS_SortFileList_40:
	mov esi, 0x2f
	cmp ebx, 0x5c
	jnz FS_SortFileList_90
FS_SortFileList_50:
	mov ebx, 0x2f
	cmp esi, ebx
	jge FS_SortFileList_100
FS_SortFileList_60:
	mov eax, [ebp-0x2c]
	cmp [ebp-0x28], eax
	jle FS_SortFileList_20
	mov edx, [ebp-0x1c]
	sub edx, 0x4
	mov ecx, [ebp-0x28]
FS_SortFileList_110:
	mov eax, [edx]
	mov [edx+0x4], eax
	sub ecx, 0x1
	sub edx, 0x4
	cmp ecx, [ebp-0x2c]
	jg FS_SortFileList_110
FS_SortFileList_20:
	mov edx, [ebp-0x28]
	mov ecx, [ebp-0x30]
	mov eax, [ecx+edx*4]
	mov edx, [ebp-0x2c]
	mov ecx, [ebp-0x24]
	mov [ecx+edx*4], eax
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	mov eax, [ebp-0x28]
	cmp [ebp-0x34], eax
	jnz FS_SortFileList_120
FS_SortFileList_10:
	mov eax, [ebp-0x34]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call Com_Memcpy
	mov eax, [ebp-0x24]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Z_FreeInternal
FS_SortFileList_70:
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x2c]
	cmp [ebp-0x28], edx
	jz FS_SortFileList_130
	mov ecx, edx
	jmp FS_SortFileList_140
FS_SortFileList_130:
	mov ecx, [ebp-0x28]
	mov [ebp-0x2c], ecx
	mov edx, ecx
	jmp FS_SortFileList_150
	nop


;FS_FCloseLogFile(int)
FS_FCloseLogFile:
	push ebp
	mov ebp, esp
	pop ebp
	jmp FS_FCloseFile
	nop


;FS_FOpenFileRead(char const*, int*)
FS_FOpenFileRead:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov dword [com_fileAccessed], 0x1
	xor ecx, ecx
	pop ebp
	jmp FS_FOpenFileReadForThread
	nop


;FS_FileForHandle(int)
FS_FileForHandle:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*8]
	shl edx, 0x3
	sub edx, eax
	mov eax, [edx*4+fsh]
	pop ebp
	ret
	nop


;FS_GetFileOsPath(char const*, char*)
FS_GetFileOsPath:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov eax, [ebp+0x8]
	lea edi, [ebp-0x118]
	mov ecx, 0x100
	mov edx, edi
	call FS_SanitizeFilename
	test al, al
	jnz FS_GetFileOsPath_10
FS_GetFileOsPath_30:
	mov eax, 0xffffffff
FS_GetFileOsPath_70:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_GetFileOsPath_10:
	mov esi, [fs_searchpaths]
	test esi, esi
	jnz FS_GetFileOsPath_20
	jmp FS_GetFileOsPath_30
FS_GetFileOsPath_50:
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz FS_GetFileOsPath_40
FS_GetFileOsPath_60:
	mov esi, [esi]
	test esi, esi
	jz FS_GetFileOsPath_30
FS_GetFileOsPath_20:
	mov eax, [esi+0xc]
	test eax, eax
	jnz FS_GetFileOsPath_50
FS_GetFileOsPath_80:
	mov ebx, [esi+0x4]
	test ebx, ebx
	jnz FS_GetFileOsPath_60
	mov eax, [esi+0x8]
	lea edx, [eax+0x100]
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	mov ecx, edi
	call FS_BuildOSPathForThread
	mov eax, [ebp+0xc]
	mov [esp], eax
	call FS_FileOpenReadBinary
	test eax, eax
	jz FS_GetFileOsPath_60
	mov [esp], eax
	call FS_FileClose
	xor eax, eax
	jmp FS_GetFileOsPath_70
FS_GetFileOsPath_40:
	mov ebx, [esi+0x18]
	call SEH_GetCurrentLanguage
	cmp ebx, eax
	jnz FS_GetFileOsPath_60
	jmp FS_GetFileOsPath_80
	nop


;FS_HandleForFile(FsThread)
FS_HandleForFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	cmp dword [ebp+0x8], 0x1
	jz FS_HandleForFile_10
	cmp dword [ebp+0x8], 0x3
	jz FS_HandleForFile_20
	mov edi, [ebp+0x8]
	test edi, edi
	jz FS_HandleForFile_30
	mov dword [ebp-0x1c], 0x3e
	mov esi, 0x1
FS_HandleForFile_80:
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov ebx, [eax+fsh]
	test ebx, ebx
	jz FS_HandleForFile_40
FS_HandleForFile_70:
	lea ecx, [eax+fsh]
	xor edx, edx
FS_HandleForFile_60:
	add edx, 0x1
	cmp esi, edx
	jz FS_HandleForFile_50
	mov ebx, [ebp-0x1c]
	add ebx, edx
	mov eax, [ecx+0x11c]
	add ecx, 0x11c
	test eax, eax
	jnz FS_HandleForFile_60
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_HandleForFile_30:
	mov dword [ebp-0x1c], 0x1
	mov esi, 0x30
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov ebx, [eax+fsh]
	test ebx, ebx
	jnz FS_HandleForFile_70
FS_HandleForFile_40:
	mov ebx, edx
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_HandleForFile_10:
	mov dword [ebp-0x1c], 0x31
	mov esi, 0xd
	jmp FS_HandleForFile_80
FS_HandleForFile_50:
	mov esi, [ebp+0x8]
	test esi, esi
	jz FS_HandleForFile_90
FS_HandleForFile_110:
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov edx, [eax+fsh]
	mov [esp+0x10], edx
	add eax, fsh+0x1c
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_2i_s_0xx
	mov dword [esp], 0xa
	call Com_PrintWarning
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_fs_handleforfile
	mov dword [esp], 0xa
	call Com_PrintWarning
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_HandleForFile_20:
	mov dword [ebp-0x1c], 0x3f
	mov esi, 0x1
	jmp FS_HandleForFile_80
FS_HandleForFile_90:
	mov ebx, 0x1
	mov edi, fsh
	mov esi, fsh+0x138
FS_HandleForFile_100:
	mov eax, [edi+0x11c]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_2i_s_0xx
	mov dword [esp], 0xa
	call Com_Printf
	add ebx, 0x1
	add esi, 0x11c
	add edi, 0x11c
	cmp ebx, 0x41
	jnz FS_HandleForFile_100
	mov dword [esp+0x4], _cstring_fs_handleforfile1
	mov dword [esp], 0x2
	call Com_Error
	jmp FS_HandleForFile_110


;FS_UseSearchPath(searchpath_s const*)
FS_UseSearchPath:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	test eax, eax
	jz FS_UseSearchPath_10
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz FS_UseSearchPath_20
FS_UseSearchPath_30:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret
FS_UseSearchPath_20:
	mov ebx, [edx+0x18]
	call SEH_GetCurrentLanguage
	cmp ebx, eax
	jnz FS_UseSearchPath_30
FS_UseSearchPath_10:
	mov eax, 0x1
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;FS_FOpenFileWrite(char const*)
FS_FOpenFileWrite:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	xor ecx, ecx
	mov edx, fs_gamedir
	pop ebp
	jmp FS_FOpenFileWriteToDirForThread
	nop


;FS_InitFilesystem()
FS_InitFilesystem:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_fs_cdpath
	call Com_StartupVariable
	mov dword [esp], _cstring_fs_basepath
	call Com_StartupVariable
	mov dword [esp], _cstring_fs_homepath
	call Com_StartupVariable
	mov dword [esp], _cstring_fs_game
	call Com_StartupVariable
	mov dword [esp], _cstring_fs_copyfiles
	call Com_StartupVariable
	mov dword [esp], _cstring_fs_restrict
	call Com_StartupVariable
	mov dword [esp], _cstring_loc_language
	call Com_StartupVariable
	call SEH_InitLanguage
	mov dword [esp], _cstring_main
	call FS_Startup
	call SEH_Init_StringEd
	call SEH_UpdateLanguageInfo
	call FS_SetRestrictions
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_filesyscheckcfg
	call FS_ReadFile
	test eax, eax
	jg FS_InitFilesystem_10
	mov dword [esp+0x8], _cstring_filesyscheckcfg
	mov dword [esp+0x4], _cstring_couldnt_load_s__
	mov dword [esp], 0x1
	call Com_Error
FS_InitFilesystem_10:
	mov dword [esp+0x8], 0x100
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], lastValidBase
	call Q_strncpyz
	mov dword [esp+0x8], 0x100
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], lastValidGame
	call Q_strncpyz
	leave
	ret
	add [eax], al


;FS_WriteFileToDir(char const*, char const*, void const*, int)
FS_WriteFileToDir:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edx, [ebp+0xc]
	xor ecx, ecx
	mov eax, [ebp+0x8]
	call FS_FOpenFileWriteToDirForThread
	mov esi, eax
	test eax, eax
	jz FS_WriteFileToDir_10
	lea eax, [eax+eax*8]
	shl eax, 0x3
	sub eax, esi
	mov eax, [eax*4+fsh]
	mov [ebp-0x11c], eax
	mov edi, [ebp+0x10]
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jnz FS_WriteFileToDir_20
FS_WriteFileToDir_90:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	mov eax, [eax*4+fsh+0x8]
	test eax, eax
	jnz FS_WriteFileToDir_30
FS_WriteFileToDir_130:
	mov ebx, [ebp+0x14]
FS_WriteFileToDir_120:
	mov [esp], esi
	call FS_FCloseFile
	cmp ebx, [ebp+0x14]
	jz FS_WriteFileToDir_40
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz FS_WriteFileToDir_50
FS_WriteFileToDir_60:
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_WriteFileToDir_50:
	mov ecx, eax
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	mov edx, fs_gamedir
	call FS_BuildOSPathForThread
	mov [esp], ebx
	call remove
	jmp FS_WriteFileToDir_60
FS_WriteFileToDir_20:
	mov ebx, [ebp+0x14]
	mov dword [ebp-0x120], 0x0
	jmp FS_WriteFileToDir_70
FS_WriteFileToDir_100:
	mov edx, [ebp-0x120]
	test edx, edx
	jnz FS_WriteFileToDir_80
	mov dword [ebp-0x120], 0x1
FS_WriteFileToDir_110:
	add edi, eax
	sub ebx, eax
	jz FS_WriteFileToDir_90
FS_WriteFileToDir_70:
	mov eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FS_FileWrite
	test eax, eax
	jz FS_WriteFileToDir_100
	cmp eax, 0xffffffff
	jnz FS_WriteFileToDir_110
FS_WriteFileToDir_80:
	xor ebx, ebx
	jmp FS_WriteFileToDir_120
FS_WriteFileToDir_10:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_open_s
	mov dword [esp], 0xa
	call Com_Printf
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_WriteFileToDir_30:
	mov eax, [ebp-0x11c]
	mov [esp], eax
	call fflush
	jmp FS_WriteFileToDir_130
FS_WriteFileToDir_40:
	mov eax, 0x1
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_GetBspFilename(char*, int, char const*)
Com_GetBspFilename:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_mapsmpsd3dbsp
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_sprintf
	leave
	ret
	nop


;FS_FOpenFileAppend(char const*)
FS_FOpenFileAppend:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov ebx, [ebp+0x8]
	call Sys_IsMainThread
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x3
	mov [esp], eax
	call FS_HandleForFile
	mov esi, eax
	lea eax, [eax+eax*8]
	shl eax, 0x3
	sub eax, esi
	shl eax, 0x2
	mov dword [eax+fsh+0x14], 0x0
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	add eax, fsh+0x1c
	mov [esp], eax
	call Q_strncpyz
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x118]
	mov [esp], edi
	mov ecx, ebx
	mov edx, fs_gamedir
	call FS_BuildOSPathForThread
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jnz FS_FOpenFileAppend_10
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call strstr
	test eax, eax
	jz FS_FOpenFileAppend_20
FS_FOpenFileAppend_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call Com_PrintWarning
	xor esi, esi
FS_FOpenFileAppend_70:
	mov eax, esi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_FOpenFileAppend_10:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_fs_fopenfileappe
	mov dword [esp], 0xa
	call Com_Printf
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call strstr
	test eax, eax
	jnz FS_FOpenFileAppend_30
FS_FOpenFileAppend_20:
	mov dword [esp+0x4], _cstring_1
	mov [esp], edi
	call strstr
	test eax, eax
	jnz FS_FOpenFileAppend_30
	movzx eax, byte [ebp-0x117]
	test al, al
	jz FS_FOpenFileAppend_40
	mov ebx, edi
	jmp FS_FOpenFileAppend_50
FS_FOpenFileAppend_60:
	movzx eax, byte [ebx+0x2]
	add ebx, 0x1
	test al, al
	jz FS_FOpenFileAppend_40
FS_FOpenFileAppend_50:
	cmp al, 0x2f
	jnz FS_FOpenFileAppend_60
	mov byte [ebx+0x1], 0x0
	mov [esp], edi
	call Sys_Mkdir
	mov byte [ebx+0x1], 0x2f
	jmp FS_FOpenFileAppend_60
FS_FOpenFileAppend_40:
	mov [esp], edi
	call FS_FileOpenAppendText
	lea edx, [esi+esi*8]
	shl edx, 0x3
	sub edx, esi
	shl edx, 0x2
	mov [edx+fsh], eax
	mov dword [edx+fsh+0x8], 0x0
	test eax, eax
	jnz FS_FOpenFileAppend_70
	xor esi, esi
	jmp FS_FOpenFileAppend_70
	nop


;FS_FOpenFileByMode(char const*, int*, fsMode_t)
FS_FOpenFileByMode:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp eax, 0x1
	jz FS_FOpenFileByMode_10
	jle FS_FOpenFileByMode_20
	cmp eax, 0x2
	jz FS_FOpenFileByMode_30
	cmp eax, 0x3
	jz FS_FOpenFileByMode_40
FS_FOpenFileByMode_90:
	mov dword [esp+0x4], _cstring_fsh_fopenfile_ba
	mov dword [esp], 0x1
	call Com_Error
	mov ecx, 0x1b39
FS_FOpenFileByMode_100:
	test ebx, ebx
	jz FS_FOpenFileByMode_50
	xor esi, esi
	mov edx, [ebx]
FS_FOpenFileByMode_80:
	test edx, edx
	jz FS_FOpenFileByMode_60
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov [eax*4+fsh+0xc], ecx
	mov edx, [ebx]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov dword [eax*4+fsh+0x18], 0x0
	mov edx, [ebx]
FS_FOpenFileByMode_60:
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov [eax*4+fsh+0x8], esi
FS_FOpenFileByMode_50:
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FS_FOpenFileByMode_10:
	xor ecx, ecx
	mov edx, fs_gamedir
	mov eax, [ebp+0x8]
	call FS_FOpenFileWriteToDirForThread
	mov [ebx], eax
	test eax, eax
	jz FS_FOpenFileByMode_70
	xor ecx, ecx
	xor esi, esi
	mov edx, [ebx]
	jmp FS_FOpenFileByMode_80
FS_FOpenFileByMode_30:
	xor esi, esi
FS_FOpenFileByMode_110:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_FOpenFileAppend
	mov edx, eax
	mov [ebx], eax
	cmp eax, 0x1
	sbb ecx, ecx
	jmp FS_FOpenFileByMode_80
FS_FOpenFileByMode_70:
	mov ecx, 0xffffffff
	xor esi, esi
	mov edx, [ebx]
	jmp FS_FOpenFileByMode_80
FS_FOpenFileByMode_20:
	test eax, eax
	jnz FS_FOpenFileByMode_90
	mov dword [com_fileAccessed], 0x1
	xor ecx, ecx
	mov edx, ebx
	mov eax, [ebp+0x8]
	call FS_FOpenFileReadForThread
	mov ecx, eax
	jmp FS_FOpenFileByMode_100
FS_FOpenFileByMode_40:
	mov esi, 0x1
	jmp FS_FOpenFileByMode_110
	nop


;FS_FilenameCompare(char const*, char const*)
FS_FilenameCompare:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	jmp FS_FilenameCompare_10
FS_FilenameCompare_60:
	cmp esi, 0x3a
	jz FS_FilenameCompare_20
	cmp ebx, 0x5c
	jz FS_FilenameCompare_30
FS_FilenameCompare_70:
	cmp ebx, 0x3a
	jz FS_FilenameCompare_30
	cmp esi, ebx
	jnz FS_FilenameCompare_40
FS_FilenameCompare_80:
	test esi, esi
	jz FS_FilenameCompare_50
FS_FilenameCompare_10:
	mov eax, [ebp+0x8]
	movsx esi, byte [eax]
	add eax, 0x1
	mov [ebp+0x8], eax
	movsx ebx, byte [edi]
	add edi, 0x1
	mov [esp], esi
	call I_islower
	lea edx, [esi-0x20]
	test al, al
	cmovnz esi, edx
	mov [esp], ebx
	call I_islower
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	cmp esi, 0x5c
	jnz FS_FilenameCompare_60
FS_FilenameCompare_20:
	mov esi, 0x2f
	cmp ebx, 0x5c
	jnz FS_FilenameCompare_70
FS_FilenameCompare_30:
	mov ebx, 0x2f
	cmp esi, ebx
	jz FS_FilenameCompare_80
FS_FilenameCompare_40:
	mov eax, 0xffffffff
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_FilenameCompare_50:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_ShortOSFilePath(char const*)
FS_ShortOSFilePath:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov esi, [fs_searchpaths]
	test esi, esi
	jz FS_ShortOSFilePath_10
	lea edi, [ebp-0x118]
	jmp FS_ShortOSFilePath_20
FS_ShortOSFilePath_40:
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz FS_ShortOSFilePath_30
FS_ShortOSFilePath_50:
	mov esi, [esi]
	test esi, esi
	jz FS_ShortOSFilePath_10
FS_ShortOSFilePath_20:
	mov ecx, [esi+0xc]
	test ecx, ecx
	jnz FS_ShortOSFilePath_40
FS_ShortOSFilePath_60:
	mov eax, [esi+0x8]
	test eax, eax
	jz FS_ShortOSFilePath_50
	lea edx, [eax+0x100]
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	mov ecx, [ebp+0x8]
	call FS_BuildOSPathForThread
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call access
	test eax, eax
	jnz FS_ShortOSFilePath_50
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s
	call va
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ShortOSFilePath_30:
	mov ebx, [esi+0x18]
	call SEH_GetCurrentLanguage
	cmp ebx, eax
	jz FS_ShortOSFilePath_60
	mov esi, [esi]
	test esi, esi
	jnz FS_ShortOSFilePath_20
FS_ShortOSFilePath_10:
	xor eax, eax
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_DisablePureCheck(unsigned char)
FS_DisablePureCheck:
	push ebp
	mov ebp, esp
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	movzx eax, byte [g_disablePureCheck]
	mov edx, [ebp+0x8]
	cmovnz eax, edx
	mov [g_disablePureCheck], al
	pop ebp
	ret


;FS_AddUserMapDirIWDs(char const*)
FS_AddUserMapDirIWDs:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [fs_searchpaths]
	test ebx, ebx
	jz FS_AddUserMapDirIWDs_10
FS_AddUserMapDirIWDs_40:
	mov eax, [ebx+0x4]
	test eax, eax
	jz FS_AddUserMapDirIWDs_20
	mov [esp+0x4], esi
	add eax, 0x200
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz FS_AddUserMapDirIWDs_30
FS_AddUserMapDirIWDs_20:
	mov ebx, [ebx]
	test ebx, ebx
	jnz FS_AddUserMapDirIWDs_40
FS_AddUserMapDirIWDs_10:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_3
	call FS_AddIwdFilesForGameDirectory
FS_AddUserMapDirIWDs_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;FS_LanguageHasAssets(int)
FS_LanguageHasAssets:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [fs_searchpaths]
	test eax, eax
	jz FS_LanguageHasAssets_10
FS_LanguageHasAssets_40:
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz FS_LanguageHasAssets_20
	cmp [eax+0x18], edx
	jz FS_LanguageHasAssets_30
FS_LanguageHasAssets_20:
	mov eax, [eax]
	test eax, eax
	jnz FS_LanguageHasAssets_40
FS_LanguageHasAssets_10:
	xor eax, eax
	pop ebp
	ret
FS_LanguageHasAssets_30:
	mov eax, 0x1
	pop ebp
	ret


;FS_ListFilteredFiles(searchpath_s*, char const*, char const*, char const*, FsListBehavior_e, int*, int)
FS_ListFilteredFiles:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x37c
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz FS_ListFilteredFiles_10
	mov eax, [ebp+0x10]
	test eax, eax
	mov eax, _cstring_null
	cmovnz eax, [ebp+0x10]
	mov [ebp+0x10], eax
	mov ecx, 0x100
	lea edx, [ebp-0x21c]
	mov eax, ebx
	call FS_SanitizeFilename
	test al, al
	jz FS_ListFilteredFiles_20
	mov dword [esp+0x4], _cstring_4
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	setz byte [ebp-0x341]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x21c]
	repne scasb
	not ecx
	mov eax, ecx
	sub eax, 0x1
	mov [ebp-0x34c], eax
	jz FS_ListFilteredFiles_30
	lea edx, [ecx-0x2]
	movzx eax, byte [ebp+edx-0x21c]
	cmp al, 0x5c
	jz FS_ListFilteredFiles_40
	cmp al, 0x2f
	jz FS_ListFilteredFiles_40
FS_ListFilteredFiles_30:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x10]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x364], ecx
	mov byte [ebp-0x11c], 0x0
	movzx eax, byte [ebp-0x21c]
	test al, al
	jnz FS_ListFilteredFiles_50
	mov dword [ebp-0x348], 0x0
	xor ebx, ebx
	xor esi, esi
	mov edi, 0x1
FS_ListFilteredFiles_320:
	lea edx, [ebp-0x21c]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x11c]
	mov [esp], ecx
	call strcpy
	mov byte [ebp+esi-0x11c], 0x0
	mov eax, [ebp-0x348]
	sub eax, 0x1
	cmp edi, ebx
	cmovnz eax, [ebp-0x348]
	cmp byte [ebp-0x21c], 0x1
	sbb eax, 0xffffffff
	mov [ebp-0x348], eax
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_fs_listfilteredf1
	mov dword [esp], 0x20000
	call Hunk_UserCreate
	mov [ebp-0x340], eax
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8004
	mov [esp], eax
	call Hunk_UserAlloc
	mov edx, [ebp-0x340]
	mov [eax], edx
	add eax, 0x4
	mov [ebp-0x358], eax
	mov edi, [ebp+0x8]
	test edi, edi
	jz FS_ListFilteredFiles_60
	mov ecx, [ebp+0x8]
	mov [ebp-0x354], ecx
	mov dword [ebp-0x35c], 0x0
	mov eax, ecx
	jmp FS_ListFilteredFiles_70
FS_ListFilteredFiles_100:
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz FS_ListFilteredFiles_80
FS_ListFilteredFiles_140:
	mov edx, [ebp-0x354]
FS_ListFilteredFiles_510:
	mov edx, [edx]
	mov [ebp-0x354], edx
	test edx, edx
	jz FS_ListFilteredFiles_90
FS_ListFilteredFiles_460:
	mov eax, [ebp-0x354]
FS_ListFilteredFiles_70:
	mov esi, [eax+0xc]
	test esi, esi
	jnz FS_ListFilteredFiles_100
	mov eax, [eax+0x4]
	mov [ebp-0x360], eax
	test eax, eax
	jz FS_ListFilteredFiles_110
FS_ListFilteredFiles_380:
	mov edx, [ebp-0x354]
	mov ebx, [edx+0xc]
	test ebx, ebx
	jnz FS_ListFilteredFiles_120
	mov ebx, [fs_numServerIwds]
	cmp ebx, 0x0
	jnz FS_ListFilteredFiles_130
FS_ListFilteredFiles_120:
	mov ecx, [ebp-0x360]
FS_ListFilteredFiles_480:
	mov eax, [ecx+0x320]
	mov ecx, [ecx+0x310]
	test ecx, ecx
	jle FS_ListFilteredFiles_140
	mov [ebp-0x32c], eax
	mov dword [ebp-0x350], 0x0
	mov esi, [eax+0x4]
	mov edx, [ebp+0x14]
	test edx, edx
	jz FS_ListFilteredFiles_150
FS_ListFilteredFiles_200:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call Com_FilterPath
	test al, al
	jz FS_ListFilteredFiles_160
	cmp dword [ebp-0x35c], 0x1fff
	jz FS_ListFilteredFiles_170
	mov eax, [ebp-0x35c]
	test eax, eax
	jle FS_ListFilteredFiles_180
	xor ebx, ebx
FS_ListFilteredFiles_190:
	mov ecx, [ebp-0x358]
	mov eax, [ecx+ebx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz FS_ListFilteredFiles_160
	add ebx, 0x1
	cmp [ebp-0x35c], ebx
	jnz FS_ListFilteredFiles_190
FS_ListFilteredFiles_180:
	mov [esp+0x4], esi
	mov eax, [ebp-0x340]
	mov [esp], eax
	call Hunk_CopyString
	mov edx, [ebp-0x35c]
	mov ecx, [ebp-0x358]
	mov [ecx+edx*4], eax
	add edx, 0x1
	mov [ebp-0x35c], edx
FS_ListFilteredFiles_160:
	add dword [ebp-0x350], 0x1
	add dword [ebp-0x32c], 0xc
	mov edx, [ebp-0x350]
	mov eax, [ebp-0x360]
	cmp edx, [eax+0x310]
	jge FS_ListFilteredFiles_140
	mov eax, [ebp-0x32c]
	mov esi, [eax+0x4]
	mov edx, [ebp+0x14]
	test edx, edx
	jnz FS_ListFilteredFiles_200
FS_ListFilteredFiles_150:
	mov byte [ebp-0x11c], 0x0
	movzx eax, byte [esi]
	test al, al
	jnz FS_ListFilteredFiles_210
	xor edi, edi
	mov dword [ebp-0x33c], 0x0
	xor ebx, ebx
	mov dword [ebp-0x334], 0x0
	mov dword [ebp-0x330], 0x1
FS_ListFilteredFiles_370:
	mov [esp+0x4], esi
	lea ecx, [ebp-0x11c]
	mov [esp], ecx
	call strcpy
	mov eax, [ebp-0x334]
	mov byte [ebp+eax-0x11c], 0x0
	lea eax, [edi-0x1]
	cmp [ebp-0x330], ebx
	cmovz edi, eax
	cmp edi, [ebp-0x348]
	jnz FS_ListFilteredFiles_160
	mov edx, [ebp-0x33c]
	cmp [ebp-0x34c], edx
	jg FS_ListFilteredFiles_160
	mov eax, [ebp-0x34c]
	test eax, eax
	jle FS_ListFilteredFiles_220
	mov ecx, [ebp-0x34c]
	cmp byte [esi+ecx], 0x2f
	jnz FS_ListFilteredFiles_160
	mov eax, ecx
FS_ListFilteredFiles_520:
	mov [esp+0x8], eax
	lea edx, [ebp-0x21c]
	mov [esp+0x4], edx
	mov [esp], esi
	call Q_stricmpn
	test eax, eax
	jnz FS_ListFilteredFiles_160
	cmp byte [ebp-0x341], 0x0
	jnz FS_ListFilteredFiles_230
	mov eax, [ebp-0x364]
	test eax, eax
	jnz FS_ListFilteredFiles_240
FS_ListFilteredFiles_540:
	mov eax, [ebp-0x34c]
	test eax, eax
	jnz FS_ListFilteredFiles_250
	xor eax, eax
FS_ListFilteredFiles_530:
	cmp byte [ebp-0x341], 0x0
	jnz FS_ListFilteredFiles_260
	add esi, eax
	cmp dword [ebp-0x35c], 0x1fff
	jz FS_ListFilteredFiles_170
	mov eax, [ebp-0x35c]
	test eax, eax
	jle FS_ListFilteredFiles_180
	xor ebx, ebx
FS_ListFilteredFiles_270:
	mov ecx, [ebp-0x358]
	mov eax, [ecx+ebx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz FS_ListFilteredFiles_160
	add ebx, 0x1
	cmp [ebp-0x35c], ebx
	jnz FS_ListFilteredFiles_270
	jmp FS_ListFilteredFiles_180
FS_ListFilteredFiles_50:
	mov dword [ebp-0x348], 0x0
	xor edx, edx
	xor ebx, ebx
	jmp FS_ListFilteredFiles_280
FS_ListFilteredFiles_310:
	cmp al, 0x5c
	jz FS_ListFilteredFiles_290
	add ebx, 0x1
	movzx eax, byte [ebx+ebp-0x21c]
	test al, al
	jz FS_ListFilteredFiles_300
FS_ListFilteredFiles_280:
	cmp al, 0x2f
	jnz FS_ListFilteredFiles_310
FS_ListFilteredFiles_290:
	add dword [ebp-0x348], 0x1
	mov edx, ebx
	add ebx, 0x1
	movzx eax, byte [ebx+ebp-0x21c]
	test al, al
	jnz FS_ListFilteredFiles_280
FS_ListFilteredFiles_300:
	mov esi, edx
	lea edi, [edx+0x1]
	jmp FS_ListFilteredFiles_320
FS_ListFilteredFiles_210:
	xor ebx, ebx
	mov dword [ebp-0x33c], 0x0
	xor edi, edi
	jmp FS_ListFilteredFiles_330
FS_ListFilteredFiles_360:
	cmp al, 0x5c
	jz FS_ListFilteredFiles_340
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	test al, al
	jz FS_ListFilteredFiles_350
FS_ListFilteredFiles_330:
	cmp al, 0x2f
	jnz FS_ListFilteredFiles_360
FS_ListFilteredFiles_340:
	add edi, 0x1
	mov [ebp-0x33c], ebx
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	test al, al
	jnz FS_ListFilteredFiles_330
FS_ListFilteredFiles_350:
	mov eax, [ebp-0x33c]
	mov [ebp-0x334], eax
	mov edx, eax
	add edx, 0x1
	mov [ebp-0x330], edx
	jmp FS_ListFilteredFiles_370
FS_ListFilteredFiles_170:
	mov dword [ebp-0x35c], 0x1fff
	jmp FS_ListFilteredFiles_160
FS_ListFilteredFiles_80:
	mov edx, [ebp-0x354]
	mov ebx, [edx+0x18]
	call SEH_GetCurrentLanguage
	cmp ebx, eax
	jnz FS_ListFilteredFiles_140
	mov eax, [ebp-0x354]
	mov eax, [eax+0x4]
	mov [ebp-0x360], eax
	test eax, eax
	jnz FS_ListFilteredFiles_380
FS_ListFilteredFiles_110:
	mov ecx, [ebp-0x354]
	mov ebx, [ecx+0x8]
	test ebx, ebx
	jz FS_ListFilteredFiles_390
	mov eax, [fs_restrict]
	cmp byte [eax+0xc], 0x0
	jnz FS_ListFilteredFiles_400
	mov edi, [fs_numServerIwds]
	test edi, edi
	jnz FS_ListFilteredFiles_400
FS_ListFilteredFiles_500:
	lea edx, [ebx+0x100]
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x31c]
	mov [esp], eax
	lea ecx, [ebp-0x21c]
	mov eax, ebx
	call FS_BuildOSPathForThread
	movzx eax, byte [ebp-0x341]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x31c]
	mov [esp], eax
	call Sys_ListFiles
	mov [ebp-0x338], eax
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jle FS_ListFilteredFiles_410
	xor edi, edi
FS_ListFilteredFiles_450:
	mov edx, [ebp-0x338]
	mov esi, [edx+edi*4]
	cmp dword [ebp-0x35c], 0x1fff
	jz FS_ListFilteredFiles_420
	mov ecx, [ebp-0x35c]
	test ecx, ecx
	jle FS_ListFilteredFiles_430
	xor ebx, ebx
FS_ListFilteredFiles_440:
	mov ecx, [ebp-0x358]
	mov eax, [ecx+ebx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz FS_ListFilteredFiles_420
	add ebx, 0x1
	cmp ebx, [ebp-0x35c]
	jnz FS_ListFilteredFiles_440
FS_ListFilteredFiles_430:
	mov [esp+0x4], esi
	mov eax, [ebp-0x340]
	mov [esp], eax
	call Hunk_CopyString
	mov edx, [ebp-0x35c]
	mov ecx, [ebp-0x358]
	mov [ecx+edx*4], eax
	add edx, 0x1
	mov [ebp-0x35c], edx
FS_ListFilteredFiles_420:
	add edi, 0x1
	cmp edi, [ebp-0x1c]
	jl FS_ListFilteredFiles_450
	mov eax, [ebp-0x338]
FS_ListFilteredFiles_410:
	mov [esp], eax
	call Sys_FreeFileList
	mov edx, [ebp-0x354]
	mov edx, [edx]
	mov [ebp-0x354], edx
	test edx, edx
	jnz FS_ListFilteredFiles_460
FS_ListFilteredFiles_90:
	mov ecx, [ebp-0x35c]
	mov eax, [ebp+0x1c]
	mov [eax], ecx
	test ecx, ecx
	jz FS_ListFilteredFiles_470
	mov ecx, [ebp-0x35c]
	mov eax, [ebp-0x358]
	mov dword [eax+ecx*4], 0x0
FS_ListFilteredFiles_550:
	mov eax, [ebp-0x358]
	add esp, 0x37c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ListFilteredFiles_130:
	jle FS_ListFilteredFiles_140
	mov ecx, [ebp-0x360]
	mov esi, [ecx+0x304]
	cmp esi, [fs_serverIwds]
	jz FS_ListFilteredFiles_480
	xor ecx, ecx
	mov edx, fs_serverIwds
FS_ListFilteredFiles_490:
	add ecx, 0x1
	cmp ebx, ecx
	jz FS_ListFilteredFiles_140
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp eax, esi
	jnz FS_ListFilteredFiles_490
	jmp FS_ListFilteredFiles_120
FS_ListFilteredFiles_400:
	mov esi, [ebp+0x18]
	test esi, esi
	jz FS_ListFilteredFiles_140
	jmp FS_ListFilteredFiles_500
FS_ListFilteredFiles_20:
	mov edx, [ebp+0x1c]
	mov dword [edx], 0x0
	mov dword [ebp-0x358], 0x0
	mov eax, [ebp-0x358]
	add esp, 0x37c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_ListFilteredFiles_40:
	mov [ebp-0x34c], edx
	jmp FS_ListFilteredFiles_30
FS_ListFilteredFiles_60:
	mov dword [ebp-0x35c], 0x0
	jmp FS_ListFilteredFiles_90
FS_ListFilteredFiles_390:
	mov edx, ecx
	jmp FS_ListFilteredFiles_510
FS_ListFilteredFiles_220:
	mov eax, [ebp-0x34c]
	jmp FS_ListFilteredFiles_520
FS_ListFilteredFiles_250:
	mov eax, [ebp-0x34c]
	add eax, 0x1
	jmp FS_ListFilteredFiles_530
FS_ListFilteredFiles_240:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	movzx eax, byte [ebp-0x341]
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	cmp [ebp-0x364], edx
	jge FS_ListFilteredFiles_160
	mov eax, edx
	sub eax, [ebp-0x364]
	cmp byte [esi+eax-0x1], 0x2e
	jnz FS_ListFilteredFiles_160
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	lea eax, [esi+edx]
	sub eax, [ebp-0x364]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_ListFilteredFiles_160
	jmp FS_ListFilteredFiles_540
FS_ListFilteredFiles_470:
	mov edx, [ebp-0x340]
	mov [esp], edx
	call Hunk_UserDestroy
	mov dword [ebp-0x358], 0x0
	jmp FS_ListFilteredFiles_550
FS_ListFilteredFiles_230:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	not ecx
	cmp byte [ecx+esi-0x2], 0x2f
	jnz FS_ListFilteredFiles_160
	jmp FS_ListFilteredFiles_540
FS_ListFilteredFiles_10:
	mov eax, [ebp+0x1c]
	mov dword [eax], 0x0
	mov dword [ebp-0x358], 0x0
	jmp FS_ListFilteredFiles_550
FS_ListFilteredFiles_260:
	lea eax, [esi+eax]
	mov [esp+0x4], eax
	lea eax, [ebp-0x31c]
	mov [esp], eax
	call strcpy
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	lea edi, [ebp-0x31c]
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x31e], 0x0
	cmp dword [ebp-0x35c], 0x1fff
	jz FS_ListFilteredFiles_170
	mov eax, [ebp-0x35c]
	test eax, eax
	jle FS_ListFilteredFiles_560
	xor ebx, ebx
FS_ListFilteredFiles_570:
	mov edx, [ebp-0x358]
	mov eax, [edx+ebx*4]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x31c]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jz FS_ListFilteredFiles_160
	add ebx, 0x1
	cmp [ebp-0x35c], ebx
	jnz FS_ListFilteredFiles_570
FS_ListFilteredFiles_560:
	lea eax, [ebp-0x31c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x340]
	mov [esp], edx
	call Hunk_CopyString
	mov ecx, [ebp-0x35c]
	mov edx, [ebp-0x358]
	mov [edx+ecx*4], eax
	add ecx, 0x1
	mov [ebp-0x35c], ecx
	jmp FS_ListFilteredFiles_160


;FS_OpenFileOverwrite(char const*)
FS_OpenFileOverwrite:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	lea ebx, [ebp-0x118]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_GetFileOsPath
	test eax, eax
	js FS_OpenFileOverwrite_10
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jnz FS_OpenFileOverwrite_20
FS_OpenFileOverwrite_50:
	mov [esp], ebx
	call GetFileAttributesA
	mov edx, eax
	and edx, 0xfffffffe
	cmp eax, edx
	jz FS_OpenFileOverwrite_30
	mov [esp+0x4], edx
	mov [esp], ebx
	call SetFileAttributesA
FS_OpenFileOverwrite_30:
	mov [esp], ebx
	call FS_FileOpenWriteBinary
	mov esi, eax
	test eax, eax
	jz FS_OpenFileOverwrite_40
	mov dword [esp], 0x0
	call FS_HandleForFile
	mov edi, eax
	lea ebx, [eax+eax*8]
	shl ebx, 0x3
	sub ebx, eax
	shl ebx, 0x2
	mov dword [ebx+fsh+0x14], 0x0
	mov [ebx+fsh], esi
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea eax, [ebx+fsh+0x1c]
	mov [esp], eax
	call Q_strncpyz
	mov dword [ebx+fsh+0x8], 0x0
	mov eax, edi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_OpenFileOverwrite_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_fs_fopenfileover
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_OpenFileOverwrite_50
FS_OpenFileOverwrite_40:
	xor edi, edi
	mov eax, edi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_OpenFileOverwrite_10:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fs_fopenfileover1
	mov dword [esp], 0x2
	call Com_Error
	xor edi, edi
	mov eax, edi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FS_ReplaceSeparators(char*)
FS_ReplaceSeparators:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jz FS_ReplaceSeparators_10
	mov ecx, edx
	xor ebx, ebx
	jmp FS_ReplaceSeparators_20
FS_ReplaceSeparators_40:
	cmp al, 0x5c
	jz FS_ReplaceSeparators_30
	mov [edx], al
	add edx, 0x1
	xor ebx, ebx
FS_ReplaceSeparators_50:
	movzx eax, byte [ecx+0x1]
	add ecx, 0x1
	test al, al
	jz FS_ReplaceSeparators_10
FS_ReplaceSeparators_20:
	cmp al, 0x2f
	jnz FS_ReplaceSeparators_40
FS_ReplaceSeparators_30:
	test bl, bl
	jnz FS_ReplaceSeparators_50
	mov byte [edx], 0x2f
	add edx, 0x1
	mov ebx, 0x1
	movzx eax, byte [ecx+0x1]
	add ecx, 0x1
	test al, al
	jnz FS_ReplaceSeparators_20
FS_ReplaceSeparators_10:
	mov byte [edx], 0x0
	pop ebx
	pop ebp
	ret


;FS_ClearIwdReferences()
FS_ClearIwdReferences:
	push ebp
	mov ebp, esp
	mov eax, [fs_searchpaths]
	test eax, eax
	jz FS_ClearIwdReferences_10
FS_ClearIwdReferences_30:
	mov edx, [eax+0x4]
	test edx, edx
	jz FS_ClearIwdReferences_20
	mov byte [edx+0x314], 0x0
FS_ClearIwdReferences_20:
	mov eax, [eax]
	test eax, eax
	jnz FS_ClearIwdReferences_30
FS_ClearIwdReferences_10:
	pop ebp
	ret


;FS_ConditionalRestart(int, int)
FS_ConditionalRestart:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FS_ConditionalRestart_10
	mov eax, [fs_gameDirVar]
	cmp byte [eax+0xb], 0x0
	jz FS_ConditionalRestart_20
	mov eax, [ebp+0xc]
FS_ConditionalRestart_30:
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_Restart
	mov eax, 0x1
	leave
	ret
FS_ConditionalRestart_20:
	mov eax, [ebp+0xc]
	cmp eax, [fs_checksumFeed]
	jnz FS_ConditionalRestart_30
FS_ConditionalRestart_10:
	xor eax, eax
	leave
	ret


;FS_FOpenTextFileWrite(char const*)
FS_FOpenTextFileWrite:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov dword [esp], 0x0
	call FS_HandleForFile
	mov esi, eax
	lea eax, [eax+eax*8]
	shl eax, 0x3
	sub eax, esi
	mov dword [eax*4+fsh+0x14], 0x0
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	mov ecx, [ebp+0x8]
	mov edx, fs_gamedir
	call FS_BuildOSPathForThread
	mov eax, [fs_debug]
	mov edi, [eax+0xc]
	test edi, edi
	jnz FS_FOpenTextFileWrite_10
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jz FS_FOpenTextFileWrite_20
FS_FOpenTextFileWrite_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call Com_PrintWarning
	xor esi, esi
FS_FOpenTextFileWrite_70:
	mov eax, esi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_FOpenTextFileWrite_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_fs_fopenfilewrit
	mov dword [esp], 0xa
	call Com_Printf
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz FS_FOpenTextFileWrite_30
FS_FOpenTextFileWrite_20:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz FS_FOpenTextFileWrite_30
	movzx eax, byte [ebp-0x117]
	test al, al
	jz FS_FOpenTextFileWrite_40
	mov edi, ebx
	jmp FS_FOpenTextFileWrite_50
FS_FOpenTextFileWrite_60:
	movzx eax, byte [edi+0x2]
	add edi, 0x1
	test al, al
	jz FS_FOpenTextFileWrite_40
FS_FOpenTextFileWrite_50:
	cmp al, 0x2f
	jnz FS_FOpenTextFileWrite_60
	mov byte [edi+0x1], 0x0
	mov [esp], ebx
	call Sys_Mkdir
	mov byte [edi+0x1], 0x2f
	jmp FS_FOpenTextFileWrite_60
FS_FOpenTextFileWrite_40:
	mov [esp], ebx
	call FS_FileOpenWriteText
	lea ebx, [esi+esi*8]
	shl ebx, 0x3
	sub ebx, esi
	shl ebx, 0x2
	mov [ebx+fsh], eax
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea eax, [ebx+fsh+0x1c]
	mov [esp], eax
	call Q_strncpyz
	mov dword [ebx+fsh+0x8], 0x0
	mov ebx, [ebx+fsh]
	test ebx, ebx
	jnz FS_FOpenTextFileWrite_70
	xor esi, esi
	jmp FS_FOpenTextFileWrite_70
	nop


;FS_FOpenFileReadStream(char const*, int*)
FS_FOpenFileReadStream:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, 0x1
	pop ebp
	jmp FS_FOpenFileReadForThread


;FS_FOpenFileWriteToDir(char const*, char const*)
FS_FOpenFileWriteToDir:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	xor ecx, ecx
	pop ebp
	jmp FS_FOpenFileWriteToDirForThread
	nop


;FS_FOpenFileReadDatabase(char const*, int*)
FS_FOpenFileReadDatabase:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, 0x2
	pop ebp
	jmp FS_FOpenFileReadForThread


;FS_CheckFileSystemStarted()
FS_CheckFileSystemStarted:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop
	add [eax], al


;FS_ShutdownServerIwdNames()
FS_ShutdownServerIwdNames:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [fs_numServerIwds]
	test eax, eax
	jle FS_ShutdownServerIwdNames_10
	xor esi, esi
	mov ebx, fs_serverIwdNames
FS_ShutdownServerIwdNames_30:
	mov eax, [ebx]
	test eax, eax
	jz FS_ShutdownServerIwdNames_20
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x0
FS_ShutdownServerIwdNames_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [fs_numServerIwds]
	jl FS_ShutdownServerIwdNames_30
FS_ShutdownServerIwdNames_10:
	mov dword [fs_numServerIwds], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_AddIwdPureCheckReference(searchpath_s const*)
FS_AddIwdPureCheckReference:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	test eax, eax
	jnz FS_AddIwdPureCheckReference_10
	mov ebx, [fs_iwdPureChecks]
	test ebx, ebx
	jnz FS_AddIwdPureCheckReference_20
	jmp FS_AddIwdPureCheckReference_30
FS_AddIwdPureCheckReference_40:
	mov ebx, [ebx]
	test ebx, ebx
	jz FS_AddIwdPureCheckReference_30
FS_AddIwdPureCheckReference_20:
	mov edx, [esi+0x4]
	mov eax, [ebx+0x4]
	cmp eax, [edx+0x304]
	jnz FS_AddIwdPureCheckReference_40
	lea eax, [edx+0x100]
	mov [esp+0x4], eax
	lea eax, [ebx+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FS_AddIwdPureCheckReference_40
FS_AddIwdPureCheckReference_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FS_AddIwdPureCheckReference_30:
	mov dword [esp], 0x208
	call Z_MallocInternal
	mov ebx, eax
	mov dword [eax], 0x0
	mov eax, [esi+0x4]
	mov eax, [eax+0x304]
	mov [ebx+0x4], eax
	mov dword [esp+0x8], 0x100
	mov eax, [esi+0x4]
	add eax, 0x100
	mov [esp+0x4], eax
	lea eax, [ebx+0x8]
	mov [esp], eax
	call Q_strncpyz
	mov dword [esp+0x8], 0x100
	mov eax, [esi+0x4]
	add eax, 0x200
	mov [esp+0x4], eax
	lea eax, [ebx+0x108]
	mov [esp], eax
	call Q_strncpyz
	mov edx, [fs_iwdPureChecks]
	test edx, edx
	jnz FS_AddIwdPureCheckReference_50
	jmp FS_AddIwdPureCheckReference_60
FS_AddIwdPureCheckReference_70:
	mov edx, eax
FS_AddIwdPureCheckReference_50:
	mov eax, [edx]
	test eax, eax
	jnz FS_AddIwdPureCheckReference_70
	mov [edx], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FS_AddIwdPureCheckReference_60:
	mov [fs_iwdPureChecks], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_ShutdownServerReferencedFFs()
FS_ShutdownServerReferencedFFs:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [fs_numServerReferencedFFs]
	test eax, eax
	jle FS_ShutdownServerReferencedFFs_10
	xor esi, esi
	mov ebx, fs_serverReferencedFFNames
FS_ShutdownServerReferencedFFs_30:
	mov eax, [ebx]
	test eax, eax
	jz FS_ShutdownServerReferencedFFs_20
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x0
FS_ShutdownServerReferencedFFs_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [fs_numServerReferencedFFs]
	jl FS_ShutdownServerReferencedFFs_30
FS_ShutdownServerReferencedFFs_10:
	mov dword [fs_numServerReferencedFFs], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_ShutdownServerReferencedIwds()
FS_ShutdownServerReferencedIwds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [fs_numServerReferencedIwds]
	test eax, eax
	jle FS_ShutdownServerReferencedIwds_10
	xor esi, esi
	mov ebx, fs_serverReferencedIwdNames
FS_ShutdownServerReferencedIwds_30:
	mov eax, [ebx]
	test eax, eax
	jz FS_ShutdownServerReferencedIwds_20
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x0
FS_ShutdownServerReferencedIwds_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [fs_numServerReferencedIwds]
	jl FS_ShutdownServerReferencedIwds_30
FS_ShutdownServerReferencedIwds_10:
	mov dword [fs_numServerReferencedIwds], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_ShutDownIwdPureCheckReferences()
FS_ShutDownIwdPureCheckReferences:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [fs_iwdPureChecks]
	test eax, eax
	jnz FS_ShutDownIwdPureCheckReferences_10
	jmp FS_ShutDownIwdPureCheckReferences_20
FS_ShutDownIwdPureCheckReferences_30:
	mov eax, ebx
FS_ShutDownIwdPureCheckReferences_10:
	mov ebx, [eax]
	mov [esp], eax
	call Z_FreeInternal
	test ebx, ebx
	jnz FS_ShutDownIwdPureCheckReferences_30
FS_ShutDownIwdPureCheckReferences_20:
	mov dword [fs_iwdPureChecks], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;FS_Read(void*, int, int)
FS_Read:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x10]
	test edx, edx
	jz FS_Read_10
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov ebx, [eax+fsh+0x14]
	test ebx, ebx
	jz FS_Read_20
	mov edx, [ebp-0x28]
	mov [ebp+0x10], edx
	mov [ebp+0xc], ecx
	mov eax, [eax+fsh]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp unzReadCurrentFile
FS_Read_20:
	mov eax, [eax+fsh]
	mov [ebp-0x1c], eax
	mov edi, ecx
	mov eax, [ebp-0x28]
	test eax, eax
	jnz FS_Read_30
FS_Read_60:
	mov eax, [ebp-0x28]
FS_Read_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Read_10:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Read_30:
	sub edx, 0x31
	mov [ebp-0x24], edx
	mov esi, [ebp-0x28]
	mov dword [ebp-0x20], 0x0
	jmp FS_Read_40
FS_Read_70:
	mov eax, [ebp-0x20]
	test eax, eax
	jnz FS_Read_50
	mov dword [ebp-0x20], 0x1
FS_Read_80:
	add edi, ebx
	sub esi, ebx
	jz FS_Read_60
FS_Read_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call FS_FileRead
	mov ebx, eax
	test eax, eax
	jz FS_Read_70
	cmp eax, 0xffffffff
	jnz FS_Read_80
	cmp dword [ebp-0x24], 0xc
	jbe FS_Read_90
	mov dword [esp+0x4], _cstring_fs_read_1_bytes_
	mov dword [esp], 0x1
	call Com_Error
	jmp FS_Read_80
FS_Read_50:
	mov eax, [ebp-0x28]
	sub eax, esi
	jmp FS_Read_100
FS_Read_90:
	mov eax, 0xffffffff
	jmp FS_Read_100
	nop


;FS_Seek(int, long, int)
FS_Seek:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov edi, [ebp+0x10]
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	lea esi, [eax*4]
	mov eax, [esi+fsh+0x14]
	test eax, eax
	jz FS_Seek_10
	mov eax, [ebp-0x20]
	test eax, eax
	jnz FS_Seek_20
	cmp edi, 0x2
	jz FS_Seek_30
	test edi, edi
	jz FS_Seek_40
FS_Seek_20:
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	lea esi, [eax*4]
	mov eax, [esi+fsh]
	mov [esp], eax
	call unztell
	mov [ebp-0x1c], eax
	test edi, edi
	jz FS_Seek_50
	cmp edi, 0x1
	jnz FS_Seek_60
	mov eax, [esi+fsh+0x14]
	test eax, eax
	jz FS_Seek_70
	mov eax, [esi+fsh]
	mov eax, [eax+0x44]
FS_Seek_170:
	add eax, [ebp-0x20]
	cmp [ebp-0x1c], eax
	jg FS_Seek_80
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	shl eax, 0x2
	mov esi, [eax+fsh+0x14]
	test esi, esi
	jz FS_Seek_90
	mov eax, [eax+fsh]
	mov eax, [eax+0x44]
FS_Seek_150:
	add eax, [ebp-0x20]
	sub eax, [ebp-0x1c]
	jmp FS_Seek_100
FS_Seek_160:
	mov eax, [esi+fsh+0x10]
	mov [esp+0x4], eax
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzSetCurrentFileInfoPosition
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzOpenCurrentFile
FS_Seek_120:
	mov eax, [ebp-0x20]
FS_Seek_100:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	mov eax, [eax*4+fsh]
	mov [esp], eax
	call unzReadCurrentFile
	test eax, eax
	jz FS_Seek_110
FS_Seek_40:
	xor eax, eax
FS_Seek_140:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Seek_50:
	mov eax, [ebp-0x20]
	test eax, eax
	jns FS_Seek_120
	mov eax, [esi+fsh+0x10]
	mov [esp+0x4], eax
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzSetCurrentFileInfoPosition
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzOpenCurrentFile
	mov eax, [ebp-0x20]
	add eax, [ebp-0x1c]
	jmp FS_Seek_100
FS_Seek_30:
	mov eax, [esi+fsh+0x10]
	mov [esp+0x4], eax
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzSetCurrentFileInfoPosition
	mov eax, [esi+fsh]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp unzOpenCurrentFile
FS_Seek_10:
	mov [ebp+0x10], edi
	mov eax, [ebp-0x20]
	mov [ebp+0xc], eax
	mov eax, [esi+fsh]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp FS_FileSeek
FS_Seek_80:
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	lea esi, [eax*4]
	mov eax, [esi+fsh+0x10]
	mov [esp+0x4], eax
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzSetCurrentFileInfoPosition
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzOpenCurrentFile
	mov edi, [esi+fsh+0x14]
	test edi, edi
	jz FS_Seek_130
	mov eax, [esi+fsh]
	mov eax, [eax+0x44]
	add eax, [ebp-0x20]
	jmp FS_Seek_100
FS_Seek_110:
	mov eax, 0xffffffff
	jmp FS_Seek_140
FS_Seek_90:
	mov eax, [eax+fsh]
	mov [esp], eax
	call FS_FileGetFileSize
	jmp FS_Seek_150
FS_Seek_60:
	cmp edi, 0x2
	jnz FS_Seek_110
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jl FS_Seek_160
	mov eax, [ebp-0x20]
	sub eax, [ebp-0x1c]
	jmp FS_Seek_100
FS_Seek_70:
	mov eax, [esi+fsh]
	mov [esp], eax
	call FS_FileGetFileSize
	jmp FS_Seek_170
FS_Seek_130:
	mov eax, [esi+fsh]
	mov [esp], eax
	call FS_FileGetFileSize
	add eax, [ebp-0x20]
	jmp FS_Seek_100


;FS_FTell(int)
FS_FTell:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov edx, [eax+fsh+0x14]
	test edx, edx
	jz FS_FTell_10
	mov eax, [eax+fsh]
	mov [ebp+0x8], eax
	pop ebp
	jmp unztell
FS_FTell_10:
	mov eax, [eax+fsh]
	mov [ebp+0x8], eax
	pop ebp
	jmp ftell
	nop


;FS_Flush(int)
FS_Flush:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*8]
	shl edx, 0x3
	sub edx, eax
	mov eax, [edx*4+fsh]
	mov [esp], eax
	call fflush
	leave
	ret


;FS_Write(void const*, int, int)
FS_Write:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x10]
	test edi, edi
	jz FS_Write_10
	lea eax, [edi+edi*8]
	shl eax, 0x3
	sub eax, edi
	mov eax, [eax*4+fsh]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jnz FS_Write_20
FS_Write_50:
	lea eax, [edi+edi*8]
	shl eax, 0x3
	sub eax, edi
	mov esi, [eax*4+fsh+0x8]
	test esi, esi
	jnz FS_Write_30
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Write_30:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call fflush
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Write_20:
	mov ebx, [ebp+0xc]
	mov dword [ebp-0x20], 0x0
	jmp FS_Write_40
FS_Write_60:
	mov edx, [ebp-0x20]
	test edx, edx
	jnz FS_Write_10
	mov dword [ebp-0x20], 0x1
FS_Write_70:
	add esi, eax
	sub ebx, eax
	jz FS_Write_50
FS_Write_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FS_FileWrite
	test eax, eax
	jz FS_Write_60
	cmp eax, 0xffffffff
	jnz FS_Write_70
FS_Write_10:
	mov dword [ebp+0xc], 0x0
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_Path_f()
FS_Path_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x1
	call FS_DisplayPath
	leave
	ret


;FS_Printf(int, char const*, ...)
FS_Printf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x103c
	mov esi, [ebp+0x8]
	lea eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	lea ebx, [ebp-0x101c]
	mov [esp], ebx
	call vsnprintf
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	test esi, esi
	jz FS_Printf_10
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	mov eax, [eax*4+fsh]
	mov [ebp-0x102c], eax
	test edi, edi
	jnz FS_Printf_20
FS_Printf_50:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	mov ebx, [eax*4+fsh+0x8]
	test ebx, ebx
	jnz FS_Printf_30
FS_Printf_10:
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Printf_30:
	mov eax, [ebp-0x102c]
	mov [esp], eax
	call fflush
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FS_Printf_20:
	mov dword [ebp-0x1030], 0x0
	jmp FS_Printf_40
FS_Printf_60:
	mov edx, [ebp-0x1030]
	test edx, edx
	jnz FS_Printf_10
	mov dword [ebp-0x1030], 0x1
FS_Printf_70:
	add ebx, eax
	sub edi, eax
	jz FS_Printf_50
FS_Printf_40:
	mov eax, [ebp-0x102c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call FS_FileWrite
	test eax, eax
	jz FS_Printf_60
	cmp eax, 0xffffffff
	jnz FS_Printf_70
	jmp FS_Printf_10


;FS_Remove(char const*)
FS_Remove:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call remove
	leave
	ret
	nop


;FS_Rename(char const*, char const*, char const*, char const*)
FS_Rename:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x210
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea esi, [ebp-0x108]
	mov [esp], esi
	call FS_BuildOSPathForThread
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x208]
	mov [esp], ebx
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0x14]
	call FS_BuildOSPathForThread
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jnz FS_Rename_10
FS_Rename_40:
	mov [esp+0x4], ebx
	mov [esp], esi
	call rename
	test eax, eax
	jnz FS_Rename_20
FS_Rename_30:
	add esp, 0x210
	pop ebx
	pop esi
	pop ebp
	ret
FS_Rename_20:
	mov [esp], ebx
	call remove
	mov [esp+0x4], ebx
	mov [esp], esi
	call rename
	test eax, eax
	jz FS_Rename_30
	mov [esp+0x4], ebx
	mov [esp], esi
	call FS_CopyFile
	mov [esp], esi
	call remove
	add esp, 0x210
	pop ebx
	pop esi
	pop ebp
	ret
FS_Rename_10:
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_fs_rename_s__s
	mov dword [esp], 0xa
	call Com_Printf
	jmp FS_Rename_40
	nop


;Initialized global or static variables of com_files:
SECTION .data
fs_iwdPureChecks: dd 0x0
fs_numServerIwds: dd 0x0
fs_searchpaths: dd 0x0, 0x0, 0x0, 0x0, 0x0
fs_iwdFileCount: dd 0x0


;Initialized constant data of com_files:
SECTION .rdata


;Zero initialized global or static variables of com_files:
SECTION .bss
g_disablePureCheck: resb 0x4
_ZZ15IwdFileLanguagePKcE7iString: resb 0x1c
_ZZ15IwdFileLanguagePKcE17szIwdLanguageName: resb 0x80
_ZZ30FS_AddIwdFilesForGameDirectoryPKcS0_E16bLanguagesListed: resb 0x60
fs_gameDirVar: resb 0x4
fs_checksumFeed: resb 0x4
fs_homepath: resb 0x4
fs_basepath: resb 0x4
com_fileAccessed: resb 0x40
fs_cdpath: resb 0x4
fs_debug: resb 0x18
fs_fakeChkSum: resb 0x4
fs_numServerReferencedFFs: resb 0x20
fs_numServerReferencedIwds: resb 0x20
fs_restrict: resb 0x4
fs_serverIwdNames: resb 0x1000
fs_serverIwds: resb 0x1000
fs_serverReferencedFFCheckSums: resb 0x80
fs_serverReferencedFFNames: resb 0x80
fs_serverReferencedIwdNames: resb 0x1000
fs_serverReferencedIwds: resb 0x1000
fsh: resb 0x481c
fs_ignoreLocalized: resb 0x4
fs_basegame: resb 0x4
fs_copyfiles: resb 0x4
fs_gamedir: resb 0x100
fs_loadStack: resb 0x4
fs_usedevdir: resb 0x4
lastValidBase: resb 0x100
lastValidGame: resb 0x100


;All cstrings:
SECTION .rdata
_cstring_fs_buildospath_o:		db 015h,"FS_BuildOSPath: os path length exceeded",0ah,0
_cstring_mods:		db "mods",0
_cstring_error_invalid_se:		db "ERROR: Invalid server value ",27h,"%s",27h," for ",27h,"%s",27h,0ah,0ah,0
_cstring_:		db "..",0
_cstring_1:		db "::",0
_cstring___________:		db "          ",0
_cstring_english:		db "english",0
_cstring_null:		db 0
_cstring_iwd:		db "iwd",0
_cstring_main:		db "main",0
_cstring_warning_localize:		db "WARNING: Localized assets iwd file %s/%s/%s has invalid name (no language specified). Proper naming convention is: localized_[language]_iwd#.iwd",0ah,0
_cstring_iw_:		db "iw_",0
_cstring_warning_invalid_:		db "WARNING: Invalid IWD %s in ",5ch,"main.",0ah,0
_cstring_localized_:		db "localized_",0
_cstring_warning_exceeded:		db "WARNING: Exceeded max number of iwd files in %s/%s (%1/%1)",0ah,0
_cstring_iwd1:		db ".iwd",0
_cstring_no_iwd_files_fou:		db "No IWD files found in /main",0
_cstring_warning_localize1:		db "WARNING: Localized assets iwd file %s/%s/%s has invalid name (bad language name specified). Proper naming convention is: localized_[language]_iwd#.iwd",0ah,0
_cstring_supported_langua:		db "Supported languages are:",0ah,0
_cstring_____s:		db "    %s",0ah,0
_cstring_ss:		db "%s/%s",0
_cstring_localized:		db "localized",0
_cstring_nonlocalized:		db "non-localized",0
_cstring_warning_game_fol:		db "WARNING: game folder %s/%s added as both localized & non-localized. Using folder as %s",0ah,0
_cstring_warning_game_fol1:		db "WARNING: game folder %s/%s re-added as localized folder with different language",0ah,0
_cstring_players:		db "players",0
_cstring_impure_client_de:		db "Impure client detected. Invalid .IWD files referenced!",0
_cstring_ss1:		db "%s",0ah,"%s",0
_cstring_error_s_must_be_:		db "Error: %s must be in an IWD",0ah,0
_cstring_fs_fopenfileread:		db "FS_FOpenFileRead: %s (found in ",27h,"%s/%s",27h,")",0ah,0
_cstring_bantxt:		db "ban.txt",0
_cstring_hlsl:		db ".hlsl",0
_cstring_txt:		db ".txt",0
_cstring_cfg:		db ".cfg",0
_cstring_levelshots:		db ".levelshots",0
_cstring_menu:		db ".menu",0
_cstring_arena:		db ".arena",0
_cstring_str:		db ".str",0
_cstring_fs_fopenfileread1:		db "FS_FOpenFileRead: %s (found in ",27h,"%s",27h,")",0ah,0
_cstring_couldnt_reopen_s:		db 015h,"Couldn",27h,"t reopen %s",0
_cstring_cant_find_s:		db "Can",27h,"t find %s",0ah,0
_cstring_cfg1:		db "cfg",0
_cstring_dm_network_proto:		db ".dm_NETWORK_PROTOCOL_VERSION",0
_cstring_error_s_must_be_1:		db "Error: %s must be in an IWD or not in the main directory",0ah,0
_cstring_warning_refusing:		db "WARNING: refusing to create relative path ",22h,"%s",22h,0ah,0
_cstring_fs_fopenfilewrit:		db "FS_FOpenFileWrite: %s",0ah,0
_cstring_fs_listfilteredf:		db "FS_ListFilteredFilesInLocation",0
_cstring_dev:		db "dev",0
_cstring_temp:		db "temp",0
_cstring_raw:		db "raw",0
_cstring_raw_shared:		db "raw_shared",0
_cstring_devraw:		db "devraw",0
_cstring_fs_readfile_with:		db 015h,"FS_ReadFile with empty name",0ah,0
_cstring_default_mpcfg:		db "default_mp.cfg",0
_cstring_config_mpcfg:		db "config_mp.cfg",0
_cstring_exec_s:		db "exec %s",0ah,0
_cstring_couldnt_load_s__:		db "Couldn",27h,"t load %s.  Make sure Call of Duty is run from the correct folder.",0
_cstring_invalid_game_fol:		db "Invalid game folder",0ah,0
_cstring__fs_startup_:		db "----- FS_Startup -----",0ah,0
_cstring_enable_file_syst:		db "Enable file system debugging information",0
_cstring_fs_debug:		db "fs_debug",0
_cstring_copy_all_used_fi:		db "Copy all used files to another location",0
_cstring_fs_copyfiles:		db "fs_copyfiles",0
_cstring_cd_path:		db "CD path",0
_cstring_fs_cdpath:		db "fs_cdpath",0
_cstring_base_game_path:		db "Base game path",0
_cstring_fs_basepath:		db "fs_basepath",0
_cstring_base_game_name:		db "Base game name",0
_cstring_fs_basegame:		db "fs_basegame",0
_cstring_game_data_direct:		db "Game data directory. Must be ",22h,22h," or a sub directory of ",27h,"mods/",27h,".",0
_cstring_fs_game:		db "fs_game",0
_cstring_ignore_localized:		db "Ignore localized files",0
_cstring_fs_ignorelocaliz:		db "fs_ignoreLocalized",0
_cstring_game_home_path:		db "Game home path",0
_cstring_fs_homepath:		db "fs_homepath",0
_cstring_restrict_file_ac:		db "Restrict file access for demos etc.",0
_cstring_fs_restrict:		db "fs_restrict",0
_cstring_use_development_:		db "Use development directories.",0
_cstring_fs_usedevdir:		db "fs_usedevdir",0
_cstring_2:		db "----------------------",0ah,0
_cstring_d_files_in_iwd_f:		db "%d files in iwd files",0ah,0
_cstring_devraw_shared:		db "devraw_shared",0
_cstring_s_shared:		db "%s_shared",0
_cstring_short_read_in_fs:		db 015h,"Short read in FS_CopyFile()",0ah,0
_cstring_short_write_in_f:		db 015h,"Short write in FS_CopyFile()",0ah,0
_cstring_failed_to_open_s:		db "Failed to open %s",0ah,0
_cstring_current_language:		db "Current language: %s",0ah,0
_cstring_current_search_p:		db "Current search path:",0ah,0
_cstring_s_i_files:		db "%s (%i files)",0ah,0
_cstring_____not_on_the_p:		db "    not on the pure list",0ah,0
_cstring_file_handles:		db 0ah,"File Handles:",0ah,0
_cstring_handle_i_s:		db "handle %i: %s",0ah,0
_cstring_____localized_as:		db "    localized assets iwd file for %s",0ah,0
_cstring_____on_the_pure_:		db "    on the pure list",0ah,0
_cstring_ss2:		db "%s/%s",0ah,0
_cstring_____localized_as1:		db "    localized assets game folder for %s",0ah,0
_cstring_____localized_as2:		db "    localized assets are being ignored",0ah,0
_cstring_modlist:		db "$modlist",0
_cstring_file_2i_s_0xx:		db "FILE %2i: ",27h,"%s",27h," 0x%x",0ah,0
_cstring_fs_handleforfile:		db "FS_HandleForFile: none free (%d)",0ah,0
_cstring_fs_handleforfile1:		db 015h,"FS_HandleForFile: none free",0
_cstring_loc_language:		db "loc_language",0
_cstring_filesyscheckcfg:		db "fileSysCheck.cfg",0
_cstring_mapsmpsd3dbsp:		db "maps/mp/%s.d3dbsp",0
_cstring_fs_fopenfileappe:		db "FS_FOpenFileAppend: %s",0ah,0
_cstring_fsh_fopenfile_ba:		db 015h,"FSH_FOpenFile: bad mode",0
_cstring_s:		db "%s",0
_cstring_3:		db ".",0
_cstring_4:		db "/",0
_cstring_fs_listfilteredf1:		db "FS_ListFilteredFiles",0
_cstring_fs_fopenfileover:		db "FS_FOpenFileOverWrite: %s",0ah,0
_cstring_fs_fopenfileover1:		db "FS_FOpenFileOverWrite: Failed to open %s for writing.  It either does not exist or is in a iwd file.",0
_cstring_fs_read_1_bytes_:		db 015h,"FS_Read: -1 bytes read",0
_cstring_fs_rename_s__s:		db "FS_Rename: %s --> %s",0ah,0



;All constant floats and doubles:
SECTION .rdata

