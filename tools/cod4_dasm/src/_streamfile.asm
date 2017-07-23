;Imports of streamfile:
	extern Com_sprintf
	extern Q_stricmp

;Exports of streamfile:
	global StreamFileNameGetName
	global StreamFileNameIsNullSound


SECTION .text


;StreamFileNameGetName(StreamFileName const*, char*, int)
StreamFileNameGetName:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	mov [esp+0x10], eax
	mov eax, [edx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ss
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Com_sprintf
	leave
	ret


;StreamFileNameIsNullSound(StreamFileName const*)
StreamFileNameIsNullSound:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx]
	cmp byte [eax], 0x0
	jz StreamFileNameIsNullSound_10
StreamFileNameIsNullSound_20:
	xor eax, eax
	leave
	ret
StreamFileNameIsNullSound_10:
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_nullwav
	call Q_stricmp
	test eax, eax
	jnz StreamFileNameIsNullSound_20
	mov al, 0x1
	leave
	ret
	add [eax], al


;Initialized global or static variables of streamfile:
SECTION .data


;Initialized constant data of streamfile:
SECTION .rdata


;Zero initialized global or static variables of streamfile:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_ss:		db "%s",5ch,"%s",0
_cstring_nullwav:		db "null.wav",0



;All constant floats and doubles:
SECTION .rdata

