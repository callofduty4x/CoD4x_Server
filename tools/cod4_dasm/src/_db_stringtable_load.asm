;Imports of db_stringtable_load:
	extern varXAssetList
	extern SL_AddUser

;Exports of db_stringtable_load:
	global Load_ScriptStringCustom
	global Mark_ScriptStringCustom


SECTION .text


;Load_ScriptStringCustom(unsigned short*)
Load_ScriptStringCustom:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, varXAssetList
	mov eax, [eax]
	movzx edx, word [ecx]
	mov eax, [eax+0x4]
	mov eax, [eax+edx*4]
	mov [ecx], ax
	pop ebp
	ret
	nop


;Mark_ScriptStringCustom(unsigned short*)
Mark_ScriptStringCustom:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	movzx eax, word [eax]
	movzx edx, ax
	test ax, ax
	jnz Mark_ScriptStringCustom_10
	leave
	ret
Mark_ScriptStringCustom_10:
	mov dword [esp+0x4], 0x4
	mov [esp], edx
	call SL_AddUser
	leave
	ret


;Initialized global or static variables of db_stringtable_load:
SECTION .data


;Initialized constant data of db_stringtable_load:
SECTION .rdata


;Zero initialized global or static variables of db_stringtable_load:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

