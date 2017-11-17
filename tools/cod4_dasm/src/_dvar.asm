;Imports of dvar:
	extern Q_stricmp
	extern va
	extern strcmp
	extern CopyStringInternal
	extern InterlockedCompareExchange
	extern Sys_Sleep
	extern sscanf
	extern floorf
	extern atoi
	extern atof
	extern Q_stricmpn
	extern FreeStringInternal
	extern InterlockedDecrement
	extern InterlockedIncrement
	extern Com_Error
	extern tolower
	extern snprintf
	extern Com_LogFileOpen
	extern Com_Printf
	extern Com_PrintMessage
	extern Q_strncpyz
	extern Com_sprintf
	extern memset
	extern isalnum
	extern Com_BeginParseSession
	extern Com_Parse
	extern Com_PrintWarning
	extern Com_SkipRestOfLine
	extern Com_EndParseSession
	extern Com_PrintError
	extern Com_ParseOnLine
	extern colorWhite
	extern Cvar_AddCommands
	extern memmove

;Exports of dvar:
	global dvarPool
	global g_dvarCritSect
	global dvarHashTable
	global dvar_cheats
	global isDvarSystemActive
	global isLoadingAutoExecGlobalFlag
	global areDvarsSorted
	global sortedDvars
	global isSortingDvars
	global Cvar_CompareNames
	global Cvar_ValueToString
	global Cvar_ValuesEqual
	global Cvar_AssignResetStringValue
	global Cvar_AssignCurrentStringValue
	global Cvar_Sort
	global Cvar_StringToColor
	global Cvar_StringToValue
	global Cvar_UpdateResetValue
	global Cvar_MakeExplicitType
	global Cvar_SetLatchedValue
	global Cvar_RegisterNew
	global Cvar_DomainToString_Internal
	global Cvar_SetVariant
	global Cvar_SetFromStringFromSource
	global Cvar_Reregister
	global Cvar_FindMalleableVar
	global Cvar_Reset
	global Cvar_VariableIntegerValue
	global Cvar_SetInt
	global Cvar_FindVar
	global Cvar_ForEach
	global Cvar_VariableBooleanValue
	global Cvar_SetBool
	global Cvar_SetVec3
	global Cvar_AddFlags
	global Cvar_GetFloat
	global Cvar_SetColor
	global Cvar_SetFloat
	global Cvar_Shutdown
	global Cvar_VariableString
	global Cvar_SetString
	global Cvar_GetAtIndex
	global Cvar_ResetDvars
	global Cvar_SetCommand
	global Cvar_ForEachName
	global Cvar_IsValidName
	global Cvar_PrintDomain
	global Cvar_RegisterInt
	global Cvar_SetModified
	global Cvar_EnumToString
	global Cvar_RegisterBool
	global Cvar_RegisterEnum
	global Cvar_RegisterVec2
	global Cvar_RegisterVec3
	global Cvar_RegisterVec4
	global Cvar_SetIntByName
	global Cvar_ClearModified
	global Cvar_RegisterColor
	global Cvar_RegisterFloat
	global Cvar_SetBoolByName
	global Cvar_SetCheatState
	global Cvar_SetDomainFunc
	global Cvar_SetInAutoExec
	global Cvar_ValueInDomain
	global Cvar_IsSystemActive
	global Cvar_RegisterString
	global Cvar_SetFloatByName
	global Cvar_HasLatchedValue
	global Cvar_ResetScriptInfo
	global Cvar_SetStringByName
	global Com_SaveDvarsToBuffer
	global Cvar_AnyLatchedValues
	global Cvar_ChangeResetValue
	global Cvar_DisplayableValue
	global Cvar_GetUnpackedColor
	global Cvar_GetVariantString
	global Cvar_SetIntFromSource
	global Cvar_UpdateEnumDomain
	global Cvar_SetBoolFromSource
	global Com_LoadDvarsFromBuffer
	global Cvar_SetColorFromSource
	global Cvar_SetFloatFromSource
	global Cvar_SetFromStringByName
	global Cvar_DisplayableResetValue
	global Cvar_GetUnpackedColorByName
	global Cvar_DisplayableLatchedValue
	global Cvar_DomainToString_GetLines
	global Cvar_IndexStringToEnumString
	global Cvar_MakeLatchedValueCurrent
	global Cvar_SetFromStringByNameFromSource
	global Cvar_Init
	global _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2_
	global _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0_
	global _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1_
	global dvar_modifiedFlags
	global dvarCount


SECTION .text


;Dvar_CompareNames(dvar_s const*, dvar_s const*)
Cvar_CompareNames:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	shr eax, 0x1f
	leave
	ret
	nop


;Dvar_ValueToString(dvar_s const*, DvarValue)
Cvar_ValueToString:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	movzx edx, byte [eax+0xa]
	cmp edx, 0x8
	ja Cvar_ValueToString_10
	jmp dword [edx*4+Cvar_ValueToString_jumptab_0]
Cvar_ValueToString_90:
	mov ecx, [eax+0x3c]
	test ecx, ecx
	jnz Cvar_ValueToString_20
Cvar_ValueToString_10:
	mov edx, _cstring_null
	mov eax, edx
	leave
	ret
Cvar_ValueToString_30:
	mov edx, _cstring_1
	cmp byte [ebp+0x8], 0x0
	mov eax, _cstring_0
	cmovz edx, eax
	mov eax, edx
	leave
	ret
Cvar_ValueToString_110:
	movzx eax, byte [ebp+0xb]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x1c], xmm0
	movzx eax, byte [ebp+0xa]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x14], xmm0
	movzx eax, byte [ebp+0x9]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	movzx eax, byte [ebp+0x8]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g_g_g_g
	call va
	mov edx, eax
	mov eax, edx
	leave
	ret
Cvar_ValueToString_100:
	mov eax, [ebp+0x8]
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], _cstring_s
	leave
	jmp va
Cvar_ValueToString_80:
	mov eax, [ebp+0x8]
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], _cstring_i
	leave
	jmp va
Cvar_ValueToString_70:
	cvtss2sd xmm0, [ebp+0x14]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [ebp+0x10]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebp+0x8]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g_g_g_g
	call va
	mov edx, eax
	mov eax, edx
	leave
	ret
Cvar_ValueToString_60:
	cvtss2sd xmm0, [ebp+0x10]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebp+0x8]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g_g_g
	call va
	mov edx, eax
	mov eax, edx
	leave
	ret
Cvar_ValueToString_50:
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebp+0x8]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g_g
	call va
	mov edx, eax
	mov eax, edx
	leave
	ret
Cvar_ValueToString_40:
	cvtss2sd xmm0, [ebp+0x8]
	movsd [ebp+0xc], xmm0
	mov dword [ebp+0x8], _cstring_g
	leave
	jmp va
Cvar_ValueToString_20:
	mov edx, [eax+0x40]
	mov eax, [ebp+0x8]
	mov edx, [edx+eax*4]
	mov eax, edx
	leave
	ret
	
	
Cvar_ValueToString_jumptab_0:
	dd Cvar_ValueToString_30
	dd Cvar_ValueToString_40
	dd Cvar_ValueToString_50
	dd Cvar_ValueToString_60
	dd Cvar_ValueToString_70
	dd Cvar_ValueToString_80
	dd Cvar_ValueToString_90
	dd Cvar_ValueToString_100
	dd Cvar_ValueToString_110


;Dvar_ValuesEqual(unsigned char, DvarValue, DvarValue)
Cvar_ValuesEqual:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, al
	cmp eax, 0x8
	ja Cvar_ValuesEqual_10
	jmp dword [eax*4+Cvar_ValuesEqual_jumptab_0]
Cvar_ValuesEqual_80:
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [ebp+0x18]
	jnz Cvar_ValuesEqual_10
	jp Cvar_ValuesEqual_10
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x1c]
	jnz Cvar_ValuesEqual_10
	jp Cvar_ValuesEqual_10
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [ebp+0x20]
	jnz Cvar_ValuesEqual_10
	jp Cvar_ValuesEqual_10
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [ebp+0x24]
	jz Cvar_ValuesEqual_20
Cvar_ValuesEqual_10:
	xor eax, eax
Cvar_ValuesEqual_30:
	leave
	ret
Cvar_ValuesEqual_90:
	mov eax, [ebp+0x8]
	cmp eax, [ebp+0x18]
	setz al
	movzx eax, al
	leave
	ret
Cvar_ValuesEqual_50:
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [ebp+0x18]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	leave
	ret
Cvar_ValuesEqual_70:
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [ebp+0x18]
	jnz Cvar_ValuesEqual_10
	jp Cvar_ValuesEqual_10
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x1c]
	jnz Cvar_ValuesEqual_10
	jp Cvar_ValuesEqual_10
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [ebp+0x20]
	jz Cvar_ValuesEqual_20
	xor eax, eax
	jmp Cvar_ValuesEqual_30
Cvar_ValuesEqual_60:
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [ebp+0x18]
	jnz Cvar_ValuesEqual_10
	jp Cvar_ValuesEqual_10
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x1c]
	jnz Cvar_ValuesEqual_10
Cvar_ValuesEqual_20:
	jp Cvar_ValuesEqual_10
	mov eax, 0x1
	leave
	ret
Cvar_ValuesEqual_40:
	movzx eax, byte [ebp+0x8]
	cmp al, [ebp+0x18]
	setz al
	movzx eax, al
	leave
	ret
Cvar_ValuesEqual_100:
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strcmp
	test eax, eax
	setz al
	movzx eax, al
	leave
	ret
	
	
Cvar_ValuesEqual_jumptab_0:
	dd Cvar_ValuesEqual_40
	dd Cvar_ValuesEqual_50
	dd Cvar_ValuesEqual_60
	dd Cvar_ValuesEqual_70
	dd Cvar_ValuesEqual_80
	dd Cvar_ValuesEqual_90
	dd Cvar_ValuesEqual_90
	dd Cvar_ValuesEqual_100
	dd Cvar_ValuesEqual_90


;Dvar_AssignResetStringValue(dvar_s*, DvarValue*, char const*)
Cvar_AssignResetStringValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov [ebp-0x1c], edx
	mov esi, ecx
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz Cvar_AssignResetStringValue_10
	cmp ebx, ecx
	jz Cvar_AssignResetStringValue_20
	mov [esp+0x4], ebx
	mov [esp], ecx
	call strcmp
	test eax, eax
	jz Cvar_AssignResetStringValue_20
Cvar_AssignResetStringValue_10:
	mov ebx, [edi+0x1c]
	test ebx, ebx
	jz Cvar_AssignResetStringValue_30
	cmp ebx, esi
	jz Cvar_AssignResetStringValue_40
	mov [esp+0x4], ebx
	mov [esp], esi
	call strcmp
	test eax, eax
	jz Cvar_AssignResetStringValue_40
Cvar_AssignResetStringValue_30:
	mov [esp], esi
	call CopyStringInternal
	mov edx, [ebp-0x1c]
	mov [edx], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_AssignResetStringValue_20:
	mov eax, [ebp-0x1c]
	mov [eax], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_AssignResetStringValue_40:
	mov edx, [ebp-0x1c]
	mov [edx], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_AssignCurrentStringValue(dvar_s*, DvarValue*, char const*)
Cvar_AssignCurrentStringValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov [ebp-0x1c], edx
	mov esi, ecx
	mov ebx, [eax+0x1c]
	test ebx, ebx
	jz Cvar_AssignCurrentStringValue_10
	cmp ebx, ecx
	jz Cvar_AssignCurrentStringValue_20
	mov [esp+0x4], ebx
	mov [esp], ecx
	call strcmp
	test eax, eax
	jz Cvar_AssignCurrentStringValue_20
Cvar_AssignCurrentStringValue_10:
	mov ebx, [edi+0x2c]
	test ebx, ebx
	jz Cvar_AssignCurrentStringValue_30
	cmp ebx, esi
	jz Cvar_AssignCurrentStringValue_40
	mov [esp+0x4], ebx
	mov [esp], esi
	call strcmp
	test eax, eax
	jz Cvar_AssignCurrentStringValue_40
Cvar_AssignCurrentStringValue_30:
	mov [esp], esi
	call CopyStringInternal
	mov edx, [ebp-0x1c]
	mov [edx], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_AssignCurrentStringValue_20:
	mov eax, [ebp-0x1c]
	mov [eax], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_AssignCurrentStringValue_40:
	mov edx, [ebp-0x1c]
	mov [edx], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_Sort()
Cvar_Sort:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], isSortingDvars
	call InterlockedCompareExchange
	test eax, eax
	jnz Cvar_Sort_10
	mov eax, [dvarCount]
	lea eax, [eax*4+sortedDvars]
	mov [ebp-0x20], eax
	cmp eax, sortedDvars
	jz Cvar_Sort_20
	mov ebx, eax
	sub ebx, sortedDvars
	mov eax, ebx
	sar eax, 0x2
	cmp eax, 0x1
	jz Cvar_Sort_30
	xor edx, edx
Cvar_Sort_40:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz Cvar_Sort_40
	lea eax, [edx+edx]
Cvar_Sort_110:
	mov dword [esp+0xc], Cvar_CompareNames
	mov [esp+0x8], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], sortedDvars
	call _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1_
	cmp ebx, 0x43
	jle Cvar_Sort_50
	mov dword [esp+0x8], Cvar_CompareNames
	mov dword [esp+0x4], sortedDvars+0x40
	mov dword [esp], sortedDvars
	call _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0_
	cmp dword [ebp-0x20], sortedDvars+0x40
	jz Cvar_Sort_20
	mov dword [ebp-0x1c], sortedDvars+0x40
Cvar_Sort_80:
	mov eax, [ebp-0x1c]
	mov edi, [eax]
	mov ebx, eax
	sub ebx, 0x4
	mov esi, eax
	jmp Cvar_Sort_60
Cvar_Sort_70:
	mov eax, [ebx]
	mov [esi], eax
	mov esi, ebx
	sub ebx, 0x4
Cvar_Sort_60:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Cvar_CompareNames
	test al, al
	jnz Cvar_Sort_70
	mov [esi], edi
	add dword [ebp-0x1c], 0x4
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jnz Cvar_Sort_80
Cvar_Sort_20:
	mov byte [areDvarsSorted], 0x1
	mov dword [isSortingDvars], 0x0
Cvar_Sort_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_Sort_10:
	mov eax, [isSortingDvars]
	test eax, eax
	jz Cvar_Sort_90
Cvar_Sort_100:
	mov dword [esp], 0x1
	call Sys_Sleep
	mov eax, [isSortingDvars]
	test eax, eax
	jz Cvar_Sort_90
	mov dword [esp], 0x1
	call Sys_Sleep
	mov eax, [isSortingDvars]
	test eax, eax
	jnz Cvar_Sort_100
	jmp Cvar_Sort_90
Cvar_Sort_50:
	mov dword [esp+0x8], Cvar_CompareNames
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], sortedDvars
	call _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0_
	jmp Cvar_Sort_20
Cvar_Sort_30:
	and eax, 0xffffff00
	jmp Cvar_Sort_110


;Dvar_StringToColor(char const*, unsigned char*)
Cvar_StringToColor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov ebx, edx
	pxor xmm2, xmm2
	movss [ebp-0x18], xmm2
	movss [ebp-0x14], xmm2
	movss [ebp-0x10], xmm2
	movss [ebp-0xc], xmm2
	lea ecx, [ebp-0x18]
	lea edx, [ebp-0xc]
	mov [esp+0x14], edx
	lea edx, [ebp-0x10]
	mov [esp+0x10], edx
	lea edx, [ebp-0x14]
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_g_g_g_g
	mov [esp], eax
	movss [ebp-0x38], xmm2
	call sscanf
	movss xmm1, dword [ebp-0x18]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	jb Cvar_StringToColor_10
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb Cvar_StringToColor_20
Cvar_StringToColor_90:
	movaps xmm0, xmm2
Cvar_StringToColor_100:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	mov [ebx], al
	lea esi, [ebx+0x1]
	movss xmm1, dword [ebp-0x14]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	jb Cvar_StringToColor_30
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
Cvar_StringToColor_150:
	ucomiss xmm0, xmm2
	jb Cvar_StringToColor_40
	movaps xmm0, xmm2
Cvar_StringToColor_140:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	mov [esi], al
	lea esi, [ebx+0x2]
	movss xmm1, dword [ebp-0x10]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	jb Cvar_StringToColor_50
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
Cvar_StringToColor_130:
	ucomiss xmm0, xmm2
	jb Cvar_StringToColor_60
	movaps xmm0, xmm2
Cvar_StringToColor_120:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	mov [esi], al
	add ebx, 0x3
	movss xmm1, dword [ebp-0xc]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	jb Cvar_StringToColor_70
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb Cvar_StringToColor_80
Cvar_StringToColor_110:
	movaps xmm0, xmm2
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	mov [ebx], al
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_StringToColor_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jae Cvar_StringToColor_90
Cvar_StringToColor_20:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_StringToColor_100
Cvar_StringToColor_70:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae Cvar_StringToColor_110
Cvar_StringToColor_80:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	mov [ebx], al
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_StringToColor_60:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_StringToColor_120
Cvar_StringToColor_50:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	jmp Cvar_StringToColor_130
Cvar_StringToColor_40:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_StringToColor_140
Cvar_StringToColor_30:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	jmp Cvar_StringToColor_150


;Dvar_StringToValue(unsigned char, DvarLimits, char const*)
Cvar_StringToValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	movzx eax, dl
	cmp eax, 0x8
	ja Cvar_StringToValue_10
	jmp dword [eax*4+Cvar_StringToValue_jumptab_0]
Cvar_StringToValue_10:
	mov dword [ebx], 0x0
Cvar_StringToValue_20:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_StringToValue_150:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call atoi
	test eax, eax
	setnz byte [ebx]
	jmp Cvar_StringToValue_20
Cvar_StringToValue_230:
	mov edx, ebx
	mov eax, [ebp+0x10]
	call Cvar_StringToColor
	jmp Cvar_StringToValue_20
Cvar_StringToValue_220:
	mov edx, [ebp+0x10]
	mov [ebx], edx
	jmp Cvar_StringToValue_20
Cvar_StringToValue_210:
	mov esi, [ebp+0x8]
	mov [ebp-0x20], esi
	test esi, esi
	jg Cvar_StringToValue_30
Cvar_StringToValue_120:
	mov edx, [ebp+0x10]
	movzx ecx, byte [edx]
	test cl, cl
	jz Cvar_StringToValue_40
	lea eax, [ecx-0x30]
	cmp al, 0x9
	ja Cvar_StringToValue_50
	mov esi, [ebp+0x10]
	xor edi, edi
Cvar_StringToValue_70:
	lea edx, [edi+edi*4]
	movsx eax, cl
	lea edi, [eax+edx*2-0x30]
	movzx ecx, byte [esi+0x1]
	test cl, cl
	jz Cvar_StringToValue_60
	add esi, 0x1
	lea eax, [ecx-0x30]
	cmp al, 0x9
	jbe Cvar_StringToValue_70
Cvar_StringToValue_50:
	mov edi, 0xfffffac7
Cvar_StringToValue_90:
	mov [ebx], edi
	jmp Cvar_StringToValue_20
Cvar_StringToValue_200:
	mov edx, [ebp+0x10]
	mov [esp], edx
	call atoi
	mov [ebx], eax
	jmp Cvar_StringToValue_20
Cvar_StringToValue_190:
	xor eax, eax
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	mov [ebx+0xc], eax
	lea eax, [ebx+0xc]
	mov [esp+0x14], eax
	lea eax, [ebx+0x8]
	mov [esp+0x10], eax
	lea eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_g_g_g_g
	mov edi, [ebp+0x10]
	mov [esp], edi
	call sscanf
	jmp Cvar_StringToValue_20
Cvar_StringToValue_180:
	xor eax, eax
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	mov edx, [ebp+0x10]
	cmp byte [edx], 0x28
	jz Cvar_StringToValue_80
	lea eax, [ebx+0x8]
	mov [esp+0x10], eax
	lea eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_g_g_g
	mov [esp], edx
	call sscanf
	jmp Cvar_StringToValue_20
Cvar_StringToValue_170:
	xor eax, eax
	mov [ebx], eax
	mov [ebx+0x4], eax
	lea eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_g_g
	mov eax, [ebp+0x10]
	mov [esp], eax
	call sscanf
	jmp Cvar_StringToValue_20
Cvar_StringToValue_160:
	mov esi, [ebp+0x10]
	mov [esp], esi
	call atof
	fstp qword [ebp-0x28]
	cvtsd2ss xmm0, [ebp-0x28]
	movss [ebx], xmm0
	jmp Cvar_StringToValue_20
Cvar_StringToValue_40:
	xor edi, edi
Cvar_StringToValue_140:
	cmp [ebp-0x20], edi
	jg Cvar_StringToValue_90
Cvar_StringToValue_130:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x10]
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jle Cvar_StringToValue_50
	mov edi, [ebp+0xc]
	mov [ebp-0x1c], edi
	xor edi, edi
Cvar_StringToValue_100:
	mov [esp+0x8], esi
	mov edx, [ebp-0x1c]
	mov eax, [edx+edi*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jz Cvar_StringToValue_90
	add edi, 0x1
	cmp [ebp-0x20], edi
	jnz Cvar_StringToValue_100
	mov edi, 0xfffffac7
	jmp Cvar_StringToValue_90
Cvar_StringToValue_30:
	mov esi, [ebp+0xc]
	xor edi, edi
Cvar_StringToValue_110:
	mov eax, [esi+edi*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Cvar_StringToValue_90
	add edi, 0x1
	cmp [ebp-0x20], edi
	jnz Cvar_StringToValue_110
	jmp Cvar_StringToValue_120
Cvar_StringToValue_80:
	lea eax, [ebx+0x8]
	mov [esp+0x10], eax
	lea eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring__g_g_g_
	mov [esp], edx
	call sscanf
	jmp Cvar_StringToValue_20
Cvar_StringToValue_60:
	test edi, edi
	js Cvar_StringToValue_130
	jmp Cvar_StringToValue_140
	
	
Cvar_StringToValue_jumptab_0:
	dd Cvar_StringToValue_150
	dd Cvar_StringToValue_160
	dd Cvar_StringToValue_170
	dd Cvar_StringToValue_180
	dd Cvar_StringToValue_190
	dd Cvar_StringToValue_200
	dd Cvar_StringToValue_210
	dd Cvar_StringToValue_220
	dd Cvar_StringToValue_230


;Dvar_UpdateResetValue(dvar_s*, DvarValue)
Cvar_UpdateResetValue:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, eax
	movzx eax, byte [eax+0xa]
	cmp al, 0x3
	jz Cvar_UpdateResetValue_10
	ja Cvar_UpdateResetValue_20
	cmp al, 0x2
	jz Cvar_UpdateResetValue_30
Cvar_UpdateResetValue_50:
	mov eax, [ebp+0x8]
	mov [esi+0x2c], eax
	mov eax, [ebp+0xc]
	mov [esi+0x30], eax
	mov eax, [ebp+0x10]
	mov [esi+0x34], eax
	mov eax, [ebp+0x14]
	mov [esi+0x38], eax
Cvar_UpdateResetValue_60:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_UpdateResetValue_20:
	cmp al, 0x4
	jz Cvar_UpdateResetValue_40
	cmp al, 0x7
	jnz Cvar_UpdateResetValue_50
	mov eax, [esi+0x2c]
	mov ecx, [ebp+0x8]
	cmp eax, ecx
	jz Cvar_UpdateResetValue_60
	test eax, eax
	jz Cvar_UpdateResetValue_70
	cmp eax, [esi+0xc]
	jz Cvar_UpdateResetValue_70
	cmp eax, [esi+0x1c]
	jz Cvar_UpdateResetValue_70
	mov edx, 0x1
Cvar_UpdateResetValue_80:
	mov ebx, edx
	test dl, dl
	cmovz eax, [ebp-0x28]
	mov [ebp-0x28], eax
	lea edx, [ebp-0x18]
	mov eax, esi
	call Cvar_AssignResetStringValue
	mov eax, [ebp-0x18]
	mov [esi+0x2c], eax
	test bl, bl
	jz Cvar_UpdateResetValue_60
	mov eax, [ebp-0x28]
	mov [esp], eax
	call FreeStringInternal
	jmp Cvar_UpdateResetValue_60
Cvar_UpdateResetValue_10:
	lea edx, [esi+0x2c]
	mov eax, [ebp+0x8]
	mov [esi+0x2c], eax
	mov eax, [ebp+0xc]
	mov [edx+0x4], eax
	mov eax, [ebp+0x10]
	mov [edx+0x8], eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_UpdateResetValue_40:
	lea edx, [esi+0x2c]
	mov eax, [ebp+0x8]
	mov [esi+0x2c], eax
	mov eax, [ebp+0xc]
	mov [edx+0x4], eax
	mov eax, [ebp+0x10]
	mov [edx+0x8], eax
	mov eax, [ebp+0x14]
	mov [edx+0xc], eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_UpdateResetValue_30:
	mov eax, [ebp+0x8]
	mov [esi+0x2c], eax
	mov eax, [ebp+0xc]
	mov [esi+0x30], eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_UpdateResetValue_70:
	xor edx, edx
	jmp Cvar_UpdateResetValue_80


;Dvar_MakeExplicitType(dvar_s*, char const*, unsigned char, unsigned short, DvarValue, DvarLimits)
Cvar_MakeExplicitType:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov edi, eax
	mov [ebp-0xba], cl
	movzx eax, word [ebp+0x8]
	mov [edi+0xa], cl
	mov edx, [ebp+0x1c]
	mov ecx, [ebp+0x20]
	mov [edi+0x3c], edx
	mov [edi+0x40], ecx
	mov [ebp-0xc0], eax
	test al, 0x40
	jnz Cvar_MakeExplicitType_10
	test al, al
	jns Cvar_MakeExplicitType_20
	mov eax, [dvar_cheats]
	test eax, eax
	jz Cvar_MakeExplicitType_20
	cmp byte [eax+0xc], 0x0
	jz Cvar_MakeExplicitType_10
Cvar_MakeExplicitType_20:
	mov esi, [edi+0xc]
	mov ecx, [edi+0x3c]
	mov ebx, [edi+0x40]
	lea eax, [ebp-0xb8]
	movzx edx, byte [edi+0xa]
	mov [esp+0x8], esi
	mov [esp], ecx
	mov [esp+0x4], ebx
	call Cvar_StringToValue
	mov ecx, [ebp-0xb8]
	mov [ebp-0x68], ecx
	mov ebx, [ebp-0xb4]
	mov [ebp-0x64], ebx
	mov edx, [ebp-0xb0]
	mov [ebp-0x60], edx
	mov eax, [ebp-0xac]
	mov [ebp-0x5c], eax
	mov esi, [ebp+0xc]
	mov [ebp-0x48], esi
	mov esi, [ebp+0x10]
	mov [ebp-0x44], esi
	mov esi, [ebp+0x14]
	mov [ebp-0x40], esi
	mov esi, [ebp+0x18]
	mov [ebp-0x3c], esi
	mov [ebp-0x38], ecx
	mov [ebp-0x34], ebx
	mov [ebp-0x30], edx
	mov [ebp-0x2c], eax
	mov [ebp-0xc4], ecx
	mov [ebp-0x88], ecx
	mov [ebp-0x84], ebx
	mov [ebp-0x80], edx
	mov [ebp-0x7c], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x78], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x74], edx
	mov ecx, [ebp+0x14]
	mov [ebp-0x70], ecx
	mov [ebp-0x6c], esi
	movzx eax, byte [ebp-0xba]
	cmp eax, 0x6
	jbe Cvar_MakeExplicitType_30
Cvar_MakeExplicitType_370:
	mov ebx, [ebp-0xc4]
Cvar_MakeExplicitType_300:
	mov [ebp-0x58], ebx
	mov ecx, [ebp-0x84]
	mov [ebp-0x54], ecx
	mov edx, [ebp-0x80]
	mov [ebp-0x50], edx
	mov eax, [ebp-0x7c]
	mov [ebp-0x4c], eax
	mov [ebp-0x68], ebx
	mov [ebp-0x64], ecx
	mov [ebp-0x60], edx
	mov [ebp-0x5c], eax
	cmp byte [edi+0xa], 0x7
	jz Cvar_MakeExplicitType_40
Cvar_MakeExplicitType_150:
	mov byte [ebp-0xb9], 0x0
Cvar_MakeExplicitType_170:
	mov eax, [edi+0xc]
	test eax, eax
	jz Cvar_MakeExplicitType_50
	cmp eax, [edi+0x1c]
	jz Cvar_MakeExplicitType_50
	cmp eax, [edi+0x2c]
	jz Cvar_MakeExplicitType_50
	mov edx, 0x1
	test edx, edx
	jnz Cvar_MakeExplicitType_60
Cvar_MakeExplicitType_220:
	mov dword [edi+0xc], 0x0
	mov eax, [edi+0x1c]
	test eax, eax
	jz Cvar_MakeExplicitType_70
Cvar_MakeExplicitType_180:
	cmp eax, [edi+0x2c]
	jz Cvar_MakeExplicitType_70
	mov edx, 0x1
	test edx, edx
	jnz Cvar_MakeExplicitType_80
Cvar_MakeExplicitType_190:
	mov dword [edi+0x1c], 0x0
	mov eax, [edi+0x2c]
	test eax, eax
	jz Cvar_MakeExplicitType_90
Cvar_MakeExplicitType_200:
	cmp eax, [edi+0xc]
	jz Cvar_MakeExplicitType_90
	mov edx, 0x1
	test edx, edx
	jnz Cvar_MakeExplicitType_100
Cvar_MakeExplicitType_210:
	mov dword [edi+0x2c], 0x0
	mov ebx, [ebp+0xc]
	mov [ebp-0x28], ebx
	mov ecx, [ebp+0x10]
	mov [ebp-0x24], ecx
	mov edx, [ebp+0x14]
	mov [ebp-0x20], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x1c], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_UpdateResetValue
	mov ebx, [ebp-0x68]
	mov [ebp-0xa8], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0xa4], ecx
	mov edx, [ebp-0x60]
	mov [ebp-0xa0], edx
	mov eax, [ebp-0x5c]
	mov [ebp-0x9c], eax
	mov [ebp-0x88], ebx
	mov [ebp-0x84], ecx
	mov [ebp-0x80], edx
	mov [ebp-0x7c], eax
	movzx eax, byte [edi+0xa]
	cmp al, 0x3
	jz Cvar_MakeExplicitType_110
	ja Cvar_MakeExplicitType_120
	cmp al, 0x2
	jz Cvar_MakeExplicitType_130
Cvar_MakeExplicitType_240:
	mov ebx, [ebp-0x88]
	mov [edi+0xc], ebx
	mov ecx, [ebp-0x84]
	mov [edi+0x10], ecx
	mov edx, [ebp-0x80]
	mov [edi+0x14], edx
	mov eax, [ebp-0x7c]
	mov [edi+0x18], eax
	mov [edi+0x1c], ebx
	mov [edi+0x20], ecx
	mov [edi+0x24], edx
	mov [edi+0x28], eax
Cvar_MakeExplicitType_250:
	mov eax, [ebp-0xc0]
	or [dvar_modifiedFlags], eax
	cmp byte [ebp-0xb9], 0x0
	jz Cvar_MakeExplicitType_140
	mov eax, [ebp-0x68]
	mov [esp], eax
	call FreeStringInternal
Cvar_MakeExplicitType_140:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_MakeExplicitType_10:
	mov eax, [ebp+0xc]
	mov [ebp-0x68], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x64], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x60], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x5c], eax
	cmp byte [edi+0xa], 0x7
	jnz Cvar_MakeExplicitType_150
Cvar_MakeExplicitType_40:
	mov eax, [ebp-0x68]
	test eax, eax
	jz Cvar_MakeExplicitType_160
	mov [esp], eax
	call CopyStringInternal
	mov [ebp-0x68], eax
	mov byte [ebp-0xb9], 0x1
Cvar_MakeExplicitType_290:
	cmp byte [edi+0xa], 0x7
	jnz Cvar_MakeExplicitType_170
	mov dword [edi+0xc], 0x0
	mov eax, [edi+0x1c]
	test eax, eax
	jnz Cvar_MakeExplicitType_180
Cvar_MakeExplicitType_70:
	xor edx, edx
	test edx, edx
	jz Cvar_MakeExplicitType_190
Cvar_MakeExplicitType_80:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x1c], 0x0
	mov dword [edi+0x1c], 0x0
	mov eax, [edi+0x2c]
	test eax, eax
	jnz Cvar_MakeExplicitType_200
Cvar_MakeExplicitType_90:
	xor edx, edx
	test edx, edx
	jz Cvar_MakeExplicitType_210
Cvar_MakeExplicitType_100:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x2c], 0x0
	jmp Cvar_MakeExplicitType_210
Cvar_MakeExplicitType_50:
	xor edx, edx
	test edx, edx
	jz Cvar_MakeExplicitType_220
Cvar_MakeExplicitType_60:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0xc], 0x0
	jmp Cvar_MakeExplicitType_220
Cvar_MakeExplicitType_120:
	cmp al, 0x4
	jz Cvar_MakeExplicitType_230
	cmp al, 0x7
	jnz Cvar_MakeExplicitType_240
	mov eax, [edi+0xc]
	cmp ebx, eax
	jz Cvar_MakeExplicitType_250
	test eax, eax
	jz Cvar_MakeExplicitType_260
	cmp eax, [edi+0x1c]
	jz Cvar_MakeExplicitType_260
	cmp eax, [edi+0x2c]
	jz Cvar_MakeExplicitType_260
	mov edx, 0x1
Cvar_MakeExplicitType_410:
	mov esi, edx
	test dl, dl
	cmovz eax, [ebp-0x78]
	mov [ebp-0x78], eax
	lea edx, [ebp-0x98]
	mov ecx, ebx
	mov eax, edi
	call Cvar_AssignCurrentStringValue
	mov edx, [ebp-0x98]
	mov [edi+0xc], edx
	mov eax, [edi+0x1c]
	test eax, eax
	jz Cvar_MakeExplicitType_270
	cmp edx, eax
	jz Cvar_MakeExplicitType_270
	cmp eax, [edi+0x2c]
	jz Cvar_MakeExplicitType_270
	mov edx, 0x1
Cvar_MakeExplicitType_440:
	test edx, edx
	jnz Cvar_MakeExplicitType_280
Cvar_MakeExplicitType_460:
	mov eax, [edi+0xc]
	mov [edi+0x1c], eax
	mov edx, esi
	test dl, dl
	jz Cvar_MakeExplicitType_250
	mov eax, [ebp-0x78]
	mov [esp], eax
	call FreeStringInternal
	jmp Cvar_MakeExplicitType_250
Cvar_MakeExplicitType_110:
	lea eax, [edi+0xc]
	mov ebx, [ebp-0x88]
	mov [edi+0xc], ebx
	mov ecx, [ebp-0x84]
	mov [eax+0x4], ecx
	mov edx, [ebp-0x80]
	mov [eax+0x8], edx
	lea eax, [edi+0x1c]
	mov [edi+0x1c], ebx
	mov [eax+0x4], ecx
	mov [eax+0x8], edx
	jmp Cvar_MakeExplicitType_250
Cvar_MakeExplicitType_30:
	jmp dword [eax*4+Cvar_MakeExplicitType_jumptab_0]
Cvar_MakeExplicitType_130:
	mov edx, [ebp-0x88]
	mov [edi+0xc], edx
	mov eax, [ebp-0x84]
	mov [edi+0x10], eax
	mov [edi+0x1c], edx
	mov [edi+0x20], eax
	jmp Cvar_MakeExplicitType_250
Cvar_MakeExplicitType_230:
	lea eax, [edi+0xc]
	mov esi, [ebp-0x88]
	mov [edi+0xc], esi
	mov ebx, [ebp-0x84]
	mov [eax+0x4], ebx
	mov ecx, [ebp-0x80]
	mov [eax+0x8], ecx
	mov edx, [ebp-0x7c]
	mov [eax+0xc], edx
	lea eax, [edi+0x1c]
	mov [edi+0x1c], esi
	mov [eax+0x4], ebx
	mov [eax+0x8], ecx
	mov [eax+0xc], edx
	jmp Cvar_MakeExplicitType_250
Cvar_MakeExplicitType_160:
	mov byte [ebp-0xb9], 0x0
	jmp Cvar_MakeExplicitType_290
Cvar_MakeExplicitType_480:
	cmp byte [ebp-0x88], 0x0
	setnz byte [ebp-0x88]
	mov ebx, [ebp-0x88]
	mov [ebp-0xc4], ebx
	jmp Cvar_MakeExplicitType_300
Cvar_MakeExplicitType_510:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	mov edx, 0x1
	lea eax, [ebp-0x84]
Cvar_MakeExplicitType_320:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe Cvar_MakeExplicitType_310
	movss [eax-0x4], xmm1
Cvar_MakeExplicitType_430:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz Cvar_MakeExplicitType_320
Cvar_MakeExplicitType_470:
	mov ecx, [ebp-0x88]
	mov [ebp-0xc4], ecx
	mov ebx, ecx
	jmp Cvar_MakeExplicitType_300
Cvar_MakeExplicitType_520:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	mov edx, 0x1
	lea eax, [ebp-0x84]
Cvar_MakeExplicitType_340:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe Cvar_MakeExplicitType_330
	movss [eax-0x4], xmm1
Cvar_MakeExplicitType_420:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x5
	jnz Cvar_MakeExplicitType_340
	mov ebx, [ebp-0x88]
	mov [ebp-0xc4], ebx
	jmp Cvar_MakeExplicitType_300
Cvar_MakeExplicitType_530:
	mov esi, [ebp-0x88]
	mov [ebp-0xc4], esi
	mov eax, [ebp+0x1c]
	cmp esi, eax
	jge Cvar_MakeExplicitType_350
	mov [ebp-0xc4], eax
	mov [ebp-0x88], eax
	mov ebx, eax
	jmp Cvar_MakeExplicitType_300
Cvar_MakeExplicitType_540:
	mov esi, [ebp-0x88]
	mov [ebp-0xc4], esi
	test esi, esi
	js Cvar_MakeExplicitType_360
	mov eax, [ebp+0x1c]
	cmp esi, eax
	jl Cvar_MakeExplicitType_370
Cvar_MakeExplicitType_360:
	mov edx, [ebp-0x78]
	mov [ebp-0xc4], edx
	mov [ebp-0x88], edx
	mov ebx, edx
	jmp Cvar_MakeExplicitType_300
Cvar_MakeExplicitType_490:
	movss xmm0, dword [ebp-0x88]
	ucomiss xmm0, [ebp+0x1c]
	jae Cvar_MakeExplicitType_380
	jp Cvar_MakeExplicitType_380
	fld dword [ebp+0x1c]
	fstp dword [ebp-0x88]
	mov eax, [ebp-0x88]
	mov [ebp-0xc4], eax
	mov ebx, eax
	jmp Cvar_MakeExplicitType_300
Cvar_MakeExplicitType_500:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	mov edx, 0x1
	lea eax, [ebp-0x84]
Cvar_MakeExplicitType_400:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe Cvar_MakeExplicitType_390
	movss [eax-0x4], xmm1
Cvar_MakeExplicitType_450:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz Cvar_MakeExplicitType_400
	mov edx, [ebp-0x88]
	mov [ebp-0xc4], edx
	mov ebx, edx
	jmp Cvar_MakeExplicitType_300
Cvar_MakeExplicitType_260:
	xor edx, edx
	jmp Cvar_MakeExplicitType_410
Cvar_MakeExplicitType_330:
	ucomiss xmm0, xmm2
	jbe Cvar_MakeExplicitType_420
	movss [eax-0x4], xmm2
	jmp Cvar_MakeExplicitType_420
Cvar_MakeExplicitType_310:
	ucomiss xmm0, xmm2
	jbe Cvar_MakeExplicitType_430
	movss [eax-0x4], xmm2
	jmp Cvar_MakeExplicitType_430
Cvar_MakeExplicitType_270:
	xor edx, edx
	jmp Cvar_MakeExplicitType_440
Cvar_MakeExplicitType_390:
	ucomiss xmm0, xmm2
	jbe Cvar_MakeExplicitType_450
	movss [eax-0x4], xmm2
	jmp Cvar_MakeExplicitType_450
Cvar_MakeExplicitType_280:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x1c], 0x0
	jmp Cvar_MakeExplicitType_460
Cvar_MakeExplicitType_380:
	ucomiss xmm0, [ebp+0x20]
	jbe Cvar_MakeExplicitType_470
	fld dword [ebp+0x20]
	fstp dword [ebp-0x88]
	mov eax, [ebp-0x88]
	mov [ebp-0xc4], eax
	mov ebx, eax
	jmp Cvar_MakeExplicitType_300
Cvar_MakeExplicitType_350:
	mov ebx, [ebp+0x20]
	cmp [ebp-0xc4], ebx
	jle Cvar_MakeExplicitType_370
	mov [ebp-0xc4], ebx
	mov [ebp-0x88], ebx
	jmp Cvar_MakeExplicitType_300
	
	
Cvar_MakeExplicitType_jumptab_0:
	dd Cvar_MakeExplicitType_480
	dd Cvar_MakeExplicitType_490
	dd Cvar_MakeExplicitType_500
	dd Cvar_MakeExplicitType_510
	dd Cvar_MakeExplicitType_520
	dd Cvar_MakeExplicitType_530
	dd Cvar_MakeExplicitType_540


;Dvar_SetLatchedValue(dvar_s*, DvarValue)
Cvar_SetLatchedValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	movzx eax, byte [eax+0xa]
	cmp al, 0x3
	jz Cvar_SetLatchedValue_10
	ja Cvar_SetLatchedValue_20
	cmp al, 0x2
	jz Cvar_SetLatchedValue_30
Cvar_SetLatchedValue_50:
	mov eax, [ebp+0x8]
	mov [ebx+0x1c], eax
	mov eax, [ebp+0xc]
	mov [ebx+0x20], eax
	mov eax, [ebp+0x10]
	mov [ebx+0x24], eax
	mov eax, [ebp+0x14]
	mov [ebx+0x28], eax
Cvar_SetLatchedValue_60:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetLatchedValue_20:
	cmp al, 0x4
	jz Cvar_SetLatchedValue_40
	cmp al, 0x7
	jnz Cvar_SetLatchedValue_50
	mov eax, [ebx+0x1c]
	mov edi, [ebp+0x8]
	cmp eax, edi
	jz Cvar_SetLatchedValue_60
	test eax, eax
	jz Cvar_SetLatchedValue_70
	cmp eax, [ebx+0xc]
	jz Cvar_SetLatchedValue_70
	cmp eax, [ebx+0x2c]
	jz Cvar_SetLatchedValue_70
	mov edx, 0x1
Cvar_SetLatchedValue_110:
	mov [ebp-0x39], dl
	test dl, dl
	cmovz eax, [ebp-0x38]
	mov [ebp-0x38], eax
	mov esi, [ebx+0xc]
	test esi, esi
	jz Cvar_SetLatchedValue_80
	cmp edi, esi
	jz Cvar_SetLatchedValue_90
	mov [esp+0x4], esi
	mov [esp], edi
	call strcmp
	test eax, eax
	jz Cvar_SetLatchedValue_90
Cvar_SetLatchedValue_80:
	mov esi, [ebx+0x2c]
	test esi, esi
	jz Cvar_SetLatchedValue_100
	cmp edi, esi
	jz Cvar_SetLatchedValue_90
	mov [esp+0x4], esi
	mov [esp], edi
	call strcmp
	test eax, eax
	jnz Cvar_SetLatchedValue_100
Cvar_SetLatchedValue_90:
	mov [ebp-0x28], esi
	mov eax, esi
Cvar_SetLatchedValue_120:
	mov [ebx+0x1c], eax
	cmp byte [ebp-0x39], 0x0
	jz Cvar_SetLatchedValue_60
	mov eax, [ebp-0x38]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp FreeStringInternal
Cvar_SetLatchedValue_10:
	lea edx, [ebx+0x1c]
	mov eax, [ebp+0x8]
	mov [ebx+0x1c], eax
	mov eax, [ebp+0xc]
	mov [edx+0x4], eax
	mov eax, [ebp+0x10]
	mov [edx+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetLatchedValue_40:
	lea edx, [ebx+0x1c]
	mov eax, [ebp+0x8]
	mov [ebx+0x1c], eax
	mov eax, [ebp+0xc]
	mov [edx+0x4], eax
	mov eax, [ebp+0x10]
	mov [edx+0x8], eax
	mov eax, [ebp+0x14]
	mov [edx+0xc], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetLatchedValue_30:
	mov eax, [ebp+0x8]
	mov [ebx+0x1c], eax
	mov eax, [ebp+0xc]
	mov [ebx+0x20], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetLatchedValue_70:
	xor edx, edx
	jmp Cvar_SetLatchedValue_110
Cvar_SetLatchedValue_100:
	mov [esp], edi
	call CopyStringInternal
	mov [ebp-0x28], eax
	jmp Cvar_SetLatchedValue_120
	nop


;Dvar_RegisterNew(char const*, unsigned char, unsigned short, DvarValue, DvarLimits, char const*)
Cvar_RegisterNew:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov edi, edx
	mov [ebp-0x1e], cx
	jmp Cvar_RegisterNew_10
Cvar_RegisterNew_30:
	mov dword [esp], g_dvarCritSect+0x4
	call InterlockedDecrement
Cvar_RegisterNew_20:
	mov dword [esp], 0x0
	call Sys_Sleep
Cvar_RegisterNew_10:
	mov eax, [g_dvarCritSect]
	test eax, eax
	jnz Cvar_RegisterNew_20
	mov dword [esp], g_dvarCritSect+0x4
	call InterlockedIncrement
	sub eax, 0x1
	jnz Cvar_RegisterNew_30
	mov eax, [g_dvarCritSect]
	test eax, eax
	jnz Cvar_RegisterNew_30
	cmp dword [dvarCount], 0xfff
	jg Cvar_RegisterNew_40
Cvar_RegisterNew_150:
	mov edx, [dvarCount]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4]
	lea esi, [ebx+dvarPool]
	mov [edx*4+sortedDvars], esi
	mov byte [areDvarsSorted], 0x0
	add edx, 0x1
	mov [dvarCount], edx
	mov edx, edi
	mov [esi+0xa], dl
	test word [ebp-0x1e], 0x4000
	jnz Cvar_RegisterNew_50
	mov edx, [ebp-0x1c]
	mov [ebx+dvarPool], edx
	mov eax, edi
	cmp al, 0x3
	jz Cvar_RegisterNew_60
Cvar_RegisterNew_140:
	ja Cvar_RegisterNew_70
	cmp al, 0x2
	jz Cvar_RegisterNew_80
Cvar_RegisterNew_120:
	mov ebx, [ebp+0x8]
	mov [esi+0xc], ebx
	mov ecx, [ebp+0xc]
	mov [esi+0x10], ecx
	mov edx, [ebp+0x10]
	mov [esi+0x14], edx
	mov eax, [ebp+0x14]
	mov [esi+0x18], eax
	mov [esi+0x1c], ebx
	mov [esi+0x20], ecx
	mov [esi+0x24], edx
	mov [esi+0x28], eax
	mov [esi+0x2c], ebx
	mov [esi+0x30], ecx
	mov [esi+0x34], edx
	mov [esi+0x38], eax
Cvar_RegisterNew_130:
	mov eax, [ebp+0x18]
	mov edx, [ebp+0x1c]
	mov [esi+0x3c], eax
	mov [esi+0x40], edx
	mov byte [esi+0xb], 0x0
	mov dword [esi+0x44], 0x0
	movzx edx, word [ebp-0x1e]
	mov [esi+0x8], dx
	mov eax, [ebp+0x20]
	mov [esi+0x4], eax
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz Cvar_RegisterNew_90
Cvar_RegisterNew_170:
	mov edx, [ebp-0x1c]
	movzx eax, byte [edx]
	test al, al
	jnz Cvar_RegisterNew_100
	xor edx, edx
	mov eax, [edx*4+dvarHashTable]
	mov [esi+0x48], eax
	mov [edx*4+dvarHashTable], esi
	mov dword [esp], g_dvarCritSect+0x4
	call InterlockedDecrement
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterNew_70:
	mov eax, edi
	cmp al, 0x4
	jz Cvar_RegisterNew_110
	cmp al, 0x7
	jnz Cvar_RegisterNew_120
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CopyStringInternal
	mov [esi+0xc], eax
	mov [esi+0x1c], eax
	mov [esi+0x2c], eax
	jmp Cvar_RegisterNew_130
Cvar_RegisterNew_50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CopyStringInternal
	mov [ebx+dvarPool], eax
	mov eax, edi
	cmp al, 0x3
	jnz Cvar_RegisterNew_140
Cvar_RegisterNew_60:
	mov ecx, [ebp+0x8]
	mov [esi+0xc], ecx
	mov edx, [ebp+0xc]
	mov [esi+0x10], edx
	mov eax, [ebp+0x10]
	mov [esi+0x14], eax
	mov [esi+0x1c], ecx
	mov [esi+0x20], edx
	mov [esi+0x24], eax
	mov [esi+0x2c], ecx
	mov [esi+0x30], edx
	mov [esi+0x34], eax
	jmp Cvar_RegisterNew_130
Cvar_RegisterNew_40:
	mov dword [esp], g_dvarCritSect+0x4
	call InterlockedDecrement
	mov dword [esp+0xc], 0x1000
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_create_dvar
	mov dword [esp], 0x1
	call Com_Error
	jmp Cvar_RegisterNew_150
Cvar_RegisterNew_100:
	xor ebx, ebx
	xor edi, edi
Cvar_RegisterNew_160:
	movsx eax, al
	mov [esp], eax
	call tolower
	lea edx, [ebx+0x77]
	imul eax, edx
	add edi, eax
	add ebx, 0x1
	mov edx, [ebp-0x1c]
	movzx eax, byte [edx+ebx]
	test al, al
	jnz Cvar_RegisterNew_160
	mov edx, edi
	and edx, 0xff
	mov eax, [edx*4+dvarHashTable]
	mov [esi+0x48], eax
	mov [edx*4+dvarHashTable], esi
	mov dword [esp], g_dvarCritSect+0x4
	call InterlockedDecrement
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterNew_110:
	mov ecx, [ebp+0x8]
	mov [esi+0xc], ecx
	mov ebx, [ebp+0xc]
	mov [esi+0x10], ebx
	mov edx, [ebp+0x10]
	mov [esi+0x14], edx
	mov eax, [ebp+0x14]
	mov [esi+0x18], eax
	mov [esi+0x1c], ecx
	mov [esi+0x20], ebx
	mov [esi+0x24], edx
	mov [esi+0x28], eax
	mov [esi+0x2c], ecx
	mov [esi+0x30], ebx
	mov [esi+0x34], edx
	mov [esi+0x38], eax
	jmp Cvar_RegisterNew_130
Cvar_RegisterNew_80:
	mov edx, [ebp+0x8]
	mov [esi+0xc], edx
	mov eax, [ebp+0xc]
	mov [esi+0x10], eax
	mov [esi+0x1c], edx
	mov [esi+0x20], eax
	mov [esi+0x2c], edx
	mov [esi+0x30], eax
	jmp Cvar_RegisterNew_130
Cvar_RegisterNew_90:
	mov dword [esp+0x4], _cstring_null_name_in_gen
	mov dword [esp], 0x2
	call Com_Error
	jmp Cvar_RegisterNew_170


;Dvar_DomainToString_Internal(unsigned char, DvarLimits, char*, int, int*)
Cvar_DomainToString_Internal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, edx
	mov esi, ecx
	mov edi, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+edi]
	mov [ebp-0x20], ecx
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz Cvar_DomainToString_Internal_10
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
Cvar_DomainToString_Internal_10:
	movzx eax, al
	cmp eax, 0x8
	ja Cvar_DomainToString_Internal_20
	jmp dword [eax*4+Cvar_DomainToString_Internal_jumptab_0]
Cvar_DomainToString_Internal_20:
	mov byte [edi], 0x0
Cvar_DomainToString_Internal_30:
	mov eax, [ebp-0x20]
	mov byte [eax-0x1], 0x0
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_DomainToString_Internal_300:
	mov dword [esp+0x8], _cstring_domain_is_0_or_1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_380:
	mov dword [esp+0x8], _cstring_domain_is_any_4c
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_370:
	mov dword [esp+0x8], _cstring_domain_is_any_te
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_360:
	mov dword [esp+0x8], _cstring_domain_is_one_of
	mov eax, [ebp-0x20]
	sub eax, edi
	mov [esp+0x4], eax
	mov [esp], edi
	call snprintf
	test eax, eax
	js Cvar_DomainToString_Internal_30
	lea eax, [edi+eax]
	mov [ebp-0x1c], eax
	mov [ebp-0x24], ebx
	test ebx, ebx
	jle Cvar_DomainToString_Internal_30
	mov eax, [ebp+0x10]
	test eax, eax
	jnz Cvar_DomainToString_Internal_40
	xor ebx, ebx
Cvar_DomainToString_Internal_50:
	mov eax, [esi+ebx*4]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring___2i_s
	mov eax, [ebp-0x20]
	sub eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call snprintf
	test eax, eax
	js Cvar_DomainToString_Internal_30
	add [ebp-0x1c], eax
	add ebx, 0x1
	cmp [ebp-0x24], ebx
	jnz Cvar_DomainToString_Internal_50
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_350:
	cmp ebx, 0x80000000
	jz Cvar_DomainToString_Internal_60
	cmp esi, 0x7fffffff
	jz Cvar_DomainToString_Internal_70
	mov [esp+0x10], esi
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_domain_is_any_in
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_340:
	mov [ebp-0x2c], ebx
	movss xmm2, dword [ebp-0x2c]
	movaps xmm0, xmm2
	ucomiss xmm2, [_float__3402823466385288_float__]
	jp Cvar_DomainToString_Internal_80
	jnz Cvar_DomainToString_Internal_80
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_34028234663852885_float_3]
	jp Cvar_DomainToString_Internal_90
	jz Cvar_DomainToString_Internal_100
Cvar_DomainToString_Internal_90:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], _cstring_domain_is_any_id
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_330:
	mov [ebp-0x2c], ebx
	movss xmm2, dword [ebp-0x2c]
	movaps xmm0, xmm2
	ucomiss xmm2, [_float__3402823466385288_float__]
	jp Cvar_DomainToString_Internal_110
	jnz Cvar_DomainToString_Internal_110
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_34028234663852885_float_3]
	jp Cvar_DomainToString_Internal_120
	jz Cvar_DomainToString_Internal_130
Cvar_DomainToString_Internal_120:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], _cstring_domain_is_any_id
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_320:
	mov [ebp-0x2c], ebx
	movss xmm2, dword [ebp-0x2c]
	movaps xmm0, xmm2
	ucomiss xmm2, [_float__3402823466385288_float__]
	jp Cvar_DomainToString_Internal_140
	jnz Cvar_DomainToString_Internal_140
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_34028234663852885_float_3]
	jp Cvar_DomainToString_Internal_150
	jz Cvar_DomainToString_Internal_160
Cvar_DomainToString_Internal_150:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_domain_is_any_id
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_310:
	mov [ebp-0x2c], ebx
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float__3402823466385288_float__]
	jp Cvar_DomainToString_Internal_170
	jnz Cvar_DomainToString_Internal_170
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_34028234663852885_float_3]
	jp Cvar_DomainToString_Internal_180
	jz Cvar_DomainToString_Internal_190
Cvar_DomainToString_Internal_180:
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_domain_is_any_nu
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_170:
	mov [ebp-0x2c], esi
	movss xmm2, dword [ebp-0x2c]
	movaps xmm1, xmm2
	ucomiss xmm2, [_float_34028234663852885_float_3]
	jp Cvar_DomainToString_Internal_200
	jz Cvar_DomainToString_Internal_210
Cvar_DomainToString_Internal_200:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x14], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_domain_is_any_nu1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_140:
	mov [ebp-0x2c], esi
	movss xmm2, dword [ebp-0x2c]
	movaps xmm1, xmm2
	ucomiss xmm2, [_float_34028234663852885_float_3]
	jp Cvar_DomainToString_Internal_220
	jz Cvar_DomainToString_Internal_230
Cvar_DomainToString_Internal_220:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x18], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_domain_is_any_id1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_110:
	mov [ebp-0x2c], esi
	movss xmm2, dword [ebp-0x2c]
	movaps xmm1, xmm2
	ucomiss xmm2, [_float_34028234663852885_float_3]
	jp Cvar_DomainToString_Internal_240
	jz Cvar_DomainToString_Internal_250
Cvar_DomainToString_Internal_240:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x18], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], _cstring_domain_is_any_id1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_80:
	mov [ebp-0x2c], esi
	movss xmm2, dword [ebp-0x2c]
	movaps xmm1, xmm2
	ucomiss xmm2, [_float_34028234663852885_float_3]
	jp Cvar_DomainToString_Internal_260
	jz Cvar_DomainToString_Internal_270
Cvar_DomainToString_Internal_260:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x18], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], _cstring_domain_is_any_id1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_60:
	cmp esi, 0x7fffffff
	jz Cvar_DomainToString_Internal_280
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_domain_is_any_in1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_190:
	mov dword [esp+0x8], _cstring_domain_is_any_nu2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_270:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], _cstring_domain_is_any_id2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_100:
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], _cstring_domain_is_any_id3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_250:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], _cstring_domain_is_any_id2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_130:
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], _cstring_domain_is_any_id3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_230:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_domain_is_any_id2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_160:
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_domain_is_any_id3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_210:
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_domain_is_any_nu3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_70:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_domain_is_any_in2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_280:
	mov dword [esp+0x8], _cstring_domain_is_any_in3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp Cvar_DomainToString_Internal_30
Cvar_DomainToString_Internal_40:
	xor ebx, ebx
Cvar_DomainToString_Internal_290:
	mov eax, [esi+ebx*4]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring___2i_s
	mov eax, [ebp-0x20]
	sub eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call snprintf
	test eax, eax
	js Cvar_DomainToString_Internal_30
	mov edx, [ebp+0x10]
	add dword [edx], 0x1
	add [ebp-0x1c], eax
	add ebx, 0x1
	cmp ebx, [ebp-0x24]
	jnz Cvar_DomainToString_Internal_290
	jmp Cvar_DomainToString_Internal_30
	nop
	
	
Cvar_DomainToString_Internal_jumptab_0:
	dd Cvar_DomainToString_Internal_300
	dd Cvar_DomainToString_Internal_310
	dd Cvar_DomainToString_Internal_320
	dd Cvar_DomainToString_Internal_330
	dd Cvar_DomainToString_Internal_340
	dd Cvar_DomainToString_Internal_350
	dd Cvar_DomainToString_Internal_360
	dd Cvar_DomainToString_Internal_370
	dd Cvar_DomainToString_Internal_380


;Dvar_SetVariant(dvar_s*, DvarValue, DvarSetSource)
Cvar_SetVariant:
Cvar_SetVariant_290:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x53c
	mov edi, eax
	call Com_LogFileOpen
	test al, al
	jnz Cvar_SetVariant_10
Cvar_SetVariant_190:
	mov ecx, [edi+0x3c]
	mov ebx, [edi+0x40]
	mov esi, [ebp+0x8]
	mov [ebp-0xc8], esi
	mov eax, [ebp+0xc]
	mov [ebp-0x504], eax
	mov [ebp-0xc4], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x50c], edx
	mov [ebp-0xc0], edx
	mov eax, [ebp+0x14]
	mov [ebp-0x510], eax
	mov [ebp-0xbc], eax
	movzx eax, byte [edi+0xa]
	mov [ebp-0x4f8], esi
	mov edx, [ebp-0x504]
	mov [ebp-0x4f4], edx
	mov edx, [ebp-0x50c]
	mov [ebp-0x4f0], edx
	mov edx, [ebp-0x510]
	mov [ebp-0x4ec], edx
	movzx eax, al
	cmp eax, 0x8
	ja Cvar_SetVariant_20
	jmp dword [eax*4+Cvar_SetVariant_jumptab_0]
Cvar_SetVariant_370:
	movss xmm0, dword [ebp-0x4f8]
	mov [ebp-0x51c], ecx
	movss xmm1, dword [ebp-0x51c]
	ucomiss xmm1, xmm0
	ja Cvar_SetVariant_20
	mov [ebp-0x51c], ebx
	movss xmm1, dword [ebp-0x51c]
	ucomiss xmm0, xmm1
	jbe Cvar_SetVariant_30
Cvar_SetVariant_20:
	mov ebx, [edi]
	mov [ebp-0xb8], esi
	mov eax, [ebp-0x504]
	mov [ebp-0xb4], eax
	mov edx, [ebp-0x50c]
	mov [ebp-0xb0], edx
	mov eax, [ebp-0x510]
	mov [ebp-0xac], eax
	mov [esp], esi
	mov edx, [ebp-0x504]
	mov [esp+0x4], edx
	mov esi, [ebp-0x50c]
	mov [esp+0x8], esi
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_ValueToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_a_valid
	mov dword [esp], 0x10
	call Com_Printf
	mov ecx, [edi+0x3c]
	mov ebx, [edi+0x40]
	movzx eax, byte [edi+0xa]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x4f8]
	mov [esp], edx
	mov edx, ecx
	mov ecx, ebx
	call Cvar_DomainToString_Internal
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x10
	call Com_Printf
	cmp byte [edi+0xa], 0x6
	jz Cvar_SetVariant_40
Cvar_SetVariant_80:
	add esp, 0x53c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetVariant_380:
	mov [ebp-0x51c], ebx
	movss xmm0, dword [ebp-0x51c]
	movaps xmm2, xmm0
	mov [ebp-0x51c], ecx
	movss xmm0, dword [ebp-0x51c]
	movaps xmm1, xmm0
	mov eax, 0x1
	lea edx, [ebp-0x4f8]
Cvar_SetVariant_60:
	movss xmm0, dword [edx+eax*4-0x4]
	ucomiss xmm1, xmm0
	ja Cvar_SetVariant_50
	ucomiss xmm0, xmm2
	ja Cvar_SetVariant_50
	add eax, 0x1
	cmp eax, 0x3
	jnz Cvar_SetVariant_60
Cvar_SetVariant_270:
	mov eax, 0x1
Cvar_SetVariant_250:
	test al, al
	jz Cvar_SetVariant_20
Cvar_SetVariant_30:
	mov eax, [edi+0x44]
	test eax, eax
	jz Cvar_SetVariant_70
	mov [ebp-0x98], esi
	mov edx, [ebp-0x504]
	mov [ebp-0x94], edx
	mov edx, [ebp-0x50c]
	mov [ebp-0x90], edx
	mov edx, [ebp-0x510]
	mov [ebp-0x8c], edx
	mov [esp+0x4], esi
	mov esi, [ebp-0x504]
	mov [esp+0x8], esi
	mov edx, [ebp-0x50c]
	mov [esp+0xc], edx
	mov esi, [ebp-0x510]
	mov [esp+0x10], esi
	mov [esp], edi
	call eax
	test al, al
	jnz Cvar_SetVariant_70
	mov esi, [edi]
	mov ebx, [ebp+0x8]
	mov [ebp-0x88], ebx
	mov ecx, [ebp+0xc]
	mov [ebp-0x84], ecx
	mov edx, [ebp+0x10]
	mov [ebp-0x80], edx
	mov eax, [ebp+0x14]
	mov [ebp-0x7c], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_ValueToString
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_a_valid1
	mov dword [esp], 0x10
	call Com_Printf
	jmp Cvar_SetVariant_80
Cvar_SetVariant_70:
	mov eax, [ebp+0x18]
	sub eax, 0x1
	cmp eax, 0x1
	jbe Cvar_SetVariant_90
Cvar_SetVariant_230:
	mov esi, [ebp+0x8]
	mov [ebp-0x48], esi
	mov eax, [ebp+0xc]
	mov [ebp-0x504], eax
	mov [ebp-0x44], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x50c], edx
	mov [ebp-0x40], edx
	mov eax, [ebp+0x14]
	mov [ebp-0x510], eax
	mov [ebp-0x3c], eax
	mov ebx, [edi+0xc]
	mov [ebp-0x38], ebx
	mov edx, [edi+0x10]
	mov [ebp-0x4fc], edx
	mov [ebp-0x34], edx
	mov eax, [edi+0x14]
	mov [ebp-0x500], eax
	mov [ebp-0x30], eax
	mov edx, [edi+0x18]
	mov [ebp-0x508], edx
	mov [ebp-0x2c], edx
	movzx eax, byte [edi+0xa]
	mov [esp+0x10], esi
	mov edx, [ebp-0x504]
	mov [esp+0x14], edx
	mov edx, [ebp-0x50c]
	mov [esp+0x18], edx
	mov edx, [ebp-0x510]
	mov [esp+0x1c], edx
	mov [esp], ebx
	mov edx, [ebp-0x4fc]
	mov [esp+0x4], edx
	mov edx, [ebp-0x500]
	mov [esp+0x8], edx
	mov edx, [ebp-0x508]
	mov [esp+0xc], edx
	call Cvar_ValuesEqual
	test eax, eax
	jnz Cvar_SetVariant_100
	movzx eax, word [edi+0x8]
	or [dvar_modifiedFlags], eax
	movzx eax, byte [edi+0xa]
	cmp al, 0x3
	jz Cvar_SetVariant_110
	jbe Cvar_SetVariant_120
	cmp al, 0x4
	jz Cvar_SetVariant_130
	cmp al, 0x7
	jnz Cvar_SetVariant_140
	mov eax, [edi+0xc]
	test eax, eax
	jz Cvar_SetVariant_150
	cmp eax, [edi+0x1c]
	jz Cvar_SetVariant_150
	cmp eax, [edi+0x2c]
	jz Cvar_SetVariant_150
	mov edx, 0x1
Cvar_SetVariant_340:
	mov ebx, edx
	test dl, dl
	cmovz eax, [ebp-0xe8]
	mov [ebp-0xe8], eax
	lea edx, [ebp-0xf8]
	mov ecx, [ebp+0x8]
	mov eax, edi
	call Cvar_AssignCurrentStringValue
	mov edx, [ebp-0xf8]
	mov [edi+0xc], edx
	mov eax, [edi+0x1c]
	test eax, eax
	jz Cvar_SetVariant_160
	cmp edx, eax
	jz Cvar_SetVariant_160
	cmp eax, [edi+0x2c]
	jz Cvar_SetVariant_160
	mov edx, 0x1
Cvar_SetVariant_350:
	test edx, edx
	jnz Cvar_SetVariant_170
Cvar_SetVariant_360:
	mov eax, [edi+0xc]
	mov [edi+0x1c], eax
	test bl, bl
	jz Cvar_SetVariant_180
	mov eax, [ebp-0xe8]
	mov [esp], eax
	call FreeStringInternal
Cvar_SetVariant_180:
	mov byte [edi+0xb], 0x1
Cvar_SetVariant_320:
	add esp, 0x53c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetVariant_10:
	mov ebx, [ebp+0x8]
	mov [ebp-0xd8], ebx
	mov ecx, [ebp+0xc]
	mov [ebp-0xd4], ecx
	mov edx, [ebp+0x10]
	mov [ebp-0xd0], edx
	mov eax, [ebp+0x14]
	mov [ebp-0xcc], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_ValueToString
	mov [esp+0x8], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_______dvar_set_s
	call va
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call Com_PrintMessage
	jmp Cvar_SetVariant_190
Cvar_SetVariant_90:
	movzx edx, word [edi+0x8]
	test dl, 0x40
	jnz Cvar_SetVariant_200
	test dl, 0x10
	jnz Cvar_SetVariant_210
	cmp dword [ebp+0x18], 0x1
	jz Cvar_SetVariant_220
Cvar_SetVariant_330:
	and dl, 0x20
	jz Cvar_SetVariant_230
	mov ebx, [ebp+0x8]
	mov [ebp-0x78], ebx
	mov ecx, [ebp+0xc]
	mov [ebp-0x74], ecx
	mov edx, [ebp+0x10]
	mov [ebp-0x70], edx
	mov eax, [ebp+0x14]
	mov [ebp-0x6c], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_SetLatchedValue
	mov esi, [edi+0xc]
	mov [ebp-0x68], esi
	mov eax, [edi+0x10]
	mov [ebp-0x64], eax
	mov edx, [edi+0x14]
	mov [ebp-0x60], edx
	mov esi, [edi+0x18]
	mov [ebp-0x5c], esi
	mov esi, [edi+0x1c]
	mov [ebp-0x58], esi
	mov ebx, [edi+0x20]
	mov [ebp-0x54], ebx
	mov ecx, [edi+0x24]
	mov [ebp-0x50], ecx
	mov edx, [edi+0x28]
	mov [ebp-0x4c], edx
	movzx eax, byte [edi+0xa]
	mov [ebp-0x520], eax
	mov eax, [edi+0xc]
	mov [esp+0x10], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x18]
	mov [esp+0x1c], eax
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov eax, [ebp-0x520]
	call Cvar_ValuesEqual
	test eax, eax
	jnz Cvar_SetVariant_80
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_will_be_change
	mov dword [esp], 0x10
	call Com_Printf
	jmp Cvar_SetVariant_80
Cvar_SetVariant_420:
	mov eax, [ebp-0x4f8]
	test eax, eax
	js Cvar_SetVariant_240
	cmp eax, ecx
	jge Cvar_SetVariant_240
Cvar_SetVariant_300:
	mov eax, 0x1
	jmp Cvar_SetVariant_250
Cvar_SetVariant_410:
	mov eax, [ebp-0x4f8]
	cmp eax, ecx
	jl Cvar_SetVariant_20
	cmp eax, ebx
	jg Cvar_SetVariant_20
	jmp Cvar_SetVariant_30
Cvar_SetVariant_400:
	mov [ebp-0x51c], ebx
	movss xmm1, dword [ebp-0x51c]
	movaps xmm2, xmm1
	mov [ebp-0x51c], ecx
	movss xmm0, dword [ebp-0x51c]
	movaps xmm1, xmm0
	mov eax, 0x1
	lea edx, [ebp-0x4f8]
Cvar_SetVariant_260:
	movss xmm0, dword [edx+eax*4-0x4]
	ucomiss xmm1, xmm0
	ja Cvar_SetVariant_50
	ucomiss xmm0, xmm2
	ja Cvar_SetVariant_50
	add eax, 0x1
	cmp eax, 0x5
	jnz Cvar_SetVariant_260
	jmp Cvar_SetVariant_270
Cvar_SetVariant_390:
	mov [ebp-0x51c], ebx
	movss xmm1, dword [ebp-0x51c]
	movaps xmm2, xmm1
	mov [ebp-0x51c], ecx
	movss xmm0, dword [ebp-0x51c]
	movaps xmm1, xmm0
	mov eax, 0x1
	lea edx, [ebp-0x4f8]
Cvar_SetVariant_280:
	movss xmm0, dword [edx+eax*4-0x4]
	ucomiss xmm1, xmm0
	ja Cvar_SetVariant_50
	ucomiss xmm0, xmm2
	ja Cvar_SetVariant_50
	add eax, 0x1
	cmp eax, 0x4
	jnz Cvar_SetVariant_280
	jmp Cvar_SetVariant_270
Cvar_SetVariant_40:
	mov ebx, [edi+0x2c]
	mov [ebp-0xa8], ebx
	mov ecx, [edi+0x30]
	mov [ebp-0xa4], ecx
	mov edx, [edi+0x34]
	mov [ebp-0xa0], edx
	mov eax, [edi+0x38]
	mov [ebp-0x9c], eax
	mov esi, [ebp+0x18]
	mov [esp+0x10], esi
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_SetVariant_290
	add esp, 0x53c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetVariant_240:
	test eax, eax
	jz Cvar_SetVariant_300
Cvar_SetVariant_50:
	xor eax, eax
	jmp Cvar_SetVariant_250
Cvar_SetVariant_100:
	mov [ebp-0x28], ebx
	mov edx, [ebp-0x4fc]
	mov [ebp-0x24], edx
	mov esi, [ebp-0x500]
	mov [ebp-0x20], esi
	mov eax, [ebp-0x508]
	mov [ebp-0x1c], eax
	mov [esp], ebx
	mov [esp+0x4], edx
	mov [esp+0x8], esi
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_SetLatchedValue
	jmp Cvar_SetVariant_80
Cvar_SetVariant_120:
	cmp al, 0x2
	jz Cvar_SetVariant_310
Cvar_SetVariant_140:
	mov ebx, esi
	mov [edi+0xc], esi
	mov edx, [ebp-0x504]
	mov [edi+0x10], edx
	mov esi, [ebp-0x50c]
	mov [edi+0x14], esi
	mov eax, [ebp-0x510]
	mov [edi+0x18], eax
	mov [edi+0x1c], ebx
	mov [edi+0x20], edx
	mov [edi+0x24], esi
	mov [edi+0x28], eax
	mov byte [edi+0xb], 0x1
	jmp Cvar_SetVariant_320
Cvar_SetVariant_210:
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_write_prote
	mov dword [esp], 0x10
	call Com_Printf
	jmp Cvar_SetVariant_80
Cvar_SetVariant_110:
	lea eax, [edi+0xc]
	mov ebx, [ebp+0x8]
	mov [edi+0xc], ebx
	mov ecx, [ebp+0xc]
	mov [eax+0x4], ecx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	lea eax, [edi+0x1c]
	mov [edi+0x1c], ebx
	mov [eax+0x4], ecx
	mov [eax+0x8], edx
	mov byte [edi+0xb], 0x1
	jmp Cvar_SetVariant_320
Cvar_SetVariant_200:
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_read_only
	mov dword [esp], 0x10
	call Com_Printf
	jmp Cvar_SetVariant_80
Cvar_SetVariant_220:
	test dl, dl
	jns Cvar_SetVariant_330
	mov eax, [dvar_cheats]
	cmp byte [eax+0xc], 0x0
	jnz Cvar_SetVariant_330
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_cheat_prote
	mov dword [esp], 0x10
	call Com_Printf
	jmp Cvar_SetVariant_80
Cvar_SetVariant_310:
	mov edx, [ebp+0x8]
	mov [edi+0xc], edx
	mov eax, [ebp+0xc]
	mov [edi+0x10], eax
	mov [edi+0x1c], edx
	mov [edi+0x20], eax
	mov byte [edi+0xb], 0x1
	jmp Cvar_SetVariant_320
Cvar_SetVariant_130:
	lea eax, [edi+0xc]
	mov esi, [ebp+0x8]
	mov [edi+0xc], esi
	mov ebx, [ebp+0xc]
	mov [eax+0x4], ebx
	mov ecx, [ebp+0x10]
	mov [eax+0x8], ecx
	mov edx, [ebp+0x14]
	mov [eax+0xc], edx
	lea eax, [edi+0x1c]
	mov [edi+0x1c], esi
	mov [eax+0x4], ebx
	mov [eax+0x8], ecx
	mov [eax+0xc], edx
	mov byte [edi+0xb], 0x1
	jmp Cvar_SetVariant_320
Cvar_SetVariant_150:
	xor edx, edx
	jmp Cvar_SetVariant_340
Cvar_SetVariant_160:
	xor edx, edx
	jmp Cvar_SetVariant_350
Cvar_SetVariant_170:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x1c], 0x0
	jmp Cvar_SetVariant_360
	
	
Cvar_SetVariant_jumptab_0:
	dd Cvar_SetVariant_30
	dd Cvar_SetVariant_370
	dd Cvar_SetVariant_380
	dd Cvar_SetVariant_390
	dd Cvar_SetVariant_400
	dd Cvar_SetVariant_410
	dd Cvar_SetVariant_420
	dd Cvar_SetVariant_30
	dd Cvar_SetVariant_30


;Dvar_SetFromStringFromSource(dvar_s const*, char const*, DvarSetSource)
Cvar_SetFromStringFromSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x86c
	mov esi, eax
	mov [ebp-0x84c], ecx
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edx
	lea edi, [ebp-0x438]
	mov [esp], edi
	call Q_strncpyz
	mov ecx, [esi+0x3c]
	mov ebx, [esi+0x40]
	lea eax, [ebp-0x848]
	movzx edx, byte [esi+0xa]
	mov [esp+0x8], edi
	mov [esp], ecx
	mov [esp+0x4], ebx
	call Cvar_StringToValue
	mov eax, [ebp-0x848]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x844]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x840]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x83c]
	mov [ebp-0x2c], eax
	cmp byte [esi+0xa], 0x6
	jz Cvar_SetFromStringFromSource_10
Cvar_SetFromStringFromSource_30:
	mov ebx, [ebp-0x38]
	mov [ebp-0x28], ebx
	mov ecx, [ebp-0x34]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x30]
	mov [ebp-0x20], edx
	mov [ebp-0x1c], eax
	mov edi, [ebp-0x84c]
	mov [esp+0x10], edi
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
	add esp, 0x86c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetFromStringFromSource_10:
	cmp dword [ebp-0x38], 0xfffffac7
	jz Cvar_SetFromStringFromSource_20
	mov eax, [ebp-0x2c]
	jmp Cvar_SetFromStringFromSource_30
Cvar_SetFromStringFromSource_20:
	mov eax, [esi]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_s_is_not_a_valid
	mov dword [esp], 0x10
	call Com_Printf
	mov ecx, [esi+0x3c]
	mov ebx, [esi+0x40]
	movzx eax, byte [esi+0xa]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x838]
	mov [esp], edx
	mov edx, ecx
	mov ecx, ebx
	call Cvar_DomainToString_Internal
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [esi+0x2c]
	mov [ebp-0x38], eax
	mov eax, [esi+0x30]
	mov [ebp-0x34], eax
	mov eax, [esi+0x34]
	mov [ebp-0x30], eax
	mov eax, [esi+0x38]
	mov [ebp-0x2c], eax
	jmp Cvar_SetFromStringFromSource_30
	nop
	add [eax], al


;Dvar_Reregister(dvar_s*, char const*, unsigned char, unsigned short, DvarValue, DvarLimits, char const*)
Cvar_Reregister:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edi, eax
	mov [ebp-0xf0], edx
	mov [ebp-0xf1], cl
	movzx eax, word [ebp+0x8]
	mov [ebp-0xf4], ax
	movzx edx, word [edi+0x8]
	movzx ecx, ax
	mov [ebp-0xf8], ecx
	mov eax, ecx
	xor eax, edx
	test ah, 0x40
	jz Cvar_Reregister_10
	mov esi, [ebp+0xc]
	mov [ebp-0x98], esi
	mov ebx, [ebp+0x10]
	mov [ebp-0x94], ebx
	mov ecx, [ebp+0x14]
	mov [ebp-0x90], ecx
	mov eax, [ebp+0x18]
	mov [ebp-0x10c], eax
	mov [ebp-0x8c], eax
	movzx eax, byte [ebp-0xf1]
	mov [ebp-0xe9], al
	movzx eax, word [ebp-0xf8]
	mov [ebp-0xec], ax
	mov [ebp-0xb8], esi
	mov [ebp-0xb4], ebx
	mov [ebp-0xb0], ecx
	mov eax, [ebp-0x10c]
	mov [ebp-0xac], eax
	test dh, 0x40
	jnz Cvar_Reregister_20
Cvar_Reregister_10:
	and dh, 0x40
	jz Cvar_Reregister_30
	movzx edx, byte [ebp-0xf1]
	cmp [edi+0xa], dl
	jz Cvar_Reregister_30
	mov esi, [ebp+0xc]
	mov [ebp-0x88], esi
	mov ebx, [ebp+0x10]
	mov [ebp-0x84], ebx
	mov ecx, [ebp+0x14]
	mov [ebp-0x80], ecx
	mov eax, [ebp+0x18]
	mov [ebp-0x7c], eax
	movzx edx, dl
	mov [ebp-0x110], edx
	mov edx, [ebp+0x1c]
	mov ecx, [ebp+0x20]
	mov [esp+0x14], edx
	mov [esp+0x18], ecx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov [esp+0x10], eax
	mov eax, [ebp-0xf8]
	mov [esp], eax
	mov ecx, [ebp-0x110]
	mov edx, [ebp-0xf0]
	mov eax, edi
	call Cvar_MakeExplicitType
Cvar_Reregister_30:
	movzx edx, word [ebp-0xf4]
	or [edi+0x8], dx
	mov esi, [ebp+0x24]
	test esi, esi
	jz Cvar_Reregister_40
	mov ecx, [ebp+0x24]
	mov [edi+0x4], ecx
Cvar_Reregister_40:
	cmp byte [edi+0x8], 0x0
	jns Cvar_Reregister_50
	mov eax, [dvar_cheats]
	test eax, eax
	jz Cvar_Reregister_50
	cmp byte [eax+0xc], 0x0
	jz Cvar_Reregister_60
Cvar_Reregister_50:
	test byte [edi+0x8], 0x20
	jz Cvar_Reregister_70
	mov ebx, [edi+0x1c]
	mov [ebp-0xe8], ebx
	mov ecx, [edi+0x20]
	mov [ebp-0xe4], ecx
	mov edx, [edi+0x24]
	mov [ebp-0xe0], edx
	mov eax, [edi+0x28]
	mov [ebp-0xdc], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_SetVariant
Cvar_Reregister_70:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_Reregister_20:
	movzx eax, word [ebp-0xec]
	mov [ebp-0xfc], eax
	test ah, 0x40
	jnz Cvar_Reregister_10
	mov [ebp-0x58], esi
	mov [ebp-0x54], ebx
	mov [ebp-0x50], ecx
	mov edx, [ebp-0x10c]
	mov [ebp-0x4c], edx
	mov [ebp-0xd8], esi
	mov [ebp-0xd4], ebx
	mov [ebp-0xd0], ecx
	mov [ebp-0xcc], edx
	mov [ebp-0xa8], esi
	mov [ebp-0xa4], ebx
	mov [ebp-0xa0], ecx
	mov [ebp-0x9c], edx
	mov [ebp-0xc8], esi
	mov [ebp-0xc4], ebx
	mov [ebp-0xc0], ecx
	mov [ebp-0xbc], edx
	cmp byte [edi+0xa], 0x7
	jz Cvar_Reregister_80
	mov ebx, [edi+0x1c]
	mov [ebp-0x38], ebx
	mov ecx, [edi+0x20]
	mov [ebp-0x34], ecx
	mov edx, [edi+0x24]
	mov [ebp-0x30], edx
	mov eax, [edi+0x28]
	mov [ebp-0x2c], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_ValueToString
	mov [esp], eax
	call CopyStringInternal
	mov [edi+0xc], eax
	mov eax, [edi+0x1c]
	test eax, eax
	jz Cvar_Reregister_90
	cmp eax, [edi+0xc]
	jz Cvar_Reregister_90
	cmp eax, [edi+0x2c]
	jz Cvar_Reregister_90
	mov edx, 0x1
Cvar_Reregister_130:
	test edx, edx
	jnz Cvar_Reregister_100
Cvar_Reregister_160:
	mov eax, [edi+0xc]
	mov [edi+0x1c], eax
	mov eax, [edi+0x2c]
	test eax, eax
	jz Cvar_Reregister_110
	cmp eax, [edi+0xc]
	jz Cvar_Reregister_110
	jz Cvar_Reregister_110
	mov edx, 0x1
Cvar_Reregister_140:
	test edx, edx
	jnz Cvar_Reregister_120
Cvar_Reregister_150:
	mov dword [edi+0x2c], 0x0
	mov dword [ebp-0x28], 0x0
	mov ecx, [edi+0x30]
	mov [ebp-0x24], ecx
	mov edx, [edi+0x34]
	mov [ebp-0x20], edx
	mov eax, [edi+0x38]
	mov [ebp-0x1c], eax
	mov dword [esp], 0x0
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_ValueToString
	mov ecx, eax
	lea edx, [ebp-0xd8]
	mov eax, edi
	call Cvar_AssignResetStringValue
	mov eax, [ebp-0xd8]
	mov [edi+0x2c], eax
	mov byte [edi+0xa], 0x7
Cvar_Reregister_80:
	mov eax, [edi]
	mov [esp], eax
	call FreeStringInternal
	mov ecx, [ebp-0xf0]
	mov [edi], ecx
	and word [edi+0x8], 0xbfff
	mov esi, [ebp-0xc8]
	mov [ebp-0x48], esi
	mov ebx, [ebp-0xc4]
	mov [ebp-0x44], ebx
	mov eax, [ebp-0xc0]
	mov [ebp-0x40], eax
	mov eax, [ebp-0xbc]
	mov [ebp-0x3c], eax
	movzx edx, byte [ebp-0xe9]
	mov [ebp-0x110], edx
	mov edx, [ebp+0x1c]
	mov ecx, [ebp+0x20]
	mov [esp+0x14], edx
	mov [esp+0x18], ecx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov ecx, [ebp-0xc0]
	mov [esp+0xc], ecx
	mov [esp+0x10], eax
	mov eax, [ebp-0xfc]
	mov [esp], eax
	mov ecx, [ebp-0x110]
	mov edx, [ebp-0xf0]
	mov eax, edi
	call Cvar_MakeExplicitType
	movzx edx, word [edi+0x8]
	jmp Cvar_Reregister_10
Cvar_Reregister_60:
	mov ebx, [edi+0x2c]
	mov [ebp-0x78], ebx
	mov ecx, [edi+0x30]
	mov [ebp-0x74], ecx
	mov edx, [edi+0x34]
	mov [ebp-0x70], edx
	mov eax, [edi+0x38]
	mov [ebp-0x6c], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_SetVariant
	mov ebx, [edi+0x2c]
	mov [ebp-0x68], ebx
	mov ecx, [edi+0x30]
	mov [ebp-0x64], ecx
	mov edx, [edi+0x34]
	mov [ebp-0x60], edx
	mov eax, [edi+0x38]
	mov [ebp-0x5c], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_SetLatchedValue
	jmp Cvar_Reregister_50
Cvar_Reregister_90:
	xor edx, edx
	jmp Cvar_Reregister_130
Cvar_Reregister_110:
	xor edx, edx
	jmp Cvar_Reregister_140
Cvar_Reregister_120:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x2c], 0x0
	jmp Cvar_Reregister_150
Cvar_Reregister_100:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x1c], 0x0
	jmp Cvar_Reregister_160
	nop


;Dvar_FindMalleableVar(char const*)
Cvar_FindMalleableVar:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov dword [esp], g_dvarCritSect
	call InterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_FindMalleableVar_10
Cvar_FindMalleableVar_70:
	test edi, edi
	jz Cvar_FindMalleableVar_20
Cvar_FindMalleableVar_100:
	movzx eax, byte [edi]
	test al, al
	jnz Cvar_FindMalleableVar_30
	xor eax, eax
Cvar_FindMalleableVar_90:
	mov ebx, [eax*4+dvarHashTable]
	test ebx, ebx
	jz Cvar_FindMalleableVar_40
Cvar_FindMalleableVar_60:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Cvar_FindMalleableVar_50
	mov ebx, [ebx+0x48]
	test ebx, ebx
	jnz Cvar_FindMalleableVar_60
Cvar_FindMalleableVar_40:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_FindMalleableVar_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz Cvar_FindMalleableVar_70
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_FindMalleableVar_10
	jmp Cvar_FindMalleableVar_70
Cvar_FindMalleableVar_50:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_FindMalleableVar_30:
	xor esi, esi
	mov dword [ebp-0x1c], 0x0
Cvar_FindMalleableVar_80:
	lea ebx, [esi+0x77]
	movsx eax, al
	mov [esp], eax
	call tolower
	imul ebx, eax
	add [ebp-0x1c], ebx
	add esi, 0x1
	movzx eax, byte [edi+esi]
	test al, al
	jnz Cvar_FindMalleableVar_80
	movzx eax, byte [ebp-0x1c]
	jmp Cvar_FindMalleableVar_90
Cvar_FindMalleableVar_20:
	mov dword [esp+0x4], _cstring_null_name_in_gen
	mov dword [esp], 0x2
	call Com_Error
	jmp Cvar_FindMalleableVar_100
	nop


;Dvar_Reset(dvar_s const*, DvarSetSource)
Cvar_Reset:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edi, [eax+0x2c]
	mov [ebp-0x28], edi
	mov esi, [eax+0x30]
	mov [ebp-0x24], esi
	mov ebx, [eax+0x34]
	mov [ebp-0x20], ebx
	mov ecx, [eax+0x38]
	mov [ebp-0x1c], ecx
	mov edx, [ebp+0xc]
	mov [esp+0x10], edx
	mov [esp], edi
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	call Cvar_SetVariant
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_GetInt(char const*)
Cvar_VariableIntegerValue:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov edx, eax
	test eax, eax
	jz Cvar_VariableIntegerValue_10
	movzx eax, byte [eax+0xa]
	sub al, 0x5
	cmp al, 0x1
	jbe Cvar_VariableIntegerValue_20
	mov eax, [edx+0xc]
	mov [ebp+0x8], eax
	leave
	jmp atoi
Cvar_VariableIntegerValue_20:
	mov eax, [edx+0xc]
	leave
	ret
Cvar_VariableIntegerValue_10:
	xor eax, eax
	leave
	ret
	nop


;Dvar_SetInt(dvar_s const*, int)
Cvar_SetInt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, [ebp+0x8]
	movzx eax, byte [esi+0xa]
	sub al, 0x5
	cmp al, 0x1
	jbe Cvar_SetInt_10
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x28], ebx
Cvar_SetInt_20:
	mov [ebp-0x18], ebx
	mov ecx, [ebp-0x24]
	mov [ebp-0x14], ecx
	mov edx, [ebp-0x20]
	mov [ebp-0x10], edx
	mov eax, [ebp-0x1c]
	mov [ebp-0xc], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_SetInt_10:
	mov eax, [ebp+0xc]
	mov [ebp-0x28], eax
	mov ebx, eax
	jmp Cvar_SetInt_20
	add [eax], al


;Dvar_FindVar(char const*)
Cvar_FindVar:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	jmp Cvar_FindMalleableVar


;Dvar_ForEach(void (*)(dvar_s const*, void*), void*)
Cvar_ForEach:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov dword [esp], g_dvarCritSect
	call InterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_ForEach_10
Cvar_ForEach_40:
	cmp byte [areDvarsSorted], 0x0
	jz Cvar_ForEach_20
	mov eax, [dvarCount]
	test eax, eax
	jg Cvar_ForEach_30
Cvar_ForEach_50:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_ForEach_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz Cvar_ForEach_40
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_ForEach_10
	jmp Cvar_ForEach_40
Cvar_ForEach_20:
	call Cvar_Sort
	mov eax, [dvarCount]
	test eax, eax
	jle Cvar_ForEach_50
Cvar_ForEach_30:
	xor esi, esi
	mov ebx, sortedDvars
Cvar_ForEach_60:
	mov [esp+0x4], edi
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x8]
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [dvarCount]
	jl Cvar_ForEach_60
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Dvar_GetBool(char const*)
Cvar_VariableBooleanValue:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	test eax, eax
	jz Cvar_VariableBooleanValue_10
	cmp byte [eax+0xa], 0x0
	jnz Cvar_VariableBooleanValue_20
	movzx eax, byte [eax+0xc]
Cvar_VariableBooleanValue_10:
	leave
	ret
Cvar_VariableBooleanValue_20:
	mov eax, [eax+0xc]
	mov [esp], eax
	call atoi
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;Dvar_SetBool(dvar_s const*, unsigned char)
Cvar_SetBool:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov esi, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	mov edx, eax
	cmp byte [esi+0xa], 0x0
	jnz Cvar_SetBool_10
	mov [ebp-0x28], al
	mov ebx, [ebp-0x28]
Cvar_SetBool_20:
	mov [ebp-0x18], ebx
	mov ecx, [ebp-0x24]
	mov [ebp-0x14], ecx
	mov edx, [ebp-0x20]
	mov [ebp-0x10], edx
	mov eax, [ebp-0x1c]
	mov [ebp-0xc], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_SetBool_10:
	mov eax, _cstring_1
	test dl, dl
	mov edx, _cstring_0
	cmovz eax, edx
	mov [ebp-0x28], eax
	mov ebx, eax
	jmp Cvar_SetBool_20
	nop


;Dvar_SetVec3(dvar_s const*, float, float, float)
Cvar_SetVec3:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xb0
	mov esi, [ebp+0x8]
	movss xmm2, dword [ebp+0xc]
	movss xmm1, dword [ebp+0x10]
	movss xmm0, dword [ebp+0x14]
	cmp byte [esi+0xa], 0x3
	jz Cvar_SetVec3_10
	cvtss2sd xmm0, xmm0
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp+0x14], xmm1
	cvtss2sd xmm2, xmm2
	movsd [esp+0xc], xmm2
	mov dword [esp+0x8], _cstring_g_g_g
	mov dword [esp+0x4], 0x60
	lea ebx, [ebp-0x88]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x28], ebx
Cvar_SetVec3_20:
	mov [ebp-0x18], ebx
	mov ecx, [ebp-0x24]
	mov [ebp-0x14], ecx
	mov edx, [ebp-0x20]
	mov [ebp-0x10], edx
	mov eax, [ebp-0x1c]
	mov [ebp-0xc], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
	add esp, 0xb0
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_SetVec3_10:
	movss [ebp-0x28], xmm2
	movss [ebp-0x24], xmm1
	movss [ebp-0x20], xmm0
	mov ebx, [ebp-0x28]
	jmp Cvar_SetVec3_20
	nop


;Dvar_AddFlags(dvar_s const*, int)
Cvar_AddFlags:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x8]
	or ax, [ebp+0xc]
	mov [edx+0x8], ax
	pop ebp
	ret


;Dvar_GetFloat(char const*)
Cvar_GetFloat:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	test eax, eax
	jz Cvar_GetFloat_10
	cmp byte [eax+0xa], 0x1
	jz Cvar_GetFloat_20
	mov eax, [eax+0xc]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	leave
	ret
Cvar_GetFloat_20:
	fld dword [eax+0xc]
	leave
	ret
Cvar_GetFloat_10:
	fldz
	leave
	ret


;Dvar_SetColor(dvar_s const*, float, float, float, float)
Cvar_SetColor:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cvar_SetColorFromSource
	leave
	ret
	nop


;Dvar_SetFloat(dvar_s const*, float)
Cvar_SetFloat:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	cmp byte [esi+0xa], 0x1
	jz Cvar_SetFloat_10
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x28], ebx
Cvar_SetFloat_20:
	mov [ebp-0x18], ebx
	mov ecx, [ebp-0x24]
	mov [ebp-0x14], ecx
	mov edx, [ebp-0x20]
	mov [ebp-0x10], edx
	mov eax, [ebp-0x1c]
	mov [ebp-0xc], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_SetFloat_10:
	movss [ebp-0x28], xmm0
	mov ebx, [ebp-0x28]
	jmp Cvar_SetFloat_20


;Dvar_Shutdown()
Cvar_Shutdown:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	jmp Cvar_Shutdown_10
Cvar_Shutdown_30:
	mov dword [esp], g_dvarCritSect+0x4
	call InterlockedDecrement
Cvar_Shutdown_20:
	mov dword [esp], 0x0
	call Sys_Sleep
Cvar_Shutdown_10:
	mov eax, [g_dvarCritSect]
	test eax, eax
	jnz Cvar_Shutdown_20
	mov dword [esp], g_dvarCritSect+0x4
	call InterlockedIncrement
	sub eax, 0x1
	jnz Cvar_Shutdown_30
	mov eax, [g_dvarCritSect]
	test eax, eax
	jnz Cvar_Shutdown_30
	mov esi, [dvarCount]
	test esi, esi
	jle Cvar_Shutdown_40
	xor esi, esi
	jmp Cvar_Shutdown_50
Cvar_Shutdown_70:
	add esi, 0x1
	cmp esi, [dvarCount]
	jge Cvar_Shutdown_40
Cvar_Shutdown_50:
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	lea ebx, [eax*4+dvarPool]
	cmp byte [ebx+0xa], 0x7
	jz Cvar_Shutdown_60
Cvar_Shutdown_140:
	test byte [ebx+0x9], 0x40
	jz Cvar_Shutdown_70
	mov eax, [ebx]
	mov [esp], eax
	call FreeStringInternal
	add esi, 0x1
	cmp esi, [dvarCount]
	jl Cvar_Shutdown_50
Cvar_Shutdown_40:
	mov dword [dvarCount], 0x0
	mov dword [dvar_cheats], 0x0
	mov dword [dvar_modifiedFlags], 0x0
	mov byte [isDvarSystemActive], 0x0
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov dword [esp], dvarHashTable
	call memset
	mov dword [esp], g_dvarCritSect+0x4
	call InterlockedDecrement
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_Shutdown_60:
	mov eax, [ebx+0xc]
	test eax, eax
	jz Cvar_Shutdown_80
	cmp eax, [ebx+0x1c]
	jz Cvar_Shutdown_80
	cmp eax, [ebx+0x2c]
	jz Cvar_Shutdown_80
	mov edx, 0x1
	test edx, edx
	jnz Cvar_Shutdown_90
Cvar_Shutdown_150:
	mov dword [ebx+0xc], 0x0
	mov eax, [ebx+0x2c]
	test eax, eax
	jz Cvar_Shutdown_100
Cvar_Shutdown_160:
	cmp eax, [ebx+0x1c]
	jz Cvar_Shutdown_100
	mov edx, 0x1
	test edx, edx
	jnz Cvar_Shutdown_110
Cvar_Shutdown_170:
	mov dword [ebx+0x2c], 0x0
	mov eax, [ebx+0x1c]
	test eax, eax
	jz Cvar_Shutdown_120
Cvar_Shutdown_180:
	cmp eax, [ebx+0xc]
	jz Cvar_Shutdown_120
	mov edx, 0x1
	test edx, edx
	jnz Cvar_Shutdown_130
Cvar_Shutdown_190:
	mov dword [ebx+0x1c], 0x0
	jmp Cvar_Shutdown_140
Cvar_Shutdown_80:
	xor edx, edx
	test edx, edx
	jz Cvar_Shutdown_150
Cvar_Shutdown_90:
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0xc], 0x0
	mov eax, [ebx+0x2c]
	test eax, eax
	jnz Cvar_Shutdown_160
Cvar_Shutdown_100:
	xor edx, edx
	test edx, edx
	jz Cvar_Shutdown_170
Cvar_Shutdown_110:
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x2c], 0x0
	mov eax, [ebx+0x1c]
	test eax, eax
	jnz Cvar_Shutdown_180
Cvar_Shutdown_120:
	xor edx, edx
	test edx, edx
	jz Cvar_Shutdown_190
Cvar_Shutdown_130:
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx+0x1c], 0x0
	jmp Cvar_Shutdown_190
	nop


;Dvar_GetString(char const*)
Cvar_VariableString:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	test eax, eax
	jz Cvar_VariableString_10
	cmp byte [eax+0xa], 0x6
	jz Cvar_VariableString_20
	mov eax, [eax+0xc]
	leave
	ret
Cvar_VariableString_20:
	mov edx, [eax+0x3c]
	test edx, edx
	jz Cvar_VariableString_10
	mov edx, [eax+0xc]
	mov eax, [eax+0x40]
	mov eax, [eax+edx*4]
	leave
	ret
Cvar_VariableString_10:
	mov eax, _cstring_null
	leave
	ret


;Dvar_SetString(dvar_s const*, char const*)
Cvar_SetString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov eax, [ebp+0x8]
	cmp byte [eax+0xa], 0x7
	jz Cvar_SetString_10
	add eax, 0x3c
	mov [ebp-0x43c], eax
	mov edx, [ebp+0x8]
	mov esi, [edx+0x3c]
	test esi, esi
	jg Cvar_SetString_20
Cvar_SetString_100:
	mov eax, [ebp+0xc]
	movzx ecx, byte [eax]
	test cl, cl
	jnz Cvar_SetString_30
	xor ebx, ebx
Cvar_SetString_150:
	cmp esi, ebx
	jg Cvar_SetString_40
Cvar_SetString_140:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0xc]
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	mov edx, [ebp-0x43c]
	mov ebx, [edx]
	test ebx, ebx
	jg Cvar_SetString_50
Cvar_SetString_60:
	mov ebx, 0xfffffac7
Cvar_SetString_40:
	mov [ebp-0x38], ebx
Cvar_SetString_130:
	mov [ebp-0x28], ebx
	mov ecx, [ebp-0x34]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x30]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x1c], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	call Cvar_SetVariant
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetString_30:
	lea eax, [ecx-0x30]
	cmp al, 0x9
	ja Cvar_SetString_60
	mov edi, [ebp+0xc]
	xor ebx, ebx
Cvar_SetString_80:
	lea edx, [ebx+ebx*4]
	movsx eax, cl
	lea ebx, [eax+edx*2-0x30]
	movzx ecx, byte [edi+0x1]
	test cl, cl
	jz Cvar_SetString_70
	add edi, 0x1
	lea eax, [ecx-0x30]
	cmp al, 0x9
	jbe Cvar_SetString_80
	mov ebx, 0xfffffac7
	jmp Cvar_SetString_40
Cvar_SetString_20:
	xor ebx, ebx
	mov edx, [ebp-0x43c]
	jmp Cvar_SetString_90
Cvar_SetString_110:
	add ebx, 0x1
	mov edx, [ebp-0x43c]
	mov esi, [edx]
	cmp ebx, esi
	jge Cvar_SetString_100
Cvar_SetString_90:
	mov eax, [edx+0x4]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Cvar_SetString_110
	jmp Cvar_SetString_40
Cvar_SetString_50:
	xor ebx, ebx
Cvar_SetString_120:
	mov [esp+0x8], esi
	mov edx, [ebp-0x43c]
	mov eax, [edx+0x4]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jz Cvar_SetString_40
	add ebx, 0x1
	mov edx, [ebp-0x43c]
	cmp ebx, [edx]
	jl Cvar_SetString_120
	mov ebx, 0xfffffac7
	jmp Cvar_SetString_40
Cvar_SetString_10:
	mov dword [esp+0x8], 0x400
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea ebx, [ebp-0x438]
	mov [esp], ebx
	call Q_strncpyz
	mov [ebp-0x38], ebx
	jmp Cvar_SetString_130
Cvar_SetString_70:
	test ebx, ebx
	js Cvar_SetString_140
	jmp Cvar_SetString_150
	nop


;Dvar_GetAtIndex(int)
Cvar_GetAtIndex:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	lea eax, [eax*4+dvarPool]
	pop ebp
	ret
	nop


;Dvar_ResetDvars(unsigned int, DvarSetSource)
Cvar_ResetDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], g_dvarCritSect
	call InterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_ResetDvars_10
Cvar_ResetDvars_50:
	mov edi, [dvarCount]
	test edi, edi
	jle Cvar_ResetDvars_20
	xor edi, edi
	mov esi, dvarPool
	jmp Cvar_ResetDvars_30
Cvar_ResetDvars_40:
	add edi, 0x1
	add esi, 0x4c
	cmp edi, [dvarCount]
	jge Cvar_ResetDvars_20
Cvar_ResetDvars_30:
	movzx eax, word [esi+0x8]
	test [ebp+0x8], eax
	jz Cvar_ResetDvars_40
	mov ebx, [esi+0x2c]
	mov [ebp-0x28], ebx
	mov ecx, [esi+0x30]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x34]
	mov [ebp-0x20], edx
	mov eax, [esi+0x38]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov eax, [esi+0x38]
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
	add edi, 0x1
	add esi, 0x4c
	cmp edi, [dvarCount]
	jl Cvar_ResetDvars_30
Cvar_ResetDvars_20:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_ResetDvars_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz Cvar_ResetDvars_50
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_ResetDvars_10
	jmp Cvar_ResetDvars_50
	nop


;Dvar_SetCommand(char const*, char const*)
Cvar_SetCommand:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_SetCommand_10
	mov ecx, 0x1
	mov edx, ebx
	call Cvar_SetFromStringFromSource
Cvar_SetCommand_60:
	test esi, esi
	jz Cvar_SetCommand_20
Cvar_SetCommand_50:
	cmp byte [isLoadingAutoExecGlobalFlag], 0x0
	jnz Cvar_SetCommand_30
Cvar_SetCommand_20:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetCommand_30:
	or word [esi+0x8], 0x8000
	mov ebx, [esi+0xc]
	mov [ebp-0x80], ebx
	mov ecx, [esi+0x10]
	mov [ebp-0x7c], ecx
	mov edx, [esi+0x14]
	mov [ebp-0x78], edx
	mov eax, [esi+0x18]
	mov [ebp-0x74], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_UpdateResetValue
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetCommand_10:
	mov [ebp-0x60], ebx
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [ebp-0x90], eax
	mov [ebp-0x8c], edx
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x5c]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x58]
	mov [ebp-0x38], edx
	mov eax, [ebp-0x54]
	mov [ebp-0x34], eax
	mov [ebp-0x70], ebx
	mov [ebp-0x6c], ecx
	mov [ebp-0x68], edx
	mov [ebp-0x64], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_SetCommand_40
	mov ebx, [ebp-0x70]
	mov [ebp-0x30], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x2c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x28], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x24], eax
	mov dword [esp+0x1c], _cstring_external_dvar
	mov eax, [ebp-0x90]
	mov edx, [ebp-0x8c]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x68]
	mov [esp+0xc], edx
	mov ebx, [ebp-0x64]
	mov [esp+0x10], ebx
	mov dword [esp], 0x4000
	mov ecx, 0x7
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	jmp Cvar_SetCommand_50
Cvar_SetCommand_40:
	mov esi, [ebp-0x70]
	mov [ebp-0x50], esi
	mov ecx, [ebp-0x6c]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x48], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x44], eax
	mov dword [esp+0x18], _cstring_external_dvar
	mov ebx, [ebp-0x90]
	mov esi, [ebp-0x8c]
	mov [esp+0x10], ebx
	mov [esp+0x14], esi
	mov esi, [ebp-0x70]
	mov [esp], esi
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov ecx, 0x4000
	mov edx, 0x7
	mov eax, edi
	call Cvar_RegisterNew
	mov esi, eax
	jmp Cvar_SetCommand_60
	nop


;Dvar_ForEachName(void (*)(char const*))
Cvar_ForEachName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov dword [esp], g_dvarCritSect
	call InterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_ForEachName_10
Cvar_ForEachName_40:
	cmp byte [areDvarsSorted], 0x0
	jz Cvar_ForEachName_20
	mov eax, [dvarCount]
	test eax, eax
	jg Cvar_ForEachName_30
Cvar_ForEachName_50:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_ForEachName_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz Cvar_ForEachName_40
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_ForEachName_10
	jmp Cvar_ForEachName_40
Cvar_ForEachName_20:
	call Cvar_Sort
	mov eax, [dvarCount]
	test eax, eax
	jle Cvar_ForEachName_50
Cvar_ForEachName_30:
	xor esi, esi
	mov ebx, sortedDvars
Cvar_ForEachName_60:
	mov eax, [ebx]
	mov eax, [eax]
	mov [esp], eax
	call edi
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [dvarCount]
	jl Cvar_ForEachName_60
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_IsValidName(char const*)
Cvar_IsValidName:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	test eax, eax
	jz Cvar_IsValidName_10
	movzx ebx, byte [eax]
	test bl, bl
	jnz Cvar_IsValidName_20
Cvar_IsValidName_50:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_IsValidName_20:
	mov esi, eax
Cvar_IsValidName_40:
	movsx eax, bl
	mov [esp], eax
	call isalnum
	test eax, eax
	jnz Cvar_IsValidName_30
	cmp bl, 0x5f
	jnz Cvar_IsValidName_10
Cvar_IsValidName_30:
	movzx ebx, byte [esi+0x1]
	add esi, 0x1
	test bl, bl
	jnz Cvar_IsValidName_40
	jmp Cvar_IsValidName_50
Cvar_IsValidName_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_PrintDomain(unsigned char, DvarLimits)
Cvar_PrintDomain:
	push ebp
	mov ebp, esp
	sub esp, 0x418
	movzx eax, byte [ebp+0x8]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x408]
	mov [esp], edx
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	call Cvar_DomainToString_Internal
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x10
	call Com_Printf
	leave
	ret
	nop


;Dvar_RegisterInt(char const*, int, int, int, unsigned short, char const*)
Cvar_RegisterInt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x58], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x78], edx
	mov ecx, [ebp+0x14]
	mov [ebp-0x74], ecx
	mov [ebp-0x48], eax
	mov ebx, [ebp-0x54]
	mov [ebp-0x44], ebx
	mov ecx, [ebp-0x50]
	mov [ebp-0x40], ecx
	mov edx, [ebp-0x4c]
	mov [ebp-0x3c], edx
	movzx esi, word [ebp+0x18]
	mov [ebp-0x6a], si
	mov [ebp-0x68], eax
	mov [ebp-0x64], ebx
	mov [ebp-0x60], ecx
	mov [ebp-0x5c], edx
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_RegisterInt_10
	mov ebx, [ebp-0x68]
	mov [ebp-0x38], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0x34], ecx
	mov eax, [ebp-0x60]
	mov [ebp-0x30], eax
	mov edx, [ebp-0x5c]
	mov [ebp-0x2c], edx
	mov eax, [ebp+0x1c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x5c]
	mov [esp+0x10], ecx
	movzx eax, word [ebp-0x6a]
	mov [esp], eax
	mov ecx, 0x5
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov eax, esi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterInt_10:
	mov esi, [ebp-0x68]
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x64]
	mov [ebp-0x24], ebx
	mov eax, [ebp-0x60]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x1c], eax
	movzx edx, word [ebp-0x6a]
	mov [ebp-0x7c], edx
	mov ecx, [ebp+0x1c]
	mov [esp+0x18], ecx
	mov edx, [ebp-0x78]
	mov ecx, [ebp-0x74]
	mov [esp+0x10], edx
	mov [esp+0x14], ecx
	mov [esp], esi
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x60]
	mov [esp+0x8], ecx
	mov [esp+0xc], eax
	mov ecx, [ebp-0x7c]
	mov edx, 0x5
	mov eax, edi
	call Cvar_RegisterNew
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Dvar_SetModified(dvar_s const*)
Cvar_SetModified:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0xb], 0x1
	pop ebp
	ret


;Dvar_EnumToString(dvar_s const*)
Cvar_EnumToString:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x3c]
	test edx, edx
	jz Cvar_EnumToString_10
	mov edx, [eax+0xc]
	mov eax, [eax+0x40]
	mov eax, [eax+edx*4]
	pop ebp
	ret
Cvar_EnumToString_10:
	mov eax, _cstring_null
	pop ebp
	ret
	nop


;Dvar_RegisterBool(char const*, unsigned char, unsigned short, char const*)
Cvar_RegisterBool:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x60], al
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [ebp-0x88], eax
	mov [ebp-0x84], edx
	mov ebx, [ebp-0x60]
	mov [ebp-0x50], ebx
	mov ecx, [ebp-0x5c]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0x58]
	mov [ebp-0x48], edx
	mov eax, [ebp-0x54]
	mov [ebp-0x44], eax
	movzx esi, word [ebp+0x10]
	mov [ebp-0x7a], si
	mov [ebp-0x70], ebx
	mov [ebp-0x6c], ecx
	mov [ebp-0x68], edx
	mov [ebp-0x64], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_RegisterBool_10
	mov ebx, [ebp-0x70]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x3c], ecx
	mov eax, [ebp-0x68]
	mov [ebp-0x38], eax
	mov edx, [ebp-0x64]
	mov [ebp-0x34], edx
	mov eax, [ebp+0x14]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x88]
	mov edx, [ebp-0x84]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x68]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x64]
	mov [esp+0x10], ecx
	movzx eax, word [ebp-0x7a]
	mov [esp], eax
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterBool_10:
	mov esi, [ebp-0x70]
	mov [ebp-0x30], esi
	mov ebx, [ebp-0x6c]
	mov [ebp-0x2c], ebx
	mov eax, [ebp-0x68]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x24], eax
	movzx edx, word [ebp-0x7a]
	mov [ebp-0x8c], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x18], ecx
	mov edx, [ebp-0x88]
	mov ecx, [ebp-0x84]
	mov [esp+0x10], edx
	mov [esp+0x14], ecx
	mov [esp], esi
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x68]
	mov [esp+0x8], ecx
	mov [esp+0xc], eax
	mov ecx, [ebp-0x8c]
	xor edx, edx
	mov eax, edi
	call Cvar_RegisterNew
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_RegisterEnum(char const*, char const**, int, unsigned short, char const*)
Cvar_RegisterEnum:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov edx, [ebp+0xc]
	movzx esi, word [ebp+0x14]
	mov eax, [ebp+0x10]
	mov [ebp-0x58], eax
	mov [ebp-0x74], edx
	mov dword [ebp-0x78], 0x0
	mov ebx, [edx]
	test ebx, ebx
	jz Cvar_RegisterEnum_10
	xor eax, eax
Cvar_RegisterEnum_20:
	add eax, 0x1
	mov ecx, [edx+eax*4]
	test ecx, ecx
	jnz Cvar_RegisterEnum_20
	mov [ebp-0x78], eax
	mov ebx, [ebp-0x58]
Cvar_RegisterEnum_40:
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	mov [ebp-0x6a], si
	mov [ebp-0x68], ebx
	mov [ebp-0x64], ecx
	mov [ebp-0x60], edx
	mov [ebp-0x5c], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_RegisterEnum_30
	mov ebx, [ebp-0x68]
	mov [ebp-0x38], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0x34], ecx
	mov eax, [ebp-0x60]
	mov [ebp-0x30], eax
	mov edx, [ebp-0x5c]
	mov [ebp-0x2c], edx
	mov eax, [ebp+0x18]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x5c]
	mov [esp+0x10], ecx
	movzx eax, word [ebp-0x6a]
	mov [esp], eax
	mov ecx, 0x6
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov eax, esi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterEnum_10:
	mov ebx, eax
	jmp Cvar_RegisterEnum_40
Cvar_RegisterEnum_30:
	mov esi, [ebp-0x68]
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x64]
	mov [ebp-0x24], ebx
	mov eax, [ebp-0x60]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x1c], eax
	movzx edx, word [ebp-0x6a]
	mov [ebp-0x7c], edx
	mov ecx, [ebp+0x18]
	mov [esp+0x18], ecx
	mov edx, [ebp-0x78]
	mov ecx, [ebp-0x74]
	mov [esp+0x10], edx
	mov [esp+0x14], ecx
	mov [esp], esi
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x60]
	mov [esp+0x8], ecx
	mov [esp+0xc], eax
	mov ecx, [ebp-0x7c]
	mov edx, 0x6
	mov eax, edi
	call Cvar_RegisterNew
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Dvar_RegisterVec2(char const*, float, float, float, float, unsigned short, char const*)
Cvar_RegisterVec2:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x20]
	mov [ebp-0x7c], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x58], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x54], eax
	fld dword [ebp+0x14]
	fstp dword [ebp-0x78]
	fld dword [ebp+0x18]
	fstp dword [ebp-0x74]
	mov ebx, [ebp-0x58]
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	movzx esi, word [ebp+0x1c]
	mov [ebp-0x6a], si
	mov [ebp-0x68], ebx
	mov [ebp-0x64], ecx
	mov [ebp-0x60], edx
	mov [ebp-0x5c], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_RegisterVec2_10
	mov ebx, [ebp-0x68]
	mov [ebp-0x38], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0x34], ecx
	mov eax, [ebp-0x60]
	mov [ebp-0x30], eax
	mov edx, [ebp-0x5c]
	mov [ebp-0x2c], edx
	mov eax, [ebp-0x7c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x5c]
	mov [esp+0x10], ecx
	movzx eax, word [ebp-0x6a]
	mov [esp], eax
	mov ecx, 0x2
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterVec2_10:
	mov esi, [ebp-0x68]
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x64]
	mov [ebp-0x24], ebx
	mov eax, [ebp-0x60]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x1c], eax
	movzx edx, word [ebp-0x6a]
	mov [ebp-0x8c], edx
	mov ecx, [ebp-0x7c]
	mov [ebp+0x20], ecx
	mov edx, [ebp-0x78]
	mov ecx, [ebp-0x74]
	mov [ebp+0x18], edx
	mov [ebp+0x1c], ecx
	mov [ebp+0x8], esi
	mov [ebp+0xc], ebx
	mov ecx, [ebp-0x60]
	mov [ebp+0x10], ecx
	mov [ebp+0x14], eax
	mov ecx, [ebp-0x8c]
	mov edx, 0x2
	mov eax, edi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Cvar_RegisterNew


;Dvar_RegisterVec3(char const*, float, float, float, float, float, unsigned short, char const*)
Cvar_RegisterVec3:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x24]
	mov [ebp-0x7c], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x58], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x54], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x50], eax
	fld dword [ebp+0x18]
	fstp dword [ebp-0x78]
	fld dword [ebp+0x1c]
	fstp dword [ebp-0x74]
	mov ebx, [ebp-0x58]
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	movzx esi, word [ebp+0x20]
	mov [ebp-0x6a], si
	mov [ebp-0x68], ebx
	mov [ebp-0x64], ecx
	mov [ebp-0x60], edx
	mov [ebp-0x5c], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_RegisterVec3_10
	mov ebx, [ebp-0x68]
	mov [ebp-0x38], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0x34], ecx
	mov eax, [ebp-0x60]
	mov [ebp-0x30], eax
	mov edx, [ebp-0x5c]
	mov [ebp-0x2c], edx
	mov eax, [ebp-0x7c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x5c]
	mov [esp+0x10], ecx
	movzx eax, word [ebp-0x6a]
	mov [esp], eax
	mov ecx, 0x3
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterVec3_10:
	mov esi, [ebp-0x68]
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x64]
	mov [ebp-0x24], ebx
	mov eax, [ebp-0x60]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x1c], eax
	movzx edx, word [ebp-0x6a]
	mov [ebp-0x8c], edx
	mov ecx, [ebp-0x7c]
	mov [ebp+0x20], ecx
	mov edx, [ebp-0x78]
	mov ecx, [ebp-0x74]
	mov [ebp+0x18], edx
	mov [ebp+0x1c], ecx
	mov [ebp+0x8], esi
	mov [ebp+0xc], ebx
	mov ecx, [ebp-0x60]
	mov [ebp+0x10], ecx
	mov [ebp+0x14], eax
	mov ecx, [ebp-0x8c]
	mov edx, 0x3
	mov eax, edi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Cvar_RegisterNew


;Dvar_RegisterVec4(char const*, float, float, float, float, float, float, unsigned short, char const*)
Cvar_RegisterVec4:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x28]
	mov [ebp-0x7c], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x58], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x54], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x50], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x4c], eax
	fld dword [ebp+0x1c]
	fstp dword [ebp-0x78]
	fld dword [ebp+0x20]
	fstp dword [ebp-0x74]
	mov ebx, [ebp-0x58]
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	movzx esi, word [ebp+0x24]
	mov [ebp-0x6a], si
	mov [ebp-0x68], ebx
	mov [ebp-0x64], ecx
	mov [ebp-0x60], edx
	mov [ebp-0x5c], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_RegisterVec4_10
	mov ebx, [ebp-0x68]
	mov [ebp-0x38], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0x34], ecx
	mov eax, [ebp-0x60]
	mov [ebp-0x30], eax
	mov edx, [ebp-0x5c]
	mov [ebp-0x2c], edx
	mov eax, [ebp-0x7c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x5c]
	mov [esp+0x10], ecx
	movzx eax, word [ebp-0x6a]
	mov [esp], eax
	mov ecx, 0x4
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterVec4_10:
	mov esi, [ebp-0x68]
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x64]
	mov [ebp-0x24], ebx
	mov eax, [ebp-0x60]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x1c], eax
	movzx edx, word [ebp-0x6a]
	mov [ebp-0x8c], edx
	mov ecx, [ebp-0x7c]
	mov [ebp+0x20], ecx
	mov edx, [ebp-0x78]
	mov ecx, [ebp-0x74]
	mov [ebp+0x18], edx
	mov [ebp+0x1c], ecx
	mov [ebp+0x8], esi
	mov [ebp+0xc], ebx
	mov ecx, [ebp-0x60]
	mov [ebp+0x10], ecx
	mov [ebp+0x14], eax
	mov ecx, [ebp-0x8c]
	mov edx, 0x4
	mov eax, edi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Cvar_RegisterNew


;Dvar_SetIntByName(char const*, int)
Cvar_SetIntByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_SetIntByName_10
	movzx eax, byte [eax+0xa]
	sub al, 0x5
	cmp al, 0x1
	jbe Cvar_SetIntByName_20
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x58], ebx
Cvar_SetIntByName_30:
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
Cvar_SetIntByName_50:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetIntByName_20:
	mov eax, [ebp+0xc]
	mov [ebp-0x58], eax
	mov ebx, eax
	jmp Cvar_SetIntByName_30
Cvar_SetIntByName_10:
	mov esi, [ebp+0xc]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0xb8]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x98], ebx
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x54]
	mov [ebp-0xc0], eax
	mov [ebp-0xbc], edx
	mov [ebp-0x38], ebx
	mov ecx, [ebp-0x94]
	mov [ebp-0x34], ecx
	mov edx, [ebp-0x90]
	mov [ebp-0x30], edx
	mov eax, [ebp-0x8c]
	mov [ebp-0x2c], eax
	mov [ebp-0x68], ebx
	mov [ebp-0x64], ecx
	mov [ebp-0x60], edx
	mov [ebp-0x5c], eax
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov [ebp-0xcc], eax
	test eax, eax
	jz Cvar_SetIntByName_40
	mov ebx, [ebp-0x68]
	mov [ebp-0x28], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x60]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x5c]
	mov [ebp-0x1c], eax
	mov dword [esp+0x1c], _cstring_external_dvar
	mov esi, [ebp-0xc0]
	mov edi, [ebp-0xbc]
	mov [esp+0x14], esi
	mov [esp+0x18], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov [esp+0x10], eax
	mov dword [esp], 0x4000
	mov ecx, 0x7
	mov edx, [ebp+0x8]
	mov eax, [ebp-0xcc]
	call Cvar_Reregister
	jmp Cvar_SetIntByName_50
Cvar_SetIntByName_40:
	mov ebx, [ebp-0x68]
	mov [ebp-0x78], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0x74], ecx
	mov edx, [ebp-0x60]
	mov [ebp-0x70], edx
	mov eax, [ebp-0x5c]
	mov [ebp-0x6c], eax
	mov dword [esp+0x18], _cstring_external_dvar
	mov esi, [ebp-0xc0]
	mov edi, [ebp-0xbc]
	mov [esp+0x10], esi
	mov [esp+0x14], edi
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov ecx, 0x4000
	mov edx, 0x7
	mov eax, [ebp+0x8]
	call Cvar_RegisterNew
	jmp Cvar_SetIntByName_50


;Dvar_ClearModified(dvar_s const*)
Cvar_ClearModified:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0xb], 0x0
	pop ebp
	ret


;Dvar_RegisterColor(char const*, float, float, float, float, unsigned short, char const*)
Cvar_RegisterColor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	movss xmm2, dword [ebp+0xc]
	movss xmm3, dword [ebp+0x10]
	movzx esi, word [ebp+0x1c]
	movaps xmm0, xmm2
	subss xmm0, [_float_1_00000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb Cvar_RegisterColor_10
	movss xmm2, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm1
	jb Cvar_RegisterColor_20
Cvar_RegisterColor_100:
	movaps xmm0, xmm1
Cvar_RegisterColor_110:
	addss xmm0, [_float_0_00100000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0xa8], xmm1
	movss [ebp-0xb8], xmm3
	call floorf
	fstp dword [ebp-0x84]
	cvttss2si eax, [ebp-0x84]
	mov [ebp-0x60], al
	movss xmm3, dword [ebp-0xb8]
	movaps xmm0, xmm3
	subss xmm0, [_float_1_00000000]
	movss xmm1, dword [ebp-0xa8]
	ucomiss xmm0, xmm1
	jb Cvar_RegisterColor_30
	movss xmm3, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
Cvar_RegisterColor_170:
	ucomiss xmm0, xmm1
	jb Cvar_RegisterColor_40
	movaps xmm0, xmm1
Cvar_RegisterColor_160:
	addss xmm0, [_float_0_00100000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0xa8], xmm1
	call floorf
	fstp dword [ebp-0x88]
	cvttss2si eax, [ebp-0x88]
	mov [ebp-0x5f], al
	movss xmm0, dword [ebp+0x14]
	subss xmm0, [_float_1_00000000]
	movss xmm1, dword [ebp-0xa8]
	ucomiss xmm0, xmm1
	jb Cvar_RegisterColor_50
	mov dword [ebp+0x14], 0x3f800000
	movss xmm0, dword [_float__1_00000000]
Cvar_RegisterColor_150:
	ucomiss xmm0, xmm1
	jb Cvar_RegisterColor_60
	movaps xmm0, xmm1
Cvar_RegisterColor_140:
	addss xmm0, [_float_0_00100000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0xa8], xmm1
	call floorf
	fstp dword [ebp-0x8c]
	cvttss2si eax, [ebp-0x8c]
	mov [ebp-0x5e], al
	movss xmm0, dword [ebp+0x18]
	subss xmm0, [_float_1_00000000]
	movss xmm1, dword [ebp-0xa8]
	ucomiss xmm0, xmm1
	jb Cvar_RegisterColor_70
	mov dword [ebp+0x18], 0x3f800000
	movss xmm0, dword [_float__1_00000000]
Cvar_RegisterColor_130:
	ucomiss xmm0, xmm1
	jb Cvar_RegisterColor_80
	movaps xmm0, xmm1
Cvar_RegisterColor_120:
	addss xmm0, [_float_0_00100000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x90]
	cvttss2si eax, [ebp-0x90]
	mov [ebp-0x5d], al
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [ebp-0x80], eax
	mov [ebp-0x7c], edx
	mov ebx, [ebp-0x60]
	mov [ebp-0x50], ebx
	mov ecx, [ebp-0x5c]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0x58]
	mov [ebp-0x48], edx
	mov eax, [ebp-0x54]
	mov [ebp-0x44], eax
	mov [ebp-0xbe], si
	mov [ebp-0x70], ebx
	mov [ebp-0x6c], ecx
	mov [ebp-0x68], edx
	mov [ebp-0x64], eax
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov [ebp-0xbc], eax
	test eax, eax
	jz Cvar_RegisterColor_90
	mov ebx, [ebp-0x70]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x38], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x34], eax
	mov esi, [ebp+0x20]
	mov [esp+0x1c], esi
	mov esi, [ebp-0x80]
	mov edi, [ebp-0x7c]
	mov [esp+0x14], esi
	mov [esp+0x18], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov [esp+0x10], eax
	movzx eax, word [ebp-0xbe]
	mov [esp], eax
	mov ecx, 0x8
	mov edx, [ebp+0x8]
	mov eax, [ebp-0xbc]
	call Cvar_Reregister
	mov eax, [ebp-0xbc]
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterColor_10:
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	jae Cvar_RegisterColor_100
Cvar_RegisterColor_20:
	movaps xmm0, xmm2
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_RegisterColor_110
Cvar_RegisterColor_80:
	movss xmm0, dword [ebp+0x18]
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_RegisterColor_120
Cvar_RegisterColor_70:
	movaps xmm0, xmm1
	subss xmm0, [ebp+0x18]
	jmp Cvar_RegisterColor_130
Cvar_RegisterColor_60:
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_RegisterColor_140
Cvar_RegisterColor_50:
	movaps xmm0, xmm1
	subss xmm0, [ebp+0x14]
	jmp Cvar_RegisterColor_150
Cvar_RegisterColor_40:
	movaps xmm0, xmm3
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_RegisterColor_160
Cvar_RegisterColor_30:
	movaps xmm0, xmm1
	subss xmm0, xmm3
	jmp Cvar_RegisterColor_170
Cvar_RegisterColor_90:
	mov edi, [ebp-0x70]
	mov [ebp-0x30], edi
	mov ebx, [ebp-0x6c]
	mov [ebp-0x2c], ebx
	mov edx, [ebp-0x68]
	mov [ebp-0x28], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x24], eax
	movzx ecx, word [ebp-0xbe]
	mov esi, [ebp+0x20]
	mov [esp+0x18], esi
	mov esi, [ebp-0x80]
	mov edi, [ebp-0x7c]
	mov [esp+0x10], esi
	mov [esp+0x14], edi
	mov edi, [ebp-0x70]
	mov [esp], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov edx, 0x8
	mov eax, [ebp+0x8]
	call Cvar_RegisterNew
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Dvar_RegisterFloat(char const*, float, float, float, unsigned short, char const*)
Cvar_RegisterFloat:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x58], eax
	fld dword [ebp+0x10]
	fstp dword [ebp-0x78]
	fld dword [ebp+0x14]
	fstp dword [ebp-0x74]
	mov ebx, [ebp-0x58]
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	movzx esi, word [ebp+0x18]
	mov [ebp-0x6a], si
	mov [ebp-0x68], ebx
	mov [ebp-0x64], ecx
	mov [ebp-0x60], edx
	mov [ebp-0x5c], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_RegisterFloat_10
	mov ebx, [ebp-0x68]
	mov [ebp-0x38], ebx
	mov ecx, [ebp-0x64]
	mov [ebp-0x34], ecx
	mov eax, [ebp-0x60]
	mov [ebp-0x30], eax
	mov edx, [ebp-0x5c]
	mov [ebp-0x2c], edx
	mov eax, [ebp+0x1c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x5c]
	mov [esp+0x10], ecx
	movzx eax, word [ebp-0x6a]
	mov [esp], eax
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov eax, esi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterFloat_10:
	mov esi, [ebp-0x68]
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x64]
	mov [ebp-0x24], ebx
	mov eax, [ebp-0x60]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x1c], eax
	movzx edx, word [ebp-0x6a]
	mov [ebp-0x7c], edx
	mov ecx, [ebp+0x1c]
	mov [esp+0x18], ecx
	mov edx, [ebp-0x78]
	mov ecx, [ebp-0x74]
	mov [esp+0x10], edx
	mov [esp+0x14], ecx
	mov [esp], esi
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x60]
	mov [esp+0x8], ecx
	mov [esp+0xc], eax
	mov ecx, [ebp-0x7c]
	mov edx, 0x1
	mov eax, edi
	call Cvar_RegisterNew
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_SetBoolByName(char const*, unsigned char)
Cvar_SetBoolByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	movzx ebx, byte [ebp+0xc]
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_SetBoolByName_10
	movzx eax, bl
	mov edx, eax
	cmp byte [esi+0xa], 0x0
	jnz Cvar_SetBoolByName_20
	mov [ebp-0x58], al
	mov ebx, [ebp-0x58]
Cvar_SetBoolByName_30:
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
Cvar_SetBoolByName_50:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetBoolByName_20:
	mov eax, _cstring_1
	test dl, dl
	mov edx, _cstring_0
	cmovz eax, edx
	mov [ebp-0x58], eax
	mov ebx, eax
	jmp Cvar_SetBoolByName_30
Cvar_SetBoolByName_10:
	mov edx, _cstring_1
	test bl, bl
	mov eax, _cstring_0
	cmovz edx, eax
	mov [ebp-0x68], edx
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov ecx, [ebp-0x58]
	mov ebx, [ebp-0x54]
	mov [ebp-0x90], ecx
	mov [ebp-0x8c], ebx
	mov [ebp-0x38], edx
	mov ebx, [ebp-0x64]
	mov [ebp-0x34], ebx
	mov ecx, [ebp-0x60]
	mov [ebp-0x30], ecx
	mov eax, [ebp-0x5c]
	mov [ebp-0x2c], eax
	mov [ebp-0x88], edx
	mov [ebp-0x84], ebx
	mov [ebp-0x80], ecx
	mov [ebp-0x7c], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_SetBoolByName_40
	mov ebx, [ebp-0x88]
	mov [ebp-0x28], ebx
	mov ecx, [ebp-0x84]
	mov [ebp-0x24], ecx
	mov eax, [ebp-0x80]
	mov [ebp-0x20], eax
	mov edx, [ebp-0x7c]
	mov [ebp-0x1c], edx
	mov dword [esp+0x1c], _cstring_external_dvar
	mov eax, [ebp-0x90]
	mov edx, [ebp-0x8c]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x80]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x7c]
	mov [esp+0x10], ecx
	mov dword [esp], 0x4000
	mov ecx, 0x7
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetBoolByName_40:
	mov ebx, [ebp-0x88]
	mov [ebp-0x78], ebx
	mov ecx, [ebp-0x84]
	mov [ebp-0x74], ecx
	mov edx, [ebp-0x80]
	mov [ebp-0x70], edx
	mov eax, [ebp-0x7c]
	mov [ebp-0x6c], eax
	mov dword [esp+0x18], _cstring_external_dvar
	mov ebx, [ebp-0x90]
	mov esi, [ebp-0x8c]
	mov [esp+0x10], ebx
	mov [esp+0x14], esi
	mov esi, [ebp-0x88]
	mov [esp], esi
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov ecx, 0x4000
	mov edx, 0x7
	mov eax, edi
	call Cvar_RegisterNew
	jmp Cvar_SetBoolByName_50


;Dvar_SetCheatState()
Cvar_SetCheatState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], g_dvarCritSect
	call InterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_SetCheatState_10
Cvar_SetCheatState_50:
	mov eax, [dvarCount]
	test eax, eax
	jle Cvar_SetCheatState_20
	xor edi, edi
	mov esi, dvarPool
	jmp Cvar_SetCheatState_30
Cvar_SetCheatState_40:
	add edi, 0x1
	add esi, 0x4c
	cmp edi, [dvarCount]
	jge Cvar_SetCheatState_20
Cvar_SetCheatState_30:
	cmp byte [esi+0x8], 0x0
	jns Cvar_SetCheatState_40
	mov ebx, [esi+0x2c]
	mov [ebp-0x28], ebx
	mov ecx, [esi+0x30]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x34]
	mov [ebp-0x20], edx
	mov eax, [esi+0x38]
	mov [ebp-0x1c], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
	add edi, 0x1
	add esi, 0x4c
	cmp edi, [dvarCount]
	jl Cvar_SetCheatState_30
Cvar_SetCheatState_20:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetCheatState_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz Cvar_SetCheatState_50
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_SetCheatState_10
	jmp Cvar_SetCheatState_50
	nop


;Dvar_SetDomainFunc(dvar_s const*, unsigned char (*)(dvar_s*, DvarValue))
Cvar_SetDomainFunc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [edi+0x44], esi
	test esi, esi
	jz Cvar_SetDomainFunc_10
	mov ebx, [edi+0xc]
	mov [ebp-0x48], ebx
	mov ecx, [edi+0x10]
	mov [ebp-0x44], ecx
	mov edx, [edi+0x14]
	mov [ebp-0x40], edx
	mov eax, [edi+0x18]
	mov [ebp-0x3c], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov [esp+0x10], eax
	mov [esp], edi
	call esi
	test al, al
	jz Cvar_SetDomainFunc_20
Cvar_SetDomainFunc_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetDomainFunc_20:
	mov esi, [edi]
	mov ebx, [edi+0xc]
	mov [ebp-0x38], ebx
	mov ecx, [edi+0x10]
	mov [ebp-0x34], ecx
	mov edx, [edi+0x14]
	mov [ebp-0x30], edx
	mov eax, [edi+0x18]
	mov [ebp-0x2c], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_ValueToString
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_a_valid1
	mov dword [esp], 0x10
	call Com_Printf
	mov ebx, [edi+0x2c]
	mov [ebp-0x28], ebx
	mov ecx, [edi+0x30]
	mov [ebp-0x24], ecx
	mov edx, [edi+0x34]
	mov [ebp-0x20], edx
	mov eax, [edi+0x38]
	mov [ebp-0x1c], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, edi
	call Cvar_SetVariant
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_SetInAutoExec(unsigned char)
Cvar_SetInAutoExec:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [isLoadingAutoExecGlobalFlag], al
	pop ebp
	ret
	nop


;Dvar_ValueInDomain(unsigned char, DvarValue, DvarLimits)
Cvar_ValueInDomain:
	push ebp
	mov ebp, esp
	movzx eax, byte [ebp+0x8]
	cmp eax, 0x8
	ja Cvar_ValueInDomain_10
	jmp dword [eax*4+Cvar_ValueInDomain_jumptab_0]
Cvar_ValueInDomain_170:
	mov eax, [ebp+0xc]
	cmp eax, [ebp+0x1c]
	jl Cvar_ValueInDomain_10
	cmp eax, [ebp+0x20]
	jle Cvar_ValueInDomain_20
Cvar_ValueInDomain_10:
	xor eax, eax
Cvar_ValueInDomain_100:
	pop ebp
	ret
Cvar_ValueInDomain_180:
	mov eax, [ebp+0xc]
	test eax, eax
	js Cvar_ValueInDomain_30
	cmp eax, [ebp+0x1c]
	jge Cvar_ValueInDomain_30
Cvar_ValueInDomain_20:
	mov eax, 0x1
Cvar_ValueInDomain_110:
	pop ebp
	ret
Cvar_ValueInDomain_160:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	lea eax, [ebp+0xc]
	lea edx, [ebp+0x1c]
Cvar_ValueInDomain_50:
	movss xmm0, dword [eax]
	ucomiss xmm1, xmm0
	ja Cvar_ValueInDomain_40
	ucomiss xmm0, xmm2
	ja Cvar_ValueInDomain_40
	add eax, 0x4
	cmp eax, edx
	jnz Cvar_ValueInDomain_50
	mov eax, 0x1
Cvar_ValueInDomain_70:
	movzx eax, al
Cvar_ValueInDomain_120:
	pop ebp
	ret
Cvar_ValueInDomain_150:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	lea eax, [ebp+0xc]
	lea edx, [ebp+0x18]
Cvar_ValueInDomain_60:
	movss xmm0, dword [eax]
	ucomiss xmm1, xmm0
	ja Cvar_ValueInDomain_40
	ucomiss xmm0, xmm2
	ja Cvar_ValueInDomain_40
	add eax, 0x4
	cmp eax, edx
	jnz Cvar_ValueInDomain_60
	mov eax, 0x1
	jmp Cvar_ValueInDomain_70
Cvar_ValueInDomain_140:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	lea eax, [ebp+0xc]
	lea edx, [ebp+0x14]
Cvar_ValueInDomain_80:
	movss xmm0, dword [eax]
	ucomiss xmm1, xmm0
	ja Cvar_ValueInDomain_40
	ucomiss xmm0, xmm2
	ja Cvar_ValueInDomain_40
	add eax, 0x4
	cmp edx, eax
	jnz Cvar_ValueInDomain_80
	mov eax, 0x1
	jmp Cvar_ValueInDomain_70
Cvar_ValueInDomain_130:
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x1c]
	jp Cvar_ValueInDomain_90
	jb Cvar_ValueInDomain_10
Cvar_ValueInDomain_90:
	ucomiss xmm0, [ebp+0x20]
	jbe Cvar_ValueInDomain_20
	xor eax, eax
	jmp Cvar_ValueInDomain_100
Cvar_ValueInDomain_30:
	test eax, eax
	jnz Cvar_ValueInDomain_10
	mov eax, 0x1
	jmp Cvar_ValueInDomain_110
Cvar_ValueInDomain_40:
	xor eax, eax
	movzx eax, al
	jmp Cvar_ValueInDomain_120
	
	
Cvar_ValueInDomain_jumptab_0:
	dd Cvar_ValueInDomain_20
	dd Cvar_ValueInDomain_130
	dd Cvar_ValueInDomain_140
	dd Cvar_ValueInDomain_150
	dd Cvar_ValueInDomain_160
	dd Cvar_ValueInDomain_170
	dd Cvar_ValueInDomain_180
	dd Cvar_ValueInDomain_20
	dd Cvar_ValueInDomain_20


;Dvar_IsSystemActive()
Cvar_IsSystemActive:
	push ebp
	mov ebp, esp
	movzx eax, byte [isDvarSystemActive]
	pop ebp
	ret


;Dvar_RegisterString(char const*, char const*, unsigned short, char const*)
Cvar_RegisterString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x60], eax
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp-0x20]
	mov ecx, [ebp-0x1c]
	mov [ebp-0x88], edx
	mov [ebp-0x84], ecx
	mov [ebp-0x50], eax
	mov ebx, [ebp-0x5c]
	mov [ebp-0x4c], ebx
	mov ecx, [ebp-0x58]
	mov [ebp-0x48], ecx
	mov edx, [ebp-0x54]
	mov [ebp-0x44], edx
	movzx esi, word [ebp+0x10]
	mov [ebp-0x7a], si
	mov [ebp-0x70], eax
	mov [ebp-0x6c], ebx
	mov [ebp-0x68], ecx
	mov [ebp-0x64], edx
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_RegisterString_10
	mov ebx, [ebp-0x70]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x3c], ecx
	mov eax, [ebp-0x68]
	mov [ebp-0x38], eax
	mov edx, [ebp-0x64]
	mov [ebp-0x34], edx
	mov eax, [ebp+0x14]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x88]
	mov edx, [ebp-0x84]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x68]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x64]
	mov [esp+0x10], ecx
	movzx eax, word [ebp-0x7a]
	mov [esp], eax
	mov ecx, 0x7
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterString_10:
	mov esi, [ebp-0x70]
	mov [ebp-0x30], esi
	mov ebx, [ebp-0x6c]
	mov [ebp-0x2c], ebx
	mov eax, [ebp-0x68]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x24], eax
	movzx edx, word [ebp-0x7a]
	mov [ebp-0x8c], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x18], ecx
	mov edx, [ebp-0x88]
	mov ecx, [ebp-0x84]
	mov [esp+0x10], edx
	mov [esp+0x14], ecx
	mov [esp], esi
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x68]
	mov [esp+0x8], ecx
	mov [esp+0xc], eax
	mov ecx, [ebp-0x8c]
	mov edx, 0x7
	mov eax, edi
	call Cvar_RegisterNew
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Dvar_SetFloatByName(char const*, float)
Cvar_SetFloatByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_SetFloatByName_10
	cmp byte [eax+0xa], 0x1
	jz Cvar_SetFloatByName_20
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x58], ebx
Cvar_SetFloatByName_30:
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_SetVariant
Cvar_SetFloatByName_50:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetFloatByName_20:
	movss xmm0, dword [ebp+0xc]
	movss [ebp-0x58], xmm0
	mov ebx, [ebp-0x58]
	jmp Cvar_SetFloatByName_30
Cvar_SetFloatByName_10:
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g
	call va
	mov [ebp-0x68], eax
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov edx, [ebp-0x58]
	mov ecx, [ebp-0x54]
	mov [ebp-0xa0], edx
	mov [ebp-0x9c], ecx
	mov [ebp-0x38], eax
	mov ebx, [ebp-0x64]
	mov [ebp-0x34], ebx
	mov ecx, [ebp-0x60]
	mov [ebp-0x30], ecx
	mov edx, [ebp-0x5c]
	mov [ebp-0x2c], edx
	mov [ebp-0x98], eax
	mov [ebp-0x94], ebx
	mov [ebp-0x90], ecx
	mov [ebp-0x8c], edx
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov [ebp-0xac], eax
	test eax, eax
	jz Cvar_SetFloatByName_40
	mov ebx, [ebp-0x98]
	mov [ebp-0x28], ebx
	mov ecx, [ebp-0x94]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x90]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x8c]
	mov [ebp-0x1c], eax
	mov dword [esp+0x1c], _cstring_external_dvar
	mov esi, [ebp-0xa0]
	mov edi, [ebp-0x9c]
	mov [esp+0x14], esi
	mov [esp+0x18], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov [esp+0x10], eax
	mov dword [esp], 0x4000
	mov ecx, 0x7
	mov edx, [ebp+0x8]
	mov eax, [ebp-0xac]
	call Cvar_Reregister
	jmp Cvar_SetFloatByName_50
Cvar_SetFloatByName_40:
	mov ebx, [ebp-0x98]
	mov [ebp-0x78], ebx
	mov ecx, [ebp-0x94]
	mov [ebp-0x74], ecx
	mov edx, [ebp-0x90]
	mov [ebp-0x70], edx
	mov eax, [ebp-0x8c]
	mov [ebp-0x6c], eax
	mov dword [esp+0x18], _cstring_external_dvar
	mov esi, [ebp-0xa0]
	mov edi, [ebp-0x9c]
	mov [esp+0x10], esi
	mov [esp+0x14], edi
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov ecx, 0x4000
	mov edx, 0x7
	mov eax, [ebp+0x8]
	call Cvar_RegisterNew
	jmp Cvar_SetFloatByName_50
	nop


;Dvar_HasLatchedValue(dvar_s const*)
Cvar_HasLatchedValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov [esp+0x10], edx
	mov [ebp-0x38], edx
	mov edx, [eax+0x20]
	mov [esp+0x14], edx
	mov [ebp-0x34], edx
	mov edx, [eax+0x24]
	mov [esp+0x18], edx
	mov [ebp-0x30], edx
	mov edi, [eax+0x28]
	mov [ebp-0x2c], edi
	mov esi, [eax+0xc]
	mov [ebp-0x28], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x24], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x20], ecx
	mov edx, [eax+0x18]
	mov [ebp-0x1c], edx
	movzx eax, byte [eax+0xa]
	mov [ebp-0x3c], eax
	mov [esp+0x1c], edi
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	call Cvar_ValuesEqual
	test eax, eax
	setz al
	movzx eax, al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_ResetScriptInfo()
Cvar_ResetScriptInfo:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], g_dvarCritSect
	call InterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_ResetScriptInfo_10
Cvar_ResetScriptInfo_40:
	mov ecx, [dvarCount]
	test ecx, ecx
	jle Cvar_ResetScriptInfo_20
	xor edx, edx
	mov eax, dvarPool
Cvar_ResetScriptInfo_30:
	and word [eax+0x8], 0xfbff
	add edx, 0x1
	add eax, 0x4c
	cmp edx, ecx
	jnz Cvar_ResetScriptInfo_30
Cvar_ResetScriptInfo_20:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	leave
	ret
Cvar_ResetScriptInfo_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz Cvar_ResetScriptInfo_40
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_ResetScriptInfo_10
	jmp Cvar_ResetScriptInfo_40


;Dvar_SetStringByName(char const*, char const*)
Cvar_SetStringByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4ac
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov [ebp-0x488], eax
	test eax, eax
	jz Cvar_SetStringByName_10
	cmp byte [eax+0xa], 0x7
	jz Cvar_SetStringByName_20
	mov edx, [ebp-0x488]
	add edx, 0x3c
	mov [ebp-0x484], edx
	mov ebx, [ebp-0x488]
	mov esi, [ebx+0x3c]
	test esi, esi
	jg Cvar_SetStringByName_30
Cvar_SetStringByName_130:
	mov edx, [ebp+0xc]
	movzx ecx, byte [edx]
	test cl, cl
	jnz Cvar_SetStringByName_40
	xor ebx, ebx
Cvar_SetStringByName_100:
	cmp esi, ebx
	jle Cvar_SetStringByName_50
Cvar_SetStringByName_90:
	mov [ebp-0x58], ebx
Cvar_SetStringByName_150:
	mov [ebp-0x48], ebx
	mov ecx, [ebp-0x54]
	mov [ebp-0x44], ecx
	mov edx, [ebp-0x50]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x4c]
	mov [ebp-0x3c], eax
	mov dword [esp+0x10], 0x0
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, [ebp-0x488]
	call Cvar_SetVariant
Cvar_SetStringByName_170:
	add esp, 0x4ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetStringByName_40:
	lea eax, [ecx-0x30]
	cmp al, 0x9
	ja Cvar_SetStringByName_60
	mov edi, [ebp+0xc]
	xor ebx, ebx
Cvar_SetStringByName_80:
	lea edx, [ebx+ebx*4]
	movsx eax, cl
	lea ebx, [eax+edx*2-0x30]
	movzx ecx, byte [edi+0x1]
	test cl, cl
	jz Cvar_SetStringByName_70
	add edi, 0x1
	lea eax, [ecx-0x30]
	cmp al, 0x9
	jbe Cvar_SetStringByName_80
Cvar_SetStringByName_60:
	mov ebx, 0xfffffac7
	jmp Cvar_SetStringByName_90
Cvar_SetStringByName_70:
	test ebx, ebx
	jns Cvar_SetStringByName_100
Cvar_SetStringByName_50:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0xc]
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	mov ebx, [ebp-0x484]
	mov eax, [ebx]
	test eax, eax
	jle Cvar_SetStringByName_60
	xor ebx, ebx
Cvar_SetStringByName_110:
	mov [esp+0x8], esi
	mov edi, [ebp-0x484]
	mov eax, [edi+0x4]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jz Cvar_SetStringByName_90
	add ebx, 0x1
	cmp [edi], ebx
	jg Cvar_SetStringByName_110
	mov ebx, 0xfffffac7
	jmp Cvar_SetStringByName_90
Cvar_SetStringByName_30:
	xor ebx, ebx
	mov esi, [ebp-0x484]
	jmp Cvar_SetStringByName_120
Cvar_SetStringByName_140:
	add ebx, 0x1
	mov eax, [ebp-0x484]
	mov esi, [eax]
	cmp ebx, esi
	jge Cvar_SetStringByName_130
	mov esi, eax
Cvar_SetStringByName_120:
	mov eax, [esi+0x4]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov edi, [ebp+0xc]
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz Cvar_SetStringByName_140
	jmp Cvar_SetStringByName_90
Cvar_SetStringByName_20:
	mov dword [esp+0x8], 0x400
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x478]
	mov [esp], ebx
	call Q_strncpyz
	mov [ebp-0x58], ebx
	jmp Cvar_SetStringByName_150
Cvar_SetStringByName_10:
	mov edx, [ebp+0xc]
	mov [ebp-0x68], edx
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov ebx, [ebp-0x58]
	mov esi, [ebp-0x54]
	mov [ebp-0x480], ebx
	mov [ebp-0x47c], esi
	mov [ebp-0x38], edx
	mov ecx, [ebp-0x64]
	mov [ebp-0x34], ecx
	mov edx, [ebp-0x60]
	mov [ebp-0x30], edx
	mov eax, [ebp-0x5c]
	mov [ebp-0x2c], eax
	mov esi, [ebp+0xc]
	mov [ebp-0x478], esi
	mov [ebp-0x474], ecx
	mov [ebp-0x470], edx
	mov [ebp-0x46c], eax
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov [ebp-0x48c], eax
	test eax, eax
	jz Cvar_SetStringByName_160
	mov ebx, [ebp-0x478]
	mov [ebp-0x28], ebx
	mov ecx, [ebp-0x474]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x470]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x46c]
	mov [ebp-0x1c], eax
	mov dword [esp+0x1c], _cstring_external_dvar
	mov esi, [ebp-0x480]
	mov edi, [ebp-0x47c]
	mov [esp+0x14], esi
	mov [esp+0x18], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov [esp+0x10], eax
	mov dword [esp], 0x4000
	mov ecx, 0x7
	mov edx, [ebp+0x8]
	mov eax, [ebp-0x48c]
	call Cvar_Reregister
	jmp Cvar_SetStringByName_170
Cvar_SetStringByName_160:
	mov ebx, [ebp-0x478]
	mov [ebp-0x78], ebx
	mov ecx, [ebp-0x474]
	mov [ebp-0x74], ecx
	mov edx, [ebp-0x470]
	mov [ebp-0x70], edx
	mov eax, [ebp-0x46c]
	mov [ebp-0x6c], eax
	mov dword [esp+0x18], _cstring_external_dvar
	mov esi, [ebp-0x480]
	mov edi, [ebp-0x47c]
	mov [esp+0x10], esi
	mov [esp+0x14], edi
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov ecx, 0x4000
	mov edx, 0x7
	mov eax, [ebp+0x8]
	call Cvar_RegisterNew
	jmp Cvar_SetStringByName_170
	nop


;Com_SaveDvarsToBuffer(char const**, unsigned int, char*, unsigned int)
Com_SaveDvarsToBuffer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x14]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jnz Com_SaveDvarsToBuffer_10
Com_SaveDvarsToBuffer_40:
	mov eax, 0x1
Com_SaveDvarsToBuffer_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SaveDvarsToBuffer_10:
	mov dword [ebp-0x2c], 0x0
	mov edx, [ebp-0x2c]
Com_SaveDvarsToBuffer_30:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4]
	call Cvar_FindMalleableVar
	mov ebx, eax
	mov esi, [eax+0xc]
	mov [ebp-0x28], esi
	mov ecx, [eax+0x10]
	mov [ebp-0x24], ecx
	mov edx, [eax+0x14]
	mov [ebp-0x20], edx
	mov eax, [eax+0x18]
	mov [ebp-0x1c], eax
	mov [esp], esi
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, ebx
	call Cvar_ValueToString
	mov [esp+0x10], eax
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_s
	mov [esp+0x4], edi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call snprintf
	test eax, eax
	js Com_SaveDvarsToBuffer_20
	add [ebp+0x10], eax
	sub edi, eax
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x2c]
	cmp [ebp+0xc], edx
	jnz Com_SaveDvarsToBuffer_30
	jmp Com_SaveDvarsToBuffer_40
Com_SaveDvarsToBuffer_20:
	xor eax, eax
	jmp Com_SaveDvarsToBuffer_50
	nop


;Dvar_AnyLatchedValues()
Cvar_AnyLatchedValues:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [esp], g_dvarCritSect
	call InterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_AnyLatchedValues_10
Cvar_AnyLatchedValues_50:
	mov eax, [dvarCount]
	mov [ebp-0x40], eax
	test eax, eax
	jle Cvar_AnyLatchedValues_20
	mov dword [ebp-0x3c], 0x0
	mov edi, dvarPool
Cvar_AnyLatchedValues_40:
	mov eax, [edi+0x1c]
	mov [ebp-0x38], eax
	mov eax, [edi+0x20]
	mov [ebp-0x34], eax
	mov eax, [edi+0x24]
	mov [ebp-0x30], eax
	mov eax, [edi+0x28]
	mov [ebp-0x2c], eax
	mov esi, [edi+0xc]
	mov [ebp-0x28], esi
	mov ebx, [edi+0x10]
	mov [ebp-0x24], ebx
	mov ecx, [edi+0x14]
	mov [ebp-0x20], ecx
	mov edx, [edi+0x18]
	mov [ebp-0x1c], edx
	movzx eax, byte [edi+0xa]
	mov [ebp-0x4c], eax
	mov eax, [edi+0x1c]
	mov [esp+0x10], eax
	mov eax, [edi+0x20]
	mov [esp+0x14], eax
	mov eax, [edi+0x24]
	mov [esp+0x18], eax
	mov eax, [edi+0x28]
	mov [esp+0x1c], eax
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov eax, [ebp-0x4c]
	call Cvar_ValuesEqual
	test eax, eax
	jz Cvar_AnyLatchedValues_30
	add dword [ebp-0x3c], 0x1
	add edi, 0x4c
	mov eax, [ebp-0x40]
	cmp [ebp-0x3c], eax
	jnz Cvar_AnyLatchedValues_40
Cvar_AnyLatchedValues_20:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	xor eax, eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_AnyLatchedValues_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz Cvar_AnyLatchedValues_50
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz Cvar_AnyLatchedValues_10
	jmp Cvar_AnyLatchedValues_50
Cvar_AnyLatchedValues_30:
	mov dword [esp], g_dvarCritSect
	call InterlockedDecrement
	mov eax, 0x1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_ChangeResetValue(dvar_s const*, DvarValue)
Cvar_ChangeResetValue:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [ebp-0x18], esi
	mov ebx, [ebp+0x10]
	mov [ebp-0x14], ebx
	mov ecx, [ebp+0x14]
	mov [ebp-0x10], ecx
	mov edx, [ebp+0x18]
	mov [ebp-0xc], edx
	mov [ebp+0x8], esi
	mov [ebp+0xc], ebx
	mov [ebp+0x10], ecx
	mov [ebp+0x14], edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Cvar_UpdateResetValue


;Dvar_DisplayableValue(dvar_s const*)
Cvar_DisplayableValue:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov esi, [eax+0xc]
	mov [ebp-0x18], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x14], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x10], ecx
	mov edx, [eax+0x18]
	mov [ebp-0xc], edx
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	call Cvar_ValueToString
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_GetUnpackedColor(dvar_s const*, float*)
Cvar_GetUnpackedColor:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp byte [eax+0xa], 0x8
	jz Cvar_GetUnpackedColor_10
	lea edx, [ebp-0xc]
	mov eax, [eax+0xc]
	call Cvar_StringToColor
Cvar_GetUnpackedColor_20:
	movzx eax, byte [ebp-0xc]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [ebx], xmm0
	movzx eax, byte [ebp-0xb]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movzx eax, byte [ebp-0xa]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x8], xmm0
	movzx eax, byte [ebp-0x9]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0xc], xmm0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_GetUnpackedColor_10:
	mov eax, [eax+0xc]
	mov [ebp-0xc], eax
	jmp Cvar_GetUnpackedColor_20
	nop


;Dvar_GetVariantString(char const*)
Cvar_GetVariantString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_GetVariantString_10
	mov ebx, [eax+0xc]
	mov [ebp-0x18], ebx
	mov ecx, [eax+0x10]
	mov [ebp-0x14], ecx
	mov edx, [eax+0x14]
	mov [ebp-0x10], edx
	mov eax, [eax+0x18]
	mov [ebp-0xc], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, esi
	call Cvar_ValueToString
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_GetVariantString_10:
	mov eax, _cstring_null
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Dvar_SetIntFromSource(dvar_s const*, int, DvarSetSource)
Cvar_SetIntFromSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi+0xa]
	sub al, 0x5
	cmp al, 0x1
	jbe Cvar_SetIntFromSource_10
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x38], ebx
	mov esi, ebx
Cvar_SetIntFromSource_20:
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x34]
	mov [ebp-0x24], ebx
	mov ecx, [ebp-0x30]
	mov [ebp-0x20], ecx
	mov edx, [ebp-0x2c]
	mov [ebp-0x1c], edx
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov eax, edi
	call Cvar_SetVariant
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetIntFromSource_10:
	mov eax, [ebp+0xc]
	mov [ebp-0x38], eax
	mov esi, eax
	jmp Cvar_SetIntFromSource_20
	nop


;Dvar_UpdateEnumDomain(dvar_s const*, char const**)
Cvar_UpdateEnumDomain:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0xc]
	mov eax, [edx]
	test eax, eax
	jz Cvar_UpdateEnumDomain_10
	xor eax, eax
Cvar_UpdateEnumDomain_20:
	add eax, 0x1
	mov edi, [edx+eax*4]
	test edi, edi
	jnz Cvar_UpdateEnumDomain_20
Cvar_UpdateEnumDomain_150:
	mov ecx, [ebp+0x8]
	mov [ecx+0x3c], eax
	mov [ecx+0x40], edx
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x3c]
	mov esi, [esi+0x40]
	mov [ebp-0x60], ebx
	mov [ebp-0x5c], esi
	mov edi, [ecx+0x2c]
	mov [ebp-0x6c], edi
	mov [ebp-0x38], edi
	mov eax, [ecx+0x30]
	mov [ebp-0x70], eax
	mov [ebp-0x34], eax
	mov edx, [ecx+0x34]
	mov [ebp-0x74], edx
	mov [ebp-0x30], edx
	mov ecx, [ecx+0x38]
	mov [ebp-0x78], ecx
	mov [ebp-0x2c], ecx
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0xc]
	mov [ebp-0x28], ecx
	mov esi, ebx
	mov ebx, [ebx+0x10]
	mov [ebp-0x24], ebx
	mov edx, [esi+0x14]
	mov [ebp-0x20], edx
	mov eax, [esi+0x18]
	mov [ebp-0x1c], eax
	movzx esi, byte [esi+0xa]
	mov edi, ecx
	mov [ebp-0x58], ecx
	mov [ebp-0x54], ebx
	mov [ebp-0x50], edx
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x6c]
	mov [ebp-0x48], eax
	mov edx, [ebp-0x70]
	mov [ebp-0x44], edx
	mov ecx, [ebp-0x74]
	mov [ebp-0x40], ecx
	mov ebx, [ebp-0x78]
	mov [ebp-0x3c], ebx
	mov edx, esi
	movzx eax, dl
	cmp eax, 0x6
	ja Cvar_UpdateEnumDomain_30
	jmp dword [eax*4+Cvar_UpdateEnumDomain_jumptab_0]
Cvar_UpdateEnumDomain_240:
	mov edi, [ebp-0x58]
	cmp edi, [ebp-0x60]
	jl Cvar_UpdateEnumDomain_40
	cmp edi, [ebp-0x5c]
	jle Cvar_UpdateEnumDomain_30
	mov edi, [ebp-0x5c]
	mov [ebp-0x58], edi
Cvar_UpdateEnumDomain_30:
	mov eax, [ebp+0x8]
	mov [eax+0xc], edi
	mov ecx, [ebp-0x54]
	mov [eax+0x10], ecx
	mov edx, [ebp-0x50]
	mov [eax+0x14], edx
	mov eax, [ebp-0x4c]
	mov ebx, [ebp+0x8]
	mov [ebx+0x18], eax
	mov [ebx+0x1c], edi
	mov [ebx+0x20], ecx
	mov [ebx+0x24], edx
	mov [ebx+0x28], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_UpdateEnumDomain_190:
	cmp byte [ebp-0x58], 0x0
	setnz byte [ebp-0x58]
	mov edi, [ebp-0x58]
	jmp Cvar_UpdateEnumDomain_30
Cvar_UpdateEnumDomain_250:
	mov edi, [ebp-0x58]
	test edi, edi
	js Cvar_UpdateEnumDomain_50
	cmp edi, [ebp-0x60]
	jl Cvar_UpdateEnumDomain_30
Cvar_UpdateEnumDomain_50:
	mov edi, [ebp-0x48]
	mov [ebp-0x58], edi
	jmp Cvar_UpdateEnumDomain_30
Cvar_UpdateEnumDomain_230:
	movss xmm2, dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x60]
	mov edx, 0x1
	lea eax, [ebp-0x54]
Cvar_UpdateEnumDomain_70:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe Cvar_UpdateEnumDomain_60
	movss [eax-0x4], xmm1
Cvar_UpdateEnumDomain_160:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x5
	jnz Cvar_UpdateEnumDomain_70
Cvar_UpdateEnumDomain_90:
	mov edi, [ebp-0x58]
	jmp Cvar_UpdateEnumDomain_30
Cvar_UpdateEnumDomain_220:
	movss xmm2, dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x60]
	mov edx, 0x1
	lea eax, [ebp-0x54]
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe Cvar_UpdateEnumDomain_80
Cvar_UpdateEnumDomain_100:
	movss [eax-0x4], xmm1
Cvar_UpdateEnumDomain_110:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jz Cvar_UpdateEnumDomain_90
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	ja Cvar_UpdateEnumDomain_100
Cvar_UpdateEnumDomain_80:
	ucomiss xmm0, xmm2
	jbe Cvar_UpdateEnumDomain_110
	movss [eax-0x4], xmm2
	jmp Cvar_UpdateEnumDomain_110
Cvar_UpdateEnumDomain_210:
	movss xmm2, dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x60]
	mov edx, 0x1
	lea eax, [ebp-0x54]
Cvar_UpdateEnumDomain_130:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe Cvar_UpdateEnumDomain_120
	movss [eax-0x4], xmm1
Cvar_UpdateEnumDomain_170:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz Cvar_UpdateEnumDomain_130
	mov edi, [ebp-0x58]
	jmp Cvar_UpdateEnumDomain_30
Cvar_UpdateEnumDomain_200:
	movss xmm0, dword [ebp-0x58]
	ucomiss xmm0, [ebp-0x60]
	jb Cvar_UpdateEnumDomain_140
Cvar_UpdateEnumDomain_180:
	ucomiss xmm0, [ebp-0x5c]
	jbe Cvar_UpdateEnumDomain_90
	fld dword [ebp-0x5c]
	fstp dword [ebp-0x58]
	mov edi, [ebp-0x58]
	jmp Cvar_UpdateEnumDomain_30
Cvar_UpdateEnumDomain_10:
	xor eax, eax
	jmp Cvar_UpdateEnumDomain_150
Cvar_UpdateEnumDomain_60:
	ucomiss xmm0, xmm2
	jbe Cvar_UpdateEnumDomain_160
	movss [eax-0x4], xmm2
	jmp Cvar_UpdateEnumDomain_160
Cvar_UpdateEnumDomain_120:
	ucomiss xmm0, xmm2
	jbe Cvar_UpdateEnumDomain_170
	movss [eax-0x4], xmm2
	jmp Cvar_UpdateEnumDomain_170
Cvar_UpdateEnumDomain_140:
	jp Cvar_UpdateEnumDomain_180
	fld dword [ebp-0x60]
	fstp dword [ebp-0x58]
	mov edi, [ebp-0x58]
	jmp Cvar_UpdateEnumDomain_30
Cvar_UpdateEnumDomain_40:
	mov edi, [ebp-0x60]
	mov [ebp-0x58], edi
	jmp Cvar_UpdateEnumDomain_30
	nop
	add [eax], al
	
	
Cvar_UpdateEnumDomain_jumptab_0:
	dd Cvar_UpdateEnumDomain_190
	dd Cvar_UpdateEnumDomain_200
	dd Cvar_UpdateEnumDomain_210
	dd Cvar_UpdateEnumDomain_220
	dd Cvar_UpdateEnumDomain_230
	dd Cvar_UpdateEnumDomain_240
	dd Cvar_UpdateEnumDomain_250


;Dvar_SetBoolFromSource(dvar_s const*, unsigned char, DvarSetSource)
Cvar_SetBoolFromSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, eax
	cmp byte [edi+0xa], 0x0
	jnz Cvar_SetBoolFromSource_10
	mov [ebp-0x38], al
	mov esi, [ebp-0x38]
Cvar_SetBoolFromSource_20:
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x34]
	mov [ebp-0x24], ebx
	mov ecx, [ebp-0x30]
	mov [ebp-0x20], ecx
	mov edx, [ebp-0x2c]
	mov [ebp-0x1c], edx
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov eax, edi
	call Cvar_SetVariant
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetBoolFromSource_10:
	mov eax, _cstring_1
	test dl, dl
	mov edx, _cstring_0
	cmovz eax, edx
	mov [ebp-0x38], eax
	mov esi, eax
	jmp Cvar_SetBoolFromSource_20
	nop


;Com_LoadDvarsFromBuffer(char const**, unsigned int, char const*, char const*)
Com_LoadDvarsFromBuffer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x404c
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x4028]
	mov [esp], edx
	call memset
	mov eax, [ebp+0xc]
	test eax, eax
	jnz Com_LoadDvarsFromBuffer_10
Com_LoadDvarsFromBuffer_130:
	mov eax, [ebp+0x14]
	mov [esp], eax
	call Com_BeginParseSession
	mov dword [ebp-0x402c], 0x0
	lea edx, [ebp+0x10]
	mov [esp], edx
	call Com_Parse
	mov esi, eax
	cmp byte [eax], 0x0
	jz Com_LoadDvarsFromBuffer_20
Com_LoadDvarsFromBuffer_60:
	mov edi, [ebp+0xc]
	test edi, edi
	jz Com_LoadDvarsFromBuffer_30
	mov ebx, [ebp+0x8]
	xor edi, edi
Com_LoadDvarsFromBuffer_50:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz Com_LoadDvarsFromBuffer_40
	add edi, 0x1
	add ebx, 0x4
	cmp [ebp+0xc], edi
	jnz Com_LoadDvarsFromBuffer_50
Com_LoadDvarsFromBuffer_30:
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_unknown_
	mov dword [esp], 0x10
	call Com_PrintWarning
Com_LoadDvarsFromBuffer_110:
	lea eax, [ebp+0x10]
	mov [esp], eax
	call Com_SkipRestOfLine
	lea edx, [ebp+0x10]
	mov [esp], edx
	call Com_Parse
	mov esi, eax
	cmp byte [eax], 0x0
	jnz Com_LoadDvarsFromBuffer_60
Com_LoadDvarsFromBuffer_20:
	call Com_EndParseSession
	mov edx, [ebp-0x402c]
	cmp [ebp+0xc], edx
	jz Com_LoadDvarsFromBuffer_70
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_the_follow
	mov dword [esp], 0x10
	call Com_PrintError
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz Com_LoadDvarsFromBuffer_80
	xor ebx, ebx
	jmp Com_LoadDvarsFromBuffer_90
Com_LoadDvarsFromBuffer_100:
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jz Com_LoadDvarsFromBuffer_80
Com_LoadDvarsFromBuffer_90:
	cmp byte [ebx+ebp-0x4028], 0x0
	jnz Com_LoadDvarsFromBuffer_100
	mov edx, [ebp+0x8]
	mov eax, [edx+ebx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x10
	call Com_PrintError
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jnz Com_LoadDvarsFromBuffer_90
Com_LoadDvarsFromBuffer_80:
	xor eax, eax
	add esp, 0x404c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadDvarsFromBuffer_40:
	mov eax, [ebx]
	call Cvar_FindMalleableVar
	mov ebx, eax
	lea eax, [ebp+0x10]
	mov [esp], eax
	call Com_ParseOnLine
	xor ecx, ecx
	mov edx, eax
	mov eax, ebx
	call Cvar_SetFromStringFromSource
	cmp byte [ebp+edi-0x4028], 0x0
	jnz Com_LoadDvarsFromBuffer_110
	mov byte [ebp+edi-0x4028], 0x1
	add dword [ebp-0x402c], 0x1
	jmp Com_LoadDvarsFromBuffer_110
Com_LoadDvarsFromBuffer_70:
	mov eax, 0x1
	add esp, 0x404c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadDvarsFromBuffer_10:
	xor edi, edi
Com_LoadDvarsFromBuffer_120:
	mov edx, [ebp+0x8]
	mov eax, [edx+edi*4]
	call Cvar_FindMalleableVar
	mov esi, [eax+0x2c]
	mov [ebp-0x28], esi
	mov ebx, [eax+0x30]
	mov [ebp-0x24], ebx
	mov ecx, [eax+0x34]
	mov [ebp-0x20], ecx
	mov edx, [eax+0x38]
	mov [ebp-0x1c], edx
	mov dword [esp+0x10], 0x0
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	call Cvar_SetVariant
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz Com_LoadDvarsFromBuffer_120
	jmp Com_LoadDvarsFromBuffer_130
	add [eax], al


;Dvar_SetColorFromSource(dvar_s const*, float, float, float, float, DvarSetSource)
Cvar_SetColorFromSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov edi, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	movss xmm3, dword [ebp+0x10]
	cmp byte [edi+0xa], 0x8
	jz Cvar_SetColorFromSource_10
	cvtss2sd xmm0, [ebp+0x18]
	movsd [esp+0x24], xmm0
	cvtss2sd xmm0, [ebp+0x14]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm3, xmm3
	movsd [esp+0x14], xmm3
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	mov dword [esp+0x8], _cstring_g_g_g_g
	mov dword [esp+0x4], 0x80
	lea ebx, [ebp-0xb8]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x38], ebx
	mov esi, ebx
Cvar_SetColorFromSource_100:
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x34]
	mov [ebp-0x24], ebx
	mov ecx, [ebp-0x30]
	mov [ebp-0x20], ecx
	mov edx, [ebp-0x2c]
	mov [ebp-0x1c], edx
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov eax, edi
	call Cvar_SetVariant
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetColorFromSource_10:
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb Cvar_SetColorFromSource_20
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb Cvar_SetColorFromSource_30
Cvar_SetColorFromSource_110:
	movaps xmm0, xmm2
Cvar_SetColorFromSource_120:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0xd8], xmm2
	movss [ebp-0xe8], xmm3
	call floorf
	fstp dword [ebp-0xbc]
	cvttss2si eax, [ebp-0xbc]
	mov [ebp-0x38], al
	movss xmm3, dword [ebp-0xe8]
	movaps xmm0, xmm3
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0xd8]
	ucomiss xmm0, xmm2
	jb Cvar_SetColorFromSource_40
	movss xmm3, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
Cvar_SetColorFromSource_180:
	ucomiss xmm0, xmm2
	jb Cvar_SetColorFromSource_50
	movaps xmm0, xmm2
Cvar_SetColorFromSource_170:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0xd8], xmm2
	call floorf
	fstp dword [ebp-0xc0]
	cvttss2si eax, [ebp-0xc0]
	mov [ebp-0x37], al
	movss xmm0, dword [ebp+0x14]
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0xd8]
	ucomiss xmm0, xmm2
	jb Cvar_SetColorFromSource_60
	mov dword [ebp+0x14], 0x3f800000
	movss xmm0, dword [_float__1_00000000]
Cvar_SetColorFromSource_160:
	ucomiss xmm0, xmm2
	jb Cvar_SetColorFromSource_70
	movaps xmm0, xmm2
Cvar_SetColorFromSource_150:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0xd8], xmm2
	call floorf
	fstp dword [ebp-0xc4]
	cvttss2si eax, [ebp-0xc4]
	mov [ebp-0x36], al
	movss xmm0, dword [ebp+0x18]
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0xd8]
	ucomiss xmm0, xmm2
	jb Cvar_SetColorFromSource_80
	mov dword [ebp+0x18], 0x3f800000
	movss xmm0, dword [_float__1_00000000]
Cvar_SetColorFromSource_140:
	ucomiss xmm0, xmm2
	jb Cvar_SetColorFromSource_90
	movaps xmm0, xmm2
Cvar_SetColorFromSource_130:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc8]
	cvttss2si eax, [ebp-0xc8]
	mov [ebp-0x35], al
	mov esi, [ebp-0x38]
	jmp Cvar_SetColorFromSource_100
Cvar_SetColorFromSource_20:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae Cvar_SetColorFromSource_110
Cvar_SetColorFromSource_30:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_SetColorFromSource_120
Cvar_SetColorFromSource_90:
	movss xmm0, dword [ebp+0x18]
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_SetColorFromSource_130
Cvar_SetColorFromSource_80:
	movaps xmm0, xmm2
	subss xmm0, [ebp+0x18]
	jmp Cvar_SetColorFromSource_140
Cvar_SetColorFromSource_70:
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_SetColorFromSource_150
Cvar_SetColorFromSource_60:
	movaps xmm0, xmm2
	subss xmm0, [ebp+0x14]
	jmp Cvar_SetColorFromSource_160
Cvar_SetColorFromSource_50:
	movaps xmm0, xmm3
	mulss xmm0, [_float_255_00000000]
	jmp Cvar_SetColorFromSource_170
Cvar_SetColorFromSource_40:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	jmp Cvar_SetColorFromSource_180
	nop


;Dvar_SetFloatFromSource(dvar_s const*, float, DvarSetSource)
Cvar_SetFloatFromSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	cmp byte [edi+0xa], 0x1
	jz Cvar_SetFloatFromSource_10
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x38], ebx
	mov esi, ebx
Cvar_SetFloatFromSource_20:
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x34]
	mov [ebp-0x24], ebx
	mov ecx, [ebp-0x30]
	mov [ebp-0x20], ecx
	mov edx, [ebp-0x2c]
	mov [ebp-0x1c], edx
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov eax, edi
	call Cvar_SetVariant
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetFloatFromSource_10:
	movss [ebp-0x38], xmm0
	mov esi, [ebp-0x38]
	jmp Cvar_SetFloatFromSource_20
	nop


;Dvar_SetFromStringByName(char const*, char const*)
Cvar_SetFromStringByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, esi
	call Cvar_FindMalleableVar
	test eax, eax
	jz Cvar_SetFromStringByName_10
	xor ecx, ecx
	mov edx, ebx
	call Cvar_SetFromStringFromSource
Cvar_SetFromStringByName_30:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetFromStringByName_10:
	mov [ebp-0x60], ebx
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [ebp-0x80], eax
	mov [ebp-0x7c], edx
	mov [ebp-0x50], ebx
	mov ecx, [ebp-0x5c]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0x58]
	mov [ebp-0x48], edx
	mov eax, [ebp-0x54]
	mov [ebp-0x44], eax
	mov [ebp-0x70], ebx
	mov [ebp-0x6c], ecx
	mov [ebp-0x68], edx
	mov [ebp-0x64], eax
	mov eax, esi
	call Cvar_FindMalleableVar
	mov edi, eax
	test eax, eax
	jz Cvar_SetFromStringByName_20
	mov ebx, [ebp-0x70]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x38], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x34], eax
	mov dword [esp+0x1c], _cstring_external_dvar
	mov eax, [ebp-0x80]
	mov edx, [ebp-0x7c]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x68]
	mov [esp+0xc], edx
	mov eax, [ebp-0x64]
	mov [esp+0x10], eax
	mov dword [esp], 0x4000
	mov ecx, 0x7
	mov edx, esi
	mov eax, edi
	call Cvar_Reregister
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetFromStringByName_20:
	mov ebx, [ebp-0x70]
	mov [ebp-0x30], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x2c], ecx
	mov edi, [ebp-0x68]
	mov [ebp-0x28], edi
	mov edx, [ebp-0x64]
	mov [ebp-0x24], edx
	mov dword [esp+0x18], _cstring_external_dvar
	mov eax, [ebp-0x80]
	mov edx, [ebp-0x7c]
	mov [esp+0x10], eax
	mov [esp+0x14], edx
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edi
	mov edx, [ebp-0x64]
	mov [esp+0xc], edx
	mov ecx, 0x4000
	mov edx, 0x7
	mov eax, esi
	call Cvar_RegisterNew
	jmp Cvar_SetFromStringByName_30


;Dvar_DisplayableResetValue(dvar_s const*)
Cvar_DisplayableResetValue:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov esi, [eax+0x2c]
	mov [ebp-0x18], esi
	mov ebx, [eax+0x30]
	mov [ebp-0x14], ebx
	mov ecx, [eax+0x34]
	mov [ebp-0x10], ecx
	mov edx, [eax+0x38]
	mov [ebp-0xc], edx
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	call Cvar_ValueToString
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_GetUnpackedColorByName(char const*, float*)
Cvar_GetUnpackedColorByName:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	call Cvar_FindMalleableVar
	test eax, eax
	jz Cvar_GetUnpackedColorByName_10
	cmp byte [eax+0xa], 0x8
	jz Cvar_GetUnpackedColorByName_20
	lea edx, [ebp-0xc]
	mov eax, [eax+0xc]
	call Cvar_StringToColor
Cvar_GetUnpackedColorByName_30:
	movzx eax, byte [ebp-0xc]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [ebx], xmm0
	movzx eax, byte [ebp-0xb]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movzx eax, byte [ebp-0xa]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x8], xmm0
	movzx eax, byte [ebp-0x9]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0xc], xmm0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_GetUnpackedColorByName_20:
	mov eax, [eax+0xc]
	mov [ebp-0xc], eax
	jmp Cvar_GetUnpackedColorByName_30
Cvar_GetUnpackedColorByName_10:
	mov edx, colorWhite
	mov eax, [edx]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edx+0xc]
	mov [ebx+0xc], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Dvar_DisplayableLatchedValue(dvar_s const*)
Cvar_DisplayableLatchedValue:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	mov [ebp-0x18], esi
	mov ebx, [eax+0x20]
	mov [ebp-0x14], ebx
	mov ecx, [eax+0x24]
	mov [ebp-0x10], ecx
	mov edx, [eax+0x28]
	mov [ebp-0xc], edx
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	call Cvar_ValueToString
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_DomainToString_GetLines(unsigned char, DvarLimits, char*, int, int*)
Cvar_DomainToString_GetLines:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movzx eax, byte [ebp+0x8]
	mov ebx, [ebp+0x1c]
	mov [ebp+0x10], ebx
	mov ebx, [ebp+0x18]
	mov [ebp+0xc], ebx
	mov ebx, [ebp+0x14]
	mov [ebp+0x8], ebx
	pop ebx
	pop ebp
	jmp Cvar_DomainToString_Internal
	nop


;Dvar_IndexStringToEnumString(dvar_s const*, char const*)
Cvar_IndexStringToEnumString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, [esi+0x3c]
	test edi, edi
	jnz Cvar_IndexStringToEnumString_10
Cvar_IndexStringToEnumString_30:
	mov eax, _cstring_null
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_IndexStringToEnumString_10:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	test ecx, ecx
	jle Cvar_IndexStringToEnumString_20
	movsx eax, byte [ebx]
	sub eax, 0x30
	cmp eax, 0x9
	ja Cvar_IndexStringToEnumString_30
	xor edx, edx
Cvar_IndexStringToEnumString_40:
	add edx, 0x1
	cmp ecx, edx
	jz Cvar_IndexStringToEnumString_20
	movsx eax, byte [ebx+edx]
	sub eax, 0x30
	cmp eax, 0x9
	jbe Cvar_IndexStringToEnumString_40
	jmp Cvar_IndexStringToEnumString_30
Cvar_IndexStringToEnumString_20:
	mov [esp], ebx
	call atoi
	mov edx, eax
	test eax, eax
	js Cvar_IndexStringToEnumString_30
	cmp eax, [esi+0x3c]
	jge Cvar_IndexStringToEnumString_30
	mov eax, [esi+0x40]
	mov eax, [eax+edx*4]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_MakeLatchedValueCurrent(dvar_s const*)
Cvar_MakeLatchedValueCurrent:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	mov [ebp-0x18], esi
	mov ebx, [eax+0x20]
	mov [ebp-0x14], ebx
	mov ecx, [eax+0x24]
	mov [ebp-0x10], ecx
	mov edx, [eax+0x28]
	mov [ebp-0xc], edx
	mov dword [esp+0x10], 0x0
	mov [esp], esi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	call Cvar_SetVariant
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_SetFromStringByNameFromSource(char const*, char const*, DvarSetSource)
Cvar_SetFromStringByNameFromSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, edi
	call Cvar_FindMalleableVar
	mov ebx, eax
	test eax, eax
	jz Cvar_SetFromStringByNameFromSource_10
	mov ecx, [ebp+0x10]
	mov edx, esi
	call Cvar_SetFromStringFromSource
Cvar_SetFromStringByNameFromSource_30:
	mov eax, ebx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetFromStringByNameFromSource_10:
	mov [ebp-0x60], esi
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [ebp-0x80], eax
	mov [ebp-0x7c], edx
	mov [ebp-0x50], esi
	mov ecx, [ebp-0x5c]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0x58]
	mov [ebp-0x48], edx
	mov eax, [ebp-0x54]
	mov [ebp-0x44], eax
	mov [ebp-0x70], esi
	mov [ebp-0x6c], ecx
	mov [ebp-0x68], edx
	mov [ebp-0x64], eax
	mov eax, edi
	call Cvar_FindMalleableVar
	mov esi, eax
	test eax, eax
	jz Cvar_SetFromStringByNameFromSource_20
	mov ebx, [ebp-0x70]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x38], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x34], eax
	mov dword [esp+0x1c], _cstring_external_dvar
	mov eax, [ebp-0x80]
	mov edx, [ebp-0x7c]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x68]
	mov [esp+0xc], edx
	mov ebx, [ebp-0x64]
	mov [esp+0x10], ebx
	mov dword [esp], 0x4000
	mov ecx, 0x7
	mov edx, edi
	mov eax, esi
	call Cvar_Reregister
	mov ebx, esi
	mov eax, ebx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_SetFromStringByNameFromSource_20:
	mov esi, [ebp-0x70]
	mov [ebp-0x30], esi
	mov ecx, [ebp-0x6c]
	mov [ebp-0x2c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x28], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x24], eax
	mov dword [esp+0x18], _cstring_external_dvar
	mov ebx, [ebp-0x80]
	mov esi, [ebp-0x7c]
	mov [esp+0x10], ebx
	mov [esp+0x14], esi
	mov esi, [ebp-0x70]
	mov [esp], esi
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov ecx, 0x4000
	mov edx, 0x7
	mov eax, edi
	call Cvar_RegisterNew
	mov ebx, eax
	jmp Cvar_SetFromStringByNameFromSource_30
	nop
	add [eax], al


;Dvar_Init()
Cvar_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov byte [isDvarSystemActive], 0x1
	mov byte [ebp-0x60], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [ebp-0x80], eax
	mov [ebp-0x7c], edx
	mov ebx, [ebp-0x60]
	mov [ebp-0x50], ebx
	mov ecx, [ebp-0x5c]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0x58]
	mov [ebp-0x48], edx
	mov eax, [ebp-0x54]
	mov [ebp-0x44], eax
	mov [ebp-0x70], ebx
	mov [ebp-0x6c], ecx
	mov [ebp-0x68], edx
	mov [ebp-0x64], eax
	mov eax, _cstring_sv_cheats
	call Cvar_FindMalleableVar
	mov [ebp-0x8c], eax
	test eax, eax
	jz Cvar_Init_10
	mov ebx, [ebp-0x70]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x38], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x34], eax
	mov dword [esp+0x1c], _cstring_external_dvar
	mov esi, [ebp-0x80]
	mov edi, [ebp-0x7c]
	mov [esp+0x14], esi
	mov [esp+0x18], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov [esp+0x10], eax
	mov dword [esp], 0x18
	xor ecx, ecx
	mov edx, _cstring_sv_cheats
	mov eax, [ebp-0x8c]
	call Cvar_Reregister
	mov eax, [ebp-0x8c]
	mov [dvar_cheats], eax
	call Cvar_AddCommands
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_Init_10:
	mov ebx, [ebp-0x70]
	mov [ebp-0x30], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x2c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x28], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x24], eax
	mov dword [esp+0x18], _cstring_external_dvar
	mov esi, [ebp-0x80]
	mov edi, [ebp-0x7c]
	mov [esp+0x10], esi
	mov [esp+0x14], edi
	mov [esp], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov ecx, 0x18
	xor edx, edx
	mov eax, _cstring_sv_cheats
	call Cvar_RegisterNew
	mov [dvar_cheats], eax
	call Cvar_AddCommands
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;void std::__adjust_heap<dvar_s const**, int, dvar_s const*, unsigned char (*)(dvar_s const*, dvar_s const*)>(dvar_s const**, int, int, dvar_s const*, unsigned char (*)(dvar_s const*, dvar_s const*))
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__10
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov edi, eax
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__100:
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__40:
	mov eax, [ebp+0x14]
	mov [esi], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__50:
	mov eax, [esi]
	mov edx, [ebp+0x8]
	mov [edx+edi*4], eax
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__30:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*4]
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__50
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__40
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__10:
	mov [ebp-0x1c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__80:
	lea edi, [ebx-0x1]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__90:
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	mov [ecx+edx*4], eax
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__70
	mov [ebp-0x1c], edi
	mov edi, ebx
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__60:
	lea eax, [ebx*4]
	mov esi, [ebp+0x8]
	add esi, eax
	mov edx, [ebp+0x8]
	mov eax, [edx+eax-0x4]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__80
	mov ecx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__90
_ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__20:
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4-0x4]
	mov [esi], eax
	mov edi, edx
	sub edi, 0x1
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2__100


;void std::__insertion_sort<dvar_s const**, unsigned char (*)(dvar_s const*, dvar_s const*)>(dvar_s const**, dvar_s const**, unsigned char (*)(dvar_s const*, dvar_s const*))
_ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__10
	mov edx, [ebp+0x8]
	add edx, 0x4
	mov [ebp-0x1c], edx
	cmp eax, edx
	jz _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__10
_ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__50:
	mov edi, [edx]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__20
	mov ebx, [ebp-0x1c]
	sub ebx, 0x4
	mov esi, [ebp-0x1c]
	jmp _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__30
_ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__40:
	mov eax, [ebx]
	mov [esi], eax
	mov esi, ebx
	sub ebx, 0x4
_ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__40
	mov [esi], edi
	add dword [ebp-0x1c], 0x4
	mov edx, [ebp-0x1c]
_ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__60:
	cmp [ebp+0xc], edx
	jnz _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__50
_ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__20:
	mov ebx, [ebp-0x1c]
	add ebx, 0x4
	mov eax, [ebp-0x1c]
	sub eax, [ebp+0x8]
	and eax, 0xfffffffc
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov edx, ebx
	sub edx, eax
	mov [esp], edx
	call memmove
	mov eax, [ebp+0x8]
	mov [eax], edi
	mov [ebp-0x1c], ebx
	mov edx, ebx
	jmp _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0__60
	nop


;void std::__introsort_loop<dvar_s const**, int, unsigned char (*)(dvar_s const*, dvar_s const*)>(dvar_s const**, dvar_s const**, int, unsigned char (*)(dvar_s const*, dvar_s const*))
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__10
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__150:
	cmp eax, 0x7
	jle _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__10
	sar eax, 0x2
	mov [ebp-0x24], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	lea esi, [eax+edx]
	sar esi, 1
	mov edi, [ebp+0x8]
	lea ebx, [edi+esi*4]
	xor edi, edi
	jmp _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__40:
	add edi, 0x1
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__30:
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov eax, esi
	sub eax, edi
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2_
	sub ebx, 0x4
	cmp edi, esi
	jnz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__40
	mov ecx, [ebp+0xc]
	mov edi, ecx
	sub edi, [ebp+0x8]
	mov [ebp-0x2c], edi
	mov esi, edi
	sub esi, 0x4
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__50:
	lea ebx, [ecx-0x4]
	mov edx, [ecx-0x4]
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [ecx-0x4], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, esi
	sar eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2_
	mov ecx, ebx
	sub esi, 0x4
	mov eax, edi
	sub eax, [ebp+0xc]
	add eax, [ebp-0x2c]
	lea eax, [eax+esi+0x4]
	cmp eax, 0x7
	jg _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__20:
	mov edx, [ebp+0x10]
	mov [ebp-0x1c], edx
	mov dword [ebp-0x20], 0x0
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__140:
	sub dword [ebp-0x1c], 0x1
	mov edx, eax
	sar edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov edi, [ebp+0x8]
	lea ebx, [edi+eax*4]
	sub esi, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__60
	mov edx, [ebp+0xc]
	mov eax, [edx-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__70
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__170:
	mov esi, ebx
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__120:
	mov edi, [esi]
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__110:
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__90:
	sub ebx, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__90
	cmp esi, ebx
	jae _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__100
	mov edx, [esi]
	mov eax, [ebx]
	mov [esi], eax
	mov [ebx], edx
	add esi, 0x4
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__80:
	add esi, 0x4
	jmp _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__110
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__70:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__160:
	mov esi, [ebp+0x8]
	jmp _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__100:
	mov edi, [ebp+0x14]
	mov [esp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__130
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__10
	add dword [ebp-0x20], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp-0x20]
	cmp [ebp+0x10], edx
	jnz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__140
	jmp _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__150
_ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__60:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__160
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__120
	jmp _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1__170


;Initialized global or static variables of dvar:
SECTION .data


;Initialized constant data of dvar:
SECTION .rdata


;Zero initialized global or static variables of dvar:
SECTION .bss
dvarPool: resb 0x4c000
g_dvarCritSect: resb 0x20
dvarHashTable: resb 0x400
dvar_cheats: resb 0x4
isDvarSystemActive: resb 0x1
isLoadingAutoExecGlobalFlag: resb 0x1
areDvarsSorted: resb 0x1a
sortedDvars: resb 0x4000
isSortingDvars: resb 0x40
dvar_modifiedFlags: resb 0x18
dvarCount: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_1:		db "1",0
_cstring_0:		db "0",0
_cstring_g_g_g_g:		db "%g %g %g %g",0
_cstring_s:		db "%s",0
_cstring_i:		db "%i",0
_cstring_g_g_g:		db "%g %g %g",0
_cstring_g_g:		db "%g %g",0
_cstring_g:		db "%g",0
_cstring__g_g_g_:		db "( %g, %g, %g )",0
_cstring_cant_create_dvar:		db "Can",27h,"t create dvar ",27h,"%s",27h,": %i dvars already exist",0
_cstring_null_name_in_gen:		db 015h,"null name in generateHashValue",0
_cstring_domain_is_0_or_1:		db "Domain is 0 or 1",0
_cstring_domain_is_any_4c:		db "Domain is any 4-component color, in RGBA format",0
_cstring_domain_is_any_te:		db "Domain is any text",0
_cstring_domain_is_one_of:		db "Domain is one of the following:",0
_cstring___2i_s:		db 0ah,"  %2i: %s",0
_cstring_domain_is_any_in:		db "Domain is any integer from %i to %i",0
_cstring_domain_is_any_id:		db "Domain is any %iD vector with components %g or smaller",0
_cstring_domain_is_any_nu:		db "Domain is any number %g or smaller",0
_cstring_domain_is_any_nu1:		db "Domain is any number from %g to %g",0
_cstring_domain_is_any_id1:		db "Domain is any %iD vector with components from %g to %g",0
_cstring_domain_is_any_in1:		db "Domain is any integer %i or smaller",0
_cstring_domain_is_any_nu2:		db "Domain is any number",0
_cstring_domain_is_any_id2:		db "Domain is any %iD vector with components %g or bigger",0
_cstring_domain_is_any_id3:		db "Domain is any %iD vector",0
_cstring_domain_is_any_nu3:		db "Domain is any number %g or bigger",0
_cstring_domain_is_any_in2:		db "Domain is any integer %i or bigger",0
_cstring_domain_is_any_in3:		db "Domain is any integer",0
_cstring_s_is_not_a_valid:		db 27h,"%s",27h," is not a valid value for dvar ",27h,"%s",27h,0ah,0
_cstring___s:		db "  %s",0ah,0
_cstring_s_is_not_a_valid1:		db 27h,"%s",27h," is not a valid value for dvar ",27h,"%s",27h,0ah,0ah,0
_cstring_______dvar_set_s:		db "      dvar set %s %s",0ah,0
_cstring_s_will_be_change:		db "%s will be changed upon restarting.",0ah,0
_cstring_s_is_write_prote:		db "%s is write protected.",0ah,0
_cstring_s_is_read_only:		db "%s is read only.",0ah,0
_cstring_s_is_cheat_prote:		db "%s is cheat protected.",0ah,0
_cstring_external_dvar:		db "External Dvar",0
_cstring_s_s:		db "%s ",22h,"%s",22h,0ah,0
_cstring_warning_unknown_:		db "WARNING: unknown dvar ",27h,"%s",27h," in file ",27h,"%s",27h,0ah,0
_cstring_error_the_follow:		db "ERROR: the following dvars were not specified in file ",27h,"%s",27h,0ah,0
_cstring_sv_cheats:		db "sv_cheats",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_float_1_00000000:		dd 0x3f800000	; 1
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_255_00000000:		dd 0x437f0000	; 255
_float__3402823466385288_float__:		dd 0xff7fffff	; -3.40282e+38
_float_34028234663852885_float_3:		dd 0x7f7fffff	; 3.40282e+38
_float_0_00100000:		dd 0x3a83126f	; 0.001

