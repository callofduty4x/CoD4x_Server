;Imports of r_pretess:
	extern gfxBuf
	extern _ZN14MacOpenGLUtils13SetBufferHintEj
	extern R_UnlockIndexBuffer
	extern _ZN14MacOpenGLUtils16ClearBufferHintsEv
	extern R_LockIndexBuffer
	extern frontEndDataOut
	extern R_WarnOncePerFrame
	extern Com_Memcpy
	extern scene

;Exports of r_pretess:
	global R_EndPreTess
	global R_BeginPreTess
	global R_EmitDrawSurfList
	global R_AllocPreTessIndices
	global R_InitDrawSurfListInfo
	global R_MergeAndEmitDrawSurfLists


SECTION .text


;R_EndPreTess()
R_EndPreTess:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, gfxBuf
	mov eax, [eax+0x30]
	mov edx, [eax]
	add edx, edx
	mov [ebp-0x10], edx
	mov eax, [eax+0x4]
	add eax, eax
	mov [ebp-0xc], eax
	cmp edx, eax
	jae R_EndPreTess_10
	lea eax, [ebp-0x10]
R_EndPreTess_20:
	mov eax, [eax]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13SetBufferHintEj
	mov ebx, gfxBuf
	mov eax, [ebx+0x30]
	mov eax, [eax+0x8]
	mov [esp], eax
	call R_UnlockIndexBuffer
	call _ZN14MacOpenGLUtils16ClearBufferHintsEv
	mov eax, [ebx+0x30]
	mov dword [eax+0xc], 0x0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
R_EndPreTess_10:
	lea eax, [ebp-0xc]
	jmp R_EndPreTess_20
	nop


;R_BeginPreTess()
R_BeginPreTess:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, gfxBuf
	mov ebx, [esi+0x30]
	mov dword [esp+0xc], 0x2000
	mov eax, [ebx+0x4]
	add eax, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0x8]
	mov [esp], eax
	call R_LockIndexBuffer
	mov [ebx+0xc], eax
	mov eax, [esi+0x30]
	mov dword [eax], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;R_EmitDrawSurfList(GfxDrawSurf const*, unsigned int, GfxDrawSurfListInfo*)
R_EmitDrawSurfList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edi, frontEndDataOut
	mov ecx, [edi]
	mov edx, [ecx+0x118254]
	lea ebx, [edx+eax]
	cmp ebx, 0x8000
	jle R_EmitDrawSurfList_10
	mov dword [ebp+0x8], 0xc
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_WarnOncePerFrame
R_EmitDrawSurfList_10:
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ecx+edx*8+0x70000]
	mov [esp], eax
	call Com_Memcpy
	mov eax, [edi]
	mov [eax+0x118254], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_AllocPreTessIndices(int)
R_AllocPreTessIndices:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov eax, gfxBuf
	mov ecx, [eax+0x30]
	mov eax, [ecx]
	add eax, ebx
	cmp eax, [ecx+0x4]
	jg R_AllocPreTessIndices_10
	mov edx, [ecx]
	mov eax, [ecx+0xc]
	lea edx, [eax+edx*2]
	mov eax, [ecx]
	lea eax, [ebx+eax]
	mov [ecx], eax
	mov eax, edx
	pop ebx
	pop ebp
	ret
R_AllocPreTessIndices_10:
	xor edx, edx
	mov eax, edx
	pop ebx
	pop ebp
	ret
	add [eax], al


;R_InitDrawSurfListInfo(GfxDrawSurfListInfo*)
R_InitDrawSurfListInfo:
	push ebp
	mov ebp, esp
	push edi
	mov edi, [ebp+0x8]
	cld
	mov ecx, 0xa
	xor eax, eax
	rep stosd
	pop edi
	pop ebp
	ret


;R_MergeAndEmitDrawSurfLists(unsigned int, unsigned int, GfxDrawSurfListInfo*)
R_MergeAndEmitDrawSurfLists:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	mov edx, frontEndDataOut
	mov eax, [edx]
	mov dword [ebp-0x14c], 0x8000
	mov edx, [eax+0x118254]
	sub [ebp-0x14c], edx
	mov ebx, [ebp-0x14c]
	test ebx, ebx
	jle R_MergeAndEmitDrawSurfLists_10
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz R_MergeAndEmitDrawSurfLists_10
	mov esi, scene
	mov edx, [ebp+0x8]
	lea edx, [esi+edx*4+0xe4190]
	mov [ebp-0x134], edx
	xor edi, edi
	mov dword [ebp-0x150], 0x0
	jmp R_MergeAndEmitDrawSurfLists_20
R_MergeAndEmitDrawSurfLists_50:
	mov eax, [esi+ebx*4+0xe4108]
	test eax, eax
	jz R_MergeAndEmitDrawSurfLists_30
	mov eax, [esi+ebx*4+0xe4108]
	sub [ebp-0x14c], eax
	mov eax, [esi+ebx*4+0xe4108]
	mov edx, [ebp-0x150]
	mov [ebp+edx*4-0xa0], eax
	mov edx, [ebp-0x134]
	mov eax, [edx]
	mov edx, [ebp-0x150]
	mov [ebp+edx*4-0x128], eax
	add edx, 0x1
	mov [ebp-0x150], edx
R_MergeAndEmitDrawSurfLists_30:
	add edi, 0x1
	add dword [ebp-0x134], 0x4
	cmp [ebp+0xc], edi
	jz R_MergeAndEmitDrawSurfLists_40
	mov esi, scene
R_MergeAndEmitDrawSurfLists_20:
	mov eax, [ebp+0x8]
	lea ebx, [edi+eax]
	mov eax, [esi+ebx*4+0xe4108]
	cmp [ebp-0x14c], eax
	jge R_MergeAndEmitDrawSurfLists_50
	mov edx, [ebp-0x14c]
	mov [esi+ebx*4+0xe4108], edx
	mov dword [esp], 0xc
	call R_WarnOncePerFrame
	jmp R_MergeAndEmitDrawSurfLists_50
R_MergeAndEmitDrawSurfLists_40:
	mov edx, [ebp-0x150]
	test edx, edx
	jz R_MergeAndEmitDrawSurfLists_10
	cmp dword [ebp-0x150], 0x1
	jz R_MergeAndEmitDrawSurfLists_60
R_MergeAndEmitDrawSurfLists_140:
	mov eax, [ebp-0x128]
	movzx ecx, word [eax+0x6]
	shr cx, 0x6
	movzx eax, cx
	and eax, 0x3f
	mov ebx, eax
	cmp dword [ebp-0x150], 0x1
	jbe R_MergeAndEmitDrawSurfLists_70
	mov edi, 0x1
	lea esi, [ebp-0x124]
R_MergeAndEmitDrawSurfLists_80:
	mov eax, [esi]
	movzx ecx, word [eax+0x6]
	shr cx, 0x6
	movzx eax, cx
	and eax, 0x3f
	cmp eax, ebx
	cmovl ebx, eax
	add edi, 0x1
	add esi, 0x4
	cmp [ebp-0x150], edi
	jnz R_MergeAndEmitDrawSurfLists_80
R_MergeAndEmitDrawSurfLists_130:
	mov [ebp-0x140], ebx
	mov dword [ebp-0x13c], 0x0
	mov dword [ebp-0x12c], 0x0
	mov dword [ebp-0x130], 0x0
	mov eax, [ebp-0x12c]
R_MergeAndEmitDrawSurfLists_110:
	shl eax, 0x2
	mov edx, [ebp+eax-0xa0]
	mov [ebp-0x148], edx
	mov eax, [ebp+eax-0x128]
	mov [ebp-0x154], eax
	mov eax, frontEndDataOut
	mov edx, [eax]
	mov eax, [edx+0x118254]
	lea eax, [edx+eax*8+0x70000]
	mov [ebp-0x144], eax
	xor edi, edi
R_MergeAndEmitDrawSurfLists_100:
	lea edx, [edi*8]
	mov [ebp-0x138], edx
	mov eax, [ebp-0x154]
	mov ebx, [eax+edi*8]
	mov esi, [eax+edi*8+0x4]
	mov eax, esi
	shr eax, 0x16
	and eax, 0x3f
	xor edx, edx
	mov ecx, [ebp-0x13c]
	xor ecx, edx
	xor eax, [ebp-0x140]
	or ecx, eax
	jnz R_MergeAndEmitDrawSurfLists_90
	mov edx, [ebp-0x144]
	mov [edx+edi*8], ebx
	mov [edx+edi*8+0x4], esi
	add edi, 0x1
	cmp [ebp-0x148], edi
	ja R_MergeAndEmitDrawSurfLists_100
	lea eax, [edi*8]
	mov [ebp-0x138], eax
R_MergeAndEmitDrawSurfLists_90:
	mov edx, frontEndDataOut
	mov eax, [edx]
	add [eax+0x118254], edi
	mov eax, [ebp-0x154]
	add eax, [ebp-0x138]
	mov edx, [ebp-0x130]
	mov [ebp+edx*4-0x128], eax
	mov eax, [ebp-0x148]
	sub eax, edi
	mov [ebp+edx*4-0xa0], eax
	test eax, eax
	setnz al
	movzx eax, al
	add edx, eax
	mov [ebp-0x130], edx
	add dword [ebp-0x12c], 0x1
	mov eax, [ebp-0x12c]
	cmp [ebp-0x150], eax
	jnz R_MergeAndEmitDrawSurfLists_110
	test edx, edx
	jz R_MergeAndEmitDrawSurfLists_10
	cmp dword [ebp-0x130], 0x1
	jnz R_MergeAndEmitDrawSurfLists_120
R_MergeAndEmitDrawSurfLists_60:
	mov ebx, [ebp-0xa0]
	mov eax, frontEndDataOut
	mov edx, [eax]
	lea eax, [ebx*8]
	mov [esp+0x8], eax
	mov eax, [ebp-0x128]
	mov [esp+0x4], eax
	mov eax, [edx+0x118254]
	lea eax, [edx+eax*8+0x70000]
	mov [esp], eax
	call Com_Memcpy
	mov edx, frontEndDataOut
	mov eax, [edx]
	add [eax+0x118254], ebx
R_MergeAndEmitDrawSurfLists_10:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_MergeAndEmitDrawSurfLists_70:
	mov eax, [ebp-0x150]
	test eax, eax
	jnz R_MergeAndEmitDrawSurfLists_130
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_MergeAndEmitDrawSurfLists_120:
	mov eax, [ebp-0x130]
	mov [ebp-0x150], eax
	jmp R_MergeAndEmitDrawSurfLists_140
	nop


;Initialized global or static variables of r_pretess:
SECTION .data


;Initialized constant data of r_pretess:
SECTION .rdata


;Zero initialized global or static variables of r_pretess:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

