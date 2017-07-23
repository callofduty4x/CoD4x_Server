;Imports of db_auth:
	extern inflate
	extern inflateEnd
	extern inflateInit_

;Exports of db_auth:
	global DB_AuthLoad_Inflate
	global DB_AuthLoad_InflateEnd
	global DB_AuthLoad_InflateInit


SECTION .text


;DB_AuthLoad_Inflate(z_stream_s*, int)
DB_AuthLoad_Inflate:
	push ebp
	mov ebp, esp
	pop ebp
	jmp inflate
	add [eax], al


;DB_AuthLoad_InflateEnd(z_stream_s*)
DB_AuthLoad_InflateEnd:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call inflateEnd
	leave
	ret
	nop


;DB_AuthLoad_InflateInit(z_stream_s*, unsigned char, char const*)
DB_AuthLoad_InflateInit:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x10], 0x34
	mov dword [ebp+0xc], _cstring_114
	pop ebp
	jmp inflateInit_
	nop


;Initialized global or static variables of db_auth:
SECTION .data


;Initialized constant data of db_auth:
SECTION .rdata


;Zero initialized global or static variables of db_auth:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_114:		db "1.1.4",0



;All constant floats and doubles:
SECTION .rdata

