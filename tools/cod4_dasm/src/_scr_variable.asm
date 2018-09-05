;Imports of scr_variable:
	extern FS_FOpenFileByMode
	extern Hunk_AllocateTempMemoryHigh
	extern FS_Read
	extern FS_FCloseFile
	extern va
	extern Com_Error
	extern DB_FindXAssetHeader
	extern TempMalloc
	extern sprintf
	extern FS_ListFiles
	extern FS_FreeFileList
	extern useFastFile
	extern Com_BeginParseSession
	extern Com_Parse
	extern tolower
	extern SL_GetCanonicalString
	extern TempMemorySetPos
	extern strcpy
	extern Com_EndParseSession
	extern Hunk_ClearTempMemoryHigh
	extern Q_stricmp
	extern Scr_TerminalError
	extern SL_AddRefToString
	extern SL_RemoveRefToString
	extern MT_Free
	extern GetEntityFieldValue
	extern MT_Alloc
	extern Scr_Error
	extern SL_ConvertToString
	extern SL_GetStringLen
	extern SL_GetStringForVector
	extern SL_GetStringOfSize
	extern SL_GetStringForFloat
	extern SL_GetStringForInt
	extern SL_ConvertFromString
	extern VM_CancelNotify
	extern Scr_CancelNotifyList
	extern Scr_MakeArray
	extern Scr_AddArray
	extern Scr_AddConstString
	extern Scr_AddInt
	extern SL_GetString_
	extern SetEntityFieldValue
	extern Scr_GetAnims
	extern XAnimGetAnimDebugName
	extern Z_TryVirtualAllocInternal
	extern qsort
	extern Com_Printf
	extern Z_VirtualFreeInternal
	extern Scr_PrintPrevCodePos

;Exports of scr_variable:
	global ThreadInfoCompare
	global Scr_GetSourceFile_LoadObj
	global Scr_GetSourceFile_FastFile
	global Scr_AddFields_FastFile
	global Scr_AddFields_LoadObj
	global Scr_GetObjectUsage
	global Scr_AddFieldsForFile
	global GetNewVariableIndexInternal3
	global CopyArray
	global MakeVariableExternal
	global Scr_EvalVariableEntityField
	global Scr_MakeValuePrimitive
	global Scr_CastWeakerPair
	global AllocValue
	global ClearArray
	global FindObject
	global SGetObjectA
	global Scr_EvalOr
	global AllocObject
	global AllocThread
	global ClearObject
	global GetVariable
	global Scr_EvalAnd
	global Scr_EvalMod
	global Scr_GetSelf
	global FindEntityId
	global FindVariable
	global GetArraySize
	global GetValueType
	global IsObjectFree
	global Scr_CastBool
	global Scr_EvalExOr
	global Scr_EvalLess
	global Scr_EvalPlus
	global Scr_GetVarId
	global AddRefToValue
	global GetObjectType
	global IsFieldObject
	global Scr_AddFields
	global Scr_EvalArray
	global Scr_EvalMinus
	global Scr_FindField
	global Scr_FreeValue
	global Scr_GetOffset
	global AddRefToObject
	global GetNewVariable
	global RemoveVariable
	global Scr_AllocArray
	global Scr_CastString
	global Scr_CastVector
	global Scr_EvalDivide
	global Scr_KillThread
	global Scr_StopThread
	global FindLastSibling
	global FindNextSibling
	global FindPrevSibling
	global GetStartLocalId
	global GetVariableName
	global Scr_AllocVector
	global Scr_EvalBoolNot
	global Scr_EvalGreater
	global Scr_FreeObjects
	global Scr_GetEntityId
	global Scr_SetClassMap
	global AllocChildThread
	global FindFirstSibling
	global GetArrayVariable
	global GetParentLocalId
	global RemoveRefToValue
	global Scr_AddArrayKeys
	global Scr_EvalArrayRef
	global Scr_EvalEquality
	global Scr_EvalMultiply
	global Scr_EvalVariable
	global Scr_InitClassMap
	global SetVariableValue
	global FindArrayVariable
	global GetObjectVariable
	global IsValidArrayIndex
	global RemoveRefToObject
	global RemoveRefToVector
	global Scr_AddClassField
	global Scr_ClearWaitTime
	global Scr_EvalLessEqual
	global Scr_EvalShiftLeft
	global Scr_EvalSizeValue
	global Scr_FreeEntityNum
	global Scr_InitVariables
	global ClearVariableField
	global ClearVariableValue
	global FindObjectVariable
	global RemoveNextVariable
	global SafeRemoveVariable
	global Scr_EvalInequality
	global Scr_EvalShiftRight
	global Scr_FreeEntityList
	global Scr_GetEntityIdRef
	global Scr_RemoveClassMap
	global GetNewArrayVariable
	global RemoveVariableValue
	global Scr_CastDebugString
	global Scr_EvalFieldObject
	global Scr_KillEndonThread
	global SetNewVariableValue
	global GetNewObjectVariable
	global GetSafeParentLocalId
	global GetVariableKeyObject
	global RemoveObjectVariable
	global Scr_EvalGreaterEqual
	global Scr_FreeGameVariable
	global Scr_GetNumScriptVars
	global GetArrayVariableIndex
	global Scr_AllocGameVariable
	global Scr_DumpScriptThreads
	global Scr_EvalVariableField
	global Scr_FindVariableField
	global Scr_GetThreadWaitTime
	global Scr_SetThreadWaitTime
	global Scr_ShutdownVariables
	global SetVariableFieldValue
	global RemoveRefToEmptyObject
	global Scr_EvalBinaryOperator
	global Scr_EvalBoolComplement
	global Scr_EvalVariableObject
	global GetVariableValueAddress
	global Scr_GetThreadNotifyName
	global Scr_SetThreadNotifyName
	global GetInternalVariableIndex
	global GetVariableIndexInternal
	global Scr_GetClassnumForCharId
	global Scr_UnmatchingTypesError
	global Scr_GetVariableFieldIndex
	global Scr_RemoveThreadNotifyName
	global GetNewObjectVariableReverse
	global SetVariableEntityFieldValue
	global Scr_DumpScriptVariablesDefault
	global GetArray
	global FreeValue
	global scrVarPub
	global var_typename
	global g_classMap
	global scrVarGlob


SECTION .text


;ThreadInfoCompare(void const*, void const*)
ThreadInfoCompare:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ecx, [esi+0x80]
	test ecx, ecx
	jg ThreadInfoCompare_10
	mov ebx, [edi+0x80]
ThreadInfoCompare_20:
	mov eax, ecx
	sub eax, ebx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ThreadInfoCompare_10:
	mov ebx, [edi+0x80]
	test ebx, ebx
	jle ThreadInfoCompare_20
	mov edx, [esi]
	mov eax, [edi]
	cmp eax, edx
	jz ThreadInfoCompare_30
	sub edx, eax
	mov eax, edx
ThreadInfoCompare_50:
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ThreadInfoCompare_30:
	mov [ebp-0x10], esi
	xor esi, esi
ThreadInfoCompare_40:
	add esi, 0x1
	cmp esi, ecx
	jz ThreadInfoCompare_20
	cmp esi, ebx
	jz ThreadInfoCompare_20
	mov eax, [ebp-0x10]
	mov edx, [eax+0x4]
	mov eax, [edi+0x4]
	add dword [ebp-0x10], 0x4
	add edi, 0x4
	cmp eax, edx
	jz ThreadInfoCompare_40
	sub edx, eax
	mov eax, edx
	jmp ThreadInfoCompare_50
	nop


;Scr_GetSourceFile_LoadObj(char const*)
Scr_GetSourceFile_LoadObj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_FOpenFileByMode
	mov esi, eax
	test eax, eax
	js Scr_GetSourceFile_LoadObj_10
Scr_GetSourceFile_LoadObj_20:
	lea eax, [esi+0x1]
	mov [esp], eax
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call FS_Read
	mov byte [ebx+esi], 0x0
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FCloseFile
	mov eax, ebx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Scr_GetSourceFile_LoadObj_10:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cannot_find_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp Scr_GetSourceFile_LoadObj_20


;Scr_GetSourceFile_FastFile(char const*)
Scr_GetSourceFile_FastFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	mov ebx, eax
	test eax, eax
	jz Scr_GetSourceFile_FastFile_10
	mov eax, [ebx+0x8]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_GetSourceFile_FastFile_10:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cannot_find_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebx+0x8]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Scr_AddFields_FastFile(char const*, char const*)
Scr_AddFields_FastFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x64
	mov dword [esp], 0x0
	call TempMalloc
	mov [scrVarPub], eax
	mov byte [eax], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_keys
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sss
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call sprintf
	mov eax, ebx
	call Scr_AddFieldsForFile
	mov dword [esp], 0x1
	call TempMalloc
	mov byte [eax], 0x0
	add esp, 0x64
	pop ebx
	pop ebp
	ret


;Scr_AddFields_LoadObj(char const*, char const*)
Scr_AddFields_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov dword [esp+0x10], 0xa
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_ListFiles
	mov esi, eax
	mov dword [esp], 0x0
	call TempMalloc
	mov [scrVarPub], eax
	mov byte [eax], 0x0
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jg Scr_AddFields_LoadObj_10
Scr_AddFields_LoadObj_40:
	test esi, esi
	jz Scr_AddFields_LoadObj_20
	mov dword [esp+0x4], 0xa
	mov [esp], esi
	call FS_FreeFileList
Scr_AddFields_LoadObj_20:
	mov dword [esp], 0x1
	call TempMalloc
	mov byte [eax], 0x0
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddFields_LoadObj_10:
	xor ebx, ebx
	lea edi, [ebp-0x5c]
Scr_AddFields_LoadObj_30:
	mov eax, [esi+ebx*4]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ss
	mov [esp], edi
	call sprintf
	mov eax, edi
	call Scr_AddFieldsForFile
	add ebx, 0x1
	cmp ebx, [ebp-0x1c]
	jl Scr_AddFields_LoadObj_30
	jmp Scr_AddFields_LoadObj_40


;Scr_GetObjectUsage(unsigned int)
Scr_GetObjectUsage:
Scr_GetObjectUsage_540:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_10
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
Scr_GetObjectUsage_40:
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_20
Scr_GetObjectUsage_50:
	movaps xmm0, xmm3
Scr_GetObjectUsage_100:
	addss xmm2, xmm0
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_30
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_40
Scr_GetObjectUsage_30:
	movaps xmm0, xmm2
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetObjectUsage_20:
	shl edx, 0x4
	lea esi, [edx+scrVarGlob+0x10]
	mov eax, [esi+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_50
	movzx eax, word [esi+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_60
	movaps xmm4, xmm3
Scr_GetObjectUsage_90:
	shl edx, 0x4
	lea edi, [edx+scrVarGlob+0x80020]
	mov edx, [edi+0x4]
	mov eax, [edi+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_70
Scr_GetObjectUsage_110:
	movaps xmm0, xmm3
Scr_GetObjectUsage_160:
	addss xmm4, xmm0
	movzx eax, word [edi+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_80
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_90
Scr_GetObjectUsage_80:
	movzx eax, word [esi+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	divss xmm4, xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm3
	jmp Scr_GetObjectUsage_100
Scr_GetObjectUsage_10:
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm2
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetObjectUsage_60:
	movaps xmm4, xmm3
	jmp Scr_GetObjectUsage_80
Scr_GetObjectUsage_70:
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov [ebp-0x64], edx
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_110
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_120
	movaps xmm6, xmm3
Scr_GetObjectUsage_150:
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov [ebp-0x60], edx
	mov ecx, edx
	mov edx, [edx+0x4]
	mov eax, [ecx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_130
Scr_GetObjectUsage_170:
	movaps xmm0, xmm3
Scr_GetObjectUsage_220:
	addss xmm6, xmm0
	mov edx, [ebp-0x60]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_140
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_150
Scr_GetObjectUsage_140:
	mov ecx, [ebp-0x64]
	movzx eax, word [ecx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	divss xmm6, xmm0
	movaps xmm0, xmm6
	addss xmm0, xmm3
	jmp Scr_GetObjectUsage_160
Scr_GetObjectUsage_130:
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov [ebp-0x5c], edx
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_170
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_180
	movss [ebp-0x58], xmm3
Scr_GetObjectUsage_210:
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov [ebp-0x54], edx
	mov ecx, edx
	mov edx, [edx+0x4]
	mov eax, [ecx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_190
Scr_GetObjectUsage_230:
	movaps xmm0, xmm3
Scr_GetObjectUsage_280:
	addss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mov edx, [ebp-0x54]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_200
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_210
Scr_GetObjectUsage_200:
	mov ecx, [ebp-0x5c]
	movzx eax, word [ecx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	movss xmm1, dword [ebp-0x58]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm3
	jmp Scr_GetObjectUsage_220
Scr_GetObjectUsage_190:
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov [ebp-0x50], edx
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_230
	mov edx, [ebp-0x50]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_240
	movss [ebp-0x4c], xmm3
Scr_GetObjectUsage_270:
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov [ebp-0x48], edx
	mov ecx, edx
	mov edx, [edx+0x4]
	mov eax, [ecx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_250
Scr_GetObjectUsage_290:
	movaps xmm0, xmm3
Scr_GetObjectUsage_340:
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	mov edx, [ebp-0x48]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_260
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_270
Scr_GetObjectUsage_260:
	mov ecx, [ebp-0x50]
	movzx eax, word [ecx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	movss xmm1, dword [ebp-0x4c]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm3
	jmp Scr_GetObjectUsage_280
Scr_GetObjectUsage_120:
	movaps xmm6, xmm3
	jmp Scr_GetObjectUsage_140
Scr_GetObjectUsage_180:
	movss [ebp-0x58], xmm3
	jmp Scr_GetObjectUsage_200
Scr_GetObjectUsage_250:
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov [ebp-0x44], edx
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_290
	mov edx, [ebp-0x44]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_300
	movss [ebp-0x40], xmm3
Scr_GetObjectUsage_330:
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov [ebp-0x3c], edx
	mov ecx, edx
	mov edx, [edx+0x4]
	mov eax, [ecx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_310
Scr_GetObjectUsage_350:
	movaps xmm0, xmm3
Scr_GetObjectUsage_400:
	addss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_320
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_330
Scr_GetObjectUsage_320:
	mov ecx, [ebp-0x44]
	movzx eax, word [ecx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	movss xmm1, dword [ebp-0x40]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm3
	jmp Scr_GetObjectUsage_340
Scr_GetObjectUsage_240:
	movss [ebp-0x4c], xmm3
	jmp Scr_GetObjectUsage_260
Scr_GetObjectUsage_310:
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov [ebp-0x38], edx
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_350
	mov edx, [ebp-0x38]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_360
	movss [ebp-0x34], xmm3
Scr_GetObjectUsage_390:
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov [ebp-0x30], edx
	mov ecx, edx
	mov edx, [edx+0x4]
	mov eax, [ecx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_370
Scr_GetObjectUsage_410:
	movaps xmm0, xmm3
Scr_GetObjectUsage_460:
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	mov ecx, [ebp-0x30]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_380
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_390
Scr_GetObjectUsage_380:
	mov edx, [ebp-0x38]
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	movss xmm1, dword [ebp-0x34]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm3
	jmp Scr_GetObjectUsage_400
Scr_GetObjectUsage_300:
	movss [ebp-0x40], xmm3
	jmp Scr_GetObjectUsage_320
Scr_GetObjectUsage_370:
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov [ebp-0x2c], edx
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_410
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_420
	movaps xmm7, xmm3
Scr_GetObjectUsage_450:
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov [ebp-0x28], edx
	mov ecx, edx
	mov edx, [edx+0x4]
	mov eax, [ecx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_430
Scr_GetObjectUsage_470:
	movaps xmm0, xmm3
Scr_GetObjectUsage_520:
	addss xmm7, xmm0
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_440
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_450
Scr_GetObjectUsage_440:
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	divss xmm7, xmm0
	movaps xmm0, xmm7
	addss xmm0, xmm3
	jmp Scr_GetObjectUsage_460
Scr_GetObjectUsage_360:
	movss [ebp-0x34], xmm3
	jmp Scr_GetObjectUsage_380
Scr_GetObjectUsage_430:
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov [ebp-0x24], edx
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_470
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_480
	movaps xmm5, xmm3
Scr_GetObjectUsage_510:
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov [ebp-0x20], edx
	mov ecx, edx
	mov edx, [edx+0x4]
	mov eax, [ecx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_GetObjectUsage_490
Scr_GetObjectUsage_530:
	movaps xmm0, xmm3
Scr_GetObjectUsage_550:
	addss xmm5, xmm0
	mov ecx, [ebp-0x20]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_GetObjectUsage_500
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_GetObjectUsage_510
Scr_GetObjectUsage_500:
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	divss xmm5, xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm3
	jmp Scr_GetObjectUsage_520
Scr_GetObjectUsage_420:
	movaps xmm7, xmm3
	jmp Scr_GetObjectUsage_440
Scr_GetObjectUsage_490:
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x1c], eax
	mov eax, [eax+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_GetObjectUsage_530
	mov eax, edx
	movss [ebp-0x78], xmm2
	movss [ebp-0x88], xmm4
	movss [ebp-0x98], xmm5
	movss [ebp-0xa8], xmm6
	movss [ebp-0xb8], xmm7
	call Scr_GetObjectUsage_540
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm1, eax
	movss xmm3, dword [_float_1_00000000]
	addss xmm1, xmm3
	divss xmm0, xmm1
	addss xmm0, xmm3
	movss xmm7, dword [ebp-0xb8]
	movss xmm6, dword [ebp-0xa8]
	movss xmm5, dword [ebp-0x98]
	movss xmm4, dword [ebp-0x88]
	movss xmm2, dword [ebp-0x78]
	jmp Scr_GetObjectUsage_550
Scr_GetObjectUsage_480:
	movaps xmm5, xmm3
	jmp Scr_GetObjectUsage_500
	nop


;Scr_AddFieldsForFile(char const*)
Scr_AddFieldsForFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x3c], eax
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, Scr_GetSourceFile_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Scr_GetSourceFile_LoadObj
	cmovz edx, eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call edx
	mov [ebp-0x1c], eax
	mov dword [esp], _cstring_scr_addfields
	call Com_BeginParseSession
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0x34], eax
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov ebx, eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz Scr_AddFieldsForFile_10
Scr_AddFieldsForFile_100:
	mov edi, _cstring_float
	mov ecx, 0x6
	cld
	mov esi, eax
	repe cmpsb
	mov edx, 0x0
	jz Scr_AddFieldsForFile_20
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Scr_AddFieldsForFile_20:
	test edx, edx
	jz Scr_AddFieldsForFile_30
	mov edi, _cstring_int
	mov ecx, 0x4
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Scr_AddFieldsForFile_40
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Scr_AddFieldsForFile_40:
	test edx, edx
	jnz Scr_AddFieldsForFile_50
	mov dword [ebp-0x30], 0x6
Scr_AddFieldsForFile_170:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov [ebp-0x38], eax
	mov edx, [ebp-0x1c]
	test edx, edx
	jz Scr_AddFieldsForFile_60
Scr_AddFieldsForFile_130:
	mov edi, eax
Scr_AddFieldsForFile_140:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [ebp-0x40], ecx
	mov eax, ecx
	sub eax, 0x1
	js Scr_AddFieldsForFile_70
	mov esi, [ebp-0x38]
	add esi, eax
	xor edi, edi
Scr_AddFieldsForFile_80:
	movsx eax, byte [esi]
	mov [esp], eax
	call tolower
	mov [esi], al
	add edi, 0x1
	sub esi, 0x1
	cmp [ebp-0x40], edi
	jnz Scr_AddFieldsForFile_80
Scr_AddFieldsForFile_70:
	mov ecx, [ebp-0x38]
	mov [esp], ecx
	call SL_GetCanonicalString
	mov [ebp-0x2c], eax
	mov ebx, [scrVarPub]
	cmp byte [ebx], 0x0
	jnz Scr_AddFieldsForFile_90
Scr_AddFieldsForFile_110:
	mov eax, [ebp-0x34]
	mov [esp], eax
	call TempMemorySetPos
	mov eax, [ebp-0x40]
	add eax, 0x4
	mov [esp], eax
	call TempMalloc
	mov ebx, eax
	mov edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	mov ecx, [ebp-0x40]
	lea eax, [ebx+ecx]
	movzx edx, word [ebp-0x2c]
	mov [eax], dx
	movzx ecx, byte [ebp-0x30]
	mov [eax+0x2], cl
	lea edx, [eax+0x3]
	mov [ebp-0x34], edx
	mov byte [eax+0x3], 0x0
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov ebx, eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz Scr_AddFieldsForFile_100
Scr_AddFieldsForFile_10:
	call Com_EndParseSession
	call Hunk_ClearTempMemoryHigh
Scr_AddFieldsForFile_200:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddFieldsForFile_120:
	lea eax, [esi+ebx]
	lea ebx, [eax+0x3]
	cmp byte [eax+0x3], 0x0
	jz Scr_AddFieldsForFile_110
Scr_AddFieldsForFile_90:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	mov esi, ecx
	not esi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x38]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Scr_AddFieldsForFile_120
	cmp word [esi+ebx], 0x0
	jz Scr_AddFieldsForFile_110
	mov edx, [ebp-0x3c]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x38]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_duplicate_key_s_
	mov dword [esp], 0x2
	call Com_Error
	jmp Scr_AddFieldsForFile_110
Scr_AddFieldsForFile_30:
	mov dword [ebp-0x30], 0x5
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov [ebp-0x38], eax
	mov edx, [ebp-0x1c]
	test edx, edx
	jnz Scr_AddFieldsForFile_130
Scr_AddFieldsForFile_60:
	mov edx, [ebp-0x3c]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_missing_field_na
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	mov edi, [ebp-0x38]
	jmp Scr_AddFieldsForFile_140
Scr_AddFieldsForFile_50:
	mov edi, _cstring_string
	mov ecx, 0x7
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Scr_AddFieldsForFile_150
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Scr_AddFieldsForFile_150:
	test edx, edx
	jnz Scr_AddFieldsForFile_160
	mov dword [ebp-0x30], 0x2
	jmp Scr_AddFieldsForFile_170
Scr_AddFieldsForFile_160:
	mov edi, _cstring_vector
	mov ecx, 0x7
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Scr_AddFieldsForFile_180
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Scr_AddFieldsForFile_180:
	test edx, edx
	jnz Scr_AddFieldsForFile_190
	mov dword [ebp-0x30], 0x4
	jmp Scr_AddFieldsForFile_170
Scr_AddFieldsForFile_190:
	mov ecx, [ebp-0x3c]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_type_s_i
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp Scr_AddFieldsForFile_200
	nop


;GetNewVariableIndexInternal3(unsigned int, unsigned int, unsigned int)
GetNewVariableIndexInternal3:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov [ebp-0x44], eax
	mov [ebp-0x48], edx
	mov [ebp-0x4c], ecx
	mov eax, ecx
	shl eax, 0x4
	lea edi, [eax+0x80020]
	lea eax, [edi+scrVarGlob]
	mov [ebp-0x2c], eax
	movzx edx, word [edi+scrVarGlob]
	mov [ebp-0x32], dx
	movzx edx, dx
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x30], eax
	mov ecx, [eax+0x8]
	and ecx, 0x60
	mov [ebp-0x28], ecx
	jnz GetNewVariableIndexInternal3_10
	mov eax, [ebp-0x2c]
	movzx ecx, word [eax+0xc]
	mov eax, [ebp-0x30]
	movzx esi, word [eax+0x4]
	cmp ecx, edx
	jz GetNewVariableIndexInternal3_20
	mov eax, [ebp-0x2c]
	test byte [eax+0x8], 0x60
	jz GetNewVariableIndexInternal3_30
	movzx edx, word [ebp-0x4c]
	mov [ebp-0x22], dx
	mov ebx, [ebp-0x30]
GetNewVariableIndexInternal3_110:
	mov eax, [ebp-0x2c]
	movzx ecx, word [eax+0x2]
	mov edx, scrVarGlob+0x80020
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+edx+0x4], si
	shl esi, 0x4
	mov [esi+edx+0x2], cx
	mov dword [ebx+0x8], 0x40
	movzx edx, word [ebp-0x22]
	mov [ebx+0xc], dx
GetNewVariableIndexInternal3_100:
	movzx eax, byte [ebx+0x8]
	mov edx, [ebp-0x48]
	shl edx, 0x8
	or eax, edx
	mov [ebx+0x8], eax
	shl dword [ebp-0x44], 0x4
	mov edx, [ebp-0x44]
	add edx, scrVarGlob+0x10
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jz GetNewVariableIndexInternal3_40
GetNewVariableIndexInternal3_160:
	mov eax, [ebp-0x4c]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetNewVariableIndexInternal3_10:
	cmp dword [ebp-0x28], 0x40
	jz GetNewVariableIndexInternal3_50
	mov edx, [ebp-0x2c]
	test byte [edx+0x8], 0x60
	jnz GetNewVariableIndexInternal3_60
	mov ebx, edx
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edi, [eax+scrVarGlob+0x80020]
	movzx ecx, word [edi+0x2]
	movzx edx, word [edx+0x4]
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80024], dx
	shl edx, 0x4
	mov [edx+scrVarGlob+0x80022], cx
	mov edx, ebx
GetNewVariableIndexInternal3_130:
	movzx ecx, word [edx+0x2]
	movzx eax, cx
	test cx, cx
	jz GetNewVariableIndexInternal3_70
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], si
GetNewVariableIndexInternal3_70:
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz GetNewVariableIndexInternal3_80
	shl edx, 0x4
	mov [edx+scrVarGlob+0x80022], si
	mov eax, [ebp-0x2c]
	movzx ecx, word [eax+0x2]
GetNewVariableIndexInternal3_80:
	cmp dword [ebp-0x28], 0x20
	jz GetNewVariableIndexInternal3_90
	mov eax, [ebp-0x30]
	mov [eax+0xc], si
GetNewVariableIndexInternal3_230:
	mov [edi+0x2], cx
	movzx edx, word [edi]
	mov ecx, [ebp-0x2c]
	movzx eax, word [ecx]
	mov [edi], ax
	mov [ecx], dx
	mov dword [ebx+0x8], 0x40
	movzx eax, word [ebp-0x4c]
	mov [ebx+0xc], ax
	jmp GetNewVariableIndexInternal3_100
GetNewVariableIndexInternal3_30:
	mov eax, ecx
	shl eax, 0x4
	movzx edx, word [ebp-0x32]
	mov [eax+scrVarGlob+0x80020], dx
	movzx eax, word [ebp-0x4c]
	mov [ebp-0x22], ax
	mov [edi+scrVarGlob], ax
	mov eax, [ebp-0x30]
	mov [eax+0xc], cx
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+0x4]
	mov ecx, [ebp-0x30]
	mov [ecx+0x4], ax
	mov ebx, edx
	jmp GetNewVariableIndexInternal3_110
GetNewVariableIndexInternal3_60:
	movzx eax, word [scrVarGlob+0x80024]
	movzx esi, ax
	test ax, ax
	jz GetNewVariableIndexInternal3_120
GetNewVariableIndexInternal3_250:
	mov eax, esi
	shl eax, 0x4
	add eax, 0x80020
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	movzx eax, word [ebx+0x4]
	mov [scrVarGlob+0x80024], ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x80022], 0x0
	mov edx, [ebp-0x2c]
	jmp GetNewVariableIndexInternal3_130
GetNewVariableIndexInternal3_50:
	mov ecx, [ebp-0x2c]
	test byte [ecx+0x8], 0x60
	jnz GetNewVariableIndexInternal3_140
	movzx eax, word [ecx+0xc]
	mov [ebp-0x20], eax
	mov ecx, eax
	shl ecx, 0x4
	add ecx, 0x80020
	lea edx, [ecx+scrVarGlob]
	mov [ebp-0x1c], edx
	movzx esi, word [edx+0x2]
	mov eax, [ebp-0x2c]
	movzx edx, word [eax+0x4]
	mov ebx, scrVarGlob+0x80020
	mov eax, esi
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+ebx+0x4], dx
	shl edx, 0x4
	mov [edx+ebx+0x2], si
	movzx edx, word [ebp-0x32]
	mov [ecx+scrVarGlob], dx
	movzx ecx, word [ebp-0x4c]
	mov [edi+scrVarGlob], cx
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+0x2]
	mov ecx, [ebp-0x1c]
	mov [ecx+0x2], ax
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	movzx edx, word [ebp-0x20]
	mov [eax+ebx+0xe], dx
	mov ecx, [ebp-0x30]
	movzx eax, word [ecx+0xe]
	shl eax, 0x4
	movzx edx, word [ebp-0x20]
	mov [eax+ebx+0x2], dx
	mov eax, [ecx+0x8]
	and eax, 0xffffff9f
	or eax, 0x20
	mov [ecx+0x8], eax
	mov ecx, [ebp-0x2c]
	mov dword [ecx+0x8], 0x40
	mov ebx, ecx
	jmp GetNewVariableIndexInternal3_100
GetNewVariableIndexInternal3_20:
	movzx edx, word [ebp-0x4c]
	mov [ebp-0x22], dx
	mov ebx, eax
	jmp GetNewVariableIndexInternal3_110
GetNewVariableIndexInternal3_40:
	add word [edx+0x6], 0x1
	cmp dword [ebp-0x48], 0xffff
	ja GetNewVariableIndexInternal3_150
	movzx edx, word [ebp-0x48]
	mov [ebp-0x40], edx
	mov edx, 0x2
	mov eax, [ebp-0x40]
GetNewVariableIndexInternal3_190:
	mov [ebp-0x3c], edx
	sub edx, 0x1
	cmp edx, 0x3
	ja GetNewVariableIndexInternal3_160
	test edx, edx
	jnz GetNewVariableIndexInternal3_170
	add eax, 0x1
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	mov eax, [ebp-0x4c]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetNewVariableIndexInternal3_150:
	cmp dword [ebp-0x48], 0x17fff
	ja GetNewVariableIndexInternal3_180
	mov ecx, [ebp-0x48]
	sub ecx, 0x10000
	mov [ebp-0x40], ecx
	mov edx, 0x1
	mov eax, ecx
	jmp GetNewVariableIndexInternal3_190
GetNewVariableIndexInternal3_170:
	cmp edx, 0x2
	jbe GetNewVariableIndexInternal3_200
	cmp byte [eax-0x1], 0x0
	jnz GetNewVariableIndexInternal3_160
	add word [eax-0x4], 0x1
	jmp GetNewVariableIndexInternal3_160
GetNewVariableIndexInternal3_180:
	mov eax, [ebp-0x48]
	sub eax, 0x800000
	mov [ebp-0x40], eax
	mov edx, 0x6
	jmp GetNewVariableIndexInternal3_190
GetNewVariableIndexInternal3_90:
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0xc]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	lea edx, [eax+0x8002]
	mov eax, edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0xc]
	cmp [ebp-0x4c], eax
	jz GetNewVariableIndexInternal3_210
GetNewVariableIndexInternal3_220:
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	lea edx, [eax+0x8002]
	mov eax, edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0xc]
	cmp eax, [ebp-0x4c]
	jnz GetNewVariableIndexInternal3_220
GetNewVariableIndexInternal3_210:
	shl edx, 0x4
	mov [edx+scrVarGlob+0xc], si
	jmp GetNewVariableIndexInternal3_230
GetNewVariableIndexInternal3_140:
	movzx eax, word [scrVarGlob+0x80024]
	movzx edx, ax
	mov [ebp-0x4c], edx
	test ax, ax
	jz GetNewVariableIndexInternal3_240
	mov eax, edx
GetNewVariableIndexInternal3_260:
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	movzx eax, word [ebx+0x4]
	mov [scrVarGlob+0x80024], ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x80022], 0x0
	mov dword [ebx+0x8], 0x20
	mov ecx, [ebp-0x30]
	movzx eax, word [ecx+0xc]
	mov [ebx+0xc], ax
	movzx eax, word [ebp-0x4c]
	mov [ecx+0xc], ax
	jmp GetNewVariableIndexInternal3_100
GetNewVariableIndexInternal3_120:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp GetNewVariableIndexInternal3_250
GetNewVariableIndexInternal3_200:
	mov edx, [ebp-0x40]
	mov [esp], edx
	call SL_AddRefToString
	jmp GetNewVariableIndexInternal3_160
GetNewVariableIndexInternal3_240:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	mov eax, [ebp-0x4c]
	jmp GetNewVariableIndexInternal3_260


;CopyArray(unsigned int, unsigned int)
CopyArray:
CopyArray_110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x28], edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jnz CopyArray_10
CopyArray_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CopyArray_50:
	mov eax, [edi+0x4]
	mov [esi+0x4], eax
	mov edx, [edi+0x4]
	lea eax, [ebx-0x1]
	cmp eax, 0x3
	ja CopyArray_20
	test eax, eax
	jnz CopyArray_30
	lea eax, [edx+0x1]
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
CopyArray_20:
	shl dword [ebp-0x24], 0x4
	mov edx, [ebp-0x24]
	movzx eax, word [edx+scrVarGlob+0xe]
	movzx edx, ax
	test ax, ax
	jz CopyArray_40
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
CopyArray_10:
	add edx, 0x8002
	mov [ebp-0x24], edx
	mov eax, edx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	mov eax, [edi+0x8]
	mov ebx, eax
	and ebx, 0x1f
	shr eax, 0x8
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp], eax
	call GetVariableIndexInternal
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x80020]
	or [esi+0x8], ebx
	cmp ebx, 0x1
	jnz CopyArray_50
	mov edx, [edi+0x4]
	mov eax, edx
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x18]
	and eax, 0x1f
	cmp eax, 0x15
	jz CopyArray_60
	mov [esi+0x4], edx
	mov eax, [edi+0x4]
	add eax, 0x1
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	jmp CopyArray_20
CopyArray_30:
	cmp eax, 0x2
	jbe CopyArray_70
	cmp byte [edx-0x1], 0x0
	jnz CopyArray_20
	add word [edx-0x4], 0x1
	jmp CopyArray_20
CopyArray_60:
	movzx edx, word [scrVarGlob+0x14]
	mov [ebp-0x1c], dx
	test dx, dx
	jz CopyArray_80
CopyArray_130:
	movzx eax, word [ebp-0x1c]
	shl eax, 0x4
	add eax, 0x10
	mov [ebp-0x2c], eax
	mov ebx, eax
	add ebx, scrVarGlob
	movzx eax, word [eax+scrVarGlob]
	mov [ebp-0x1e], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx edx, word [ecx+0x4]
	mov [ebp-0x1a], dx
	cmp ebx, ecx
	jz CopyArray_90
	test byte [ebx+0x8], 0x60
	jnz CopyArray_100
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1e]
	mov [edx+scrVarGlob+0x10], ax
	movzx eax, word [ebp-0x1c]
	mov edx, [ebp-0x2c]
	mov [edx+scrVarGlob], ax
	movzx edx, word [ebx+0xc]
	mov [ecx+0xc], dx
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
CopyArray_120:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx edx, word [ebp-0x1c]
	mov [ecx+0xc], dx
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx edx, word [ebx]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov [esi+0x4], edx
	mov eax, [edi+0x4]
	call CopyArray_110
	jmp CopyArray_20
CopyArray_70:
	mov [esp], edx
	call SL_AddRefToString
	jmp CopyArray_20
CopyArray_100:
	movzx eax, word [ebp-0x1a]
	jmp CopyArray_120
CopyArray_80:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp CopyArray_130
CopyArray_90:
	mov eax, edx
	jmp CopyArray_120


;MakeVariableExternal(unsigned int, VariableValueInternal*)
MakeVariableExternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x30], eax
	shl eax, 0x4
	add eax, 0x80020
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x28], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jz MakeVariableExternal_10
	mov ecx, [ebp-0x24]
	mov ebx, [ecx+0x8]
MakeVariableExternal_50:
	mov eax, ebx
	and eax, 0x60
	cmp eax, 0x40
	jz MakeVariableExternal_20
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x24]
MakeVariableExternal_30:
	mov ecx, edx
	movzx eax, word [eax+0xc]
	shl eax, 0x4
	add eax, 0x80020
	lea edx, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	cmp [ebp-0x28], edx
	jnz MakeVariableExternal_30
	movzx eax, word [ecx]
	shl eax, 0x4
	mov ecx, [ebp-0x24]
	movzx edx, word [ecx+0xc]
	mov [eax+scrVarGlob+0x8002c], dx
MakeVariableExternal_90:
	movzx ecx, word [ebp-0x30]
	mov eax, [ebp-0x24]
	and ebx, 0xffffff9f
	or ebx, 0x60
	mov [eax+0x8], ebx
	mov [eax+0xc], cx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MakeVariableExternal_10:
	sub word [edx+0x6], 0x1
	mov eax, [ebp-0x24]
	mov ebx, [eax+0x8]
	mov eax, ebx
	shr eax, 0x8
	cmp eax, 0xffff
	ja MakeVariableExternal_40
	movzx esi, ax
	mov eax, 0x2
MakeVariableExternal_150:
	sub eax, 0x1
	cmp eax, 0x3
	ja MakeVariableExternal_50
	test eax, eax
	jz MakeVariableExternal_60
	cmp eax, 0x2
	jbe MakeVariableExternal_70
	cmp byte [esi-0x1], 0x0
	jnz MakeVariableExternal_50
	lea ecx, [esi-0x4]
	movzx eax, word [esi-0x4]
	test ax, ax
	jz MakeVariableExternal_80
	sub eax, 0x1
	mov [esi-0x4], ax
	mov eax, [ebp-0x24]
	mov ebx, [eax+0x8]
	jmp MakeVariableExternal_50
MakeVariableExternal_20:
	mov eax, [ebp-0x24]
	movzx eax, word [eax+0xc]
	mov [ebp-0x1c], eax
	shl eax, 0x4
	add eax, 0x80020
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	cmp [ebp-0x28], edi
	jz MakeVariableExternal_90
	mov eax, [edx+0x8]
	and eax, 0xffffff9f
	or eax, 0x40
	mov [edx+0x8], eax
	mov ecx, [ebp-0x28]
	movzx ecx, word [ecx+0x2]
	mov [ebp-0x2c], cx
	movzx ebx, cx
	mov [ebp-0x20], ebx
	mov eax, [ebp-0x24]
	movzx eax, word [eax+0xe]
	mov [ebp-0x2a], ax
	movzx esi, ax
	movzx ebx, word [edi+0x2]
	movzx ecx, bx
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jnz MakeVariableExternal_100
	test bx, bx
	jnz MakeVariableExternal_110
MakeVariableExternal_170:
	cmp word [ebp-0x2a], 0x0
	jnz MakeVariableExternal_120
MakeVariableExternal_160:
	movzx ecx, word [ebp-0x1c]
MakeVariableExternal_180:
	cmp word [ebp-0x2c], 0x0
	jz MakeVariableExternal_130
	shl dword [ebp-0x20], 0x4
	mov edx, [ebp-0x20]
	movzx eax, word [edx+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], cx
MakeVariableExternal_130:
	mov ebx, [ebp-0x28]
	mov edx, [ebx]
	mov eax, [edi]
	mov [ebx], eax
	mov [edi], edx
	mov eax, [ebp-0x24]
	mov ebx, [eax+0x8]
	and ebx, 0xffffff9f
	or ebx, 0x60
	mov [eax+0x8], ebx
	mov [eax+0xc], cx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MakeVariableExternal_40:
	cmp eax, 0x17fff
	ja MakeVariableExternal_140
	lea esi, [eax-0x10000]
	mov eax, 0x1
	jmp MakeVariableExternal_150
MakeVariableExternal_110:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob+0x80020]
	shl eax, 0x4
	movzx edx, word [ebp-0x30]
	mov [eax+scrVarGlob+0x8002e], dx
	cmp word [ebp-0x2a], 0x0
	jnz MakeVariableExternal_120
	jmp MakeVariableExternal_160
MakeVariableExternal_100:
	shl edx, 0x4
	movzx eax, word [ebp-0x30]
	mov [edx+scrVarGlob+0x80022], ax
	test bx, bx
	jz MakeVariableExternal_170
	jmp MakeVariableExternal_110
MakeVariableExternal_120:
	movzx ecx, word [ebp-0x1c]
	shl esi, 0x4
	mov [esi+scrVarGlob+0x80022], cx
	jmp MakeVariableExternal_180
MakeVariableExternal_140:
	lea esi, [eax-0x800000]
	mov eax, 0x6
	jmp MakeVariableExternal_150
MakeVariableExternal_60:
	mov [esp], esi
	call RemoveRefToObject
	mov edx, [ebp-0x24]
	mov ebx, [edx+0x8]
	jmp MakeVariableExternal_50
MakeVariableExternal_70:
	mov [esp], esi
	call SL_RemoveRefToString
	mov ecx, [ebp-0x24]
	mov ebx, [ecx+0x8]
	jmp MakeVariableExternal_50
MakeVariableExternal_80:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov edx, [ebp-0x24]
	mov ebx, [edx+0x8]
	jmp MakeVariableExternal_50


;Scr_EvalVariableEntityField(unsigned int, unsigned int)
Scr_EvalVariableEntityField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x28], eax
	mov edi, [eax+0x8]
	shr edi, 0x8
	lea ebx, [edx+0x800000]
	and ebx, 0xffffff
	lea eax, [edi+edi*2]
	movzx ecx, word [eax*4+g_classMap]
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	add ecx, eax
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x24], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x80020]
	mov edx, [esi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_EvalVariableEntityField_10
Scr_EvalVariableEntityField_40:
	mov ecx, 0x8002
Scr_EvalVariableEntityField_30:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jnz Scr_EvalVariableEntityField_20
Scr_EvalVariableEntityField_70:
	xor esi, esi
Scr_EvalVariableEntityField_80:
	mov eax, ebx
	mov edx, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalVariableEntityField_10:
	shr edx, 0x8
	cmp ebx, edx
	jz Scr_EvalVariableEntityField_30
	movzx ecx, word [esi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jz Scr_EvalVariableEntityField_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jz Scr_EvalVariableEntityField_50
Scr_EvalVariableEntityField_60:
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jz Scr_EvalVariableEntityField_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz Scr_EvalVariableEntityField_60
Scr_EvalVariableEntityField_50:
	add ecx, 0x8002
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jz Scr_EvalVariableEntityField_70
Scr_EvalVariableEntityField_20:
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	mov [esp+0x8], eax
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x6]
	mov [esp+0x4], eax
	mov [esp], edi
	call GetEntityFieldValue
	mov ebx, eax
	mov esi, edx
	cmp edx, 0x1
	jnz Scr_EvalVariableEntityField_80
	mov [ebp-0x2c], eax
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x10]
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_EvalVariableEntityField_80
	cmp word [edx+0x4], 0x0
	jnz Scr_EvalVariableEntityField_90
	mov esi, 0x1
	jmp Scr_EvalVariableEntityField_80
Scr_EvalVariableEntityField_90:
	mov [esp], ebx
	call RemoveRefToObject
	movzx eax, word [scrVarGlob+0x14]
	mov [ebp-0x1c], ax
	test ax, ax
	jz Scr_EvalVariableEntityField_100
Scr_EvalVariableEntityField_130:
	movzx eax, word [ebp-0x1c]
	shl eax, 0x4
	add eax, 0x10
	mov [ebp-0x30], eax
	mov edi, eax
	add edi, scrVarGlob
	movzx edx, word [eax+scrVarGlob]
	mov [ebp-0x1e], dx
	movzx eax, dx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp edi, ecx
	jz Scr_EvalVariableEntityField_110
	test byte [edi+0x8], 0x60
	jnz Scr_EvalVariableEntityField_120
	movzx edx, word [edi+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1e]
	mov [edx+scrVarGlob+0x10], ax
	movzx eax, word [ebp-0x1c]
	mov edx, [ebp-0x30]
	mov [edx+scrVarGlob], ax
	movzx edx, word [edi+0xc]
	mov [ecx+0xc], dx
	movzx eax, word [edi+0x4]
	mov [ecx+0x4], ax
	mov ecx, edi
	movzx eax, word [ebp-0x1a]
Scr_EvalVariableEntityField_110:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx edx, word [ebp-0x1c]
	mov [ecx+0xc], dx
	mov word [ecx+0xe], 0x0
	mov word [edi+0x2], 0x0
	movzx edx, word [edi]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov ebx, edx
	mov eax, [ebp-0x2c]
	call CopyArray
	mov esi, 0x1
	jmp Scr_EvalVariableEntityField_80
Scr_EvalVariableEntityField_120:
	movzx eax, word [ebp-0x1a]
	jmp Scr_EvalVariableEntityField_110
Scr_EvalVariableEntityField_100:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_EvalVariableEntityField_130


;Scr_MakeValuePrimitive(unsigned int)
Scr_MakeValuePrimitive:
Scr_MakeValuePrimitive_80:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x1c], eax
	mov eax, [eax+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jz Scr_MakeValuePrimitive_10
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_MakeValuePrimitive_50:
	sub eax, 0x7
	cmp eax, 0x4
	ja Scr_MakeValuePrimitive_20
Scr_MakeValuePrimitive_90:
	mov [esp+0x4], edi
	mov [esp], esi
	call RemoveVariable
Scr_MakeValuePrimitive_10:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_MakeValuePrimitive_30
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov eax, [ebx+0x8]
	mov edi, eax
	shr edi, 0x8
	and eax, 0x1f
	cmp eax, 0x1
	jz Scr_MakeValuePrimitive_40
Scr_MakeValuePrimitive_70:
	jae Scr_MakeValuePrimitive_50
Scr_MakeValuePrimitive_20:
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jnz Scr_MakeValuePrimitive_60
Scr_MakeValuePrimitive_30:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_MakeValuePrimitive_60:
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jz Scr_MakeValuePrimitive_30
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov eax, [ebx+0x8]
	mov edi, eax
	shr edi, 0x8
	and eax, 0x1f
	cmp eax, 0x1
	jnz Scr_MakeValuePrimitive_70
Scr_MakeValuePrimitive_40:
	mov eax, [ebx+0x4]
	call Scr_MakeValuePrimitive_80
	test eax, eax
	jz Scr_MakeValuePrimitive_90
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_MakeValuePrimitive_30
	jmp Scr_MakeValuePrimitive_60
	nop


;Scr_CastWeakerPair(VariableValue*, VariableValue*)
Scr_CastWeakerPair:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	mov esi, edx
	mov eax, [eax+0x4]
	mov edx, [edx+0x4]
	cmp eax, edx
	jz Scr_CastWeakerPair_10
	cmp eax, 0x5
	jz Scr_CastWeakerPair_20
	cmp eax, 0x6
	jz Scr_CastWeakerPair_30
	cmp eax, 0x4
	jz Scr_CastWeakerPair_40
Scr_CastWeakerPair_80:
	cmp edx, 0x4
	jnz Scr_CastWeakerPair_50
	cmp eax, 0x5
	jz Scr_CastWeakerPair_60
	cmp eax, 0x6
	jz Scr_CastWeakerPair_70
Scr_CastWeakerPair_50:
	mov [esp+0x4], esi
	mov [esp], ebx
	call Scr_UnmatchingTypesError
Scr_CastWeakerPair_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastWeakerPair_20:
	cmp edx, 0x6
	jnz Scr_CastWeakerPair_80
	mov dword [esi+0x4], 0x5
	cvtsi2ss xmm0, dword [esi]
	movss [esi], xmm0
	jmp Scr_CastWeakerPair_10
Scr_CastWeakerPair_30:
	cmp edx, 0x5
	jnz Scr_CastWeakerPair_80
	mov dword [ebx+0x4], 0x5
	cvtsi2ss xmm0, dword [ebx]
	movss [ebx], xmm0
	jmp Scr_CastWeakerPair_10
Scr_CastWeakerPair_40:
	cmp edx, 0x5
	jz Scr_CastWeakerPair_90
	cmp edx, 0x6
	jnz Scr_CastWeakerPair_80
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea edx, [eax+0x4]
	mov dword [edx-0x4], 0x0
	cvtsi2ss xmm0, dword [esi]
	movss [eax+0x4], xmm0
	cvtsi2ss xmm0, dword [esi]
	movss [edx+0x4], xmm0
	cvtsi2ss xmm0, dword [esi]
	movss [edx+0x8], xmm0
	mov [esi], edx
	mov dword [esi+0x4], 0x4
	jmp Scr_CastWeakerPair_10
Scr_CastWeakerPair_60:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea ecx, [eax+0x4]
	mov dword [ecx-0x4], 0x0
	mov edx, [ebx]
	mov [eax+0x4], edx
	mov eax, [ebx]
	mov [ecx+0x4], eax
	mov eax, [ebx]
	mov [ecx+0x8], eax
	mov [ebx], ecx
	mov dword [ebx+0x4], 0x4
	jmp Scr_CastWeakerPair_10
Scr_CastWeakerPair_70:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea edx, [eax+0x4]
	mov dword [edx-0x4], 0x0
	cvtsi2ss xmm0, dword [ebx]
	movss [eax+0x4], xmm0
	cvtsi2ss xmm0, dword [ebx]
	movss [edx+0x4], xmm0
	cvtsi2ss xmm0, dword [ebx]
	movss [edx+0x8], xmm0
	mov [ebx], edx
	mov dword [ebx+0x4], 0x4
	jmp Scr_CastWeakerPair_10
Scr_CastWeakerPair_90:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea ecx, [eax+0x4]
	mov dword [ecx-0x4], 0x0
	mov edx, [esi]
	mov [eax+0x4], edx
	mov eax, [esi]
	mov [ecx+0x4], eax
	mov eax, [esi]
	mov [ecx+0x8], eax
	mov [esi], ecx
	mov dword [esi+0x4], 0x4
	jmp Scr_CastWeakerPair_10
	nop


;AllocValue()
AllocValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx edi, word [scrVarGlob+0x80024]
	test di, di
	jz AllocValue_10
AllocValue_40:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x80020]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1c], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x80020]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp ebx, ecx
	jz AllocValue_20
	test byte [ebx+0x8], 0x60
	jnz AllocValue_30
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x80020], ax
	mov [esi+scrVarGlob], di
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
AllocValue_20:
	mov [scrVarGlob+0x80024], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x80022], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	mov dword [ecx+0x8], 0x60
	movzx eax, word [ebx]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AllocValue_10:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp AllocValue_40
AllocValue_30:
	movzx eax, word [ebp-0x1a]
	jmp AllocValue_20
	nop


;ClearArray(unsigned int, VariableValue*)
ClearArray:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [ebp-0x54], edx
	test eax, eax
	jnz ClearArray_10
	mov eax, [scrVarPub+0x3c]
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x48], eax
	mov edi, [eax+0x8]
	shr edi, 0x8
	mov ebx, [scrVarPub+0x40]
	add ebx, 0x800000
	and ebx, 0xffffff
	lea eax, [edi+edi*2]
	movzx ecx, word [eax*4+g_classMap]
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	add ecx, eax
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x44], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x80020]
	mov edx, [esi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz ClearArray_20
ClearArray_150:
	mov ecx, 0x8002
ClearArray_140:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jnz ClearArray_30
ClearArray_70:
	xor ebx, ebx
ClearArray_40:
	mov dword [scrVarPub+0x10], 0x1
	mov eax, [ebx*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_an_arra
	call va
	mov [ebp+0x8], eax
ClearArray_60:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
ClearArray_10:
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x4c], eax
	mov ebx, [eax+0x8]
	and ebx, 0x1f
	mov esi, [eax+0x4]
ClearArray_130:
	cmp ebx, 0x1
	jnz ClearArray_40
	mov [ebp-0x50], esi
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov edx, [eax+0x8]
	and edx, 0x1f
	cmp edx, 0x15
	jz ClearArray_50
	mov dword [scrVarPub+0x10], 0x1
	mov eax, [edx*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_an_arra
	call va
	mov [ebp+0x8], eax
	jmp ClearArray_60
ClearArray_30:
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	mov [esp+0x8], eax
	mov edx, [ebp-0x48]
	movzx eax, word [edx+0x6]
	mov [esp+0x4], eax
	mov [esp], edi
	call GetEntityFieldValue
	mov esi, eax
	mov ebx, edx
	test edx, edx
	jz ClearArray_70
	cmp edx, 0x1
	jz ClearArray_80
ClearArray_350:
	lea eax, [ebx-0x1]
	cmp eax, 0x3
	ja ClearArray_90
	test eax, eax
	jz ClearArray_100
	cmp eax, 0x2
	jbe ClearArray_110
	cmp byte [esi-0x1], 0x0
	jnz ClearArray_90
	lea ecx, [esi-0x4]
	movzx eax, word [esi-0x4]
	test ax, ax
	jz ClearArray_120
	sub eax, 0x1
	mov [esi-0x4], ax
	mov dword [ebp-0x4c], 0x0
	jmp ClearArray_130
ClearArray_20:
	shr edx, 0x8
	cmp ebx, edx
	jz ClearArray_140
	movzx eax, word [esi+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x44], eax
	jz ClearArray_150
ClearArray_160:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jz ClearArray_140
	movzx eax, word [edx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x44], eax
	jnz ClearArray_160
	jmp ClearArray_150
ClearArray_50:
	cmp word [eax+0x4], 0x0
	jnz ClearArray_170
ClearArray_240:
	mov edx, [ebp-0x54]
	mov eax, [edx+0x4]
	cmp eax, 0x6
	jz ClearArray_180
	cmp eax, 0x2
	jz ClearArray_190
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_an_arra1
	call va
	mov [ebp+0x8], eax
	jmp ClearArray_60
ClearArray_90:
	mov dword [ebp-0x4c], 0x0
	jmp ClearArray_130
ClearArray_190:
	mov edx, [ebp-0x54]
	mov eax, [edx]
	mov [esp], eax
	call SL_RemoveRefToString
	mov eax, [ebp-0x54]
	mov ebx, [eax]
	mov [ebp-0x24], esi
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	lea esi, [edx+esi]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz ClearArray_200
ClearArray_260:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ClearArray_170:
	mov [esp], esi
	call RemoveRefToObject
	movzx eax, word [scrVarGlob+0x14]
	mov [ebp-0x3c], ax
	test ax, ax
	jz ClearArray_210
ClearArray_360:
	movzx eax, word [ebp-0x3c]
	shl eax, 0x4
	add eax, 0x10
	mov [ebp-0x58], eax
	mov ebx, eax
	add ebx, scrVarGlob
	movzx edx, word [eax+scrVarGlob]
	mov [ebp-0x3e], dx
	movzx eax, dx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x3a], ax
	cmp ebx, ecx
	jz ClearArray_220
	test byte [ebx+0x8], 0x60
	jnz ClearArray_230
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x3e]
	mov [edx+scrVarGlob+0x10], ax
	movzx eax, word [ebp-0x3c]
	mov edx, [ebp-0x58]
	mov [edx+scrVarGlob], ax
	movzx edx, word [ebx+0xc]
	mov [ecx+0xc], dx
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x3a]
ClearArray_220:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx edx, word [ebp-0x3c]
	mov [ecx+0xc], dx
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx ebx, word [ebx]
	mov eax, ebx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov esi, ebx
	mov edx, ebx
	mov eax, [ebp-0x50]
	call CopyArray
	mov eax, [ebp-0x4c]
	mov [eax+0x4], ebx
	jmp ClearArray_240
ClearArray_180:
	mov edx, [edx]
	lea eax, [edx+0x7e8000]
	cmp eax, 0xfe7fff
	ja ClearArray_250
	mov [ebp-0x34], esi
	lea ebx, [edx+0x800000]
	and ebx, 0xffffff
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	lea esi, [edx+esi]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jnz ClearArray_260
	shr ecx, 0x8
	cmp ebx, ecx
	jz ClearArray_270
ClearArray_280:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz ClearArray_260
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz ClearArray_280
ClearArray_270:
	test esi, esi
	jz ClearArray_260
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov eax, [ebp-0x34]
	add eax, 0x1
	mov [ebp-0x38], eax
	mov edx, eax
	shl edx, 0x4
	add edx, scrVarGlob
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	add ebx, scrVarGlob+0x80020
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja ClearArray_290
	test eax, eax
	jz ClearArray_300
	cmp eax, 0x2
	jbe ClearArray_310
	cmp byte [edx-0x1], 0x0
	jnz ClearArray_290
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz ClearArray_320
	sub eax, 0x1
	mov [edx-0x4], ax
ClearArray_290:
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x2c], eax
	movzx edx, word [ebx+0xe]
	mov [ebp-0x2e], dx
	movzx ecx, dx
	movzx eax, word [eax+0x2]
	movzx edi, ax
	test ax, ax
	jz ClearArray_330
	mov eax, edi
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], cx
ClearArray_490:
	cmp word [ebp-0x2e], 0x0
	jz ClearArray_340
	shl ecx, 0x4
	mov [ecx+scrVarGlob+0x80022], di
ClearArray_480:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov eax, [ebp-0x2c]
ClearArray_450:
	mov word [eax+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], si
	mov [scrVarGlob+0x80024], si
	jmp ClearArray_260
ClearArray_80:
	shl eax, 0x4
	cmp word [eax+scrVarGlob+0x14], 0x0
	jnz ClearArray_350
	mov [esp], esi
	call RemoveRefToObject
	mov dword [scrVarPub+0x10], 0x1
	mov dword [ebp+0x8], _cstring_readonly_array_c
	jmp ClearArray_60
ClearArray_100:
	mov [esp], esi
	call RemoveRefToObject
	mov dword [ebp-0x4c], 0x0
	jmp ClearArray_130
ClearArray_230:
	movzx eax, word [ebp-0x3a]
	jmp ClearArray_220
ClearArray_110:
	mov [esp], esi
	call SL_RemoveRefToString
	mov dword [ebp-0x4c], 0x0
	jmp ClearArray_130
ClearArray_210:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp ClearArray_360
ClearArray_250:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_array_index_d_ou
	call va
	mov [ebp+0x8], eax
	jmp ClearArray_60
ClearArray_200:
	shr ecx, 0x8
	cmp ebx, ecx
	jz ClearArray_370
ClearArray_380:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz ClearArray_260
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz ClearArray_380
ClearArray_370:
	test esi, esi
	jz ClearArray_260
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov eax, [ebp-0x24]
	add eax, 0x1
	mov [ebp-0x28], eax
	mov edx, eax
	shl edx, 0x4
	add edx, scrVarGlob
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	add ebx, scrVarGlob+0x80020
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja ClearArray_390
	test eax, eax
	jz ClearArray_400
	cmp eax, 0x2
	jbe ClearArray_410
	cmp byte [edx-0x1], 0x0
	jnz ClearArray_390
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz ClearArray_420
	sub eax, 0x1
	mov [edx-0x4], ax
ClearArray_390:
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx edx, word [ebx+0xe]
	mov [ebp-0x1e], dx
	movzx ecx, dx
	movzx eax, word [eax+0x2]
	movzx edi, ax
	test ax, ax
	jz ClearArray_430
	mov eax, edi
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], cx
ClearArray_470:
	cmp word [ebp-0x1e], 0x0
	jz ClearArray_440
	shl ecx, 0x4
	mov [ecx+scrVarGlob+0x80022], di
ClearArray_460:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov eax, [ebp-0x1c]
	jmp ClearArray_450
ClearArray_120:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov dword [ebp-0x4c], 0x0
	jmp ClearArray_130
ClearArray_440:
	shl dword [ebp-0x28], 0x4
	mov edx, [ebp-0x28]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl edi, 0x4
	movzx edx, word [edi+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp ClearArray_460
ClearArray_430:
	mov eax, [ebp-0x28]
	shl eax, 0x4
	mov edx, ecx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0xe], dx
	jmp ClearArray_470
ClearArray_340:
	shl dword [ebp-0x38], 0x4
	mov edx, [ebp-0x38]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl edi, 0x4
	movzx edx, word [edi+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp ClearArray_480
ClearArray_330:
	mov eax, [ebp-0x38]
	shl eax, 0x4
	mov edx, ecx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0xe], dx
	jmp ClearArray_490
ClearArray_400:
	mov [esp], edx
	call RemoveRefToObject
	jmp ClearArray_390
ClearArray_300:
	mov [esp], edx
	call RemoveRefToObject
	jmp ClearArray_290
ClearArray_410:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp ClearArray_390
ClearArray_310:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp ClearArray_290
ClearArray_420:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp ClearArray_390
ClearArray_320:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp ClearArray_290
	add [eax], al


;FindObject(unsigned int)
FindObject:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x80024]
	pop ebp
	ret
	nop


;SGetObjectA(unsigned int)
SGetObjectA:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	shl eax, 0x4
	lea edi, [eax+scrVarGlob+0x80020]
	mov eax, [edi+0x8]
	test al, 0x1f
	jnz SGetObjectA_10
	or eax, 0x1
	mov [edi+0x8], eax
	movzx eax, word [scrVarGlob+0x14]
	mov [ebp-0x1c], ax
	test ax, ax
	jz SGetObjectA_20
SGetObjectA_50:
	movzx eax, word [ebp-0x1c]
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1e], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp ebx, ecx
	jz SGetObjectA_30
	test byte [ebx+0x8], 0x60
	jz SGetObjectA_40
	movzx eax, word [ebp-0x1a]
SGetObjectA_30:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx eax, word [ebp-0x1c]
	mov [ecx+0xc], ax
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx edx, word [ebx]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x72
	mov word [eax+0x4], 0x0
	mov [edi+0x4], edx
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SGetObjectA_40:
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1e]
	mov [edx+scrVarGlob+0x10], ax
	movzx eax, word [ebp-0x1c]
	mov [esi+scrVarGlob], ax
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
	jmp SGetObjectA_30
SGetObjectA_20:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp SGetObjectA_50
SGetObjectA_10:
	mov eax, [edi+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_EvalOr(VariableValue*, VariableValue*)
Scr_EvalOr:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp dword [ecx+0x4], 0x6
	jz Scr_EvalOr_10
Scr_EvalOr_20:
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalOr_10:
	cmp dword [edx+0x4], 0x6
	jnz Scr_EvalOr_20
	mov eax, [ecx]
	or eax, [edx]
	mov [ecx], eax
	pop ebp
	ret
	nop


;AllocObject()
AllocObject:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz AllocObject_10
AllocObject_40:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1c], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp ebx, ecx
	jz AllocObject_20
	test byte [ebx+0x8], 0x60
	jnz AllocObject_30
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
AllocObject_20:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx eax, word [ebx]
	mov edx, eax
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov dword [edx+0x8], 0x72
	mov word [edx+0x4], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AllocObject_10:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp AllocObject_40
AllocObject_30:
	movzx eax, word [ebp-0x1a]
	jmp AllocObject_20
	nop


;AllocThread(unsigned int)
AllocThread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz AllocThread_10
AllocThread_40:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1c], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp ebx, ecx
	jz AllocThread_20
	test byte [ebx+0x8], 0x60
	jnz AllocThread_30
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
AllocThread_20:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx eax, word [ebx]
	mov edx, eax
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov dword [edx+0x8], 0x6e
	mov word [edx+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [edx+0x6], cx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AllocThread_10:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp AllocThread_40
AllocThread_30:
	movzx eax, word [ebp-0x1a]
	jmp AllocThread_20


;ClearObject(unsigned int)
ClearObject:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ecx, [ebp+0x8]
	lea edi, [ecx+0x1]
	mov eax, edi
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	add eax, scrVarGlob
	mov [ebp-0x28], eax
	movzx eax, word [eax+0xe]
	test ax, ax
	jz ClearObject_10
	movzx eax, ax
	shl eax, 0x4
	mov ebx, [eax+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	lea esi, [ecx+edx]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x24], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz ClearObject_20
ClearObject_140:
	xor esi, esi
ClearObject_30:
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov edx, [ebp-0x28]
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	movzx eax, word [ebx+scrVarGlob+0x8002e]
	movzx esi, ax
	test ax, ax
	jnz ClearObject_30
	mov eax, [ebp-0x28]
	movzx eax, word [eax+0xe]
	mov [ebp-0x20], eax
	shl edi, 0x4
	mov [ebp-0x30], edi
	jmp ClearObject_40
ClearObject_100:
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], dx
	cmp word [ebp-0x4a], 0x0
	jz ClearObject_50
ClearObject_110:
	shl edx, 0x4
	mov [edx+scrVarGlob+0x80022], cx
ClearObject_120:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov ecx, [ebp-0x1c]
	mov word [ecx+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], si
	mov [scrVarGlob+0x80024], si
	cmp word [ebp-0x2a], 0x0
	jz ClearObject_10
	mov eax, [ebp-0x20]
ClearObject_40:
	add eax, 0x8002
	shl eax, 0x4
	movzx edx, word [eax+scrVarGlob+0xe]
	mov [ebp-0x2a], dx
	movzx edx, dx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [ebp-0x20], edx
	lea ebx, [eax+scrVarGlob]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja ClearObject_60
	test eax, eax
	jz ClearObject_70
	cmp eax, 0x2
	jbe ClearObject_80
	cmp byte [edx-0x1], 0x0
	jnz ClearObject_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz ClearObject_90
	sub eax, 0x1
	mov [edx-0x4], ax
ClearObject_60:
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx ecx, word [ebx+0xe]
	mov [ebp-0x4a], cx
	movzx edx, cx
	movzx eax, word [eax+0x2]
	movzx ecx, ax
	test ax, ax
	jnz ClearObject_100
	mov eax, edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	mov edi, [ebp-0x30]
	mov [edi+scrVarGlob+0xe], ax
	cmp word [ebp-0x4a], 0x0
	jnz ClearObject_110
ClearObject_50:
	mov edx, [ebp-0x30]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl ecx, 0x4
	movzx edx, word [ecx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp ClearObject_120
ClearObject_10:
	mov edi, [ebp-0x28]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz ClearObject_130
	sub eax, 0x1
	mov [edi+0x4], ax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ClearObject_130:
	movzx edx, word [edi+0xc]
	mov dword [edi+0x8], 0x0
	movzx eax, word [scrVarGlob+0x14]
	mov ecx, [ebp-0x28]
	mov [ecx+0x4], ax
	mov eax, edx
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx eax, word [scrVarGlob+0x14]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	mov [scrVarGlob+0x14], dx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ClearObject_70:
	mov [esp], edx
	call RemoveRefToObject
	jmp ClearObject_60
ClearObject_80:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp ClearObject_60
ClearObject_20:
	shr ecx, 0x8
	cmp ebx, ecx
	jz ClearObject_30
ClearObject_150:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jz ClearObject_140
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz ClearObject_150
	jmp ClearObject_30
ClearObject_90:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp ClearObject_60
	nop


;GetVariable(unsigned int, unsigned int)
GetVariable:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetVariableIndexInternal
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	leave
	ret


;Scr_EvalAnd(VariableValue*, VariableValue*)
Scr_EvalAnd:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp dword [ecx+0x4], 0x6
	jz Scr_EvalAnd_10
Scr_EvalAnd_20:
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalAnd_10:
	cmp dword [edx+0x4], 0x6
	jnz Scr_EvalAnd_20
	mov eax, [ecx]
	and eax, [edx]
	mov [ecx], eax
	pop ebp
	ret
	nop


;Scr_EvalMod(VariableValue*, VariableValue*)
Scr_EvalMod:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp dword [ecx+0x4], 0x6
	jz Scr_EvalMod_10
Scr_EvalMod_20:
	mov [ebp+0xc], eax
	mov [ebp+0x8], ecx
	pop ebx
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalMod_10:
	cmp dword [eax+0x4], 0x6
	jnz Scr_EvalMod_20
	mov edx, [eax]
	test edx, edx
	jz Scr_EvalMod_30
	mov eax, [ecx]
	mov ebx, edx
	cdq
	idiv ebx
	mov [ecx], edx
	pop ebx
	pop ebp
	ret
Scr_EvalMod_30:
	mov dword [ecx], 0x0
	mov dword [ebp+0x8], _cstring_divide_by_0
	pop ebx
	pop ebp
	jmp Scr_Error
	nop


;Scr_GetSelf(unsigned int)
Scr_GetSelf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x16]
	pop ebp
	ret
	add [eax], al


;FindEntityId(int, unsigned int)
FindEntityId:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0x800000
	and ebx, 0xffffff
	lea eax, [eax+eax*2]
	movzx ecx, word [eax*4+g_classMap+0x2]
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	add ecx, eax
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x80020]
	mov edx, [esi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz FindEntityId_10
FindEntityId_40:
	mov ecx, 0x8002
FindEntityId_30:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jz FindEntityId_20
FindEntityId_70:
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindEntityId_10:
	shr edx, 0x8
	cmp ebx, edx
	jz FindEntityId_30
	movzx ecx, word [esi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz FindEntityId_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jz FindEntityId_50
FindEntityId_60:
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz FindEntityId_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz FindEntityId_60
FindEntityId_50:
	add ecx, 0x8002
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jnz FindEntityId_70
FindEntityId_20:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FindVariable(unsigned int, unsigned int)
FindVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0xc]
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	add ecx, [ebp+0x8]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz FindVariable_10
FindVariable_40:
	mov ecx, 0x8002
FindVariable_20:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindVariable_10:
	shr edx, 0x8
	cmp esi, edx
	jz FindVariable_20
	movzx ecx, word [ebx+0xc]
	jmp FindVariable_30
FindVariable_50:
	movzx ecx, word [edx+0xc]
FindVariable_30:
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz FindVariable_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jnz FindVariable_50
	add ecx, 0x8002
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;GetArraySize(unsigned int)
GetArraySize:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x16]
	pop ebp
	ret


;GetValueType(unsigned int)
GetValueType:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x80028]
	and eax, 0x1f
	pop ebp
	ret


;IsObjectFree(unsigned int)
IsObjectFree:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	test byte [eax+scrVarGlob+0x18], 0x60
	setz al
	movzx eax, al
	pop ebp
	ret


;Scr_CastBool(VariableValue*)
Scr_CastBool:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x4]
	cmp esi, 0x6
	jz Scr_CastBool_10
	cmp esi, 0x5
	jz Scr_CastBool_20
	mov edx, [ebx]
	lea eax, [esi-0x1]
	cmp eax, 0x3
	jbe Scr_CastBool_30
Scr_CastBool_60:
	mov dword [ebx+0x4], 0x0
	mov eax, [esi*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cannot_cast_s_to
	call va
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_Error
Scr_CastBool_30:
	test eax, eax
	jz Scr_CastBool_40
	cmp eax, 0x2
	jbe Scr_CastBool_50
	cmp byte [edx-0x1], 0x0
	jnz Scr_CastBool_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_CastBool_70
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_CastBool_60
Scr_CastBool_10:
	xor eax, eax
	cmp dword [ebx], 0x0
	setnz al
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastBool_20:
	mov dword [ebx+0x4], 0x6
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastBool_40:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_CastBool_60
Scr_CastBool_50:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_CastBool_60
Scr_CastBool_70:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_CastBool_60


;Scr_EvalExOr(VariableValue*, VariableValue*)
Scr_EvalExOr:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp dword [ecx+0x4], 0x6
	jz Scr_EvalExOr_10
Scr_EvalExOr_20:
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalExOr_10:
	cmp dword [edx+0x4], 0x6
	jnz Scr_EvalExOr_20
	mov eax, [ecx]
	xor eax, [edx]
	mov [ecx], eax
	pop ebp
	ret
	nop


;Scr_EvalLess(VariableValue*, VariableValue*)
Scr_EvalLess:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Scr_CastWeakerPair
	mov eax, [ebx+0x4]
	cmp eax, 0x5
	jz Scr_EvalLess_10
	cmp eax, 0x6
	jz Scr_EvalLess_20
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	pop ebx
	pop esi
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalLess_10:
	mov dword [ebx+0x4], 0x6
	movss xmm0, dword [esi]
	xor eax, eax
	ucomiss xmm0, [ebx]
	seta al
	mov [ebx], eax
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalLess_20:
	mov eax, [ebx]
	cmp eax, [esi]
	setl al
	movzx eax, al
	mov [ebx], eax
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_EvalPlus(VariableValue*, VariableValue*)
Scr_EvalPlus:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov edx, [esi+0x4]
	mov eax, [edi+0x4]
	cmp edx, eax
	jz Scr_EvalPlus_10
	jl Scr_EvalPlus_20
	cmp eax, 0x2
	jz Scr_EvalPlus_30
	cmp eax, 0x5
	jz Scr_EvalPlus_40
Scr_EvalPlus_120:
	mov [esp+0x4], edi
	mov [esp], esi
	call Scr_UnmatchingTypesError
	mov edx, [esi+0x4]
Scr_EvalPlus_10:
	cmp edx, 0x4
	jz Scr_EvalPlus_50
Scr_EvalPlus_200:
	cmp edx, 0x4
	jg Scr_EvalPlus_60
	cmp edx, 0x2
	jz Scr_EvalPlus_70
Scr_EvalPlus_90:
	mov [esp+0x4], edi
	mov [esp], esi
	call Scr_UnmatchingTypesError
Scr_EvalPlus_100:
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalPlus_60:
	cmp edx, 0x5
	jz Scr_EvalPlus_80
	cmp edx, 0x6
	jnz Scr_EvalPlus_90
	mov eax, [esi]
	add eax, [edi]
	mov [esi], eax
	jmp Scr_EvalPlus_100
Scr_EvalPlus_20:
	cmp edx, 0x2
	jz Scr_EvalPlus_110
	cmp edx, 0x5
	jnz Scr_EvalPlus_120
Scr_EvalPlus_240:
	cmp eax, 0x6
	jnz Scr_EvalPlus_120
	mov dword [edi+0x4], 0x5
	cvtsi2ss xmm0, dword [edi]
	movss [edi], xmm0
	mov edx, [esi+0x4]
	jmp Scr_EvalPlus_10
Scr_EvalPlus_50:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea ebx, [eax+0x4]
	mov dword [ebx-0x4], 0x0
	mov edx, [esi]
	mov ecx, [edi]
	movss xmm0, dword [edx]
	addss xmm0, [ecx]
	movss [eax+0x4], xmm0
	mov eax, [esi]
	mov edx, [edi]
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [ebx+0x4], xmm0
	mov eax, [esi]
	mov edx, [edi]
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	movss [ebx+0x8], xmm0
	mov edx, [esi]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalPlus_130
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalPlus_140
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalPlus_130:
	mov edx, [edi]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalPlus_150
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalPlus_160
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalPlus_150:
	mov [esi], ebx
Scr_EvalPlus_280:
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalPlus_30:
	cmp edx, 0x5
	jz Scr_EvalPlus_170
	cmp edx, 0x6
	jz Scr_EvalPlus_180
	cmp edx, 0x4
	jz Scr_EvalPlus_190
Scr_EvalPlus_40:
	cmp edx, 0x6
	jnz Scr_EvalPlus_120
	mov dl, 0x5
	mov dword [esi+0x4], 0x5
	cvtsi2ss xmm0, dword [esi]
	movss [esi], xmm0
	jmp Scr_EvalPlus_200
Scr_EvalPlus_80:
	movss xmm0, dword [esi]
	addss xmm0, [edi]
	movss [esi], xmm0
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalPlus_70:
	mov eax, [esi]
	mov [esp], eax
	call SL_ConvertToString
	mov ebx, eax
	mov eax, [edi]
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x201c], eax
	mov eax, [esi]
	mov [esp], eax
	call SL_GetStringLen
	mov [ebp-0x2020], eax
	mov eax, [edi]
	mov [esp], eax
	call SL_GetStringLen
	mov edx, [ebp-0x2020]
	lea eax, [edx+eax+0x1]
	mov [ebp-0x2024], eax
	cmp eax, 0x2000
	jle Scr_EvalPlus_210
	mov eax, [esi]
	mov [esp], eax
	call SL_RemoveRefToString
	mov eax, [edi]
	mov [esp], eax
	call SL_RemoveRefToString
	mov dword [esi+0x4], 0x0
	mov dword [edi+0x4], 0x0
	mov eax, [ebp-0x201c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cannot_concat_s_
	call va
	mov [esp], eax
	call Scr_Error
	jmp Scr_EvalPlus_100
Scr_EvalPlus_110:
	cmp eax, 0x5
	jz Scr_EvalPlus_220
	cmp eax, 0x6
	jz Scr_EvalPlus_230
	cmp eax, 0x4
	jnz Scr_EvalPlus_240
	mov dword [edi+0x4], 0x2
	mov ebx, [edi]
	mov [esp], ebx
	call SL_GetStringForVector
	mov [edi], eax
	cmp byte [ebx-0x1], 0x0
	jz Scr_EvalPlus_250
Scr_EvalPlus_260:
	mov edx, [esi+0x4]
	jmp Scr_EvalPlus_10
Scr_EvalPlus_210:
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x2018]
	mov [esp], ebx
	call strcpy
	mov edx, [ebp-0x201c]
	mov [esp+0x4], edx
	mov edx, [ebp-0x2020]
	lea eax, [ebx+edx]
	mov [esp], eax
	call strcpy
	mov dword [esp+0xc], 0xf
	mov eax, [ebp-0x2024]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SL_GetStringOfSize
	mov ebx, eax
	mov eax, [esi]
	mov [esp], eax
	call SL_RemoveRefToString
	mov eax, [edi]
	mov [esp], eax
	call SL_RemoveRefToString
	mov [esi], ebx
	jmp Scr_EvalPlus_100
Scr_EvalPlus_190:
	mov dword [esi+0x4], 0x2
	mov ebx, [esi]
	mov [esp], ebx
	call SL_GetStringForVector
	mov [esi], eax
	cmp byte [ebx-0x1], 0x0
	jnz Scr_EvalPlus_260
Scr_EvalPlus_250:
	lea edx, [ebx-0x4]
	movzx eax, word [ebx-0x4]
	test ax, ax
	jz Scr_EvalPlus_270
	sub eax, 0x1
	mov [ebx-0x4], ax
	mov edx, [esi+0x4]
	jmp Scr_EvalPlus_10
Scr_EvalPlus_140:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalPlus_130
Scr_EvalPlus_160:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov [esi], ebx
	jmp Scr_EvalPlus_280
Scr_EvalPlus_170:
	mov dword [esi+0x4], 0x2
	mov eax, [esi]
	mov [esp], eax
	call SL_GetStringForFloat
	mov [esi], eax
	mov edx, [esi+0x4]
	jmp Scr_EvalPlus_10
Scr_EvalPlus_220:
	mov dword [edi+0x4], 0x2
	mov eax, [edi]
	mov [esp], eax
	call SL_GetStringForFloat
	mov [edi], eax
	mov edx, [esi+0x4]
	jmp Scr_EvalPlus_10
Scr_EvalPlus_230:
	mov dword [edi+0x4], 0x2
	mov eax, [edi]
	mov [esp], eax
	call SL_GetStringForInt
	mov [edi], eax
	mov edx, [esi+0x4]
	jmp Scr_EvalPlus_10
Scr_EvalPlus_180:
	mov dword [esi+0x4], 0x2
	mov eax, [esi]
	mov [esp], eax
	call SL_GetStringForInt
	mov [esi], eax
	mov edx, [esi+0x4]
	jmp Scr_EvalPlus_10
Scr_EvalPlus_270:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	mov edx, [esi+0x4]
	jmp Scr_EvalPlus_10
	nop


;Scr_GetVarId(unsigned int)
Scr_GetVarId:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	pop ebp
	ret


;AddRefToValue(int, VariableUnion)
AddRefToValue:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	sub edx, 0x1
	cmp edx, 0x3
	ja AddRefToValue_10
	test edx, edx
	jz AddRefToValue_20
	cmp edx, 0x2
	jbe AddRefToValue_30
	cmp byte [eax-0x1], 0x0
	jnz AddRefToValue_10
	add word [eax-0x4], 0x1
AddRefToValue_10:
	pop ebp
	ret
AddRefToValue_20:
	add eax, 0x1
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	pop ebp
	ret
AddRefToValue_30:
	mov [ebp+0x8], eax
	pop ebp
	jmp SL_AddRefToString


;GetObjectType(unsigned int)
GetObjectType:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x18]
	and eax, 0x1f
	pop ebp
	ret
	add [eax], al


;IsFieldObject(unsigned int)
IsFieldObject:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x18]
	and eax, 0x1f
	cmp eax, 0x14
	setbe al
	movzx eax, al
	pop ebp
	ret
	nop
	add [eax], al


;Scr_AddFields(char const*, char const*)
Scr_AddFields:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Scr_AddFields_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Scr_AddFields_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Scr_EvalArray(VariableValue*, VariableValue*)
Scr_EvalArray:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	cmp eax, 0x2
	jz Scr_EvalArray_10
	cmp eax, 0x4
	jz Scr_EvalArray_20
	sub eax, 0x1
	jz Scr_EvalArray_30
	mov dword [scrVarPub+0x10], 0x1
	mov eax, [edx+0x4]
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_an_arra2
	call va
	mov [esp], eax
	call Scr_Error
Scr_EvalArray_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalArray_10:
	mov eax, [esi+0x4]
	cmp eax, 0x6
	jz Scr_EvalArray_40
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_a_strin
	call va
	mov [esp], eax
	call Scr_Error
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalArray_20:
	mov eax, [esi+0x4]
	cmp eax, 0x6
	jz Scr_EvalArray_50
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_a_vecto
	call va
	mov [esp], eax
	call Scr_Error
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalArray_30:
	mov eax, [ebp+0x8]
	mov edx, [eax]
	lea ebx, [edx+0x1]
	shl ebx, 0x4
	mov eax, [ebx+scrVarGlob+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jz Scr_EvalArray_60
	mov dword [scrVarPub+0x10], 0x1
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_an_arra
	call va
	mov [esp], eax
	call Scr_Error
	jmp Scr_EvalArray_70
Scr_EvalArray_40:
	mov eax, [esi]
	test eax, eax
	js Scr_EvalArray_80
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call SL_ConvertToString
	mov edx, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp [esi], ecx
	jl Scr_EvalArray_90
Scr_EvalArray_80:
	mov eax, [esi]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_string_index_d_o
	call va
	mov [esp], eax
	call Scr_Error
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalArray_50:
	mov edx, [esi]
	cmp edx, 0x2
	ja Scr_EvalArray_100
	mov dword [esi+0x4], 0x5
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov eax, [eax+edx*4]
	mov [esi], eax
	mov edx, [ecx]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalArray_70
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalArray_110
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_EvalArray_70
Scr_EvalArray_60:
	mov eax, [esi+0x4]
	cmp eax, 0x6
	jz Scr_EvalArray_120
	cmp eax, 0x2
	jz Scr_EvalArray_130
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_an_arra1
Scr_EvalArray_290:
	call va
	mov [esp], eax
	call Scr_Error
	add word [ebx+scrVarGlob+0x4], 0x1
	mov eax, 0x8002
Scr_EvalArray_170:
	shl eax, 0x4
	add eax, scrVarGlob
	mov edi, [eax+0x8]
	and edi, 0x1f
	mov ebx, [eax+0x4]
	lea eax, [edi-0x1]
	cmp eax, 0x3
	ja Scr_EvalArray_140
	test eax, eax
	jnz Scr_EvalArray_150
	lea eax, [ebx+0x1]
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
Scr_EvalArray_140:
	mov [ebp-0x38], ebx
	mov [ebp-0x34], edi
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esi], eax
	mov [esi+0x4], edx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call RemoveRefToObject
	jmp Scr_EvalArray_70
Scr_EvalArray_130:
	mov edi, [esi]
	lea ecx, [edi+edi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [edi+ecx*4]
	lea ecx, [edx+ecx]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x2c], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_EvalArray_160
Scr_EvalArray_190:
	mov ecx, 0x8002
Scr_EvalArray_180:
	shl ecx, 0x4
	movzx ebx, word [ecx+scrVarGlob]
	mov [esp], edi
	call SL_RemoveRefToString
	lea eax, [ebx+0x8002]
	jmp Scr_EvalArray_170
Scr_EvalArray_160:
	shr edx, 0x8
	cmp edi, edx
	jz Scr_EvalArray_180
	movzx ecx, word [ebx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x2c], eax
	jz Scr_EvalArray_190
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp edi, eax
	jz Scr_EvalArray_200
Scr_EvalArray_210:
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x2c], eax
	jz Scr_EvalArray_190
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, edi
	jnz Scr_EvalArray_210
Scr_EvalArray_200:
	add ecx, 0x8002
	jmp Scr_EvalArray_180
Scr_EvalArray_90:
	mov dword [esi+0x4], 0x2
	mov eax, [esi]
	movzx eax, byte [edx+eax]
	mov [ebp-0x1a], al
	mov byte [ebp-0x19], 0x0
	mov dword [esp+0xc], 0xf
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1a]
	mov [esp], eax
	call SL_GetStringOfSize
	mov [esi], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call SL_RemoveRefToString
	jmp Scr_EvalArray_70
Scr_EvalArray_100:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_vector_index_d_o
	call va
	mov [esp], eax
	call Scr_Error
	jmp Scr_EvalArray_70
Scr_EvalArray_120:
	mov ecx, [esi]
	lea eax, [ecx+0x7e8000]
	cmp eax, 0xfe7fff
	ja Scr_EvalArray_220
	lea ebx, [ecx+0x800000]
	and ebx, 0xffffff
	lea ecx, [ebx+ebx*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [ebx+ecx*4]
	lea ecx, [edx+ecx]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x30], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edi, [eax+scrVarGlob+0x80020]
	mov edx, [edi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_EvalArray_230
Scr_EvalArray_250:
	mov ecx, 0x8002
Scr_EvalArray_240:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	add eax, 0x8002
	jmp Scr_EvalArray_170
Scr_EvalArray_230:
	shr edx, 0x8
	cmp ebx, edx
	jz Scr_EvalArray_240
	movzx ecx, word [edi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x30], eax
	jz Scr_EvalArray_250
Scr_EvalArray_270:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jz Scr_EvalArray_260
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x30], eax
	jnz Scr_EvalArray_270
	jmp Scr_EvalArray_250
Scr_EvalArray_150:
	cmp eax, 0x2
	jbe Scr_EvalArray_280
	cmp byte [ebx-0x1], 0x0
	jnz Scr_EvalArray_140
	add word [ebx-0x4], 0x1
	jmp Scr_EvalArray_140
Scr_EvalArray_110:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalArray_70
Scr_EvalArray_220:
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_array_index_d_ou
	jmp Scr_EvalArray_290
Scr_EvalArray_280:
	mov [esp], ebx
	call SL_AddRefToString
	jmp Scr_EvalArray_140
Scr_EvalArray_260:
	add ecx, 0x8002
	jmp Scr_EvalArray_240


;Scr_EvalMinus(VariableValue*, VariableValue*)
Scr_EvalMinus:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Scr_CastWeakerPair
	mov eax, [ebx+0x4]
	cmp eax, 0x5
	jz Scr_EvalMinus_10
	cmp eax, 0x6
	jz Scr_EvalMinus_20
	cmp eax, 0x4
	jz Scr_EvalMinus_30
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalMinus_10:
	movss xmm0, dword [ebx]
	subss xmm0, [esi]
	movss [ebx], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalMinus_20:
	mov eax, [ebx]
	sub eax, [esi]
	mov [ebx], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalMinus_30:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea edi, [eax+0x4]
	mov dword [edi-0x4], 0x0
	mov edx, [ebx]
	mov ecx, [esi]
	movss xmm0, dword [edx]
	subss xmm0, [ecx]
	movss [eax+0x4], xmm0
	mov eax, [ebx]
	mov edx, [esi]
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	movss [edi+0x4], xmm0
	mov eax, [ebx]
	mov edx, [esi]
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx+0x8]
	movss [edi+0x8], xmm0
	mov edx, [ebx]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalMinus_40
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalMinus_50
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalMinus_40:
	mov edx, [esi]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalMinus_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalMinus_70
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalMinus_60:
	mov [ebx], edi
Scr_EvalMinus_80:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalMinus_50:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalMinus_40
Scr_EvalMinus_70:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov [ebx], edi
	jmp Scr_EvalMinus_80
	nop


;Scr_FindField(char const*, int*)
Scr_FindField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [scrVarPub]
	cmp byte [esi], 0x0
	jnz Scr_FindField_10
Scr_FindField_30:
	xor edx, edx
Scr_FindField_40:
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_FindField_10:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Scr_FindField_20
	lea eax, [esi+ebx]
	lea esi, [eax+0x3]
	cmp byte [eax+0x3], 0x0
	jnz Scr_FindField_10
	jmp Scr_FindField_30
Scr_FindField_20:
	lea eax, [esi+ebx]
	movzx edx, word [eax]
	movsx eax, byte [eax+0x2]
	mov ecx, [ebp+0xc]
	mov [ecx], eax
	jmp Scr_FindField_40


;Scr_FreeValue(unsigned int)
Scr_FreeValue:
	push ebp
	mov ebp, esp
	pop ebp
	jmp RemoveRefToObject
	nop


;Scr_GetOffset(unsigned int, char const*)
Scr_GetOffset:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*2]
	movzx ebx, word [eax*4+g_classMap]
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SL_ConvertFromString
	mov esi, eax
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	add ebx, eax
	mov edx, 0x80018005
	mov eax, ebx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ebx, eax
	lea ecx, [ebx+0x8003]
	mov eax, ecx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_GetOffset_10
Scr_GetOffset_40:
	mov ecx, 0x8002
Scr_GetOffset_30:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jz Scr_GetOffset_20
Scr_GetOffset_70:
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetOffset_10:
	shr edx, 0x8
	cmp esi, edx
	jz Scr_GetOffset_30
	movzx ecx, word [ebx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz Scr_GetOffset_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jz Scr_GetOffset_50
Scr_GetOffset_60:
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz Scr_GetOffset_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jnz Scr_GetOffset_60
Scr_GetOffset_50:
	add ecx, 0x8002
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jnz Scr_GetOffset_70
Scr_GetOffset_20:
	mov eax, 0xffffffff
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;AddRefToObject(unsigned int)
AddRefToObject:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x1
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	pop ebp
	ret


;GetNewVariable(unsigned int, unsigned int)
GetNewVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	lea ecx, [edi+ecx]
	mov eax, 0x80018005
	mul ecx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	sub ecx, eax
	add ecx, 0x1
	mov edx, esi
	mov eax, edi
	call GetNewVariableIndexInternal3
	mov [ebp-0x1c], eax
	mov eax, edi
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x28], eax
	mov ecx, [ebp-0x1c]
	add ecx, 0x8002
	mov [ebp-0x30], ecx
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x2c], edx
	movzx eax, word [eax+scrVarGlob]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz GetNewVariable_10
	shl edx, 0x4
	mov esi, [edx+scrVarGlob+0x80028]
	shr esi, 0x8
	lea edx, [esi+esi*4]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea ecx, [edi+edx]
	mov eax, 0x80018005
	mul ecx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	mov ebx, ecx
	sub ebx, eax
	lea edi, [ebx+0x1]
	lea edx, [ebx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x20], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz GetNewVariable_20
GetNewVariable_50:
	xor edi, edi
	mov edx, 0x8002
GetNewVariable_40:
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x2], ax
	movzx edx, word [ebp-0x24]
	mov eax, edi
	jmp GetNewVariable_30
GetNewVariable_10:
	movzx edx, word [ebp-0x24]
	movzx eax, word [ecx+0xc]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	xor eax, eax
GetNewVariable_30:
	mov ecx, [ebp-0x28]
	mov [ecx+0xe], dx
	mov edx, [ebp-0x2c]
	mov word [edx+0x2], 0x0
	shl dword [ebp-0x24], 0x4
	mov ecx, [ebp-0x24]
	mov [ecx+scrVarGlob+0x8002e], ax
	shl dword [ebp-0x30], 0x4
	mov edx, [ebp-0x30]
	movzx eax, word [edx+scrVarGlob]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetNewVariable_20:
	shr ecx, 0x8
	cmp esi, ecx
	jz GetNewVariable_40
	movzx edi, word [ebx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jz GetNewVariable_50
GetNewVariable_70:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jz GetNewVariable_60
	movzx edi, word [edx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jnz GetNewVariable_70
	jmp GetNewVariable_50
GetNewVariable_60:
	lea edx, [edi+0x8002]
	jmp GetNewVariable_40


;RemoveVariable(unsigned int, unsigned int)
RemoveVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	lea edx, [edi+edi*4]
	lea edx, [edx+edx*4]
	lea edx, [edi+edx*4]
	mov eax, [ebp+0x8]
	lea ebx, [edx+eax]
	mov eax, 0x80018005
	mul ebx
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, ebx
	sub ecx, eax
	lea esi, [ecx+0x1]
	lea edx, [ecx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x24], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz RemoveVariable_10
RemoveVariable_110:
	xor esi, esi
	mov edx, 0x8002
RemoveVariable_100:
	shl edx, 0x4
	movzx ebx, word [edx+scrVarGlob]
	mov eax, [ebp+0x8]
	add eax, 0x1
	mov [ebp-0x28], eax
	mov edx, eax
	shl edx, 0x4
	add edx, scrVarGlob
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	lea esi, [ebx+scrVarGlob+0x80020]
	mov edx, [esi+0x4]
	mov eax, [esi+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja RemoveVariable_20
	test eax, eax
	jz RemoveVariable_30
	cmp eax, 0x2
	jbe RemoveVariable_40
	cmp byte [edx-0x1], 0x0
	jz RemoveVariable_50
RemoveVariable_20:
	movzx edi, word [esi+0xc]
	mov eax, edi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx edx, word [esi+0xe]
	mov [ebp-0x1e], dx
	movzx ecx, dx
	movzx eax, word [eax+0x2]
	movzx ebx, ax
	test ax, ax
	jz RemoveVariable_60
	mov eax, ebx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], cx
	cmp word [ebp-0x1e], 0x0
	jz RemoveVariable_70
RemoveVariable_80:
	shl ecx, 0x4
	mov [ecx+scrVarGlob+0x80022], bx
RemoveVariable_90:
	mov dword [esi+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [esi+0x4], ax
	mov eax, [ebp-0x1c]
	mov word [eax+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], di
	mov [scrVarGlob+0x80024], di
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemoveVariable_60:
	mov eax, [ebp-0x28]
	shl eax, 0x4
	mov edx, ecx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0xe], dx
	cmp word [ebp-0x1e], 0x0
	jnz RemoveVariable_80
RemoveVariable_70:
	shl dword [ebp-0x28], 0x4
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+scrVarGlob+0xc]
	shl eax, 0x4
	shl ebx, 0x4
	movzx edx, word [ebx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp RemoveVariable_90
RemoveVariable_10:
	shr ecx, 0x8
	cmp edi, ecx
	jz RemoveVariable_100
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jz RemoveVariable_110
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp edi, eax
	jz RemoveVariable_120
RemoveVariable_130:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jz RemoveVariable_110
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp edi, eax
	jnz RemoveVariable_130
RemoveVariable_120:
	lea edx, [esi+0x8002]
	jmp RemoveVariable_100
RemoveVariable_30:
	mov [esp], edx
	call RemoveRefToObject
	jmp RemoveVariable_20
RemoveVariable_50:
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz RemoveVariable_140
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp RemoveVariable_20
RemoveVariable_40:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp RemoveVariable_20
RemoveVariable_140:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp RemoveVariable_20
	nop


;Scr_AllocArray()
Scr_AllocArray:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz Scr_AllocArray_10
Scr_AllocArray_40:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1c], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp ebx, ecx
	jz Scr_AllocArray_20
	test byte [ebx+0x8], 0x60
	jnz Scr_AllocArray_30
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
Scr_AllocArray_20:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx eax, word [ebx]
	mov edx, eax
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov dword [edx+0x8], 0x75
	mov word [edx+0x4], 0x0
	mov word [edx+0x6], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AllocArray_10:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_AllocArray_40
Scr_AllocArray_30:
	movzx eax, word [ebp-0x1a]
	jmp Scr_AllocArray_20
	nop


;Scr_CastString(VariableValue*)
Scr_CastString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	cmp eax, 0x2
	jz Scr_CastString_10
	cmp eax, 0x6
	jz Scr_CastString_20
	cmp eax, 0x5
	jz Scr_CastString_30
	cmp eax, 0x4
	jz Scr_CastString_40
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cannot_cast_s_to1
	call va
	mov [scrVarPub+0xc], eax
	mov edx, [esi]
	mov eax, [esi+0x4]
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_CastString_50
	test eax, eax
	jz Scr_CastString_60
	cmp eax, 0x2
	jbe Scr_CastString_70
	cmp byte [edx-0x1], 0x0
	jnz Scr_CastString_50
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_CastString_80
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_CastString_50:
	mov dword [esi+0x4], 0x0
	xor eax, eax
Scr_CastString_100:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastString_10:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastString_40:
	mov dword [esi+0x4], 0x2
	mov ebx, [esi]
	mov [esp], ebx
	call SL_GetStringForVector
	mov [esi], eax
	cmp byte [ebx-0x1], 0x0
	jnz Scr_CastString_10
	lea edx, [ebx-0x4]
	movzx eax, word [ebx-0x4]
	test ax, ax
	jz Scr_CastString_90
	sub eax, 0x1
	mov [ebx-0x4], ax
	mov eax, 0x1
	jmp Scr_CastString_100
Scr_CastString_60:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_CastString_50
Scr_CastString_20:
	mov dword [esi+0x4], 0x2
	mov eax, [esi]
	mov [esp], eax
	call SL_GetStringForInt
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastString_30:
	mov dword [esi+0x4], 0x2
	mov eax, [esi]
	mov [esp], eax
	call SL_GetStringForFloat
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastString_80:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_CastString_50
Scr_CastString_70:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_CastString_50
Scr_CastString_90:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	mov eax, 0x1
	jmp Scr_CastString_100


;Scr_CastVector(VariableValue*)
Scr_CastVector:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	lea eax, [edi+0x10]
	mov [ebp-0x2c], eax
	lea edx, [edi+0x14]
	xor ecx, ecx
	lea ebx, [ebp-0x24]
Scr_CastVector_30:
	mov eax, 0x2
	sub eax, ecx
	mov esi, [edx]
	cmp esi, 0x5
	jz Scr_CastVector_10
	cmp esi, 0x6
	jnz Scr_CastVector_20
	cvtsi2ss xmm0, dword [edx-0x4]
	movss [ebx], xmm0
Scr_CastVector_40:
	add ecx, 0x1
	add ebx, 0x4
	sub edx, 0x8
	cmp ecx, 0x3
	jnz Scr_CastVector_30
	mov dword [edi+0x4], 0x4
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea ecx, [eax+0x4]
	mov dword [ecx-0x4], 0x0
	mov edx, [ebp-0x24]
	mov [eax+0x4], edx
	mov eax, [ebp-0x20]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x8], eax
	mov [edi], ecx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_CastVector_10:
	mov eax, [edx-0x4]
	mov [ebx], eax
	jmp Scr_CastVector_40
Scr_CastVector_20:
	add eax, 0x1
	mov [scrVarPub+0x10], eax
	mov ebx, [ebp-0x2c]
	mov dword [ebp-0x30], 0x3
Scr_CastVector_90:
	mov edx, [ebx]
	mov eax, [ebx+0x4]
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_CastVector_50
	test eax, eax
	jz Scr_CastVector_60
	cmp eax, 0x2
	jbe Scr_CastVector_70
	cmp byte [edx-0x1], 0x0
	jz Scr_CastVector_80
Scr_CastVector_50:
	sub ebx, 0x8
	sub dword [ebp-0x30], 0x1
	jnz Scr_CastVector_90
	mov dword [edi+0x4], 0x0
	mov eax, [esi*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_type_s_is_not_a_
	call va
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
Scr_CastVector_80:
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_CastVector_100
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_CastVector_50
Scr_CastVector_60:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_CastVector_50
Scr_CastVector_70:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_CastVector_50
Scr_CastVector_100:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_CastVector_50
	nop


;Scr_EvalDivide(VariableValue*, VariableValue*)
Scr_EvalDivide:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Scr_CastWeakerPair
	mov eax, [ebx+0x4]
	cmp eax, 0x5
	jz Scr_EvalDivide_10
	cmp eax, 0x6
	jz Scr_EvalDivide_20
	cmp eax, 0x4
	jz Scr_EvalDivide_30
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalDivide_10:
	movss xmm1, dword [esi]
	ucomiss xmm1, [_float_0_00000000]
	jp Scr_EvalDivide_40
	jz Scr_EvalDivide_50
Scr_EvalDivide_40:
	movss xmm0, dword [ebx]
	divss xmm0, xmm1
	movss [ebx], xmm0
Scr_EvalDivide_140:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalDivide_20:
	mov dword [ebx+0x4], 0x5
	mov eax, [esi]
	test eax, eax
	jz Scr_EvalDivide_50
	cvtsi2ss xmm0, dword [ebx]
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	movss [ebx], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalDivide_30:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea edi, [eax+0x4]
	mov dword [edi-0x4], 0x0
	mov eax, [esi]
	movss xmm1, dword [eax]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp Scr_EvalDivide_60
	jz Scr_EvalDivide_70
Scr_EvalDivide_60:
	ucomiss xmm0, [eax+0x4]
	jp Scr_EvalDivide_80
	jz Scr_EvalDivide_70
Scr_EvalDivide_80:
	ucomiss xmm0, [eax+0x8]
	jnz Scr_EvalDivide_90
	jnp Scr_EvalDivide_70
Scr_EvalDivide_90:
	mov eax, [ebx]
	movss xmm0, dword [eax]
	divss xmm0, xmm1
	movss [edi], xmm0
	mov eax, [ebx]
	mov edx, [esi]
	movss xmm0, dword [eax+0x4]
	divss xmm0, dword [edx+0x4]
	movss [edi+0x4], xmm0
	mov eax, [ebx]
	mov edx, [esi]
	movss xmm0, dword [eax+0x8]
	divss xmm0, dword [edx+0x8]
	movss [edi+0x8], xmm0
	mov edx, [ebx]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalDivide_100
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalDivide_110
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalDivide_100:
	mov edx, [esi]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalDivide_120
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalDivide_130
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalDivide_120:
	mov [ebx], edi
	jmp Scr_EvalDivide_140
Scr_EvalDivide_50:
	mov dword [ebx], 0x0
	mov dword [ebp+0x8], _cstring_divide_by_0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
Scr_EvalDivide_70:
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x8], 0x0
	mov edx, [ebx]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalDivide_150
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalDivide_160
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalDivide_150:
	mov edx, [esi]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalDivide_170
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalDivide_180
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalDivide_170:
	mov [ebx], edi
Scr_EvalDivide_190:
	mov dword [ebp+0x8], _cstring_divide_by_0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
Scr_EvalDivide_180:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov [ebx], edi
	jmp Scr_EvalDivide_190
Scr_EvalDivide_160:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalDivide_150
Scr_EvalDivide_110:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalDivide_100
Scr_EvalDivide_130:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov [ebx], edi
	jmp Scr_EvalDivide_140


;Scr_KillThread(unsigned int)
Scr_KillThread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	add edi, 0x1
	mov eax, edi
	shl eax, 0x4
	add eax, scrVarGlob
	mov [ebp-0x3c], eax
	movzx eax, word [eax+0xe]
	test ax, ax
	jz Scr_KillThread_10
	movzx eax, ax
	shl eax, 0x4
	mov ebx, [eax+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	mov ecx, [ebp+0x8]
	lea esi, [edx+ecx]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x30], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_KillThread_20
Scr_KillThread_250:
	xor esi, esi
Scr_KillThread_30:
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov edx, [ebp-0x3c]
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	movzx eax, word [ebx+scrVarGlob+0x8002e]
	movzx esi, ax
	test ax, ax
	jnz Scr_KillThread_30
	mov eax, [ebp-0x3c]
	movzx eax, word [eax+0xe]
	mov [ebp-0x2c], eax
	shl edi, 0x4
	mov [ebp-0x40], edi
	jmp Scr_KillThread_40
Scr_KillThread_100:
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], dx
	cmp word [ebp-0x5a], 0x0
	jz Scr_KillThread_50
Scr_KillThread_110:
	shl edx, 0x4
	mov [edx+scrVarGlob+0x80022], cx
Scr_KillThread_120:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov ecx, [ebp-0x28]
	mov word [ecx+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], si
	mov [scrVarGlob+0x80024], si
	cmp word [ebp-0x32], 0x0
	jz Scr_KillThread_10
	mov eax, [ebp-0x2c]
Scr_KillThread_40:
	add eax, 0x8002
	shl eax, 0x4
	movzx edx, word [eax+scrVarGlob+0xe]
	mov [ebp-0x32], dx
	movzx edx, dx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [ebp-0x2c], edx
	lea ebx, [eax+scrVarGlob]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_KillThread_60
	test eax, eax
	jz Scr_KillThread_70
	cmp eax, 0x2
	jbe Scr_KillThread_80
	cmp byte [edx-0x1], 0x0
	jnz Scr_KillThread_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_KillThread_90
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_KillThread_60:
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x28], eax
	movzx ecx, word [ebx+0xe]
	mov [ebp-0x5a], cx
	movzx edx, cx
	movzx eax, word [eax+0x2]
	movzx ecx, ax
	test ax, ax
	jnz Scr_KillThread_100
	mov eax, edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	mov edi, [ebp-0x40]
	mov [edi+scrVarGlob+0xe], ax
	cmp word [ebp-0x5a], 0x0
	jnz Scr_KillThread_110
Scr_KillThread_50:
	mov edx, [ebp-0x40]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl ecx, 0x4
	movzx edx, word [ecx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp Scr_KillThread_120
Scr_KillThread_10:
	mov edi, [ebp-0x3c]
	movzx eax, word [edi+0x6]
	mov [esp], eax
	call RemoveRefToObject
	mov eax, [ebp+0x8]
	add eax, 0x10000
	mov [ebp-0x24], eax
	mov edx, eax
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	mov esi, [scrVarPub+0x1c]
	lea ebx, [eax+esi]
	mov edx, 0x80018005
	mov eax, ebx
	mul edx
	shr edx, 0xf
	mov ecx, edx
	shl ecx, 0xe
	sub ecx, edx
	lea ecx, [edx+ecx*4]
	mov eax, ebx
	sub eax, ecx
	lea ecx, [eax+0x8003]
	mov eax, ecx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_KillThread_130
Scr_KillThread_230:
	mov ecx, 0x8002
Scr_KillThread_220:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jz Scr_KillThread_140
	shl edx, 0x4
	mov edx, [edx+scrVarGlob+0x80024]
	mov [ebp-0x38], edx
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x20], eax
	movzx eax, word [eax+0xe]
	movzx edx, ax
	test ax, ax
	jnz Scr_KillThread_150
Scr_KillThread_210:
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call RemoveVariable
Scr_KillThread_140:
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x8]
	and eax, 0xffffffe0
	or eax, 0x16
	mov [edx+0x8], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_KillThread_170:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, esi
	jz Scr_KillThread_160
Scr_KillThread_200:
	movzx eax, word [edx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jnz Scr_KillThread_170
Scr_KillThread_190:
	mov ecx, 0x8002
Scr_KillThread_160:
	mov [esp+0x4], ebx
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x80024]
	mov [esp], eax
	call VM_CancelNotify
	shl ebx, 0x4
	add ebx, scrVarGlob+0x10
	movzx eax, word [ebx+0x6]
	mov [esp], eax
	call RemoveRefToObject
	mov eax, [ebx+0x8]
	and eax, 0xffffffe0
	or eax, 0x16
	mov [ebx+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp-0x38]
	mov [esp], ecx
	call RemoveVariable
	mov edi, [ebp-0x20]
	movzx eax, word [edi+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_KillThread_180
Scr_KillThread_150:
	shl edx, 0x4
	movzx ebx, word [edx+scrVarGlob+0x80029]
	lea esi, [ebx+0x10000]
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	add ecx, [ebp-0x38]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x1c], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edi, [eax+scrVarGlob+0x80020]
	mov edx, [edi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jnz Scr_KillThread_190
	shr edx, 0x8
	cmp esi, edx
	jz Scr_KillThread_160
	movzx eax, word [edi+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jz Scr_KillThread_190
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jnz Scr_KillThread_200
	jmp Scr_KillThread_160
Scr_KillThread_180:
	mov esi, [scrVarPub+0x1c]
	jmp Scr_KillThread_210
Scr_KillThread_130:
	shr edx, 0x8
	cmp [ebp-0x24], edx
	jz Scr_KillThread_220
	movzx eax, word [ebx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz Scr_KillThread_230
Scr_KillThread_240:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp [ebp-0x24], eax
	jz Scr_KillThread_220
	movzx eax, word [edx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jnz Scr_KillThread_240
	jmp Scr_KillThread_230
Scr_KillThread_70:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_KillThread_60
Scr_KillThread_80:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_KillThread_60
Scr_KillThread_20:
	shr ecx, 0x8
	cmp ebx, ecx
	jz Scr_KillThread_30
Scr_KillThread_260:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x30], eax
	jz Scr_KillThread_250
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jnz Scr_KillThread_260
	jmp Scr_KillThread_30
Scr_KillThread_90:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_KillThread_60
	nop


;Scr_StopThread(unsigned int)
Scr_StopThread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ecx, [ebp+0x8]
	lea eax, [ecx+0x1]
	mov [ebp-0x2c], eax
	shl eax, 0x4
	add eax, scrVarGlob
	mov [ebp-0x28], eax
	movzx eax, word [eax+0xe]
	test ax, ax
	jz Scr_StopThread_10
	movzx eax, ax
	shl eax, 0x4
	mov ebx, [eax+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	lea esi, [ecx+edx]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_StopThread_20
Scr_StopThread_130:
	xor esi, esi
Scr_StopThread_30:
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov edx, [ebp-0x28]
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	movzx eax, word [ebx+scrVarGlob+0x8002e]
	movzx esi, ax
	test ax, ax
	jnz Scr_StopThread_30
	mov ecx, [ebp-0x28]
	movzx ecx, word [ecx+0xe]
	mov [ebp-0x20], ecx
	mov edi, [ebp-0x2c]
	shl edi, 0x4
	mov [ebp-0x30], edi
	mov eax, ecx
	jmp Scr_StopThread_40
Scr_StopThread_100:
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], dx
	cmp word [ebp-0x4a], 0x0
	jz Scr_StopThread_50
Scr_StopThread_110:
	shl edx, 0x4
	mov [edx+scrVarGlob+0x80022], cx
Scr_StopThread_120:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov ecx, [ebp-0x1c]
	mov word [ecx+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], si
	mov [scrVarGlob+0x80024], si
	cmp word [ebp-0x22], 0x0
	jz Scr_StopThread_10
	mov eax, [ebp-0x20]
Scr_StopThread_40:
	add eax, 0x8002
	shl eax, 0x4
	movzx edx, word [eax+scrVarGlob+0xe]
	mov [ebp-0x22], dx
	movzx edx, dx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [ebp-0x20], edx
	lea ebx, [eax+scrVarGlob]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_StopThread_60
	test eax, eax
	jz Scr_StopThread_70
	cmp eax, 0x2
	jbe Scr_StopThread_80
	cmp byte [edx-0x1], 0x0
	jnz Scr_StopThread_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_StopThread_90
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_StopThread_60:
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx ecx, word [ebx+0xe]
	mov [ebp-0x4a], cx
	movzx edx, cx
	movzx eax, word [eax+0x2]
	movzx ecx, ax
	test ax, ax
	jnz Scr_StopThread_100
	mov eax, edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	mov edi, [ebp-0x30]
	mov [edi+scrVarGlob+0xe], ax
	cmp word [ebp-0x4a], 0x0
	jnz Scr_StopThread_110
Scr_StopThread_50:
	mov edx, [ebp-0x30]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl ecx, 0x4
	movzx edx, word [ecx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp Scr_StopThread_120
Scr_StopThread_10:
	mov edi, [ebp-0x28]
	movzx eax, word [edi+0x6]
	mov [esp], eax
	call RemoveRefToObject
	mov eax, [scrVarPub+0x20]
	shl dword [ebp-0x2c], 0x4
	mov edx, [ebp-0x2c]
	mov [edx+scrVarGlob+0x6], ax
	add eax, 0x1
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_StopThread_70:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_StopThread_60
Scr_StopThread_80:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_StopThread_60
Scr_StopThread_90:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_StopThread_60
Scr_StopThread_20:
	shr ecx, 0x8
	cmp ebx, ecx
	jz Scr_StopThread_30
Scr_StopThread_140:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz Scr_StopThread_130
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz Scr_StopThread_140
	jmp Scr_StopThread_30
	nop


;FindLastSibling(unsigned int)
FindLastSibling:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1c]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x12]
	movzx edx, ax
	test ax, ax
	jz FindLastSibling_10
	shl edx, 0x4
	mov ebx, [edx+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	lea esi, [ecx+edx]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz FindLastSibling_20
FindLastSibling_10:
	xor esi, esi
FindLastSibling_40:
	mov eax, esi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindLastSibling_20:
	shr ecx, 0x8
	cmp ebx, ecx
	jnz FindLastSibling_30
	jmp FindLastSibling_40
FindLastSibling_50:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jz FindLastSibling_40
FindLastSibling_30:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jnz FindLastSibling_50
	jmp FindLastSibling_10
	nop


;FindNextSibling(unsigned int)
FindNextSibling:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x8002e]
	movzx edx, ax
	test ax, ax
	jz FindNextSibling_10
	shl edx, 0x4
	movzx eax, word [edx+scrVarGlob+0x80020]
	pop ebp
	ret
FindNextSibling_10:
	xor eax, eax
	pop ebp
	ret
	add [eax], al


;FindPrevSibling(unsigned int)
FindPrevSibling:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80022]
	pop ebp
	ret


;GetStartLocalId(unsigned int)
GetStartLocalId:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	lea edx, [ecx+0x1]
	mov eax, edx
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x8]
	and eax, 0x1f
	cmp eax, 0x11
	jz GetStartLocalId_10
GetStartLocalId_20:
	mov eax, ecx
	pop ebp
	ret
GetStartLocalId_10:
	shl edx, 0x4
	mov ecx, [edx+scrVarGlob+0x8]
	shr ecx, 0x8
	lea edx, [ecx+0x1]
	mov eax, edx
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x8]
	and eax, 0x1f
	cmp eax, 0x11
	jnz GetStartLocalId_20
	shl edx, 0x4
	mov ecx, [edx+scrVarGlob+0x8]
	shr ecx, 0x8
	lea edx, [ecx+0x1]
	mov eax, edx
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x8]
	and eax, 0x1f
	cmp eax, 0x11
	jz GetStartLocalId_10
	jmp GetStartLocalId_20


;GetVariableName(unsigned int)
GetVariableName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x80028]
	shr eax, 0x8
	pop ebp
	ret


;Scr_AllocVector(float const*)
Scr_AllocVector:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	mov ecx, eax
	lea eax, [eax+0x4]
	mov dword [eax-0x4], 0x0
	mov edx, [ebx]
	mov [ecx+0x4], edx
	mov edx, [ebx+0x4]
	mov [eax+0x4], edx
	mov edx, [ebx+0x8]
	mov [eax+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Scr_EvalBoolNot(VariableValue*)
Scr_EvalBoolNot:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x4]
	cmp ebx, 0x6
	jz Scr_EvalBoolNot_10
	cmp ebx, 0x5
	jz Scr_EvalBoolNot_20
	mov edx, [esi]
	lea eax, [ebx-0x1]
	cmp eax, 0x3
	jbe Scr_EvalBoolNot_30
Scr_EvalBoolNot_70:
	mov dword [esi+0x4], 0x0
	mov eax, [ebx*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cannot_cast_s_to
	call va
	mov [esp], eax
	call Scr_Error
Scr_EvalBoolNot_90:
	cmp dword [esi+0x4], 0x6
	jnz Scr_EvalBoolNot_40
	xor eax, eax
	cmp dword [esi], 0x0
	setz al
	mov [esi], eax
Scr_EvalBoolNot_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalBoolNot_30:
	test eax, eax
	jz Scr_EvalBoolNot_50
	cmp eax, 0x2
	jbe Scr_EvalBoolNot_60
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalBoolNot_70
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalBoolNot_80
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_EvalBoolNot_70
Scr_EvalBoolNot_10:
	xor eax, eax
	cmp dword [esi], 0x0
	setnz al
	mov [esi], eax
	jmp Scr_EvalBoolNot_90
Scr_EvalBoolNot_20:
	mov dword [esi+0x4], 0x6
	pxor xmm0, xmm0
	ucomiss xmm0, [esi]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov [esi], eax
	jmp Scr_EvalBoolNot_90
Scr_EvalBoolNot_50:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_EvalBoolNot_70
Scr_EvalBoolNot_60:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_EvalBoolNot_70
Scr_EvalBoolNot_80:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalBoolNot_70
	nop


;Scr_EvalGreater(VariableValue*, VariableValue*)
Scr_EvalGreater:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Scr_CastWeakerPair
	mov eax, [ebx+0x4]
	cmp eax, 0x5
	jz Scr_EvalGreater_10
	cmp eax, 0x6
	jz Scr_EvalGreater_20
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	pop ebx
	pop esi
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalGreater_10:
	mov dword [ebx+0x4], 0x6
	movss xmm0, dword [ebx]
	xor eax, eax
	ucomiss xmm0, [esi]
	seta al
	mov [ebx], eax
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalGreater_20:
	mov eax, [ebx]
	cmp eax, [esi]
	setg al
	movzx eax, al
	mov [ebx], eax
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_FreeObjects()
Scr_FreeObjects:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, 0x1
	mov dword [ebp-0x1c], scrVarGlob
	jmp Scr_FreeObjects_10
Scr_FreeObjects_30:
	add dword [ebp-0x1c], 0x10
	cmp dword [ebp-0x30], 0x8000
	jz Scr_FreeObjects_20
Scr_FreeObjects_210:
	mov ebx, [ebp-0x30]
Scr_FreeObjects_10:
	lea eax, [ebx+0x1]
	mov [ebp-0x30], eax
	shl eax, 0x4
	add eax, scrVarGlob
	mov [ebp-0x2c], eax
	mov eax, [eax+0x8]
	test al, 0x60
	jz Scr_FreeObjects_30
	and eax, 0x1f
	sub eax, 0x12
	cmp eax, 0x1
	ja Scr_FreeObjects_30
	mov [esp], ebx
	call Scr_CancelNotifyList
	mov ecx, [ebp-0x1c]
	add word [ecx+0x24], 0x1
	mov edi, [ebp-0x2c]
	movzx eax, word [edi+0xe]
	test ax, ax
	jz Scr_FreeObjects_40
	movzx eax, ax
	shl eax, 0x4
	mov edi, [eax+scrVarGlob+0x80028]
	shr edi, 0x8
	lea edx, [edi+edi*4]
	lea edx, [edx+edx*4]
	lea edx, [edi+edx*4]
	lea ebx, [edx+ebx]
	mov eax, 0x80018005
	mul ebx
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, ebx
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea ebx, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_FreeObjects_50
Scr_FreeObjects_170:
	xor esi, esi
Scr_FreeObjects_60:
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov edx, [ebp-0x2c]
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	movzx eax, word [ebx+scrVarGlob+0x8002e]
	movzx esi, ax
	test ax, ax
	jnz Scr_FreeObjects_60
	mov ecx, [ebp-0x2c]
	movzx ecx, word [ecx+0xe]
	mov [ebp-0x24], ecx
	mov eax, ecx
	jmp Scr_FreeObjects_70
Scr_FreeObjects_140:
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], dx
	cmp word [ebp-0x4a], 0x0
	jz Scr_FreeObjects_80
Scr_FreeObjects_150:
	shl edx, 0x4
	mov [edx+scrVarGlob+0x80022], cx
Scr_FreeObjects_160:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov ecx, [ebp-0x20]
	mov word [ecx+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], si
	mov [scrVarGlob+0x80024], si
	cmp word [ebp-0x26], 0x0
	jz Scr_FreeObjects_90
	mov eax, [ebp-0x24]
Scr_FreeObjects_70:
	add eax, 0x8002
	shl eax, 0x4
	movzx edi, word [eax+scrVarGlob+0xe]
	mov [ebp-0x26], di
	movzx edx, di
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [ebp-0x24], edx
	lea ebx, [eax+scrVarGlob]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_FreeObjects_100
	test eax, eax
	jz Scr_FreeObjects_110
	cmp eax, 0x2
	jbe Scr_FreeObjects_120
	cmp byte [edx-0x1], 0x0
	jnz Scr_FreeObjects_100
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_FreeObjects_130
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_FreeObjects_100:
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x20], eax
	movzx eax, word [ebx+0xe]
	mov [ebp-0x4a], ax
	movzx edx, ax
	mov ecx, [ebp-0x20]
	movzx eax, word [ecx+0x2]
	movzx ecx, ax
	test ax, ax
	jnz Scr_FreeObjects_140
	mov eax, edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	mov edi, [ebp-0x1c]
	mov [edi+0x2e], ax
	cmp word [ebp-0x4a], 0x0
	jnz Scr_FreeObjects_150
Scr_FreeObjects_80:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0x2c]
	shl eax, 0x4
	shl ecx, 0x4
	movzx edx, word [ecx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp Scr_FreeObjects_160
Scr_FreeObjects_50:
	shr ecx, 0x8
	cmp edi, ecx
	jz Scr_FreeObjects_60
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp ebx, eax
	jz Scr_FreeObjects_170
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp edi, eax
	jnz Scr_FreeObjects_180
	jmp Scr_FreeObjects_60
Scr_FreeObjects_190:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, edi
	jz Scr_FreeObjects_60
Scr_FreeObjects_180:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp ebx, eax
	jnz Scr_FreeObjects_190
	jmp Scr_FreeObjects_170
Scr_FreeObjects_90:
	mov edi, [ebp-0x2c]
Scr_FreeObjects_40:
	movzx eax, word [edi+0x4]
	test ax, ax
	jz Scr_FreeObjects_200
	sub eax, 0x1
	mov [edi+0x4], ax
	add dword [ebp-0x1c], 0x10
	cmp dword [ebp-0x30], 0x8000
	jnz Scr_FreeObjects_210
Scr_FreeObjects_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_FreeObjects_110:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_FreeObjects_100
Scr_FreeObjects_200:
	movzx edx, word [edi+0xc]
	mov dword [edi+0x8], 0x0
	movzx eax, word [scrVarGlob+0x14]
	mov ecx, [ebp-0x2c]
	mov [ecx+0x4], ax
	mov eax, edx
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx eax, word [scrVarGlob+0x14]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	mov [scrVarGlob+0x14], dx
	jmp Scr_FreeObjects_30
Scr_FreeObjects_120:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_FreeObjects_100
Scr_FreeObjects_130:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_FreeObjects_100
	nop


;Scr_GetEntityId(int, unsigned int)
Scr_GetEntityId:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea eax, [ebx+0x800000]
	and eax, 0xffffff
	mov [esp+0x4], eax
	lea eax, [esi+esi*2]
	movzx eax, word [eax*4+g_classMap+0x2]
	mov [esp], eax
	call GetVariableIndexInternal
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x24], eax
	test byte [eax+0x8], 0x1f
	jz Scr_GetEntityId_10
	mov edx, [eax+0x4]
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetEntityId_10:
	mov [ebp-0x20], bx
	movzx eax, word [scrVarGlob+0x14]
	mov [ebp-0x1c], ax
	test ax, ax
	jz Scr_GetEntityId_20
Scr_GetEntityId_50:
	movzx eax, word [ebp-0x1c]
	shl eax, 0x4
	lea edi, [eax+0x10]
	lea ebx, [edi+scrVarGlob]
	movzx ecx, word [edi+scrVarGlob]
	mov [ebp-0x1e], cx
	movzx eax, cx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp ebx, ecx
	jz Scr_GetEntityId_30
	test byte [ebx+0x8], 0x60
	jnz Scr_GetEntityId_40
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1e]
	mov [edx+scrVarGlob+0x10], ax
	movzx eax, word [ebp-0x1c]
	mov [edi+scrVarGlob], ax
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
Scr_GetEntityId_30:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx eax, word [ebp-0x1c]
	mov [ecx+0xc], ax
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx edx, word [ebx]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	shl esi, 0x8
	or esi, 0x74
	mov [eax+0x8], esi
	mov word [eax+0x4], 0x0
	movzx ecx, word [ebp-0x20]
	mov [eax+0x6], cx
	mov eax, [ebp-0x24]
	or dword [eax+0x8], 0x1
	mov [eax+0x4], edx
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetEntityId_40:
	movzx eax, word [ebp-0x1a]
	jmp Scr_GetEntityId_30
Scr_GetEntityId_20:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_GetEntityId_50
	nop


;Scr_SetClassMap(unsigned int)
Scr_SetClassMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz Scr_SetClassMap_10
Scr_SetClassMap_70:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x20], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1e], ax
	cmp ebx, ecx
	jz Scr_SetClassMap_20
	test byte [ebx+0x8], 0x60
	jz Scr_SetClassMap_30
	movzx eax, word [ebp-0x1e]
Scr_SetClassMap_20:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx edx, word [ebx]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*2]
	mov [eax*4+g_classMap+0x2], dx
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz Scr_SetClassMap_40
Scr_SetClassMap_80:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1c], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp ebx, ecx
	jz Scr_SetClassMap_50
	test byte [ebx+0x8], 0x60
	jnz Scr_SetClassMap_60
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
Scr_SetClassMap_50:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx edx, word [ebx]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*2]
	mov [eax*4+g_classMap], dx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_SetClassMap_30:
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x20]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1e]
	jmp Scr_SetClassMap_20
Scr_SetClassMap_10:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_SetClassMap_70
Scr_SetClassMap_40:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_SetClassMap_80
Scr_SetClassMap_60:
	movzx eax, word [ebp-0x1a]
	jmp Scr_SetClassMap_50
	nop


;AllocChildThread(unsigned int, unsigned int)
AllocChildThread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz AllocChildThread_10
AllocChildThread_40:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1c], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx edx, word [ecx+0x4]
	mov [ebp-0x1a], dx
	cmp ebx, ecx
	jz AllocChildThread_20
	test byte [ebx+0x8], 0x60
	jnz AllocChildThread_30
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx edx, word [ebx+0xc]
	mov [ecx+0xc], dx
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
AllocChildThread_50:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx eax, word [ebx]
	mov ecx, eax
	shl ecx, 0x4
	add ecx, scrVarGlob+0x10
	shl dword [ebp+0xc], 0x8
	or dword [ebp+0xc], 0x71
	mov edx, [ebp+0xc]
	mov [ecx+0x8], edx
	mov word [ecx+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [ecx+0x6], dx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AllocChildThread_10:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp AllocChildThread_40
AllocChildThread_30:
	movzx eax, word [ebp-0x1a]
	jmp AllocChildThread_50
AllocChildThread_20:
	mov eax, edx
	jmp AllocChildThread_50
	nop


;FindFirstSibling(unsigned int)
FindFirstSibling:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	pop ebp
	ret


;GetArrayVariable(unsigned int, unsigned int)
GetArrayVariable:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	add eax, 0x800000
	and eax, 0xffffff
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetVariableIndexInternal
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	leave
	ret


;GetParentLocalId(unsigned int)
GetParentLocalId:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x18]
	shr eax, 0x8
	pop ebp
	ret


;RemoveRefToValue(int, VariableUnion)
RemoveRefToValue:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	sub eax, 0x1
	cmp eax, 0x3
	ja RemoveRefToValue_10
	test eax, eax
	jz RemoveRefToValue_20
	cmp eax, 0x2
	jbe RemoveRefToValue_30
	cmp byte [edx-0x1], 0x0
	jnz RemoveRefToValue_10
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz RemoveRefToValue_40
	sub eax, 0x1
	mov [edx-0x4], ax
RemoveRefToValue_10:
	pop ebp
	ret
RemoveRefToValue_20:
	mov [ebp+0x8], edx
	pop ebp
	jmp RemoveRefToObject
RemoveRefToValue_40:
	mov dword [ebp+0xc], 0x10
	mov [ebp+0x8], ecx
	pop ebp
	jmp MT_Free
RemoveRefToValue_30:
	mov [ebp+0x8], edx
	pop ebp
	jmp SL_RemoveRefToString
	nop


;Scr_AddArrayKeys(unsigned int)
Scr_AddArrayKeys:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	call Scr_MakeArray
	shl ebx, 0x4
	movzx eax, word [ebx+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jz Scr_AddArrayKeys_10
Scr_AddArrayKeys_50:
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov eax, [ebx+0x8]
	shr eax, 0x8
	cmp eax, 0xffff
	ja Scr_AddArrayKeys_20
	movzx esi, ax
	mov eax, 0x2
Scr_AddArrayKeys_90:
	cmp eax, 0x2
	jz Scr_AddArrayKeys_30
Scr_AddArrayKeys_70:
	cmp eax, 0x6
	jz Scr_AddArrayKeys_40
Scr_AddArrayKeys_80:
	call Scr_AddArray
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_AddArrayKeys_10
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	test edx, edx
	jnz Scr_AddArrayKeys_50
Scr_AddArrayKeys_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddArrayKeys_20:
	cmp eax, 0x17fff
	jbe Scr_AddArrayKeys_60
	lea esi, [eax-0x800000]
	mov eax, 0x6
	cmp eax, 0x2
	jnz Scr_AddArrayKeys_70
Scr_AddArrayKeys_30:
	mov [esp], esi
	call Scr_AddConstString
	jmp Scr_AddArrayKeys_80
Scr_AddArrayKeys_60:
	lea esi, [eax-0x10000]
	mov eax, 0x1
	jmp Scr_AddArrayKeys_90
Scr_AddArrayKeys_40:
	mov [esp], esi
	call Scr_AddInt
	jmp Scr_AddArrayKeys_80


;Scr_EvalArrayRef(unsigned int)
Scr_EvalArrayRef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	test eax, eax
	jnz Scr_EvalArrayRef_10
	mov eax, [scrVarPub+0x3c]
	mov [ebp-0x54], eax
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x44], eax
	mov edi, [eax+0x8]
	shr edi, 0x8
	mov edx, [scrVarPub+0x40]
	mov [ebp-0x58], edx
	mov ebx, edx
	add ebx, 0x800000
	and ebx, 0xffffff
	lea eax, [edi+edi*2]
	movzx ecx, word [eax*4+g_classMap]
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	add ecx, eax
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x40], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x80020]
	mov edx, [esi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_EvalArrayRef_20
Scr_EvalArrayRef_230:
	mov ecx, 0x8002
Scr_EvalArrayRef_220:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jz Scr_EvalArrayRef_30
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x44]
	movzx eax, word [ecx+0x6]
	mov [esp+0x4], eax
	mov [esp], edi
	call GetEntityFieldValue
	mov esi, eax
	mov ebx, edx
	test edx, edx
	jz Scr_EvalArrayRef_40
	cmp edx, 0x1
	jz Scr_EvalArrayRef_50
Scr_EvalArrayRef_370:
	lea eax, [ebx-0x1]
	cmp eax, 0x3
	ja Scr_EvalArrayRef_60
	test eax, eax
	jz Scr_EvalArrayRef_70
	cmp eax, 0x2
	jbe Scr_EvalArrayRef_80
	cmp byte [esi-0x1], 0x0
	jnz Scr_EvalArrayRef_60
	lea ecx, [esi-0x4]
	movzx eax, word [esi-0x4]
	test ax, ax
	jz Scr_EvalArrayRef_90
	sub eax, 0x1
	mov [esi-0x4], ax
	mov dword [ebp-0x48], 0x0
	jmp Scr_EvalArrayRef_100
Scr_EvalArrayRef_10:
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x48], eax
	mov eax, [eax+0x8]
	mov ebx, eax
	and ebx, 0x1f
	jz Scr_EvalArrayRef_110
	mov eax, [ebp-0x48]
	mov esi, [eax+0x4]
Scr_EvalArrayRef_100:
	cmp ebx, 0x1
	jz Scr_EvalArrayRef_120
	mov dword [scrVarPub+0x10], 0x1
	cmp ebx, 0x2
	jz Scr_EvalArrayRef_130
	cmp ebx, 0x4
	jz Scr_EvalArrayRef_140
	mov eax, [ebx*4+var_typename]
Scr_EvalArrayRef_290:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_an_arra
	call va
	mov [esp], eax
	call Scr_Error
	xor edx, edx
	mov eax, edx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalArrayRef_30:
	mov eax, [ebp-0x58]
Scr_EvalArrayRef_260:
	lea ecx, [eax+eax*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [eax+ecx*4]
	add ecx, [ebp-0x54]
	mov ebx, 0x80018005
	mov eax, ecx
	mul ebx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x1
	mov edx, [ebp-0x58]
	mov eax, [ebp-0x54]
	call GetNewVariableIndexInternal3
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x54]
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x34], eax
	mov edx, [ebp-0x1c]
	add edx, 0x8002
	mov [ebp-0x3c], edx
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x38], ecx
	movzx edi, word [eax+scrVarGlob]
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_EvalArrayRef_150
	shl edx, 0x4
	mov esi, [edx+scrVarGlob+0x80028]
	shr esi, 0x8
	lea edx, [esi+esi*4]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	mov eax, [ebp-0x54]
	lea ecx, [edx+eax]
	mov eax, ecx
	mul ebx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	mov ebx, ecx
	sub ebx, eax
	lea ecx, [ebx+0x1]
	mov [ebp-0x30], ecx
	lea edx, [ebx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x2c], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_EvalArrayRef_160
Scr_EvalArrayRef_310:
	mov dword [ebp-0x30], 0x0
	mov edx, 0x8002
Scr_EvalArrayRef_300:
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x2], ax
	mov edx, edi
	movzx eax, word [ebp-0x30]
	mov ecx, [ebp-0x34]
Scr_EvalArrayRef_200:
	mov [ecx+0xe], dx
	mov edx, [ebp-0x38]
	mov word [edx+0x2], 0x0
	shl edi, 0x4
	mov [edi+scrVarGlob+0x8002e], ax
	shl dword [ebp-0x3c], 0x4
	mov ecx, [ebp-0x3c]
	movzx eax, word [ecx+scrVarGlob]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x48], eax
	mov eax, [eax+0x8]
Scr_EvalArrayRef_110:
	or eax, 0x1
	mov edx, [ebp-0x48]
	mov [edx+0x8], eax
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz Scr_EvalArrayRef_170
Scr_EvalArrayRef_210:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx ecx, word [esi+scrVarGlob]
	mov [ebp-0x26], cx
	movzx eax, cx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x24], ax
	cmp ebx, ecx
	jz Scr_EvalArrayRef_180
	test byte [ebx+0x8], 0x60
	jz Scr_EvalArrayRef_190
	movzx eax, word [ebp-0x24]
Scr_EvalArrayRef_180:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx edx, word [ebx]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov ecx, [ebp-0x48]
	mov [ecx+0x4], edx
Scr_EvalArrayRef_270:
	mov eax, edx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalArrayRef_190:
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x26]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx edx, word [ebx+0xc]
	mov [ecx+0xc], dx
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x24]
	jmp Scr_EvalArrayRef_180
Scr_EvalArrayRef_150:
	mov edx, edi
	mov ecx, [ebp-0x34]
	movzx eax, word [ecx+0xc]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], di
	xor eax, eax
	jmp Scr_EvalArrayRef_200
Scr_EvalArrayRef_170:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_EvalArrayRef_210
Scr_EvalArrayRef_20:
	shr edx, 0x8
	cmp ebx, edx
	jz Scr_EvalArrayRef_220
	movzx eax, word [esi+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x40], eax
	jz Scr_EvalArrayRef_230
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jnz Scr_EvalArrayRef_240
	jmp Scr_EvalArrayRef_220
Scr_EvalArrayRef_250:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jz Scr_EvalArrayRef_220
Scr_EvalArrayRef_240:
	movzx eax, word [edx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x40], eax
	jnz Scr_EvalArrayRef_250
	jmp Scr_EvalArrayRef_230
Scr_EvalArrayRef_40:
	mov eax, [scrVarPub+0x3c]
	mov [ebp-0x54], eax
	mov edx, [scrVarPub+0x40]
	mov [ebp-0x58], edx
	mov eax, edx
	jmp Scr_EvalArrayRef_260
Scr_EvalArrayRef_130:
	mov dword [esp], _cstring_string_character
	call Scr_Error
	xor edx, edx
	jmp Scr_EvalArrayRef_270
Scr_EvalArrayRef_120:
	mov [ebp-0x4c], esi
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov edx, [eax+0x8]
	and edx, 0x1f
	cmp edx, 0x15
	jz Scr_EvalArrayRef_280
	mov dword [scrVarPub+0x10], 0x1
	mov eax, [edx*4+var_typename]
	jmp Scr_EvalArrayRef_290
Scr_EvalArrayRef_60:
	mov dword [ebp-0x48], 0x0
	jmp Scr_EvalArrayRef_100
Scr_EvalArrayRef_160:
	shr ecx, 0x8
	cmp esi, ecx
	jz Scr_EvalArrayRef_300
	movzx ebx, word [ebx+0xc]
	mov [ebp-0x30], ebx
	mov edx, ebx
	add edx, 0x8002
	mov ecx, edx
	shl ecx, 0x4
	lea eax, [ecx+scrVarGlob]
	cmp [ebp-0x2c], eax
	jz Scr_EvalArrayRef_310
Scr_EvalArrayRef_320:
	movzx eax, word [ecx+scrVarGlob]
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x80020]
	mov eax, [ecx+0x8]
	shr eax, 0x8
	cmp eax, esi
	jz Scr_EvalArrayRef_300
	movzx ecx, word [ecx+0xc]
	mov [ebp-0x30], ecx
	mov edx, ecx
	add edx, 0x8002
	mov ecx, edx
	shl ecx, 0x4
	lea eax, [ecx+scrVarGlob]
	cmp [ebp-0x2c], eax
	jnz Scr_EvalArrayRef_320
	jmp Scr_EvalArrayRef_310
Scr_EvalArrayRef_140:
	mov dword [esp], _cstring_vector_component
	call Scr_Error
	xor edx, edx
	jmp Scr_EvalArrayRef_270
Scr_EvalArrayRef_280:
	cmp word [eax+0x4], 0x0
	jnz Scr_EvalArrayRef_330
	mov edx, esi
	jmp Scr_EvalArrayRef_270
Scr_EvalArrayRef_70:
	mov [esp], esi
	call RemoveRefToObject
	mov dword [ebp-0x48], 0x0
	jmp Scr_EvalArrayRef_100
Scr_EvalArrayRef_330:
	mov [esp], esi
	call RemoveRefToObject
	movzx edx, word [scrVarGlob+0x14]
	mov [ebp-0x20], dx
	test dx, dx
	jz Scr_EvalArrayRef_340
Scr_EvalArrayRef_380:
	movzx eax, word [ebp-0x20]
	shl eax, 0x4
	add eax, 0x10
	mov [ebp-0x50], eax
	mov ebx, eax
	add ebx, scrVarGlob
	movzx ecx, word [eax+scrVarGlob]
	mov [ebp-0x22], cx
	movzx eax, cx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1e], ax
	cmp ebx, ecx
	jz Scr_EvalArrayRef_350
	test byte [ebx+0x8], 0x60
	jnz Scr_EvalArrayRef_360
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x22]
	mov [edx+scrVarGlob+0x10], ax
	movzx eax, word [ebp-0x20]
	mov edx, [ebp-0x50]
	mov [edx+scrVarGlob], ax
	movzx edx, word [ebx+0xc]
	mov [ecx+0xc], dx
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1e]
Scr_EvalArrayRef_350:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx edx, word [ebp-0x20]
	mov [ecx+0xc], dx
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx ebx, word [ebx]
	mov eax, ebx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov esi, ebx
	mov edx, ebx
	mov eax, [ebp-0x4c]
	call CopyArray
	mov ecx, [ebp-0x48]
	mov [ecx+0x4], ebx
	mov edx, esi
	jmp Scr_EvalArrayRef_270
Scr_EvalArrayRef_50:
	shl eax, 0x4
	cmp word [eax+scrVarGlob+0x14], 0x0
	jnz Scr_EvalArrayRef_370
	mov [esp], esi
	call RemoveRefToObject
	mov dword [scrVarPub+0x10], 0x1
	mov dword [esp], _cstring_readonly_array_c
	call Scr_Error
	xor edx, edx
	jmp Scr_EvalArrayRef_270
Scr_EvalArrayRef_80:
	mov [esp], esi
	call SL_RemoveRefToString
	mov dword [ebp-0x48], 0x0
	jmp Scr_EvalArrayRef_100
Scr_EvalArrayRef_360:
	movzx eax, word [ebp-0x1e]
	jmp Scr_EvalArrayRef_350
Scr_EvalArrayRef_340:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_EvalArrayRef_380
Scr_EvalArrayRef_90:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov dword [ebp-0x48], 0x0
	jmp Scr_EvalArrayRef_100


;Scr_EvalEquality(VariableValue*, VariableValue*)
Scr_EvalEquality:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov edx, edi
	mov eax, esi
	call Scr_CastWeakerPair
	cmp dword [esi+0x4], 0xb
	ja Scr_EvalEquality_10
	mov eax, [esi+0x4]
	jmp dword [eax*4+Scr_EvalEquality_jumptab_0]
Scr_EvalEquality_140:
	mov edx, [esi]
	mov eax, edx
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x80028]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_EvalEquality_20
Scr_EvalEquality_100:
	cmp byte [scrVarPub+0x8], 0x0
	jnz Scr_EvalEquality_30
Scr_EvalEquality_10:
	mov [ebp+0xc], edi
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalEquality_200:
	mov dword [esi+0x4], 0x6
Scr_EvalEquality_180:
	mov eax, [esi]
	xor edx, edx
	cmp eax, [edi]
	setz dl
	mov [esi], edx
Scr_EvalEquality_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalEquality_170:
	mov dword [esi+0x4], 0x6
	movss xmm0, dword [esi]
	subss xmm0, [edi]
	andps xmm0, [_data16_7fffffff]
	movss xmm1, dword [_float_0_00000100]
	xor edx, edx
	ucomiss xmm1, xmm0
	seta dl
	mov [esi], edx
	jmp Scr_EvalEquality_40
Scr_EvalEquality_160:
	mov dword [esi+0x4], 0x6
	mov edx, [esi]
	mov ecx, [edi]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ecx]
	jz Scr_EvalEquality_50
Scr_EvalEquality_110:
	xor ebx, ebx
Scr_EvalEquality_120:
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalEquality_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalEquality_70
	sub eax, 0x1
	mov [edx-0x4], ax
	mov ecx, [edi]
Scr_EvalEquality_60:
	cmp byte [ecx-0x1], 0x0
	jnz Scr_EvalEquality_80
	lea edx, [ecx-0x4]
	movzx eax, word [ecx-0x4]
	test ax, ax
	jz Scr_EvalEquality_90
	sub eax, 0x1
	mov [ecx-0x4], ax
Scr_EvalEquality_80:
	mov [esi], ebx
	jmp Scr_EvalEquality_40
Scr_EvalEquality_150:
	mov dword [esi+0x4], 0x6
	mov eax, [esi]
	xor ebx, ebx
	cmp eax, [edi]
	setz bl
	mov [esp], eax
	call SL_RemoveRefToString
	mov eax, [edi]
	mov [esp], eax
	call SL_RemoveRefToString
	mov [esi], ebx
	jmp Scr_EvalEquality_40
Scr_EvalEquality_130:
	mov dword [esi+0x4], 0x6
	mov dword [esi], 0x1
	jmp Scr_EvalEquality_40
Scr_EvalEquality_190:
	mov dword [esi+0x4], 0x6
	mov eax, [esi]
	cmp eax, [edi]
	setz al
	movzx eax, al
	mov [esi], eax
	jmp Scr_EvalEquality_40
Scr_EvalEquality_20:
	mov eax, [edi]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x80028]
	and eax, 0x1f
	cmp eax, 0x15
	jz Scr_EvalEquality_100
Scr_EvalEquality_30:
	mov dword [esi+0x4], 0x6
	xor ebx, ebx
	cmp edx, [edi]
	setz bl
	mov [esp], edx
	call RemoveRefToObject
	mov eax, [edi]
	mov [esp], eax
	call RemoveRefToObject
	mov [esi], ebx
	jmp Scr_EvalEquality_40
Scr_EvalEquality_50:
	jp Scr_EvalEquality_110
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz Scr_EvalEquality_110
	jp Scr_EvalEquality_110
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz Scr_EvalEquality_110
	jp Scr_EvalEquality_110
	mov ebx, 0x1
	jmp Scr_EvalEquality_120
Scr_EvalEquality_70:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov ecx, [edi]
	jmp Scr_EvalEquality_60
Scr_EvalEquality_90:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	mov [esi], ebx
	jmp Scr_EvalEquality_40
	
	
Scr_EvalEquality_jumptab_0:
	dd Scr_EvalEquality_130
	dd Scr_EvalEquality_140
	dd Scr_EvalEquality_150
	dd Scr_EvalEquality_150
	dd Scr_EvalEquality_160
	dd Scr_EvalEquality_170
	dd Scr_EvalEquality_180
	dd Scr_EvalEquality_10
	dd Scr_EvalEquality_10
	dd Scr_EvalEquality_190
	dd Scr_EvalEquality_10
	dd Scr_EvalEquality_200


;Scr_EvalMultiply(VariableValue*, VariableValue*)
Scr_EvalMultiply:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Scr_CastWeakerPair
	mov eax, [ebx+0x4]
	cmp eax, 0x5
	jz Scr_EvalMultiply_10
	cmp eax, 0x6
	jz Scr_EvalMultiply_20
	cmp eax, 0x4
	jz Scr_EvalMultiply_30
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalMultiply_10:
	movss xmm0, dword [ebx]
	mulss xmm0, [esi]
	movss [ebx], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalMultiply_20:
	mov eax, [ebx]
	imul eax, [esi]
	mov [ebx], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalMultiply_30:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x10
	call MT_Alloc
	lea edi, [eax+0x4]
	mov dword [edi-0x4], 0x0
	mov edx, [ebx]
	mov ecx, [esi]
	movss xmm0, dword [edx]
	mulss xmm0, [ecx]
	movss [eax+0x4], xmm0
	mov eax, [ebx]
	mov edx, [esi]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	movss [edi+0x4], xmm0
	mov eax, [ebx]
	mov edx, [esi]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	movss [edi+0x8], xmm0
	mov edx, [ebx]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalMultiply_40
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalMultiply_50
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalMultiply_40:
	mov edx, [esi]
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalMultiply_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalMultiply_70
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalMultiply_60:
	mov [ebx], edi
Scr_EvalMultiply_80:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalMultiply_50:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalMultiply_40
Scr_EvalMultiply_70:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	mov [ebx], edi
	jmp Scr_EvalMultiply_80


;Scr_EvalVariable(unsigned int)
Scr_EvalVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov edx, [eax+0x8]
	and edx, 0x1f
	mov [ebp-0x1c], edx
	mov edi, [eax+0x4]
	mov eax, edx
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_EvalVariable_10
	test eax, eax
	jz Scr_EvalVariable_20
	cmp eax, 0x2
	jbe Scr_EvalVariable_30
	cmp byte [edi-0x1], 0x0
	jnz Scr_EvalVariable_40
	add word [edi-0x4], 0x1
	mov esi, [ebp-0x1c]
	mov eax, edi
	mov edx, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalVariable_20:
	lea eax, [edi+0x1]
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	mov esi, [ebp-0x1c]
Scr_EvalVariable_50:
	mov eax, edi
	mov edx, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalVariable_10:
	mov esi, edx
	mov eax, edi
	mov edx, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalVariable_40:
	mov esi, [ebp-0x1c]
	jmp Scr_EvalVariable_50
Scr_EvalVariable_30:
	mov [esp], edi
	call SL_AddRefToString
	mov esi, [ebp-0x1c]
	mov eax, edi
	mov edx, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Scr_InitClassMap()
Scr_InitClassMap:
	push ebp
	mov ebp, esp
	mov eax, g_classMap+0x2
Scr_InitClassMap_10:
	mov word [eax], 0x0
	mov word [eax-0x2], 0x0
	add eax, 0xc
	cmp eax, g_classMap+0x32
	jnz Scr_InitClassMap_10
	pop ebp
	ret
	nop


;SetVariableValue(unsigned int, VariableValue*)
SetVariableValue:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x4]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja SetVariableValue_10
	test eax, eax
	jz SetVariableValue_20
	cmp eax, 0x2
	jbe SetVariableValue_30
	cmp byte [ecx-0x1], 0x0
	jnz SetVariableValue_10
	lea edx, [ecx-0x4]
	movzx eax, word [ecx-0x4]
	test ax, ax
	jz SetVariableValue_40
	sub eax, 0x1
	mov [ecx-0x4], ax
	mov edx, [ebx+0x8]
SetVariableValue_10:
	and edx, 0xffffffe0
	mov [ebx+0x8], edx
	or edx, [esi+0x4]
	mov [ebx+0x8], edx
	mov eax, [esi]
	mov [ebx+0x4], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SetVariableValue_20:
	mov [esp], ecx
	call RemoveRefToObject
	mov edx, [ebx+0x8]
	and edx, 0xffffffe0
	mov [ebx+0x8], edx
	or edx, [esi+0x4]
	mov [ebx+0x8], edx
	mov eax, [esi]
	mov [ebx+0x4], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SetVariableValue_40:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	mov edx, [ebx+0x8]
	jmp SetVariableValue_10
SetVariableValue_30:
	mov [esp], ecx
	call SL_RemoveRefToString
	mov edx, [ebx+0x8]
	and edx, 0xffffffe0
	mov [ebx+0x8], edx
	or edx, [esi+0x4]
	mov [ebx+0x8], edx
	mov eax, [esi]
	mov [ebx+0x4], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;FindArrayVariable(unsigned int, int)
FindArrayVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ebx, [ebp+0xc]
	add ebx, 0x800000
	and ebx, 0xffffff
	lea ecx, [ebx+ebx*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [ebx+ecx*4]
	add ecx, [ebp+0x8]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x80020]
	mov edx, [esi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz FindArrayVariable_10
FindArrayVariable_40:
	mov ecx, 0x8002
FindArrayVariable_20:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindArrayVariable_10:
	shr edx, 0x8
	cmp ebx, edx
	jz FindArrayVariable_20
	movzx ecx, word [esi+0xc]
	jmp FindArrayVariable_30
FindArrayVariable_50:
	movzx ecx, word [edx+0xc]
FindArrayVariable_30:
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz FindArrayVariable_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz FindArrayVariable_50
	add ecx, 0x8002
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;GetObjectVariable(unsigned int, unsigned int)
GetObjectVariable:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	add eax, 0x10000
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetVariableIndexInternal
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	leave
	ret
	nop


;IsValidArrayIndex(unsigned int)
IsValidArrayIndex:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x7e8000
	cmp eax, 0xfe7fff
	setbe al
	movzx eax, al
	pop ebp
	ret


;RemoveRefToObject(unsigned int)
RemoveRefToObject:
RemoveRefToObject_200:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ecx, [ebp+0x8]
	lea edi, [ecx+0x1]
	mov edx, edi
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	mov [ebp-0x2c], eax
	mov ebx, eax
	movzx eax, word [eax+0x4]
	test ax, ax
	jz RemoveRefToObject_10
	sub eax, 0x1
	mov [ebx+0x4], ax
	test ax, ax
	jnz RemoveRefToObject_20
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x1f
	cmp eax, 0x14
	jz RemoveRefToObject_30
RemoveRefToObject_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemoveRefToObject_10:
	mov eax, [ebp-0x2c]
	cmp word [eax+0xe], 0x0
	jnz RemoveRefToObject_40
RemoveRefToObject_70:
	mov eax, [ebp-0x2c]
	movzx edx, word [eax+0xc]
	mov dword [eax+0x8], 0x0
	movzx eax, word [scrVarGlob+0x14]
	mov ecx, [ebp-0x2c]
	mov [ecx+0x4], ax
	mov eax, edx
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx eax, word [scrVarGlob+0x14]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	mov [scrVarGlob+0x14], dx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemoveRefToObject_40:
	add word [edx+scrVarGlob+0x4], 0x1
	movzx eax, word [eax+0xe]
	test ax, ax
	jnz RemoveRefToObject_50
RemoveRefToObject_120:
	mov ebx, [ebp-0x2c]
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz RemoveRefToObject_60
	movzx edx, word [ebx+0xc]
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x14]
	mov [ebx+0x4], ax
	mov eax, edx
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx eax, word [scrVarGlob+0x14]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	mov [scrVarGlob+0x14], dx
	jmp RemoveRefToObject_70
RemoveRefToObject_30:
	cmp word [ebx+0xe], 0x0
	jnz RemoveRefToObject_20
	mov eax, edx
	and eax, 0xffffffe0
	or eax, 0x13
	mov [ebx+0x8], eax
	movzx edx, word [ebx+0x6]
	add edx, 0x800000
	and edx, 0xffffff
	mov [esp+0x4], edx
	shr eax, 0x8
	lea eax, [eax+eax*2]
	movzx eax, word [eax*4+g_classMap+0x2]
	mov [esp], eax
	call RemoveVariable
	jmp RemoveRefToObject_20
RemoveRefToObject_60:
	sub eax, 0x1
	mov [ebx+0x4], ax
	jmp RemoveRefToObject_70
RemoveRefToObject_50:
	movzx eax, ax
	shl eax, 0x4
	mov ebx, [eax+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	lea esi, [ecx+edx]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x24], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz RemoveRefToObject_80
RemoveRefToObject_210:
	xor esi, esi
RemoveRefToObject_90:
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov edx, [ebp-0x2c]
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	movzx eax, word [ebx+scrVarGlob+0x8002e]
	movzx esi, ax
	test ax, ax
	jnz RemoveRefToObject_90
	mov ebx, [ebp-0x2c]
	movzx ebx, word [ebx+0xe]
	mov [ebp-0x20], ebx
	shl edi, 0x4
	mov [ebp-0x30], edi
	mov eax, ebx
	jmp RemoveRefToObject_100
RemoveRefToObject_170:
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], dx
	cmp word [ebp-0x4a], 0x0
	jz RemoveRefToObject_110
RemoveRefToObject_180:
	shl edx, 0x4
	mov [edx+scrVarGlob+0x80022], cx
RemoveRefToObject_190:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov ecx, [ebp-0x1c]
	mov word [ecx+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], si
	mov [scrVarGlob+0x80024], si
	cmp word [ebp-0x26], 0x0
	jz RemoveRefToObject_120
	mov eax, [ebp-0x20]
RemoveRefToObject_100:
	add eax, 0x8002
	shl eax, 0x4
	movzx edi, word [eax+scrVarGlob+0xe]
	mov [ebp-0x26], di
	movzx edx, di
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [ebp-0x20], edx
	lea ebx, [eax+scrVarGlob]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja RemoveRefToObject_130
	test eax, eax
	jz RemoveRefToObject_140
	cmp eax, 0x2
	jbe RemoveRefToObject_150
	cmp byte [edx-0x1], 0x0
	jnz RemoveRefToObject_130
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz RemoveRefToObject_160
	sub eax, 0x1
	mov [edx-0x4], ax
RemoveRefToObject_130:
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx eax, word [ebx+0xe]
	mov [ebp-0x4a], ax
	movzx edx, ax
	mov ecx, [ebp-0x1c]
	movzx eax, word [ecx+0x2]
	movzx ecx, ax
	test ax, ax
	jnz RemoveRefToObject_170
	mov eax, edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	mov edi, [ebp-0x30]
	mov [edi+scrVarGlob+0xe], ax
	cmp word [ebp-0x4a], 0x0
	jnz RemoveRefToObject_180
RemoveRefToObject_110:
	mov edx, [ebp-0x30]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl ecx, 0x4
	movzx edx, word [ecx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp RemoveRefToObject_190
RemoveRefToObject_140:
	mov [esp], edx
	call RemoveRefToObject_200
	jmp RemoveRefToObject_130
RemoveRefToObject_150:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp RemoveRefToObject_130
RemoveRefToObject_80:
	shr ecx, 0x8
	cmp ebx, ecx
	jz RemoveRefToObject_90
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jz RemoveRefToObject_210
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz RemoveRefToObject_220
	jmp RemoveRefToObject_90
RemoveRefToObject_230:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jz RemoveRefToObject_90
RemoveRefToObject_220:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jnz RemoveRefToObject_230
	jmp RemoveRefToObject_210
RemoveRefToObject_160:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp RemoveRefToObject_130
	nop
	add [eax], al


;RemoveRefToVector(float const*)
RemoveRefToVector:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	cmp byte [edx-0x1], 0x0
	jnz RemoveRefToVector_10
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz RemoveRefToVector_20
	sub eax, 0x1
	mov [edx-0x4], ax
RemoveRefToVector_10:
	leave
	ret
RemoveRefToVector_20:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	leave
	ret


;Scr_AddClassField(unsigned int, char const*, unsigned int)
Scr_AddClassField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*2]
	movzx eax, word [eax*4+g_classMap]
	mov [ebp-0x4c], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SL_GetCanonicalString
	lea edi, [eax+0x800000]
	and edi, 0xffffff
	lea ecx, [edi+edi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [edi+ecx*4]
	add ecx, [ebp-0x4c]
	mov esi, 0x80018005
	mov eax, ecx
	mul esi
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	sub ecx, eax
	add ecx, 0x1
	mov edx, edi
	mov eax, [ebp-0x4c]
	call GetNewVariableIndexInternal3
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x4c]
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x40], eax
	mov ecx, [ebp-0x1c]
	add ecx, 0x8002
	mov [ebp-0x48], ecx
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x44], edx
	movzx edi, word [eax+scrVarGlob]
	mov ecx, [ebp-0x40]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_AddClassField_10
	shl edx, 0x4
	mov ebx, [edx+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	add edx, [ebp-0x4c]
	mov [ebp-0x5c], edx
	mov eax, edx
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, [ebp-0x5c]
	sub ecx, eax
	lea esi, [ecx+0x1]
	lea edx, [ecx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x38], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x3c], eax
	mov ecx, [eax+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_AddClassField_20
Scr_AddClassField_80:
	xor esi, esi
	mov edx, 0x8002
Scr_AddClassField_70:
	shl edx, 0x4
	movzx ecx, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x2], cx
	mov edx, edi
	mov eax, esi
	mov ecx, [ebp-0x40]
	jmp Scr_AddClassField_30
Scr_AddClassField_10:
	mov edx, edi
	movzx eax, word [ecx+0xc]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], di
	xor eax, eax
Scr_AddClassField_30:
	mov [ecx+0xe], dx
	mov edx, [ebp-0x44]
	mov word [edx+0x2], 0x0
	shl edi, 0x4
	mov [edi+scrVarGlob+0x8002e], ax
	shl dword [ebp-0x48], 0x4
	mov ecx, [ebp-0x48]
	movzx edx, word [ecx+scrVarGlob]
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov eax, [edx+0x8]
	and eax, 0xffffffe0
	or eax, 0x6
	mov [edx+0x8], eax
	movzx eax, word [ebp+0x10]
	mov [ebp-0x50], eax
	mov [edx+0x4], eax
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0xc]
	mov [esp], edx
	call SL_GetString_
	mov [ebp-0x20], eax
	lea ecx, [eax+eax*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [eax+ecx*4]
	add ecx, [ebp-0x4c]
	mov ebx, 0x80018005
	mov eax, ecx
	mul ebx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x1
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x4c]
	call GetNewVariableIndexInternal3
	mov [ebp-0x24], eax
	add eax, 0x8002
	mov [ebp-0x34], eax
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x30], edx
	movzx eax, word [eax+scrVarGlob]
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0x40]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_AddClassField_40
	shl edx, 0x4
	mov esi, [edx+scrVarGlob+0x80028]
	shr esi, 0x8
	lea edx, [esi+esi*4]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	mov eax, [ebp-0x4c]
	lea ecx, [edx+eax]
	mov eax, ecx
	mul ebx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	mov ebx, ecx
	sub ebx, eax
	lea edi, [ebx+0x1]
	lea edx, [ebx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x28], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_AddClassField_50
Scr_AddClassField_120:
	xor edi, edi
	mov edx, 0x8002
Scr_AddClassField_110:
	shl edx, 0x4
	movzx eax, word [ebp-0x24]
	mov [edx+scrVarGlob+0x2], ax
	movzx edx, word [ebp-0x2c]
	mov eax, edi
	jmp Scr_AddClassField_60
Scr_AddClassField_40:
	movzx edx, word [ebp-0x2c]
	movzx eax, word [ecx+0xc]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	xor eax, eax
Scr_AddClassField_60:
	mov ecx, [ebp-0x40]
	mov [ecx+0xe], dx
	mov edx, [ebp-0x30]
	mov word [edx+0x2], 0x0
	shl dword [ebp-0x2c], 0x4
	mov ecx, [ebp-0x2c]
	mov [ecx+scrVarGlob+0x8002e], ax
	shl dword [ebp-0x34], 0x4
	mov eax, [ebp-0x34]
	movzx ebx, word [eax+scrVarGlob]
	mov edx, [ebp-0x20]
	mov [esp], edx
	call SL_RemoveRefToString
	shl ebx, 0x4
	add ebx, scrVarGlob+0x80020
	mov eax, [ebx+0x8]
	and eax, 0xffffffe0
	or eax, 0x6
	mov [ebx+0x8], eax
	mov ecx, [ebp-0x50]
	mov [ebx+0x4], ecx
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddClassField_20:
	shr ecx, 0x8
	cmp ebx, ecx
	jz Scr_AddClassField_70
	mov eax, [ebp-0x3c]
	movzx esi, word [eax+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x38], eax
	jz Scr_AddClassField_80
Scr_AddClassField_100:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jz Scr_AddClassField_90
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x38], eax
	jnz Scr_AddClassField_100
	jmp Scr_AddClassField_80
Scr_AddClassField_50:
	shr ecx, 0x8
	cmp esi, ecx
	jz Scr_AddClassField_110
	movzx edi, word [ebx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x28], eax
	jz Scr_AddClassField_120
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, esi
	jz Scr_AddClassField_130
Scr_AddClassField_140:
	movzx edi, word [edx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x28], eax
	jz Scr_AddClassField_120
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jnz Scr_AddClassField_140
Scr_AddClassField_130:
	lea edx, [edi+0x8002]
	jmp Scr_AddClassField_110
Scr_AddClassField_90:
	lea edx, [esi+0x8002]
	jmp Scr_AddClassField_70
	nop


;Scr_ClearWaitTime(unsigned int)
Scr_ClearWaitTime:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	mov eax, [edx+0x8]
	and eax, 0xffffffe0
	or eax, 0xe
	mov [edx+0x8], eax
	pop ebp
	ret
	nop


;Scr_EvalLessEqual(VariableValue*, VariableValue*)
Scr_EvalLessEqual:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Scr_CastWeakerPair
	mov eax, [ebx+0x4]
	cmp eax, 0x5
	jz Scr_EvalLessEqual_10
	cmp eax, 0x6
	jz Scr_EvalLessEqual_20
	mov [esp+0x4], esi
	mov [esp], ebx
	call Scr_UnmatchingTypesError
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalLessEqual_10:
	mov dword [ebx+0x4], 0x6
	movss xmm0, dword [ebx]
	xor eax, eax
	ucomiss xmm0, [esi]
	seta al
	mov [ebx], eax
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalLessEqual_20:
	mov eax, [ebx]
	cmp eax, [esi]
	setg al
	movzx eax, al
	mov [ebx], eax
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_EvalShiftLeft(VariableValue*, VariableValue*)
Scr_EvalShiftLeft:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp dword [edx+0x4], 0x6
	jz Scr_EvalShiftLeft_10
Scr_EvalShiftLeft_20:
	mov [ebp+0xc], eax
	mov [ebp+0x8], edx
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalShiftLeft_10:
	cmp dword [eax+0x4], 0x6
	jnz Scr_EvalShiftLeft_20
	mov ecx, [eax]
	shl dword [edx], cl
	pop ebp
	ret
	nop


;Scr_EvalSizeValue(VariableValue*)
Scr_EvalSizeValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	cmp eax, 0x1
	jz Scr_EvalSizeValue_10
	cmp eax, 0x2
	jz Scr_EvalSizeValue_20
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_size_cannot_be_a
	call va
	mov ebx, eax
	mov edx, [esi]
	mov eax, [esi+0x4]
	sub eax, 0x1
	cmp eax, 0x3
	jbe Scr_EvalSizeValue_30
Scr_EvalSizeValue_60:
	mov dword [esi+0x4], 0x0
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
Scr_EvalSizeValue_30:
	test eax, eax
	jz Scr_EvalSizeValue_40
	cmp eax, 0x2
	jbe Scr_EvalSizeValue_50
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalSizeValue_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalSizeValue_70
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_EvalSizeValue_60
Scr_EvalSizeValue_10:
	mov ecx, [esi]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x10]
	mov dword [esi+0x4], 0x6
	mov eax, [edx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jz Scr_EvalSizeValue_80
	mov eax, 0x1
Scr_EvalSizeValue_90:
	mov [esi], eax
	mov [ebp+0x8], ecx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp RemoveRefToObject
Scr_EvalSizeValue_20:
	mov dword [esi+0x4], 0x6
	mov ebx, [esi]
	mov [esp], ebx
	call SL_ConvertToString
	mov edi, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esi], ecx
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SL_RemoveRefToString
Scr_EvalSizeValue_40:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_EvalSizeValue_60
Scr_EvalSizeValue_80:
	movzx eax, word [edx+0x6]
	jmp Scr_EvalSizeValue_90
Scr_EvalSizeValue_50:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_EvalSizeValue_60
Scr_EvalSizeValue_70:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalSizeValue_60


;Scr_FreeEntityNum(int, unsigned int)
Scr_FreeEntityNum:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp byte [scrVarPub+0x34], 0x0
	jz Scr_FreeEntityNum_10
	lea eax, [eax+eax*2]
	movzx eax, word [eax*4+g_classMap+0x2]
	mov [ebp-0x10], eax
	lea esi, [edx+0x800000]
	and esi, 0xffffff
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	add ecx, eax
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_FreeEntityNum_20
Scr_FreeEntityNum_50:
	mov ecx, 0x8002
Scr_FreeEntityNum_40:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jnz Scr_FreeEntityNum_30
Scr_FreeEntityNum_10:
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_FreeEntityNum_30:
	shl edx, 0x4
	mov ebx, [edx+scrVarGlob+0x80024]
	lea edx, [ebx+0x1]
	shl edx, 0x4
	lea ecx, [edx+scrVarGlob]
	mov eax, [ecx+0x8]
	and eax, 0xffffffe0
	or eax, 0x13
	mov [ecx+0x8], eax
	add word [edx+scrVarGlob+0x4], 0x1
	mov eax, [scrVarPub+0x2c]
	mov [ecx+0x6], ax
	mov [scrVarPub+0x2c], ebx
	mov [ebp+0xc], esi
	mov eax, [ebp-0x10]
	mov [ebp+0x8], eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp RemoveVariable
Scr_FreeEntityNum_20:
	shr edx, 0x8
	cmp esi, edx
	jz Scr_FreeEntityNum_40
	movzx ecx, word [ebx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz Scr_FreeEntityNum_50
Scr_FreeEntityNum_70:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jz Scr_FreeEntityNum_60
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jnz Scr_FreeEntityNum_70
	jmp Scr_FreeEntityNum_50
Scr_FreeEntityNum_60:
	add ecx, 0x8002
	jmp Scr_FreeEntityNum_40


;Scr_InitVariables()
Scr_InitVariables:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, 0x2
Scr_InitVariables_10:
	mov ebx, esi
	shl ebx, 0x4
	lea ecx, [ebx+scrVarGlob]
	mov dword [ecx+0x8], 0x0
	mov eax, esi
	lea edx, [esi-0x1]
	mov [ebx+scrVarGlob], dx
	mov [ecx+0xc], dx
	mov [ecx+0x4], si
	sub eax, 0x2
	mov [ecx+0x2], ax
	add esi, 0x1
	cmp esi, 0x8001
	jnz Scr_InitVariables_10
	mov dword [scrVarGlob+0x18], 0x0
	mov word [scrVarGlob+0x10], 0x0
	mov word [scrVarGlob+0x1c], 0x0
	mov word [scrVarGlob+0x14], 0x1
	mov word [scrVarGlob+0x22], 0x0
	mov word [scrVarGlob+0x12], 0x7fff
	mov word [scrVarGlob+0x80004], 0x0
	mov si, 0x8003
Scr_InitVariables_20:
	mov ebx, esi
	shl ebx, 0x4
	lea ecx, [ebx+scrVarGlob]
	mov dword [ecx+0x8], 0x0
	mov edx, esi
	lea eax, [esi+0x7ffe]
	mov [ebx+scrVarGlob], ax
	mov [ecx+0xc], ax
	lea eax, [esi+0x7fff]
	mov [ecx+0x4], ax
	add dx, 0x7ffd
	mov [ecx+0x2], dx
	add esi, 0x1
	cmp esi, 0x18000
	jnz Scr_InitVariables_20
	mov dword [scrVarGlob+0x80028], 0x0
	mov word [scrVarGlob+0x80020], 0x0
	mov word [scrVarGlob+0x8002c], 0x0
	mov word [scrVarGlob+0x80024], 0x1
	mov word [scrVarGlob+0x80032], 0x0
	mov word [scrVarGlob+0x80022], 0xfffd
	mov word [scrVarGlob+0x17fff4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;ClearVariableField(unsigned int, unsigned int, VariableValue*)
ClearVariableField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x28], eax
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	lea esi, [edi+edx]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x20], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz ClearVariableField_10
ClearVariableField_60:
	shl edi, 0x4
	add edi, scrVarGlob+0x10
	mov [ebp-0x24], edi
	mov edx, [edi+0x8]
	mov eax, edx
	and eax, 0x1f
	cmp eax, 0x14
	jz ClearVariableField_20
ClearVariableField_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ClearVariableField_20:
	mov edi, edx
	shr edi, 0x8
	add ebx, 0x800000
	and ebx, 0xffffff
	lea eax, [edi+edi*2]
	movzx ecx, word [eax*4+g_classMap]
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	add ecx, eax
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x1c], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x80020]
	mov edx, [esi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz ClearVariableField_30
ClearVariableField_90:
	mov ecx, 0x8002
ClearVariableField_80:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jz ClearVariableField_40
	mov eax, [ebp-0x28]
	add eax, 0x8
	mov dword [eax+0x4], 0x0
	mov [esp+0xc], eax
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	mov [esp+0x8], eax
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x6]
	mov [esp+0x4], eax
	mov [esp], edi
	call SetEntityFieldValue
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ClearVariableField_10:
	shr ecx, 0x8
	cmp ebx, ecx
	jz ClearVariableField_50
ClearVariableField_70:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jz ClearVariableField_60
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz ClearVariableField_70
ClearVariableField_50:
	test esi, esi
	jz ClearVariableField_60
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp RemoveVariable
ClearVariableField_30:
	shr edx, 0x8
	cmp ebx, edx
	jz ClearVariableField_80
	movzx ecx, word [esi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jz ClearVariableField_90
ClearVariableField_110:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jz ClearVariableField_100
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jnz ClearVariableField_110
	jmp ClearVariableField_90
ClearVariableField_100:
	add ecx, 0x8002
	jmp ClearVariableField_80


;ClearVariableValue(unsigned int)
ClearVariableValue:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x4]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja ClearVariableValue_10
	test eax, eax
	jz ClearVariableValue_20
	cmp eax, 0x2
	jbe ClearVariableValue_30
	cmp byte [ecx-0x1], 0x0
	jnz ClearVariableValue_10
	lea edx, [ecx-0x4]
	movzx eax, word [ecx-0x4]
	test ax, ax
	jz ClearVariableValue_40
	sub eax, 0x1
	mov [ecx-0x4], ax
	mov edx, [ebx+0x8]
ClearVariableValue_10:
	and edx, 0xffffffe0
	mov [ebx+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClearVariableValue_20:
	mov [esp], ecx
	call RemoveRefToObject
	mov edx, [ebx+0x8]
	and edx, 0xffffffe0
	mov [ebx+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClearVariableValue_40:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	mov edx, [ebx+0x8]
	jmp ClearVariableValue_10
ClearVariableValue_30:
	mov [esp], ecx
	call SL_RemoveRefToString
	mov edx, [ebx+0x8]
	and edx, 0xffffffe0
	mov [ebx+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;FindObjectVariable(unsigned int, unsigned int)
FindObjectVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0xc]
	add esi, 0x10000
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	add ecx, [ebp+0x8]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz FindObjectVariable_10
FindObjectVariable_40:
	mov ecx, 0x8002
FindObjectVariable_20:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindObjectVariable_10:
	shr edx, 0x8
	cmp esi, edx
	jz FindObjectVariable_20
	movzx ecx, word [ebx+0xc]
	jmp FindObjectVariable_30
FindObjectVariable_50:
	movzx ecx, word [edx+0xc]
FindObjectVariable_30:
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz FindObjectVariable_40
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jnz FindObjectVariable_50
	add ecx, 0x8002
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RemoveNextVariable(unsigned int)
RemoveNextVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	lea eax, [edx+0x1]
	mov [ebp-0x28], eax
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0xe]
	lea edi, [eax+0x8002]
	mov eax, edi
	shl eax, 0x4
	mov ebx, [eax+scrVarGlob+0x8]
	shr ebx, 0x8
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	lea esi, [edx+eax]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x24], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz RemoveNextVariable_10
RemoveNextVariable_110:
	xor esi, esi
RemoveNextVariable_100:
	mov edx, [ebp-0x28]
	shl edx, 0x4
	add edx, scrVarGlob
	mov eax, esi
	call MakeVariableExternal
	shl edi, 0x4
	lea esi, [edi+scrVarGlob]
	mov edx, [esi+0x4]
	mov eax, [esi+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja RemoveNextVariable_20
	test eax, eax
	jz RemoveNextVariable_30
	cmp eax, 0x2
	jbe RemoveNextVariable_40
	cmp byte [edx-0x1], 0x0
	jz RemoveNextVariable_50
RemoveNextVariable_20:
	movzx edi, word [esi+0xc]
	mov eax, edi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx eax, word [esi+0xe]
	mov [ebp-0x1e], ax
	movzx ecx, ax
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0x2]
	movzx ebx, ax
	test ax, ax
	jz RemoveNextVariable_60
	mov eax, ebx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], cx
	cmp word [ebp-0x1e], 0x0
	jz RemoveNextVariable_70
RemoveNextVariable_80:
	shl ecx, 0x4
	mov [ecx+scrVarGlob+0x80022], bx
RemoveNextVariable_90:
	mov dword [esi+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [esi+0x4], ax
	mov eax, [ebp-0x1c]
	mov word [eax+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], di
	mov [scrVarGlob+0x80024], di
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemoveNextVariable_60:
	mov eax, [ebp-0x28]
	shl eax, 0x4
	mov edx, ecx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0xe], dx
	cmp word [ebp-0x1e], 0x0
	jnz RemoveNextVariable_80
RemoveNextVariable_70:
	shl dword [ebp-0x28], 0x4
	mov edx, [ebp-0x28]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl ebx, 0x4
	movzx edx, word [ebx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp RemoveNextVariable_90
RemoveNextVariable_10:
	shr ecx, 0x8
	cmp ebx, ecx
	jz RemoveNextVariable_100
RemoveNextVariable_120:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jz RemoveNextVariable_110
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz RemoveNextVariable_120
	jmp RemoveNextVariable_100
RemoveNextVariable_30:
	mov [esp], edx
	call RemoveRefToObject
	jmp RemoveNextVariable_20
RemoveNextVariable_50:
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz RemoveNextVariable_130
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp RemoveNextVariable_20
RemoveNextVariable_40:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp RemoveNextVariable_20
RemoveNextVariable_130:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp RemoveNextVariable_20


;SafeRemoveVariable(unsigned int, unsigned int)
SafeRemoveVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	mov eax, [ebp+0x8]
	lea esi, [edx+eax]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz SafeRemoveVariable_10
SafeRemoveVariable_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SafeRemoveVariable_10:
	shr ecx, 0x8
	cmp ebx, ecx
	jz SafeRemoveVariable_20
SafeRemoveVariable_40:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz SafeRemoveVariable_30
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz SafeRemoveVariable_40
SafeRemoveVariable_20:
	test esi, esi
	jz SafeRemoveVariable_30
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov eax, [ebp+0x8]
	add eax, 0x1
	mov [ebp-0x24], eax
	mov edx, eax
	shl edx, 0x4
	add edx, scrVarGlob
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	add ebx, scrVarGlob+0x80020
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja SafeRemoveVariable_50
	test eax, eax
	jz SafeRemoveVariable_60
	cmp eax, 0x2
	jbe SafeRemoveVariable_70
	cmp byte [edx-0x1], 0x0
	jnz SafeRemoveVariable_50
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz SafeRemoveVariable_80
	sub eax, 0x1
	mov [edx-0x4], ax
SafeRemoveVariable_50:
	movzx edi, word [ebx+0xc]
	mov eax, edi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx edx, word [ebx+0xe]
	mov [ebp-0x1e], dx
	movzx ecx, dx
	movzx eax, word [eax+0x2]
	movzx esi, ax
	test ax, ax
	jz SafeRemoveVariable_90
	mov eax, esi
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], cx
	cmp word [ebp-0x1e], 0x0
	jz SafeRemoveVariable_100
SafeRemoveVariable_110:
	shl ecx, 0x4
	mov [ecx+scrVarGlob+0x80022], si
SafeRemoveVariable_120:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov eax, [ebp-0x1c]
	mov word [eax+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], di
	mov [scrVarGlob+0x80024], di
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SafeRemoveVariable_90:
	mov eax, [ebp-0x24]
	shl eax, 0x4
	mov edx, ecx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0xe], dx
	cmp word [ebp-0x1e], 0x0
	jnz SafeRemoveVariable_110
SafeRemoveVariable_100:
	shl dword [ebp-0x24], 0x4
	mov edx, [ebp-0x24]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl esi, 0x4
	movzx edx, word [esi+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp SafeRemoveVariable_120
SafeRemoveVariable_60:
	mov [esp], edx
	call RemoveRefToObject
	jmp SafeRemoveVariable_50
SafeRemoveVariable_70:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp SafeRemoveVariable_50
SafeRemoveVariable_80:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp SafeRemoveVariable_50


;Scr_EvalInequality(VariableValue*, VariableValue*)
Scr_EvalInequality:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_EvalEquality
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Scr_EvalShiftRight(VariableValue*, VariableValue*)
Scr_EvalShiftRight:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp dword [edx+0x4], 0x6
	jz Scr_EvalShiftRight_10
Scr_EvalShiftRight_20:
	mov [ebp+0xc], eax
	mov [ebp+0x8], edx
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalShiftRight_10:
	cmp dword [eax+0x4], 0x6
	jnz Scr_EvalShiftRight_20
	mov ecx, [eax]
	sar dword [edx], cl
	pop ebp
	ret
	nop


;Scr_FreeEntityList()
Scr_FreeEntityList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [scrVarPub+0x2c]
	mov [ebp-0x30], eax
	test eax, eax
	jnz Scr_FreeEntityList_10
Scr_FreeEntityList_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_FreeEntityList_30:
	mov edi, [ebp-0x30]
	mov [esp], edi
	call RemoveRefToObject
	mov eax, [scrVarPub+0x2c]
	mov [ebp-0x30], eax
	test eax, eax
	jz Scr_FreeEntityList_20
Scr_FreeEntityList_10:
	mov edx, eax
	add edx, 0x1
	mov [ebp-0x2c], edx
	mov eax, edx
	shl eax, 0x4
	lea edi, [eax+scrVarGlob]
	movzx eax, word [edi+0x6]
	mov [scrVarPub+0x2c], eax
	mov word [edi+0x6], 0x0
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call Scr_CancelNotifyList
	movzx eax, word [edi+0xe]
	test ax, ax
	jz Scr_FreeEntityList_30
	movzx eax, ax
	shl eax, 0x4
	mov ebx, [eax+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	mov eax, [ebp-0x30]
	lea esi, [edx+eax]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea esi, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x24], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_FreeEntityList_40
Scr_FreeEntityList_150:
	xor esi, esi
Scr_FreeEntityList_50:
	mov eax, esi
	shl eax, 0x4
	movzx ebx, word [eax+scrVarGlob+0x80020]
	mov edx, edi
	mov eax, esi
	call MakeVariableExternal
	shl ebx, 0x4
	movzx eax, word [ebx+scrVarGlob+0x8002e]
	movzx esi, ax
	test ax, ax
	jnz Scr_FreeEntityList_50
	movzx edi, word [edi+0xe]
	mov [ebp-0x20], edi
	mov edi, [ebp-0x2c]
	shl edi, 0x4
	mov [ebp-0x34], edi
	jmp Scr_FreeEntityList_60
Scr_FreeEntityList_120:
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], dx
	cmp word [ebp-0x4a], 0x0
	jz Scr_FreeEntityList_70
Scr_FreeEntityList_130:
	shl edx, 0x4
	mov [edx+scrVarGlob+0x80022], cx
Scr_FreeEntityList_140:
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	mov ecx, [ebp-0x1c]
	mov word [ecx+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], si
	mov [scrVarGlob+0x80024], si
	cmp word [ebp-0x26], 0x0
	jz Scr_FreeEntityList_30
Scr_FreeEntityList_60:
	mov eax, [ebp-0x20]
	add eax, 0x8002
	shl eax, 0x4
	movzx edx, word [eax+scrVarGlob+0xe]
	mov [ebp-0x26], dx
	movzx edx, dx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [ebp-0x20], edx
	lea ebx, [eax+scrVarGlob]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_FreeEntityList_80
	test eax, eax
	jz Scr_FreeEntityList_90
	cmp eax, 0x2
	jbe Scr_FreeEntityList_100
	cmp byte [edx-0x1], 0x0
	jnz Scr_FreeEntityList_80
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_FreeEntityList_110
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_FreeEntityList_80:
	movzx esi, word [ebx+0xc]
	mov eax, esi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx ecx, word [ebx+0xe]
	mov [ebp-0x4a], cx
	movzx edx, cx
	movzx eax, word [eax+0x2]
	movzx ecx, ax
	test ax, ax
	jnz Scr_FreeEntityList_120
	mov eax, edx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	mov edi, [ebp-0x34]
	mov [edi+scrVarGlob+0xe], ax
	cmp word [ebp-0x4a], 0x0
	jnz Scr_FreeEntityList_130
Scr_FreeEntityList_70:
	mov edx, [ebp-0x34]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl ecx, 0x4
	movzx edx, word [ecx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp Scr_FreeEntityList_140
Scr_FreeEntityList_40:
	shr ecx, 0x8
	cmp ebx, ecx
	jz Scr_FreeEntityList_50
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jz Scr_FreeEntityList_150
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jnz Scr_FreeEntityList_160
	jmp Scr_FreeEntityList_50
Scr_FreeEntityList_170:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jz Scr_FreeEntityList_50
Scr_FreeEntityList_160:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x24], eax
	jnz Scr_FreeEntityList_170
	jmp Scr_FreeEntityList_150
Scr_FreeEntityList_90:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_FreeEntityList_80
Scr_FreeEntityList_100:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_FreeEntityList_80
Scr_FreeEntityList_110:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_FreeEntityList_80
	nop


;Scr_GetEntityIdRef(unsigned int)
Scr_GetEntityIdRef:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	shl edx, 0x4
	add edx, scrVarGlob+0x10
	movzx eax, word [edx+0x9]
	shl eax, 0x10
	and ecx, 0xffff
	or ecx, eax
	mov cx, [edx+0x6]
	mov eax, ecx
	pop ebp
	ret


;Scr_RemoveClassMap(unsigned int)
Scr_RemoveClassMap:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	cmp byte [scrVarPub+0x34], 0x0
	jz Scr_RemoveClassMap_10
	lea eax, [eax+eax*2]
	lea ebx, [eax*4]
	movzx eax, word [ebx+g_classMap+0x2]
	test ax, ax
	jnz Scr_RemoveClassMap_20
	movzx eax, word [ebx+g_classMap]
	test ax, ax
	jnz Scr_RemoveClassMap_30
Scr_RemoveClassMap_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_RemoveClassMap_30:
	movzx eax, ax
	mov [esp], eax
	call RemoveRefToObject
	mov word [ebx+g_classMap], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_RemoveClassMap_20:
	movzx eax, ax
	mov [esp], eax
	call RemoveRefToObject
	mov word [ebx+g_classMap+0x2], 0x0
	movzx eax, word [ebx+g_classMap]
	test ax, ax
	jz Scr_RemoveClassMap_10
	jmp Scr_RemoveClassMap_30
	nop


;GetNewArrayVariable(unsigned int, unsigned int)
GetNewArrayVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	add esi, 0x800000
	and esi, 0xffffff
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	lea ecx, [edi+ecx]
	mov eax, 0x80018005
	mul ecx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	sub ecx, eax
	add ecx, 0x1
	mov edx, esi
	mov eax, edi
	call GetNewVariableIndexInternal3
	mov [ebp-0x1c], eax
	mov eax, edi
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x28], eax
	mov ecx, [ebp-0x1c]
	add ecx, 0x8002
	mov [ebp-0x30], ecx
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x2c], edx
	movzx eax, word [eax+scrVarGlob]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz GetNewArrayVariable_10
	shl edx, 0x4
	mov esi, [edx+scrVarGlob+0x80028]
	shr esi, 0x8
	lea edx, [esi+esi*4]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea ecx, [edi+edx]
	mov eax, 0x80018005
	mul ecx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	mov ebx, ecx
	sub ebx, eax
	lea edi, [ebx+0x1]
	lea edx, [ebx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x20], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz GetNewArrayVariable_20
GetNewArrayVariable_50:
	xor edi, edi
	mov edx, 0x8002
GetNewArrayVariable_40:
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x2], ax
	movzx edx, word [ebp-0x24]
	mov eax, edi
	jmp GetNewArrayVariable_30
GetNewArrayVariable_10:
	movzx edx, word [ebp-0x24]
	movzx eax, word [ecx+0xc]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	xor eax, eax
GetNewArrayVariable_30:
	mov ecx, [ebp-0x28]
	mov [ecx+0xe], dx
	mov edx, [ebp-0x2c]
	mov word [edx+0x2], 0x0
	shl dword [ebp-0x24], 0x4
	mov ecx, [ebp-0x24]
	mov [ecx+scrVarGlob+0x8002e], ax
	shl dword [ebp-0x30], 0x4
	mov edx, [ebp-0x30]
	movzx eax, word [edx+scrVarGlob]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetNewArrayVariable_20:
	shr ecx, 0x8
	cmp esi, ecx
	jz GetNewArrayVariable_40
	movzx edi, word [ebx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jz GetNewArrayVariable_50
GetNewArrayVariable_70:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jz GetNewArrayVariable_60
	movzx edi, word [edx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jnz GetNewArrayVariable_70
	jmp GetNewArrayVariable_50
GetNewArrayVariable_60:
	lea edx, [edi+0x8002]
	jmp GetNewArrayVariable_40


;RemoveVariableValue(unsigned int, unsigned int)
RemoveVariableValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	mov edx, eax
	shl edx, 0x4
	movzx ebx, word [edx+scrVarGlob+0x80020]
	mov edx, [ebp+0x8]
	add edx, 0x1
	mov [ebp-0x24], edx
	shl edx, 0x4
	add edx, scrVarGlob
	call MakeVariableExternal
	shl ebx, 0x4
	lea esi, [ebx+scrVarGlob+0x80020]
	mov edx, [esi+0x4]
	mov eax, [esi+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja RemoveVariableValue_10
	test eax, eax
	jz RemoveVariableValue_20
	cmp eax, 0x2
	jbe RemoveVariableValue_30
	cmp byte [edx-0x1], 0x0
	jz RemoveVariableValue_40
RemoveVariableValue_10:
	movzx edi, word [esi+0xc]
	mov eax, edi
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x1c], eax
	movzx eax, word [esi+0xe]
	mov [ebp-0x1e], ax
	movzx ecx, ax
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0x2]
	movzx ebx, ax
	test ax, ax
	jz RemoveVariableValue_50
	mov eax, ebx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x80020]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x8002e], cx
	cmp word [ebp-0x1e], 0x0
	jz RemoveVariableValue_60
RemoveVariableValue_70:
	shl ecx, 0x4
	mov [ecx+scrVarGlob+0x80022], bx
RemoveVariableValue_80:
	mov dword [esi+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [esi+0x4], ax
	mov eax, [ebp-0x1c]
	mov word [eax+0x2], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], di
	mov [scrVarGlob+0x80024], di
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemoveVariableValue_50:
	mov eax, [ebp-0x24]
	shl eax, 0x4
	mov edx, ecx
	shl edx, 0x4
	movzx edx, word [edx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0xe], dx
	cmp word [ebp-0x1e], 0x0
	jnz RemoveVariableValue_70
RemoveVariableValue_60:
	shl dword [ebp-0x24], 0x4
	mov edx, [ebp-0x24]
	movzx eax, word [edx+scrVarGlob+0xc]
	shl eax, 0x4
	shl ebx, 0x4
	movzx edx, word [ebx+scrVarGlob+0x80020]
	mov [eax+scrVarGlob+0x12], dx
	jmp RemoveVariableValue_80
RemoveVariableValue_20:
	mov [esp], edx
	call RemoveRefToObject
	jmp RemoveVariableValue_10
RemoveVariableValue_40:
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz RemoveVariableValue_90
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp RemoveVariableValue_10
RemoveVariableValue_30:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp RemoveVariableValue_10
RemoveVariableValue_90:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp RemoveVariableValue_10


;Scr_CastDebugString(VariableValue*)
Scr_CastDebugString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	cmp eax, 0xb
	ja Scr_CastDebugString_10
	jmp dword [eax*4+Scr_CastDebugString_jumptab_0]
Scr_CastDebugString_10:
	mov eax, [eax*4+var_typename]
Scr_CastDebugString_70:
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call SL_GetString_
	mov ebx, eax
	mov edx, [esi]
	mov eax, [esi+0x4]
	sub eax, 0x1
	cmp eax, 0x3
	jbe Scr_CastDebugString_20
Scr_CastDebugString_50:
	mov dword [esi+0x4], 0x2
	mov [esi], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastDebugString_20:
	test eax, eax
	jz Scr_CastDebugString_30
	cmp eax, 0x2
	jbe Scr_CastDebugString_40
	cmp byte [edx-0x1], 0x0
	jnz Scr_CastDebugString_50
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_CastDebugString_60
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_CastDebugString_50
Scr_CastDebugString_110:
	mov eax, [esi]
	movzx ebx, ax
	shr eax, 0x10
	mov [esp], eax
	call Scr_GetAnims
	mov [esp+0x4], ebx
	mov [esp], eax
	call XAnimGetAnimDebugName
	jmp Scr_CastDebugString_70
Scr_CastDebugString_90:
	mov [esp], esi
	call Scr_CastString
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastDebugString_100:
	mov dword [esi+0x4], 0x2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_CastDebugString_80:
	mov eax, [esi]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x18]
	and eax, 0x1f
	mov eax, [eax*4+var_typename]
	jmp Scr_CastDebugString_70
Scr_CastDebugString_40:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_CastDebugString_50
Scr_CastDebugString_30:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_CastDebugString_50
Scr_CastDebugString_60:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_CastDebugString_50
	
	
Scr_CastDebugString_jumptab_0:
	dd Scr_CastDebugString_10
	dd Scr_CastDebugString_80
	dd Scr_CastDebugString_90
	dd Scr_CastDebugString_100
	dd Scr_CastDebugString_90
	dd Scr_CastDebugString_90
	dd Scr_CastDebugString_90
	dd Scr_CastDebugString_10
	dd Scr_CastDebugString_10
	dd Scr_CastDebugString_10
	dd Scr_CastDebugString_10
	dd Scr_CastDebugString_110


;Scr_EvalFieldObject(unsigned int, VariableValue*)
Scr_EvalFieldObject:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax+0x4]
	cmp edx, 0x1
	jz Scr_EvalFieldObject_10
	mov ebx, edx
	mov ecx, [eax]
Scr_EvalFieldObject_60:
	lea eax, [edx-0x1]
	cmp eax, 0x3
	ja Scr_EvalFieldObject_20
	test eax, eax
	jz Scr_EvalFieldObject_30
	cmp eax, 0x2
	jbe Scr_EvalFieldObject_40
	cmp byte [ecx-0x1], 0x0
	jz Scr_EvalFieldObject_50
Scr_EvalFieldObject_20:
	mov eax, [ebx*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_a_field
	call va
	mov [esp], eax
	call Scr_Error
	xor esi, esi
	mov eax, esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalFieldObject_10:
	mov esi, [eax]
	mov ecx, esi
	mov eax, esi
	shl eax, 0x4
	mov ebx, [eax+scrVarGlob+0x18]
	and ebx, 0x1f
	cmp ebx, 0x14
	jg Scr_EvalFieldObject_60
	mov [ebp-0x10], esi
	shl dword [ebp+0x8], 0x4
	mov ebx, [ebp+0x8]
	add ebx, scrVarGlob+0x80020
	mov ecx, [ebx+0x4]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_EvalFieldObject_70
	test eax, eax
	jz Scr_EvalFieldObject_80
	cmp eax, 0x2
	jbe Scr_EvalFieldObject_90
	cmp byte [ecx-0x1], 0x0
	jnz Scr_EvalFieldObject_70
	lea edx, [ecx-0x4]
	movzx eax, word [ecx-0x4]
	test ax, ax
	jz Scr_EvalFieldObject_100
	sub eax, 0x1
	mov [ecx-0x4], ax
	mov edx, [ebx+0x8]
Scr_EvalFieldObject_70:
	and edx, 0xffffffe0
	or edx, 0x1
	mov [ebx+0x8], edx
	mov eax, [ebp-0x10]
	mov [ebx+0x4], eax
	mov eax, esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalFieldObject_50:
	lea edx, [ecx-0x4]
	movzx eax, word [ecx-0x4]
	test ax, ax
	jz Scr_EvalFieldObject_110
	sub eax, 0x1
	mov [ecx-0x4], ax
	jmp Scr_EvalFieldObject_20
Scr_EvalFieldObject_30:
	mov [esp], ecx
	call RemoveRefToObject
	jmp Scr_EvalFieldObject_20
Scr_EvalFieldObject_40:
	mov [esp], ecx
	call SL_RemoveRefToString
	jmp Scr_EvalFieldObject_20
Scr_EvalFieldObject_90:
	mov [esp], ecx
	call SL_RemoveRefToString
	mov edx, [ebx+0x8]
	jmp Scr_EvalFieldObject_70
Scr_EvalFieldObject_110:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	jmp Scr_EvalFieldObject_20
Scr_EvalFieldObject_80:
	mov [esp], ecx
	call RemoveRefToObject
	mov edx, [ebx+0x8]
	jmp Scr_EvalFieldObject_70
Scr_EvalFieldObject_100:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	mov edx, [ebx+0x8]
	jmp Scr_EvalFieldObject_70


;Scr_KillEndonThread(unsigned int)
Scr_KillEndonThread:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	shl ebx, 0x4
	add ebx, scrVarGlob+0x10
	movzx eax, word [ebx+0x6]
	mov [esp], eax
	call RemoveRefToObject
	mov eax, [ebx+0x8]
	and eax, 0xffffffe0
	or eax, 0x16
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SetNewVariableValue(unsigned int, VariableValue*)
SetNewVariableValue:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	shl edx, 0x4
	add edx, scrVarGlob+0x80020
	mov eax, [edx+0x8]
	or eax, [ecx+0x4]
	mov [edx+0x8], eax
	mov eax, [ecx]
	mov [edx+0x4], eax
	pop ebp
	ret


;GetNewObjectVariable(unsigned int, unsigned int)
GetNewObjectVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	add esi, 0x10000
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	lea ecx, [edi+ecx]
	mov eax, 0x80018005
	mul ecx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	sub ecx, eax
	add ecx, 0x1
	mov edx, esi
	mov eax, edi
	call GetNewVariableIndexInternal3
	mov [ebp-0x1c], eax
	mov eax, edi
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x28], eax
	mov ecx, [ebp-0x1c]
	add ecx, 0x8002
	mov [ebp-0x30], ecx
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x2c], edx
	movzx eax, word [eax+scrVarGlob]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz GetNewObjectVariable_10
	shl edx, 0x4
	mov esi, [edx+scrVarGlob+0x80028]
	shr esi, 0x8
	lea edx, [esi+esi*4]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea ecx, [edi+edx]
	mov eax, 0x80018005
	mul ecx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	mov ebx, ecx
	sub ebx, eax
	lea edi, [ebx+0x1]
	lea edx, [ebx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x20], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz GetNewObjectVariable_20
GetNewObjectVariable_50:
	xor edi, edi
	mov edx, 0x8002
GetNewObjectVariable_40:
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x2], ax
	movzx edx, word [ebp-0x24]
	mov eax, edi
	jmp GetNewObjectVariable_30
GetNewObjectVariable_10:
	movzx edx, word [ebp-0x24]
	movzx eax, word [ecx+0xc]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	xor eax, eax
GetNewObjectVariable_30:
	mov ecx, [ebp-0x28]
	mov [ecx+0xe], dx
	mov edx, [ebp-0x2c]
	mov word [edx+0x2], 0x0
	shl dword [ebp-0x24], 0x4
	mov ecx, [ebp-0x24]
	mov [ecx+scrVarGlob+0x8002e], ax
	shl dword [ebp-0x30], 0x4
	mov edx, [ebp-0x30]
	movzx eax, word [edx+scrVarGlob]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetNewObjectVariable_20:
	shr ecx, 0x8
	cmp esi, ecx
	jz GetNewObjectVariable_40
	movzx edi, word [ebx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jz GetNewObjectVariable_50
GetNewObjectVariable_70:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jz GetNewObjectVariable_60
	movzx edi, word [edx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jnz GetNewObjectVariable_70
	jmp GetNewObjectVariable_50
GetNewObjectVariable_60:
	lea edx, [edi+0x8002]
	jmp GetNewObjectVariable_40


;GetSafeParentLocalId(unsigned int)
GetSafeParentLocalId:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x1
	shl eax, 0x4
	mov edx, [eax+scrVarGlob+0x8]
	mov eax, edx
	and eax, 0x1f
	cmp eax, 0x11
	jz GetSafeParentLocalId_10
	xor eax, eax
	pop ebp
	ret
GetSafeParentLocalId_10:
	mov eax, edx
	shr eax, 0x8
	pop ebp
	ret
	nop


;GetVariableKeyObject(unsigned int)
GetVariableKeyObject:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x80028]
	shr eax, 0x8
	sub eax, 0x10000
	pop ebp
	ret
	nop


;RemoveObjectVariable(unsigned int, unsigned int)
RemoveObjectVariable:
	push ebp
	mov ebp, esp
	add dword [ebp+0xc], 0x10000
	pop ebp
	jmp RemoveVariable


;Scr_EvalGreaterEqual(VariableValue*, VariableValue*)
Scr_EvalGreaterEqual:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Scr_CastWeakerPair
	mov eax, [ebx+0x4]
	cmp eax, 0x5
	jz Scr_EvalGreaterEqual_10
	cmp eax, 0x6
	jz Scr_EvalGreaterEqual_20
	mov [esp+0x4], esi
	mov [esp], ebx
	call Scr_UnmatchingTypesError
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalGreaterEqual_10:
	mov dword [ebx+0x4], 0x6
	movss xmm0, dword [esi]
	xor eax, eax
	ucomiss xmm0, [ebx]
	seta al
	mov [ebx], eax
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalGreaterEqual_20:
	mov eax, [ebx]
	cmp eax, [esi]
	setl al
	movzx eax, al
	mov [ebx], eax
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_FreeGameVariable(int)
Scr_FreeGameVariable:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	test eax, eax
	jz Scr_FreeGameVariable_10
	mov eax, [scrVarPub+0x24]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	jbe Scr_FreeGameVariable_20
Scr_FreeGameVariable_50:
	movzx edx, word [ebx+0xc]
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	movzx eax, dx
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x80022], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], dx
	mov [scrVarGlob+0x80024], dx
	mov dword [scrVarPub+0x24], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_FreeGameVariable_20:
	test eax, eax
	jz Scr_FreeGameVariable_30
	cmp eax, 0x2
	jbe Scr_FreeGameVariable_40
	cmp byte [edx-0x1], 0x0
	jnz Scr_FreeGameVariable_50
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_FreeGameVariable_60
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_FreeGameVariable_50
Scr_FreeGameVariable_10:
	mov eax, [scrVarPub+0x24]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x80024]
	call Scr_MakeValuePrimitive
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_FreeGameVariable_40:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_FreeGameVariable_50
Scr_FreeGameVariable_30:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_FreeGameVariable_50
Scr_FreeGameVariable_60:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_FreeGameVariable_50


;Scr_GetNumScriptVars()
Scr_GetNumScriptVars:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;GetArrayVariableIndex(unsigned int, unsigned int)
GetArrayVariableIndex:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	add eax, 0x800000
	and eax, 0xffffff
	mov [ebp+0xc], eax
	pop ebp
	jmp GetVariableIndexInternal
	nop


;Scr_AllocGameVariable()
Scr_AllocGameVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov eax, [scrVarPub+0x24]
	test eax, eax
	jnz Scr_AllocGameVariable_10
	movzx edi, word [scrVarGlob+0x80024]
	test di, di
	jz Scr_AllocGameVariable_20
Scr_AllocGameVariable_120:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x80020]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x20], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x80020]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1e], ax
	cmp ebx, ecx
	jz Scr_AllocGameVariable_30
	test byte [ebx+0x8], 0x60
	jz Scr_AllocGameVariable_40
	movzx eax, word [ebp-0x1e]
Scr_AllocGameVariable_30:
	mov [scrVarGlob+0x80024], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x80022], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	mov dword [ecx+0x8], 0x60
	movzx ebx, word [ebx]
	mov [ebp-0x24], ebx
	mov [scrVarPub+0x24], ebx
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz Scr_AllocGameVariable_50
Scr_AllocGameVariable_130:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1c], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x1a], ax
	cmp ebx, ecx
	jz Scr_AllocGameVariable_60
	test byte [ebx+0x8], 0x60
	jz Scr_AllocGameVariable_70
	movzx eax, word [ebp-0x1a]
Scr_AllocGameVariable_60:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx edx, word [ebx]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov [ebp-0x30], edx
	shl dword [ebp-0x24], 0x4
	mov ebx, [ebp-0x24]
	add ebx, scrVarGlob+0x80020
	mov ecx, [ebx+0x4]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_AllocGameVariable_80
	test eax, eax
	jz Scr_AllocGameVariable_90
	cmp eax, 0x2
	jbe Scr_AllocGameVariable_100
	cmp byte [ecx-0x1], 0x0
	jnz Scr_AllocGameVariable_80
	lea edx, [ecx-0x4]
	movzx eax, word [ecx-0x4]
	test ax, ax
	jz Scr_AllocGameVariable_110
	sub eax, 0x1
	mov [ecx-0x4], ax
	mov edx, [ebx+0x8]
Scr_AllocGameVariable_80:
	and edx, 0xffffffe0
	or edx, 0x1
	mov [ebx+0x8], edx
	mov eax, [ebp-0x30]
	mov [ebx+0x4], eax
Scr_AllocGameVariable_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AllocGameVariable_70:
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
	jmp Scr_AllocGameVariable_60
Scr_AllocGameVariable_40:
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x20]
	mov [edx+scrVarGlob+0x80020], ax
	mov [esi+scrVarGlob], di
	movzx eax, word [ebx+0xc]
	mov [ecx+0xc], ax
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1e]
	jmp Scr_AllocGameVariable_30
Scr_AllocGameVariable_20:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_AllocGameVariable_120
Scr_AllocGameVariable_50:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp Scr_AllocGameVariable_130
Scr_AllocGameVariable_100:
	mov [esp], ecx
	call SL_RemoveRefToString
	mov edx, [ebx+0x8]
	jmp Scr_AllocGameVariable_80
Scr_AllocGameVariable_90:
	mov [esp], ecx
	call RemoveRefToObject
	mov edx, [ebx+0x8]
	and edx, 0xffffffe0
	or edx, 0x1
	mov [ebx+0x8], edx
	mov eax, [ebp-0x30]
	mov [ebx+0x4], eax
	jmp Scr_AllocGameVariable_10
Scr_AllocGameVariable_110:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	mov edx, [ebx+0x8]
	jmp Scr_AllocGameVariable_80


;Scr_DumpScriptThreads()
Scr_DumpScriptThreads:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	xor esi, esi
	mov ebx, 0x8003
	mov ecx, scrVarGlob+0x80030
Scr_DumpScriptThreads_20:
	mov edx, [ecx+0x8]
	test dl, 0x60
	jz Scr_DumpScriptThreads_10
	and edx, 0x1f
	lea eax, [esi+0x1]
	cmp edx, 0xa
	cmovz esi, eax
Scr_DumpScriptThreads_10:
	add ebx, 0x1
	add ecx, 0x10
	cmp ebx, 0x18000
	jnz Scr_DumpScriptThreads_20
	test esi, esi
	jnz Scr_DumpScriptThreads_30
Scr_DumpScriptThreads_670:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_DumpScriptThreads_30:
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	shl eax, 0x2
	mov [esp], eax
	call Z_TryVirtualAllocInternal
	mov [ebp-0x118], eax
	test eax, eax
	jz Scr_DumpScriptThreads_40
	mov dword [ebp-0x114], 0x0
	mov dword [ebp-0xbc], 0x8003
	mov dword [ebp-0x120], scrVarGlob+0x80030
	mov eax, [ebp-0x118]
	mov [ebp-0x124], eax
	jmp Scr_DumpScriptThreads_50
Scr_DumpScriptThreads_70:
	add dword [ebp-0xbc], 0x1
	add dword [ebp-0x120], 0x10
	cmp dword [ebp-0xbc], 0x18000
	jz Scr_DumpScriptThreads_60
Scr_DumpScriptThreads_50:
	mov edx, [ebp-0x120]
	mov eax, [edx+0x8]
	test al, 0x60
	jz Scr_DumpScriptThreads_70
	and eax, 0x1f
	cmp eax, 0xa
	jnz Scr_DumpScriptThreads_70
	mov ecx, [ebp-0x124]
	mov [ebp-0xb4], ecx
	add dword [ebp-0x114], 0x1
	add ecx, 0x8c
	mov [ebp-0x124], ecx
	mov edi, [edx+0x4]
	movzx eax, word [edi+0x4]
	mov [ebp-0x11a], ax
	movzx edx, ax
	mov [ebp-0x108], edx
	mov ecx, [edi]
	mov [ebp-0x104], ecx
	lea eax, [edi+0xb]
	mov [ebp-0xac], eax
	cmp word [ebp-0x11a], 0x0
	jnz Scr_DumpScriptThreads_80
	xor esi, esi
	mov dword [ebp-0xd4], 0x1
Scr_DumpScriptThreads_600:
	mov ecx, [ebp-0x104]
	mov [ebp+esi*4-0xa4], ecx
	mov eax, [ebp-0xb4]
	add eax, 0x88
	mov [ebp-0xf8], eax
	mov edx, [ebp-0x108]
	lea eax, [edx+edx*4]
	add eax, [ebp-0xac]
	mov [ebp-0xf0], eax
	movzx ecx, word [edi+0x8]
	mov eax, ecx
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_90
	movss xmm3, dword [_float_1_00000000]
	movss [ebp-0xec], xmm3
Scr_DumpScriptThreads_120:
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_DumpScriptThreads_100
Scr_DumpScriptThreads_300:
	movaps xmm0, xmm3
Scr_DumpScriptThreads_310:
	addss xmm0, [ebp-0xec]
	movss [ebp-0xec], xmm0
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_110
	shl edx, 0x4
	movzx eax, word [edx+scrVarGlob+0x80020]
	movzx edx, ax
	test ax, ax
	jnz Scr_DumpScriptThreads_120
Scr_DumpScriptThreads_110:
	movzx ecx, word [edi+0x8]
Scr_DumpScriptThreads_560:
	lea esi, [ecx+0x10000]
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	add ecx, [scrVarPub+0x1c]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0xe8], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_DumpScriptThreads_130
Scr_DumpScriptThreads_390:
	mov ecx, 0x8002
Scr_DumpScriptThreads_380:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	pxor xmm2, xmm2
	test ax, ax
	jz Scr_DumpScriptThreads_140
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jnz Scr_DumpScriptThreads_150
	movaps xmm2, xmm3
Scr_DumpScriptThreads_140:
	mov ecx, [ebp-0xf8]
	movss [ecx], xmm2
	movzx edi, word [edi+0x8]
	cmp word [ebp-0x11a], 0x0
	jz Scr_DumpScriptThreads_160
	mov dword [ebp-0xc0], 0x0
Scr_DumpScriptThreads_190:
	mov eax, [ebp-0xf0]
	mov edx, [eax-0x4]
	sub eax, 0x5
	mov [ebp-0xf0], eax
	movzx eax, byte [eax]
	cmp al, 0x7
	jz Scr_DumpScriptThreads_170
	sub al, 0x1
	jz Scr_DumpScriptThreads_180
Scr_DumpScriptThreads_320:
	pxor xmm0, xmm0
Scr_DumpScriptThreads_370:
	addss xmm0, [ebp-0xec]
	movss [ebp-0xec], xmm0
Scr_DumpScriptThreads_500:
	add dword [ebp-0xc0], 0x1
	mov eax, [ebp-0xc0]
	cmp [ebp-0x108], eax
	jnz Scr_DumpScriptThreads_190
Scr_DumpScriptThreads_160:
	movss xmm0, dword [ebp-0xec]
	mov edx, [ebp-0xb4]
	movss [edx+0x84], xmm0
	mov eax, [ebp-0xd4]
	mov [edx+0x80], eax
	mov eax, [ebp-0xd4]
	sub eax, 0x1
	mov edi, [ebp-0xd4]
	test edi, edi
	jle Scr_DumpScriptThreads_70
	lea ecx, [ebp+eax*4-0xa4]
	mov edx, [ebp-0xb4]
	xor ebx, ebx
Scr_DumpScriptThreads_200:
	mov eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	sub ecx, 0x4
	add edx, 0x4
	cmp ebx, [ebp-0xd4]
	jl Scr_DumpScriptThreads_200
	add dword [ebp-0xbc], 0x1
	add dword [ebp-0x120], 0x10
	cmp dword [ebp-0xbc], 0x18000
	jnz Scr_DumpScriptThreads_50
Scr_DumpScriptThreads_60:
	mov dword [esp+0xc], ThreadInfoCompare
	mov dword [esp+0x8], 0x8c
	mov edx, [ebp-0x114]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x118]
	mov [esp], ecx
	call qsort
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x17
	call Com_Printf
	mov esi, [ebp-0x114]
	test esi, esi
	jg Scr_DumpScriptThreads_210
	xor esi, esi
	xor ebx, ebx
Scr_DumpScriptThreads_810:
	mov eax, [ebp-0x118]
	mov [esp], eax
	call Z_VirtualFreeInternal
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x17
	call Com_Printf
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_var_usage_d_endo
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [ebp-0xd0], g_classMap
	jmp Scr_DumpScriptThreads_220
Scr_DumpScriptThreads_250:
	mov dword [ebp-0xb0], 0x0
	xor eax, eax
Scr_DumpScriptThreads_290:
	mov [esp+0x10], eax
	mov eax, [ebp-0xb0]
	mov [esp+0xc], eax
	mov edx, [ebp-0xd0]
	mov eax, [edx+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ent_type_s_count
	mov dword [esp], 0x17
	call Com_Printf
Scr_DumpScriptThreads_240:
	add dword [ebp-0xd0], 0xc
	mov ecx, g_classMap+0x30
	cmp ecx, [ebp-0xd0]
	jz Scr_DumpScriptThreads_230
Scr_DumpScriptThreads_220:
	mov edx, [ebp-0xd0]
	movzx eax, word [edx+0x2]
	test ax, ax
	jz Scr_DumpScriptThreads_240
	movzx eax, ax
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_250
	mov dword [ebp-0xb0], 0x0
	pxor xmm0, xmm0
	movss [ebp-0xd8], xmm0
Scr_DumpScriptThreads_280:
	add dword [ebp-0xb0], 0x1
	lea edi, [edx+0x8002]
	mov edx, edi
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_DumpScriptThreads_260
Scr_DumpScriptThreads_860:
	shl edi, 0x4
	movzx eax, word [edi+scrVarGlob+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_270
	shl edx, 0x4
	movzx eax, word [edx+scrVarGlob+0x80020]
	movzx edx, ax
	test ax, ax
	jnz Scr_DumpScriptThreads_280
Scr_DumpScriptThreads_270:
	cvttss2si eax, [ebp-0xd8]
	jmp Scr_DumpScriptThreads_290
Scr_DumpScriptThreads_100:
	mov eax, edx
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x10]
	mov eax, [esi+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_DumpScriptThreads_300
	mov eax, edx
	call Scr_GetObjectUsage
	movzx eax, word [esi+0x4]
	cvtsi2ss xmm1, eax
	movss xmm3, dword [_float_1_00000000]
	addss xmm1, xmm3
	divss xmm0, xmm1
	addss xmm0, xmm3
	jmp Scr_DumpScriptThreads_310
Scr_DumpScriptThreads_180:
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x10]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_DumpScriptThreads_320
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_330
	movaps xmm2, xmm3
Scr_DumpScriptThreads_360:
	shl edx, 0x4
	lea esi, [edx+scrVarGlob+0x80020]
	mov edx, [esi+0x4]
	mov eax, [esi+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_DumpScriptThreads_340
Scr_DumpScriptThreads_410:
	movaps xmm0, xmm3
Scr_DumpScriptThreads_420:
	addss xmm2, xmm0
	movzx eax, word [esi+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_350
	shl edx, 0x4
	movzx eax, word [edx+scrVarGlob+0x80020]
	movzx edx, ax
	test ax, ax
	jnz Scr_DumpScriptThreads_360
Scr_DumpScriptThreads_350:
	movzx eax, word [ebx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	divss xmm2, xmm0
	movaps xmm0, xmm2
	jmp Scr_DumpScriptThreads_370
Scr_DumpScriptThreads_130:
	shr edx, 0x8
	cmp esi, edx
	jz Scr_DumpScriptThreads_380
	movzx eax, word [ebx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0xe8], eax
	jz Scr_DumpScriptThreads_390
Scr_DumpScriptThreads_400:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, esi
	jz Scr_DumpScriptThreads_380
	movzx eax, word [edx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0xe8], eax
	jnz Scr_DumpScriptThreads_400
	jmp Scr_DumpScriptThreads_390
Scr_DumpScriptThreads_340:
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0xe4], eax
	mov eax, [eax+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_DumpScriptThreads_410
	mov eax, edx
	movss [ebp-0x138], xmm2
	call Scr_GetObjectUsage
	mov edx, [ebp-0xe4]
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm1, eax
	movss xmm3, dword [_float_1_00000000]
	addss xmm1, xmm3
	divss xmm0, xmm1
	addss xmm0, xmm3
	movss xmm2, dword [ebp-0x138]
	jmp Scr_DumpScriptThreads_420
Scr_DumpScriptThreads_170:
	shl edi, 0x4
	mov edi, [edi+scrVarGlob+0x18]
	shr edi, 0x8
	mov eax, edi
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_430
	movaps xmm2, xmm3
Scr_DumpScriptThreads_460:
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_DumpScriptThreads_440
Scr_DumpScriptThreads_510:
	movaps xmm0, xmm3
Scr_DumpScriptThreads_520:
	addss xmm2, xmm0
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_450
	shl edx, 0x4
	movzx eax, word [edx+scrVarGlob+0x80020]
	movzx edx, ax
	test ax, ax
	jnz Scr_DumpScriptThreads_460
Scr_DumpScriptThreads_450:
	addss xmm2, [ebp-0xec]
	movss [ebp-0xec], xmm2
	mov ecx, [ebp-0xf8]
	movss xmm0, dword [ecx]
	movss [ebp-0xf4], xmm0
	lea esi, [edi+0x10000]
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	add ecx, [scrVarPub+0x1c]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0xe0], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_DumpScriptThreads_470
Scr_DumpScriptThreads_540:
	mov ecx, 0x8002
Scr_DumpScriptThreads_530:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	pxor xmm2, xmm2
	test ax, ax
	jz Scr_DumpScriptThreads_480
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jnz Scr_DumpScriptThreads_490
	movaps xmm2, xmm3
Scr_DumpScriptThreads_480:
	addss xmm2, [ebp-0xf4]
	mov ecx, [ebp-0xf8]
	movss [ecx], xmm2
	jmp Scr_DumpScriptThreads_500
Scr_DumpScriptThreads_440:
	mov eax, edx
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x10]
	mov eax, [esi+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_DumpScriptThreads_510
	mov eax, edx
	movss [ebp-0x138], xmm2
	call Scr_GetObjectUsage
	movzx eax, word [esi+0x4]
	cvtsi2ss xmm1, eax
	movss xmm3, dword [_float_1_00000000]
	addss xmm1, xmm3
	divss xmm0, xmm1
	addss xmm0, xmm3
	movss xmm2, dword [ebp-0x138]
	jmp Scr_DumpScriptThreads_520
Scr_DumpScriptThreads_470:
	shr edx, 0x8
	cmp esi, edx
	jz Scr_DumpScriptThreads_530
	movzx eax, word [ebx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0xe0], eax
	jz Scr_DumpScriptThreads_540
Scr_DumpScriptThreads_550:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, esi
	jz Scr_DumpScriptThreads_530
	movzx eax, word [edx+0xc]
	lea ecx, [eax+0x8002]
	mov edx, ecx
	shl edx, 0x4
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0xe0], eax
	jnz Scr_DumpScriptThreads_550
	jmp Scr_DumpScriptThreads_540
Scr_DumpScriptThreads_430:
	movaps xmm2, xmm3
	jmp Scr_DumpScriptThreads_450
Scr_DumpScriptThreads_90:
	movss xmm3, dword [_float_1_00000000]
	movss [ebp-0xec], xmm3
	jmp Scr_DumpScriptThreads_560
Scr_DumpScriptThreads_80:
	mov edx, eax
	xor esi, esi
	xor ecx, ecx
	jmp Scr_DumpScriptThreads_570
Scr_DumpScriptThreads_590:
	add ecx, 0x1
	cmp [ebp-0x108], ecx
	jz Scr_DumpScriptThreads_580
Scr_DumpScriptThreads_570:
	movzx eax, byte [edx]
	mov ebx, [edx+0x1]
	add edx, 0x5
	cmp al, 0x7
	jnz Scr_DumpScriptThreads_590
	mov [ebp+esi*4-0xa4], ebx
	add esi, 0x1
	add ecx, 0x1
	cmp [ebp-0x108], ecx
	jnz Scr_DumpScriptThreads_570
Scr_DumpScriptThreads_580:
	lea edx, [esi+0x1]
	mov [ebp-0xd4], edx
	jmp Scr_DumpScriptThreads_600
Scr_DumpScriptThreads_490:
	movaps xmm2, xmm3
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_DumpScriptThreads_610
Scr_DumpScriptThreads_620:
	movaps xmm0, xmm3
Scr_DumpScriptThreads_630:
	addss xmm2, xmm0
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_480
	shl edx, 0x4
	movzx eax, word [edx+scrVarGlob+0x80020]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_480
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jnz Scr_DumpScriptThreads_620
Scr_DumpScriptThreads_610:
	mov eax, edx
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x10]
	mov eax, [esi+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_DumpScriptThreads_620
	mov eax, edx
	movss [ebp-0x138], xmm2
	call Scr_GetObjectUsage
	movzx eax, word [esi+0x4]
	cvtsi2ss xmm1, eax
	movss xmm3, dword [_float_1_00000000]
	addss xmm1, xmm3
	divss xmm0, xmm1
	addss xmm0, xmm3
	movss xmm2, dword [ebp-0x138]
	jmp Scr_DumpScriptThreads_630
Scr_DumpScriptThreads_150:
	movaps xmm2, xmm3
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_DumpScriptThreads_640
Scr_DumpScriptThreads_650:
	movaps xmm0, xmm3
Scr_DumpScriptThreads_660:
	addss xmm2, xmm0
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_140
	shl edx, 0x4
	movzx eax, word [edx+scrVarGlob+0x80020]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_140
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jnz Scr_DumpScriptThreads_650
Scr_DumpScriptThreads_640:
	mov eax, edx
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x10]
	mov eax, [esi+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_DumpScriptThreads_650
	mov eax, edx
	movss [ebp-0x138], xmm2
	call Scr_GetObjectUsage
	movzx eax, word [esi+0x4]
	cvtsi2ss xmm1, eax
	movss xmm3, dword [_float_1_00000000]
	addss xmm1, xmm3
	divss xmm0, xmm1
	addss xmm0, xmm3
	movss xmm2, dword [ebp-0x138]
	jmp Scr_DumpScriptThreads_660
Scr_DumpScriptThreads_330:
	movaps xmm2, xmm3
	movzx eax, word [ebx+0x4]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm3
	divss xmm2, xmm0
	movaps xmm0, xmm2
	jmp Scr_DumpScriptThreads_370
Scr_DumpScriptThreads_40:
	mov dword [esp+0x4], _cstring_cannot_dump_scri
	mov dword [esp], 0x17
	call Com_Printf
	jmp Scr_DumpScriptThreads_670
Scr_DumpScriptThreads_230:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x17
	call Com_Printf
	jmp Scr_DumpScriptThreads_670
Scr_DumpScriptThreads_210:
	mov dword [ebp-0x110], 0x0
	pxor xmm0, xmm0
	movss [ebp-0xfc], xmm0
	movss [ebp-0x100], xmm0
Scr_DumpScriptThreads_780:
	mov eax, [ebp-0x110]
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	mov edx, [ebp-0x118]
	lea edi, [edx+eax*4]
	mov [ebp-0xcc], edi
	lea ecx, [edi+0x8c]
	mov [ebp-0xc8], ecx
	mov [ebp-0xc4], ecx
	mov dword [ebp-0x10c], 0x0
	movaps xmm1, xmm0
	mov eax, edi
Scr_DumpScriptThreads_710:
	add dword [ebp-0x10c], 0x1
	addss xmm0, [eax+0x84]
	addss xmm1, [eax+0x88]
	add dword [ebp-0x110], 0x1
	mov edx, [ebp-0x110]
	cmp [ebp-0x114], edx
	jle Scr_DumpScriptThreads_680
	mov ecx, [edi+0x80]
	mov [ebp-0xdc], ecx
	test ecx, ecx
	jle Scr_DumpScriptThreads_690
	mov eax, [ebp-0xc4]
	mov eax, [eax+0x80]
	mov [ebp-0xb8], eax
	test eax, eax
	jle Scr_DumpScriptThreads_690
	mov edx, [edi]
	mov ecx, [ebp-0xc4]
	mov eax, [ecx]
	cmp edx, eax
	jz Scr_DumpScriptThreads_700
Scr_DumpScriptThreads_730:
	sub edx, eax
	mov eax, edx
	add dword [ebp-0xcc], 0x8c
	add dword [ebp-0xc8], 0x8c
	add dword [ebp-0xc4], 0x8c
	test eax, eax
	jnz Scr_DumpScriptThreads_680
Scr_DumpScriptThreads_750:
	mov eax, [ebp-0xcc]
	jmp Scr_DumpScriptThreads_710
Scr_DumpScriptThreads_700:
	mov ebx, edi
	mov ecx, [ebp-0xc8]
	xor esi, esi
	jmp Scr_DumpScriptThreads_720
Scr_DumpScriptThreads_740:
	cmp esi, [ebp-0xb8]
	jz Scr_DumpScriptThreads_690
	mov edx, [ebx+0x4]
	mov eax, [ecx+0x4]
	add ebx, 0x4
	add ecx, 0x4
	cmp edx, eax
	jnz Scr_DumpScriptThreads_730
Scr_DumpScriptThreads_720:
	add esi, 0x1
	cmp esi, [ebp-0xdc]
	jnz Scr_DumpScriptThreads_740
Scr_DumpScriptThreads_690:
	mov eax, [ebp-0xdc]
	mov edx, [ebp-0xc8]
	sub eax, [edx+0x80]
	add dword [ebp-0xcc], 0x8c
	add dword [ebp-0xc8], 0x8c
	add dword [ebp-0xc4], 0x8c
	test eax, eax
	jz Scr_DumpScriptThreads_750
Scr_DumpScriptThreads_680:
	movss xmm2, dword [ebp-0x100]
	addss xmm2, xmm0
	movss [ebp-0x100], xmm2
	movss xmm2, dword [ebp-0xfc]
	addss xmm2, xmm1
	movss [ebp-0xfc], xmm2
	cvttss2si eax, xmm1
	mov [esp+0x10], eax
	cvttss2si eax, xmm0
	mov [esp+0xc], eax
	mov eax, [ebp-0x10c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_count_d_var_usag
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp+0x8], 0x0
	mov eax, [edi]
	mov [esp+0x4], eax
	mov dword [esp], 0x17
	call Scr_PrintPrevCodePos
	cmp dword [edi+0x80], 0x1
	jg Scr_DumpScriptThreads_760
Scr_DumpScriptThreads_800:
	mov ecx, [ebp-0x110]
	cmp [ebp-0x114], ecx
	jle Scr_DumpScriptThreads_770
	pxor xmm0, xmm0
	jmp Scr_DumpScriptThreads_780
Scr_DumpScriptThreads_760:
	mov esi, edi
	mov ebx, 0x1
Scr_DumpScriptThreads_790:
	mov dword [esp+0x4], _cstring_called_from
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp+0x8], 0x0
	mov eax, [esi+0x4]
	mov [esp+0x4], eax
	mov dword [esp], 0x17
	call Scr_PrintPrevCodePos
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, [edi+0x80]
	jl Scr_DumpScriptThreads_790
	jmp Scr_DumpScriptThreads_800
Scr_DumpScriptThreads_770:
	cvttss2si esi, [ebp-0xfc]
	cvttss2si ebx, [ebp-0x100]
	jmp Scr_DumpScriptThreads_810
Scr_DumpScriptThreads_260:
	mov eax, [edx+scrVarGlob+0x4]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x1e]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_820
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
Scr_DumpScriptThreads_850:
	shl edx, 0x4
	lea esi, [edx+scrVarGlob+0x80020]
	mov edx, [esi+0x4]
	mov eax, [esi+0x8]
	and eax, 0x1f
	sub eax, 0x1
	jz Scr_DumpScriptThreads_830
Scr_DumpScriptThreads_870:
	movaps xmm0, xmm3
Scr_DumpScriptThreads_880:
	addss xmm2, xmm0
	movzx eax, word [esi+0xe]
	movzx edx, ax
	test ax, ax
	jz Scr_DumpScriptThreads_840
	shl edx, 0x4
	movzx eax, word [edx+scrVarGlob+0x80020]
	movzx edx, ax
	test ax, ax
	jnz Scr_DumpScriptThreads_850
	jmp Scr_DumpScriptThreads_840
Scr_DumpScriptThreads_820:
	movss xmm2, dword [_float_1_00000000]
Scr_DumpScriptThreads_840:
	addss xmm2, [ebp-0xd8]
	movss [ebp-0xd8], xmm2
	jmp Scr_DumpScriptThreads_860
Scr_DumpScriptThreads_830:
	mov eax, edx
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x10]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	cmp eax, 0x15
	jnz Scr_DumpScriptThreads_870
	mov eax, edx
	movss [ebp-0x138], xmm2
	call Scr_GetObjectUsage
	movzx eax, word [ebx+0x4]
	cvtsi2ss xmm1, eax
	movss xmm3, dword [_float_1_00000000]
	addss xmm1, xmm3
	divss xmm0, xmm1
	addss xmm0, xmm3
	movss xmm2, dword [ebp-0x138]
	jmp Scr_DumpScriptThreads_880


;Scr_EvalVariableField(unsigned int)
Scr_EvalVariableField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	test eax, eax
	jz Scr_EvalVariableField_10
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov edx, [eax+0x8]
	and edx, 0x1f
	mov [ebp-0x1c], edx
	mov edi, [eax+0x4]
	mov eax, edx
	sub eax, 0x1
	cmp eax, 0x3
	jbe Scr_EvalVariableField_20
	mov esi, edx
Scr_EvalVariableField_60:
	mov eax, edi
	mov edx, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalVariableField_20:
	test eax, eax
	jz Scr_EvalVariableField_30
	cmp eax, 0x2
	jbe Scr_EvalVariableField_40
	cmp byte [edi-0x1], 0x0
	jnz Scr_EvalVariableField_50
	add word [edi-0x4], 0x1
	mov esi, [ebp-0x1c]
	jmp Scr_EvalVariableField_60
Scr_EvalVariableField_10:
	mov edx, [scrVarPub+0x40]
	mov eax, [scrVarPub+0x3c]
	call Scr_EvalVariableEntityField
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_EvalVariableField_30:
	lea eax, [edi+0x1]
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	mov esi, [ebp-0x1c]
	jmp Scr_EvalVariableField_60
Scr_EvalVariableField_50:
	mov esi, [ebp-0x1c]
	jmp Scr_EvalVariableField_60
Scr_EvalVariableField_40:
	mov [esp], edi
	call SL_AddRefToString
	mov esi, [ebp-0x1c]
	jmp Scr_EvalVariableField_60


;Scr_FindVariableField(unsigned int, unsigned int)
Scr_FindVariableField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	lea ecx, [edi+ecx]
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x1c], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_FindVariableField_10
Scr_FindVariableField_60:
	mov ecx, 0x8002
Scr_FindVariableField_50:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jz Scr_FindVariableField_20
	shl edx, 0x4
	lea eax, [edx+scrVarGlob+0x80020]
	mov esi, [eax+0x8]
	and esi, 0x1f
	mov ebx, [eax+0x4]
	lea eax, [esi-0x1]
	cmp eax, 0x3
	jbe Scr_FindVariableField_30
Scr_FindVariableField_110:
	mov [ebp-0x30], ebx
	mov [ebp-0x2c], esi
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
Scr_FindVariableField_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_FindVariableField_20:
	mov eax, edi
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x18]
	and eax, 0x1f
	cmp eax, 0x14
	jz Scr_FindVariableField_40
	mov dword [ebp-0x24], 0x0
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_FindVariableField_10:
	shr edx, 0x8
	cmp esi, edx
	jz Scr_FindVariableField_50
	movzx ecx, word [ebx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jz Scr_FindVariableField_60
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jz Scr_FindVariableField_70
Scr_FindVariableField_80:
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jz Scr_FindVariableField_60
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jnz Scr_FindVariableField_80
Scr_FindVariableField_70:
	add ecx, 0x8002
	jmp Scr_FindVariableField_50
Scr_FindVariableField_30:
	test eax, eax
	jz Scr_FindVariableField_90
	cmp eax, 0x2
	jbe Scr_FindVariableField_100
	cmp byte [ebx-0x1], 0x0
	jnz Scr_FindVariableField_110
	add word [ebx-0x4], 0x1
	jmp Scr_FindVariableField_110
Scr_FindVariableField_90:
	lea eax, [ebx+0x1]
	shl eax, 0x4
	add word [eax+scrVarGlob+0x4], 0x1
	jmp Scr_FindVariableField_110
Scr_FindVariableField_40:
	mov edx, esi
	mov eax, edi
	call Scr_EvalVariableEntityField
	jmp Scr_FindVariableField_120
Scr_FindVariableField_100:
	mov [esp], ebx
	call SL_AddRefToString
	jmp Scr_FindVariableField_110


;Scr_GetThreadWaitTime(unsigned int)
Scr_GetThreadWaitTime:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x18]
	shr eax, 0x8
	pop ebp
	ret


;Scr_SetThreadWaitTime(unsigned int, unsigned int)
Scr_SetThreadWaitTime:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0x1
	shl edx, 0x4
	lea ebx, [edx+scrVarGlob]
	mov eax, [ebx+0x8]
	and eax, 0xe0
	or eax, 0x10
	mov [ebx+0x8], eax
	shl ecx, 0x8
	or [edx+scrVarGlob+0x8], ecx
	pop ebx
	pop ebp
	ret


;Scr_ShutdownVariables()
Scr_ShutdownVariables:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [scrVarPub+0x24]
	test eax, eax
	jz Scr_ShutdownVariables_10
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	jbe Scr_ShutdownVariables_20
Scr_ShutdownVariables_50:
	movzx edx, word [ebx+0xc]
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	movzx eax, dx
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x80022], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], dx
	mov [scrVarGlob+0x80024], dx
	mov dword [scrVarPub+0x24], 0x0
Scr_ShutdownVariables_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_ShutdownVariables_20:
	test eax, eax
	jz Scr_ShutdownVariables_30
	cmp eax, 0x2
	jbe Scr_ShutdownVariables_40
	cmp byte [edx-0x1], 0x0
	jnz Scr_ShutdownVariables_50
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_ShutdownVariables_60
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_ShutdownVariables_50
Scr_ShutdownVariables_40:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_ShutdownVariables_50
Scr_ShutdownVariables_30:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_ShutdownVariables_50
Scr_ShutdownVariables_60:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_ShutdownVariables_50
	nop


;SetVariableFieldValue(unsigned int, VariableValue*)
SetVariableFieldValue:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	test eax, eax
	jz SetVariableFieldValue_10
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov ecx, [ebx+0x4]
	mov edx, [ebx+0x8]
	mov eax, edx
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	jbe SetVariableFieldValue_20
SetVariableFieldValue_50:
	and edx, 0xffffffe0
	mov [ebx+0x8], edx
	or edx, [esi+0x4]
	mov [ebx+0x8], edx
	mov eax, [esi]
	mov [ebx+0x4], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SetVariableFieldValue_20:
	test eax, eax
	jz SetVariableFieldValue_30
	cmp eax, 0x2
	jbe SetVariableFieldValue_40
	cmp byte [ecx-0x1], 0x0
	jnz SetVariableFieldValue_50
	lea edx, [ecx-0x4]
	movzx eax, word [ecx-0x4]
	test ax, ax
	jz SetVariableFieldValue_60
	sub eax, 0x1
	mov [ecx-0x4], ax
	mov edx, [ebx+0x8]
	jmp SetVariableFieldValue_50
SetVariableFieldValue_10:
	mov [esp+0x8], esi
	mov eax, [scrVarPub+0x40]
	mov [esp+0x4], eax
	mov eax, [scrVarPub+0x3c]
	mov [esp], eax
	call SetVariableEntityFieldValue
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SetVariableFieldValue_40:
	mov [esp], ecx
	call SL_RemoveRefToString
	mov edx, [ebx+0x8]
	jmp SetVariableFieldValue_50
SetVariableFieldValue_30:
	mov [esp], ecx
	call RemoveRefToObject
	mov edx, [ebx+0x8]
	jmp SetVariableFieldValue_50
SetVariableFieldValue_60:
	mov dword [esp+0x4], 0x10
	mov [esp], edx
	call MT_Free
	mov edx, [ebx+0x8]
	jmp SetVariableFieldValue_50


;RemoveRefToEmptyObject(unsigned int)
RemoveRefToEmptyObject:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx eax, word [ecx+0x4]
	test ax, ax
	jz RemoveRefToEmptyObject_10
	sub eax, 0x1
	mov [ecx+0x4], ax
	pop ebp
	ret
RemoveRefToEmptyObject_10:
	movzx edx, word [ecx+0xc]
	mov dword [ecx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x14]
	mov [ecx+0x4], ax
	mov eax, edx
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	movzx eax, word [scrVarGlob+0x14]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	mov [scrVarGlob+0x14], dx
	pop ebp
	ret
	nop


;Scr_EvalBinaryOperator(int, VariableValue*, VariableValue*)
Scr_EvalBinaryOperator:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x8]
	sub eax, 0x66
	cmp eax, 0xf
	ja Scr_EvalBinaryOperator_10
	jmp dword [eax*4+Scr_EvalBinaryOperator_jumptab_0]
Scr_EvalBinaryOperator_270:
	cmp dword [esi+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	cmp dword [ebx+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	mov edx, [ebx]
	test edx, edx
	jz Scr_EvalBinaryOperator_30
	mov eax, [esi]
	mov ecx, edx
	cdq
	idiv ecx
	mov [esi], edx
Scr_EvalBinaryOperator_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalBinaryOperator_120:
	cmp dword [esi+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	cmp dword [ebx+0x4], 0x6
	jz Scr_EvalBinaryOperator_40
Scr_EvalBinaryOperator_20:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_UnmatchingTypesError
Scr_EvalBinaryOperator_200:
	mov edx, ebx
	mov eax, esi
	call Scr_CastWeakerPair
	mov eax, [esi+0x4]
	cmp eax, 0x5
	jz Scr_EvalBinaryOperator_50
	cmp eax, 0x6
	jz Scr_EvalBinaryOperator_60
Scr_EvalBinaryOperator_90:
	mov [esp+0x4], ebx
	mov [esp], esi
	call Scr_UnmatchingTypesError
Scr_EvalBinaryOperator_100:
	xor eax, eax
	cmp dword [esi], 0x0
	setz al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_210:
	cmp dword [esi+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	cmp dword [ebx+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	mov ecx, [ebx]
	shl dword [esi], cl
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_220:
	cmp dword [esi+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	cmp dword [ebx+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	mov ecx, [ebx]
	sar dword [esi], cl
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_230:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_EvalPlus
Scr_EvalBinaryOperator_240:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_EvalMinus
Scr_EvalBinaryOperator_250:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_EvalMultiply
Scr_EvalBinaryOperator_260:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_EvalDivide
Scr_EvalBinaryOperator_160:
	mov [esp+0x4], ebx
	mov [esp], esi
	call Scr_EvalEquality
	xor eax, eax
	cmp dword [esi], 0x0
	setz al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_140:
	cmp dword [esi+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	cmp dword [ebx+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	mov eax, [esi]
	and eax, [ebx]
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_150:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_EvalEquality
Scr_EvalBinaryOperator_130:
	cmp dword [esi+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	cmp dword [ebx+0x4], 0x6
	jnz Scr_EvalBinaryOperator_20
	mov eax, [esi]
	xor eax, [ebx]
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_180:
	mov edx, ebx
	mov eax, esi
	call Scr_CastWeakerPair
	mov eax, [esi+0x4]
	cmp eax, 0x5
	jz Scr_EvalBinaryOperator_70
	cmp eax, 0x6
	jnz Scr_EvalBinaryOperator_20
	mov eax, [esi]
	cmp eax, [ebx]
	setg al
	movzx eax, al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_190:
	mov edx, ebx
	mov eax, esi
	call Scr_CastWeakerPair
	mov eax, [esi+0x4]
	cmp eax, 0x5
	jz Scr_EvalBinaryOperator_80
	cmp eax, 0x6
	jnz Scr_EvalBinaryOperator_90
	mov eax, [esi]
	cmp eax, [ebx]
	setg al
	movzx eax, al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_100
Scr_EvalBinaryOperator_170:
	mov edx, ebx
	mov eax, esi
	call Scr_CastWeakerPair
	mov eax, [esi+0x4]
	cmp eax, 0x5
	jz Scr_EvalBinaryOperator_110
	cmp eax, 0x6
	jnz Scr_EvalBinaryOperator_20
	mov eax, [esi]
	cmp eax, [ebx]
	setl al
	movzx eax, al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_50:
	mov dword [esi+0x4], 0x6
	movss xmm0, dword [ebx]
	xor eax, eax
	ucomiss xmm0, [esi]
	seta al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_100
Scr_EvalBinaryOperator_110:
	mov dword [esi+0x4], 0x6
	movss xmm0, dword [ebx]
	xor eax, eax
	ucomiss xmm0, [esi]
	seta al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_70:
	mov dword [esi+0x4], 0x6
	movss xmm0, dword [esi]
	xor eax, eax
	ucomiss xmm0, [ebx]
	seta al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_80:
	mov dword [esi+0x4], 0x6
	movss xmm0, dword [esi]
	xor eax, eax
	ucomiss xmm0, [ebx]
	seta al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_100
Scr_EvalBinaryOperator_60:
	mov eax, [esi]
	cmp eax, [ebx]
	setl al
	movzx eax, al
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_100
Scr_EvalBinaryOperator_40:
	mov eax, [esi]
	or eax, [ebx]
	mov [esi], eax
	jmp Scr_EvalBinaryOperator_10
Scr_EvalBinaryOperator_30:
	mov dword [esi], 0x0
	mov dword [ebp+0x8], _cstring_divide_by_0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_Error
	nop
	
	
Scr_EvalBinaryOperator_jumptab_0:
	dd Scr_EvalBinaryOperator_120
	dd Scr_EvalBinaryOperator_130
	dd Scr_EvalBinaryOperator_140
	dd Scr_EvalBinaryOperator_150
	dd Scr_EvalBinaryOperator_160
	dd Scr_EvalBinaryOperator_170
	dd Scr_EvalBinaryOperator_180
	dd Scr_EvalBinaryOperator_190
	dd Scr_EvalBinaryOperator_200
	dd Scr_EvalBinaryOperator_210
	dd Scr_EvalBinaryOperator_220
	dd Scr_EvalBinaryOperator_230
	dd Scr_EvalBinaryOperator_240
	dd Scr_EvalBinaryOperator_250
	dd Scr_EvalBinaryOperator_260
	dd Scr_EvalBinaryOperator_270


;Scr_EvalBoolComplement(VariableValue*)
Scr_EvalBoolComplement:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x4]
	cmp esi, 0x6
	jz Scr_EvalBoolComplement_10
	mov edx, [ebx]
	lea eax, [esi-0x1]
	cmp eax, 0x3
	ja Scr_EvalBoolComplement_20
	test eax, eax
	jz Scr_EvalBoolComplement_30
	cmp eax, 0x2
	jbe Scr_EvalBoolComplement_40
	cmp byte [edx-0x1], 0x0
	jnz Scr_EvalBoolComplement_20
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_EvalBoolComplement_50
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_EvalBoolComplement_20:
	mov dword [ebx+0x4], 0x0
	mov eax, [esi*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring__cannot_be_appli
	call va
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_Error
Scr_EvalBoolComplement_10:
	not dword [ebx]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_EvalBoolComplement_40:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_EvalBoolComplement_20
Scr_EvalBoolComplement_30:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_EvalBoolComplement_20
Scr_EvalBoolComplement_50:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_EvalBoolComplement_20


;Scr_EvalVariableObject(unsigned int)
Scr_EvalVariableObject:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov edx, [eax+0x8]
	and edx, 0x1f
	cmp edx, 0x1
	jz Scr_EvalVariableObject_10
Scr_EvalVariableObject_20:
	mov eax, [edx*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_not_a_field
	call va
	mov [esp], eax
	call Scr_Error
	xor ecx, ecx
	mov eax, ecx
	leave
	ret
Scr_EvalVariableObject_10:
	mov ecx, [eax+0x4]
	mov eax, ecx
	shl eax, 0x4
	mov edx, [eax+scrVarGlob+0x18]
	and edx, 0x1f
	cmp edx, 0x14
	jg Scr_EvalVariableObject_20
	mov eax, ecx
	leave
	ret
	nop


;GetVariableValueAddress(unsigned int)
GetVariableValueAddress:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	add eax, scrVarGlob+0x80024
	pop ebp
	ret


;Scr_GetThreadNotifyName(unsigned int)
Scr_GetThreadNotifyName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	movzx eax, word [eax+scrVarGlob+0x19]
	pop ebp
	ret
	add [eax], al


;Scr_SetThreadNotifyName(unsigned int, unsigned int)
Scr_SetThreadNotifyName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov edx, [eax+0x8]
	and edx, 0xe0
	or edx, 0xf
	shl ecx, 0x8
	or ecx, edx
	mov [eax+0x8], ecx
	pop ebp
	ret
	nop


;GetInternalVariableIndex(unsigned int)
GetInternalVariableIndex:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x800000
	and eax, 0xffffff
	pop ebp
	ret


;GetVariableIndexInternal(unsigned int, unsigned int)
GetVariableIndexInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	mov eax, [ebp+0x8]
	lea esi, [edx+eax]
	mov eax, 0x80018005
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, esi
	sub ecx, eax
	lea eax, [ecx+0x1]
	mov [ebp-0x30], eax
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edi, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x80020]
	mov edx, [ecx+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz GetVariableIndexInternal_10
GetVariableIndexInternal_60:
	mov ecx, [ebp-0x30]
	mov edx, ebx
	mov eax, [ebp+0x8]
	call GetNewVariableIndexInternal3
	mov esi, eax
	mov eax, [ebp+0x8]
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x28], eax
	mov eax, esi
	shl eax, 0x4
	add eax, 0x80020
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x2c], edx
	movzx eax, word [eax+scrVarGlob]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz GetVariableIndexInternal_20
	shl edx, 0x4
	mov ebx, [edx+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	mov eax, [ebp+0x8]
	lea edi, [edx+eax]
	mov eax, 0x80018005
	mul edi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, edi
	sub ecx, eax
	lea edi, [ecx+0x1]
	lea edx, [ecx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x1c], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x20], eax
	mov ecx, [eax+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz GetVariableIndexInternal_30
GetVariableIndexInternal_110:
	xor edi, edi
	mov edx, 0x8002
GetVariableIndexInternal_100:
	shl edx, 0x4
	mov [edx+scrVarGlob+0x2], si
	movzx edx, word [ebp-0x24]
	mov eax, edi
GetVariableIndexInternal_40:
	mov ecx, [ebp-0x28]
	mov [ecx+0xe], dx
	mov edx, [ebp-0x2c]
	mov word [edx+0x2], 0x0
	shl dword [ebp-0x24], 0x4
	mov ecx, [ebp-0x24]
	mov [ecx+scrVarGlob+0x8002e], ax
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetVariableIndexInternal_20:
	movzx edx, word [ebp-0x24]
	movzx eax, word [ecx+0xc]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], dx
	xor eax, eax
	jmp GetVariableIndexInternal_40
GetVariableIndexInternal_10:
	shr edx, 0x8
	cmp ebx, edx
	jz GetVariableIndexInternal_50
	movzx esi, word [ecx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz GetVariableIndexInternal_60
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jz GetVariableIndexInternal_70
GetVariableIndexInternal_80:
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp edi, eax
	jz GetVariableIndexInternal_60
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz GetVariableIndexInternal_80
GetVariableIndexInternal_70:
	test esi, esi
	jz GetVariableIndexInternal_60
GetVariableIndexInternal_90:
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetVariableIndexInternal_50:
	mov esi, [ebp-0x30]
	test esi, esi
	jz GetVariableIndexInternal_60
	jmp GetVariableIndexInternal_90
GetVariableIndexInternal_30:
	shr ecx, 0x8
	cmp ebx, ecx
	jz GetVariableIndexInternal_100
	mov eax, [ebp-0x20]
	movzx edi, word [eax+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jz GetVariableIndexInternal_110
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jz GetVariableIndexInternal_120
GetVariableIndexInternal_130:
	movzx edi, word [edx+0xc]
	mov eax, edi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jz GetVariableIndexInternal_110
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jnz GetVariableIndexInternal_130
GetVariableIndexInternal_120:
	lea edx, [edi+0x8002]
	jmp GetVariableIndexInternal_100
	nop


;Scr_GetClassnumForCharId(char)
Scr_GetClassnumForCharId:
	push ebp
	mov ebp, esp
	movzx ecx, byte [ebp+0x8]
	xor eax, eax
	mov edx, g_classMap
Scr_GetClassnumForCharId_20:
	cmp [edx+0x4], cl
	jz Scr_GetClassnumForCharId_10
	add eax, 0x1
	add edx, 0xc
	cmp eax, 0x4
	jnz Scr_GetClassnumForCharId_20
	mov eax, 0xffffffff
Scr_GetClassnumForCharId_10:
	pop ebp
	ret
	nop


;Scr_UnmatchingTypesError(VariableValue*, VariableValue*)
Scr_UnmatchingTypesError:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [scrVarPub+0xc]
	test edx, edx
	jz Scr_UnmatchingTypesError_10
	xor ebx, ebx
Scr_UnmatchingTypesError_110:
	mov edx, [edi]
	mov eax, [edi+0x4]
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_UnmatchingTypesError_20
	test eax, eax
	jz Scr_UnmatchingTypesError_30
	cmp eax, 0x2
	jbe Scr_UnmatchingTypesError_40
	cmp byte [edx-0x1], 0x0
	jz Scr_UnmatchingTypesError_50
Scr_UnmatchingTypesError_20:
	mov dword [edi+0x4], 0x0
	mov edx, [esi]
	mov eax, [esi+0x4]
	sub eax, 0x1
	cmp eax, 0x3
	ja Scr_UnmatchingTypesError_60
	test eax, eax
	jz Scr_UnmatchingTypesError_70
	cmp eax, 0x2
	jbe Scr_UnmatchingTypesError_80
	cmp byte [edx-0x1], 0x0
	jnz Scr_UnmatchingTypesError_60
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_UnmatchingTypesError_90
	sub eax, 0x1
	mov [edx-0x4], ax
Scr_UnmatchingTypesError_60:
	mov dword [esi+0x4], 0x0
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
Scr_UnmatchingTypesError_70:
	mov [esp], edx
	call RemoveRefToObject
	mov dword [esi+0x4], 0x0
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
Scr_UnmatchingTypesError_30:
	mov [esp], edx
	call RemoveRefToObject
	jmp Scr_UnmatchingTypesError_20
Scr_UnmatchingTypesError_50:
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz Scr_UnmatchingTypesError_100
	sub eax, 0x1
	mov [edx-0x4], ax
	jmp Scr_UnmatchingTypesError_20
Scr_UnmatchingTypesError_90:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_UnmatchingTypesError_60
Scr_UnmatchingTypesError_80:
	mov [esp], edx
	call SL_RemoveRefToString
	mov dword [esi+0x4], 0x0
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_Error
Scr_UnmatchingTypesError_40:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp Scr_UnmatchingTypesError_20
Scr_UnmatchingTypesError_10:
	mov eax, [edi+0x4]
	mov [ebp-0x1c], eax
	mov ebx, [esi+0x4]
	mov [esp], edi
	call Scr_CastDebugString
	mov [esp], esi
	call Scr_CastDebugString
	mov ebx, [ebx*4+var_typename]
	mov [ebp-0x24], ebx
	mov edx, [ebp-0x1c]
	mov edx, [edx*4+var_typename]
	mov [ebp-0x20], edx
	mov eax, [esi]
	mov [esp], eax
	call SL_ConvertToString
	mov ebx, eax
	mov eax, [edi]
	mov [esp], eax
	call SL_ConvertToString
	mov edx, [ebp-0x24]
	mov [esp+0x10], edx
	mov edx, [ebp-0x20]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_pair_s_and_s_has
	call va
	mov ebx, eax
	jmp Scr_UnmatchingTypesError_110
Scr_UnmatchingTypesError_100:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp Scr_UnmatchingTypesError_20


;Scr_GetVariableFieldIndex(unsigned int, unsigned int)
Scr_GetVariableFieldIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, edi
	shl eax, 0x4
	mov eax, [eax+scrVarGlob+0x18]
	and eax, 0x1f
	cmp eax, 0x12
	jle Scr_GetVariableFieldIndex_10
	cmp eax, 0x14
	jz Scr_GetVariableFieldIndex_20
	mov eax, [eax*4+var_typename]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cannot_set_field
	call va
	mov [esp], eax
	call Scr_Error
	xor ebx, ebx
Scr_GetVariableFieldIndex_70:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetVariableFieldIndex_20:
	lea edx, [esi+esi*4]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea ebx, [edi+edx]
	mov eax, 0x80018005
	mul ebx
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, ebx
	sub ecx, eax
	lea ebx, [ecx+0x1]
	shl ecx, 0x4
	lea eax, [ecx+0x80030]
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x1c], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz Scr_GetVariableFieldIndex_30
Scr_GetVariableFieldIndex_50:
	mov [scrVarPub+0x3c], edi
	mov [scrVarPub+0x40], esi
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetVariableFieldIndex_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp GetVariableIndexInternal
Scr_GetVariableFieldIndex_30:
	shr ecx, 0x8
	cmp esi, ecx
	jz Scr_GetVariableFieldIndex_40
Scr_GetVariableFieldIndex_60:
	movzx ebx, word [edx+0xc]
	mov eax, ebx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x1c], eax
	jz Scr_GetVariableFieldIndex_50
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jnz Scr_GetVariableFieldIndex_60
Scr_GetVariableFieldIndex_40:
	test ebx, ebx
	jnz Scr_GetVariableFieldIndex_70
	jmp Scr_GetVariableFieldIndex_50
	nop


;Scr_RemoveThreadNotifyName(unsigned int)
Scr_RemoveThreadNotifyName:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	add eax, 0x1
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob+0x9]
	mov [esp], eax
	call SL_RemoveRefToString
	mov eax, [ebx+0x8]
	and eax, 0xffffffe0
	or eax, 0xe
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;GetNewObjectVariableReverse(unsigned int, unsigned int)
GetNewObjectVariableReverse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	add esi, 0x10000
	lea ecx, [esi+esi*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [esi+ecx*4]
	add ecx, [ebp+0x8]
	mov eax, 0x80018005
	mul ecx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	sub ecx, eax
	add ecx, 0x1
	mov edx, esi
	mov eax, [ebp+0x8]
	call GetNewVariableIndexInternal3
	mov ecx, eax
	mov eax, [ebp+0x8]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x10]
	movzx eax, word [ebx+0xc]
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x20], eax
	lea eax, [ecx+0x8002]
	mov [ebp-0x28], eax
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x24], edx
	movzx edi, word [eax+scrVarGlob]
	mov edx, [ebp-0x20]
	movzx eax, word [edx+0x2]
	movzx edx, ax
	test ax, ax
	jz GetNewObjectVariableReverse_10
	shl edx, 0x4
	lea eax, [edx+scrVarGlob+0x80020]
	mov [eax+0xe], cx
	mov esi, [eax+0x8]
	shr esi, 0x8
	lea edx, [esi+esi*4]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	mov eax, [ebp+0x8]
	lea ecx, [edx+eax]
	mov eax, 0x80018005
	mul ecx
	mov ebx, edx
	shr ebx, 0xf
	mov eax, ebx
	shl eax, 0xe
	sub eax, ebx
	lea eax, [ebx+eax*4]
	mov ebx, ecx
	sub ebx, eax
	lea eax, [ebx+0x1]
	mov [ebp-0x1c], eax
	shl ebx, 0x4
	lea eax, [ebx+0x80030]
	lea ebx, [eax+scrVarGlob]
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov ecx, [edx+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz GetNewObjectVariableReverse_20
GetNewObjectVariableReverse_60:
	mov ecx, edi
	xor eax, eax
	jmp GetNewObjectVariableReverse_30
GetNewObjectVariableReverse_10:
	mov ecx, edi
	mov [ebx+0xe], di
	xor eax, eax
GetNewObjectVariableReverse_30:
	mov edx, [ebp-0x20]
	mov [edx+0x2], cx
	mov edx, [ebp-0x24]
	mov [edx+0x2], ax
	shl edi, 0x4
	mov word [edi+scrVarGlob+0x8002e], 0x0
	shl dword [ebp-0x28], 0x4
	mov edx, [ebp-0x28]
	movzx eax, word [edx+scrVarGlob]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetNewObjectVariableReverse_20:
	shr ecx, 0x8
	cmp esi, ecx
	jz GetNewObjectVariableReverse_40
	movzx edx, word [edx+0xc]
	jmp GetNewObjectVariableReverse_50
GetNewObjectVariableReverse_70:
	movzx edx, word [ecx+0xc]
GetNewObjectVariableReverse_50:
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+0x80020]
	lea eax, [ecx+scrVarGlob]
	cmp ebx, eax
	jz GetNewObjectVariableReverse_60
	movzx eax, word [ecx+scrVarGlob]
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x80020]
	mov eax, [ecx+0x8]
	shr eax, 0x8
	cmp esi, eax
	jnz GetNewObjectVariableReverse_70
	mov ecx, edi
	mov eax, edx
	jmp GetNewObjectVariableReverse_30
GetNewObjectVariableReverse_40:
	mov ecx, edi
	movzx eax, word [ebp-0x1c]
	jmp GetNewObjectVariableReverse_30
	nop


;SetVariableEntityFieldValue(unsigned int, unsigned int, VariableValue*)
SetVariableEntityFieldValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov [ebp-0x34], eax
	mov edi, [eax+0x8]
	shr edi, 0x8
	mov ebx, [ebp+0xc]
	add ebx, 0x800000
	and ebx, 0xffffff
	lea eax, [edi+edi*2]
	movzx ecx, word [eax*4+g_classMap]
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	add ecx, eax
	mov edx, 0x80018005
	mov eax, ecx
	mul edx
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x8003
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x30], edx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	lea esi, [eax+scrVarGlob+0x80020]
	mov edx, [esi+0x8]
	mov eax, edx
	and eax, 0x60
	cmp eax, 0x40
	jz SetVariableEntityFieldValue_10
SetVariableEntityFieldValue_80:
	mov ecx, 0x8002
SetVariableEntityFieldValue_70:
	shl ecx, 0x4
	movzx eax, word [ecx+scrVarGlob]
	movzx edx, ax
	test ax, ax
	jz SetVariableEntityFieldValue_20
	mov ecx, [ebp+0x10]
	mov [esp+0xc], ecx
	shl edx, 0x4
	mov eax, [edx+scrVarGlob+0x80024]
	mov [esp+0x8], eax
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x6]
	mov [esp+0x4], eax
	mov [esp], edi
	call SetEntityFieldValue
	test al, al
	jnz SetVariableEntityFieldValue_30
SetVariableEntityFieldValue_20:
	mov eax, [ebp+0xc]
	lea ecx, [eax+eax*4]
	lea ecx, [ecx+ecx*4]
	lea ecx, [eax+ecx*4]
	add ecx, [ebp+0x8]
	mov esi, 0x80018005
	mov eax, ecx
	mul esi
	shr edx, 0xf
	mov eax, edx
	shl eax, 0xe
	sub eax, edx
	lea eax, [edx+eax*4]
	sub ecx, eax
	add ecx, 0x1
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call GetNewVariableIndexInternal3
	mov [ebp-0x1c], eax
	add eax, 0x8002
	mov [ebp-0x2c], eax
	shl eax, 0x4
	lea edx, [eax+scrVarGlob]
	mov [ebp-0x28], edx
	movzx edi, word [eax+scrVarGlob]
	mov ecx, [ebp-0x34]
	movzx eax, word [ecx+0xe]
	movzx edx, ax
	test ax, ax
	jz SetVariableEntityFieldValue_40
	shl edx, 0x4
	mov ebx, [edx+scrVarGlob+0x80028]
	shr ebx, 0x8
	lea edx, [ebx+ebx*4]
	lea edx, [edx+edx*4]
	lea edx, [ebx+edx*4]
	add edx, [ebp+0x8]
	mov [ebp-0x3c], edx
	mov eax, edx
	mul esi
	mov ecx, edx
	shr ecx, 0xf
	mov eax, ecx
	shl eax, 0xe
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov ecx, [ebp-0x3c]
	sub ecx, eax
	lea esi, [ecx+0x1]
	lea edx, [ecx+0x8003]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob]
	mov [ebp-0x20], ecx
	movzx eax, word [eax+scrVarGlob]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x24], eax
	mov ecx, [eax+0x8]
	mov eax, ecx
	and eax, 0x60
	cmp eax, 0x40
	jz SetVariableEntityFieldValue_50
SetVariableEntityFieldValue_120:
	xor esi, esi
	mov edx, 0x8002
SetVariableEntityFieldValue_110:
	shl edx, 0x4
	movzx ecx, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x2], cx
	mov edx, edi
	mov eax, esi
	mov ecx, [ebp-0x34]
SetVariableEntityFieldValue_60:
	mov [ecx+0xe], dx
	mov edx, [ebp-0x28]
	mov word [edx+0x2], 0x0
	shl edi, 0x4
	mov [edi+scrVarGlob+0x8002e], ax
	shl dword [ebp-0x2c], 0x4
	mov ecx, [ebp-0x2c]
	movzx eax, word [ecx+scrVarGlob]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov edx, [eax+0x8]
	mov ecx, [ebp+0x10]
	or edx, [ecx+0x4]
	mov [eax+0x8], edx
	mov edx, [ecx]
	mov [eax+0x4], edx
SetVariableEntityFieldValue_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SetVariableEntityFieldValue_40:
	mov edx, edi
	movzx eax, word [ecx+0xc]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x12], di
	xor eax, eax
	jmp SetVariableEntityFieldValue_60
SetVariableEntityFieldValue_10:
	shr edx, 0x8
	cmp ebx, edx
	jz SetVariableEntityFieldValue_70
	movzx ecx, word [esi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x30], eax
	jz SetVariableEntityFieldValue_80
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jz SetVariableEntityFieldValue_90
SetVariableEntityFieldValue_100:
	movzx ecx, word [edx+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x30], eax
	jz SetVariableEntityFieldValue_80
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp ebx, eax
	jnz SetVariableEntityFieldValue_100
SetVariableEntityFieldValue_90:
	add ecx, 0x8002
	jmp SetVariableEntityFieldValue_70
SetVariableEntityFieldValue_50:
	shr ecx, 0x8
	cmp ebx, ecx
	jz SetVariableEntityFieldValue_110
	mov eax, [ebp-0x24]
	movzx esi, word [eax+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jz SetVariableEntityFieldValue_120
SetVariableEntityFieldValue_140:
	movzx eax, word [edx+scrVarGlob]
	shl eax, 0x4
	lea edx, [eax+scrVarGlob+0x80020]
	mov eax, [edx+0x8]
	shr eax, 0x8
	cmp eax, ebx
	jz SetVariableEntityFieldValue_130
	movzx esi, word [edx+0xc]
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+0x80020]
	lea eax, [edx+scrVarGlob]
	cmp [ebp-0x20], eax
	jnz SetVariableEntityFieldValue_140
	jmp SetVariableEntityFieldValue_120
SetVariableEntityFieldValue_130:
	lea edx, [esi+0x8002]
	jmp SetVariableEntityFieldValue_110
	add [eax], al


;Scr_DumpScriptVariablesDefault()
Scr_DumpScriptVariablesDefault:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;GetArray(unsigned int)
GetArray:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	shl eax, 0x4
	add eax, scrVarGlob+0x80020
	mov [ebp-0x20], eax
	mov edx, eax
	mov eax, [eax+0x8]
	test al, 0x1f
	jnz GetArray_10
	or eax, 0x1
	mov [edx+0x8], eax
	movzx edi, word [scrVarGlob+0x14]
	test di, di
	jz GetArray_20
GetArray_60:
	movzx eax, di
	shl eax, 0x4
	lea esi, [eax+0x10]
	lea ebx, [esi+scrVarGlob]
	movzx eax, word [esi+scrVarGlob]
	mov [ebp-0x1c], ax
	movzx eax, ax
	shl eax, 0x4
	lea ecx, [eax+scrVarGlob+0x10]
	movzx edx, word [ecx+0x4]
	mov [ebp-0x1a], dx
	cmp ebx, ecx
	jz GetArray_30
	test byte [ebx+0x8], 0x60
	jz GetArray_40
	movzx eax, word [ebp-0x1a]
GetArray_50:
	mov [scrVarGlob+0x14], ax
	movzx eax, ax
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x12], 0x0
	mov [ecx+0xc], di
	mov word [ecx+0xe], 0x0
	mov word [ebx+0x2], 0x0
	movzx edx, word [ebx]
	mov eax, edx
	shl eax, 0x4
	add eax, scrVarGlob+0x10
	mov dword [eax+0x8], 0x75
	mov word [eax+0x4], 0x0
	mov word [eax+0x6], 0x0
	mov eax, [ebp-0x20]
	mov [eax+0x4], edx
GetArray_10:
	mov edx, [ebp-0x20]
	mov eax, [edx+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetArray_40:
	movzx edx, word [ebx+0xc]
	shl edx, 0x4
	movzx eax, word [ebp-0x1c]
	mov [edx+scrVarGlob+0x10], ax
	mov [esi+scrVarGlob], di
	movzx edx, word [ebx+0xc]
	mov [ecx+0xc], dx
	movzx eax, word [ebx+0x4]
	mov [ecx+0x4], ax
	mov ecx, ebx
	movzx eax, word [ebp-0x1a]
	jmp GetArray_50
GetArray_20:
	mov dword [esp], _cstring_exceeded_maximum
	call Scr_TerminalError
	jmp GetArray_60
GetArray_30:
	mov eax, edx
	jmp GetArray_50
	nop


;FreeValue(unsigned int)
FreeValue:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	shl eax, 0x4
	lea ebx, [eax+scrVarGlob+0x80020]
	mov edx, [ebx+0x4]
	mov eax, [ebx+0x8]
	and eax, 0x1f
	sub eax, 0x1
	cmp eax, 0x3
	ja FreeValue_10
	test eax, eax
	jz FreeValue_20
	cmp eax, 0x2
	jbe FreeValue_30
	cmp byte [edx-0x1], 0x0
	jnz FreeValue_10
	lea ecx, [edx-0x4]
	movzx eax, word [edx-0x4]
	test ax, ax
	jz FreeValue_40
	sub eax, 0x1
	mov [edx-0x4], ax
FreeValue_10:
	movzx edx, word [ebx+0xc]
	mov dword [ebx+0x8], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	mov [ebx+0x4], ax
	movzx eax, dx
	shl eax, 0x4
	mov word [eax+scrVarGlob+0x80022], 0x0
	movzx eax, word [scrVarGlob+0x80024]
	shl eax, 0x4
	mov [eax+scrVarGlob+0x80022], dx
	mov [scrVarGlob+0x80024], dx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FreeValue_20:
	mov [esp], edx
	call RemoveRefToObject
	jmp FreeValue_10
FreeValue_40:
	mov dword [esp+0x4], 0x10
	mov [esp], ecx
	call MT_Free
	jmp FreeValue_10
FreeValue_30:
	mov [esp], edx
	call SL_RemoveRefToString
	jmp FreeValue_10
	nop


;Initialized global or static variables of scr_variable:
SECTION .data
var_typename: dd _cstring_undefined, _cstring_object, _cstring_string, _cstring_localized_string, _cstring_vector, _cstring_float, _cstring_int, _cstring_codepos, _cstring_precodepos, _cstring_function, _cstring_stack, _cstring_animation, _cstring_developer_codepo, _cstring_include_codepos, _cstring_thread, _cstring_thread, _cstring_thread, _cstring_thread, _cstring_struct, _cstring_removed_entity, _cstring_entity, _cstring_array, _cstring_removed_thread, 0x0
g_classMap: dd 0x0, 0x65, _cstring_entity, 0x0, 0x68, _cstring_hudelem, 0x0, 0x70, _cstring_pathnode, 0x0, 0x76, _cstring_vehiclenode, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of scr_variable:
SECTION .rdata


;Zero initialized global or static variables of scr_variable:
SECTION .bss
scrVarPub: resb 0x20060
scrVarGlob: resb 0x180020


;All cstrings:
SECTION .rdata
_cstring_cannot_find_s:		db 015h,"cannot find ",27h,"%s",27h,0
_cstring_keys:		db "keys",0
_cstring_sss:		db "%s/%s.%s",0
_cstring_ss:		db "%s/%s",0
_cstring_scr_addfields:		db "Scr_AddFields",0
_cstring_float:		db "float",0
_cstring_int:		db "int",0
_cstring_duplicate_key_s_:		db 015h,"duplicate key ",27h,"%s",27h," in ",27h,"%s",27h,0
_cstring_missing_field_na:		db 015h,"missing field name in ",27h,"%s",27h,0
_cstring_string:		db "string",0
_cstring_vector:		db "vector",0
_cstring_unknown_type_s_i:		db 015h,"unknown type ",27h,"%s",27h," in ",27h,"%s",27h,0
_cstring_exceeded_maximum:		db "exceeded maximum number of script variables",0
_cstring_s_is_not_an_arra:		db "%s is not an array",0
_cstring_s_is_not_an_arra1:		db "%s is not an array index",0
_cstring_readonly_array_c:		db "read-only array cannot be changed",0
_cstring_array_index_d_ou:		db "array index %d out of range",0
_cstring_divide_by_0:		db "divide by 0",0
_cstring_cannot_cast_s_to:		db "cannot cast %s to Bool",0
_cstring_cannot_concat_s_:		db "cannot concat ",22h,"%s",22h," and ",22h,"%s",22h," - max string length exceeded",0
_cstring_s_is_not_an_arra2:		db "%s is not an array, string, or vector",0
_cstring_s_is_not_a_strin:		db "%s is not a string index",0
_cstring_s_is_not_a_vecto:		db "%s is not a vector index",0
_cstring_string_index_d_o:		db "string index %d out of range",0
_cstring_vector_index_d_o:		db "vector index %d out of range",0
_cstring_cannot_cast_s_to1:		db "cannot cast %s to string",0
_cstring_type_s_is_not_a_:		db "type %s is not a float",0
_cstring_string_character:		db "string characters cannot be individually changed",0
_cstring_vector_component:		db "vector components cannot be individually changed",0
_cstring_size_cannot_be_a:		db "size cannot be applied to %s",0
_cstring_s_is_not_a_field:		db "%s is not a field object",0
_cstring_:		db "********************************",0ah,0
_cstring_var_usage_d_endo:		db "var usage: %d, endon usage: %d",0ah,0
_cstring_1:		db 0ah,0
_cstring_ent_type_s_count:		db "ent type ",27h,"%s",27h,"... count: %d, var usage: %d",0ah,0
_cstring_cannot_dump_scri:		db "Cannot dump script threads: out of memory",0ah,0
_cstring_count_d_var_usag:		db "count: %d, var usage: %d, endon usage: %d",0ah,0
_cstring_called_from:		db "called from:",0ah,0
_cstring__cannot_be_appli:		db "~ cannot be applied to ",22h,"%s",22h,0
_cstring_pair_s_and_s_has:		db "pair ",27h,"%s",27h," and ",27h,"%s",27h," has unmatching types ",27h,"%s",27h," and ",27h,"%s",27h,0
_cstring_cannot_set_field:		db "cannot set field of %s",0
_cstring_undefined:		db "undefined",0
_cstring_object:		db "object",0
_cstring_localized_string:		db "localized string",0
_cstring_codepos:		db "codepos",0
_cstring_precodepos:		db "precodepos",0
_cstring_function:		db "function",0
_cstring_stack:		db "stack",0
_cstring_animation:		db "animation",0
_cstring_developer_codepo:		db "developer codepos",0
_cstring_include_codepos:		db "include codepos",0
_cstring_thread:		db "thread",0
_cstring_struct:		db "struct",0
_cstring_removed_entity:		db "removed entity",0
_cstring_entity:		db "entity",0
_cstring_array:		db "array",0
_cstring_removed_thread:		db "removed thread",0
_cstring_hudelem:		db "hudelem",0
_cstring_pathnode:		db "pathnode",0
_cstring_vehiclenode:		db "vehiclenode",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_00000100:		dd 0x358637bd	; 1e-06

