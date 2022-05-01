;Imports of streamfile:
	extern _Z11Com_sprintfPciPKcz
	extern _Z9I_stricmpPKcS0_

;Exports of streamfile:
	global _Z21StreamFileNameGetNamePK14StreamFileNamePci
	global _Z25StreamFileNameIsNullSoundPK14StreamFileName


SECTION .text


;StreamFileNameGetName(StreamFileName const*, char*, int)
_Z21StreamFileNameGetNamePK14StreamFileNamePci:
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
	call _Z11Com_sprintfPciPKcz
	leave
	ret


;StreamFileNameIsNullSound(StreamFileName const*)
_Z25StreamFileNameIsNullSoundPK14StreamFileName:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx]
	cmp byte [eax], 0x0
	jz _Z25StreamFileNameIsNullSoundPK14StreamFileName_10
_Z25StreamFileNameIsNullSoundPK14StreamFileName_20:
	xor eax, eax
	leave
	ret
_Z25StreamFileNameIsNullSoundPK14StreamFileName_10:
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_nullwav
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z25StreamFileNameIsNullSoundPK14StreamFileName_20
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

