;Imports of scr_animtree:
	extern Hunk_AllocAlignInternal
	extern FindFirstSibling
	extern FindNextSibling
	extern GetVariableName
	extern GetValueType
	extern FindObject
	extern FindVariable
	extern GetVariableValueAddress
	extern SL_ConvertToString
	extern Com_Error
	extern gScrVarPub
	extern XAnimBlend
	extern XAnimCreate
	extern FindArrayVariable
	extern XAnimPrecache
	extern Scr_CreateCanonicalFilename
	extern GetNewVariable
	extern SGetObjectA
	extern GetVariable
	extern GetArray
	extern SL_RemoveRefToString
	extern Com_Parse
	extern Scr_IsIdentifier
	extern SL_GetLowercaseString_
	extern Com_ParseOnLine
	extern Q_stricmp
	extern Com_GetLastTokenPos
	extern Com_EndParseSession
	extern CompileError
	extern GetArraySize
	extern GetArrayVariable
	extern SetVariableValue
	extern RemoveVariable
	extern SL_GetString_
	extern Scr_EvalVariableExtern
	extern Scr_AllocArray
	extern sprintf
	extern gScrParserPub
	extern Scr_AddSourceBuffer
	extern Com_BeginParseSession
	extern Hunk_ClearTempMemoryHigh
	extern XAnimCreateAnims
	extern useFastFile
	extern RemoveRefToObject
	extern XAnimSetupSyncNodes
	extern CompileError2
	extern va
	extern Scr_IsInOpcodeMemory
	extern AnimTreeParseInternal

;Exports of scr_animtree:
	global gScrAnimGlob
	global Hunk_AllocXAnimTreePrecache
	global Scr_GetAnimTreeSize
	global ConnectScriptToAnim
	global Scr_CreateAnimationTree
	global Scr_PrecacheAnimationTree
	global Scr_UsingTreeInternal
	global Scr_FindAnim
	global Scr_GetAnims
	global SetAnimCheck
	global Scr_UsingTree
	global Scr_FindAnimTree
	global Scr_EmitAnimation
	global Scr_GetAnimsIndex
	global Scr_LoadAnimTreeAtIndex
	global gScrAnimPub


SECTION .text


;Hunk_AllocXAnimTreePrecache(int)
Hunk_AllocXAnimTreePrecache:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Hunk_AllocAlignInternal
	leave
	ret
	nop


;Scr_GetAnimTreeSize(unsigned int)
Scr_GetAnimTreeSize:
Scr_GetAnimTreeSize_60:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov [esp], eax
	call FindFirstSibling
	mov ebx, eax
	test eax, eax
	jnz Scr_GetAnimTreeSize_10
	xor esi, esi
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_GetAnimTreeSize_10:
	xor esi, esi
	jmp Scr_GetAnimTreeSize_20
Scr_GetAnimTreeSize_40:
	mov [esp], ebx
	call FindNextSibling
	mov ebx, eax
	test eax, eax
	jz Scr_GetAnimTreeSize_30
Scr_GetAnimTreeSize_20:
	mov [esp], ebx
	call GetVariableName
	cmp eax, 0xffff
	ja Scr_GetAnimTreeSize_40
	mov [esp], ebx
	call GetValueType
	sub eax, 0x1
	jz Scr_GetAnimTreeSize_50
	add esi, 0x1
	mov [esp], ebx
	call FindNextSibling
	mov ebx, eax
	test eax, eax
	jnz Scr_GetAnimTreeSize_20
Scr_GetAnimTreeSize_30:
	cmp esi, 0x1
	sbb esi, 0xffffffff
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_GetAnimTreeSize_50:
	mov [esp], ebx
	call FindObject
	call Scr_GetAnimTreeSize_60
	add esi, eax
	jmp Scr_GetAnimTreeSize_40


;ConnectScriptToAnim(unsigned int, int, unsigned int, unsigned int, int)
ConnectScriptToAnim:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], edx
	mov ebx, ecx
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call FindVariable
	test eax, eax
	jnz ConnectScriptToAnim_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ConnectScriptToAnim_10:
	mov [esp], eax
	call GetVariableValueAddress
	mov edi, eax
	mov eax, [eax]
	test eax, eax
	jz ConnectScriptToAnim_20
ConnectScriptToAnim_60:
	shl esi, 0x10
	movzx edx, word [ebp-0x1c]
	or edx, esi
	mov eax, [edi]
	test eax, eax
	jnz ConnectScriptToAnim_30
	jmp ConnectScriptToAnim_40
ConnectScriptToAnim_50:
	mov eax, ecx
ConnectScriptToAnim_30:
	mov ecx, [eax]
	mov [eax], edx
	test ecx, ecx
	jnz ConnectScriptToAnim_50
ConnectScriptToAnim_40:
	mov dword [edi], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ConnectScriptToAnim_20:
	mov [esp], ebx
	call SL_ConvertToString
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_duplicate_animat
	mov dword [esp], 0x2
	call Com_Error
	jmp ConnectScriptToAnim_60


;Scr_CreateAnimationTree(unsigned int, unsigned int, XAnim_s*, unsigned int, char const*, unsigned int, unsigned int, int, unsigned short)
Scr_CreateAnimationTree:
Scr_CreateAnimationTree_110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	mov [ebp-0x34], ecx
	movzx esi, word [ebp+0x1c]
	mov [esp], eax
	call FindFirstSibling
	mov ebx, eax
	test eax, eax
	jnz Scr_CreateAnimationTree_10
	xor edi, edi
Scr_CreateAnimationTree_90:
	movzx esi, si
	mov ebx, gScrVarPub
	mov edx, [ebx+0x38]
	mov eax, edx
	shl eax, 0x5
	sub eax, edx
	add eax, [ebp+0x10]
	mov edx, eax
	shl edx, 0x5
	sub edx, eax
	add edx, [ebp+0x8]
	mov ecx, edx
	shl ecx, 0x5
	sub ecx, edx
	add ecx, edi
	mov eax, ecx
	shl eax, 0x5
	sub eax, ecx
	add eax, esi
	mov [ebx+0x38], eax
	mov [esp+0x14], esi
	mov [esp+0x10], edi
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov eax, [ebp-0x34]
	mov [esp], eax
	call XAnimBlend
	add edi, [ebp+0x8]
	mov [ebp-0x24], edi
	mov edx, [ebp+0x8]
	mov [ebp-0x20], edx
	xor edi, edi
	mov [ebp-0x38], ebx
Scr_CreateAnimationTree_30:
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call FindFirstSibling
	mov esi, eax
	test eax, eax
	jnz Scr_CreateAnimationTree_20
Scr_CreateAnimationTree_60:
	add edi, 0x1
	cmp edi, 0x2
	jnz Scr_CreateAnimationTree_30
	mov eax, [ebp-0x24]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_CreateAnimationTree_70:
	mov [esp], esi
	call GetValueType
	sub eax, 0x1
	jz Scr_CreateAnimationTree_40
	test edi, edi
	jnz Scr_CreateAnimationTree_50
	mov edx, [ebp-0x38]
	mov eax, [edx+0x38]
	mov edx, eax
	shl edx, 0x5
	sub edx, eax
	add edx, [ebp-0x20]
	mov eax, [ebp-0x38]
	mov [eax+0x38], edx
	mov [esp], ebx
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov eax, [ebp-0x34]
	mov [esp], eax
	call XAnimCreate
Scr_CreateAnimationTree_120:
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	movzx eax, bx
	mov [esp], eax
	mov ecx, [ebp+0x14]
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x30]
	call ConnectScriptToAnim
	add dword [ebp-0x20], 0x1
Scr_CreateAnimationTree_50:
	mov [esp], esi
	call FindNextSibling
	mov esi, eax
	test eax, eax
	jz Scr_CreateAnimationTree_60
Scr_CreateAnimationTree_20:
	mov [esp], esi
	call GetVariableName
	mov ebx, eax
	cmp eax, 0xffff
	ja Scr_CreateAnimationTree_50
	jmp Scr_CreateAnimationTree_70
Scr_CreateAnimationTree_10:
	xor edi, edi
Scr_CreateAnimationTree_80:
	mov [esp], ebx
	call GetVariableName
	cmp eax, 0x10000
	adc edi, 0x0
	mov [esp], ebx
	call FindNextSibling
	mov ebx, eax
	test eax, eax
	jnz Scr_CreateAnimationTree_80
	jmp Scr_CreateAnimationTree_90
Scr_CreateAnimationTree_40:
	mov [esp], esi
	call FindObject
	mov [ebp-0x28], eax
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call FindArrayVariable
	test eax, eax
	jnz Scr_CreateAnimationTree_100
	mov word [ebp-0x1a], 0x0
Scr_CreateAnimationTree_130:
	shr eax, 0x4
	and eax, 0x1
	cmp eax, edi
	jnz Scr_CreateAnimationTree_50
	mov [esp], ebx
	call SL_ConvertToString
	movzx edx, word [ebp-0x1a]
	mov [esp+0x14], edx
	mov edx, [ebp+0x18]
	mov [esp+0x10], edx
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, [ebp-0x34]
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x28]
	call Scr_CreateAnimationTree_110
	mov [ebp-0x24], eax
	jmp Scr_CreateAnimationTree_120
Scr_CreateAnimationTree_100:
	mov [esp], eax
	call GetVariableValueAddress
	movzx eax, word [eax]
	mov [ebp-0x1a], ax
	movzx eax, ax
	jmp Scr_CreateAnimationTree_130
	nop


;Scr_PrecacheAnimationTree(unsigned int)
Scr_PrecacheAnimationTree:
Scr_PrecacheAnimationTree_60:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov [esp], eax
	call FindFirstSibling
	mov ebx, eax
	test eax, eax
	jnz Scr_PrecacheAnimationTree_10
Scr_PrecacheAnimationTree_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_PrecacheAnimationTree_50:
	mov [esp], ebx
	call GetValueType
	sub eax, 0x1
	jz Scr_PrecacheAnimationTree_20
	mov [esp], esi
	call SL_ConvertToString
	mov dword [esp+0x4], Hunk_AllocXAnimTreePrecache
	mov [esp], eax
	call XAnimPrecache
Scr_PrecacheAnimationTree_40:
	mov [esp], ebx
	call FindNextSibling
	mov ebx, eax
	test eax, eax
	jz Scr_PrecacheAnimationTree_30
Scr_PrecacheAnimationTree_10:
	mov [esp], ebx
	call GetVariableName
	mov esi, eax
	cmp eax, 0xffff
	ja Scr_PrecacheAnimationTree_40
	jmp Scr_PrecacheAnimationTree_50
Scr_PrecacheAnimationTree_20:
	mov [esp], ebx
	call FindObject
	call Scr_PrecacheAnimationTree_60
	jmp Scr_PrecacheAnimationTree_40


;Scr_UsingTreeInternal(char const*, unsigned int*, int)
Scr_UsingTreeInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], edx
	mov esi, ecx
	mov [esp], eax
	call Scr_CreateCanonicalFilename
	mov [ebp-0x20], eax
	mov [esp+0x4], eax
	mov eax, [gScrAnimPub]
	mov [esp], eax
	call FindVariable
	mov ebx, eax
	test eax, eax
	jnz Scr_UsingTreeInternal_10
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [gScrAnimPub]
	mov [esp], eax
	call GetNewVariable
	mov ebx, eax
	mov [esp], eax
	call SGetObjectA
	mov [ebp-0x1c], eax
	mov edx, [esi*4+gScrAnimPub+0x40c]
	add edx, 0x1
	mov [esi*4+gScrAnimPub+0x40c], edx
	shl esi, 0x7
	lea eax, [esi+edx]
	mov [eax+eax+gScrAnimGlob+0x8], bx
	mov eax, [ebp-0x24]
	mov [eax], edx
Scr_UsingTreeInternal_20:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call GetVariable
	mov [esp], eax
	call GetArray
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call SL_RemoveRefToString
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_UsingTreeInternal_10:
	mov [esp], eax
	call FindObject
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x24]
	mov dword [eax], 0x0
	mov eax, esi
	shl eax, 0x8
	lea edi, [eax+gScrAnimGlob+0x8]
	mov ecx, [esi*4+gScrAnimPub+0x40c]
	test ecx, ecx
	jz Scr_UsingTreeInternal_20
	movzx eax, word [edi+0x2]
	cmp eax, ebx
	jz Scr_UsingTreeInternal_30
	mov edx, 0x1
Scr_UsingTreeInternal_40:
	add edx, 0x1
	cmp edx, ecx
	ja Scr_UsingTreeInternal_20
	movzx eax, word [edi+edx*2]
	cmp ebx, eax
	jnz Scr_UsingTreeInternal_40
	mov eax, [ebp-0x24]
	mov [eax], edx
	jmp Scr_UsingTreeInternal_20
Scr_UsingTreeInternal_30:
	mov edx, 0x1
	mov eax, [ebp-0x24]
	mov [eax], edx
	jmp Scr_UsingTreeInternal_20
	nop


;Scr_FindAnim(char const*, char const*, scr_anim_s*, int)
Scr_FindAnim:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x10]
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SL_GetLowercaseString_
	mov esi, eax
	lea edx, [ebp-0x1c]
	mov ecx, [ebp+0x14]
	mov eax, [ebp+0x8]
	call Scr_UsingTreeInternal
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call FindVariable
	test eax, eax
	jnz Scr_FindAnim_10
	mov [esp+0x4], esi
	mov [esp], ebx
	call GetNewVariable
	mov dword [edi], 0x0
	mov dword [ebp-0x20], 0x7
	mov [ebp-0x24], edi
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call SetVariableValue
	mov [esp], esi
	call SL_RemoveRefToString
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_FindAnim_10:
	mov [esp], eax
	call GetVariableValueAddress
	mov edx, [eax]
	mov [edi], edx
	mov [eax], edi
	mov [esp], esi
	call SL_RemoveRefToString
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_GetAnims(unsigned int)
Scr_GetAnims:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+gScrAnimPub+0x20c]
	pop ebp
	ret
	nop


;SetAnimCheck(int)
SetAnimCheck:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [gScrAnimGlob+0x208], eax
	pop ebp
	ret
	nop


;Scr_UsingTree(char const*, unsigned int)
Scr_UsingTree:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call Scr_IsIdentifier
	test al, al
	jnz Scr_UsingTree_10
	mov dword [ebp+0xc], _cstring_bad_anim_tree_na
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp CompileError
Scr_UsingTree_10:
	mov ecx, 0x1
	mov edx, gScrAnimPub+0x414
	mov eax, ebx
	call Scr_UsingTreeInternal
	mov [gScrAnimPub+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_FindAnimTree(char const*)
Scr_FindAnimTree:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_CreateCanonicalFilename
	mov ebx, eax
	mov [esp+0x4], eax
	mov eax, [gScrAnimPub]
	mov [esp], eax
	call FindVariable
	mov esi, eax
	mov [esp], ebx
	call SL_RemoveRefToString
	test esi, esi
	jnz Scr_FindAnimTree_10
Scr_FindAnimTree_20:
	xor eax, eax
Scr_FindAnimTree_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_FindAnimTree_10:
	mov [esp], esi
	call GetVariableName
	mov [esp], esi
	call FindObject
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call FindVariable
	test eax, eax
	jz Scr_FindAnimTree_20
	mov [esp], eax
	call Scr_EvalVariableExtern
	jmp Scr_FindAnimTree_30
	nop


;Scr_EmitAnimation(char*, unsigned int, unsigned int)
Scr_EmitAnimation:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov ebx, [gScrAnimPub+0x8]
	test ebx, ebx
	jnz Scr_EmitAnimation_10
	mov dword [esp+0x4], _cstring_using_animtree_w
	mov eax, [ebp+0x10]
	mov [esp], eax
	call CompileError
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EmitAnimation_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FindVariable
	test eax, eax
	jz Scr_EmitAnimation_20
	mov [esp], eax
	call GetVariableValueAddress
	mov edx, [eax]
	mov [esi], edx
	mov [eax], esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EmitAnimation_20:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call GetNewVariable
	mov dword [esi], 0x0
	mov dword [ebp-0xc], 0x7
	mov [ebp-0x10], esi
	lea edx, [ebp-0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call SetVariableValue
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_GetAnimsIndex(XAnim_s const*)
Scr_GetAnimsIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov ebx, [gScrAnimPub+0x410]
	test ebx, ebx
	jz Scr_GetAnimsIndex_10
	cmp edi, [ebx*4+gScrAnimPub+0x20c]
	jz Scr_GetAnimsIndex_10
	lea ecx, [ebx*4+gScrAnimPub+0x208]
	mov edx, ebx
	lea esi, [ebx-0x1]
Scr_GetAnimsIndex_30:
	sub edx, 0x1
	mov eax, ebx
	sub eax, esi
	sub eax, 0x1
	cmp edx, eax
	jz Scr_GetAnimsIndex_20
	mov eax, [ecx]
	sub ecx, 0x4
	cmp edi, eax
	jnz Scr_GetAnimsIndex_30
Scr_GetAnimsIndex_20:
	mov eax, edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetAnimsIndex_10:
	mov edx, ebx
	mov eax, edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_LoadAnimTreeAtIndex(unsigned int, void* (*)(int), int)
Scr_LoadAnimTreeAtIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0x10]
	shl eax, 0x7
	mov edx, [ebp+0x8]
	lea esi, [eax+edx]
	movzx ebx, word [esi+esi+gScrAnimGlob+0x8]
	mov [esp], ebx
	call GetVariableName
	movzx eax, ax
	mov [ebp-0x84], eax
	mov [esp], ebx
	call FindObject
	mov [ebp-0x80], eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call FindVariable
	test eax, eax
	jz Scr_LoadAnimTreeAtIndex_10
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_LoadAnimTreeAtIndex_10:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x80]
	mov [esp], eax
	call FindVariable
	test eax, eax
	jnz Scr_LoadAnimTreeAtIndex_20
	mov dword [esi*4+gScrAnimPub+0xc], 0x0
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_LoadAnimTreeAtIndex_20:
	mov [esp], eax
	call FindObject
	mov [ebp-0x6c], eax
	call Scr_AllocArray
	mov edi, eax
	mov [gScrAnimPub+0x4], eax
	mov edx, [ebp-0x84]
	mov [esp], edx
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_animtreessatr
	lea esi, [ebp-0x60]
	mov [esp], esi
	call sprintf
	mov eax, gScrParserPub
	mov eax, [eax+0xc]
	mov [ebp-0x78], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Scr_AddSourceBuffer
	mov ebx, eax
	test eax, eax
	jz Scr_LoadAnimTreeAtIndex_30
	mov edx, gScrParserPub
	mov edx, [edx+0x8]
	mov [ebp-0x7c], edx
	mov eax, gScrParserPub
	mov [eax+0x8], esi
	mov dword [esp], _cstring_scr_animtreepars
	call Com_BeginParseSession
	mov [gScrAnimGlob+0x4], ebx
	mov [gScrAnimGlob], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	mov ecx, 0x1
	mov edx, [ebp-0x6c]
	mov eax, edi
	call AnimTreeParseInternal
	test al, al
	jz Scr_LoadAnimTreeAtIndex_40
Scr_LoadAnimTreeAtIndex_120:
	call Com_EndParseSession
	mov eax, [ebp-0x7c]
	mov edx, gScrParserPub
	mov [edx+0x8], eax
	mov eax, [ebp-0x78]
	mov [edx+0xc], eax
	call Hunk_ClearTempMemoryHigh
	mov [esp], edi
	call GetArraySize
	test eax, eax
	jz Scr_LoadAnimTreeAtIndex_30
Scr_LoadAnimTreeAtIndex_100:
	mov eax, [gScrAnimPub+0x4]
	call Scr_GetAnimTreeSize
	mov ebx, eax
	mov eax, [ebp-0x84]
	mov [esp], eax
	call SL_ConvertToString
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call XAnimCreateAnims
	mov [ebp-0x70], eax
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_root
	call SL_GetString_
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov ecx, [ebp-0x84]
	xor edx, edx
	mov eax, [ebp-0x6c]
	call ConnectScriptToAnim
	mov [esp], ebx
	call SL_RemoveRefToString
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Scr_LoadAnimTreeAtIndex_50
Scr_LoadAnimTreeAtIndex_110:
	mov dword [esp+0x14], 0x0
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov eax, [ebp-0x84]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_root
	mov dword [esp], 0x1
	mov ecx, [ebp-0x70]
	mov edx, [ebp-0x6c]
	mov eax, [gScrAnimPub+0x4]
	call Scr_CreateAnimationTree
	mov edx, [ebp-0x6c]
	mov [esp], edx
	call FindFirstSibling
	mov esi, eax
	test eax, eax
	jnz Scr_LoadAnimTreeAtIndex_60
Scr_LoadAnimTreeAtIndex_70:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x80]
	mov [esp], eax
	call RemoveVariable
	mov eax, [gScrAnimPub+0x4]
	mov [esp], eax
	call RemoveRefToObject
	mov dword [gScrAnimPub+0x4], 0x0
	mov dword [ebp-0x1c], 0x7
	mov edx, [ebp-0x70]
	mov [ebp-0x20], edx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x80]
	mov [esp], eax
	call GetVariable
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], eax
	call SetVariableValue
	mov edx, [ebp-0x70]
	mov [esp], edx
	call XAnimSetupSyncNodes
	shl dword [ebp+0x10], 0x7
	mov eax, [ebp+0x10]
	add eax, [ebp+0x8]
	mov edx, [ebp-0x70]
	mov [eax*4+gScrAnimPub+0xc], edx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_LoadAnimTreeAtIndex_90:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov eax, [edi]
	mov [esp], eax
	call CompileError2
Scr_LoadAnimTreeAtIndex_80:
	mov [esp], esi
	call FindNextSibling
	mov esi, eax
	test eax, eax
	jz Scr_LoadAnimTreeAtIndex_70
Scr_LoadAnimTreeAtIndex_60:
	mov [esp], esi
	call GetVariableName
	mov [ebp-0x74], eax
	mov [esp], esi
	call GetVariableValueAddress
	mov edi, eax
	mov eax, [eax]
	test eax, eax
	jz Scr_LoadAnimTreeAtIndex_80
	mov eax, [ebp-0x84]
	mov [esp], eax
	call SL_ConvertToString
	mov ebx, eax
	mov edx, [ebp-0x74]
	mov [esp], edx
	call SL_ConvertToString
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_animation_s_not_
	call va
	mov ebx, eax
	mov eax, [edi]
	mov [esp], eax
	call Scr_IsInOpcodeMemory
	test eax, eax
	jnz Scr_LoadAnimTreeAtIndex_90
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0x2
	call Com_Error
	jmp Scr_LoadAnimTreeAtIndex_80
Scr_LoadAnimTreeAtIndex_30:
	mov edx, [ebp-0x84]
	mov [esp], edx
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unknown_anim_tre
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp Scr_LoadAnimTreeAtIndex_100
Scr_LoadAnimTreeAtIndex_50:
	mov eax, [gScrAnimPub+0x4]
	call Scr_PrecacheAnimationTree
	jmp Scr_LoadAnimTreeAtIndex_110
Scr_LoadAnimTreeAtIndex_40:
	call Com_GetLastTokenPos
	mov ebx, eax
	call Com_EndParseSession
	mov dword [esp+0x8], _cstring_bad_token
	mov dword [esp+0x4], _cstring_s
	sub ebx, [gScrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp Scr_LoadAnimTreeAtIndex_120
	add [eax], al


;Initialized global or static variables of scr_animtree:
SECTION .data


;Initialized constant data of scr_animtree:
SECTION .rdata


;Zero initialized global or static variables of scr_animtree:
SECTION .bss
gScrAnimGlob: resb 0x280
gScrAnimPub: resb 0x480


;All cstrings:
SECTION .rdata
_cstring_duplicate_animat:		db 15h,"duplicate animation ",27h,"%s",27h," in ",27h,"animtrees/%s.atr",27h,0
_cstring_unknown_anim_pro:		db "unknown anim property",0
_cstring_s:		db "%s",0
_cstring_bad_token:		db "bad token",0
_cstring_unexpected_end_o:		db "unexpected end of file",0
_cstring_duplicate_animat1:		db "duplicate animation",0
_cstring_properties_canno:		db "properties cannot be applied to primitive animations",0
_cstring_token_not_allowe:		db "token not allowed after ",27h,"{",27h,0
_cstring_no_animation_spe:		db "no animation specified for this block",0
_cstring_fixme_aliases_no:		db "FIXME: aliases not yet implemented",0
_cstring_void_loop:		db "void_loop",0
_cstring_void:		db "void",0
_cstring_token_not_allowe1:		db "token not allowed after ",27h,"}",27h,0
_cstring_bad_anim_tree_na:		db "bad anim tree name",0
_cstring_using_animtree_w:		db "#using_animtree was not specified",0
_cstring_animtreessatr:		db "animtrees/%s.atr",0
_cstring_scr_animtreepars:		db "Scr_AnimTreeParse",0
_cstring_root:		db "root",0
_cstring_animation_s_not_:		db "animation ",27h,"%s",27h," not defined in anim tree ",27h,"%s",27h,0
_cstring_s1:		db 15h,"%s",0
_cstring_unknown_anim_tre:		db "unknown anim tree ",27h,"%s",27h,0
_cstring_loopsync:		db "loopsync",0
_cstring_nonloopsync:		db "nonloopsync",0
_cstring_complete:		db "complete",0
_cstring_additive:		db "additive",0



;All constant floats and doubles:
SECTION .rdata

