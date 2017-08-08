;Imports of scr_tempmemory:
	extern Hunk_UserAlloc
	extern Hunk_UserAllocAlign
	extern Hunk_UserSetPos
	extern Hunk_UserAllocAlignStrict

;Exports of scr_tempmemory:
	global g_user
	global TempMalloc
	global TempMallocAlign
	global TempMemoryReset
	global TempMemorySetPos
	global TempMallocAlignStrict


SECTION .text


;TempMalloc(int)
TempMalloc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_user]
	mov [esp], eax
	call Hunk_UserAlloc
	leave
	ret


;TempMallocAlign(int)
TempMallocAlign:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_user]
	mov [esp], eax
	call Hunk_UserAllocAlign
	leave
	ret


;TempMemoryReset(HunkUser*)
TempMemoryReset:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [g_user], eax
	pop ebp
	ret
	nop


;TempMemorySetPos(char*)
TempMemorySetPos:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_user]
	mov [esp], eax
	call Hunk_UserSetPos
	leave
	ret
	add [eax], al


;TempMallocAlignStrict(int)
TempMallocAlignStrict:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_user]
	mov [esp], eax
	call Hunk_UserAllocAlignStrict
	leave
	ret


;Initialized global or static variables of scr_tempmemory:
SECTION .data


;Initialized constant data of scr_tempmemory:
SECTION .rdata


;Zero initialized global or static variables of scr_tempmemory:
SECTION .bss
g_user: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

