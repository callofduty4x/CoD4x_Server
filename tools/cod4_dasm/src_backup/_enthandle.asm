;Imports of enthandle:
	extern g_entities
	extern memset
	extern _Z9Com_Error11errorParm_tPKcz

;Exports of enthandle:
	global g_entitiesHandleList
	global g_entHandleInfoHead
	global g_entHandleInfoArray
	global _Z19EntHandleDissociateP9gentity_s
	global _ZN9EntHandle4InitEv
	global _ZN9EntHandle6setEntEP9gentity_s
	global _ZN9EntHandle8ShutdownEv


SECTION .text


;EntHandleDissociate(gentity_s*)
_Z19EntHandleDissociateP9gentity_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	sub eax, g_entities
	sar eax, 1
	imul edx, eax, 0x2c0685b5
	movzx eax, word [edx+g_entitiesHandleList]
	movzx ecx, ax
	test ax, ax
	jz _Z19EntHandleDissociateP9gentity_s_10
	mov word [edx+g_entitiesHandleList], 0x0
	mov eax, ecx
_Z19EntHandleDissociateP9gentity_s_20:
	lea edx, [eax*8]
	mov eax, [edx+g_entHandleInfoArray]
	mov dword [eax], 0x0
	movzx eax, word [edx+g_entHandleInfoArray+0x4]
	cmp ecx, eax
	jnz _Z19EntHandleDissociateP9gentity_s_20
	movzx edx, word [ecx*8+g_entHandleInfoArray+0x6]
	mov eax, [g_entHandleInfoHead]
	mov [edx*8+g_entHandleInfoArray+0x4], ax
	mov [g_entHandleInfoHead], ecx
_Z19EntHandleDissociateP9gentity_s_10:
	pop ebp
	ret
	nop


;EntHandle::Init()
_ZN9EntHandle4InitEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, 0x1
_ZN9EntHandle4InitEv_10:
	lea eax, [edx+0x1]
	mov [edx*8+g_entHandleInfoArray+0x4], ax
	add edx, 0x1
	cmp edx, 0x1000
	jnz _ZN9EntHandle4InitEv_10
	mov word [g_entHandleInfoArray+0x7ffc], 0x0
	mov dword [g_entHandleInfoHead], 0x1
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_entitiesHandleList
	call memset
	leave
	ret


;EntHandle::setEnt(gentity_s*)
_ZN9EntHandle6setEntEP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp word [edi], 0x0
	jz _ZN9EntHandle6setEntEP9gentity_s_10
	movzx eax, word [edi]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	mov ecx, g_entities
	add edx, ecx
	cmp ebx, edx
	jz _ZN9EntHandle6setEntEP9gentity_s_20
	movzx eax, word [edi+0x2]
	movzx esi, ax
	mov [ebp-0x1c], ecx
	sub edx, ecx
	sar edx, 1
	imul ecx, edx, 0x2c0685b5
	test ax, ax
	jz _ZN9EntHandle6setEntEP9gentity_s_30
	movzx eax, word [ecx+g_entitiesHandleList]
	cmp esi, eax
	jz _ZN9EntHandle6setEntEP9gentity_s_40
_ZN9EntHandle6setEntEP9gentity_s_100:
	lea ecx, [esi*8+g_entHandleInfoArray]
	movzx eax, word [ecx+0x6]
	movzx edx, word [ecx+0x4]
	mov [edx*8+g_entHandleInfoArray+0x6], ax
	movzx edx, word [ecx+0x4]
	mov [eax*8+g_entHandleInfoArray+0x4], dx
	mov eax, [g_entHandleInfoHead]
	mov [ecx+0x4], ax
	mov [g_entHandleInfoHead], esi
_ZN9EntHandle6setEntEP9gentity_s_30:
	test ebx, ebx
	jnz _ZN9EntHandle6setEntEP9gentity_s_50
	mov word [edi], 0x0
	mov word [edi+0x2], 0x0
_ZN9EntHandle6setEntEP9gentity_s_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN9EntHandle6setEntEP9gentity_s_10:
	test ebx, ebx
	jz _ZN9EntHandle6setEntEP9gentity_s_20
	mov eax, g_entities
	mov [ebp-0x1c], eax
_ZN9EntHandle6setEntEP9gentity_s_50:
	sub ebx, [ebp-0x1c]
	sar ebx, 0x2
	imul ebx, ebx, 0x2c0685b5
	mov [ebp-0x20], ebx
	mov edx, ebx
	add edx, edx
	mov [ebp-0x24], edx
	mov ebx, [g_entHandleInfoHead]
	test ebx, ebx
	jz _ZN9EntHandle6setEntEP9gentity_s_60
_ZN9EntHandle6setEntEP9gentity_s_90:
	lea eax, [ebx*8]
	lea ecx, [eax+g_entHandleInfoArray]
	movzx edx, word [ecx+0x4]
	mov [g_entHandleInfoHead], edx
	mov [eax+g_entHandleInfoArray], edi
	mov edx, [ebp-0x24]
	movzx eax, word [edx+g_entitiesHandleList]
	movzx esi, ax
	test ax, ax
	jz _ZN9EntHandle6setEntEP9gentity_s_70
	lea eax, [esi*8+g_entHandleInfoArray]
	movzx edx, word [eax+0x4]
	mov [ecx+0x4], dx
	mov [ecx+0x6], si
	mov esi, ebx
	movzx edx, word [eax+0x4]
	mov [edx*8+g_entHandleInfoArray+0x6], bx
	mov [eax+0x4], bx
_ZN9EntHandle6setEntEP9gentity_s_80:
	mov [edi+0x2], si
	movzx eax, word [ebp-0x20]
	add eax, 0x1
	mov [edi], ax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN9EntHandle6setEntEP9gentity_s_70:
	mov esi, ebx
	mov [ecx+0x4], bx
	mov [ecx+0x6], bx
	mov eax, [ebp-0x24]
	mov [eax+g_entitiesHandleList], bx
	jmp _ZN9EntHandle6setEntEP9gentity_s_80
_ZN9EntHandle6setEntEP9gentity_s_60:
	mov dword [esp+0x4], _cstring_ent_handle_count
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _ZN9EntHandle6setEntEP9gentity_s_90
_ZN9EntHandle6setEntEP9gentity_s_40:
	movzx edx, word [esi*8+g_entHandleInfoArray+0x4]
	xor eax, eax
	cmp esi, edx
	cmovnz eax, edx
	mov [ecx+g_entitiesHandleList], ax
	jmp _ZN9EntHandle6setEntEP9gentity_s_100


;EntHandle::Shutdown()
_ZN9EntHandle8ShutdownEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Initialized global or static variables of enthandle:
SECTION .data


;Initialized constant data of enthandle:
SECTION .rdata


;Zero initialized global or static variables of enthandle:
SECTION .bss
g_entitiesHandleList: resb 0x800
g_entHandleInfoHead: resb 0x20
g_entHandleInfoArray: resb 0x8060


;All cstrings:
SECTION .rdata
_cstring_ent_handle_count:		db "ENT_HANDLE_COUNT exceeded - increase size",0



;All constant floats and doubles:
SECTION .rdata

