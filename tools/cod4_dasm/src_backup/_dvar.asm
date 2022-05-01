;Imports of dvar:
	extern _Z9I_stricmpPKcS0_
	extern _Z2vaPKcz
	extern strcmp
	extern CopyStringInternal
	extern iInterlockedCompareExchange
	extern _Z9Sys_Sleepi
	extern sscanf
	extern floorf
	extern atoi
	extern atof
	extern _Z10I_strnicmpPKcS0_i
	extern FreeStringInternal
	extern iInterlockedDecrement
	extern iInterlockedIncrement
	extern _Z9Com_Error11errorParm_tPKcz
	extern tolower
	extern snprintf
	extern _Z15Com_LogFileOpenv
	extern _Z10Com_PrintfiPKcz
	extern _Z16Com_PrintMessageiPKci
	extern _Z10I_strncpyzPcPKci
	extern _Z11Com_sprintfPciPKcz
	extern memset
	extern isalnum
	extern _Z21Com_BeginParseSessionPKc
	extern _Z9Com_ParsePPKc
	extern _Z16Com_PrintWarningiPKcz
	extern _Z18Com_SkipRestOfLinePPKc
	extern _Z19Com_EndParseSessionv
	extern _Z14Com_PrintErroriPKcz
	extern _Z15Com_ParseOnLinePPKc
	extern colorWhite
	extern _Z16Dvar_AddCommandsv
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
	global _Z17Dvar_CompareNamesPK6dvar_sS1_
	global _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	global _Z16Dvar_ValuesEqualh9DvarValueS_
	global _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc
	global _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc
	global _Z9Dvar_Sortv
	global _Z18Dvar_StringToColorPKcPh
	global _Z18Dvar_StringToValueh10DvarLimitsPKc
	global _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue
	global _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits
	global _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue
	global _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	global _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi
	global _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	global _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource
	global _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	global _Z21Dvar_FindMalleableVarPKc
	global _Z10Dvar_ResetPK6dvar_s13DvarSetSource
	global _Z11Dvar_GetIntPKc
	global _Z11Dvar_SetIntPK6dvar_si
	global _Z12Dvar_FindVarPKc
	global _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	global _Z12Dvar_GetBoolPKc
	global _Z12Dvar_SetBoolPK6dvar_sh
	global _Z12Dvar_SetVec3PK6dvar_sfff
	global _Z13Dvar_AddFlagsPK6dvar_si
	global _Z13Dvar_GetFloatPKc
	global _Z13Dvar_SetColorPK6dvar_sffff
	global _Z13Dvar_SetFloatPK6dvar_sf
	global _Z13Dvar_Shutdownv
	global _Z14Dvar_GetStringPKc
	global _Z14Dvar_SetStringPK6dvar_sPKc
	global _Z15Dvar_GetAtIndexi
	global _Z15Dvar_ResetDvarsj13DvarSetSource
	global _Z15Dvar_SetCommandPKcS0_
	global _Z16Dvar_ForEachNamePFvPKcE
	global _Z16Dvar_IsValidNamePKc
	global _Z16Dvar_PrintDomainh10DvarLimits
	global _Z16Dvar_RegisterIntPKciiitS0_
	global _Z16Dvar_SetModifiedPK6dvar_s
	global _Z17Dvar_EnumToStringPK6dvar_s
	global _Z17Dvar_RegisterBoolPKchtS0_
	global _Z17Dvar_RegisterEnumPKcPS0_itS0_
	global _Z17Dvar_RegisterVec2PKcfffftS0_
	global _Z17Dvar_RegisterVec3PKcffffftS0_
	global _Z17Dvar_RegisterVec4PKcfffffftS0_
	global _Z17Dvar_SetIntByNamePKci
	global _Z18Dvar_ClearModifiedPK6dvar_s
	global _Z18Dvar_RegisterColorPKcfffftS0_
	global _Z18Dvar_RegisterFloatPKcffftS0_
	global _Z18Dvar_SetBoolByNamePKch
	global _Z18Dvar_SetCheatStatev
	global _Z18Dvar_SetDomainFuncPK6dvar_sPFhPS_9DvarValueE
	global _Z18Dvar_SetInAutoExech
	global _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits
	global _Z19Dvar_IsSystemActivev
	global _Z19Dvar_RegisterStringPKcS0_tS0_
	global _Z19Dvar_SetFloatByNamePKcf
	global _Z20Dvar_HasLatchedValuePK6dvar_s
	global _Z20Dvar_ResetScriptInfov
	global _Z20Dvar_SetStringByNamePKcS0_
	global _Z21Com_SaveDvarsToBufferPPKcjPcj
	global _Z21Dvar_AnyLatchedValuesv
	global _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
	global _Z21Dvar_DisplayableValuePK6dvar_s
	global _Z21Dvar_GetUnpackedColorPK6dvar_sPf
	global _Z21Dvar_GetVariantStringPKc
	global _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource
	global _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc
	global _Z22Dvar_SetBoolFromSourcePK6dvar_sh13DvarSetSource
	global _Z23Com_LoadDvarsFromBufferPPKcjS0_S0_
	global _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource
	global _Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource
	global _Z24Dvar_SetFromStringByNamePKcS0_
	global _Z26Dvar_DisplayableResetValuePK6dvar_s
	global _Z27Dvar_GetUnpackedColorByNamePKcPf
	global _Z28Dvar_DisplayableLatchedValuePK6dvar_s
	global _Z28Dvar_DomainToString_GetLinesh10DvarLimitsPciPi
	global _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc
	global _Z28Dvar_MakeLatchedValueCurrentPK6dvar_s
	global _Z34Dvar_SetFromStringByNameFromSourcePKcS0_13DvarSetSource
	global _Z9Dvar_Initv
	global _ZSt13__adjust_heapIPPK6dvar_siS2_PFhS2_S2_EEvT_T0_S7_T1_T2_
	global _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0_
	global _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1_
	global dvar_modifiedFlags
	global dvarCount


SECTION .text


;Dvar_CompareNames(dvar_s const*, dvar_s const*)
_Z17Dvar_CompareNamesPK6dvar_sS1_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	shr eax, 0x1f
	leave
	ret
	nop


;Dvar_ValueToString(dvar_s const*, DvarValue)
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	movzx edx, byte [eax+0xa]
	cmp edx, 0x8
	ja _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_10
	jmp dword [edx*4+_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_jumptab_0]
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_90:
	mov ecx, [eax+0x3c]
	test ecx, ecx
	jnz _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_20
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_10:
	mov edx, _cstring_null
	mov eax, edx
	leave
	ret
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_30:
	mov edx, _cstring_1
	cmp byte [ebp+0x8], 0x0
	mov eax, _cstring_0
	cmovz edx, eax
	mov eax, edx
	leave
	ret
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_110:
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
	call _Z2vaPKcz
	mov edx, eax
	mov eax, edx
	leave
	ret
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_100:
	mov eax, [ebp+0x8]
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], _cstring_s
	leave
	jmp _Z2vaPKcz
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_80:
	mov eax, [ebp+0x8]
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], _cstring_i
	leave
	jmp _Z2vaPKcz
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_70:
	cvtss2sd xmm0, [ebp+0x14]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [ebp+0x10]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebp+0x8]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g_g_g_g
	call _Z2vaPKcz
	mov edx, eax
	mov eax, edx
	leave
	ret
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_60:
	cvtss2sd xmm0, [ebp+0x10]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebp+0x8]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g_g_g
	call _Z2vaPKcz
	mov edx, eax
	mov eax, edx
	leave
	ret
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_50:
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebp+0x8]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g_g
	call _Z2vaPKcz
	mov edx, eax
	mov eax, edx
	leave
	ret
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_40:
	cvtss2sd xmm0, [ebp+0x8]
	movsd [ebp+0xc], xmm0
	mov dword [ebp+0x8], _cstring_g
	leave
	jmp _Z2vaPKcz
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_20:
	mov edx, [eax+0x40]
	mov eax, [ebp+0x8]
	mov edx, [edx+eax*4]
	mov eax, edx
	leave
	ret
	
	
_Z18Dvar_ValueToStringPK6dvar_s9DvarValue_jumptab_0:
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_30
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_40
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_50
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_60
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_70
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_80
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_90
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_100
	dd _Z18Dvar_ValueToStringPK6dvar_s9DvarValue_110


;Dvar_ValuesEqual(unsigned char, DvarValue, DvarValue)
_Z16Dvar_ValuesEqualh9DvarValueS_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, al
	cmp eax, 0x8
	ja _Z16Dvar_ValuesEqualh9DvarValueS__10
	jmp dword [eax*4+_Z16Dvar_ValuesEqualh9DvarValueS__jumptab_0]
_Z16Dvar_ValuesEqualh9DvarValueS__80:
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [ebp+0x18]
	jnz _Z16Dvar_ValuesEqualh9DvarValueS__10
	jp _Z16Dvar_ValuesEqualh9DvarValueS__10
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x1c]
	jnz _Z16Dvar_ValuesEqualh9DvarValueS__10
	jp _Z16Dvar_ValuesEqualh9DvarValueS__10
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [ebp+0x20]
	jnz _Z16Dvar_ValuesEqualh9DvarValueS__10
	jp _Z16Dvar_ValuesEqualh9DvarValueS__10
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [ebp+0x24]
	jz _Z16Dvar_ValuesEqualh9DvarValueS__20
_Z16Dvar_ValuesEqualh9DvarValueS__10:
	xor eax, eax
_Z16Dvar_ValuesEqualh9DvarValueS__30:
	leave
	ret
_Z16Dvar_ValuesEqualh9DvarValueS__90:
	mov eax, [ebp+0x8]
	cmp eax, [ebp+0x18]
	setz al
	movzx eax, al
	leave
	ret
_Z16Dvar_ValuesEqualh9DvarValueS__50:
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [ebp+0x18]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	leave
	ret
_Z16Dvar_ValuesEqualh9DvarValueS__70:
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [ebp+0x18]
	jnz _Z16Dvar_ValuesEqualh9DvarValueS__10
	jp _Z16Dvar_ValuesEqualh9DvarValueS__10
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x1c]
	jnz _Z16Dvar_ValuesEqualh9DvarValueS__10
	jp _Z16Dvar_ValuesEqualh9DvarValueS__10
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [ebp+0x20]
	jz _Z16Dvar_ValuesEqualh9DvarValueS__20
	xor eax, eax
	jmp _Z16Dvar_ValuesEqualh9DvarValueS__30
_Z16Dvar_ValuesEqualh9DvarValueS__60:
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [ebp+0x18]
	jnz _Z16Dvar_ValuesEqualh9DvarValueS__10
	jp _Z16Dvar_ValuesEqualh9DvarValueS__10
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x1c]
	jnz _Z16Dvar_ValuesEqualh9DvarValueS__10
_Z16Dvar_ValuesEqualh9DvarValueS__20:
	jp _Z16Dvar_ValuesEqualh9DvarValueS__10
	mov eax, 0x1
	leave
	ret
_Z16Dvar_ValuesEqualh9DvarValueS__40:
	movzx eax, byte [ebp+0x8]
	cmp al, [ebp+0x18]
	setz al
	movzx eax, al
	leave
	ret
_Z16Dvar_ValuesEqualh9DvarValueS__100:
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
	
	
_Z16Dvar_ValuesEqualh9DvarValueS__jumptab_0:
	dd _Z16Dvar_ValuesEqualh9DvarValueS__40
	dd _Z16Dvar_ValuesEqualh9DvarValueS__50
	dd _Z16Dvar_ValuesEqualh9DvarValueS__60
	dd _Z16Dvar_ValuesEqualh9DvarValueS__70
	dd _Z16Dvar_ValuesEqualh9DvarValueS__80
	dd _Z16Dvar_ValuesEqualh9DvarValueS__90
	dd _Z16Dvar_ValuesEqualh9DvarValueS__90
	dd _Z16Dvar_ValuesEqualh9DvarValueS__100
	dd _Z16Dvar_ValuesEqualh9DvarValueS__90


;Dvar_AssignResetStringValue(dvar_s*, DvarValue*, char const*)
_Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc:
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
	jz _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_10
	cmp ebx, ecx
	jz _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_20
	mov [esp+0x4], ebx
	mov [esp], ecx
	call strcmp
	test eax, eax
	jz _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_20
_Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_10:
	mov ebx, [edi+0x1c]
	test ebx, ebx
	jz _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_30
	cmp ebx, esi
	jz _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_40
	mov [esp+0x4], ebx
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_40
_Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_30:
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
_Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_20:
	mov eax, [ebp-0x1c]
	mov [eax], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc_40:
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
_Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc:
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
	jz _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_10
	cmp ebx, ecx
	jz _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_20
	mov [esp+0x4], ebx
	mov [esp], ecx
	call strcmp
	test eax, eax
	jz _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_20
_Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_10:
	mov ebx, [edi+0x2c]
	test ebx, ebx
	jz _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_30
	cmp ebx, esi
	jz _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_40
	mov [esp+0x4], ebx
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_40
_Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_30:
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
_Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_20:
	mov eax, [ebp-0x1c]
	mov [eax], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc_40:
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
_Z9Dvar_Sortv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], isSortingDvars
	call iInterlockedCompareExchange
	test eax, eax
	jnz _Z9Dvar_Sortv_10
	mov eax, [dvarCount]
	lea eax, [eax*4+sortedDvars]
	mov [ebp-0x20], eax
	cmp eax, sortedDvars
	jz _Z9Dvar_Sortv_20
	mov ebx, eax
	sub ebx, sortedDvars
	mov eax, ebx
	sar eax, 0x2
	cmp eax, 0x1
	jz _Z9Dvar_Sortv_30
	xor edx, edx
_Z9Dvar_Sortv_40:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z9Dvar_Sortv_40
	lea eax, [edx+edx]
_Z9Dvar_Sortv_110:
	mov dword [esp+0xc], _Z17Dvar_CompareNamesPK6dvar_sS1_
	mov [esp+0x8], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], sortedDvars
	call _ZSt16__introsort_loopIPPK6dvar_siPFhS2_S2_EEvT_S6_T0_T1_
	cmp ebx, 0x43
	jle _Z9Dvar_Sortv_50
	mov dword [esp+0x8], _Z17Dvar_CompareNamesPK6dvar_sS1_
	mov dword [esp+0x4], sortedDvars+0x40
	mov dword [esp], sortedDvars
	call _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0_
	cmp dword [ebp-0x20], sortedDvars+0x40
	jz _Z9Dvar_Sortv_20
	mov dword [ebp-0x1c], sortedDvars+0x40
_Z9Dvar_Sortv_80:
	mov eax, [ebp-0x1c]
	mov edi, [eax]
	mov ebx, eax
	sub ebx, 0x4
	mov esi, eax
	jmp _Z9Dvar_Sortv_60
_Z9Dvar_Sortv_70:
	mov eax, [ebx]
	mov [esi], eax
	mov esi, ebx
	sub ebx, 0x4
_Z9Dvar_Sortv_60:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z17Dvar_CompareNamesPK6dvar_sS1_
	test al, al
	jnz _Z9Dvar_Sortv_70
	mov [esi], edi
	add dword [ebp-0x1c], 0x4
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jnz _Z9Dvar_Sortv_80
_Z9Dvar_Sortv_20:
	mov byte [areDvarsSorted], 0x1
	mov dword [isSortingDvars], 0x0
_Z9Dvar_Sortv_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9Dvar_Sortv_10:
	mov eax, [isSortingDvars]
	test eax, eax
	jz _Z9Dvar_Sortv_90
_Z9Dvar_Sortv_100:
	mov dword [esp], 0x1
	call _Z9Sys_Sleepi
	mov eax, [isSortingDvars]
	test eax, eax
	jz _Z9Dvar_Sortv_90
	mov dword [esp], 0x1
	call _Z9Sys_Sleepi
	mov eax, [isSortingDvars]
	test eax, eax
	jnz _Z9Dvar_Sortv_100
	jmp _Z9Dvar_Sortv_90
_Z9Dvar_Sortv_50:
	mov dword [esp+0x8], _Z17Dvar_CompareNamesPK6dvar_sS1_
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], sortedDvars
	call _ZSt16__insertion_sortIPPK6dvar_sPFhS2_S2_EEvT_S6_T0_
	jmp _Z9Dvar_Sortv_20
_Z9Dvar_Sortv_30:
	and eax, 0xffffff00
	jmp _Z9Dvar_Sortv_110


;Dvar_StringToColor(char const*, unsigned char*)
_Z18Dvar_StringToColorPKcPh:
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
	jb _Z18Dvar_StringToColorPKcPh_10
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z18Dvar_StringToColorPKcPh_20
_Z18Dvar_StringToColorPKcPh_90:
	movaps xmm0, xmm2
_Z18Dvar_StringToColorPKcPh_100:
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
	jb _Z18Dvar_StringToColorPKcPh_30
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
_Z18Dvar_StringToColorPKcPh_150:
	ucomiss xmm0, xmm2
	jb _Z18Dvar_StringToColorPKcPh_40
	movaps xmm0, xmm2
_Z18Dvar_StringToColorPKcPh_140:
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
	jb _Z18Dvar_StringToColorPKcPh_50
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
_Z18Dvar_StringToColorPKcPh_130:
	ucomiss xmm0, xmm2
	jb _Z18Dvar_StringToColorPKcPh_60
	movaps xmm0, xmm2
_Z18Dvar_StringToColorPKcPh_120:
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
	jb _Z18Dvar_StringToColorPKcPh_70
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb _Z18Dvar_StringToColorPKcPh_80
_Z18Dvar_StringToColorPKcPh_110:
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
_Z18Dvar_StringToColorPKcPh_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jae _Z18Dvar_StringToColorPKcPh_90
_Z18Dvar_StringToColorPKcPh_20:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z18Dvar_StringToColorPKcPh_100
_Z18Dvar_StringToColorPKcPh_70:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z18Dvar_StringToColorPKcPh_110
_Z18Dvar_StringToColorPKcPh_80:
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
_Z18Dvar_StringToColorPKcPh_60:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z18Dvar_StringToColorPKcPh_120
_Z18Dvar_StringToColorPKcPh_50:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	jmp _Z18Dvar_StringToColorPKcPh_130
_Z18Dvar_StringToColorPKcPh_40:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z18Dvar_StringToColorPKcPh_140
_Z18Dvar_StringToColorPKcPh_30:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	jmp _Z18Dvar_StringToColorPKcPh_150


;Dvar_StringToValue(unsigned char, DvarLimits, char const*)
_Z18Dvar_StringToValueh10DvarLimitsPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	movzx eax, dl
	cmp eax, 0x8
	ja _Z18Dvar_StringToValueh10DvarLimitsPKc_10
	jmp dword [eax*4+_Z18Dvar_StringToValueh10DvarLimitsPKc_jumptab_0]
_Z18Dvar_StringToValueh10DvarLimitsPKc_10:
	mov dword [ebx], 0x0
_Z18Dvar_StringToValueh10DvarLimitsPKc_20:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Dvar_StringToValueh10DvarLimitsPKc_150:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call atoi
	test eax, eax
	setnz byte [ebx]
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_230:
	mov edx, ebx
	mov eax, [ebp+0x10]
	call _Z18Dvar_StringToColorPKcPh
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_220:
	mov edx, [ebp+0x10]
	mov [ebx], edx
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_210:
	mov esi, [ebp+0x8]
	mov [ebp-0x20], esi
	test esi, esi
	jg _Z18Dvar_StringToValueh10DvarLimitsPKc_30
_Z18Dvar_StringToValueh10DvarLimitsPKc_120:
	mov edx, [ebp+0x10]
	movzx ecx, byte [edx]
	test cl, cl
	jz _Z18Dvar_StringToValueh10DvarLimitsPKc_40
	lea eax, [ecx-0x30]
	cmp al, 0x9
	ja _Z18Dvar_StringToValueh10DvarLimitsPKc_50
	mov esi, [ebp+0x10]
	xor edi, edi
_Z18Dvar_StringToValueh10DvarLimitsPKc_70:
	lea edx, [edi+edi*4]
	movsx eax, cl
	lea edi, [eax+edx*2-0x30]
	movzx ecx, byte [esi+0x1]
	test cl, cl
	jz _Z18Dvar_StringToValueh10DvarLimitsPKc_60
	add esi, 0x1
	lea eax, [ecx-0x30]
	cmp al, 0x9
	jbe _Z18Dvar_StringToValueh10DvarLimitsPKc_70
_Z18Dvar_StringToValueh10DvarLimitsPKc_50:
	mov edi, 0xfffffac7
_Z18Dvar_StringToValueh10DvarLimitsPKc_90:
	mov [ebx], edi
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_200:
	mov edx, [ebp+0x10]
	mov [esp], edx
	call atoi
	mov [ebx], eax
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_190:
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
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_180:
	xor eax, eax
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	mov edx, [ebp+0x10]
	cmp byte [edx], 0x28
	jz _Z18Dvar_StringToValueh10DvarLimitsPKc_80
	lea eax, [ebx+0x8]
	mov [esp+0x10], eax
	lea eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_g_g_g
	mov [esp], edx
	call sscanf
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_170:
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
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_160:
	mov esi, [ebp+0x10]
	mov [esp], esi
	call atof
	fstp qword [ebp-0x28]
	cvtsd2ss xmm0, [ebp-0x28]
	movss [ebx], xmm0
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_40:
	xor edi, edi
_Z18Dvar_StringToValueh10DvarLimitsPKc_140:
	cmp [ebp-0x20], edi
	jg _Z18Dvar_StringToValueh10DvarLimitsPKc_90
_Z18Dvar_StringToValueh10DvarLimitsPKc_130:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x10]
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jle _Z18Dvar_StringToValueh10DvarLimitsPKc_50
	mov edi, [ebp+0xc]
	mov [ebp-0x1c], edi
	xor edi, edi
_Z18Dvar_StringToValueh10DvarLimitsPKc_100:
	mov [esp+0x8], esi
	mov edx, [ebp-0x1c]
	mov eax, [edx+edi*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z18Dvar_StringToValueh10DvarLimitsPKc_90
	add edi, 0x1
	cmp [ebp-0x20], edi
	jnz _Z18Dvar_StringToValueh10DvarLimitsPKc_100
	mov edi, 0xfffffac7
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_90
_Z18Dvar_StringToValueh10DvarLimitsPKc_30:
	mov esi, [ebp+0xc]
	xor edi, edi
_Z18Dvar_StringToValueh10DvarLimitsPKc_110:
	mov eax, [esi+edi*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18Dvar_StringToValueh10DvarLimitsPKc_90
	add edi, 0x1
	cmp [ebp-0x20], edi
	jnz _Z18Dvar_StringToValueh10DvarLimitsPKc_110
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_120
_Z18Dvar_StringToValueh10DvarLimitsPKc_80:
	lea eax, [ebx+0x8]
	mov [esp+0x10], eax
	lea eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring__g_g_g_
	mov [esp], edx
	call sscanf
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_20
_Z18Dvar_StringToValueh10DvarLimitsPKc_60:
	test edi, edi
	js _Z18Dvar_StringToValueh10DvarLimitsPKc_130
	jmp _Z18Dvar_StringToValueh10DvarLimitsPKc_140
	
	
_Z18Dvar_StringToValueh10DvarLimitsPKc_jumptab_0:
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_150
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_160
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_170
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_180
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_190
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_200
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_210
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_220
	dd _Z18Dvar_StringToValueh10DvarLimitsPKc_230


;Dvar_UpdateResetValue(dvar_s*, DvarValue)
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, eax
	movzx eax, byte [eax+0xa]
	cmp al, 0x3
	jz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_10
	ja _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_20
	cmp al, 0x2
	jz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_30
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_50:
	mov eax, [ebp+0x8]
	mov [esi+0x2c], eax
	mov eax, [ebp+0xc]
	mov [esi+0x30], eax
	mov eax, [ebp+0x10]
	mov [esi+0x34], eax
	mov eax, [ebp+0x14]
	mov [esi+0x38], eax
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_60:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_20:
	cmp al, 0x4
	jz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_40
	cmp al, 0x7
	jnz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_50
	mov eax, [esi+0x2c]
	mov ecx, [ebp+0x8]
	cmp eax, ecx
	jz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_60
	test eax, eax
	jz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_70
	cmp eax, [esi+0xc]
	jz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_70
	cmp eax, [esi+0x1c]
	jz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_70
	mov edx, 0x1
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_80:
	mov ebx, edx
	test dl, dl
	cmovz eax, [ebp-0x28]
	mov [ebp-0x28], eax
	lea edx, [ebp-0x18]
	mov eax, esi
	call _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc
	mov eax, [ebp-0x18]
	mov [esi+0x2c], eax
	test bl, bl
	jz _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_60
	mov eax, [ebp-0x28]
	mov [esp], eax
	call FreeStringInternal
	jmp _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_60
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_10:
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
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_40:
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
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_30:
	mov eax, [ebp+0x8]
	mov [esi+0x2c], eax
	mov eax, [ebp+0xc]
	mov [esi+0x30], eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_70:
	xor edx, edx
	jmp _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue_80


;Dvar_MakeExplicitType(dvar_s*, char const*, unsigned char, unsigned short, DvarValue, DvarLimits)
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits:
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
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_10
	test al, al
	jns _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_20
	mov eax, [dvar_cheats]
	test eax, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_20
	cmp byte [eax+0xc], 0x0
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_10
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_20:
	mov esi, [edi+0xc]
	mov ecx, [edi+0x3c]
	mov ebx, [edi+0x40]
	lea eax, [ebp-0xb8]
	movzx edx, byte [edi+0xa]
	mov [esp+0x8], esi
	mov [esp], ecx
	mov [esp+0x4], ebx
	call _Z18Dvar_StringToValueh10DvarLimitsPKc
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
	jbe _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_30
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_370:
	mov ebx, [ebp-0xc4]
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300:
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
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_40
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_150:
	mov byte [ebp-0xb9], 0x0
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_170:
	mov eax, [edi+0xc]
	test eax, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_50
	cmp eax, [edi+0x1c]
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_50
	cmp eax, [edi+0x2c]
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_50
	mov edx, 0x1
	test edx, edx
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_60
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_220:
	mov dword [edi+0xc], 0x0
	mov eax, [edi+0x1c]
	test eax, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_70
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_180:
	cmp eax, [edi+0x2c]
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_70
	mov edx, 0x1
	test edx, edx
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_80
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_190:
	mov dword [edi+0x1c], 0x0
	mov eax, [edi+0x2c]
	test eax, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_90
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_200:
	cmp eax, [edi+0xc]
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_90
	mov edx, 0x1
	test edx, edx
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_100
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_210:
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
	call _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue
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
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_110
	ja _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_120
	cmp al, 0x2
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_130
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_240:
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
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_250:
	mov eax, [ebp-0xc0]
	or [dvar_modifiedFlags], eax
	cmp byte [ebp-0xb9], 0x0
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_140
	mov eax, [ebp-0x68]
	mov [esp], eax
	call FreeStringInternal
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_140:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_10:
	mov eax, [ebp+0xc]
	mov [ebp-0x68], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x64], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x60], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x5c], eax
	cmp byte [edi+0xa], 0x7
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_150
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_40:
	mov eax, [ebp-0x68]
	test eax, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_160
	mov [esp], eax
	call CopyStringInternal
	mov [ebp-0x68], eax
	mov byte [ebp-0xb9], 0x1
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_290:
	cmp byte [edi+0xa], 0x7
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_170
	mov dword [edi+0xc], 0x0
	mov eax, [edi+0x1c]
	test eax, eax
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_180
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_70:
	xor edx, edx
	test edx, edx
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_190
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_80:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x1c], 0x0
	mov dword [edi+0x1c], 0x0
	mov eax, [edi+0x2c]
	test eax, eax
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_200
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_90:
	xor edx, edx
	test edx, edx
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_210
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_100:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x2c], 0x0
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_210
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_50:
	xor edx, edx
	test edx, edx
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_220
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_60:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0xc], 0x0
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_220
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_120:
	cmp al, 0x4
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_230
	cmp al, 0x7
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_240
	mov eax, [edi+0xc]
	cmp ebx, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_250
	test eax, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_260
	cmp eax, [edi+0x1c]
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_260
	cmp eax, [edi+0x2c]
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_260
	mov edx, 0x1
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_410:
	mov esi, edx
	test dl, dl
	cmovz eax, [ebp-0x78]
	mov [ebp-0x78], eax
	lea edx, [ebp-0x98]
	mov ecx, ebx
	mov eax, edi
	call _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc
	mov edx, [ebp-0x98]
	mov [edi+0xc], edx
	mov eax, [edi+0x1c]
	test eax, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_270
	cmp edx, eax
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_270
	cmp eax, [edi+0x2c]
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_270
	mov edx, 0x1
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_440:
	test edx, edx
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_280
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_460:
	mov eax, [edi+0xc]
	mov [edi+0x1c], eax
	mov edx, esi
	test dl, dl
	jz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_250
	mov eax, [ebp-0x78]
	mov [esp], eax
	call FreeStringInternal
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_250
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_110:
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
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_250
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_30:
	jmp dword [eax*4+_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_jumptab_0]
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_130:
	mov edx, [ebp-0x88]
	mov [edi+0xc], edx
	mov eax, [ebp-0x84]
	mov [edi+0x10], eax
	mov [edi+0x1c], edx
	mov [edi+0x20], eax
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_250
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_230:
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
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_250
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_160:
	mov byte [ebp-0xb9], 0x0
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_290
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_480:
	cmp byte [ebp-0x88], 0x0
	setnz byte [ebp-0x88]
	mov ebx, [ebp-0x88]
	mov [ebp-0xc4], ebx
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_510:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	mov edx, 0x1
	lea eax, [ebp-0x84]
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_320:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_310
	movss [eax-0x4], xmm1
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_430:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_320
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_470:
	mov ecx, [ebp-0x88]
	mov [ebp-0xc4], ecx
	mov ebx, ecx
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_520:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	mov edx, 0x1
	lea eax, [ebp-0x84]
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_340:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_330
	movss [eax-0x4], xmm1
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_420:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x5
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_340
	mov ebx, [ebp-0x88]
	mov [ebp-0xc4], ebx
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_530:
	mov esi, [ebp-0x88]
	mov [ebp-0xc4], esi
	mov eax, [ebp+0x1c]
	cmp esi, eax
	jge _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_350
	mov [ebp-0xc4], eax
	mov [ebp-0x88], eax
	mov ebx, eax
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_540:
	mov esi, [ebp-0x88]
	mov [ebp-0xc4], esi
	test esi, esi
	js _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_360
	mov eax, [ebp+0x1c]
	cmp esi, eax
	jl _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_370
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_360:
	mov edx, [ebp-0x78]
	mov [ebp-0xc4], edx
	mov [ebp-0x88], edx
	mov ebx, edx
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_490:
	movss xmm0, dword [ebp-0x88]
	ucomiss xmm0, [ebp+0x1c]
	jae _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_380
	jp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_380
	fld dword [ebp+0x1c]
	fstp dword [ebp-0x88]
	mov eax, [ebp-0x88]
	mov [ebp-0xc4], eax
	mov ebx, eax
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_500:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	mov edx, 0x1
	lea eax, [ebp-0x84]
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_400:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_390
	movss [eax-0x4], xmm1
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_450:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_400
	mov edx, [ebp-0x88]
	mov [ebp-0xc4], edx
	mov ebx, edx
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_260:
	xor edx, edx
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_410
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_330:
	ucomiss xmm0, xmm2
	jbe _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_420
	movss [eax-0x4], xmm2
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_420
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_310:
	ucomiss xmm0, xmm2
	jbe _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_430
	movss [eax-0x4], xmm2
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_430
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_270:
	xor edx, edx
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_440
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_390:
	ucomiss xmm0, xmm2
	jbe _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_450
	movss [eax-0x4], xmm2
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_450
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_280:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x1c], 0x0
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_460
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_380:
	ucomiss xmm0, [ebp+0x20]
	jbe _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_470
	fld dword [ebp+0x20]
	fstp dword [ebp-0x88]
	mov eax, [ebp-0x88]
	mov [ebp-0xc4], eax
	mov ebx, eax
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_350:
	mov ebx, [ebp+0x20]
	cmp [ebp-0xc4], ebx
	jle _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_370
	mov [ebp-0xc4], ebx
	mov [ebp-0x88], ebx
	jmp _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_300
	
	
_Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_jumptab_0:
	dd _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_480
	dd _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_490
	dd _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_500
	dd _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_510
	dd _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_520
	dd _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_530
	dd _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits_540


;Dvar_SetLatchedValue(dvar_s*, DvarValue)
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	movzx eax, byte [eax+0xa]
	cmp al, 0x3
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_10
	ja _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_20
	cmp al, 0x2
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_30
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_50:
	mov eax, [ebp+0x8]
	mov [ebx+0x1c], eax
	mov eax, [ebp+0xc]
	mov [ebx+0x20], eax
	mov eax, [ebp+0x10]
	mov [ebx+0x24], eax
	mov eax, [ebp+0x14]
	mov [ebx+0x28], eax
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_60:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_20:
	cmp al, 0x4
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_40
	cmp al, 0x7
	jnz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_50
	mov eax, [ebx+0x1c]
	mov edi, [ebp+0x8]
	cmp eax, edi
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_60
	test eax, eax
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_70
	cmp eax, [ebx+0xc]
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_70
	cmp eax, [ebx+0x2c]
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_70
	mov edx, 0x1
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_110:
	mov [ebp-0x39], dl
	test dl, dl
	cmovz eax, [ebp-0x38]
	mov [ebp-0x38], eax
	mov esi, [ebx+0xc]
	test esi, esi
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_80
	cmp edi, esi
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_90
	mov [esp+0x4], esi
	mov [esp], edi
	call strcmp
	test eax, eax
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_90
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_80:
	mov esi, [ebx+0x2c]
	test esi, esi
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_100
	cmp edi, esi
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_90
	mov [esp+0x4], esi
	mov [esp], edi
	call strcmp
	test eax, eax
	jnz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_100
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_90:
	mov [ebp-0x28], esi
	mov eax, esi
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_120:
	mov [ebx+0x1c], eax
	cmp byte [ebp-0x39], 0x0
	jz _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_60
	mov eax, [ebp-0x38]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp FreeStringInternal
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_10:
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
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_40:
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
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_30:
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
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_70:
	xor edx, edx
	jmp _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_110
_Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_100:
	mov [esp], edi
	call CopyStringInternal
	mov [ebp-0x28], eax
	jmp _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue_120
	nop


;Dvar_RegisterNew(char const*, unsigned char, unsigned short, DvarValue, DvarLimits, char const*)
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov edi, edx
	mov [ebp-0x1e], cx
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__10
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__30:
	mov dword [esp], g_dvarCritSect+0x4
	call iInterlockedDecrement
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__20:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__10:
	mov eax, [g_dvarCritSect]
	test eax, eax
	jnz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__20
	mov dword [esp], g_dvarCritSect+0x4
	call iInterlockedIncrement
	sub eax, 0x1
	jnz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__30
	mov eax, [g_dvarCritSect]
	test eax, eax
	jnz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__30
	cmp dword [dvarCount], 0xfff
	jg _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__40
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__150:
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
	jnz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__50
	mov edx, [ebp-0x1c]
	mov [ebx+dvarPool], edx
	mov eax, edi
	cmp al, 0x3
	jz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__60
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__140:
	ja _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__70
	cmp al, 0x2
	jz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__80
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__120:
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
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__130:
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
	jz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__90
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__170:
	mov edx, [ebp-0x1c]
	movzx eax, byte [edx]
	test al, al
	jnz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__100
	xor edx, edx
	mov eax, [edx*4+dvarHashTable]
	mov [esi+0x48], eax
	mov [edx*4+dvarHashTable], esi
	mov dword [esp], g_dvarCritSect+0x4
	call iInterlockedDecrement
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__70:
	mov eax, edi
	cmp al, 0x4
	jz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__110
	cmp al, 0x7
	jnz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__120
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CopyStringInternal
	mov [esi+0xc], eax
	mov [esi+0x1c], eax
	mov [esi+0x2c], eax
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__130
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CopyStringInternal
	mov [ebx+dvarPool], eax
	mov eax, edi
	cmp al, 0x3
	jnz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__140
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__60:
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
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__130
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__40:
	mov dword [esp], g_dvarCritSect+0x4
	call iInterlockedDecrement
	mov dword [esp+0xc], 0x1000
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_create_dvar
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__150
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__100:
	xor ebx, ebx
	xor edi, edi
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__160:
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
	jnz _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__160
	mov edx, edi
	and edx, 0xff
	mov eax, [edx*4+dvarHashTable]
	mov [esi+0x48], eax
	mov [edx*4+dvarHashTable], esi
	mov dword [esp], g_dvarCritSect+0x4
	call iInterlockedDecrement
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__110:
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
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__130
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__80:
	mov edx, [ebp+0x8]
	mov [esi+0xc], edx
	mov eax, [ebp+0xc]
	mov [esi+0x10], eax
	mov [esi+0x1c], edx
	mov [esi+0x20], eax
	mov [esi+0x2c], edx
	mov [esi+0x30], eax
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__130
_Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__90:
	mov dword [esp+0x4], _cstring_null_name_in_gen
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0__170


;Dvar_DomainToString_Internal(unsigned char, DvarLimits, char*, int, int*)
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi:
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
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_10
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_10:
	movzx eax, al
	cmp eax, 0x8
	ja _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_20
	jmp dword [eax*4+_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_jumptab_0]
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_20:
	mov byte [edi], 0x0
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30:
	mov eax, [ebp-0x20]
	mov byte [eax-0x1], 0x0
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_300:
	mov dword [esp+0x8], _cstring_domain_is_0_or_1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_380:
	mov dword [esp+0x8], _cstring_domain_is_any_4c
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_370:
	mov dword [esp+0x8], _cstring_domain_is_any_te
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_360:
	mov dword [esp+0x8], _cstring_domain_is_one_of
	mov eax, [ebp-0x20]
	sub eax, edi
	mov [esp+0x4], eax
	mov [esp], edi
	call snprintf
	test eax, eax
	js _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
	lea eax, [edi+eax]
	mov [ebp-0x1c], eax
	mov [ebp-0x24], ebx
	test ebx, ebx
	jle _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_40
	xor ebx, ebx
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_50:
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
	js _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
	add [ebp-0x1c], eax
	add ebx, 0x1
	cmp [ebp-0x24], ebx
	jnz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_50
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_350:
	cmp ebx, 0x80000000
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_60
	cmp esi, 0x7fffffff
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_70
	mov [esp+0x10], esi
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_domain_is_any_in
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_340:
	mov [ebp-0x2c], ebx
	movss xmm2, dword [ebp-0x2c]
	movaps xmm0, xmm2
	ucomiss xmm2, [_float__340282346638528859811704]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_80
	jnz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_80
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_3402823466385288598117041]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_90
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_100
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_90:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], _cstring_domain_is_any_id
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_330:
	mov [ebp-0x2c], ebx
	movss xmm2, dword [ebp-0x2c]
	movaps xmm0, xmm2
	ucomiss xmm2, [_float__340282346638528859811704]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_110
	jnz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_110
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_3402823466385288598117041]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_120
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_130
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_120:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], _cstring_domain_is_any_id
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_320:
	mov [ebp-0x2c], ebx
	movss xmm2, dword [ebp-0x2c]
	movaps xmm0, xmm2
	ucomiss xmm2, [_float__340282346638528859811704]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_140
	jnz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_140
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_3402823466385288598117041]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_150
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_160
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_150:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_domain_is_any_id
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_310:
	mov [ebp-0x2c], ebx
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float__340282346638528859811704]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_170
	jnz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_170
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_3402823466385288598117041]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_180
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_190
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_180:
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_domain_is_any_nu
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_170:
	mov [ebp-0x2c], esi
	movss xmm2, dword [ebp-0x2c]
	movaps xmm1, xmm2
	ucomiss xmm2, [_float_3402823466385288598117041]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_200
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_210
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_200:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x14], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_domain_is_any_nu1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_140:
	mov [ebp-0x2c], esi
	movss xmm2, dword [ebp-0x2c]
	movaps xmm1, xmm2
	ucomiss xmm2, [_float_3402823466385288598117041]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_220
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_230
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_220:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x18], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_domain_is_any_id1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_110:
	mov [ebp-0x2c], esi
	movss xmm2, dword [ebp-0x2c]
	movaps xmm1, xmm2
	ucomiss xmm2, [_float_3402823466385288598117041]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_240
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_250
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_240:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x18], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], _cstring_domain_is_any_id1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_80:
	mov [ebp-0x2c], esi
	movss xmm2, dword [ebp-0x2c]
	movaps xmm1, xmm2
	ucomiss xmm2, [_float_3402823466385288598117041]
	jp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_260
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_270
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_260:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x18], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], _cstring_domain_is_any_id1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_60:
	cmp esi, 0x7fffffff
	jz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_280
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_domain_is_any_in1
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_190:
	mov dword [esp+0x8], _cstring_domain_is_any_nu2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_270:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], _cstring_domain_is_any_id2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_100:
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], _cstring_domain_is_any_id3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_250:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], _cstring_domain_is_any_id2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_130:
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], _cstring_domain_is_any_id3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_230:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x10], xmm0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_domain_is_any_id2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_160:
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_domain_is_any_id3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_210:
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_domain_is_any_nu3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_70:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_domain_is_any_in2
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_280:
	mov dword [esp+0x8], _cstring_domain_is_any_in3
	mov [esp+0x4], edx
	mov [esp], edi
	call snprintf
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_40:
	xor ebx, ebx
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_290:
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
	js _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
	mov edx, [ebp+0x10]
	add dword [edx], 0x1
	add [ebp-0x1c], eax
	add ebx, 0x1
	cmp ebx, [ebp-0x24]
	jnz _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_290
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_30
	nop
	
	
_Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_jumptab_0:
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_300
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_310
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_320
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_330
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_340
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_350
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_360
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_370
	dd _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi_380


;Dvar_SetVariant(dvar_s*, DvarValue, DvarSetSource)
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource:
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_290:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x53c
	mov edi, eax
	call _Z15Com_LogFileOpenv
	test al, al
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_10
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_190:
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
	ja _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_20
	jmp dword [eax*4+_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_jumptab_0]
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_370:
	movss xmm0, dword [ebp-0x4f8]
	mov [ebp-0x51c], ecx
	movss xmm1, dword [ebp-0x51c]
	ucomiss xmm1, xmm0
	ja _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_20
	mov [ebp-0x51c], ebx
	movss xmm1, dword [ebp-0x51c]
	ucomiss xmm0, xmm1
	jbe _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_30
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_20:
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_a_valid
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov ecx, [edi+0x3c]
	mov ebx, [edi+0x40]
	movzx eax, byte [edi+0xa]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x4f8]
	mov [esp], edx
	mov edx, ecx
	mov ecx, ebx
	call _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	cmp byte [edi+0xa], 0x6
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_40
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_80:
	add esp, 0x53c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_380:
	mov [ebp-0x51c], ebx
	movss xmm0, dword [ebp-0x51c]
	movaps xmm2, xmm0
	mov [ebp-0x51c], ecx
	movss xmm0, dword [ebp-0x51c]
	movaps xmm1, xmm0
	mov eax, 0x1
	lea edx, [ebp-0x4f8]
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_60:
	movss xmm0, dword [edx+eax*4-0x4]
	ucomiss xmm1, xmm0
	ja _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_50
	ucomiss xmm0, xmm2
	ja _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_50
	add eax, 0x1
	cmp eax, 0x3
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_60
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_270:
	mov eax, 0x1
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_250:
	test al, al
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_20
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_30:
	mov eax, [edi+0x44]
	test eax, eax
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_70
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
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_70
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_a_valid1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_80
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_70:
	mov eax, [ebp+0x18]
	sub eax, 0x1
	cmp eax, 0x1
	jbe _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_90
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_230:
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
	call _Z16Dvar_ValuesEqualh9DvarValueS_
	test eax, eax
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_100
	movzx eax, word [edi+0x8]
	or [dvar_modifiedFlags], eax
	movzx eax, byte [edi+0xa]
	cmp al, 0x3
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_110
	jbe _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_120
	cmp al, 0x4
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_130
	cmp al, 0x7
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_140
	mov eax, [edi+0xc]
	test eax, eax
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_150
	cmp eax, [edi+0x1c]
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_150
	cmp eax, [edi+0x2c]
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_150
	mov edx, 0x1
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_340:
	mov ebx, edx
	test dl, dl
	cmovz eax, [ebp-0xe8]
	mov [ebp-0xe8], eax
	lea edx, [ebp-0xf8]
	mov ecx, [ebp+0x8]
	mov eax, edi
	call _Z29Dvar_AssignCurrentStringValueP6dvar_sP9DvarValuePKc
	mov edx, [ebp-0xf8]
	mov [edi+0xc], edx
	mov eax, [edi+0x1c]
	test eax, eax
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_160
	cmp edx, eax
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_160
	cmp eax, [edi+0x2c]
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_160
	mov edx, 0x1
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_350:
	test edx, edx
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_170
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_360:
	mov eax, [edi+0xc]
	mov [edi+0x1c], eax
	test bl, bl
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_180
	mov eax, [ebp-0xe8]
	mov [esp], eax
	call FreeStringInternal
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_180:
	mov byte [edi+0xb], 0x1
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_320:
	add esp, 0x53c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_10:
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	mov [esp+0x8], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_______dvar_set_s
	call _Z2vaPKcz
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call _Z16Com_PrintMessageiPKci
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_190
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_90:
	movzx edx, word [edi+0x8]
	test dl, 0x40
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_200
	test dl, 0x10
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_210
	cmp dword [ebp+0x18], 0x1
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_220
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_330:
	and dl, 0x20
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_230
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
	call _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue
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
	call _Z16Dvar_ValuesEqualh9DvarValueS_
	test eax, eax
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_80
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_will_be_change
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_80
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_420:
	mov eax, [ebp-0x4f8]
	test eax, eax
	js _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_240
	cmp eax, ecx
	jge _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_240
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_300:
	mov eax, 0x1
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_250
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_410:
	mov eax, [ebp-0x4f8]
	cmp eax, ecx
	jl _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_20
	cmp eax, ebx
	jg _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_20
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_30
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_400:
	mov [ebp-0x51c], ebx
	movss xmm1, dword [ebp-0x51c]
	movaps xmm2, xmm1
	mov [ebp-0x51c], ecx
	movss xmm0, dword [ebp-0x51c]
	movaps xmm1, xmm0
	mov eax, 0x1
	lea edx, [ebp-0x4f8]
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_260:
	movss xmm0, dword [edx+eax*4-0x4]
	ucomiss xmm1, xmm0
	ja _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_50
	ucomiss xmm0, xmm2
	ja _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_50
	add eax, 0x1
	cmp eax, 0x5
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_260
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_270
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_390:
	mov [ebp-0x51c], ebx
	movss xmm1, dword [ebp-0x51c]
	movaps xmm2, xmm1
	mov [ebp-0x51c], ecx
	movss xmm0, dword [ebp-0x51c]
	movaps xmm1, xmm0
	mov eax, 0x1
	lea edx, [ebp-0x4f8]
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_280:
	movss xmm0, dword [edx+eax*4-0x4]
	ucomiss xmm1, xmm0
	ja _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_50
	ucomiss xmm0, xmm2
	ja _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_50
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_280
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_270
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_40:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_290
	add esp, 0x53c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_240:
	test eax, eax
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_300
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_50:
	xor eax, eax
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_250
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_100:
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
	call _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_80
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_120:
	cmp al, 0x2
	jz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_310
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_140:
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
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_320
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_210:
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_write_prote
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_80
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_110:
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
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_320
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_200:
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_read_only
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_80
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_220:
	test dl, dl
	jns _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_330
	mov eax, [dvar_cheats]
	cmp byte [eax+0xc], 0x0
	jnz _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_330
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_cheat_prote
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_80
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_310:
	mov edx, [ebp+0x8]
	mov [edi+0xc], edx
	mov eax, [ebp+0xc]
	mov [edi+0x10], eax
	mov [edi+0x1c], edx
	mov [edi+0x20], eax
	mov byte [edi+0xb], 0x1
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_320
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_130:
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
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_320
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_150:
	xor edx, edx
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_340
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_160:
	xor edx, edx
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_350
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_170:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x1c], 0x0
	jmp _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_360
	
	
_Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_jumptab_0:
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_30
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_370
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_380
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_390
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_400
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_410
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_420
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_30
	dd _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource_30


;Dvar_SetFromStringFromSource(dvar_s const*, char const*, DvarSetSource)
_Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource:
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
	call _Z10I_strncpyzPcPKci
	mov ecx, [esi+0x3c]
	mov ebx, [esi+0x40]
	lea eax, [ebp-0x848]
	movzx edx, byte [esi+0xa]
	mov [esp+0x8], edi
	mov [esp], ecx
	mov [esp+0x4], ebx
	call _Z18Dvar_StringToValueh10DvarLimitsPKc
	mov eax, [ebp-0x848]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x844]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x840]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x83c]
	mov [ebp-0x2c], eax
	cmp byte [esi+0xa], 0x6
	jz _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource_10
_Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource_30:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x86c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource_10:
	cmp dword [ebp-0x38], 0xfffffac7
	jz _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource_20
	mov eax, [ebp-0x2c]
	jmp _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource_30
_Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource_20:
	mov eax, [esi]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_s_is_not_a_valid
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov ecx, [esi+0x3c]
	mov ebx, [esi+0x40]
	movzx eax, byte [esi+0xa]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x838]
	mov [esp], edx
	mov edx, ecx
	mov ecx, ebx
	call _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [esi+0x2c]
	mov [ebp-0x38], eax
	mov eax, [esi+0x30]
	mov [ebp-0x34], eax
	mov eax, [esi+0x34]
	mov [ebp-0x30], eax
	mov eax, [esi+0x38]
	mov [ebp-0x2c], eax
	jmp _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource_30
	nop
	add [eax], al


;Dvar_Reregister(dvar_s*, char const*, unsigned char, unsigned short, DvarValue, DvarLimits, char const*)
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_:
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
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__10
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
	jnz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__20
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__10:
	and dh, 0x40
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__30
	movzx edx, byte [ebp-0xf1]
	cmp [edi+0xa], dl
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__30
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
	call _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__30:
	movzx edx, word [ebp-0xf4]
	or [edi+0x8], dx
	mov esi, [ebp+0x24]
	test esi, esi
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__40
	mov ecx, [ebp+0x24]
	mov [edi+0x4], ecx
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__40:
	cmp byte [edi+0x8], 0x0
	jns _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__50
	mov eax, [dvar_cheats]
	test eax, eax
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__50
	cmp byte [eax+0xc], 0x0
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__60
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__50:
	test byte [edi+0x8], 0x20
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__70
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__70:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__20:
	movzx eax, word [ebp-0xec]
	mov [ebp-0xfc], eax
	test ah, 0x40
	jnz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__10
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
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__80
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	mov [esp], eax
	call CopyStringInternal
	mov [edi+0xc], eax
	mov eax, [edi+0x1c]
	test eax, eax
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__90
	cmp eax, [edi+0xc]
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__90
	cmp eax, [edi+0x2c]
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__90
	mov edx, 0x1
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__130:
	test edx, edx
	jnz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__100
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__160:
	mov eax, [edi+0xc]
	mov [edi+0x1c], eax
	mov eax, [edi+0x2c]
	test eax, eax
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__110
	cmp eax, [edi+0xc]
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__110
	jz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__110
	mov edx, 0x1
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__140:
	test edx, edx
	jnz _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__120
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__150:
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	mov ecx, eax
	lea edx, [ebp-0xd8]
	mov eax, edi
	call _Z27Dvar_AssignResetStringValueP6dvar_sP9DvarValuePKc
	mov eax, [ebp-0xd8]
	mov [edi+0x2c], eax
	mov byte [edi+0xa], 0x7
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__80:
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
	call _Z21Dvar_MakeExplicitTypeP6dvar_sPKcht9DvarValue10DvarLimits
	movzx edx, word [edi+0x8]
	jmp _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__10
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__60:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
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
	call _Z20Dvar_SetLatchedValueP6dvar_s9DvarValue
	jmp _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__50
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__90:
	xor edx, edx
	jmp _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__130
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__110:
	xor edx, edx
	jmp _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__140
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__120:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x2c], 0x0
	jmp _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__150
_Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__100:
	mov [esp], eax
	call FreeStringInternal
	mov dword [edi+0x1c], 0x0
	jmp _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2__160
	nop


;Dvar_FindMalleableVar(char const*)
_Z21Dvar_FindMalleableVarPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov dword [esp], g_dvarCritSect
	call iInterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z21Dvar_FindMalleableVarPKc_10
_Z21Dvar_FindMalleableVarPKc_70:
	test edi, edi
	jz _Z21Dvar_FindMalleableVarPKc_20
_Z21Dvar_FindMalleableVarPKc_100:
	movzx eax, byte [edi]
	test al, al
	jnz _Z21Dvar_FindMalleableVarPKc_30
	xor eax, eax
_Z21Dvar_FindMalleableVarPKc_90:
	mov ebx, [eax*4+dvarHashTable]
	test ebx, ebx
	jz _Z21Dvar_FindMalleableVarPKc_40
_Z21Dvar_FindMalleableVarPKc_60:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21Dvar_FindMalleableVarPKc_50
	mov ebx, [ebx+0x48]
	test ebx, ebx
	jnz _Z21Dvar_FindMalleableVarPKc_60
_Z21Dvar_FindMalleableVarPKc_40:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Dvar_FindMalleableVarPKc_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz _Z21Dvar_FindMalleableVarPKc_70
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z21Dvar_FindMalleableVarPKc_10
	jmp _Z21Dvar_FindMalleableVarPKc_70
_Z21Dvar_FindMalleableVarPKc_50:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Dvar_FindMalleableVarPKc_30:
	xor esi, esi
	mov dword [ebp-0x1c], 0x0
_Z21Dvar_FindMalleableVarPKc_80:
	lea ebx, [esi+0x77]
	movsx eax, al
	mov [esp], eax
	call tolower
	imul ebx, eax
	add [ebp-0x1c], ebx
	add esi, 0x1
	movzx eax, byte [edi+esi]
	test al, al
	jnz _Z21Dvar_FindMalleableVarPKc_80
	movzx eax, byte [ebp-0x1c]
	jmp _Z21Dvar_FindMalleableVarPKc_90
_Z21Dvar_FindMalleableVarPKc_20:
	mov dword [esp+0x4], _cstring_null_name_in_gen
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21Dvar_FindMalleableVarPKc_100
	nop


;Dvar_Reset(dvar_s const*, DvarSetSource)
_Z10Dvar_ResetPK6dvar_s13DvarSetSource:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_GetInt(char const*)
_Z11Dvar_GetIntPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	call _Z21Dvar_FindMalleableVarPKc
	mov edx, eax
	test eax, eax
	jz _Z11Dvar_GetIntPKc_10
	movzx eax, byte [eax+0xa]
	sub al, 0x5
	cmp al, 0x1
	jbe _Z11Dvar_GetIntPKc_20
	mov eax, [edx+0xc]
	mov [ebp+0x8], eax
	leave
	jmp atoi
_Z11Dvar_GetIntPKc_20:
	mov eax, [edx+0xc]
	leave
	ret
_Z11Dvar_GetIntPKc_10:
	xor eax, eax
	leave
	ret
	nop


;Dvar_SetInt(dvar_s const*, int)
_Z11Dvar_SetIntPK6dvar_si:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, [ebp+0x8]
	movzx eax, byte [esi+0xa]
	sub al, 0x5
	cmp al, 0x1
	jbe _Z11Dvar_SetIntPK6dvar_si_10
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x28], ebx
_Z11Dvar_SetIntPK6dvar_si_20:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z11Dvar_SetIntPK6dvar_si_10:
	mov eax, [ebp+0xc]
	mov [ebp-0x28], eax
	mov ebx, eax
	jmp _Z11Dvar_SetIntPK6dvar_si_20
	add [eax], al


;Dvar_FindVar(char const*)
_Z12Dvar_FindVarPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	jmp _Z21Dvar_FindMalleableVarPKc


;Dvar_ForEach(void (*)(dvar_s const*, void*), void*)
_Z12Dvar_ForEachPFvPK6dvar_sPvES2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov dword [esp], g_dvarCritSect
	call iInterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z12Dvar_ForEachPFvPK6dvar_sPvES2__10
_Z12Dvar_ForEachPFvPK6dvar_sPvES2__40:
	cmp byte [areDvarsSorted], 0x0
	jz _Z12Dvar_ForEachPFvPK6dvar_sPvES2__20
	mov eax, [dvarCount]
	test eax, eax
	jg _Z12Dvar_ForEachPFvPK6dvar_sPvES2__30
_Z12Dvar_ForEachPFvPK6dvar_sPvES2__50:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Dvar_ForEachPFvPK6dvar_sPvES2__10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz _Z12Dvar_ForEachPFvPK6dvar_sPvES2__40
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z12Dvar_ForEachPFvPK6dvar_sPvES2__10
	jmp _Z12Dvar_ForEachPFvPK6dvar_sPvES2__40
_Z12Dvar_ForEachPFvPK6dvar_sPvES2__20:
	call _Z9Dvar_Sortv
	mov eax, [dvarCount]
	test eax, eax
	jle _Z12Dvar_ForEachPFvPK6dvar_sPvES2__50
_Z12Dvar_ForEachPFvPK6dvar_sPvES2__30:
	xor esi, esi
	mov ebx, sortedDvars
_Z12Dvar_ForEachPFvPK6dvar_sPvES2__60:
	mov [esp+0x4], edi
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x8]
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [dvarCount]
	jl _Z12Dvar_ForEachPFvPK6dvar_sPvES2__60
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Dvar_GetBool(char const*)
_Z12Dvar_GetBoolPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	call _Z21Dvar_FindMalleableVarPKc
	test eax, eax
	jz _Z12Dvar_GetBoolPKc_10
	cmp byte [eax+0xa], 0x0
	jnz _Z12Dvar_GetBoolPKc_20
	movzx eax, byte [eax+0xc]
_Z12Dvar_GetBoolPKc_10:
	leave
	ret
_Z12Dvar_GetBoolPKc_20:
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
_Z12Dvar_SetBoolPK6dvar_sh:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov esi, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	mov edx, eax
	cmp byte [esi+0xa], 0x0
	jnz _Z12Dvar_SetBoolPK6dvar_sh_10
	mov [ebp-0x28], al
	mov ebx, [ebp-0x28]
_Z12Dvar_SetBoolPK6dvar_sh_20:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z12Dvar_SetBoolPK6dvar_sh_10:
	mov eax, _cstring_1
	test dl, dl
	mov edx, _cstring_0
	cmovz eax, edx
	mov [ebp-0x28], eax
	mov ebx, eax
	jmp _Z12Dvar_SetBoolPK6dvar_sh_20
	nop


;Dvar_SetVec3(dvar_s const*, float, float, float)
_Z12Dvar_SetVec3PK6dvar_sfff:
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
	jz _Z12Dvar_SetVec3PK6dvar_sfff_10
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
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x28], ebx
_Z12Dvar_SetVec3PK6dvar_sfff_20:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0xb0
	pop ebx
	pop esi
	pop ebp
	ret
_Z12Dvar_SetVec3PK6dvar_sfff_10:
	movss [ebp-0x28], xmm2
	movss [ebp-0x24], xmm1
	movss [ebp-0x20], xmm0
	mov ebx, [ebp-0x28]
	jmp _Z12Dvar_SetVec3PK6dvar_sfff_20
	nop


;Dvar_AddFlags(dvar_s const*, int)
_Z13Dvar_AddFlagsPK6dvar_si:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x8]
	or ax, [ebp+0xc]
	mov [edx+0x8], ax
	pop ebp
	ret


;Dvar_GetFloat(char const*)
_Z13Dvar_GetFloatPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x8]
	call _Z21Dvar_FindMalleableVarPKc
	test eax, eax
	jz _Z13Dvar_GetFloatPKc_10
	cmp byte [eax+0xa], 0x1
	jz _Z13Dvar_GetFloatPKc_20
	mov eax, [eax+0xc]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	leave
	ret
_Z13Dvar_GetFloatPKc_20:
	fld dword [eax+0xc]
	leave
	ret
_Z13Dvar_GetFloatPKc_10:
	fldz
	leave
	ret


;Dvar_SetColor(dvar_s const*, float, float, float, float)
_Z13Dvar_SetColorPK6dvar_sffff:
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
	call _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource
	leave
	ret
	nop


;Dvar_SetFloat(dvar_s const*, float)
_Z13Dvar_SetFloatPK6dvar_sf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	cmp byte [esi+0xa], 0x1
	jz _Z13Dvar_SetFloatPK6dvar_sf_10
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x28], ebx
_Z13Dvar_SetFloatPK6dvar_sf_20:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z13Dvar_SetFloatPK6dvar_sf_10:
	movss [ebp-0x28], xmm0
	mov ebx, [ebp-0x28]
	jmp _Z13Dvar_SetFloatPK6dvar_sf_20


;Dvar_Shutdown()
_Z13Dvar_Shutdownv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	jmp _Z13Dvar_Shutdownv_10
_Z13Dvar_Shutdownv_30:
	mov dword [esp], g_dvarCritSect+0x4
	call iInterlockedDecrement
_Z13Dvar_Shutdownv_20:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
_Z13Dvar_Shutdownv_10:
	mov eax, [g_dvarCritSect]
	test eax, eax
	jnz _Z13Dvar_Shutdownv_20
	mov dword [esp], g_dvarCritSect+0x4
	call iInterlockedIncrement
	sub eax, 0x1
	jnz _Z13Dvar_Shutdownv_30
	mov eax, [g_dvarCritSect]
	test eax, eax
	jnz _Z13Dvar_Shutdownv_30
	mov esi, [dvarCount]
	test esi, esi
	jle _Z13Dvar_Shutdownv_40
	xor esi, esi
	jmp _Z13Dvar_Shutdownv_50
_Z13Dvar_Shutdownv_70:
	add esi, 0x1
	cmp esi, [dvarCount]
	jge _Z13Dvar_Shutdownv_40
_Z13Dvar_Shutdownv_50:
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	lea ebx, [eax*4+dvarPool]
	cmp byte [ebx+0xa], 0x7
	jz _Z13Dvar_Shutdownv_60
_Z13Dvar_Shutdownv_140:
	test byte [ebx+0x9], 0x40
	jz _Z13Dvar_Shutdownv_70
	mov eax, [ebx]
	mov [esp], eax
	call FreeStringInternal
	add esi, 0x1
	cmp esi, [dvarCount]
	jl _Z13Dvar_Shutdownv_50
_Z13Dvar_Shutdownv_40:
	mov dword [dvarCount], 0x0
	mov dword [dvar_cheats], 0x0
	mov dword [dvar_modifiedFlags], 0x0
	mov byte [isDvarSystemActive], 0x0
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov dword [esp], dvarHashTable
	call memset
	mov dword [esp], g_dvarCritSect+0x4
	call iInterlockedDecrement
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z13Dvar_Shutdownv_60:
	mov eax, [ebx+0xc]
	test eax, eax
	jz _Z13Dvar_Shutdownv_80
	cmp eax, [ebx+0x1c]
	jz _Z13Dvar_Shutdownv_80
	cmp eax, [ebx+0x2c]
	jz _Z13Dvar_Shutdownv_80
	mov edx, 0x1
	test edx, edx
	jnz _Z13Dvar_Shutdownv_90
_Z13Dvar_Shutdownv_150:
	mov dword [ebx+0xc], 0x0
	mov eax, [ebx+0x2c]
	test eax, eax
	jz _Z13Dvar_Shutdownv_100
_Z13Dvar_Shutdownv_160:
	cmp eax, [ebx+0x1c]
	jz _Z13Dvar_Shutdownv_100
	mov edx, 0x1
	test edx, edx
	jnz _Z13Dvar_Shutdownv_110
_Z13Dvar_Shutdownv_170:
	mov dword [ebx+0x2c], 0x0
	mov eax, [ebx+0x1c]
	test eax, eax
	jz _Z13Dvar_Shutdownv_120
_Z13Dvar_Shutdownv_180:
	cmp eax, [ebx+0xc]
	jz _Z13Dvar_Shutdownv_120
	mov edx, 0x1
	test edx, edx
	jnz _Z13Dvar_Shutdownv_130
_Z13Dvar_Shutdownv_190:
	mov dword [ebx+0x1c], 0x0
	jmp _Z13Dvar_Shutdownv_140
_Z13Dvar_Shutdownv_80:
	xor edx, edx
	test edx, edx
	jz _Z13Dvar_Shutdownv_150
_Z13Dvar_Shutdownv_90:
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0xc], 0x0
	mov eax, [ebx+0x2c]
	test eax, eax
	jnz _Z13Dvar_Shutdownv_160
_Z13Dvar_Shutdownv_100:
	xor edx, edx
	test edx, edx
	jz _Z13Dvar_Shutdownv_170
_Z13Dvar_Shutdownv_110:
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x2c], 0x0
	mov eax, [ebx+0x1c]
	test eax, eax
	jnz _Z13Dvar_Shutdownv_180
_Z13Dvar_Shutdownv_120:
	xor edx, edx
	test edx, edx
	jz _Z13Dvar_Shutdownv_190
_Z13Dvar_Shutdownv_130:
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx+0x1c], 0x0
	jmp _Z13Dvar_Shutdownv_190
	nop


;Dvar_GetString(char const*)
_Z14Dvar_GetStringPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	call _Z21Dvar_FindMalleableVarPKc
	test eax, eax
	jz _Z14Dvar_GetStringPKc_10
	cmp byte [eax+0xa], 0x6
	jz _Z14Dvar_GetStringPKc_20
	mov eax, [eax+0xc]
	leave
	ret
_Z14Dvar_GetStringPKc_20:
	mov edx, [eax+0x3c]
	test edx, edx
	jz _Z14Dvar_GetStringPKc_10
	mov edx, [eax+0xc]
	mov eax, [eax+0x40]
	mov eax, [eax+edx*4]
	leave
	ret
_Z14Dvar_GetStringPKc_10:
	mov eax, _cstring_null
	leave
	ret


;Dvar_SetString(dvar_s const*, char const*)
_Z14Dvar_SetStringPK6dvar_sPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov eax, [ebp+0x8]
	cmp byte [eax+0xa], 0x7
	jz _Z14Dvar_SetStringPK6dvar_sPKc_10
	add eax, 0x3c
	mov [ebp-0x43c], eax
	mov edx, [ebp+0x8]
	mov esi, [edx+0x3c]
	test esi, esi
	jg _Z14Dvar_SetStringPK6dvar_sPKc_20
_Z14Dvar_SetStringPK6dvar_sPKc_100:
	mov eax, [ebp+0xc]
	movzx ecx, byte [eax]
	test cl, cl
	jnz _Z14Dvar_SetStringPK6dvar_sPKc_30
	xor ebx, ebx
_Z14Dvar_SetStringPK6dvar_sPKc_150:
	cmp esi, ebx
	jg _Z14Dvar_SetStringPK6dvar_sPKc_40
_Z14Dvar_SetStringPK6dvar_sPKc_140:
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
	jg _Z14Dvar_SetStringPK6dvar_sPKc_50
_Z14Dvar_SetStringPK6dvar_sPKc_60:
	mov ebx, 0xfffffac7
_Z14Dvar_SetStringPK6dvar_sPKc_40:
	mov [ebp-0x38], ebx
_Z14Dvar_SetStringPK6dvar_sPKc_130:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Dvar_SetStringPK6dvar_sPKc_30:
	lea eax, [ecx-0x30]
	cmp al, 0x9
	ja _Z14Dvar_SetStringPK6dvar_sPKc_60
	mov edi, [ebp+0xc]
	xor ebx, ebx
_Z14Dvar_SetStringPK6dvar_sPKc_80:
	lea edx, [ebx+ebx*4]
	movsx eax, cl
	lea ebx, [eax+edx*2-0x30]
	movzx ecx, byte [edi+0x1]
	test cl, cl
	jz _Z14Dvar_SetStringPK6dvar_sPKc_70
	add edi, 0x1
	lea eax, [ecx-0x30]
	cmp al, 0x9
	jbe _Z14Dvar_SetStringPK6dvar_sPKc_80
	mov ebx, 0xfffffac7
	jmp _Z14Dvar_SetStringPK6dvar_sPKc_40
_Z14Dvar_SetStringPK6dvar_sPKc_20:
	xor ebx, ebx
	mov edx, [ebp-0x43c]
	jmp _Z14Dvar_SetStringPK6dvar_sPKc_90
_Z14Dvar_SetStringPK6dvar_sPKc_110:
	add ebx, 0x1
	mov edx, [ebp-0x43c]
	mov esi, [edx]
	cmp ebx, esi
	jge _Z14Dvar_SetStringPK6dvar_sPKc_100
_Z14Dvar_SetStringPK6dvar_sPKc_90:
	mov eax, [edx+0x4]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Dvar_SetStringPK6dvar_sPKc_110
	jmp _Z14Dvar_SetStringPK6dvar_sPKc_40
_Z14Dvar_SetStringPK6dvar_sPKc_50:
	xor ebx, ebx
_Z14Dvar_SetStringPK6dvar_sPKc_120:
	mov [esp+0x8], esi
	mov edx, [ebp-0x43c]
	mov eax, [edx+0x4]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z14Dvar_SetStringPK6dvar_sPKc_40
	add ebx, 0x1
	mov edx, [ebp-0x43c]
	cmp ebx, [edx]
	jl _Z14Dvar_SetStringPK6dvar_sPKc_120
	mov ebx, 0xfffffac7
	jmp _Z14Dvar_SetStringPK6dvar_sPKc_40
_Z14Dvar_SetStringPK6dvar_sPKc_10:
	mov dword [esp+0x8], 0x400
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea ebx, [ebp-0x438]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [ebp-0x38], ebx
	jmp _Z14Dvar_SetStringPK6dvar_sPKc_130
_Z14Dvar_SetStringPK6dvar_sPKc_70:
	test ebx, ebx
	js _Z14Dvar_SetStringPK6dvar_sPKc_140
	jmp _Z14Dvar_SetStringPK6dvar_sPKc_150
	nop


;Dvar_GetAtIndex(int)
_Z15Dvar_GetAtIndexi:
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
_Z15Dvar_ResetDvarsj13DvarSetSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], g_dvarCritSect
	call iInterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z15Dvar_ResetDvarsj13DvarSetSource_10
_Z15Dvar_ResetDvarsj13DvarSetSource_50:
	mov edi, [dvarCount]
	test edi, edi
	jle _Z15Dvar_ResetDvarsj13DvarSetSource_20
	xor edi, edi
	mov esi, dvarPool
	jmp _Z15Dvar_ResetDvarsj13DvarSetSource_30
_Z15Dvar_ResetDvarsj13DvarSetSource_40:
	add edi, 0x1
	add esi, 0x4c
	cmp edi, [dvarCount]
	jge _Z15Dvar_ResetDvarsj13DvarSetSource_20
_Z15Dvar_ResetDvarsj13DvarSetSource_30:
	movzx eax, word [esi+0x8]
	test [ebp+0x8], eax
	jz _Z15Dvar_ResetDvarsj13DvarSetSource_40
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add edi, 0x1
	add esi, 0x4c
	cmp edi, [dvarCount]
	jl _Z15Dvar_ResetDvarsj13DvarSetSource_30
_Z15Dvar_ResetDvarsj13DvarSetSource_20:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Dvar_ResetDvarsj13DvarSetSource_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz _Z15Dvar_ResetDvarsj13DvarSetSource_50
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z15Dvar_ResetDvarsj13DvarSetSource_10
	jmp _Z15Dvar_ResetDvarsj13DvarSetSource_50
	nop


;Dvar_SetCommand(char const*, char const*)
_Z15Dvar_SetCommandPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, edi
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z15Dvar_SetCommandPKcS0__10
	mov ecx, 0x1
	mov edx, ebx
	call _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource
_Z15Dvar_SetCommandPKcS0__60:
	test esi, esi
	jz _Z15Dvar_SetCommandPKcS0__20
_Z15Dvar_SetCommandPKcS0__50:
	cmp byte [isLoadingAutoExecGlobalFlag], 0x0
	jnz _Z15Dvar_SetCommandPKcS0__30
_Z15Dvar_SetCommandPKcS0__20:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Dvar_SetCommandPKcS0__30:
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
	call _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Dvar_SetCommandPKcS0__10:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z15Dvar_SetCommandPKcS0__40
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	jmp _Z15Dvar_SetCommandPKcS0__50
_Z15Dvar_SetCommandPKcS0__40:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	mov esi, eax
	jmp _Z15Dvar_SetCommandPKcS0__60
	nop


;Dvar_ForEachName(void (*)(char const*))
_Z16Dvar_ForEachNamePFvPKcE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov dword [esp], g_dvarCritSect
	call iInterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z16Dvar_ForEachNamePFvPKcE_10
_Z16Dvar_ForEachNamePFvPKcE_40:
	cmp byte [areDvarsSorted], 0x0
	jz _Z16Dvar_ForEachNamePFvPKcE_20
	mov eax, [dvarCount]
	test eax, eax
	jg _Z16Dvar_ForEachNamePFvPKcE_30
_Z16Dvar_ForEachNamePFvPKcE_50:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Dvar_ForEachNamePFvPKcE_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz _Z16Dvar_ForEachNamePFvPKcE_40
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z16Dvar_ForEachNamePFvPKcE_10
	jmp _Z16Dvar_ForEachNamePFvPKcE_40
_Z16Dvar_ForEachNamePFvPKcE_20:
	call _Z9Dvar_Sortv
	mov eax, [dvarCount]
	test eax, eax
	jle _Z16Dvar_ForEachNamePFvPKcE_50
_Z16Dvar_ForEachNamePFvPKcE_30:
	xor esi, esi
	mov ebx, sortedDvars
_Z16Dvar_ForEachNamePFvPKcE_60:
	mov eax, [ebx]
	mov eax, [eax]
	mov [esp], eax
	call edi
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [dvarCount]
	jl _Z16Dvar_ForEachNamePFvPKcE_60
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_IsValidName(char const*)
_Z16Dvar_IsValidNamePKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z16Dvar_IsValidNamePKc_10
	movzx ebx, byte [eax]
	test bl, bl
	jnz _Z16Dvar_IsValidNamePKc_20
_Z16Dvar_IsValidNamePKc_50:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16Dvar_IsValidNamePKc_20:
	mov esi, eax
_Z16Dvar_IsValidNamePKc_40:
	movsx eax, bl
	mov [esp], eax
	call isalnum
	test eax, eax
	jnz _Z16Dvar_IsValidNamePKc_30
	cmp bl, 0x5f
	jnz _Z16Dvar_IsValidNamePKc_10
_Z16Dvar_IsValidNamePKc_30:
	movzx ebx, byte [esi+0x1]
	add esi, 0x1
	test bl, bl
	jnz _Z16Dvar_IsValidNamePKc_40
	jmp _Z16Dvar_IsValidNamePKc_50
_Z16Dvar_IsValidNamePKc_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_PrintDomain(unsigned char, DvarLimits)
_Z16Dvar_PrintDomainh10DvarLimits:
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
	call _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	leave
	ret
	nop


;Dvar_RegisterInt(char const*, int, int, int, unsigned short, char const*)
_Z16Dvar_RegisterIntPKciiitS0_:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z16Dvar_RegisterIntPKciiitS0__10
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, esi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Dvar_RegisterIntPKciiitS0__10:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Dvar_SetModified(dvar_s const*)
_Z16Dvar_SetModifiedPK6dvar_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0xb], 0x1
	pop ebp
	ret


;Dvar_EnumToString(dvar_s const*)
_Z17Dvar_EnumToStringPK6dvar_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x3c]
	test edx, edx
	jz _Z17Dvar_EnumToStringPK6dvar_s_10
	mov edx, [eax+0xc]
	mov eax, [eax+0x40]
	mov eax, [eax+edx*4]
	pop ebp
	ret
_Z17Dvar_EnumToStringPK6dvar_s_10:
	mov eax, _cstring_null
	pop ebp
	ret
	nop


;Dvar_RegisterBool(char const*, unsigned char, unsigned short, char const*)
_Z17Dvar_RegisterBoolPKchtS0_:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z17Dvar_RegisterBoolPKchtS0__10
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Dvar_RegisterBoolPKchtS0__10:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_RegisterEnum(char const*, char const**, int, unsigned short, char const*)
_Z17Dvar_RegisterEnumPKcPS0_itS0_:
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
	jz _Z17Dvar_RegisterEnumPKcPS0_itS0__10
	xor eax, eax
_Z17Dvar_RegisterEnumPKcPS0_itS0__20:
	add eax, 0x1
	mov ecx, [edx+eax*4]
	test ecx, ecx
	jnz _Z17Dvar_RegisterEnumPKcPS0_itS0__20
	mov [ebp-0x78], eax
	mov ebx, [ebp-0x58]
_Z17Dvar_RegisterEnumPKcPS0_itS0__40:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z17Dvar_RegisterEnumPKcPS0_itS0__30
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, esi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Dvar_RegisterEnumPKcPS0_itS0__10:
	mov ebx, eax
	jmp _Z17Dvar_RegisterEnumPKcPS0_itS0__40
_Z17Dvar_RegisterEnumPKcPS0_itS0__30:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Dvar_RegisterVec2(char const*, float, float, float, float, unsigned short, char const*)
_Z17Dvar_RegisterVec2PKcfffftS0_:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z17Dvar_RegisterVec2PKcfffftS0__10
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Dvar_RegisterVec2PKcfffftS0__10:
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
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_


;Dvar_RegisterVec3(char const*, float, float, float, float, float, unsigned short, char const*)
_Z17Dvar_RegisterVec3PKcffffftS0_:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z17Dvar_RegisterVec3PKcffffftS0__10
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Dvar_RegisterVec3PKcffffftS0__10:
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
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_


;Dvar_RegisterVec4(char const*, float, float, float, float, float, float, unsigned short, char const*)
_Z17Dvar_RegisterVec4PKcfffffftS0_:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z17Dvar_RegisterVec4PKcfffffftS0__10
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Dvar_RegisterVec4PKcfffffftS0__10:
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
	jmp _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_


;Dvar_SetIntByName(char const*, int)
_Z17Dvar_SetIntByNamePKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov eax, [ebp+0x8]
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z17Dvar_SetIntByNamePKci_10
	movzx eax, byte [eax+0xa]
	sub al, 0x5
	cmp al, 0x1
	jbe _Z17Dvar_SetIntByNamePKci_20
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x58], ebx
_Z17Dvar_SetIntByNamePKci_30:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
_Z17Dvar_SetIntByNamePKci_50:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Dvar_SetIntByNamePKci_20:
	mov eax, [ebp+0xc]
	mov [ebp-0x58], eax
	mov ebx, eax
	jmp _Z17Dvar_SetIntByNamePKci_30
_Z17Dvar_SetIntByNamePKci_10:
	mov esi, [ebp+0xc]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0xb8]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
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
	call _Z21Dvar_FindMalleableVarPKc
	mov [ebp-0xcc], eax
	test eax, eax
	jz _Z17Dvar_SetIntByNamePKci_40
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	jmp _Z17Dvar_SetIntByNamePKci_50
_Z17Dvar_SetIntByNamePKci_40:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	jmp _Z17Dvar_SetIntByNamePKci_50


;Dvar_ClearModified(dvar_s const*)
_Z18Dvar_ClearModifiedPK6dvar_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0xb], 0x0
	pop ebp
	ret


;Dvar_RegisterColor(char const*, float, float, float, float, unsigned short, char const*)
_Z18Dvar_RegisterColorPKcfffftS0_:
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
	jb _Z18Dvar_RegisterColorPKcfffftS0__10
	movss xmm2, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm1
	jb _Z18Dvar_RegisterColorPKcfffftS0__20
_Z18Dvar_RegisterColorPKcfffftS0__100:
	movaps xmm0, xmm1
_Z18Dvar_RegisterColorPKcfffftS0__110:
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
	jb _Z18Dvar_RegisterColorPKcfffftS0__30
	movss xmm3, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
_Z18Dvar_RegisterColorPKcfffftS0__170:
	ucomiss xmm0, xmm1
	jb _Z18Dvar_RegisterColorPKcfffftS0__40
	movaps xmm0, xmm1
_Z18Dvar_RegisterColorPKcfffftS0__160:
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
	jb _Z18Dvar_RegisterColorPKcfffftS0__50
	mov dword [ebp+0x14], 0x3f800000
	movss xmm0, dword [_float__1_00000000]
_Z18Dvar_RegisterColorPKcfffftS0__150:
	ucomiss xmm0, xmm1
	jb _Z18Dvar_RegisterColorPKcfffftS0__60
	movaps xmm0, xmm1
_Z18Dvar_RegisterColorPKcfffftS0__140:
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
	jb _Z18Dvar_RegisterColorPKcfffftS0__70
	mov dword [ebp+0x18], 0x3f800000
	movss xmm0, dword [_float__1_00000000]
_Z18Dvar_RegisterColorPKcfffftS0__130:
	ucomiss xmm0, xmm1
	jb _Z18Dvar_RegisterColorPKcfffftS0__80
	movaps xmm0, xmm1
_Z18Dvar_RegisterColorPKcfffftS0__120:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov [ebp-0xbc], eax
	test eax, eax
	jz _Z18Dvar_RegisterColorPKcfffftS0__90
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, [ebp-0xbc]
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Dvar_RegisterColorPKcfffftS0__10:
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	jae _Z18Dvar_RegisterColorPKcfffftS0__100
_Z18Dvar_RegisterColorPKcfffftS0__20:
	movaps xmm0, xmm2
	mulss xmm0, [_float_255_00000000]
	jmp _Z18Dvar_RegisterColorPKcfffftS0__110
_Z18Dvar_RegisterColorPKcfffftS0__80:
	movss xmm0, dword [ebp+0x18]
	mulss xmm0, [_float_255_00000000]
	jmp _Z18Dvar_RegisterColorPKcfffftS0__120
_Z18Dvar_RegisterColorPKcfffftS0__70:
	movaps xmm0, xmm1
	subss xmm0, [ebp+0x18]
	jmp _Z18Dvar_RegisterColorPKcfffftS0__130
_Z18Dvar_RegisterColorPKcfffftS0__60:
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [_float_255_00000000]
	jmp _Z18Dvar_RegisterColorPKcfffftS0__140
_Z18Dvar_RegisterColorPKcfffftS0__50:
	movaps xmm0, xmm1
	subss xmm0, [ebp+0x14]
	jmp _Z18Dvar_RegisterColorPKcfffftS0__150
_Z18Dvar_RegisterColorPKcfffftS0__40:
	movaps xmm0, xmm3
	mulss xmm0, [_float_255_00000000]
	jmp _Z18Dvar_RegisterColorPKcfffftS0__160
_Z18Dvar_RegisterColorPKcfffftS0__30:
	movaps xmm0, xmm1
	subss xmm0, xmm3
	jmp _Z18Dvar_RegisterColorPKcfffftS0__170
_Z18Dvar_RegisterColorPKcfffftS0__90:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Dvar_RegisterFloat(char const*, float, float, float, unsigned short, char const*)
_Z18Dvar_RegisterFloatPKcffftS0_:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z18Dvar_RegisterFloatPKcffftS0__10
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, esi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Dvar_RegisterFloatPKcffftS0__10:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_SetBoolByName(char const*, unsigned char)
_Z18Dvar_SetBoolByNamePKch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	movzx ebx, byte [ebp+0xc]
	mov eax, edi
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z18Dvar_SetBoolByNamePKch_10
	movzx eax, bl
	mov edx, eax
	cmp byte [esi+0xa], 0x0
	jnz _Z18Dvar_SetBoolByNamePKch_20
	mov [ebp-0x58], al
	mov ebx, [ebp-0x58]
_Z18Dvar_SetBoolByNamePKch_30:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
_Z18Dvar_SetBoolByNamePKch_50:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Dvar_SetBoolByNamePKch_20:
	mov eax, _cstring_1
	test dl, dl
	mov edx, _cstring_0
	cmovz eax, edx
	mov [ebp-0x58], eax
	mov ebx, eax
	jmp _Z18Dvar_SetBoolByNamePKch_30
_Z18Dvar_SetBoolByNamePKch_10:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z18Dvar_SetBoolByNamePKch_40
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Dvar_SetBoolByNamePKch_40:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	jmp _Z18Dvar_SetBoolByNamePKch_50


;Dvar_SetCheatState()
_Z18Dvar_SetCheatStatev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], g_dvarCritSect
	call iInterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z18Dvar_SetCheatStatev_10
_Z18Dvar_SetCheatStatev_50:
	mov eax, [dvarCount]
	test eax, eax
	jle _Z18Dvar_SetCheatStatev_20
	xor edi, edi
	mov esi, dvarPool
	jmp _Z18Dvar_SetCheatStatev_30
_Z18Dvar_SetCheatStatev_40:
	add edi, 0x1
	add esi, 0x4c
	cmp edi, [dvarCount]
	jge _Z18Dvar_SetCheatStatev_20
_Z18Dvar_SetCheatStatev_30:
	cmp byte [esi+0x8], 0x0
	jns _Z18Dvar_SetCheatStatev_40
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add edi, 0x1
	add esi, 0x4c
	cmp edi, [dvarCount]
	jl _Z18Dvar_SetCheatStatev_30
_Z18Dvar_SetCheatStatev_20:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Dvar_SetCheatStatev_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz _Z18Dvar_SetCheatStatev_50
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z18Dvar_SetCheatStatev_10
	jmp _Z18Dvar_SetCheatStatev_50
	nop


;Dvar_SetDomainFunc(dvar_s const*, unsigned char (*)(dvar_s*, DvarValue))
_Z18Dvar_SetDomainFuncPK6dvar_sPFhPS_9DvarValueE:
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
	jz _Z18Dvar_SetDomainFuncPK6dvar_sPFhPS_9DvarValueE_10
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
	jz _Z18Dvar_SetDomainFuncPK6dvar_sPFhPS_9DvarValueE_20
_Z18Dvar_SetDomainFuncPK6dvar_sPFhPS_9DvarValueE_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Dvar_SetDomainFuncPK6dvar_sPFhPS_9DvarValueE_20:
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_a_valid1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_SetInAutoExec(unsigned char)
_Z18Dvar_SetInAutoExech:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [isLoadingAutoExecGlobalFlag], al
	pop ebp
	ret
	nop


;Dvar_ValueInDomain(unsigned char, DvarValue, DvarLimits)
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits:
	push ebp
	mov ebp, esp
	movzx eax, byte [ebp+0x8]
	cmp eax, 0x8
	ja _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_10
	jmp dword [eax*4+_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_jumptab_0]
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_170:
	mov eax, [ebp+0xc]
	cmp eax, [ebp+0x1c]
	jl _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_10
	cmp eax, [ebp+0x20]
	jle _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_20
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_10:
	xor eax, eax
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_100:
	pop ebp
	ret
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_180:
	mov eax, [ebp+0xc]
	test eax, eax
	js _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_30
	cmp eax, [ebp+0x1c]
	jge _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_30
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_20:
	mov eax, 0x1
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_110:
	pop ebp
	ret
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_160:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	lea eax, [ebp+0xc]
	lea edx, [ebp+0x1c]
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_50:
	movss xmm0, dword [eax]
	ucomiss xmm1, xmm0
	ja _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_40
	ucomiss xmm0, xmm2
	ja _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_40
	add eax, 0x4
	cmp eax, edx
	jnz _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_50
	mov eax, 0x1
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_70:
	movzx eax, al
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_120:
	pop ebp
	ret
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_150:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	lea eax, [ebp+0xc]
	lea edx, [ebp+0x18]
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_60:
	movss xmm0, dword [eax]
	ucomiss xmm1, xmm0
	ja _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_40
	ucomiss xmm0, xmm2
	ja _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_40
	add eax, 0x4
	cmp eax, edx
	jnz _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_60
	mov eax, 0x1
	jmp _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_70
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_140:
	movss xmm2, dword [ebp+0x20]
	movss xmm1, dword [ebp+0x1c]
	lea eax, [ebp+0xc]
	lea edx, [ebp+0x14]
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_80:
	movss xmm0, dword [eax]
	ucomiss xmm1, xmm0
	ja _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_40
	ucomiss xmm0, xmm2
	ja _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_40
	add eax, 0x4
	cmp edx, eax
	jnz _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_80
	mov eax, 0x1
	jmp _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_70
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_130:
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x1c]
	jp _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_90
	jb _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_10
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_90:
	ucomiss xmm0, [ebp+0x20]
	jbe _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_20
	xor eax, eax
	jmp _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_100
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_30:
	test eax, eax
	jnz _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_10
	mov eax, 0x1
	jmp _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_110
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_40:
	xor eax, eax
	movzx eax, al
	jmp _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_120
	
	
_Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_jumptab_0:
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_20
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_130
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_140
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_150
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_160
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_170
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_180
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_20
	dd _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits_20


;Dvar_IsSystemActive()
_Z19Dvar_IsSystemActivev:
	push ebp
	mov ebp, esp
	movzx eax, byte [isDvarSystemActive]
	pop ebp
	ret


;Dvar_RegisterString(char const*, char const*, unsigned short, char const*)
_Z19Dvar_RegisterStringPKcS0_tS0_:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z19Dvar_RegisterStringPKcS0_tS0__10
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, esi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Dvar_RegisterStringPKcS0_tS0__10:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Dvar_SetFloatByName(char const*, float)
_Z19Dvar_SetFloatByNamePKcf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov eax, [ebp+0x8]
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z19Dvar_SetFloatByNamePKcf_10
	cmp byte [eax+0xa], 0x1
	jz _Z19Dvar_SetFloatByNamePKcf_20
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x58], ebx
_Z19Dvar_SetFloatByNamePKcf_30:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
_Z19Dvar_SetFloatByNamePKcf_50:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Dvar_SetFloatByNamePKcf_20:
	movss xmm0, dword [ebp+0xc]
	movss [ebp-0x58], xmm0
	mov ebx, [ebp-0x58]
	jmp _Z19Dvar_SetFloatByNamePKcf_30
_Z19Dvar_SetFloatByNamePKcf_10:
	cvtss2sd xmm0, [ebp+0xc]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g
	call _Z2vaPKcz
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
	call _Z21Dvar_FindMalleableVarPKc
	mov [ebp-0xac], eax
	test eax, eax
	jz _Z19Dvar_SetFloatByNamePKcf_40
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	jmp _Z19Dvar_SetFloatByNamePKcf_50
_Z19Dvar_SetFloatByNamePKcf_40:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	jmp _Z19Dvar_SetFloatByNamePKcf_50
	nop


;Dvar_HasLatchedValue(dvar_s const*)
_Z20Dvar_HasLatchedValuePK6dvar_s:
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
	call _Z16Dvar_ValuesEqualh9DvarValueS_
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
_Z20Dvar_ResetScriptInfov:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], g_dvarCritSect
	call iInterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z20Dvar_ResetScriptInfov_10
_Z20Dvar_ResetScriptInfov_40:
	mov ecx, [dvarCount]
	test ecx, ecx
	jle _Z20Dvar_ResetScriptInfov_20
	xor edx, edx
	mov eax, dvarPool
_Z20Dvar_ResetScriptInfov_30:
	and word [eax+0x8], 0xfbff
	add edx, 0x1
	add eax, 0x4c
	cmp edx, ecx
	jnz _Z20Dvar_ResetScriptInfov_30
_Z20Dvar_ResetScriptInfov_20:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	leave
	ret
_Z20Dvar_ResetScriptInfov_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz _Z20Dvar_ResetScriptInfov_40
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z20Dvar_ResetScriptInfov_10
	jmp _Z20Dvar_ResetScriptInfov_40


;Dvar_SetStringByName(char const*, char const*)
_Z20Dvar_SetStringByNamePKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4ac
	mov eax, [ebp+0x8]
	call _Z21Dvar_FindMalleableVarPKc
	mov [ebp-0x488], eax
	test eax, eax
	jz _Z20Dvar_SetStringByNamePKcS0__10
	cmp byte [eax+0xa], 0x7
	jz _Z20Dvar_SetStringByNamePKcS0__20
	mov edx, [ebp-0x488]
	add edx, 0x3c
	mov [ebp-0x484], edx
	mov ebx, [ebp-0x488]
	mov esi, [ebx+0x3c]
	test esi, esi
	jg _Z20Dvar_SetStringByNamePKcS0__30
_Z20Dvar_SetStringByNamePKcS0__130:
	mov edx, [ebp+0xc]
	movzx ecx, byte [edx]
	test cl, cl
	jnz _Z20Dvar_SetStringByNamePKcS0__40
	xor ebx, ebx
_Z20Dvar_SetStringByNamePKcS0__100:
	cmp esi, ebx
	jle _Z20Dvar_SetStringByNamePKcS0__50
_Z20Dvar_SetStringByNamePKcS0__90:
	mov [ebp-0x58], ebx
_Z20Dvar_SetStringByNamePKcS0__150:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
_Z20Dvar_SetStringByNamePKcS0__170:
	add esp, 0x4ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Dvar_SetStringByNamePKcS0__40:
	lea eax, [ecx-0x30]
	cmp al, 0x9
	ja _Z20Dvar_SetStringByNamePKcS0__60
	mov edi, [ebp+0xc]
	xor ebx, ebx
_Z20Dvar_SetStringByNamePKcS0__80:
	lea edx, [ebx+ebx*4]
	movsx eax, cl
	lea ebx, [eax+edx*2-0x30]
	movzx ecx, byte [edi+0x1]
	test cl, cl
	jz _Z20Dvar_SetStringByNamePKcS0__70
	add edi, 0x1
	lea eax, [ecx-0x30]
	cmp al, 0x9
	jbe _Z20Dvar_SetStringByNamePKcS0__80
_Z20Dvar_SetStringByNamePKcS0__60:
	mov ebx, 0xfffffac7
	jmp _Z20Dvar_SetStringByNamePKcS0__90
_Z20Dvar_SetStringByNamePKcS0__70:
	test ebx, ebx
	jns _Z20Dvar_SetStringByNamePKcS0__100
_Z20Dvar_SetStringByNamePKcS0__50:
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
	jle _Z20Dvar_SetStringByNamePKcS0__60
	xor ebx, ebx
_Z20Dvar_SetStringByNamePKcS0__110:
	mov [esp+0x8], esi
	mov edi, [ebp-0x484]
	mov eax, [edi+0x4]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z20Dvar_SetStringByNamePKcS0__90
	add ebx, 0x1
	cmp [edi], ebx
	jg _Z20Dvar_SetStringByNamePKcS0__110
	mov ebx, 0xfffffac7
	jmp _Z20Dvar_SetStringByNamePKcS0__90
_Z20Dvar_SetStringByNamePKcS0__30:
	xor ebx, ebx
	mov esi, [ebp-0x484]
	jmp _Z20Dvar_SetStringByNamePKcS0__120
_Z20Dvar_SetStringByNamePKcS0__140:
	add ebx, 0x1
	mov eax, [ebp-0x484]
	mov esi, [eax]
	cmp ebx, esi
	jge _Z20Dvar_SetStringByNamePKcS0__130
	mov esi, eax
_Z20Dvar_SetStringByNamePKcS0__120:
	mov eax, [esi+0x4]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov edi, [ebp+0xc]
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z20Dvar_SetStringByNamePKcS0__140
	jmp _Z20Dvar_SetStringByNamePKcS0__90
_Z20Dvar_SetStringByNamePKcS0__20:
	mov dword [esp+0x8], 0x400
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x478]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [ebp-0x58], ebx
	jmp _Z20Dvar_SetStringByNamePKcS0__150
_Z20Dvar_SetStringByNamePKcS0__10:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov [ebp-0x48c], eax
	test eax, eax
	jz _Z20Dvar_SetStringByNamePKcS0__160
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	jmp _Z20Dvar_SetStringByNamePKcS0__170
_Z20Dvar_SetStringByNamePKcS0__160:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	jmp _Z20Dvar_SetStringByNamePKcS0__170
	nop


;Com_SaveDvarsToBuffer(char const**, unsigned int, char*, unsigned int)
_Z21Com_SaveDvarsToBufferPPKcjPcj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x14]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jnz _Z21Com_SaveDvarsToBufferPPKcjPcj_10
_Z21Com_SaveDvarsToBufferPPKcjPcj_40:
	mov eax, 0x1
_Z21Com_SaveDvarsToBufferPPKcjPcj_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Com_SaveDvarsToBufferPPKcjPcj_10:
	mov dword [ebp-0x2c], 0x0
	mov edx, [ebp-0x2c]
_Z21Com_SaveDvarsToBufferPPKcjPcj_30:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4]
	call _Z21Dvar_FindMalleableVarPKc
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	mov [esp+0x10], eax
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_s
	mov [esp+0x4], edi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call snprintf
	test eax, eax
	js _Z21Com_SaveDvarsToBufferPPKcjPcj_20
	add [ebp+0x10], eax
	sub edi, eax
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x2c]
	cmp [ebp+0xc], edx
	jnz _Z21Com_SaveDvarsToBufferPPKcjPcj_30
	jmp _Z21Com_SaveDvarsToBufferPPKcjPcj_40
_Z21Com_SaveDvarsToBufferPPKcjPcj_20:
	xor eax, eax
	jmp _Z21Com_SaveDvarsToBufferPPKcjPcj_50
	nop


;Dvar_AnyLatchedValues()
_Z21Dvar_AnyLatchedValuesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [esp], g_dvarCritSect
	call iInterlockedIncrement
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z21Dvar_AnyLatchedValuesv_10
_Z21Dvar_AnyLatchedValuesv_50:
	mov eax, [dvarCount]
	mov [ebp-0x40], eax
	test eax, eax
	jle _Z21Dvar_AnyLatchedValuesv_20
	mov dword [ebp-0x3c], 0x0
	mov edi, dvarPool
_Z21Dvar_AnyLatchedValuesv_40:
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
	call _Z16Dvar_ValuesEqualh9DvarValueS_
	test eax, eax
	jz _Z21Dvar_AnyLatchedValuesv_30
	add dword [ebp-0x3c], 0x1
	add edi, 0x4c
	mov eax, [ebp-0x40]
	cmp [ebp-0x3c], eax
	jnz _Z21Dvar_AnyLatchedValuesv_40
_Z21Dvar_AnyLatchedValuesv_20:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	xor eax, eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Dvar_AnyLatchedValuesv_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jz _Z21Dvar_AnyLatchedValuesv_50
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [g_dvarCritSect+0x4]
	test eax, eax
	jnz _Z21Dvar_AnyLatchedValuesv_10
	jmp _Z21Dvar_AnyLatchedValuesv_50
_Z21Dvar_AnyLatchedValuesv_30:
	mov dword [esp], g_dvarCritSect
	call iInterlockedDecrement
	mov eax, 0x1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Dvar_ChangeResetValue(dvar_s const*, DvarValue)
_Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue:
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
	jmp _Z21Dvar_UpdateResetValueP6dvar_s9DvarValue


;Dvar_DisplayableValue(dvar_s const*)
_Z21Dvar_DisplayableValuePK6dvar_s:
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_GetUnpackedColor(dvar_s const*, float*)
_Z21Dvar_GetUnpackedColorPK6dvar_sPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp byte [eax+0xa], 0x8
	jz _Z21Dvar_GetUnpackedColorPK6dvar_sPf_10
	lea edx, [ebp-0xc]
	mov eax, [eax+0xc]
	call _Z18Dvar_StringToColorPKcPh
_Z21Dvar_GetUnpackedColorPK6dvar_sPf_20:
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
_Z21Dvar_GetUnpackedColorPK6dvar_sPf_10:
	mov eax, [eax+0xc]
	mov [ebp-0xc], eax
	jmp _Z21Dvar_GetUnpackedColorPK6dvar_sPf_20
	nop


;Dvar_GetVariantString(char const*)
_Z21Dvar_GetVariantStringPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z21Dvar_GetVariantStringPKc_10
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z21Dvar_GetVariantStringPKc_10:
	mov eax, _cstring_null
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Dvar_SetIntFromSource(dvar_s const*, int, DvarSetSource)
_Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource:
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
	jbe _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource_10
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x38], ebx
	mov esi, ebx
_Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource_20:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource_10:
	mov eax, [ebp+0xc]
	mov [ebp-0x38], eax
	mov esi, eax
	jmp _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource_20
	nop


;Dvar_UpdateEnumDomain(dvar_s const*, char const**)
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0xc]
	mov eax, [edx]
	test eax, eax
	jz _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_10
	xor eax, eax
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_20:
	add eax, 0x1
	mov edi, [edx+eax*4]
	test edi, edi
	jnz _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_20
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_150:
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
	ja _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
	jmp dword [eax*4+_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_jumptab_0]
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_240:
	mov edi, [ebp-0x58]
	cmp edi, [ebp-0x60]
	jl _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_40
	cmp edi, [ebp-0x5c]
	jle _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
	mov edi, [ebp-0x5c]
	mov [ebp-0x58], edi
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30:
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
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_190:
	cmp byte [ebp-0x58], 0x0
	setnz byte [ebp-0x58]
	mov edi, [ebp-0x58]
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_250:
	mov edi, [ebp-0x58]
	test edi, edi
	js _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_50
	cmp edi, [ebp-0x60]
	jl _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_50:
	mov edi, [ebp-0x48]
	mov [ebp-0x58], edi
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_230:
	movss xmm2, dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x60]
	mov edx, 0x1
	lea eax, [ebp-0x54]
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_70:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_60
	movss [eax-0x4], xmm1
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_160:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x5
	jnz _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_70
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_90:
	mov edi, [ebp-0x58]
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_220:
	movss xmm2, dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x60]
	mov edx, 0x1
	lea eax, [ebp-0x54]
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_80
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_100:
	movss [eax-0x4], xmm1
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_110:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jz _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_90
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	ja _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_100
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_80:
	ucomiss xmm0, xmm2
	jbe _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_110
	movss [eax-0x4], xmm2
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_110
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_210:
	movss xmm2, dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x60]
	mov edx, 0x1
	lea eax, [ebp-0x54]
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_130:
	movss xmm0, dword [eax-0x4]
	ucomiss xmm1, xmm0
	jbe _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_120
	movss [eax-0x4], xmm1
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_170:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_130
	mov edi, [ebp-0x58]
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_200:
	movss xmm0, dword [ebp-0x58]
	ucomiss xmm0, [ebp-0x60]
	jb _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_140
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_180:
	ucomiss xmm0, [ebp-0x5c]
	jbe _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_90
	fld dword [ebp-0x5c]
	fstp dword [ebp-0x58]
	mov edi, [ebp-0x58]
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_10:
	xor eax, eax
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_150
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_60:
	ucomiss xmm0, xmm2
	jbe _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_160
	movss [eax-0x4], xmm2
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_160
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_120:
	ucomiss xmm0, xmm2
	jbe _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_170
	movss [eax-0x4], xmm2
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_170
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_140:
	jp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_180
	fld dword [ebp-0x60]
	fstp dword [ebp-0x58]
	mov edi, [ebp-0x58]
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_40:
	mov edi, [ebp-0x60]
	mov [ebp-0x58], edi
	jmp _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_30
	nop
	add [eax], al
	
	
_Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_jumptab_0:
	dd _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_190
	dd _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_200
	dd _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_210
	dd _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_220
	dd _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_230
	dd _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_240
	dd _Z21Dvar_UpdateEnumDomainPK6dvar_sPPKc_250


;Dvar_SetBoolFromSource(dvar_s const*, unsigned char, DvarSetSource)
_Z22Dvar_SetBoolFromSourcePK6dvar_sh13DvarSetSource:
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
	jnz _Z22Dvar_SetBoolFromSourcePK6dvar_sh13DvarSetSource_10
	mov [ebp-0x38], al
	mov esi, [ebp-0x38]
_Z22Dvar_SetBoolFromSourcePK6dvar_sh13DvarSetSource_20:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Dvar_SetBoolFromSourcePK6dvar_sh13DvarSetSource_10:
	mov eax, _cstring_1
	test dl, dl
	mov edx, _cstring_0
	cmovz eax, edx
	mov [ebp-0x38], eax
	mov esi, eax
	jmp _Z22Dvar_SetBoolFromSourcePK6dvar_sh13DvarSetSource_20
	nop


;Com_LoadDvarsFromBuffer(char const**, unsigned int, char const*, char const*)
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0_:
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
	jnz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__10
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__130:
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z21Com_BeginParseSessionPKc
	mov dword [ebp-0x402c], 0x0
	lea edx, [ebp+0x10]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov esi, eax
	cmp byte [eax], 0x0
	jz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__20
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__60:
	mov edi, [ebp+0xc]
	test edi, edi
	jz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__30
	mov ebx, [ebp+0x8]
	xor edi, edi
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__50:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__40
	add edi, 0x1
	add ebx, 0x4
	cmp [ebp+0xc], edi
	jnz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__50
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__30:
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_unknown_
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__110:
	lea eax, [ebp+0x10]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
	lea edx, [ebp+0x10]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov esi, eax
	cmp byte [eax], 0x0
	jnz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__60
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__20:
	call _Z19Com_EndParseSessionv
	mov edx, [ebp-0x402c]
	cmp [ebp+0xc], edx
	jz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__70
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_the_follow
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__80
	xor ebx, ebx
	jmp _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__90
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__100:
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__80
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__90:
	cmp byte [ebx+ebp-0x4028], 0x0
	jnz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__100
	mov edx, [ebp+0x8]
	mov eax, [edx+ebx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jnz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__90
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__80:
	xor eax, eax
	add esp, 0x404c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__40:
	mov eax, [ebx]
	call _Z21Dvar_FindMalleableVarPKc
	mov ebx, eax
	lea eax, [ebp+0x10]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	xor ecx, ecx
	mov edx, eax
	mov eax, ebx
	call _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource
	cmp byte [ebp+edi-0x4028], 0x0
	jnz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__110
	mov byte [ebp+edi-0x4028], 0x1
	add dword [ebp-0x402c], 0x1
	jmp _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__110
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__70:
	mov eax, 0x1
	add esp, 0x404c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__10:
	xor edi, edi
_Z23Com_LoadDvarsFromBufferPPKcjS0_S0__120:
	mov edx, [ebp+0x8]
	mov eax, [edx+edi*4]
	call _Z21Dvar_FindMalleableVarPKc
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__120
	jmp _Z23Com_LoadDvarsFromBufferPPKcjS0_S0__130
	add [eax], al


;Dvar_SetColorFromSource(dvar_s const*, float, float, float, float, DvarSetSource)
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource:
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
	jz _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_10
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
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x38], ebx
	mov esi, ebx
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_100:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_10:
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_20
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_30
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_110:
	movaps xmm0, xmm2
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_120:
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
	jb _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_40
	movss xmm3, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_180:
	ucomiss xmm0, xmm2
	jb _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_50
	movaps xmm0, xmm2
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_170:
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
	jb _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_60
	mov dword [ebp+0x14], 0x3f800000
	movss xmm0, dword [_float__1_00000000]
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_160:
	ucomiss xmm0, xmm2
	jb _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_70
	movaps xmm0, xmm2
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_150:
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
	jb _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_80
	mov dword [ebp+0x18], 0x3f800000
	movss xmm0, dword [_float__1_00000000]
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_140:
	ucomiss xmm0, xmm2
	jb _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_90
	movaps xmm0, xmm2
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_130:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc8]
	cvttss2si eax, [ebp-0xc8]
	mov [ebp-0x35], al
	mov esi, [ebp-0x38]
	jmp _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_100
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_20:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_110
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_30:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_120
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_90:
	movss xmm0, dword [ebp+0x18]
	mulss xmm0, [_float_255_00000000]
	jmp _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_130
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_80:
	movaps xmm0, xmm2
	subss xmm0, [ebp+0x18]
	jmp _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_140
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_70:
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [_float_255_00000000]
	jmp _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_150
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_60:
	movaps xmm0, xmm2
	subss xmm0, [ebp+0x14]
	jmp _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_160
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_50:
	movaps xmm0, xmm3
	mulss xmm0, [_float_255_00000000]
	jmp _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_170
_Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_40:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	jmp _Z23Dvar_SetColorFromSourcePK6dvar_sffff13DvarSetSource_180
	nop


;Dvar_SetFloatFromSource(dvar_s const*, float, DvarSetSource)
_Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	cmp byte [edi+0xa], 0x1
	jz _Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource_10
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x38], ebx
	mov esi, ebx
_Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource_20:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource_10:
	movss [ebp-0x38], xmm0
	mov esi, [ebp-0x38]
	jmp _Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource_20
	nop


;Dvar_SetFromStringByName(char const*, char const*)
_Z24Dvar_SetFromStringByNamePKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, esi
	call _Z21Dvar_FindMalleableVarPKc
	test eax, eax
	jz _Z24Dvar_SetFromStringByNamePKcS0__10
	xor ecx, ecx
	mov edx, ebx
	call _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource
_Z24Dvar_SetFromStringByNamePKcS0__30:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Dvar_SetFromStringByNamePKcS0__10:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov edi, eax
	test eax, eax
	jz _Z24Dvar_SetFromStringByNamePKcS0__20
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Dvar_SetFromStringByNamePKcS0__20:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	jmp _Z24Dvar_SetFromStringByNamePKcS0__30


;Dvar_DisplayableResetValue(dvar_s const*)
_Z26Dvar_DisplayableResetValuePK6dvar_s:
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_GetUnpackedColorByName(char const*, float*)
_Z27Dvar_GetUnpackedColorByNamePKcPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	call _Z21Dvar_FindMalleableVarPKc
	test eax, eax
	jz _Z27Dvar_GetUnpackedColorByNamePKcPf_10
	cmp byte [eax+0xa], 0x8
	jz _Z27Dvar_GetUnpackedColorByNamePKcPf_20
	lea edx, [ebp-0xc]
	mov eax, [eax+0xc]
	call _Z18Dvar_StringToColorPKcPh
_Z27Dvar_GetUnpackedColorByNamePKcPf_30:
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
_Z27Dvar_GetUnpackedColorByNamePKcPf_20:
	mov eax, [eax+0xc]
	mov [ebp-0xc], eax
	jmp _Z27Dvar_GetUnpackedColorByNamePKcPf_30
_Z27Dvar_GetUnpackedColorByNamePKcPf_10:
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
_Z28Dvar_DisplayableLatchedValuePK6dvar_s:
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
	call _Z18Dvar_ValueToStringPK6dvar_s9DvarValue
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_DomainToString_GetLines(unsigned char, DvarLimits, char*, int, int*)
_Z28Dvar_DomainToString_GetLinesh10DvarLimitsPciPi:
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
	jmp _Z28Dvar_DomainToString_Internalh10DvarLimitsPciPi
	nop


;Dvar_IndexStringToEnumString(dvar_s const*, char const*)
_Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc:
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
	jnz _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_10
_Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_30:
	mov eax, _cstring_null
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_10:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	test ecx, ecx
	jle _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_20
	movsx eax, byte [ebx]
	sub eax, 0x30
	cmp eax, 0x9
	ja _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_30
	xor edx, edx
_Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_40:
	add edx, 0x1
	cmp ecx, edx
	jz _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_20
	movsx eax, byte [ebx+edx]
	sub eax, 0x30
	cmp eax, 0x9
	jbe _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_40
	jmp _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_30
_Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_20:
	mov [esp], ebx
	call atoi
	mov edx, eax
	test eax, eax
	js _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_30
	cmp eax, [esi+0x3c]
	jge _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc_30
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
_Z28Dvar_MakeLatchedValueCurrentPK6dvar_s:
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
	call _Z15Dvar_SetVariantP6dvar_s9DvarValue13DvarSetSource
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_SetFromStringByNameFromSource(char const*, char const*, DvarSetSource)
_Z34Dvar_SetFromStringByNameFromSourcePKcS0_13DvarSetSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, edi
	call _Z21Dvar_FindMalleableVarPKc
	mov ebx, eax
	test eax, eax
	jz _Z34Dvar_SetFromStringByNameFromSourcePKcS0_13DvarSetSource_10
	mov ecx, [ebp+0x10]
	mov edx, esi
	call _Z28Dvar_SetFromStringFromSourcePK6dvar_sPKc13DvarSetSource
_Z34Dvar_SetFromStringByNameFromSourcePKcS0_13DvarSetSource_30:
	mov eax, ebx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34Dvar_SetFromStringByNameFromSourcePKcS0_13DvarSetSource_10:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov esi, eax
	test eax, eax
	jz _Z34Dvar_SetFromStringByNameFromSourcePKcS0_13DvarSetSource_20
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov ebx, esi
	mov eax, ebx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34Dvar_SetFromStringByNameFromSourcePKcS0_13DvarSetSource_20:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	mov ebx, eax
	jmp _Z34Dvar_SetFromStringByNameFromSourcePKcS0_13DvarSetSource_30
	nop
	add [eax], al


;Dvar_Init()
_Z9Dvar_Initv:
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
	call _Z21Dvar_FindMalleableVarPKc
	mov [ebp-0x8c], eax
	test eax, eax
	jz _Z9Dvar_Initv_10
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
	call _Z15Dvar_ReregisterP6dvar_sPKcht9DvarValue10DvarLimitsS2_
	mov eax, [ebp-0x8c]
	mov [dvar_cheats], eax
	call _Z16Dvar_AddCommandsv
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9Dvar_Initv_10:
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
	call _Z16Dvar_RegisterNewPKcht9DvarValue10DvarLimitsS0_
	mov [dvar_cheats], eax
	call _Z16Dvar_AddCommandsv
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
_float__340282346638528859811704:		dd 0xff7fffff	; -3.40282e+38
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_00100000:		dd 0x3a83126f	; 0.001

