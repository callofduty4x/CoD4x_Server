;Imports of dvar_cmds:
	extern Q_stricmp
	extern Cvar_DisplayableLatchedValue
	extern FS_Printf
	extern Cvar_DisplayableResetValue
	extern Com_Filter
	extern Com_Printf
	extern Cvar_DisplayableValue
	extern Cvar_HasLatchedValue
	extern Com_sprintf
	extern Com_PrintMessage
	extern Cvar_ValueInDomain
	extern strcpy
	extern SV_SetConfigValueForKey
	extern Info_SetValueForKey
	extern Info_SetValueForKey_Big
	extern cmd_args
	extern Cvar_IsValidName
	extern Cvar_SetCommand
	extern SEH_LocalizeTextMessage
	extern Q_strncpyz
	extern Sys_Milliseconds
	extern va
	extern atoi
	extern Cvar_FindVar
	extern Cvar_RegisterBool
	extern Cvar_RegisterInt
	extern atof
	extern Cvar_RegisterFloat
	extern Cvar_IndexStringToEnumString
	extern Cvar_SetBoolFromSource
	extern Cvar_SetFloatFromSource
	extern Cvar_SetIntFromSource
	extern Q_strncat
	extern Cvar_SetFromStringByName
	extern dvarCount
	extern Cvar_GetAtIndex
	extern Cvar_ForEach
	extern Cvar_AddFlags
	extern com_logfile
	extern Cvar_PrintDomain
	extern Cvar_Reset
	extern CL_GetUsernameForLocalClient
	extern Cmd_AddCommand

;Exports of dvar_cmds:
	global info1
	global Cvar_WriteSingleVariable
	global Cvar_WriteSingleDefault
	global Cvar_ListSingle
	global Com_DvarDumpSingle
	global _ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter
	global PbDvarValidateSingle
	global SV_SetConfigDvar
	global Cvar_InfoStringSingle
	global Cvar_InfoStringSingle_Big
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
	global Cvar_SetFromLocalizedStr_f
	global Cvar_SetToTime_f
	global Cvar_RegisterBool_f
	global Cvar_RegisterInt_f
	global Cvar_RegisterFloat_f
	global Cvar_ToggleInternal
	global Cvar_GetCombinedString
	global Cvar_Set_f
	global PBdvar_set
	global PbDvarWalk
	global Cvar_Dump_f
	global Cvar_List_f
	global Cvar_SetA_f
	global Cvar_SetS_f
	global Cvar_SetU_f
	global Com_DvarDump
	global Cvar_Command
	global Cvar_Reset_f
	global SV_SetConfig
	global Cvar_Toggle_f
	global PbDvarValidate
	global Cvar_InfoString
	global Cvar_AddCommands
	global Cvar_SetFromDvar_f
	global Cvar_TogglePrint_f
	global Cvar_WriteDefaults
	global Cvar_InfoString_Big
	global Cvar_WriteVariables


SECTION .text


;Dvar_WriteSingleVariable(dvar_s const*, void*)
Cvar_WriteSingleVariable:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_cl_cdkey
	mov eax, [esi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Cvar_WriteSingleVariable_10
	test byte [esi+0x8], 0x1
	jnz Cvar_WriteSingleVariable_20
Cvar_WriteSingleVariable_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_WriteSingleVariable_20:
	mov eax, [ebp+0xc]
	mov ebx, [eax]
	mov [esp], esi
	call Cvar_DisplayableLatchedValue
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_seta_s_s
	mov [esp], ebx
	call FS_Printf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_WriteSingleDefault(dvar_s const*, void*)
Cvar_WriteSingleDefault:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_cl_cdkey
	mov eax, [esi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Cvar_WriteSingleDefault_10
	movzx eax, word [esi+0x8]
	test eax, 0x40c0
	jz Cvar_WriteSingleDefault_20
Cvar_WriteSingleDefault_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_WriteSingleDefault_20:
	mov eax, [ebp+0xc]
	mov ebx, [eax]
	mov [esp], esi
	call Cvar_DisplayableResetValue
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_set_s_s
	mov [esp], ebx
	call FS_Printf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Dvar_ListSingle(dvar_s const*, void*)
Cvar_ListSingle:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	jz Cvar_ListSingle_10
	mov dword [esp+0x8], 0x0
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edx
	call Com_Filter
	test al, al
	jz Cvar_ListSingle_20
Cvar_ListSingle_10:
	movzx eax, word [ebx+0x8]
	test eax, 0x404
	jz Cvar_ListSingle_30
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x2
	jz Cvar_ListSingle_40
Cvar_ListSingle_100:
	mov dword [esp+0x4], _cstring_u
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x40
	jz Cvar_ListSingle_50
Cvar_ListSingle_110:
	mov dword [esp+0x4], _cstring_r
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x10
	jz Cvar_ListSingle_60
Cvar_ListSingle_120:
	mov dword [esp+0x4], _cstring_i
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x1
	jz Cvar_ListSingle_70
Cvar_ListSingle_130:
	mov dword [esp+0x4], _cstring_a
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x20
	jz Cvar_ListSingle_80
Cvar_ListSingle_140:
	mov dword [esp+0x4], _cstring_l
	mov dword [esp], 0x0
	call Com_Printf
	cmp byte [ebx+0x8], 0x0
	jns Cvar_ListSingle_90
Cvar_ListSingle_150:
	mov dword [esp+0x4], _cstring_c
	mov dword [esp], 0x0
	call Com_Printf
Cvar_ListSingle_160:
	mov [esp], ebx
	call Cvar_DisplayableValue
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s_s
	mov dword [esp], 0x0
	call Com_Printf
Cvar_ListSingle_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_ListSingle_30:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x2
	jnz Cvar_ListSingle_100
Cvar_ListSingle_40:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x40
	jnz Cvar_ListSingle_110
Cvar_ListSingle_50:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x10
	jnz Cvar_ListSingle_120
Cvar_ListSingle_60:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x1
	jnz Cvar_ListSingle_130
Cvar_ListSingle_70:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	test byte [ebx+0x8], 0x20
	jnz Cvar_ListSingle_140
Cvar_ListSingle_80:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	cmp byte [ebx+0x8], 0x0
	js Cvar_ListSingle_150
Cvar_ListSingle_90:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	jmp Cvar_ListSingle_160
	nop


;Com_DvarDumpSingle(dvar_s const*, void*)
Com_DvarDumpSingle:
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
	jz Com_DvarDumpSingle_10
	mov dword [esp+0x8], 0x0
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], edx
	call Com_Filter
	test al, al
	jz Com_DvarDumpSingle_20
Com_DvarDumpSingle_10:
	mov [esp], esi
	call Cvar_HasLatchedValue
	test al, al
	jz Com_DvarDumpSingle_30
	mov [esp], esi
	call Cvar_DisplayableLatchedValue
	mov ebx, eax
	mov [esp], esi
	call Cvar_DisplayableValue
	mov [esp+0x14], ebx
	mov [esp+0x10], eax
	mov eax, [esi]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_______s_s__latch
	mov dword [esp+0x4], 0x800
	lea ebx, [ebp-0x818]
	mov [esp], ebx
	call Com_sprintf
Com_DvarDumpSingle_40:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [edi+0x4]
	mov [esp], eax
	call Com_PrintMessage
Com_DvarDumpSingle_20:
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_DvarDumpSingle_30:
	mov [esp], esi
	call Cvar_DisplayableValue
	mov [esp+0x10], eax
	mov eax, [esi]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_______s_s
	mov dword [esp+0x4], 0x800
	lea ebx, [ebp-0x818]
	mov [esp], ebx
	call Com_sprintf
	jmp Com_DvarDumpSingle_40


;PbDvarValidateSingle(dvar_s const*, void*)
PbDvarValidateSingle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp byte [eax], 0x0
	jz PbDvarValidateSingle_10
PbDvarValidateSingle_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PbDvarValidateSingle_10:
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
	call Cvar_ValueInDomain
	test al, al
	jnz PbDvarValidateSingle_20
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
SV_SetConfigDvar:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	movzx eax, word [ebx+0x8]
	test [esi+0x8], eax
	jz SV_SetConfigDvar_10
	mov [esp], ebx
	call Cvar_DisplayableValue
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov eax, [esi+0x4]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call SV_SetConfigValueForKey
SV_SetConfigDvar_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Dvar_InfoStringSingle(dvar_s const*, void*)
Cvar_InfoStringSingle:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx edx, word [ebx+0x8]
	mov eax, [ebp+0xc]
	test [eax], edx
	jz Cvar_InfoStringSingle_10
	mov [esp], ebx
	call Cvar_DisplayableValue
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], info1
	call Info_SetValueForKey
Cvar_InfoStringSingle_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Dvar_InfoStringSingle_Big(dvar_s const*, void*)
Cvar_InfoStringSingle_Big:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx edx, word [ebx+0x8]
	mov eax, [ebp+0xc]
	test [eax], edx
	jz Cvar_InfoStringSingle_Big_10
	mov [esp], ebx
	call Cvar_DisplayableValue
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], info2
	call Info_SetValueForKey_Big
Cvar_InfoStringSingle_Big_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Dvar_SetFromLocalizedStr_f()
Cvar_SetFromLocalizedStr_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x1014
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg Cvar_SetFromLocalizedStr_f_10
	mov dword [esp+0x4], _cstring_usage_setfromloc
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x1014
	pop ebx
	pop ebp
	ret
Cvar_SetFromLocalizedStr_f_10:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call Cvar_IsValidName
	test al, al
	jnz Cvar_SetFromLocalizedStr_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_SetFromLocalizedStr_f_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_SetFromLocalizedStr_f_60:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_variable
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x1014
	pop ebx
	pop ebp
	ret
Cvar_SetFromLocalizedStr_f_20:
	lea ebx, [ebp-0x1008]
	mov edx, 0x2
	mov eax, ebx
	call Cvar_GetCombinedString
	cmp byte [ebp-0x1008], 0x40
	jz Cvar_SetFromLocalizedStr_f_40
Cvar_SetFromLocalizedStr_f_80:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle Cvar_SetFromLocalizedStr_f_50
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
Cvar_SetFromLocalizedStr_f_70:
	mov [esp+0x4], ebx
	mov [esp], eax
	call Cvar_SetCommand
	add esp, 0x1014
	pop ebx
	pop ebp
	ret
Cvar_SetFromLocalizedStr_f_30:
	mov eax, _cstring_null
	jmp Cvar_SetFromLocalizedStr_f_60
Cvar_SetFromLocalizedStr_f_50:
	mov eax, _cstring_null
	jmp Cvar_SetFromLocalizedStr_f_70
Cvar_SetFromLocalizedStr_f_40:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	lea eax, [ebp-0x1007]
	mov [esp], eax
	call SEH_LocalizeTextMessage
	test eax, eax
	jz Cvar_SetFromLocalizedStr_f_80
	cmp byte [eax], 0x0
	jz Cvar_SetFromLocalizedStr_f_80
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_strncpyz
	jmp Cvar_SetFromLocalizedStr_f_80


;Dvar_SetToTime_f()
Cvar_SetToTime_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_SetToTime_f_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call Cvar_IsValidName
	test al, al
	jnz Cvar_SetToTime_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_SetToTime_f_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_SetToTime_f_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_variable
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetToTime_f_20:
	call Sys_Milliseconds
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i1
	call va
	mov edx, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_SetToTime_f_40
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_SetToTime_f_60:
	mov [esp+0x4], edx
	mov [esp], eax
	call Cvar_SetCommand
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetToTime_f_10:
	mov dword [esp+0x4], _cstring_usage_set_variab
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetToTime_f_30:
	mov eax, _cstring_null
	jmp Cvar_SetToTime_f_50
Cvar_SetToTime_f_40:
	mov eax, _cstring_null
	jmp Cvar_SetToTime_f_60


;Dvar_RegisterBool_f()
Cvar_RegisterBool_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, cmd_args
	mov edx, [ecx]
	mov eax, [ecx+edx*4+0x44]
	cmp eax, 0x3
	jz Cvar_RegisterBool_f_10
	test eax, eax
	jle Cvar_RegisterBool_f_20
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax]
Cvar_RegisterBool_f_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_name_def
	mov dword [esp], 0x0
	call Com_Printf
Cvar_RegisterBool_f_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_RegisterBool_f_20:
	mov eax, _cstring_null
	jmp Cvar_RegisterBool_f_30
Cvar_RegisterBool_f_10:
	mov eax, [ecx+edx*4+0x64]
	mov ebx, [eax+0x4]
	mov eax, [eax+0x8]
	mov [esp], eax
	call atoi
	test eax, eax
	setnz al
	mov esi, eax
	mov [esp], ebx
	call Cvar_FindVar
	test eax, eax
	jz Cvar_RegisterBool_f_40
	movzx edx, byte [eax+0xa]
	cmp dl, 0x7
	jz Cvar_RegisterBool_f_50
	test dl, dl
	jz Cvar_RegisterBool_f_60
Cvar_RegisterBool_f_70:
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvar_s_is_not_a_
	mov dword [esp], 0x0
	call Com_Printf
	jmp Cvar_RegisterBool_f_60
Cvar_RegisterBool_f_50:
	test byte [eax+0x9], 0x40
	jz Cvar_RegisterBool_f_70
Cvar_RegisterBool_f_40:
	mov dword [esp+0xc], _cstring_external_dvar
	mov dword [esp+0x8], 0x4000
	mov edx, esi
	movzx eax, dl
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cvar_RegisterBool
	jmp Cvar_RegisterBool_f_60
	nop


;Dvar_RegisterInt_f()
Cvar_RegisterInt_f:
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
	jz Cvar_RegisterInt_f_10
	test eax, eax
	jle Cvar_RegisterInt_f_20
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax]
Cvar_RegisterInt_f_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_name_def1
	mov dword [esp], 0x0
	call Com_Printf
Cvar_RegisterInt_f_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_RegisterInt_f_20:
	mov eax, _cstring_null
	jmp Cvar_RegisterInt_f_30
Cvar_RegisterInt_f_10:
	mov eax, [ebx+edx*4+0x64]
	mov edi, [eax+0x4]
	mov eax, [eax+0x8]
	mov [esp], eax
	call atoi
	mov [ebp-0x1c], eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jg Cvar_RegisterInt_f_40
	mov eax, _cstring_null
Cvar_RegisterInt_f_80:
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg Cvar_RegisterInt_f_50
	mov eax, _cstring_null
Cvar_RegisterInt_f_110:
	mov [esp], eax
	call atoi
	mov ebx, eax
	cmp esi, eax
	jle Cvar_RegisterInt_f_60
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_dvar_s_min_i_sho
	mov dword [esp], 0x0
	call Com_Printf
	jmp Cvar_RegisterInt_f_70
Cvar_RegisterInt_f_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0xc]
	jmp Cvar_RegisterInt_f_80
Cvar_RegisterInt_f_60:
	mov [esp], edi
	call Cvar_FindVar
	mov edx, eax
	test eax, eax
	jz Cvar_RegisterInt_f_90
	movzx eax, byte [eax+0xa]
	cmp al, 0x7
	jz Cvar_RegisterInt_f_100
Cvar_RegisterInt_f_120:
	sub al, 0x5
	cmp al, 0x1
	jbe Cvar_RegisterInt_f_70
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvar_s_is_not_an
	mov dword [esp], 0x0
	call Com_Printf
	jmp Cvar_RegisterInt_f_70
Cvar_RegisterInt_f_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp Cvar_RegisterInt_f_110
Cvar_RegisterInt_f_100:
	test byte [edx+0x9], 0x40
	jz Cvar_RegisterInt_f_120
Cvar_RegisterInt_f_90:
	mov dword [esp+0x14], _cstring_external_dvar
	mov dword [esp+0x10], 0x4000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call Cvar_RegisterInt
	jmp Cvar_RegisterInt_f_70


;Dvar_RegisterFloat_f()
Cvar_RegisterFloat_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov ebx, cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x5
	jz Cvar_RegisterFloat_f_10
	test eax, eax
	jle Cvar_RegisterFloat_f_20
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax]
Cvar_RegisterFloat_f_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_name_def1
	mov dword [esp], 0x0
	call Com_Printf
Cvar_RegisterFloat_f_70:
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_RegisterFloat_f_20:
	mov eax, _cstring_null
	jmp Cvar_RegisterFloat_f_30
Cvar_RegisterFloat_f_10:
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
	jg Cvar_RegisterFloat_f_40
	mov eax, _cstring_null
Cvar_RegisterFloat_f_80:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x28]
	cvtsd2ss xmm0, [ebp-0x28]
	movss [ebp-0x10], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg Cvar_RegisterFloat_f_50
	mov eax, _cstring_null
Cvar_RegisterFloat_f_110:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	movss [ebp-0xc], xmm0
	movss xmm0, dword [ebp-0x10]
	ucomiss xmm0, [ebp-0xc]
	jbe Cvar_RegisterFloat_f_60
	cvtss2sd xmm0, [ebp-0xc]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp-0x10]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_dvar_s_min_g_sho
	mov dword [esp], 0x0
	call Com_Printf
	jmp Cvar_RegisterFloat_f_70
Cvar_RegisterFloat_f_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0xc]
	jmp Cvar_RegisterFloat_f_80
Cvar_RegisterFloat_f_60:
	mov [esp], esi
	call Cvar_FindVar
	test eax, eax
	jz Cvar_RegisterFloat_f_90
	movzx edx, byte [eax+0xa]
	cmp dl, 0x7
	jz Cvar_RegisterFloat_f_100
	sub dl, 0x1
	jz Cvar_RegisterFloat_f_70
Cvar_RegisterFloat_f_120:
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvar_s_is_not_an
	mov dword [esp], 0x0
	call Com_Printf
	jmp Cvar_RegisterFloat_f_70
Cvar_RegisterFloat_f_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp Cvar_RegisterFloat_f_110
Cvar_RegisterFloat_f_100:
	test byte [eax+0x9], 0x40
	jz Cvar_RegisterFloat_f_120
Cvar_RegisterFloat_f_90:
	mov dword [esp+0x14], _cstring_external_dvar
	mov dword [esp+0x10], 0x4000
	movss xmm0, dword [ebp-0xc]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x10]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x14]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call Cvar_RegisterFloat
	jmp Cvar_RegisterFloat_f_70


;Dvar_ToggleInternal()
Cvar_ToggleInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_ToggleInternal_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [ebp-0x28], eax
	mov [esp], eax
	call Cvar_FindVar
	mov [ebp-0x24], eax
	test eax, eax
	jz Cvar_ToggleInternal_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jz Cvar_ToggleInternal_30
	mov edx, [ebp-0x24]
	mov [esp], edx
	call Cvar_DisplayableValue
	mov [ebp-0x20], eax
	mov ecx, 0x2
	mov dword [ebp-0x1c], 0x8
	mov edi, ebx
	mov [ebp-0x2c], ebx
	jmp Cvar_ToggleInternal_40
Cvar_ToggleInternal_80:
	mov esi, _cstring_null
	mov eax, [ebp-0x24]
	cmp byte [eax+0xa], 0x6
	jz Cvar_ToggleInternal_50
Cvar_ToggleInternal_90:
	mov [esp+0x4], esi
	mov edx, [ebp-0x20]
	mov [esp], edx
	call Q_stricmp
	add dword [ebp-0x1c], 0x4
	test eax, eax
	jz Cvar_ToggleInternal_60
Cvar_ToggleInternal_100:
	mov ecx, ebx
Cvar_ToggleInternal_40:
	lea ebx, [ecx+0x1]
	mov edx, [edi]
	mov eax, [edi+edx*4+0x44]
	cmp eax, ebx
	jle Cvar_ToggleInternal_70
	cmp ecx, eax
	jge Cvar_ToggleInternal_80
	mov eax, [edi+edx*4+0x64]
	mov ecx, [ebp-0x1c]
	mov esi, [ecx+eax]
	mov eax, [ebp-0x24]
	cmp byte [eax+0xa], 0x6
	jnz Cvar_ToggleInternal_90
Cvar_ToggleInternal_50:
	mov [esp+0x4], esi
	mov [esp], eax
	call Cvar_IndexStringToEnumString
	cmp byte [eax], 0x0
	cmovnz esi, eax
	mov [esp+0x4], esi
	mov edx, [ebp-0x20]
	mov [esp], edx
	call Q_stricmp
	add dword [ebp-0x1c], 0x4
	test eax, eax
	jnz Cvar_ToggleInternal_100
Cvar_ToggleInternal_60:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	cmp ebx, [ecx+eax*4+0x44]
	jl Cvar_ToggleInternal_110
	mov eax, _cstring_null
Cvar_ToggleInternal_140:
	mov [esp+0x4], eax
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	call Cvar_SetCommand
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_ToggleInternal_30:
	mov edx, [ebp-0x24]
	movzx eax, byte [edx+0xa]
	cmp eax, 0x8
	jbe Cvar_ToggleInternal_120
	xor eax, eax
Cvar_ToggleInternal_200:
	movzx eax, al
Cvar_ToggleInternal_170:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_ToggleInternal_10:
	jnz Cvar_ToggleInternal_130
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax]
Cvar_ToggleInternal_190:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_variable
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_ToggleInternal_120:
	jmp dword [eax*4+Cvar_ToggleInternal_jumptab_0]
Cvar_ToggleInternal_110:
	mov eax, [ecx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	jmp Cvar_ToggleInternal_140
Cvar_ToggleInternal_70:
	cmp eax, 0x2
	jg Cvar_ToggleInternal_150
	mov ebx, _cstring_null
Cvar_ToggleInternal_180:
	mov eax, [ebp-0x24]
	cmp byte [eax+0xa], 0x6
	jz Cvar_ToggleInternal_160
Cvar_ToggleInternal_290:
	mov [esp+0x4], ebx
	mov edx, [ebp-0x28]
	mov [esp], edx
	call Cvar_SetCommand
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_ToggleInternal_20:
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_toggle_failed_dv
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	jmp Cvar_ToggleInternal_170
Cvar_ToggleInternal_150:
	mov eax, [edi+edx*4+0x64]
	mov ebx, [eax+0x8]
	jmp Cvar_ToggleInternal_180
Cvar_ToggleInternal_130:
	mov eax, _cstring_null
	jmp Cvar_ToggleInternal_190
Cvar_ToggleInternal_340:
	mov dword [esp+0x8], 0x1
	mov ecx, [ebp-0x24]
	xor eax, eax
	cmp byte [ecx+0xc], 0x0
	setz al
	mov [esp+0x4], eax
	mov [esp], ecx
	call Cvar_SetBoolFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_350:
	mov eax, [ebp-0x24]
	movss xmm1, dword [eax+0x3c]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	jb Cvar_ToggleInternal_210
	movss xmm0, dword [eax+0x40]
	ucomiss xmm0, [_float_1_00000000]
	jb Cvar_ToggleInternal_220
	ucomiss xmm2, [eax+0xc]
	jp Cvar_ToggleInternal_230
	jz Cvar_ToggleInternal_240
Cvar_ToggleInternal_230:
	mov dword [esp+0x8], 0x1
	movss [esp+0x4], xmm2
	mov [esp], eax
	call Cvar_SetFloatFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_370:
	mov edx, [ebp-0x24]
	mov eax, [edx+0x3c]
	test eax, eax
	jle Cvar_ToggleInternal_250
Cvar_ToggleInternal_330:
	cmp eax, [edx+0xc]
	jz Cvar_ToggleInternal_260
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call Cvar_SetIntFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_380:
	mov ecx, [ebp-0x24]
	mov edx, [ecx+0x3c]
	test edx, edx
	jnz Cvar_ToggleInternal_270
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_360:
	mov edx, [ebp-0x24]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_toggle_with_no_a
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_270:
	mov dword [esp+0x8], 0x1
	mov eax, [ecx+0xc]
	add eax, 0x1
	mov ecx, edx
	cdq
	idiv ecx
	mov [esp+0x4], edx
	mov eax, [ebp-0x24]
	mov [esp], eax
	call Cvar_SetIntFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_210:
	mov ecx, eax
Cvar_ToggleInternal_300:
	ucomiss xmm1, [ecx+0xc]
	jnz Cvar_ToggleInternal_280
	jp Cvar_ToggleInternal_280
	mov dword [esp+0x8], 0x1
	mov eax, [ecx+0x40]
	mov [esp+0x4], eax
	mov [esp], ecx
	call Cvar_SetFloatFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_160:
	mov [esp+0x4], ebx
	mov [esp], eax
	call Cvar_IndexStringToEnumString
	cmp byte [eax], 0x0
	cmovnz ebx, eax
	jmp Cvar_ToggleInternal_290
Cvar_ToggleInternal_280:
	mov dword [esp+0x8], 0x1
	movss [esp+0x4], xmm1
	mov [esp], ecx
	call Cvar_SetFloatFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_220:
	mov ecx, [ebp-0x24]
	jmp Cvar_ToggleInternal_300
Cvar_ToggleInternal_260:
	mov dword [esp+0x8], 0x1
	mov eax, [edx+0x40]
	mov [esp+0x4], eax
	mov [esp], edx
	call Cvar_SetIntFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_250:
	mov ebx, [edx+0x40]
	test ebx, ebx
	jle Cvar_ToggleInternal_310
	mov ecx, [edx+0xc]
	test ecx, ecx
	jz Cvar_ToggleInternal_320
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call Cvar_SetIntFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_240:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x3f800000
	mov edx, [ebp-0x24]
	mov [esp], edx
	call Cvar_SetFloatFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_320:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call Cvar_SetIntFromSource
	mov eax, 0x1
	jmp Cvar_ToggleInternal_200
Cvar_ToggleInternal_310:
	mov edx, [ebp-0x24]
	jmp Cvar_ToggleInternal_330
	
	
Cvar_ToggleInternal_jumptab_0:
	dd Cvar_ToggleInternal_340
	dd Cvar_ToggleInternal_350
	dd Cvar_ToggleInternal_360
	dd Cvar_ToggleInternal_360
	dd Cvar_ToggleInternal_360
	dd Cvar_ToggleInternal_370
	dd Cvar_ToggleInternal_380
	dd Cvar_ToggleInternal_360
	dd Cvar_ToggleInternal_360


;Dvar_GetCombinedString(char*, int)
Cvar_GetCombinedString:
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
	jle Cvar_GetCombinedString_10
	mov ebx, edx
	shl edx, 0x2
	mov [ebp-0x1c], edx
	mov dword [ebp-0x24], 0x0
	jmp Cvar_GetCombinedString_20
Cvar_GetCombinedString_50:
	mov dword [ebp-0x20], _cstring_null
	mov edi, [ebp-0x20]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	add [ebp-0x24], ecx
	cmp dword [ebp-0x24], 0xffd
	jg Cvar_GetCombinedString_10
Cvar_GetCombinedString_60:
	cmp ebx, esi
	jl Cvar_GetCombinedString_30
	mov eax, _cstring_null
Cvar_GetCombinedString_70:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call Q_strncat
	mov eax, [ebp-0x28]
	sub eax, 0x1
	cmp ebx, eax
	jz Cvar_GetCombinedString_40
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x1000
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Q_strncat
Cvar_GetCombinedString_40:
	add ebx, 0x1
	add dword [ebp-0x1c], 0x4
	cmp [ebp-0x28], ebx
	jz Cvar_GetCombinedString_10
Cvar_GetCombinedString_20:
	mov ecx, cmd_args
	mov edx, [ecx]
	mov esi, [ecx+edx*4+0x44]
	cmp ebx, esi
	jge Cvar_GetCombinedString_50
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
	jle Cvar_GetCombinedString_60
Cvar_GetCombinedString_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cvar_GetCombinedString_30:
	mov ecx, cmd_args
	mov eax, [ecx+edx*4+0x64]
	mov edx, [ebp-0x1c]
	mov eax, [eax+edx]
	jmp Cvar_GetCombinedString_70
	nop


;Dvar_Set_f()
Cvar_Set_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x1010
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg Cvar_Set_f_10
	mov dword [esp+0x4], _cstring_usage_set_variab1
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x1010
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_Set_f_10:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call Cvar_IsValidName
	test al, al
	jnz Cvar_Set_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_Set_f_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_Set_f_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_variable
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x1010
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_Set_f_20:
	lea esi, [ebp-0x1008]
	mov edx, 0x2
	mov eax, esi
	call Cvar_GetCombinedString
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_Set_f_40
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_Set_f_60:
	mov [esp+0x4], esi
	mov [esp], eax
	call Cvar_SetCommand
	add esp, 0x1010
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_Set_f_30:
	mov eax, _cstring_null
	jmp Cvar_Set_f_50
Cvar_Set_f_40:
	mov eax, _cstring_null
	jmp Cvar_Set_f_60
	nop


;PBdvar_set(char const*, char const*)
PBdvar_set:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call Cvar_FindVar
	test eax, eax
	jz PBdvar_set_10
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Cvar_SetFromStringByName
PBdvar_set_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;PbDvarWalk(char**, char**, int*, char**)
PbDvarWalk:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [_ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter]
	mov eax, dvarCount
	cmp edx, [eax]
	jl PbDvarWalk_10
	mov dword [_ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter], 0x0
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PbDvarWalk_10:
	mov [esp], edx
	call Cvar_GetAtIndex
	mov ebx, eax
	add dword [_ZZ10PbDvarWalkPPcS0_PiS0_E8dvarIter], 0x1
	mov eax, [eax]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov [esp], ebx
	call Cvar_DisplayableValue
	mov edx, [ebp+0xc]
	mov [edx], eax
	movzx eax, word [ebx+0x8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov [esp], ebx
	call Cvar_DisplayableResetValue
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Dvar_Dump_f()
Cvar_Dump_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle Cvar_Dump_f_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Com_DvarDump
	leave
	ret
Cvar_Dump_f_10:
	xor eax, eax
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Com_DvarDump
	leave
	ret
	nop


;Dvar_List_f()
Cvar_List_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle Cvar_List_f_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
Cvar_List_f_20:
	mov [esp+0x4], eax
	mov dword [esp], Cvar_ListSingle
	call Cvar_ForEach
	mov eax, dvarCount
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_total_dvars
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret
Cvar_List_f_10:
	xor eax, eax
	jmp Cvar_List_f_20


;Dvar_SetA_f()
Cvar_SetA_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg Cvar_SetA_f_10
	mov dword [esp+0x4], _cstring_usage_seta_varia
	mov dword [esp], 0x0
	call Com_Printf
Cvar_SetA_f_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetA_f_10:
	call Cvar_Set_f
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_SetA_f_20
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_SetA_f_40:
	mov [esp], eax
	call Cvar_FindVar
	test eax, eax
	jz Cvar_SetA_f_30
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Cvar_AddFlags
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetA_f_20:
	mov eax, _cstring_null
	jmp Cvar_SetA_f_40


;Dvar_SetS_f()
Cvar_SetS_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg Cvar_SetS_f_10
	mov dword [esp+0x4], _cstring_usage_sets_varia
	mov dword [esp], 0x0
	call Com_Printf
Cvar_SetS_f_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetS_f_10:
	call Cvar_Set_f
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_SetS_f_20
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_SetS_f_40:
	mov [esp], eax
	call Cvar_FindVar
	test eax, eax
	jz Cvar_SetS_f_30
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call Cvar_AddFlags
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetS_f_20:
	mov eax, _cstring_null
	jmp Cvar_SetS_f_40


;Dvar_SetU_f()
Cvar_SetU_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg Cvar_SetU_f_10
	mov dword [esp+0x4], _cstring_usage_setu_varia
	mov dword [esp], 0x0
	call Com_Printf
Cvar_SetU_f_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetU_f_10:
	call Cvar_Set_f
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_SetU_f_20
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_SetU_f_40:
	mov [esp], eax
	call Cvar_FindVar
	test eax, eax
	jz Cvar_SetU_f_30
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call Cvar_AddFlags
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetU_f_20:
	mov eax, _cstring_null
	jmp Cvar_SetU_f_40


;Com_DvarDump(int, char const*)
Com_DvarDump:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xb0
	mov esi, [ebp+0x8]
	cmp esi, 0x6
	jz Com_DvarDump_10
Com_DvarDump_30:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring__dvar_dump_
	mov [esp], esi
	call Com_PrintMessage
	mov dword [ebp-0x14], 0x0
	mov [ebp-0x10], esi
	mov eax, [ebp+0xc]
	mov [ebp-0xc], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], Com_DvarDumpSingle
	call Cvar_ForEach
	mov eax, dvarCount
	mov eax, [eax]
	mov [esp+0x10], eax
	mov eax, [ebp-0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i_total_dvarsi_d
	mov dword [esp+0x4], 0x80
	lea ebx, [ebp-0x94]
	mov [esp], ebx
	call Com_sprintf
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call Com_PrintMessage
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring__end_dvar_dump_
	mov [esp], esi
	call Com_PrintMessage
Com_DvarDump_20:
	add esp, 0xb0
	pop ebx
	pop esi
	pop ebp
	ret
Com_DvarDump_10:
	mov eax, com_logfile
	mov eax, [eax]
	test eax, eax
	jz Com_DvarDump_20
	mov eax, [eax+0xc]
	test eax, eax
	jnz Com_DvarDump_30
	add esp, 0xb0
	pop ebx
	pop esi
	pop ebp
	ret


;Dvar_Command()
Cvar_Command:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x1020
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle Cvar_Command_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax]
	mov [esp], eax
	call Cvar_FindVar
	mov esi, eax
	test eax, eax
	jz Cvar_Command_20
Cvar_Command_60:
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jz Cvar_Command_30
	lea esi, [ebp-0x1008]
	mov edx, 0x1
	mov eax, esi
	call Cvar_GetCombinedString
	mov eax, [ebx]
	mov edx, [ebx+eax*4+0x44]
	test edx, edx
	jle Cvar_Command_40
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax]
Cvar_Command_80:
	mov [esp+0x4], esi
	mov [esp], eax
	call Cvar_SetCommand
	mov eax, 0x1
	add esp, 0x1020
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_Command_30:
	mov [esp], esi
	call Cvar_DisplayableResetValue
	mov ebx, eax
	mov [esp], esi
	call Cvar_DisplayableValue
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_s7_default_
	mov dword [esp], 0x0
	call Com_Printf
	mov [esp], esi
	call Cvar_HasLatchedValue
	test al, al
	jnz Cvar_Command_50
Cvar_Command_70:
	mov eax, [esi+0x3c]
	mov edx, [esi+0x40]
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	movzx eax, byte [esi+0xa]
	mov [esp], eax
	call Cvar_PrintDomain
	mov eax, 0x1
	add esp, 0x1020
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_Command_10:
	mov eax, _cstring_null
	mov [esp], eax
	call Cvar_FindVar
	mov esi, eax
	test eax, eax
	jnz Cvar_Command_60
Cvar_Command_20:
	xor eax, eax
	add esp, 0x1020
	pop ebx
	pop esi
	pop ebp
	ret
Cvar_Command_50:
	mov [esp], esi
	call Cvar_DisplayableLatchedValue
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_latched_s
	mov dword [esp], 0x0
	call Com_Printf
	jmp Cvar_Command_70
Cvar_Command_40:
	mov eax, _cstring_null
	jmp Cvar_Command_80


;Dvar_Reset_f()
Cvar_Reset_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz Cvar_Reset_f_10
	mov dword [esp+0x4], _cstring_usage_reset_vari
	mov dword [esp], 0x0
	call Com_Printf
Cvar_Reset_f_20:
	leave
	ret
Cvar_Reset_f_10:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call Cvar_FindVar
	test eax, eax
	jz Cvar_Reset_f_20
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Cvar_Reset
	leave
	ret
	nop


;SV_SetConfig(int, int, int)
SV_SetConfig:
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
	mov dword [esp], SV_SetConfigDvar
	call Cvar_ForEach
	leave
	ret
	nop


;Dvar_Toggle_f()
Cvar_Toggle_f:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Cvar_ToggleInternal
	leave
	ret
	nop


;PbDvarValidate(char*)
PbDvarValidate:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov byte [ebx], 0x0
	mov [esp+0x4], ebx
	mov dword [esp], PbDvarValidateSingle
	call Cvar_ForEach
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Dvar_InfoString(int, int)
Cvar_InfoString:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov byte [info1], 0x0
	lea eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], Cvar_InfoStringSingle
	call Cvar_ForEach
	test byte [ebp+0xc], 0x2
	jz Cvar_InfoString_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetUsernameForLocalClient
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_name
	mov dword [esp], info1
	call Info_SetValueForKey
Cvar_InfoString_10:
	mov eax, info1
	leave
	ret


;Dvar_AddCommands()
Cvar_AddCommands:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE17Dvar_Toggle_f_VAR
	mov dword [esp+0x4], Cvar_Toggle_f
	mov dword [esp], _cstring_toggle
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE22Dvar_TogglePrint_f_VAR
	mov dword [esp+0x4], Cvar_TogglePrint_f
	mov dword [esp], _cstring_togglep
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE14Dvar_Set_f_VAR
	mov dword [esp+0x4], Cvar_Set_f
	mov dword [esp], _cstring_set
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_SetS_f_VAR
	mov dword [esp+0x4], Cvar_SetS_f
	mov dword [esp], _cstring_sets
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_SetA_f_VAR
	mov dword [esp+0x4], Cvar_SetA_f
	mov dword [esp], _cstring_seta
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE22Dvar_SetFromDvar_f_VAR
	mov dword [esp+0x4], Cvar_SetFromDvar_f
	mov dword [esp], _cstring_setfromdvar
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE30Dvar_SetFromLocalizedStr_f_VAR
	mov dword [esp+0x4], Cvar_SetFromLocalizedStr_f
	mov dword [esp], _cstring_setfromlocstring
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE20Dvar_SetToTime_f_VAR
	mov dword [esp+0x4], Cvar_SetToTime_f
	mov dword [esp], _cstring_setdvartotime
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE16Dvar_Reset_f_VAR
	mov dword [esp+0x4], Cvar_Reset_f
	mov dword [esp], _cstring_reset
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_List_f_VAR
	mov dword [esp+0x4], Cvar_List_f
	mov dword [esp], _cstring_dvarlist
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_Dump_f_VAR
	mov dword [esp+0x4], Cvar_Dump_f
	mov dword [esp], _cstring_dvardump
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE23Dvar_RegisterBool_f_VAR
	mov dword [esp+0x4], Cvar_RegisterBool_f
	mov dword [esp], _cstring_dvar_bool
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE22Dvar_RegisterInt_f_VAR
	mov dword [esp+0x4], Cvar_RegisterInt_f
	mov dword [esp], _cstring_dvar_int
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE24Dvar_RegisterFloat_f_VAR
	mov dword [esp+0x4], Cvar_RegisterFloat_f
	mov dword [esp], _cstring_dvar_float
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Dvar_AddCommandsvE15Dvar_SetU_f_VAR
	mov dword [esp+0x4], Cvar_SetU_f
	mov dword [esp], _cstring_setu
	call Cmd_AddCommand
	leave
	ret


;Dvar_SetFromDvar_f()
Cvar_SetFromDvar_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jz Cvar_SetFromDvar_f_10
	mov dword [esp+0x4], _cstring_usage_setfromdva
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetFromDvar_f_10:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call Cvar_FindVar
	test eax, eax
	jz Cvar_SetFromDvar_f_20
	mov [esp], eax
	call Cvar_DisplayableValue
	mov edx, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Cvar_SetFromDvar_f_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Cvar_SetFromDvar_f_60:
	mov [esp+0x4], edx
	mov [esp], eax
	call Cvar_SetCommand
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetFromDvar_f_20:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg Cvar_SetFromDvar_f_40
	mov eax, _cstring_null
Cvar_SetFromDvar_f_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvar_s_doesnt_ex
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_SetFromDvar_f_40:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp Cvar_SetFromDvar_f_50
Cvar_SetFromDvar_f_30:
	mov eax, _cstring_null
	jmp Cvar_SetFromDvar_f_60
	nop


;Dvar_TogglePrint_f()
Cvar_TogglePrint_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call Cvar_ToggleInternal
	test al, al
	jz Cvar_TogglePrint_f_10
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle Cvar_TogglePrint_f_20
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
Cvar_TogglePrint_f_30:
	mov [esp], ebx
	call Cvar_FindVar
	mov [esp], eax
	call Cvar_DisplayableValue
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_toggled_to_s
	mov dword [esp], 0x0
	call Com_Printf
Cvar_TogglePrint_f_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cvar_TogglePrint_f_20:
	mov ebx, _cstring_null
	jmp Cvar_TogglePrint_f_30


;Dvar_WriteDefaults(int)
Cvar_WriteDefaults:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], Cvar_WriteSingleDefault
	call Cvar_ForEach
	leave
	ret
	nop


;Dvar_InfoString_Big(int)
Cvar_InfoString_Big:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov byte [info2], 0x0
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], Cvar_InfoStringSingle_Big
	call Cvar_ForEach
	mov eax, info2
	leave
	ret
	nop


;Dvar_WriteVariables(int)
Cvar_WriteVariables:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], Cvar_WriteSingleVariable
	call Cvar_ForEach
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

