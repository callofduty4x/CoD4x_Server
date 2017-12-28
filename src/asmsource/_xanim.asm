;Imports of xanim:
	extern Hunk_FindDataForFile
	extern DB_FindXAssetHeaderReal
	extern SL_RemoveRefToString
	extern SL_ConvertToString
	extern SL_RemoveRefToStringOfSize
	extern Hunk_AllocAlignInternal
	extern XAnim_CalcDeltaForTime
	extern Com_sprintfPos
	extern useFastFile
	extern Com_Error
	extern DB_IsXAssetDefault
	extern SL_AddRefToString
	extern SL_GetStringOfSize
	extern Scr_AddConstString
	extern Scr_NotifyNum
	extern memset
	extern Hunk_AllocDebugMem
	extern strcpy
	extern Hunk_FreeDebugMem
	extern XAnimLoadFile
	extern Hunk_SetDataForFile
	extern Com_PrintWarning
	extern memcpy
	extern Com_sprintf
	extern Com_Printf
	extern Hunk_DataOnHunk
	extern Hunk_AddData
	extern va
	extern Scr_AddFloat
	extern Scr_AddArray
	extern SL_GetString_
	extern com_developer

;Exports of xanim:
	global _GLOBAL__I__Z9XAnimInitv
	global g_xAnimInfo
	global g_notifyListSize
	global g_notifyList
	global g_endNotetrackName
	global g_anim_developer
	global XAnimFindData_LoadObj
	global XAnimFindData_FastFile
	global XAnimFreeInfo
	global XAnimCalcRelDeltaParts
	global XAnimDisplay
	global XAnimFillInSyncNodes_r
	global XAnimSetupSyncNodes_r
	global XAnimGetInfoIndex_r
	global XAnimResetTime
	global XAnimGetDescendantWithGreatestWeight
	global XAnimSetGoalWeightNode
	global XAnimCalcDeltaTree
	global XAnimGetAverageRateFrequency
	global XAnimResetAnimMap_r
	global XAnimProcessServerNotify
	global XAnimCheckFreeInfo
	global XAnimClearTreeGoalWeightsInternal
	global XAnimEnsureGoalWeightParent
	global XAnimAllocInfoIndex
	global XAnimCloneInitTime
	global XAnimUpdateOldTime
	global XAnimRestart
	global XAnimCloneAnimTree_r
	global XAnimProcessClientNotify
	global XAnimUpdateInfoSync
	global XAnimUpdateTimeAndNotetrack
	global XAnimGetNextServerNotifyFrac
	global XAnimGetServerNotifyFracSyncTotal
	global XAnimFindServerNoteTrack
	global XAnimBlend
	global GetAnimInfo
	global XAnimCreate
	global XAnimGetTime
	global XAnimSetTime
	global XAnimFreeList
	global XAnimFreeTree
	global XAnimGetAnims
	global XAnimIsLooped
	global XAnimPrecache
	global XAnimShutdown
	global XAnimCalcDelta
	global XAnimClearTree
	global XAnimGetLength
	global XAnimGetWeight
	global DObjDisplayAnim
	global XAnimCreateTree
	global XAnimGetChildAt
	global XAnimCreateAnims
	global XAnimGetAbsDelta
	global XAnimGetAnimName
	global XAnimGetRelDelta
	global XAnimHasFinished
	global XAnimIsPrimitive
	global XAnimSetAnimRate
	global XAnimCalcAbsDelta
	global XAnimResetAnimMap
	global DObjInitServerTime
	global XAnimCloneAnimTree
	global XAnimGetLengthMsec
	global XAnimSetGoalWeight
	global XAnimGetNumChildren
	global XAnimSetupSyncNodes
	global DObjUpdateClientInfo
	global DObjUpdateServerInfo
	global XAnimGetAnimTreeSize
	global XAnimNotetrackExists
	global XAnimGetAnimDebugName
	global XAnimSetGoalWeightKnob
	global DObjGetClientNotifyList
	global XAnimClearTreeGoalWeights
	global XAnimGetAnimTreeDebugName
	global XAnimSetGoalWeightKnobAll
	global XAnimSetCompleteGoalWeight
	global XAnimClearTreeGoalWeightsStrict
	global XAnimAddNotetrackTimesToScriptArray
	global XAnimFree
	global XAnimInit


SECTION .text


;global constructors keyed to XAnimInit()
_GLOBAL__I__Z9XAnimInitv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


;XAnimFindData_LoadObj(char const*)
XAnimFindData_LoadObj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call Hunk_FindDataForFile
	leave
	ret
	nop


;XAnimFindData_FastFile(char const*)
XAnimFindData_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call DB_FindXAssetHeaderReal
	leave
	ret
	nop


;XAnimFreeInfo(XAnimTree_s*, unsigned int)
XAnimFreeInfo:
XAnimFreeInfo_60:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	shl edx, 0x3
	mov eax, [ebp-0x20]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	cmp word [ebx+0x12], 0x0
	jnz XAnimFreeInfo_10
	movzx eax, word [ebx+0xc]
	test ax, ax
	jnz XAnimFreeInfo_20
XAnimFreeInfo_70:
	movzx eax, word [ebx+0x8]
	movzx edi, ax
	movzx esi, word [ebx+0xa]
	movzx ecx, si
	test ax, ax
	jnz XAnimFreeInfo_30
	movzx eax, word [ebx+0xe]
	test ax, ax
	jnz XAnimFreeInfo_40
	mov eax, [ebp-0x1c]
	mov [eax+0x4], si
	jmp XAnimFreeInfo_50
XAnimFreeInfo_20:
	movzx edx, ax
	mov eax, [ebp-0x1c]
	call XAnimFreeInfo_60
	movzx eax, word [ebx+0xc]
	test ax, ax
	jz XAnimFreeInfo_70
	movzx edx, ax
	mov eax, [ebp-0x1c]
	call XAnimFreeInfo_60
	movzx eax, word [ebx+0xc]
	test ax, ax
	jnz XAnimFreeInfo_20
	jmp XAnimFreeInfo_70
XAnimFreeInfo_30:
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	mov [eax+g_xAnimInfo+0xa], cx
XAnimFreeInfo_50:
	test si, si
	jz XAnimFreeInfo_80
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], di
XAnimFreeInfo_80:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz XAnimFreeInfo_90
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
XAnimFreeInfo_90:
	mov word [ebx+0x2], 0xffff
	mov word [ebx+0x8], 0x0
	movzx eax, word [g_xAnimInfo+0xa]
	mov [ebx+0xa], ax
	movzx eax, word [g_xAnimInfo+0xa]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	movzx edx, word [ebp-0x20]
	mov [eax+g_xAnimInfo+0x8], dx
	mov [g_xAnimInfo+0xa], dx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFreeInfo_40:
	movzx eax, ax
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov [eax+g_xAnimInfo+0xc], si
	jmp XAnimFreeInfo_50
XAnimFreeInfo_10:
	movzx eax, word [ebx+0x12]
	mov [esp], eax
	call SL_ConvertToString
	movzx eax, byte [eax+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	movzx eax, word [ebx+0x12]
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	mov word [ebx+0x12], 0x0
	jmp XAnimFreeInfo_70
	nop


;Hunk_AllocXAnimPrecache(int)
Hunk_AllocXAnimPrecache:
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


;__static_initialization_and_destruction_0(int, int)
__static_initialization_and_destruction_0:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz __static_initialization_and_destruction_0_10
__static_initialization_and_destruction_0_20:
	pop ebp
	ret
__static_initialization_and_destruction_0_10:
	sub eax, 0x1
	jnz __static_initialization_and_destruction_0_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;XAnimCalcRelDeltaParts(XAnimParts const*, float, float, float, XAnimSimpleRotPos*, int)
XAnimCalcRelDeltaParts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov ebx, eax
	movss [ebp-0x9c], xmm0
	movss [ebp-0xa0], xmm1
	movss [ebp-0xa4], xmm2
	mov esi, edx
	mov edi, ecx
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea eax, [ebp-0x98]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call XAnim_CalcDeltaForTime
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	lea eax, [ebp-0x90]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0xa4]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call XAnim_CalcDeltaForTime
	cmp byte [ebx+0x10], 0x0
	jz XAnimCalcRelDeltaParts_10
	movss xmm1, dword [ebp-0xa0]
	ucomiss xmm1, [ebp-0xa4]
	ja XAnimCalcRelDeltaParts_20
XAnimCalcRelDeltaParts_10:
	movss xmm4, dword [ebp-0x9c]
	mulss xmm4, [_float_0_00000000]
	movss xmm2, dword [ebp-0x90]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x94]
	movss xmm3, dword [ebp-0x8c]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x98]
	subss xmm0, xmm1
	mulss xmm0, xmm4
	addss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm2, [ebp-0x98]
	mulss xmm3, [ebp-0x94]
	addss xmm2, xmm3
	mulss xmm4, xmm2
	addss xmm4, [esi+0x4]
	movss [esi+0x4], xmm4
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x38]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x34]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x40]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x4c], xmm0
	movss xmm5, dword [ebp-0x9c]
	mulss xmm5, [ebp-0x58]
	movss [ebp-0x58], xmm5
	movss xmm6, dword [ebp-0x9c]
	mulss xmm6, [ebp-0x54]
	movss [ebp-0x54], xmm6
	movss xmm7, dword [ebp-0x9c]
	mulss xmm7, [ebp-0x50]
	movss [ebp-0x50], xmm7
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm6
	lea eax, [ebp+edi*8-0x98]
	movss xmm4, dword [eax]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	movss [ebp-0xac], xmm1
	movss xmm1, dword [eax+0x4]
	movaps xmm3, xmm1
	mulss xmm3, xmm1
	addss xmm3, [ebp-0xac]
	pxor xmm2, xmm2
	ucomiss xmm3, xmm2
	jz XAnimCalcRelDeltaParts_30
XAnimCalcRelDeltaParts_50:
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm3
	movss xmm2, dword [ebp-0xac]
	mulss xmm2, xmm0
	mulss xmm1, xmm4
	mulss xmm1, xmm0
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, xmm2
	mulss xmm3, xmm5
	movaps xmm0, xmm6
	mulss xmm0, xmm1
	addss xmm3, xmm0
	mulss xmm5, xmm1
	mulss xmm2, xmm6
	addss xmm5, xmm2
	movaps xmm0, xmm6
	subss xmm0, xmm5
XAnimCalcRelDeltaParts_60:
	movss xmm1, dword [ebp-0x9c]
	addss xmm1, [esi+0x8]
	movss [esi+0x8], xmm1
	lea eax, [esi+0xc]
	addss xmm3, [esi+0xc]
	movss [esi+0xc], xmm3
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	addss xmm7, [eax+0x8]
	movss [eax+0x8], xmm7
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcRelDeltaParts_20:
	mov eax, [ebx+0x54]
	mov ecx, [eax]
	test ecx, ecx
	jz XAnimCalcRelDeltaParts_10
	movzx ebx, word [ecx]
	test bx, bx
	jz XAnimCalcRelDeltaParts_10
	cmp byte [ecx+0x2], 0x0
	jz XAnimCalcRelDeltaParts_40
	mov edx, [ecx+0x1c]
	movzx eax, byte [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x68], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0x64], xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x60], xmm0
	mov dword [ebp-0x5c], 0x0
	movzx eax, bx
	lea eax, [eax+eax*2]
	add edx, eax
	movzx eax, byte [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x78], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0x74], xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x70], xmm0
	mov dword [ebp-0x6c], 0x0
XAnimCalcRelDeltaParts_70:
	lea eax, [ecx+0x10]
	movss xmm1, dword [ecx+0x10]
	movss [ebp-0x88], xmm1
	movss xmm2, dword [eax+0x4]
	movss [ebp-0x84], xmm2
	movss xmm3, dword [eax+0x8]
	movss [ebp-0x80], xmm3
	mov dword [ebp-0x7c], 0x0
	movss xmm0, dword [ebp-0x78]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x74]
	subss xmm0, [ebp-0x64]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x70]
	subss xmm0, [ebp-0x60]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [ebp-0x5c]
	movss [ebp-0x1c], xmm0
	mulss xmm1, [ebp-0x28]
	addss xmm1, [ebp-0x48]
	movss [ebp-0x48], xmm1
	mulss xmm2, [ebp-0x24]
	addss xmm2, [ebp-0x44]
	movss [ebp-0x44], xmm2
	mulss xmm3, [ebp-0x20]
	addss xmm3, [ebp-0x40]
	movss [ebp-0x40], xmm3
	pxor xmm2, xmm2
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	jmp XAnimCalcRelDeltaParts_10
XAnimCalcRelDeltaParts_30:
	jp XAnimCalcRelDeltaParts_50
	movaps xmm3, xmm5
	jmp XAnimCalcRelDeltaParts_60
XAnimCalcRelDeltaParts_40:
	mov edx, [ecx+0x1c]
	movzx eax, word [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x68], xmm0
	movzx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x64], xmm0
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x60], xmm0
	mov dword [ebp-0x5c], 0x0
	movzx eax, bx
	lea eax, [eax+eax*2]
	lea eax, [edx+eax*2]
	movzx edx, word [eax]
	cvtsi2ss xmm0, edx
	movss [ebp-0x78], xmm0
	movzx edx, word [eax+0x2]
	cvtsi2ss xmm0, edx
	movss [ebp-0x74], xmm0
	movzx eax, word [eax+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x70], xmm0
	mov dword [ebp-0x6c], 0x0
	jmp XAnimCalcRelDeltaParts_70


;XAnimDisplay(XAnimTree_s const*, unsigned int, int, char*, int, int*)
XAnimDisplay:
XAnimDisplay_110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], ecx
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea edi, [edx+g_xAnimInfo]
	lea esi, [edi+0x18]
	test ecx, ecx
	jg XAnimDisplay_10
XAnimDisplay_210:
	movzx ebx, word [edi+0x10]
	mov [esp+0x4], ebx
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esp], eax
	call XAnimGetAnimDebugName
	mov [ebp-0x28], eax
	movss xmm3, dword [esi+0x14]
	pxor xmm2, xmm2
	ucomiss xmm3, xmm2
	jnz XAnimDisplay_20
	jp XAnimDisplay_20
	mov dword [ebp-0x24], _cstring_0
XAnimDisplay_140:
	cmp word [edi+0x12], 0x0
	jz XAnimDisplay_30
	mov eax, [edi+0x14]
	movss xmm4, dword [esi]
	movss xmm5, dword [esi+0x4]
	movaps xmm1, xmm4
	subss xmm1, xmm5
	ucomiss xmm2, xmm1
	ja XAnimDisplay_40
	movss xmm0, dword [eax+0x2c]
	ucomiss xmm0, xmm2
	jnz XAnimDisplay_50
XAnimDisplay_260:
	jp XAnimDisplay_50
	pxor xmm0, xmm0
	movsd [ebp-0x20], xmm0
	movzx eax, word [edi+0x4]
	test ax, ax
	jz XAnimDisplay_60
XAnimDisplay_190:
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x40], eax
	movsd xmm0, qword [ebp-0x20]
	movsd [esp+0x38], xmm0
	cvtss2sd xmm0, [esi]
	movsd [esp+0x30], xmm0
	cvtss2sd xmm0, [esi+0x4]
	movsd [esp+0x28], xmm0
	cvtss2sd xmm0, [esi+0x10]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm0, [esi+0x14]
	movsd [esp+0x18], xmm0
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	mov edx, [ebp-0x24]
	mov [esp+0x10], edx
	mov dword [esp+0xc], _cstring_ss_weight_2f__2f
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Com_sprintfPos
XAnimDisplay_100:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimDisplay_30:
	movzx edx, word [edi+0x4]
	test dx, dx
	jnz XAnimDisplay_70
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	lea eax, [eax+ebx*8]
	lea edx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz XAnimDisplay_80
XAnimDisplay_220:
	mov eax, 0x1
XAnimDisplay_230:
	test eax, eax
	jz XAnimDisplay_90
	cvtss2sd xmm0, [esi]
	movsd [esp+0x30], xmm0
	cvtss2sd xmm0, [esi+0x4]
	movsd [esp+0x28], xmm0
	cvtss2sd xmm0, [esi+0x10]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm3, xmm3
	movsd [esp+0x18], xmm3
	mov ecx, [ebp-0x28]
	mov [esp+0x14], ecx
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_ss_weight_2f__2f1
XAnimDisplay_270:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_sprintfPos
XAnimDisplay_180:
	movzx eax, word [edi+0xc]
	movzx ebx, ax
	test ax, ax
	jz XAnimDisplay_100
	mov esi, [ebp-0x30]
	add esi, 0x1
XAnimDisplay_120:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x2c]
	call XAnimDisplay_110
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimDisplay_120
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimDisplay_20:
	movss xmm0, dword [esi+0x10]
	ucomiss xmm0, xmm3
	ja XAnimDisplay_130
	mov dword [ebp-0x24], _cstring_1
	ucomiss xmm3, xmm0
	mov eax, _cstring_null
	cmova eax, [ebp-0x24]
	mov [ebp-0x24], eax
	jmp XAnimDisplay_140
XAnimDisplay_130:
	mov dword [ebp-0x24], _cstring_4
	jmp XAnimDisplay_140
XAnimDisplay_70:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	lea eax, [eax+ebx*8]
	lea ecx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz XAnimDisplay_150
XAnimDisplay_240:
	mov eax, 0x1
XAnimDisplay_250:
	test eax, eax
	jz XAnimDisplay_160
	cmp word [edi], 0x0
	jnz XAnimDisplay_170
	movzx eax, dx
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x38], eax
	cvtss2sd xmm0, [esi]
	movsd [esp+0x30], xmm0
	cvtss2sd xmm0, [esi+0x4]
	movsd [esp+0x28], xmm0
	cvtss2sd xmm0, [esi+0x10]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm0, [esi+0x14]
	movsd [esp+0x18], xmm0
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	mov edx, [ebp-0x24]
	mov [esp+0x10], edx
	mov dword [esp+0xc], _cstring_ss_weight_2f__2f2
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Com_sprintfPos
	jmp XAnimDisplay_180
XAnimDisplay_50:
	divss xmm1, xmm0
	cvtss2sd xmm1, xmm1
	movsd [ebp-0x20], xmm1
	movzx eax, word [edi+0x4]
	test ax, ax
	jnz XAnimDisplay_190
XAnimDisplay_60:
	movsd xmm0, qword [ebp-0x20]
	movsd [esp+0x38], xmm0
	cvtss2sd xmm4, xmm4
	movsd [esp+0x30], xmm4
	cvtss2sd xmm5, xmm5
	movsd [esp+0x28], xmm5
	cvtss2sd xmm0, [esi+0x10]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm3, xmm3
	movsd [esp+0x18], xmm3
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	mov edx, [ebp-0x24]
	mov [esp+0x10], edx
	mov dword [esp+0xc], _cstring_ss_weight_2f__2f3
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Com_sprintfPos
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimDisplay_10:
	xor ebx, ebx
XAnimDisplay_200:
	mov dword [esp+0xc], _cstring_space
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Com_sprintfPos
	add ebx, 0x1
	cmp [ebp-0x30], ebx
	jnz XAnimDisplay_200
	jmp XAnimDisplay_210
XAnimDisplay_80:
	test byte [edx+0x4], 0x3
	jnz XAnimDisplay_220
	xor eax, eax
	jmp XAnimDisplay_230
XAnimDisplay_150:
	test byte [ecx+0x4], 0x3
	jnz XAnimDisplay_240
	xor eax, eax
	jmp XAnimDisplay_250
XAnimDisplay_40:
	addss xmm1, [_float_1_00000000]
	movss xmm0, dword [eax+0x2c]
	ucomiss xmm0, xmm2
	jnz XAnimDisplay_50
	jmp XAnimDisplay_260
XAnimDisplay_90:
	cvtss2sd xmm0, [esi+0x10]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm3, xmm3
	movsd [esp+0x18], xmm3
	mov edx, [ebp-0x28]
	mov [esp+0x14], edx
	mov ecx, [ebp-0x24]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], _cstring_ss_weight_2f__2f4
XAnimDisplay_280:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Com_sprintfPos
	jmp XAnimDisplay_180
XAnimDisplay_170:
	movzx eax, dx
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x38], eax
	cvtss2sd xmm0, [esi]
	movsd [esp+0x30], xmm0
	cvtss2sd xmm0, [esi+0x4]
	movsd [esp+0x28], xmm0
	cvtss2sd xmm0, [esi+0x10]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm0, [esi+0x14]
	movsd [esp+0x18], xmm0
	mov ecx, [ebp-0x28]
	mov [esp+0x14], ecx
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_ss_weight_2f__2f2
	jmp XAnimDisplay_270
XAnimDisplay_160:
	movzx eax, dx
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x28], eax
	cvtss2sd xmm0, [esi+0x10]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm0, [esi+0x14]
	movsd [esp+0x18], xmm0
	mov edx, [ebp-0x28]
	mov [esp+0x14], edx
	mov ecx, [ebp-0x24]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], _cstring_ss_weight_2f__2f5
	jmp XAnimDisplay_280
	add [eax], al


;XAnimFillInSyncNodes_r(XAnim_s*, unsigned int, unsigned char)
XAnimFillInSyncNodes_r:
XAnimFillInSyncNodes_r_100:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov [ebp-0x24], edx
	mov [ebp-0x25], cl
	lea eax, [eax+edx*8]
	lea esi, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz XAnimFillInSyncNodes_r_10
	mov edx, [esi+0x4]
	cmp cl, [edx+0x10]
	jz XAnimFillInSyncNodes_r_20
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz XAnimFillInSyncNodes_r_30
	movzx eax, byte [edx+0x1e]
XAnimFillInSyncNodes_r_140:
	test eax, eax
	jz XAnimFillInSyncNodes_r_40
	mov ebx, useFastFile
	mov edx, [ebx]
	cmp byte [edx+0xc], 0x0
	jz XAnimFillInSyncNodes_r_50
XAnimFillInSyncNodes_r_130:
	mov eax, XAnimFindData_FastFile
	cmp byte [edx+0xc], 0x0
	mov edx, XAnimFindData_LoadObj
	cmovz eax, edx
	mov dword [esp], _cstring_void_loop
	call eax
	mov [esi+0x4], eax
	test eax, eax
	jz XAnimFillInSyncNodes_r_60
XAnimFillInSyncNodes_r_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFillInSyncNodes_r_10:
	test byte [esi+0x4], 0x3
	jz XAnimFillInSyncNodes_r_70
	xor ebx, ebx
XAnimFillInSyncNodes_r_80:
	add ebx, 0x1
	movzx eax, word [esi+0x6]
	lea eax, [edi+eax*8]
	lea esi, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz XAnimFillInSyncNodes_r_80
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	call XAnimGetAnimDebugName
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_duplicate_specif
	mov dword [esp], 0x2
	call Com_Error
XAnimFillInSyncNodes_r_70:
	cmp byte [ebp-0x25], 0x1
	sbb eax, eax
	not eax
	add eax, 0x2
	or [esi+0x4], ax
	movzx eax, word [esi]
	mov [ebp-0x20], eax
	test eax, eax
	jle XAnimFillInSyncNodes_r_20
	movzx edx, byte [ebp-0x25]
	mov [ebp-0x1c], edx
	xor ebx, ebx
	mov ecx, edx
	jmp XAnimFillInSyncNodes_r_90
XAnimFillInSyncNodes_r_110:
	mov ecx, [ebp-0x1c]
XAnimFillInSyncNodes_r_90:
	movzx edx, word [esi+0x6]
	lea edx, [ebx+edx]
	mov eax, edi
	call XAnimFillInSyncNodes_r_100
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jnz XAnimFillInSyncNodes_r_110
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFillInSyncNodes_r_40:
	cmp byte [ebp-0x25], 0x0
	jnz XAnimFillInSyncNodes_r_120
	mov ebx, [edi]
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edi
	call XAnimGetAnimDebugName
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_animation_s_in_s
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFillInSyncNodes_r_120:
	mov ebx, [edi]
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	call XAnimGetAnimDebugName
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_animation_s_in_s1
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFillInSyncNodes_r_50:
	mov dword [esp+0x4], Hunk_AllocXAnimPrecache
	mov dword [esp], _cstring_void_loop
	call XAnimPrecache
	mov edx, [ebx]
	jmp XAnimFillInSyncNodes_r_130
XAnimFillInSyncNodes_r_30:
	mov eax, [edx]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call DB_IsXAssetDefault
	movzx eax, al
	jmp XAnimFillInSyncNodes_r_140
XAnimFillInSyncNodes_r_60:
	mov dword [esp+0x8], _cstring_void_loop
	mov dword [esp+0x4], _cstring_cannot_find_xani
	mov dword [esp], 0x2
	call Com_Error
	jmp XAnimFillInSyncNodes_r_20


;XAnimSetupSyncNodes_r(XAnim_s*, unsigned int)
XAnimSetupSyncNodes_r:
XAnimSetupSyncNodes_r_50:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	lea eax, [eax+edx*8]
	lea esi, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jz XAnimSetupSyncNodes_r_10
	movzx eax, word [eax+0xc]
	mov [ebp-0x20], eax
	movzx eax, word [esi+0x4]
	mov ebx, eax
	and ebx, 0x3
	jz XAnimSetupSyncNodes_r_20
	cmp ebx, 0x3
	jz XAnimSetupSyncNodes_r_30
XAnimSetupSyncNodes_r_90:
	or word [esi+0x4], 0x4
	sub ebx, 0x1
	setz al
	mov edx, [ebp-0x20]
	test edx, edx
	jg XAnimSetupSyncNodes_r_40
XAnimSetupSyncNodes_r_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetupSyncNodes_r_20:
	mov eax, [ebp-0x20]
	test eax, eax
	jle XAnimSetupSyncNodes_r_10
	xor ebx, ebx
XAnimSetupSyncNodes_r_60:
	movzx edx, word [esi+0x6]
	lea edx, [ebx+edx]
	mov eax, edi
	call XAnimSetupSyncNodes_r_50
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jnz XAnimSetupSyncNodes_r_60
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetupSyncNodes_r_40:
	movzx eax, al
	mov [ebp-0x1c], eax
	xor ebx, ebx
	mov ecx, eax
	jmp XAnimSetupSyncNodes_r_70
XAnimSetupSyncNodes_r_80:
	mov ecx, [ebp-0x1c]
XAnimSetupSyncNodes_r_70:
	movzx edx, word [esi+0x6]
	lea edx, [ebx+edx]
	mov eax, edi
	call XAnimFillInSyncNodes_r
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jnz XAnimSetupSyncNodes_r_80
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetupSyncNodes_r_30:
	mov dword [esp+0x4], _cstring_animation_cannot
	mov dword [esp], 0x2
	call Com_Error
	jmp XAnimSetupSyncNodes_r_90


;XAnimGetInfoIndex_r(XAnimTree_s const*, unsigned int, unsigned int)
XAnimGetInfoIndex_r:
XAnimGetInfoIndex_r_280:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x54], eax
	mov [ebp-0x58], edx
	mov [ebp-0x5c], ecx
	mov eax, ecx
	shl eax, 0x3
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp eax, [ebp-0x58]
	jz XAnimGetInfoIndex_r_10
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x5c], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_20
	xor ecx, ecx
XAnimGetInfoIndex_r_340:
	mov eax, [ebp-0x5c]
	shl eax, 0x3
	mov edx, [ebp-0x5c]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x4c], eax
	cmp ecx, eax
	jz XAnimGetInfoIndex_r_30
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz XAnimGetInfoIndex_r_40
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x50], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_50
	xor ecx, ecx
	mov eax, [ebp-0x50]
XAnimGetInfoIndex_r_350:
	shl eax, 0x3
	mov edx, [ebp-0x50]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x1c], eax
	cmp ecx, eax
	jz XAnimGetInfoIndex_r_60
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz XAnimGetInfoIndex_r_70
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_80
	xor ecx, ecx
	mov eax, [ebp-0x48]
XAnimGetInfoIndex_r_360:
	shl eax, 0x3
	mov edx, [ebp-0x48]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x20], eax
	cmp ecx, eax
	jz XAnimGetInfoIndex_r_90
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz XAnimGetInfoIndex_r_100
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x44], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_110
	xor ecx, ecx
	mov eax, [ebp-0x44]
XAnimGetInfoIndex_r_330:
	shl eax, 0x3
	mov edx, [ebp-0x44]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x24], eax
	cmp ecx, eax
	jz XAnimGetInfoIndex_r_120
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz XAnimGetInfoIndex_r_130
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_140
	xor ecx, ecx
	mov eax, [ebp-0x40]
XAnimGetInfoIndex_r_380:
	shl eax, 0x3
	mov edx, [ebp-0x40]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x28], eax
	cmp ecx, eax
	jz XAnimGetInfoIndex_r_150
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz XAnimGetInfoIndex_r_160
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x3c], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_170
	xor ecx, ecx
	mov eax, [ebp-0x3c]
XAnimGetInfoIndex_r_370:
	shl eax, 0x3
	mov edx, [ebp-0x3c]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x2c], eax
	cmp ecx, eax
	jz XAnimGetInfoIndex_r_180
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz XAnimGetInfoIndex_r_190
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_200
	xor ecx, ecx
	mov eax, [ebp-0x38]
XAnimGetInfoIndex_r_320:
	shl eax, 0x3
	mov edx, [ebp-0x38]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x30], eax
	cmp ecx, eax
	jz XAnimGetInfoIndex_r_210
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz XAnimGetInfoIndex_r_220
	movzx eax, word [edx+0xc]
	movzx edi, ax
	test ax, ax
	jz XAnimGetInfoIndex_r_230
	xor ecx, ecx
XAnimGetInfoIndex_r_310:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x34], eax
	cmp ecx, eax
	jz XAnimGetInfoIndex_r_240
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz XAnimGetInfoIndex_r_250
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetInfoIndex_r_260
	xor edx, edx
XAnimGetInfoIndex_r_300:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimGetInfoIndex_r_270
	mov edx, [ebp-0x58]
	mov eax, [ebp-0x54]
	call XAnimGetInfoIndex_r_280
	test eax, eax
	jnz XAnimGetInfoIndex_r_290
	mov edx, esi
XAnimGetInfoIndex_r_270:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimGetInfoIndex_r_300
XAnimGetInfoIndex_r_260:
	mov ecx, [ebp-0x34]
XAnimGetInfoIndex_r_240:
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jnz XAnimGetInfoIndex_r_310
XAnimGetInfoIndex_r_230:
	mov ecx, [ebp-0x30]
XAnimGetInfoIndex_r_210:
	mov eax, [ebp-0x38]
	shl eax, 0x3
	shl dword [ebp-0x38], 0x6
	sub [ebp-0x38], eax
	mov edx, [ebp-0x38]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_200
	mov eax, edx
	jmp XAnimGetInfoIndex_r_320
XAnimGetInfoIndex_r_140:
	mov ecx, [ebp-0x24]
XAnimGetInfoIndex_r_120:
	mov eax, [ebp-0x44]
	shl eax, 0x3
	shl dword [ebp-0x44], 0x6
	sub [ebp-0x44], eax
	mov edx, [ebp-0x44]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x44], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_110
	mov eax, edx
	jmp XAnimGetInfoIndex_r_330
XAnimGetInfoIndex_r_50:
	mov ecx, [ebp-0x4c]
XAnimGetInfoIndex_r_30:
	mov eax, [ebp-0x5c]
	shl eax, 0x3
	shl dword [ebp-0x5c], 0x6
	sub [ebp-0x5c], eax
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x5c], edx
	test ax, ax
	jnz XAnimGetInfoIndex_r_340
XAnimGetInfoIndex_r_20:
	mov dword [ebp-0x5c], 0x0
	mov eax, [ebp-0x5c]
XAnimGetInfoIndex_r_390:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetInfoIndex_r_80:
	mov ecx, [ebp-0x1c]
XAnimGetInfoIndex_r_60:
	mov eax, [ebp-0x50]
	shl eax, 0x3
	shl dword [ebp-0x50], 0x6
	sub [ebp-0x50], eax
	mov edx, [ebp-0x50]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x50], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_50
	mov eax, edx
	jmp XAnimGetInfoIndex_r_350
XAnimGetInfoIndex_r_110:
	mov ecx, [ebp-0x20]
XAnimGetInfoIndex_r_90:
	mov eax, [ebp-0x48]
	shl eax, 0x3
	shl dword [ebp-0x48], 0x6
	sub [ebp-0x48], eax
	mov edx, [ebp-0x48]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_80
	mov eax, edx
	jmp XAnimGetInfoIndex_r_360
XAnimGetInfoIndex_r_200:
	mov ecx, [ebp-0x2c]
XAnimGetInfoIndex_r_180:
	mov eax, [ebp-0x3c]
	shl eax, 0x3
	shl dword [ebp-0x3c], 0x6
	sub [ebp-0x3c], eax
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x3c], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_170
	mov eax, edx
	jmp XAnimGetInfoIndex_r_370
XAnimGetInfoIndex_r_170:
	mov ecx, [ebp-0x28]
XAnimGetInfoIndex_r_150:
	mov eax, [ebp-0x40]
	shl eax, 0x3
	shl dword [ebp-0x40], 0x6
	sub [ebp-0x40], eax
	mov edx, [ebp-0x40]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz XAnimGetInfoIndex_r_140
	mov eax, edx
	jmp XAnimGetInfoIndex_r_380
XAnimGetInfoIndex_r_130:
	mov eax, [ebp-0x44]
XAnimGetInfoIndex_r_290:
	mov [ebp-0x5c], eax
XAnimGetInfoIndex_r_400:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetInfoIndex_r_10:
	mov eax, ecx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetInfoIndex_r_250:
	mov [ebp-0x5c], edi
	mov eax, edi
	jmp XAnimGetInfoIndex_r_390
XAnimGetInfoIndex_r_220:
	mov edx, [ebp-0x38]
	mov [ebp-0x5c], edx
	mov eax, edx
	jmp XAnimGetInfoIndex_r_390
XAnimGetInfoIndex_r_190:
	mov eax, [ebp-0x3c]
	mov [ebp-0x5c], eax
	jmp XAnimGetInfoIndex_r_390
XAnimGetInfoIndex_r_160:
	mov edx, [ebp-0x40]
	mov [ebp-0x5c], edx
	mov eax, edx
	jmp XAnimGetInfoIndex_r_390
XAnimGetInfoIndex_r_100:
	mov edx, [ebp-0x48]
	mov [ebp-0x5c], edx
	mov eax, edx
	jmp XAnimGetInfoIndex_r_390
XAnimGetInfoIndex_r_70:
	mov eax, [ebp-0x50]
	mov [ebp-0x5c], eax
	jmp XAnimGetInfoIndex_r_400
XAnimGetInfoIndex_r_40:
	mov eax, [ebp-0x5c]
	jmp XAnimGetInfoIndex_r_390


;XAnimResetTime(unsigned int)
XAnimResetTime:
XAnimResetTime_170:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	lea ecx, [eax+g_xAnimInfo]
	lea edx, [ecx+0x18]
	xor ebx, ebx
	mov [ecx+0x18], ebx
	mov word [edx+0x8], 0x0
	mov [edx+0x4], ebx
	mov word [edx+0xa], 0x0
	mov word [ecx+0x2], 0xffff
	movzx eax, word [eax+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x30], edx
	test ax, ax
	jz XAnimResetTime_10
XAnimResetTime_30:
	mov eax, [ebp-0x30]
	shl eax, 0x3
	mov ecx, [ebp-0x30]
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	mov dword [edx+0x18], 0x0
	mov word [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	movzx eax, word [ecx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x2c], edx
	test ax, ax
	jnz XAnimResetTime_20
XAnimResetTime_50:
	mov eax, [ebp-0x30]
	shl eax, 0x3
	shl dword [ebp-0x30], 0x6
	sub [ebp-0x30], eax
	mov edx, [ebp-0x30]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x30], edx
	test ax, ax
	jz XAnimResetTime_10
	xor ebx, ebx
	jmp XAnimResetTime_30
XAnimResetTime_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimResetTime_20:
	mov eax, [ebp-0x2c]
	shl eax, 0x3
	mov ecx, [ebp-0x2c]
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	mov dword [edx+0x18], 0x0
	mov word [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	movzx eax, word [ecx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x28], edx
	test ax, ax
	jnz XAnimResetTime_40
XAnimResetTime_60:
	mov eax, [ebp-0x2c]
	shl eax, 0x3
	shl dword [ebp-0x2c], 0x6
	sub [ebp-0x2c], eax
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x2c], edx
	test ax, ax
	jz XAnimResetTime_50
	xor ebx, ebx
	jmp XAnimResetTime_20
XAnimResetTime_70:
	mov eax, [ebp-0x28]
	shl eax, 0x3
	shl dword [ebp-0x28], 0x6
	sub [ebp-0x28], eax
	mov edx, [ebp-0x28]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x28], edx
	test ax, ax
	jz XAnimResetTime_60
	xor ebx, ebx
XAnimResetTime_40:
	mov eax, [ebp-0x28]
	shl eax, 0x3
	mov ecx, [ebp-0x28]
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	mov dword [edx+0x18], 0x0
	mov word [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	movzx eax, word [ecx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x24], edx
	test ax, ax
	jz XAnimResetTime_70
	jmp XAnimResetTime_80
XAnimResetTime_90:
	mov eax, [ebp-0x24]
	shl eax, 0x3
	shl dword [ebp-0x24], 0x6
	sub [ebp-0x24], eax
	mov edx, [ebp-0x24]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x24], edx
	test ax, ax
	jz XAnimResetTime_70
	xor ebx, ebx
XAnimResetTime_80:
	mov eax, [ebp-0x24]
	shl eax, 0x3
	mov ecx, [ebp-0x24]
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	mov dword [edx+0x18], 0x0
	mov word [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	movzx eax, word [ecx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x20], edx
	test ax, ax
	jz XAnimResetTime_90
	jmp XAnimResetTime_100
XAnimResetTime_110:
	mov eax, [ebp-0x20]
	shl eax, 0x3
	shl dword [ebp-0x20], 0x6
	sub [ebp-0x20], eax
	mov edx, [ebp-0x20]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x20], edx
	test ax, ax
	jz XAnimResetTime_90
	xor ebx, ebx
XAnimResetTime_100:
	mov eax, [ebp-0x20]
	shl eax, 0x3
	mov ecx, [ebp-0x20]
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	mov dword [edx+0x18], 0x0
	mov word [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	movzx eax, word [ecx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x1c], edx
	test ax, ax
	jz XAnimResetTime_110
	jmp XAnimResetTime_120
XAnimResetTime_130:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	shl dword [ebp-0x1c], 0x6
	sub [ebp-0x1c], eax
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x1c], edx
	test ax, ax
	jz XAnimResetTime_110
	xor ebx, ebx
XAnimResetTime_120:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	mov ecx, [ebp-0x1c]
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	mov dword [edx+0x18], 0x0
	mov word [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	movzx eax, word [ecx+g_xAnimInfo+0xc]
	movzx edi, ax
	test ax, ax
	jz XAnimResetTime_130
	jmp XAnimResetTime_140
XAnimResetTime_150:
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz XAnimResetTime_130
	xor ebx, ebx
XAnimResetTime_140:
	lea eax, [edi*8]
	mov ecx, edi
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	mov dword [edx+0x18], 0x0
	mov word [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	movzx eax, word [ecx+g_xAnimInfo+0xc]
	movzx esi, ax
	test ax, ax
	jz XAnimResetTime_150
	jmp XAnimResetTime_160
XAnimResetTime_180:
	mov eax, ebx
	call XAnimResetTime_170
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimResetTime_180
XAnimResetTime_190:
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jz XAnimResetTime_150
	xor ebx, ebx
XAnimResetTime_160:
	lea eax, [esi*8]
	mov ecx, esi
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	mov [edx+0x18], ebx
	mov word [eax+0x8], 0x0
	mov [eax+0x4], ebx
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	movzx eax, word [ecx+g_xAnimInfo+0xc]
	movzx ebx, ax
	test ax, ax
	jz XAnimResetTime_190
	mov eax, ebx
	call XAnimResetTime_170
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimResetTime_180
	jmp XAnimResetTime_190


;XAnimGetDescendantWithGreatestWeight(XAnimTree_s const*, unsigned int)
XAnimGetDescendantWithGreatestWeight:
XAnimGetDescendantWithGreatestWeight_450:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0xa0], eax
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea eax, [edx+g_xAnimInfo]
	cmp word [eax+0x12], 0x0
	jz XAnimGetDescendantWithGreatestWeight_10
	movzx eax, word [eax+0x10]
	mov [ebp-0x90], eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetDescendantWithGreatestWeight_10:
	movzx eax, word [eax+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_20
	pxor xmm0, xmm0
	movss [ebp-0x9c], xmm0
	mov dword [ebp-0x90], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_30
XAnimGetDescendantWithGreatestWeight_70:
	cmp word [ecx+0x12], 0x0
	jz XAnimGetDescendantWithGreatestWeight_40
	movzx eax, word [ecx+0x10]
	mov [ebp-0x94], eax
XAnimGetDescendantWithGreatestWeight_110:
	mov ebx, [ebp-0x94]
	test ebx, ebx
	jz XAnimGetDescendantWithGreatestWeight_50
	movss xmm0, dword [ebp-0x98]
	movss [ebp-0x9c], xmm0
	mov eax, [ebp-0x94]
	mov [ebp-0x90], eax
	mov edx, [ebp-0x1c]
XAnimGetDescendantWithGreatestWeight_80:
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_60
XAnimGetDescendantWithGreatestWeight_30:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	add ecx, g_xAnimInfo
	mov [ebp-0x1c], ecx
	movss xmm0, dword [ecx+0x28]
	movss [ebp-0x98], xmm0
	movss xmm0, dword [ebp-0x9c]
	ucomiss xmm0, [ebp-0x98]
	jb XAnimGetDescendantWithGreatestWeight_70
	mov edx, ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimGetDescendantWithGreatestWeight_30
XAnimGetDescendantWithGreatestWeight_60:
	mov eax, [ebp-0x90]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetDescendantWithGreatestWeight_50:
	mov edx, [ebp-0x1c]
	jmp XAnimGetDescendantWithGreatestWeight_80
XAnimGetDescendantWithGreatestWeight_40:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_50
	pxor xmm0, xmm0
	movss [ebp-0x8c], xmm0
	mov dword [ebp-0x94], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_90
XAnimGetDescendantWithGreatestWeight_130:
	movzx eax, word [edx+0x10]
	mov [ebp-0x58], eax
XAnimGetDescendantWithGreatestWeight_160:
	mov esi, [ebp-0x58]
	test esi, esi
	jz XAnimGetDescendantWithGreatestWeight_100
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x8c], xmm0
	mov eax, [ebp-0x58]
	mov [ebp-0x94], eax
	mov edx, [ebp-0x88]
XAnimGetDescendantWithGreatestWeight_120:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_110
XAnimGetDescendantWithGreatestWeight_90:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x88], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x8c]
	ucomiss xmm0, [ebp-0x20]
	jae XAnimGetDescendantWithGreatestWeight_120
	cmp word [edx+0x12], 0x0
	jnz XAnimGetDescendantWithGreatestWeight_130
	mov edx, [ebp-0x88]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_100
	pxor xmm0, xmm0
	movss [ebp-0x84], xmm0
	mov dword [ebp-0x58], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_140
XAnimGetDescendantWithGreatestWeight_180:
	movzx eax, word [edx+0x10]
	mov [ebp-0x54], eax
XAnimGetDescendantWithGreatestWeight_210:
	mov edi, [ebp-0x54]
	test edi, edi
	jz XAnimGetDescendantWithGreatestWeight_150
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x84], xmm0
	mov eax, [ebp-0x54]
	mov [ebp-0x58], eax
	mov edx, [ebp-0x80]
XAnimGetDescendantWithGreatestWeight_170:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_160
XAnimGetDescendantWithGreatestWeight_140:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x80], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x84]
	ucomiss xmm0, [ebp-0x24]
	jae XAnimGetDescendantWithGreatestWeight_170
	cmp word [edx+0x12], 0x0
	jnz XAnimGetDescendantWithGreatestWeight_180
	mov edx, [ebp-0x80]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_150
	pxor xmm0, xmm0
	movss [ebp-0x7c], xmm0
	mov dword [ebp-0x54], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_190
XAnimGetDescendantWithGreatestWeight_230:
	movzx eax, word [edx+0x10]
	mov [ebp-0x50], eax
XAnimGetDescendantWithGreatestWeight_260:
	mov eax, [ebp-0x50]
	test eax, eax
	jz XAnimGetDescendantWithGreatestWeight_200
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x7c], xmm0
	mov eax, [ebp-0x50]
	mov [ebp-0x54], eax
	mov edx, [ebp-0x78]
XAnimGetDescendantWithGreatestWeight_220:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_210
XAnimGetDescendantWithGreatestWeight_190:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x78], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x7c]
	ucomiss xmm0, [ebp-0x28]
	jae XAnimGetDescendantWithGreatestWeight_220
	cmp word [edx+0x12], 0x0
	jnz XAnimGetDescendantWithGreatestWeight_230
	mov edx, [ebp-0x78]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_200
	pxor xmm0, xmm0
	movss [ebp-0x74], xmm0
	mov dword [ebp-0x50], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_240
XAnimGetDescendantWithGreatestWeight_280:
	movzx eax, word [edx+0x10]
	mov [ebp-0x4c], eax
XAnimGetDescendantWithGreatestWeight_310:
	mov eax, [ebp-0x4c]
	test eax, eax
	jz XAnimGetDescendantWithGreatestWeight_250
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x74], xmm0
	mov eax, [ebp-0x4c]
	mov [ebp-0x50], eax
	mov edx, [ebp-0x70]
XAnimGetDescendantWithGreatestWeight_270:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_260
XAnimGetDescendantWithGreatestWeight_240:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x70], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x74]
	ucomiss xmm0, [ebp-0x2c]
	jae XAnimGetDescendantWithGreatestWeight_270
	cmp word [edx+0x12], 0x0
	jnz XAnimGetDescendantWithGreatestWeight_280
	mov edx, [ebp-0x70]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_250
	pxor xmm0, xmm0
	movss [ebp-0x6c], xmm0
	mov dword [ebp-0x4c], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_290
XAnimGetDescendantWithGreatestWeight_330:
	movzx eax, word [edx+0x10]
	mov [ebp-0x48], eax
XAnimGetDescendantWithGreatestWeight_360:
	mov eax, [ebp-0x48]
	test eax, eax
	jz XAnimGetDescendantWithGreatestWeight_300
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x6c], xmm0
	mov eax, [ebp-0x48]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x68]
XAnimGetDescendantWithGreatestWeight_320:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_310
XAnimGetDescendantWithGreatestWeight_290:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x68], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x6c]
	ucomiss xmm0, [ebp-0x30]
	jae XAnimGetDescendantWithGreatestWeight_320
	cmp word [edx+0x12], 0x0
	jnz XAnimGetDescendantWithGreatestWeight_330
	mov edx, [ebp-0x68]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_300
	pxor xmm0, xmm0
	movss [ebp-0x64], xmm0
	mov dword [ebp-0x48], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_340
XAnimGetDescendantWithGreatestWeight_370:
	movzx eax, word [edi+0x10]
	mov [ebp-0x44], eax
XAnimGetDescendantWithGreatestWeight_400:
	mov eax, [ebp-0x44]
	test eax, eax
	jz XAnimGetDescendantWithGreatestWeight_350
	movss xmm0, dword [ebp-0x34]
	movss [ebp-0x64], xmm0
	mov eax, [ebp-0x44]
	mov [ebp-0x48], eax
XAnimGetDescendantWithGreatestWeight_350:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_360
XAnimGetDescendantWithGreatestWeight_340:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea edi, [edx+g_xAnimInfo]
	movss xmm0, dword [edi+0x28]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x64]
	ucomiss xmm0, [ebp-0x34]
	jae XAnimGetDescendantWithGreatestWeight_350
	cmp word [edi+0x12], 0x0
	jnz XAnimGetDescendantWithGreatestWeight_370
	movzx eax, word [edi+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_350
	pxor xmm0, xmm0
	movss [ebp-0x60], xmm0
	mov dword [ebp-0x44], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_380
XAnimGetDescendantWithGreatestWeight_410:
	movzx eax, word [esi+0x10]
	mov [ebp-0x40], eax
XAnimGetDescendantWithGreatestWeight_430:
	mov eax, [ebp-0x40]
	test eax, eax
	jz XAnimGetDescendantWithGreatestWeight_390
	movss xmm0, dword [ebp-0x38]
	movss [ebp-0x60], xmm0
	mov eax, [ebp-0x40]
	mov [ebp-0x44], eax
XAnimGetDescendantWithGreatestWeight_390:
	movzx eax, word [esi+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_400
XAnimGetDescendantWithGreatestWeight_380:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea esi, [edx+g_xAnimInfo]
	movss xmm0, dword [esi+0x28]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x60]
	ucomiss xmm0, [ebp-0x38]
	jae XAnimGetDescendantWithGreatestWeight_390
	cmp word [esi+0x12], 0x0
	jnz XAnimGetDescendantWithGreatestWeight_410
	movzx eax, word [esi+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_390
	pxor xmm0, xmm0
	movss [ebp-0x5c], xmm0
	mov dword [ebp-0x40], 0x0
	jmp XAnimGetDescendantWithGreatestWeight_420
XAnimGetDescendantWithGreatestWeight_440:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetDescendantWithGreatestWeight_430
XAnimGetDescendantWithGreatestWeight_420:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	movss xmm0, dword [ebx+0x28]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [ebp-0x3c]
	jae XAnimGetDescendantWithGreatestWeight_440
	mov edx, ecx
	mov eax, [ebp-0xa0]
	call XAnimGetDescendantWithGreatestWeight_450
	test eax, eax
	jz XAnimGetDescendantWithGreatestWeight_440
	movss xmm0, dword [ebp-0x3c]
	movss [ebp-0x5c], xmm0
	mov [ebp-0x40], eax
	jmp XAnimGetDescendantWithGreatestWeight_440
XAnimGetDescendantWithGreatestWeight_300:
	mov edx, [ebp-0x68]
	jmp XAnimGetDescendantWithGreatestWeight_320
XAnimGetDescendantWithGreatestWeight_250:
	mov edx, [ebp-0x70]
	jmp XAnimGetDescendantWithGreatestWeight_270
XAnimGetDescendantWithGreatestWeight_200:
	mov edx, [ebp-0x78]
	jmp XAnimGetDescendantWithGreatestWeight_220
XAnimGetDescendantWithGreatestWeight_150:
	mov edx, [ebp-0x80]
	jmp XAnimGetDescendantWithGreatestWeight_170
XAnimGetDescendantWithGreatestWeight_100:
	mov edx, [ebp-0x88]
	jmp XAnimGetDescendantWithGreatestWeight_120
XAnimGetDescendantWithGreatestWeight_20:
	mov dword [ebp-0x90], 0x0
	mov eax, [ebp-0x90]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;XAnimSetGoalWeightNode(XAnimTree_s*, unsigned int, float, float, float, unsigned int, unsigned int)
XAnimSetGoalWeightNode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, eax
	movaps xmm3, xmm0
	movaps xmm4, xmm1
	movss [ebp-0x28], xmm2
	mov esi, ecx
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea ebx, [edx+g_xAnimInfo]
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimSetGoalWeightNode_10
XAnimSetGoalWeightNode_200:
	mov word [ebx+0x2], 0xffff
	pxor xmm6, xmm6
	cmp word [ebx+0x10], 0x0
	jnz XAnimSetGoalWeightNode_20
	movss xmm3, dword [_float_1_00000000]
	pxor xmm6, xmm6
	movaps xmm4, xmm6
	movss [ebp-0x28], xmm3
XAnimSetGoalWeightNode_20:
	lea eax, [ebx+0x18]
	ucomiss xmm4, xmm6
	jnz XAnimSetGoalWeightNode_30
	jp XAnimSetGoalWeightNode_30
	movss [eax+0x14], xmm3
	mov dword [eax+0xc], 0x0
	mov byte [eax+0x1c], 0x1
XAnimSetGoalWeightNode_120:
	movss [eax+0x10], xmm3
	movss xmm0, dword [ebp-0x28]
	movss [eax+0x18], xmm0
	mov [ebx+0x4], si
	test esi, esi
	jnz XAnimSetGoalWeightNode_40
XAnimSetGoalWeightNode_140:
	mov eax, [ebp+0x8]
	mov [ebx+0x6], ax
	test esi, esi
	jz XAnimSetGoalWeightNode_50
	cmp word [ebx+0x12], 0x0
	jz XAnimSetGoalWeightNode_60
XAnimSetGoalWeightNode_50:
	mov word [ebx], 0x0
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetGoalWeightNode_30:
	ucomiss xmm6, [eax+0x14]
	jnz XAnimSetGoalWeightNode_70
	jp XAnimSetGoalWeightNode_70
	movaps xmm0, xmm3
	mulss xmm0, [_float_0_00100000]
	movss [eax+0x14], xmm0
	movaps xmm5, xmm0
XAnimSetGoalWeightNode_150:
	movaps xmm1, xmm5
	subss xmm1, xmm3
	ucomiss xmm1, xmm6
	jp XAnimSetGoalWeightNode_80
	jz XAnimSetGoalWeightNode_90
XAnimSetGoalWeightNode_80:
	movss xmm0, dword [eax+0x10]
	subss xmm0, xmm3
	mulss xmm1, xmm0
	ucomiss xmm1, xmm6
	jbe XAnimSetGoalWeightNode_100
XAnimSetGoalWeightNode_90:
	movss [eax+0xc], xmm4
XAnimSetGoalWeightNode_220:
	ucomiss xmm3, xmm6
	jp XAnimSetGoalWeightNode_110
	jz XAnimSetGoalWeightNode_120
XAnimSetGoalWeightNode_110:
	ucomiss xmm3, xmm5
	jb XAnimSetGoalWeightNode_130
	movaps xmm2, xmm3
	subss xmm2, xmm5
	divss xmm2, xmm3
	mulss xmm2, xmm4
XAnimSetGoalWeightNode_210:
	movss xmm0, dword [eax+0xc]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	cmpss xmm6, xmm1, 0x2
	movaps xmm1, xmm6
	andps xmm0, xmm6
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	movss [eax+0x10], xmm3
	movss xmm0, dword [ebp-0x28]
	movss [eax+0x18], xmm0
	mov [ebx+0x4], si
	test esi, esi
	jz XAnimSetGoalWeightNode_140
XAnimSetGoalWeightNode_40:
	mov [esp], esi
	call SL_AddRefToString
	jmp XAnimSetGoalWeightNode_140
XAnimSetGoalWeightNode_70:
	movss xmm5, dword [eax+0x14]
	jmp XAnimSetGoalWeightNode_150
XAnimSetGoalWeightNode_60:
	test byte [ebx+0x14], 0x3
	jz XAnimSetGoalWeightNode_50
	movzx eax, word [ebx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetGoalWeightNode_160
	pxor xmm2, xmm2
	movss [ebp-0x24], xmm2
	mov dword [ebp-0x20], 0x0
	jmp XAnimSetGoalWeightNode_170
XAnimSetGoalWeightNode_190:
	movzx eax, word [esi+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetGoalWeightNode_180
	movss xmm2, dword [ebp-0x24]
XAnimSetGoalWeightNode_170:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	movss xmm0, dword [esi+0x28]
	movss [ebp-0x1c], xmm0
	ucomiss xmm2, xmm0
	jae XAnimSetGoalWeightNode_190
	mov edx, ecx
	mov eax, edi
	call XAnimGetDescendantWithGreatestWeight
	test eax, eax
	jz XAnimSetGoalWeightNode_190
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x24], xmm0
	mov [ebp-0x20], eax
	jmp XAnimSetGoalWeightNode_190
XAnimSetGoalWeightNode_10:
	movzx eax, ax
	mov [esp], eax
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm1
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	movss xmm4, dword [ebp-0x48]
	movss xmm3, dword [ebp-0x38]
	jmp XAnimSetGoalWeightNode_200
XAnimSetGoalWeightNode_130:
	movaps xmm2, xmm5
	subss xmm2, xmm3
	divss xmm2, xmm5
	mulss xmm2, xmm4
	jmp XAnimSetGoalWeightNode_210
XAnimSetGoalWeightNode_100:
	movss xmm0, dword [eax+0xc]
	movaps xmm1, xmm4
	subss xmm1, xmm0
	movaps xmm2, xmm6
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	andps xmm0, xmm2
	andnps xmm1, xmm4
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimSetGoalWeightNode_220
XAnimSetGoalWeightNode_180:
	movzx eax, word [ebp-0x20]
XAnimSetGoalWeightNode_160:
	mov [ebx], ax
	cmp ax, 0x1
	sbb eax, eax
	and eax, 0x2
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;XAnimCalcDeltaTree(DObj_s const*, unsigned int, float, XAnimDeltaInfo, XAnimSimpleRotPos*)
XAnimCalcDeltaTree:
XAnimCalcDeltaTree_140:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov dword [ebp-0xa0], 0x0
	mov [ebp-0xa8], eax
	movss [ebp-0xac], xmm0
	mov edi, [ebp+0x8]
	movzx eax, ch
	mov [ebp-0x98], al
	mov eax, ecx
	shr eax, 0x18
	mov [ebp-0x88], al
	mov eax, ecx
	shr eax, 0x10
	mov [ebp-0x78], al
	mov [ebp-0x5d], cl
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea ebx, [edx+g_xAnimInfo]
	cmp word [ebx+0x12], 0x0
	jz XAnimCalcDeltaTree_10
	test cl, cl
	jnz XAnimCalcDeltaTree_20
	mov esi, [ebx+0x14]
	cmp byte [esi+0x11], 0x0
	jz XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_90:
	lea eax, [ebx+0x18]
	cmp byte [ebp-0x78], 0x0
	jnz XAnimCalcDeltaTree_40
	mov ecx, 0x1
	mov edx, edi
	movss xmm2, dword [ebx+0x18]
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [ebp-0xac]
	mov eax, esi
	call XAnimCalcRelDeltaParts
XAnimCalcDeltaTree_30:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcDeltaTree_10:
	movzx eax, word [ebx+0xc]
	movzx ebx, ax
	test ax, ax
	jz XAnimCalcDeltaTree_50
	cmp byte [ebp-0x88], 0x0
	jz XAnimCalcDeltaTree_60
	pxor xmm3, xmm3
XAnimCalcDeltaTree_80:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	movss xmm0, dword [eax+0x28]
	ucomiss xmm0, xmm3
	jnz XAnimCalcDeltaTree_70
	jp XAnimCalcDeltaTree_70
	movzx eax, word [eax+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimCalcDeltaTree_80
XAnimCalcDeltaTree_50:
	cmp byte [ebp-0x5d], 0x0
	jz XAnimCalcDeltaTree_30
	xor eax, eax
	mov [edi], eax
	mov [edi+0x4], eax
	mov [edi+0x8], eax
	lea edx, [edi+0xc]
	mov [edi+0xc], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcDeltaTree_20:
	xor eax, eax
	mov [edi], eax
	mov [edi+0x4], eax
	mov [edi+0x8], eax
	lea edx, [edi+0xc]
	mov [edi+0xc], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov esi, [ebx+0x14]
	cmp byte [esi+0x11], 0x0
	jnz XAnimCalcDeltaTree_90
	jmp XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_40:
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov [esp], esi
	call XAnim_CalcDeltaForTime
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, [_float_0_00003052]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x28]
	addss xmm0, [edi]
	movss [edi], xmm0
	mulss xmm1, [ebp-0x24]
	addss xmm1, [edi+0x4]
	movss [edi+0x4], xmm1
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, [ebp-0x38]
	movss [ebp-0x38], xmm1
	movss xmm2, dword [ebp-0xac]
	mulss xmm2, [ebp-0x34]
	movss [ebp-0x34], xmm2
	movss xmm3, dword [ebp-0xac]
	mulss xmm3, [ebp-0x30]
	movss [ebp-0x30], xmm3
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0xac]
	addss xmm0, [edi+0x8]
	movss [edi+0x8], xmm0
	lea eax, [edi+0xc]
	addss xmm1, [edi+0xc]
	movss [edi+0xc], xmm1
	addss xmm2, [eax+0x4]
	movss [eax+0x4], xmm2
	addss xmm3, [eax+0x8]
	movss [eax+0x8], xmm3
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcDeltaTree_70:
	movzx eax, word [eax+0xa]
	movzx esi, ax
	test ax, ax
	jz XAnimCalcDeltaTree_100
	cmp byte [ebp-0x88], 0x0
	jz XAnimCalcDeltaTree_110
XAnimCalcDeltaTree_130:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	mov [ebp-0x5c], eax
	movss xmm1, dword [eax+0x28]
	ucomiss xmm1, xmm3
	jnz XAnimCalcDeltaTree_120
	jp XAnimCalcDeltaTree_120
	mov ecx, eax
	movzx eax, word [eax+0xa]
	movzx esi, ax
	test ax, ax
	jnz XAnimCalcDeltaTree_130
XAnimCalcDeltaTree_100:
	mov ecx, [ebp-0xa0]
	movzx eax, byte [ebp-0x98]
	mov ch, al
	movzx eax, byte [ebp-0x88]
	shl eax, 0x18
	and ecx, 0xffffff
	or ecx, eax
	movzx eax, byte [ebp-0x78]
	shl eax, 0x10
	and ecx, 0xff00ffff
	or ecx, eax
	movzx edx, byte [ebp-0x5d]
	mov cl, dl
	mov [ebp-0xa0], ecx
	mov [esp], edi
	movss xmm0, dword [ebp-0xac]
	mov edx, ebx
	mov eax, [ebp-0xa8]
	call XAnimCalcDeltaTree_140
	jmp XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_120:
	cmp byte [ebp-0x5d], 0x0
	jnz XAnimCalcDeltaTree_150
	lea eax, [ebp-0x50]
	mov [ebp-0x9c], eax
XAnimCalcDeltaTree_290:
	movzx edx, byte [ebp-0x88]
	shl edx, 0x18
	mov [ebp-0xb0], edx
	and ecx, 0xffffff
	or ecx, edx
	movzx eax, byte [ebp-0x78]
	shl eax, 0x10
	mov [ebp-0xb4], eax
	and ecx, 0xff00ffff
	or ecx, eax
	mov ch, 0x1
	mov cl, 0x1
	mov edx, [ebp-0x9c]
	mov [esp], edx
	mov edx, ebx
	mov eax, [ebp-0xa8]
	movss [ebp-0xd8], xmm1
	call XAnimCalcDeltaTree_140
	and ebx, 0xffffff
	or ebx, [ebp-0xb0]
	and ebx, 0xff00ffff
	or ebx, [ebp-0xb4]
	mov bh, 0x1
	and ebx, 0xffffff00
	mov ecx, [ebp-0x9c]
	mov [esp], ecx
	mov ecx, ebx
	movss xmm1, dword [ebp-0xd8]
	movaps xmm0, xmm1
	mov edx, esi
	mov eax, [ebp-0xa8]
	call XAnimCalcDeltaTree_140
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+0xa]
	movzx ebx, ax
	pxor xmm3, xmm3
	test ax, ax
	jnz XAnimCalcDeltaTree_160
XAnimCalcDeltaTree_260:
	cmp byte [ebp-0x98], 0x0
	jnz XAnimCalcDeltaTree_170
	movss xmm1, dword [edi+0x8]
	ucomiss xmm1, xmm3
	jp XAnimCalcDeltaTree_180
	jz XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_180:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	lea eax, [edi+0xc]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0xc]
	movss [edi+0xc], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	jmp XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_170:
	cmp byte [ebp-0x5d], 0x0
	jz XAnimCalcDeltaTree_190
	movss xmm2, dword [edi]
	movss xmm0, dword [edi+0x4]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	ucomiss xmm2, xmm3
	jp XAnimCalcDeltaTree_200
	jz XAnimCalcDeltaTree_210
XAnimCalcDeltaTree_200:
	movss [ebp-0x1c], xmm2
	mov edx, [ebp-0x1c]
	sar edx, 1
	mov eax, 0x5f3759df
	sub eax, edx
	mov [ebp-0x20], eax
	movss xmm1, dword [ebp-0x20]
	mulss xmm2, [_float_0_50000000]
	mulss xmm2, xmm1
	mulss xmm2, xmm1
	movss xmm0, dword [_float_1_50000000]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mulss xmm0, [ebp-0xac]
	movaps xmm1, xmm0
	mulss xmm1, [edi]
	movss [edi], xmm1
	mulss xmm0, [edi+0x4]
	movss [edi+0x4], xmm0
XAnimCalcDeltaTree_210:
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, xmm3
	jp XAnimCalcDeltaTree_220
	jz XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_220:
	movss xmm1, dword [ebp-0xac]
	divss xmm1, xmm0
	lea eax, [edi+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0xc]
	movss [edi+0xc], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	movss xmm0, dword [ebp-0xac]
	movss [edi+0x8], xmm0
	jmp XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_160:
	cmp byte [ebp-0x88], 0x0
	jz XAnimCalcDeltaTree_230
	pxor xmm3, xmm3
	mov eax, [ebp-0xb0]
	mov [ebp-0xbc], eax
	mov edx, [ebp-0xb4]
	mov [ebp-0xc0], edx
	jmp XAnimCalcDeltaTree_240
XAnimCalcDeltaTree_270:
	jp XAnimCalcDeltaTree_250
XAnimCalcDeltaTree_280:
	movzx eax, word [esi+0xa]
	movzx ebx, ax
	test ax, ax
	jz XAnimCalcDeltaTree_260
XAnimCalcDeltaTree_240:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	movss xmm0, dword [esi+0x28]
	ucomiss xmm0, xmm3
	jz XAnimCalcDeltaTree_270
XAnimCalcDeltaTree_250:
	and dword [ebp-0xa4], 0xffffff
	mov ecx, [ebp-0xbc]
	or [ebp-0xa4], ecx
	and dword [ebp-0xa4], 0xff00ffff
	mov eax, [ebp-0xc0]
	or [ebp-0xa4], eax
	mov edx, [ebp-0xa4]
	mov dh, 0x1
	and edx, 0xffffff00
	mov [ebp-0xa4], edx
	mov ecx, [ebp-0x9c]
	mov [esp], ecx
	mov ecx, edx
	mov edx, ebx
	mov eax, [ebp-0xa8]
	call XAnimCalcDeltaTree_140
	pxor xmm3, xmm3
	jmp XAnimCalcDeltaTree_280
XAnimCalcDeltaTree_150:
	mov [ebp-0x9c], edi
	jmp XAnimCalcDeltaTree_290
XAnimCalcDeltaTree_190:
	mov eax, [ebp-0x9c]
	movss xmm2, dword [eax]
	movss xmm0, dword [eax+0x4]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	ucomiss xmm2, xmm3
	jp XAnimCalcDeltaTree_300
	jz XAnimCalcDeltaTree_310
XAnimCalcDeltaTree_300:
	movss [ebp-0x20], xmm2
	mov edx, [ebp-0x20]
	sar edx, 1
	mov eax, 0x5f3759df
	sub eax, edx
	mov [ebp-0x1c], eax
	movss xmm1, dword [ebp-0x1c]
	mulss xmm2, [_float_0_50000000]
	mulss xmm2, xmm1
	mulss xmm2, xmm1
	movss xmm0, dword [_float_1_50000000]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm0
	movaps xmm0, xmm1
	mov edx, [ebp-0x9c]
	mulss xmm0, [edx]
	addss xmm0, [edi]
	movss [edi], xmm0
	mulss xmm1, [edx+0x4]
	addss xmm1, [edi+0x4]
	movss [edi+0x4], xmm1
	mov ecx, [ebp-0x9c]
XAnimCalcDeltaTree_330:
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, xmm3
	jp XAnimCalcDeltaTree_320
	jz XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_320:
	movss xmm1, dword [ebp-0xac]
	divss xmm1, xmm0
	lea eax, [edi+0xc]
	mov edx, ecx
	add edx, 0xc
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0xc]
	addss xmm0, [edi+0xc]
	movss [edi+0xc], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [edx+0x8]
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	movss xmm0, dword [ebp-0xac]
	addss xmm0, [edi+0x8]
	movss [edi+0x8], xmm0
	jmp XAnimCalcDeltaTree_30
XAnimCalcDeltaTree_310:
	mov ecx, eax
	jmp XAnimCalcDeltaTree_330
XAnimCalcDeltaTree_230:
	pxor xmm3, xmm3
	mov ecx, [ebp-0xb4]
	mov [ebp-0xb8], ecx
XAnimCalcDeltaTree_350:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	movss xmm0, dword [esi+0x2c]
	ucomiss xmm0, xmm3
	jp XAnimCalcDeltaTree_340
	jnz XAnimCalcDeltaTree_340
XAnimCalcDeltaTree_370:
	movzx eax, word [esi+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimCalcDeltaTree_350
	jmp XAnimCalcDeltaTree_260
XAnimCalcDeltaTree_110:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	mov [ebp-0x5c], eax
	movss xmm1, dword [eax+0x2c]
	ucomiss xmm1, xmm3
	jp XAnimCalcDeltaTree_120
	jnz XAnimCalcDeltaTree_120
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+0xa]
	movzx esi, ax
	test ax, ax
	jnz XAnimCalcDeltaTree_110
	jmp XAnimCalcDeltaTree_100
XAnimCalcDeltaTree_60:
	pxor xmm3, xmm3
XAnimCalcDeltaTree_360:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	movss xmm0, dword [eax+0x2c]
	ucomiss xmm0, xmm3
	jp XAnimCalcDeltaTree_70
	jnz XAnimCalcDeltaTree_70
	movzx eax, word [eax+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimCalcDeltaTree_360
	jmp XAnimCalcDeltaTree_50
XAnimCalcDeltaTree_340:
	movzx eax, word [ebp-0xa4]
	mov edx, [ebp-0xb8]
	or eax, edx
	mov ah, 0x1
	and eax, 0xffffff00
	mov [ebp-0xa4], eax
	mov ecx, [ebp-0x9c]
	mov [esp], ecx
	mov ecx, eax
	mov edx, ebx
	mov eax, [ebp-0xa8]
	call XAnimCalcDeltaTree_140
	pxor xmm3, xmm3
	jmp XAnimCalcDeltaTree_370
	nop


;XAnimGetAverageRateFrequency(XAnimTree_s const*, unsigned int)
XAnimGetAverageRateFrequency:
XAnimGetAverageRateFrequency_610:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov [ebp-0x84], eax
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea eax, [edx+g_xAnimInfo]
	cmp word [eax+0x12], 0x0
	jz XAnimGetAverageRateFrequency_10
	mov eax, [eax+0x14]
	movss xmm0, dword [eax+0x2c]
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetAverageRateFrequency_10:
	movzx eax, word [eax+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_20
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x80], 0x0
	jmp XAnimGetAverageRateFrequency_30
XAnimGetAverageRateFrequency_80:
	cmp word [eax+0x12], 0x0
	jz XAnimGetAverageRateFrequency_40
	mov eax, [eax+0x14]
	movss xmm0, dword [eax+0x2c]
XAnimGetAverageRateFrequency_760:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp XAnimGetAverageRateFrequency_50
	jz XAnimGetAverageRateFrequency_60
XAnimGetAverageRateFrequency_50:
	movss xmm1, dword [ebp-0x80]
	addss xmm1, xmm7
	movss [ebp-0x80], xmm1
	mulss xmm7, xmm0
	mov eax, [ebp-0x1c]
	mulss xmm7, [eax+0x30]
	addss xmm7, [ebp-0x7c]
	movss [ebp-0x7c], xmm7
	mov edx, eax
XAnimGetAverageRateFrequency_790:
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_70
XAnimGetAverageRateFrequency_30:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	add ecx, g_xAnimInfo
	mov [ebp-0x1c], ecx
	mov eax, ecx
	movss xmm7, dword [ecx+0x2c]
	pxor xmm0, xmm0
	ucomiss xmm7, xmm0
	jp XAnimGetAverageRateFrequency_80
	jnz XAnimGetAverageRateFrequency_80
	mov edx, ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimGetAverageRateFrequency_30
XAnimGetAverageRateFrequency_70:
	movss xmm0, dword [ebp-0x80]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_90
	jz XAnimGetAverageRateFrequency_20
XAnimGetAverageRateFrequency_90:
	movss xmm0, dword [ebp-0x7c]
	divss xmm0, dword [ebp-0x80]
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetAverageRateFrequency_20:
	pxor xmm0, xmm0
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetAverageRateFrequency_40:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_60
	mov dword [ebp-0x70], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x74], xmm0
	jmp XAnimGetAverageRateFrequency_100
XAnimGetAverageRateFrequency_160:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
XAnimGetAverageRateFrequency_720:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp XAnimGetAverageRateFrequency_110
	jz XAnimGetAverageRateFrequency_120
XAnimGetAverageRateFrequency_110:
	movss xmm1, dword [ebp-0x74]
	addss xmm1, xmm6
	movss [ebp-0x74], xmm1
	mulss xmm6, xmm0
	mov eax, [ebp-0x78]
	mulss xmm6, [eax+0x30]
	addss xmm6, [ebp-0x70]
	movss [ebp-0x70], xmm6
	mov edx, eax
XAnimGetAverageRateFrequency_150:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_130
XAnimGetAverageRateFrequency_100:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x78], edx
	movss xmm6, dword [edx+0x2c]
	pxor xmm1, xmm1
	ucomiss xmm6, xmm1
	jp XAnimGetAverageRateFrequency_140
	jz XAnimGetAverageRateFrequency_150
XAnimGetAverageRateFrequency_140:
	cmp word [edx+0x12], 0x0
	jnz XAnimGetAverageRateFrequency_160
	mov edx, [ebp-0x78]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_120
	mov dword [ebp-0x64], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x68], xmm0
	jmp XAnimGetAverageRateFrequency_170
XAnimGetAverageRateFrequency_230:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
XAnimGetAverageRateFrequency_700:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp XAnimGetAverageRateFrequency_180
	jz XAnimGetAverageRateFrequency_190
XAnimGetAverageRateFrequency_180:
	movss xmm1, dword [ebp-0x68]
	addss xmm1, xmm5
	movss [ebp-0x68], xmm1
	mulss xmm5, xmm0
	mov eax, [ebp-0x6c]
	mulss xmm5, [eax+0x30]
	addss xmm5, [ebp-0x64]
	movss [ebp-0x64], xmm5
	mov edx, eax
XAnimGetAverageRateFrequency_220:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_200
XAnimGetAverageRateFrequency_170:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x6c], edx
	movss xmm5, dword [edx+0x2c]
	pxor xmm1, xmm1
	ucomiss xmm5, xmm1
	jp XAnimGetAverageRateFrequency_210
	jz XAnimGetAverageRateFrequency_220
XAnimGetAverageRateFrequency_210:
	cmp word [edx+0x12], 0x0
	jnz XAnimGetAverageRateFrequency_230
	mov edx, [ebp-0x6c]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_190
	mov dword [ebp-0x58], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x5c], xmm0
	jmp XAnimGetAverageRateFrequency_240
XAnimGetAverageRateFrequency_300:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
XAnimGetAverageRateFrequency_680:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp XAnimGetAverageRateFrequency_250
	jz XAnimGetAverageRateFrequency_260
XAnimGetAverageRateFrequency_250:
	movss xmm1, dword [ebp-0x5c]
	addss xmm1, xmm3
	movss [ebp-0x5c], xmm1
	mulss xmm3, xmm0
	mov eax, [ebp-0x60]
	mulss xmm3, [eax+0x30]
	addss xmm3, [ebp-0x58]
	movss [ebp-0x58], xmm3
	mov edx, eax
XAnimGetAverageRateFrequency_290:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_270
XAnimGetAverageRateFrequency_240:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x60], edx
	movss xmm3, dword [edx+0x2c]
	pxor xmm1, xmm1
	ucomiss xmm3, xmm1
	jp XAnimGetAverageRateFrequency_280
	jz XAnimGetAverageRateFrequency_290
XAnimGetAverageRateFrequency_280:
	cmp word [edx+0x12], 0x0
	jnz XAnimGetAverageRateFrequency_300
	mov edx, [ebp-0x60]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_260
	mov dword [ebp-0x4c], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x50], xmm0
	jmp XAnimGetAverageRateFrequency_310
XAnimGetAverageRateFrequency_370:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
XAnimGetAverageRateFrequency_660:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp XAnimGetAverageRateFrequency_320
	jz XAnimGetAverageRateFrequency_330
XAnimGetAverageRateFrequency_320:
	movss xmm1, dword [ebp-0x50]
	addss xmm1, xmm2
	movss [ebp-0x50], xmm1
	mulss xmm2, xmm0
	mov eax, [ebp-0x54]
	mulss xmm2, [eax+0x30]
	addss xmm2, [ebp-0x4c]
	movss [ebp-0x4c], xmm2
	mov edx, eax
XAnimGetAverageRateFrequency_360:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_340
XAnimGetAverageRateFrequency_310:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x54], edx
	movss xmm2, dword [edx+0x2c]
	pxor xmm1, xmm1
	ucomiss xmm2, xmm1
	jp XAnimGetAverageRateFrequency_350
	jz XAnimGetAverageRateFrequency_360
XAnimGetAverageRateFrequency_350:
	cmp word [edx+0x12], 0x0
	jnz XAnimGetAverageRateFrequency_370
	mov edx, [ebp-0x54]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_330
	mov dword [ebp-0x3c], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x40], xmm0
	jmp XAnimGetAverageRateFrequency_380
XAnimGetAverageRateFrequency_440:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
XAnimGetAverageRateFrequency_780:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp XAnimGetAverageRateFrequency_390
	jz XAnimGetAverageRateFrequency_400
XAnimGetAverageRateFrequency_390:
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [ebp-0x44]
	movss [ebp-0x40], xmm1
	mulss xmm0, [ebp-0x44]
	mov eax, [ebp-0x48]
	mulss xmm0, [eax+0x30]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	mov edx, eax
XAnimGetAverageRateFrequency_430:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_410
XAnimGetAverageRateFrequency_380:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x48], edx
	movss xmm1, dword [edx+0x2c]
	movss [ebp-0x44], xmm1
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp XAnimGetAverageRateFrequency_420
	jz XAnimGetAverageRateFrequency_430
XAnimGetAverageRateFrequency_420:
	cmp word [edx+0x12], 0x0
	jnz XAnimGetAverageRateFrequency_440
	mov edx, [ebp-0x48]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_400
	mov dword [ebp-0x30], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x34], xmm0
	jmp XAnimGetAverageRateFrequency_450
XAnimGetAverageRateFrequency_500:
	mov eax, [edi+0x14]
	movss xmm0, dword [eax+0x2c]
XAnimGetAverageRateFrequency_740:
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_460
	jz XAnimGetAverageRateFrequency_470
XAnimGetAverageRateFrequency_460:
	movss xmm4, dword [ebp-0x34]
	addss xmm4, [ebp-0x38]
	movss [ebp-0x34], xmm4
	mulss xmm0, [ebp-0x38]
	mulss xmm0, [edi+0x30]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
XAnimGetAverageRateFrequency_470:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_480
XAnimGetAverageRateFrequency_450:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea edi, [edx+g_xAnimInfo]
	movss xmm1, dword [edi+0x2c]
	movss [ebp-0x38], xmm1
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp XAnimGetAverageRateFrequency_490
	jz XAnimGetAverageRateFrequency_470
XAnimGetAverageRateFrequency_490:
	cmp word [edi+0x12], 0x0
	jnz XAnimGetAverageRateFrequency_500
	movzx eax, word [edi+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_470
	mov dword [ebp-0x24], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x28], xmm0
	jmp XAnimGetAverageRateFrequency_510
XAnimGetAverageRateFrequency_560:
	mov eax, [esi+0x14]
	movss xmm0, dword [eax+0x2c]
XAnimGetAverageRateFrequency_640:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp XAnimGetAverageRateFrequency_520
	jz XAnimGetAverageRateFrequency_530
XAnimGetAverageRateFrequency_520:
	movss xmm1, dword [ebp-0x28]
	addss xmm1, [ebp-0x2c]
	movss [ebp-0x28], xmm1
	mulss xmm0, [ebp-0x2c]
	mulss xmm0, [esi+0x30]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
XAnimGetAverageRateFrequency_530:
	movzx eax, word [esi+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_540
XAnimGetAverageRateFrequency_510:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea esi, [edx+g_xAnimInfo]
	movss xmm1, dword [esi+0x2c]
	movss [ebp-0x2c], xmm1
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp XAnimGetAverageRateFrequency_550
	jz XAnimGetAverageRateFrequency_530
XAnimGetAverageRateFrequency_550:
	cmp word [esi+0x12], 0x0
	jnz XAnimGetAverageRateFrequency_560
	movzx eax, word [esi+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_530
	mov dword [ebp-0xfc], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x20], xmm0
	jmp XAnimGetAverageRateFrequency_570
XAnimGetAverageRateFrequency_600:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetAverageRateFrequency_580
XAnimGetAverageRateFrequency_570:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	movss xmm1, dword [ebx+0x2c]
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp XAnimGetAverageRateFrequency_590
	jz XAnimGetAverageRateFrequency_600
XAnimGetAverageRateFrequency_590:
	mov edx, ecx
	mov eax, [ebp-0x84]
	movss [ebp-0x98], xmm1
	movss [ebp-0xa8], xmm2
	movss [ebp-0xb8], xmm3
	movss [ebp-0xd8], xmm5
	movss [ebp-0xe8], xmm6
	movss [ebp-0xf8], xmm7
	call XAnimGetAverageRateFrequency_610
	movss xmm1, dword [ebp-0x98]
	movss xmm2, dword [ebp-0xa8]
	movss xmm3, dword [ebp-0xb8]
	movss xmm5, dword [ebp-0xd8]
	movss xmm6, dword [ebp-0xe8]
	movss xmm7, dword [ebp-0xf8]
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp XAnimGetAverageRateFrequency_620
	jz XAnimGetAverageRateFrequency_600
XAnimGetAverageRateFrequency_620:
	movss xmm4, dword [ebp-0xfc]
	addss xmm4, xmm1
	movss [ebp-0xfc], xmm4
	mulss xmm1, xmm0
	mulss xmm1, [ebx+0x30]
	addss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimGetAverageRateFrequency_570
XAnimGetAverageRateFrequency_580:
	movss xmm0, dword [ebp-0xfc]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_630
	jz XAnimGetAverageRateFrequency_530
XAnimGetAverageRateFrequency_630:
	movss xmm0, dword [ebp-0x20]
	divss xmm0, dword [ebp-0xfc]
	jmp XAnimGetAverageRateFrequency_640
XAnimGetAverageRateFrequency_400:
	mov edx, [ebp-0x48]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimGetAverageRateFrequency_380
XAnimGetAverageRateFrequency_410:
	movss xmm0, dword [ebp-0x40]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_650
	jz XAnimGetAverageRateFrequency_330
XAnimGetAverageRateFrequency_650:
	movss xmm0, dword [ebp-0x3c]
	divss xmm0, dword [ebp-0x40]
	jmp XAnimGetAverageRateFrequency_660
XAnimGetAverageRateFrequency_330:
	mov edx, [ebp-0x54]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimGetAverageRateFrequency_310
XAnimGetAverageRateFrequency_340:
	movss xmm0, dword [ebp-0x50]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_670
	jz XAnimGetAverageRateFrequency_260
XAnimGetAverageRateFrequency_670:
	movss xmm0, dword [ebp-0x4c]
	divss xmm0, dword [ebp-0x50]
	jmp XAnimGetAverageRateFrequency_680
XAnimGetAverageRateFrequency_260:
	mov edx, [ebp-0x60]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimGetAverageRateFrequency_240
XAnimGetAverageRateFrequency_270:
	movss xmm0, dword [ebp-0x5c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_690
	jz XAnimGetAverageRateFrequency_190
XAnimGetAverageRateFrequency_690:
	movss xmm0, dword [ebp-0x58]
	divss xmm0, dword [ebp-0x5c]
	jmp XAnimGetAverageRateFrequency_700
XAnimGetAverageRateFrequency_190:
	mov edx, [ebp-0x6c]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimGetAverageRateFrequency_170
XAnimGetAverageRateFrequency_200:
	movss xmm0, dword [ebp-0x68]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_710
	jz XAnimGetAverageRateFrequency_120
XAnimGetAverageRateFrequency_710:
	movss xmm0, dword [ebp-0x64]
	divss xmm0, dword [ebp-0x68]
	jmp XAnimGetAverageRateFrequency_720
XAnimGetAverageRateFrequency_540:
	movss xmm4, dword [ebp-0x28]
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jp XAnimGetAverageRateFrequency_730
	jz XAnimGetAverageRateFrequency_470
XAnimGetAverageRateFrequency_730:
	movss xmm0, dword [ebp-0x24]
	divss xmm0, xmm4
	jmp XAnimGetAverageRateFrequency_740
XAnimGetAverageRateFrequency_120:
	mov edx, [ebp-0x78]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimGetAverageRateFrequency_100
XAnimGetAverageRateFrequency_130:
	movss xmm0, dword [ebp-0x74]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_750
	jz XAnimGetAverageRateFrequency_60
XAnimGetAverageRateFrequency_750:
	movss xmm0, dword [ebp-0x70]
	divss xmm0, dword [ebp-0x74]
	jmp XAnimGetAverageRateFrequency_760
XAnimGetAverageRateFrequency_480:
	movss xmm0, dword [ebp-0x34]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp XAnimGetAverageRateFrequency_770
	jz XAnimGetAverageRateFrequency_400
XAnimGetAverageRateFrequency_770:
	movss xmm0, dword [ebp-0x30]
	divss xmm0, dword [ebp-0x34]
	jmp XAnimGetAverageRateFrequency_780
XAnimGetAverageRateFrequency_60:
	mov edx, [ebp-0x1c]
	jmp XAnimGetAverageRateFrequency_790
	nop


;XAnimResetAnimMap_r(XModelNameMap*, unsigned int)
XAnimResetAnimMap_r:
XAnimResetAnimMap_r_260:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov [ebp-0x148], eax
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x144], edx
	cmp word [edx+0x12], 0x0
	jnz XAnimResetAnimMap_r_10
	mov edx, [ebp-0x144]
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_20
XAnimResetAnimMap_r_250:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	add ecx, g_xAnimInfo
	mov [ebp-0xbc], ecx
	cmp word [ecx+0x12], 0x0
	jnz XAnimResetAnimMap_r_30
	mov edx, [ebp-0xbc]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_40
XAnimResetAnimMap_r_240:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x130], edx
	cmp word [edx+0x12], 0x0
	jnz XAnimResetAnimMap_r_50
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_60
XAnimResetAnimMap_r_230:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x11c], edx
	cmp word [edx+0x12], 0x0
	jnz XAnimResetAnimMap_r_70
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_80
XAnimResetAnimMap_r_220:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x108], edx
	cmp word [edx+0x12], 0x0
	jnz XAnimResetAnimMap_r_90
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_100
XAnimResetAnimMap_r_210:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0xf4], edx
	cmp word [edx+0x12], 0x0
	jnz XAnimResetAnimMap_r_110
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_120
	jmp XAnimResetAnimMap_r_130
XAnimResetAnimMap_r_150:
	movzx eax, word [edx+0xc]
	movzx ebx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_140
	mov ecx, edx
XAnimResetAnimMap_r_270:
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_120
XAnimResetAnimMap_r_130:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0xe0], edx
	cmp word [edx+0x12], 0x0
	jz XAnimResetAnimMap_r_150
	movzx ecx, word [edx+0x12]
	mov [ebp-0xcc], ecx
	mov [esp], ecx
	call SL_ConvertToString
	mov [ebp-0xc8], eax
	mov eax, [ebp-0xe0]
	mov edx, [eax+0x14]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx ecx, al
	mov [ebp-0xc4], ecx
	mov edx, [edx+0x30]
	mov [ebp-0xc0], edx
	test al, al
	jz XAnimResetAnimMap_r_160
	xor edi, edi
	jmp XAnimResetAnimMap_r_170
XAnimResetAnimMap_r_180:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0xc4], edi
	jbe XAnimResetAnimMap_r_160
XAnimResetAnimMap_r_170:
	mov eax, [ebp-0xc0]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_180
	cmp esi, edx
	jz XAnimResetAnimMap_r_190
XAnimResetAnimMap_r_200:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_180
	cmp esi, edx
	jnz XAnimResetAnimMap_r_200
XAnimResetAnimMap_r_190:
	movzx ecx, word [ebx+0x2]
	mov [ebp+edi-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	add edi, 0x1
	cmp [ebp-0xc4], edi
	ja XAnimResetAnimMap_r_170
XAnimResetAnimMap_r_160:
	movzx edx, byte [ebp-0xc4]
	mov [ebp-0x9c], dl
	mov dword [esp+0xc], 0xb
	mov eax, [ebp-0xc4]
	add eax, 0x11
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0xac]
	mov [esp], ecx
	call SL_GetStringOfSize
	mov edx, [ebp-0xe0]
	mov [edx+0x12], ax
	mov ecx, [ebp-0xc8]
	movzx eax, byte [ecx+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	mov eax, [ebp-0xcc]
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	mov ecx, [ebp-0xe0]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_130
XAnimResetAnimMap_r_120:
	mov edx, [ebp-0xf4]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_210
XAnimResetAnimMap_r_100:
	mov ecx, [ebp-0x108]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_220
XAnimResetAnimMap_r_80:
	mov edx, [ebp-0x11c]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_230
XAnimResetAnimMap_r_60:
	mov ecx, [ebp-0x130]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_240
XAnimResetAnimMap_r_40:
	mov edx, [ebp-0xbc]
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_250
XAnimResetAnimMap_r_20:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimResetAnimMap_r_140:
	mov edx, ebx
	mov eax, [ebp-0x148]
	call XAnimResetAnimMap_r_260
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_140
	mov ecx, [ebp-0xe0]
	jmp XAnimResetAnimMap_r_270
XAnimResetAnimMap_r_110:
	movzx ecx, word [edx+0x12]
	mov [ebp-0xdc], ecx
	mov [esp], ecx
	call SL_ConvertToString
	mov [ebp-0xd8], eax
	mov eax, [ebp-0xf4]
	mov edx, [eax+0x14]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx ecx, al
	mov [ebp-0xd4], ecx
	mov edx, [edx+0x30]
	mov [ebp-0xd0], edx
	test al, al
	jz XAnimResetAnimMap_r_280
	xor edi, edi
	jmp XAnimResetAnimMap_r_290
XAnimResetAnimMap_r_300:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0xd4], edi
	jbe XAnimResetAnimMap_r_280
XAnimResetAnimMap_r_290:
	mov eax, [ebp-0xd0]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_300
	cmp esi, edx
	jz XAnimResetAnimMap_r_310
XAnimResetAnimMap_r_320:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_300
	cmp esi, edx
	jnz XAnimResetAnimMap_r_320
XAnimResetAnimMap_r_310:
	movzx ecx, word [ebx+0x2]
	mov [ebp+edi-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	add edi, 0x1
	cmp [ebp-0xd4], edi
	ja XAnimResetAnimMap_r_290
XAnimResetAnimMap_r_280:
	movzx edx, byte [ebp-0xd4]
	mov [ebp-0x9c], dl
	mov dword [esp+0xc], 0xb
	mov eax, [ebp-0xd4]
	add eax, 0x11
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0xac]
	mov [esp], ecx
	call SL_GetStringOfSize
	mov edx, [ebp-0xf4]
	mov [edx+0x12], ax
	mov ecx, [ebp-0xd8]
	movzx eax, byte [ecx+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	mov edx, [ebp-0xf4]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_210
	jmp XAnimResetAnimMap_r_100
XAnimResetAnimMap_r_90:
	movzx ecx, word [edx+0x12]
	mov [ebp-0xf0], ecx
	mov [esp], ecx
	call SL_ConvertToString
	mov [ebp-0xec], eax
	mov eax, [ebp-0x108]
	mov edx, [eax+0x14]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx ecx, al
	mov [ebp-0xe8], ecx
	mov edx, [edx+0x30]
	mov [ebp-0xe4], edx
	test al, al
	jz XAnimResetAnimMap_r_330
	xor edi, edi
	jmp XAnimResetAnimMap_r_340
XAnimResetAnimMap_r_350:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0xe8], edi
	jbe XAnimResetAnimMap_r_330
XAnimResetAnimMap_r_340:
	mov eax, [ebp-0xe4]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_350
	cmp esi, edx
	jz XAnimResetAnimMap_r_360
XAnimResetAnimMap_r_370:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_350
	cmp esi, edx
	jnz XAnimResetAnimMap_r_370
XAnimResetAnimMap_r_360:
	movzx ecx, word [ebx+0x2]
	mov [ebp+edi-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	add edi, 0x1
	cmp [ebp-0xe8], edi
	ja XAnimResetAnimMap_r_340
XAnimResetAnimMap_r_330:
	movzx edx, byte [ebp-0xe8]
	mov [ebp-0x9c], dl
	mov dword [esp+0xc], 0xb
	mov eax, [ebp-0xe8]
	add eax, 0x11
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0xac]
	mov [esp], ecx
	call SL_GetStringOfSize
	mov edx, [ebp-0x108]
	mov [edx+0x12], ax
	mov ecx, [ebp-0xec]
	movzx eax, byte [ecx+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	mov eax, [ebp-0xf0]
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	mov ecx, [ebp-0x108]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_220
	jmp XAnimResetAnimMap_r_80
XAnimResetAnimMap_r_70:
	movzx ecx, word [edx+0x12]
	mov [ebp-0x104], ecx
	mov [esp], ecx
	call SL_ConvertToString
	mov [ebp-0x100], eax
	mov eax, [ebp-0x11c]
	mov edx, [eax+0x14]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx ecx, al
	mov [ebp-0xfc], ecx
	mov edx, [edx+0x30]
	mov [ebp-0xf8], edx
	test al, al
	jz XAnimResetAnimMap_r_380
	xor edi, edi
	jmp XAnimResetAnimMap_r_390
XAnimResetAnimMap_r_400:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0xfc], edi
	jbe XAnimResetAnimMap_r_380
XAnimResetAnimMap_r_390:
	mov eax, [ebp-0xf8]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_400
	cmp esi, edx
	jz XAnimResetAnimMap_r_410
XAnimResetAnimMap_r_420:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_400
	cmp esi, edx
	jnz XAnimResetAnimMap_r_420
XAnimResetAnimMap_r_410:
	movzx ecx, word [ebx+0x2]
	mov [ebp+edi-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	add edi, 0x1
	cmp [ebp-0xfc], edi
	ja XAnimResetAnimMap_r_390
XAnimResetAnimMap_r_380:
	movzx edx, byte [ebp-0xfc]
	mov [ebp-0x9c], dl
	mov dword [esp+0xc], 0xb
	mov eax, [ebp-0xfc]
	add eax, 0x11
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0xac]
	mov [esp], ecx
	call SL_GetStringOfSize
	mov edx, [ebp-0x11c]
	mov [edx+0x12], ax
	mov ecx, [ebp-0x100]
	movzx eax, byte [ecx+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	mov eax, [ebp-0x104]
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	mov edx, [ebp-0x11c]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_230
	jmp XAnimResetAnimMap_r_60
XAnimResetAnimMap_r_50:
	movzx ecx, word [edx+0x12]
	mov [ebp-0x118], ecx
	mov [esp], ecx
	call SL_ConvertToString
	mov [ebp-0x114], eax
	mov eax, [ebp-0x130]
	mov edx, [eax+0x14]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx ecx, al
	mov [ebp-0x110], ecx
	mov edx, [edx+0x30]
	mov [ebp-0x10c], edx
	test al, al
	jz XAnimResetAnimMap_r_430
	xor edi, edi
	jmp XAnimResetAnimMap_r_440
XAnimResetAnimMap_r_450:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0x110], edi
	jbe XAnimResetAnimMap_r_430
XAnimResetAnimMap_r_440:
	mov eax, [ebp-0x10c]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_450
	cmp esi, edx
	jz XAnimResetAnimMap_r_460
XAnimResetAnimMap_r_470:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_450
	cmp esi, edx
	jnz XAnimResetAnimMap_r_470
XAnimResetAnimMap_r_460:
	movzx ecx, word [ebx+0x2]
	mov [ebp+edi-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	add edi, 0x1
	cmp [ebp-0x110], edi
	ja XAnimResetAnimMap_r_440
XAnimResetAnimMap_r_430:
	movzx edx, byte [ebp-0x110]
	mov [ebp-0x9c], dl
	mov dword [esp+0xc], 0xb
	mov eax, [ebp-0x110]
	add eax, 0x11
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0xac]
	mov [esp], ecx
	call SL_GetStringOfSize
	mov edx, [ebp-0x130]
	mov [edx+0x12], ax
	mov ecx, [ebp-0x114]
	movzx eax, byte [ecx+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	mov eax, [ebp-0x118]
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	mov ecx, [ebp-0x130]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_240
	jmp XAnimResetAnimMap_r_40
XAnimResetAnimMap_r_30:
	movzx ecx, word [ecx+0x12]
	mov [ebp-0x12c], ecx
	mov [esp], ecx
	call SL_ConvertToString
	mov [ebp-0x128], eax
	mov eax, [ebp-0xbc]
	mov edx, [eax+0x14]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx ecx, al
	mov [ebp-0x124], ecx
	mov edx, [edx+0x30]
	mov [ebp-0x120], edx
	test al, al
	jz XAnimResetAnimMap_r_480
	xor edi, edi
	jmp XAnimResetAnimMap_r_490
XAnimResetAnimMap_r_500:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0x124], edi
	jbe XAnimResetAnimMap_r_480
XAnimResetAnimMap_r_490:
	mov eax, [ebp-0x120]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_500
	cmp esi, edx
	jz XAnimResetAnimMap_r_510
XAnimResetAnimMap_r_520:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_500
	cmp esi, edx
	jnz XAnimResetAnimMap_r_520
XAnimResetAnimMap_r_510:
	movzx ecx, word [ebx+0x2]
	mov [ebp+edi-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	add edi, 0x1
	cmp [ebp-0x124], edi
	ja XAnimResetAnimMap_r_490
XAnimResetAnimMap_r_480:
	movzx edx, byte [ebp-0x124]
	mov [ebp-0x9c], dl
	mov dword [esp+0xc], 0xb
	mov eax, [ebp-0x124]
	add eax, 0x11
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0xac]
	mov [esp], ecx
	call SL_GetStringOfSize
	mov edx, [ebp-0xbc]
	mov [edx+0x12], ax
	mov ecx, [ebp-0x128]
	movzx eax, byte [ecx+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	mov eax, [ebp-0x12c]
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	mov edx, [ebp-0xbc]
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_250
	jmp XAnimResetAnimMap_r_20
XAnimResetAnimMap_r_10:
	movzx eax, word [edx+0x12]
	mov [ebp-0x140], eax
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x13c], eax
	mov ecx, [ebp-0x144]
	mov edx, [ecx+0x14]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx edi, al
	mov edx, [edx+0x30]
	mov [ebp-0x134], edx
	test al, al
	jz XAnimResetAnimMap_r_530
	mov dword [ebp-0x138], 0x0
XAnimResetAnimMap_r_570:
	mov eax, [ebp-0x138]
	mov edx, [ebp-0x134]
	movzx esi, word [edx+eax*2]
	mov ebx, esi
	and ebx, 0xff
	mov ecx, [ebp-0x148]
	lea edx, [ecx+ebx*4]
	movzx eax, word [edx]
	movzx ecx, ax
	test ax, ax
	jz XAnimResetAnimMap_r_540
XAnimResetAnimMap_r_560:
	cmp esi, ecx
	jz XAnimResetAnimMap_r_550
	lea eax, [ebx+0x1]
	movzx ebx, al
	mov ecx, [ebp-0x148]
	lea edx, [ecx+ebx*4]
	movzx eax, word [edx]
	movzx ecx, ax
	test ax, ax
	jnz XAnimResetAnimMap_r_560
XAnimResetAnimMap_r_540:
	mov eax, [ebp-0x138]
	mov byte [ebp+eax-0x9b], 0x7f
XAnimResetAnimMap_r_580:
	add dword [ebp-0x138], 0x1
	cmp edi, [ebp-0x138]
	ja XAnimResetAnimMap_r_570
XAnimResetAnimMap_r_530:
	mov eax, edi
	mov [ebp-0x9c], al
	mov dword [esp+0xc], 0xb
	lea eax, [edi+0x11]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0xac]
	mov [esp], edx
	call SL_GetStringOfSize
	mov ecx, [ebp-0x144]
	mov [ecx+0x12], ax
	mov edx, [ebp-0x13c]
	movzx eax, byte [edx+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	mov ecx, [ebp-0x140]
	mov [esp], ecx
	call SL_RemoveRefToStringOfSize
	jmp XAnimResetAnimMap_r_20
XAnimResetAnimMap_r_550:
	movzx ecx, word [edx+0x2]
	mov edx, [ebp-0x138]
	mov [ebp+edx-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	jmp XAnimResetAnimMap_r_580
	nop


;XAnimProcessServerNotify(DObj_s const*, XAnimInfo*, float)
XAnimProcessServerNotify:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x30], eax
	mov edi, edx
	movss [ebp-0x34], xmm0
	cmp word [eax+0x6], 0x0
	jz XAnimProcessServerNotify_10
	cmp word [edx+0x4], 0x0
	jz XAnimProcessServerNotify_10
	movss xmm1, dword [edx+0x18]
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm1, xmm2
	jz XAnimProcessServerNotify_20
XAnimProcessServerNotify_110:
	mov edx, [ebp-0x30]
	mov eax, [edx]
	cmp word [edi+0x12], 0x0
	jz XAnimProcessServerNotify_30
	mov eax, [edi+0x14]
	mov [ebp-0x2c], eax
XAnimProcessServerNotify_100:
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jz XAnimProcessServerNotify_40
	cmp word [edi+0x2], 0x0
	js XAnimProcessServerNotify_50
XAnimProcessServerNotify_130:
	movsx eax, word [edi+0x2]
	mov [ebp-0x28], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x50]
	mov edx, [ebp-0x28]
	lea esi, [eax+edx*8]
	ucomiss xmm1, [ebp-0x34]
	jbe XAnimProcessServerNotify_60
	movss xmm0, dword [esi+0x4]
	movss xmm2, dword [ebp-0x34]
	ucomiss xmm2, xmm0
	ja XAnimProcessServerNotify_70
	ucomiss xmm1, xmm0
	jbe XAnimProcessServerNotify_80
XAnimProcessServerNotify_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimProcessServerNotify_80:
	movzx ebx, word [edi+0x4]
	movzx eax, word [esi]
	mov [esp], eax
	call Scr_AddConstString
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call Scr_NotifyNum
	add esi, 0x8
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x1c]
	cmp [ebp-0x28], eax
	jl XAnimProcessServerNotify_80
	mov esi, [edx+0x50]
	movss xmm0, dword [ebp-0x34]
	ucomiss xmm0, [esi+0x4]
	jbe XAnimProcessServerNotify_10
	lea eax, [esi+0xc]
	mov [ebp-0x20], eax
XAnimProcessServerNotify_90:
	movzx ebx, word [edi+0x4]
	movzx eax, word [esi]
	mov [esp], eax
	call Scr_AddConstString
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call Scr_NotifyNum
	add esi, 0x8
	mov eax, [ebp-0x20]
	movss xmm0, dword [eax]
	add eax, 0x8
	mov [ebp-0x20], eax
	movss xmm1, dword [ebp-0x34]
	ucomiss xmm1, xmm0
	ja XAnimProcessServerNotify_90
	jmp XAnimProcessServerNotify_10
XAnimProcessServerNotify_30:
	movzx edx, word [edi]
	test dx, dx
	jz XAnimProcessServerNotify_40
	movzx edx, dx
	mov eax, [eax]
	mov edx, [eax+edx*8+0x10]
	mov [ebp-0x2c], edx
	jmp XAnimProcessServerNotify_100
XAnimProcessServerNotify_20:
	jp XAnimProcessServerNotify_110
XAnimProcessServerNotify_140:
	mov eax, [g_endNotetrackName]
	mov [esp], eax
	call Scr_AddConstString
	mov dword [esp+0xc], 0x1
	movzx eax, word [edi+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call Scr_NotifyNum
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimProcessServerNotify_50:
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x50]
	movzx ebx, byte [eax+0x1c]
	test ebx, ebx
	jg XAnimProcessServerNotify_120
	xor eax, eax
XAnimProcessServerNotify_240:
	sub eax, esi
	sar eax, 0x3
	movzx eax, ax
	mov [edi+0x2], ax
	test ax, ax
	jns XAnimProcessServerNotify_130
XAnimProcessServerNotify_40:
	ucomiss xmm1, [ebp-0x34]
	ja XAnimProcessServerNotify_140
	movss xmm0, dword [ebp-0x34]
	ucomiss xmm0, xmm2
	jnz XAnimProcessServerNotify_10
	jnp XAnimProcessServerNotify_140
	jmp XAnimProcessServerNotify_10
XAnimProcessServerNotify_60:
	movss xmm0, dword [ebp-0x34]
	ucomiss xmm0, xmm2
	jz XAnimProcessServerNotify_150
XAnimProcessServerNotify_180:
	movss xmm0, dword [esi+0x4]
	ucomiss xmm0, [ebp-0x34]
	jae XAnimProcessServerNotify_10
	ucomiss xmm1, xmm0
	ja XAnimProcessServerNotify_10
	lea eax, [esi+0x8]
	mov [ebp-0x1c], eax
	add esi, 0xc
	mov edx, eax
	jmp XAnimProcessServerNotify_160
XAnimProcessServerNotify_170:
	mov edx, [ebp-0x1c]
XAnimProcessServerNotify_160:
	movzx ebx, word [edi+0x4]
	movzx eax, word [edx-0x8]
	mov [esp], eax
	call Scr_AddConstString
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call Scr_NotifyNum
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x1c]
	cmp [ebp-0x28], eax
	jge XAnimProcessServerNotify_10
	movss xmm0, dword [esi]
	add dword [ebp-0x1c], 0x8
	add esi, 0x8
	movss xmm1, dword [ebp-0x34]
	ucomiss xmm1, xmm0
	ja XAnimProcessServerNotify_170
	jmp XAnimProcessServerNotify_10
XAnimProcessServerNotify_150:
	jp XAnimProcessServerNotify_180
	ucomiss xmm1, [esi+0x4]
	ja XAnimProcessServerNotify_10
XAnimProcessServerNotify_190:
	movzx ebx, word [edi+0x4]
	movzx eax, word [esi]
	mov [esp], eax
	call Scr_AddConstString
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call Scr_NotifyNum
	add esi, 0x8
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x1c]
	cmp [ebp-0x28], eax
	jl XAnimProcessServerNotify_190
	jmp XAnimProcessServerNotify_10
XAnimProcessServerNotify_70:
	lea eax, [esi+0x8]
	mov [ebp-0x24], eax
	add esi, 0xc
	mov edx, eax
	jmp XAnimProcessServerNotify_200
XAnimProcessServerNotify_210:
	mov edx, [ebp-0x24]
XAnimProcessServerNotify_200:
	movzx ebx, word [edi+0x4]
	movzx eax, word [edx-0x8]
	mov [esp], eax
	call Scr_AddConstString
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call Scr_NotifyNum
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x1c]
	cmp [ebp-0x28], eax
	jge XAnimProcessServerNotify_10
	movss xmm0, dword [esi]
	add dword [ebp-0x24], 0x8
	add esi, 0x8
	movss xmm1, dword [ebp-0x34]
	ucomiss xmm1, xmm0
	ja XAnimProcessServerNotify_210
	jmp XAnimProcessServerNotify_10
XAnimProcessServerNotify_120:
	mov edx, esi
	movss xmm3, dword [_float_2_00000000]
	xor ecx, ecx
	xor eax, eax
XAnimProcessServerNotify_230:
	movss xmm0, dword [edx+0x4]
	ucomiss xmm1, xmm0
	ja XAnimProcessServerNotify_220
	ucomiss xmm3, xmm0
	jbe XAnimProcessServerNotify_220
	mov eax, edx
	movaps xmm3, xmm0
XAnimProcessServerNotify_220:
	add ecx, 0x1
	add edx, 0x8
	cmp ebx, ecx
	jnz XAnimProcessServerNotify_230
	jmp XAnimProcessServerNotify_240


;XAnimCheckFreeInfo(XAnimTree_s*, unsigned int, int)
XAnimCheckFreeInfo:
XAnimCheckFreeInfo_150:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov [ebp-0xe4], eax
	mov [ebp-0xe8], edx
	mov [ebp-0xec], ecx
	shl edx, 0x3
	mov eax, [ebp-0xe8]
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	mov [ebp-0xd8], eax
	add eax, 0x18
	mov [ebp-0xd4], eax
	pxor xmm0, xmm0
	mov edx, ecx
	ucomiss xmm0, [eax+0x14]
	mov eax, 0x0
	cmovnz eax, ecx
	cmovnp edx, eax
	mov [ebp-0xec], edx
	mov edx, [ebp-0xd8]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0xdc], edx
	test ax, ax
	jz XAnimCheckFreeInfo_10
XAnimCheckFreeInfo_470:
	mov eax, [ebp-0xdc]
	shl eax, 0x3
	mov edx, [ebp-0xdc]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [ebp-0xde], ax
	movzx eax, ax
	mov [ebp-0xd0], eax
	add edx, g_xAnimInfo
	mov [ebp-0xc8], edx
	add edx, 0x18
	mov [ebp-0xc4], edx
	mov dword [ebp-0x38], 0x0
	ucomiss xmm0, [edx+0x14]
	mov edx, 0x0
	cmovnz edx, [ebp-0xec]
	cmovp edx, [ebp-0xec]
	mov [ebp-0x38], edx
	mov edx, [ebp-0xc8]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0xc0], edx
	test ax, ax
	jz XAnimCheckFreeInfo_20
XAnimCheckFreeInfo_410:
	mov eax, [ebp-0xc0]
	shl eax, 0x3
	mov edx, [ebp-0xc0]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [ebp-0xca], ax
	movzx eax, ax
	mov [ebp-0x3c], eax
	add edx, g_xAnimInfo
	mov [ebp-0xb8], edx
	add edx, 0x18
	mov [ebp-0xb4], edx
	mov dword [ebp-0x34], 0x0
	ucomiss xmm0, [edx+0x14]
	mov edx, 0x0
	cmovnz edx, [ebp-0x38]
	cmovp edx, [ebp-0x38]
	mov [ebp-0x34], edx
	mov edx, [ebp-0xb8]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0xb0], edx
	test ax, ax
	jz XAnimCheckFreeInfo_30
XAnimCheckFreeInfo_370:
	mov eax, [ebp-0xb0]
	shl eax, 0x3
	mov edx, [ebp-0xb0]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [ebp-0xba], ax
	movzx eax, ax
	mov [ebp-0x40], eax
	add edx, g_xAnimInfo
	mov [ebp-0xa8], edx
	add edx, 0x18
	mov [ebp-0xa4], edx
	mov dword [ebp-0x30], 0x0
	ucomiss xmm0, [edx+0x14]
	mov edx, 0x0
	cmovnz edx, [ebp-0x34]
	cmovp edx, [ebp-0x34]
	mov [ebp-0x30], edx
	mov edx, [ebp-0xa8]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0xa0], edx
	test ax, ax
	jz XAnimCheckFreeInfo_40
XAnimCheckFreeInfo_330:
	mov eax, [ebp-0xa0]
	shl eax, 0x3
	mov edx, [ebp-0xa0]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [ebp-0xaa], ax
	movzx eax, ax
	mov [ebp-0x44], eax
	add edx, g_xAnimInfo
	mov [ebp-0x98], edx
	add edx, 0x18
	mov [ebp-0x94], edx
	mov dword [ebp-0x2c], 0x0
	ucomiss xmm0, [edx+0x14]
	mov edx, 0x0
	cmovnz edx, [ebp-0x30]
	cmovp edx, [ebp-0x30]
	mov [ebp-0x2c], edx
	mov edx, [ebp-0x98]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x90], edx
	test ax, ax
	jz XAnimCheckFreeInfo_50
	mov eax, edx
XAnimCheckFreeInfo_290:
	shl eax, 0x3
	mov edx, [ebp-0x90]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [ebp-0x9a], ax
	movzx eax, ax
	mov [ebp-0x48], eax
	add edx, g_xAnimInfo
	mov [ebp-0x88], edx
	add edx, 0x18
	mov [ebp-0x84], edx
	mov dword [ebp-0x28], 0x0
	ucomiss xmm0, [edx+0x14]
	mov edx, 0x0
	cmovnz edx, [ebp-0x2c]
	cmovp edx, [ebp-0x2c]
	mov [ebp-0x28], edx
	mov edx, [ebp-0x88]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x80], edx
	test ax, ax
	jz XAnimCheckFreeInfo_60
	mov eax, edx
XAnimCheckFreeInfo_230:
	shl eax, 0x3
	mov edx, [ebp-0x80]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [ebp-0x8a], ax
	movzx eax, ax
	mov [ebp-0x4c], eax
	add edx, g_xAnimInfo
	mov [ebp-0x78], edx
	add edx, 0x18
	mov [ebp-0x74], edx
	mov dword [ebp-0x24], 0x0
	ucomiss xmm0, [edx+0x14]
	mov edx, 0x0
	cmovnz edx, [ebp-0x28]
	cmovp edx, [ebp-0x28]
	mov [ebp-0x24], edx
	mov edx, [ebp-0x78]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x70], edx
	test ax, ax
	jz XAnimCheckFreeInfo_70
	mov eax, edx
XAnimCheckFreeInfo_210:
	shl eax, 0x3
	mov edx, [ebp-0x70]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [ebp-0x7a], ax
	movzx eax, ax
	mov [ebp-0x50], eax
	add edx, g_xAnimInfo
	mov [ebp-0x68], edx
	add edx, 0x18
	mov [ebp-0x64], edx
	mov dword [ebp-0x20], 0x0
	ucomiss xmm0, [edx+0x14]
	mov edx, 0x0
	cmovnz edx, [ebp-0x24]
	cmovp edx, [ebp-0x24]
	mov [ebp-0x20], edx
	mov edx, [ebp-0x68]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x60], edx
	test ax, ax
	jz XAnimCheckFreeInfo_80
	mov eax, edx
	jmp XAnimCheckFreeInfo_90
XAnimCheckFreeInfo_130:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz XAnimCheckFreeInfo_100
	pxor xmm0, xmm0
	mov edx, [ebp-0x58]
	ucomiss xmm0, [edx+0x10]
	jz XAnimCheckFreeInfo_110
XAnimCheckFreeInfo_100:
	cmp word [ebp-0x6a], 0x0
	jz XAnimCheckFreeInfo_120
XAnimCheckFreeInfo_170:
	mov eax, [ebp-0x54]
	mov [ebp-0x60], eax
	pxor xmm0, xmm0
XAnimCheckFreeInfo_90:
	shl eax, 0x3
	mov edx, [ebp-0x60]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [ebp-0x6a], ax
	movzx eax, ax
	mov [ebp-0x54], eax
	add edx, g_xAnimInfo
	mov [ebp-0x5c], edx
	add edx, 0x18
	mov [ebp-0x58], edx
	mov dword [ebp-0x1c], 0x0
	ucomiss xmm0, [edx+0x14]
	mov edx, 0x0
	cmovnz edx, [ebp-0x20]
	cmovp edx, [ebp-0x20]
	mov [ebp-0x1c], edx
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jz XAnimCheckFreeInfo_130
	jmp XAnimCheckFreeInfo_140
XAnimCheckFreeInfo_160:
	mov esi, edi
XAnimCheckFreeInfo_140:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	mov ecx, [ebp-0x1c]
	mov edx, esi
	mov eax, [ebp-0xe4]
	call XAnimCheckFreeInfo_150
	test bx, bx
	jnz XAnimCheckFreeInfo_160
	mov eax, [ebp-0x5c]
	cmp word [eax+0xc], 0x0
	jz XAnimCheckFreeInfo_130
	cmp word [ebp-0x6a], 0x0
	jnz XAnimCheckFreeInfo_170
XAnimCheckFreeInfo_120:
	mov edx, [ebp-0x68]
	cmp word [edx+0xc], 0x0
	jnz XAnimCheckFreeInfo_180
XAnimCheckFreeInfo_80:
	mov eax, [ebp-0x20]
	test eax, eax
	jnz XAnimCheckFreeInfo_180
	pxor xmm0, xmm0
	mov eax, [ebp-0x64]
	ucomiss xmm0, [eax+0x10]
	jz XAnimCheckFreeInfo_190
XAnimCheckFreeInfo_180:
	cmp word [ebp-0x7a], 0x0
	jz XAnimCheckFreeInfo_200
	mov edx, [ebp-0x50]
	mov [ebp-0x70], edx
	pxor xmm0, xmm0
	mov eax, edx
	jmp XAnimCheckFreeInfo_210
XAnimCheckFreeInfo_110:
	jp XAnimCheckFreeInfo_100
	mov edx, [ebp-0x60]
	mov eax, [ebp-0xe4]
	call XAnimFreeInfo
	jmp XAnimCheckFreeInfo_100
XAnimCheckFreeInfo_200:
	mov eax, [ebp-0x78]
	cmp word [eax+0xc], 0x0
	jz XAnimCheckFreeInfo_70
XAnimCheckFreeInfo_240:
	cmp word [ebp-0x8a], 0x0
	jz XAnimCheckFreeInfo_220
XAnimCheckFreeInfo_250:
	mov eax, [ebp-0x4c]
	mov [ebp-0x80], eax
	pxor xmm0, xmm0
	jmp XAnimCheckFreeInfo_230
XAnimCheckFreeInfo_70:
	mov eax, [ebp-0x24]
	test eax, eax
	jnz XAnimCheckFreeInfo_240
	pxor xmm0, xmm0
	mov edx, [ebp-0x74]
	ucomiss xmm0, [edx+0x10]
	jnz XAnimCheckFreeInfo_240
	jp XAnimCheckFreeInfo_240
	mov edx, [ebp-0x80]
	mov eax, [ebp-0xe4]
	call XAnimFreeInfo
	cmp word [ebp-0x8a], 0x0
	jnz XAnimCheckFreeInfo_250
XAnimCheckFreeInfo_220:
	mov edx, [ebp-0x88]
	cmp word [edx+0xc], 0x0
	jnz XAnimCheckFreeInfo_260
XAnimCheckFreeInfo_60:
	mov eax, [ebp-0x28]
	test eax, eax
	jnz XAnimCheckFreeInfo_260
	pxor xmm0, xmm0
	mov eax, [ebp-0x84]
	ucomiss xmm0, [eax+0x10]
	jz XAnimCheckFreeInfo_270
XAnimCheckFreeInfo_260:
	cmp word [ebp-0x9a], 0x0
	jz XAnimCheckFreeInfo_280
	mov edx, [ebp-0x48]
	mov [ebp-0x90], edx
	pxor xmm0, xmm0
	mov eax, edx
	jmp XAnimCheckFreeInfo_290
XAnimCheckFreeInfo_190:
	jp XAnimCheckFreeInfo_180
	mov edx, [ebp-0x70]
	mov eax, [ebp-0xe4]
	call XAnimFreeInfo
	jmp XAnimCheckFreeInfo_180
XAnimCheckFreeInfo_280:
	mov eax, [ebp-0x98]
	cmp word [eax+0xc], 0x0
	jnz XAnimCheckFreeInfo_300
XAnimCheckFreeInfo_50:
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz XAnimCheckFreeInfo_300
	pxor xmm0, xmm0
	mov edx, [ebp-0x94]
	ucomiss xmm0, [edx+0x10]
	jz XAnimCheckFreeInfo_310
XAnimCheckFreeInfo_300:
	cmp word [ebp-0xaa], 0x0
	jz XAnimCheckFreeInfo_320
	mov eax, [ebp-0x44]
	mov [ebp-0xa0], eax
	pxor xmm0, xmm0
	jmp XAnimCheckFreeInfo_330
XAnimCheckFreeInfo_270:
	jp XAnimCheckFreeInfo_260
	mov edx, [ebp-0x90]
	mov eax, [ebp-0xe4]
	call XAnimFreeInfo
	jmp XAnimCheckFreeInfo_260
XAnimCheckFreeInfo_310:
	jp XAnimCheckFreeInfo_300
	mov edx, [ebp-0xa0]
	mov eax, [ebp-0xe4]
	call XAnimFreeInfo
	jmp XAnimCheckFreeInfo_300
XAnimCheckFreeInfo_320:
	mov edx, [ebp-0xa8]
	cmp word [edx+0xc], 0x0
	jnz XAnimCheckFreeInfo_340
XAnimCheckFreeInfo_40:
	mov eax, [ebp-0x30]
	test eax, eax
	jnz XAnimCheckFreeInfo_340
	pxor xmm0, xmm0
	mov eax, [ebp-0xa4]
	ucomiss xmm0, [eax+0x10]
	jz XAnimCheckFreeInfo_350
XAnimCheckFreeInfo_340:
	cmp word [ebp-0xba], 0x0
	jz XAnimCheckFreeInfo_360
	mov edx, [ebp-0x40]
	mov [ebp-0xb0], edx
	pxor xmm0, xmm0
	jmp XAnimCheckFreeInfo_370
XAnimCheckFreeInfo_350:
	jp XAnimCheckFreeInfo_340
	mov edx, [ebp-0xb0]
	mov eax, [ebp-0xe4]
	call XAnimFreeInfo
	jmp XAnimCheckFreeInfo_340
XAnimCheckFreeInfo_360:
	mov eax, [ebp-0xb8]
	cmp word [eax+0xc], 0x0
	jnz XAnimCheckFreeInfo_380
XAnimCheckFreeInfo_30:
	mov edi, [ebp-0x34]
	test edi, edi
	jnz XAnimCheckFreeInfo_380
	pxor xmm0, xmm0
	mov edx, [ebp-0xb4]
	ucomiss xmm0, [edx+0x10]
	jz XAnimCheckFreeInfo_390
XAnimCheckFreeInfo_380:
	cmp word [ebp-0xca], 0x0
	jz XAnimCheckFreeInfo_400
	mov eax, [ebp-0x3c]
	mov [ebp-0xc0], eax
	pxor xmm0, xmm0
	jmp XAnimCheckFreeInfo_410
XAnimCheckFreeInfo_460:
	mov eax, [ebp-0xd8]
	cmp word [eax+0xc], 0x0
	jnz XAnimCheckFreeInfo_420
XAnimCheckFreeInfo_10:
	mov ebx, [ebp-0xec]
	test ebx, ebx
	jnz XAnimCheckFreeInfo_420
	pxor xmm0, xmm0
	mov edx, [ebp-0xd4]
	ucomiss xmm0, [edx+0x10]
	jz XAnimCheckFreeInfo_430
XAnimCheckFreeInfo_420:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCheckFreeInfo_430:
	jp XAnimCheckFreeInfo_420
	mov edx, [ebp-0xe8]
	mov eax, [ebp-0xe4]
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp XAnimFreeInfo
XAnimCheckFreeInfo_400:
	mov edx, [ebp-0xc8]
	cmp word [edx+0xc], 0x0
	jnz XAnimCheckFreeInfo_440
XAnimCheckFreeInfo_20:
	mov esi, [ebp-0x38]
	test esi, esi
	jnz XAnimCheckFreeInfo_440
	pxor xmm0, xmm0
	mov eax, [ebp-0xc4]
	ucomiss xmm0, [eax+0x10]
	jz XAnimCheckFreeInfo_450
XAnimCheckFreeInfo_440:
	cmp word [ebp-0xde], 0x0
	jz XAnimCheckFreeInfo_460
	mov edx, [ebp-0xd0]
	mov [ebp-0xdc], edx
	pxor xmm0, xmm0
	jmp XAnimCheckFreeInfo_470
XAnimCheckFreeInfo_390:
	jp XAnimCheckFreeInfo_380
	mov edx, [ebp-0xc0]
	mov eax, [ebp-0xe4]
	call XAnimFreeInfo
	jmp XAnimCheckFreeInfo_380
XAnimCheckFreeInfo_450:
	jp XAnimCheckFreeInfo_440
	mov edx, [ebp-0xdc]
	mov eax, [ebp-0xe4]
	call XAnimFreeInfo
	jmp XAnimCheckFreeInfo_440


;XAnimClearTreeGoalWeightsInternal(XAnimTree_s*, unsigned int, float, int)
XAnimClearTreeGoalWeightsInternal:
XAnimClearTreeGoalWeightsInternal_550:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x50], eax
	mov ebx, edx
	movss [ebp-0x54], xmm0
	mov [ebp-0x58], ecx
	lea edx, [edx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	lea eax, [esi+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_10
	jp XAnimClearTreeGoalWeightsInternal_10
	test ecx, ecx
	jz XAnimClearTreeGoalWeightsInternal_20
XAnimClearTreeGoalWeightsInternal_10:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
XAnimClearTreeGoalWeightsInternal_820:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_30
	jp XAnimClearTreeGoalWeightsInternal_30
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_30:
	movzx eax, word [esi+0x4]
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_40
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [esi+0x4], 0x0
XAnimClearTreeGoalWeightsInternal_40:
	mov word [esi+0x2], 0xffff
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x1c], edx
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_50
	xor ecx, ecx
XAnimClearTreeGoalWeightsInternal_640:
	mov edx, [ebp-0x58]
	test edx, edx
	jz XAnimClearTreeGoalWeightsInternal_60
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	mov edx, [ebp-0x1c]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz XAnimClearTreeGoalWeightsInternal_60
	mov byte [ebp-0x4b], 0x1
XAnimClearTreeGoalWeightsInternal_810:
	mov edx, [ebp-0x1c]
	shl edx, 0x3
	mov eax, [ebp-0x1c]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_70
	jp XAnimClearTreeGoalWeightsInternal_70
	cmp byte [ebp-0x4b], 0x0
	jz XAnimClearTreeGoalWeightsInternal_80
XAnimClearTreeGoalWeightsInternal_70:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
XAnimClearTreeGoalWeightsInternal_830:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_90
	jp XAnimClearTreeGoalWeightsInternal_90
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_90:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_100
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
XAnimClearTreeGoalWeightsInternal_100:
	mov word [ebx+0x2], 0xffff
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	mov edx, [ebp-0x1c]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_110
	xor ecx, ecx
XAnimClearTreeGoalWeightsInternal_630:
	cmp byte [ebp-0x4b], 0x0
	jz XAnimClearTreeGoalWeightsInternal_120
	mov eax, [ebp-0x48]
	shl eax, 0x3
	mov edx, [ebp-0x48]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz XAnimClearTreeGoalWeightsInternal_120
	mov byte [ebp-0x4a], 0x1
XAnimClearTreeGoalWeightsInternal_850:
	mov edx, [ebp-0x48]
	shl edx, 0x3
	mov eax, [ebp-0x48]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_130
	jp XAnimClearTreeGoalWeightsInternal_130
	cmp byte [ebp-0x4a], 0x0
	jz XAnimClearTreeGoalWeightsInternal_140
XAnimClearTreeGoalWeightsInternal_130:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
XAnimClearTreeGoalWeightsInternal_840:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_150
	jp XAnimClearTreeGoalWeightsInternal_150
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_150:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_160
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
XAnimClearTreeGoalWeightsInternal_160:
	mov word [ebx+0x2], 0xffff
	mov eax, [ebp-0x48]
	shl eax, 0x3
	mov edx, [ebp-0x48]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_170
	xor ecx, ecx
XAnimClearTreeGoalWeightsInternal_620:
	cmp byte [ebp-0x4a], 0x0
	jz XAnimClearTreeGoalWeightsInternal_180
	mov eax, [ebp-0x40]
	shl eax, 0x3
	mov edx, [ebp-0x40]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz XAnimClearTreeGoalWeightsInternal_180
	mov byte [ebp-0x49], 0x1
XAnimClearTreeGoalWeightsInternal_790:
	mov edx, [ebp-0x40]
	shl edx, 0x3
	mov eax, [ebp-0x40]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_190
	jp XAnimClearTreeGoalWeightsInternal_190
	cmp byte [ebp-0x49], 0x0
	jz XAnimClearTreeGoalWeightsInternal_200
XAnimClearTreeGoalWeightsInternal_190:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
XAnimClearTreeGoalWeightsInternal_860:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_210
	jp XAnimClearTreeGoalWeightsInternal_210
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_210:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_220
XAnimClearTreeGoalWeightsInternal_800:
	mov word [ebx+0x2], 0xffff
	mov eax, [ebp-0x40]
	shl eax, 0x3
	mov edx, [ebp-0x40]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_230
	xor ecx, ecx
XAnimClearTreeGoalWeightsInternal_610:
	cmp byte [ebp-0x49], 0x0
	jz XAnimClearTreeGoalWeightsInternal_240
	mov eax, [ebp-0x38]
	shl eax, 0x3
	mov edx, [ebp-0x38]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz XAnimClearTreeGoalWeightsInternal_240
	mov byte [ebp-0x41], 0x1
XAnimClearTreeGoalWeightsInternal_770:
	mov edx, [ebp-0x38]
	shl edx, 0x3
	mov eax, [ebp-0x38]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_250
	jp XAnimClearTreeGoalWeightsInternal_250
	cmp byte [ebp-0x41], 0x0
	jz XAnimClearTreeGoalWeightsInternal_260
XAnimClearTreeGoalWeightsInternal_250:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
XAnimClearTreeGoalWeightsInternal_780:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_270
	jp XAnimClearTreeGoalWeightsInternal_270
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_270:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_280
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
XAnimClearTreeGoalWeightsInternal_280:
	mov word [ebx+0x2], 0xffff
	mov eax, [ebp-0x38]
	shl eax, 0x3
	mov edx, [ebp-0x38]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x30], edx
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_290
	xor ecx, ecx
XAnimClearTreeGoalWeightsInternal_600:
	cmp byte [ebp-0x41], 0x0
	jz XAnimClearTreeGoalWeightsInternal_300
	mov eax, [ebp-0x30]
	shl eax, 0x3
	mov edx, [ebp-0x30]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz XAnimClearTreeGoalWeightsInternal_300
	mov byte [ebp-0x39], 0x1
XAnimClearTreeGoalWeightsInternal_740:
	mov edx, [ebp-0x30]
	shl edx, 0x3
	mov eax, [ebp-0x30]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_310
	jp XAnimClearTreeGoalWeightsInternal_310
	cmp byte [ebp-0x39], 0x0
	jz XAnimClearTreeGoalWeightsInternal_320
XAnimClearTreeGoalWeightsInternal_310:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
XAnimClearTreeGoalWeightsInternal_760:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_330
	jp XAnimClearTreeGoalWeightsInternal_330
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_330:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_340
XAnimClearTreeGoalWeightsInternal_750:
	mov word [ebx+0x2], 0xffff
	mov eax, [ebp-0x30]
	shl eax, 0x3
	mov edx, [ebp-0x30]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x28], edx
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_350
	xor ecx, ecx
XAnimClearTreeGoalWeightsInternal_590:
	cmp byte [ebp-0x39], 0x0
	jz XAnimClearTreeGoalWeightsInternal_360
	mov eax, [ebp-0x28]
	shl eax, 0x3
	mov edx, [ebp-0x28]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz XAnimClearTreeGoalWeightsInternal_360
	mov byte [ebp-0x31], 0x1
XAnimClearTreeGoalWeightsInternal_710:
	mov edx, [ebp-0x28]
	shl edx, 0x3
	mov eax, [ebp-0x28]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_370
	jp XAnimClearTreeGoalWeightsInternal_370
	cmp byte [ebp-0x31], 0x0
	jz XAnimClearTreeGoalWeightsInternal_380
XAnimClearTreeGoalWeightsInternal_370:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
XAnimClearTreeGoalWeightsInternal_730:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_390
	jp XAnimClearTreeGoalWeightsInternal_390
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_390:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_400
XAnimClearTreeGoalWeightsInternal_720:
	mov word [ebx+0x2], 0xffff
	mov eax, [ebp-0x28]
	shl eax, 0x3
	mov edx, [ebp-0x28]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x20], edx
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_410
	xor ecx, ecx
XAnimClearTreeGoalWeightsInternal_580:
	cmp byte [ebp-0x31], 0x0
	jz XAnimClearTreeGoalWeightsInternal_420
	mov eax, [ebp-0x20]
	shl eax, 0x3
	mov edx, [ebp-0x20]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz XAnimClearTreeGoalWeightsInternal_420
	mov byte [ebp-0x29], 0x1
XAnimClearTreeGoalWeightsInternal_680:
	mov edx, [ebp-0x20]
	shl edx, 0x3
	mov eax, [ebp-0x20]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_430
	jp XAnimClearTreeGoalWeightsInternal_430
	cmp byte [ebp-0x29], 0x0
	jz XAnimClearTreeGoalWeightsInternal_440
XAnimClearTreeGoalWeightsInternal_430:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
XAnimClearTreeGoalWeightsInternal_700:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_450
	jp XAnimClearTreeGoalWeightsInternal_450
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_450:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_460
XAnimClearTreeGoalWeightsInternal_690:
	mov word [ebx+0x2], 0xffff
	mov eax, [ebp-0x20]
	shl eax, 0x3
	mov edx, [ebp-0x20]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx edi, ax
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_470
	xor ecx, ecx
XAnimClearTreeGoalWeightsInternal_570:
	cmp byte [ebp-0x29], 0x0
	jz XAnimClearTreeGoalWeightsInternal_480
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz XAnimClearTreeGoalWeightsInternal_480
	mov byte [ebp-0x21], 0x1
XAnimClearTreeGoalWeightsInternal_650:
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimClearTreeGoalWeightsInternal_490
	jp XAnimClearTreeGoalWeightsInternal_490
	cmp byte [ebp-0x21], 0x0
	jz XAnimClearTreeGoalWeightsInternal_500
XAnimClearTreeGoalWeightsInternal_490:
	movss xmm3, dword [ebp-0x54]
	movss [eax+0xc], xmm3
XAnimClearTreeGoalWeightsInternal_670:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz XAnimClearTreeGoalWeightsInternal_510
	jp XAnimClearTreeGoalWeightsInternal_510
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsInternal_510:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_520
XAnimClearTreeGoalWeightsInternal_660:
	mov word [ebx+0x2], 0xffff
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx esi, ax
	test ax, ax
	jz XAnimClearTreeGoalWeightsInternal_530
	cmp byte [ebp-0x21], 0x0
	jz XAnimClearTreeGoalWeightsInternal_540
	xor edx, edx
XAnimClearTreeGoalWeightsInternal_560:
	lea eax, [esi*8]
	mov ebx, esi
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0x10]
	xor ecx, ecx
	cmp eax, edx
	setnz cl
	movss xmm0, dword [ebp-0x54]
	mov edx, esi
	mov eax, [ebp-0x50]
	call XAnimClearTreeGoalWeightsInternal_550
	movzx edx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_560
XAnimClearTreeGoalWeightsInternal_530:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_570
XAnimClearTreeGoalWeightsInternal_470:
	mov eax, [ebp-0x20]
	shl eax, 0x3
	mov edx, [ebp-0x20]
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x20], edx
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_580
XAnimClearTreeGoalWeightsInternal_410:
	mov eax, [ebp-0x28]
	shl eax, 0x3
	mov edx, [ebp-0x28]
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x28], edx
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_590
XAnimClearTreeGoalWeightsInternal_350:
	mov eax, [ebp-0x30]
	shl eax, 0x3
	mov edx, [ebp-0x30]
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x30], edx
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_600
XAnimClearTreeGoalWeightsInternal_290:
	mov eax, [ebp-0x38]
	shl eax, 0x3
	mov edx, [ebp-0x38]
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_610
XAnimClearTreeGoalWeightsInternal_230:
	mov eax, [ebp-0x40]
	shl eax, 0x3
	mov edx, [ebp-0x40]
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_620
XAnimClearTreeGoalWeightsInternal_170:
	mov eax, [ebp-0x48]
	shl eax, 0x3
	mov edx, [ebp-0x48]
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_630
XAnimClearTreeGoalWeightsInternal_110:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	mov edx, [ebp-0x1c]
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x1c], edx
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_640
XAnimClearTreeGoalWeightsInternal_50:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimClearTreeGoalWeightsInternal_480:
	mov byte [ebp-0x21], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_650
XAnimClearTreeGoalWeightsInternal_520:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_660
XAnimClearTreeGoalWeightsInternal_500:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_670
XAnimClearTreeGoalWeightsInternal_420:
	mov byte [ebp-0x29], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_680
XAnimClearTreeGoalWeightsInternal_460:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_690
XAnimClearTreeGoalWeightsInternal_440:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_700
XAnimClearTreeGoalWeightsInternal_360:
	mov byte [ebp-0x31], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_710
XAnimClearTreeGoalWeightsInternal_400:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_720
XAnimClearTreeGoalWeightsInternal_380:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_730
XAnimClearTreeGoalWeightsInternal_300:
	mov byte [ebp-0x39], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_740
XAnimClearTreeGoalWeightsInternal_340:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_750
XAnimClearTreeGoalWeightsInternal_320:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_760
XAnimClearTreeGoalWeightsInternal_240:
	mov byte [ebp-0x41], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_770
XAnimClearTreeGoalWeightsInternal_260:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_780
XAnimClearTreeGoalWeightsInternal_180:
	mov byte [ebp-0x49], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_790
XAnimClearTreeGoalWeightsInternal_540:
	xor ecx, ecx
	movss xmm0, dword [ebp-0x54]
	mov edx, esi
	mov eax, [ebp-0x50]
	call XAnimClearTreeGoalWeightsInternal_550
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jnz XAnimClearTreeGoalWeightsInternal_540
	jmp XAnimClearTreeGoalWeightsInternal_530
XAnimClearTreeGoalWeightsInternal_220:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_800
XAnimClearTreeGoalWeightsInternal_60:
	mov byte [ebp-0x4b], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_810
XAnimClearTreeGoalWeightsInternal_20:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_820
XAnimClearTreeGoalWeightsInternal_80:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_830
XAnimClearTreeGoalWeightsInternal_140:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_840
XAnimClearTreeGoalWeightsInternal_120:
	mov byte [ebp-0x4a], 0x0
	jmp XAnimClearTreeGoalWeightsInternal_850
XAnimClearTreeGoalWeightsInternal_200:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	movss xmm3, dword [ebp-0x54]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimClearTreeGoalWeightsInternal_860
	nop


;XAnimEnsureGoalWeightParent(DObj_s*, unsigned int)
XAnimEnsureGoalWeightParent:
XAnimEnsureGoalWeightParent_50:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, eax
	mov ebx, edx
	mov eax, [eax]
	mov [ebp-0x20], eax
	test edx, edx
	jnz XAnimEnsureGoalWeightParent_10
	movzx eax, word [eax+0x4]
	test ax, ax
	jnz XAnimEnsureGoalWeightParent_20
	movzx eax, word [g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jz XAnimEnsureGoalWeightParent_30
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [g_xAnimInfo+0xa], ax
	lea ecx, [eax*8]
	shl eax, 0x6
	sub eax, ecx
	mov word [eax+g_xAnimInfo+0x8], 0x0
	add edx, g_xAnimInfo
	movzx ecx, word [g_xAnimInfo+0xc]
	movzx ebx, cx
	mov word [edx+0x8], 0x0
	mov [edx+0xa], bx
	mov word [edx+0x10], 0x0
	mov edi, [ebp-0x20]
	mov eax, [edi]
	add eax, 0xc
	mov word [edx+0xc], 0x0
	mov word [edx+0xe], 0x0
	mov word [edx+0x12], 0x0
	mov eax, [eax+0x4]
	mov [edx+0x14], eax
	test cx, cx
	jnz XAnimEnsureGoalWeightParent_40
	mov edx, esi
XAnimEnsureGoalWeightParent_130:
	mov eax, [ebp-0x20]
	mov [eax+0x4], dx
XAnimEnsureGoalWeightParent_140:
	lea eax, [esi*8]
	mov ebx, esi
	shl ebx, 0x6
	sub ebx, eax
	lea edx, [ebx+g_xAnimInfo]
	lea edi, [edx+0x18]
	cld
	mov ecx, 0x8
	xor eax, eax
	rep stosd
	mov word [edx+0x4], 0x0
	mov word [edx+0x2], 0xffff
	mov word [ebx+g_xAnimInfo], 0x0
	mov word [edx+0x6], 0x0
	mov eax, 0x3f800000
	mov [edx+0x28], eax
	mov [edx+0x2c], eax
	mov dword [edx+0x24], 0x0
	mov [edx+0x30], eax
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimEnsureGoalWeightParent_20:
	movzx esi, ax
XAnimEnsureGoalWeightParent_110:
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimEnsureGoalWeightParent_10:
	mov eax, [eax]
	movzx edx, word [eax+ebx*8+0xe]
	mov eax, ecx
	call XAnimEnsureGoalWeightParent_50
	mov [ebp-0x24], eax
	mov edx, eax
	shl edx, 0x3
	shl eax, 0x6
	sub eax, edx
	movzx eax, word [eax+g_xAnimInfo+0xc]
	movzx esi, ax
	test ax, ax
	jnz XAnimEnsureGoalWeightParent_60
XAnimEnsureGoalWeightParent_120:
	movzx eax, word [g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jz XAnimEnsureGoalWeightParent_70
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [g_xAnimInfo+0xa], ax
	lea ecx, [eax*8]
	shl eax, 0x6
	sub eax, ecx
	mov word [eax+g_xAnimInfo+0x8], 0x0
	lea edi, [edx+g_xAnimInfo]
	mov edx, [ebp-0x24]
	shl edx, 0x3
	mov eax, [ebp-0x24]
	shl eax, 0x6
	sub eax, edx
	movzx eax, word [eax+g_xAnimInfo+0xc]
	movzx ecx, ax
	test ax, ax
	jnz XAnimEnsureGoalWeightParent_80
XAnimEnsureGoalWeightParent_180:
	mov dword [ebp-0x1c], 0x0
	xor eax, eax
XAnimEnsureGoalWeightParent_210:
	mov [edi+0x8], ax
	mov [edi+0xa], cx
	mov [edi+0x10], bx
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov word [edi+0xc], 0x0
	movzx edx, word [ebp-0x24]
	mov [edi+0xe], dx
	mov word [edi+0x12], 0x0
	mov eax, [eax+ebx*8+0x10]
	mov [edi+0x14], eax
	test ecx, ecx
	jz XAnimEnsureGoalWeightParent_90
	mov edx, esi
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], si
XAnimEnsureGoalWeightParent_170:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz XAnimEnsureGoalWeightParent_100
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	shl dword [ebp-0x1c], 0x6
	sub [ebp-0x1c], eax
	mov edi, [ebp-0x1c]
	mov [edi+g_xAnimInfo+0xa], dx
XAnimEnsureGoalWeightParent_160:
	lea eax, [esi*8]
	mov ebx, esi
	shl ebx, 0x6
	sub ebx, eax
	lea edx, [ebx+g_xAnimInfo]
	lea edi, [edx+0x18]
	cld
	mov ecx, 0x8
	xor eax, eax
	rep stosd
	mov word [edx+0x4], 0x0
	mov word [edx+0x2], 0xffff
	mov word [ebx+g_xAnimInfo], 0x0
	mov word [edx+0x6], 0x0
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimEnsureGoalWeightParent_60:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp ebx, eax
	jz XAnimEnsureGoalWeightParent_110
	movzx eax, word [edx+0xa]
	movzx esi, ax
	test ax, ax
	jnz XAnimEnsureGoalWeightParent_60
	jmp XAnimEnsureGoalWeightParent_120
XAnimEnsureGoalWeightParent_40:
	mov edx, esi
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	mov [ebx+g_xAnimInfo+0x8], si
	jmp XAnimEnsureGoalWeightParent_130
XAnimEnsureGoalWeightParent_30:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call Com_Error
	xor esi, esi
	jmp XAnimEnsureGoalWeightParent_140
XAnimEnsureGoalWeightParent_100:
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jnz XAnimEnsureGoalWeightParent_150
	mov edi, [ebp-0x20]
	mov [edi+0x4], dx
	jmp XAnimEnsureGoalWeightParent_160
XAnimEnsureGoalWeightParent_90:
	mov edx, esi
	jmp XAnimEnsureGoalWeightParent_170
XAnimEnsureGoalWeightParent_80:
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp ebx, eax
	jbe XAnimEnsureGoalWeightParent_180
XAnimEnsureGoalWeightParent_200:
	mov [ebp-0x1c], ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimEnsureGoalWeightParent_190
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp ebx, eax
	ja XAnimEnsureGoalWeightParent_200
XAnimEnsureGoalWeightParent_190:
	movzx eax, word [ebp-0x1c]
	jmp XAnimEnsureGoalWeightParent_210
XAnimEnsureGoalWeightParent_70:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call Com_Error
	xor esi, esi
	jmp XAnimEnsureGoalWeightParent_160
XAnimEnsureGoalWeightParent_150:
	mov eax, [ebp-0x24]
	shl eax, 0x3
	shl dword [ebp-0x24], 0x6
	sub [ebp-0x24], eax
	mov eax, [ebp-0x24]
	mov [eax+g_xAnimInfo+0xc], dx
	jmp XAnimEnsureGoalWeightParent_160
	nop


;XAnimAllocInfoIndex(DObj_s*, unsigned int, int)
XAnimAllocInfoIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4fc
	mov esi, eax
	mov [ebp-0x4ec], edx
	mov [ebp-0x4f0], ecx
	mov eax, [eax]
	mov [ebp-0x4e0], eax
	test edx, edx
	jnz XAnimAllocInfoIndex_10
	mov dword [ebp-0x4e8], 0x0
	mov dword [ebp-0x4e4], 0x0
XAnimAllocInfoIndex_140:
	movzx eax, word [g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz XAnimAllocInfoIndex_20
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [g_xAnimInfo+0xa], ax
	lea ecx, [eax*8]
	shl eax, 0x6
	sub eax, ecx
	mov word [eax+g_xAnimInfo+0x8], 0x0
	lea esi, [edx+g_xAnimInfo]
	mov eax, [ebp-0x4f0]
	test eax, eax
	jz XAnimAllocInfoIndex_30
	mov eax, [ebp-0x4e8]
	shl eax, 0x3
	mov edx, [ebp-0x4e8]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx ecx, ax
	test ax, ax
	jnz XAnimAllocInfoIndex_40
XAnimAllocInfoIndex_80:
	xor ebx, ebx
	xor eax, eax
XAnimAllocInfoIndex_110:
	mov [esi+0x8], ax
	mov [esi+0xa], cx
	movzx edx, word [ebp-0x4ec]
	mov [esi+0x10], dx
	mov edx, [ebp-0x4e0]
	mov eax, [edx]
	mov word [esi+0xc], 0x0
	movzx edx, word [ebp-0x4e8]
	mov [esi+0xe], dx
	movzx edx, word [ebp-0x4e4]
	mov [esi+0x12], dx
	mov edx, [ebp-0x4ec]
	mov eax, [eax+edx*8+0x10]
	mov [esi+0x14], eax
	test ecx, ecx
	jz XAnimAllocInfoIndex_50
	mov edx, edi
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], di
	test ebx, ebx
	jnz XAnimAllocInfoIndex_60
XAnimAllocInfoIndex_120:
	mov esi, [ebp-0x4e8]
	test esi, esi
	jz XAnimAllocInfoIndex_70
	mov eax, [ebp-0x4e8]
	shl eax, 0x3
	shl dword [ebp-0x4e8], 0x6
	sub [ebp-0x4e8], eax
	mov ecx, [ebp-0x4e8]
	mov [ecx+g_xAnimInfo+0xc], dx
	mov eax, edi
	add esp, 0x4fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimAllocInfoIndex_30:
	mov eax, [ebp-0x4e8]
	shl eax, 0x3
	mov edx, [ebp-0x4e8]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimAllocInfoIndex_80
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x4ec], eax
	jbe XAnimAllocInfoIndex_80
XAnimAllocInfoIndex_100:
	mov ebx, ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimAllocInfoIndex_90
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x4ec], eax
	ja XAnimAllocInfoIndex_100
XAnimAllocInfoIndex_90:
	mov eax, ebx
	jmp XAnimAllocInfoIndex_110
XAnimAllocInfoIndex_50:
	mov edx, edi
	test ebx, ebx
	jz XAnimAllocInfoIndex_120
XAnimAllocInfoIndex_60:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	mov [ebx+g_xAnimInfo+0xa], dx
	mov eax, edi
	add esp, 0x4fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimAllocInfoIndex_20:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call Com_Error
	xor edi, edi
	mov eax, edi
	add esp, 0x4fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimAllocInfoIndex_10:
	mov eax, [eax]
	mov ecx, [ebp-0x4ec]
	lea ebx, [eax+ecx*8]
	lea eax, [ebx+0xc]
	mov [ebp-0x4dc], eax
	movzx edx, word [eax+0x2]
	mov eax, esi
	call XAnimEnsureGoalWeightParent
	mov [ebp-0x4e8], eax
	cmp word [ebx+0xc], 0x0
	jz XAnimAllocInfoIndex_130
	mov dword [ebp-0x4e4], 0x0
	jmp XAnimAllocInfoIndex_140
XAnimAllocInfoIndex_70:
	mov ecx, [ebp-0x4e0]
	mov [ecx+0x4], dx
	mov eax, edi
	add esp, 0x4fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimAllocInfoIndex_40:
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x4ec], eax
	jb XAnimAllocInfoIndex_80
XAnimAllocInfoIndex_150:
	mov ebx, ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimAllocInfoIndex_90
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x4ec], eax
	jae XAnimAllocInfoIndex_150
	mov eax, ebx
	jmp XAnimAllocInfoIndex_110
XAnimAllocInfoIndex_130:
	movzx ebx, byte [esi+0x9]
	movzx eax, bl
	mov [ebp-0x4d8], eax
	mov esi, [esi+0x60]
	mov [ebp-0x4d4], esi
	lea edi, [ebp-0x4b8]
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	test bl, bl
	jz XAnimAllocInfoIndex_160
	xor esi, esi
	mov dword [ebp-0x4d0], 0x0
	mov edx, [ebp-0x4d0]
XAnimAllocInfoIndex_210:
	mov ecx, [ebp-0x4d4]
	mov eax, [ecx+edx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x4cc], edx
	movzx eax, byte [eax+0x4]
	movzx ecx, al
	mov [ebp-0x4c8], ecx
	test al, al
	jz XAnimAllocInfoIndex_170
	xor ebx, ebx
XAnimAllocInfoIndex_200:
	mov eax, [ebp-0x4cc]
	movzx ecx, word [eax+ebx*2]
	movzx eax, cl
	lea edx, [edi+eax*4]
	cmp word [edx], 0x0
	jz XAnimAllocInfoIndex_180
XAnimAllocInfoIndex_190:
	add eax, 0x1
	and eax, 0xff
	lea edx, [edi+eax*4]
	cmp word [edx], 0x0
	jnz XAnimAllocInfoIndex_190
XAnimAllocInfoIndex_180:
	mov [edx+0x2], si
	mov [edx], cx
	add ebx, 0x1
	add esi, 0x1
	cmp [ebp-0x4c8], ebx
	ja XAnimAllocInfoIndex_200
XAnimAllocInfoIndex_170:
	add dword [ebp-0x4d0], 0x1
	mov edx, [ebp-0x4d0]
	cmp [ebp-0x4d8], edx
	ja XAnimAllocInfoIndex_210
XAnimAllocInfoIndex_160:
	mov ecx, [ebp-0x4dc]
	mov edx, [ecx+0x4]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx ecx, al
	mov [ebp-0x4c0], ecx
	mov edx, [edx+0x30]
	mov [ebp-0x4bc], edx
	test al, al
	jz XAnimAllocInfoIndex_220
	mov dword [ebp-0x4c4], 0x0
XAnimAllocInfoIndex_260:
	mov eax, [ebp-0x4c4]
	mov edx, [ebp-0x4bc]
	movzx esi, word [edx+eax*2]
	mov ecx, esi
	and ecx, 0xff
	lea ebx, [edi+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimAllocInfoIndex_230
XAnimAllocInfoIndex_250:
	cmp esi, edx
	jz XAnimAllocInfoIndex_240
	lea eax, [ecx+0x1]
	movzx ecx, al
	lea ebx, [edi+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jnz XAnimAllocInfoIndex_250
XAnimAllocInfoIndex_230:
	mov ecx, [ebp-0x4c4]
	mov byte [ebp+ecx-0x9b], 0x7f
XAnimAllocInfoIndex_270:
	add dword [ebp-0x4c4], 0x1
	mov eax, [ebp-0x4c4]
	cmp [ebp-0x4c0], eax
	ja XAnimAllocInfoIndex_260
XAnimAllocInfoIndex_220:
	movzx ecx, byte [ebp-0x4c0]
	mov [ebp-0x9c], cl
	mov dword [esp+0xc], 0xb
	mov eax, [ebp-0x4c0]
	add eax, 0x11
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xac]
	mov [esp], eax
	call SL_GetStringOfSize
	mov [ebp-0x4e4], eax
	jmp XAnimAllocInfoIndex_140
XAnimAllocInfoIndex_240:
	movzx ecx, word [ebx+0x2]
	mov edx, [ebp-0x4c4]
	mov [ebp+edx-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	jmp XAnimAllocInfoIndex_270


;XAnimCloneInitTime(XAnimTree_s*, unsigned int, unsigned int)
XAnimCloneInitTime:
XAnimCloneInitTime_80:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x28], eax
	mov [ebp-0x2c], edx
	mov [ebp-0x30], ecx
	mov eax, edx
	shl eax, 0x3
	shl edx, 0x6
	sub edx, eax
	lea esi, [edx+g_xAnimInfo]
	movzx eax, word [esi+0x12]
	movzx edx, ax
	mov [ebp-0x24], edx
	test ax, ax
	jnz XAnimCloneInitTime_10
XAnimCloneInitTime_180:
	movzx eax, word [esi+0x10]
	mov [ebp-0x20], eax
	movzx eax, word [g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz XAnimCloneInitTime_20
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [g_xAnimInfo+0xa], ax
	lea ecx, [eax*8]
	shl eax, 0x6
	sub eax, ecx
	mov word [eax+g_xAnimInfo+0x8], 0x0
	lea ebx, [edx+g_xAnimInfo]
	mov edx, [ebp-0x30]
	shl edx, 0x3
	mov eax, [ebp-0x30]
	shl eax, 0x6
	sub eax, edx
	movzx eax, word [eax+g_xAnimInfo+0xc]
	movzx ecx, ax
	test ax, ax
	jnz XAnimCloneInitTime_30
XAnimCloneInitTime_130:
	mov dword [ebp-0x1c], 0x0
	xor eax, eax
XAnimCloneInitTime_160:
	mov [ebx+0x8], ax
	mov [ebx+0xa], cx
	movzx edx, word [ebp-0x20]
	mov [ebx+0x10], dx
	mov edx, [ebp-0x28]
	mov eax, [edx]
	mov word [ebx+0xc], 0x0
	movzx edx, word [ebp-0x30]
	mov [ebx+0xe], dx
	movzx edx, word [ebp-0x24]
	mov [ebx+0x12], dx
	mov edx, [ebp-0x20]
	mov eax, [eax+edx*8+0x10]
	mov [ebx+0x14], eax
	test ecx, ecx
	jnz XAnimCloneInitTime_40
	mov edx, edi
	mov eax, [ebp-0x1c]
	test eax, eax
	jz XAnimCloneInitTime_50
XAnimCloneInitTime_100:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	shl dword [ebp-0x1c], 0x6
	sub [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov [eax+g_xAnimInfo+0xa], dx
XAnimCloneInitTime_120:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	lea ebx, [edx+g_xAnimInfo]
	mov eax, [esi+0x18]
	mov [ebx+0x18], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	mov eax, [esi+0x24]
	mov [ebx+0x24], eax
	mov eax, [esi+0x28]
	mov [ebx+0x28], eax
	mov eax, [esi+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [esi+0x30]
	mov [ebx+0x30], eax
	mov eax, [esi+0x34]
	mov [ebx+0x34], eax
	movzx eax, word [esi]
	mov [edx+g_xAnimInfo], ax
	movzx eax, word [esi+0x2]
	mov [ebx+0x2], ax
	movzx edx, word [esi+0x4]
	mov [ebx+0x4], dx
	movzx eax, word [esi+0x6]
	mov [ebx+0x6], ax
	test dx, dx
	jnz XAnimCloneInitTime_60
XAnimCloneInitTime_170:
	lea eax, [ebx+0x18]
	xor edx, edx
	mov [ebx+0x18], edx
	mov word [eax+0x8], 0x0
	mov [eax+0x4], edx
	mov word [eax+0xa], 0x0
	mov word [ebx+0x2], 0xffff
	mov [ebx+0x2c], edx
	mov byte [ebx+0x34], 0x1
	mov eax, [ebp-0x2c]
	shl eax, 0x3
	shl dword [ebp-0x2c], 0x6
	sub [ebp-0x2c], eax
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx ebx, ax
	test ax, ax
	jnz XAnimCloneInitTime_70
XAnimCloneInitTime_90:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCloneInitTime_70:
	mov ecx, edi
	mov edx, ebx
	mov eax, [ebp-0x28]
	call XAnimCloneInitTime_80
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimCloneInitTime_70
	jmp XAnimCloneInitTime_90
XAnimCloneInitTime_40:
	mov edx, edi
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], di
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz XAnimCloneInitTime_100
XAnimCloneInitTime_50:
	mov eax, [ebp-0x30]
	test eax, eax
	jnz XAnimCloneInitTime_110
	mov eax, [ebp-0x28]
	mov [eax+0x4], dx
	jmp XAnimCloneInitTime_120
XAnimCloneInitTime_30:
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	jbe XAnimCloneInitTime_130
XAnimCloneInitTime_150:
	mov [ebp-0x1c], ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimCloneInitTime_140
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	ja XAnimCloneInitTime_150
XAnimCloneInitTime_140:
	movzx eax, word [ebp-0x1c]
	jmp XAnimCloneInitTime_160
XAnimCloneInitTime_60:
	movzx eax, dx
	mov [esp], eax
	call SL_AddRefToString
	jmp XAnimCloneInitTime_170
XAnimCloneInitTime_20:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call Com_Error
	xor edi, edi
	jmp XAnimCloneInitTime_120
XAnimCloneInitTime_10:
	mov [esp], edx
	call SL_AddRefToString
	jmp XAnimCloneInitTime_180
XAnimCloneInitTime_110:
	mov eax, [ebp-0x30]
	shl eax, 0x3
	shl dword [ebp-0x30], 0x6
	sub [ebp-0x30], eax
	mov eax, [ebp-0x30]
	mov [eax+g_xAnimInfo+0xc], dx
	jmp XAnimCloneInitTime_120


;XAnimUpdateOldTime(DObj_s*, unsigned int, XAnimState*, float, unsigned char, unsigned char*)
XAnimUpdateOldTime:
XAnimUpdateOldTime_130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x3c], eax
	mov [ebp-0x40], edx
	mov [ebp-0x44], ecx
	movaps xmm4, xmm0
	movzx ecx, byte [ebp+0x8]
	shl edx, 0x3
	mov eax, [ebp-0x40]
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	mov [ebp-0x34], eax
	mov edi, eax
	add edi, 0x18
	test cl, cl
	jz XAnimUpdateOldTime_10
	movss xmm2, dword [edi+0xc]
	ucomiss xmm0, xmm2
	jae XAnimUpdateOldTime_10
	movss xmm1, dword [edi+0x14]
	movss xmm3, dword [edi+0x10]
	movaps xmm0, xmm3
	subss xmm0, xmm1
	mulss xmm0, xmm4
	divss xmm0, xmm2
	addss xmm0, xmm1
	movss [edi+0x14], xmm0
	ucomiss xmm0, [_float_0_00000100]
	jae XAnimUpdateOldTime_20
	jp XAnimUpdateOldTime_20
	mulss xmm3, [_float_0_00100000]
	movss [edi+0x14], xmm3
XAnimUpdateOldTime_20:
	subss xmm2, xmm4
	movss [edi+0xc], xmm2
	pxor xmm0, xmm0
XAnimUpdateOldTime_90:
	ucomiss xmm0, [edi+0x14]
	jp XAnimUpdateOldTime_30
	jnz XAnimUpdateOldTime_30
XAnimUpdateOldTime_80:
	mov byte [ebp-0x35], 0x0
	xor edx, edx
XAnimUpdateOldTime_200:
	mov byte [edi+0x1c], 0x0
	mov eax, [ebp-0x34]
	cmp word [eax+0x12], 0x0
	jz XAnimUpdateOldTime_40
	mov eax, [eax+0x14]
	ucomiss xmm0, [eax+0x2c]
	setnz al
	setp dl
	or al, dl
	mov [ebp-0x19], al
XAnimUpdateOldTime_110:
	cmp byte [ebp-0x35], 0x0
	jnz XAnimUpdateOldTime_50
XAnimUpdateOldTime_100:
	mov edx, [ebp-0x34]
	cmp word [edx+0x12], 0x0
	jz XAnimUpdateOldTime_60
XAnimUpdateOldTime_150:
	mov edx, [ebp-0x44]
	movss xmm0, dword [edx]
	ucomiss xmm0, [edi]
	jz XAnimUpdateOldTime_70
XAnimUpdateOldTime_210:
	movss [edi], xmm0
	mov edx, [ebp-0x44]
	movzx eax, word [edx+0x8]
	mov [edi+0x8], ax
	mov ecx, [ebp-0x34]
	mov word [ecx+0x2], 0xffff
	movzx edx, word [edi+0x8]
XAnimUpdateOldTime_180:
	mov eax, [edi]
	mov [edi+0x4], eax
	mov [edi+0xa], dx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimUpdateOldTime_10:
	mov eax, [edi+0x10]
	mov [edi+0x14], eax
	pxor xmm0, xmm0
	movss [edi+0xc], xmm0
	test cl, cl
	jz XAnimUpdateOldTime_80
	jmp XAnimUpdateOldTime_90
XAnimUpdateOldTime_50:
	cmp byte [ebp-0x19], 0x0
	jz XAnimUpdateOldTime_100
	mov eax, [ebp+0xc]
	mov byte [eax], 0x1
	movzx edx, word [edi+0x8]
	mov eax, [edi]
	mov [edi+0x4], eax
	mov [edi+0xa], dx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimUpdateOldTime_40:
	mov ecx, eax
	mov byte [ebp-0x19], 0x0
	test byte [eax+0x14], 0x4
	mov eax, [ebp-0x44]
	cmovnz eax, edi
	mov [ebp-0x44], eax
	movzx eax, word [ecx+0xc]
	movzx esi, ax
	test ax, ax
	jz XAnimUpdateOldTime_110
	movzx edx, dl
	mov [ebp-0x2c], edx
	jmp XAnimUpdateOldTime_120
XAnimUpdateOldTime_140:
	mov esi, [ebp-0x30]
XAnimUpdateOldTime_120:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edx, bx
	mov [ebp-0x30], edx
	lea ecx, [ebp-0x19]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	movaps xmm0, xmm4
	mov ecx, [ebp-0x44]
	mov edx, esi
	mov eax, [ebp-0x3c]
	movss [ebp-0x58], xmm4
	call XAnimUpdateOldTime_130
	test bx, bx
	movss xmm4, dword [ebp-0x58]
	jnz XAnimUpdateOldTime_140
	jmp XAnimUpdateOldTime_110
XAnimUpdateOldTime_60:
	test byte [edx+0x14], 0x4
	jz XAnimUpdateOldTime_150
	pxor xmm0, xmm0
	ucomiss xmm0, [edi]
	jnz XAnimUpdateOldTime_160
	jp XAnimUpdateOldTime_160
	cmp word [edi+0x8], 0x0
	jz XAnimUpdateOldTime_170
XAnimUpdateOldTime_160:
	movzx edx, word [edi+0x8]
	cmp dx, [edi+0xa]
	jnz XAnimUpdateOldTime_180
	mov dword [edi], 0x0
	mov word [edi+0x8], 0x0
	mov dword [edi+0x4], 0x0
	mov word [edi+0xa], 0x0
	mov ecx, [ebp-0x34]
	mov word [ecx+0x2], 0xffff
	mov eax, [ebp-0x40]
	shl eax, 0x3
	shl dword [ebp-0x40], 0x6
	sub [ebp-0x40], eax
	mov edx, [ebp-0x40]
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx ebx, ax
	test ax, ax
	jnz XAnimUpdateOldTime_190
XAnimUpdateOldTime_220:
	movzx edx, word [edi+0x8]
	jmp XAnimUpdateOldTime_180
XAnimUpdateOldTime_30:
	mov byte [ebp-0x35], 0x1
	mov edx, 0x1
	jmp XAnimUpdateOldTime_200
XAnimUpdateOldTime_70:
	jp XAnimUpdateOldTime_210
	movzx edx, word [edi+0x8]
	mov ecx, [ebp-0x44]
	cmp dx, [ecx+0x8]
	jnz XAnimUpdateOldTime_210
	jmp XAnimUpdateOldTime_180
XAnimUpdateOldTime_190:
	mov eax, ebx
	call XAnimResetTime
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jz XAnimUpdateOldTime_220
	mov eax, ebx
	call XAnimResetTime
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimUpdateOldTime_190
	jmp XAnimUpdateOldTime_220
XAnimUpdateOldTime_170:
	xor edx, edx
	jmp XAnimUpdateOldTime_180
	nop


;XAnimRestart(XAnimTree_s*, unsigned int, float)
XAnimRestart:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x28], eax
	mov edi, edx
	movss [ebp-0x2c], xmm0
	test edx, edx
	jz XAnimRestart_10
	mov ecx, [eax]
	mov esi, edx
XAnimRestart_40:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	lea ebx, [edx+g_xAnimInfo]
	movzx eax, word [ebx+0x10]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jz XAnimRestart_20
	test byte [edx+0x4], 0x4
	jnz XAnimRestart_30
XAnimRestart_20:
	movzx eax, word [ebx+0xe]
	movzx esi, ax
	test ax, ax
	jnz XAnimRestart_40
XAnimRestart_10:
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	cmp word [esi+0x12], 0x0
	jz XAnimRestart_50
	lea ebx, [esi+0x18]
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x18]
	jnz XAnimRestart_60
	jp XAnimRestart_60
	cmp word [ebx+0x8], 0x0
	jz XAnimRestart_50
XAnimRestart_60:
	movzx eax, word [ebx+0x8]
	cmp ax, [ebx+0xa]
	jz XAnimRestart_70
XAnimRestart_50:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimRestart_70:
	movss xmm1, dword [ebp-0x2c]
	ucomiss xmm1, xmm0
	jp XAnimRestart_80
	jnz XAnimRestart_80
XAnimRestart_110:
	mov dword [ebx], 0x0
	mov word [ebx+0x8], 0x0
	mov dword [ebx+0x4], 0x0
	mov word [ebx+0xa], 0x0
	mov word [esi+0x2], 0xffff
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx ebx, ax
	test ax, ax
	jz XAnimRestart_50
XAnimRestart_90:
	mov eax, ebx
	call XAnimResetTime
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimRestart_90
	jmp XAnimRestart_50
XAnimRestart_80:
	ucomiss xmm0, [ebx+0x14]
	jp XAnimRestart_100
	jz XAnimRestart_110
XAnimRestart_100:
	movzx ecx, word [esi+0xe]
	mov edx, edi
	mov eax, [ebp-0x28]
	call XAnimCloneInitTime
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebp-0x2c]
	movss [ebx+0xc], xmm0
	mov dword [ebx+0x10], 0x0
	movzx eax, word [esi+0x4]
	test ax, ax
	jnz XAnimRestart_120
XAnimRestart_260:
	mov word [esi+0x2], 0xffff
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xc]
	movzx edx, ax
	test ax, ax
	jnz XAnimRestart_130
	mov edi, [ebp-0x1c]
	jmp XAnimRestart_50
XAnimRestart_30:
	lea eax, [ebx+0x18]
	mov [ebp-0x24], eax
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x18]
	jnz XAnimRestart_140
	jp XAnimRestart_140
	cmp word [eax+0x8], 0x0
	jz XAnimRestart_150
	mov edx, [ebp-0x24]
XAnimRestart_200:
	movzx eax, word [edx+0x8]
	cmp ax, [edx+0xa]
	jz XAnimRestart_160
XAnimRestart_150:
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx edi, word [edi+g_xAnimInfo+0x10]
	mov [ebp-0x20], edi
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x4]
	test ax, ax
	jz XAnimRestart_170
	movzx edi, ax
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	jz XAnimRestart_50
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimRestart_170
	xor edx, edx
XAnimRestart_190:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimRestart_180
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x28]
	call XAnimGetInfoIndex_r
	mov edi, eax
	test eax, eax
	jnz XAnimRestart_50
	mov edx, esi
XAnimRestart_180:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimRestart_190
XAnimRestart_170:
	xor edi, edi
	jmp XAnimRestart_50
XAnimRestart_140:
	mov edx, eax
	jmp XAnimRestart_200
XAnimRestart_130:
	xor ecx, ecx
XAnimRestart_210:
	lea eax, [edx*8]
	mov ebx, edx
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0x10]
	cmp ecx, eax
	setnz cl
	movzx ecx, cl
	movss xmm0, dword [ebp-0x2c]
	mov eax, [ebp-0x28]
	call XAnimClearTreeGoalWeightsInternal
	movzx ecx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimRestart_210
	mov edi, [ebp-0x1c]
	jmp XAnimRestart_50
XAnimRestart_160:
	movss xmm1, dword [ebp-0x2c]
	ucomiss xmm1, xmm0
	jp XAnimRestart_220
	jz XAnimRestart_230
XAnimRestart_220:
	ucomiss xmm0, [edx+0x14]
	jp XAnimRestart_240
	jnz XAnimRestart_240
XAnimRestart_230:
	mov eax, [ebp-0x24]
	mov dword [eax], 0x0
	mov word [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	mov word [eax+0xa], 0x0
	mov word [ebx+0x2], 0xffff
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xc]
	movzx ebx, ax
	test ax, ax
	jz XAnimRestart_150
XAnimRestart_250:
	mov eax, ebx
	call XAnimResetTime
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimRestart_250
	jmp XAnimRestart_150
XAnimRestart_120:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [esi+0x4], 0x0
	jmp XAnimRestart_260
XAnimRestart_240:
	movzx ecx, word [ebx+0xe]
	mov edx, esi
	mov eax, [ebp-0x28]
	call XAnimCloneInitTime
	movss xmm0, dword [ebp-0x2c]
	mov eax, [ebp-0x24]
	movss [eax+0xc], xmm0
	mov dword [eax+0x10], 0x0
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimRestart_270
XAnimRestart_290:
	mov word [ebx+0x2], 0xffff
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimRestart_150
	xor ecx, ecx
XAnimRestart_280:
	lea eax, [edx*8]
	mov ebx, edx
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0x10]
	cmp ecx, eax
	setnz cl
	movzx ecx, cl
	movss xmm0, dword [ebp-0x2c]
	mov eax, [ebp-0x28]
	call XAnimClearTreeGoalWeightsInternal
	movzx ecx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimRestart_280
	jmp XAnimRestart_150
XAnimRestart_270:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	jmp XAnimRestart_290


;XAnimCloneAnimTree_r(XAnimTree_s const*, XAnimTree_s*, unsigned int, unsigned int)
XAnimCloneAnimTree_r:
XAnimCloneAnimTree_r_80:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x28], eax
	mov [ebp-0x2c], edx
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	lea ebx, [ecx+g_xAnimInfo]
	movzx eax, word [ebx+0x12]
	movzx edx, ax
	mov [ebp-0x24], edx
	test ax, ax
	jnz XAnimCloneAnimTree_r_10
XAnimCloneAnimTree_r_180:
	movzx eax, word [ebx+0x10]
	mov [ebp-0x20], eax
	movzx eax, word [g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz XAnimCloneAnimTree_r_20
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xa]
	mov [g_xAnimInfo+0xa], ax
	lea ecx, [eax*8]
	shl eax, 0x6
	sub eax, ecx
	mov word [eax+g_xAnimInfo+0x8], 0x0
	lea esi, [edx+g_xAnimInfo]
	mov edx, [ebp+0x8]
	shl edx, 0x3
	mov eax, [ebp+0x8]
	shl eax, 0x6
	sub eax, edx
	movzx eax, word [eax+g_xAnimInfo+0xc]
	movzx ecx, ax
	test ax, ax
	jnz XAnimCloneAnimTree_r_30
XAnimCloneAnimTree_r_130:
	mov dword [ebp-0x1c], 0x0
	xor eax, eax
XAnimCloneAnimTree_r_160:
	mov [esi+0x8], ax
	mov [esi+0xa], cx
	movzx edx, word [ebp-0x20]
	mov [esi+0x10], dx
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov word [esi+0xc], 0x0
	movzx edx, word [ebp+0x8]
	mov [esi+0xe], dx
	movzx edx, word [ebp-0x24]
	mov [esi+0x12], dx
	mov edx, [ebp-0x20]
	mov eax, [eax+edx*8+0x10]
	mov [esi+0x14], eax
	test ecx, ecx
	jnz XAnimCloneAnimTree_r_40
	mov edx, edi
	mov eax, [ebp-0x1c]
	test eax, eax
	jz XAnimCloneAnimTree_r_50
XAnimCloneAnimTree_r_100:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	shl dword [ebp-0x1c], 0x6
	sub [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov [eax+g_xAnimInfo+0xa], dx
XAnimCloneAnimTree_r_120:
	lea eax, [edi*8]
	mov ecx, edi
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	mov eax, [ebx+0x18]
	mov [edx+0x18], eax
	mov eax, [ebx+0x1c]
	mov [edx+0x1c], eax
	mov eax, [ebx+0x20]
	mov [edx+0x20], eax
	mov eax, [ebx+0x24]
	mov [edx+0x24], eax
	mov eax, [ebx+0x28]
	mov [edx+0x28], eax
	mov eax, [ebx+0x2c]
	mov [edx+0x2c], eax
	mov eax, [ebx+0x30]
	mov [edx+0x30], eax
	mov eax, [ebx+0x34]
	mov [edx+0x34], eax
	movzx eax, word [ebx]
	mov [ecx+g_xAnimInfo], ax
	movzx eax, word [ebx+0x2]
	mov [edx+0x2], ax
	movzx ecx, word [ebx+0x4]
	mov [edx+0x4], cx
	movzx eax, word [ebx+0x6]
	mov [edx+0x6], ax
	test cx, cx
	jnz XAnimCloneAnimTree_r_60
XAnimCloneAnimTree_r_170:
	movzx eax, word [ebx+0xc]
	movzx ebx, ax
	test ax, ax
	jnz XAnimCloneAnimTree_r_70
XAnimCloneAnimTree_r_90:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCloneAnimTree_r_70:
	mov [esp], edi
	mov ecx, ebx
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	call XAnimCloneAnimTree_r_80
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimCloneAnimTree_r_70
	jmp XAnimCloneAnimTree_r_90
XAnimCloneAnimTree_r_40:
	mov edx, edi
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], di
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz XAnimCloneAnimTree_r_100
XAnimCloneAnimTree_r_50:
	mov eax, [ebp+0x8]
	test eax, eax
	jnz XAnimCloneAnimTree_r_110
	mov eax, [ebp-0x2c]
	mov [eax+0x4], dx
	jmp XAnimCloneAnimTree_r_120
XAnimCloneAnimTree_r_30:
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	jb XAnimCloneAnimTree_r_130
XAnimCloneAnimTree_r_150:
	mov [ebp-0x1c], ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimCloneAnimTree_r_140
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	jae XAnimCloneAnimTree_r_150
XAnimCloneAnimTree_r_140:
	movzx eax, word [ebp-0x1c]
	jmp XAnimCloneAnimTree_r_160
XAnimCloneAnimTree_r_60:
	movzx eax, cx
	mov [esp], eax
	call SL_AddRefToString
	jmp XAnimCloneAnimTree_r_170
XAnimCloneAnimTree_r_20:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call Com_Error
	xor edi, edi
	jmp XAnimCloneAnimTree_r_120
XAnimCloneAnimTree_r_10:
	mov [esp], edx
	call SL_AddRefToString
	jmp XAnimCloneAnimTree_r_180
XAnimCloneAnimTree_r_110:
	mov eax, [ebp+0x8]
	shl eax, 0x3
	shl dword [ebp+0x8], 0x6
	sub [ebp+0x8], eax
	mov eax, [ebp+0x8]
	mov [eax+g_xAnimInfo+0xc], dx
	jmp XAnimCloneAnimTree_r_120


;XAnimProcessClientNotify(XAnimInfo*, float)
XAnimProcessClientNotify:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	movaps xmm4, xmm0
	lea edx, [eax+0x18]
	mov [ebp-0x54], edx
	movzx ecx, word [eax+0x6]
	test cx, cx
	jz XAnimProcessClientNotify_10
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [_float_1_00000000]
	ucomiss xmm1, xmm5
	jnz XAnimProcessClientNotify_20
	jp XAnimProcessClientNotify_20
	movzx ecx, cx
	mov [ebp-0x50], ecx
	ucomiss xmm1, xmm5
	jz XAnimProcessClientNotify_30
XAnimProcessClientNotify_250:
	mov ebx, [ebp-0x54]
	movss xmm0, dword [ebx]
	ucomiss xmm1, xmm0
	jbe XAnimProcessClientNotify_40
	ucomiss xmm0, xmm5
	jbe XAnimProcessClientNotify_50
	movaps xmm0, xmm5
	subss xmm0, [ebx+0x4]
	addss xmm0, xmm5
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_60
XAnimProcessClientNotify_20:
	cmp word [eax+0x12], 0x0
	jnz XAnimProcessClientNotify_70
	mov eax, [ebp-0x54]
	movss xmm2, dword [eax]
	ucomiss xmm1, xmm2
	ja XAnimProcessClientNotify_80
	ucomiss xmm2, xmm5
	jnz XAnimProcessClientNotify_10
	jp XAnimProcessClientNotify_10
XAnimProcessClientNotify_80:
	movzx ecx, cx
	mov [ebp-0x4c], ecx
	ucomiss xmm1, xmm5
	jnz XAnimProcessClientNotify_90
	jp XAnimProcessClientNotify_90
XAnimProcessClientNotify_420:
	movaps xmm0, xmm5
XAnimProcessClientNotify_430:
	mov edi, [g_endNotetrackName]
	mov esi, [g_notifyListSize]
	sub esi, 0x1
	js XAnimProcessClientNotify_100
	lea eax, [esi+esi*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae XAnimProcessClientNotify_100
	mov ecx, esi
	xor ebx, ebx
XAnimProcessClientNotify_120:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp esi, ebx
	jz XAnimProcessClientNotify_110
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add ebx, 0x1
	ucomiss xmm0, [edx+0x8]
	jb XAnimProcessClientNotify_120
XAnimProcessClientNotify_110:
	mov esi, ecx
XAnimProcessClientNotify_100:
	lea ebx, [esi+esi*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov [esp], edi
	movss [ebp-0x88], xmm0
	call SL_ConvertToString
	mov [ebx+g_notifyList], eax
	movss xmm0, dword [ebp-0x88]
	movss [esi+0x8], xmm0
	mov edx, [ebp-0x4c]
	mov [esi+0x4], edx
	add dword [g_notifyListSize], 0x1
XAnimProcessClientNotify_10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimProcessClientNotify_70:
	mov eax, [eax+0x14]
	mov [ebp-0x6c], eax
	mov esi, [eax+0x50]
	movzx ebx, byte [eax+0x1c]
	test ebx, ebx
	jg XAnimProcessClientNotify_130
	xor eax, eax
XAnimProcessClientNotify_390:
	sub eax, esi
	shr eax, 0x3
	mov [ebp-0x68], ax
	movzx eax, ax
	lea edi, [esi+eax*8]
	mov ebx, [ebp-0x54]
	movss xmm2, dword [ebx]
	ucomiss xmm1, xmm2
	jbe XAnimProcessClientNotify_140
	movss xmm3, dword [edi+0x4]
	ucomiss xmm2, xmm3
	ja XAnimProcessClientNotify_150
	ucomiss xmm1, xmm3
	ja XAnimProcessClientNotify_10
	movzx ecx, cx
	mov [ebp-0x28], ecx
	mov ecx, [g_notifyListSize]
	ucomiss xmm1, xmm5
	jnz XAnimProcessClientNotify_160
XAnimProcessClientNotify_210:
	jp XAnimProcessClientNotify_160
XAnimProcessClientNotify_650:
	movaps xmm0, xmm5
XAnimProcessClientNotify_240:
	movzx eax, word [edi]
	mov [ebp-0x44], eax
	mov ebx, ecx
	sub ebx, 0x1
	js XAnimProcessClientNotify_170
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae XAnimProcessClientNotify_170
	mov ecx, ebx
	xor esi, esi
XAnimProcessClientNotify_190:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz XAnimProcessClientNotify_180
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb XAnimProcessClientNotify_190
XAnimProcessClientNotify_180:
	mov ebx, ecx
XAnimProcessClientNotify_170:
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov edx, [ebp-0x44]
	mov [esp], edx
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	call SL_ConvertToString
	mov [ebx+g_notifyList], eax
	movss xmm0, dword [ebp-0x88]
	movss [esi+0x8], xmm0
	mov ebx, [ebp-0x28]
	mov [esi+0x4], ebx
	mov ecx, [g_notifyListSize]
	add ecx, 0x1
	mov [g_notifyListSize], ecx
	add edi, 0x8
	add word [ebp-0x68], 0x1
	movzx edx, word [ebp-0x68]
	mov ebx, [ebp-0x6c]
	movzx eax, byte [ebx+0x1c]
	cmp edx, eax
	movss xmm4, dword [ebp-0x98]
	jae XAnimProcessClientNotify_200
	mov ebx, [ebp-0x54]
	movss xmm1, dword [ebx+0x4]
	movss xmm5, dword [_float_1_00000000]
	movss xmm3, dword [edi+0x4]
	ucomiss xmm1, xmm5
	jz XAnimProcessClientNotify_210
XAnimProcessClientNotify_160:
	mov eax, [ebp-0x54]
	movss xmm0, dword [eax]
	ucomiss xmm1, xmm0
	jbe XAnimProcessClientNotify_220
	ucomiss xmm0, xmm3
	jbe XAnimProcessClientNotify_230
	movaps xmm0, xmm3
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_240
XAnimProcessClientNotify_30:
	jp XAnimProcessClientNotify_250
XAnimProcessClientNotify_300:
	movaps xmm0, xmm5
XAnimProcessClientNotify_60:
	mov edi, [g_endNotetrackName]
	mov esi, [g_notifyListSize]
	sub esi, 0x1
	js XAnimProcessClientNotify_260
	lea eax, [esi+esi*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae XAnimProcessClientNotify_260
	mov ecx, esi
	xor ebx, ebx
XAnimProcessClientNotify_280:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp esi, ebx
	jz XAnimProcessClientNotify_270
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add ebx, 0x1
	ucomiss xmm0, [edx+0x8]
	jb XAnimProcessClientNotify_280
XAnimProcessClientNotify_270:
	lea ebx, [ecx+ecx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov [esp], edi
	movss [ebp-0x88], xmm0
	call SL_ConvertToString
	mov [ebx+g_notifyList], eax
	movss xmm0, dword [ebp-0x88]
	movss [esi+0x8], xmm0
	mov ebx, [ebp-0x50]
	mov [esi+0x4], ebx
	add dword [g_notifyListSize], 0x1
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimProcessClientNotify_260:
	mov ecx, esi
	jmp XAnimProcessClientNotify_270
XAnimProcessClientNotify_40:
	ucomiss xmm0, xmm5
	jbe XAnimProcessClientNotify_290
XAnimProcessClientNotify_830:
	ucomiss xmm5, xmm1
	jb XAnimProcessClientNotify_300
	movaps xmm0, xmm5
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_60
XAnimProcessClientNotify_140:
	ucomiss xmm2, xmm5
	jz XAnimProcessClientNotify_310
XAnimProcessClientNotify_440:
	movss xmm3, dword [edi+0x4]
	ucomiss xmm3, xmm2
	jae XAnimProcessClientNotify_10
	ucomiss xmm1, xmm3
	ja XAnimProcessClientNotify_10
	movzx ecx, cx
	mov [ebp-0x34], ecx
	lea edx, [edi+0xc]
	mov [ebp-0x1c], edx
	mov ecx, [g_notifyListSize]
XAnimProcessClientNotify_360:
	ucomiss xmm1, xmm5
	jnz XAnimProcessClientNotify_320
	jp XAnimProcessClientNotify_320
XAnimProcessClientNotify_720:
	movaps xmm0, xmm5
XAnimProcessClientNotify_700:
	movzx eax, word [edi]
	mov [ebp-0x38], eax
	mov ebx, ecx
	sub ebx, 0x1
	js XAnimProcessClientNotify_330
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae XAnimProcessClientNotify_330
	mov ecx, ebx
	xor esi, esi
XAnimProcessClientNotify_350:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz XAnimProcessClientNotify_340
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb XAnimProcessClientNotify_350
XAnimProcessClientNotify_340:
	mov ebx, ecx
XAnimProcessClientNotify_330:
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov edx, [ebp-0x38]
	mov [esp], edx
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	call SL_ConvertToString
	mov [ebx+g_notifyList], eax
	movss xmm0, dword [ebp-0x88]
	movss [esi+0x8], xmm0
	mov ebx, [ebp-0x34]
	mov [esi+0x4], ebx
	mov eax, [g_notifyListSize]
	add eax, 0x1
	mov ecx, eax
	mov [g_notifyListSize], eax
	add edi, 0x8
	add word [ebp-0x68], 0x1
	movzx edx, word [ebp-0x68]
	mov ebx, [ebp-0x6c]
	movzx eax, byte [ebx+0x1c]
	cmp edx, eax
	movss xmm4, dword [ebp-0x98]
	jae XAnimProcessClientNotify_10
	mov eax, [ebp-0x1c]
	movss xmm0, dword [eax]
	add eax, 0x8
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x54]
	movss xmm2, dword [edx]
	ucomiss xmm2, xmm0
	jbe XAnimProcessClientNotify_10
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [_float_1_00000000]
	movss xmm3, dword [edi+0x4]
	jmp XAnimProcessClientNotify_360
XAnimProcessClientNotify_130:
	mov eax, esi
	movss xmm2, dword [_float_2_00000000]
	xor edx, edx
	xor edi, edi
XAnimProcessClientNotify_380:
	movss xmm0, dword [eax+0x4]
	ucomiss xmm1, xmm0
	ja XAnimProcessClientNotify_370
	ucomiss xmm2, xmm0
	jbe XAnimProcessClientNotify_370
	mov edi, eax
	movaps xmm2, xmm0
XAnimProcessClientNotify_370:
	add edx, 0x1
	add eax, 0x8
	cmp ebx, edx
	jnz XAnimProcessClientNotify_380
	mov eax, edi
	jmp XAnimProcessClientNotify_390
XAnimProcessClientNotify_90:
	ucomiss xmm1, xmm2
	ja XAnimProcessClientNotify_400
	ucomiss xmm2, xmm5
	jbe XAnimProcessClientNotify_410
XAnimProcessClientNotify_840:
	ucomiss xmm5, xmm1
	jb XAnimProcessClientNotify_420
	movaps xmm0, xmm5
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_430
XAnimProcessClientNotify_310:
	jp XAnimProcessClientNotify_440
	ucomiss xmm1, [edi+0x4]
	ja XAnimProcessClientNotify_10
	movzx ecx, cx
	mov [ebp-0x30], ecx
	mov ecx, [g_notifyListSize]
	movss xmm2, dword [edi+0x4]
	ucomiss xmm1, xmm5
	jnz XAnimProcessClientNotify_450
XAnimProcessClientNotify_490:
	jp XAnimProcessClientNotify_450
XAnimProcessClientNotify_670:
	movaps xmm0, xmm5
XAnimProcessClientNotify_520:
	movzx ebx, word [edi]
	mov [ebp-0x3c], ebx
	mov ebx, ecx
	sub ebx, 0x1
	js XAnimProcessClientNotify_460
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae XAnimProcessClientNotify_460
	mov ecx, ebx
	xor esi, esi
XAnimProcessClientNotify_480:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz XAnimProcessClientNotify_470
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb XAnimProcessClientNotify_480
XAnimProcessClientNotify_470:
	mov ebx, ecx
XAnimProcessClientNotify_460:
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov eax, [ebp-0x3c]
	mov [esp], eax
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	call SL_ConvertToString
	mov [ebx+g_notifyList], eax
	movss xmm0, dword [ebp-0x88]
	movss [esi+0x8], xmm0
	mov edx, [ebp-0x30]
	mov [esi+0x4], edx
	mov ecx, [g_notifyListSize]
	add ecx, 0x1
	mov [g_notifyListSize], ecx
	add edi, 0x8
	add word [ebp-0x68], 0x1
	movzx edx, word [ebp-0x68]
	mov ebx, [ebp-0x6c]
	movzx eax, byte [ebx+0x1c]
	cmp edx, eax
	movss xmm4, dword [ebp-0x98]
	jae XAnimProcessClientNotify_10
	mov eax, [ebp-0x54]
	movss xmm1, dword [eax+0x4]
	movss xmm5, dword [_float_1_00000000]
	movss xmm2, dword [edi+0x4]
	ucomiss xmm1, xmm5
	jz XAnimProcessClientNotify_490
XAnimProcessClientNotify_450:
	mov ebx, [ebp-0x54]
	movss xmm0, dword [ebx]
	ucomiss xmm1, xmm0
	jbe XAnimProcessClientNotify_500
	ucomiss xmm0, xmm2
	jbe XAnimProcessClientNotify_510
	movaps xmm0, xmm2
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_520
XAnimProcessClientNotify_150:
	movzx ecx, cx
	mov [ebp-0x2c], ecx
	lea eax, [edi+0xc]
	mov [ebp-0x24], eax
	mov ecx, [g_notifyListSize]
	ucomiss xmm1, xmm5
	jnz XAnimProcessClientNotify_530
XAnimProcessClientNotify_570:
	jp XAnimProcessClientNotify_530
XAnimProcessClientNotify_630:
	movaps xmm0, xmm5
XAnimProcessClientNotify_600:
	movzx ebx, word [edi]
	mov [ebp-0x48], ebx
	mov ebx, ecx
	sub ebx, 0x1
	js XAnimProcessClientNotify_540
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae XAnimProcessClientNotify_540
	mov ecx, ebx
	xor esi, esi
XAnimProcessClientNotify_560:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz XAnimProcessClientNotify_550
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb XAnimProcessClientNotify_560
XAnimProcessClientNotify_550:
	lea ebx, [ecx+ecx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov eax, [ebp-0x48]
	mov [esp], eax
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	call SL_ConvertToString
	mov [ebx+g_notifyList], eax
	movss xmm0, dword [ebp-0x88]
	movss [esi+0x8], xmm0
	mov edx, [ebp-0x2c]
	mov [esi+0x4], edx
	mov ecx, [g_notifyListSize]
	add ecx, 0x1
	mov [g_notifyListSize], ecx
	add edi, 0x8
	add word [ebp-0x68], 0x1
	movzx edx, word [ebp-0x68]
	mov ebx, [ebp-0x6c]
	movzx eax, byte [ebx+0x1c]
	cmp edx, eax
	movss xmm4, dword [ebp-0x98]
	jae XAnimProcessClientNotify_10
	mov eax, [ebp-0x24]
	movss xmm0, dword [eax]
	add eax, 0x8
	mov [ebp-0x24], eax
	mov edx, [ebp-0x54]
	movss xmm2, dword [edx]
	ucomiss xmm2, xmm0
	jbe XAnimProcessClientNotify_10
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [_float_1_00000000]
	movss xmm3, dword [edi+0x4]
	ucomiss xmm1, xmm5
	jz XAnimProcessClientNotify_570
XAnimProcessClientNotify_530:
	ucomiss xmm1, xmm2
	jbe XAnimProcessClientNotify_580
	ucomiss xmm2, xmm3
	jbe XAnimProcessClientNotify_590
	movaps xmm0, xmm3
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_600
XAnimProcessClientNotify_400:
	ucomiss xmm2, xmm5
	jbe XAnimProcessClientNotify_610
	movaps xmm0, xmm5
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, xmm5
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_430
XAnimProcessClientNotify_540:
	mov ecx, ebx
	jmp XAnimProcessClientNotify_550
XAnimProcessClientNotify_580:
	ucomiss xmm2, xmm3
	ja XAnimProcessClientNotify_620
	ucomiss xmm2, xmm5
	jnz XAnimProcessClientNotify_630
	jp XAnimProcessClientNotify_630
XAnimProcessClientNotify_620:
	ucomiss xmm3, xmm1
	jb XAnimProcessClientNotify_630
	movaps xmm0, xmm3
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_600
XAnimProcessClientNotify_220:
	ucomiss xmm0, xmm3
	ja XAnimProcessClientNotify_640
	ucomiss xmm0, xmm5
	jnz XAnimProcessClientNotify_650
	jp XAnimProcessClientNotify_650
XAnimProcessClientNotify_640:
	ucomiss xmm3, xmm1
	jb XAnimProcessClientNotify_650
	movaps xmm0, xmm3
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_240
XAnimProcessClientNotify_500:
	ucomiss xmm0, xmm2
	ja XAnimProcessClientNotify_660
	ucomiss xmm0, xmm5
	jnz XAnimProcessClientNotify_670
	jp XAnimProcessClientNotify_670
XAnimProcessClientNotify_660:
	ucomiss xmm2, xmm1
	jb XAnimProcessClientNotify_670
	movaps xmm0, xmm2
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_520
XAnimProcessClientNotify_320:
	ucomiss xmm1, xmm2
	jbe XAnimProcessClientNotify_680
	ucomiss xmm2, xmm3
	jbe XAnimProcessClientNotify_690
	movaps xmm0, xmm3
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_700
XAnimProcessClientNotify_590:
	ucomiss xmm3, xmm1
	jb XAnimProcessClientNotify_630
	movaps xmm0, xmm3
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_600
XAnimProcessClientNotify_230:
	ucomiss xmm3, xmm1
	jb XAnimProcessClientNotify_650
	movaps xmm0, xmm3
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_240
XAnimProcessClientNotify_510:
	ucomiss xmm2, xmm1
	jb XAnimProcessClientNotify_670
	movaps xmm0, xmm2
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_520
XAnimProcessClientNotify_680:
	ucomiss xmm2, xmm3
	ja XAnimProcessClientNotify_710
	ucomiss xmm2, xmm5
	jnz XAnimProcessClientNotify_720
	jp XAnimProcessClientNotify_720
XAnimProcessClientNotify_710:
	ucomiss xmm3, xmm1
	jb XAnimProcessClientNotify_720
	movaps xmm0, xmm3
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_700
XAnimProcessClientNotify_200:
	mov edi, [ebx+0x50]
	movss xmm1, dword [edi+0x4]
	mov eax, [ebp-0x54]
	movss xmm2, dword [eax]
	ucomiss xmm2, xmm1
	jbe XAnimProcessClientNotify_10
	lea edx, [edi+0x14]
	mov [ebp-0x20], edx
	movss xmm5, dword [_float_1_00000000]
XAnimProcessClientNotify_770:
	mov ebx, [ebp-0x54]
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, xmm5
	jnz XAnimProcessClientNotify_730
	jp XAnimProcessClientNotify_730
XAnimProcessClientNotify_820:
	movaps xmm0, xmm5
XAnimProcessClientNotify_800:
	movzx eax, word [edi]
	mov [ebp-0x40], eax
	mov ebx, ecx
	sub ebx, 0x1
	js XAnimProcessClientNotify_740
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae XAnimProcessClientNotify_740
	mov ecx, ebx
	xor esi, esi
XAnimProcessClientNotify_760:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz XAnimProcessClientNotify_750
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb XAnimProcessClientNotify_760
XAnimProcessClientNotify_750:
	mov ebx, ecx
XAnimProcessClientNotify_740:
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov edx, [ebp-0x40]
	mov [esp], edx
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	movss [ebp-0xa8], xmm5
	call SL_ConvertToString
	mov [ebx+g_notifyList], eax
	movss xmm0, dword [ebp-0x88]
	movss [esi+0x8], xmm0
	mov ebx, [ebp-0x28]
	mov [esi+0x4], ebx
	mov ecx, [g_notifyListSize]
	add ecx, 0x1
	mov [g_notifyListSize], ecx
	add edi, 0x10
	mov eax, [ebp-0x20]
	movss xmm1, dword [eax]
	add eax, 0x10
	mov [ebp-0x20], eax
	mov edx, [ebp-0x54]
	movss xmm2, dword [edx]
	ucomiss xmm2, xmm1
	movss xmm4, dword [ebp-0x98]
	movss xmm5, dword [ebp-0xa8]
	ja XAnimProcessClientNotify_770
	jmp XAnimProcessClientNotify_10
XAnimProcessClientNotify_730:
	ucomiss xmm0, xmm2
	jbe XAnimProcessClientNotify_780
	ucomiss xmm2, xmm1
	jbe XAnimProcessClientNotify_790
	movaps xmm0, xmm1
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_800
XAnimProcessClientNotify_780:
	ucomiss xmm2, xmm1
	ja XAnimProcessClientNotify_810
	ucomiss xmm2, xmm5
	jnz XAnimProcessClientNotify_820
	jp XAnimProcessClientNotify_820
XAnimProcessClientNotify_810:
	ucomiss xmm1, xmm0
	jb XAnimProcessClientNotify_820
	movaps xmm0, xmm1
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_800
XAnimProcessClientNotify_790:
	ucomiss xmm1, xmm0
	jb XAnimProcessClientNotify_820
	movaps xmm0, xmm1
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_800
XAnimProcessClientNotify_290:
	ucomiss xmm0, xmm5
	jnz XAnimProcessClientNotify_300
	jnp XAnimProcessClientNotify_830
	jmp XAnimProcessClientNotify_300
XAnimProcessClientNotify_50:
	ucomiss xmm5, xmm1
	jb XAnimProcessClientNotify_300
	movaps xmm0, xmm5
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_60
XAnimProcessClientNotify_690:
	ucomiss xmm3, xmm1
	jb XAnimProcessClientNotify_720
	movaps xmm0, xmm3
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_700
XAnimProcessClientNotify_610:
	ucomiss xmm5, xmm1
	jb XAnimProcessClientNotify_420
	movaps xmm0, xmm5
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp XAnimProcessClientNotify_430
XAnimProcessClientNotify_410:
	ucomiss xmm2, xmm5
	jnz XAnimProcessClientNotify_420
	jnp XAnimProcessClientNotify_840
	jmp XAnimProcessClientNotify_420


;XAnimUpdateInfoSync(DObj_s const*, unsigned int, unsigned char, XAnimState*, float)
XAnimUpdateInfoSync:
XAnimUpdateInfoSync_130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	mov eax, [ebp+0x8]
	mov [ebp-0x34], eax
	movss [ebp-0x38], xmm0
	mov ebx, ecx
	shl edx, 0x3
	mov eax, [ebp-0x30]
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	mov [ebp-0x28], eax
	mov edi, eax
	add edi, 0x18
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0x14]
	jnz XAnimUpdateInfoSync_10
	jp XAnimUpdateInfoSync_10
	mov edx, [ebp-0x2c]
	mov edx, [edx]
	mov [ebp-0x24], edx
	movzx eax, word [eax+0xc]
	movzx esi, ax
	test ax, ax
	jnz XAnimUpdateInfoSync_20
XAnimUpdateInfoSync_50:
	ucomiss xmm0, [edi+0x10]
	jnz XAnimUpdateInfoSync_30
	jp XAnimUpdateInfoSync_30
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x24]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp XAnimFreeInfo
XAnimUpdateInfoSync_40:
	mov esi, [ebp-0x1c]
XAnimUpdateInfoSync_20:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx eax, bx
	mov [ebp-0x1c], eax
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp-0x24]
	call XAnimCheckFreeInfo
	test bx, bx
	jnz XAnimUpdateInfoSync_40
	mov edx, [ebp-0x28]
	cmp word [edx+0xc], 0x0
	jnz XAnimUpdateInfoSync_30
	pxor xmm0, xmm0
	jmp XAnimUpdateInfoSync_50
XAnimUpdateInfoSync_10:
	mov edx, ebx
	ucomiss xmm0, [edi+0x10]
	mov eax, 0x0
	cmovz ebx, eax
	cmovp ebx, edx
	mov eax, [ebp-0x34]
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, [edi+0x4]
	jz XAnimUpdateInfoSync_60
XAnimUpdateInfoSync_100:
	movss [edi], xmm0
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0xa]
	mov [edi+0x8], ax
	movss [edi+0x4], xmm0
	mov [edi+0xa], ax
	mov eax, [ebp-0x28]
	mov word [eax+0x2], 0xffff
XAnimUpdateInfoSync_110:
	test bl, bl
	jnz XAnimUpdateInfoSync_70
XAnimUpdateInfoSync_160:
	mov edx, [ebp-0x34]
	mov eax, [edx]
	mov [edi], eax
	movzx eax, word [edx+0x8]
	mov [edi+0x8], ax
	mov eax, [ebp-0x28]
	mov word [eax+0x2], 0xffff
	test bl, bl
	jnz XAnimUpdateInfoSync_80
XAnimUpdateInfoSync_150:
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jnz XAnimUpdateInfoSync_90
XAnimUpdateInfoSync_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimUpdateInfoSync_60:
	jp XAnimUpdateInfoSync_100
	mov edx, eax
	movzx eax, word [edi+0xa]
	cmp ax, [edx+0xa]
	jnz XAnimUpdateInfoSync_100
	jmp XAnimUpdateInfoSync_110
XAnimUpdateInfoSync_90:
	movzx ebx, bl
	mov [ebp-0x20], ebx
	mov ecx, ebx
	jmp XAnimUpdateInfoSync_120
XAnimUpdateInfoSync_140:
	mov esi, edi
	mov ecx, [ebp-0x20]
XAnimUpdateInfoSync_120:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	mov eax, [ebp-0x34]
	mov [esp], eax
	movss xmm0, dword [ebp-0x38]
	mov edx, esi
	mov eax, [ebp-0x2c]
	call XAnimUpdateInfoSync_130
	test bx, bx
	jnz XAnimUpdateInfoSync_140
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimUpdateInfoSync_80:
	movss xmm0, dword [ebp-0x38]
	mov eax, [ebp-0x28]
	call XAnimProcessClientNotify
	jmp XAnimUpdateInfoSync_150
XAnimUpdateInfoSync_70:
	mov edx, [ebp-0x34]
	movss xmm0, dword [edx]
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x2c]
	call XAnimProcessServerNotify
	jmp XAnimUpdateInfoSync_160
	nop


;XAnimUpdateTimeAndNotetrack(DObj_s const*, unsigned int, float, unsigned char)
XAnimUpdateTimeAndNotetrack:
XAnimUpdateTimeAndNotetrack_390:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x44], eax
	mov [ebp-0x48], edx
	movss [ebp-0x4c], xmm0
	mov esi, ecx
	mov eax, [eax]
	mov [ebp-0x38], eax
	shl edx, 0x3
	mov eax, [ebp-0x48]
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	mov [ebp-0x40], eax
	add eax, 0x18
	mov [ebp-0x3c], eax
	pxor xmm5, xmm5
	ucomiss xmm5, [eax+0x14]
	jnz XAnimUpdateTimeAndNotetrack_10
	jp XAnimUpdateTimeAndNotetrack_10
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jnz XAnimUpdateTimeAndNotetrack_20
XAnimUpdateTimeAndNotetrack_60:
	mov eax, [ebp-0x3c]
	ucomiss xmm5, [eax+0x10]
	jz XAnimUpdateTimeAndNotetrack_30
XAnimUpdateTimeAndNotetrack_50:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimUpdateTimeAndNotetrack_40:
	mov esi, edi
XAnimUpdateTimeAndNotetrack_20:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp-0x38]
	call XAnimCheckFreeInfo
	test bx, bx
	jnz XAnimUpdateTimeAndNotetrack_40
	mov ecx, [ebp-0x40]
	cmp word [ecx+0xc], 0x0
	jnz XAnimUpdateTimeAndNotetrack_50
	pxor xmm5, xmm5
	jmp XAnimUpdateTimeAndNotetrack_60
XAnimUpdateTimeAndNotetrack_10:
	mov ecx, eax
	mov edx, esi
	ucomiss xmm5, [eax+0x10]
	mov eax, 0x0
	cmovz esi, eax
	cmovp esi, edx
	mov eax, [ebp-0x40]
	cmp word [eax+0x12], 0x0
	jz XAnimUpdateTimeAndNotetrack_70
	mov eax, [eax+0x14]
	movss xmm3, dword [ecx+0x18]
	mulss xmm3, [eax+0x2c]
	mulss xmm3, [ebp-0x4c]
	ucomiss xmm3, xmm5
	jp XAnimUpdateTimeAndNotetrack_80
	jz XAnimUpdateTimeAndNotetrack_50
XAnimUpdateTimeAndNotetrack_80:
	movss xmm1, dword [ecx+0x4]
	movaps xmm2, xmm3
	addss xmm2, xmm1
	movzx ebx, word [ecx+0x8]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jb XAnimUpdateTimeAndNotetrack_90
	cmp byte [eax+0x10], 0x0
	jnz XAnimUpdateTimeAndNotetrack_100
	movss xmm0, dword [_float_0_99999988]
	subss xmm1, xmm0
	ucomiss xmm1, xmm5
	jb XAnimUpdateTimeAndNotetrack_110
	movaps xmm2, xmm4
XAnimUpdateTimeAndNotetrack_90:
	xor ecx, ecx
XAnimUpdateTimeAndNotetrack_250:
	cvtsi2ss xmm1, ecx
	mov ecx, [ebp-0x3c]
	movss xmm0, dword [ecx]
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja XAnimUpdateTimeAndNotetrack_50
	mov eax, esi
	test al, al
	jnz XAnimUpdateTimeAndNotetrack_120
XAnimUpdateTimeAndNotetrack_430:
	mov edx, [ebp-0x3c]
	movss [edx], xmm2
	mov [edx+0x8], bx
	mov ecx, [ebp-0x40]
	mov word [ecx+0x2], 0xffff
	mov eax, esi
	test al, al
	jz XAnimUpdateTimeAndNotetrack_50
	movaps xmm0, xmm3
	mov eax, ecx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp XAnimProcessClientNotify
XAnimUpdateTimeAndNotetrack_70:
	test byte [eax+0x14], 0x3
	jz XAnimUpdateTimeAndNotetrack_130
	movzx eax, word [eax+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimUpdateTimeAndNotetrack_140
	movss [ebp-0x34], xmm5
	movaps xmm2, xmm5
	jmp XAnimUpdateTimeAndNotetrack_150
XAnimUpdateTimeAndNotetrack_180:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimUpdateTimeAndNotetrack_160
XAnimUpdateTimeAndNotetrack_150:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	movss xmm1, dword [ebx+0x2c]
	ucomiss xmm1, xmm5
	jp XAnimUpdateTimeAndNotetrack_170
	jz XAnimUpdateTimeAndNotetrack_180
XAnimUpdateTimeAndNotetrack_170:
	mov edx, ecx
	mov eax, [ebp-0x38]
	movss [ebp-0x68], xmm1
	movss [ebp-0x78], xmm2
	movss [ebp-0x98], xmm5
	call XAnimGetAverageRateFrequency
	movss xmm1, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x98]
	ucomiss xmm0, xmm5
	jp XAnimUpdateTimeAndNotetrack_190
	jz XAnimUpdateTimeAndNotetrack_200
XAnimUpdateTimeAndNotetrack_190:
	addss xmm2, xmm1
	mulss xmm1, xmm0
	mulss xmm1, [ebx+0x30]
	addss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	pxor xmm5, xmm5
	jmp XAnimUpdateTimeAndNotetrack_180
XAnimUpdateTimeAndNotetrack_30:
	jp XAnimUpdateTimeAndNotetrack_50
	mov edx, [ebp-0x48]
	mov eax, [ebp-0x38]
XAnimUpdateTimeAndNotetrack_280:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp XAnimFreeInfo
XAnimUpdateTimeAndNotetrack_130:
	movss xmm0, dword [ebp-0x4c]
	mov edx, [ebp-0x3c]
	mulss xmm0, [edx+0x18]
	movss [ebp-0x20], xmm0
	ucomiss xmm0, xmm5
	jnz XAnimUpdateTimeAndNotetrack_210
	jp XAnimUpdateTimeAndNotetrack_210
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jz XAnimUpdateTimeAndNotetrack_50
	jmp XAnimUpdateTimeAndNotetrack_220
XAnimUpdateTimeAndNotetrack_230:
	mov esi, edi
XAnimUpdateTimeAndNotetrack_220:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp-0x38]
	call XAnimCheckFreeInfo
	test bx, bx
	jnz XAnimUpdateTimeAndNotetrack_230
	jmp XAnimUpdateTimeAndNotetrack_50
XAnimUpdateTimeAndNotetrack_200:
	pxor xmm5, xmm5
	jmp XAnimUpdateTimeAndNotetrack_180
XAnimUpdateTimeAndNotetrack_100:
	mov edx, ebx
XAnimUpdateTimeAndNotetrack_240:
	subss xmm2, xmm4
	add edx, 0x1
	ucomiss xmm2, xmm4
	jae XAnimUpdateTimeAndNotetrack_240
	movsx ecx, dx
	movsx eax, bx
	sub ecx, eax
	mov ebx, edx
	jmp XAnimUpdateTimeAndNotetrack_250
XAnimUpdateTimeAndNotetrack_140:
	movaps xmm0, xmm5
XAnimUpdateTimeAndNotetrack_420:
	mov ecx, [ebp-0x3c]
	mulss xmm0, [ecx+0x18]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm5
	jnz XAnimUpdateTimeAndNotetrack_260
	jp XAnimUpdateTimeAndNotetrack_260
	mov eax, [ebp-0x44]
	mov eax, [eax]
	mov [ebp-0x2c], eax
	ucomiss xmm5, [ecx+0x14]
	setz byte [ebp-0x4d]
	setnp al
	and [ebp-0x4d], al
	movzx eax, byte [ebp-0x4d]
	xor al, 0x1
	movzx eax, al
	mov [ebp-0x30], eax
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jnz XAnimUpdateTimeAndNotetrack_270
XAnimUpdateTimeAndNotetrack_300:
	cmp byte [ebp-0x4d], 0x0
	jz XAnimUpdateTimeAndNotetrack_50
	pxor xmm0, xmm0
	mov eax, [ebp-0x3c]
	ucomiss xmm0, [eax+0x10]
	jnz XAnimUpdateTimeAndNotetrack_50
	jp XAnimUpdateTimeAndNotetrack_50
	mov edx, [ebp-0x48]
	mov eax, [ebp-0x2c]
	jmp XAnimUpdateTimeAndNotetrack_280
XAnimUpdateTimeAndNotetrack_290:
	mov esi, edi
XAnimUpdateTimeAndNotetrack_270:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	mov ecx, [ebp-0x30]
	mov edx, esi
	mov eax, [ebp-0x2c]
	call XAnimCheckFreeInfo
	test bx, bx
	jnz XAnimUpdateTimeAndNotetrack_290
	mov ecx, [ebp-0x40]
	cmp word [ecx+0xc], 0x0
	jnz XAnimUpdateTimeAndNotetrack_50
	jmp XAnimUpdateTimeAndNotetrack_300
XAnimUpdateTimeAndNotetrack_260:
	movaps xmm2, xmm0
	mov edi, esi
	movss xmm1, dword [ecx+0x4]
	addss xmm2, xmm1
	movzx ebx, word [ecx+0xa]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm4, xmm3
	ucomiss xmm2, xmm3
	jb XAnimUpdateTimeAndNotetrack_310
	mov ecx, [ebp-0x40]
	test byte [ecx+0x14], 0x2
	jz XAnimUpdateTimeAndNotetrack_320
	movss xmm0, dword [_float_0_99999988]
	subss xmm1, xmm0
	ucomiss xmm1, xmm5
	jb XAnimUpdateTimeAndNotetrack_330
	movaps xmm2, xmm3
	mov ecx, [ebp-0x3c]
XAnimUpdateTimeAndNotetrack_310:
	movsx eax, bx
	movsx edx, word [ecx+0x8]
	sub eax, edx
	cvtsi2ss xmm1, eax
	movss xmm0, dword [ecx]
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja XAnimUpdateTimeAndNotetrack_50
	mov eax, edi
	test al, al
	jnz XAnimUpdateTimeAndNotetrack_340
XAnimUpdateTimeAndNotetrack_450:
	mov edx, [ebp-0x3c]
	movss [edx], xmm2
	mov [edx+0x8], bx
	mov ecx, [ebp-0x40]
	mov word [ecx+0x2], 0xffff
	mov eax, edi
	test al, al
	jnz XAnimUpdateTimeAndNotetrack_350
XAnimUpdateTimeAndNotetrack_440:
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jz XAnimUpdateTimeAndNotetrack_50
	mov ecx, edi
	movzx edi, cl
	mov [ebp-0x24], edi
	mov ecx, edi
	jmp XAnimUpdateTimeAndNotetrack_360
XAnimUpdateTimeAndNotetrack_370:
	mov esi, edi
	mov ecx, [ebp-0x24]
XAnimUpdateTimeAndNotetrack_360:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	mov eax, [ebp-0x3c]
	mov [esp], eax
	movss xmm0, dword [ebp-0x1c]
	mov edx, esi
	mov eax, [ebp-0x44]
	call XAnimUpdateInfoSync
	test bx, bx
	jnz XAnimUpdateTimeAndNotetrack_370
	jmp XAnimUpdateTimeAndNotetrack_50
XAnimUpdateTimeAndNotetrack_210:
	mov ecx, [ebp-0x40]
	movzx eax, word [ecx+0xc]
	movzx edi, ax
	test ax, ax
	jz XAnimUpdateTimeAndNotetrack_50
	mov eax, esi
	movzx esi, al
	mov [ebp-0x28], esi
	mov ecx, esi
	jmp XAnimUpdateTimeAndNotetrack_380
XAnimUpdateTimeAndNotetrack_400:
	mov edi, esi
	mov ecx, [ebp-0x28]
XAnimUpdateTimeAndNotetrack_380:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx esi, bx
	movss xmm0, dword [ebp-0x20]
	mov edx, edi
	mov eax, [ebp-0x44]
	call XAnimUpdateTimeAndNotetrack_390
	test bx, bx
	jnz XAnimUpdateTimeAndNotetrack_400
	jmp XAnimUpdateTimeAndNotetrack_50
XAnimUpdateTimeAndNotetrack_160:
	ucomiss xmm2, xmm5
	jp XAnimUpdateTimeAndNotetrack_410
	jz XAnimUpdateTimeAndNotetrack_140
XAnimUpdateTimeAndNotetrack_410:
	movss xmm0, dword [ebp-0x34]
	divss xmm0, xmm2
	jmp XAnimUpdateTimeAndNotetrack_420
XAnimUpdateTimeAndNotetrack_320:
	subss xmm2, xmm4
	add ebx, 0x1
	ucomiss xmm2, xmm4
	jae XAnimUpdateTimeAndNotetrack_320
	mov ecx, [ebp-0x3c]
	jmp XAnimUpdateTimeAndNotetrack_310
XAnimUpdateTimeAndNotetrack_120:
	movaps xmm0, xmm2
	mov edx, [ebp-0x40]
	mov eax, [ebp-0x44]
	movss [ebp-0x78], xmm2
	movss [ebp-0x88], xmm3
	call XAnimProcessServerNotify
	movss xmm3, dword [ebp-0x88]
	movss xmm2, dword [ebp-0x78]
	jmp XAnimUpdateTimeAndNotetrack_430
XAnimUpdateTimeAndNotetrack_110:
	movaps xmm2, xmm0
	jmp XAnimUpdateTimeAndNotetrack_90
XAnimUpdateTimeAndNotetrack_350:
	movss xmm0, dword [ebp-0x1c]
	mov eax, ecx
	call XAnimProcessClientNotify
	jmp XAnimUpdateTimeAndNotetrack_440
XAnimUpdateTimeAndNotetrack_340:
	movaps xmm0, xmm2
	mov edx, [ebp-0x40]
	mov eax, [ebp-0x44]
	movss [ebp-0x78], xmm2
	call XAnimProcessServerNotify
	movss xmm2, dword [ebp-0x78]
	jmp XAnimUpdateTimeAndNotetrack_450
XAnimUpdateTimeAndNotetrack_330:
	movaps xmm2, xmm0
	mov ecx, [ebp-0x3c]
	jmp XAnimUpdateTimeAndNotetrack_310
	nop


;XAnimGetNextServerNotifyFrac(DObj_s const*, XAnimInfo*, XAnimState const*, XAnimState const*, float)
XAnimGetNextServerNotifyFrac:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov ebx, edx
	mov esi, ecx
	movaps xmm5, xmm0
	cmp word [eax+0x6], 0x0
	jz XAnimGetNextServerNotifyFrac_10
	cmp word [edx+0x4], 0x0
	jz XAnimGetNextServerNotifyFrac_10
	mov eax, [eax]
	cmp word [edx+0x12], 0x0
	jz XAnimGetNextServerNotifyFrac_20
	mov ecx, [edx+0x14]
XAnimGetNextServerNotifyFrac_150:
	test ecx, ecx
	jz XAnimGetNextServerNotifyFrac_30
	cmp word [ebx+0x2], 0x0
	js XAnimGetNextServerNotifyFrac_40
	movss xmm4, dword [_float_1_00000000]
XAnimGetNextServerNotifyFrac_230:
	movsx edx, word [ebx+0x2]
	mov eax, [ecx+0x50]
	movss xmm3, dword [eax+edx*8+0x4]
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0x4]
	ucomiss xmm2, xmm4
	jp XAnimGetNextServerNotifyFrac_50
	jz XAnimGetNextServerNotifyFrac_60
XAnimGetNextServerNotifyFrac_50:
	movss xmm1, dword [eax]
	ucomiss xmm2, xmm1
	jbe XAnimGetNextServerNotifyFrac_70
	ucomiss xmm1, xmm3
	ja XAnimGetNextServerNotifyFrac_80
XAnimGetNextServerNotifyFrac_160:
	ucomiss xmm3, xmm2
	jb XAnimGetNextServerNotifyFrac_60
	mov edx, [ebp+0x8]
	movsx eax, word [edx+0xa]
	movsx edx, word [esi+0xa]
	sub eax, edx
	cvtsi2ss xmm0, eax
	subss xmm3, [esi+0x4]
	addss xmm0, xmm3
	divss xmm0, xmm5
	jmp XAnimGetNextServerNotifyFrac_90
XAnimGetNextServerNotifyFrac_10:
	movss xmm0, dword [_float_1_00000000]
XAnimGetNextServerNotifyFrac_90:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetNextServerNotifyFrac_140:
	ucomiss xmm1, xmm4
	ja XAnimGetNextServerNotifyFrac_100
	ucomiss xmm1, xmm4
	jnz XAnimGetNextServerNotifyFrac_60
	jp XAnimGetNextServerNotifyFrac_60
XAnimGetNextServerNotifyFrac_100:
	ucomiss xmm4, xmm2
	jae XAnimGetNextServerNotifyFrac_110
XAnimGetNextServerNotifyFrac_60:
	movaps xmm0, xmm4
XAnimGetNextServerNotifyFrac_170:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetNextServerNotifyFrac_20:
	movzx edx, word [edx]
	test dx, dx
	jnz XAnimGetNextServerNotifyFrac_120
XAnimGetNextServerNotifyFrac_30:
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0x4]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jp XAnimGetNextServerNotifyFrac_130
	jz XAnimGetNextServerNotifyFrac_60
XAnimGetNextServerNotifyFrac_130:
	movss xmm1, dword [eax]
	ucomiss xmm2, xmm1
	jbe XAnimGetNextServerNotifyFrac_140
	ucomiss xmm1, xmm4
	jbe XAnimGetNextServerNotifyFrac_100
	mov edx, eax
XAnimGetNextServerNotifyFrac_210:
	movsx eax, word [edx+0xa]
	movsx edx, word [esi+0xa]
	sub eax, edx
	add eax, 0x1
	cvtsi2ss xmm0, eax
	subss xmm4, [esi+0x4]
	addss xmm0, xmm4
	divss xmm0, xmm5
	jmp XAnimGetNextServerNotifyFrac_90
XAnimGetNextServerNotifyFrac_120:
	movzx edx, dx
	mov eax, [eax]
	mov ecx, [eax+edx*8+0x10]
	jmp XAnimGetNextServerNotifyFrac_150
XAnimGetNextServerNotifyFrac_70:
	ucomiss xmm1, xmm3
	ja XAnimGetNextServerNotifyFrac_160
	ucomiss xmm1, xmm4
	jnz XAnimGetNextServerNotifyFrac_60
	jnp XAnimGetNextServerNotifyFrac_160
	movaps xmm0, xmm4
	jmp XAnimGetNextServerNotifyFrac_170
XAnimGetNextServerNotifyFrac_40:
	movss xmm0, dword [ebx+0x18]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm0, xmm4
	jp XAnimGetNextServerNotifyFrac_180
	jnz XAnimGetNextServerNotifyFrac_180
XAnimGetNextServerNotifyFrac_240:
	mov edx, [ebp+0x8]
	movss xmm1, dword [edx+0x4]
	ucomiss xmm1, xmm4
	jp XAnimGetNextServerNotifyFrac_190
	jz XAnimGetNextServerNotifyFrac_60
XAnimGetNextServerNotifyFrac_190:
	movss xmm0, dword [edx]
	ucomiss xmm1, xmm0
	jbe XAnimGetNextServerNotifyFrac_200
	ucomiss xmm0, xmm4
	ja XAnimGetNextServerNotifyFrac_210
XAnimGetNextServerNotifyFrac_280:
	ucomiss xmm4, xmm1
	jb XAnimGetNextServerNotifyFrac_60
XAnimGetNextServerNotifyFrac_110:
	mov edx, [ebp+0x8]
	movsx eax, word [edx+0xa]
	movsx edx, word [esi+0xa]
	sub eax, edx
	cvtsi2ss xmm0, eax
	subss xmm4, [esi+0x4]
	addss xmm0, xmm4
	divss xmm0, xmm5
	jmp XAnimGetNextServerNotifyFrac_90
XAnimGetNextServerNotifyFrac_80:
	movsx eax, word [eax+0xa]
	movsx edx, word [esi+0xa]
	sub eax, edx
	add eax, 0x1
	cvtsi2ss xmm0, eax
	subss xmm3, [esi+0x4]
	addss xmm0, xmm3
	divss xmm0, xmm5
	jmp XAnimGetNextServerNotifyFrac_90
XAnimGetNextServerNotifyFrac_180:
	mov eax, [ecx+0x50]
	mov [ebp-0x10], eax
	movzx edi, byte [ecx+0x1c]
	test edi, edi
	jg XAnimGetNextServerNotifyFrac_220
	xor eax, eax
XAnimGetNextServerNotifyFrac_270:
	sub eax, [ebp-0x10]
	sar eax, 0x3
	movzx eax, ax
	mov [ebx+0x2], ax
	test ax, ax
	jns XAnimGetNextServerNotifyFrac_230
	jmp XAnimGetNextServerNotifyFrac_240
XAnimGetNextServerNotifyFrac_220:
	mov edx, eax
	mov dword [ebp-0x14], 0x0
	movss xmm2, dword [_float_2_00000000]
	xor eax, eax
XAnimGetNextServerNotifyFrac_260:
	movss xmm1, dword [edx+0x4]
	ucomiss xmm0, xmm1
	ja XAnimGetNextServerNotifyFrac_250
	ucomiss xmm2, xmm1
	jbe XAnimGetNextServerNotifyFrac_250
	mov [ebp-0x14], edx
	movaps xmm2, xmm1
XAnimGetNextServerNotifyFrac_250:
	add eax, 0x1
	add edx, 0x8
	cmp edi, eax
	jnz XAnimGetNextServerNotifyFrac_260
	mov eax, [ebp-0x14]
	jmp XAnimGetNextServerNotifyFrac_270
XAnimGetNextServerNotifyFrac_200:
	ucomiss xmm0, xmm4
	ja XAnimGetNextServerNotifyFrac_280
	ucomiss xmm0, xmm4
	jnz XAnimGetNextServerNotifyFrac_60
	jnp XAnimGetNextServerNotifyFrac_280
	movaps xmm0, xmm4
	jmp XAnimGetNextServerNotifyFrac_170


;XAnimGetServerNotifyFracSyncTotal(DObj_s const*, XAnimInfo*, XAnimState const*, XAnimState const*, float)
XAnimGetServerNotifyFracSyncTotal:
XAnimGetServerNotifyFracSyncTotal_530:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x58], eax
	mov ebx, edx
	mov [ebp-0x5c], ecx
	movss [ebp-0x60], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x54], xmm0
	movzx eax, word [ebx+0xc]
	movzx esi, ax
	test ax, ax
	jnz XAnimGetServerNotifyFracSyncTotal_10
	jmp XAnimGetServerNotifyFracSyncTotal_20
XAnimGetServerNotifyFracSyncTotal_50:
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_30
XAnimGetServerNotifyFracSyncTotal_10:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_40
	jz XAnimGetServerNotifyFracSyncTotal_50
XAnimGetServerNotifyFracSyncTotal_40:
	ucomiss xmm0, [ebx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_60
	jz XAnimGetServerNotifyFracSyncTotal_50
XAnimGetServerNotifyFracSyncTotal_60:
	mov edx, [ebp+0x8]
	mov [esp], edx
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x50], xmm0
	movzx eax, word [ebx+0xc]
	movzx edi, ax
	test ax, ax
	jnz XAnimGetServerNotifyFracSyncTotal_70
	minss xmm0, dword [ebp-0x54]
	movss [ebp-0x54], xmm0
XAnimGetServerNotifyFracSyncTotal_540:
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jnz XAnimGetServerNotifyFracSyncTotal_10
XAnimGetServerNotifyFracSyncTotal_30:
	movss xmm0, dword [ebp-0x54]
XAnimGetServerNotifyFracSyncTotal_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetServerNotifyFracSyncTotal_130:
	movss xmm0, dword [ebp-0x34]
	minss xmm0, dword [ebp-0x50]
	movss [ebp-0x50], xmm0
XAnimGetServerNotifyFracSyncTotal_100:
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_80
XAnimGetServerNotifyFracSyncTotal_70:
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_90
	jz XAnimGetServerNotifyFracSyncTotal_100
XAnimGetServerNotifyFracSyncTotal_90:
	ucomiss xmm0, [ebx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_110
	jz XAnimGetServerNotifyFracSyncTotal_100
XAnimGetServerNotifyFracSyncTotal_110:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x34], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x4c], edx
	test ax, ax
	jnz XAnimGetServerNotifyFracSyncTotal_120
	minss xmm0, dword [ebp-0x50]
	movss [ebp-0x50], xmm0
	jmp XAnimGetServerNotifyFracSyncTotal_100
XAnimGetServerNotifyFracSyncTotal_190:
	movss xmm0, dword [ebp-0x30]
XAnimGetServerNotifyFracSyncTotal_170:
	minss xmm0, dword [ebp-0x34]
	movss [ebp-0x34], xmm0
XAnimGetServerNotifyFracSyncTotal_150:
	mov eax, [ebp-0x4c]
	shl eax, 0x3
	shl dword [ebp-0x4c], 0x6
	sub [ebp-0x4c], eax
	mov edx, [ebp-0x4c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x4c], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_130
XAnimGetServerNotifyFracSyncTotal_120:
	shl edx, 0x3
	mov eax, [ebp-0x4c]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_140
	jz XAnimGetServerNotifyFracSyncTotal_150
XAnimGetServerNotifyFracSyncTotal_140:
	ucomiss xmm0, [ebx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_160
	jz XAnimGetServerNotifyFracSyncTotal_150
XAnimGetServerNotifyFracSyncTotal_160:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x30], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_170
	jmp XAnimGetServerNotifyFracSyncTotal_180
XAnimGetServerNotifyFracSyncTotal_210:
	mov eax, [ebp-0x48]
	shl eax, 0x3
	shl dword [ebp-0x48], 0x6
	sub [ebp-0x48], eax
	mov edx, [ebp-0x48]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_190
XAnimGetServerNotifyFracSyncTotal_180:
	shl edx, 0x3
	mov eax, [ebp-0x48]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_200
	jz XAnimGetServerNotifyFracSyncTotal_210
XAnimGetServerNotifyFracSyncTotal_200:
	ucomiss xmm0, [ebx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_220
	jz XAnimGetServerNotifyFracSyncTotal_210
XAnimGetServerNotifyFracSyncTotal_220:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x2c], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x44], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_230
	mov edx, [ebp-0x44]
	jmp XAnimGetServerNotifyFracSyncTotal_240
XAnimGetServerNotifyFracSyncTotal_270:
	mov eax, [ebp-0x44]
	shl eax, 0x3
	shl dword [ebp-0x44], 0x6
	sub [ebp-0x44], eax
	mov edx, [ebp-0x44]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x44], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_250
XAnimGetServerNotifyFracSyncTotal_240:
	shl edx, 0x3
	mov eax, [ebp-0x44]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_260
	jz XAnimGetServerNotifyFracSyncTotal_270
XAnimGetServerNotifyFracSyncTotal_260:
	ucomiss xmm0, [ebx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_280
	jz XAnimGetServerNotifyFracSyncTotal_270
XAnimGetServerNotifyFracSyncTotal_280:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x28], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_290
	mov edx, [ebp-0x40]
	jmp XAnimGetServerNotifyFracSyncTotal_300
XAnimGetServerNotifyFracSyncTotal_330:
	mov eax, [ebp-0x40]
	shl eax, 0x3
	shl dword [ebp-0x40], 0x6
	sub [ebp-0x40], eax
	mov edx, [ebp-0x40]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_310
XAnimGetServerNotifyFracSyncTotal_300:
	shl edx, 0x3
	mov eax, [ebp-0x40]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_320
	jz XAnimGetServerNotifyFracSyncTotal_330
XAnimGetServerNotifyFracSyncTotal_320:
	ucomiss xmm0, [ebx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_340
	jz XAnimGetServerNotifyFracSyncTotal_330
XAnimGetServerNotifyFracSyncTotal_340:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x24], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x3c], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_350
	mov edx, [ebp-0x3c]
	jmp XAnimGetServerNotifyFracSyncTotal_360
XAnimGetServerNotifyFracSyncTotal_390:
	mov eax, [ebp-0x3c]
	shl eax, 0x3
	shl dword [ebp-0x3c], 0x6
	sub [ebp-0x3c], eax
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x3c], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_370
XAnimGetServerNotifyFracSyncTotal_360:
	shl edx, 0x3
	mov eax, [ebp-0x3c]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_380
	jz XAnimGetServerNotifyFracSyncTotal_390
XAnimGetServerNotifyFracSyncTotal_380:
	ucomiss xmm0, [ebx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_400
	jz XAnimGetServerNotifyFracSyncTotal_390
XAnimGetServerNotifyFracSyncTotal_400:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x1c], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_410
	mov edx, [ebp-0x38]
	jmp XAnimGetServerNotifyFracSyncTotal_420
XAnimGetServerNotifyFracSyncTotal_450:
	mov eax, [ebp-0x38]
	shl eax, 0x3
	shl dword [ebp-0x38], 0x6
	sub [ebp-0x38], eax
	mov edx, [ebp-0x38]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_430
XAnimGetServerNotifyFracSyncTotal_420:
	shl edx, 0x3
	mov eax, [ebp-0x38]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_440
	jz XAnimGetServerNotifyFracSyncTotal_450
XAnimGetServerNotifyFracSyncTotal_440:
	ucomiss xmm0, [ebx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_460
	jz XAnimGetServerNotifyFracSyncTotal_450
XAnimGetServerNotifyFracSyncTotal_460:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call XAnimGetNextServerNotifyFrac
	movss [ebp-0x20], xmm0
	movzx eax, word [ebx+0xc]
	movzx ebx, ax
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_470
	jmp XAnimGetServerNotifyFracSyncTotal_480
XAnimGetServerNotifyFracSyncTotal_510:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jz XAnimGetServerNotifyFracSyncTotal_490
XAnimGetServerNotifyFracSyncTotal_480:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea edx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x2c]
	jp XAnimGetServerNotifyFracSyncTotal_500
	jz XAnimGetServerNotifyFracSyncTotal_510
XAnimGetServerNotifyFracSyncTotal_500:
	ucomiss xmm0, [edx+0x28]
	jp XAnimGetServerNotifyFracSyncTotal_520
	jz XAnimGetServerNotifyFracSyncTotal_510
XAnimGetServerNotifyFracSyncTotal_520:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov eax, [ebp-0x58]
	call XAnimGetServerNotifyFracSyncTotal_530
	minss xmm0, dword [ebp-0x20]
	movss [ebp-0x20], xmm0
	jmp XAnimGetServerNotifyFracSyncTotal_510
XAnimGetServerNotifyFracSyncTotal_250:
	movss xmm0, dword [ebp-0x2c]
XAnimGetServerNotifyFracSyncTotal_230:
	minss xmm0, dword [ebp-0x30]
	movss [ebp-0x30], xmm0
	jmp XAnimGetServerNotifyFracSyncTotal_210
XAnimGetServerNotifyFracSyncTotal_80:
	movss xmm0, dword [ebp-0x50]
	minss xmm0, dword [ebp-0x54]
	movss [ebp-0x54], xmm0
	jmp XAnimGetServerNotifyFracSyncTotal_540
XAnimGetServerNotifyFracSyncTotal_430:
	movss xmm0, dword [ebp-0x1c]
XAnimGetServerNotifyFracSyncTotal_410:
	minss xmm0, dword [ebp-0x24]
	movss [ebp-0x24], xmm0
	jmp XAnimGetServerNotifyFracSyncTotal_390
XAnimGetServerNotifyFracSyncTotal_310:
	movss xmm0, dword [ebp-0x28]
XAnimGetServerNotifyFracSyncTotal_290:
	minss xmm0, dword [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	jmp XAnimGetServerNotifyFracSyncTotal_270
XAnimGetServerNotifyFracSyncTotal_370:
	movss xmm0, dword [ebp-0x24]
XAnimGetServerNotifyFracSyncTotal_350:
	minss xmm0, dword [ebp-0x28]
	movss [ebp-0x28], xmm0
	jmp XAnimGetServerNotifyFracSyncTotal_330
XAnimGetServerNotifyFracSyncTotal_490:
	movss xmm0, dword [ebp-0x20]
XAnimGetServerNotifyFracSyncTotal_470:
	minss xmm0, dword [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	jmp XAnimGetServerNotifyFracSyncTotal_450
	nop


;XAnimFindServerNoteTrack(DObj_s const*, unsigned int, float)
XAnimFindServerNoteTrack:
XAnimFindServerNoteTrack_190:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x4c], eax
	movss [ebp-0x50], xmm0
	mov eax, [eax]
	mov [ebp-0x48], eax
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea edi, [edx+g_xAnimInfo]
	lea esi, [edi+0x18]
	pxor xmm5, xmm5
	ucomiss xmm5, [esi+0x14]
	jp XAnimFindServerNoteTrack_10
	jz XAnimFindServerNoteTrack_20
XAnimFindServerNoteTrack_10:
	ucomiss xmm5, [esi+0x10]
	jp XAnimFindServerNoteTrack_30
	jz XAnimFindServerNoteTrack_20
XAnimFindServerNoteTrack_30:
	cmp word [edi+0x12], 0x0
	jz XAnimFindServerNoteTrack_40
	mov eax, [edi+0x14]
	movss xmm4, dword [esi+0x18]
	mulss xmm4, [eax+0x2c]
	mulss xmm4, xmm0
	ucomiss xmm4, xmm5
	jz XAnimFindServerNoteTrack_50
XAnimFindServerNoteTrack_90:
	movss xmm1, dword [esi+0x4]
	movaps xmm3, xmm4
	addss xmm3, xmm1
	movzx ecx, word [esi+0xa]
	cmp byte [eax+0x10], 0x0
	jnz XAnimFindServerNoteTrack_60
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jb XAnimFindServerNoteTrack_70
	movss xmm0, dword [_float_0_99999988]
	subss xmm1, xmm0
	cmpss xmm5, xmm1, 0x6
	movaps xmm3, xmm5
	andps xmm3, xmm0
	movaps xmm0, xmm3
	movaps xmm3, xmm5
	andnps xmm3, xmm2
	orps xmm3, xmm0
XAnimFindServerNoteTrack_70:
	movss xmm5, dword [esi]
	movsx eax, cx
	movsx edx, word [esi+0x8]
	sub eax, edx
	cvtsi2ss xmm1, eax
	movaps xmm0, xmm5
	subss xmm0, xmm3
	ucomiss xmm0, xmm1
	jbe XAnimFindServerNoteTrack_80
XAnimFindServerNoteTrack_260:
	movaps xmm3, xmm2
	movaps xmm0, xmm3
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFindServerNoteTrack_50:
	jp XAnimFindServerNoteTrack_90
XAnimFindServerNoteTrack_20:
	movss xmm3, dword [_float_1_00000000]
XAnimFindServerNoteTrack_210:
	movaps xmm0, xmm3
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFindServerNoteTrack_40:
	test byte [edi+0x14], 0x3
	jz XAnimFindServerNoteTrack_100
	movzx eax, word [edi+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimFindServerNoteTrack_110
	movss [ebp-0x44], xmm5
	movaps xmm2, xmm5
	jmp XAnimFindServerNoteTrack_120
XAnimFindServerNoteTrack_150:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimFindServerNoteTrack_130
XAnimFindServerNoteTrack_120:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	movss xmm1, dword [ebx+0x2c]
	ucomiss xmm1, xmm5
	jp XAnimFindServerNoteTrack_140
	jz XAnimFindServerNoteTrack_150
XAnimFindServerNoteTrack_140:
	mov edx, ecx
	mov eax, [ebp-0x48]
	movss [ebp-0x68], xmm1
	movss [ebp-0x78], xmm2
	movss [ebp-0x98], xmm5
	call XAnimGetAverageRateFrequency
	movss xmm1, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x98]
	ucomiss xmm0, xmm5
	jp XAnimFindServerNoteTrack_160
	jz XAnimFindServerNoteTrack_170
XAnimFindServerNoteTrack_160:
	addss xmm2, xmm1
	mulss xmm1, xmm0
	mulss xmm1, [ebx+0x30]
	addss xmm1, [ebp-0x44]
	movss [ebp-0x44], xmm1
	pxor xmm5, xmm5
	jmp XAnimFindServerNoteTrack_150
XAnimFindServerNoteTrack_100:
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [esi+0x18]
	movss [ebp-0x40], xmm0
	ucomiss xmm0, xmm5
	jz XAnimFindServerNoteTrack_180
XAnimFindServerNoteTrack_340:
	movzx eax, word [edi+0xc]
	movzx ebx, ax
	test ax, ax
	jz XAnimFindServerNoteTrack_20
	movss xmm3, dword [_float_1_00000000]
XAnimFindServerNoteTrack_200:
	movss xmm0, dword [ebp-0x40]
	mov edx, ebx
	mov eax, [ebp-0x4c]
	movss [ebp-0x88], xmm3
	call XAnimFindServerNoteTrack_190
	movss xmm3, dword [ebp-0x88]
	movaps xmm2, xmm0
	subss xmm2, xmm3
	pxor xmm1, xmm1
	cmpss xmm1, xmm2, 0x2
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimFindServerNoteTrack_200
	jmp XAnimFindServerNoteTrack_210
XAnimFindServerNoteTrack_80:
	movss [ebp-0x34], xmm5
	movzx eax, word [esi+0x8]
	mov [ebp-0x2e], ax
	movss [ebp-0x38], xmm3
	mov [ebp-0x30], cx
	lea eax, [ebp-0x38]
	mov [esp], eax
	movaps xmm0, xmm4
	mov ecx, esi
	mov edx, edi
	mov eax, [ebp-0x4c]
	call XAnimGetNextServerNotifyFrac
	movaps xmm3, xmm0
	jmp XAnimFindServerNoteTrack_210
XAnimFindServerNoteTrack_170:
	pxor xmm5, xmm5
	jmp XAnimFindServerNoteTrack_150
XAnimFindServerNoteTrack_60:
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jb XAnimFindServerNoteTrack_70
XAnimFindServerNoteTrack_220:
	subss xmm3, xmm2
	add ecx, 0x1
	ucomiss xmm3, xmm2
	jae XAnimFindServerNoteTrack_220
	jmp XAnimFindServerNoteTrack_70
XAnimFindServerNoteTrack_110:
	movaps xmm0, xmm5
XAnimFindServerNoteTrack_320:
	mulss xmm0, [esi+0x18]
	movss xmm3, dword [ebp-0x50]
	mulss xmm3, xmm0
	movss [ebp-0x3c], xmm3
	ucomiss xmm3, xmm5
	jz XAnimFindServerNoteTrack_230
XAnimFindServerNoteTrack_350:
	movss xmm1, dword [esi+0x4]
	addss xmm3, xmm1
	movzx ecx, word [esi+0xa]
	test byte [edi+0x14], 0x2
	jz XAnimFindServerNoteTrack_240
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jb XAnimFindServerNoteTrack_250
	movss xmm0, dword [_float_0_99999988]
	subss xmm1, xmm0
	cmpss xmm5, xmm1, 0x6
	movaps xmm3, xmm5
	andps xmm3, xmm0
	movaps xmm0, xmm3
	movaps xmm3, xmm5
	andnps xmm3, xmm2
	orps xmm3, xmm0
XAnimFindServerNoteTrack_250:
	movss xmm4, dword [esi]
	movsx eax, cx
	movsx edx, word [esi+0x8]
	sub eax, edx
	cvtsi2ss xmm1, eax
	movaps xmm0, xmm4
	subss xmm0, xmm3
	ucomiss xmm0, xmm1
	ja XAnimFindServerNoteTrack_260
	movss [ebp-0x34], xmm4
	movzx eax, word [esi+0x8]
	mov [ebp-0x2e], ax
	movss [ebp-0x38], xmm3
	mov [ebp-0x30], cx
	lea eax, [ebp-0x38]
	mov [esp], eax
	movss xmm0, dword [ebp-0x3c]
	mov ecx, esi
	mov edx, edi
	mov eax, [ebp-0x4c]
	call XAnimGetNextServerNotifyFrac
	movaps xmm3, xmm0
	movzx eax, word [edi+0xc]
	movzx ebx, ax
	test ax, ax
	jz XAnimFindServerNoteTrack_210
	jmp XAnimFindServerNoteTrack_270
XAnimFindServerNoteTrack_290:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jz XAnimFindServerNoteTrack_210
XAnimFindServerNoteTrack_270:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea edx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x2c]
	jp XAnimFindServerNoteTrack_280
	jz XAnimFindServerNoteTrack_290
XAnimFindServerNoteTrack_280:
	ucomiss xmm0, [edx+0x28]
	jp XAnimFindServerNoteTrack_300
	jz XAnimFindServerNoteTrack_290
XAnimFindServerNoteTrack_300:
	lea eax, [ebp-0x38]
	mov [esp], eax
	movss xmm0, dword [ebp-0x3c]
	mov ecx, esi
	mov eax, [ebp-0x4c]
	movss [ebp-0x88], xmm3
	call XAnimGetServerNotifyFracSyncTotal
	movss xmm3, dword [ebp-0x88]
	minss xmm0, xmm3
	movaps xmm3, xmm0
	jmp XAnimFindServerNoteTrack_290
XAnimFindServerNoteTrack_130:
	ucomiss xmm2, xmm5
	jp XAnimFindServerNoteTrack_310
	jz XAnimFindServerNoteTrack_110
XAnimFindServerNoteTrack_310:
	movss xmm0, dword [ebp-0x44]
	divss xmm0, xmm2
	jmp XAnimFindServerNoteTrack_320
XAnimFindServerNoteTrack_240:
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jb XAnimFindServerNoteTrack_250
XAnimFindServerNoteTrack_330:
	subss xmm3, xmm2
	add ecx, 0x1
	ucomiss xmm3, xmm2
	jae XAnimFindServerNoteTrack_330
	jmp XAnimFindServerNoteTrack_250
XAnimFindServerNoteTrack_180:
	jnp XAnimFindServerNoteTrack_20
	jmp XAnimFindServerNoteTrack_340
XAnimFindServerNoteTrack_230:
	jnp XAnimFindServerNoteTrack_20
	jmp XAnimFindServerNoteTrack_350
	nop


;XAnimBlend(XAnim_s*, unsigned int, char const*, unsigned int, unsigned int, unsigned int)
XAnimBlend:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, [ebp+0x14]
	mov edi, [ebp+0x18]
	mov edx, [ebp+0xc]
	mov ebx, [ebp+0x8]
	lea eax, [ebx+edx*8]
	lea esi, [eax+0xc]
	mov [ebp-0x1c], esi
	mov [eax+0xc], di
	mov eax, [ebp+0x1c]
	mov [esi+0x4], ax
	mov [esi+0x6], cx
	test edi, edi
	jz XAnimBlend_10
	mov ebx, edx
	xor edx, edx
	movzx ecx, cx
XAnimBlend_20:
	lea eax, [edx+ecx]
	mov esi, [ebp+0x8]
	mov [esi+eax*8+0xe], bx
	add edx, 0x1
	cmp edi, edx
	jnz XAnimBlend_20
XAnimBlend_10:
	mov eax, [ebp-0x1c]
	cmp word [eax], 0x0
	jz XAnimBlend_30
	test byte [eax+0x4], 0x10
	jnz XAnimBlend_40
XAnimBlend_30:
	xor eax, eax
XAnimBlend_120:
	test eax, eax
	jz XAnimBlend_50
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0x2]
	movzx edx, ax
	test ax, ax
	jnz XAnimBlend_60
XAnimBlend_50:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x8]
	test ebx, ebx
	jz XAnimBlend_70
	mov dword [esp+0x4], _cstring_xanimblend
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x10]
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov esi, [ebp+0x10]
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	mov ecx, [ebp+0xc]
	mov [eax+ecx*4], ebx
XAnimBlend_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimBlend_100:
	test byte [ebx+0x4], 0x10
	jz XAnimBlend_80
	mov eax, 0x1
	test eax, eax
	jnz XAnimBlend_90
XAnimBlend_110:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jz XAnimBlend_50
XAnimBlend_60:
	mov ecx, [ebp+0x8]
	lea eax, [ecx+edx*8]
	lea ebx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz XAnimBlend_100
XAnimBlend_80:
	xor eax, eax
	test eax, eax
	jz XAnimBlend_110
XAnimBlend_90:
	mov dword [esp+0x4], _cstring_do_not_nest_addi
	mov dword [esp], 0x2
	call Com_Error
	jmp XAnimBlend_110
XAnimBlend_40:
	mov eax, 0x1
	jmp XAnimBlend_120
	nop


;GetAnimInfo(int)
GetAnimInfo:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	pop ebp
	ret
	nop
	add [eax], al


;XAnimCreate(XAnim_s*, unsigned int, char const*)
XAnimCreate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x20], edx
	mov esi, [ebp+0x10]
	mov ebx, useFastFile
	mov eax, [ebx]
	mov edx, XAnimFindData_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, XAnimFindData_LoadObj
	cmovz edx, eax
	mov [esp], esi
	call edx
	mov edx, eax
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jnz XAnimCreate_10
	test edx, edx
	jz XAnimCreate_20
XAnimCreate_10:
	mov ecx, [ebp-0x20]
	mov ebx, [ebp-0x1c]
	lea eax, [ebx+ecx*8]
	mov word [eax+0xc], 0x0
	mov [eax+0x10], edx
	mov ecx, [ebx+0x8]
	test ecx, ecx
	jz XAnimCreate_30
	mov dword [esp+0x4], _cstring_xanimcreate
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x8]
	mov ecx, [ebp-0x20]
	mov [eax+ecx*4], ebx
XAnimCreate_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCreate_20:
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], _cstring_cannot_find_xani1
	mov dword [ebp+0x8], 0x2
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Error


;XAnimGetTime(XAnimTree_s const*, unsigned int)
XAnimGetTime:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz XAnimGetTime_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimGetTime_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetTime_10
	xor edx, edx
XAnimGetTime_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimGetTime_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call XAnimGetInfoIndex_r
	mov ecx, eax
	test eax, eax
	jnz XAnimGetTime_20
	mov edx, esi
XAnimGetTime_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimGetTime_40
XAnimGetTime_10:
	fldz
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetTime_20:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	fld dword [ecx+g_xAnimInfo+0x18]
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;XAnimSetTime(XAnimTree_s*, unsigned int, float)
XAnimSetTime:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz XAnimSetTime_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimSetTime_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetTime_10
	xor edx, edx
XAnimSetTime_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimSetTime_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call XAnimGetInfoIndex_r
	mov ecx, eax
	test eax, eax
	jnz XAnimSetTime_20
	mov edx, esi
XAnimSetTime_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimSetTime_40
XAnimSetTime_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetTime_20:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	lea edx, [ecx+g_xAnimInfo]
	lea eax, [edx+0x18]
	movss xmm0, dword [ebp+0x10]
	movss [edx+0x18], xmm0
	mov word [eax+0x8], 0x0
	movss [eax+0x4], xmm0
	mov word [eax+0xa], 0x0
	mov word [edx+0x2], 0xffff
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;XAnimFreeList(XAnim_s*)
XAnimFreeList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi]
	test eax, eax
	jz XAnimFreeList_10
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov dword [edi], 0x0
XAnimFreeList_10:
	mov ecx, [edi+0x8]
	test ecx, ecx
	jz XAnimFreeList_20
	mov edx, [edi+0x4]
	test edx, edx
	jz XAnimFreeList_30
	xor ebx, ebx
	mov edx, [edi+0x8]
XAnimFreeList_50:
	lea esi, [ebx*4]
	mov eax, [edx+esi]
	test eax, eax
	jz XAnimFreeList_40
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov eax, [edi+0x8]
	mov dword [esi+eax], 0x0
	mov edx, [edi+0x8]
XAnimFreeList_40:
	add ebx, 0x1
	cmp ebx, [edi+0x4]
	jb XAnimFreeList_50
	mov [esp], edx
	call Hunk_FreeDebugMem
	mov dword [edi+0x8], 0x0
XAnimFreeList_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFreeList_30:
	mov edx, [edi+0x8]
	mov [esp], edx
	call Hunk_FreeDebugMem
	mov dword [edi+0x8], 0x0
	jmp XAnimFreeList_20
	nop
	add [eax], al


;XAnimFreeTree(XAnimTree_s*, void (*)(void*, int))
XAnimFreeTree:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimFreeTree_10
	test esi, esi
	jz XAnimFreeTree_20
XAnimFreeTree_30:
	mov dword [ebp+0xc], 0x8
	mov [ebp+0x8], ebx
	mov ecx, esi
	pop ebx
	pop esi
	pop ebp
	jmp ecx
XAnimFreeTree_10:
	movzx edx, ax
	mov eax, ebx
	call XAnimFreeInfo
	test esi, esi
	jnz XAnimFreeTree_30
XAnimFreeTree_20:
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;XAnimGetAnims(XAnimTree_s const*)
XAnimGetAnims:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;XAnimIsLooped(XAnim_s const*, unsigned int)
XAnimIsLooped:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	shl edx, 0x3
	add edx, [ebp+0x8]
	lea eax, [edx+0xc]
	cmp word [edx+0xc], 0x0
	jz XAnimIsLooped_10
	movzx eax, word [eax+0x4]
	and eax, 0x1
	pop ebp
	ret
XAnimIsLooped_10:
	mov eax, [eax+0x4]
	movzx eax, byte [eax+0x10]
	pop ebp
	ret


;XAnimPrecache(char const*, void* (*)(int))
XAnimPrecache:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, useFastFile
	mov eax, [edi]
	mov esi, XAnimFindData_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, XAnimFindData_LoadObj
	cmovnz eax, esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	mov ebx, eax
	test eax, eax
	jz XAnimPrecache_10
XAnimPrecache_120:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimPrecache_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call XAnimLoadFile
	mov ebx, eax
	test eax, eax
	jz XAnimPrecache_20
XAnimPrecache_60:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], 0x6
	call Hunk_SetDataForFile
	mov [ebx], eax
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimPrecache_20:
	mov dword [esp+0xc], _cstring_void
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_couldnt_
	mov dword [esp], 0x13
	call Com_PrintWarning
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov edx, XAnimFindData_LoadObj
	cmovz esi, edx
	mov dword [esp], _cstring_void
	call esi
	mov esi, eax
	test eax, eax
	jz XAnimPrecache_30
XAnimPrecache_110:
	mov dword [esp], 0x58
	call dword [ebp+0xc]
	mov ebx, eax
	mov dword [esp+0x8], 0x58
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	mov eax, [ebx+0x30]
	mov [ebp-0x1c], eax
	movzx edi, byte [ebx+0x1b]
	test edi, edi
	jg XAnimPrecache_40
XAnimPrecache_90:
	mov esi, [ebx+0x50]
	cmp byte [ebx+0x1c], 0x0
	jnz XAnimPrecache_50
	mov byte [ebx+0x1e], 0x1
	jmp XAnimPrecache_60
XAnimPrecache_50:
	xor edi, edi
XAnimPrecache_70:
	movzx eax, word [esi]
	mov [esp], eax
	call SL_AddRefToString
	add edi, 0x1
	add esi, 0x8
	movzx edx, byte [ebx+0x1c]
	movsx eax, di
	cmp edx, eax
	jg XAnimPrecache_70
	mov byte [ebx+0x1e], 0x1
	jmp XAnimPrecache_60
XAnimPrecache_40:
	xor esi, esi
XAnimPrecache_80:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+esi*2]
	mov [esp], eax
	call SL_AddRefToString
	add esi, 0x1
	cmp edi, esi
	jnz XAnimPrecache_80
	jmp XAnimPrecache_90
XAnimPrecache_30:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_void
	call XAnimLoadFile
	mov esi, eax
	test eax, eax
	jz XAnimPrecache_100
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_void
	mov dword [esp], 0x6
	call Hunk_SetDataForFile
	jmp XAnimPrecache_110
XAnimPrecache_100:
	mov dword [esp+0x8], _cstring_void
	mov dword [esp+0x4], _cstring_cannot_find_xani2
	mov dword [esp], 0x2
	call Com_Error
	jmp XAnimPrecache_120
	nop


;XAnimShutdown()
XAnimShutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_endNotetrackName]
	test eax, eax
	jnz XAnimShutdown_10
	leave
	ret
XAnimShutdown_10:
	mov [esp], eax
	call SL_RemoveRefToString
	mov dword [g_endNotetrackName], 0x0
	leave
	ret
	nop


;XAnimCalcDelta(DObj_s*, unsigned int, float*, float*, unsigned char)
XAnimCalcDelta:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movzx eax, byte [ebp+0x18]
	mov [ebp-0x58], al
	mov edx, [ebp+0x8]
	mov edx, [edx]
	mov [ebp-0x3c], edx
	movzx eax, word [edx+0x4]
	test ax, ax
	jz XAnimCalcDelta_10
	movzx edi, ax
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimCalcDelta_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimCalcDelta_10
	xor edx, edx
XAnimCalcDelta_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimCalcDelta_30
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x3c]
	call XAnimGetInfoIndex_r
	mov edi, eax
	test eax, eax
	jnz XAnimCalcDelta_20
	mov edx, esi
XAnimCalcDelta_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimCalcDelta_40
XAnimCalcDelta_10:
	xor eax, eax
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [edx+0x4], 0x3f800000
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcDelta_20:
	movzx eax, byte [ebp-0x58]
	shl eax, 0x18
	and ebx, 0xffffff
	or ebx, eax
	and ebx, 0xff00ffff
	mov bh, 0x0
	mov bl, 0x1
	lea eax, [ebp-0x30]
	mov [esp], eax
	mov ecx, ebx
	movss xmm0, dword [_float_1_00000000]
	mov edx, edi
	mov eax, [ebp+0x8]
	call XAnimCalcDeltaTree
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x30]
	jp XAnimCalcDelta_50
	jz XAnimCalcDelta_60
XAnimCalcDelta_50:
	ucomiss xmm0, [ebp-0x2c]
	jp XAnimCalcDelta_70
	jnz XAnimCalcDelta_70
XAnimCalcDelta_60:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x3f800000
XAnimCalcDelta_80:
	mov eax, [ebp-0x24]
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcDelta_70:
	mov eax, [ebp-0x30]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	jmp XAnimCalcDelta_80


;XAnimClearTree(XAnimTree_s*)
XAnimClearTree:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx edx, word [eax+0x4]
	test dx, dx
	jnz XAnimClearTree_10
	pop ebp
	ret
XAnimClearTree_10:
	movzx edx, dx
	pop ebp
	jmp XAnimFreeInfo


;XAnimGetLength(XAnim_s const*, unsigned int)
XAnimGetLength:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov edx, [eax+edx*8+0x10]
	movzx eax, word [edx+0xe]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [edx+0x28]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	nop


;XAnimGetWeight(XAnimTree_s const*, unsigned int)
XAnimGetWeight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz XAnimGetWeight_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimGetWeight_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimGetWeight_10
	xor edx, edx
XAnimGetWeight_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimGetWeight_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call XAnimGetInfoIndex_r
	mov ecx, eax
	test eax, eax
	jnz XAnimGetWeight_20
	mov edx, esi
XAnimGetWeight_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimGetWeight_40
XAnimGetWeight_10:
	fldz
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimGetWeight_20:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	fld dword [ecx+g_xAnimInfo+0x2c]
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DObjDisplayAnim(DObj_s const*, char const*)
DObjDisplayAnim:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov eax, [ebp+0x8]
	mov esi, [eax]
	test esi, esi
	jz DObjDisplayAnim_10
	cmp word [esi+0x4], 0x0
	jnz DObjDisplayAnim_20
DObjDisplayAnim_10:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_sno_tree
	mov dword [esp+0x4], 0x800
	lea edi, [ebp-0x81c]
	mov [esp], edi
	call Com_sprintf
	mov [esp+0x4], edi
	mov dword [esp], 0x13
	call Com_Printf
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjDisplayAnim_20:
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_s
	lea ebx, [ebp-0x1c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x800
	lea edi, [ebp-0x81c]
	mov [esp], edi
	call Com_sprintfPos
	movzx edx, word [esi+0x4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x800
	mov [esp], edi
	xor ecx, ecx
	mov eax, esi
	call XAnimDisplay
	mov dword [esp+0xc], _cstring_
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x800
	mov [esp], edi
	call Com_sprintfPos
	mov [esp+0x4], edi
	mov dword [esp], 0x13
	call Com_Printf
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XAnimCreateTree(XAnim_s*, void* (*)(int))
XAnimCreateTree:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x8
	call dword [ebp+0xc]
	mov dword [eax+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [eax], edx
	leave
	ret


;XAnimGetChildAt(XAnim_s const*, unsigned int, unsigned int)
XAnimGetChildAt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	movzx eax, word [eax+edx*8+0x12]
	add eax, [ebp+0x10]
	pop ebp
	ret
	nop


;XAnimCreateAnims(char const*, int, void* (*)(int))
XAnimCreateAnims:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0xc]
	lea eax, [edx*8+0xc]
	mov [esp], eax
	call dword [ebp+0x10]
	mov esi, eax
	mov eax, [ebp+0xc]
	mov [esi+0x4], eax
	cmp byte [g_anim_developer], 0x0
	jnz XAnimCreateAnims_10
XAnimCreateAnims_30:
	mov [esp], esi
	call Hunk_DataOnHunk
	test eax, eax
	jz XAnimCreateAnims_20
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x2
	call Hunk_AddData
XAnimCreateAnims_20:
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCreateAnims_10:
	mov dword [esp+0x4], _cstring_xanimcreateanims
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	mov [esi], ebx
	mov dword [esp+0x4], _cstring_xanimcreateanims
	mov eax, [ebp+0xc]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocDebugMem
	mov [esi+0x8], eax
	jmp XAnimCreateAnims_30


;XAnimGetAbsDelta(XAnim_s const*, unsigned int, float*, float*, float)
XAnimGetAbsDelta:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0xc]
	shl eax, 0x3
	add eax, [ebp+0x8]
	lea edx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz XAnimGetAbsDelta_10
	mov edx, [edx+0x4]
	cmp byte [edx+0x11], 0x0
	jnz XAnimGetAbsDelta_20
XAnimGetAbsDelta_10:
	xor eax, eax
	mov [esi], eax
	mov dword [esi+0x4], 0x3f800000
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
XAnimGetAbsDelta_20:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x4], xmm0
	mov [esp], edx
	call XAnim_CalcDeltaForTime
	movss xmm0, dword [_float_0_00003052]
	movss xmm2, dword [ebp-0x10]
	mulss xmm2, xmm0
	pxor xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, [ebp-0xc]
	addss xmm0, xmm1
	movss xmm3, dword [ebp-0x20]
	addss xmm3, xmm1
	movss xmm4, dword [ebp-0x1c]
	addss xmm4, xmm1
	movss xmm5, dword [ebp-0x18]
	addss xmm5, xmm1
	ucomiss xmm2, xmm1
	jnz XAnimGetAbsDelta_30
	jp XAnimGetAbsDelta_30
	ucomiss xmm0, xmm1
	jp XAnimGetAbsDelta_30
	jz XAnimGetAbsDelta_40
XAnimGetAbsDelta_30:
	movss [esi], xmm2
	movss [esi+0x4], xmm0
XAnimGetAbsDelta_50:
	movss [ebx], xmm3
	movss [ebx+0x4], xmm4
	movss [ebx+0x8], xmm5
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
XAnimGetAbsDelta_40:
	mov dword [esi], 0x0
	mov dword [esi+0x4], 0x3f800000
	jmp XAnimGetAbsDelta_50
	nop


;XAnimGetAnimName(XAnim_s const*, unsigned int)
XAnimGetAnimName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	shl eax, 0x3
	add eax, [ebp+0x8]
	lea edx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz XAnimGetAnimName_10
	mov eax, [edx+0x4]
	mov eax, [eax]
	pop ebp
	ret
XAnimGetAnimName_10:
	mov eax, _cstring_null
	pop ebp
	ret


;XAnimGetRelDelta(XAnim_s const*, unsigned int, float*, float*, float, float)
XAnimGetRelDelta:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov edx, [ebp+0xc]
	shl edx, 0x3
	add edx, [ebp+0x8]
	lea eax, [edx+0xc]
	cmp word [edx+0xc], 0x0
	jnz XAnimGetRelDelta_10
	mov eax, [eax+0x4]
	cmp byte [eax+0x11], 0x0
	jnz XAnimGetRelDelta_20
XAnimGetRelDelta_10:
	xor eax, eax
	mov [esi], eax
	mov dword [esi+0x4], 0x3f800000
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
XAnimGetRelDelta_20:
	pxor xmm3, xmm3
	movss [ebp-0x20], xmm3
	movss [ebp-0x1c], xmm3
	movss [ebp-0x18], xmm3
	movss [ebp-0x14], xmm3
	movss [ebp-0x10], xmm3
	movss [ebp-0xc], xmm3
	lea edx, [ebp-0x20]
	xor ecx, ecx
	movss xmm2, dword [ebp+0x1c]
	movss xmm1, dword [ebp+0x18]
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x38], xmm3
	call XAnimCalcRelDeltaParts
	movss xmm3, dword [ebp-0x38]
	ucomiss xmm3, [ebp-0x20]
	jnz XAnimGetRelDelta_30
	jp XAnimGetRelDelta_30
	ucomiss xmm3, [ebp-0x1c]
	jp XAnimGetRelDelta_30
	jz XAnimGetRelDelta_40
XAnimGetRelDelta_30:
	mov eax, [ebp-0x20]
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x4], eax
XAnimGetRelDelta_50:
	mov eax, [ebp-0x14]
	mov [ebx], eax
	mov eax, [ebp-0x10]
	mov [ebx+0x4], eax
	mov eax, [ebp-0xc]
	mov [ebx+0x8], eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
XAnimGetRelDelta_40:
	mov dword [esi], 0x0
	mov dword [esi+0x4], 0x3f800000
	jmp XAnimGetRelDelta_50


;XAnimHasFinished(XAnimTree_s const*, unsigned int)
XAnimHasFinished:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz XAnimHasFinished_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimHasFinished_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimHasFinished_10
	xor edx, edx
XAnimHasFinished_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimHasFinished_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call XAnimGetInfoIndex_r
	mov ecx, eax
	test eax, eax
	jnz XAnimHasFinished_20
	mov edx, esi
XAnimHasFinished_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimHasFinished_40
XAnimHasFinished_10:
	mov eax, 0x1
XAnimHasFinished_60:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimHasFinished_20:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	lea eax, [ecx+g_xAnimInfo+0x10]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, xmm1
	ja XAnimHasFinished_10
	ucomiss xmm1, [_float_1_00000000]
	jp XAnimHasFinished_50
	jz XAnimHasFinished_10
XAnimHasFinished_50:
	movzx eax, word [edx+0x8]
	cmp ax, [edx+0xa]
	jg XAnimHasFinished_10
	xor eax, eax
	jmp XAnimHasFinished_60
	nop


;XAnimIsPrimitive(XAnim_s*, unsigned int)
XAnimIsPrimitive:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	cmp word [eax+edx*8+0xc], 0x0
	setz al
	movzx eax, al
	pop ebp
	ret
	nop
	add [eax], al


;XAnimSetAnimRate(XAnimTree_s*, unsigned int, float)
XAnimSetAnimRate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz XAnimSetAnimRate_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimSetAnimRate_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetAnimRate_10
	xor edx, edx
XAnimSetAnimRate_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimSetAnimRate_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call XAnimGetInfoIndex_r
	mov ecx, eax
	test eax, eax
	jnz XAnimSetAnimRate_20
	mov edx, esi
XAnimSetAnimRate_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimSetAnimRate_40
XAnimSetAnimRate_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetAnimRate_20:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	movss xmm0, dword [ebp+0x10]
	movss [ecx+g_xAnimInfo+0x30], xmm0
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XAnimCalcAbsDelta(DObj_s*, unsigned int, float*, float*)
XAnimCalcAbsDelta:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x3c], eax
	movzx eax, word [eax+0x4]
	test ax, ax
	jz XAnimCalcAbsDelta_10
	movzx edi, ax
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimCalcAbsDelta_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimCalcAbsDelta_10
	xor edx, edx
XAnimCalcAbsDelta_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz XAnimCalcAbsDelta_30
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x3c]
	call XAnimGetInfoIndex_r
	mov edi, eax
	test eax, eax
	jnz XAnimCalcAbsDelta_20
	mov edx, esi
XAnimCalcAbsDelta_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimCalcAbsDelta_40
XAnimCalcAbsDelta_10:
	xor eax, eax
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [edx+0x4], 0x3f800000
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcAbsDelta_20:
	and ebx, 0xffffff
	or ebx, 0x1000000
	and ebx, 0xff00ffff
	or ebx, 0x10000
	mov bh, 0x0
	mov bl, 0x1
	lea eax, [ebp-0x30]
	mov [esp], eax
	mov ecx, ebx
	movss xmm0, dword [_float_1_00000000]
	mov edx, edi
	mov eax, [ebp+0x8]
	call XAnimCalcDeltaTree
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x30]
	jnz XAnimCalcAbsDelta_50
	jp XAnimCalcAbsDelta_50
	ucomiss xmm0, [ebp-0x2c]
	jp XAnimCalcAbsDelta_50
	jz XAnimCalcAbsDelta_60
XAnimCalcAbsDelta_50:
	mov eax, [ebp-0x30]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
XAnimCalcAbsDelta_70:
	mov eax, [ebp-0x24]
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcAbsDelta_60:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x3f800000
	jmp XAnimCalcAbsDelta_70


;XAnimResetAnimMap(DObj_s const*, unsigned int)
XAnimResetAnimMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4ec
	mov eax, [ebp+0x8]
	movzx ebx, byte [eax+0x9]
	movzx edx, bl
	mov [ebp-0x4dc], edx
	mov eax, [eax+0x60]
	mov [ebp-0x4d8], eax
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0x4b8]
	mov [esp], ecx
	call memset
	test bl, bl
	jz XAnimResetAnimMap_10
	xor esi, esi
	mov dword [ebp-0x4d4], 0x0
	mov edx, [ebp-0x4d4]
XAnimResetAnimMap_60:
	mov ecx, [ebp-0x4d8]
	mov eax, [ecx+edx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x4d0], edx
	movzx eax, byte [eax+0x4]
	movzx edi, al
	test al, al
	jz XAnimResetAnimMap_20
	xor ebx, ebx
XAnimResetAnimMap_50:
	mov eax, [ebp-0x4d0]
	movzx ecx, word [eax+ebx*2]
	movzx eax, cl
	lea edx, [ebp+eax*4-0x4b8]
	cmp word [edx], 0x0
	jz XAnimResetAnimMap_30
XAnimResetAnimMap_40:
	add eax, 0x1
	and eax, 0xff
	lea edx, [ebp+eax*4-0x4b8]
	cmp word [edx], 0x0
	jnz XAnimResetAnimMap_40
XAnimResetAnimMap_30:
	mov [edx+0x2], si
	mov [edx], cx
	add ebx, 0x1
	add esi, 0x1
	cmp edi, ebx
	ja XAnimResetAnimMap_50
XAnimResetAnimMap_20:
	add dword [ebp-0x4d4], 0x1
	mov edx, [ebp-0x4d4]
	cmp [ebp-0x4dc], edx
	ja XAnimResetAnimMap_60
XAnimResetAnimMap_10:
	mov eax, [ebp+0xc]
	shl eax, 0x3
	shl dword [ebp+0xc], 0x6
	sub [ebp+0xc], eax
	mov ecx, [ebp+0xc]
	add ecx, g_xAnimInfo
	mov [ebp-0x4cc], ecx
	cmp word [ecx+0x12], 0x0
	jnz XAnimResetAnimMap_70
	movzx eax, word [ecx+0xc]
	movzx ebx, ax
	test ax, ax
	jnz XAnimResetAnimMap_80
XAnimResetAnimMap_90:
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimResetAnimMap_80:
	mov edx, ebx
	lea eax, [ebp-0x4b8]
	call XAnimResetAnimMap_r
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimResetAnimMap_80
	jmp XAnimResetAnimMap_90
XAnimResetAnimMap_70:
	movzx eax, word [ecx+0x12]
	mov [ebp-0x4c8], eax
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x4c4], eax
	mov ecx, [ebp-0x4cc]
	mov edx, [ecx+0x14]
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	movzx eax, byte [edx+0x1b]
	movzx ecx, al
	mov [ebp-0x4c0], ecx
	mov edx, [edx+0x30]
	mov [ebp-0x4bc], edx
	test al, al
	jz XAnimResetAnimMap_100
	xor edi, edi
XAnimResetAnimMap_140:
	mov eax, [ebp-0x4bc]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	lea ebx, [ebp+ecx*4-0x4b8]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz XAnimResetAnimMap_110
XAnimResetAnimMap_130:
	cmp esi, edx
	jz XAnimResetAnimMap_120
	lea eax, [ecx+0x1]
	movzx ecx, al
	lea ebx, [ebp+ecx*4-0x4b8]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jnz XAnimResetAnimMap_130
XAnimResetAnimMap_110:
	mov byte [ebp+edi-0x9b], 0x7f
XAnimResetAnimMap_150:
	add edi, 0x1
	cmp [ebp-0x4c0], edi
	ja XAnimResetAnimMap_140
XAnimResetAnimMap_100:
	movzx edx, byte [ebp-0x4c0]
	mov [ebp-0x9c], dl
	mov dword [esp+0xc], 0xb
	mov eax, [ebp-0x4c0]
	add eax, 0x11
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0xac]
	mov [esp], ecx
	call SL_GetStringOfSize
	mov edx, [ebp-0x4cc]
	mov [edx+0x12], ax
	mov ecx, [ebp-0x4c4]
	movzx eax, byte [ecx+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c8]
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimResetAnimMap_120:
	movzx ecx, word [ebx+0x2]
	mov [ebp+edi-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	jmp XAnimResetAnimMap_150
	nop
	add [eax], al


;DObjInitServerTime(DObj_s*, float)
DObjInitServerTime:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	test eax, eax
	jz DObjInitServerTime_10
	cmp word [eax+0x4], 0x0
	jnz DObjInitServerTime_20
DObjInitServerTime_10:
	add esp, 0x44
	pop ebx
	pop ebp
	ret
DObjInitServerTime_20:
	mov dword [ebp-0x2c], 0x0
	mov word [ebp-0x24], 0x0
	lea ecx, [ebp-0x2c]
	movzx edx, word [eax+0x4]
	lea eax, [ebp-0x9]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	movss xmm0, dword [ebp+0xc]
	mov eax, ebx
	call XAnimUpdateOldTime
	add esp, 0x44
	pop ebx
	pop ebp
	ret
	nop


;XAnimCloneAnimTree(XAnimTree_s const*, XAnimTree_s*)
XAnimCloneAnimTree:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimCloneAnimTree_10
XAnimCloneAnimTree_30:
	movzx eax, word [esi+0x4]
	test ax, ax
	jnz XAnimCloneAnimTree_20
	pop ebx
	pop esi
	pop ebp
	ret
XAnimCloneAnimTree_20:
	movzx ecx, ax
	mov dword [ebp+0x8], 0x0
	mov edx, ebx
	mov eax, esi
	pop ebx
	pop esi
	pop ebp
	jmp XAnimCloneAnimTree_r
XAnimCloneAnimTree_10:
	movzx edx, ax
	mov eax, ebx
	call XAnimFreeInfo
	jmp XAnimCloneAnimTree_30
	nop


;XAnimGetLengthMsec(XAnim_s const*, unsigned int)
XAnimGetLengthMsec:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov edx, [eax+edx*8+0x10]
	movzx eax, word [edx+0xe]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [edx+0x28]
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	pop ebp
	ret


;XAnimSetGoalWeight(DObj_s*, unsigned int, float, float, float, unsigned int, unsigned int, int)
XAnimSetGoalWeight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x24], edx
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x28], xmm0
	movss xmm1, dword [ebp+0x14]
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [ebp+0x18]
	movss [ebp-0x30], xmm0
	mov eax, [ebp+0x1c]
	mov [ebp-0x34], eax
	mov edx, [ebp+0x20]
	mov [ebp-0x38], edx
	mov eax, [ebp+0x24]
	mov [ebp-0x3c], eax
	movss xmm0, dword [ebp-0x28]
	cmpss xmm0, [_float_0_00100000], 0x5
	movss xmm1, dword [ebp-0x28]
	andps xmm1, xmm0
	pxor xmm0, xmm0
	orps xmm1, xmm0
	movss [ebp-0x28], xmm1
	mov eax, [ebp-0x20]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	movzx eax, word [eax+0x4]
	test ax, ax
	jz XAnimSetGoalWeight_10
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x24], eax
	jz XAnimSetGoalWeight_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetGoalWeight_30
	xor edx, edx
XAnimSetGoalWeight_50:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz XAnimSetGoalWeight_40
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x1c]
	call XAnimGetInfoIndex_r
	mov esi, eax
	test eax, eax
	jnz XAnimSetGoalWeight_20
	mov edx, edi
XAnimSetGoalWeight_40:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimSetGoalWeight_50
XAnimSetGoalWeight_30:
	movss xmm0, dword [ebp-0x28]
	ucomiss xmm0, [_float_0_000000001]
	jnz XAnimSetGoalWeight_60
XAnimSetGoalWeight_70:
	jp XAnimSetGoalWeight_60
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetGoalWeight_10:
	movaps xmm0, xmm1
	ucomiss xmm0, [_float_0_000000001]
	jz XAnimSetGoalWeight_70
XAnimSetGoalWeight_60:
	xor ecx, ecx
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x20]
	call XAnimAllocInfoIndex
	mov esi, eax
	lea eax, [eax*8]
	mov ebx, esi
	shl ebx, 0x6
	sub ebx, eax
	lea edx, [ebx+g_xAnimInfo]
	lea edi, [edx+0x18]
	cld
	mov ecx, 0x8
	xor eax, eax
	rep stosd
	mov word [edx+0x4], 0x0
	mov word [edx+0x2], 0xffff
	mov word [ebx+g_xAnimInfo], 0x0
	mov word [edx+0x6], 0x0
XAnimSetGoalWeight_80:
	mov eax, [ebp-0x38]
	mov [ebp+0x8], eax
	mov ecx, [ebp-0x34]
	movss xmm2, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x28]
	mov edx, esi
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp XAnimSetGoalWeightNode
XAnimSetGoalWeight_20:
	mov eax, [ebp-0x3c]
	test eax, eax
	jz XAnimSetGoalWeight_80
	movss xmm0, dword [ebp-0x2c]
	mov edx, esi
	mov eax, [ebp-0x1c]
	call XAnimRestart
	mov esi, eax
	jmp XAnimSetGoalWeight_80
	nop


;XAnimGetNumChildren(XAnim_s const*, unsigned int)
XAnimGetNumChildren:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	movzx eax, word [edx+eax*8+0xc]
	pop ebp
	ret


;XAnimSetupSyncNodes(XAnim_s*)
XAnimSetupSyncNodes:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	xor edx, edx
	pop ebp
	jmp XAnimSetupSyncNodes_r


;DObjUpdateClientInfo(DObj_s*, float, unsigned char)
DObjUpdateClientInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	movzx edi, byte [ebp+0x10]
	mov dword [g_notifyListSize], 0x0
	mov ebx, [esi]
	test ebx, ebx
	jz DObjUpdateClientInfo_10
	cmp word [ebx+0x4], 0x0
	jnz DObjUpdateClientInfo_20
DObjUpdateClientInfo_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjUpdateClientInfo_20:
	mov dword [ebp-0x3c], 0x0
	mov word [ebp-0x34], 0x0
	lea ecx, [ebp-0x3c]
	movzx edx, word [ebx+0x4]
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	movss xmm0, dword [ebp+0xc]
	mov eax, esi
	call XAnimUpdateOldTime
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz DObjUpdateClientInfo_10
	mov edx, edi
	movzx ecx, dl
	movzx edx, ax
	movss xmm0, dword [ebp+0xc]
	mov eax, esi
	call XAnimUpdateTimeAndNotetrack
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DObjUpdateServerInfo(DObj_s*, float, int)
DObjUpdateServerInfo:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	mov ebx, [esi]
	test ebx, ebx
	jz DObjUpdateServerInfo_10
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz DObjUpdateServerInfo_10
	mov edx, [ebp+0x10]
	test edx, edx
	jz DObjUpdateServerInfo_20
	movzx edx, ax
	movaps xmm0, xmm1
	mov eax, esi
	movss [ebp-0x18], xmm1
	call XAnimFindServerNoteTrack
	movss xmm1, dword [ebp-0x18]
	ucomiss xmm0, [_float_1_00000000]
	jp DObjUpdateServerInfo_30
	jz DObjUpdateServerInfo_40
DObjUpdateServerInfo_30:
	mulss xmm0, xmm1
	addss xmm0, [_float_0_00100000]
	ucomiss xmm1, xmm0
	jae DObjUpdateServerInfo_50
DObjUpdateServerInfo_40:
	movzx edx, word [ebx+0x4]
	mov ecx, 0x1
	movaps xmm0, xmm1
	mov eax, esi
	call XAnimUpdateTimeAndNotetrack
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
DObjUpdateServerInfo_20:
	movzx edx, ax
	xor ecx, ecx
	movaps xmm0, xmm1
	mov eax, esi
	call XAnimUpdateTimeAndNotetrack
	xor eax, eax
DObjUpdateServerInfo_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
DObjUpdateServerInfo_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
DObjUpdateServerInfo_50:
	movzx edx, word [ebx+0x4]
	mov ecx, 0x1
	mov eax, esi
	call XAnimUpdateTimeAndNotetrack
	mov eax, 0x1
	jmp DObjUpdateServerInfo_60
	add [eax], al


;XAnimGetAnimTreeSize(XAnim_s const*)
XAnimGetAnimTreeSize:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop


;XAnimNotetrackExists(XAnim_s const*, unsigned int, unsigned int)
XAnimNotetrackExists:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov eax, [eax+edx*8+0x10]
	mov edx, [eax+0x50]
	test edx, edx
	jz XAnimNotetrackExists_10
	movzx ebx, byte [eax+0x1c]
	test ebx, ebx
	jle XAnimNotetrackExists_10
	movzx eax, word [edx]
	cmp esi, eax
	jz XAnimNotetrackExists_20
	lea ecx, [edx+0x8]
	xor edx, edx
XAnimNotetrackExists_30:
	add edx, 0x1
	cmp edx, ebx
	jz XAnimNotetrackExists_10
	movzx eax, word [ecx]
	add ecx, 0x8
	cmp esi, eax
	jnz XAnimNotetrackExists_30
XAnimNotetrackExists_20:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
XAnimNotetrackExists_10:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;XAnimGetAnimDebugName(XAnim_s const*, unsigned int)
XAnimGetAnimDebugName:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea edx, [eax+ecx*8]
	lea esi, [edx+0xc]
	mov eax, [eax+0x8]
	test eax, eax
	jz XAnimGetAnimDebugName_10
	mov ebx, [eax+ecx*4]
	cmp word [edx+0xc], 0x0
	jnz XAnimGetAnimDebugName_20
	mov edx, [esi+0x4]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz XAnimGetAnimDebugName_30
	movzx eax, byte [edx+0x1e]
XAnimGetAnimDebugName_50:
	test eax, eax
	jz XAnimGetAnimDebugName_20
	mov [ebp+0xc], ebx
	mov dword [ebp+0x8], _cstring_3s_missing
XAnimGetAnimDebugName_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp va
XAnimGetAnimDebugName_10:
	cmp word [edx+0xc], 0x0
	jnz XAnimGetAnimDebugName_40
	mov eax, [esi+0x4]
	mov ebx, [eax]
XAnimGetAnimDebugName_20:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
XAnimGetAnimDebugName_30:
	mov eax, [edx]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call DB_IsXAssetDefault
	movzx eax, al
	jmp XAnimGetAnimDebugName_50
XAnimGetAnimDebugName_40:
	mov [ebp+0xc], ecx
	mov dword [ebp+0x8], _cstring_i
	jmp XAnimGetAnimDebugName_60


;XAnimSetGoalWeightKnob(DObj_s*, unsigned int, float, float, float, unsigned int, int)
XAnimSetGoalWeightKnob:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov [ebp-0x24], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x28], edx
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x2c], xmm0
	movss xmm1, dword [ebp+0x14]
	movss [ebp-0x30], xmm1
	movss xmm2, dword [ebp+0x18]
	movss [ebp-0x34], xmm2
	mov eax, [ebp+0x1c]
	mov [ebp-0x38], eax
	mov edx, [ebp+0x20]
	mov [ebp-0x3c], edx
	cmpss xmm0, [_float_0_00100000], 0x5
	movss xmm1, dword [ebp-0x2c]
	andps xmm1, xmm0
	pxor xmm0, xmm0
	orps xmm1, xmm0
	movss [ebp-0x2c], xmm1
	mov eax, [ebp-0x24]
	mov eax, [eax]
	mov [ebp-0x20], eax
	movzx eax, word [eax+0x4]
	test ax, ax
	jz XAnimSetGoalWeightKnob_10
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x28], eax
	jz XAnimSetGoalWeightKnob_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jnz XAnimSetGoalWeightKnob_30
XAnimSetGoalWeightKnob_10:
	xor ecx, ecx
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x24]
	call XAnimAllocInfoIndex
	mov esi, eax
	lea eax, [eax*8]
	mov ebx, esi
	shl ebx, 0x6
	sub ebx, eax
	lea edx, [ebx+g_xAnimInfo]
	lea edi, [edx+0x18]
	cld
	mov ecx, 0x8
	xor eax, eax
	rep stosd
	mov word [edx+0x4], 0x0
	mov word [edx+0x2], 0xffff
	mov word [ebx+g_xAnimInfo], 0x0
	mov word [edx+0x6], 0x0
XAnimSetGoalWeightKnob_210:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xe]
	movzx edx, ax
	test ax, ax
	jz XAnimSetGoalWeightKnob_40
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xc]
XAnimSetGoalWeightKnob_170:
	test ebx, ebx
	jz XAnimSetGoalWeightKnob_50
	mov ecx, ebx
	pxor xmm5, xmm5
	movaps xmm3, xmm5
	movss xmm4, dword [_data16_7fffffff]
	jmp XAnimSetGoalWeightKnob_60
XAnimSetGoalWeightKnob_80:
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm2
	orps xmm3, xmm1
	movzx eax, word [eax+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetGoalWeightKnob_70
XAnimSetGoalWeightKnob_60:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	movss xmm2, dword [eax+0x2c]
	cmp esi, ecx
	jnz XAnimSetGoalWeightKnob_80
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm2
	movaps xmm2, xmm0
	andps xmm2, xmm4
	jmp XAnimSetGoalWeightKnob_80
XAnimSetGoalWeightKnob_50:
	pxor xmm5, xmm5
	movaps xmm3, xmm5
XAnimSetGoalWeightKnob_70:
	mulss xmm3, [ebp-0x30]
	movss [ebp-0x1c], xmm3
	test ebx, ebx
	jz XAnimSetGoalWeightKnob_90
	ucomiss xmm3, xmm5
	jp XAnimSetGoalWeightKnob_100
	jz XAnimSetGoalWeightKnob_110
XAnimSetGoalWeightKnob_100:
	cmp esi, ebx
	jz XAnimSetGoalWeightKnob_120
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea edi, [eax+g_xAnimInfo]
	lea eax, [edi+0x18]
	pxor xmm5, xmm5
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimSetGoalWeightKnob_130
	jp XAnimSetGoalWeightKnob_130
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	ucomiss xmm0, xmm5
	jb XAnimSetGoalWeightKnob_140
XAnimSetGoalWeightKnob_180:
	movss [eax+0xc], xmm1
	mov dword [eax+0x10], 0x0
	movzx eax, word [edi+0x4]
	test ax, ax
	jnz XAnimSetGoalWeightKnob_150
XAnimSetGoalWeightKnob_160:
	mov word [edi+0x2], 0xffff
XAnimSetGoalWeightKnob_120:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimSetGoalWeightKnob_100
XAnimSetGoalWeightKnob_90:
	mov dword [ebp+0x8], 0x0
	mov ecx, [ebp-0x38]
	movss xmm2, dword [ebp-0x34]
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x2c]
	mov edx, esi
	mov eax, [ebp-0x20]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp XAnimSetGoalWeightNode
XAnimSetGoalWeightKnob_130:
	movss xmm1, dword [ebp-0x1c]
	movss [eax+0xc], xmm1
	mov dword [eax+0x10], 0x0
	movzx eax, word [edi+0x4]
	test ax, ax
	jz XAnimSetGoalWeightKnob_160
XAnimSetGoalWeightKnob_150:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [edi+0x4], 0x0
	jmp XAnimSetGoalWeightKnob_160
XAnimSetGoalWeightKnob_40:
	mov eax, [ebp-0x20]
	movzx ebx, word [eax+0x4]
	jmp XAnimSetGoalWeightKnob_170
XAnimSetGoalWeightKnob_140:
	movss xmm1, dword [ebp-0x1c]
	jmp XAnimSetGoalWeightKnob_180
XAnimSetGoalWeightKnob_30:
	xor edx, edx
XAnimSetGoalWeightKnob_200:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz XAnimSetGoalWeightKnob_190
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x20]
	call XAnimGetInfoIndex_r
	mov esi, eax
	test eax, eax
	jnz XAnimSetGoalWeightKnob_20
	mov edx, edi
XAnimSetGoalWeightKnob_190:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimSetGoalWeightKnob_200
	jmp XAnimSetGoalWeightKnob_10
XAnimSetGoalWeightKnob_20:
	mov edx, [ebp-0x3c]
	test edx, edx
	jz XAnimSetGoalWeightKnob_210
	movss xmm0, dword [ebp-0x30]
	mov edx, esi
	mov eax, [ebp-0x20]
	call XAnimRestart
	mov esi, eax
	jmp XAnimSetGoalWeightKnob_210
XAnimSetGoalWeightKnob_110:
	cmp esi, ebx
	jz XAnimSetGoalWeightKnob_220
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea edi, [eax+g_xAnimInfo]
	lea eax, [edi+0x18]
	pxor xmm5, xmm5
	ucomiss xmm5, [eax+0x10]
	jp XAnimSetGoalWeightKnob_230
	jz XAnimSetGoalWeightKnob_240
XAnimSetGoalWeightKnob_230:
	movss xmm2, dword [ebp-0x1c]
	movss [eax+0xc], xmm2
XAnimSetGoalWeightKnob_260:
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
	movzx eax, word [edi+0x4]
	test ax, ax
	jz XAnimSetGoalWeightKnob_250
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [edi+0x4], 0x0
XAnimSetGoalWeightKnob_250:
	mov word [edi+0x2], 0xffff
XAnimSetGoalWeightKnob_220:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimSetGoalWeightKnob_110
	jmp XAnimSetGoalWeightKnob_90
XAnimSetGoalWeightKnob_240:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x1c]
	subss xmm1, xmm0
	cmpss xmm5, xmm1, 0x2
	movaps xmm1, xmm5
	andps xmm0, xmm5
	movss xmm2, dword [ebp-0x1c]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimSetGoalWeightKnob_260
	nop


;DObjGetClientNotifyList(XAnimNotify_s**)
DObjGetClientNotifyList:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], g_notifyList
	mov eax, [g_notifyListSize]
	pop ebp
	ret
	nop


;XAnimClearTreeGoalWeights(XAnimTree_s*, unsigned int, float)
XAnimClearTreeGoalWeights:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	test ax, ax
	jz XAnimClearTreeGoalWeights_10
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimClearTreeGoalWeights_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimClearTreeGoalWeights_10
	xor edx, edx
XAnimClearTreeGoalWeights_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz XAnimClearTreeGoalWeights_30
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call XAnimGetInfoIndex_r
	mov esi, eax
	test eax, eax
	jnz XAnimClearTreeGoalWeights_20
	mov edx, edi
XAnimClearTreeGoalWeights_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimClearTreeGoalWeights_40
XAnimClearTreeGoalWeights_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimClearTreeGoalWeights_20:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	movss xmm0, dword [ebp+0x10]
	movss [eax+0xc], xmm0
	pxor xmm0, xmm0
	movss [eax+0x10], xmm0
	movss xmm1, dword [ebp+0x10]
	ucomiss xmm1, xmm0
	jnz XAnimClearTreeGoalWeights_50
	jp XAnimClearTreeGoalWeights_50
	movss [eax+0x14], xmm0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeights_50:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimClearTreeGoalWeights_60
XAnimClearTreeGoalWeights_80:
	mov word [ebx+0x2], 0xffff
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimClearTreeGoalWeights_10
	xor ecx, ecx
XAnimClearTreeGoalWeights_70:
	lea eax, [edx*8]
	mov ebx, edx
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0x10]
	cmp ecx, eax
	setnz cl
	movzx ecx, cl
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	call XAnimClearTreeGoalWeightsInternal
	movzx ecx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimClearTreeGoalWeights_70
	jmp XAnimClearTreeGoalWeights_10
XAnimClearTreeGoalWeights_60:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	jmp XAnimClearTreeGoalWeights_80
	nop
	add [eax], al


;XAnimGetAnimTreeDebugName(XAnim_s const*)
XAnimGetAnimTreeDebugName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;XAnimSetGoalWeightKnobAll(DObj_s*, unsigned int, unsigned int, float, float, float, unsigned int, int)
XAnimSetGoalWeightKnobAll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0x24]
	mov [esp+0x18], eax
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call XAnimSetGoalWeightKnob
	mov [ebp-0x24], eax
	mov ebx, [ebx]
	mov [ebp-0x20], ebx
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz XAnimSetGoalWeightKnobAll_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimSetGoalWeightKnobAll_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetGoalWeightKnobAll_10
	xor edx, edx
XAnimSetGoalWeightKnobAll_40:
	lea eax, [ecx*8]
	mov esi, ecx
	shl esi, 0x6
	sub esi, eax
	movzx edi, word [esi+g_xAnimInfo+0x10]
	cmp edx, edi
	jz XAnimSetGoalWeightKnobAll_30
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x20]
	call XAnimGetInfoIndex_r
	mov ecx, eax
	test eax, eax
	jnz XAnimSetGoalWeightKnobAll_20
	mov edx, edi
XAnimSetGoalWeightKnobAll_30:
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimSetGoalWeightKnobAll_40
XAnimSetGoalWeightKnobAll_10:
	xor ecx, ecx
XAnimSetGoalWeightKnobAll_20:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	movzx eax, word [ecx+g_xAnimInfo+0xe]
	movzx edi, ax
	test ax, ax
	jz XAnimSetGoalWeightKnobAll_50
XAnimSetGoalWeightKnobAll_200:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp [ebp+0x10], eax
	jz XAnimSetGoalWeightKnobAll_60
	mov ebx, [ebp+0x24]
	test ebx, ebx
	jnz XAnimSetGoalWeightKnobAll_70
XAnimSetGoalWeightKnobAll_240:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xe]
	movzx edx, ax
	test ax, ax
	jz XAnimSetGoalWeightKnobAll_80
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xc]
XAnimSetGoalWeightKnobAll_230:
	test ebx, ebx
	jz XAnimSetGoalWeightKnobAll_90
	mov ecx, ebx
	pxor xmm5, xmm5
	movaps xmm3, xmm5
	movss xmm6, dword [_float_1_00000000]
	movss xmm4, dword [_data16_7fffffff]
	jmp XAnimSetGoalWeightKnobAll_100
XAnimSetGoalWeightKnobAll_120:
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm2
	orps xmm3, xmm1
	movzx eax, word [eax+0xa]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetGoalWeightKnobAll_110
XAnimSetGoalWeightKnobAll_100:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	movss xmm2, dword [eax+0x2c]
	cmp edi, ecx
	jnz XAnimSetGoalWeightKnobAll_120
	movaps xmm0, xmm6
	subss xmm0, xmm2
	movaps xmm2, xmm0
	andps xmm2, xmm4
	jmp XAnimSetGoalWeightKnobAll_120
XAnimSetGoalWeightKnobAll_90:
	pxor xmm5, xmm5
	movaps xmm3, xmm5
XAnimSetGoalWeightKnobAll_110:
	mulss xmm3, [ebp+0x18]
	movss [ebp-0x1c], xmm3
	test ebx, ebx
	jz XAnimSetGoalWeightKnobAll_130
	ucomiss xmm3, xmm5
	jp XAnimSetGoalWeightKnobAll_140
	jz XAnimSetGoalWeightKnobAll_150
XAnimSetGoalWeightKnobAll_140:
	cmp edi, ebx
	jz XAnimSetGoalWeightKnobAll_160
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	lea eax, [esi+0x18]
	pxor xmm5, xmm5
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz XAnimSetGoalWeightKnobAll_170
	jp XAnimSetGoalWeightKnobAll_170
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	ucomiss xmm0, xmm5
	jb XAnimSetGoalWeightKnobAll_180
XAnimSetGoalWeightKnobAll_210:
	movss [eax+0xc], xmm1
	mov dword [eax+0x10], 0x0
	movzx eax, word [esi+0x4]
	test ax, ax
	jnz XAnimSetGoalWeightKnobAll_190
XAnimSetGoalWeightKnobAll_220:
	mov word [esi+0x2], 0xffff
XAnimSetGoalWeightKnobAll_160:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimSetGoalWeightKnobAll_140
XAnimSetGoalWeightKnobAll_130:
	mov dword [esp], 0x0
	xor ecx, ecx
	movss xmm2, dword [_float_1_00000000]
	movss xmm1, dword [ebp+0x18]
	movaps xmm0, xmm2
	mov edx, edi
	mov eax, [ebp-0x20]
	call XAnimSetGoalWeightNode
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xe]
	movzx edi, ax
	test ax, ax
	jnz XAnimSetGoalWeightKnobAll_200
XAnimSetGoalWeightKnobAll_50:
	mov dword [ebp-0x24], 0x1
XAnimSetGoalWeightKnobAll_60:
	mov eax, [ebp-0x24]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetGoalWeightKnobAll_180:
	movss xmm1, dword [ebp-0x1c]
	jmp XAnimSetGoalWeightKnobAll_210
XAnimSetGoalWeightKnobAll_170:
	movss xmm1, dword [ebp-0x1c]
	movss [eax+0xc], xmm1
	mov dword [eax+0x10], 0x0
	movzx eax, word [esi+0x4]
	test ax, ax
	jz XAnimSetGoalWeightKnobAll_220
XAnimSetGoalWeightKnobAll_190:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [esi+0x4], 0x0
	jmp XAnimSetGoalWeightKnobAll_220
XAnimSetGoalWeightKnobAll_80:
	mov eax, [ebp-0x20]
	movzx ebx, word [eax+0x4]
	jmp XAnimSetGoalWeightKnobAll_230
XAnimSetGoalWeightKnobAll_70:
	movss xmm0, dword [ebp+0x18]
	mov edx, edi
	mov eax, [ebp-0x20]
	call XAnimRestart
	mov edi, eax
	jmp XAnimSetGoalWeightKnobAll_240
XAnimSetGoalWeightKnobAll_150:
	cmp edi, ebx
	jz XAnimSetGoalWeightKnobAll_250
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	lea eax, [esi+0x18]
	pxor xmm5, xmm5
	ucomiss xmm5, [eax+0x10]
	jp XAnimSetGoalWeightKnobAll_260
	jz XAnimSetGoalWeightKnobAll_270
XAnimSetGoalWeightKnobAll_260:
	movss xmm2, dword [ebp-0x1c]
	movss [eax+0xc], xmm2
XAnimSetGoalWeightKnobAll_290:
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
	movzx eax, word [esi+0x4]
	test ax, ax
	jz XAnimSetGoalWeightKnobAll_280
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [esi+0x4], 0x0
XAnimSetGoalWeightKnobAll_280:
	mov word [esi+0x2], 0xffff
XAnimSetGoalWeightKnobAll_250:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz XAnimSetGoalWeightKnobAll_150
	jmp XAnimSetGoalWeightKnobAll_130
XAnimSetGoalWeightKnobAll_270:
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x1c]
	subss xmm1, xmm0
	cmpss xmm5, xmm1, 0x2
	movaps xmm1, xmm5
	andps xmm0, xmm5
	movss xmm2, dword [ebp-0x1c]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [eax+0xc], xmm1
	jmp XAnimSetGoalWeightKnobAll_290
	nop


;XAnimSetCompleteGoalWeight(DObj_s*, unsigned int, float, float, float, unsigned int, unsigned int, int)
XAnimSetCompleteGoalWeight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movss xmm0, dword [ebp+0x10]
	cmpss xmm0, [_float_0_00100000], 0x5
	movss xmm1, dword [ebp+0x10]
	andps xmm1, xmm0
	pxor xmm0, xmm0
	orps xmm1, xmm0
	movss [ebp+0x10], xmm1
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	movzx eax, word [eax+0x4]
	test ax, ax
	jz XAnimSetCompleteGoalWeight_10
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz XAnimSetCompleteGoalWeight_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimSetCompleteGoalWeight_10
	xor edx, edx
XAnimSetCompleteGoalWeight_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz XAnimSetCompleteGoalWeight_30
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x1c]
	call XAnimGetInfoIndex_r
	mov esi, eax
	test eax, eax
	jnz XAnimSetCompleteGoalWeight_20
	mov edx, edi
XAnimSetCompleteGoalWeight_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimSetCompleteGoalWeight_40
XAnimSetCompleteGoalWeight_10:
	xor ecx, ecx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call XAnimAllocInfoIndex
	mov esi, eax
	lea eax, [eax*8]
	mov ebx, esi
	shl ebx, 0x6
	sub ebx, eax
	lea edx, [ebx+g_xAnimInfo]
	lea edi, [edx+0x18]
	cld
	mov ecx, 0x8
	xor eax, eax
	rep stosd
	mov word [edx+0x4], 0x0
	mov word [edx+0x2], 0xffff
	mov word [ebx+g_xAnimInfo], 0x0
	mov word [edx+0x6], 0x0
XAnimSetCompleteGoalWeight_80:
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, [ebp+0x1c]
	movss xmm2, dword [ebp+0x18]
	movss xmm1, dword [ebp+0x14]
	movss xmm0, dword [ebp+0x10]
	mov edx, esi
	mov eax, [ebp-0x1c]
	call XAnimSetGoalWeightNode
	mov ebx, eax
XAnimSetCompleteGoalWeight_60:
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xe]
	movzx esi, ax
	test ax, ax
	jz XAnimSetCompleteGoalWeight_50
XAnimSetCompleteGoalWeight_70:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+g_xAnimInfo+0x28]
	jnz XAnimSetCompleteGoalWeight_60
	jp XAnimSetCompleteGoalWeight_60
	mov dword [esp], 0x0
	xor ecx, ecx
	movss xmm2, dword [_float_1_00000000]
	movss xmm1, dword [ebp+0x14]
	movaps xmm0, xmm2
	mov edx, esi
	mov eax, [ebp-0x1c]
	call XAnimSetGoalWeightNode
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xe]
	movzx esi, ax
	test ax, ax
	jnz XAnimSetCompleteGoalWeight_70
XAnimSetCompleteGoalWeight_50:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimSetCompleteGoalWeight_20:
	mov eax, [ebp+0x24]
	test eax, eax
	jz XAnimSetCompleteGoalWeight_80
	movss xmm0, dword [ebp+0x14]
	mov edx, esi
	mov eax, [ebp-0x1c]
	call XAnimRestart
	mov esi, eax
	jmp XAnimSetCompleteGoalWeight_80
	nop


;XAnimClearTreeGoalWeightsStrict(XAnimTree_s*, unsigned int, float)
XAnimClearTreeGoalWeightsStrict:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	lea eax, [edx+eax*8]
	lea edx, [eax+0xc]
	mov [ebp-0x20], edx
	movzx eax, word [eax+0xc]
	mov [ebp-0x28], eax
	test eax, eax
	jle XAnimClearTreeGoalWeightsStrict_10
	mov dword [ebp-0x24], 0x0
XAnimClearTreeGoalWeightsStrict_60:
	mov edx, [ebp-0x20]
	movzx eax, word [edx+0x6]
	add eax, [ebp-0x24]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	test ax, ax
	jz XAnimClearTreeGoalWeightsStrict_20
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x1c], eax
	jz XAnimClearTreeGoalWeightsStrict_30
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz XAnimClearTreeGoalWeightsStrict_20
	xor edx, edx
XAnimClearTreeGoalWeightsStrict_50:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz XAnimClearTreeGoalWeightsStrict_40
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	call XAnimGetInfoIndex_r
	mov esi, eax
	test eax, eax
	jnz XAnimClearTreeGoalWeightsStrict_30
	mov edx, edi
XAnimClearTreeGoalWeightsStrict_40:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz XAnimClearTreeGoalWeightsStrict_50
XAnimClearTreeGoalWeightsStrict_20:
	add dword [ebp-0x24], 0x1
	mov eax, [ebp-0x24]
	cmp [ebp-0x28], eax
	jnz XAnimClearTreeGoalWeightsStrict_60
XAnimClearTreeGoalWeightsStrict_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimClearTreeGoalWeightsStrict_30:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	movss xmm0, dword [ebp+0x10]
	movss [eax+0xc], xmm0
	mov dword [eax+0x10], 0x0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz XAnimClearTreeGoalWeightsStrict_70
	jp XAnimClearTreeGoalWeightsStrict_70
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
XAnimClearTreeGoalWeightsStrict_70:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz XAnimClearTreeGoalWeightsStrict_80
XAnimClearTreeGoalWeightsStrict_100:
	mov word [ebx+0x2], 0xffff
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xc]
	movzx edx, ax
	test ax, ax
	jz XAnimClearTreeGoalWeightsStrict_20
	xor ecx, ecx
XAnimClearTreeGoalWeightsStrict_90:
	lea eax, [edx*8]
	mov ebx, edx
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0x10]
	cmp ecx, eax
	setnz cl
	movzx ecx, cl
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	call XAnimClearTreeGoalWeightsInternal
	movzx ecx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimClearTreeGoalWeightsStrict_90
	add dword [ebp-0x24], 0x1
	mov eax, [ebp-0x24]
	cmp [ebp-0x28], eax
	jnz XAnimClearTreeGoalWeightsStrict_60
	jmp XAnimClearTreeGoalWeightsStrict_10
XAnimClearTreeGoalWeightsStrict_80:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov word [ebx+0x4], 0x0
	jmp XAnimClearTreeGoalWeightsStrict_100
	nop


;XAnimAddNotetrackTimesToScriptArray(XAnim_s const*, unsigned int, unsigned int)
XAnimAddNotetrackTimesToScriptArray:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov edi, [eax+edx*8+0x10]
	mov esi, [edi+0x50]
	test esi, esi
	jz XAnimAddNotetrackTimesToScriptArray_10
	cmp byte [edi+0x1c], 0x0
	jz XAnimAddNotetrackTimesToScriptArray_10
	xor ebx, ebx
	jmp XAnimAddNotetrackTimesToScriptArray_20
XAnimAddNotetrackTimesToScriptArray_30:
	add ebx, 0x1
	add esi, 0x8
	movzx eax, byte [edi+0x1c]
	cmp ebx, eax
	jge XAnimAddNotetrackTimesToScriptArray_10
XAnimAddNotetrackTimesToScriptArray_20:
	movzx eax, word [esi]
	cmp eax, [ebp+0x10]
	jnz XAnimAddNotetrackTimesToScriptArray_30
	mov eax, [esi+0x4]
	mov [esp], eax
	call Scr_AddFloat
	call Scr_AddArray
	add ebx, 0x1
	add esi, 0x8
	movzx eax, byte [edi+0x1c]
	cmp ebx, eax
	jl XAnimAddNotetrackTimesToScriptArray_20
XAnimAddNotetrackTimesToScriptArray_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XAnimFree(XAnimParts*)
XAnimFree:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edi, [eax+0x30]
	movzx esi, byte [eax+0x1b]
	test esi, esi
	jg XAnimFree_10
	mov ecx, eax
	mov ebx, [ecx+0x50]
	cmp byte [ecx+0x1c], 0x0
	jnz XAnimFree_20
XAnimFree_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimFree_10:
	xor ebx, ebx
XAnimFree_30:
	movzx eax, word [edi+ebx*2]
	mov [esp], eax
	call SL_RemoveRefToString
	add ebx, 0x1
	cmp esi, ebx
	jnz XAnimFree_30
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x50]
	cmp byte [ecx+0x1c], 0x0
	jz XAnimFree_40
XAnimFree_20:
	xor esi, esi
XAnimFree_50:
	movzx eax, word [ebx]
	mov [esp], eax
	call SL_RemoveRefToString
	add esi, 0x1
	add ebx, 0x8
	movsx edx, si
	mov ecx, [ebp+0x8]
	movzx eax, byte [ecx+0x1c]
	cmp edx, eax
	jl XAnimFree_50
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XAnimInit()
XAnimInit:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	xor edx, edx
	mov ecx, g_xAnimInfo
	jmp XAnimInit_10
XAnimInit_40:
	mov [ecx+0x8], ax
	add edx, 0x1
	mov eax, edx
	and eax, 0x80000fff
	js XAnimInit_20
XAnimInit_50:
	mov [ecx+0xa], ax
	add ecx, 0x38
	cmp edx, 0x1000
	jz XAnimInit_30
XAnimInit_10:
	lea eax, [edx+0xfff]
	and eax, 0x80000fff
	jns XAnimInit_40
	sub eax, 0x1
	or eax, 0xfffff000
	add eax, 0x1
	mov [ecx+0x8], ax
	add edx, 0x1
	mov eax, edx
	and eax, 0x80000fff
	jns XAnimInit_50
XAnimInit_20:
	sub eax, 0x1
	or eax, 0xfffff000
	add eax, 0x1
	mov [ecx+0xa], ax
	add ecx, 0x38
	cmp edx, 0x1000
	jnz XAnimInit_10
XAnimInit_30:
	mov edi, g_xAnimInfo+0x18
	cld
	mov ecx, 0x8
	xor eax, eax
	rep stosd
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_end
	call SL_GetString_
	mov [g_endNotetrackName], eax
	mov eax, com_developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	setnz byte [g_anim_developer]
	add esp, 0x14
	pop edi
	pop ebp
	ret


;Initialized global or static variables of xanim:
SECTION .data


;Initialized constant data of xanim:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of xanim:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x20
g_xAnimInfo: resb 0x38000
g_notifyListSize: resb 0x20
g_notifyList: resb 0x600
g_endNotetrackName: resb 0x5
g_anim_developer: resb 0x3b


;All cstrings:
SECTION .rdata
_cstring_0:		db "^0",0
_cstring_ss_weight_2f__2f:		db "%s%s: (weight) %.2f -> %.2f, (time) %.2f -> %.2f, (realtimedelta) %.2f, ",27h,"%s",27h,0ah,0
_cstring_ss_weight_2f__2f1:		db "%s%s: (weight) %.2f -> %.2f, (time) %.2f -> %.2f",0ah,0
_cstring_1:		db "^1",0
_cstring_null:		db 0
_cstring_4:		db "^4",0
_cstring_ss_weight_2f__2f2:		db "%s%s: (weight) %.2f -> %.2f, (time) %.2f -> %.2f, ",27h,"%s",27h,0ah,0
_cstring_ss_weight_2f__2f3:		db "%s%s: (weight) %.2f -> %.2f, (time) %.2f -> %.2f, (realtimedelta) %.2f",0ah,0
_cstring_space:		db " ",0
_cstring_ss_weight_2f__2f4:		db "%s%s: (weight) %.2f -> %.2f",0ah,0
_cstring_ss_weight_2f__2f5:		db "%s%s: (weight) %.2f -> %.2f, ",27h,"%s",27h,0ah,0
_cstring_void_loop:		db "void_loop",0
_cstring_duplicate_specif:		db 15h,"duplicate specification of animation sync in ",27h,"%s",27h,", %d nodes above ",27h,"%s",27h,0
_cstring_animation_s_in_s:		db 15h,"animation ",27h,"%s",27h," in ",27h,"%s",27h," cannot be sync nonlooping and looping",0
_cstring_animation_s_in_s1:		db 15h,"animation ",27h,"%s",27h," in ",27h,"%s",27h," cannot be sync looping and nonlooping",0
_cstring_cannot_find_xani:		db 15h,"Cannot find ",27h,"xanim/%s",27h,".",0ah,"This is a default xanim file that you should have.",0ah,0
_cstring_animation_cannot:		db 15h,"animation cannot be sync looping and sync nonlooping",0
_cstring_exceeded_maximum:		db 15h,"exceeded maximum number of anim info",0
_cstring_xanimblend:		db "XAnimBlend",0
_cstring_do_not_nest_addi:		db 15h,"Do not nest additives",0
_cstring_xanimcreate:		db "XAnimCreate",0
_cstring_cannot_find_xani1:		db 15h,"Cannot find xanim ",27h,"%s",27h,0
_cstring_void:		db "void",0
_cstring_warning_couldnt_:		db "WARNING: Couldn",27h,"t find xanim ",27h,"%s",27h,", using default xanim ",27h,"%s",27h," instead",0ah,0
_cstring_cannot_find_xani2:		db 15h,"Cannot find xanim ",27h,"%s",27h,".",0
_cstring_sno_tree:		db "%sNO TREE",0ah,0
_cstring_s:		db "%s",0
_cstring_:		db 0ah,0
_cstring_xanimcreateanims:		db "XAnimCreateAnims",0
_cstring_3s_missing:		db "^3%s (missing)",0
_cstring_i:		db "%i",0
_cstring_end:		db "end",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x30800200	; 9.31379e-10
_float_2_00000000:		dd 0x40000000	; 2
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00003052:		dd 0x38000100	; 3.05185e-05
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_0_00000100:		dd 0x358637be	; 1e-06
_float_0_000000001:		dd 0x0	; 0
_float_0_99999988:		dd 0x3f7ffffe	; 1
_float_1000_00000000:		dd 0x447a0000	; 1000

align   16,db 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
