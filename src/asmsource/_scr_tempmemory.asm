;Imports of scr_tempmemory:
	extern Hunk_UserAlloc
	extern Hunk_UserAllocAlign
	extern Hunk_UserSetPos
	extern Hunk_UserAllocAlignStrict
	extern g_user

;Exports of scr_tempmemory:
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
