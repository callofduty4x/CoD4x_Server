;Imports of mac_common:
	extern Hunk_UserCreate
	extern Com_sprintf
	extern opendir
	extern readdir
	extern stat
	extern Com_FilterPath
	extern Hunk_CopyString
	extern closedir
	extern Hunk_UserAlloc
	extern Q_stricmp
	extern Hunk_UserDestroy
	extern _ZN8MacFiles16RemoveDirectoryAEPKc
	extern _ZN10MacFolders17GetDataFolderPathEPci
	extern EnterCriticalSection
	extern LeaveCriticalSection
	extern InitializeCriticalSection
	extern getcwd
	extern access
	extern mkdir

;Exports of mac_common:
	global s_criticalSection
	global _ZZ7Sys_CwdvE3cwd
	global _ZZ22Sys_DefaultInstallPathvE7exePath
	global Sys_ListFiles
	global Sys_FreeFileList
	global Sys_DefaultCDPath
	global Sys_RemoveDirTree
	global Sys_DefaultHomePath
	global Sys_InitStreamThread
	global Sys_DefaultInstallPath
	global Sys_DirectoryHasContents
	global Sys_EnterCriticalSection
	global Sys_LeaveCriticalSection
	global Sys_InitializeCriticalSections
	global Sys_Cwd
	global Sys_Mkdir


SECTION .text


;Sys_ListFiles(char const*, char const*, char const*, int*, int)
Sys_ListFiles:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x451c
	mov esi, [ebp+0x10]
	test esi, esi
	jz Sys_ListFiles_10
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_sys_listfiles
	mov dword [esp], 0x20000
	call Hunk_UserCreate
	mov [ebp-0x44dc], eax
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	lea edx, [ebp-0x3d8]
	mov [esp], edx
	call Com_sprintf
	lea ecx, [ebp-0x3d8]
	mov [esp], ecx
	call opendir
	mov esi, eax
	test eax, eax
	jz Sys_ListFiles_20
	mov dword [ebp-0x44e0], 0x0
	lea ebx, [ebp-0x2d8]
Sys_ListFiles_40:
	mov [esp], esi
	call readdir
	test eax, eax
	jz Sys_ListFiles_30
Sys_ListFiles_60:
	lea edi, [eax+0x8]
	mov [esp+0x10], edi
	lea eax, [ebp-0x3d8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call Com_sprintf
	lea eax, [ebp-0xd8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call stat
	add eax, 0x1
	jz Sys_ListFiles_40
	test byte [ebp-0xcf], 0x40
	jnz Sys_ListFiles_50
Sys_ListFiles_110:
	cmp dword [ebp-0x44e0], 0xffe
	jg Sys_ListFiles_30
	mov [esp+0x10], edi
	mov dword [esp+0xc], _cstring_null
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call Com_sprintf
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp+0x10]
	mov [esp], edx
	call Com_FilterPath
	test al, al
	jz Sys_ListFiles_40
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x44dc]
	mov [esp], ecx
	call Hunk_CopyString
	mov edx, [ebp-0x44e0]
	mov [ebp+edx*4-0x44d8], eax
	add edx, 0x1
	mov [ebp-0x44e0], edx
	mov [esp], esi
	call readdir
	test eax, eax
	jnz Sys_ListFiles_60
Sys_ListFiles_30:
	mov [esp], esi
	call closedir
	jmp Sys_ListFiles_70
Sys_ListFiles_20:
	mov dword [ebp-0x44e0], 0x0
Sys_ListFiles_70:
	mov ecx, [ebp-0x44e0]
	mov dword [ebp+ecx*4-0x44d8], 0x0
	mov eax, [ebp+0x14]
	mov [eax], ecx
	test ecx, ecx
	jz Sys_ListFiles_80
	mov dword [esp+0x8], 0x4
	mov ecx, [ebp-0x44e0]
	lea eax, [ecx*4+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x44dc]
	mov [esp], eax
	call Hunk_UserAlloc
	mov edx, [ebp-0x44dc]
	mov [eax], edx
	lea ecx, [eax+0x4]
	mov ebx, [ebp-0x44e0]
	test ebx, ebx
	jle Sys_ListFiles_90
	xor edx, edx
Sys_ListFiles_100:
	mov eax, [ebp+edx*4-0x44d8]
	mov [ecx+edx*4], eax
	add edx, 0x1
	cmp [ebp-0x44e0], edx
	jnz Sys_ListFiles_100
Sys_ListFiles_230:
	mov eax, edx
Sys_ListFiles_140:
	mov dword [ecx+eax*4], 0x0
Sys_ListFiles_260:
	mov eax, ecx
	add esp, 0x451c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_ListFiles_50:
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Sys_ListFiles_110
	mov dword [esp+0x4], _cstring_1
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Sys_ListFiles_110
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x1d8]
	mov [esp], eax
	call Com_sprintf
	jmp Sys_ListFiles_110
Sys_ListFiles_170:
	mov ecx, [ebp-0x44e8]
	mov dword [ebp+ecx*4-0x44d8], 0x0
	mov [esp], esi
	call closedir
	mov eax, [ebp-0x44e8]
	mov edx, [ebp+0x14]
	mov [edx], eax
	test eax, eax
	jz Sys_ListFiles_120
	mov dword [esp+0x8], 0x4
	mov edx, [ebp-0x44e8]
	lea eax, [edx*4+0x8]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x44e4]
	mov [esp], ecx
	call Hunk_UserAlloc
	mov edx, [ebp-0x44e4]
	mov [eax], edx
	lea ecx, [eax+0x4]
	mov eax, [ebp-0x44e8]
	test eax, eax
	jg Sys_ListFiles_130
Sys_ListFiles_90:
	xor eax, eax
	jmp Sys_ListFiles_140
Sys_ListFiles_10:
	mov ecx, [ebp+0xc]
	test ecx, ecx
	mov eax, _cstring_null
	cmovnz eax, [ebp+0xc]
	mov [ebp+0xc], eax
	cmp byte [eax], 0x2f
	jz Sys_ListFiles_150
Sys_ListFiles_240:
	mov ecx, [ebp+0x18]
	mov [ebp-0x44ec], ecx
Sys_ListFiles_250:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call opendir
	mov esi, eax
	test eax, eax
	jz Sys_ListFiles_160
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_sys_listfiles
	mov dword [esp], 0x20000
	call Hunk_UserCreate
	mov [ebp-0x44e4], eax
	mov dword [ebp-0x44e8], 0x0
Sys_ListFiles_180:
	mov [esp], esi
	call readdir
	test eax, eax
	jz Sys_ListFiles_170
	cmp byte [eax+0x8], 0x2e
	jz Sys_ListFiles_180
	lea ebx, [eax+0x8]
	mov [esp+0x10], ebx
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x4d8]
	mov [esp], eax
	call Com_sprintf
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	lea edx, [ebp-0x4d8]
	mov [esp], edx
	call stat
	add eax, 0x1
	jz Sys_ListFiles_180
	mov edx, [ebp-0x44ec]
	test edx, edx
	jz Sys_ListFiles_190
	test byte [ebp-0x6f], 0x40
	jz Sys_ListFiles_180
	mov ecx, [ebp+0xc]
	cmp byte [ecx], 0x0
	jnz Sys_ListFiles_200
Sys_ListFiles_210:
	cmp dword [ebp-0x44e8], 0xfff
	jz Sys_ListFiles_170
	mov [esp+0x4], ebx
	mov eax, [ebp-0x44e4]
	mov [esp], eax
	call Hunk_CopyString
	mov edx, [ebp-0x44e8]
	mov [ebp+edx*4-0x44d8], eax
	add edx, 0x1
	mov [ebp-0x44e8], edx
	jmp Sys_ListFiles_180
Sys_ListFiles_190:
	test byte [ebp-0x6f], 0x40
	jnz Sys_ListFiles_180
	mov ecx, [ebp+0xc]
	cmp byte [ecx], 0x0
	jz Sys_ListFiles_210
Sys_ListFiles_200:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x44fc], ecx
	mov ecx, 0xffffffff
	mov edi, [ebp+0xc]
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	cmp [ebp-0x44fc], edx
	jb Sys_ListFiles_180
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov ecx, [ebp-0x44fc]
	lea eax, [ebx+ecx]
	sub eax, edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Sys_ListFiles_180
	jmp Sys_ListFiles_210
Sys_ListFiles_130:
	xor edx, edx
Sys_ListFiles_220:
	mov eax, [ebp+edx*4-0x44d8]
	mov [ecx+edx*4], eax
	add edx, 0x1
	cmp edx, [ebp-0x44e8]
	jnz Sys_ListFiles_220
	jmp Sys_ListFiles_230
Sys_ListFiles_150:
	cmp byte [eax+0x1], 0x0
	jnz Sys_ListFiles_240
	mov dword [ebp-0x44ec], 0x1
	mov dword [ebp+0xc], _cstring_null
	jmp Sys_ListFiles_250
Sys_ListFiles_80:
	mov edx, [ebp-0x44dc]
	mov [esp], edx
	call Hunk_UserDestroy
	xor ecx, ecx
	jmp Sys_ListFiles_260
Sys_ListFiles_120:
	mov ecx, [ebp-0x44e4]
	mov [esp], ecx
	call Hunk_UserDestroy
	xor ecx, ecx
	jmp Sys_ListFiles_260
Sys_ListFiles_160:
	mov edx, [ebp+0x14]
	mov dword [edx], 0x0
	xor ecx, ecx
	jmp Sys_ListFiles_260
	nop


;Sys_FreeFileList(char**)
Sys_FreeFileList:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz Sys_FreeFileList_10
	mov eax, [eax-0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp Hunk_UserDestroy
Sys_FreeFileList_10:
	pop ebp
	ret


;Sys_DefaultCDPath()
Sys_DefaultCDPath:
	push ebp
	mov ebp, esp
	mov eax, _cstring_null
	pop ebp
	ret


;Sys_RemoveDirTree(char const*)
Sys_RemoveDirTree:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN8MacFiles16RemoveDirectoryAEPKc
	test eax, eax
	setz al
	movzx eax, al
	leave
	ret
	nop


;Sys_DefaultHomePath()
Sys_DefaultHomePath:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;Sys_InitStreamThread()
Sys_InitStreamThread:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop
	add [eax], al


;Sys_DefaultInstallPath()
Sys_DefaultInstallPath:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [_ZZ22Sys_DefaultInstallPathvE7exePath], 0x0
	jnz Sys_DefaultInstallPath_10
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ22Sys_DefaultInstallPathvE7exePath
	call _ZN10MacFolders17GetDataFolderPathEPci
Sys_DefaultInstallPath_10:
	mov eax, _ZZ22Sys_DefaultInstallPathvE7exePath
	leave
	ret


;Sys_DirectoryHasContents(char const*)
Sys_DirectoryHasContents:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call opendir
	mov ebx, eax
	test eax, eax
	jz Sys_DirectoryHasContents_10
	mov [esp], eax
	call readdir
	test eax, eax
	jz Sys_DirectoryHasContents_20
	cmp byte [eax+0x6], 0x4
	jz Sys_DirectoryHasContents_30
Sys_DirectoryHasContents_40:
	mov esi, 0x1
Sys_DirectoryHasContents_60:
	mov [esp], ebx
	call closedir
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Sys_DirectoryHasContents_10:
	xor esi, esi
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Sys_DirectoryHasContents_30:
	cmp byte [eax+0x8], 0x2e
	jnz Sys_DirectoryHasContents_40
Sys_DirectoryHasContents_50:
	mov [esp], ebx
	call readdir
	test eax, eax
	jz Sys_DirectoryHasContents_20
	cmp byte [eax+0x6], 0x4
	jnz Sys_DirectoryHasContents_40
	cmp byte [eax+0x8], 0x2e
	jz Sys_DirectoryHasContents_50
	jmp Sys_DirectoryHasContents_40
Sys_DirectoryHasContents_20:
	xor esi, esi
	jmp Sys_DirectoryHasContents_60


;Sys_EnterCriticalSection(CriticalSection)
Sys_EnterCriticalSection:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [edx*4+s_criticalSection]
	mov [ebp+0x8], edx
	pop ebp
	jmp EnterCriticalSection


;Sys_LeaveCriticalSection(CriticalSection)
Sys_LeaveCriticalSection:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [edx*4+s_criticalSection]
	mov [ebp+0x8], edx
	pop ebp
	jmp LeaveCriticalSection


;Sys_InitializeCriticalSections()
Sys_InitializeCriticalSections:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	xor esi, esi
	mov ebx, s_criticalSection
Sys_InitializeCriticalSections_10:
	mov [esp], ebx
	call InitializeCriticalSection
	add esi, 0x1
	add ebx, 0x2c
	cmp esi, 0x11
	jnz Sys_InitializeCriticalSections_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Sys_Cwd()
Sys_Cwd:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0xff
	mov dword [esp], _ZZ7Sys_CwdvE3cwd
	call getcwd
	mov byte [_ZZ7Sys_CwdvE3cwd+0xff], 0x0
	mov eax, _ZZ7Sys_CwdvE3cwd
	leave
	ret


;Sys_Mkdir(char const*)
Sys_Mkdir:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call access
	test eax, eax
	jz Sys_Mkdir_10
	mov dword [esp+0x4], 0x1ff
	mov [esp], ebx
	call mkdir
Sys_Mkdir_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of mac_common:
SECTION .data
_ZZ22Sys_DefaultInstallPathvE7exePath: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of mac_common:
SECTION .rdata


;Zero initialized global or static variables of mac_common:
SECTION .bss
s_criticalSection: resb 0x300
_ZZ7Sys_CwdvE3cwd: resb 0x100


;All cstrings:
SECTION .rdata
_cstring_sys_listfiles:		db "Sys_ListFiles",0
_cstring_s:		db "%s",0
_cstring_ss:		db "%s/%s",0
_cstring_null:		db 0
_cstring_:		db ".",0
_cstring_1:		db "..",0



;All constant floats and doubles:
SECTION .rdata

