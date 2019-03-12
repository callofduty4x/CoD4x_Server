;Imports of db_stringtable_load:

;Exports of db_stringtable_load:
	global Mark_ScriptStringCustom


SECTION .text


;Mark_ScriptStringCustom(unsigned short*)
Mark_ScriptStringCustom:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	movzx eax, word [eax]
	movzx edx, ax
	leave
	ret



;Zero initialized global or static variables of db_stringtable_load:
SECTION .bss


;Initialized global or static variables of db_stringtable_load:
SECTION .data


;Initialized constant data of db_stringtable_load:
SECTION .rdata


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

