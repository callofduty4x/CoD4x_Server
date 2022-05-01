;Imports of com_files:
	extern unzClose
	extern Z_FreeInternal
	extern _Z9Com_Error11errorParm_tPKcz
	extern memcpy
	extern _Z10I_strnicmpPKcS0_i
	extern _Z26LiveStorage_ClearWriteFlagv
	extern strstr
	extern _Z9I_strncmpPKcS0_i
	extern _Z9I_isloweri
	extern _Z9I_stricmpPKcS0_
	extern memset
	extern __maskrune
	extern _Z13Sys_ListFilesPKcS0_S0_Pii
	extern qsort
	extern _Z16Sys_FreeFileListPPc
	extern unzOpen
	extern unzGetGlobalInfo
	extern _Z16Com_PrintWarningiPKcz
	extern unzGoToFirstFile
	extern Z_MallocInternal
	extern _Z10I_strncpyzPcPKci
	extern _Z22Com_BlockChecksumKey32PKvmj
	extern strcpy
	extern _Z27SEH_GetLanguageIndexForNamePKcPi
	extern unzGetCurrentFileInfo
	extern unzGoToNextFile
	extern unzGetCurrentFileInfoPosition
	extern _Z8I_strlwrPc
	extern tolower
	extern _Z10Com_PrintfiPKcz
	extern _Z19SEH_GetLanguageNamei
	extern _Z11Com_sprintfPciPKcz
	extern _Z24Sys_DirectoryHasContentsPKc
	extern _Z22SEH_GetCurrentLanguagev
	extern _Z2vaPKcz
	extern FS_FileOpenReadBinary
	extern iInterlockedCompareExchange
	extern unzSetCurrentFileInfoPosition
	extern Com_Memcpy
	extern unzOpenCurrentFile
	extern FS_FileClose
	extern unzReOpen
	extern _Z25Com_GetExtensionSubStringPKc
	extern FS_FileGetFileSize
	extern _Z7ms_randv
	extern _Z9Sys_MkdirPKc
	extern FS_FileOpenWriteBinary
	extern Hunk_FreeTempMemory
	extern _Z16Hunk_UserDestroyP8HunkUser
	extern _Z15Hunk_UserCreateiPKchhi
	extern _Z14Hunk_UserAllocP8HunkUserii
	extern Hunk_AllocateTempMemory
	extern _Z14SND_StopSounds20snd_stopsounds_arg_t
	extern _Z21SEH_Shutdown_StringEdv
	extern _Z17FS_RemoveCommandsv
	extern _Z17SEH_Init_StringEdv
	extern _Z22SEH_UpdateLanguageInfov
	extern _Z18FS_SetRestrictionsv
	extern _Z12Com_SafeModev
	extern _Z12Cbuf_AddTextiPKc
	extern _Z26FS_PureServerSetLoadedIwdsPKcS0_
	extern _Z14Dvar_SetStringPK6dvar_sPKc
	extern _Z12Dvar_SetBoolPK6dvar_sh
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z17Sys_DefaultCDPathv
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern _Z7Sys_Cwdv
	extern _Z18Dvar_SetDomainFuncPK6dvar_sPFhPS_9DvarValueE
	extern _Z19Sys_DefaultHomePathv
	extern _Z13Com_ReadCDKeyv
	extern _Z14FS_AddCommandsv
	extern _Z18Dvar_ClearModifiedPK6dvar_s
	extern malloc
	extern FS_FileRead
	extern free
	extern FS_FileWrite
	extern fflush
	extern remove
	extern unzCloseCurrentFile
	extern _Z10Com_MemsetPvii
	extern _Z13FS_GetModListPci
	extern com_sv_running
	extern _Z19Com_StartupVariablePKc
	extern _Z16SEH_InitLanguagev
	extern _Z16Sys_IsMainThreadv
	extern FS_FileOpenAppendText
	extern access
	extern _Z14Com_FilterPathPKcS0_i
	extern _Z15Hunk_CopyStringP8HunkUserPKc
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
	global _Z22FS_ShutdownSearchPathsP12searchpath_s
	global _Z19FS_SanitizeFilenamePKcPci
	global _ZZ15IwdFileLanguagePKcE7iString
	global _ZZ15IwdFileLanguagePKcE17szIwdLanguageName
	global _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	global _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue
	global _Z7iwdsortPKvS0_
	global _ZZ30FS_AddIwdFilesForGameDirectoryPKcS0_E16bLanguagesListed
	global _Z30FS_AddIwdFilesForGameDirectoryPKcS0_
	global _Z19FS_AddGameDirectoryPKcS0_ii
	global _Z25FS_FOpenFileReadForThreadPKcPi8FsThread
	global _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread
	global FS_FreeFile
	global FS_FreeFileList
	global FS_ListFiles
	global FS_ListFilesInLocation
	global FS_ListFilteredFilesInLocation
	global FS_ReadFile
	global _Z10FS_Restartii
	global _Z10FS_StartupPKc
	global _Z11FS_CopyFilePcS_
	global _Z11FS_Shutdowni
	global _Z11FS_WriteLogPKvii
	global _Z12FS_LoadStackv
	global _Z12FS_TouchFilePKc
	global _Z12FS_WriteFilePKcPKvi
	global _Z13FS_CreatePathPc
	global _Z13FS_FCloseFilei
	global _Z13FS_FileExistsPKc
	global _Z13FS_FullPath_fv
	global _Z13FS_ResetFilesv
	global _Z13FS_filelengthi
	global _Z14FS_BuildOSPathPKcS0_S0_Pc
	global _Z14FS_ConvertPathPc
	global _Z14FS_DeleteInDirPKcS0_
	global _Z14FS_DisplayPathi
	global _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci
	global _Z14FS_Initializedv
	global _Z14FS_NeedRestarti
	global _Z15FS_HashFileNamePKci
	global _Z15FS_SortFileListPPKci
	global _Z16FS_FCloseLogFilei
	global _Z16FS_FOpenFileReadPKcPi
	global _Z16FS_FileForHandlei
	global _Z16FS_GetFileOsPathPKcPc
	global _Z16FS_HandleForFile8FsThread
	global _Z16FS_UseSearchPathPK12searchpath_s
	global _Z17FS_FOpenFileWritePKc
	global _Z17FS_InitFilesystemv
	global _Z17FS_WriteFileToDirPKcS0_PKvi
	global _Z18Com_GetBspFilenamePciPKc
	global _Z18FS_FOpenFileAppendPKc
	global _Z18FS_FOpenFileByModePKcPi8fsMode_t
	global _Z18FS_FilenameComparePKcS0_
	global _Z18FS_ShortOSFilePathPKc
	global _Z19FS_DisablePureCheckh
	global _Z20FS_AddUserMapDirIWDsPKc
	global _Z20FS_LanguageHasAssetsi
	global _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii
	global _Z20FS_OpenFileOverwritePKc
	global _Z20FS_ReplaceSeparatorsPc
	global _Z21FS_ClearIwdReferencesv
	global _Z21FS_ConditionalRestartii
	global _Z21FS_FOpenTextFileWritePKc
	global _Z22FS_FOpenFileReadStreamPKcPi
	global _Z22FS_FOpenFileWriteToDirPKcS0_
	global _Z24FS_FOpenFileReadDatabasePKcPi
	global _Z25FS_CheckFileSystemStartedv
	global _Z25FS_ShutdownServerIwdNamesv
	global _Z27FS_AddIwdPureCheckReferencePK12searchpath_s
	global _Z30FS_ShutdownServerReferencedFFsv
	global _Z31FS_ShutdownServerReferencedIwdsv
	global _Z33FS_ShutDownIwdPureCheckReferencesv
	global _Z7FS_ReadPvii
	global _Z7FS_Seekili
	global _Z8FS_FTelli
	global _Z8FS_Flushi
	global _Z8FS_WritePKvii
	global _Z9FS_Path_fv
	global _Z9FS_PrintfiPKcz
	global _Z9FS_RemovePKc
	global _Z9FS_RenamePKcS0_S0_S0_
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
_Z22FS_ShutdownSearchPathsP12searchpath_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	test eax, eax
	jnz _Z22FS_ShutdownSearchPathsP12searchpath_s_10
	jmp _Z22FS_ShutdownSearchPathsP12searchpath_s_20
_Z22FS_ShutdownSearchPathsP12searchpath_s_50:
	mov ebx, esi
_Z22FS_ShutdownSearchPathsP12searchpath_s_10:
	mov esi, [ebx]
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z22FS_ShutdownSearchPathsP12searchpath_s_30
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
_Z22FS_ShutdownSearchPathsP12searchpath_s_30:
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z22FS_ShutdownSearchPathsP12searchpath_s_40
	mov [esp], eax
	call Z_FreeInternal
_Z22FS_ShutdownSearchPathsP12searchpath_s_40:
	mov [esp], ebx
	call Z_FreeInternal
	test esi, esi
	jnz _Z22FS_ShutdownSearchPathsP12searchpath_s_50
_Z22FS_ShutdownSearchPathsP12searchpath_s_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_SanitizeFilename(char const*, char*, int)
_Z19FS_SanitizeFilenamePKcPci:
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
_Z19FS_SanitizeFilenamePKcPci_30:
	movzx eax, byte [esi+ecx]
	cmp al, 0x2f
	jz _Z19FS_SanitizeFilenamePKcPci_10
	cmp al, 0x5c
	jnz _Z19FS_SanitizeFilenamePKcPci_20
_Z19FS_SanitizeFilenamePKcPci_10:
	add ecx, 0x1
	jmp _Z19FS_SanitizeFilenamePKcPci_30
_Z19FS_SanitizeFilenamePKcPci_20:
	lea ebx, [esi+ecx]
	test al, al
	jz _Z19FS_SanitizeFilenamePKcPci_40
	mov dword [ebp-0x10], 0x0
_Z19FS_SanitizeFilenamePKcPci_140:
	cmp al, 0x2e
	jz _Z19FS_SanitizeFilenamePKcPci_50
	cmp al, 0x3a
	jnz _Z19FS_SanitizeFilenamePKcPci_60
	cmp byte [ebx+0x1], 0x3a
	jz _Z19FS_SanitizeFilenamePKcPci_70
_Z19FS_SanitizeFilenamePKcPci_60:
	cmp al, 0x2e
	jz _Z19FS_SanitizeFilenamePKcPci_80
_Z19FS_SanitizeFilenamePKcPci_170:
	mov edi, [ebp-0x10]
	add edi, 0x1
	cmp edi, [ebp-0x18]
	jge _Z19FS_SanitizeFilenamePKcPci_70
	cmp al, 0x2f
	jz _Z19FS_SanitizeFilenamePKcPci_90
	cmp al, 0x5c
	jnz _Z19FS_SanitizeFilenamePKcPci_100
_Z19FS_SanitizeFilenamePKcPci_90:
	mov eax, [ebp-0x14]
	mov edx, [ebp-0x10]
	mov byte [eax+edx], 0x2f
	xor edx, edx
_Z19FS_SanitizeFilenamePKcPci_130:
	movzx eax, byte [ebx+edx+0x1]
	cmp al, 0x2f
	jz _Z19FS_SanitizeFilenamePKcPci_110
	cmp al, 0x5c
	jnz _Z19FS_SanitizeFilenamePKcPci_120
_Z19FS_SanitizeFilenamePKcPci_110:
	add edx, 0x1
	jmp _Z19FS_SanitizeFilenamePKcPci_130
_Z19FS_SanitizeFilenamePKcPci_120:
	add ecx, edx
	mov [ebp-0x10], edi
_Z19FS_SanitizeFilenamePKcPci_160:
	add ecx, 0x1
	lea ebx, [esi+ecx]
	movzx eax, byte [ebx]
	test al, al
	jnz _Z19FS_SanitizeFilenamePKcPci_140
	mov eax, [ebp-0x10]
	jmp _Z19FS_SanitizeFilenamePKcPci_150
_Z19FS_SanitizeFilenamePKcPci_40:
	xor eax, eax
_Z19FS_SanitizeFilenamePKcPci_150:
	mov ebx, [ebp-0x14]
	mov byte [eax+ebx], 0x0
	mov eax, 0x1
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19FS_SanitizeFilenamePKcPci_100:
	mov edx, [ebp-0x14]
	mov ebx, [ebp-0x10]
	mov [edx+ebx], al
	mov [ebp-0x10], edi
	jmp _Z19FS_SanitizeFilenamePKcPci_160
_Z19FS_SanitizeFilenamePKcPci_50:
	cmp byte [ebx+0x1], 0x2e
	jnz _Z19FS_SanitizeFilenamePKcPci_60
_Z19FS_SanitizeFilenamePKcPci_70:
	xor eax, eax
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19FS_SanitizeFilenamePKcPci_80:
	movzx edx, byte [esi+ecx+0x1]
	test dl, dl
	jz _Z19FS_SanitizeFilenamePKcPci_160
	cmp dl, 0x2f
	jz _Z19FS_SanitizeFilenamePKcPci_160
	cmp dl, 0x5c
	jz _Z19FS_SanitizeFilenamePKcPci_160
	jmp _Z19FS_SanitizeFilenamePKcPci_170


;FS_BuildOSPathForThread(char const*, char const*, char const*, char*, FsThread)
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread:
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
	jz _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_10
	cmp byte [edx], 0x0
	jz _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_10
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_40:
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
	jle _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_20
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_30
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_50:
	mov byte [esi], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_10:
	mov dword [ebp-0x28], fs_gamedir
	jmp _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_40
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_30:
	mov dword [esp+0x4], _cstring_fs_buildospath_o
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_20:
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
	jz _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_50
	mov edx, esi
	xor ecx, ecx
	jmp _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_60
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_80:
	cmp al, 0x5c
	jz _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_70
	mov [esi], al
	add esi, 0x1
	xor ecx, ecx
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_90:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_50
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_60:
	cmp al, 0x2f
	jnz _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_80
_Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_70:
	test cl, cl
	jnz _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_90
	mov byte [esi], 0x2f
	add esi, 0x1
	mov ecx, 0x1
	jmp _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread_90
	nop


;FS_GameDirDomainFunc(dvar_s*, DvarValue)
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x50
	mov ebx, [ebp+0xc]
	cmp byte [ebx], 0x0
	jnz _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_10
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_80:
	mov eax, 0x1
	add esp, 0x50
	pop ebx
	pop edi
	pop ebp
	ret
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_10:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_mods
	mov [esp], ebx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_20
	mov ebx, [ebp+0xc]
	mov [ebp-0x38], ebx
	mov ecx, [ebp+0x10]
	mov [ebp-0x34], ecx
	mov edx, [ebp+0x14]
	mov [ebp-0x30], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x2c], eax
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_50:
	mov [ebp-0x48], ebx
	mov [ebp-0x44], ecx
	mov [ebp-0x40], edx
	mov [ebp-0x3c], eax
	call _Z26LiveStorage_ClearWriteFlagv
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_invalid_se
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor eax, eax
	add esp, 0x50
	pop ebx
	pop edi
	pop ebp
	ret
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_20:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x5
	jbe _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_30
	movzx eax, byte [ebx+0x4]
	cmp al, 0x2f
	jz _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_40
	cmp al, 0x5c
	jz _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_40
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_30:
	mov ebx, [ebp+0xc]
	mov [ebp-0x28], ebx
	mov ecx, [ebp+0x10]
	mov [ebp-0x24], ecx
	mov edx, [ebp+0x14]
	mov [ebp-0x20], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x1c], eax
	jmp _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_50
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_40:
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jz _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_60
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_70:
	mov ebx, [ebp+0xc]
	mov [ebp-0x18], ebx
	mov ecx, [ebp+0x10]
	mov [ebp-0x14], ecx
	mov edx, [ebp+0x14]
	mov [ebp-0x10], edx
	mov eax, [ebp+0x18]
	mov [ebp-0xc], eax
	jmp _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_50
_Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_60:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_70
	jmp _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue_80


;iwdsort(void const*, void const*)
_Z7iwdsortPKvS0_:
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
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z7iwdsortPKvS0__10
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring___________
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z7iwdsortPKvS0__20
_Z7iwdsortPKvS0__10:
	mov eax, [ebp-0x28]
	mov [ebp-0x1c], eax
	mov esi, [ebp-0x24]
	jmp _Z7iwdsortPKvS0__30
_Z7iwdsortPKvS0__90:
	cmp ebx, 0x3a
	jz _Z7iwdsortPKvS0__40
	cmp edi, 0x5c
	jz _Z7iwdsortPKvS0__50
_Z7iwdsortPKvS0__100:
	cmp edi, 0x3a
	jz _Z7iwdsortPKvS0__50
	cmp ebx, edi
	jl _Z7iwdsortPKvS0__60
_Z7iwdsortPKvS0__110:
	jg _Z7iwdsortPKvS0__70
	test ebx, ebx
	jz _Z7iwdsortPKvS0__80
	mov eax, [ebp-0x1c]
_Z7iwdsortPKvS0__30:
	movsx ebx, byte [eax]
	add eax, 0x1
	mov [ebp-0x1c], eax
	movsx edi, byte [esi]
	add esi, 0x1
	mov [esp], ebx
	call _Z9I_isloweri
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	mov [esp], edi
	call _Z9I_isloweri
	lea edx, [edi-0x20]
	test al, al
	cmovnz edi, edx
	cmp ebx, 0x5c
	jnz _Z7iwdsortPKvS0__90
_Z7iwdsortPKvS0__40:
	mov ebx, 0x2f
	cmp edi, 0x5c
	jnz _Z7iwdsortPKvS0__100
_Z7iwdsortPKvS0__50:
	mov edi, 0x2f
	cmp ebx, edi
	jge _Z7iwdsortPKvS0__110
_Z7iwdsortPKvS0__60:
	mov eax, 0xffffffff
_Z7iwdsortPKvS0__250:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7iwdsortPKvS0__80:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7iwdsortPKvS0__20:
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
	ja _Z7iwdsortPKvS0__120
	mov eax, ebx
	shl eax, 0x6
	mov byte [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], 0x0
_Z7iwdsortPKvS0__170:
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
	ja _Z7iwdsortPKvS0__130
	mov eax, ebx
	shl eax, 0x6
	mov byte [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], 0x0
_Z7iwdsortPKvS0__220:
	shl ebx, 0x6
	add ebx, _ZZ15IwdFileLanguagePKcE17szIwdLanguageName
	mov dword [esp+0x4], _cstring_english
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z7iwdsortPKvS0__140
	mov dword [esp+0x4], _cstring_english
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z7iwdsortPKvS0__10
_Z7iwdsortPKvS0__70:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7iwdsortPKvS0__120:
	shl ebx, 0x6
	lea eax, [ebx+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor esi, esi
	jmp _Z7iwdsortPKvS0__150
_Z7iwdsortPKvS0__180:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0x8
	and eax, 0x1
_Z7iwdsortPKvS0__190:
	test eax, eax
	jz _Z7iwdsortPKvS0__160
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	mov edx, ebx
	shl edx, 0x6
	movzx eax, byte [edi]
	mov [edx+esi+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], al
	add esi, 0x1
	cmp esi, 0x36
	jz _Z7iwdsortPKvS0__170
_Z7iwdsortPKvS0__150:
	mov eax, [ebp-0x28]
	add eax, esi
	lea edi, [eax+0xa]
	movzx eax, byte [eax+0xa]
	test al, al
	jz _Z7iwdsortPKvS0__160
	movsx edx, al
	test edx, 0xffffff80
	jz _Z7iwdsortPKvS0__180
	mov dword [esp+0x4], 0x100
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z7iwdsortPKvS0__190
_Z7iwdsortPKvS0__130:
	shl ebx, 0x6
	lea eax, [ebx+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor esi, esi
	jmp _Z7iwdsortPKvS0__200
_Z7iwdsortPKvS0__230:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0x8
	and eax, 0x1
_Z7iwdsortPKvS0__240:
	test eax, eax
	jz _Z7iwdsortPKvS0__210
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	mov edx, ebx
	shl edx, 0x6
	movzx eax, byte [edi]
	mov [edx+esi+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], al
	add esi, 0x1
	cmp esi, 0x36
	jz _Z7iwdsortPKvS0__220
_Z7iwdsortPKvS0__200:
	mov eax, [ebp-0x24]
	add eax, esi
	lea edi, [eax+0xa]
	movzx eax, byte [eax+0xa]
	test al, al
	jz _Z7iwdsortPKvS0__210
	movsx edx, al
	test edx, 0xffffff80
	jz _Z7iwdsortPKvS0__230
	mov dword [esp+0x4], 0x100
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z7iwdsortPKvS0__240
_Z7iwdsortPKvS0__210:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	jmp _Z7iwdsortPKvS0__220
_Z7iwdsortPKvS0__160:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	jmp _Z7iwdsortPKvS0__170
_Z7iwdsortPKvS0__140:
	mov dword [esp+0x4], _cstring_english
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z7iwdsortPKvS0__10
	mov eax, 0xffffffff
	jmp _Z7iwdsortPKvS0__250


;FS_AddIwdFilesForGameDirectory(char const*, char const*)
_Z30FS_AddIwdFilesForGameDirectoryPKcS0_:
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
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
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
	call _Z13Sys_ListFilesPKcS0_S0_Pii
	mov [ebp-0x12b0], eax
	mov eax, [ebp-0x1c]
	cmp eax, 0x400
	jg _Z30FS_AddIwdFilesForGameDirectoryPKcS0__10
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__400:
	mov dword [esp+0x4], _cstring_main
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__20
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__380:
	mov byte [ebp-0x12b5], 0x0
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__390:
	mov esi, [ebp-0x1c]
	test esi, esi
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__30
	cmp byte [ebp-0x12b5], 0x0
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__40
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__30:
	mov edx, [ebp-0x1c]
	test edx, edx
	jg _Z30FS_AddIwdFilesForGameDirectoryPKcS0__50
	lea edi, [ebp-0x1278]
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__360:
	mov dword [esp+0xc], _Z7iwdsortPKvS0_
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], edi
	call qsort
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jg _Z30FS_AddIwdFilesForGameDirectoryPKcS0__60
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__100:
	mov eax, [ebp-0x12b0]
	mov [esp], eax
	call _Z16Sys_FreeFileListPPc
	add esp, 0x12dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__60:
	mov dword [ebp-0x1280], 0x1
	add edi, 0x4
	mov [ebp-0x12bc], edi
	mov ecx, edi
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__70
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__110:
	cmp byte [ebp-0x12b5], 0x0
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__80
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__240:
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x12b4], 0x0
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__260:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x178]
	mov [esp], eax
	mov edx, [ebp-0x12bc]
	mov ecx, [edx-0x4]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
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
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__90
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__140:
	mov eax, [ebp-0x1280]
	add dword [ebp-0x1280], 0x1
	add dword [ebp-0x12bc], 0x4
	cmp [ebp-0x1c], eax
	jle _Z30FS_AddIwdFilesForGameDirectoryPKcS0__100
	mov ecx, [ebp-0x12bc]
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__70:
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring___________
	mov eax, [ecx-0x4]
	mov [esp], eax
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__110
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
	ja _Z30FS_AddIwdFilesForGameDirectoryPKcS0__120
	mov eax, ebx
	shl eax, 0x6
	mov byte [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], 0x0
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__320:
	mov eax, ebx
	shl eax, 0x6
	lea edx, [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName]
	cmp byte [eax+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], 0x0
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__130
	mov edx, [ebp-0x12bc]
	mov eax, [edx-0x4]
	mov [esp+0x10], eax
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_localize
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__140
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__90:
	mov eax, [ebp-0x28]
	add [fs_iwdFileCount], eax
	mov ecx, [ebp-0x12a0]
	mov [esp], ecx
	call unzGoToFirstFile
	mov eax, [ebp-0x28]
	test eax, eax
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__150
	xor esi, esi
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__420:
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
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__170:
	cmp edx, edi
	jb _Z30FS_AddIwdFilesForGameDirectoryPKcS0__160
	add edi, edi
	sub eax, 0x1
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__170
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__160:
	lea eax, [edi*4+0x324]
	mov [esp], eax
	call Z_MallocInternal
	mov esi, eax
	mov [eax+0x318], edi
	lea eax, [eax+0x324]
	mov [esi+0x31c], eax
	test edi, edi
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__180
	xor edx, edx
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__190:
	mov eax, [esi+0x31c]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp [esi+0x318], edx
	ja _Z30FS_AddIwdFilesForGameDirectoryPKcS0__190
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__180:
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x178]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	lea ebx, [esi+0x100]
	mov dword [esp+0x8], 0x100
	mov edx, [ebp-0x12a8]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x4
	ja _Z30FS_AddIwdFilesForGameDirectoryPKcS0__200
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__410:
	mov edx, [ebp-0x12a0]
	mov [esi+0x300], edx
	mov eax, [ebp-0x28]
	mov [esi+0x310], eax
	mov dword [esi+0x30c], 0x0
	mov [esp], edx
	call unzGoToFirstFile
	mov eax, [ebp-0x28]
	test eax, eax
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__210
	xor ebx, ebx
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__520:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x1298]
	mov [esp], ecx
	call _Z22Com_BlockChecksumKey32PKvmj
	mov [esi+0x304], eax
	mov edx, [fs_checksumFeed]
	test edx, edx
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__220
	mov [esi+0x308], eax
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__440:
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
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__230
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__270:
	mov ecx, fs_searchpaths
	mov eax, [ecx]
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__280:
	mov [edx], eax
	mov [ecx], edx
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__140
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__80:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_iw_
	mov edx, [ebp-0x12bc]
	mov eax, [edx-0x4]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__240
	mov ecx, [ebp-0x12bc]
	mov eax, [ecx-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_invalid_
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__140
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__130:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z27SEH_GetLanguageIndexForNamePKcPi
	test eax, eax
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__250
	mov dword [ebp-0x12b4], 0x1
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__260
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__230:
	mov eax, [fs_searchpaths]
	test eax, eax
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__270
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__270
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__290:
	mov ecx, eax
	mov eax, [eax]
	test eax, eax
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__280
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__290
	mov eax, [ecx]
	mov [edx], eax
	mov [ecx], edx
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__140
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__120:
	shl ebx, 0x6
	lea eax, [ebx+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor edi, edi
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__300
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__330:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0x8
	and eax, 0x1
	test eax, eax
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__310
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__340:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	mov edx, ebx
	shl edx, 0x6
	movzx eax, byte [esi]
	mov [edx+edi+_ZZ15IwdFileLanguagePKcE17szIwdLanguageName], al
	add edi, 0x1
	cmp edi, 0x36
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__320
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__300:
	mov eax, [ebp-0x12ac]
	add eax, edi
	lea esi, [eax+0xa]
	movzx eax, byte [eax+0xa]
	test al, al
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__310
	movsx edx, al
	test edx, 0xffffff80
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__330
	mov dword [esp+0x4], 0x100
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__340
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__310:
	mov ebx, [_ZZ15IwdFileLanguagePKcE7iString]
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__320
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__50:
	mov ebx, 0x1
	lea edi, [ebp-0x1278]
	lea esi, [ebp-0x1274]
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__350
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__370:
	mov eax, ebx
	mov edx, [ebp-0x1c]
	add ebx, 0x1
	add esi, 0x4
	cmp edx, eax
	jle _Z30FS_AddIwdFilesForGameDirectoryPKcS0__360
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__350:
	mov edx, [ebp-0x12b0]
	mov eax, [edx+ebx*4-0x4]
	mov [esi-0x4], eax
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_localized_
	mov [esp], eax
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__370
	mov eax, [esi-0x4]
	mov dword [eax], 0x20202020
	mov dword [eax+0x4], 0x20202020
	mov word [eax+0x8], 0x2020
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__370
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__20:
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__380
	mov byte [ebp-0x12b5], 0x1
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__390
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__10:
	mov dword [esp+0x14], 0x400
	mov [esp+0x10], eax
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_exceeded
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x1c], 0x400
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__400
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__200:
	mov dword [esp+0x4], _cstring_iwd1
	lea eax, [ebx+eax-0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__410
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov byte [ecx+esi+0xfb], 0x0
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__410
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__150:
	xor ebx, ebx
	xor esi, esi
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__430:
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
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__420
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
	ja _Z30FS_AddIwdFilesForGameDirectoryPKcS0__430
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__420
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__220:
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1298]
	mov [esp], eax
	call _Z22Com_BlockChecksumKey32PKvmj
	mov [esi+0x308], eax
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__440
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__210:
	mov ecx, [ebp-0x12a4]
	mov [ebp-0x1284], ecx
	mov dword [ebp-0x127c], 0x0
	mov dword [ebp-0x129c], 0x0
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__450
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__480:
	mov dword [ebp-0x128c], 0x0
	mov dword [ebp-0x1288], 0x0
	xor ebx, ebx
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__510:
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
	jae _Z30FS_AddIwdFilesForGameDirectoryPKcS0__460
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__450:
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
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__460
	mov edi, [ebp-0x5c]
	test edi, edi
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__470
	mov eax, [ebp-0x64]
	mov edx, [ebp-0x129c]
	mov ecx, [ebp-0x1298]
	mov [ecx+edx*4], eax
	add edx, 0x1
	mov [ebp-0x129c], edx
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__470:
	lea eax, [ebp-0x278]
	mov [esp], eax
	call _Z8I_strlwrPc
	mov edx, [esi+0x318]
	mov [ebp-0x1290], edx
	movzx eax, byte [ebp-0x278]
	test al, al
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__480
	mov dword [ebp-0x128c], 0x0
	mov ebx, 0x77
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__500:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, eax
	cmp eax, 0x2e
	jz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__490
	cmp eax, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	imul edx, ebx
	add [ebp-0x128c], edx
	movzx eax, byte [ebx+ebp-0x2ee]
	add ebx, 0x1
	test al, al
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__500
	mov eax, [ebp-0x128c]
	sar eax, 0xa
	mov [ebp-0x1288], eax
	mov ebx, [ebp-0x128c]
	sar ebx, 0x14
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__510
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__460:
	mov ebx, [ebp-0x129c]
	shl ebx, 0x2
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__520
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__40:
	mov dword [esp+0x4], _cstring_no_iwd_files_fou
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__30
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__250:
	mov edx, [ebp-0x12bc]
	mov eax, [edx-0x4]
	mov [esp+0x10], eax
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_localize1
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	mov eax, [_ZZ30FS_AddIwdFilesForGameDirectoryPKcS0_E16bLanguagesListed]
	test eax, eax
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__140
	mov dword [esp+0x4], _cstring_supported_langua
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	xor ebx, ebx
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__530:
	mov [esp], ebx
	call _Z19SEH_GetLanguageNamei
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_____s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	add ebx, 0x1
	cmp ebx, 0xf
	jnz _Z30FS_AddIwdFilesForGameDirectoryPKcS0__530
	mov dword [_ZZ30FS_AddIwdFilesForGameDirectoryPKcS0_E16bLanguagesListed], 0x1
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__140
_Z30FS_AddIwdFilesForGameDirectoryPKcS0__490:
	mov ecx, [ebp-0x128c]
	sar ecx, 0xa
	mov [ebp-0x1288], ecx
	mov ebx, [ebp-0x128c]
	sar ebx, 0x14
	jmp _Z30FS_AddIwdFilesForGameDirectoryPKcS0__510
	nop


;FS_AddGameDirectory(char const*, char const*, int, int)
_Z19FS_AddGameDirectoryPKcS0_ii:
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
	jz _Z19FS_AddGameDirectoryPKcS0_ii_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19SEH_GetLanguageNamei
	mov [esp+0x10], eax
	mov edi, [ebp-0x15c]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
_Z19FS_AddGameDirectoryPKcS0_ii_100:
	mov edi, [fs_searchpaths]
	test edi, edi
	jnz _Z19FS_AddGameDirectoryPKcS0_ii_20
	jmp _Z19FS_AddGameDirectoryPKcS0_ii_30
_Z19FS_AddGameDirectoryPKcS0_ii_40:
	mov edi, [edi]
	test edi, edi
	jz _Z19FS_AddGameDirectoryPKcS0_ii_30
_Z19FS_AddGameDirectoryPKcS0_ii_20:
	mov eax, [edi+0x8]
	test eax, eax
	jz _Z19FS_AddGameDirectoryPKcS0_ii_40
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19FS_AddGameDirectoryPKcS0_ii_40
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	add eax, 0x100
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19FS_AddGameDirectoryPKcS0_ii_40
	mov edx, [edi+0xc]
	cmp esi, edx
	jz _Z19FS_AddGameDirectoryPKcS0_ii_50
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
	call _Z16Com_PrintWarningiPKcz
_Z19FS_AddGameDirectoryPKcS0_ii_50:
	mov eax, [edi+0xc]
	test eax, eax
	jz _Z19FS_AddGameDirectoryPKcS0_ii_60
	mov eax, [ebp+0x8]
	cmp eax, [edi+0x18]
	jz _Z19FS_AddGameDirectoryPKcS0_ii_60
	lea edi, [ebp-0x58]
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_game_fol1
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	jmp _Z19FS_AddGameDirectoryPKcS0_ii_60
_Z19FS_AddGameDirectoryPKcS0_ii_30:
	test esi, esi
	jz _Z19FS_AddGameDirectoryPKcS0_ii_70
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x158]
	mov [esp], eax
	mov ecx, _cstring_null
	lea edx, [ebp-0x58]
	mov eax, ebx
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x158]
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x15a], 0x0
	lea eax, [ebp-0x158]
	mov [esp], eax
	call _Z24Sys_DirectoryHasContentsPKc
	test eax, eax
	jz _Z19FS_AddGameDirectoryPKcS0_ii_60
_Z19FS_AddGameDirectoryPKcS0_ii_120:
	mov dword [esp], 0x1c
	call Z_MallocInternal
	mov edi, eax
	mov dword [esp], 0x200
	call Z_MallocInternal
	mov [edi+0x8], eax
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	add eax, 0x100
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov [edi+0xc], esi
	mov eax, [ebp+0x8]
	mov [edi+0x18], eax
	mov dword [esp+0x4], _cstring_main
	mov eax, [ebp-0x15c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	setz al
	movzx eax, al
	mov [edi+0x10], eax
	mov dword [esp+0x4], _cstring_players
	mov eax, [ebp-0x15c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	setz al
	movzx eax, al
	mov [edi+0x14], eax
	mov esi, [edi+0xc]
	test esi, esi
	jz _Z19FS_AddGameDirectoryPKcS0_ii_80
	mov eax, [fs_searchpaths]
	test eax, eax
	jz _Z19FS_AddGameDirectoryPKcS0_ii_80
	mov edx, [eax+0xc]
	test edx, edx
	jz _Z19FS_AddGameDirectoryPKcS0_ii_90
_Z19FS_AddGameDirectoryPKcS0_ii_80:
	mov edx, fs_searchpaths
	mov eax, [edx]
_Z19FS_AddGameDirectoryPKcS0_ii_110:
	mov [edi], eax
	mov [edx], edi
	lea edi, [ebp-0x58]
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z30FS_AddIwdFilesForGameDirectoryPKcS0_
_Z19FS_AddGameDirectoryPKcS0_ii_60:
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19FS_AddGameDirectoryPKcS0_ii_10:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], edx
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	jmp _Z19FS_AddGameDirectoryPKcS0_ii_100
_Z19FS_AddGameDirectoryPKcS0_ii_90:
	mov edx, eax
	mov eax, [eax]
	test eax, eax
	jz _Z19FS_AddGameDirectoryPKcS0_ii_110
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z19FS_AddGameDirectoryPKcS0_ii_90
	mov eax, [edx]
	jmp _Z19FS_AddGameDirectoryPKcS0_ii_110
_Z19FS_AddGameDirectoryPKcS0_ii_70:
	mov dword [esp+0x8], 0x100
	lea edi, [ebp-0x58]
	mov [esp+0x4], edi
	mov dword [esp], fs_gamedir
	call _Z10I_strncpyzPcPKci
	jmp _Z19FS_AddGameDirectoryPKcS0_ii_120
	nop


;FS_FOpenFileReadForThread(char const*, int*, FsThread)
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread:
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
	call _Z19FS_SanitizeFilenamePKcPci
	test al, al
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_10
	mov eax, [ebp-0x344]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_20
	mov edx, [ebp-0x348]
	mov [esp], edx
	call _Z16FS_HandleForFile8FsThread
	mov ecx, [ebp-0x344]
	mov [ecx], eax
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_30
	mov eax, [fs_searchpaths]
	mov [ebp-0x31c], eax
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_40
	mov byte [ebp-0x32d], 0x0
	mov dword [ebp-0x334], 0x0
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_80:
	mov edx, [ebp-0x31c]
	mov edi, [edx+0xc]
	test edi, edi
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_50
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_60
	mov ebx, [edx+0x18]
	call _Z22SEH_GetCurrentLanguagev
	cmp ebx, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_70
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_60:
	mov edx, [ebp-0x31c]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_360:
	mov edx, [edx]
	mov [ebp-0x31c], edx
	test edx, edx
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_80
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_790:
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_90
	mov eax, [ebp-0x348]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_100
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_90:
	mov eax, [ebp-0x344]
	mov dword [eax], 0x0
	mov eax, [ebp-0x334]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_110
	mov edx, [ebp-0x334]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_impure_client_de
	mov dword [esp], _cstring_ss1
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_110:
	cmp byte [ebp-0x32d], 0x0
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_30
	mov eax, [fs_numServerIwds]
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_120
	mov eax, [fs_restrict]
	cmp byte [eax+0xc], 0x0
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_130
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_120:
	mov ecx, [ebp-0x340]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_s_must_be_
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov eax, 0xfffffffe
	add esp, 0x35c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_520:
	mov edx, [ebp-0x33c]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_500:
	mov eax, [edx+0x8]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_140
	lea edx, [eax+0x100]
	mov ecx, [ebp-0x348]
	mov [esp+0x4], ecx
	lea ecx, [ebp-0x218]
	mov [esp], ecx
	lea ecx, [ebp-0x118]
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	lea eax, [ebp-0x218]
	mov [esp], eax
	call FS_FileOpenReadBinary
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_150
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_480:
	mov eax, [ebp-0x33c]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_720:
	mov eax, [eax]
	mov [ebp-0x33c], eax
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_160
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_30:
	mov eax, 0xffffffff
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_440:
	add esp, 0x35c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_50:
	mov eax, edx
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_670:
	mov eax, [eax+0x4]
	mov [ebp-0x324], eax
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_170
	mov edi, [eax+0x318]
	cmp byte [ebp-0x118], 0x0
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_180
	xor esi, esi
	xor eax, eax
	xor edx, edx
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_640:
	xor eax, esi
	xor edx, eax
	lea eax, [edi-0x1]
	and edx, eax
	lea eax, [edx*4]
	mov edx, [ebp-0x324]
	add eax, [edx+0x31c]
	mov eax, [eax]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_170
	mov [ebp-0x320], eax
	mov ecx, eax
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_270:
	mov edi, [ecx+0x4]
	lea eax, [ebp-0x118]
	mov [ebp-0x328], eax
	mov edx, eax
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_190
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_240:
	cmp esi, 0x3a
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_200
	cmp ebx, 0x5c
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_210
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_250:
	cmp ebx, 0x3a
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_210
	cmp esi, ebx
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_220
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_260:
	test esi, esi
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_230
	mov edx, [ebp-0x328]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_190:
	movsx esi, byte [edi]
	add edi, 0x1
	movsx ebx, byte [edx]
	add edx, 0x1
	mov [ebp-0x328], edx
	mov [esp], esi
	call _Z9I_isloweri
	lea edx, [esi-0x20]
	test al, al
	cmovnz esi, edx
	mov [esp], ebx
	call _Z9I_isloweri
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	cmp esi, 0x5c
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_240
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_200:
	mov esi, 0x2f
	cmp ebx, 0x5c
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_250
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_210:
	mov ebx, 0x2f
	cmp esi, ebx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_260
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_220:
	mov ecx, [ebp-0x320]
	mov ecx, [ecx+0x8]
	mov [ebp-0x320], ecx
	test ecx, ecx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_60
	mov ecx, [ebp-0x320]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_270
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_230:
	cmp byte [g_disablePureCheck], 0x0
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_280
	mov eax, [ebp-0x31c]
	mov esi, [eax+0xc]
	test esi, esi
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_280
	mov ebx, [eax+0x14]
	test ebx, ebx
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_280
	mov esi, [fs_numServerIwds]
	cmp esi, 0x0
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_280
	jle _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_290
	mov ecx, [ebp-0x324]
	mov ebx, [ecx+0x304]
	cmp ebx, [fs_serverIwds]
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_300
	xor ecx, ecx
	mov edx, fs_serverIwds
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_310:
	add ecx, 0x1
	cmp esi, ecx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_290
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp ebx, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_310
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_280:
	mov edx, [ebp-0x324]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_800:
	movzx eax, byte [edx+0x314]
	test al, al
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_320
	mov eax, edx
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_660:
	add eax, 0x30c
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedCompareExchange
	sub eax, 0x1
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_330
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
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_730:
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x118]
	mov [esp+0x4], eax
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	lea eax, [eax*4+fsh+0x1c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
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
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_340
	mov eax, [ebp-0x348]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_350
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_340:
	mov eax, [edi+0x44]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_710:
	add esp, 0x35c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_290:
	mov ecx, [ebp-0x324]
	mov [ebp-0x334], ecx
	mov edx, [ebp-0x31c]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_360
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_170:
	mov eax, [ebp-0x31c]
	mov esi, [eax+0x8]
	test esi, esi
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_370
	mov eax, [eax+0x10]
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_380
	mov eax, [fs_restrict]
	cmp byte [eax+0xc], 0x0
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_380
	mov eax, [fs_numServerIwds]
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_380
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_450:
	lea edi, [esi+0x100]
	mov eax, [ebp-0x348]
	mov [esp+0x4], eax
	lea edx, [ebp-0x218]
	mov [esp], edx
	lea ecx, [ebp-0x118]
	mov edx, edi
	mov eax, esi
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
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
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_60
	mov eax, [ebp-0x31c]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_390
	mov eax, [eax+0x14]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_400
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_390:
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x118]
	mov [esp+0x4], eax
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	lea eax, [eax*4+fsh+0x1c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov dword [eax*4+fsh+0x14], 0x0
	mov eax, [fs_debug]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_410
	mov ecx, [ebp-0x348]
	test ecx, ecx
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_410
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fs_fopenfileread
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_410:
	mov eax, [fs_copyfiles]
	cmp byte [eax+0xc], 0x0
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_420
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_820:
	mov eax, [ebp-0x344]
	mov edx, [eax]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov edx, [eax+fsh+0x14]
	test edx, edx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_430
	mov eax, [eax+fsh]
	mov eax, [eax+0x44]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_440
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_380:
	mov edx, [ebp-0x31c]
	mov eax, [edx+0xc]
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_450
	mov edi, [edx+0x14]
	test edi, edi
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_450
	mov dword [esp+0x4], _cstring_bantxt
	lea ecx, [ebp-0x118]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_460
	mov eax, [ebp-0x31c]
	mov esi, [eax+0x8]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_450
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_20:
	mov edx, [fs_searchpaths]
	mov [ebp-0x33c], edx
	test edx, edx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_30
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_160:
	mov ecx, [ebp-0x33c]
	mov eax, [ecx+0xc]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_470
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_480
	mov ebx, [ecx+0x18]
	call _Z22SEH_GetCurrentLanguagev
	cmp ebx, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_480
	mov edx, [ebp-0x33c]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_490
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_470:
	mov edx, ecx
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_490:
	mov ecx, [edx+0x4]
	test ecx, ecx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_500
	mov edi, [ecx+0x318]
	cmp byte [ebp-0x118], 0x0
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_510
	xor esi, esi
	xor eax, eax
	xor ebx, ebx
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_700:
	mov edx, esi
	xor edx, eax
	xor edx, ebx
	lea eax, [edi-0x1]
	and edx, eax
	test ecx, ecx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_520
	lea eax, [edx*4]
	add eax, [ecx+0x31c]
	mov eax, [eax]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_520
	mov [ebp-0x338], eax
	mov ecx, eax
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_610:
	mov edi, [ecx+0x4]
	lea eax, [ebp-0x118]
	mov [ebp-0x32c], eax
	mov edx, eax
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_530
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_580:
	cmp esi, 0x3a
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_540
	cmp ebx, 0x5c
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_550
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_590:
	cmp ebx, 0x3a
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_550
	cmp esi, ebx
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_560
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_600:
	test esi, esi
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_570
	mov edx, [ebp-0x32c]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_530:
	movsx esi, byte [edi]
	add edi, 0x1
	movsx ebx, byte [edx]
	add edx, 0x1
	mov [ebp-0x32c], edx
	mov [esp], esi
	call _Z9I_isloweri
	lea edx, [esi-0x20]
	test al, al
	cmovnz esi, edx
	mov [esp], ebx
	call _Z9I_isloweri
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	cmp esi, 0x5c
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_580
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_540:
	mov esi, 0x2f
	cmp ebx, 0x5c
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_590
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_550:
	mov ebx, 0x2f
	cmp esi, ebx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_600
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_560:
	mov ecx, [ebp-0x338]
	mov ecx, [ecx+0x8]
	mov [ebp-0x338], ecx
	test ecx, ecx
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_480
	mov ecx, [ebp-0x338]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_610
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_150:
	mov [esp], eax
	call FS_FileClose
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_570:
	mov eax, 0x1
	add esp, 0x35c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_180:
	xor ebx, ebx
	xor esi, esi
	movzx eax, byte [ebp-0x118]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_630:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, eax
	cmp eax, 0x2e
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_620
	cmp eax, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	lea eax, [ebx+0x77]
	imul edx, eax
	add esi, edx
	add ebx, 0x1
	movzx eax, byte [ebx+ebp-0x118]
	test al, al
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_630
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_620:
	mov eax, esi
	sar eax, 0xa
	mov edx, esi
	sar edx, 0x14
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_640
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_320:
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
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_650
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_760:
	mov edx, [ebp-0x324]
	mov byte [edx+0x314], 0x1
	mov ecx, [ebp-0x31c]
	mov [esp], ecx
	call _Z27FS_AddIwdPureCheckReferencePK12searchpath_s
	mov eax, [ebp-0x324]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_660
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_70:
	mov eax, [ebp-0x31c]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_670
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_510:
	xor ebx, ebx
	xor esi, esi
	movzx eax, byte [ebp-0x118]
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_690:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, eax
	cmp eax, 0x2e
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_680
	cmp eax, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	lea eax, [ebx+0x77]
	imul edx, eax
	add esi, edx
	add ebx, 0x1
	movzx eax, byte [ebx+ebp-0x118]
	test al, al
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_690
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_680:
	mov eax, esi
	sar eax, 0xa
	mov ebx, esi
	sar ebx, 0x14
	mov edx, [ebp-0x33c]
	mov ecx, [edx+0x4]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_700
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_370:
	mov edx, eax
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_360
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_350:
	mov edx, [ebp-0x324]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x118]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_fs_fopenfileread1
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov eax, [edi+0x44]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_710
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_140:
	mov eax, edx
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_720
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_10:
	mov eax, [ebp-0x344]
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_30
	mov eax, [ebp-0x344]
	mov dword [eax], 0x0
	mov eax, 0xffffffff
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_440
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_330:
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
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_730
	mov eax, [ebp-0x348]
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_740
	mov edx, [ebp-0x324]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_couldnt_reopen_s
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_730
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_100:
	mov ecx, [ebp-0x340]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_cant_find_s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_90
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_650:
	lea esi, [ebp-0x118]
	add esi, eax
	lea ebx, [ebp-0x318]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_750
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_770:
	mov edx, [ebx+0x4]
	add ebx, 0x4
	cmp byte [edx], 0x0
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_760
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_750:
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
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_770
	mov eax, [ebp-0x324]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_660
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_460:
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z25Com_GetExtensionSubStringPKc
	mov ebx, eax
	lea eax, [eax+0x1]
	cmp byte [ebx], 0x2e
	cmovz ebx, eax
	mov dword [esp+0x4], _cstring_cfg1
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_780
	mov edx, [ebp-0x31c]
	mov esi, [edx+0x8]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_450
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_40:
	mov dword [ebp-0x334], 0x0
	mov byte [ebp-0x32d], 0x0
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_790
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_300:
	mov edx, ecx
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_800
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_780:
	mov dword [esp+0x4], _cstring_dm_network_proto
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_810
	cmp byte [ebp-0x32d], 0x0
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_60
	mov edx, [ebp-0x31c]
	mov eax, [edx+0x8]
	lea edx, [eax+0x100]
	mov ecx, [ebp-0x348]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x218]
	mov [esp], ebx
	lea ecx, [ebp-0x118]
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov [esp], ebx
	call FS_FileOpenReadBinary
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_60
	mov [esp], eax
	call FS_FileClose
	mov byte [ebp-0x32d], 0x1
	mov edx, [ebp-0x31c]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_360
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_130:
	mov eax, [ebp-0x340]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_must_be_1
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov eax, 0xfffffffe
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_440
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_810:
	mov ecx, [ebp-0x31c]
	mov esi, [ecx+0x8]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_450
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_420:
	mov eax, [fs_cdpath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_820
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov edx, [ebp-0x348]
	mov [esp+0x4], edx
	lea ebx, [ebp-0x318]
	mov [esp], ebx
	lea ecx, [ebp-0x118]
	mov edx, edi
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov [esp+0x4], ebx
	lea ecx, [ebp-0x218]
	mov [esp], ecx
	call _Z11FS_CopyFilePcS_
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_820
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_430:
	mov eax, [eax+fsh]
	mov [esp], eax
	call FS_FileGetFileSize
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_440
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_400:
	mov dword [esp+0x4], _cstring_bantxt
	lea edx, [ebp-0x118]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_830
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_850:
	mov ecx, [ebp-0x344]
	mov edx, [ecx]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_390
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_740:
	mov [esp], edx
	call _Z13FS_FCloseFilei
	mov edx, [ebp-0x344]
	mov dword [edx], 0x0
	mov eax, 0xffffffff
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_440
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_830:
	lea ecx, [ebp-0x118]
	mov [esp], ecx
	call _Z25Com_GetExtensionSubStringPKc
	mov ebx, eax
	lea eax, [eax+0x1]
	cmp byte [ebx], 0x2e
	cmovz ebx, eax
	mov dword [esp+0x4], _cstring_cfg1
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_840
	mov eax, [ebp-0x344]
	mov edx, [eax]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_390
_Z25FS_FOpenFileReadForThreadPKcPi8FsThread_840:
	mov dword [esp+0x4], _cstring_dm_network_proto
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_850
	call _Z7ms_randv
	add eax, 0x1
	mov [fs_fakeChkSum], eax
	mov eax, [ebp-0x344]
	mov edx, [eax]
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread_390
	nop
	add [eax], al


;FS_FOpenFileWriteToDirForThread(char const*, char const*, FsThread)
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread:
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
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_10
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jz _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_20
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	xor esi, esi
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_80:
	mov eax, esi
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_fs_fopenfilewrit
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_30
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_20:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_30
	movzx eax, byte [ebp-0x117]
	test al, al
	jz _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_40
	mov esi, ebx
	jmp _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_50
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_60:
	movzx eax, byte [esi+0x2]
	add esi, 0x1
	test al, al
	jz _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_40
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_50:
	cmp al, 0x2f
	jnz _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_60
	mov byte [esi+0x1], 0x0
	mov [esp], ebx
	call _Z9Sys_MkdirPKc
	mov byte [esi+0x1], 0x2f
	jmp _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_60
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_40:
	mov [esp], ebx
	call FS_FileOpenWriteBinary
	mov [ebp-0x11c], eax
	test eax, eax
	jz _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_70
	mov eax, [ebp-0x120]
	mov [esp], eax
	call _Z16FS_HandleForFile8FsThread
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
	call _Z10I_strncpyzPcPKci
	mov dword [ebx+fsh+0x8], 0x0
	jmp _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_80
_Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_70:
	xor esi, esi
	jmp _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread_80


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
	jmp _Z16Hunk_UserDestroyP8HunkUser
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
	call _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii
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
	call _Z15Hunk_UserCreateiPKchhi
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
	call _Z14Hunk_UserAllocP8HunkUserii
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
	call _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii
	mov ebx, eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call _Z16Hunk_UserDestroyP8HunkUser
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
	call _Z9I_strncmpPKcS0_i
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
	call _Z14Hunk_UserAllocP8HunkUserii
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
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz FS_ListFilteredFilesInLocation_180
	mov eax, [ebp-0x28]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_190
FS_ListFilteredFilesInLocation_50:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_temp
	mov [esp], esi
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz FS_ListFilteredFilesInLocation_180
	mov eax, [ebp-0x24]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_200
FS_ListFilteredFilesInLocation_60:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_raw
	mov [esp], esi
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz FS_ListFilteredFilesInLocation_180
	mov eax, [ebp-0x20]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_210
FS_ListFilteredFilesInLocation_70:
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_raw_shared
	mov [esp], esi
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz FS_ListFilteredFilesInLocation_180
	mov eax, [ebp-0x1c]
	test eax, eax
	jz FS_ListFilteredFilesInLocation_220
FS_ListFilteredFilesInLocation_80:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_devraw
	mov [esp], esi
	call _Z9I_strncmpPKcS0_i
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
	call _Z25FS_FOpenFileReadForThreadPKcPi8FsThread
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
	call _Z7FS_ReadPvii
	mov byte [ebx+esi], 0x0
	mov eax, [ebp-0x1c]
FS_ReadFile_30:
	mov [esp], eax
	call _Z13FS_FCloseFilei
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
	call _Z9Com_Error11errorParm_tPKcz
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
_Z10FS_Restartii:
_Z10FS_Restartii_120:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov dword [esp], 0x8
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	call _Z21SEH_Shutdown_StringEdv
	mov esi, 0x1
	mov ebx, fsh
	jmp _Z10FS_Restartii_10
_Z10FS_Restartii_30:
	add esi, 0x1
	add ebx, 0x11c
	cmp esi, 0x41
	jz _Z10FS_Restartii_20
_Z10FS_Restartii_10:
	mov eax, [ebx+0x128]
	test eax, eax
	jz _Z10FS_Restartii_30
	mov [esp], esi
	call _Z13FS_FCloseFilei
	add esi, 0x1
	add ebx, 0x11c
	cmp esi, 0x41
	jnz _Z10FS_Restartii_10
_Z10FS_Restartii_20:
	mov eax, [fs_searchpaths]
	call _Z22FS_ShutdownSearchPathsP12searchpath_s
	mov dword [fs_searchpaths], 0x0
	call _Z17FS_RemoveCommandsv
	mov [fs_checksumFeed], edi
	mov eax, [fs_searchpaths]
	test eax, eax
	jz _Z10FS_Restartii_40
_Z10FS_Restartii_60:
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z10FS_Restartii_50
	mov byte [edx+0x314], 0x0
_Z10FS_Restartii_50:
	mov eax, [eax]
	test eax, eax
	jnz _Z10FS_Restartii_60
_Z10FS_Restartii_40:
	mov dword [esp], _cstring_main
	call _Z10FS_StartupPKc
	call _Z17SEH_Init_StringEdv
	call _Z22SEH_UpdateLanguageInfov
	call _Z18FS_SetRestrictionsv
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_default_mpcfg
	call FS_ReadFile
	test eax, eax
	jle _Z10FS_Restartii_70
_Z10FS_Restartii_110:
	mov dword [esp+0x4], lastValidGame
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10FS_Restartii_80
_Z10FS_Restartii_90:
	mov dword [esp+0x8], 0x100
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], lastValidBase
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x100
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], lastValidGame
	call _Z10I_strncpyzPcPKci
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10FS_Restartii_80:
	call _Z12Com_SafeModev
	test eax, eax
	jnz _Z10FS_Restartii_90
	mov dword [esp+0x4], _cstring_config_mpcfg
	mov dword [esp], _cstring_exec_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z12Cbuf_AddTextiPKc
	jmp _Z10FS_Restartii_90
_Z10FS_Restartii_70:
	cmp byte [lastValidBase], 0x0
	jnz _Z10FS_Restartii_100
_Z10FS_Restartii_130:
	mov dword [esp+0x8], _cstring_default_mpcfg
	mov dword [esp+0x4], _cstring_couldnt_load_s__
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z10FS_Restartii_110
_Z10FS_Restartii_100:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_null
	call _Z26FS_PureServerSetLoadedIwdsPKcS0_
	mov dword [esp+0x4], lastValidBase
	mov eax, [fs_basepath]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	mov dword [esp+0x4], lastValidGame
	mov eax, [fs_gameDirVar]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	mov byte [lastValidBase], 0x0
	mov byte [lastValidGame], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [fs_restrict]
	mov [esp], eax
	call _Z12Dvar_SetBoolPK6dvar_sh
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10FS_Restartii_120
	mov dword [esp+0x4], _cstring_invalid_game_fol
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z10FS_Restartii_130


;FS_Startup(char const*)
_Z10FS_StartupPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov dword [esp+0x4], _cstring__fs_startup_
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x14], _cstring_enable_file_syst
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_debug
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [fs_debug], eax
	mov dword [esp+0xc], _cstring_copy_all_used_fi
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_copyfiles
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fs_copyfiles], eax
	call _Z17Sys_DefaultCDPathv
	mov dword [esp+0xc], _cstring_cd_path
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], _cstring_fs_cdpath
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [fs_cdpath], eax
	call _Z7Sys_Cwdv
	mov dword [esp+0xc], _cstring_base_game_path
	mov dword [esp+0x8], 0x210
	mov [esp+0x4], eax
	mov dword [esp], _cstring_fs_basepath
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [fs_basepath], eax
	mov dword [esp+0xc], _cstring_base_game_name
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_fs_basegame
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [fs_basegame], eax
	mov dword [esp+0xc], _cstring_game_data_direct
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_fs_game
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [fs_gameDirVar], eax
	mov dword [esp+0x4], _Z20FS_GameDirDomainFuncP6dvar_s9DvarValue
	mov [esp], eax
	call _Z18Dvar_SetDomainFuncPK6dvar_sPFhPS_9DvarValueE
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
	call _Z10I_strncpyzPcPKci
	mov eax, [ebp-0x130]
	test eax, eax
	jle _Z10FS_StartupPKc_10
	xor ebx, ebx
	mov byte [ebp-0x129], 0x0
	jmp _Z10FS_StartupPKc_20
_Z10FS_StartupPKc_60:
	movsx edx, al
	test edx, 0xffffff80
	jnz _Z10FS_StartupPKc_30
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xf
	and eax, 0x1
_Z10FS_StartupPKc_180:
	test eax, eax
	jnz _Z10FS_StartupPKc_40
_Z10FS_StartupPKc_170:
	add ebx, 0x1
	cmp [ebp-0x130], ebx
	jz _Z10FS_StartupPKc_50
_Z10FS_StartupPKc_20:
	lea edi, [ebx+esi]
	movzx eax, byte [edi]
	cmp al, 0x5c
	jnz _Z10FS_StartupPKc_60
	mov byte [edi], 0x2f
	mov byte [ebp-0x129], 0x1
	add ebx, 0x1
	cmp [ebp-0x130], ebx
	jnz _Z10FS_StartupPKc_20
_Z10FS_StartupPKc_50:
	cmp byte [ebp-0x129], 0x0
	jz _Z10FS_StartupPKc_10
	mov [esp+0x4], esi
	mov eax, [fs_gameDirVar]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
_Z10FS_StartupPKc_10:
	mov dword [esp+0xc], _cstring_ignore_localized
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_ignorelocaliz
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fs_ignoreLocalized], eax
	call _Z19Sys_DefaultHomePathv
	test eax, eax
	jz _Z10FS_StartupPKc_70
	cmp byte [eax], 0x0
	jz _Z10FS_StartupPKc_70
_Z10FS_StartupPKc_160:
	mov dword [esp+0xc], _cstring_game_home_path
	mov dword [esp+0x8], 0x210
	mov [esp+0x4], eax
	mov dword [esp], _cstring_fs_homepath
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [fs_homepath], eax
	mov dword [esp+0xc], _cstring_restrict_file_ac
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_restrict
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fs_restrict], eax
	mov dword [esp+0xc], _cstring_use_development_
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_usedevdir
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fs_usedevdir], eax
	mov edx, [fs_basepath]
	mov ebx, [edx+0xc]
	cmp byte [ebx], 0x0
	jz _Z10FS_StartupPKc_80
	cmp byte [eax+0xc], 0x0
	jnz _Z10FS_StartupPKc_90
_Z10FS_StartupPKc_540:
	mov ebx, [edx+0xc]
	mov edi, 0xe
_Z10FS_StartupPKc_100:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_players
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z10FS_StartupPKc_100
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_players
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov edx, [fs_basepath]
_Z10FS_StartupPKc_80:
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z10FS_StartupPKc_110
_Z10FS_StartupPKc_300:
	mov eax, [fs_cdpath]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z10FS_StartupPKc_120
_Z10FS_StartupPKc_310:
	mov eax, [edx+0xc]
	cmp byte [eax], 0x0
	jnz _Z10FS_StartupPKc_130
_Z10FS_StartupPKc_390:
	mov eax, [fs_basegame]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z10FS_StartupPKc_140
_Z10FS_StartupPKc_440:
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z10FS_StartupPKc_150
_Z10FS_StartupPKc_190:
	call _Z13Com_ReadCDKeyv
	call _Z14FS_AddCommandsv
	mov dword [esp], 0x1
	call _Z14FS_DisplayPathi
	mov eax, [fs_gameDirVar]
	mov [esp], eax
	call _Z18Dvar_ClearModifiedPK6dvar_s
	mov dword [esp+0x4], _cstring_2
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov eax, [fs_iwdFileCount]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_files_in_iwd_f
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10FS_StartupPKc_70:
	mov eax, [fs_basepath]
	mov eax, [eax+0x2c]
	jmp _Z10FS_StartupPKc_160
_Z10FS_StartupPKc_40:
	movsx eax, byte [edi]
	mov [esp], eax
	call tolower
	mov [edi], al
	mov byte [ebp-0x129], 0x1
	jmp _Z10FS_StartupPKc_170
_Z10FS_StartupPKc_30:
	mov dword [esp+0x4], 0x8000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z10FS_StartupPKc_180
_Z10FS_StartupPKc_150:
	mov dword [esp+0x4], _cstring_main
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10FS_StartupPKc_190
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10FS_StartupPKc_190
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	cmp byte [esi], 0x0
	jz _Z10FS_StartupPKc_200
	mov eax, [fs_gameDirVar]
	mov edi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_210:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_210
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
_Z10FS_StartupPKc_200:
	mov eax, [fs_basepath]
	mov esi, [eax+0xc]
	cmp byte [esi], 0x0
	jz _Z10FS_StartupPKc_220
	mov eax, [fs_gameDirVar]
	mov edi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_230:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_230
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
_Z10FS_StartupPKc_220:
	mov eax, [fs_homepath]
	mov edx, [eax+0xc]
	cmp byte [edx], 0x0
	jz _Z10FS_StartupPKc_190
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10FS_StartupPKc_190
	mov eax, [fs_gameDirVar]
	mov edi, [eax+0xc]
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_240:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_240
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	jmp _Z10FS_StartupPKc_190
_Z10FS_StartupPKc_110:
	mov [esp+0x4], eax
	mov eax, [edx+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10FS_StartupPKc_250
	mov eax, [fs_usedevdir]
	cmp byte [eax+0xc], 0x0
	jz _Z10FS_StartupPKc_250
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_260:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_devraw_shared
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_260
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw_shared
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_270:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_devraw
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_270
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_280:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_raw_shared
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_280
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw_shared
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_290:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_raw
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_290
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov edx, [fs_basepath]
	jmp _Z10FS_StartupPKc_300
_Z10FS_StartupPKc_250:
	mov edx, [fs_basepath]
	mov eax, [fs_cdpath]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz _Z10FS_StartupPKc_310
_Z10FS_StartupPKc_120:
	mov [esp+0x4], eax
	mov eax, [edx+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10FS_StartupPKc_320
	mov eax, [fs_usedevdir]
	cmp byte [eax+0xc], 0x0
	jz _Z10FS_StartupPKc_330
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_340:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_devraw_shared
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_340
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw_shared
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_350:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_devraw
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_350
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_360:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_raw_shared
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_360
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw_shared
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_370:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, _cstring_raw
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_370
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
_Z10FS_StartupPKc_330:
	mov eax, [fs_cdpath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
_Z10FS_StartupPKc_380:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, [ebp+0x8]
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z10FS_StartupPKc_380
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, [ebp+0x8]
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov edx, [fs_basepath]
	mov eax, [edx+0xc]
	cmp byte [eax], 0x0
	jz _Z10FS_StartupPKc_390
_Z10FS_StartupPKc_130:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_shared
	call _Z2vaPKcz
	mov esi, eax
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
_Z10FS_StartupPKc_400:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, esi
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z10FS_StartupPKc_400
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, esi
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
_Z10FS_StartupPKc_410:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, [ebp+0x8]
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z10FS_StartupPKc_410
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, [ebp+0x8]
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz _Z10FS_StartupPKc_390
	mov [esp+0x4], eax
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10FS_StartupPKc_390
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s_shared
	call _Z2vaPKcz
	mov edi, eax
	mov eax, [fs_basepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_420:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_420
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_430:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, [ebp+0x8]
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_430
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, [ebp+0x8]
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	jmp _Z10FS_StartupPKc_390
_Z10FS_StartupPKc_140:
	mov dword [esp+0x4], _cstring_main
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10FS_StartupPKc_440
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov eax, [fs_basegame]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10FS_StartupPKc_440
	mov eax, [fs_cdpath]
	mov esi, [eax+0xc]
	cmp byte [esi], 0x0
	jz _Z10FS_StartupPKc_450
	mov eax, [fs_basegame]
	mov edi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_460:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_460
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
_Z10FS_StartupPKc_450:
	mov eax, [fs_basepath]
	mov esi, [eax+0xc]
	cmp byte [esi], 0x0
	jz _Z10FS_StartupPKc_470
	mov eax, [fs_basegame]
	mov edi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_480:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_480
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
_Z10FS_StartupPKc_470:
	mov eax, [fs_homepath]
	mov edx, [eax+0xc]
	cmp byte [edx], 0x0
	jz _Z10FS_StartupPKc_440
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10FS_StartupPKc_440
	mov eax, [fs_basegame]
	mov edi, [eax+0xc]
	mov eax, [fs_homepath]
	mov esi, [eax+0xc]
	mov ebx, 0xe
_Z10FS_StartupPKc_490:
	mov [esp], ebx
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jnz _Z10FS_StartupPKc_490
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call _Z19FS_AddGameDirectoryPKcS0_ii
	jmp _Z10FS_StartupPKc_440
_Z10FS_StartupPKc_320:
	mov edx, [fs_basepath]
	jmp _Z10FS_StartupPKc_310
_Z10FS_StartupPKc_90:
	mov edi, 0xe
_Z10FS_StartupPKc_500:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_devraw_shared
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z10FS_StartupPKc_500
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw_shared
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
_Z10FS_StartupPKc_510:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_devraw
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z10FS_StartupPKc_510
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_devraw
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
_Z10FS_StartupPKc_520:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_raw_shared
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z10FS_StartupPKc_520
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw_shared
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov eax, [fs_basepath]
	mov ebx, [eax+0xc]
	mov edi, 0xe
_Z10FS_StartupPKc_530:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, _cstring_raw
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z10FS_StartupPKc_530
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, _cstring_raw
	mov eax, ebx
	call _Z19FS_AddGameDirectoryPKcS0_ii
	mov edx, [fs_basepath]
	jmp _Z10FS_StartupPKc_540
	nop


;FS_CopyFile(char*, char*)
_Z11FS_CopyFilePcS_:
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
	jz _Z11FS_CopyFilePcS__10
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
	jz _Z11FS_CopyFilePcS__20
	mov dword [esp+0x4], _cstring_short_read_in_fs
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z11FS_CopyFilePcS__20:
	mov [esp], ebx
	call FS_FileClose
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call strstr
	test eax, eax
	jz _Z11FS_CopyFilePcS__30
_Z11FS_CopyFilePcS__40:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
_Z11FS_CopyFilePcS__80:
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp free
_Z11FS_CopyFilePcS__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FS_CopyFilePcS__30:
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call strstr
	test eax, eax
	jnz _Z11FS_CopyFilePcS__40
	lea edx, [esi+0x1]
	movzx eax, byte [esi+0x1]
	test al, al
	jz _Z11FS_CopyFilePcS__50
	mov ebx, edx
	jmp _Z11FS_CopyFilePcS__60
_Z11FS_CopyFilePcS__70:
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz _Z11FS_CopyFilePcS__50
_Z11FS_CopyFilePcS__60:
	cmp al, 0x2f
	jnz _Z11FS_CopyFilePcS__70
	mov byte [ebx], 0x0
	mov [esp], esi
	call _Z9Sys_MkdirPKc
	mov byte [ebx], 0x2f
	jmp _Z11FS_CopyFilePcS__70
_Z11FS_CopyFilePcS__50:
	mov [esp], esi
	call FS_FileOpenWriteBinary
	mov ebx, eax
	test eax, eax
	jz _Z11FS_CopyFilePcS__80
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FileWrite
	cmp edi, eax
	jz _Z11FS_CopyFilePcS__90
	mov dword [esp+0x4], _cstring_short_write_in_f
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z11FS_CopyFilePcS__90:
	mov [esp], ebx
	call FS_FileClose
	jmp _Z11FS_CopyFilePcS__80


;FS_Shutdown(int)
_Z11FS_Shutdowni:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0x8
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	call _Z21SEH_Shutdown_StringEdv
	mov esi, 0x1
	mov ebx, fsh
	jmp _Z11FS_Shutdowni_10
_Z11FS_Shutdowni_30:
	add esi, 0x1
	add ebx, 0x11c
	cmp esi, 0x41
	jz _Z11FS_Shutdowni_20
_Z11FS_Shutdowni_10:
	mov eax, [ebx+0x128]
	test eax, eax
	jz _Z11FS_Shutdowni_30
	mov [esp], esi
	call _Z13FS_FCloseFilei
	add esi, 0x1
	add ebx, 0x11c
	cmp esi, 0x41
	jnz _Z11FS_Shutdowni_10
_Z11FS_Shutdowni_20:
	mov eax, [fs_searchpaths]
	call _Z22FS_ShutdownSearchPathsP12searchpath_s
	mov dword [fs_searchpaths], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z17FS_RemoveCommandsv


;FS_WriteLog(void const*, int, int)
_Z11FS_WriteLogPKvii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x10]
	test edi, edi
	jz _Z11FS_WriteLogPKvii_10
	lea eax, [edi+edi*8]
	shl eax, 0x3
	sub eax, edi
	mov eax, [eax*4+fsh]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jnz _Z11FS_WriteLogPKvii_20
_Z11FS_WriteLogPKvii_50:
	lea eax, [edi+edi*8]
	shl eax, 0x3
	sub eax, edi
	mov ecx, [eax*4+fsh+0x8]
	test ecx, ecx
	jnz _Z11FS_WriteLogPKvii_30
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FS_WriteLogPKvii_30:
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
_Z11FS_WriteLogPKvii_20:
	mov ebx, [ebp+0xc]
	mov dword [ebp-0x20], 0x0
	jmp _Z11FS_WriteLogPKvii_40
_Z11FS_WriteLogPKvii_60:
	mov edx, [ebp-0x20]
	test edx, edx
	jnz _Z11FS_WriteLogPKvii_10
	mov dword [ebp-0x20], 0x1
_Z11FS_WriteLogPKvii_70:
	add esi, eax
	sub ebx, eax
	jz _Z11FS_WriteLogPKvii_50
_Z11FS_WriteLogPKvii_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FS_FileWrite
	test eax, eax
	jz _Z11FS_WriteLogPKvii_60
	cmp eax, 0xffffffff
	jnz _Z11FS_WriteLogPKvii_70
_Z11FS_WriteLogPKvii_10:
	mov dword [ebp+0xc], 0x0
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_LoadStack()
_Z12FS_LoadStackv:
	push ebp
	mov ebp, esp
	mov eax, [fs_loadStack]
	pop ebp
	ret


;FS_TouchFile(char const*)
_Z12FS_TouchFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov dword [com_fileAccessed], 0x1
	lea edx, [ebp-0xc]
	xor ecx, ecx
	call _Z25FS_FOpenFileReadForThreadPKcPi8FsThread
	mov eax, [ebp-0xc]
	test eax, eax
	jnz _Z12FS_TouchFilePKc_10
	leave
	ret
_Z12FS_TouchFilePKc_10:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov eax, 0x1
	leave
	ret
	nop


;FS_WriteFile(char const*, void const*, int)
_Z12FS_WriteFilePKcPKvi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	xor ecx, ecx
	mov edx, fs_gamedir
	mov eax, [ebp+0x8]
	call _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread
	mov esi, eax
	test eax, eax
	jz _Z12FS_WriteFilePKcPKvi_10
	lea eax, [eax+eax*8]
	shl eax, 0x3
	sub eax, esi
	mov eax, [eax*4+fsh]
	mov [ebp-0x11c], eax
	mov edi, [ebp+0xc]
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jnz _Z12FS_WriteFilePKcPKvi_20
_Z12FS_WriteFilePKcPKvi_90:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	mov ebx, [eax*4+fsh+0x8]
	test ebx, ebx
	jnz _Z12FS_WriteFilePKcPKvi_30
_Z12FS_WriteFilePKcPKvi_130:
	mov ebx, [ebp+0x10]
_Z12FS_WriteFilePKcPKvi_120:
	mov [esp], esi
	call _Z13FS_FCloseFilei
	cmp ebx, [ebp+0x10]
	jz _Z12FS_WriteFilePKcPKvi_40
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz _Z12FS_WriteFilePKcPKvi_50
_Z12FS_WriteFilePKcPKvi_60:
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12FS_WriteFilePKcPKvi_50:
	mov ecx, eax
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	mov edx, fs_gamedir
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov [esp], ebx
	call remove
	jmp _Z12FS_WriteFilePKcPKvi_60
_Z12FS_WriteFilePKcPKvi_20:
	mov ebx, [ebp+0x10]
	mov dword [ebp-0x120], 0x0
	jmp _Z12FS_WriteFilePKcPKvi_70
_Z12FS_WriteFilePKcPKvi_100:
	mov edx, [ebp-0x120]
	test edx, edx
	jnz _Z12FS_WriteFilePKcPKvi_80
	mov dword [ebp-0x120], 0x1
_Z12FS_WriteFilePKcPKvi_110:
	add edi, eax
	sub ebx, eax
	jz _Z12FS_WriteFilePKcPKvi_90
_Z12FS_WriteFilePKcPKvi_70:
	mov eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FS_FileWrite
	test eax, eax
	jz _Z12FS_WriteFilePKcPKvi_100
	cmp eax, 0xffffffff
	jnz _Z12FS_WriteFilePKcPKvi_110
_Z12FS_WriteFilePKcPKvi_80:
	xor ebx, ebx
	jmp _Z12FS_WriteFilePKcPKvi_120
_Z12FS_WriteFilePKcPKvi_10:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_open_s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12FS_WriteFilePKcPKvi_30:
	mov eax, [ebp-0x11c]
	mov [esp], eax
	call fflush
	jmp _Z12FS_WriteFilePKcPKvi_130
_Z12FS_WriteFilePKcPKvi_40:
	mov eax, 0x1
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FS_CreatePath(char*)
_Z13FS_CreatePathPc:
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
	jz _Z13FS_CreatePathPc_10
_Z13FS_CreatePathPc_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	mov eax, 0x1
_Z13FS_CreatePathPc_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z13FS_CreatePathPc_10:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz _Z13FS_CreatePathPc_20
	lea edx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	test al, al
	jz _Z13FS_CreatePathPc_30
	mov esi, edx
	jmp _Z13FS_CreatePathPc_40
_Z13FS_CreatePathPc_50:
	movzx eax, byte [esi+0x1]
	add esi, 0x1
	test al, al
	jz _Z13FS_CreatePathPc_30
_Z13FS_CreatePathPc_40:
	cmp al, 0x2f
	jnz _Z13FS_CreatePathPc_50
	mov byte [esi], 0x0
	mov [esp], ebx
	call _Z9Sys_MkdirPKc
	mov byte [esi], 0x2f
	jmp _Z13FS_CreatePathPc_50
_Z13FS_CreatePathPc_30:
	xor eax, eax
	jmp _Z13FS_CreatePathPc_60
	nop


;FS_FCloseFile(int)
_Z13FS_FCloseFilei:
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
	jz _Z13FS_FCloseFilei_10
	mov eax, [ebx+fsh]
	mov [esp], eax
	call unzCloseCurrentFile
	mov ecx, [ebx+fsh+0x4]
	test ecx, ecx
	jnz _Z13FS_FCloseFilei_20
	mov eax, [ebx+fsh+0x14]
	mov dword [eax+0x30c], 0x0
_Z13FS_FCloseFilei_40:
	mov dword [esp+0x8], 0x11c
	mov dword [esp+0x4], 0x0
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	lea eax, [eax*4+fsh]
	mov [esp], eax
	call _Z10Com_MemsetPvii
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z13FS_FCloseFilei_10:
	test esi, esi
	jnz _Z13FS_FCloseFilei_30
_Z13FS_FCloseFilei_50:
	mov dword [esp+0x8], 0x11c
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+fsh]
	mov [esp], eax
	call _Z10Com_MemsetPvii
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z13FS_FCloseFilei_20:
	mov eax, [ebx+fsh]
	mov [esp], eax
	call unzClose
	jmp _Z13FS_FCloseFilei_40
_Z13FS_FCloseFilei_30:
	mov eax, [ebx+fsh]
	mov [esp], eax
	call FS_FileClose
	jmp _Z13FS_FCloseFilei_50
	nop


;FS_FileExists(char const*)
_Z13FS_FileExistsPKc:
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
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov [esp], ebx
	call FS_FileOpenReadBinary
	test eax, eax
	jz _Z13FS_FileExistsPKc_10
	mov [esp], eax
	call FS_FileClose
	mov eax, 0x1
_Z13FS_FileExistsPKc_10:
	add esp, 0x114
	pop ebx
	pop ebp
	ret


;FS_FullPath_f()
_Z13FS_FullPath_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call _Z14FS_DisplayPathi
	leave
	ret


;FS_ResetFiles()
_Z13FS_ResetFilesv:
	push ebp
	mov ebp, esp
	mov dword [fs_loadStack], 0x0
	pop ebp
	ret
	nop


;FS_filelength(int)
_Z13FS_filelengthi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov edx, [eax+fsh+0x14]
	test edx, edx
	jz _Z13FS_filelengthi_10
	mov eax, [eax+fsh]
	mov eax, [eax+0x44]
	pop ebp
	ret
_Z13FS_filelengthi_10:
	mov eax, [eax+fsh]
	mov [ebp+0x8], eax
	pop ebp
	jmp FS_FileGetFileSize
	nop


;FS_BuildOSPath(char const*, char const*, char const*, char*)
_Z14FS_BuildOSPathPKcS0_S0_Pc:
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
	jmp _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	nop


;FS_ConvertPath(char*)
_Z14FS_ConvertPathPc:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jz _Z14FS_ConvertPathPc_10
	jmp _Z14FS_ConvertPathPc_20
_Z14FS_ConvertPathPc_40:
	cmp al, 0x3a
	jz _Z14FS_ConvertPathPc_30
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz _Z14FS_ConvertPathPc_10
_Z14FS_ConvertPathPc_20:
	cmp al, 0x5c
	jnz _Z14FS_ConvertPathPc_40
_Z14FS_ConvertPathPc_30:
	mov byte [edx], 0x2f
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz _Z14FS_ConvertPathPc_20
_Z14FS_ConvertPathPc_10:
	pop ebp
	ret
	add [eax], al


;FS_DeleteInDir(char const*, char const*)
_Z14FS_DeleteInDirPKcS0_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov ecx, [ebp+0x8]
	cmp byte [ecx], 0x0
	jnz _Z14FS_DeleteInDirPKcS0__10
_Z14FS_DeleteInDirPKcS0__20:
	xor eax, eax
	add esp, 0x114
	pop ebx
	pop ebp
	ret
_Z14FS_DeleteInDirPKcS0__10:
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov edx, [ebp+0xc]
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov [esp], ebx
	call remove
	add eax, 0x1
	jz _Z14FS_DeleteInDirPKcS0__20
	mov eax, 0x1
	add esp, 0x114
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;FS_DisplayPath(int)
_Z14FS_DisplayPathi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call _Z22SEH_GetCurrentLanguagev
	mov [esp], eax
	call _Z19SEH_GetLanguageNamei
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_current_language
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jnz _Z14FS_DisplayPathi_10
_Z14FS_DisplayPathi_170:
	mov dword [esp+0x4], _cstring_current_search_p
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov esi, [fs_searchpaths]
	test esi, esi
	jnz _Z14FS_DisplayPathi_20
	jmp _Z14FS_DisplayPathi_30
_Z14FS_DisplayPathi_60:
	mov eax, [esi+0xc]
	test eax, eax
	jz _Z14FS_DisplayPathi_40
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz _Z14FS_DisplayPathi_50
_Z14FS_DisplayPathi_90:
	mov esi, [esi]
	test esi, esi
	jz _Z14FS_DisplayPathi_30
_Z14FS_DisplayPathi_20:
	mov edx, [ebp+0x8]
	test edx, edx
	jnz _Z14FS_DisplayPathi_60
_Z14FS_DisplayPathi_40:
	mov edx, [esi+0x4]
	test edx, edx
	jz _Z14FS_DisplayPathi_70
	mov eax, [edx+0x310]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_s_i_files
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov eax, [esi+0xc]
	test eax, eax
	jnz _Z14FS_DisplayPathi_80
_Z14FS_DisplayPathi_130:
	mov ebx, [fs_numServerIwds]
	cmp ebx, 0x0
	jz _Z14FS_DisplayPathi_90
	mov eax, [esi+0x4]
	jg _Z14FS_DisplayPathi_100
_Z14FS_DisplayPathi_150:
	mov dword [esp+0x4], _cstring_____not_on_the_p
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov esi, [esi]
	test esi, esi
	jnz _Z14FS_DisplayPathi_20
_Z14FS_DisplayPathi_30:
	mov dword [esp+0x4], _cstring_file_handles
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov ebx, 0x1
	mov esi, fsh
	mov edi, fsh+0x138
_Z14FS_DisplayPathi_120:
	mov eax, [esi+0x11c]
	test eax, eax
	jz _Z14FS_DisplayPathi_110
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_handle_i_s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
_Z14FS_DisplayPathi_110:
	add ebx, 0x1
	add edi, 0x11c
	add esi, 0x11c
	cmp ebx, 0x41
	jnz _Z14FS_DisplayPathi_120
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14FS_DisplayPathi_80:
	mov eax, [esi+0x18]
	mov [esp], eax
	call _Z19SEH_GetLanguageNamei
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_____localized_as
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z14FS_DisplayPathi_130
_Z14FS_DisplayPathi_100:
	mov edi, [eax+0x304]
	cmp edi, [fs_serverIwds]
	jz _Z14FS_DisplayPathi_140
	xor ecx, ecx
	mov edx, fs_serverIwds
_Z14FS_DisplayPathi_160:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z14FS_DisplayPathi_150
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp edi, eax
	jnz _Z14FS_DisplayPathi_160
_Z14FS_DisplayPathi_140:
	mov dword [esp+0x4], _cstring_____on_the_pure_
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z14FS_DisplayPathi_90
_Z14FS_DisplayPathi_70:
	mov edx, [esi+0x8]
	lea eax, [edx+0x100]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ss2
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov eax, [esi+0xc]
	test eax, eax
	jz _Z14FS_DisplayPathi_90
	mov eax, [esi+0x18]
	mov [esp], eax
	call _Z19SEH_GetLanguageNamei
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_____localized_as1
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z14FS_DisplayPathi_90
_Z14FS_DisplayPathi_50:
	mov ebx, [esi+0x18]
	call _Z22SEH_GetCurrentLanguagev
	cmp ebx, eax
	jnz _Z14FS_DisplayPathi_90
	jmp _Z14FS_DisplayPathi_40
_Z14FS_DisplayPathi_10:
	mov dword [esp+0x4], _cstring_____localized_as2
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z14FS_DisplayPathi_170
	nop


;FS_GetFileList(char const*, char const*, FsListBehavior_e, char*, int)
_Z14FS_GetFileListPKcS0_16FsListBehavior_ePci:
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
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_10
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z13FS_GetModListPci
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_10:
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
	call _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii
	mov [ebp-0x2c], eax
	mov edi, [ebp-0x1c]
	test edi, edi
	jg _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_20
_Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_70:
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jz _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_30
_Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_60:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call _Z16Hunk_UserDestroyP8HunkUser
_Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_30:
	mov eax, [ebp-0x1c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_20:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x34], 0x0
_Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_50:
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
	jge _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_40
	mov [esp+0x4], edx
	mov [esp], esi
	call strcpy
	add esi, ebx
	add dword [ebp-0x34], 0x1
	mov eax, [ebp-0x34]
	cmp [ebp-0x1c], eax
	jg _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_50
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jnz _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_60
	jmp _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_30
_Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_40:
	mov edx, [ebp-0x34]
	mov [ebp-0x1c], edx
	jmp _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci_70


;FS_Initialized()
_Z14FS_Initializedv:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [fs_searchpaths], 0x0
	setnz al
	pop ebp
	ret
	nop


;FS_NeedRestart(int)
_Z14FS_NeedRestarti:
	push ebp
	mov ebp, esp
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14FS_NeedRestarti_10
	mov eax, [fs_gameDirVar]
	cmp byte [eax+0xb], 0x0
	jnz _Z14FS_NeedRestarti_20
	mov eax, [ebp+0x8]
	cmp [fs_checksumFeed], eax
	jz _Z14FS_NeedRestarti_10
_Z14FS_NeedRestarti_20:
	mov eax, 0x1
	pop ebp
	ret
_Z14FS_NeedRestarti_10:
	xor eax, eax
	pop ebp
	ret
	nop


;FS_HashFileName(char const*, int)
_Z15FS_HashFileNamePKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz _Z15FS_HashFileNamePKci_10
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
_Z15FS_HashFileNamePKci_10:
	xor esi, esi
	mov ebx, 0x77
_Z15FS_HashFileNamePKci_30:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, eax
	cmp eax, 0x2e
	jz _Z15FS_HashFileNamePKci_20
	cmp eax, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	imul edx, ebx
	add esi, edx
	movzx eax, byte [edi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz _Z15FS_HashFileNamePKci_30
_Z15FS_HashFileNamePKci_20:
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
_Z15FS_SortFileListPPKci:
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
	jle _Z15FS_SortFileListPPKci_10
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x28], 0x0
	mov edx, [ebp-0x28]
_Z15FS_SortFileListPPKci_150:
	mov ecx, [ebp-0x30]
	mov eax, [ecx+edx*4]
	mov edx, [ebp-0x2c]
	mov ecx, [ebp-0x24]
	mov [ecx+edx*4], eax
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	mov eax, [ebp-0x28]
	cmp [ebp-0x34], eax
	jz _Z15FS_SortFileListPPKci_10
_Z15FS_SortFileListPPKci_120:
	mov dword [ebp-0x2c], 0x0
	test eax, eax
	jle _Z15FS_SortFileListPPKci_20
	mov ecx, [ebp-0x2c]
_Z15FS_SortFileListPPKci_140:
	mov eax, [ebp-0x24]
	mov ecx, [eax+ecx*4]
	mov [ebp-0x20], ecx
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x30]
	mov edi, [edx+eax*4]
	jmp _Z15FS_SortFileListPPKci_30
_Z15FS_SortFileListPPKci_80:
	cmp esi, 0x3a
	jz _Z15FS_SortFileListPPKci_40
	cmp ebx, 0x5c
	jz _Z15FS_SortFileListPPKci_50
_Z15FS_SortFileListPPKci_90:
	cmp ebx, 0x3a
	jz _Z15FS_SortFileListPPKci_50
	cmp esi, ebx
	jl _Z15FS_SortFileListPPKci_60
_Z15FS_SortFileListPPKci_100:
	jg _Z15FS_SortFileListPPKci_70
	test esi, esi
	jz _Z15FS_SortFileListPPKci_70
	mov ecx, [ebp-0x20]
_Z15FS_SortFileListPPKci_30:
	movsx esi, byte [edi]
	add edi, 0x1
	movsx ebx, byte [ecx]
	add ecx, 0x1
	mov [ebp-0x20], ecx
	mov [esp], esi
	call _Z9I_isloweri
	lea edx, [esi-0x20]
	test al, al
	cmovnz esi, edx
	mov [esp], ebx
	call _Z9I_isloweri
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	cmp esi, 0x5c
	jnz _Z15FS_SortFileListPPKci_80
_Z15FS_SortFileListPPKci_40:
	mov esi, 0x2f
	cmp ebx, 0x5c
	jnz _Z15FS_SortFileListPPKci_90
_Z15FS_SortFileListPPKci_50:
	mov ebx, 0x2f
	cmp esi, ebx
	jge _Z15FS_SortFileListPPKci_100
_Z15FS_SortFileListPPKci_60:
	mov eax, [ebp-0x2c]
	cmp [ebp-0x28], eax
	jle _Z15FS_SortFileListPPKci_20
	mov edx, [ebp-0x1c]
	sub edx, 0x4
	mov ecx, [ebp-0x28]
_Z15FS_SortFileListPPKci_110:
	mov eax, [edx]
	mov [edx+0x4], eax
	sub ecx, 0x1
	sub edx, 0x4
	cmp ecx, [ebp-0x2c]
	jg _Z15FS_SortFileListPPKci_110
_Z15FS_SortFileListPPKci_20:
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
	jnz _Z15FS_SortFileListPPKci_120
_Z15FS_SortFileListPPKci_10:
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
_Z15FS_SortFileListPPKci_70:
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x2c]
	cmp [ebp-0x28], edx
	jz _Z15FS_SortFileListPPKci_130
	mov ecx, edx
	jmp _Z15FS_SortFileListPPKci_140
_Z15FS_SortFileListPPKci_130:
	mov ecx, [ebp-0x28]
	mov [ebp-0x2c], ecx
	mov edx, ecx
	jmp _Z15FS_SortFileListPPKci_150
	nop


;FS_FCloseLogFile(int)
_Z16FS_FCloseLogFilei:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z13FS_FCloseFilei
	nop


;FS_FOpenFileRead(char const*, int*)
_Z16FS_FOpenFileReadPKcPi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov dword [com_fileAccessed], 0x1
	xor ecx, ecx
	pop ebp
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread
	nop


;FS_FileForHandle(int)
_Z16FS_FileForHandlei:
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
_Z16FS_GetFileOsPathPKcPc:
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
	call _Z19FS_SanitizeFilenamePKcPci
	test al, al
	jnz _Z16FS_GetFileOsPathPKcPc_10
_Z16FS_GetFileOsPathPKcPc_30:
	mov eax, 0xffffffff
_Z16FS_GetFileOsPathPKcPc_70:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FS_GetFileOsPathPKcPc_10:
	mov esi, [fs_searchpaths]
	test esi, esi
	jnz _Z16FS_GetFileOsPathPKcPc_20
	jmp _Z16FS_GetFileOsPathPKcPc_30
_Z16FS_GetFileOsPathPKcPc_50:
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz _Z16FS_GetFileOsPathPKcPc_40
_Z16FS_GetFileOsPathPKcPc_60:
	mov esi, [esi]
	test esi, esi
	jz _Z16FS_GetFileOsPathPKcPc_30
_Z16FS_GetFileOsPathPKcPc_20:
	mov eax, [esi+0xc]
	test eax, eax
	jnz _Z16FS_GetFileOsPathPKcPc_50
_Z16FS_GetFileOsPathPKcPc_80:
	mov ebx, [esi+0x4]
	test ebx, ebx
	jnz _Z16FS_GetFileOsPathPKcPc_60
	mov eax, [esi+0x8]
	lea edx, [eax+0x100]
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	mov ecx, edi
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov eax, [ebp+0xc]
	mov [esp], eax
	call FS_FileOpenReadBinary
	test eax, eax
	jz _Z16FS_GetFileOsPathPKcPc_60
	mov [esp], eax
	call FS_FileClose
	xor eax, eax
	jmp _Z16FS_GetFileOsPathPKcPc_70
_Z16FS_GetFileOsPathPKcPc_40:
	mov ebx, [esi+0x18]
	call _Z22SEH_GetCurrentLanguagev
	cmp ebx, eax
	jnz _Z16FS_GetFileOsPathPKcPc_60
	jmp _Z16FS_GetFileOsPathPKcPc_80
	nop


;FS_HandleForFile(FsThread)
_Z16FS_HandleForFile8FsThread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	cmp dword [ebp+0x8], 0x1
	jz _Z16FS_HandleForFile8FsThread_10
	cmp dword [ebp+0x8], 0x3
	jz _Z16FS_HandleForFile8FsThread_20
	mov edi, [ebp+0x8]
	test edi, edi
	jz _Z16FS_HandleForFile8FsThread_30
	mov dword [ebp-0x1c], 0x3e
	mov esi, 0x1
_Z16FS_HandleForFile8FsThread_80:
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov ebx, [eax+fsh]
	test ebx, ebx
	jz _Z16FS_HandleForFile8FsThread_40
_Z16FS_HandleForFile8FsThread_70:
	lea ecx, [eax+fsh]
	xor edx, edx
_Z16FS_HandleForFile8FsThread_60:
	add edx, 0x1
	cmp esi, edx
	jz _Z16FS_HandleForFile8FsThread_50
	mov ebx, [ebp-0x1c]
	add ebx, edx
	mov eax, [ecx+0x11c]
	add ecx, 0x11c
	test eax, eax
	jnz _Z16FS_HandleForFile8FsThread_60
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FS_HandleForFile8FsThread_30:
	mov dword [ebp-0x1c], 0x1
	mov esi, 0x30
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov ebx, [eax+fsh]
	test ebx, ebx
	jnz _Z16FS_HandleForFile8FsThread_70
_Z16FS_HandleForFile8FsThread_40:
	mov ebx, edx
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FS_HandleForFile8FsThread_10:
	mov dword [ebp-0x1c], 0x31
	mov esi, 0xd
	jmp _Z16FS_HandleForFile8FsThread_80
_Z16FS_HandleForFile8FsThread_50:
	mov esi, [ebp+0x8]
	test esi, esi
	jz _Z16FS_HandleForFile8FsThread_90
_Z16FS_HandleForFile8FsThread_110:
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
	call _Z16Com_PrintWarningiPKcz
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_fs_handleforfile
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FS_HandleForFile8FsThread_20:
	mov dword [ebp-0x1c], 0x3f
	mov esi, 0x1
	jmp _Z16FS_HandleForFile8FsThread_80
_Z16FS_HandleForFile8FsThread_90:
	mov ebx, 0x1
	mov edi, fsh
	mov esi, fsh+0x138
_Z16FS_HandleForFile8FsThread_100:
	mov eax, [edi+0x11c]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_2i_s_0xx
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	add ebx, 0x1
	add esi, 0x11c
	add edi, 0x11c
	cmp ebx, 0x41
	jnz _Z16FS_HandleForFile8FsThread_100
	mov dword [esp+0x4], _cstring_fs_handleforfile1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16FS_HandleForFile8FsThread_110


;FS_UseSearchPath(searchpath_s const*)
_Z16FS_UseSearchPathPK12searchpath_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z16FS_UseSearchPathPK12searchpath_s_10
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz _Z16FS_UseSearchPathPK12searchpath_s_20
_Z16FS_UseSearchPathPK12searchpath_s_30:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z16FS_UseSearchPathPK12searchpath_s_20:
	mov ebx, [edx+0x18]
	call _Z22SEH_GetCurrentLanguagev
	cmp ebx, eax
	jnz _Z16FS_UseSearchPathPK12searchpath_s_30
_Z16FS_UseSearchPathPK12searchpath_s_10:
	mov eax, 0x1
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;FS_FOpenFileWrite(char const*)
_Z17FS_FOpenFileWritePKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	xor ecx, ecx
	mov edx, fs_gamedir
	pop ebp
	jmp _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread
	nop


;FS_InitFilesystem()
_Z17FS_InitFilesystemv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_fs_cdpath
	call _Z19Com_StartupVariablePKc
	mov dword [esp], _cstring_fs_basepath
	call _Z19Com_StartupVariablePKc
	mov dword [esp], _cstring_fs_homepath
	call _Z19Com_StartupVariablePKc
	mov dword [esp], _cstring_fs_game
	call _Z19Com_StartupVariablePKc
	mov dword [esp], _cstring_fs_copyfiles
	call _Z19Com_StartupVariablePKc
	mov dword [esp], _cstring_fs_restrict
	call _Z19Com_StartupVariablePKc
	mov dword [esp], _cstring_loc_language
	call _Z19Com_StartupVariablePKc
	call _Z16SEH_InitLanguagev
	mov dword [esp], _cstring_main
	call _Z10FS_StartupPKc
	call _Z17SEH_Init_StringEdv
	call _Z22SEH_UpdateLanguageInfov
	call _Z18FS_SetRestrictionsv
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_filesyscheckcfg
	call FS_ReadFile
	test eax, eax
	jg _Z17FS_InitFilesystemv_10
	mov dword [esp+0x8], _cstring_filesyscheckcfg
	mov dword [esp+0x4], _cstring_couldnt_load_s__
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z17FS_InitFilesystemv_10:
	mov dword [esp+0x8], 0x100
	mov eax, [fs_basepath]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], lastValidBase
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x100
	mov eax, [fs_gameDirVar]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], lastValidGame
	call _Z10I_strncpyzPcPKci
	leave
	ret
	add [eax], al


;FS_WriteFileToDir(char const*, char const*, void const*, int)
_Z17FS_WriteFileToDirPKcS0_PKvi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edx, [ebp+0xc]
	xor ecx, ecx
	mov eax, [ebp+0x8]
	call _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread
	mov esi, eax
	test eax, eax
	jz _Z17FS_WriteFileToDirPKcS0_PKvi_10
	lea eax, [eax+eax*8]
	shl eax, 0x3
	sub eax, esi
	mov eax, [eax*4+fsh]
	mov [ebp-0x11c], eax
	mov edi, [ebp+0x10]
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jnz _Z17FS_WriteFileToDirPKcS0_PKvi_20
_Z17FS_WriteFileToDirPKcS0_PKvi_90:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	mov eax, [eax*4+fsh+0x8]
	test eax, eax
	jnz _Z17FS_WriteFileToDirPKcS0_PKvi_30
_Z17FS_WriteFileToDirPKcS0_PKvi_130:
	mov ebx, [ebp+0x14]
_Z17FS_WriteFileToDirPKcS0_PKvi_120:
	mov [esp], esi
	call _Z13FS_FCloseFilei
	cmp ebx, [ebp+0x14]
	jz _Z17FS_WriteFileToDirPKcS0_PKvi_40
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz _Z17FS_WriteFileToDirPKcS0_PKvi_50
_Z17FS_WriteFileToDirPKcS0_PKvi_60:
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FS_WriteFileToDirPKcS0_PKvi_50:
	mov ecx, eax
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	mov edx, fs_gamedir
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov [esp], ebx
	call remove
	jmp _Z17FS_WriteFileToDirPKcS0_PKvi_60
_Z17FS_WriteFileToDirPKcS0_PKvi_20:
	mov ebx, [ebp+0x14]
	mov dword [ebp-0x120], 0x0
	jmp _Z17FS_WriteFileToDirPKcS0_PKvi_70
_Z17FS_WriteFileToDirPKcS0_PKvi_100:
	mov edx, [ebp-0x120]
	test edx, edx
	jnz _Z17FS_WriteFileToDirPKcS0_PKvi_80
	mov dword [ebp-0x120], 0x1
_Z17FS_WriteFileToDirPKcS0_PKvi_110:
	add edi, eax
	sub ebx, eax
	jz _Z17FS_WriteFileToDirPKcS0_PKvi_90
_Z17FS_WriteFileToDirPKcS0_PKvi_70:
	mov eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FS_FileWrite
	test eax, eax
	jz _Z17FS_WriteFileToDirPKcS0_PKvi_100
	cmp eax, 0xffffffff
	jnz _Z17FS_WriteFileToDirPKcS0_PKvi_110
_Z17FS_WriteFileToDirPKcS0_PKvi_80:
	xor ebx, ebx
	jmp _Z17FS_WriteFileToDirPKcS0_PKvi_120
_Z17FS_WriteFileToDirPKcS0_PKvi_10:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_open_s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FS_WriteFileToDirPKcS0_PKvi_30:
	mov eax, [ebp-0x11c]
	mov [esp], eax
	call fflush
	jmp _Z17FS_WriteFileToDirPKcS0_PKvi_130
_Z17FS_WriteFileToDirPKcS0_PKvi_40:
	mov eax, 0x1
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_GetBspFilename(char*, int, char const*)
_Z18Com_GetBspFilenamePciPKc:
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
	call _Z11Com_sprintfPciPKcz
	leave
	ret
	nop


;FS_FOpenFileAppend(char const*)
_Z18FS_FOpenFileAppendPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov ebx, [ebp+0x8]
	call _Z16Sys_IsMainThreadv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x3
	mov [esp], eax
	call _Z16FS_HandleForFile8FsThread
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
	call _Z10I_strncpyzPcPKci
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x118]
	mov [esp], edi
	mov ecx, ebx
	mov edx, fs_gamedir
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z18FS_FOpenFileAppendPKc_10
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call strstr
	test eax, eax
	jz _Z18FS_FOpenFileAppendPKc_20
_Z18FS_FOpenFileAppendPKc_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	xor esi, esi
_Z18FS_FOpenFileAppendPKc_70:
	mov eax, esi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FS_FOpenFileAppendPKc_10:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_fs_fopenfileappe
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call strstr
	test eax, eax
	jnz _Z18FS_FOpenFileAppendPKc_30
_Z18FS_FOpenFileAppendPKc_20:
	mov dword [esp+0x4], _cstring_1
	mov [esp], edi
	call strstr
	test eax, eax
	jnz _Z18FS_FOpenFileAppendPKc_30
	movzx eax, byte [ebp-0x117]
	test al, al
	jz _Z18FS_FOpenFileAppendPKc_40
	mov ebx, edi
	jmp _Z18FS_FOpenFileAppendPKc_50
_Z18FS_FOpenFileAppendPKc_60:
	movzx eax, byte [ebx+0x2]
	add ebx, 0x1
	test al, al
	jz _Z18FS_FOpenFileAppendPKc_40
_Z18FS_FOpenFileAppendPKc_50:
	cmp al, 0x2f
	jnz _Z18FS_FOpenFileAppendPKc_60
	mov byte [ebx+0x1], 0x0
	mov [esp], edi
	call _Z9Sys_MkdirPKc
	mov byte [ebx+0x1], 0x2f
	jmp _Z18FS_FOpenFileAppendPKc_60
_Z18FS_FOpenFileAppendPKc_40:
	mov [esp], edi
	call FS_FileOpenAppendText
	lea edx, [esi+esi*8]
	shl edx, 0x3
	sub edx, esi
	shl edx, 0x2
	mov [edx+fsh], eax
	mov dword [edx+fsh+0x8], 0x0
	test eax, eax
	jnz _Z18FS_FOpenFileAppendPKc_70
	xor esi, esi
	jmp _Z18FS_FOpenFileAppendPKc_70
	nop


;FS_FOpenFileByMode(char const*, int*, fsMode_t)
_Z18FS_FOpenFileByModePKcPi8fsMode_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp eax, 0x1
	jz _Z18FS_FOpenFileByModePKcPi8fsMode_t_10
	jle _Z18FS_FOpenFileByModePKcPi8fsMode_t_20
	cmp eax, 0x2
	jz _Z18FS_FOpenFileByModePKcPi8fsMode_t_30
	cmp eax, 0x3
	jz _Z18FS_FOpenFileByModePKcPi8fsMode_t_40
_Z18FS_FOpenFileByModePKcPi8fsMode_t_90:
	mov dword [esp+0x4], _cstring_fsh_fopenfile_ba
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, 0x1b39
_Z18FS_FOpenFileByModePKcPi8fsMode_t_100:
	test ebx, ebx
	jz _Z18FS_FOpenFileByModePKcPi8fsMode_t_50
	xor esi, esi
	mov edx, [ebx]
_Z18FS_FOpenFileByModePKcPi8fsMode_t_80:
	test edx, edx
	jz _Z18FS_FOpenFileByModePKcPi8fsMode_t_60
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
_Z18FS_FOpenFileByModePKcPi8fsMode_t_60:
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	mov [eax*4+fsh+0x8], esi
_Z18FS_FOpenFileByModePKcPi8fsMode_t_50:
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18FS_FOpenFileByModePKcPi8fsMode_t_10:
	xor ecx, ecx
	mov edx, fs_gamedir
	mov eax, [ebp+0x8]
	call _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread
	mov [ebx], eax
	test eax, eax
	jz _Z18FS_FOpenFileByModePKcPi8fsMode_t_70
	xor ecx, ecx
	xor esi, esi
	mov edx, [ebx]
	jmp _Z18FS_FOpenFileByModePKcPi8fsMode_t_80
_Z18FS_FOpenFileByModePKcPi8fsMode_t_30:
	xor esi, esi
_Z18FS_FOpenFileByModePKcPi8fsMode_t_110:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18FS_FOpenFileAppendPKc
	mov edx, eax
	mov [ebx], eax
	cmp eax, 0x1
	sbb ecx, ecx
	jmp _Z18FS_FOpenFileByModePKcPi8fsMode_t_80
_Z18FS_FOpenFileByModePKcPi8fsMode_t_70:
	mov ecx, 0xffffffff
	xor esi, esi
	mov edx, [ebx]
	jmp _Z18FS_FOpenFileByModePKcPi8fsMode_t_80
_Z18FS_FOpenFileByModePKcPi8fsMode_t_20:
	test eax, eax
	jnz _Z18FS_FOpenFileByModePKcPi8fsMode_t_90
	mov dword [com_fileAccessed], 0x1
	xor ecx, ecx
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z25FS_FOpenFileReadForThreadPKcPi8FsThread
	mov ecx, eax
	jmp _Z18FS_FOpenFileByModePKcPi8fsMode_t_100
_Z18FS_FOpenFileByModePKcPi8fsMode_t_40:
	mov esi, 0x1
	jmp _Z18FS_FOpenFileByModePKcPi8fsMode_t_110
	nop


;FS_FilenameCompare(char const*, char const*)
_Z18FS_FilenameComparePKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	jmp _Z18FS_FilenameComparePKcS0__10
_Z18FS_FilenameComparePKcS0__60:
	cmp esi, 0x3a
	jz _Z18FS_FilenameComparePKcS0__20
	cmp ebx, 0x5c
	jz _Z18FS_FilenameComparePKcS0__30
_Z18FS_FilenameComparePKcS0__70:
	cmp ebx, 0x3a
	jz _Z18FS_FilenameComparePKcS0__30
	cmp esi, ebx
	jnz _Z18FS_FilenameComparePKcS0__40
_Z18FS_FilenameComparePKcS0__80:
	test esi, esi
	jz _Z18FS_FilenameComparePKcS0__50
_Z18FS_FilenameComparePKcS0__10:
	mov eax, [ebp+0x8]
	movsx esi, byte [eax]
	add eax, 0x1
	mov [ebp+0x8], eax
	movsx ebx, byte [edi]
	add edi, 0x1
	mov [esp], esi
	call _Z9I_isloweri
	lea edx, [esi-0x20]
	test al, al
	cmovnz esi, edx
	mov [esp], ebx
	call _Z9I_isloweri
	lea edx, [ebx-0x20]
	test al, al
	cmovnz ebx, edx
	cmp esi, 0x5c
	jnz _Z18FS_FilenameComparePKcS0__60
_Z18FS_FilenameComparePKcS0__20:
	mov esi, 0x2f
	cmp ebx, 0x5c
	jnz _Z18FS_FilenameComparePKcS0__70
_Z18FS_FilenameComparePKcS0__30:
	mov ebx, 0x2f
	cmp esi, ebx
	jz _Z18FS_FilenameComparePKcS0__80
_Z18FS_FilenameComparePKcS0__40:
	mov eax, 0xffffffff
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FS_FilenameComparePKcS0__50:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_ShortOSFilePath(char const*)
_Z18FS_ShortOSFilePathPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov esi, [fs_searchpaths]
	test esi, esi
	jz _Z18FS_ShortOSFilePathPKc_10
	lea edi, [ebp-0x118]
	jmp _Z18FS_ShortOSFilePathPKc_20
_Z18FS_ShortOSFilePathPKc_40:
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz _Z18FS_ShortOSFilePathPKc_30
_Z18FS_ShortOSFilePathPKc_50:
	mov esi, [esi]
	test esi, esi
	jz _Z18FS_ShortOSFilePathPKc_10
_Z18FS_ShortOSFilePathPKc_20:
	mov ecx, [esi+0xc]
	test ecx, ecx
	jnz _Z18FS_ShortOSFilePathPKc_40
_Z18FS_ShortOSFilePathPKc_60:
	mov eax, [esi+0x8]
	test eax, eax
	jz _Z18FS_ShortOSFilePathPKc_50
	lea edx, [eax+0x100]
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	mov ecx, [ebp+0x8]
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call access
	test eax, eax
	jnz _Z18FS_ShortOSFilePathPKc_50
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FS_ShortOSFilePathPKc_30:
	mov ebx, [esi+0x18]
	call _Z22SEH_GetCurrentLanguagev
	cmp ebx, eax
	jz _Z18FS_ShortOSFilePathPKc_60
	mov esi, [esi]
	test esi, esi
	jnz _Z18FS_ShortOSFilePathPKc_20
_Z18FS_ShortOSFilePathPKc_10:
	xor eax, eax
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_DisablePureCheck(unsigned char)
_Z19FS_DisablePureCheckh:
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
_Z20FS_AddUserMapDirIWDsPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [fs_searchpaths]
	test ebx, ebx
	jz _Z20FS_AddUserMapDirIWDsPKc_10
_Z20FS_AddUserMapDirIWDsPKc_40:
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z20FS_AddUserMapDirIWDsPKc_20
	mov [esp+0x4], esi
	add eax, 0x200
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20FS_AddUserMapDirIWDsPKc_30
_Z20FS_AddUserMapDirIWDsPKc_20:
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z20FS_AddUserMapDirIWDsPKc_40
_Z20FS_AddUserMapDirIWDsPKc_10:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_3
	call _Z30FS_AddIwdFilesForGameDirectoryPKcS0_
_Z20FS_AddUserMapDirIWDsPKc_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;FS_LanguageHasAssets(int)
_Z20FS_LanguageHasAssetsi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [fs_searchpaths]
	test eax, eax
	jz _Z20FS_LanguageHasAssetsi_10
_Z20FS_LanguageHasAssetsi_40:
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z20FS_LanguageHasAssetsi_20
	cmp [eax+0x18], edx
	jz _Z20FS_LanguageHasAssetsi_30
_Z20FS_LanguageHasAssetsi_20:
	mov eax, [eax]
	test eax, eax
	jnz _Z20FS_LanguageHasAssetsi_40
_Z20FS_LanguageHasAssetsi_10:
	xor eax, eax
	pop ebp
	ret
_Z20FS_LanguageHasAssetsi_30:
	mov eax, 0x1
	pop ebp
	ret


;FS_ListFilteredFiles(searchpath_s*, char const*, char const*, char const*, FsListBehavior_e, int*, int)
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x37c
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_10
	mov eax, [ebp+0x10]
	test eax, eax
	mov eax, _cstring_null
	cmovnz eax, [ebp+0x10]
	mov [ebp+0x10], eax
	mov ecx, 0x100
	lea edx, [ebp-0x21c]
	mov eax, ebx
	call _Z19FS_SanitizeFilenamePKcPci
	test al, al
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_20
	mov dword [esp+0x4], _cstring_4
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
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
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_30
	lea edx, [ecx-0x2]
	movzx eax, byte [ebp+edx-0x21c]
	cmp al, 0x5c
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_40
	cmp al, 0x2f
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_40
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_30:
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
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_50
	mov dword [ebp-0x348], 0x0
	xor ebx, ebx
	xor esi, esi
	mov edi, 0x1
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_320:
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
	call _Z15Hunk_UserCreateiPKchhi
	mov [ebp-0x340], eax
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8004
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp-0x340]
	mov [eax], edx
	add eax, 0x4
	mov [ebp-0x358], eax
	mov edi, [ebp+0x8]
	test edi, edi
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_60
	mov ecx, [ebp+0x8]
	mov [ebp-0x354], ecx
	mov dword [ebp-0x35c], 0x0
	mov eax, ecx
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_70
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_100:
	mov eax, [fs_ignoreLocalized]
	cmp byte [eax+0xc], 0x0
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_80
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_140:
	mov edx, [ebp-0x354]
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_510:
	mov edx, [edx]
	mov [ebp-0x354], edx
	test edx, edx
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_90
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_460:
	mov eax, [ebp-0x354]
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_70:
	mov esi, [eax+0xc]
	test esi, esi
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_100
	mov eax, [eax+0x4]
	mov [ebp-0x360], eax
	test eax, eax
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_110
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_380:
	mov edx, [ebp-0x354]
	mov ebx, [edx+0xc]
	test ebx, ebx
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_120
	mov ebx, [fs_numServerIwds]
	cmp ebx, 0x0
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_130
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_120:
	mov ecx, [ebp-0x360]
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_480:
	mov eax, [ecx+0x320]
	mov ecx, [ecx+0x310]
	test ecx, ecx
	jle _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_140
	mov [ebp-0x32c], eax
	mov dword [ebp-0x350], 0x0
	mov esi, [eax+0x4]
	mov edx, [ebp+0x14]
	test edx, edx
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_150
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_200:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z14Com_FilterPathPKcS0_i
	test al, al
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	cmp dword [ebp-0x35c], 0x1fff
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_170
	mov eax, [ebp-0x35c]
	test eax, eax
	jle _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_180
	xor ebx, ebx
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_190:
	mov ecx, [ebp-0x358]
	mov eax, [ecx+ebx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	add ebx, 0x1
	cmp [ebp-0x35c], ebx
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_190
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_180:
	mov [esp+0x4], esi
	mov eax, [ebp-0x340]
	mov [esp], eax
	call _Z15Hunk_CopyStringP8HunkUserPKc
	mov edx, [ebp-0x35c]
	mov ecx, [ebp-0x358]
	mov [ecx+edx*4], eax
	add edx, 0x1
	mov [ebp-0x35c], edx
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160:
	add dword [ebp-0x350], 0x1
	add dword [ebp-0x32c], 0xc
	mov edx, [ebp-0x350]
	mov eax, [ebp-0x360]
	cmp edx, [eax+0x310]
	jge _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_140
	mov eax, [ebp-0x32c]
	mov esi, [eax+0x4]
	mov edx, [ebp+0x14]
	test edx, edx
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_200
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_150:
	mov byte [ebp-0x11c], 0x0
	movzx eax, byte [esi]
	test al, al
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_210
	xor edi, edi
	mov dword [ebp-0x33c], 0x0
	xor ebx, ebx
	mov dword [ebp-0x334], 0x0
	mov dword [ebp-0x330], 0x1
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_370:
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
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	mov edx, [ebp-0x33c]
	cmp [ebp-0x34c], edx
	jg _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	mov eax, [ebp-0x34c]
	test eax, eax
	jle _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_220
	mov ecx, [ebp-0x34c]
	cmp byte [esi+ecx], 0x2f
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	mov eax, ecx
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_520:
	mov [esp+0x8], eax
	lea edx, [ebp-0x21c]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	cmp byte [ebp-0x341], 0x0
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_230
	mov eax, [ebp-0x364]
	test eax, eax
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_240
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_540:
	mov eax, [ebp-0x34c]
	test eax, eax
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_250
	xor eax, eax
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_530:
	cmp byte [ebp-0x341], 0x0
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_260
	add esi, eax
	cmp dword [ebp-0x35c], 0x1fff
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_170
	mov eax, [ebp-0x35c]
	test eax, eax
	jle _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_180
	xor ebx, ebx
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_270:
	mov ecx, [ebp-0x358]
	mov eax, [ecx+ebx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	add ebx, 0x1
	cmp [ebp-0x35c], ebx
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_270
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_180
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_50:
	mov dword [ebp-0x348], 0x0
	xor edx, edx
	xor ebx, ebx
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_280
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_310:
	cmp al, 0x5c
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_290
	add ebx, 0x1
	movzx eax, byte [ebx+ebp-0x21c]
	test al, al
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_300
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_280:
	cmp al, 0x2f
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_310
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_290:
	add dword [ebp-0x348], 0x1
	mov edx, ebx
	add ebx, 0x1
	movzx eax, byte [ebx+ebp-0x21c]
	test al, al
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_280
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_300:
	mov esi, edx
	lea edi, [edx+0x1]
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_320
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_210:
	xor ebx, ebx
	mov dword [ebp-0x33c], 0x0
	xor edi, edi
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_330
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_360:
	cmp al, 0x5c
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_340
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	test al, al
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_350
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_330:
	cmp al, 0x2f
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_360
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_340:
	add edi, 0x1
	mov [ebp-0x33c], ebx
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	test al, al
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_330
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_350:
	mov eax, [ebp-0x33c]
	mov [ebp-0x334], eax
	mov edx, eax
	add edx, 0x1
	mov [ebp-0x330], edx
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_370
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_170:
	mov dword [ebp-0x35c], 0x1fff
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_80:
	mov edx, [ebp-0x354]
	mov ebx, [edx+0x18]
	call _Z22SEH_GetCurrentLanguagev
	cmp ebx, eax
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_140
	mov eax, [ebp-0x354]
	mov eax, [eax+0x4]
	mov [ebp-0x360], eax
	test eax, eax
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_380
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_110:
	mov ecx, [ebp-0x354]
	mov ebx, [ecx+0x8]
	test ebx, ebx
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_390
	mov eax, [fs_restrict]
	cmp byte [eax+0xc], 0x0
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_400
	mov edi, [fs_numServerIwds]
	test edi, edi
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_400
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_500:
	lea edx, [ebx+0x100]
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x31c]
	mov [esp], eax
	lea ecx, [ebp-0x21c]
	mov eax, ebx
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
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
	call _Z13Sys_ListFilesPKcS0_S0_Pii
	mov [ebp-0x338], eax
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jle _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_410
	xor edi, edi
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_450:
	mov edx, [ebp-0x338]
	mov esi, [edx+edi*4]
	cmp dword [ebp-0x35c], 0x1fff
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_420
	mov ecx, [ebp-0x35c]
	test ecx, ecx
	jle _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_430
	xor ebx, ebx
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_440:
	mov ecx, [ebp-0x358]
	mov eax, [ecx+ebx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_420
	add ebx, 0x1
	cmp ebx, [ebp-0x35c]
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_440
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_430:
	mov [esp+0x4], esi
	mov eax, [ebp-0x340]
	mov [esp], eax
	call _Z15Hunk_CopyStringP8HunkUserPKc
	mov edx, [ebp-0x35c]
	mov ecx, [ebp-0x358]
	mov [ecx+edx*4], eax
	add edx, 0x1
	mov [ebp-0x35c], edx
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_420:
	add edi, 0x1
	cmp edi, [ebp-0x1c]
	jl _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_450
	mov eax, [ebp-0x338]
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_410:
	mov [esp], eax
	call _Z16Sys_FreeFileListPPc
	mov edx, [ebp-0x354]
	mov edx, [edx]
	mov [ebp-0x354], edx
	test edx, edx
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_460
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_90:
	mov ecx, [ebp-0x35c]
	mov eax, [ebp+0x1c]
	mov [eax], ecx
	test ecx, ecx
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_470
	mov ecx, [ebp-0x35c]
	mov eax, [ebp-0x358]
	mov dword [eax+ecx*4], 0x0
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_550:
	mov eax, [ebp-0x358]
	add esp, 0x37c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_130:
	jle _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_140
	mov ecx, [ebp-0x360]
	mov esi, [ecx+0x304]
	cmp esi, [fs_serverIwds]
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_480
	xor ecx, ecx
	mov edx, fs_serverIwds
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_490:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_140
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp eax, esi
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_490
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_120
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_400:
	mov esi, [ebp+0x18]
	test esi, esi
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_140
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_500
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_20:
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
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_40:
	mov [ebp-0x34c], edx
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_30
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_60:
	mov dword [ebp-0x35c], 0x0
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_90
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_390:
	mov edx, ecx
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_510
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_220:
	mov eax, [ebp-0x34c]
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_520
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_250:
	mov eax, [ebp-0x34c]
	add eax, 0x1
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_530
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_240:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	movzx eax, byte [ebp-0x341]
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	cmp [ebp-0x364], edx
	jge _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	mov eax, edx
	sub eax, [ebp-0x364]
	cmp byte [esi+eax-0x1], 0x2e
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	lea eax, [esi+edx]
	sub eax, [ebp-0x364]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_540
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_470:
	mov edx, [ebp-0x340]
	mov [esp], edx
	call _Z16Hunk_UserDestroyP8HunkUser
	mov dword [ebp-0x358], 0x0
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_550
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_230:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	not ecx
	cmp byte [ecx+esi-0x2], 0x2f
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_540
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_10:
	mov eax, [ebp+0x1c]
	mov dword [eax], 0x0
	mov dword [ebp-0x358], 0x0
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_550
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_260:
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
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_170
	mov eax, [ebp-0x35c]
	test eax, eax
	jle _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_560
	xor ebx, ebx
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_570:
	mov edx, [ebp-0x358]
	mov eax, [edx+ebx*4]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x31c]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160
	add ebx, 0x1
	cmp [ebp-0x35c], ebx
	jnz _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_570
_Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_560:
	lea eax, [ebp-0x31c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x340]
	mov [esp], edx
	call _Z15Hunk_CopyStringP8HunkUserPKc
	mov ecx, [ebp-0x35c]
	mov edx, [ebp-0x358]
	mov [edx+ecx*4], eax
	add ecx, 0x1
	mov [ebp-0x35c], ecx
	jmp _Z20FS_ListFilteredFilesP12searchpath_sPKcS2_S2_16FsListBehavior_ePii_160


;FS_OpenFileOverwrite(char const*)
_Z20FS_OpenFileOverwritePKc:
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
	call _Z16FS_GetFileOsPathPKcPc
	test eax, eax
	js _Z20FS_OpenFileOverwritePKc_10
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z20FS_OpenFileOverwritePKc_20
_Z20FS_OpenFileOverwritePKc_50:
	mov [esp], ebx
	call GetFileAttributesA
	mov edx, eax
	and edx, 0xfffffffe
	cmp eax, edx
	jz _Z20FS_OpenFileOverwritePKc_30
	mov [esp+0x4], edx
	mov [esp], ebx
	call SetFileAttributesA
_Z20FS_OpenFileOverwritePKc_30:
	mov [esp], ebx
	call FS_FileOpenWriteBinary
	mov esi, eax
	test eax, eax
	jz _Z20FS_OpenFileOverwritePKc_40
	mov dword [esp], 0x0
	call _Z16FS_HandleForFile8FsThread
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
	call _Z10I_strncpyzPcPKci
	mov dword [ebx+fsh+0x8], 0x0
	mov eax, edi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20FS_OpenFileOverwritePKc_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_fs_fopenfileover
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z20FS_OpenFileOverwritePKc_50
_Z20FS_OpenFileOverwritePKc_40:
	xor edi, edi
	mov eax, edi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20FS_OpenFileOverwritePKc_10:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fs_fopenfileover1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
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
_Z20FS_ReplaceSeparatorsPc:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jz _Z20FS_ReplaceSeparatorsPc_10
	mov ecx, edx
	xor ebx, ebx
	jmp _Z20FS_ReplaceSeparatorsPc_20
_Z20FS_ReplaceSeparatorsPc_40:
	cmp al, 0x5c
	jz _Z20FS_ReplaceSeparatorsPc_30
	mov [edx], al
	add edx, 0x1
	xor ebx, ebx
_Z20FS_ReplaceSeparatorsPc_50:
	movzx eax, byte [ecx+0x1]
	add ecx, 0x1
	test al, al
	jz _Z20FS_ReplaceSeparatorsPc_10
_Z20FS_ReplaceSeparatorsPc_20:
	cmp al, 0x2f
	jnz _Z20FS_ReplaceSeparatorsPc_40
_Z20FS_ReplaceSeparatorsPc_30:
	test bl, bl
	jnz _Z20FS_ReplaceSeparatorsPc_50
	mov byte [edx], 0x2f
	add edx, 0x1
	mov ebx, 0x1
	movzx eax, byte [ecx+0x1]
	add ecx, 0x1
	test al, al
	jnz _Z20FS_ReplaceSeparatorsPc_20
_Z20FS_ReplaceSeparatorsPc_10:
	mov byte [edx], 0x0
	pop ebx
	pop ebp
	ret


;FS_ClearIwdReferences()
_Z21FS_ClearIwdReferencesv:
	push ebp
	mov ebp, esp
	mov eax, [fs_searchpaths]
	test eax, eax
	jz _Z21FS_ClearIwdReferencesv_10
_Z21FS_ClearIwdReferencesv_30:
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z21FS_ClearIwdReferencesv_20
	mov byte [edx+0x314], 0x0
_Z21FS_ClearIwdReferencesv_20:
	mov eax, [eax]
	test eax, eax
	jnz _Z21FS_ClearIwdReferencesv_30
_Z21FS_ClearIwdReferencesv_10:
	pop ebp
	ret


;FS_ConditionalRestart(int, int)
_Z21FS_ConditionalRestartii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21FS_ConditionalRestartii_10
	mov eax, [fs_gameDirVar]
	cmp byte [eax+0xb], 0x0
	jz _Z21FS_ConditionalRestartii_20
	mov eax, [ebp+0xc]
_Z21FS_ConditionalRestartii_30:
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10FS_Restartii
	mov eax, 0x1
	leave
	ret
_Z21FS_ConditionalRestartii_20:
	mov eax, [ebp+0xc]
	cmp eax, [fs_checksumFeed]
	jnz _Z21FS_ConditionalRestartii_30
_Z21FS_ConditionalRestartii_10:
	xor eax, eax
	leave
	ret


;FS_FOpenTextFileWrite(char const*)
_Z21FS_FOpenTextFileWritePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov dword [esp], 0x0
	call _Z16FS_HandleForFile8FsThread
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
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov eax, [fs_debug]
	mov edi, [eax+0xc]
	test edi, edi
	jnz _Z21FS_FOpenTextFileWritePKc_10
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jz _Z21FS_FOpenTextFileWritePKc_20
_Z21FS_FOpenTextFileWritePKc_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_refusing
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	xor esi, esi
_Z21FS_FOpenTextFileWritePKc_70:
	mov eax, esi
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21FS_FOpenTextFileWritePKc_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_fs_fopenfilewrit
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz _Z21FS_FOpenTextFileWritePKc_30
_Z21FS_FOpenTextFileWritePKc_20:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jnz _Z21FS_FOpenTextFileWritePKc_30
	movzx eax, byte [ebp-0x117]
	test al, al
	jz _Z21FS_FOpenTextFileWritePKc_40
	mov edi, ebx
	jmp _Z21FS_FOpenTextFileWritePKc_50
_Z21FS_FOpenTextFileWritePKc_60:
	movzx eax, byte [edi+0x2]
	add edi, 0x1
	test al, al
	jz _Z21FS_FOpenTextFileWritePKc_40
_Z21FS_FOpenTextFileWritePKc_50:
	cmp al, 0x2f
	jnz _Z21FS_FOpenTextFileWritePKc_60
	mov byte [edi+0x1], 0x0
	mov [esp], ebx
	call _Z9Sys_MkdirPKc
	mov byte [edi+0x1], 0x2f
	jmp _Z21FS_FOpenTextFileWritePKc_60
_Z21FS_FOpenTextFileWritePKc_40:
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
	call _Z10I_strncpyzPcPKci
	mov dword [ebx+fsh+0x8], 0x0
	mov ebx, [ebx+fsh]
	test ebx, ebx
	jnz _Z21FS_FOpenTextFileWritePKc_70
	xor esi, esi
	jmp _Z21FS_FOpenTextFileWritePKc_70
	nop


;FS_FOpenFileReadStream(char const*, int*)
_Z22FS_FOpenFileReadStreamPKcPi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, 0x1
	pop ebp
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread


;FS_FOpenFileWriteToDir(char const*, char const*)
_Z22FS_FOpenFileWriteToDirPKcS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	xor ecx, ecx
	pop ebp
	jmp _Z31FS_FOpenFileWriteToDirForThreadPKcS0_8FsThread
	nop


;FS_FOpenFileReadDatabase(char const*, int*)
_Z24FS_FOpenFileReadDatabasePKcPi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, 0x2
	pop ebp
	jmp _Z25FS_FOpenFileReadForThreadPKcPi8FsThread


;FS_CheckFileSystemStarted()
_Z25FS_CheckFileSystemStartedv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop
	add [eax], al


;FS_ShutdownServerIwdNames()
_Z25FS_ShutdownServerIwdNamesv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [fs_numServerIwds]
	test eax, eax
	jle _Z25FS_ShutdownServerIwdNamesv_10
	xor esi, esi
	mov ebx, fs_serverIwdNames
_Z25FS_ShutdownServerIwdNamesv_30:
	mov eax, [ebx]
	test eax, eax
	jz _Z25FS_ShutdownServerIwdNamesv_20
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x0
_Z25FS_ShutdownServerIwdNamesv_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [fs_numServerIwds]
	jl _Z25FS_ShutdownServerIwdNamesv_30
_Z25FS_ShutdownServerIwdNamesv_10:
	mov dword [fs_numServerIwds], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_AddIwdPureCheckReference(searchpath_s const*)
_Z27FS_AddIwdPureCheckReferencePK12searchpath_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	test eax, eax
	jnz _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_10
	mov ebx, [fs_iwdPureChecks]
	test ebx, ebx
	jnz _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_20
	jmp _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_30
_Z27FS_AddIwdPureCheckReferencePK12searchpath_s_40:
	mov ebx, [ebx]
	test ebx, ebx
	jz _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_30
_Z27FS_AddIwdPureCheckReferencePK12searchpath_s_20:
	mov edx, [esi+0x4]
	mov eax, [ebx+0x4]
	cmp eax, [edx+0x304]
	jnz _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_40
	lea eax, [edx+0x100]
	mov [esp+0x4], eax
	lea eax, [ebx+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_40
_Z27FS_AddIwdPureCheckReferencePK12searchpath_s_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z27FS_AddIwdPureCheckReferencePK12searchpath_s_30:
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
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x100
	mov eax, [esi+0x4]
	add eax, 0x200
	mov [esp+0x4], eax
	lea eax, [ebx+0x108]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov edx, [fs_iwdPureChecks]
	test edx, edx
	jnz _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_50
	jmp _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_60
_Z27FS_AddIwdPureCheckReferencePK12searchpath_s_70:
	mov edx, eax
_Z27FS_AddIwdPureCheckReferencePK12searchpath_s_50:
	mov eax, [edx]
	test eax, eax
	jnz _Z27FS_AddIwdPureCheckReferencePK12searchpath_s_70
	mov [edx], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z27FS_AddIwdPureCheckReferencePK12searchpath_s_60:
	mov [fs_iwdPureChecks], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_ShutdownServerReferencedFFs()
_Z30FS_ShutdownServerReferencedFFsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [fs_numServerReferencedFFs]
	test eax, eax
	jle _Z30FS_ShutdownServerReferencedFFsv_10
	xor esi, esi
	mov ebx, fs_serverReferencedFFNames
_Z30FS_ShutdownServerReferencedFFsv_30:
	mov eax, [ebx]
	test eax, eax
	jz _Z30FS_ShutdownServerReferencedFFsv_20
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x0
_Z30FS_ShutdownServerReferencedFFsv_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [fs_numServerReferencedFFs]
	jl _Z30FS_ShutdownServerReferencedFFsv_30
_Z30FS_ShutdownServerReferencedFFsv_10:
	mov dword [fs_numServerReferencedFFs], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_ShutdownServerReferencedIwds()
_Z31FS_ShutdownServerReferencedIwdsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [fs_numServerReferencedIwds]
	test eax, eax
	jle _Z31FS_ShutdownServerReferencedIwdsv_10
	xor esi, esi
	mov ebx, fs_serverReferencedIwdNames
_Z31FS_ShutdownServerReferencedIwdsv_30:
	mov eax, [ebx]
	test eax, eax
	jz _Z31FS_ShutdownServerReferencedIwdsv_20
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x0
_Z31FS_ShutdownServerReferencedIwdsv_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [fs_numServerReferencedIwds]
	jl _Z31FS_ShutdownServerReferencedIwdsv_30
_Z31FS_ShutdownServerReferencedIwdsv_10:
	mov dword [fs_numServerReferencedIwds], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FS_ShutDownIwdPureCheckReferences()
_Z33FS_ShutDownIwdPureCheckReferencesv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [fs_iwdPureChecks]
	test eax, eax
	jnz _Z33FS_ShutDownIwdPureCheckReferencesv_10
	jmp _Z33FS_ShutDownIwdPureCheckReferencesv_20
_Z33FS_ShutDownIwdPureCheckReferencesv_30:
	mov eax, ebx
_Z33FS_ShutDownIwdPureCheckReferencesv_10:
	mov ebx, [eax]
	mov [esp], eax
	call Z_FreeInternal
	test ebx, ebx
	jnz _Z33FS_ShutDownIwdPureCheckReferencesv_30
_Z33FS_ShutDownIwdPureCheckReferencesv_20:
	mov dword [fs_iwdPureChecks], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;FS_Read(void*, int, int)
_Z7FS_ReadPvii:
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
	jz _Z7FS_ReadPvii_10
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov ebx, [eax+fsh+0x14]
	test ebx, ebx
	jz _Z7FS_ReadPvii_20
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
_Z7FS_ReadPvii_20:
	mov eax, [eax+fsh]
	mov [ebp-0x1c], eax
	mov edi, ecx
	mov eax, [ebp-0x28]
	test eax, eax
	jnz _Z7FS_ReadPvii_30
_Z7FS_ReadPvii_60:
	mov eax, [ebp-0x28]
_Z7FS_ReadPvii_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7FS_ReadPvii_10:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7FS_ReadPvii_30:
	sub edx, 0x31
	mov [ebp-0x24], edx
	mov esi, [ebp-0x28]
	mov dword [ebp-0x20], 0x0
	jmp _Z7FS_ReadPvii_40
_Z7FS_ReadPvii_70:
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _Z7FS_ReadPvii_50
	mov dword [ebp-0x20], 0x1
_Z7FS_ReadPvii_80:
	add edi, ebx
	sub esi, ebx
	jz _Z7FS_ReadPvii_60
_Z7FS_ReadPvii_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call FS_FileRead
	mov ebx, eax
	test eax, eax
	jz _Z7FS_ReadPvii_70
	cmp eax, 0xffffffff
	jnz _Z7FS_ReadPvii_80
	cmp dword [ebp-0x24], 0xc
	jbe _Z7FS_ReadPvii_90
	mov dword [esp+0x4], _cstring_fs_read_1_bytes_
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z7FS_ReadPvii_80
_Z7FS_ReadPvii_50:
	mov eax, [ebp-0x28]
	sub eax, esi
	jmp _Z7FS_ReadPvii_100
_Z7FS_ReadPvii_90:
	mov eax, 0xffffffff
	jmp _Z7FS_ReadPvii_100
	nop


;FS_Seek(int, long, int)
_Z7FS_Seekili:
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
	jz _Z7FS_Seekili_10
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _Z7FS_Seekili_20
	cmp edi, 0x2
	jz _Z7FS_Seekili_30
	test edi, edi
	jz _Z7FS_Seekili_40
_Z7FS_Seekili_20:
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	lea esi, [eax*4]
	mov eax, [esi+fsh]
	mov [esp], eax
	call unztell
	mov [ebp-0x1c], eax
	test edi, edi
	jz _Z7FS_Seekili_50
	cmp edi, 0x1
	jnz _Z7FS_Seekili_60
	mov eax, [esi+fsh+0x14]
	test eax, eax
	jz _Z7FS_Seekili_70
	mov eax, [esi+fsh]
	mov eax, [eax+0x44]
_Z7FS_Seekili_170:
	add eax, [ebp-0x20]
	cmp [ebp-0x1c], eax
	jg _Z7FS_Seekili_80
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	shl eax, 0x2
	mov esi, [eax+fsh+0x14]
	test esi, esi
	jz _Z7FS_Seekili_90
	mov eax, [eax+fsh]
	mov eax, [eax+0x44]
_Z7FS_Seekili_150:
	add eax, [ebp-0x20]
	sub eax, [ebp-0x1c]
	jmp _Z7FS_Seekili_100
_Z7FS_Seekili_160:
	mov eax, [esi+fsh+0x10]
	mov [esp+0x4], eax
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzSetCurrentFileInfoPosition
	mov eax, [esi+fsh]
	mov [esp], eax
	call unzOpenCurrentFile
_Z7FS_Seekili_120:
	mov eax, [ebp-0x20]
_Z7FS_Seekili_100:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	mov eax, [eax*4+fsh]
	mov [esp], eax
	call unzReadCurrentFile
	test eax, eax
	jz _Z7FS_Seekili_110
_Z7FS_Seekili_40:
	xor eax, eax
_Z7FS_Seekili_140:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7FS_Seekili_50:
	mov eax, [ebp-0x20]
	test eax, eax
	jns _Z7FS_Seekili_120
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
	jmp _Z7FS_Seekili_100
_Z7FS_Seekili_30:
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
_Z7FS_Seekili_10:
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
_Z7FS_Seekili_80:
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
	jz _Z7FS_Seekili_130
	mov eax, [esi+fsh]
	mov eax, [eax+0x44]
	add eax, [ebp-0x20]
	jmp _Z7FS_Seekili_100
_Z7FS_Seekili_110:
	mov eax, 0xffffffff
	jmp _Z7FS_Seekili_140
_Z7FS_Seekili_90:
	mov eax, [eax+fsh]
	mov [esp], eax
	call FS_FileGetFileSize
	jmp _Z7FS_Seekili_150
_Z7FS_Seekili_60:
	cmp edi, 0x2
	jnz _Z7FS_Seekili_110
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jl _Z7FS_Seekili_160
	mov eax, [ebp-0x20]
	sub eax, [ebp-0x1c]
	jmp _Z7FS_Seekili_100
_Z7FS_Seekili_70:
	mov eax, [esi+fsh]
	mov [esp], eax
	call FS_FileGetFileSize
	jmp _Z7FS_Seekili_170
_Z7FS_Seekili_130:
	mov eax, [esi+fsh]
	mov [esp], eax
	call FS_FileGetFileSize
	add eax, [ebp-0x20]
	jmp _Z7FS_Seekili_100


;FS_FTell(int)
_Z8FS_FTelli:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov edx, [eax+fsh+0x14]
	test edx, edx
	jz _Z8FS_FTelli_10
	mov eax, [eax+fsh]
	mov [ebp+0x8], eax
	pop ebp
	jmp unztell
_Z8FS_FTelli_10:
	mov eax, [eax+fsh]
	mov [ebp+0x8], eax
	pop ebp
	jmp ftell
	nop


;FS_Flush(int)
_Z8FS_Flushi:
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
_Z8FS_WritePKvii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x10]
	test edi, edi
	jz _Z8FS_WritePKvii_10
	lea eax, [edi+edi*8]
	shl eax, 0x3
	sub eax, edi
	mov eax, [eax*4+fsh]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jnz _Z8FS_WritePKvii_20
_Z8FS_WritePKvii_50:
	lea eax, [edi+edi*8]
	shl eax, 0x3
	sub eax, edi
	mov esi, [eax*4+fsh+0x8]
	test esi, esi
	jnz _Z8FS_WritePKvii_30
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8FS_WritePKvii_30:
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
_Z8FS_WritePKvii_20:
	mov ebx, [ebp+0xc]
	mov dword [ebp-0x20], 0x0
	jmp _Z8FS_WritePKvii_40
_Z8FS_WritePKvii_60:
	mov edx, [ebp-0x20]
	test edx, edx
	jnz _Z8FS_WritePKvii_10
	mov dword [ebp-0x20], 0x1
_Z8FS_WritePKvii_70:
	add esi, eax
	sub ebx, eax
	jz _Z8FS_WritePKvii_50
_Z8FS_WritePKvii_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FS_FileWrite
	test eax, eax
	jz _Z8FS_WritePKvii_60
	cmp eax, 0xffffffff
	jnz _Z8FS_WritePKvii_70
_Z8FS_WritePKvii_10:
	mov dword [ebp+0xc], 0x0
	mov eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_Path_f()
_Z9FS_Path_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x1
	call _Z14FS_DisplayPathi
	leave
	ret


;FS_Printf(int, char const*, ...)
_Z9FS_PrintfiPKcz:
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
	jz _Z9FS_PrintfiPKcz_10
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	mov eax, [eax*4+fsh]
	mov [ebp-0x102c], eax
	test edi, edi
	jnz _Z9FS_PrintfiPKcz_20
_Z9FS_PrintfiPKcz_50:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	sub eax, esi
	mov ebx, [eax*4+fsh+0x8]
	test ebx, ebx
	jnz _Z9FS_PrintfiPKcz_30
_Z9FS_PrintfiPKcz_10:
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9FS_PrintfiPKcz_30:
	mov eax, [ebp-0x102c]
	mov [esp], eax
	call fflush
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9FS_PrintfiPKcz_20:
	mov dword [ebp-0x1030], 0x0
	jmp _Z9FS_PrintfiPKcz_40
_Z9FS_PrintfiPKcz_60:
	mov edx, [ebp-0x1030]
	test edx, edx
	jnz _Z9FS_PrintfiPKcz_10
	mov dword [ebp-0x1030], 0x1
_Z9FS_PrintfiPKcz_70:
	add ebx, eax
	sub edi, eax
	jz _Z9FS_PrintfiPKcz_50
_Z9FS_PrintfiPKcz_40:
	mov eax, [ebp-0x102c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call FS_FileWrite
	test eax, eax
	jz _Z9FS_PrintfiPKcz_60
	cmp eax, 0xffffffff
	jnz _Z9FS_PrintfiPKcz_70
	jmp _Z9FS_PrintfiPKcz_10


;FS_Remove(char const*)
_Z9FS_RemovePKc:
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
_Z9FS_RenamePKcS0_S0_S0_:
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
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov eax, [fs_homepath]
	mov eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x208]
	mov [esp], ebx
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0x14]
	call _Z23FS_BuildOSPathForThreadPKcS0_S0_Pc8FsThread
	mov eax, [fs_debug]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z9FS_RenamePKcS0_S0_S0__10
_Z9FS_RenamePKcS0_S0_S0__40:
	mov [esp+0x4], ebx
	mov [esp], esi
	call rename
	test eax, eax
	jnz _Z9FS_RenamePKcS0_S0_S0__20
_Z9FS_RenamePKcS0_S0_S0__30:
	add esp, 0x210
	pop ebx
	pop esi
	pop ebp
	ret
_Z9FS_RenamePKcS0_S0_S0__20:
	mov [esp], ebx
	call remove
	mov [esp+0x4], ebx
	mov [esp], esi
	call rename
	test eax, eax
	jz _Z9FS_RenamePKcS0_S0_S0__30
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z11FS_CopyFilePcS_
	mov [esp], esi
	call remove
	add esp, 0x210
	pop ebx
	pop esi
	pop ebp
	ret
_Z9FS_RenamePKcS0_S0_S0__10:
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_fs_rename_s__s
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z9FS_RenamePKcS0_S0_S0__40
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

