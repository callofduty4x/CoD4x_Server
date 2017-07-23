;Imports of com_fileaccess:
	extern fclose
	extern ftell
	extern fseek
	extern fopen
	extern fread
	extern fwrite

;Exports of com_fileaccess:
	global FS_FileClose
	global FS_FileGetFileSize
	global FS_FileOpenAppendText
	global FS_FileOpenReadBinary
	global FS_FileOpenReadText
	global FS_FileOpenWriteBinary
	global FS_FileOpenWriteText
	global FS_FileRead
	global FS_FileSeek
	global FS_FileWrite


SECTION .text


;FS_FileClose
FS_FileClose:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fclose
	leave
	ret
	nop


;FS_FileGetFileSize
FS_FileGetFileSize:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call ftell
	mov edi, eax
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call fseek
	mov [esp], ebx
	call ftell
	mov esi, eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], ebx
	call fseek
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FS_FileOpenAppendText
FS_FileOpenAppendText:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_at
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fopen
	leave
	ret
	nop


;FS_FileOpenReadBinary
FS_FileOpenReadBinary:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_rb
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fopen
	leave
	ret
	nop


;FS_FileOpenReadText
FS_FileOpenReadText:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_rt
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fopen
	leave
	ret
	nop


;FS_FileOpenWriteBinary
FS_FileOpenWriteBinary:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_wb
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fopen
	leave
	ret
	nop


;FS_FileOpenWriteText
FS_FileOpenWriteText:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_wt
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fopen
	leave
	ret
	nop


;FS_FileRead
FS_FileRead:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fread
	leave
	ret
	nop


;FS_FileSeek
FS_FileSeek:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp eax, 0x1
	jz FS_FileSeek_10
	cmp eax, 0x2
	jz FS_FileSeek_20
	test eax, eax
	jnz FS_FileSeek_30
	mov eax, 0x1
	mov [ebp+0x10], eax
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	pop ebp
	jmp fseek
FS_FileSeek_30:
	xor eax, eax
	pop ebp
	ret
FS_FileSeek_10:
	mov eax, 0x2
	mov [ebp+0x10], eax
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	pop ebp
	jmp fseek
FS_FileSeek_20:
	xor eax, eax
	mov [ebp+0x10], eax
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	pop ebp
	jmp fseek
	nop
	add [eax], al


;FS_FileWrite
FS_FileWrite:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fwrite
	leave
	ret
	nop


;Initialized global or static variables of com_fileaccess:
SECTION .data


;Initialized constant data of com_fileaccess:
SECTION .rdata


;Zero initialized global or static variables of com_fileaccess:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_at:		db "at",0
_cstring_rb:		db "rb",0
_cstring_rt:		db "rt",0
_cstring_wb:		db "wb",0
_cstring_wt:		db "w+t",0



;All constant floats and doubles:
SECTION .rdata

