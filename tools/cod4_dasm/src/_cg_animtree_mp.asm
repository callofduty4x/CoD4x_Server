;Imports of cg_animtree_mp:
	extern cgArray
	extern _Z22Com_SafeClientDObjFreeii
	extern cg_entitiesArray
	extern _Z7MT_FreePvi
	extern _Z13XAnimFreeTreeP11XAnimTree_sPFvPviE
	extern _Z22Scr_BeginLoadAnimTreesi

;Exports of cg_animtree_mp:
	global _Z14CG_SetDObjInfoiiiP6XModel
	global _Z15CG_SafeDObjFreeii
	global _Z19CGScr_LoadAnimTreesv
	global _Z21CG_FreeClientDObjInfoi
	global _Z21CG_FreeEntityDObjInfoi
	global _Z23CG_CheckDObjInfoMatchesiiiP6XModel


SECTION .text


;CG_SetDObjInfo(int, int, int, XModel*)
_Z14CG_SetDObjInfoiiiP6XModel:
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
_Z15CG_SafeDObjFreeii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z22Com_SafeClientDObjFreeii
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
	jz _Z15CG_SafeDObjFreeii_10
	mov eax, _Z7MT_FreePvi
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z13XAnimFreeTreeP11XAnimTree_sPFvPviE
	mov dword [ebx+0x1d8], 0x0
_Z15CG_SafeDObjFreeii_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CGScr_LoadAnimTrees()
_Z19CGScr_LoadAnimTreesv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call _Z22Scr_BeginLoadAnimTreesi
	leave
	ret


;CG_FreeClientDObjInfo(int)
_Z21CG_FreeClientDObjInfoi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor edi, edi
	mov esi, cgArray
	mov ebx, cg_entitiesArray
_Z21CG_FreeClientDObjInfoi_20:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z22Com_SafeClientDObjFreeii
	mov dword [esi+0x4d39c], 0x0
	mov dword [esi+0x4e39c], 0x0
	mov eax, [ebx+0x1d8]
	test eax, eax
	jz _Z21CG_FreeClientDObjInfoi_10
	mov edx, _Z7MT_FreePvi
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z13XAnimFreeTreeP11XAnimTree_sPFvPviE
	mov dword [ebx+0x1d8], 0x0
_Z21CG_FreeClientDObjInfoi_10:
	add edi, 0x1
	add ebx, 0x1dc
	add esi, 0x4
	cmp edi, 0x40
	jnz _Z21CG_FreeClientDObjInfoi_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_FreeEntityDObjInfo(int)
_Z21CG_FreeEntityDObjInfoi:
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
_Z21CG_FreeEntityDObjInfoi_20:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z22Com_SafeClientDObjFreeii
	mov dword [esi+0x4d49c], 0x0
	mov dword [esi+0x4e49c], 0x0
	mov eax, [ebx+0x1d8]
	test eax, eax
	jz _Z21CG_FreeEntityDObjInfoi_10
	mov edx, _Z7MT_FreePvi
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z13XAnimFreeTreeP11XAnimTree_sPFvPviE
	mov dword [ebx+0x1d8], 0x0
_Z21CG_FreeEntityDObjInfoi_10:
	add edi, 0x1
	add ebx, 0x1dc
	add esi, 0x4
	cmp edi, 0x400
	jnz _Z21CG_FreeEntityDObjInfoi_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CG_CheckDObjInfoMatches(int, int, int, XModel*)
_Z23CG_CheckDObjInfoMatchesiiiP6XModel:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, cgArray
	mov eax, [ebp+0x10]
	cmp [edx+ecx*4+0x4d39c], eax
	jz _Z23CG_CheckDObjInfoMatchesiiiP6XModel_10
_Z23CG_CheckDObjInfoMatchesiiiP6XModel_20:
	xor eax, eax
	pop ebp
	ret
_Z23CG_CheckDObjInfoMatchesiiiP6XModel_10:
	mov eax, [ebp+0x14]
	cmp [edx+ecx*4+0x4e39c], eax
	jnz _Z23CG_CheckDObjInfoMatchesiiiP6XModel_20
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

