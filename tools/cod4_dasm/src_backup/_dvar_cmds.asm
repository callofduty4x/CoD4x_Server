;Imports of dvar_cmds:
	extern _Z9I_stricmpPKcS0_
	extern _Z28Dvar_DisplayableLatchedValuePK6dvar_s
	extern _Z9FS_PrintfiPKcz
	extern _Z26Dvar_DisplayableResetValuePK6dvar_s
	extern _Z10Com_FilterPKcS0_i
	extern _Z10Com_PrintfiPKcz
	extern _Z21Dvar_DisplayableValuePK6dvar_s
	extern _Z20Dvar_HasLatchedValuePK6dvar_s
	extern _Z11Com_sprintfPciPKcz
	extern _Z16Com_PrintMessageiPKci
	extern _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits
	extern strcpy
	extern _Z23SV_SetConfigValueForKeyiiPKcS0_
	extern _Z19Info_SetValueForKeyPcPKcS1_
	extern _Z23Info_SetValueForKey_BigPcPKcS1_
	extern cmd_args
	extern _Z16Dvar_IsValidNamePKc
	extern _Z15Dvar_SetCommandPKcS0_
	extern _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	extern _Z10I_strncpyzPcPKci
	extern _Z16Sys_Millisecondsv
	extern _Z2vaPKcz
	extern atoi
	extern _Z12Dvar_FindVarPKc
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern atof
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc
	extern _Z22Dvar_SetBoolFromSourcePK6dvar_sh13DvarSetSource
	extern _Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource
	extern _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource
	extern _Z9I_strncatPciPKc
	extern _Z24Dvar_SetFromStringByNamePKcS0_
	extern dvarCount
	extern _Z15Dvar_GetAtIndexi
	extern _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	extern _Z13Dvar_AddFlagsPK6dvar_si
	extern com_logfile
	extern _Z16Dvar_PrintDomainh10DvarLimits
	extern _Z10Dvar_ResetPK6dvar_s13DvarSetSource
	extern _Z28CL_GetUsernameForLocalClienti
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s

;Exports of dvar_cmds:
	global info1
	global _Z24Dvar_WriteSingleVariablePK6dvar_sPv
	global _Z23Dvar_WriteSingleDefaultPK6dvar_sPv
	global _Z15Dvar_ListSinglePK6dvar_sPv
	global _Z18Com_DvarDumpSinglePK6dvar_sPv
	global _ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter
	global _Z20PbDvarValidateSinglePK6dvar_sPv
	global _Z16SV_SetConfigDvarPK6dvar_sPv
	global _Z21Dvar_InfoStringSinglePK6dvar_sPv
	global _Z25Dvar_InfoStringSingle_BigPK6dvar_sPv
	global _ZZ16Dvar_AddCommandsvE15Dvar_SetU_f_VAR
	global _ZZ16Dvar_AddCommandsvE24Dvar_RegisterFloat_f_VAR
	global _ZZ16Dvar_AddCommandsvE22Dvar_RegisterInt_f_VAR
	global _ZZ16Dvar_AddCommandsvE23Dvar_RegisterBool_f_VAR
	global _ZZ16Dvar_AddCommandsvE15Dvar_Dump_f_VAR
	global _ZZ16Dvar_AddCommandsvE15Dvar_List_f_VAR
	global _ZZ16Dvar_AddCommandsvE16Dvar_Reset_f_VAR
	global _ZZ16Dvar_AddCommandsvE20Dvar_SetToTime_f_VAR
	global _ZZ16Dvar_AddCommandsvE30Dvar_SetFromLocalizedStr_f_VAR
	global _ZZ16Dvar_AddCommandsvE22Dvar_SetFromDvar_f_VAR
	global _ZZ16Dvar_AddCommandsvE15Dvar_SetA_f_VAR
	global _ZZ16Dvar_AddCommandsvE15Dvar_SetS_f_VAR
	global _ZZ16Dvar_AddCommandsvE14Dvar_Set_f_VAR
	global _ZZ16Dvar_AddCommandsvE22Dvar_TogglePrint_f_VAR
	global _ZZ16Dvar_AddCommandsvE17Dvar_Toggle_f_VAR
	global _Z26Dvar_SetFromLocalizedStr_fv
	global _Z16Dvar_SetToTime_fv
	global _Z19Dvar_RegisterBool_fv
	global _Z18Dvar_RegisterInt_fv
	global _Z20Dvar_RegisterFloat_fv
	global _Z19Dvar_ToggleInternalv
	global _Z22Dvar_GetCombinedStringPci
	global _Z10Dvar_Set_fv
	global _Z10PBdvar_setPKcS0_
	global _Z10PbDvarWalkPPcS0_PiS0_
	global _Z11Dvar_Dump_fv
	global _Z11Dvar_List_fv
	global _Z11Dvar_SetA_fv
	global _Z11Dvar_SetS_fv
	global _Z11Dvar_SetU_fv
	global _Z12Com_DvarDumpiPKc
	global _Z12Dvar_Commandv
	global _Z12Dvar_Reset_fv
	global _Z12SV_SetConfigiii
	global _Z13Dvar_Toggle_fv
	global _Z14PbDvarValidatePc
	global _Z15Dvar_InfoStringii
	global _Z16Dvar_AddCommandsv
	global _Z18Dvar_SetFromDvar_fv
	global _Z18Dvar_TogglePrint_fv
	global _Z18Dvar_WriteDefaultsi
	global _Z19Dvar_InfoString_Bigi
	global _Z19Dvar_WriteVariablesi


SECTION .text


;Dvar_WriteSingleVariable(dvar_s const*, void*)
_Z24Dvar_WriteSingleVariablePK6dvar_sPv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_cl_cdkey
	mov eax, [esi]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z24Dvar_WriteSingleVariablePK6dvar_sPv_10
	test byte [esi+0x8], 0x1
	jnz _Z24Dvar_WriteSingleVariablePK6dvar_sPv_20
_Z24Dvar_WriteSingleVariablePK6dvar_sPv_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24Dvar_WriteSingleVariablePK6dvar_sPv_20:
	mov eax, [ebp+0xc]
	mov ebx, [eax]
	mov [esp], esi
	call _Z28Dvar_DisplayableLatchedValuePK6dvar_s
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_seta_s_s
	mov [esp], ebx
	call _Z9FS_PrintfiPKcz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_WriteSingleDefault(dvar_s const*, void*)
_Z23Dvar_WriteSingleDefaultPK6dvar_sPv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_cl_cdkey
	mov eax, [esi]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23Dvar_WriteSingleDefaultPK6dvar_sPv_10
	movzx eax, word [esi+0x8]
	test eax, 0x40c0
	jz _Z23Dvar_WriteSingleDefaultPK6dvar_sPv_20
_Z23Dvar_WriteSingleDefaultPK6dvar_sPv_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z23Dvar_WriteSingleDefaultPK6dvar_sPv_20:
	mov eax, [ebp+0xc]
	mov ebx, [eax]
	mov [esp], esi
	call _Z26Dvar_DisplayableResetValuePK6dvar_s
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_set_s_s
	mov [esp], ebx
	call _Z9FS_PrintfiPKcz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Dvar_ListSingle(dvar_s const*, void*)
_Z15Dvar_ListSinglePK6dvar_sPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	jz _Z15Dvar_ListSinglePK6dvar_sPv_10
	mov dword [esp+0x8], 0x0
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z10Com_FilterPKcS0_i
	test al, al
	jz _Z15Dvar_ListSinglePK6dvar_sPv_20
_Z15Dvar_ListSinglePK6dvar_sPv_10:
	movzx eax, word [ebx+0x8]
	test eax, 0x404
	jz _Z15Dvar_ListSinglePK6dvar_sPv_30
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x2
	jz _Z15Dvar_ListSinglePK6dvar_sPv_40
_Z15Dvar_ListSinglePK6dvar_sPv_100:
	mov dword [esp+0x4], _cstring_u
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x40
	jz _Z15Dvar_ListSinglePK6dvar_sPv_50
_Z15Dvar_ListSinglePK6dvar_sPv_110:
	mov dword [esp+0x4], _cstring_r
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x10
	jz _Z15Dvar_ListSinglePK6dvar_sPv_60
_Z15Dvar_ListSinglePK6dvar_sPv_120:
	mov dword [esp+0x4], _cstring_i
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x1
	jz _Z15Dvar_ListSinglePK6dvar_sPv_70
_Z15Dvar_ListSinglePK6dvar_sPv_130:
	mov dword [esp+0x4], _cstring_a
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x20
	jz _Z15Dvar_ListSinglePK6dvar_sPv_80
_Z15Dvar_ListSinglePK6dvar_sPv_140:
	mov dword [esp+0x4], _cstring_l
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	cmp byte [ebx+0x8], 0x0
	jns _Z15Dvar_ListSinglePK6dvar_sPv_90
_Z15Dvar_ListSinglePK6dvar_sPv_150:
	mov dword [esp+0x4], _cstring_c
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z15Dvar_ListSinglePK6dvar_sPv_160:
	mov [esp], ebx
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z15Dvar_ListSinglePK6dvar_sPv_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z15Dvar_ListSinglePK6dvar_sPv_30:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x2
	jnz _Z15Dvar_ListSinglePK6dvar_sPv_100
_Z15Dvar_ListSinglePK6dvar_sPv_40:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x40
	jnz _Z15Dvar_ListSinglePK6dvar_sPv_110
_Z15Dvar_ListSinglePK6dvar_sPv_50:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x10
	jnz _Z15Dvar_ListSinglePK6dvar_sPv_120
_Z15Dvar_ListSinglePK6dvar_sPv_60:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x1
	jnz _Z15Dvar_ListSinglePK6dvar_sPv_130
_Z15Dvar_ListSinglePK6dvar_sPv_70:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	test byte [ebx+0x8], 0x20
	jnz _Z15Dvar_ListSinglePK6dvar_sPv_140
_Z15Dvar_ListSinglePK6dvar_sPv_80:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	cmp byte [ebx+0x8], 0x0
	js _Z15Dvar_ListSinglePK6dvar_sPv_150
_Z15Dvar_ListSinglePK6dvar_sPv_90:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z15Dvar_ListSinglePK6dvar_sPv_160
	nop


;Com_DvarDumpSingle(dvar_s const*, void*)
_Z18Com_DvarDumpSinglePK6dvar_sPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	add dword [edi], 0x1
	mov edx, [edi+0x8]
	test edx, edx
	jz _Z18Com_DvarDumpSinglePK6dvar_sPv_10
	mov dword [esp+0x8], 0x0
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z10Com_FilterPKcS0_i
	test al, al
	jz _Z18Com_DvarDumpSinglePK6dvar_sPv_20
_Z18Com_DvarDumpSinglePK6dvar_sPv_10:
	mov [esp], esi
	call _Z20Dvar_HasLatchedValuePK6dvar_s
	test al, al
	jz _Z18Com_DvarDumpSinglePK6dvar_sPv_30
	mov [esp], esi
	call _Z28Dvar_DisplayableLatchedValuePK6dvar_s
	mov ebx, eax
	mov [esp], esi
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [esp+0x14], ebx
	mov [esp+0x10], eax
	mov eax, [esi]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_______s_s__latch
	mov dword [esp+0x4], 0x800
	lea ebx, [ebp-0x818]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
_Z18Com_DvarDumpSinglePK6dvar_sPv_40:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [edi+0x4]
	mov [esp], eax
	call _Z16Com_PrintMessageiPKci
_Z18Com_DvarDumpSinglePK6dvar_sPv_20:
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Com_DvarDumpSinglePK6dvar_sPv_30:
	mov [esp], esi
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [esp+0x10], eax
	mov eax, [esi]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_______s_s
	mov dword [esp+0x4], 0x800
	lea ebx, [ebp-0x818]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z18Com_DvarDumpSinglePK6dvar_sPv_40


;PbDvarValidateSingle(dvar_s const*, void*)
_Z20PbDvarValidateSinglePK6dvar_sPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp byte [eax], 0x0
	jz _Z20PbDvarValidateSinglePK6dvar_sPv_10
_Z20PbDvarValidateSinglePK6dvar_sPv_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20PbDvarValidateSinglePK6dvar_sPv_10:
	mov ecx, [edi+0xc]
	mov [ebp-0x28], ecx
	mov esi, [edi+0x10]
	mov [ebp-0x24], esi
	mov ebx, [edi+0x14]
	mov [ebp-0x20], ebx
	mov edx, [edi+0x18]
	mov [ebp-0x1c], edx
	mov eax, [edi+0x3c]
	mov edx, [edi+0x40]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov [esp+0x4], ecx
	mov [esp+0x8], esi
	mov [esp+0xc], ebx
	mov edx, [edi+0x18]
	mov [esp+0x10], edx
	movzx eax, byte [edi+0xa]
	mov [esp], eax
	call _Z18Dvar_ValueInDomainh9DvarValue10DvarLimits
	test al, al
	jnz _Z20PbDvarValidateSinglePK6dvar_sPv_20
	mov eax, [edi]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcpy
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_SetConfigDvar(dvar_s const*, void*)
_Z16SV_SetConfigDvarPK6dvar_sPv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	movzx eax, word [ebx+0x8]
	test [esi+0x8], eax
	jz _Z16SV_SetConfigDvarPK6dvar_sPv_10
	mov [esp], ebx
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov eax, [esi+0x4]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call _Z23SV_SetConfigValueForKeyiiPKcS0_
_Z16SV_SetConfigDvarPK6dvar_sPv_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Dvar_InfoStringSingle(dvar_s const*, void*)
_Z21Dvar_InfoStringSinglePK6dvar_sPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx edx, word [ebx+0x8]
	mov eax, [ebp+0xc]
	test [eax], edx
	jz _Z21Dvar_InfoStringSinglePK6dvar_sPv_10
	mov [esp], ebx
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], info1
	call _Z19Info_SetValueForKeyPcPKcS1_
_Z21Dvar_InfoStringSinglePK6dvar_sPv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Dvar_InfoStringSingle_Big(dvar_s const*, void*)
_Z25Dvar_InfoStringSingle_BigPK6dvar_sPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx edx, word [ebx+0x8]
	mov eax, [ebp+0xc]
	test [eax], edx
	jz _Z25Dvar_InfoStringSingle_BigPK6dvar_sPv_10
	mov [esp], ebx
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], info2
	call _Z23Info_SetValueForKey_BigPcPKcS1_
_Z25Dvar_InfoStringSingle_BigPK6dvar_sPv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Dvar_SetFromLocalizedStr_f()
_Z26Dvar_SetFromLocalizedStr_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x1014
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z26Dvar_SetFromLocalizedStr_fv_10
	mov dword [esp+0x4], _cstring_usage_setfromloc
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x1014
	pop ebx
	pop ebp
	ret
_Z26Dvar_SetFromLocalizedStr_fv_10:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z16Dvar_IsValidNamePKc
	test al, al
	jnz _Z26Dvar_SetFromLocalizedStr_fv_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z26Dvar_SetFromLocalizedStr_fv_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z26Dvar_SetFromLocalizedStr_fv_60:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_variable
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x1014
	pop ebx
	pop ebp
	ret
_Z26Dvar_SetFromLocalizedStr_fv_20:
	lea ebx, [ebp-0x1008]
	mov edx, 0x2
	mov eax, ebx
	call _Z22Dvar_GetCombinedStringPci
	cmp byte [ebp-0x1008], 0x40
	jz _Z26Dvar_SetFromLocalizedStr_fv_40
_Z26Dvar_SetFromLocalizedStr_fv_80:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z26Dvar_SetFromLocalizedStr_fv_50
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z26Dvar_SetFromLocalizedStr_fv_70:
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z15Dvar_SetCommandPKcS0_
	add esp, 0x1014
	pop ebx
	pop ebp
	ret
_Z26Dvar_SetFromLocalizedStr_fv_30:
	mov eax, _cstring_null
	jmp _Z26Dvar_SetFromLocalizedStr_fv_60
_Z26Dvar_SetFromLocalizedStr_fv_50:
	mov eax, _cstring_null
	jmp _Z26Dvar_SetFromLocalizedStr_fv_70
_Z26Dvar_SetFromLocalizedStr_fv_40:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	lea eax, [ebp-0x1007]
	mov [esp], eax
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	test eax, eax
	jz _Z26Dvar_SetFromLocalizedStr_fv_80
	cmp byte [eax], 0x0
	jz _Z26Dvar_SetFromLocalizedStr_fv_80
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	jmp _Z26Dvar_SetFromLocalizedStr_fv_80


;Dvar_SetToTime_f()
_Z16Dvar_SetToTime_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z16Dvar_SetToTime_fv_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z16Dvar_IsValidNamePKc
	test al, al
	jnz _Z16Dvar_SetToTime_fv_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z16Dvar_SetToTime_fv_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z16Dvar_SetToTime_fv_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_variable
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z16Dvar_SetToTime_fv_20:
	call _Z16Sys_Millisecondsv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i1
	call _Z2vaPKcz
	mov edx, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z16Dvar_SetToTime_fv_40
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z16Dvar_SetToTime_fv_60:
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z15Dvar_SetCommandPKcS0_
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z16Dvar_SetToTime_fv_10:
	mov dword [esp+0x4], _cstring_usage_set_variab
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z16Dvar_SetToTime_fv_30:
	mov eax, _cstring_null
	jmp _Z16Dvar_SetToTime_fv_50
_Z16Dvar_SetToTime_fv_40:
	mov eax, _cstring_null
	jmp _Z16Dvar_SetToTime_fv_60


;Dvar_RegisterBool_f()
_Z19Dvar_RegisterBool_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, cmd_args
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x3
	jz _Z19Dvar_RegisterBool_fv_10
	test eax, eax
	jle _Z19Dvar_RegisterBool_fv_20
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax]
_Z19Dvar_RegisterBool_fv_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_name_def
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z19Dvar_RegisterBool_fv_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19Dvar_RegisterBool_fv_20:
	mov eax, _cstring_null
	jmp _Z19Dvar_RegisterBool_fv_30
_Z19Dvar_RegisterBool_fv_10:
	mov eax, [ecx+edx*4+0x64]
	mov ebx, [eax+0x4]
	mov eax, [eax+0x8]
	mov [esp], eax
	call atoi
	test eax, eax
	setnz al
	mov esi, eax
	mov [esp], ebx
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z19Dvar_RegisterBool_fv_40
	movzx edx, byte [eax+0xa]
	cmp dl, 0x7
	jz _Z19Dvar_RegisterBool_fv_50
	test dl, dl
	jz _Z19Dvar_RegisterBool_fv_60
_Z19Dvar_RegisterBool_fv_70:
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvar_s_is_not_a_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z19Dvar_RegisterBool_fv_60
_Z19Dvar_RegisterBool_fv_50:
	test byte [eax+0x9], 0x40
	jz _Z19Dvar_RegisterBool_fv_70
_Z19Dvar_RegisterBool_fv_40:
	mov dword [esp+0xc], _cstring_external_dvar
	mov dword [esp+0x8], 0x4000
	mov edx, esi
	movzx eax, dl
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17Dvar_RegisterBoolPKchtS0_
	jmp _Z19Dvar_RegisterBool_fv_60
	nop


;Dvar_RegisterInt_f()
_Z18Dvar_RegisterInt_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x5
	jz _Z18Dvar_RegisterInt_fv_10
	test eax, eax
	jle _Z18Dvar_RegisterInt_fv_20
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax]
_Z18Dvar_RegisterInt_fv_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_name_def1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z18Dvar_RegisterInt_fv_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Dvar_RegisterInt_fv_20:
	mov eax, _cstring_null
	jmp _Z18Dvar_RegisterInt_fv_30
_Z18Dvar_RegisterInt_fv_10:
	mov eax, [ebx+edx*4+0x64]
	mov edi, [eax+0x4]
	mov eax, [eax+0x8]
	mov [esp], eax
	call atoi
	mov [ebp-0x1c], eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jg _Z18Dvar_RegisterInt_fv_40
	mov eax, _cstring_null
_Z18Dvar_RegisterInt_fv_80:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg _Z18Dvar_RegisterInt_fv_50
	mov eax, _cstring_null
_Z18Dvar_RegisterInt_fv_110:
	mov [esp], eax
	call atoi
	mov ebx, eax
	cmp esi, eax
	jle _Z18Dvar_RegisterInt_fv_60
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_dvar_s_min_i_sho
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z18Dvar_RegisterInt_fv_70
_Z18Dvar_RegisterInt_fv_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0xc]
	jmp _Z18Dvar_RegisterInt_fv_80
_Z18Dvar_RegisterInt_fv_60:
	mov [esp], edi
	call _Z12Dvar_FindVarPKc
	mov edx, eax
	test eax, eax
	jz _Z18Dvar_RegisterInt_fv_90
	movzx eax, byte [eax+0xa]
	cmp al, 0x7
	jz _Z18Dvar_RegisterInt_fv_100
_Z18Dvar_RegisterInt_fv_120:
	sub al, 0x5
	cmp al, 0x1
	jbe _Z18Dvar_RegisterInt_fv_70
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvar_s_is_not_an
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z18Dvar_RegisterInt_fv_70
_Z18Dvar_RegisterInt_fv_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z18Dvar_RegisterInt_fv_110
_Z18Dvar_RegisterInt_fv_100:
	test byte [edx+0x9], 0x40
	jz _Z18Dvar_RegisterInt_fv_120
_Z18Dvar_RegisterInt_fv_90:
	mov dword [esp+0x14], _cstring_external_dvar
	mov dword [esp+0x10], 0x4000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16Dvar_RegisterIntPKciiitS0_
	jmp _Z18Dvar_RegisterInt_fv_70


;Dvar_RegisterFloat_f()
_Z20Dvar_RegisterFloat_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov ebx, cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x5
	jz _Z20Dvar_RegisterFloat_fv_10
	test eax, eax
	jle _Z20Dvar_RegisterFloat_fv_20
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax]
_Z20Dvar_RegisterFloat_fv_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_name_def1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z20Dvar_RegisterFloat_fv_70:
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
_Z20Dvar_RegisterFloat_fv_20:
	mov eax, _cstring_null
	jmp _Z20Dvar_RegisterFloat_fv_30
_Z20Dvar_RegisterFloat_fv_10:
	mov eax, [ebx+edx*4+0x64]
	mov esi, [eax+0x4]
	mov eax, [eax+0x8]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	movss [ebp-0x14], xmm0
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jg _Z20Dvar_RegisterFloat_fv_40
	mov eax, _cstring_null
_Z20Dvar_RegisterFloat_fv_80:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x28]
	cvtsd2ss xmm0, [ebp-0x28]
	movss [ebp-0x10], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg _Z20Dvar_RegisterFloat_fv_50
	mov eax, _cstring_null
_Z20Dvar_RegisterFloat_fv_110:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	movss [ebp-0xc], xmm0
	movss xmm0, dword [ebp-0x10]
	ucomiss xmm0, [ebp-0xc]
	jbe _Z20Dvar_RegisterFloat_fv_60
	cvtss2sd xmm0, [ebp-0xc]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp-0x10]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_dvar_s_min_g_sho
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z20Dvar_RegisterFloat_fv_70
_Z20Dvar_RegisterFloat_fv_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0xc]
	jmp _Z20Dvar_RegisterFloat_fv_80
_Z20Dvar_RegisterFloat_fv_60:
	mov [esp], esi
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z20Dvar_RegisterFloat_fv_90
	movzx edx, byte [eax+0xa]
	cmp dl, 0x7
	jz _Z20Dvar_RegisterFloat_fv_100
	sub dl, 0x1
	jz _Z20Dvar_RegisterFloat_fv_70
_Z20Dvar_RegisterFloat_fv_120:
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvar_s_is_not_an
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z20Dvar_RegisterFloat_fv_70
_Z20Dvar_RegisterFloat_fv_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z20Dvar_RegisterFloat_fv_110
_Z20Dvar_RegisterFloat_fv_100:
	test byte [eax+0x9], 0x40
	jz _Z20Dvar_RegisterFloat_fv_120
_Z20Dvar_RegisterFloat_fv_90:
	mov dword [esp+0x14], _cstring_external_dvar
	mov dword [esp+0x10], 0x4000
	movss xmm0, dword [ebp-0xc]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x10]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x14]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	jmp _Z20Dvar_RegisterFloat_fv_70


;Dvar_ToggleInternal()
_Z19Dvar_ToggleInternalv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z19Dvar_ToggleInternalv_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [ebp-0x28], eax
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	mov [ebp-0x24], eax
	test eax, eax
	jz _Z19Dvar_ToggleInternalv_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jz _Z19Dvar_ToggleInternalv_30
	mov edx, [ebp-0x24]
	mov [esp], edx
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [ebp-0x20], eax
	mov ecx, 0x2
	mov dword [ebp-0x1c], 0x8
	mov edi, ebx
	mov [ebp-0x2c], ebx
	jmp _Z19Dvar_ToggleInternalv_40
_Z19Dvar_ToggleInternalv_80:
	mov esi, _cstring_null
	mov eax, [ebp-0x24]
	cmp byte [eax+0xa], 0x6
	jz _Z19Dvar_ToggleInternalv_50
_Z19Dvar_ToggleInternalv_90:
	mov [esp+0x4], esi
	mov edx, [ebp-0x20]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	add dword [ebp-0x1c], 0x4
	test eax, eax
	jz _Z19Dvar_ToggleInternalv_60
_Z19Dvar_ToggleInternalv_100:
	mov ecx, ebx
_Z19Dvar_ToggleInternalv_40:
	lea ebx, [ecx+0x1]
	mov edx, [edi]
	mov eax, [edi+edx*4+0x44]
	cmp eax, ebx
	jle _Z19Dvar_ToggleInternalv_70
	cmp ecx, eax
	jge _Z19Dvar_ToggleInternalv_80
	mov eax, [edi+edx*4+0x64]
	mov ecx, [ebp-0x1c]
	mov esi, [ecx+eax]
	mov eax, [ebp-0x24]
	cmp byte [eax+0xa], 0x6
	jnz _Z19Dvar_ToggleInternalv_90
_Z19Dvar_ToggleInternalv_50:
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc
	cmp byte [eax], 0x0
	cmovnz esi, eax
	mov [esp+0x4], esi
	mov edx, [ebp-0x20]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	add dword [ebp-0x1c], 0x4
	test eax, eax
	jnz _Z19Dvar_ToggleInternalv_100
_Z19Dvar_ToggleInternalv_60:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	cmp ebx, [ecx+eax*4+0x44]
	jl _Z19Dvar_ToggleInternalv_110
	mov eax, _cstring_null
_Z19Dvar_ToggleInternalv_140:
	mov [esp+0x4], eax
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z15Dvar_SetCommandPKcS0_
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Dvar_ToggleInternalv_30:
	mov edx, [ebp-0x24]
	movzx eax, byte [edx+0xa]
	cmp eax, 0x8
	jbe _Z19Dvar_ToggleInternalv_120
	xor eax, eax
_Z19Dvar_ToggleInternalv_200:
	movzx eax, al
_Z19Dvar_ToggleInternalv_170:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Dvar_ToggleInternalv_10:
	jnz _Z19Dvar_ToggleInternalv_130
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax]
_Z19Dvar_ToggleInternalv_190:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_variable
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Dvar_ToggleInternalv_120:
	jmp dword [eax*4+_Z19Dvar_ToggleInternalv_jumptab_0]
_Z19Dvar_ToggleInternalv_110:
	mov eax, [ecx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	jmp _Z19Dvar_ToggleInternalv_140
_Z19Dvar_ToggleInternalv_70:
	cmp eax, 0x2
	jg _Z19Dvar_ToggleInternalv_150
	mov ebx, _cstring_null
_Z19Dvar_ToggleInternalv_180:
	mov eax, [ebp-0x24]
	cmp byte [eax+0xa], 0x6
	jz _Z19Dvar_ToggleInternalv_160
_Z19Dvar_ToggleInternalv_290:
	mov [esp+0x4], ebx
	mov edx, [ebp-0x28]
	mov [esp], edx
	call _Z15Dvar_SetCommandPKcS0_
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Dvar_ToggleInternalv_20:
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_toggle_failed_dv
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	jmp _Z19Dvar_ToggleInternalv_170
_Z19Dvar_ToggleInternalv_150:
	mov eax, [edi+edx*4+0x64]
	mov ebx, [eax+0x8]
	jmp _Z19Dvar_ToggleInternalv_180
_Z19Dvar_ToggleInternalv_130:
	mov eax, _cstring_null
	jmp _Z19Dvar_ToggleInternalv_190
_Z19Dvar_ToggleInternalv_340:
	mov dword [esp+0x8], 0x1
	mov ecx, [ebp-0x24]
	xor eax, eax
	cmp byte [ecx+0xc], 0x0
	setz al
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z22Dvar_SetBoolFromSourcePK6dvar_sh13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_350:
	mov eax, [ebp-0x24]
	movss xmm1, dword [eax+0x3c]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	jb _Z19Dvar_ToggleInternalv_210
	movss xmm0, dword [eax+0x40]
	ucomiss xmm0, [_float_1_00000000]
	jb _Z19Dvar_ToggleInternalv_220
	ucomiss xmm2, [eax+0xc]
	jp _Z19Dvar_ToggleInternalv_230
	jz _Z19Dvar_ToggleInternalv_240
_Z19Dvar_ToggleInternalv_230:
	mov dword [esp+0x8], 0x1
	movss [esp+0x4], xmm2
	mov [esp], eax
	call _Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_370:
	mov edx, [ebp-0x24]
	mov eax, [edx+0x3c]
	test eax, eax
	jle _Z19Dvar_ToggleInternalv_250
_Z19Dvar_ToggleInternalv_330:
	cmp eax, [edx+0xc]
	jz _Z19Dvar_ToggleInternalv_260
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_380:
	mov ecx, [ebp-0x24]
	mov edx, [ecx+0x3c]
	test edx, edx
	jnz _Z19Dvar_ToggleInternalv_270
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_360:
	mov edx, [ebp-0x24]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_toggle_with_no_a
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_270:
	mov dword [esp+0x8], 0x1
	mov eax, [ecx+0xc]
	add eax, 0x1
	mov ecx, edx
	cdq
	idiv ecx
	mov [esp+0x4], edx
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_210:
	mov ecx, eax
_Z19Dvar_ToggleInternalv_300:
	ucomiss xmm1, [ecx+0xc]
	jnz _Z19Dvar_ToggleInternalv_280
	jp _Z19Dvar_ToggleInternalv_280
	mov dword [esp+0x8], 0x1
	mov eax, [ecx+0x40]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_160:
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z28Dvar_IndexStringToEnumStringPK6dvar_sPKc
	cmp byte [eax], 0x0
	cmovnz ebx, eax
	jmp _Z19Dvar_ToggleInternalv_290
_Z19Dvar_ToggleInternalv_280:
	mov dword [esp+0x8], 0x1
	movss [esp+0x4], xmm1
	mov [esp], ecx
	call _Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_220:
	mov ecx, [ebp-0x24]
	jmp _Z19Dvar_ToggleInternalv_300
_Z19Dvar_ToggleInternalv_260:
	mov dword [esp+0x8], 0x1
	mov eax, [edx+0x40]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_250:
	mov ebx, [edx+0x40]
	test ebx, ebx
	jle _Z19Dvar_ToggleInternalv_310
	mov ecx, [edx+0xc]
	test ecx, ecx
	jz _Z19Dvar_ToggleInternalv_320
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_240:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x3f800000
	mov edx, [ebp-0x24]
	mov [esp], edx
	call _Z23Dvar_SetFloatFromSourcePK6dvar_sf13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_320:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call _Z21Dvar_SetIntFromSourcePK6dvar_si13DvarSetSource
	mov eax, 0x1
	jmp _Z19Dvar_ToggleInternalv_200
_Z19Dvar_ToggleInternalv_310:
	mov edx, [ebp-0x24]
	jmp _Z19Dvar_ToggleInternalv_330
	
	
_Z19Dvar_ToggleInternalv_jumptab_0:
	dd _Z19Dvar_ToggleInternalv_340
	dd _Z19Dvar_ToggleInternalv_350
	dd _Z19Dvar_ToggleInternalv_360
	dd _Z19Dvar_ToggleInternalv_360
	dd _Z19Dvar_ToggleInternalv_360
	dd _Z19Dvar_ToggleInternalv_370
	dd _Z19Dvar_ToggleInternalv_380
	dd _Z19Dvar_ToggleInternalv_360
	dd _Z19Dvar_ToggleInternalv_360


;Dvar_GetCombinedString(char*, int)
_Z22Dvar_GetCombinedStringPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	mov edx, cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	mov [ebp-0x28], eax
	mov ecx, [ebp-0x2c]
	mov byte [ecx], 0x0
	mov edx, [ebp-0x30]
	cmp eax, edx
	jle _Z22Dvar_GetCombinedStringPci_10
	mov ebx, edx
	shl edx, 0x2
	mov [ebp-0x1c], edx
	mov dword [ebp-0x24], 0x0
	jmp _Z22Dvar_GetCombinedStringPci_20
_Z22Dvar_GetCombinedStringPci_50:
	mov dword [ebp-0x20], _cstring_null
	mov edi, [ebp-0x20]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	add [ebp-0x24], ecx
	cmp dword [ebp-0x24], 0xffd
	jg _Z22Dvar_GetCombinedStringPci_10
_Z22Dvar_GetCombinedStringPci_60:
	cmp ebx, esi
	jl _Z22Dvar_GetCombinedStringPci_30
	mov eax, _cstring_null
_Z22Dvar_GetCombinedStringPci_70:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call _Z9I_strncatPciPKc
	mov eax, [ebp-0x28]
	sub eax, 0x1
	cmp ebx, eax
	jz _Z22Dvar_GetCombinedStringPci_40
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x1000
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z9I_strncatPciPKc
_Z22Dvar_GetCombinedStringPci_40:
	add ebx, 0x1
	add dword [ebp-0x1c], 0x4
	cmp [ebp-0x28], ebx
	jz _Z22Dvar_GetCombinedStringPci_10
_Z22Dvar_GetCombinedStringPci_20:
	mov ecx, cmd_args
	mov edx, [ecx]
	mov esi, [ecx+edx*4+0x44]
	cmp ebx, esi
	jge _Z22Dvar_GetCombinedStringPci_50
	mov eax, [ecx+edx*4+0x64]
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+eax]
	mov [ebp-0x20], eax
	mov edi, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	add [ebp-0x24], ecx
	cmp dword [ebp-0x24], 0xffd
	jle _Z22Dvar_GetCombinedStringPci_60
_Z22Dvar_GetCombinedStringPci_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Dvar_GetCombinedStringPci_30:
	mov ecx, cmd_args
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x1c]
	mov eax, [eax+edx]
	jmp _Z22Dvar_GetCombinedStringPci_70
	nop


;Dvar_Set_f()
_Z10Dvar_Set_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x1010
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z10Dvar_Set_fv_10
	mov dword [esp+0x4], _cstring_usage_set_variab1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x1010
	pop ebx
	pop esi
	pop ebp
	ret
_Z10Dvar_Set_fv_10:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z16Dvar_IsValidNamePKc
	test al, al
	jnz _Z10Dvar_Set_fv_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z10Dvar_Set_fv_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z10Dvar_Set_fv_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_variable
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x1010
	pop ebx
	pop esi
	pop ebp
	ret
_Z10Dvar_Set_fv_20:
	lea esi, [ebp-0x1008]
	mov edx, 0x2
	mov eax, esi
	call _Z22Dvar_GetCombinedStringPci
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z10Dvar_Set_fv_40
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z10Dvar_Set_fv_60:
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z15Dvar_SetCommandPKcS0_
	add esp, 0x1010
	pop ebx
	pop esi
	pop ebp
	ret
_Z10Dvar_Set_fv_30:
	mov eax, _cstring_null
	jmp _Z10Dvar_Set_fv_50
_Z10Dvar_Set_fv_40:
	mov eax, _cstring_null
	jmp _Z10Dvar_Set_fv_60
	nop


;PBdvar_set(char const*, char const*)
_Z10PBdvar_setPKcS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z10PBdvar_setPKcS0__10
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z24Dvar_SetFromStringByNamePKcS0_
_Z10PBdvar_setPKcS0__10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;PbDvarWalk(char**, char**, int*, char**)
_Z10PbDvarWalkPPcS0_PiS0_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [_ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter]
	mov eax, dvarCount
	cmp edx, [eax]
	jl _Z10PbDvarWalkPPcS0_PiS0__10
	mov dword [_ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter], 0x0
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z10PbDvarWalkPPcS0_PiS0__10:
	mov [esp], edx
	call _Z15Dvar_GetAtIndexi
	mov ebx, eax
	add dword [_ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter], 0x1
	mov eax, [eax]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov [esp], ebx
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov edx, [ebp+0xc]
	mov [edx], eax
	movzx eax, word [ebx+0x8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov [esp], ebx
	call _Z26Dvar_DisplayableResetValuePK6dvar_s
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Dvar_Dump_f()
_Z11Dvar_Dump_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z11Dvar_Dump_fv_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z12Com_DvarDumpiPKc
	leave
	ret
_Z11Dvar_Dump_fv_10:
	xor eax, eax
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z12Com_DvarDumpiPKc
	leave
	ret
	nop


;Dvar_List_f()
_Z11Dvar_List_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z11Dvar_List_fv_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z11Dvar_List_fv_20:
	mov [esp+0x4], eax
	mov dword [esp], _Z15Dvar_ListSinglePK6dvar_sPv
	call _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	mov eax, dvarCount
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_total_dvars
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret
_Z11Dvar_List_fv_10:
	xor eax, eax
	jmp _Z11Dvar_List_fv_20


;Dvar_SetA_f()
_Z11Dvar_SetA_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z11Dvar_SetA_fv_10
	mov dword [esp+0x4], _cstring_usage_seta_varia
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z11Dvar_SetA_fv_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z11Dvar_SetA_fv_10:
	call _Z10Dvar_Set_fv
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z11Dvar_SetA_fv_20
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z11Dvar_SetA_fv_40:
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z11Dvar_SetA_fv_30
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z13Dvar_AddFlagsPK6dvar_si
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z11Dvar_SetA_fv_20:
	mov eax, _cstring_null
	jmp _Z11Dvar_SetA_fv_40


;Dvar_SetS_f()
_Z11Dvar_SetS_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z11Dvar_SetS_fv_10
	mov dword [esp+0x4], _cstring_usage_sets_varia
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z11Dvar_SetS_fv_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z11Dvar_SetS_fv_10:
	call _Z10Dvar_Set_fv
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z11Dvar_SetS_fv_20
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z11Dvar_SetS_fv_40:
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z11Dvar_SetS_fv_30
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call _Z13Dvar_AddFlagsPK6dvar_si
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z11Dvar_SetS_fv_20:
	mov eax, _cstring_null
	jmp _Z11Dvar_SetS_fv_40


;Dvar_SetU_f()
_Z11Dvar_SetU_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z11Dvar_SetU_fv_10
	mov dword [esp+0x4], _cstring_usage_setu_varia
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z11Dvar_SetU_fv_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z11Dvar_SetU_fv_10:
	call _Z10Dvar_Set_fv
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z11Dvar_SetU_fv_20
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z11Dvar_SetU_fv_40:
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z11Dvar_SetU_fv_30
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call _Z13Dvar_AddFlagsPK6dvar_si
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z11Dvar_SetU_fv_20:
	mov eax, _cstring_null
	jmp _Z11Dvar_SetU_fv_40


;Com_DvarDump(int, char const*)
_Z12Com_DvarDumpiPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xb0
	mov esi, [ebp+0x8]
	cmp esi, 0x6
	jz _Z12Com_DvarDumpiPKc_10
_Z12Com_DvarDumpiPKc_30:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring__dvar_dump_
	mov [esp], esi
	call _Z16Com_PrintMessageiPKci
	mov dword [ebp-0x14], 0x0
	mov [ebp-0x10], esi
	mov eax, [ebp+0xc]
	mov [ebp-0xc], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], _Z18Com_DvarDumpSinglePK6dvar_sPv
	call _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	mov eax, dvarCount
	mov eax, [eax]
	mov [esp+0x10], eax
	mov eax, [ebp-0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i_total_dvarsi_d
	mov dword [esp+0x4], 0x80
	lea ebx, [ebp-0x94]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z16Com_PrintMessageiPKci
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring__end_dvar_dump_
	mov [esp], esi
	call _Z16Com_PrintMessageiPKci
_Z12Com_DvarDumpiPKc_20:
	add esp, 0xb0
	pop ebx
	pop esi
	pop ebp
	ret
_Z12Com_DvarDumpiPKc_10:
	mov eax, com_logfile
	mov eax, [eax]
	test eax, eax
	jz _Z12Com_DvarDumpiPKc_20
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z12Com_DvarDumpiPKc_30
	add esp, 0xb0
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_Command()
_Z12Dvar_Commandv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x1020
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle _Z12Dvar_Commandv_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax]
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	mov esi, eax
	test eax, eax
	jz _Z12Dvar_Commandv_20
_Z12Dvar_Commandv_60:
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jz _Z12Dvar_Commandv_30
	lea esi, [ebp-0x1008]
	mov edx, 0x1
	mov eax, esi
	call _Z22Dvar_GetCombinedStringPci
	mov eax, [ebx]
	mov edx, [ebx+eax*4+0x44]
	test edx, edx
	jle _Z12Dvar_Commandv_40
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax]
_Z12Dvar_Commandv_80:
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z15Dvar_SetCommandPKcS0_
	mov eax, 0x1
	add esp, 0x1020
	pop ebx
	pop esi
	pop ebp
	ret
_Z12Dvar_Commandv_30:
	mov [esp], esi
	call _Z26Dvar_DisplayableResetValuePK6dvar_s
	mov ebx, eax
	mov [esp], esi
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_s7_default_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov [esp], esi
	call _Z20Dvar_HasLatchedValuePK6dvar_s
	test al, al
	jnz _Z12Dvar_Commandv_50
_Z12Dvar_Commandv_70:
	mov eax, [esi+0x3c]
	mov edx, [esi+0x40]
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	movzx eax, byte [esi+0xa]
	mov [esp], eax
	call _Z16Dvar_PrintDomainh10DvarLimits
	mov eax, 0x1
	add esp, 0x1020
	pop ebx
	pop esi
	pop ebp
	ret
_Z12Dvar_Commandv_10:
	mov eax, _cstring_null
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	mov esi, eax
	test eax, eax
	jnz _Z12Dvar_Commandv_60
_Z12Dvar_Commandv_20:
	xor eax, eax
	add esp, 0x1020
	pop ebx
	pop esi
	pop ebp
	ret
_Z12Dvar_Commandv_50:
	mov [esp], esi
	call _Z28Dvar_DisplayableLatchedValuePK6dvar_s
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_latched_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z12Dvar_Commandv_70
_Z12Dvar_Commandv_40:
	mov eax, _cstring_null
	jmp _Z12Dvar_Commandv_80


;Dvar_Reset_f()
_Z12Dvar_Reset_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z12Dvar_Reset_fv_10
	mov dword [esp+0x4], _cstring_usage_reset_vari
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z12Dvar_Reset_fv_20:
	leave
	ret
_Z12Dvar_Reset_fv_10:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z12Dvar_Reset_fv_20
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z10Dvar_ResetPK6dvar_s13DvarSetSource
	leave
	ret
	nop


;SV_SetConfig(int, int, int)
_Z12SV_SetConfigiii:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [ebp-0x14], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov eax, [ebp+0x10]
	mov [ebp-0xc], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], _Z16SV_SetConfigDvarPK6dvar_sPv
	call _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	leave
	ret
	nop


;Dvar_Toggle_f()
_Z13Dvar_Toggle_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z19Dvar_ToggleInternalv
	leave
	ret
	nop


;PbDvarValidate(char*)
_Z14PbDvarValidatePc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov byte [ebx], 0x0
	mov [esp+0x4], ebx
	mov dword [esp], _Z20PbDvarValidateSinglePK6dvar_sPv
	call _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Dvar_InfoString(int, int)
_Z15Dvar_InfoStringii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov byte [info1], 0x0
	lea eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _Z21Dvar_InfoStringSinglePK6dvar_sPv
	call _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	test byte [ebp+0xc], 0x2
	jz _Z15Dvar_InfoStringii_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28CL_GetUsernameForLocalClienti
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_name
	mov dword [esp], info1
	call _Z19Info_SetValueForKeyPcPKcS1_
_Z15Dvar_InfoStringii_10:
	mov eax, info1
	leave
	ret


;Dvar_AddCommands()
_Z16Dvar_AddCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE17Dvar_Toggle_f_VAR
	mov dword [esp+0x4], _Z13Dvar_Toggle_fv
	mov dword [esp], _cstring_toggle
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE22Dvar_TogglePrint_f_VAR
	mov dword [esp+0x4], _Z18Dvar_TogglePrint_fv
	mov dword [esp], _cstring_togglep
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE14Dvar_Set_f_VAR
	mov dword [esp+0x4], _Z10Dvar_Set_fv
	mov dword [esp], _cstring_set
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_SetS_f_VAR
	mov dword [esp+0x4], _Z11Dvar_SetS_fv
	mov dword [esp], _cstring_sets
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_SetA_f_VAR
	mov dword [esp+0x4], _Z11Dvar_SetA_fv
	mov dword [esp], _cstring_seta
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE22Dvar_SetFromDvar_f_VAR
	mov dword [esp+0x4], _Z18Dvar_SetFromDvar_fv
	mov dword [esp], _cstring_setfromdvar
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE30Dvar_SetFromLocalizedStr_f_VAR
	mov dword [esp+0x4], _Z26Dvar_SetFromLocalizedStr_fv
	mov dword [esp], _cstring_setfromlocstring
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE20Dvar_SetToTime_f_VAR
	mov dword [esp+0x4], _Z16Dvar_SetToTime_fv
	mov dword [esp], _cstring_setdvartotime
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE16Dvar_Reset_f_VAR
	mov dword [esp+0x4], _Z12Dvar_Reset_fv
	mov dword [esp], _cstring_reset
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_List_f_VAR
	mov dword [esp+0x4], _Z11Dvar_List_fv
	mov dword [esp], _cstring_dvarlist
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_Dump_f_VAR
	mov dword [esp+0x4], _Z11Dvar_Dump_fv
	mov dword [esp], _cstring_dvardump
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE23Dvar_RegisterBool_f_VAR
	mov dword [esp+0x4], _Z19Dvar_RegisterBool_fv
	mov dword [esp], _cstring_dvar_bool
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE22Dvar_RegisterInt_f_VAR
	mov dword [esp+0x4], _Z18Dvar_RegisterInt_fv
	mov dword [esp], _cstring_dvar_int
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE24Dvar_RegisterFloat_f_VAR
	mov dword [esp+0x4], _Z20Dvar_RegisterFloat_fv
	mov dword [esp], _cstring_dvar_float
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_SetU_f_VAR
	mov dword [esp+0x4], _Z11Dvar_SetU_fv
	mov dword [esp], _cstring_setu
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	leave
	ret


;Dvar_SetFromDvar_f()
_Z18Dvar_SetFromDvar_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jz _Z18Dvar_SetFromDvar_fv_10
	mov dword [esp+0x4], _cstring_usage_setfromdva
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18Dvar_SetFromDvar_fv_10:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z18Dvar_SetFromDvar_fv_20
	mov [esp], eax
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov edx, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z18Dvar_SetFromDvar_fv_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z18Dvar_SetFromDvar_fv_60:
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z15Dvar_SetCommandPKcS0_
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18Dvar_SetFromDvar_fv_20:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z18Dvar_SetFromDvar_fv_40
	mov eax, _cstring_null
_Z18Dvar_SetFromDvar_fv_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvar_s_doesnt_ex
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18Dvar_SetFromDvar_fv_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z18Dvar_SetFromDvar_fv_50
_Z18Dvar_SetFromDvar_fv_30:
	mov eax, _cstring_null
	jmp _Z18Dvar_SetFromDvar_fv_60
	nop


;Dvar_TogglePrint_f()
_Z18Dvar_TogglePrint_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call _Z19Dvar_ToggleInternalv
	test al, al
	jz _Z18Dvar_TogglePrint_fv_10
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z18Dvar_TogglePrint_fv_20
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
_Z18Dvar_TogglePrint_fv_30:
	mov [esp], ebx
	call _Z12Dvar_FindVarPKc
	mov [esp], eax
	call _Z21Dvar_DisplayableValuePK6dvar_s
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_toggled_to_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z18Dvar_TogglePrint_fv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18Dvar_TogglePrint_fv_20:
	mov ebx, _cstring_null
	jmp _Z18Dvar_TogglePrint_fv_30


;Dvar_WriteDefaults(int)
_Z18Dvar_WriteDefaultsi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _Z23Dvar_WriteSingleDefaultPK6dvar_sPv
	call _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	leave
	ret
	nop


;Dvar_InfoString_Big(int)
_Z19Dvar_InfoString_Bigi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov byte [info2], 0x0
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _Z25Dvar_InfoStringSingle_BigPK6dvar_sPv
	call _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	mov eax, info2
	leave
	ret
	nop


;Dvar_WriteVariables(int)
_Z19Dvar_WriteVariablesi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _Z24Dvar_WriteSingleVariablePK6dvar_sPv
	call _Z12Dvar_ForEachPFvPK6dvar_sPvES2_
	leave
	ret
	nop


;Initialized global or static variables of dvar_cmds:
SECTION .data


;Initialized constant data of dvar_cmds:
SECTION .rdata


;Zero initialized global or static variables of dvar_cmds:
SECTION .bss
info2: resb 0x2000
info1: resb 0x400
_ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter: resb 0x4
_ZZ16Dvar_AddCommandsvE15Dvar_SetU_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE24Dvar_RegisterFloat_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE22Dvar_RegisterInt_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE23Dvar_RegisterBool_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE15Dvar_Dump_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE15Dvar_List_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE16Dvar_Reset_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE20Dvar_SetToTime_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE30Dvar_SetFromLocalizedStr_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE22Dvar_SetFromDvar_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE15Dvar_SetA_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE15Dvar_SetS_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE14Dvar_Set_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE22Dvar_TogglePrint_f_VAR: resb 0x14
_ZZ16Dvar_AddCommandsvE17Dvar_Toggle_f_VAR: resb 0x64


;All cstrings:
SECTION .rdata
_cstring_cl_cdkey:		db "cl_cdkey",0
_cstring_seta_s_s:		db "seta %s ",22h,"%s",22h,0ah,0
_cstring_set_s_s:		db "set %s ",22h,"%s",22h,0ah,0
_cstring_s:		db "S",0
_cstring_u:		db "U",0
_cstring_r:		db "R",0
_cstring_i:		db "I",0
_cstring_a:		db "A",0
_cstring_l:		db "L",0
_cstring_c:		db "C",0
_cstring__s_s:		db " %s ",22h,"%s",22h,0ah,0
_cstring_space:		db " ",0
_cstring_______s_s__latch:		db "      %s ",22h,"%s",22h," -- latched ",22h,"%s",22h,0ah,0
_cstring_______s_s:		db "      %s ",22h,"%s",22h,0ah,0
_cstring_usage_setfromloc:		db "USAGE: setFromLocalizedString <variable> <string>",0ah,0
_cstring_invalid_variable:		db "invalid variable name: %s",0ah,0
_cstring_null:		db 0
_cstring_dvar_string:		db "dvar string",0
_cstring_i1:		db "%i",0
_cstring_usage_set_variab:		db "USAGE: set <variable>",0ah,0
_cstring_usage_s_name_def:		db "USAGE: %s <name> <default>",0ah,0
_cstring_dvar_s_is_not_a_:		db "dvar ",27h,"%s",27h," is not a boolean dvar",0ah,0
_cstring_external_dvar:		db "External Dvar",0
_cstring_usage_s_name_def1:		db "USAGE: %s <name> <default> <min> <max>",0ah,0
_cstring_dvar_s_min_i_sho:		db "dvar %s: min %i should not be greater than max %i",0ah,0
_cstring_dvar_s_is_not_an:		db "dvar ",27h,"%s",27h," is not an integer dvar",0ah,0
_cstring_dvar_s_min_g_sho:		db "dvar %s: min %g should not be greater than max %g",0ah,0
_cstring_usage_s_variable:		db "USAGE: %s <variable> <optional value sequence>",0ah,0
_cstring_toggle_failed_dv:		db "toggle failed: dvar ",27h,"%s",27h," not found.",0ah,0
_cstring_toggle_with_no_a:		db 27h,"toggle",27h," with no arguments makes no sense for dvar ",27h,"%s",27h,0ah,0
_cstring_usage_set_variab1:		db "USAGE: set <variable> <value>",0ah,0
_cstring_i_total_dvars:		db 0ah,"%i total dvars",0ah,0
_cstring_usage_seta_varia:		db "USAGE: seta <variable> <value>",0ah,0
_cstring_usage_sets_varia:		db "USAGE: sets <variable> <value>",0ah,0
_cstring_usage_setu_varia:		db "USAGE: setu <variable> <value>",0ah,0
_cstring__dvar_dump_:		db "=============================== DVAR DUMP ========================================",0ah,0
_cstring_i_total_dvarsi_d:		db 0ah,"%i total dvars",0ah,"%i dvar indexes",0ah,0
_cstring__end_dvar_dump_:		db "=============================== END DVAR DUMP =====================================",0ah,0
_cstring_s_is_s7_default_:		db 22h,"%s",22h," is: ",22h,"%s^7",22h," default: ",22h,"%s^7",22h,0ah,0
_cstring_latched_s:		db "latched: ",22h,"%s",22h,0ah,0
_cstring_usage_reset_vari:		db "USAGE: reset <variable>",0ah,0
_cstring_name:		db "name",0
_cstring_toggle:		db "toggle",0
_cstring_togglep:		db "togglep",0
_cstring_set:		db "set",0
_cstring_sets:		db "sets",0
_cstring_seta:		db "seta",0
_cstring_setfromdvar:		db "setfromdvar",0
_cstring_setfromlocstring:		db "setfromlocString",0
_cstring_setdvartotime:		db "setdvartotime",0
_cstring_reset:		db "reset",0
_cstring_dvarlist:		db "dvarlist",0
_cstring_dvardump:		db "dvardump",0
_cstring_dvar_bool:		db "dvar_bool",0
_cstring_dvar_int:		db "dvar_int",0
_cstring_dvar_float:		db "dvar_float",0
_cstring_setu:		db "setu",0
_cstring_usage_setfromdva:		db "USAGE: setfromdvar <dest_dvar> <source_dvar>",0ah,0
_cstring_dvar_s_doesnt_ex:		db "dvar ",27h,"%s",27h," doesn",27h,"t exist",0ah,0
_cstring_s_toggled_to_s:		db "%s toggled to %s",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

