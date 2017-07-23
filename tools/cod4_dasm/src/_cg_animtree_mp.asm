;Imports of cg_animtree_mp:
	extern cgArray
	extern Com_SafeClientDObjFree
	extern cg_entitiesArray
	extern MT_Free
	extern XAnimFreeTree
	extern Scr_BeginLoadAnimTrees

;Exports of cg_animtree_mp:
	global CG_SetDObjInfo
	global CG_SafeDObjFree
	global CGScr_LoadAnimTrees
	global CG_FreeClientDObjInfo
	global CG_FreeEntityDObjInfo
	global CG_CheckDObjInfoMatches


SECTION .text


;CG_SetDObjInfo(int, int, int, XModel*)
CG_SetDObjInfo:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, cgArray
	mov eax, [ebp+0x10]
	mov [edx+ecx*4+0x4d39c], eax
	mov eax, [ebp+0x14]
	mov [edx+ecx*4+0x4e39c], eax
	pop ebp
	ret


;CG_SafeDObjFree(int, int)
CG_SafeDObjFree:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Com_SafeClientDObjFree
	mov eax, cgArray
	mov dword [eax+ebx*4+0x4d39c], 0x0
	mov dword [eax+ebx*4+0x4e39c], 0x0
	lea eax, [ebx*4]
	shl ebx, 0x5
	sub ebx, eax
	mov eax, ebx
	shl eax, 0x4
	add ebx, eax
	add ebx, cg_entitiesArray
	mov edx, [ebx+0x1d8]
	test edx, edx
	jz CG_SafeDObjFree_10
	mov eax, MT_Free
	mov [esp+0x4], eax
	mov [esp], edx
	call XAnimFreeTree
	mov dword [ebx+0x1d8], 0x0
CG_SafeDObjFree_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CGScr_LoadAnimTrees()
CGScr_LoadAnimTrees:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call Scr_BeginLoadAnimTrees
	leave
	ret


;CG_FreeClientDObjInfo(int)
CG_FreeClientDObjInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor edi, edi
	mov esi, cgArray
	mov ebx, cg_entitiesArray
CG_FreeClientDObjInfo_20:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call Com_SafeClientDObjFree
	mov dword [esi+0x4d39c], 0x0
	mov dword [esi+0x4e39c], 0x0
	mov eax, [ebx+0x1d8]
	test eax, eax
	jz CG_FreeClientDObjInfo_10
	mov edx, MT_Free
	mov [esp+0x4], edx
	mov [esp], eax
	call XAnimFreeTree
	mov dword [ebx+0x1d8], 0x0
CG_FreeClientDObjInfo_10:
	add edi, 0x1
	add ebx, 0x1dc
	add esi, 0x4
	cmp edi, 0x40
	jnz CG_FreeClientDObjInfo_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_FreeEntityDObjInfo(int)
CG_FreeEntityDObjInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, 0x40
	mov esi, cgArray
	mov ebx, cg_entitiesArray
	add ebx, 0x7700
CG_FreeEntityDObjInfo_20:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call Com_SafeClientDObjFree
	mov dword [esi+0x4d49c], 0x0
	mov dword [esi+0x4e49c], 0x0
	mov eax, [ebx+0x1d8]
	test eax, eax
	jz CG_FreeEntityDObjInfo_10
	mov edx, MT_Free
	mov [esp+0x4], edx
	mov [esp], eax
	call XAnimFreeTree
	mov dword [ebx+0x1d8], 0x0
CG_FreeEntityDObjInfo_10:
	add edi, 0x1
	add ebx, 0x1dc
	add esi, 0x4
	cmp edi, 0x400
	jnz CG_FreeEntityDObjInfo_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CG_CheckDObjInfoMatches(int, int, int, XModel*)
CG_CheckDObjInfoMatches:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, cgArray
	mov eax, [ebp+0x10]
	cmp [edx+ecx*4+0x4d39c], eax
	jz CG_CheckDObjInfoMatches_10
CG_CheckDObjInfoMatches_20:
	xor eax, eax
	pop ebp
	ret
CG_CheckDObjInfoMatches_10:
	mov eax, [ebp+0x14]
	cmp [edx+ecx*4+0x4e39c], eax
	jnz CG_CheckDObjInfoMatches_20
	mov eax, 0x1
	pop ebp
	ret
	nop


;Initialized global or static variables of cg_animtree_mp:
SECTION .data


;Initialized constant data of cg_animtree_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_animtree_mp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

