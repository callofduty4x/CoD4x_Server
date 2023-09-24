;Imports of mac_common:
	extern _Z15Hunk_UserCreateiPKchhi
	extern _Z11Com_sprintfPciPKcz
	extern opendir
	extern readdir
	extern stat
	extern _Z14Com_FilterPathPKcS0_i
	extern _Z15Hunk_CopyStringP8HunkUserPKc
	extern closedir
	extern _Z14Hunk_UserAllocP8HunkUserii
	extern _Z9I_stricmpPKcS0_
	extern _Z16Hunk_UserDestroyP8HunkUser
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
	global _Z13Sys_ListFilesPKcS0_S0_Pii
	global _Z16Sys_FreeFileListPPc
	global _Z17Sys_DefaultCDPathv
	global _Z17Sys_RemoveDirTreePKc
	global _Z19Sys_DefaultHomePathv
	global _Z20Sys_InitStreamThreadv
	global _Z22Sys_DefaultInstallPathv
	global _Z24Sys_DirectoryHasContentsPKc
	global _Z24Sys_EnterCriticalSection15CriticalSection
	global _Z24Sys_LeaveCriticalSection15CriticalSection
	global _Z30Sys_InitializeCriticalSectionsv
	global _Z7Sys_Cwdv
	global _Z9Sys_MkdirPKc


SECTION .text


;Sys_ListFiles(char const*, char const*, char const*, int*, int)
_Z13Sys_ListFilesPKcS0_S0_Pii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x451c
	mov esi, [ebp+0x10]
	test esi, esi
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_10
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_sys_listfiles
	mov dword [esp], 0x20000
	call _Z15Hunk_UserCreateiPKchhi
	mov [ebp-0x44dc], eax
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	lea edx, [ebp-0x3d8]
	mov [esp], edx
	call _Z11Com_sprintfPciPKcz
	lea ecx, [ebp-0x3d8]
	mov [esp], ecx
	call opendir
	mov esi, eax
	test eax, eax
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_20
	mov dword [ebp-0x44e0], 0x0
	lea ebx, [ebp-0x2d8]
_Z13Sys_ListFilesPKcS0_S0_Pii_40:
	mov [esp], esi
	call readdir
	test eax, eax
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_30
_Z13Sys_ListFilesPKcS0_S0_Pii_60:
	lea edi, [eax+0x8]
	mov [esp+0x10], edi
	lea eax, [ebp-0x3d8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0xd8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call stat
	add eax, 0x1
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_40
	test byte [ebp-0xcf], 0x40
	jnz _Z13Sys_ListFilesPKcS0_S0_Pii_50
_Z13Sys_ListFilesPKcS0_S0_Pii_110:
	cmp dword [ebp-0x44e0], 0xffe
	jg _Z13Sys_ListFilesPKcS0_S0_Pii_30
	mov [esp+0x10], edi
	mov dword [esp+0xc], _cstring_null
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _Z14Com_FilterPathPKcS0_i
	test al, al
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_40
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x44dc]
	mov [esp], ecx
	call _Z15Hunk_CopyStringP8HunkUserPKc
	mov edx, [ebp-0x44e0]
	mov [ebp+edx*4-0x44d8], eax
	add edx, 0x1
	mov [ebp-0x44e0], edx
	mov [esp], esi
	call readdir
	test eax, eax
	jnz _Z13Sys_ListFilesPKcS0_S0_Pii_60
_Z13Sys_ListFilesPKcS0_S0_Pii_30:
	mov [esp], esi
	call closedir
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_70
_Z13Sys_ListFilesPKcS0_S0_Pii_20:
	mov dword [ebp-0x44e0], 0x0
_Z13Sys_ListFilesPKcS0_S0_Pii_70:
	mov ecx, [ebp-0x44e0]
	mov dword [ebp+ecx*4-0x44d8], 0x0
	mov eax, [ebp+0x14]
	mov [eax], ecx
	test ecx, ecx
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_80
	mov dword [esp+0x8], 0x4
	mov ecx, [ebp-0x44e0]
	lea eax, [ecx*4+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x44dc]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp-0x44dc]
	mov [eax], edx
	lea ecx, [eax+0x4]
	mov ebx, [ebp-0x44e0]
	test ebx, ebx
	jle _Z13Sys_ListFilesPKcS0_S0_Pii_90
	xor edx, edx
_Z13Sys_ListFilesPKcS0_S0_Pii_100:
	mov eax, [ebp+edx*4-0x44d8]
	mov [ecx+edx*4], eax
	add edx, 0x1
	cmp [ebp-0x44e0], edx
	jnz _Z13Sys_ListFilesPKcS0_S0_Pii_100
_Z13Sys_ListFilesPKcS0_S0_Pii_230:
	mov eax, edx
_Z13Sys_ListFilesPKcS0_S0_Pii_140:
	mov dword [ecx+eax*4], 0x0
_Z13Sys_ListFilesPKcS0_S0_Pii_260:
	mov eax, ecx
	add esp, 0x451c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Sys_ListFilesPKcS0_S0_Pii_50:
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_110
	mov dword [esp+0x4], _cstring_1
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_110
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x1d8]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_110
_Z13Sys_ListFilesPKcS0_S0_Pii_170:
	mov ecx, [ebp-0x44e8]
	mov dword [ebp+ecx*4-0x44d8], 0x0
	mov [esp], esi
	call closedir
	mov eax, [ebp-0x44e8]
	mov edx, [ebp+0x14]
	mov [edx], eax
	test eax, eax
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_120
	mov dword [esp+0x8], 0x4
	mov edx, [ebp-0x44e8]
	lea eax, [edx*4+0x8]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x44e4]
	mov [esp], ecx
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp-0x44e4]
	mov [eax], edx
	lea ecx, [eax+0x4]
	mov eax, [ebp-0x44e8]
	test eax, eax
	jg _Z13Sys_ListFilesPKcS0_S0_Pii_130
_Z13Sys_ListFilesPKcS0_S0_Pii_90:
	xor eax, eax
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_140
_Z13Sys_ListFilesPKcS0_S0_Pii_10:
	mov ecx, [ebp+0xc]
	test ecx, ecx
	mov eax, _cstring_null
	cmovnz eax, [ebp+0xc]
	mov [ebp+0xc], eax
	cmp byte [eax], 0x2f
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_150
_Z13Sys_ListFilesPKcS0_S0_Pii_240:
	mov ecx, [ebp+0x18]
	mov [ebp-0x44ec], ecx
_Z13Sys_ListFilesPKcS0_S0_Pii_250:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call opendir
	mov esi, eax
	test eax, eax
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_160
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_sys_listfiles
	mov dword [esp], 0x20000
	call _Z15Hunk_UserCreateiPKchhi
	mov [ebp-0x44e4], eax
	mov dword [ebp-0x44e8], 0x0
_Z13Sys_ListFilesPKcS0_S0_Pii_180:
	mov [esp], esi
	call readdir
	test eax, eax
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_170
	cmp byte [eax+0x8], 0x2e
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_180
	lea ebx, [eax+0x8]
	mov [esp+0x10], ebx
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x4d8]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	lea edx, [ebp-0x4d8]
	mov [esp], edx
	call stat
	add eax, 0x1
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_180
	mov edx, [ebp-0x44ec]
	test edx, edx
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_190
	test byte [ebp-0x6f], 0x40
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_180
	mov ecx, [ebp+0xc]
	cmp byte [ecx], 0x0
	jnz _Z13Sys_ListFilesPKcS0_S0_Pii_200
_Z13Sys_ListFilesPKcS0_S0_Pii_210:
	cmp dword [ebp-0x44e8], 0xfff
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_170
	mov [esp+0x4], ebx
	mov eax, [ebp-0x44e4]
	mov [esp], eax
	call _Z15Hunk_CopyStringP8HunkUserPKc
	mov edx, [ebp-0x44e8]
	mov [ebp+edx*4-0x44d8], eax
	add edx, 0x1
	mov [ebp-0x44e8], edx
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_180
_Z13Sys_ListFilesPKcS0_S0_Pii_190:
	test byte [ebp-0x6f], 0x40
	jnz _Z13Sys_ListFilesPKcS0_S0_Pii_180
	mov ecx, [ebp+0xc]
	cmp byte [ecx], 0x0
	jz _Z13Sys_ListFilesPKcS0_S0_Pii_210
_Z13Sys_ListFilesPKcS0_S0_Pii_200:
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
	jb _Z13Sys_ListFilesPKcS0_S0_Pii_180
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov ecx, [ebp-0x44fc]
	lea eax, [ebx+ecx]
	sub eax, edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13Sys_ListFilesPKcS0_S0_Pii_180
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_210
_Z13Sys_ListFilesPKcS0_S0_Pii_130:
	xor edx, edx
_Z13Sys_ListFilesPKcS0_S0_Pii_220:
	mov eax, [ebp+edx*4-0x44d8]
	mov [ecx+edx*4], eax
	add edx, 0x1
	cmp edx, [ebp-0x44e8]
	jnz _Z13Sys_ListFilesPKcS0_S0_Pii_220
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_230
_Z13Sys_ListFilesPKcS0_S0_Pii_150:
	cmp byte [eax+0x1], 0x0
	jnz _Z13Sys_ListFilesPKcS0_S0_Pii_240
	mov dword [ebp-0x44ec], 0x1
	mov dword [ebp+0xc], _cstring_null
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_250
_Z13Sys_ListFilesPKcS0_S0_Pii_80:
	mov edx, [ebp-0x44dc]
	mov [esp], edx
	call _Z16Hunk_UserDestroyP8HunkUser
	xor ecx, ecx
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_260
_Z13Sys_ListFilesPKcS0_S0_Pii_120:
	mov ecx, [ebp-0x44e4]
	mov [esp], ecx
	call _Z16Hunk_UserDestroyP8HunkUser
	xor ecx, ecx
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_260
_Z13Sys_ListFilesPKcS0_S0_Pii_160:
	mov edx, [ebp+0x14]
	mov dword [edx], 0x0
	xor ecx, ecx
	jmp _Z13Sys_ListFilesPKcS0_S0_Pii_260
	nop


;Sys_FreeFileList(char**)
_Z16Sys_FreeFileListPPc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z16Sys_FreeFileListPPc_10
	mov eax, [eax-0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z16Hunk_UserDestroyP8HunkUser
_Z16Sys_FreeFileListPPc_10:
	pop ebp
	ret


;Sys_DefaultCDPath()
_Z17Sys_DefaultCDPathv:
	push ebp
	mov ebp, esp
	mov eax, _cstring_null
	pop ebp
	ret


;Sys_RemoveDirTree(char const*)
_Z17Sys_RemoveDirTreePKc:
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
_Z19Sys_DefaultHomePathv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;Sys_InitStreamThread()
_Z20Sys_InitStreamThreadv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop
	add [eax], al


;Sys_DefaultInstallPath()
_Z22Sys_DefaultInstallPathv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [_ZZ22Sys_DefaultInstallPathvE7exePath], 0x0
	jnz _Z22Sys_DefaultInstallPathv_10
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ22Sys_DefaultInstallPathvE7exePath
	call _ZN10MacFolders17GetDataFolderPathEPci
_Z22Sys_DefaultInstallPathv_10:
	mov eax, _ZZ22Sys_DefaultInstallPathvE7exePath
	leave
	ret


;Sys_DirectoryHasContents(char const*)
_Z24Sys_DirectoryHasContentsPKc:
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
	jz _Z24Sys_DirectoryHasContentsPKc_10
	mov [esp], eax
	call readdir
	test eax, eax
	jz _Z24Sys_DirectoryHasContentsPKc_20
	cmp byte [eax+0x6], 0x4
	jz _Z24Sys_DirectoryHasContentsPKc_30
_Z24Sys_DirectoryHasContentsPKc_40:
	mov esi, 0x1
_Z24Sys_DirectoryHasContentsPKc_60:
	mov [esp], ebx
	call closedir
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24Sys_DirectoryHasContentsPKc_10:
	xor esi, esi
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24Sys_DirectoryHasContentsPKc_30:
	cmp byte [eax+0x8], 0x2e
	jnz _Z24Sys_DirectoryHasContentsPKc_40
_Z24Sys_DirectoryHasContentsPKc_50:
	mov [esp], ebx
	call readdir
	test eax, eax
	jz _Z24Sys_DirectoryHasContentsPKc_20
	cmp byte [eax+0x6], 0x4
	jnz _Z24Sys_DirectoryHasContentsPKc_40
	cmp byte [eax+0x8], 0x2e
	jz _Z24Sys_DirectoryHasContentsPKc_50
	jmp _Z24Sys_DirectoryHasContentsPKc_40
_Z24Sys_DirectoryHasContentsPKc_20:
	xor esi, esi
	jmp _Z24Sys_DirectoryHasContentsPKc_60


;Sys_EnterCriticalSection(CriticalSection)
_Z24Sys_EnterCriticalSection15CriticalSection:
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
_Z24Sys_LeaveCriticalSection15CriticalSection:
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
_Z30Sys_InitializeCriticalSectionsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	xor esi, esi
	mov ebx, s_criticalSection
_Z30Sys_InitializeCriticalSectionsv_10:
	mov [esp], ebx
	call InitializeCriticalSection
	add esi, 0x1
	add ebx, 0x2c
	cmp esi, 0x11
	jnz _Z30Sys_InitializeCriticalSectionsv_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Sys_Cwd()
_Z7Sys_Cwdv:
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
_Z9Sys_MkdirPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call access
	test eax, eax
	jz _Z9Sys_MkdirPKc_10
	mov dword [esp+0x4], 0x1ff
	mov [esp], ebx
	call mkdir
_Z9Sys_MkdirPKc_10:
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

