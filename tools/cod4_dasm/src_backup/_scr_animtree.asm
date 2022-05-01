;Imports of scr_animtree:
	extern _Z23Hunk_AllocAlignInternalii
	extern _Z16FindFirstSiblingj
	extern _Z15FindNextSiblingj
	extern _Z15GetVariableNamej
	extern _Z12GetValueTypej
	extern _Z10FindObjectj
	extern _Z12FindVariablejj
	extern _Z23GetVariableValueAddressj
	extern _Z18SL_ConvertToStringj
	extern _Z9Com_Error11errorParm_tPKcz
	extern scrVarPub
	extern _Z10XAnimBlendP7XAnim_sjPKcjjj
	extern _Z11XAnimCreateP7XAnim_sjPKc
	extern _Z17FindArrayVariableji
	extern _Z13XAnimPrecachePKcPFPviE
	extern _Z27Scr_CreateCanonicalFilenamePKc
	extern _Z14GetNewVariablejj
	extern _Z10GetObjectAj
	extern _Z11GetVariablejj
	extern _Z8GetArrayj
	extern _Z20SL_RemoveRefToStringj
	extern _Z9Com_ParsePPKc
	extern _Z16Scr_IsIdentifierPKc
	extern _Z22SL_GetLowercaseString_PKcji
	extern _Z15Com_ParseOnLinePPKc
	extern _Z9I_stricmpPKcS0_
	extern _Z19Com_GetLastTokenPosv
	extern _Z19Com_EndParseSessionv
	extern CompileError
	extern _Z12GetArraySizej
	extern _Z16GetArrayVariablejj
	extern _Z16SetVariableValuejP13VariableValue
	extern _Z14RemoveVariablejj
	extern SL_GetString_
	extern _Z16Scr_EvalVariablej
	extern _Z14Scr_AllocArrayv
	extern sprintf
	extern scrParserPub
	extern _Z19Scr_AddSourceBufferPKcS0_S0_h
	extern _Z21Com_BeginParseSessionPKc
	extern Hunk_ClearTempMemoryHigh
	extern _Z16XAnimCreateAnimsPKciPFPviE
	extern useFastFile
	extern _Z17RemoveRefToObjectj
	extern _Z19XAnimSetupSyncNodesP7XAnim_s
	extern _Z13CompileError2PKcS0_z
	extern _Z2vaPKcz
	extern _Z20Scr_IsInOpcodeMemoryPKc

;Exports of scr_animtree:
	global scrAnimGlob
	global propertyNames
	global _Z27Hunk_AllocXAnimTreePrecachei
	global _Z19Scr_GetAnimTreeSizej
	global _Z19ConnectScriptToAnimjijji
	global _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit
	global _Z25Scr_PrecacheAnimationTreej
	global _Z21Scr_UsingTreeInternalPKcPji
	global _Z21AnimTreeParseInternaljjhhh
	global _Z12Scr_FindAnimPKcS0_P10scr_anim_si
	global _Z12Scr_GetAnimsj
	global _Z12SetAnimChecki
	global _Z13Scr_UsingTreePKcj
	global _Z16Scr_FindAnimTreePKc
	global _Z17Scr_EmitAnimationPcjj
	global _Z17Scr_GetAnimsIndexPK7XAnim_s
	global _Z23Scr_LoadAnimTreeAtIndexjPFPviEi
	global scrAnimPub


SECTION .text


;Hunk_AllocXAnimTreePrecache(int)
_Z27Hunk_AllocXAnimTreePrecachei:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
	leave
	ret
	nop


;Scr_GetAnimTreeSize(unsigned int)
_Z19Scr_GetAnimTreeSizej:
_Z19Scr_GetAnimTreeSizej_60:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov [esp], eax
	call _Z16FindFirstSiblingj
	mov ebx, eax
	test eax, eax
	jnz _Z19Scr_GetAnimTreeSizej_10
	xor esi, esi
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19Scr_GetAnimTreeSizej_10:
	xor esi, esi
	jmp _Z19Scr_GetAnimTreeSizej_20
_Z19Scr_GetAnimTreeSizej_40:
	mov [esp], ebx
	call _Z15FindNextSiblingj
	mov ebx, eax
	test eax, eax
	jz _Z19Scr_GetAnimTreeSizej_30
_Z19Scr_GetAnimTreeSizej_20:
	mov [esp], ebx
	call _Z15GetVariableNamej
	cmp eax, 0xffff
	ja _Z19Scr_GetAnimTreeSizej_40
	mov [esp], ebx
	call _Z12GetValueTypej
	sub eax, 0x1
	jz _Z19Scr_GetAnimTreeSizej_50
	add esi, 0x1
	mov [esp], ebx
	call _Z15FindNextSiblingj
	mov ebx, eax
	test eax, eax
	jnz _Z19Scr_GetAnimTreeSizej_20
_Z19Scr_GetAnimTreeSizej_30:
	cmp esi, 0x1
	sbb esi, 0xffffffff
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19Scr_GetAnimTreeSizej_50:
	mov [esp], ebx
	call _Z10FindObjectj
	call _Z19Scr_GetAnimTreeSizej_60
	add esi, eax
	jmp _Z19Scr_GetAnimTreeSizej_40


;ConnectScriptToAnim(unsigned int, int, unsigned int, unsigned int, int)
_Z19ConnectScriptToAnimjijji:
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
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z19ConnectScriptToAnimjijji_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19ConnectScriptToAnimjijji_10:
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	mov edi, eax
	mov eax, [eax]
	test eax, eax
	jz _Z19ConnectScriptToAnimjijji_20
_Z19ConnectScriptToAnimjijji_60:
	shl esi, 0x10
	movzx edx, word [ebp-0x1c]
	or edx, esi
	mov eax, [edi]
	test eax, eax
	jnz _Z19ConnectScriptToAnimjijji_30
	jmp _Z19ConnectScriptToAnimjijji_40
_Z19ConnectScriptToAnimjijji_50:
	mov eax, ecx
_Z19ConnectScriptToAnimjijji_30:
	mov ecx, [eax]
	mov [eax], edx
	test ecx, ecx
	jnz _Z19ConnectScriptToAnimjijji_50
_Z19ConnectScriptToAnimjijji_40:
	mov dword [edi], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19ConnectScriptToAnimjijji_20:
	mov [esp], ebx
	call _Z18SL_ConvertToStringj
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_duplicate_animat
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19ConnectScriptToAnimjijji_60


;Scr_CreateAnimationTree(unsigned int, unsigned int, XAnim_s*, unsigned int, char const*, unsigned int, unsigned int, int, unsigned short)
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit:
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_110:
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
	call _Z16FindFirstSiblingj
	mov ebx, eax
	test eax, eax
	jnz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_10
	xor edi, edi
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_90:
	movzx esi, si
	mov ebx, scrVarPub
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
	call _Z10XAnimBlendP7XAnim_sjPKcjjj
	add edi, [ebp+0x8]
	mov [ebp-0x24], edi
	mov edx, [ebp+0x8]
	mov [ebp-0x20], edx
	xor edi, edi
	mov [ebp-0x38], ebx
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_30:
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z16FindFirstSiblingj
	mov esi, eax
	test eax, eax
	jnz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_20
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_60:
	add edi, 0x1
	cmp edi, 0x2
	jnz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_30
	mov eax, [ebp-0x24]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_70:
	mov [esp], esi
	call _Z12GetValueTypej
	sub eax, 0x1
	jz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_40
	test edi, edi
	jnz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_50
	mov edx, [ebp-0x38]
	mov eax, [edx+0x38]
	mov edx, eax
	shl edx, 0x5
	sub edx, eax
	add edx, [ebp-0x20]
	mov eax, [ebp-0x38]
	mov [eax+0x38], edx
	mov [esp], ebx
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov eax, [ebp-0x34]
	mov [esp], eax
	call _Z11XAnimCreateP7XAnim_sjPKc
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_120:
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	movzx eax, bx
	mov [esp], eax
	mov ecx, [ebp+0x14]
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x30]
	call _Z19ConnectScriptToAnimjijji
	add dword [ebp-0x20], 0x1
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_50:
	mov [esp], esi
	call _Z15FindNextSiblingj
	mov esi, eax
	test eax, eax
	jz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_60
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_20:
	mov [esp], esi
	call _Z15GetVariableNamej
	mov ebx, eax
	cmp eax, 0xffff
	ja _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_50
	jmp _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_70
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_10:
	xor edi, edi
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_80:
	mov [esp], ebx
	call _Z15GetVariableNamej
	cmp eax, 0x10000
	adc edi, 0x0
	mov [esp], ebx
	call _Z15FindNextSiblingj
	mov ebx, eax
	test eax, eax
	jnz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_80
	jmp _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_90
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_40:
	mov [esp], esi
	call _Z10FindObjectj
	mov [ebp-0x28], eax
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z17FindArrayVariableji
	test eax, eax
	jnz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_100
	mov word [ebp-0x1a], 0x0
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_130:
	shr eax, 0x4
	and eax, 0x1
	cmp eax, edi
	jnz _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_50
	mov [esp], ebx
	call _Z18SL_ConvertToStringj
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
	call _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_110
	mov [ebp-0x24], eax
	jmp _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_120
_Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_100:
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	movzx eax, word [eax]
	mov [ebp-0x1a], ax
	movzx eax, ax
	jmp _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit_130
	nop


;Scr_PrecacheAnimationTree(unsigned int)
_Z25Scr_PrecacheAnimationTreej:
_Z25Scr_PrecacheAnimationTreej_60:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov [esp], eax
	call _Z16FindFirstSiblingj
	mov ebx, eax
	test eax, eax
	jnz _Z25Scr_PrecacheAnimationTreej_10
_Z25Scr_PrecacheAnimationTreej_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z25Scr_PrecacheAnimationTreej_50:
	mov [esp], ebx
	call _Z12GetValueTypej
	sub eax, 0x1
	jz _Z25Scr_PrecacheAnimationTreej_20
	mov [esp], esi
	call _Z18SL_ConvertToStringj
	mov dword [esp+0x4], _Z27Hunk_AllocXAnimTreePrecachei
	mov [esp], eax
	call _Z13XAnimPrecachePKcPFPviE
_Z25Scr_PrecacheAnimationTreej_40:
	mov [esp], ebx
	call _Z15FindNextSiblingj
	mov ebx, eax
	test eax, eax
	jz _Z25Scr_PrecacheAnimationTreej_30
_Z25Scr_PrecacheAnimationTreej_10:
	mov [esp], ebx
	call _Z15GetVariableNamej
	mov esi, eax
	cmp eax, 0xffff
	ja _Z25Scr_PrecacheAnimationTreej_40
	jmp _Z25Scr_PrecacheAnimationTreej_50
_Z25Scr_PrecacheAnimationTreej_20:
	mov [esp], ebx
	call _Z10FindObjectj
	call _Z25Scr_PrecacheAnimationTreej_60
	jmp _Z25Scr_PrecacheAnimationTreej_40


;Scr_UsingTreeInternal(char const*, unsigned int*, int)
_Z21Scr_UsingTreeInternalPKcPji:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], edx
	mov esi, ecx
	mov [esp], eax
	call _Z27Scr_CreateCanonicalFilenamePKc
	mov [ebp-0x20], eax
	mov [esp+0x4], eax
	mov eax, [scrAnimPub]
	mov [esp], eax
	call _Z12FindVariablejj
	mov ebx, eax
	test eax, eax
	jnz _Z21Scr_UsingTreeInternalPKcPji_10
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [scrAnimPub]
	mov [esp], eax
	call _Z14GetNewVariablejj
	mov ebx, eax
	mov [esp], eax
	call _Z10GetObjectAj
	mov [ebp-0x1c], eax
	mov edx, [esi*4+scrAnimPub+0x40c]
	add edx, 0x1
	mov [esi*4+scrAnimPub+0x40c], edx
	shl esi, 0x7
	lea eax, [esi+edx]
	mov [eax+eax+scrAnimGlob+0x8], bx
	mov eax, [ebp-0x24]
	mov [eax], edx
_Z21Scr_UsingTreeInternalPKcPji_20:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z11GetVariablejj
	mov [esp], eax
	call _Z8GetArrayj
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Scr_UsingTreeInternalPKcPji_10:
	mov [esp], eax
	call _Z10FindObjectj
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x24]
	mov dword [eax], 0x0
	mov eax, esi
	shl eax, 0x8
	lea edi, [eax+scrAnimGlob+0x8]
	mov ecx, [esi*4+scrAnimPub+0x40c]
	test ecx, ecx
	jz _Z21Scr_UsingTreeInternalPKcPji_20
	movzx eax, word [edi+0x2]
	cmp eax, ebx
	jz _Z21Scr_UsingTreeInternalPKcPji_30
	mov edx, 0x1
_Z21Scr_UsingTreeInternalPKcPji_40:
	add edx, 0x1
	cmp edx, ecx
	ja _Z21Scr_UsingTreeInternalPKcPji_20
	movzx eax, word [edi+edx*2]
	cmp ebx, eax
	jnz _Z21Scr_UsingTreeInternalPKcPji_40
	mov eax, [ebp-0x24]
	mov [eax], edx
	jmp _Z21Scr_UsingTreeInternalPKcPji_20
_Z21Scr_UsingTreeInternalPKcPji_30:
	mov edx, 0x1
	mov eax, [ebp-0x24]
	mov [eax], edx
	jmp _Z21Scr_UsingTreeInternalPKcPji_20
	nop


;AnimTreeParseInternal(unsigned int, unsigned int, unsigned char, unsigned char, unsigned char)
_Z21AnimTreeParseInternaljjhhh:
_Z21AnimTreeParseInternaljjhhh_270:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x3c], eax
	mov [ebp-0x40], edx
	mov [ebp-0x41], cl
	movzx eax, byte [ebp+0x8]
	mov [ebp-0x42], al
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x43], al
	mov dword [ebp-0x1c], 0x6
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov byte [ebp-0x2d], 0x0
_Z21AnimTreeParseInternaljjhhh_210:
	mov dword [esp], scrAnimGlob+0x4
	call _Z9Com_ParsePPKc
	mov esi, eax
	mov ebx, [scrAnimGlob+0x4]
	test ebx, ebx
	jz _Z21AnimTreeParseInternaljjhhh_10
_Z21AnimTreeParseInternaljjhhh_70:
	mov [esp], eax
	call _Z16Scr_IsIdentifierPKc
	test al, al
	jz _Z21AnimTreeParseInternaljjhhh_20
	cmp byte [ebp-0x2d], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_30
_Z21AnimTreeParseInternaljjhhh_330:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call _Z22SL_GetLowercaseString_PKcji
	mov [ebp-0x2c], eax
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z21AnimTreeParseInternaljjhhh_40
_Z21AnimTreeParseInternaljjhhh_320:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z11GetVariablejj
	mov [ebp-0x38], eax
	cmp byte [ebp-0x43], 0x0
	jz _Z21AnimTreeParseInternaljjhhh_50
_Z21AnimTreeParseInternaljjhhh_100:
	mov byte [ebp-0x2d], 0x0
	mov dword [esp], scrAnimGlob+0x4
	call _Z15Com_ParseOnLinePPKc
	mov esi, eax
	cmp byte [eax], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_60
_Z21AnimTreeParseInternaljjhhh_110:
	mov dword [ebp-0x34], 0x0
	mov dword [esp], scrAnimGlob+0x4
	call _Z9Com_ParsePPKc
	mov esi, eax
	mov ebx, [scrAnimGlob+0x4]
	test ebx, ebx
	jnz _Z21AnimTreeParseInternaljjhhh_70
_Z21AnimTreeParseInternaljjhhh_10:
	mov esi, 0x1
_Z21AnimTreeParseInternaljjhhh_490:
	cmp byte [ebp-0x2d], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_80
_Z21AnimTreeParseInternaljjhhh_470:
	cmp byte [ebp-0x41], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_90
_Z21AnimTreeParseInternaljjhhh_430:
	mov eax, esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21AnimTreeParseInternaljjhhh_50:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z21AnimTreeParseInternaljjhhh_100
	mov ecx, [scrAnimGlob+0x208]
	test ecx, ecx
	jnz _Z21AnimTreeParseInternaljjhhh_100
	mov byte [ebp-0x2d], 0x1
	mov dword [esp], scrAnimGlob+0x4
	call _Z15Com_ParseOnLinePPKc
	mov esi, eax
	cmp byte [eax], 0x0
	jz _Z21AnimTreeParseInternaljjhhh_110
_Z21AnimTreeParseInternaljjhhh_60:
	mov [esp], eax
	call _Z16Scr_IsIdentifierPKc
	test al, al
	jnz _Z21AnimTreeParseInternaljjhhh_120
_Z21AnimTreeParseInternaljjhhh_420:
	cmp byte [esi], 0x3a
	jnz _Z21AnimTreeParseInternaljjhhh_130
	cmp byte [esi+0x1], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_130
_Z21AnimTreeParseInternaljjhhh_340:
	mov dword [ebp-0x34], 0x0
_Z21AnimTreeParseInternaljjhhh_390:
	mov dword [esp], scrAnimGlob+0x4
	call _Z15Com_ParseOnLinePPKc
	mov edi, eax
	cmp byte [eax], 0x0
	jz _Z21AnimTreeParseInternaljjhhh_140
_Z21AnimTreeParseInternaljjhhh_170:
	xor esi, esi
	mov ebx, propertyNames
_Z21AnimTreeParseInternaljjhhh_160:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21AnimTreeParseInternaljjhhh_150
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x4
	jnz _Z21AnimTreeParseInternaljjhhh_160
_Z21AnimTreeParseInternaljjhhh_380:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_unknown_anim_pro
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	mov dword [esp], scrAnimGlob+0x4
	call _Z15Com_ParseOnLinePPKc
	mov edi, eax
	cmp byte [eax], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_170
_Z21AnimTreeParseInternaljjhhh_140:
	mov dword [esp], scrAnimGlob+0x4
	call _Z9Com_ParsePPKc
	mov esi, eax
	cmp byte [eax], 0x7b
	jnz _Z21AnimTreeParseInternaljjhhh_180
	cmp byte [eax+0x1], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_180
_Z21AnimTreeParseInternaljjhhh_20:
	movzx eax, byte [esi]
	cmp al, 0x7b
	jz _Z21AnimTreeParseInternaljjhhh_190
	cmp al, 0x7d
	jz _Z21AnimTreeParseInternaljjhhh_200
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_bad_token
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp _Z21AnimTreeParseInternaljjhhh_210
_Z21AnimTreeParseInternaljjhhh_190:
	cmp byte [esi+0x1], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_220
	mov dword [esp], scrAnimGlob+0x4
	call _Z15Com_ParseOnLinePPKc
	cmp byte [eax], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_230
_Z21AnimTreeParseInternaljjhhh_400:
	mov edx, [ebp-0x38]
	test edx, edx
	jz _Z21AnimTreeParseInternaljjhhh_240
_Z21AnimTreeParseInternaljjhhh_410:
	mov eax, [ebp-0x38]
	mov [esp], eax
	call _Z8GetArrayj
	mov esi, eax
	cmp byte [ebp-0x43], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_250
	test byte [ebp-0x34], 0x8
	jz _Z21AnimTreeParseInternaljjhhh_260
	cmp byte [ebp-0x2d], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_260
_Z21AnimTreeParseInternaljjhhh_250:
	mov eax, 0x1
	xor byte [ebp-0x2d], 0x1
	movzx ecx, byte [ebp-0x2d]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	and eax, 0x1
	mov [esp], eax
	mov edx, [ebp-0x40]
	mov eax, esi
	call _Z21AnimTreeParseInternaljjhhh_270
	test al, al
	jnz _Z21AnimTreeParseInternaljjhhh_280
_Z21AnimTreeParseInternaljjhhh_300:
	mov [esp], esi
	call _Z12GetArraySizej
	test eax, eax
	jz _Z21AnimTreeParseInternaljjhhh_290
_Z21AnimTreeParseInternaljjhhh_310:
	mov eax, [ebp-0x34]
	mov [ebp-0x20], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z16GetArrayVariablejj
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z16SetVariableValuejP13VariableValue
	mov dword [ebp-0x38], 0x0
	mov byte [ebp-0x2d], 0x0
	jmp _Z21AnimTreeParseInternaljjhhh_210
_Z21AnimTreeParseInternaljjhhh_260:
	xor eax, eax
	xor byte [ebp-0x2d], 0x1
	movzx ecx, byte [ebp-0x2d]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	and eax, 0x1
	mov [esp], eax
	mov edx, [ebp-0x40]
	mov eax, esi
	call _Z21AnimTreeParseInternaljjhhh_270
	test al, al
	jz _Z21AnimTreeParseInternaljjhhh_300
_Z21AnimTreeParseInternaljjhhh_280:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_unexpected_end_o
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	mov [esp], esi
	call _Z12GetArraySizej
	test eax, eax
	jnz _Z21AnimTreeParseInternaljjhhh_310
_Z21AnimTreeParseInternaljjhhh_290:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z14RemoveVariablejj
	mov dword [ebp-0x38], 0x0
	mov byte [ebp-0x2d], 0x0
	jmp _Z21AnimTreeParseInternaljjhhh_210
_Z21AnimTreeParseInternaljjhhh_40:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_duplicate_animat1
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp _Z21AnimTreeParseInternaljjhhh_320
_Z21AnimTreeParseInternaljjhhh_30:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z14RemoveVariablejj
	jmp _Z21AnimTreeParseInternaljjhhh_330
_Z21AnimTreeParseInternaljjhhh_130:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_bad_token
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp _Z21AnimTreeParseInternaljjhhh_340
_Z21AnimTreeParseInternaljjhhh_150:
	cmp esi, 0x1
	jz _Z21AnimTreeParseInternaljjhhh_350
	jb _Z21AnimTreeParseInternaljjhhh_360
	cmp esi, 0x2
	jz _Z21AnimTreeParseInternaljjhhh_370
	cmp esi, 0x3
	jnz _Z21AnimTreeParseInternaljjhhh_380
	or dword [ebp-0x34], 0x10
	jmp _Z21AnimTreeParseInternaljjhhh_390
_Z21AnimTreeParseInternaljjhhh_180:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_properties_canno
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp _Z21AnimTreeParseInternaljjhhh_20
_Z21AnimTreeParseInternaljjhhh_360:
	or dword [ebp-0x34], 0x1
	jmp _Z21AnimTreeParseInternaljjhhh_390
_Z21AnimTreeParseInternaljjhhh_350:
	or dword [ebp-0x34], 0x2
	jmp _Z21AnimTreeParseInternaljjhhh_390
_Z21AnimTreeParseInternaljjhhh_220:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_bad_token
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	mov dword [esp], scrAnimGlob+0x4
	call _Z15Com_ParseOnLinePPKc
	cmp byte [eax], 0x0
	jz _Z21AnimTreeParseInternaljjhhh_400
_Z21AnimTreeParseInternaljjhhh_230:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_token_not_allowe
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	mov edx, [ebp-0x38]
	test edx, edx
	jnz _Z21AnimTreeParseInternaljjhhh_410
_Z21AnimTreeParseInternaljjhhh_240:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_no_animation_spe
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp _Z21AnimTreeParseInternaljjhhh_410
_Z21AnimTreeParseInternaljjhhh_120:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_fixme_aliases_no
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp _Z21AnimTreeParseInternaljjhhh_420
_Z21AnimTreeParseInternaljjhhh_90:
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z12GetArraySizej
	test eax, eax
	jnz _Z21AnimTreeParseInternaljjhhh_430
	cmp byte [ebp-0x42], 0x0
	jz _Z21AnimTreeParseInternaljjhhh_440
	mov eax, _cstring_void_loop
_Z21AnimTreeParseInternaljjhhh_480:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call SL_GetString_
	mov ebx, eax
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z11GetVariablejj
	mov [esp], ebx
	call _Z20SL_RemoveRefToStringj
	mov eax, esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21AnimTreeParseInternaljjhhh_370:
	or dword [ebp-0x34], 0x8
	jmp _Z21AnimTreeParseInternaljjhhh_390
_Z21AnimTreeParseInternaljjhhh_200:
	cmp byte [esi+0x1], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_450
_Z21AnimTreeParseInternaljjhhh_500:
	mov dword [esp], scrAnimGlob+0x4
	call _Z15Com_ParseOnLinePPKc
	cmp byte [eax], 0x0
	jnz _Z21AnimTreeParseInternaljjhhh_460
	xor esi, esi
	cmp byte [ebp-0x2d], 0x0
	jz _Z21AnimTreeParseInternaljjhhh_470
_Z21AnimTreeParseInternaljjhhh_80:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z14RemoveVariablejj
	jmp _Z21AnimTreeParseInternaljjhhh_470
_Z21AnimTreeParseInternaljjhhh_440:
	mov eax, _cstring_void
	jmp _Z21AnimTreeParseInternaljjhhh_480
_Z21AnimTreeParseInternaljjhhh_460:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_token_not_allowe1
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	xor esi, esi
	jmp _Z21AnimTreeParseInternaljjhhh_490
_Z21AnimTreeParseInternaljjhhh_450:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_bad_token
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp _Z21AnimTreeParseInternaljjhhh_500
	nop


;Scr_FindAnim(char const*, char const*, scr_anim_s*, int)
_Z12Scr_FindAnimPKcS0_P10scr_anim_si:
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
	call _Z22SL_GetLowercaseString_PKcji
	mov esi, eax
	lea edx, [ebp-0x1c]
	mov ecx, [ebp+0x14]
	mov eax, [ebp+0x8]
	call _Z21Scr_UsingTreeInternalPKcPji
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z12Scr_FindAnimPKcS0_P10scr_anim_si_10
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z14GetNewVariablejj
	mov dword [edi], 0x0
	mov dword [ebp-0x20], 0x7
	mov [ebp-0x24], edi
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z16SetVariableValuejP13VariableValue
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Scr_FindAnimPKcS0_P10scr_anim_si_10:
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	mov edx, [eax]
	mov [edi], edx
	mov [eax], edi
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_GetAnims(unsigned int)
_Z12Scr_GetAnimsj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+scrAnimPub+0x20c]
	pop ebp
	ret
	nop


;SetAnimCheck(int)
_Z12SetAnimChecki:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [scrAnimGlob+0x208], eax
	pop ebp
	ret
	nop


;Scr_UsingTree(char const*, unsigned int)
_Z13Scr_UsingTreePKcj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call _Z16Scr_IsIdentifierPKc
	test al, al
	jnz _Z13Scr_UsingTreePKcj_10
	mov dword [ebp+0xc], _cstring_bad_anim_tree_na
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp CompileError
_Z13Scr_UsingTreePKcj_10:
	mov ecx, 0x1
	mov edx, scrAnimPub+0x414
	mov eax, ebx
	call _Z21Scr_UsingTreeInternalPKcPji
	mov [scrAnimPub+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_FindAnimTree(char const*)
_Z16Scr_FindAnimTreePKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z27Scr_CreateCanonicalFilenamePKc
	mov ebx, eax
	mov [esp+0x4], eax
	mov eax, [scrAnimPub]
	mov [esp], eax
	call _Z12FindVariablejj
	mov esi, eax
	mov [esp], ebx
	call _Z20SL_RemoveRefToStringj
	test esi, esi
	jnz _Z16Scr_FindAnimTreePKc_10
_Z16Scr_FindAnimTreePKc_20:
	xor eax, eax
_Z16Scr_FindAnimTreePKc_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16Scr_FindAnimTreePKc_10:
	mov [esp], esi
	call _Z15GetVariableNamej
	mov [esp], esi
	call _Z10FindObjectj
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jz _Z16Scr_FindAnimTreePKc_20
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	jmp _Z16Scr_FindAnimTreePKc_30
	nop


;Scr_EmitAnimation(char*, unsigned int, unsigned int)
_Z17Scr_EmitAnimationPcjj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov ebx, [scrAnimPub+0x8]
	test ebx, ebx
	jnz _Z17Scr_EmitAnimationPcjj_10
	mov dword [esp+0x4], _cstring_using_animtree_w
	mov eax, [ebp+0x10]
	mov [esp], eax
	call CompileError
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z17Scr_EmitAnimationPcjj_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12FindVariablejj
	test eax, eax
	jz _Z17Scr_EmitAnimationPcjj_20
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	mov edx, [eax]
	mov [esi], edx
	mov [eax], esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z17Scr_EmitAnimationPcjj_20:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14GetNewVariablejj
	mov dword [esi], 0x0
	mov dword [ebp-0xc], 0x7
	mov [ebp-0x10], esi
	lea edx, [ebp-0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z16SetVariableValuejP13VariableValue
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_GetAnimsIndex(XAnim_s const*)
_Z17Scr_GetAnimsIndexPK7XAnim_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov ebx, [scrAnimPub+0x410]
	test ebx, ebx
	jz _Z17Scr_GetAnimsIndexPK7XAnim_s_10
	cmp edi, [ebx*4+scrAnimPub+0x20c]
	jz _Z17Scr_GetAnimsIndexPK7XAnim_s_10
	lea ecx, [ebx*4+scrAnimPub+0x208]
	mov edx, ebx
	lea esi, [ebx-0x1]
_Z17Scr_GetAnimsIndexPK7XAnim_s_30:
	sub edx, 0x1
	mov eax, ebx
	sub eax, esi
	sub eax, 0x1
	cmp edx, eax
	jz _Z17Scr_GetAnimsIndexPK7XAnim_s_20
	mov eax, [ecx]
	sub ecx, 0x4
	cmp edi, eax
	jnz _Z17Scr_GetAnimsIndexPK7XAnim_s_30
_Z17Scr_GetAnimsIndexPK7XAnim_s_20:
	mov eax, edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Scr_GetAnimsIndexPK7XAnim_s_10:
	mov edx, ebx
	mov eax, edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_LoadAnimTreeAtIndex(unsigned int, void* (*)(int), int)
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi:
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
	movzx ebx, word [esi+esi+scrAnimGlob+0x8]
	mov [esp], ebx
	call _Z15GetVariableNamej
	movzx eax, ax
	mov [ebp-0x84], eax
	mov [esp], ebx
	call _Z10FindObjectj
	mov [ebp-0x80], eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_10
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_10:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x80]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_20
	mov dword [esi*4+scrAnimPub+0xc], 0x0
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_20:
	mov [esp], eax
	call _Z10FindObjectj
	mov [ebp-0x6c], eax
	call _Z14Scr_AllocArrayv
	mov edi, eax
	mov [scrAnimPub+0x4], eax
	mov edx, [ebp-0x84]
	mov [esp], edx
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_animtreessatr
	lea esi, [ebp-0x60]
	mov [esp], esi
	call sprintf
	mov eax, scrParserPub
	mov eax, [eax+0xc]
	mov [ebp-0x78], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call _Z19Scr_AddSourceBufferPKcS0_S0_h
	mov ebx, eax
	test eax, eax
	jz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_30
	mov edx, scrParserPub
	mov edx, [edx+0x8]
	mov [ebp-0x7c], edx
	mov eax, scrParserPub
	mov [eax+0x8], esi
	mov dword [esp], _cstring_scr_animtreepars
	call _Z21Com_BeginParseSessionPKc
	mov [scrAnimGlob+0x4], ebx
	mov [scrAnimGlob], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	mov ecx, 0x1
	mov edx, [ebp-0x6c]
	mov eax, edi
	call _Z21AnimTreeParseInternaljjhhh
	test al, al
	jz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_40
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_120:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x7c]
	mov edx, scrParserPub
	mov [edx+0x8], eax
	mov eax, [ebp-0x78]
	mov [edx+0xc], eax
	call Hunk_ClearTempMemoryHigh
	mov [esp], edi
	call _Z12GetArraySizej
	test eax, eax
	jz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_30
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_100:
	mov eax, [scrAnimPub+0x4]
	call _Z19Scr_GetAnimTreeSizej
	mov ebx, eax
	mov eax, [ebp-0x84]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z16XAnimCreateAnimsPKciPFPviE
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
	call _Z19ConnectScriptToAnimjijji
	mov [esp], ebx
	call _Z20SL_RemoveRefToStringj
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_50
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_110:
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
	mov eax, [scrAnimPub+0x4]
	call _Z23Scr_CreateAnimationTreejjP7XAnim_sjPKcjjit
	mov edx, [ebp-0x6c]
	mov [esp], edx
	call _Z16FindFirstSiblingj
	mov esi, eax
	test eax, eax
	jnz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_60
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_70:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x80]
	mov [esp], eax
	call _Z14RemoveVariablejj
	mov eax, [scrAnimPub+0x4]
	mov [esp], eax
	call _Z17RemoveRefToObjectj
	mov dword [scrAnimPub+0x4], 0x0
	mov dword [ebp-0x1c], 0x7
	mov edx, [ebp-0x70]
	mov [ebp-0x20], edx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x80]
	mov [esp], eax
	call _Z11GetVariablejj
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z16SetVariableValuejP13VariableValue
	mov edx, [ebp-0x70]
	mov [esp], edx
	call _Z19XAnimSetupSyncNodesP7XAnim_s
	shl dword [ebp+0x10], 0x7
	mov eax, [ebp+0x10]
	add eax, [ebp+0x8]
	mov edx, [ebp-0x70]
	mov [eax*4+scrAnimPub+0xc], edx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_90:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov eax, [edi]
	mov [esp], eax
	call _Z13CompileError2PKcS0_z
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_80:
	mov [esp], esi
	call _Z15FindNextSiblingj
	mov esi, eax
	test eax, eax
	jz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_70
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_60:
	mov [esp], esi
	call _Z15GetVariableNamej
	mov [ebp-0x74], eax
	mov [esp], esi
	call _Z23GetVariableValueAddressj
	mov edi, eax
	mov eax, [eax]
	test eax, eax
	jz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_80
	mov eax, [ebp-0x84]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov ebx, eax
	mov edx, [ebp-0x74]
	mov [esp], edx
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_animation_s_not_
	call _Z2vaPKcz
	mov ebx, eax
	mov eax, [edi]
	mov [esp], eax
	call _Z20Scr_IsInOpcodeMemoryPKc
	test eax, eax
	jnz _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_90
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_80
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_30:
	mov edx, [ebp-0x84]
	mov [esp], edx
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unknown_anim_tre
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_100
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_50:
	mov eax, [scrAnimPub+0x4]
	call _Z25Scr_PrecacheAnimationTreej
	jmp _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_110
_Z23Scr_LoadAnimTreeAtIndexjPFPviEi_40:
	call _Z19Com_GetLastTokenPosv
	mov ebx, eax
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x8], _cstring_bad_token
	mov dword [esp+0x4], _cstring_s
	sub ebx, [scrAnimGlob]
	mov [esp], ebx
	call CompileError
	jmp _Z23Scr_LoadAnimTreeAtIndexjPFPviEi_120
	add [eax], al


;Initialized global or static variables of scr_animtree:
SECTION .data
propertyNames: dd _cstring_loopsync, _cstring_nonloopsync, _cstring_complete, _cstring_additive, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of scr_animtree:
SECTION .rdata


;Zero initialized global or static variables of scr_animtree:
SECTION .bss
scrAnimGlob: resb 0x280
scrAnimPub: resb 0x480


;All cstrings:
SECTION .rdata
_cstring_duplicate_animat:		db 015h,"duplicate animation ",27h,"%s",27h," in ",27h,"animtrees/%s.atr",27h,0
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
_cstring_s1:		db 015h,"%s",0
_cstring_unknown_anim_tre:		db "unknown anim tree ",27h,"%s",27h,0
_cstring_loopsync:		db "loopsync",0
_cstring_nonloopsync:		db "nonloopsync",0
_cstring_complete:		db "complete",0
_cstring_additive:		db "additive",0



;All constant floats and doubles:
SECTION .rdata

