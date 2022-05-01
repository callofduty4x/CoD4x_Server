;Imports of stringed_interface:
	extern FS_ListFiles
	extern sprintf
	extern FS_FreeFileList
	extern _ZNSs6appendEPKcm
	extern _ZNSs7reserveEm
	extern FS_ReadFile
	extern _ZNSs6assignEPKcm
	extern FS_FreeFile

;Exports of stringed_interface:
	global _Z14SE_R_ListFilesPKcS0_RSs
	global _Z15SE_LoadFileDataPKc
	global _Z16SE_BuildFileListPKcRSs
	global _Z24SE_FreeFileDataAfterLoadPh
	global giFilesFound


SECTION .text


;SE_R_ListFiles(char const*, char const*, std::string&)
_Z14SE_R_ListFilesPKcS0_RSs:
_Z14SE_R_ListFilesPKcS0_RSs_30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x78], eax
	mov [ebp-0x7c], edx
	mov esi, ecx
	mov dword [esp+0x10], 0xa
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_
	mov [esp], edx
	call FS_ListFiles
	mov [ebp-0x70], eax
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jle _Z14SE_R_ListFilesPKcS0_RSs_10
	xor edi, edi
_Z14SE_R_ListFilesPKcS0_RSs_40:
	mov eax, [ebp-0x70]
	mov edx, [eax+edi*4]
	movzx eax, byte [edx]
	test al, al
	jz _Z14SE_R_ListFilesPKcS0_RSs_20
	cmp al, 0x2e
	jz _Z14SE_R_ListFilesPKcS0_RSs_20
	mov [esp+0xc], edx
	mov edx, [ebp-0x7c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ss
	lea ebx, [ebp-0x60]
	mov [esp], ebx
	call sprintf
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x78]
	call _Z14SE_R_ListFilesPKcS0_RSs_30
_Z14SE_R_ListFilesPKcS0_RSs_20:
	add edi, 0x1
	cmp edi, [ebp-0x20]
	jl _Z14SE_R_ListFilesPKcS0_RSs_40
_Z14SE_R_ListFilesPKcS0_RSs_10:
	mov dword [esp+0x10], 0xa
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call FS_ListFiles
	mov [ebp-0x74], eax
	mov edx, [ebp-0x1c]
	test edx, edx
	jg _Z14SE_R_ListFilesPKcS0_RSs_50
	mov ecx, eax
_Z14SE_R_ListFilesPKcS0_RSs_90:
	mov dword [esp+0x4], 0xa
	mov [esp], ecx
	call FS_FreeFileList
	mov dword [esp+0x4], 0xa
	mov eax, [ebp-0x70]
	mov [esp], eax
	call FS_FreeFileList
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SE_R_ListFilesPKcS0_RSs_50:
	mov dword [ebp-0x6c], 0x0
	lea ebx, [ebp-0x60]
	mov edx, [ebp-0x6c]
_Z14SE_R_ListFilesPKcS0_RSs_80:
	mov ecx, [ebp-0x74]
	mov eax, [ecx+edx*4]
	mov [esp+0xc], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ss
	mov [esp], ebx
	call sprintf
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZNSs6appendEPKcm
	mov edx, [esi]
	mov edi, [edx-0xc]
	add edi, 0x1
	cmp edi, [edx-0x8]
	ja _Z14SE_R_ListFilesPKcS0_RSs_60
	mov eax, [edx-0x4]
	test eax, eax
	jle _Z14SE_R_ListFilesPKcS0_RSs_70
_Z14SE_R_ListFilesPKcS0_RSs_60:
	mov [esp+0x4], edi
	mov [esp], esi
	call _ZNSs7reserveEm
	mov edx, [esi]
_Z14SE_R_ListFilesPKcS0_RSs_70:
	mov eax, [edx-0xc]
	mov byte [edx+eax], 0x3b
	mov edx, [esi]
	mov dword [edx-0x4], 0x0
	mov [edx-0xc], edi
	mov eax, [0xd5cca28]
	movzx eax, byte [eax]
	mov [edx+edi], al
	add dword [giFilesFound], 0x1
	add dword [ebp-0x6c], 0x1
	mov edx, [ebp-0x6c]
	cmp [ebp-0x1c], edx
	jg _Z14SE_R_ListFilesPKcS0_RSs_80
	mov ecx, [ebp-0x74]
	jmp _Z14SE_R_ListFilesPKcS0_RSs_90
	nop


;SE_LoadFileData(char const*)
_Z15SE_LoadFileDataPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_ReadFile
	test eax, eax
	jle _Z15SE_LoadFileDataPKc_10
	mov eax, [ebp-0xc]
	leave
	ret
_Z15SE_LoadFileDataPKc_10:
	xor eax, eax
	leave
	ret
	nop


;SE_BuildFileList(char const*, std::string&)
_Z16SE_BuildFileListPKcRSs:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov dword [giFilesFound], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov [esp], ebx
	call _ZNSs6assignEPKcm
	mov ecx, ebx
	mov edx, [ebp+0x8]
	mov eax, _cstring_str
	call _Z14SE_R_ListFilesPKcS0_RSs
	mov eax, [giFilesFound]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;SE_FreeFileDataAfterLoad(unsigned char*)
_Z24SE_FreeFileDataAfterLoadPh:
	push ebp
	mov ebp, esp
	pop ebp
	jmp FS_FreeFile
	nop


;Initialized global or static variables of stringed_interface:
SECTION .data


;Initialized constant data of stringed_interface:
SECTION .rdata


;Zero initialized global or static variables of stringed_interface:
SECTION .bss
giFilesFound: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_:		db "/",0
_cstring_ss:		db "%s/%s",0
_cstring_null:		db 0
_cstring_str:		db "str",0



;All constant floats and doubles:
SECTION .rdata

