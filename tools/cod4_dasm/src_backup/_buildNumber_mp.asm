;Imports of buildNumber_mp:
	extern sprintf
	extern buf

;Exports of buildNumber_mp:
	global build_string_buffer_ptr
	global getBuildNumber
	global getBuildNumberAsInt


SECTION .text


;getBuildNumber
getBuildNumber:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0xc], _cstring_thu_oct_04_00430
	mov dword [esp+0x8], 0x225
	mov dword [esp+0x4], _cstring_d_s
	mov ebx, [build_string_buffer_ptr]
	mov [esp], ebx
	call sprintf
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;getBuildNumberAsInt
getBuildNumberAsInt:
	push ebp
	mov ebp, esp
	mov eax, 0x225
	pop ebp
	ret


;Initialized global or static variables of buildNumber_mp:
SECTION .data
build_string_buffer_ptr: dd buf, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of buildNumber_mp:
SECTION .rdata


;Zero initialized global or static variables of buildNumber_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_thu_oct_04_00430:		db "Thu Oct 04 00:43:04 2007",0
_cstring_d_s:		db "%d %s",0



;All constant floats and doubles:
SECTION .rdata

