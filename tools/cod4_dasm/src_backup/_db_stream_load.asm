;Imports of db_stream_load:
	extern g_streamPosIndex
	extern g_streamDelayIndex
	extern g_streamDelayArray
	extern _Z15DB_IncStreamPosi
	extern _Z16DB_LoadXFileDataPhi
	extern memset
	extern _Z12SL_GetStringPKcj
	extern g_streamZoneMem

;Exports of db_stream_load:
	global _Z11Load_StreamhPKvi
	global _Z16Load_DelayStreamv
	global _Z18Load_XStringCustomPPKc
	global _Z21Load_TempStringCustomPPKc
	global _Z23DB_ConvertOffsetToAliasPv
	global _Z25DB_ConvertOffsetToPointerPv


SECTION .text


;Load_Stream(unsigned char, void const*, int)
_Z11Load_StreamhPKvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	cmp byte [ebp+0x8], 0x0
	jz _Z11Load_StreamhPKvi_10
	test ebx, ebx
	jz _Z11Load_StreamhPKvi_10
	mov eax, g_streamPosIndex
	mov edx, [eax]
	lea eax, [edx-0x1]
	cmp eax, 0x2
	ja _Z11Load_StreamhPKvi_20
	sub edx, 0x1
	jz _Z11Load_StreamhPKvi_30
	mov eax, g_streamDelayIndex
	mov edx, [eax]
	mov ecx, g_streamDelayArray
	mov [ecx+edx*8], esi
	mov [ecx+edx*8+0x4], ebx
	add edx, 0x1
	mov [eax], edx
_Z11Load_StreamhPKvi_40:
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z15DB_IncStreamPosi
_Z11Load_StreamhPKvi_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z11Load_StreamhPKvi_20:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z16DB_LoadXFileDataPhi
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z15DB_IncStreamPosi
_Z11Load_StreamhPKvi_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	jmp _Z11Load_StreamhPKvi_40


;Load_DelayStream()
_Z16Load_DelayStreamv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, g_streamDelayIndex
	mov edx, [eax]
	test edx, edx
	jnz _Z16Load_DelayStreamv_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Load_DelayStreamv_10:
	xor esi, esi
	mov ebx, g_streamDelayArray
	mov edi, eax
_Z16Load_DelayStreamv_20:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call _Z16DB_LoadXFileDataPhi
	add esi, 0x1
	add ebx, 0x8
	cmp [edi], esi
	ja _Z16Load_DelayStreamv_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_XStringCustom(char const**)
_Z18Load_XStringCustomPPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov esi, 0x1
	jmp _Z18Load_XStringCustomPPKc_10
_Z18Load_XStringCustomPPKc_20:
	add ebx, 0x1
	add esi, 0x1
_Z18Load_XStringCustomPPKc_10:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z16DB_LoadXFileDataPhi
	cmp byte [ebx], 0x0
	jnz _Z18Load_XStringCustomPPKc_20
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z15DB_IncStreamPosi
	nop


;Load_TempStringCustom(char const**)
_Z21Load_TempStringCustomPPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov esi, 0x1
	jmp _Z21Load_TempStringCustomPPKc_10
_Z21Load_TempStringCustomPPKc_20:
	add ebx, 0x1
	add esi, 0x1
_Z21Load_TempStringCustomPPKc_10:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z16DB_LoadXFileDataPhi
	cmp byte [ebx], 0x0
	jnz _Z21Load_TempStringCustomPPKc_20
	mov [esp], esi
	call _Z15DB_IncStreamPosi
	mov eax, [edi]
	test eax, eax
	jz _Z21Load_TempStringCustomPPKc_30
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call _Z12SL_GetStringPKcj
_Z21Load_TempStringCustomPPKc_30:
	mov [edi], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;DB_ConvertOffsetToAlias(void*)
_Z23DB_ConvertOffsetToAliasPv:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	sub edx, 0x1
	mov eax, g_streamZoneMem
	mov ecx, [eax]
	mov eax, edx
	shr eax, 0x1c
	and edx, 0xfffffff
	mov eax, [ecx+eax*8]
	mov eax, [eax+edx]
	mov [ebx], eax
	pop ebx
	pop ebp
	ret
	nop


;DB_ConvertOffsetToPointer(void*)
_Z25DB_ConvertOffsetToPointerPv:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	sub eax, 0x1
	mov edx, g_streamZoneMem
	mov ecx, [edx]
	mov edx, eax
	shr edx, 0x1c
	and eax, 0xfffffff
	add eax, [ecx+edx*8]
	mov [ebx], eax
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of db_stream_load:
SECTION .data


;Initialized constant data of db_stream_load:
SECTION .rdata


;Zero initialized global or static variables of db_stream_load:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

