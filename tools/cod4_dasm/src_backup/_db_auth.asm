;Imports of db_auth:
	extern inflate
	extern inflateEnd
	extern inflateInit_

;Exports of db_auth:
	global _Z19DB_AuthLoad_InflateP10z_stream_si
	global _Z22DB_AuthLoad_InflateEndP10z_stream_s
	global _Z23DB_AuthLoad_InflateInitP10z_stream_shPKc


SECTION .text


;DB_AuthLoad_Inflate(z_stream_s*, int)
_Z19DB_AuthLoad_InflateP10z_stream_si:
	push ebp
	mov ebp, esp
	pop ebp
	jmp inflate
	add [eax], al


;DB_AuthLoad_InflateEnd(z_stream_s*)
_Z22DB_AuthLoad_InflateEndP10z_stream_s:
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
_Z23DB_AuthLoad_InflateInitP10z_stream_shPKc:
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

