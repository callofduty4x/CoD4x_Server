;Imports of xanim:
	extern Hunk_FindDataForFile
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern _Z20SL_RemoveRefToStringj
	extern _Z18SL_ConvertToStringj
	extern _Z26SL_RemoveRefToStringOfSizejj
	extern _Z23Hunk_AllocAlignInternalii
	extern _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4
	extern _Z14Com_sprintfPosPciPiPKcz
	extern useFastFile
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z18DB_IsXAssetDefault10XAssetTypePKc
	extern _Z17SL_AddRefToStringj
	extern SL_GetStringOfSize
	extern _Z18Scr_AddConstStringj
	extern _Z13Scr_NotifyNumijjj
	extern memset
	extern _Z18Hunk_AllocDebugMemiPKc
	extern strcpy
	extern _Z17Hunk_FreeDebugMemPv
	extern _Z13XAnimLoadFilePKcPFPviE
	extern Hunk_SetDataForFile
	extern _Z16Com_PrintWarningiPKcz
	extern memcpy
	extern _Z11Com_sprintfPciPKcz
	extern _Z10Com_PrintfiPKcz
	extern Hunk_DataOnHunk
	extern Hunk_AddData
	extern _Z2vaPKcz
	extern _Z12Scr_AddFloatf
	extern _Z12Scr_AddArrayv
	extern SL_GetString_
	extern com_developer

;Exports of xanim:
	global _GLOBAL__I__Z9XAnimInitv
	global g_xAnimInfo
	global g_notifyListSize
	global g_notifyList
	global g_endNotetrackName
	global g_anim_developer
	global _Z21XAnimFindData_LoadObjPKc
	global _Z22XAnimFindData_FastFilePKc
	global _Z13XAnimFreeInfoP11XAnimTree_sj
	global _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi
	global _Z12XAnimDisplayPK11XAnimTree_sjiPciPi
	global _Z22XAnimFillInSyncNodes_rP7XAnim_sjh
	global _Z21XAnimSetupSyncNodes_rP7XAnim_sj
	global _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	global _Z14XAnimResetTimej
	global _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj
	global _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj
	global _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos
	global _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj
	global _Z19XAnimResetAnimMap_rP13XModelNameMapj
	global _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof
	global _Z18XAnimCheckFreeInfoP11XAnimTree_sji
	global _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi
	global _Z27XAnimEnsureGoalWeightParentP6DObj_sj
	global _Z19XAnimAllocInfoIndexP6DObj_sji
	global _Z18XAnimCloneInitTimeP11XAnimTree_sjj
	global _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh
	global _Z12XAnimRestartP11XAnimTree_sjf
	global _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj
	global _Z24XAnimProcessClientNotifyP9XAnimInfof
	global _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef
	global _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh
	global _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	global _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	global _Z24XAnimFindServerNoteTrackPK6DObj_sjf
	global _Z10XAnimBlendP7XAnim_sjPKcjjj
	global _Z11GetAnimInfoi
	global _Z11XAnimCreateP7XAnim_sjPKc
	global _Z12XAnimGetTimePK11XAnimTree_sj
	global _Z12XAnimSetTimeP11XAnimTree_sjf
	global _Z13XAnimFreeListP7XAnim_s
	global _Z13XAnimFreeTreeP11XAnimTree_sPFvPviE
	global _Z13XAnimGetAnimsPK11XAnimTree_s
	global _Z13XAnimIsLoopedPK7XAnim_sj
	global _Z13XAnimPrecachePKcPFPviE
	global _Z13XAnimShutdownv
	global _Z14XAnimCalcDeltaP6DObj_sjPfS1_h
	global _Z14XAnimClearTreeP11XAnimTree_s
	global _Z14XAnimGetLengthPK7XAnim_sj
	global _Z14XAnimGetWeightPK11XAnimTree_sj
	global _Z15DObjDisplayAnimPK6DObj_sPKc
	global _Z15XAnimCreateTreeP7XAnim_sPFPviE
	global _Z15XAnimGetChildAtPK7XAnim_sjj
	global _Z16XAnimCreateAnimsPKciPFPviE
	global _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	global _Z16XAnimGetAnimNamePK7XAnim_sj
	global _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff
	global _Z16XAnimHasFinishedPK11XAnimTree_sj
	global _Z16XAnimIsPrimitiveP7XAnim_sj
	global _Z16XAnimSetAnimRateP11XAnimTree_sjf
	global _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1_
	global _Z17XAnimResetAnimMapPK6DObj_sj
	global _Z18DObjInitServerTimeP6DObj_sf
	global _Z18XAnimCloneAnimTreePK11XAnimTree_sPS_
	global _Z18XAnimGetLengthMsecPK7XAnim_sj
	global _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	global _Z19XAnimGetNumChildrenPK7XAnim_sj
	global _Z19XAnimSetupSyncNodesP7XAnim_s
	global _Z20DObjUpdateClientInfoP6DObj_sfh
	global _Z20DObjUpdateServerInfoP6DObj_sfi
	global _Z20XAnimGetAnimTreeSizePK7XAnim_s
	global _Z20XAnimNotetrackExistsPK7XAnim_sjj
	global _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	global _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji
	global _Z23DObjGetClientNotifyListPP13XAnimNotify_s
	global _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf
	global _Z25XAnimGetAnimTreeDebugNamePK7XAnim_s
	global _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji
	global _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	global _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf
	global _Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj
	global _Z9XAnimFreeP10XAnimParts
	global _Z9XAnimInitv


SECTION .text


;global constructors keyed to XAnimInit()
_GLOBAL__I__Z9XAnimInitv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;XAnimFindData_LoadObj(char const*)
_Z21XAnimFindData_LoadObjPKc:
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
_Z22XAnimFindData_FastFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret
	nop


;XAnimFreeInfo(XAnimTree_s*, unsigned int)
_Z13XAnimFreeInfoP11XAnimTree_sj:
_Z13XAnimFreeInfoP11XAnimTree_sj_60:
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
	jnz _Z13XAnimFreeInfoP11XAnimTree_sj_10
	movzx eax, word [ebx+0xc]
	test ax, ax
	jnz _Z13XAnimFreeInfoP11XAnimTree_sj_20
_Z13XAnimFreeInfoP11XAnimTree_sj_70:
	movzx eax, word [ebx+0x8]
	movzx edi, ax
	movzx esi, word [ebx+0xa]
	movzx ecx, si
	test ax, ax
	jnz _Z13XAnimFreeInfoP11XAnimTree_sj_30
	movzx eax, word [ebx+0xe]
	test ax, ax
	jnz _Z13XAnimFreeInfoP11XAnimTree_sj_40
	mov eax, [ebp-0x1c]
	mov [eax+0x4], si
	jmp _Z13XAnimFreeInfoP11XAnimTree_sj_50
_Z13XAnimFreeInfoP11XAnimTree_sj_20:
	movzx edx, ax
	mov eax, [ebp-0x1c]
	call _Z13XAnimFreeInfoP11XAnimTree_sj_60
	movzx eax, word [ebx+0xc]
	test ax, ax
	jz _Z13XAnimFreeInfoP11XAnimTree_sj_70
	movzx edx, ax
	mov eax, [ebp-0x1c]
	call _Z13XAnimFreeInfoP11XAnimTree_sj_60
	movzx eax, word [ebx+0xc]
	test ax, ax
	jnz _Z13XAnimFreeInfoP11XAnimTree_sj_20
	jmp _Z13XAnimFreeInfoP11XAnimTree_sj_70
_Z13XAnimFreeInfoP11XAnimTree_sj_30:
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	mov [eax+g_xAnimInfo+0xa], cx
_Z13XAnimFreeInfoP11XAnimTree_sj_50:
	test si, si
	jz _Z13XAnimFreeInfoP11XAnimTree_sj_80
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], di
_Z13XAnimFreeInfoP11XAnimTree_sj_80:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz _Z13XAnimFreeInfoP11XAnimTree_sj_90
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
_Z13XAnimFreeInfoP11XAnimTree_sj_90:
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
_Z13XAnimFreeInfoP11XAnimTree_sj_40:
	movzx eax, ax
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov [eax+g_xAnimInfo+0xc], si
	jmp _Z13XAnimFreeInfoP11XAnimTree_sj_50
_Z13XAnimFreeInfoP11XAnimTree_sj_10:
	movzx eax, word [ebx+0x12]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	movzx eax, byte [eax+0x10]
	add eax, 0x11
	mov [esp+0x4], eax
	movzx eax, word [ebx+0x12]
	mov [esp], eax
	call _Z26SL_RemoveRefToStringOfSizejj
	mov word [ebx+0x12], 0x0
	jmp _Z13XAnimFreeInfoP11XAnimTree_sj_70
	nop


;Hunk_AllocXAnimPrecache(int)
_Z23Hunk_AllocXAnimPrecachei:
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


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
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
_Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi:
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
	call _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	lea eax, [ebp-0x90]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0xa4]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4
	cmp byte [ebx+0x10], 0x0
	jz _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_10
	movss xmm1, dword [ebp-0xa0]
	ucomiss xmm1, [ebp-0xa4]
	ja _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_20
_Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_10:
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
	jz _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_30
_Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_50:
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
_Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_60:
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
_Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_20:
	mov eax, [ebx+0x54]
	mov ecx, [eax]
	test ecx, ecx
	jz _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_10
	movzx ebx, word [ecx]
	test bx, bx
	jz _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_10
	cmp byte [ecx+0x2], 0x0
	jz _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_40
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
_Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_70:
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
	jmp _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_10
_Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_30:
	jp _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_50
	movaps xmm3, xmm5
	jmp _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_60
_Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_40:
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
	jmp _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi_70


;XAnimDisplay(XAnimTree_s const*, unsigned int, int, char*, int, int*)
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi:
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_110:
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
	jg _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_10
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_210:
	movzx ebx, word [edi+0x10]
	mov [esp+0x4], ebx
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esp], eax
	call _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	mov [ebp-0x28], eax
	movss xmm3, dword [esi+0x14]
	pxor xmm2, xmm2
	ucomiss xmm3, xmm2
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_20
	jp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_20
	mov dword [ebp-0x24], _cstring_0
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_140:
	cmp word [edi+0x12], 0x0
	jz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_30
	mov eax, [edi+0x14]
	movss xmm4, dword [esi]
	movss xmm5, dword [esi+0x4]
	movaps xmm1, xmm4
	subss xmm1, xmm5
	ucomiss xmm2, xmm1
	ja _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_40
	movss xmm0, dword [eax+0x2c]
	ucomiss xmm0, xmm2
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_50
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_260:
	jp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_50
	pxor xmm0, xmm0
	movsd [ebp-0x20], xmm0
	movzx eax, word [edi+0x4]
	test ax, ax
	jz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_60
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_190:
	movzx eax, ax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
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
	call _Z14Com_sprintfPosPciPiPKcz
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_100:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_30:
	movzx edx, word [edi+0x4]
	test dx, dx
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_70
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	lea eax, [eax+ebx*8]
	lea edx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_80
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_220:
	mov eax, 0x1
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_230:
	test eax, eax
	jz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_90
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
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_270:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14Com_sprintfPosPciPiPKcz
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_180:
	movzx eax, word [edi+0xc]
	movzx ebx, ax
	test ax, ax
	jz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_100
	mov esi, [ebp-0x30]
	add esi, 0x1
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_120:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x2c]
	call _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_110
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_120
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_20:
	movss xmm0, dword [esi+0x10]
	ucomiss xmm0, xmm3
	ja _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_130
	mov dword [ebp-0x24], _cstring_1
	ucomiss xmm3, xmm0
	mov eax, _cstring_null
	cmova eax, [ebp-0x24]
	mov [ebp-0x24], eax
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_140
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_130:
	mov dword [ebp-0x24], _cstring_4
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_140
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_70:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	lea eax, [eax+ebx*8]
	lea ecx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_150
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_240:
	mov eax, 0x1
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_250:
	test eax, eax
	jz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_160
	cmp word [edi], 0x0
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_170
	movzx eax, dx
	mov [esp], eax
	call _Z18SL_ConvertToStringj
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
	call _Z14Com_sprintfPosPciPiPKcz
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_180
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_50:
	divss xmm1, xmm0
	cvtss2sd xmm1, xmm1
	movsd [ebp-0x20], xmm1
	movzx eax, word [edi+0x4]
	test ax, ax
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_190
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_60:
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
	call _Z14Com_sprintfPosPciPiPKcz
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_10:
	xor ebx, ebx
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_200:
	mov dword [esp+0xc], _cstring_space
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z14Com_sprintfPosPciPiPKcz
	add ebx, 0x1
	cmp [ebp-0x30], ebx
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_200
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_210
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_80:
	test byte [edx+0x4], 0x3
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_220
	xor eax, eax
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_230
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_150:
	test byte [ecx+0x4], 0x3
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_240
	xor eax, eax
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_250
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_40:
	addss xmm1, [_float_1_00000000]
	movss xmm0, dword [eax+0x2c]
	ucomiss xmm0, xmm2
	jnz _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_50
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_260
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_90:
	cvtss2sd xmm0, [esi+0x10]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm3, xmm3
	movsd [esp+0x18], xmm3
	mov edx, [ebp-0x28]
	mov [esp+0x14], edx
	mov ecx, [ebp-0x24]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], _cstring_ss_weight_2f__2f4
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_280:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z14Com_sprintfPosPciPiPKcz
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_180
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_170:
	movzx eax, dx
	mov [esp], eax
	call _Z18SL_ConvertToStringj
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
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_270
_Z12XAnimDisplayPK11XAnimTree_sjiPciPi_160:
	movzx eax, dx
	mov [esp], eax
	call _Z18SL_ConvertToStringj
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
	jmp _Z12XAnimDisplayPK11XAnimTree_sjiPciPi_280
	add [eax], al


;XAnimFillInSyncNodes_r(XAnim_s*, unsigned int, unsigned char)
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh:
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_100:
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
	jnz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_10
	mov edx, [esi+0x4]
	cmp cl, [edx+0x10]
	jz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_20
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_30
	movzx eax, byte [edx+0x1e]
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_140:
	test eax, eax
	jz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_40
	mov ebx, useFastFile
	mov edx, [ebx]
	cmp byte [edx+0xc], 0x0
	jz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_50
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_130:
	mov eax, _Z22XAnimFindData_FastFilePKc
	cmp byte [edx+0xc], 0x0
	mov edx, _Z21XAnimFindData_LoadObjPKc
	cmovz eax, edx
	mov dword [esp], _cstring_void_loop
	call eax
	mov [esi+0x4], eax
	test eax, eax
	jz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_60
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_10:
	test byte [esi+0x4], 0x3
	jz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_70
	xor ebx, ebx
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_80:
	add ebx, 0x1
	movzx eax, word [esi+0x6]
	lea eax, [edi+eax*8]
	lea esi, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_80
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_duplicate_specif
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_70:
	cmp byte [ebp-0x25], 0x1
	sbb eax, eax
	not eax
	add eax, 0x2
	or [esi+0x4], ax
	movzx eax, word [esi]
	mov [ebp-0x20], eax
	test eax, eax
	jle _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_20
	movzx edx, byte [ebp-0x25]
	mov [ebp-0x1c], edx
	xor ebx, ebx
	mov ecx, edx
	jmp _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_90
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_110:
	mov ecx, [ebp-0x1c]
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_90:
	movzx edx, word [esi+0x6]
	lea edx, [ebx+edx]
	mov eax, edi
	call _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_100
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jnz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_110
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_40:
	cmp byte [ebp-0x25], 0x0
	jnz _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_120
	mov ebx, [edi]
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_animation_s_in_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_120:
	mov ebx, [edi]
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_animation_s_in_s1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_50:
	mov dword [esp+0x4], _Z23Hunk_AllocXAnimPrecachei
	mov dword [esp], _cstring_void_loop
	call _Z13XAnimPrecachePKcPFPviE
	mov edx, [ebx]
	jmp _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_130
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_30:
	mov eax, [edx]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z18DB_IsXAssetDefault10XAssetTypePKc
	movzx eax, al
	jmp _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_140
_Z22XAnimFillInSyncNodes_rP7XAnim_sjh_60:
	mov dword [esp+0x8], _cstring_void_loop
	mov dword [esp+0x4], _cstring_cannot_find_xani
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22XAnimFillInSyncNodes_rP7XAnim_sjh_20


;XAnimSetupSyncNodes_r(XAnim_s*, unsigned int)
_Z21XAnimSetupSyncNodes_rP7XAnim_sj:
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_50:
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
	jz _Z21XAnimSetupSyncNodes_rP7XAnim_sj_10
	movzx eax, word [eax+0xc]
	mov [ebp-0x20], eax
	movzx eax, word [esi+0x4]
	mov ebx, eax
	and ebx, 0x3
	jz _Z21XAnimSetupSyncNodes_rP7XAnim_sj_20
	cmp ebx, 0x3
	jz _Z21XAnimSetupSyncNodes_rP7XAnim_sj_30
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_90:
	or word [esi+0x4], 0x4
	sub ebx, 0x1
	setz al
	mov edx, [ebp-0x20]
	test edx, edx
	jg _Z21XAnimSetupSyncNodes_rP7XAnim_sj_40
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_20:
	mov eax, [ebp-0x20]
	test eax, eax
	jle _Z21XAnimSetupSyncNodes_rP7XAnim_sj_10
	xor ebx, ebx
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_60:
	movzx edx, word [esi+0x6]
	lea edx, [ebx+edx]
	mov eax, edi
	call _Z21XAnimSetupSyncNodes_rP7XAnim_sj_50
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jnz _Z21XAnimSetupSyncNodes_rP7XAnim_sj_60
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_40:
	movzx eax, al
	mov [ebp-0x1c], eax
	xor ebx, ebx
	mov ecx, eax
	jmp _Z21XAnimSetupSyncNodes_rP7XAnim_sj_70
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_80:
	mov ecx, [ebp-0x1c]
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_70:
	movzx edx, word [esi+0x6]
	lea edx, [ebx+edx]
	mov eax, edi
	call _Z22XAnimFillInSyncNodes_rP7XAnim_sjh
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jnz _Z21XAnimSetupSyncNodes_rP7XAnim_sj_80
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21XAnimSetupSyncNodes_rP7XAnim_sj_30:
	mov dword [esp+0x4], _cstring_animation_cannot
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21XAnimSetupSyncNodes_rP7XAnim_sj_90


;XAnimGetInfoIndex_r(XAnimTree_s const*, unsigned int, unsigned int)
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj:
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_280:
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
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_10
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x5c], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_20
	xor ecx, ecx
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_340:
	mov eax, [ebp-0x5c]
	shl eax, 0x3
	mov edx, [ebp-0x5c]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x4c], eax
	cmp ecx, eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_30
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_40
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x50], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_50
	xor ecx, ecx
	mov eax, [ebp-0x50]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_350:
	shl eax, 0x3
	mov edx, [ebp-0x50]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x1c], eax
	cmp ecx, eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_60
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_70
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_80
	xor ecx, ecx
	mov eax, [ebp-0x48]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_360:
	shl eax, 0x3
	mov edx, [ebp-0x48]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x20], eax
	cmp ecx, eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_90
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_100
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x44], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_110
	xor ecx, ecx
	mov eax, [ebp-0x44]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_330:
	shl eax, 0x3
	mov edx, [ebp-0x44]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x24], eax
	cmp ecx, eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_120
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_130
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_140
	xor ecx, ecx
	mov eax, [ebp-0x40]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_380:
	shl eax, 0x3
	mov edx, [ebp-0x40]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x28], eax
	cmp ecx, eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_150
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_160
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x3c], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_170
	xor ecx, ecx
	mov eax, [ebp-0x3c]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_370:
	shl eax, 0x3
	mov edx, [ebp-0x3c]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x2c], eax
	cmp ecx, eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_180
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_190
	movzx eax, word [edx+0xc]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_200
	xor ecx, ecx
	mov eax, [ebp-0x38]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_320:
	shl eax, 0x3
	mov edx, [ebp-0x38]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x30], eax
	cmp ecx, eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_210
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_220
	movzx eax, word [edx+0xc]
	movzx edi, ax
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_230
	xor ecx, ecx
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_310:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	mov [ebp-0x34], eax
	cmp ecx, eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_240
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x58], eax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_250
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_260
	xor edx, edx
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_300:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_270
	mov edx, [ebp-0x58]
	mov eax, [ebp-0x54]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_280
	test eax, eax
	jnz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_290
	mov edx, esi
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_270:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_300
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_260:
	mov ecx, [ebp-0x34]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_240:
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jnz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_310
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_230:
	mov ecx, [ebp-0x30]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_210:
	mov eax, [ebp-0x38]
	shl eax, 0x3
	shl dword [ebp-0x38], 0x6
	sub [ebp-0x38], eax
	mov edx, [ebp-0x38]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_200
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_320
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_140:
	mov ecx, [ebp-0x24]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_120:
	mov eax, [ebp-0x44]
	shl eax, 0x3
	shl dword [ebp-0x44], 0x6
	sub [ebp-0x44], eax
	mov edx, [ebp-0x44]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x44], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_110
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_330
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_50:
	mov ecx, [ebp-0x4c]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_30:
	mov eax, [ebp-0x5c]
	shl eax, 0x3
	shl dword [ebp-0x5c], 0x6
	sub [ebp-0x5c], eax
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x5c], edx
	test ax, ax
	jnz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_340
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_20:
	mov dword [ebp-0x5c], 0x0
	mov eax, [ebp-0x5c]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_390:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_80:
	mov ecx, [ebp-0x1c]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_60:
	mov eax, [ebp-0x50]
	shl eax, 0x3
	shl dword [ebp-0x50], 0x6
	sub [ebp-0x50], eax
	mov edx, [ebp-0x50]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x50], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_50
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_350
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_110:
	mov ecx, [ebp-0x20]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_90:
	mov eax, [ebp-0x48]
	shl eax, 0x3
	shl dword [ebp-0x48], 0x6
	sub [ebp-0x48], eax
	mov edx, [ebp-0x48]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_80
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_360
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_200:
	mov ecx, [ebp-0x2c]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_180:
	mov eax, [ebp-0x3c]
	shl eax, 0x3
	shl dword [ebp-0x3c], 0x6
	sub [ebp-0x3c], eax
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x3c], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_170
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_370
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_170:
	mov ecx, [ebp-0x28]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_150:
	mov eax, [ebp-0x40]
	shl eax, 0x3
	shl dword [ebp-0x40], 0x6
	sub [ebp-0x40], eax
	mov edx, [ebp-0x40]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_140
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_380
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_130:
	mov eax, [ebp-0x44]
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_290:
	mov [ebp-0x5c], eax
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_400:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_10:
	mov eax, ecx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_250:
	mov [ebp-0x5c], edi
	mov eax, edi
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_390
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_220:
	mov edx, [ebp-0x38]
	mov [ebp-0x5c], edx
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_390
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_190:
	mov eax, [ebp-0x3c]
	mov [ebp-0x5c], eax
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_390
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_160:
	mov edx, [ebp-0x40]
	mov [ebp-0x5c], edx
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_390
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_100:
	mov edx, [ebp-0x48]
	mov [ebp-0x5c], edx
	mov eax, edx
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_390
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_70:
	mov eax, [ebp-0x50]
	mov [ebp-0x5c], eax
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_400
_Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_40:
	mov eax, [ebp-0x5c]
	jmp _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj_390


;XAnimResetTime(unsigned int)
_Z14XAnimResetTimej:
_Z14XAnimResetTimej_170:
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
	jz _Z14XAnimResetTimej_10
_Z14XAnimResetTimej_30:
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
	jnz _Z14XAnimResetTimej_20
_Z14XAnimResetTimej_50:
	mov eax, [ebp-0x30]
	shl eax, 0x3
	shl dword [ebp-0x30], 0x6
	sub [ebp-0x30], eax
	mov edx, [ebp-0x30]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x30], edx
	test ax, ax
	jz _Z14XAnimResetTimej_10
	xor ebx, ebx
	jmp _Z14XAnimResetTimej_30
_Z14XAnimResetTimej_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14XAnimResetTimej_20:
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
	jnz _Z14XAnimResetTimej_40
_Z14XAnimResetTimej_60:
	mov eax, [ebp-0x2c]
	shl eax, 0x3
	shl dword [ebp-0x2c], 0x6
	sub [ebp-0x2c], eax
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x2c], edx
	test ax, ax
	jz _Z14XAnimResetTimej_50
	xor ebx, ebx
	jmp _Z14XAnimResetTimej_20
_Z14XAnimResetTimej_70:
	mov eax, [ebp-0x28]
	shl eax, 0x3
	shl dword [ebp-0x28], 0x6
	sub [ebp-0x28], eax
	mov edx, [ebp-0x28]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x28], edx
	test ax, ax
	jz _Z14XAnimResetTimej_60
	xor ebx, ebx
_Z14XAnimResetTimej_40:
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
	jz _Z14XAnimResetTimej_70
	jmp _Z14XAnimResetTimej_80
_Z14XAnimResetTimej_90:
	mov eax, [ebp-0x24]
	shl eax, 0x3
	shl dword [ebp-0x24], 0x6
	sub [ebp-0x24], eax
	mov edx, [ebp-0x24]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x24], edx
	test ax, ax
	jz _Z14XAnimResetTimej_70
	xor ebx, ebx
_Z14XAnimResetTimej_80:
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
	jz _Z14XAnimResetTimej_90
	jmp _Z14XAnimResetTimej_100
_Z14XAnimResetTimej_110:
	mov eax, [ebp-0x20]
	shl eax, 0x3
	shl dword [ebp-0x20], 0x6
	sub [ebp-0x20], eax
	mov edx, [ebp-0x20]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x20], edx
	test ax, ax
	jz _Z14XAnimResetTimej_90
	xor ebx, ebx
_Z14XAnimResetTimej_100:
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
	jz _Z14XAnimResetTimej_110
	jmp _Z14XAnimResetTimej_120
_Z14XAnimResetTimej_130:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	shl dword [ebp-0x1c], 0x6
	sub [ebp-0x1c], eax
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x1c], edx
	test ax, ax
	jz _Z14XAnimResetTimej_110
	xor ebx, ebx
_Z14XAnimResetTimej_120:
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
	jz _Z14XAnimResetTimej_130
	jmp _Z14XAnimResetTimej_140
_Z14XAnimResetTimej_150:
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz _Z14XAnimResetTimej_130
	xor ebx, ebx
_Z14XAnimResetTimej_140:
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
	jz _Z14XAnimResetTimej_150
	jmp _Z14XAnimResetTimej_160
_Z14XAnimResetTimej_180:
	mov eax, ebx
	call _Z14XAnimResetTimej_170
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z14XAnimResetTimej_180
_Z14XAnimResetTimej_190:
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jz _Z14XAnimResetTimej_150
	xor ebx, ebx
_Z14XAnimResetTimej_160:
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
	jz _Z14XAnimResetTimej_190
	mov eax, ebx
	call _Z14XAnimResetTimej_170
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z14XAnimResetTimej_180
	jmp _Z14XAnimResetTimej_190


;XAnimGetDescendantWithGreatestWeight(XAnimTree_s const*, unsigned int)
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj:
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_450:
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
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_10
	movzx eax, word [eax+0x10]
	mov [ebp-0x90], eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_10:
	movzx eax, word [eax+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_20
	pxor xmm0, xmm0
	movss [ebp-0x9c], xmm0
	mov dword [ebp-0x90], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_30
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_70:
	cmp word [ecx+0x12], 0x0
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_40
	movzx eax, word [ecx+0x10]
	mov [ebp-0x94], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_110:
	mov ebx, [ebp-0x94]
	test ebx, ebx
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_50
	movss xmm0, dword [ebp-0x98]
	movss [ebp-0x9c], xmm0
	mov eax, [ebp-0x94]
	mov [ebp-0x90], eax
	mov edx, [ebp-0x1c]
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_80:
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_60
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_30:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	add ecx, g_xAnimInfo
	mov [ebp-0x1c], ecx
	movss xmm0, dword [ecx+0x28]
	movss [ebp-0x98], xmm0
	movss xmm0, dword [ebp-0x9c]
	ucomiss xmm0, [ebp-0x98]
	jb _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_70
	mov edx, ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_30
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_60:
	mov eax, [ebp-0x90]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_50:
	mov edx, [ebp-0x1c]
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_80
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_40:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_50
	pxor xmm0, xmm0
	movss [ebp-0x8c], xmm0
	mov dword [ebp-0x94], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_90
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_130:
	movzx eax, word [edx+0x10]
	mov [ebp-0x58], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_160:
	mov esi, [ebp-0x58]
	test esi, esi
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_100
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x8c], xmm0
	mov eax, [ebp-0x58]
	mov [ebp-0x94], eax
	mov edx, [ebp-0x88]
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_120:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_110
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_90:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x88], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x8c]
	ucomiss xmm0, [ebp-0x20]
	jae _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_120
	cmp word [edx+0x12], 0x0
	jnz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_130
	mov edx, [ebp-0x88]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_100
	pxor xmm0, xmm0
	movss [ebp-0x84], xmm0
	mov dword [ebp-0x58], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_140
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_180:
	movzx eax, word [edx+0x10]
	mov [ebp-0x54], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_210:
	mov edi, [ebp-0x54]
	test edi, edi
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_150
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x84], xmm0
	mov eax, [ebp-0x54]
	mov [ebp-0x58], eax
	mov edx, [ebp-0x80]
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_170:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_160
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_140:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x80], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x84]
	ucomiss xmm0, [ebp-0x24]
	jae _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_170
	cmp word [edx+0x12], 0x0
	jnz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_180
	mov edx, [ebp-0x80]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_150
	pxor xmm0, xmm0
	movss [ebp-0x7c], xmm0
	mov dword [ebp-0x54], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_190
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_230:
	movzx eax, word [edx+0x10]
	mov [ebp-0x50], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_260:
	mov eax, [ebp-0x50]
	test eax, eax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_200
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x7c], xmm0
	mov eax, [ebp-0x50]
	mov [ebp-0x54], eax
	mov edx, [ebp-0x78]
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_220:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_210
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_190:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x78], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x7c]
	ucomiss xmm0, [ebp-0x28]
	jae _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_220
	cmp word [edx+0x12], 0x0
	jnz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_230
	mov edx, [ebp-0x78]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_200
	pxor xmm0, xmm0
	movss [ebp-0x74], xmm0
	mov dword [ebp-0x50], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_240
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_280:
	movzx eax, word [edx+0x10]
	mov [ebp-0x4c], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_310:
	mov eax, [ebp-0x4c]
	test eax, eax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_250
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x74], xmm0
	mov eax, [ebp-0x4c]
	mov [ebp-0x50], eax
	mov edx, [ebp-0x70]
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_270:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_260
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_240:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x70], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x74]
	ucomiss xmm0, [ebp-0x2c]
	jae _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_270
	cmp word [edx+0x12], 0x0
	jnz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_280
	mov edx, [ebp-0x70]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_250
	pxor xmm0, xmm0
	movss [ebp-0x6c], xmm0
	mov dword [ebp-0x4c], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_290
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_330:
	movzx eax, word [edx+0x10]
	mov [ebp-0x48], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_360:
	mov eax, [ebp-0x48]
	test eax, eax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_300
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x6c], xmm0
	mov eax, [ebp-0x48]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x68]
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_320:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_310
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_290:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x68], edx
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x6c]
	ucomiss xmm0, [ebp-0x30]
	jae _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_320
	cmp word [edx+0x12], 0x0
	jnz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_330
	mov edx, [ebp-0x68]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_300
	pxor xmm0, xmm0
	movss [ebp-0x64], xmm0
	mov dword [ebp-0x48], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_340
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_370:
	movzx eax, word [edi+0x10]
	mov [ebp-0x44], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_400:
	mov eax, [ebp-0x44]
	test eax, eax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_350
	movss xmm0, dword [ebp-0x34]
	movss [ebp-0x64], xmm0
	mov eax, [ebp-0x44]
	mov [ebp-0x48], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_350:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_360
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_340:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea edi, [edx+g_xAnimInfo]
	movss xmm0, dword [edi+0x28]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x64]
	ucomiss xmm0, [ebp-0x34]
	jae _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_350
	cmp word [edi+0x12], 0x0
	jnz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_370
	movzx eax, word [edi+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_350
	pxor xmm0, xmm0
	movss [ebp-0x60], xmm0
	mov dword [ebp-0x44], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_380
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_410:
	movzx eax, word [esi+0x10]
	mov [ebp-0x40], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_430:
	mov eax, [ebp-0x40]
	test eax, eax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_390
	movss xmm0, dword [ebp-0x38]
	movss [ebp-0x60], xmm0
	mov eax, [ebp-0x40]
	mov [ebp-0x44], eax
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_390:
	movzx eax, word [esi+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_400
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_380:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea esi, [edx+g_xAnimInfo]
	movss xmm0, dword [esi+0x28]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x60]
	ucomiss xmm0, [ebp-0x38]
	jae _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_390
	cmp word [esi+0x12], 0x0
	jnz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_410
	movzx eax, word [esi+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_390
	pxor xmm0, xmm0
	movss [ebp-0x5c], xmm0
	mov dword [ebp-0x40], 0x0
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_420
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_440:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_430
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_420:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	movss xmm0, dword [ebx+0x28]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [ebp-0x3c]
	jae _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_440
	mov edx, ecx
	mov eax, [ebp-0xa0]
	call _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_450
	test eax, eax
	jz _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_440
	movss xmm0, dword [ebp-0x3c]
	movss [ebp-0x5c], xmm0
	mov [ebp-0x40], eax
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_440
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_300:
	mov edx, [ebp-0x68]
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_320
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_250:
	mov edx, [ebp-0x70]
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_270
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_200:
	mov edx, [ebp-0x78]
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_220
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_150:
	mov edx, [ebp-0x80]
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_170
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_100:
	mov edx, [ebp-0x88]
	jmp _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_120
_Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj_20:
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
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj:
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
	jnz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_10
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_200:
	mov word [ebx+0x2], 0xffff
	pxor xmm6, xmm6
	cmp word [ebx+0x10], 0x0
	jnz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_20
	movss xmm3, dword [_float_1_00000000]
	pxor xmm6, xmm6
	movaps xmm4, xmm6
	movss [ebp-0x28], xmm3
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_20:
	lea eax, [ebx+0x18]
	ucomiss xmm4, xmm6
	jnz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_30
	jp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_30
	movss [eax+0x14], xmm3
	mov dword [eax+0xc], 0x0
	mov byte [eax+0x1c], 0x1
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_120:
	movss [eax+0x10], xmm3
	movss xmm0, dword [ebp-0x28]
	movss [eax+0x18], xmm0
	mov [ebx+0x4], si
	test esi, esi
	jnz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_40
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_140:
	mov eax, [ebp+0x8]
	mov [ebx+0x6], ax
	test esi, esi
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_50
	cmp word [ebx+0x12], 0x0
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_60
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_50:
	mov word [ebx], 0x0
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_30:
	ucomiss xmm6, [eax+0x14]
	jnz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_70
	jp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_70
	movaps xmm0, xmm3
	mulss xmm0, [_float_0_00100000]
	movss [eax+0x14], xmm0
	movaps xmm5, xmm0
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_150:
	movaps xmm1, xmm5
	subss xmm1, xmm3
	ucomiss xmm1, xmm6
	jp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_80
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_90
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_80:
	movss xmm0, dword [eax+0x10]
	subss xmm0, xmm3
	mulss xmm1, xmm0
	ucomiss xmm1, xmm6
	jbe _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_100
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_90:
	movss [eax+0xc], xmm4
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_220:
	ucomiss xmm3, xmm6
	jp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_110
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_120
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_110:
	ucomiss xmm3, xmm5
	jb _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_130
	movaps xmm2, xmm3
	subss xmm2, xmm5
	divss xmm2, xmm3
	mulss xmm2, xmm4
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_210:
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
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_140
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_40:
	mov [esp], esi
	call _Z17SL_AddRefToStringj
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_140
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_70:
	movss xmm5, dword [eax+0x14]
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_150
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_60:
	test byte [ebx+0x14], 0x3
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_50
	movzx eax, word [ebx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_160
	pxor xmm2, xmm2
	movss [ebp-0x24], xmm2
	mov dword [ebp-0x20], 0x0
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_170
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_190:
	movzx eax, word [esi+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_180
	movss xmm2, dword [ebp-0x24]
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_170:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	movss xmm0, dword [esi+0x28]
	movss [ebp-0x1c], xmm0
	ucomiss xmm2, xmm0
	jae _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_190
	mov edx, ecx
	mov eax, edi
	call _Z36XAnimGetDescendantWithGreatestWeightPK11XAnimTree_sj
	test eax, eax
	jz _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_190
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x24], xmm0
	mov [ebp-0x20], eax
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_190
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_10:
	movzx eax, ax
	mov [esp], eax
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm1
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	movss xmm4, dword [ebp-0x48]
	movss xmm3, dword [ebp-0x38]
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_200
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_130:
	movaps xmm2, xmm5
	subss xmm2, xmm3
	divss xmm2, xmm5
	mulss xmm2, xmm4
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_210
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_100:
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
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_220
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_180:
	movzx eax, word [ebp-0x20]
_Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj_160:
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
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos:
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_140:
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
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_10
	test cl, cl
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_20
	mov esi, [ebx+0x14]
	cmp byte [esi+0x11], 0x0
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_90:
	lea eax, [ebx+0x18]
	cmp byte [ebp-0x78], 0x0
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_40
	mov ecx, 0x1
	mov edx, edi
	movss xmm2, dword [ebx+0x18]
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [ebp-0xac]
	mov eax, esi
	call _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_10:
	movzx eax, word [ebx+0xc]
	movzx ebx, ax
	test ax, ax
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_50
	cmp byte [ebp-0x88], 0x0
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_60
	pxor xmm3, xmm3
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_80:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	movss xmm0, dword [eax+0x28]
	ucomiss xmm0, xmm3
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_70
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_70
	movzx eax, word [eax+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_80
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_50:
	cmp byte [ebp-0x5d], 0x0
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
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
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_20:
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
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_90
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_40:
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4
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
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_70:
	movzx eax, word [eax+0xa]
	movzx esi, ax
	test ax, ax
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_100
	cmp byte [ebp-0x88], 0x0
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_110
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_130:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	mov [ebp-0x5c], eax
	movss xmm1, dword [eax+0x28]
	ucomiss xmm1, xmm3
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_120
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_120
	mov ecx, eax
	movzx eax, word [eax+0xa]
	movzx esi, ax
	test ax, ax
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_130
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_100:
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
	call _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_140
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_120:
	cmp byte [ebp-0x5d], 0x0
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_150
	lea eax, [ebp-0x50]
	mov [ebp-0x9c], eax
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_290:
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
	call _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_140
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
	call _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_140
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+0xa]
	movzx ebx, ax
	pxor xmm3, xmm3
	test ax, ax
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_160
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_260:
	cmp byte [ebp-0x98], 0x0
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_170
	movss xmm1, dword [edi+0x8]
	ucomiss xmm1, xmm3
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_180
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_180:
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
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_170:
	cmp byte [ebp-0x5d], 0x0
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_190
	movss xmm2, dword [edi]
	movss xmm0, dword [edi+0x4]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	ucomiss xmm2, xmm3
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_200
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_210
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_200:
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
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_210:
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, xmm3
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_220
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_220:
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
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_160:
	cmp byte [ebp-0x88], 0x0
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_230
	pxor xmm3, xmm3
	mov eax, [ebp-0xb0]
	mov [ebp-0xbc], eax
	mov edx, [ebp-0xb4]
	mov [ebp-0xc0], edx
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_240
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_270:
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_250
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_280:
	movzx eax, word [esi+0xa]
	movzx ebx, ax
	test ax, ax
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_260
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_240:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	movss xmm0, dword [esi+0x28]
	ucomiss xmm0, xmm3
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_270
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_250:
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
	call _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_140
	pxor xmm3, xmm3
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_280
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_150:
	mov [ebp-0x9c], edi
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_290
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_190:
	mov eax, [ebp-0x9c]
	movss xmm2, dword [eax]
	movss xmm0, dword [eax+0x4]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	ucomiss xmm2, xmm3
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_300
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_310
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_300:
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
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_330:
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, xmm3
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_320
	jz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_320:
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
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_30
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_310:
	mov ecx, eax
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_330
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_230:
	pxor xmm3, xmm3
	mov ecx, [ebp-0xb4]
	mov [ebp-0xb8], ecx
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_350:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	movss xmm0, dword [esi+0x2c]
	ucomiss xmm0, xmm3
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_340
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_340
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_370:
	movzx eax, word [esi+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_350
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_260
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_110:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	mov [ebp-0x5c], eax
	movss xmm1, dword [eax+0x2c]
	ucomiss xmm1, xmm3
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_120
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_120
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+0xa]
	movzx esi, ax
	test ax, ax
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_110
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_100
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_60:
	pxor xmm3, xmm3
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_360:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	movss xmm0, dword [eax+0x2c]
	ucomiss xmm0, xmm3
	jp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_70
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_70
	movzx eax, word [eax+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_360
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_50
_Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_340:
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
	call _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_140
	pxor xmm3, xmm3
	jmp _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos_370
	nop


;XAnimGetAverageRateFrequency(XAnimTree_s const*, unsigned int)
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj:
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_610:
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
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_10
	mov eax, [eax+0x14]
	movss xmm0, dword [eax+0x2c]
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_10:
	movzx eax, word [eax+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_20
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x80], 0x0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_30
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_80:
	cmp word [eax+0x12], 0x0
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_40
	mov eax, [eax+0x14]
	movss xmm0, dword [eax+0x2c]
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_760:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_50
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_60
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_50:
	movss xmm1, dword [ebp-0x80]
	addss xmm1, xmm7
	movss [ebp-0x80], xmm1
	mulss xmm7, xmm0
	mov eax, [ebp-0x1c]
	mulss xmm7, [eax+0x30]
	addss xmm7, [ebp-0x7c]
	movss [ebp-0x7c], xmm7
	mov edx, eax
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_790:
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_70
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_30:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	add ecx, g_xAnimInfo
	mov [ebp-0x1c], ecx
	mov eax, ecx
	movss xmm7, dword [ecx+0x2c]
	pxor xmm0, xmm0
	ucomiss xmm7, xmm0
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_80
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_80
	mov edx, ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_30
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_70:
	movss xmm0, dword [ebp-0x80]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_90
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_20
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_90:
	movss xmm0, dword [ebp-0x7c]
	divss xmm0, dword [ebp-0x80]
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_20:
	pxor xmm0, xmm0
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_40:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_60
	mov dword [ebp-0x70], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x74], xmm0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_100
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_160:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_720:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_110
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_120
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_110:
	movss xmm1, dword [ebp-0x74]
	addss xmm1, xmm6
	movss [ebp-0x74], xmm1
	mulss xmm6, xmm0
	mov eax, [ebp-0x78]
	mulss xmm6, [eax+0x30]
	addss xmm6, [ebp-0x70]
	movss [ebp-0x70], xmm6
	mov edx, eax
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_150:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_130
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_100:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x78], edx
	movss xmm6, dword [edx+0x2c]
	pxor xmm1, xmm1
	ucomiss xmm6, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_140
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_150
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_140:
	cmp word [edx+0x12], 0x0
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_160
	mov edx, [ebp-0x78]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_120
	mov dword [ebp-0x64], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x68], xmm0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_170
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_230:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_700:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_180
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_190
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_180:
	movss xmm1, dword [ebp-0x68]
	addss xmm1, xmm5
	movss [ebp-0x68], xmm1
	mulss xmm5, xmm0
	mov eax, [ebp-0x6c]
	mulss xmm5, [eax+0x30]
	addss xmm5, [ebp-0x64]
	movss [ebp-0x64], xmm5
	mov edx, eax
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_220:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_200
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_170:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x6c], edx
	movss xmm5, dword [edx+0x2c]
	pxor xmm1, xmm1
	ucomiss xmm5, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_210
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_220
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_210:
	cmp word [edx+0x12], 0x0
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_230
	mov edx, [ebp-0x6c]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_190
	mov dword [ebp-0x58], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x5c], xmm0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_240
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_300:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_680:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_250
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_260
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_250:
	movss xmm1, dword [ebp-0x5c]
	addss xmm1, xmm3
	movss [ebp-0x5c], xmm1
	mulss xmm3, xmm0
	mov eax, [ebp-0x60]
	mulss xmm3, [eax+0x30]
	addss xmm3, [ebp-0x58]
	movss [ebp-0x58], xmm3
	mov edx, eax
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_290:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_270
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_240:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x60], edx
	movss xmm3, dword [edx+0x2c]
	pxor xmm1, xmm1
	ucomiss xmm3, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_280
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_290
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_280:
	cmp word [edx+0x12], 0x0
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_300
	mov edx, [ebp-0x60]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_260
	mov dword [ebp-0x4c], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x50], xmm0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_310
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_370:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_660:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_320
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_330
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_320:
	movss xmm1, dword [ebp-0x50]
	addss xmm1, xmm2
	movss [ebp-0x50], xmm1
	mulss xmm2, xmm0
	mov eax, [ebp-0x54]
	mulss xmm2, [eax+0x30]
	addss xmm2, [ebp-0x4c]
	movss [ebp-0x4c], xmm2
	mov edx, eax
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_360:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_340
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_310:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x54], edx
	movss xmm2, dword [edx+0x2c]
	pxor xmm1, xmm1
	ucomiss xmm2, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_350
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_360
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_350:
	cmp word [edx+0x12], 0x0
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_370
	mov edx, [ebp-0x54]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_330
	mov dword [ebp-0x3c], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x40], xmm0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_380
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_440:
	mov eax, [edx+0x14]
	movss xmm0, dword [eax+0x2c]
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_780:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_390
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_400
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_390:
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [ebp-0x44]
	movss [ebp-0x40], xmm1
	mulss xmm0, [ebp-0x44]
	mov eax, [ebp-0x48]
	mulss xmm0, [eax+0x30]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	mov edx, eax
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_430:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_410
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_380:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x48], edx
	movss xmm1, dword [edx+0x2c]
	movss [ebp-0x44], xmm1
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_420
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_430
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_420:
	cmp word [edx+0x12], 0x0
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_440
	mov edx, [ebp-0x48]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_400
	mov dword [ebp-0x30], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x34], xmm0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_450
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_500:
	mov eax, [edi+0x14]
	movss xmm0, dword [eax+0x2c]
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_740:
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_460
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_470
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_460:
	movss xmm4, dword [ebp-0x34]
	addss xmm4, [ebp-0x38]
	movss [ebp-0x34], xmm4
	mulss xmm0, [ebp-0x38]
	mulss xmm0, [edi+0x30]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_470:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_480
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_450:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea edi, [edx+g_xAnimInfo]
	movss xmm1, dword [edi+0x2c]
	movss [ebp-0x38], xmm1
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_490
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_470
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_490:
	cmp word [edi+0x12], 0x0
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_500
	movzx eax, word [edi+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_470
	mov dword [ebp-0x24], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x28], xmm0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_510
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_560:
	mov eax, [esi+0x14]
	movss xmm0, dword [eax+0x2c]
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_640:
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_520
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_530
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_520:
	movss xmm1, dword [ebp-0x28]
	addss xmm1, [ebp-0x2c]
	movss [ebp-0x28], xmm1
	mulss xmm0, [ebp-0x2c]
	mulss xmm0, [esi+0x30]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_530:
	movzx eax, word [esi+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_540
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_510:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	lea esi, [edx+g_xAnimInfo]
	movss xmm1, dword [esi+0x2c]
	movss [ebp-0x2c], xmm1
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_550
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_530
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_550:
	cmp word [esi+0x12], 0x0
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_560
	movzx eax, word [esi+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_530
	mov dword [ebp-0xfc], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x20], xmm0
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_570
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_600:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_580
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_570:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	movss xmm1, dword [ebx+0x2c]
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_590
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_600
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_590:
	mov edx, ecx
	mov eax, [ebp-0x84]
	movss [ebp-0x98], xmm1
	movss [ebp-0xa8], xmm2
	movss [ebp-0xb8], xmm3
	movss [ebp-0xd8], xmm5
	movss [ebp-0xe8], xmm6
	movss [ebp-0xf8], xmm7
	call _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_610
	movss xmm1, dword [ebp-0x98]
	movss xmm2, dword [ebp-0xa8]
	movss xmm3, dword [ebp-0xb8]
	movss xmm5, dword [ebp-0xd8]
	movss xmm6, dword [ebp-0xe8]
	movss xmm7, dword [ebp-0xf8]
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_620
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_600
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_620:
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
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_570
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_580:
	movss xmm0, dword [ebp-0xfc]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_630
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_530
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_630:
	movss xmm0, dword [ebp-0x20]
	divss xmm0, dword [ebp-0xfc]
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_640
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_400:
	mov edx, [ebp-0x48]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_380
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_410:
	movss xmm0, dword [ebp-0x40]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_650
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_330
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_650:
	movss xmm0, dword [ebp-0x3c]
	divss xmm0, dword [ebp-0x40]
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_660
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_330:
	mov edx, [ebp-0x54]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_310
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_340:
	movss xmm0, dword [ebp-0x50]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_670
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_260
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_670:
	movss xmm0, dword [ebp-0x4c]
	divss xmm0, dword [ebp-0x50]
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_680
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_260:
	mov edx, [ebp-0x60]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_240
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_270:
	movss xmm0, dword [ebp-0x5c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_690
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_190
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_690:
	movss xmm0, dword [ebp-0x58]
	divss xmm0, dword [ebp-0x5c]
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_700
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_190:
	mov edx, [ebp-0x6c]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_170
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_200:
	movss xmm0, dword [ebp-0x68]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_710
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_120
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_710:
	movss xmm0, dword [ebp-0x64]
	divss xmm0, dword [ebp-0x68]
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_720
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_540:
	movss xmm4, dword [ebp-0x28]
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_730
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_470
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_730:
	movss xmm0, dword [ebp-0x24]
	divss xmm0, xmm4
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_740
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_120:
	mov edx, [ebp-0x78]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_100
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_130:
	movss xmm0, dword [ebp-0x74]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_750
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_60
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_750:
	movss xmm0, dword [ebp-0x70]
	divss xmm0, dword [ebp-0x74]
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_760
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_480:
	movss xmm0, dword [ebp-0x34]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_770
	jz _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_400
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_770:
	movss xmm0, dword [ebp-0x30]
	divss xmm0, dword [ebp-0x34]
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_780
_Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_60:
	mov edx, [ebp-0x1c]
	jmp _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj_790
	nop


;XAnimResetAnimMap_r(XModelNameMap*, unsigned int)
_Z19XAnimResetAnimMap_rP13XModelNameMapj:
_Z19XAnimResetAnimMap_rP13XModelNameMapj_260:
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
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_10
	mov edx, [ebp-0x144]
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_20
_Z19XAnimResetAnimMap_rP13XModelNameMapj_250:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	add ecx, g_xAnimInfo
	mov [ebp-0xbc], ecx
	cmp word [ecx+0x12], 0x0
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_30
	mov edx, [ebp-0xbc]
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_40
_Z19XAnimResetAnimMap_rP13XModelNameMapj_240:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x130], edx
	cmp word [edx+0x12], 0x0
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_50
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_60
_Z19XAnimResetAnimMap_rP13XModelNameMapj_230:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x11c], edx
	cmp word [edx+0x12], 0x0
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_70
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_80
_Z19XAnimResetAnimMap_rP13XModelNameMapj_220:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0x108], edx
	cmp word [edx+0x12], 0x0
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_90
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_100
_Z19XAnimResetAnimMap_rP13XModelNameMapj_210:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0xf4], edx
	cmp word [edx+0x12], 0x0
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_110
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_120
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_130
_Z19XAnimResetAnimMap_rP13XModelNameMapj_150:
	movzx eax, word [edx+0xc]
	movzx ebx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_140
	mov ecx, edx
_Z19XAnimResetAnimMap_rP13XModelNameMapj_270:
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_120
_Z19XAnimResetAnimMap_rP13XModelNameMapj_130:
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	mov [ebp-0xe0], edx
	cmp word [edx+0x12], 0x0
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_150
	movzx ecx, word [edx+0x12]
	mov [ebp-0xcc], ecx
	mov [esp], ecx
	call _Z18SL_ConvertToStringj
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
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_160
	xor edi, edi
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_170
_Z19XAnimResetAnimMap_rP13XModelNameMapj_180:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0xc4], edi
	jbe _Z19XAnimResetAnimMap_rP13XModelNameMapj_160
_Z19XAnimResetAnimMap_rP13XModelNameMapj_170:
	mov eax, [ebp-0xc0]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_180
	cmp esi, edx
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_190
_Z19XAnimResetAnimMap_rP13XModelNameMapj_200:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_180
	cmp esi, edx
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_200
_Z19XAnimResetAnimMap_rP13XModelNameMapj_190:
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
	ja _Z19XAnimResetAnimMap_rP13XModelNameMapj_170
_Z19XAnimResetAnimMap_rP13XModelNameMapj_160:
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
	call _Z26SL_RemoveRefToStringOfSizejj
	mov ecx, [ebp-0xe0]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_130
_Z19XAnimResetAnimMap_rP13XModelNameMapj_120:
	mov edx, [ebp-0xf4]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_210
_Z19XAnimResetAnimMap_rP13XModelNameMapj_100:
	mov ecx, [ebp-0x108]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_220
_Z19XAnimResetAnimMap_rP13XModelNameMapj_80:
	mov edx, [ebp-0x11c]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_230
_Z19XAnimResetAnimMap_rP13XModelNameMapj_60:
	mov ecx, [ebp-0x130]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_240
_Z19XAnimResetAnimMap_rP13XModelNameMapj_40:
	mov edx, [ebp-0xbc]
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_250
_Z19XAnimResetAnimMap_rP13XModelNameMapj_20:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19XAnimResetAnimMap_rP13XModelNameMapj_140:
	mov edx, ebx
	mov eax, [ebp-0x148]
	call _Z19XAnimResetAnimMap_rP13XModelNameMapj_260
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_140
	mov ecx, [ebp-0xe0]
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_270
_Z19XAnimResetAnimMap_rP13XModelNameMapj_110:
	movzx ecx, word [edx+0x12]
	mov [ebp-0xdc], ecx
	mov [esp], ecx
	call _Z18SL_ConvertToStringj
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
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_280
	xor edi, edi
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_290
_Z19XAnimResetAnimMap_rP13XModelNameMapj_300:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0xd4], edi
	jbe _Z19XAnimResetAnimMap_rP13XModelNameMapj_280
_Z19XAnimResetAnimMap_rP13XModelNameMapj_290:
	mov eax, [ebp-0xd0]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_300
	cmp esi, edx
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_310
_Z19XAnimResetAnimMap_rP13XModelNameMapj_320:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_300
	cmp esi, edx
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_320
_Z19XAnimResetAnimMap_rP13XModelNameMapj_310:
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
	ja _Z19XAnimResetAnimMap_rP13XModelNameMapj_290
_Z19XAnimResetAnimMap_rP13XModelNameMapj_280:
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
	call _Z26SL_RemoveRefToStringOfSizejj
	mov edx, [ebp-0xf4]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_210
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_100
_Z19XAnimResetAnimMap_rP13XModelNameMapj_90:
	movzx ecx, word [edx+0x12]
	mov [ebp-0xf0], ecx
	mov [esp], ecx
	call _Z18SL_ConvertToStringj
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
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_330
	xor edi, edi
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_340
_Z19XAnimResetAnimMap_rP13XModelNameMapj_350:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0xe8], edi
	jbe _Z19XAnimResetAnimMap_rP13XModelNameMapj_330
_Z19XAnimResetAnimMap_rP13XModelNameMapj_340:
	mov eax, [ebp-0xe4]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_350
	cmp esi, edx
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_360
_Z19XAnimResetAnimMap_rP13XModelNameMapj_370:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_350
	cmp esi, edx
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_370
_Z19XAnimResetAnimMap_rP13XModelNameMapj_360:
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
	ja _Z19XAnimResetAnimMap_rP13XModelNameMapj_340
_Z19XAnimResetAnimMap_rP13XModelNameMapj_330:
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
	call _Z26SL_RemoveRefToStringOfSizejj
	mov ecx, [ebp-0x108]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_220
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_80
_Z19XAnimResetAnimMap_rP13XModelNameMapj_70:
	movzx ecx, word [edx+0x12]
	mov [ebp-0x104], ecx
	mov [esp], ecx
	call _Z18SL_ConvertToStringj
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
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_380
	xor edi, edi
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_390
_Z19XAnimResetAnimMap_rP13XModelNameMapj_400:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0xfc], edi
	jbe _Z19XAnimResetAnimMap_rP13XModelNameMapj_380
_Z19XAnimResetAnimMap_rP13XModelNameMapj_390:
	mov eax, [ebp-0xf8]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_400
	cmp esi, edx
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_410
_Z19XAnimResetAnimMap_rP13XModelNameMapj_420:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_400
	cmp esi, edx
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_420
_Z19XAnimResetAnimMap_rP13XModelNameMapj_410:
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
	ja _Z19XAnimResetAnimMap_rP13XModelNameMapj_390
_Z19XAnimResetAnimMap_rP13XModelNameMapj_380:
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
	call _Z26SL_RemoveRefToStringOfSizejj
	mov edx, [ebp-0x11c]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_230
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_60
_Z19XAnimResetAnimMap_rP13XModelNameMapj_50:
	movzx ecx, word [edx+0x12]
	mov [ebp-0x118], ecx
	mov [esp], ecx
	call _Z18SL_ConvertToStringj
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
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_430
	xor edi, edi
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_440
_Z19XAnimResetAnimMap_rP13XModelNameMapj_450:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0x110], edi
	jbe _Z19XAnimResetAnimMap_rP13XModelNameMapj_430
_Z19XAnimResetAnimMap_rP13XModelNameMapj_440:
	mov eax, [ebp-0x10c]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_450
	cmp esi, edx
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_460
_Z19XAnimResetAnimMap_rP13XModelNameMapj_470:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_450
	cmp esi, edx
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_470
_Z19XAnimResetAnimMap_rP13XModelNameMapj_460:
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
	ja _Z19XAnimResetAnimMap_rP13XModelNameMapj_440
_Z19XAnimResetAnimMap_rP13XModelNameMapj_430:
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
	call _Z26SL_RemoveRefToStringOfSizejj
	mov ecx, [ebp-0x130]
	movzx eax, word [ecx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_240
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_40
_Z19XAnimResetAnimMap_rP13XModelNameMapj_30:
	movzx ecx, word [ecx+0x12]
	mov [ebp-0x12c], ecx
	mov [esp], ecx
	call _Z18SL_ConvertToStringj
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
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_480
	xor edi, edi
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_490
_Z19XAnimResetAnimMap_rP13XModelNameMapj_500:
	mov byte [ebp+edi-0x9b], 0x7f
	add edi, 0x1
	cmp [ebp-0x124], edi
	jbe _Z19XAnimResetAnimMap_rP13XModelNameMapj_480
_Z19XAnimResetAnimMap_rP13XModelNameMapj_490:
	mov eax, [ebp-0x120]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	mov edx, [ebp-0x148]
	lea ebx, [edx+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_500
	cmp esi, edx
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_510
_Z19XAnimResetAnimMap_rP13XModelNameMapj_520:
	lea eax, [ecx+0x1]
	movzx ecx, al
	mov eax, [ebp-0x148]
	lea ebx, [eax+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_500
	cmp esi, edx
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_520
_Z19XAnimResetAnimMap_rP13XModelNameMapj_510:
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
	ja _Z19XAnimResetAnimMap_rP13XModelNameMapj_490
_Z19XAnimResetAnimMap_rP13XModelNameMapj_480:
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
	call _Z26SL_RemoveRefToStringOfSizejj
	mov edx, [ebp-0xbc]
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_250
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_20
_Z19XAnimResetAnimMap_rP13XModelNameMapj_10:
	movzx eax, word [edx+0x12]
	mov [ebp-0x140], eax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
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
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_530
	mov dword [ebp-0x138], 0x0
_Z19XAnimResetAnimMap_rP13XModelNameMapj_570:
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
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_540
_Z19XAnimResetAnimMap_rP13XModelNameMapj_560:
	cmp esi, ecx
	jz _Z19XAnimResetAnimMap_rP13XModelNameMapj_550
	lea eax, [ebx+0x1]
	movzx ebx, al
	mov ecx, [ebp-0x148]
	lea edx, [ecx+ebx*4]
	movzx eax, word [edx]
	movzx ecx, ax
	test ax, ax
	jnz _Z19XAnimResetAnimMap_rP13XModelNameMapj_560
_Z19XAnimResetAnimMap_rP13XModelNameMapj_540:
	mov eax, [ebp-0x138]
	mov byte [ebp+eax-0x9b], 0x7f
_Z19XAnimResetAnimMap_rP13XModelNameMapj_580:
	add dword [ebp-0x138], 0x1
	cmp edi, [ebp-0x138]
	ja _Z19XAnimResetAnimMap_rP13XModelNameMapj_570
_Z19XAnimResetAnimMap_rP13XModelNameMapj_530:
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
	call _Z26SL_RemoveRefToStringOfSizejj
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_20
_Z19XAnimResetAnimMap_rP13XModelNameMapj_550:
	movzx ecx, word [edx+0x2]
	mov edx, [ebp-0x138]
	mov [ebp+edx-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	jmp _Z19XAnimResetAnimMap_rP13XModelNameMapj_580
	nop


;XAnimProcessServerNotify(DObj_s const*, XAnimInfo*, float)
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof:
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
	jz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
	cmp word [edx+0x4], 0x0
	jz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
	movss xmm1, dword [edx+0x18]
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm1, xmm2
	jz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_20
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_110:
	mov edx, [ebp-0x30]
	mov eax, [edx]
	cmp word [edi+0x12], 0x0
	jz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_30
	mov eax, [edi+0x14]
	mov [ebp-0x2c], eax
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_100:
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_40
	cmp word [edi+0x2], 0x0
	js _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_50
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_130:
	movsx eax, word [edi+0x2]
	mov [ebp-0x28], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x50]
	mov edx, [ebp-0x28]
	lea esi, [eax+edx*8]
	ucomiss xmm1, [ebp-0x34]
	jbe _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_60
	movss xmm0, dword [esi+0x4]
	movss xmm2, dword [ebp-0x34]
	ucomiss xmm2, xmm0
	ja _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_70
	ucomiss xmm1, xmm0
	jbe _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_80
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_80:
	movzx ebx, word [edi+0x4]
	movzx eax, word [esi]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call _Z13Scr_NotifyNumijjj
	add esi, 0x8
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x1c]
	cmp [ebp-0x28], eax
	jl _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_80
	mov esi, [edx+0x50]
	movss xmm0, dword [ebp-0x34]
	ucomiss xmm0, [esi+0x4]
	jbe _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
	lea eax, [esi+0xc]
	mov [ebp-0x20], eax
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_90:
	movzx ebx, word [edi+0x4]
	movzx eax, word [esi]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call _Z13Scr_NotifyNumijjj
	add esi, 0x8
	mov eax, [ebp-0x20]
	movss xmm0, dword [eax]
	add eax, 0x8
	mov [ebp-0x20], eax
	movss xmm1, dword [ebp-0x34]
	ucomiss xmm1, xmm0
	ja _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_90
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_30:
	movzx edx, word [edi]
	test dx, dx
	jz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_40
	movzx edx, dx
	mov eax, [eax]
	mov edx, [eax+edx*8+0x10]
	mov [ebp-0x2c], edx
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_100
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_20:
	jp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_110
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_140:
	mov eax, [g_endNotetrackName]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov dword [esp+0xc], 0x1
	movzx eax, word [edi+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call _Z13Scr_NotifyNumijjj
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_50:
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x50]
	movzx ebx, byte [eax+0x1c]
	test ebx, ebx
	jg _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_120
	xor eax, eax
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_240:
	sub eax, esi
	sar eax, 0x3
	movzx eax, ax
	mov [edi+0x2], ax
	test ax, ax
	jns _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_130
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_40:
	ucomiss xmm1, [ebp-0x34]
	ja _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_140
	movss xmm0, dword [ebp-0x34]
	ucomiss xmm0, xmm2
	jnz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
	jnp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_140
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_60:
	movss xmm0, dword [ebp-0x34]
	ucomiss xmm0, xmm2
	jz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_150
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_180:
	movss xmm0, dword [esi+0x4]
	ucomiss xmm0, [ebp-0x34]
	jae _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
	ucomiss xmm1, xmm0
	ja _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
	lea eax, [esi+0x8]
	mov [ebp-0x1c], eax
	add esi, 0xc
	mov edx, eax
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_160
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_170:
	mov edx, [ebp-0x1c]
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_160:
	movzx ebx, word [edi+0x4]
	movzx eax, word [edx-0x8]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call _Z13Scr_NotifyNumijjj
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x1c]
	cmp [ebp-0x28], eax
	jge _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
	movss xmm0, dword [esi]
	add dword [ebp-0x1c], 0x8
	add esi, 0x8
	movss xmm1, dword [ebp-0x34]
	ucomiss xmm1, xmm0
	ja _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_170
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_150:
	jp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_180
	ucomiss xmm1, [esi+0x4]
	ja _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_190:
	movzx ebx, word [edi+0x4]
	movzx eax, word [esi]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call _Z13Scr_NotifyNumijjj
	add esi, 0x8
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x1c]
	cmp [ebp-0x28], eax
	jl _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_190
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_70:
	lea eax, [esi+0x8]
	mov [ebp-0x24], eax
	add esi, 0xc
	mov edx, eax
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_200
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_210:
	mov edx, [ebp-0x24]
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_200:
	movzx ebx, word [edi+0x4]
	movzx eax, word [edx-0x8]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x6]
	sub eax, 0x1
	mov [esp], eax
	call _Z13Scr_NotifyNumijjj
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x1c]
	cmp [ebp-0x28], eax
	jge _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
	movss xmm0, dword [esi]
	add dword [ebp-0x24], 0x8
	add esi, 0x8
	movss xmm1, dword [ebp-0x34]
	ucomiss xmm1, xmm0
	ja _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_210
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_10
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_120:
	mov edx, esi
	movss xmm3, dword [_float_2_00000000]
	xor ecx, ecx
	xor eax, eax
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_230:
	movss xmm0, dword [edx+0x4]
	ucomiss xmm1, xmm0
	ja _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_220
	ucomiss xmm3, xmm0
	jbe _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_220
	mov eax, edx
	movaps xmm3, xmm0
_Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_220:
	add ecx, 0x1
	add edx, 0x8
	cmp ebx, ecx
	jnz _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_230
	jmp _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof_240


;XAnimCheckFreeInfo(XAnimTree_s*, unsigned int, int)
_Z18XAnimCheckFreeInfoP11XAnimTree_sji:
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_150:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_10
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_470:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_20
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_410:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_30
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_370:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_40
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_330:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_50
	mov eax, edx
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_290:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_60
	mov eax, edx
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_230:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_70
	mov eax, edx
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_210:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_80
	mov eax, edx
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_90
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_130:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_100
	pxor xmm0, xmm0
	mov edx, [ebp-0x58]
	ucomiss xmm0, [edx+0x10]
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_110
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_100:
	cmp word [ebp-0x6a], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_120
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_170:
	mov eax, [ebp-0x54]
	mov [ebp-0x60], eax
	pxor xmm0, xmm0
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_90:
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
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_130
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_140
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_160:
	mov esi, edi
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_140:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	mov ecx, [ebp-0x1c]
	mov edx, esi
	mov eax, [ebp-0xe4]
	call _Z18XAnimCheckFreeInfoP11XAnimTree_sji_150
	test bx, bx
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_160
	mov eax, [ebp-0x5c]
	cmp word [eax+0xc], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_130
	cmp word [ebp-0x6a], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_170
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_120:
	mov edx, [ebp-0x68]
	cmp word [edx+0xc], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_180
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_80:
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_180
	pxor xmm0, xmm0
	mov eax, [ebp-0x64]
	ucomiss xmm0, [eax+0x10]
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_190
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_180:
	cmp word [ebp-0x7a], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_200
	mov edx, [ebp-0x50]
	mov [ebp-0x70], edx
	pxor xmm0, xmm0
	mov eax, edx
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_210
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_110:
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_100
	mov edx, [ebp-0x60]
	mov eax, [ebp-0xe4]
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_100
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_200:
	mov eax, [ebp-0x78]
	cmp word [eax+0xc], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_70
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_240:
	cmp word [ebp-0x8a], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_220
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_250:
	mov eax, [ebp-0x4c]
	mov [ebp-0x80], eax
	pxor xmm0, xmm0
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_230
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_70:
	mov eax, [ebp-0x24]
	test eax, eax
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_240
	pxor xmm0, xmm0
	mov edx, [ebp-0x74]
	ucomiss xmm0, [edx+0x10]
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_240
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_240
	mov edx, [ebp-0x80]
	mov eax, [ebp-0xe4]
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	cmp word [ebp-0x8a], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_250
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_220:
	mov edx, [ebp-0x88]
	cmp word [edx+0xc], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_260
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_60:
	mov eax, [ebp-0x28]
	test eax, eax
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_260
	pxor xmm0, xmm0
	mov eax, [ebp-0x84]
	ucomiss xmm0, [eax+0x10]
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_270
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_260:
	cmp word [ebp-0x9a], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_280
	mov edx, [ebp-0x48]
	mov [ebp-0x90], edx
	pxor xmm0, xmm0
	mov eax, edx
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_290
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_190:
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_180
	mov edx, [ebp-0x70]
	mov eax, [ebp-0xe4]
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_180
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_280:
	mov eax, [ebp-0x98]
	cmp word [eax+0xc], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_300
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_50:
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_300
	pxor xmm0, xmm0
	mov edx, [ebp-0x94]
	ucomiss xmm0, [edx+0x10]
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_310
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_300:
	cmp word [ebp-0xaa], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_320
	mov eax, [ebp-0x44]
	mov [ebp-0xa0], eax
	pxor xmm0, xmm0
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_330
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_270:
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_260
	mov edx, [ebp-0x90]
	mov eax, [ebp-0xe4]
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_260
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_310:
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_300
	mov edx, [ebp-0xa0]
	mov eax, [ebp-0xe4]
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_300
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_320:
	mov edx, [ebp-0xa8]
	cmp word [edx+0xc], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_340
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_40:
	mov eax, [ebp-0x30]
	test eax, eax
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_340
	pxor xmm0, xmm0
	mov eax, [ebp-0xa4]
	ucomiss xmm0, [eax+0x10]
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_350
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_340:
	cmp word [ebp-0xba], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_360
	mov edx, [ebp-0x40]
	mov [ebp-0xb0], edx
	pxor xmm0, xmm0
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_370
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_350:
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_340
	mov edx, [ebp-0xb0]
	mov eax, [ebp-0xe4]
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_340
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_360:
	mov eax, [ebp-0xb8]
	cmp word [eax+0xc], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_380
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_30:
	mov edi, [ebp-0x34]
	test edi, edi
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_380
	pxor xmm0, xmm0
	mov edx, [ebp-0xb4]
	ucomiss xmm0, [edx+0x10]
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_390
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_380:
	cmp word [ebp-0xca], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_400
	mov eax, [ebp-0x3c]
	mov [ebp-0xc0], eax
	pxor xmm0, xmm0
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_410
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_460:
	mov eax, [ebp-0xd8]
	cmp word [eax+0xc], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_420
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_10:
	mov ebx, [ebp-0xec]
	test ebx, ebx
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_420
	pxor xmm0, xmm0
	mov edx, [ebp-0xd4]
	ucomiss xmm0, [edx+0x10]
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_430
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_420:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_430:
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_420
	mov edx, [ebp-0xe8]
	mov eax, [ebp-0xe4]
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13XAnimFreeInfoP11XAnimTree_sj
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_400:
	mov edx, [ebp-0xc8]
	cmp word [edx+0xc], 0x0
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_440
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_20:
	mov esi, [ebp-0x38]
	test esi, esi
	jnz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_440
	pxor xmm0, xmm0
	mov eax, [ebp-0xc4]
	ucomiss xmm0, [eax+0x10]
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_450
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_440:
	cmp word [ebp-0xde], 0x0
	jz _Z18XAnimCheckFreeInfoP11XAnimTree_sji_460
	mov edx, [ebp-0xd0]
	mov [ebp-0xdc], edx
	pxor xmm0, xmm0
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_470
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_390:
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_380
	mov edx, [ebp-0xc0]
	mov eax, [ebp-0xe4]
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_380
_Z18XAnimCheckFreeInfoP11XAnimTree_sji_450:
	jp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_440
	mov edx, [ebp-0xdc]
	mov eax, [ebp-0xe4]
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	jmp _Z18XAnimCheckFreeInfoP11XAnimTree_sji_440


;XAnimClearTreeGoalWeightsInternal(XAnimTree_s*, unsigned int, float, int)
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi:
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_550:
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
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_10
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_10
	test ecx, ecx
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_20
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_10:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_820:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_30
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_30
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_30:
	movzx eax, word [esi+0x4]
	test ax, ax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_40
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [esi+0x4], 0x0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_40:
	mov word [esi+0x2], 0xffff
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xc]
	movzx edx, ax
	mov [ebp-0x1c], edx
	test ax, ax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_50
	xor ecx, ecx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_640:
	mov edx, [ebp-0x58]
	test edx, edx
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_60
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	mov edx, [ebp-0x1c]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_60
	mov byte [ebp-0x4b], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_810:
	mov edx, [ebp-0x1c]
	shl edx, 0x3
	mov eax, [ebp-0x1c]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_70
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_70
	cmp byte [ebp-0x4b], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_80
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_70:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_830:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_90
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_90
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_90:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_100
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_100:
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
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_110
	xor ecx, ecx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_630:
	cmp byte [ebp-0x4b], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_120
	mov eax, [ebp-0x48]
	shl eax, 0x3
	mov edx, [ebp-0x48]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_120
	mov byte [ebp-0x4a], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_850:
	mov edx, [ebp-0x48]
	shl edx, 0x3
	mov eax, [ebp-0x48]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_130
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_130
	cmp byte [ebp-0x4a], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_140
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_130:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_840:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_150
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_150
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_150:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_160
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_160:
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
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_170
	xor ecx, ecx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_620:
	cmp byte [ebp-0x4a], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_180
	mov eax, [ebp-0x40]
	shl eax, 0x3
	mov edx, [ebp-0x40]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_180
	mov byte [ebp-0x49], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_790:
	mov edx, [ebp-0x40]
	shl edx, 0x3
	mov eax, [ebp-0x40]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_190
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_190
	cmp byte [ebp-0x49], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_200
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_190:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_860:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_210
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_210
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_210:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_220
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_800:
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
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_230
	xor ecx, ecx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_610:
	cmp byte [ebp-0x49], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_240
	mov eax, [ebp-0x38]
	shl eax, 0x3
	mov edx, [ebp-0x38]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_240
	mov byte [ebp-0x41], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_770:
	mov edx, [ebp-0x38]
	shl edx, 0x3
	mov eax, [ebp-0x38]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_250
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_250
	cmp byte [ebp-0x41], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_260
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_250:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_780:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_270
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_270
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_270:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_280
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_280:
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
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_290
	xor ecx, ecx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_600:
	cmp byte [ebp-0x41], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_300
	mov eax, [ebp-0x30]
	shl eax, 0x3
	mov edx, [ebp-0x30]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_300
	mov byte [ebp-0x39], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_740:
	mov edx, [ebp-0x30]
	shl edx, 0x3
	mov eax, [ebp-0x30]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_310
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_310
	cmp byte [ebp-0x39], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_320
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_310:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_760:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_330
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_330
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_330:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_340
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_750:
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
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_350
	xor ecx, ecx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_590:
	cmp byte [ebp-0x39], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_360
	mov eax, [ebp-0x28]
	shl eax, 0x3
	mov edx, [ebp-0x28]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_360
	mov byte [ebp-0x31], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_710:
	mov edx, [ebp-0x28]
	shl edx, 0x3
	mov eax, [ebp-0x28]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_370
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_370
	cmp byte [ebp-0x31], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_380
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_370:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_730:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_390
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_390
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_390:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_400
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_720:
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
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_410
	xor ecx, ecx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_580:
	cmp byte [ebp-0x31], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_420
	mov eax, [ebp-0x20]
	shl eax, 0x3
	mov edx, [ebp-0x20]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_420
	mov byte [ebp-0x29], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_680:
	mov edx, [ebp-0x20]
	shl edx, 0x3
	mov eax, [ebp-0x20]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_430
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_430
	cmp byte [ebp-0x29], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_440
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_430:
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_700:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_450
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_450
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_450:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_460
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_690:
	mov word [ebx+0x2], 0xffff
	mov eax, [ebp-0x20]
	shl eax, 0x3
	mov edx, [ebp-0x20]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx edi, ax
	test ax, ax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_470
	xor ecx, ecx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_570:
	cmp byte [ebp-0x29], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_480
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp ecx, eax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_480
	mov byte [ebp-0x21], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_650:
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	lea eax, [ebx+0x18]
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_490
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_490
	cmp byte [ebp-0x21], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_500
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_490:
	movss xmm3, dword [ebp-0x54]
	movss [eax+0xc], xmm3
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_670:
	mov dword [eax+0x10], 0x0
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_510
	jp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_510
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_510:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_520
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_660:
	mov word [ebx+0x2], 0xffff
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx esi, ax
	test ax, ax
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_530
	cmp byte [ebp-0x21], 0x0
	jz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_540
	xor edx, edx
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_560:
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
	call _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_550
	movzx edx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_560
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_530:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx ecx, word [edx+g_xAnimInfo+0x10]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_570
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_470:
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
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_580
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_410:
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
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_590
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_350:
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
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_600
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_290:
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
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_610
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_230:
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
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_620
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_170:
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
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_630
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_110:
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
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_640
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_50:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_480:
	mov byte [ebp-0x21], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_650
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_520:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_660
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_500:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_670
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_420:
	mov byte [ebp-0x29], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_680
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_460:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_690
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_440:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_700
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_360:
	mov byte [ebp-0x31], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_710
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_400:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_720
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_380:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_730
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_300:
	mov byte [ebp-0x39], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_740
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_340:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_750
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_320:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_760
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_240:
	mov byte [ebp-0x41], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_770
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_260:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_780
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_180:
	mov byte [ebp-0x49], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_790
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_540:
	xor ecx, ecx
	movss xmm0, dword [ebp-0x54]
	mov edx, esi
	mov eax, [ebp-0x50]
	call _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_550
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jnz _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_540
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_530
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_220:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_800
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_60:
	mov byte [ebp-0x4b], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_810
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_20:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_820
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_80:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_830
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_140:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_840
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_120:
	mov byte [ebp-0x4a], 0x0
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_850
_Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_200:
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
	jmp _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi_860
	nop


;XAnimEnsureGoalWeightParent(DObj_s*, unsigned int)
_Z27XAnimEnsureGoalWeightParentP6DObj_sj:
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_50:
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
	jnz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_10
	movzx eax, word [eax+0x4]
	test ax, ax
	jnz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_20
	movzx eax, word [g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_30
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
	jnz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_40
	mov edx, esi
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_130:
	mov eax, [ebp-0x20]
	mov [eax+0x4], dx
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_140:
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
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_20:
	movzx esi, ax
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_110:
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_10:
	mov eax, [eax]
	movzx edx, word [eax+ebx*8+0xe]
	mov eax, ecx
	call _Z27XAnimEnsureGoalWeightParentP6DObj_sj_50
	mov [ebp-0x24], eax
	mov edx, eax
	shl edx, 0x3
	shl eax, 0x6
	sub eax, edx
	movzx eax, word [eax+g_xAnimInfo+0xc]
	movzx esi, ax
	test ax, ax
	jnz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_60
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_120:
	movzx eax, word [g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_70
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
	jnz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_80
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_180:
	mov dword [ebp-0x1c], 0x0
	xor eax, eax
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_210:
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
	jz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_90
	mov edx, esi
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], si
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_170:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_100
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	shl dword [ebp-0x1c], 0x6
	sub [ebp-0x1c], eax
	mov edi, [ebp-0x1c]
	mov [edi+g_xAnimInfo+0xa], dx
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_160:
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
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_60:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp ebx, eax
	jz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_110
	movzx eax, word [edx+0xa]
	movzx esi, ax
	test ax, ax
	jnz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_60
	jmp _Z27XAnimEnsureGoalWeightParentP6DObj_sj_120
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_40:
	mov edx, esi
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	mov [ebx+g_xAnimInfo+0x8], si
	jmp _Z27XAnimEnsureGoalWeightParentP6DObj_sj_130
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_30:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor esi, esi
	jmp _Z27XAnimEnsureGoalWeightParentP6DObj_sj_140
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_100:
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jnz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_150
	mov edi, [ebp-0x20]
	mov [edi+0x4], dx
	jmp _Z27XAnimEnsureGoalWeightParentP6DObj_sj_160
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_90:
	mov edx, esi
	jmp _Z27XAnimEnsureGoalWeightParentP6DObj_sj_170
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_80:
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp ebx, eax
	jbe _Z27XAnimEnsureGoalWeightParentP6DObj_sj_180
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_200:
	mov [ebp-0x1c], ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z27XAnimEnsureGoalWeightParentP6DObj_sj_190
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp ebx, eax
	ja _Z27XAnimEnsureGoalWeightParentP6DObj_sj_200
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_190:
	movzx eax, word [ebp-0x1c]
	jmp _Z27XAnimEnsureGoalWeightParentP6DObj_sj_210
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_70:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor esi, esi
	jmp _Z27XAnimEnsureGoalWeightParentP6DObj_sj_160
_Z27XAnimEnsureGoalWeightParentP6DObj_sj_150:
	mov eax, [ebp-0x24]
	shl eax, 0x3
	shl dword [ebp-0x24], 0x6
	sub [ebp-0x24], eax
	mov eax, [ebp-0x24]
	mov [eax+g_xAnimInfo+0xc], dx
	jmp _Z27XAnimEnsureGoalWeightParentP6DObj_sj_160
	nop


;XAnimAllocInfoIndex(DObj_s*, unsigned int, int)
_Z19XAnimAllocInfoIndexP6DObj_sji:
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
	jnz _Z19XAnimAllocInfoIndexP6DObj_sji_10
	mov dword [ebp-0x4e8], 0x0
	mov dword [ebp-0x4e4], 0x0
_Z19XAnimAllocInfoIndexP6DObj_sji_140:
	movzx eax, word [g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_20
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
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_30
	mov eax, [ebp-0x4e8]
	shl eax, 0x3
	mov edx, [ebp-0x4e8]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx ecx, ax
	test ax, ax
	jnz _Z19XAnimAllocInfoIndexP6DObj_sji_40
_Z19XAnimAllocInfoIndexP6DObj_sji_80:
	xor ebx, ebx
	xor eax, eax
_Z19XAnimAllocInfoIndexP6DObj_sji_110:
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
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_50
	mov edx, edi
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], di
	test ebx, ebx
	jnz _Z19XAnimAllocInfoIndexP6DObj_sji_60
_Z19XAnimAllocInfoIndexP6DObj_sji_120:
	mov esi, [ebp-0x4e8]
	test esi, esi
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_70
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
_Z19XAnimAllocInfoIndexP6DObj_sji_30:
	mov eax, [ebp-0x4e8]
	shl eax, 0x3
	mov edx, [ebp-0x4e8]
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_80
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x4ec], eax
	jbe _Z19XAnimAllocInfoIndexP6DObj_sji_80
_Z19XAnimAllocInfoIndexP6DObj_sji_100:
	mov ebx, ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_90
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x4ec], eax
	ja _Z19XAnimAllocInfoIndexP6DObj_sji_100
_Z19XAnimAllocInfoIndexP6DObj_sji_90:
	mov eax, ebx
	jmp _Z19XAnimAllocInfoIndexP6DObj_sji_110
_Z19XAnimAllocInfoIndexP6DObj_sji_50:
	mov edx, edi
	test ebx, ebx
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_120
_Z19XAnimAllocInfoIndexP6DObj_sji_60:
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
_Z19XAnimAllocInfoIndexP6DObj_sji_20:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor edi, edi
	mov eax, edi
	add esp, 0x4fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19XAnimAllocInfoIndexP6DObj_sji_10:
	mov eax, [eax]
	mov ecx, [ebp-0x4ec]
	lea ebx, [eax+ecx*8]
	lea eax, [ebx+0xc]
	mov [ebp-0x4dc], eax
	movzx edx, word [eax+0x2]
	mov eax, esi
	call _Z27XAnimEnsureGoalWeightParentP6DObj_sj
	mov [ebp-0x4e8], eax
	cmp word [ebx+0xc], 0x0
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_130
	mov dword [ebp-0x4e4], 0x0
	jmp _Z19XAnimAllocInfoIndexP6DObj_sji_140
_Z19XAnimAllocInfoIndexP6DObj_sji_70:
	mov ecx, [ebp-0x4e0]
	mov [ecx+0x4], dx
	mov eax, edi
	add esp, 0x4fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19XAnimAllocInfoIndexP6DObj_sji_40:
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x4ec], eax
	jb _Z19XAnimAllocInfoIndexP6DObj_sji_80
_Z19XAnimAllocInfoIndexP6DObj_sji_150:
	mov ebx, ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_90
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x4ec], eax
	jae _Z19XAnimAllocInfoIndexP6DObj_sji_150
	mov eax, ebx
	jmp _Z19XAnimAllocInfoIndexP6DObj_sji_110
_Z19XAnimAllocInfoIndexP6DObj_sji_130:
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
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_160
	xor esi, esi
	mov dword [ebp-0x4d0], 0x0
	mov edx, [ebp-0x4d0]
_Z19XAnimAllocInfoIndexP6DObj_sji_210:
	mov ecx, [ebp-0x4d4]
	mov eax, [ecx+edx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x4cc], edx
	movzx eax, byte [eax+0x4]
	movzx ecx, al
	mov [ebp-0x4c8], ecx
	test al, al
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_170
	xor ebx, ebx
_Z19XAnimAllocInfoIndexP6DObj_sji_200:
	mov eax, [ebp-0x4cc]
	movzx ecx, word [eax+ebx*2]
	movzx eax, cl
	lea edx, [edi+eax*4]
	cmp word [edx], 0x0
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_180
_Z19XAnimAllocInfoIndexP6DObj_sji_190:
	add eax, 0x1
	and eax, 0xff
	lea edx, [edi+eax*4]
	cmp word [edx], 0x0
	jnz _Z19XAnimAllocInfoIndexP6DObj_sji_190
_Z19XAnimAllocInfoIndexP6DObj_sji_180:
	mov [edx+0x2], si
	mov [edx], cx
	add ebx, 0x1
	add esi, 0x1
	cmp [ebp-0x4c8], ebx
	ja _Z19XAnimAllocInfoIndexP6DObj_sji_200
_Z19XAnimAllocInfoIndexP6DObj_sji_170:
	add dword [ebp-0x4d0], 0x1
	mov edx, [ebp-0x4d0]
	cmp [ebp-0x4d8], edx
	ja _Z19XAnimAllocInfoIndexP6DObj_sji_210
_Z19XAnimAllocInfoIndexP6DObj_sji_160:
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
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_220
	mov dword [ebp-0x4c4], 0x0
_Z19XAnimAllocInfoIndexP6DObj_sji_260:
	mov eax, [ebp-0x4c4]
	mov edx, [ebp-0x4bc]
	movzx esi, word [edx+eax*2]
	mov ecx, esi
	and ecx, 0xff
	lea ebx, [edi+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_230
_Z19XAnimAllocInfoIndexP6DObj_sji_250:
	cmp esi, edx
	jz _Z19XAnimAllocInfoIndexP6DObj_sji_240
	lea eax, [ecx+0x1]
	movzx ecx, al
	lea ebx, [edi+ecx*4]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jnz _Z19XAnimAllocInfoIndexP6DObj_sji_250
_Z19XAnimAllocInfoIndexP6DObj_sji_230:
	mov ecx, [ebp-0x4c4]
	mov byte [ebp+ecx-0x9b], 0x7f
_Z19XAnimAllocInfoIndexP6DObj_sji_270:
	add dword [ebp-0x4c4], 0x1
	mov eax, [ebp-0x4c4]
	cmp [ebp-0x4c0], eax
	ja _Z19XAnimAllocInfoIndexP6DObj_sji_260
_Z19XAnimAllocInfoIndexP6DObj_sji_220:
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
	jmp _Z19XAnimAllocInfoIndexP6DObj_sji_140
_Z19XAnimAllocInfoIndexP6DObj_sji_240:
	movzx ecx, word [ebx+0x2]
	mov edx, [ebp-0x4c4]
	mov [ebp+edx-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	jmp _Z19XAnimAllocInfoIndexP6DObj_sji_270


;XAnimCloneInitTime(XAnimTree_s*, unsigned int, unsigned int)
_Z18XAnimCloneInitTimeP11XAnimTree_sjj:
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_80:
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
	jnz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_10
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_180:
	movzx eax, word [esi+0x10]
	mov [ebp-0x20], eax
	movzx eax, word [g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_20
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
	jnz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_30
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_130:
	mov dword [ebp-0x1c], 0x0
	xor eax, eax
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_160:
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
	jnz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_40
	mov edx, edi
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_50
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_100:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	shl dword [ebp-0x1c], 0x6
	sub [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov [eax+g_xAnimInfo+0xa], dx
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_120:
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
	jnz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_60
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_170:
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
	jnz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_70
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_90:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_70:
	mov ecx, edi
	mov edx, ebx
	mov eax, [ebp-0x28]
	call _Z18XAnimCloneInitTimeP11XAnimTree_sjj_80
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_70
	jmp _Z18XAnimCloneInitTimeP11XAnimTree_sjj_90
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_40:
	mov edx, edi
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], di
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_100
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_50:
	mov eax, [ebp-0x30]
	test eax, eax
	jnz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_110
	mov eax, [ebp-0x28]
	mov [eax+0x4], dx
	jmp _Z18XAnimCloneInitTimeP11XAnimTree_sjj_120
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_30:
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	jbe _Z18XAnimCloneInitTimeP11XAnimTree_sjj_130
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_150:
	mov [ebp-0x1c], ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z18XAnimCloneInitTimeP11XAnimTree_sjj_140
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	ja _Z18XAnimCloneInitTimeP11XAnimTree_sjj_150
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_140:
	movzx eax, word [ebp-0x1c]
	jmp _Z18XAnimCloneInitTimeP11XAnimTree_sjj_160
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_60:
	movzx eax, dx
	mov [esp], eax
	call _Z17SL_AddRefToStringj
	jmp _Z18XAnimCloneInitTimeP11XAnimTree_sjj_170
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_20:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor edi, edi
	jmp _Z18XAnimCloneInitTimeP11XAnimTree_sjj_120
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_10:
	mov [esp], edx
	call _Z17SL_AddRefToStringj
	jmp _Z18XAnimCloneInitTimeP11XAnimTree_sjj_180
_Z18XAnimCloneInitTimeP11XAnimTree_sjj_110:
	mov eax, [ebp-0x30]
	shl eax, 0x3
	shl dword [ebp-0x30], 0x6
	sub [ebp-0x30], eax
	mov eax, [ebp-0x30]
	mov [eax+g_xAnimInfo+0xc], dx
	jmp _Z18XAnimCloneInitTimeP11XAnimTree_sjj_120


;XAnimUpdateOldTime(DObj_s*, unsigned int, XAnimState*, float, unsigned char, unsigned char*)
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh:
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_130:
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
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_10
	movss xmm2, dword [edi+0xc]
	ucomiss xmm0, xmm2
	jae _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_10
	movss xmm1, dword [edi+0x14]
	movss xmm3, dword [edi+0x10]
	movaps xmm0, xmm3
	subss xmm0, xmm1
	mulss xmm0, xmm4
	divss xmm0, xmm2
	addss xmm0, xmm1
	movss [edi+0x14], xmm0
	ucomiss xmm0, [_float_0_00000100]
	jae _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_20
	jp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_20
	mulss xmm3, [_float_0_00100000]
	movss [edi+0x14], xmm3
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_20:
	subss xmm2, xmm4
	movss [edi+0xc], xmm2
	pxor xmm0, xmm0
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_90:
	ucomiss xmm0, [edi+0x14]
	jp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_30
	jnz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_30
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_80:
	mov byte [ebp-0x35], 0x0
	xor edx, edx
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_200:
	mov byte [edi+0x1c], 0x0
	mov eax, [ebp-0x34]
	cmp word [eax+0x12], 0x0
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_40
	mov eax, [eax+0x14]
	ucomiss xmm0, [eax+0x2c]
	setnz al
	setp dl
	or al, dl
	mov [ebp-0x19], al
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_110:
	cmp byte [ebp-0x35], 0x0
	jnz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_50
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_100:
	mov edx, [ebp-0x34]
	cmp word [edx+0x12], 0x0
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_60
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_150:
	mov edx, [ebp-0x44]
	movss xmm0, dword [edx]
	ucomiss xmm0, [edi]
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_70
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_210:
	movss [edi], xmm0
	mov edx, [ebp-0x44]
	movzx eax, word [edx+0x8]
	mov [edi+0x8], ax
	mov ecx, [ebp-0x34]
	mov word [ecx+0x2], 0xffff
	movzx edx, word [edi+0x8]
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_180:
	mov eax, [edi]
	mov [edi+0x4], eax
	mov [edi+0xa], dx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_10:
	mov eax, [edi+0x10]
	mov [edi+0x14], eax
	pxor xmm0, xmm0
	movss [edi+0xc], xmm0
	test cl, cl
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_80
	jmp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_90
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_50:
	cmp byte [ebp-0x19], 0x0
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_100
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
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_40:
	mov ecx, eax
	mov byte [ebp-0x19], 0x0
	test byte [eax+0x14], 0x4
	mov eax, [ebp-0x44]
	cmovnz eax, edi
	mov [ebp-0x44], eax
	movzx eax, word [ecx+0xc]
	movzx esi, ax
	test ax, ax
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_110
	movzx edx, dl
	mov [ebp-0x2c], edx
	jmp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_120
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_140:
	mov esi, [ebp-0x30]
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_120:
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
	call _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_130
	test bx, bx
	movss xmm4, dword [ebp-0x58]
	jnz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_140
	jmp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_110
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_60:
	test byte [edx+0x14], 0x4
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_150
	pxor xmm0, xmm0
	ucomiss xmm0, [edi]
	jnz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_160
	jp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_160
	cmp word [edi+0x8], 0x0
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_170
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_160:
	movzx edx, word [edi+0x8]
	cmp dx, [edi+0xa]
	jnz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_180
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
	jnz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_190
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_220:
	movzx edx, word [edi+0x8]
	jmp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_180
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_30:
	mov byte [ebp-0x35], 0x1
	mov edx, 0x1
	jmp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_200
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_70:
	jp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_210
	movzx edx, word [edi+0x8]
	mov ecx, [ebp-0x44]
	cmp dx, [ecx+0x8]
	jnz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_210
	jmp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_180
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_190:
	mov eax, ebx
	call _Z14XAnimResetTimej
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_220
	mov eax, ebx
	call _Z14XAnimResetTimej
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_190
	jmp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_220
_Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_170:
	xor edx, edx
	jmp _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh_180
	nop


;XAnimRestart(XAnimTree_s*, unsigned int, float)
_Z12XAnimRestartP11XAnimTree_sjf:
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
	jz _Z12XAnimRestartP11XAnimTree_sjf_10
	mov ecx, [eax]
	mov esi, edx
_Z12XAnimRestartP11XAnimTree_sjf_40:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	lea ebx, [edx+g_xAnimInfo]
	movzx eax, word [ebx+0x10]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jz _Z12XAnimRestartP11XAnimTree_sjf_20
	test byte [edx+0x4], 0x4
	jnz _Z12XAnimRestartP11XAnimTree_sjf_30
_Z12XAnimRestartP11XAnimTree_sjf_20:
	movzx eax, word [ebx+0xe]
	movzx esi, ax
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_40
_Z12XAnimRestartP11XAnimTree_sjf_10:
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	cmp word [esi+0x12], 0x0
	jz _Z12XAnimRestartP11XAnimTree_sjf_50
	lea ebx, [esi+0x18]
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x18]
	jnz _Z12XAnimRestartP11XAnimTree_sjf_60
	jp _Z12XAnimRestartP11XAnimTree_sjf_60
	cmp word [ebx+0x8], 0x0
	jz _Z12XAnimRestartP11XAnimTree_sjf_50
_Z12XAnimRestartP11XAnimTree_sjf_60:
	movzx eax, word [ebx+0x8]
	cmp ax, [ebx+0xa]
	jz _Z12XAnimRestartP11XAnimTree_sjf_70
_Z12XAnimRestartP11XAnimTree_sjf_50:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12XAnimRestartP11XAnimTree_sjf_70:
	movss xmm1, dword [ebp-0x2c]
	ucomiss xmm1, xmm0
	jp _Z12XAnimRestartP11XAnimTree_sjf_80
	jnz _Z12XAnimRestartP11XAnimTree_sjf_80
_Z12XAnimRestartP11XAnimTree_sjf_110:
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
	jz _Z12XAnimRestartP11XAnimTree_sjf_50
_Z12XAnimRestartP11XAnimTree_sjf_90:
	mov eax, ebx
	call _Z14XAnimResetTimej
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_90
	jmp _Z12XAnimRestartP11XAnimTree_sjf_50
_Z12XAnimRestartP11XAnimTree_sjf_80:
	ucomiss xmm0, [ebx+0x14]
	jp _Z12XAnimRestartP11XAnimTree_sjf_100
	jz _Z12XAnimRestartP11XAnimTree_sjf_110
_Z12XAnimRestartP11XAnimTree_sjf_100:
	movzx ecx, word [esi+0xe]
	mov edx, edi
	mov eax, [ebp-0x28]
	call _Z18XAnimCloneInitTimeP11XAnimTree_sjj
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebp-0x2c]
	movss [ebx+0xc], xmm0
	mov dword [ebx+0x10], 0x0
	movzx eax, word [esi+0x4]
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_120
_Z12XAnimRestartP11XAnimTree_sjf_260:
	mov word [esi+0x2], 0xffff
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xc]
	movzx edx, ax
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_130
	mov edi, [ebp-0x1c]
	jmp _Z12XAnimRestartP11XAnimTree_sjf_50
_Z12XAnimRestartP11XAnimTree_sjf_30:
	lea eax, [ebx+0x18]
	mov [ebp-0x24], eax
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x18]
	jnz _Z12XAnimRestartP11XAnimTree_sjf_140
	jp _Z12XAnimRestartP11XAnimTree_sjf_140
	cmp word [eax+0x8], 0x0
	jz _Z12XAnimRestartP11XAnimTree_sjf_150
	mov edx, [ebp-0x24]
_Z12XAnimRestartP11XAnimTree_sjf_200:
	movzx eax, word [edx+0x8]
	cmp ax, [edx+0xa]
	jz _Z12XAnimRestartP11XAnimTree_sjf_160
_Z12XAnimRestartP11XAnimTree_sjf_150:
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx edi, word [edi+g_xAnimInfo+0x10]
	mov [ebp-0x20], edi
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x4]
	test ax, ax
	jz _Z12XAnimRestartP11XAnimTree_sjf_170
	movzx edi, ax
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	jz _Z12XAnimRestartP11XAnimTree_sjf_50
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z12XAnimRestartP11XAnimTree_sjf_170
	xor edx, edx
_Z12XAnimRestartP11XAnimTree_sjf_190:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z12XAnimRestartP11XAnimTree_sjf_180
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x28]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov edi, eax
	test eax, eax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_50
	mov edx, esi
_Z12XAnimRestartP11XAnimTree_sjf_180:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_190
_Z12XAnimRestartP11XAnimTree_sjf_170:
	xor edi, edi
	jmp _Z12XAnimRestartP11XAnimTree_sjf_50
_Z12XAnimRestartP11XAnimTree_sjf_140:
	mov edx, eax
	jmp _Z12XAnimRestartP11XAnimTree_sjf_200
_Z12XAnimRestartP11XAnimTree_sjf_130:
	xor ecx, ecx
_Z12XAnimRestartP11XAnimTree_sjf_210:
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
	call _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi
	movzx ecx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_210
	mov edi, [ebp-0x1c]
	jmp _Z12XAnimRestartP11XAnimTree_sjf_50
_Z12XAnimRestartP11XAnimTree_sjf_160:
	movss xmm1, dword [ebp-0x2c]
	ucomiss xmm1, xmm0
	jp _Z12XAnimRestartP11XAnimTree_sjf_220
	jz _Z12XAnimRestartP11XAnimTree_sjf_230
_Z12XAnimRestartP11XAnimTree_sjf_220:
	ucomiss xmm0, [edx+0x14]
	jp _Z12XAnimRestartP11XAnimTree_sjf_240
	jnz _Z12XAnimRestartP11XAnimTree_sjf_240
_Z12XAnimRestartP11XAnimTree_sjf_230:
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
	jz _Z12XAnimRestartP11XAnimTree_sjf_150
_Z12XAnimRestartP11XAnimTree_sjf_250:
	mov eax, ebx
	call _Z14XAnimResetTimej
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_250
	jmp _Z12XAnimRestartP11XAnimTree_sjf_150
_Z12XAnimRestartP11XAnimTree_sjf_120:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [esi+0x4], 0x0
	jmp _Z12XAnimRestartP11XAnimTree_sjf_260
_Z12XAnimRestartP11XAnimTree_sjf_240:
	movzx ecx, word [ebx+0xe]
	mov edx, esi
	mov eax, [ebp-0x28]
	call _Z18XAnimCloneInitTimeP11XAnimTree_sjj
	movss xmm0, dword [ebp-0x2c]
	mov eax, [ebp-0x24]
	movss [eax+0xc], xmm0
	mov dword [eax+0x10], 0x0
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_270
_Z12XAnimRestartP11XAnimTree_sjf_290:
	mov word [ebx+0x2], 0xffff
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z12XAnimRestartP11XAnimTree_sjf_150
	xor ecx, ecx
_Z12XAnimRestartP11XAnimTree_sjf_280:
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
	call _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi
	movzx ecx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z12XAnimRestartP11XAnimTree_sjf_280
	jmp _Z12XAnimRestartP11XAnimTree_sjf_150
_Z12XAnimRestartP11XAnimTree_sjf_270:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	jmp _Z12XAnimRestartP11XAnimTree_sjf_290


;XAnimCloneAnimTree_r(XAnimTree_s const*, XAnimTree_s*, unsigned int, unsigned int)
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj:
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_80:
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
	jnz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_10
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_180:
	movzx eax, word [ebx+0x10]
	mov [ebp-0x20], eax
	movzx eax, word [g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_20
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
	jnz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_30
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_130:
	mov dword [ebp-0x1c], 0x0
	xor eax, eax
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_160:
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
	jnz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_40
	mov edx, edi
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_50
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_100:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	shl dword [ebp-0x1c], 0x6
	sub [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov [eax+g_xAnimInfo+0xa], dx
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_120:
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
	jnz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_60
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_170:
	movzx eax, word [ebx+0xc]
	movzx ebx, ax
	test ax, ax
	jnz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_70
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_90:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_70:
	mov [esp], edi
	mov ecx, ebx
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	call _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_80
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_70
	jmp _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_90
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_40:
	mov edx, edi
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	mov [ecx+g_xAnimInfo+0x8], di
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_100
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_50:
	mov eax, [ebp+0x8]
	test eax, eax
	jnz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_110
	mov eax, [ebp-0x2c]
	mov [eax+0x4], dx
	jmp _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_120
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_30:
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	jb _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_130
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_150:
	mov [ebp-0x1c], ecx
	movzx eax, word [edx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_140
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x20], eax
	jae _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_150
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_140:
	movzx eax, word [ebp-0x1c]
	jmp _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_160
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_60:
	movzx eax, cx
	mov [esp], eax
	call _Z17SL_AddRefToStringj
	jmp _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_170
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_20:
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor edi, edi
	jmp _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_120
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_10:
	mov [esp], edx
	call _Z17SL_AddRefToStringj
	jmp _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_180
_Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_110:
	mov eax, [ebp+0x8]
	shl eax, 0x3
	shl dword [ebp+0x8], 0x6
	sub [ebp+0x8], eax
	mov eax, [ebp+0x8]
	mov [eax+g_xAnimInfo+0xc], dx
	jmp _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj_120


;XAnimProcessClientNotify(XAnimInfo*, float)
_Z24XAnimProcessClientNotifyP9XAnimInfof:
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
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [_float_1_00000000]
	ucomiss xmm1, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_20
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_20
	movzx ecx, cx
	mov [ebp-0x50], ecx
	ucomiss xmm1, xmm5
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_30
_Z24XAnimProcessClientNotifyP9XAnimInfof_250:
	mov ebx, [ebp-0x54]
	movss xmm0, dword [ebx]
	ucomiss xmm1, xmm0
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_40
	ucomiss xmm0, xmm5
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_50
	movaps xmm0, xmm5
	subss xmm0, [ebx+0x4]
	addss xmm0, xmm5
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_60
_Z24XAnimProcessClientNotifyP9XAnimInfof_20:
	cmp word [eax+0x12], 0x0
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_70
	mov eax, [ebp-0x54]
	movss xmm2, dword [eax]
	ucomiss xmm1, xmm2
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_80
	ucomiss xmm2, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_10
_Z24XAnimProcessClientNotifyP9XAnimInfof_80:
	movzx ecx, cx
	mov [ebp-0x4c], ecx
	ucomiss xmm1, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_90
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_90
_Z24XAnimProcessClientNotifyP9XAnimInfof_420:
	movaps xmm0, xmm5
_Z24XAnimProcessClientNotifyP9XAnimInfof_430:
	mov edi, [g_endNotetrackName]
	mov esi, [g_notifyListSize]
	sub esi, 0x1
	js _Z24XAnimProcessClientNotifyP9XAnimInfof_100
	lea eax, [esi+esi*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_100
	mov ecx, esi
	xor ebx, ebx
_Z24XAnimProcessClientNotifyP9XAnimInfof_120:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp esi, ebx
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_110
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add ebx, 0x1
	ucomiss xmm0, [edx+0x8]
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_120
_Z24XAnimProcessClientNotifyP9XAnimInfof_110:
	mov esi, ecx
_Z24XAnimProcessClientNotifyP9XAnimInfof_100:
	lea ebx, [esi+esi*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov [esp], edi
	movss [ebp-0x88], xmm0
	call _Z18SL_ConvertToStringj
	mov [ebx+g_notifyList], eax
	movss xmm0, dword [ebp-0x88]
	movss [esi+0x8], xmm0
	mov edx, [ebp-0x4c]
	mov [esi+0x4], edx
	add dword [g_notifyListSize], 0x1
_Z24XAnimProcessClientNotifyP9XAnimInfof_10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24XAnimProcessClientNotifyP9XAnimInfof_70:
	mov eax, [eax+0x14]
	mov [ebp-0x6c], eax
	mov esi, [eax+0x50]
	movzx ebx, byte [eax+0x1c]
	test ebx, ebx
	jg _Z24XAnimProcessClientNotifyP9XAnimInfof_130
	xor eax, eax
_Z24XAnimProcessClientNotifyP9XAnimInfof_390:
	sub eax, esi
	shr eax, 0x3
	mov [ebp-0x68], ax
	movzx eax, ax
	lea edi, [esi+eax*8]
	mov ebx, [ebp-0x54]
	movss xmm2, dword [ebx]
	ucomiss xmm1, xmm2
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_140
	movss xmm3, dword [edi+0x4]
	ucomiss xmm2, xmm3
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_150
	ucomiss xmm1, xmm3
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	movzx ecx, cx
	mov [ebp-0x28], ecx
	mov ecx, [g_notifyListSize]
	ucomiss xmm1, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_160
_Z24XAnimProcessClientNotifyP9XAnimInfof_210:
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_160
_Z24XAnimProcessClientNotifyP9XAnimInfof_650:
	movaps xmm0, xmm5
_Z24XAnimProcessClientNotifyP9XAnimInfof_240:
	movzx eax, word [edi]
	mov [ebp-0x44], eax
	mov ebx, ecx
	sub ebx, 0x1
	js _Z24XAnimProcessClientNotifyP9XAnimInfof_170
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_170
	mov ecx, ebx
	xor esi, esi
_Z24XAnimProcessClientNotifyP9XAnimInfof_190:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_180
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_190
_Z24XAnimProcessClientNotifyP9XAnimInfof_180:
	mov ebx, ecx
_Z24XAnimProcessClientNotifyP9XAnimInfof_170:
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov edx, [ebp-0x44]
	mov [esp], edx
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	call _Z18SL_ConvertToStringj
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
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_200
	mov ebx, [ebp-0x54]
	movss xmm1, dword [ebx+0x4]
	movss xmm5, dword [_float_1_00000000]
	movss xmm3, dword [edi+0x4]
	ucomiss xmm1, xmm5
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_210
_Z24XAnimProcessClientNotifyP9XAnimInfof_160:
	mov eax, [ebp-0x54]
	movss xmm0, dword [eax]
	ucomiss xmm1, xmm0
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_220
	ucomiss xmm0, xmm3
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_230
	movaps xmm0, xmm3
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_240
_Z24XAnimProcessClientNotifyP9XAnimInfof_30:
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_250
_Z24XAnimProcessClientNotifyP9XAnimInfof_300:
	movaps xmm0, xmm5
_Z24XAnimProcessClientNotifyP9XAnimInfof_60:
	mov edi, [g_endNotetrackName]
	mov esi, [g_notifyListSize]
	sub esi, 0x1
	js _Z24XAnimProcessClientNotifyP9XAnimInfof_260
	lea eax, [esi+esi*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_260
	mov ecx, esi
	xor ebx, ebx
_Z24XAnimProcessClientNotifyP9XAnimInfof_280:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp esi, ebx
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_270
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add ebx, 0x1
	ucomiss xmm0, [edx+0x8]
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_280
_Z24XAnimProcessClientNotifyP9XAnimInfof_270:
	lea ebx, [ecx+ecx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov [esp], edi
	movss [ebp-0x88], xmm0
	call _Z18SL_ConvertToStringj
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
_Z24XAnimProcessClientNotifyP9XAnimInfof_260:
	mov ecx, esi
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_270
_Z24XAnimProcessClientNotifyP9XAnimInfof_40:
	ucomiss xmm0, xmm5
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_290
_Z24XAnimProcessClientNotifyP9XAnimInfof_830:
	ucomiss xmm5, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_300
	movaps xmm0, xmm5
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_60
_Z24XAnimProcessClientNotifyP9XAnimInfof_140:
	ucomiss xmm2, xmm5
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_310
_Z24XAnimProcessClientNotifyP9XAnimInfof_440:
	movss xmm3, dword [edi+0x4]
	ucomiss xmm3, xmm2
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	ucomiss xmm1, xmm3
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	movzx ecx, cx
	mov [ebp-0x34], ecx
	lea edx, [edi+0xc]
	mov [ebp-0x1c], edx
	mov ecx, [g_notifyListSize]
_Z24XAnimProcessClientNotifyP9XAnimInfof_360:
	ucomiss xmm1, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_320
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_320
_Z24XAnimProcessClientNotifyP9XAnimInfof_720:
	movaps xmm0, xmm5
_Z24XAnimProcessClientNotifyP9XAnimInfof_700:
	movzx eax, word [edi]
	mov [ebp-0x38], eax
	mov ebx, ecx
	sub ebx, 0x1
	js _Z24XAnimProcessClientNotifyP9XAnimInfof_330
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_330
	mov ecx, ebx
	xor esi, esi
_Z24XAnimProcessClientNotifyP9XAnimInfof_350:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_340
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_350
_Z24XAnimProcessClientNotifyP9XAnimInfof_340:
	mov ebx, ecx
_Z24XAnimProcessClientNotifyP9XAnimInfof_330:
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov edx, [ebp-0x38]
	mov [esp], edx
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	call _Z18SL_ConvertToStringj
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
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	mov eax, [ebp-0x1c]
	movss xmm0, dword [eax]
	add eax, 0x8
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x54]
	movss xmm2, dword [edx]
	ucomiss xmm2, xmm0
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [_float_1_00000000]
	movss xmm3, dword [edi+0x4]
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_360
_Z24XAnimProcessClientNotifyP9XAnimInfof_130:
	mov eax, esi
	movss xmm2, dword [_float_2_00000000]
	xor edx, edx
	xor edi, edi
_Z24XAnimProcessClientNotifyP9XAnimInfof_380:
	movss xmm0, dword [eax+0x4]
	ucomiss xmm1, xmm0
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_370
	ucomiss xmm2, xmm0
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_370
	mov edi, eax
	movaps xmm2, xmm0
_Z24XAnimProcessClientNotifyP9XAnimInfof_370:
	add edx, 0x1
	add eax, 0x8
	cmp ebx, edx
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_380
	mov eax, edi
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_390
_Z24XAnimProcessClientNotifyP9XAnimInfof_90:
	ucomiss xmm1, xmm2
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_400
	ucomiss xmm2, xmm5
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_410
_Z24XAnimProcessClientNotifyP9XAnimInfof_840:
	ucomiss xmm5, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_420
	movaps xmm0, xmm5
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_430
_Z24XAnimProcessClientNotifyP9XAnimInfof_310:
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_440
	ucomiss xmm1, [edi+0x4]
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	movzx ecx, cx
	mov [ebp-0x30], ecx
	mov ecx, [g_notifyListSize]
	movss xmm2, dword [edi+0x4]
	ucomiss xmm1, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_450
_Z24XAnimProcessClientNotifyP9XAnimInfof_490:
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_450
_Z24XAnimProcessClientNotifyP9XAnimInfof_670:
	movaps xmm0, xmm5
_Z24XAnimProcessClientNotifyP9XAnimInfof_520:
	movzx ebx, word [edi]
	mov [ebp-0x3c], ebx
	mov ebx, ecx
	sub ebx, 0x1
	js _Z24XAnimProcessClientNotifyP9XAnimInfof_460
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_460
	mov ecx, ebx
	xor esi, esi
_Z24XAnimProcessClientNotifyP9XAnimInfof_480:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_470
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_480
_Z24XAnimProcessClientNotifyP9XAnimInfof_470:
	mov ebx, ecx
_Z24XAnimProcessClientNotifyP9XAnimInfof_460:
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov eax, [ebp-0x3c]
	mov [esp], eax
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	call _Z18SL_ConvertToStringj
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
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	mov eax, [ebp-0x54]
	movss xmm1, dword [eax+0x4]
	movss xmm5, dword [_float_1_00000000]
	movss xmm2, dword [edi+0x4]
	ucomiss xmm1, xmm5
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_490
_Z24XAnimProcessClientNotifyP9XAnimInfof_450:
	mov ebx, [ebp-0x54]
	movss xmm0, dword [ebx]
	ucomiss xmm1, xmm0
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_500
	ucomiss xmm0, xmm2
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_510
	movaps xmm0, xmm2
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_520
_Z24XAnimProcessClientNotifyP9XAnimInfof_150:
	movzx ecx, cx
	mov [ebp-0x2c], ecx
	lea eax, [edi+0xc]
	mov [ebp-0x24], eax
	mov ecx, [g_notifyListSize]
	ucomiss xmm1, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_530
_Z24XAnimProcessClientNotifyP9XAnimInfof_570:
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_530
_Z24XAnimProcessClientNotifyP9XAnimInfof_630:
	movaps xmm0, xmm5
_Z24XAnimProcessClientNotifyP9XAnimInfof_600:
	movzx ebx, word [edi]
	mov [ebp-0x48], ebx
	mov ebx, ecx
	sub ebx, 0x1
	js _Z24XAnimProcessClientNotifyP9XAnimInfof_540
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_540
	mov ecx, ebx
	xor esi, esi
_Z24XAnimProcessClientNotifyP9XAnimInfof_560:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_550
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_560
_Z24XAnimProcessClientNotifyP9XAnimInfof_550:
	lea ebx, [ecx+ecx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov eax, [ebp-0x48]
	mov [esp], eax
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	call _Z18SL_ConvertToStringj
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
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	mov eax, [ebp-0x24]
	movss xmm0, dword [eax]
	add eax, 0x8
	mov [ebp-0x24], eax
	mov edx, [ebp-0x54]
	movss xmm2, dword [edx]
	ucomiss xmm2, xmm0
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [_float_1_00000000]
	movss xmm3, dword [edi+0x4]
	ucomiss xmm1, xmm5
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_570
_Z24XAnimProcessClientNotifyP9XAnimInfof_530:
	ucomiss xmm1, xmm2
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_580
	ucomiss xmm2, xmm3
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_590
	movaps xmm0, xmm3
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_600
_Z24XAnimProcessClientNotifyP9XAnimInfof_400:
	ucomiss xmm2, xmm5
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_610
	movaps xmm0, xmm5
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, xmm5
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_430
_Z24XAnimProcessClientNotifyP9XAnimInfof_540:
	mov ecx, ebx
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_550
_Z24XAnimProcessClientNotifyP9XAnimInfof_580:
	ucomiss xmm2, xmm3
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_620
	ucomiss xmm2, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_630
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_630
_Z24XAnimProcessClientNotifyP9XAnimInfof_620:
	ucomiss xmm3, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_630
	movaps xmm0, xmm3
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_600
_Z24XAnimProcessClientNotifyP9XAnimInfof_220:
	ucomiss xmm0, xmm3
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_640
	ucomiss xmm0, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_650
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_650
_Z24XAnimProcessClientNotifyP9XAnimInfof_640:
	ucomiss xmm3, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_650
	movaps xmm0, xmm3
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_240
_Z24XAnimProcessClientNotifyP9XAnimInfof_500:
	ucomiss xmm0, xmm2
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_660
	ucomiss xmm0, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_670
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_670
_Z24XAnimProcessClientNotifyP9XAnimInfof_660:
	ucomiss xmm2, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_670
	movaps xmm0, xmm2
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_520
_Z24XAnimProcessClientNotifyP9XAnimInfof_320:
	ucomiss xmm1, xmm2
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_680
	ucomiss xmm2, xmm3
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_690
	movaps xmm0, xmm3
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_700
_Z24XAnimProcessClientNotifyP9XAnimInfof_590:
	ucomiss xmm3, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_630
	movaps xmm0, xmm3
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_600
_Z24XAnimProcessClientNotifyP9XAnimInfof_230:
	ucomiss xmm3, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_650
	movaps xmm0, xmm3
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_240
_Z24XAnimProcessClientNotifyP9XAnimInfof_510:
	ucomiss xmm2, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_670
	movaps xmm0, xmm2
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_520
_Z24XAnimProcessClientNotifyP9XAnimInfof_680:
	ucomiss xmm2, xmm3
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_710
	ucomiss xmm2, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_720
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_720
_Z24XAnimProcessClientNotifyP9XAnimInfof_710:
	ucomiss xmm3, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_720
	movaps xmm0, xmm3
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_700
_Z24XAnimProcessClientNotifyP9XAnimInfof_200:
	mov edi, [ebx+0x50]
	movss xmm1, dword [edi+0x4]
	mov eax, [ebp-0x54]
	movss xmm2, dword [eax]
	ucomiss xmm2, xmm1
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_10
	lea edx, [edi+0x14]
	mov [ebp-0x20], edx
	movss xmm5, dword [_float_1_00000000]
_Z24XAnimProcessClientNotifyP9XAnimInfof_770:
	mov ebx, [ebp-0x54]
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_730
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_730
_Z24XAnimProcessClientNotifyP9XAnimInfof_820:
	movaps xmm0, xmm5
_Z24XAnimProcessClientNotifyP9XAnimInfof_800:
	movzx eax, word [edi]
	mov [ebp-0x40], eax
	mov ebx, ecx
	sub ebx, 0x1
	js _Z24XAnimProcessClientNotifyP9XAnimInfof_740
	lea eax, [ebx+ebx*2]
	lea edx, [eax*4+g_notifyList]
	ucomiss xmm0, [edx+0x8]
	jae _Z24XAnimProcessClientNotifyP9XAnimInfof_740
	mov ecx, ebx
	xor esi, esi
_Z24XAnimProcessClientNotifyP9XAnimInfof_760:
	mov eax, [edx]
	mov [edx+0xc], eax
	mov eax, [edx+0x4]
	mov [edx+0x10], eax
	mov eax, [edx+0x8]
	mov [edx+0x14], eax
	sub ecx, 0x1
	cmp ebx, esi
	jz _Z24XAnimProcessClientNotifyP9XAnimInfof_750
	lea eax, [ecx+ecx*2]
	lea edx, [eax*4+g_notifyList]
	add esi, 0x1
	ucomiss xmm0, [edx+0x8]
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_760
_Z24XAnimProcessClientNotifyP9XAnimInfof_750:
	mov ebx, ecx
_Z24XAnimProcessClientNotifyP9XAnimInfof_740:
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx*4+0xc]
	lea esi, [ebx+g_notifyList]
	mov edx, [ebp-0x40]
	mov [esp], edx
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm4
	movss [ebp-0xa8], xmm5
	call _Z18SL_ConvertToStringj
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
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_770
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_10
_Z24XAnimProcessClientNotifyP9XAnimInfof_730:
	ucomiss xmm0, xmm2
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_780
	ucomiss xmm2, xmm1
	jbe _Z24XAnimProcessClientNotifyP9XAnimInfof_790
	movaps xmm0, xmm1
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_1_00000000]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_800
_Z24XAnimProcessClientNotifyP9XAnimInfof_780:
	ucomiss xmm2, xmm1
	ja _Z24XAnimProcessClientNotifyP9XAnimInfof_810
	ucomiss xmm2, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_820
	jp _Z24XAnimProcessClientNotifyP9XAnimInfof_820
_Z24XAnimProcessClientNotifyP9XAnimInfof_810:
	ucomiss xmm1, xmm0
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_820
	movaps xmm0, xmm1
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_800
_Z24XAnimProcessClientNotifyP9XAnimInfof_790:
	ucomiss xmm1, xmm0
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_820
	movaps xmm0, xmm1
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_800
_Z24XAnimProcessClientNotifyP9XAnimInfof_290:
	ucomiss xmm0, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_300
	jnp _Z24XAnimProcessClientNotifyP9XAnimInfof_830
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_300
_Z24XAnimProcessClientNotifyP9XAnimInfof_50:
	ucomiss xmm5, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_300
	movaps xmm0, xmm5
	mov eax, [ebp-0x54]
	subss xmm0, [eax+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_60
_Z24XAnimProcessClientNotifyP9XAnimInfof_690:
	ucomiss xmm3, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_720
	movaps xmm0, xmm3
	mov edx, [ebp-0x54]
	subss xmm0, [edx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_700
_Z24XAnimProcessClientNotifyP9XAnimInfof_610:
	ucomiss xmm5, xmm1
	jb _Z24XAnimProcessClientNotifyP9XAnimInfof_420
	movaps xmm0, xmm5
	mov ebx, [ebp-0x54]
	subss xmm0, [ebx+0x4]
	addss xmm0, [_float_0_000000001]
	divss xmm0, xmm4
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_430
_Z24XAnimProcessClientNotifyP9XAnimInfof_410:
	ucomiss xmm2, xmm5
	jnz _Z24XAnimProcessClientNotifyP9XAnimInfof_420
	jnp _Z24XAnimProcessClientNotifyP9XAnimInfof_840
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof_420


;XAnimUpdateInfoSync(DObj_s const*, unsigned int, unsigned char, XAnimState*, float)
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef:
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_130:
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
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_10
	jp _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_10
	mov edx, [ebp-0x2c]
	mov edx, [edx]
	mov [ebp-0x24], edx
	movzx eax, word [eax+0xc]
	movzx esi, ax
	test ax, ax
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_20
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_50:
	ucomiss xmm0, [edi+0x10]
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_30
	jp _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_30
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x24]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13XAnimFreeInfoP11XAnimTree_sj
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_40:
	mov esi, [ebp-0x1c]
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_20:
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
	call _Z18XAnimCheckFreeInfoP11XAnimTree_sji
	test bx, bx
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_40
	mov edx, [ebp-0x28]
	cmp word [edx+0xc], 0x0
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_30
	pxor xmm0, xmm0
	jmp _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_50
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_10:
	mov edx, ebx
	ucomiss xmm0, [edi+0x10]
	mov eax, 0x0
	cmovz ebx, eax
	cmovp ebx, edx
	mov eax, [ebp-0x34]
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, [edi+0x4]
	jz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_60
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_100:
	movss [edi], xmm0
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0xa]
	mov [edi+0x8], ax
	movss [edi+0x4], xmm0
	mov [edi+0xa], ax
	mov eax, [ebp-0x28]
	mov word [eax+0x2], 0xffff
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_110:
	test bl, bl
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_70
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_160:
	mov edx, [ebp-0x34]
	mov eax, [edx]
	mov [edi], eax
	movzx eax, word [edx+0x8]
	mov [edi+0x8], ax
	mov eax, [ebp-0x28]
	mov word [eax+0x2], 0xffff
	test bl, bl
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_80
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_150:
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_90
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_60:
	jp _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_100
	mov edx, eax
	movzx eax, word [edi+0xa]
	cmp ax, [edx+0xa]
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_100
	jmp _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_110
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_90:
	movzx ebx, bl
	mov [ebp-0x20], ebx
	mov ecx, ebx
	jmp _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_120
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_140:
	mov esi, edi
	mov ecx, [ebp-0x20]
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_120:
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
	call _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_130
	test bx, bx
	jnz _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_140
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_80:
	movss xmm0, dword [ebp-0x38]
	mov eax, [ebp-0x28]
	call _Z24XAnimProcessClientNotifyP9XAnimInfof
	jmp _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_150
_Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_70:
	mov edx, [ebp-0x34]
	movss xmm0, dword [edx]
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x2c]
	call _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof
	jmp _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef_160
	nop


;XAnimUpdateTimeAndNotetrack(DObj_s const*, unsigned int, float, unsigned char)
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh:
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_390:
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
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_10
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_10
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_20
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_60:
	mov eax, [ebp-0x3c]
	ucomiss xmm5, [eax+0x10]
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_30
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_40:
	mov esi, edi
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_20:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp-0x38]
	call _Z18XAnimCheckFreeInfoP11XAnimTree_sji
	test bx, bx
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_40
	mov ecx, [ebp-0x40]
	cmp word [ecx+0xc], 0x0
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	pxor xmm5, xmm5
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_60
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_10:
	mov ecx, eax
	mov edx, esi
	ucomiss xmm5, [eax+0x10]
	mov eax, 0x0
	cmovz esi, eax
	cmovp esi, edx
	mov eax, [ebp-0x40]
	cmp word [eax+0x12], 0x0
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_70
	mov eax, [eax+0x14]
	movss xmm3, dword [ecx+0x18]
	mulss xmm3, [eax+0x2c]
	mulss xmm3, [ebp-0x4c]
	ucomiss xmm3, xmm5
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_80
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_80:
	movss xmm1, dword [ecx+0x4]
	movaps xmm2, xmm3
	addss xmm2, xmm1
	movzx ebx, word [ecx+0x8]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jb _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_90
	cmp byte [eax+0x10], 0x0
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_100
	movss xmm0, dword [_float_0_99999988]
	subss xmm1, xmm0
	ucomiss xmm1, xmm5
	jb _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_110
	movaps xmm2, xmm4
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_90:
	xor ecx, ecx
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_250:
	cvtsi2ss xmm1, ecx
	mov ecx, [ebp-0x3c]
	movss xmm0, dword [ecx]
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	mov eax, esi
	test al, al
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_120
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_430:
	mov edx, [ebp-0x3c]
	movss [edx], xmm2
	mov [edx+0x8], bx
	mov ecx, [ebp-0x40]
	mov word [ecx+0x2], 0xffff
	mov eax, esi
	test al, al
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	movaps xmm0, xmm3
	mov eax, ecx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24XAnimProcessClientNotifyP9XAnimInfof
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_70:
	test byte [eax+0x14], 0x3
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_130
	movzx eax, word [eax+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_140
	movss [ebp-0x34], xmm5
	movaps xmm2, xmm5
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_150
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_180:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_160
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_150:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	movss xmm1, dword [ebx+0x2c]
	ucomiss xmm1, xmm5
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_170
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_180
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_170:
	mov edx, ecx
	mov eax, [ebp-0x38]
	movss [ebp-0x68], xmm1
	movss [ebp-0x78], xmm2
	movss [ebp-0x98], xmm5
	call _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj
	movss xmm1, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x98]
	ucomiss xmm0, xmm5
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_190
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_200
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_190:
	addss xmm2, xmm1
	mulss xmm1, xmm0
	mulss xmm1, [ebx+0x30]
	addss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	pxor xmm5, xmm5
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_180
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_30:
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	mov edx, [ebp-0x48]
	mov eax, [ebp-0x38]
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_280:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13XAnimFreeInfoP11XAnimTree_sj
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_130:
	movss xmm0, dword [ebp-0x4c]
	mov edx, [ebp-0x3c]
	mulss xmm0, [edx+0x18]
	movss [ebp-0x20], xmm0
	ucomiss xmm0, xmm5
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_210
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_210
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_220
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_230:
	mov esi, edi
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_220:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp-0x38]
	call _Z18XAnimCheckFreeInfoP11XAnimTree_sji
	test bx, bx
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_230
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_200:
	pxor xmm5, xmm5
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_180
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_100:
	mov edx, ebx
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_240:
	subss xmm2, xmm4
	add edx, 0x1
	ucomiss xmm2, xmm4
	jae _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_240
	movsx ecx, dx
	movsx eax, bx
	sub ecx, eax
	mov ebx, edx
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_250
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_140:
	movaps xmm0, xmm5
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_420:
	mov ecx, [ebp-0x3c]
	mulss xmm0, [ecx+0x18]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm5
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_260
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_260
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
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_270
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_300:
	cmp byte [ebp-0x4d], 0x0
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	pxor xmm0, xmm0
	mov eax, [ebp-0x3c]
	ucomiss xmm0, [eax+0x10]
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	mov edx, [ebp-0x48]
	mov eax, [ebp-0x2c]
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_280
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_290:
	mov esi, edi
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_270:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx edi, bx
	mov ecx, [ebp-0x30]
	mov edx, esi
	mov eax, [ebp-0x2c]
	call _Z18XAnimCheckFreeInfoP11XAnimTree_sji
	test bx, bx
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_290
	mov ecx, [ebp-0x40]
	cmp word [ecx+0xc], 0x0
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_300
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_260:
	movaps xmm2, xmm0
	mov edi, esi
	movss xmm1, dword [ecx+0x4]
	addss xmm2, xmm1
	movzx ebx, word [ecx+0xa]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm4, xmm3
	ucomiss xmm2, xmm3
	jb _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_310
	mov ecx, [ebp-0x40]
	test byte [ecx+0x14], 0x2
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_320
	movss xmm0, dword [_float_0_99999988]
	subss xmm1, xmm0
	ucomiss xmm1, xmm5
	jb _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_330
	movaps xmm2, xmm3
	mov ecx, [ebp-0x3c]
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_310:
	movsx eax, bx
	movsx edx, word [ecx+0x8]
	sub eax, edx
	cvtsi2ss xmm1, eax
	movss xmm0, dword [ecx]
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	mov eax, edi
	test al, al
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_340
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_450:
	mov edx, [ebp-0x3c]
	movss [edx], xmm2
	mov [edx+0x8], bx
	mov ecx, [ebp-0x40]
	mov word [ecx+0x2], 0xffff
	mov eax, edi
	test al, al
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_350
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_440:
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0xc]
	movzx esi, ax
	test ax, ax
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	mov ecx, edi
	movzx edi, cl
	mov [ebp-0x24], edi
	mov ecx, edi
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_360
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_370:
	mov esi, edi
	mov ecx, [ebp-0x24]
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_360:
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
	call _Z19XAnimUpdateInfoSyncPK6DObj_sjhP10XAnimStatef
	test bx, bx
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_370
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_210:
	mov ecx, [ebp-0x40]
	movzx eax, word [ecx+0xc]
	movzx edi, ax
	test ax, ax
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
	mov eax, esi
	movzx esi, al
	mov [ebp-0x28], esi
	mov ecx, esi
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_380
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_400:
	mov edi, esi
	mov ecx, [ebp-0x28]
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_380:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xa]
	movzx esi, bx
	movss xmm0, dword [ebp-0x20]
	mov edx, edi
	mov eax, [ebp-0x44]
	call _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_390
	test bx, bx
	jnz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_400
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_50
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_160:
	ucomiss xmm2, xmm5
	jp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_410
	jz _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_140
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_410:
	movss xmm0, dword [ebp-0x34]
	divss xmm0, xmm2
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_420
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_320:
	subss xmm2, xmm4
	add ebx, 0x1
	ucomiss xmm2, xmm4
	jae _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_320
	mov ecx, [ebp-0x3c]
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_310
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_120:
	movaps xmm0, xmm2
	mov edx, [ebp-0x40]
	mov eax, [ebp-0x44]
	movss [ebp-0x78], xmm2
	movss [ebp-0x88], xmm3
	call _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof
	movss xmm3, dword [ebp-0x88]
	movss xmm2, dword [ebp-0x78]
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_430
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_110:
	movaps xmm2, xmm0
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_90
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_350:
	movss xmm0, dword [ebp-0x1c]
	mov eax, ecx
	call _Z24XAnimProcessClientNotifyP9XAnimInfof
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_440
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_340:
	movaps xmm0, xmm2
	mov edx, [ebp-0x40]
	mov eax, [ebp-0x44]
	movss [ebp-0x78], xmm2
	call _Z24XAnimProcessServerNotifyPK6DObj_sP9XAnimInfof
	movss xmm2, dword [ebp-0x78]
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_450
_Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_330:
	movaps xmm2, xmm0
	mov ecx, [ebp-0x3c]
	jmp _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh_310
	nop


;XAnimGetNextServerNotifyFrac(DObj_s const*, XAnimInfo*, XAnimState const*, XAnimState const*, float)
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f:
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
	jz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_10
	cmp word [edx+0x4], 0x0
	jz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_10
	mov eax, [eax]
	cmp word [edx+0x12], 0x0
	jz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_20
	mov ecx, [edx+0x14]
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_150:
	test ecx, ecx
	jz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_30
	cmp word [ebx+0x2], 0x0
	js _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_40
	movss xmm4, dword [_float_1_00000000]
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_230:
	movsx edx, word [ebx+0x2]
	mov eax, [ecx+0x50]
	movss xmm3, dword [eax+edx*8+0x4]
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0x4]
	ucomiss xmm2, xmm4
	jp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_50
	jz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_50:
	movss xmm1, dword [eax]
	ucomiss xmm2, xmm1
	jbe _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_70
	ucomiss xmm1, xmm3
	ja _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_80
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_160:
	ucomiss xmm3, xmm2
	jb _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
	mov edx, [ebp+0x8]
	movsx eax, word [edx+0xa]
	movsx edx, word [esi+0xa]
	sub eax, edx
	cvtsi2ss xmm0, eax
	subss xmm3, [esi+0x4]
	addss xmm0, xmm3
	divss xmm0, xmm5
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_90
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_10:
	movss xmm0, dword [_float_1_00000000]
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_90:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_140:
	ucomiss xmm1, xmm4
	ja _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_100
	ucomiss xmm1, xmm4
	jnz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
	jp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_100:
	ucomiss xmm4, xmm2
	jae _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_110
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60:
	movaps xmm0, xmm4
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_170:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_20:
	movzx edx, word [edx]
	test dx, dx
	jnz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_120
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_30:
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0x4]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_130
	jz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_130:
	movss xmm1, dword [eax]
	ucomiss xmm2, xmm1
	jbe _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_140
	ucomiss xmm1, xmm4
	jbe _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_100
	mov edx, eax
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_210:
	movsx eax, word [edx+0xa]
	movsx edx, word [esi+0xa]
	sub eax, edx
	add eax, 0x1
	cvtsi2ss xmm0, eax
	subss xmm4, [esi+0x4]
	addss xmm0, xmm4
	divss xmm0, xmm5
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_90
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_120:
	movzx edx, dx
	mov eax, [eax]
	mov ecx, [eax+edx*8+0x10]
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_150
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_70:
	ucomiss xmm1, xmm3
	ja _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_160
	ucomiss xmm1, xmm4
	jnz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
	jnp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_160
	movaps xmm0, xmm4
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_170
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_40:
	movss xmm0, dword [ebx+0x18]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm0, xmm4
	jp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_180
	jnz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_180
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_240:
	mov edx, [ebp+0x8]
	movss xmm1, dword [edx+0x4]
	ucomiss xmm1, xmm4
	jp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_190
	jz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_190:
	movss xmm0, dword [edx]
	ucomiss xmm1, xmm0
	jbe _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_200
	ucomiss xmm0, xmm4
	ja _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_210
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_280:
	ucomiss xmm4, xmm1
	jb _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_110:
	mov edx, [ebp+0x8]
	movsx eax, word [edx+0xa]
	movsx edx, word [esi+0xa]
	sub eax, edx
	cvtsi2ss xmm0, eax
	subss xmm4, [esi+0x4]
	addss xmm0, xmm4
	divss xmm0, xmm5
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_90
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_80:
	movsx eax, word [eax+0xa]
	movsx edx, word [esi+0xa]
	sub eax, edx
	add eax, 0x1
	cvtsi2ss xmm0, eax
	subss xmm3, [esi+0x4]
	addss xmm0, xmm3
	divss xmm0, xmm5
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_90
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_180:
	mov eax, [ecx+0x50]
	mov [ebp-0x10], eax
	movzx edi, byte [ecx+0x1c]
	test edi, edi
	jg _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_220
	xor eax, eax
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_270:
	sub eax, [ebp-0x10]
	sar eax, 0x3
	movzx eax, ax
	mov [ebx+0x2], ax
	test ax, ax
	jns _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_230
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_240
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_220:
	mov edx, eax
	mov dword [ebp-0x14], 0x0
	movss xmm2, dword [_float_2_00000000]
	xor eax, eax
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_260:
	movss xmm1, dword [edx+0x4]
	ucomiss xmm0, xmm1
	ja _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_250
	ucomiss xmm2, xmm1
	jbe _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_250
	mov [ebp-0x14], edx
	movaps xmm2, xmm1
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_250:
	add eax, 0x1
	add edx, 0x8
	cmp edi, eax
	jnz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_260
	mov eax, [ebp-0x14]
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_270
_Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_200:
	ucomiss xmm0, xmm4
	ja _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_280
	ucomiss xmm0, xmm4
	jnz _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
	jnp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_280
	movaps xmm0, xmm4
	jmp _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_170


;XAnimGetServerNotifyFracSyncTotal(DObj_s const*, XAnimInfo*, XAnimState const*, XAnimState const*, float)
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f:
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_530:
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
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x54], xmm0
	movzx eax, word [ebx+0xc]
	movzx esi, ax
	test ax, ax
	jnz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_10
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_20
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_50:
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_30
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_10:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_40
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_50
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_40:
	ucomiss xmm0, [ebx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_50
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_60:
	mov edx, [ebp+0x8]
	mov [esp], edx
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x50], xmm0
	movzx eax, word [ebx+0xc]
	movzx edi, ax
	test ax, ax
	jnz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_70
	minss xmm0, dword [ebp-0x54]
	movss [ebp-0x54], xmm0
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_540:
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx esi, ax
	test ax, ax
	jnz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_10
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_30:
	movss xmm0, dword [ebp-0x54]
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_130:
	movss xmm0, dword [ebp-0x34]
	minss xmm0, dword [ebp-0x50]
	movss [ebp-0x50], xmm0
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_100:
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xa]
	movzx edi, ax
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_80
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_70:
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_90
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_100
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_90:
	ucomiss xmm0, [ebx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_110
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_100
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_110:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x34], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x4c], edx
	test ax, ax
	jnz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_120
	minss xmm0, dword [ebp-0x50]
	movss [ebp-0x50], xmm0
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_100
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_190:
	movss xmm0, dword [ebp-0x30]
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_170:
	minss xmm0, dword [ebp-0x34]
	movss [ebp-0x34], xmm0
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_150:
	mov eax, [ebp-0x4c]
	shl eax, 0x3
	shl dword [ebp-0x4c], 0x6
	sub [ebp-0x4c], eax
	mov edx, [ebp-0x4c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x4c], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_130
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_120:
	shl edx, 0x3
	mov eax, [ebp-0x4c]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_140
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_150
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_140:
	ucomiss xmm0, [ebx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_160
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_150
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_160:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x30], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_170
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_180
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_210:
	mov eax, [ebp-0x48]
	shl eax, 0x3
	shl dword [ebp-0x48], 0x6
	sub [ebp-0x48], eax
	mov edx, [ebp-0x48]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x48], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_190
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_180:
	shl edx, 0x3
	mov eax, [ebp-0x48]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_200
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_210
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_200:
	ucomiss xmm0, [ebx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_220
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_210
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_220:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x2c], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x44], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_230
	mov edx, [ebp-0x44]
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_240
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_270:
	mov eax, [ebp-0x44]
	shl eax, 0x3
	shl dword [ebp-0x44], 0x6
	sub [ebp-0x44], eax
	mov edx, [ebp-0x44]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x44], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_250
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_240:
	shl edx, 0x3
	mov eax, [ebp-0x44]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_260
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_270
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_260:
	ucomiss xmm0, [ebx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_280
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_270
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_280:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x28], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_290
	mov edx, [ebp-0x40]
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_300
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_330:
	mov eax, [ebp-0x40]
	shl eax, 0x3
	shl dword [ebp-0x40], 0x6
	sub [ebp-0x40], eax
	mov edx, [ebp-0x40]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x40], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_310
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_300:
	shl edx, 0x3
	mov eax, [ebp-0x40]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_320
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_330
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_320:
	ucomiss xmm0, [ebx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_340
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_330
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_340:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x24], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x3c], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_350
	mov edx, [ebp-0x3c]
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_360
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_390:
	mov eax, [ebp-0x3c]
	shl eax, 0x3
	shl dword [ebp-0x3c], 0x6
	sub [ebp-0x3c], eax
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x3c], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_370
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_360:
	shl edx, 0x3
	mov eax, [ebp-0x3c]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_380
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_390
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_380:
	ucomiss xmm0, [ebx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_400
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_390
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_400:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x1c], xmm0
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_410
	mov edx, [ebp-0x38]
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_420
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_450:
	mov eax, [ebp-0x38]
	shl eax, 0x3
	shl dword [ebp-0x38], 0x6
	sub [ebp-0x38], eax
	mov edx, [ebp-0x38]
	movzx eax, word [edx+g_xAnimInfo+0xa]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_430
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_420:
	shl edx, 0x3
	mov eax, [ebp-0x38]
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_440
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_450
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_440:
	ucomiss xmm0, [ebx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_460
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_450
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_460:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov edx, ebx
	mov eax, [ebp-0x58]
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss [ebp-0x20], xmm0
	movzx eax, word [ebx+0xc]
	movzx ebx, ax
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_470
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_480
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_510:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_490
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_480:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea edx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x2c]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_500
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_510
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_500:
	ucomiss xmm0, [edx+0x28]
	jp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_520
	jz _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_510
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_520:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss xmm0, dword [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov eax, [ebp-0x58]
	call _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_530
	minss xmm0, dword [ebp-0x20]
	movss [ebp-0x20], xmm0
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_510
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_250:
	movss xmm0, dword [ebp-0x2c]
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_230:
	minss xmm0, dword [ebp-0x30]
	movss [ebp-0x30], xmm0
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_210
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_80:
	movss xmm0, dword [ebp-0x50]
	minss xmm0, dword [ebp-0x54]
	movss [ebp-0x54], xmm0
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_540
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_430:
	movss xmm0, dword [ebp-0x1c]
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_410:
	minss xmm0, dword [ebp-0x24]
	movss [ebp-0x24], xmm0
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_390
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_310:
	movss xmm0, dword [ebp-0x28]
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_290:
	minss xmm0, dword [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_270
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_370:
	movss xmm0, dword [ebp-0x24]
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_350:
	minss xmm0, dword [ebp-0x28]
	movss [ebp-0x28], xmm0
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_330
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_490:
	movss xmm0, dword [ebp-0x20]
_Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_470:
	minss xmm0, dword [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	jmp _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f_450
	nop


;XAnimFindServerNoteTrack(DObj_s const*, unsigned int, float)
_Z24XAnimFindServerNoteTrackPK6DObj_sjf:
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_190:
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
	jp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_10
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_20
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_10:
	ucomiss xmm5, [esi+0x10]
	jp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_30
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_20
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_30:
	cmp word [edi+0x12], 0x0
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_40
	mov eax, [edi+0x14]
	movss xmm4, dword [esi+0x18]
	mulss xmm4, [eax+0x2c]
	mulss xmm4, xmm0
	ucomiss xmm4, xmm5
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_50
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_90:
	movss xmm1, dword [esi+0x4]
	movaps xmm3, xmm4
	addss xmm3, xmm1
	movzx ecx, word [esi+0xa]
	cmp byte [eax+0x10], 0x0
	jnz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_60
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jb _Z24XAnimFindServerNoteTrackPK6DObj_sjf_70
	movss xmm0, dword [_float_0_99999988]
	subss xmm1, xmm0
	cmpss xmm5, xmm1, 0x6
	movaps xmm3, xmm5
	andps xmm3, xmm0
	movaps xmm0, xmm3
	movaps xmm3, xmm5
	andnps xmm3, xmm2
	orps xmm3, xmm0
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_70:
	movss xmm5, dword [esi]
	movsx eax, cx
	movsx edx, word [esi+0x8]
	sub eax, edx
	cvtsi2ss xmm1, eax
	movaps xmm0, xmm5
	subss xmm0, xmm3
	ucomiss xmm0, xmm1
	jbe _Z24XAnimFindServerNoteTrackPK6DObj_sjf_80
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_260:
	movaps xmm3, xmm2
	movaps xmm0, xmm3
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_50:
	jp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_90
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_20:
	movss xmm3, dword [_float_1_00000000]
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_210:
	movaps xmm0, xmm3
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_40:
	test byte [edi+0x14], 0x3
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_100
	movzx eax, word [edi+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_110
	movss [ebp-0x44], xmm5
	movaps xmm2, xmm5
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_120
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_150:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	test ax, ax
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_130
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_120:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	lea ebx, [eax+g_xAnimInfo]
	movss xmm1, dword [ebx+0x2c]
	ucomiss xmm1, xmm5
	jp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_140
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_150
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_140:
	mov edx, ecx
	mov eax, [ebp-0x48]
	movss [ebp-0x68], xmm1
	movss [ebp-0x78], xmm2
	movss [ebp-0x98], xmm5
	call _Z28XAnimGetAverageRateFrequencyPK11XAnimTree_sj
	movss xmm1, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x98]
	ucomiss xmm0, xmm5
	jp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_160
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_170
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_160:
	addss xmm2, xmm1
	mulss xmm1, xmm0
	mulss xmm1, [ebx+0x30]
	addss xmm1, [ebp-0x44]
	movss [ebp-0x44], xmm1
	pxor xmm5, xmm5
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_150
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_100:
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [esi+0x18]
	movss [ebp-0x40], xmm0
	ucomiss xmm0, xmm5
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_180
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_340:
	movzx eax, word [edi+0xc]
	movzx ebx, ax
	test ax, ax
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_20
	movss xmm3, dword [_float_1_00000000]
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_200:
	movss xmm0, dword [ebp-0x40]
	mov edx, ebx
	mov eax, [ebp-0x4c]
	movss [ebp-0x88], xmm3
	call _Z24XAnimFindServerNoteTrackPK6DObj_sjf_190
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
	jnz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_200
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_210
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_80:
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
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movaps xmm3, xmm0
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_210
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_170:
	pxor xmm5, xmm5
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_150
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_60:
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jb _Z24XAnimFindServerNoteTrackPK6DObj_sjf_70
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_220:
	subss xmm3, xmm2
	add ecx, 0x1
	ucomiss xmm3, xmm2
	jae _Z24XAnimFindServerNoteTrackPK6DObj_sjf_220
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_70
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_110:
	movaps xmm0, xmm5
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_320:
	mulss xmm0, [esi+0x18]
	movss xmm3, dword [ebp-0x50]
	mulss xmm3, xmm0
	movss [ebp-0x3c], xmm3
	ucomiss xmm3, xmm5
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_230
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_350:
	movss xmm1, dword [esi+0x4]
	addss xmm3, xmm1
	movzx ecx, word [esi+0xa]
	test byte [edi+0x14], 0x2
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_240
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jb _Z24XAnimFindServerNoteTrackPK6DObj_sjf_250
	movss xmm0, dword [_float_0_99999988]
	subss xmm1, xmm0
	cmpss xmm5, xmm1, 0x6
	movaps xmm3, xmm5
	andps xmm3, xmm0
	movaps xmm0, xmm3
	movaps xmm3, xmm5
	andnps xmm3, xmm2
	orps xmm3, xmm0
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_250:
	movss xmm4, dword [esi]
	movsx eax, cx
	movsx edx, word [esi+0x8]
	sub eax, edx
	cvtsi2ss xmm1, eax
	movaps xmm0, xmm4
	subss xmm0, xmm3
	ucomiss xmm0, xmm1
	ja _Z24XAnimFindServerNoteTrackPK6DObj_sjf_260
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
	call _Z28XAnimGetNextServerNotifyFracPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movaps xmm3, xmm0
	movzx eax, word [edi+0xc]
	movzx ebx, ax
	test ax, ax
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_210
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_270
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_290:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_210
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_270:
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea edx, [eax+g_xAnimInfo]
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x2c]
	jp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_280
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_290
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_280:
	ucomiss xmm0, [edx+0x28]
	jp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_300
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_290
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_300:
	lea eax, [ebp-0x38]
	mov [esp], eax
	movss xmm0, dword [ebp-0x3c]
	mov ecx, esi
	mov eax, [ebp-0x4c]
	movss [ebp-0x88], xmm3
	call _Z33XAnimGetServerNotifyFracSyncTotalPK6DObj_sP9XAnimInfoPK10XAnimStateS6_f
	movss xmm3, dword [ebp-0x88]
	minss xmm0, xmm3
	movaps xmm3, xmm0
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_290
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_130:
	ucomiss xmm2, xmm5
	jp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_310
	jz _Z24XAnimFindServerNoteTrackPK6DObj_sjf_110
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_310:
	movss xmm0, dword [ebp-0x44]
	divss xmm0, xmm2
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_320
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_240:
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jb _Z24XAnimFindServerNoteTrackPK6DObj_sjf_250
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_330:
	subss xmm3, xmm2
	add ecx, 0x1
	ucomiss xmm3, xmm2
	jae _Z24XAnimFindServerNoteTrackPK6DObj_sjf_330
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_250
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_180:
	jnp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_20
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_340
_Z24XAnimFindServerNoteTrackPK6DObj_sjf_230:
	jnp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_20
	jmp _Z24XAnimFindServerNoteTrackPK6DObj_sjf_350
	nop


;XAnimBlend(XAnim_s*, unsigned int, char const*, unsigned int, unsigned int, unsigned int)
_Z10XAnimBlendP7XAnim_sjPKcjjj:
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
	jz _Z10XAnimBlendP7XAnim_sjPKcjjj_10
	mov ebx, edx
	xor edx, edx
	movzx ecx, cx
_Z10XAnimBlendP7XAnim_sjPKcjjj_20:
	lea eax, [edx+ecx]
	mov esi, [ebp+0x8]
	mov [esi+eax*8+0xe], bx
	add edx, 0x1
	cmp edi, edx
	jnz _Z10XAnimBlendP7XAnim_sjPKcjjj_20
_Z10XAnimBlendP7XAnim_sjPKcjjj_10:
	mov eax, [ebp-0x1c]
	cmp word [eax], 0x0
	jz _Z10XAnimBlendP7XAnim_sjPKcjjj_30
	test byte [eax+0x4], 0x10
	jnz _Z10XAnimBlendP7XAnim_sjPKcjjj_40
_Z10XAnimBlendP7XAnim_sjPKcjjj_30:
	xor eax, eax
_Z10XAnimBlendP7XAnim_sjPKcjjj_120:
	test eax, eax
	jz _Z10XAnimBlendP7XAnim_sjPKcjjj_50
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0x2]
	movzx edx, ax
	test ax, ax
	jnz _Z10XAnimBlendP7XAnim_sjPKcjjj_60
_Z10XAnimBlendP7XAnim_sjPKcjjj_50:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x8]
	test ebx, ebx
	jz _Z10XAnimBlendP7XAnim_sjPKcjjj_70
	mov dword [esp+0x4], _cstring_xanimblend
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x10]
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z18Hunk_AllocDebugMemiPKc
	mov ebx, eax
	mov esi, [ebp+0x10]
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	mov ecx, [ebp+0xc]
	mov [eax+ecx*4], ebx
_Z10XAnimBlendP7XAnim_sjPKcjjj_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10XAnimBlendP7XAnim_sjPKcjjj_100:
	test byte [ebx+0x4], 0x10
	jz _Z10XAnimBlendP7XAnim_sjPKcjjj_80
	mov eax, 0x1
	test eax, eax
	jnz _Z10XAnimBlendP7XAnim_sjPKcjjj_90
_Z10XAnimBlendP7XAnim_sjPKcjjj_110:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jz _Z10XAnimBlendP7XAnim_sjPKcjjj_50
_Z10XAnimBlendP7XAnim_sjPKcjjj_60:
	mov ecx, [ebp+0x8]
	lea eax, [ecx+edx*8]
	lea ebx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz _Z10XAnimBlendP7XAnim_sjPKcjjj_100
_Z10XAnimBlendP7XAnim_sjPKcjjj_80:
	xor eax, eax
	test eax, eax
	jz _Z10XAnimBlendP7XAnim_sjPKcjjj_110
_Z10XAnimBlendP7XAnim_sjPKcjjj_90:
	mov dword [esp+0x4], _cstring_do_not_nest_addi
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z10XAnimBlendP7XAnim_sjPKcjjj_110
_Z10XAnimBlendP7XAnim_sjPKcjjj_40:
	mov eax, 0x1
	jmp _Z10XAnimBlendP7XAnim_sjPKcjjj_120
	nop


;GetAnimInfo(int)
_Z11GetAnimInfoi:
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
_Z11XAnimCreateP7XAnim_sjPKc:
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
	mov edx, _Z22XAnimFindData_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z21XAnimFindData_LoadObjPKc
	cmovz edx, eax
	mov [esp], esi
	call edx
	mov edx, eax
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jnz _Z11XAnimCreateP7XAnim_sjPKc_10
	test edx, edx
	jz _Z11XAnimCreateP7XAnim_sjPKc_20
_Z11XAnimCreateP7XAnim_sjPKc_10:
	mov ecx, [ebp-0x20]
	mov ebx, [ebp-0x1c]
	lea eax, [ebx+ecx*8]
	mov word [eax+0xc], 0x0
	mov [eax+0x10], edx
	mov ecx, [ebx+0x8]
	test ecx, ecx
	jz _Z11XAnimCreateP7XAnim_sjPKc_30
	mov dword [esp+0x4], _cstring_xanimcreate
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z18Hunk_AllocDebugMemiPKc
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x8]
	mov ecx, [ebp-0x20]
	mov [eax+ecx*4], ebx
_Z11XAnimCreateP7XAnim_sjPKc_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11XAnimCreateP7XAnim_sjPKc_20:
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], _cstring_cannot_find_xani1
	mov dword [ebp+0x8], 0x2
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z9Com_Error11errorParm_tPKcz


;XAnimGetTime(XAnimTree_s const*, unsigned int)
_Z12XAnimGetTimePK11XAnimTree_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz _Z12XAnimGetTimePK11XAnimTree_sj_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z12XAnimGetTimePK11XAnimTree_sj_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z12XAnimGetTimePK11XAnimTree_sj_10
	xor edx, edx
_Z12XAnimGetTimePK11XAnimTree_sj_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z12XAnimGetTimePK11XAnimTree_sj_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov ecx, eax
	test eax, eax
	jnz _Z12XAnimGetTimePK11XAnimTree_sj_20
	mov edx, esi
_Z12XAnimGetTimePK11XAnimTree_sj_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z12XAnimGetTimePK11XAnimTree_sj_40
_Z12XAnimGetTimePK11XAnimTree_sj_10:
	fldz
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12XAnimGetTimePK11XAnimTree_sj_20:
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
_Z12XAnimSetTimeP11XAnimTree_sjf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz _Z12XAnimSetTimeP11XAnimTree_sjf_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z12XAnimSetTimeP11XAnimTree_sjf_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z12XAnimSetTimeP11XAnimTree_sjf_10
	xor edx, edx
_Z12XAnimSetTimeP11XAnimTree_sjf_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z12XAnimSetTimeP11XAnimTree_sjf_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov ecx, eax
	test eax, eax
	jnz _Z12XAnimSetTimeP11XAnimTree_sjf_20
	mov edx, esi
_Z12XAnimSetTimeP11XAnimTree_sjf_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z12XAnimSetTimeP11XAnimTree_sjf_40
_Z12XAnimSetTimeP11XAnimTree_sjf_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12XAnimSetTimeP11XAnimTree_sjf_20:
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
_Z13XAnimFreeListP7XAnim_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi]
	test eax, eax
	jz _Z13XAnimFreeListP7XAnim_s_10
	mov [esp], eax
	call _Z17Hunk_FreeDebugMemPv
	mov dword [edi], 0x0
_Z13XAnimFreeListP7XAnim_s_10:
	mov ecx, [edi+0x8]
	test ecx, ecx
	jz _Z13XAnimFreeListP7XAnim_s_20
	mov edx, [edi+0x4]
	test edx, edx
	jz _Z13XAnimFreeListP7XAnim_s_30
	xor ebx, ebx
	mov edx, [edi+0x8]
_Z13XAnimFreeListP7XAnim_s_50:
	lea esi, [ebx*4]
	mov eax, [edx+esi]
	test eax, eax
	jz _Z13XAnimFreeListP7XAnim_s_40
	mov [esp], eax
	call _Z17Hunk_FreeDebugMemPv
	mov eax, [edi+0x8]
	mov dword [esi+eax], 0x0
	mov edx, [edi+0x8]
_Z13XAnimFreeListP7XAnim_s_40:
	add ebx, 0x1
	cmp ebx, [edi+0x4]
	jb _Z13XAnimFreeListP7XAnim_s_50
	mov [esp], edx
	call _Z17Hunk_FreeDebugMemPv
	mov dword [edi+0x8], 0x0
_Z13XAnimFreeListP7XAnim_s_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13XAnimFreeListP7XAnim_s_30:
	mov edx, [edi+0x8]
	mov [esp], edx
	call _Z17Hunk_FreeDebugMemPv
	mov dword [edi+0x8], 0x0
	jmp _Z13XAnimFreeListP7XAnim_s_20
	nop
	add [eax], al


;XAnimFreeTree(XAnimTree_s*, void (*)(void*, int))
_Z13XAnimFreeTreeP11XAnimTree_sPFvPviE:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z13XAnimFreeTreeP11XAnimTree_sPFvPviE_10
	test esi, esi
	jz _Z13XAnimFreeTreeP11XAnimTree_sPFvPviE_20
_Z13XAnimFreeTreeP11XAnimTree_sPFvPviE_30:
	mov dword [ebp+0xc], 0x8
	mov [ebp+0x8], ebx
	mov ecx, esi
	pop ebx
	pop esi
	pop ebp
	jmp ecx
_Z13XAnimFreeTreeP11XAnimTree_sPFvPviE_10:
	movzx edx, ax
	mov eax, ebx
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	test esi, esi
	jnz _Z13XAnimFreeTreeP11XAnimTree_sPFvPviE_30
_Z13XAnimFreeTreeP11XAnimTree_sPFvPviE_20:
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;XAnimGetAnims(XAnimTree_s const*)
_Z13XAnimGetAnimsPK11XAnimTree_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;XAnimIsLooped(XAnim_s const*, unsigned int)
_Z13XAnimIsLoopedPK7XAnim_sj:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	shl edx, 0x3
	add edx, [ebp+0x8]
	lea eax, [edx+0xc]
	cmp word [edx+0xc], 0x0
	jz _Z13XAnimIsLoopedPK7XAnim_sj_10
	movzx eax, word [eax+0x4]
	and eax, 0x1
	pop ebp
	ret
_Z13XAnimIsLoopedPK7XAnim_sj_10:
	mov eax, [eax+0x4]
	movzx eax, byte [eax+0x10]
	pop ebp
	ret


;XAnimPrecache(char const*, void* (*)(int))
_Z13XAnimPrecachePKcPFPviE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, useFastFile
	mov eax, [edi]
	mov esi, _Z22XAnimFindData_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z21XAnimFindData_LoadObjPKc
	cmovnz eax, esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	mov ebx, eax
	test eax, eax
	jz _Z13XAnimPrecachePKcPFPviE_10
_Z13XAnimPrecachePKcPFPviE_120:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13XAnimPrecachePKcPFPviE_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13XAnimLoadFilePKcPFPviE
	mov ebx, eax
	test eax, eax
	jz _Z13XAnimPrecachePKcPFPviE_20
_Z13XAnimPrecachePKcPFPviE_60:
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
_Z13XAnimPrecachePKcPFPviE_20:
	mov dword [esp+0xc], _cstring_void
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_couldnt_
	mov dword [esp], 0x13
	call _Z16Com_PrintWarningiPKcz
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov edx, _Z21XAnimFindData_LoadObjPKc
	cmovz esi, edx
	mov dword [esp], _cstring_void
	call esi
	mov esi, eax
	test eax, eax
	jz _Z13XAnimPrecachePKcPFPviE_30
_Z13XAnimPrecachePKcPFPviE_110:
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
	jg _Z13XAnimPrecachePKcPFPviE_40
_Z13XAnimPrecachePKcPFPviE_90:
	mov esi, [ebx+0x50]
	cmp byte [ebx+0x1c], 0x0
	jnz _Z13XAnimPrecachePKcPFPviE_50
	mov byte [ebx+0x1e], 0x1
	jmp _Z13XAnimPrecachePKcPFPviE_60
_Z13XAnimPrecachePKcPFPviE_50:
	xor edi, edi
_Z13XAnimPrecachePKcPFPviE_70:
	movzx eax, word [esi]
	mov [esp], eax
	call _Z17SL_AddRefToStringj
	add edi, 0x1
	add esi, 0x8
	movzx edx, byte [ebx+0x1c]
	movsx eax, di
	cmp edx, eax
	jg _Z13XAnimPrecachePKcPFPviE_70
	mov byte [ebx+0x1e], 0x1
	jmp _Z13XAnimPrecachePKcPFPviE_60
_Z13XAnimPrecachePKcPFPviE_40:
	xor esi, esi
_Z13XAnimPrecachePKcPFPviE_80:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+esi*2]
	mov [esp], eax
	call _Z17SL_AddRefToStringj
	add esi, 0x1
	cmp edi, esi
	jnz _Z13XAnimPrecachePKcPFPviE_80
	jmp _Z13XAnimPrecachePKcPFPviE_90
_Z13XAnimPrecachePKcPFPviE_30:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_void
	call _Z13XAnimLoadFilePKcPFPviE
	mov esi, eax
	test eax, eax
	jz _Z13XAnimPrecachePKcPFPviE_100
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_void
	mov dword [esp], 0x6
	call Hunk_SetDataForFile
	jmp _Z13XAnimPrecachePKcPFPviE_110
_Z13XAnimPrecachePKcPFPviE_100:
	mov dword [esp+0x8], _cstring_void
	mov dword [esp+0x4], _cstring_cannot_find_xani2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z13XAnimPrecachePKcPFPviE_120
	nop


;XAnimShutdown()
_Z13XAnimShutdownv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_endNotetrackName]
	test eax, eax
	jnz _Z13XAnimShutdownv_10
	leave
	ret
_Z13XAnimShutdownv_10:
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov dword [g_endNotetrackName], 0x0
	leave
	ret
	nop


;XAnimCalcDelta(DObj_s*, unsigned int, float*, float*, unsigned char)
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h:
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
	jz _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_10
	movzx edi, ax
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_10
	xor edx, edx
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_30
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x3c]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov edi, eax
	test eax, eax
	jnz _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_20
	mov edx, esi
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_40
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h_10:
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
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h_20:
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
	call _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x30]
	jp _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_50
	jz _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_60
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h_50:
	ucomiss xmm0, [ebp-0x2c]
	jp _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_70
	jnz _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_70
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h_60:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x3f800000
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h_80:
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
_Z14XAnimCalcDeltaP6DObj_sjPfS1_h_70:
	mov eax, [ebp-0x30]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	jmp _Z14XAnimCalcDeltaP6DObj_sjPfS1_h_80


;XAnimClearTree(XAnimTree_s*)
_Z14XAnimClearTreeP11XAnimTree_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx edx, word [eax+0x4]
	test dx, dx
	jnz _Z14XAnimClearTreeP11XAnimTree_s_10
	pop ebp
	ret
_Z14XAnimClearTreeP11XAnimTree_s_10:
	movzx edx, dx
	pop ebp
	jmp _Z13XAnimFreeInfoP11XAnimTree_sj


;XAnimGetLength(XAnim_s const*, unsigned int)
_Z14XAnimGetLengthPK7XAnim_sj:
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
_Z14XAnimGetWeightPK11XAnimTree_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz _Z14XAnimGetWeightPK11XAnimTree_sj_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z14XAnimGetWeightPK11XAnimTree_sj_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z14XAnimGetWeightPK11XAnimTree_sj_10
	xor edx, edx
_Z14XAnimGetWeightPK11XAnimTree_sj_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z14XAnimGetWeightPK11XAnimTree_sj_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov ecx, eax
	test eax, eax
	jnz _Z14XAnimGetWeightPK11XAnimTree_sj_20
	mov edx, esi
_Z14XAnimGetWeightPK11XAnimTree_sj_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z14XAnimGetWeightPK11XAnimTree_sj_40
_Z14XAnimGetWeightPK11XAnimTree_sj_10:
	fldz
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14XAnimGetWeightPK11XAnimTree_sj_20:
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
_Z15DObjDisplayAnimPK6DObj_sPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov eax, [ebp+0x8]
	mov esi, [eax]
	test esi, esi
	jz _Z15DObjDisplayAnimPK6DObj_sPKc_10
	cmp word [esi+0x4], 0x0
	jnz _Z15DObjDisplayAnimPK6DObj_sPKc_20
_Z15DObjDisplayAnimPK6DObj_sPKc_10:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_sno_tree
	mov dword [esp+0x4], 0x800
	lea edi, [ebp-0x81c]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	mov [esp+0x4], edi
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15DObjDisplayAnimPK6DObj_sPKc_20:
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_s
	lea ebx, [ebp-0x1c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x800
	lea edi, [ebp-0x81c]
	mov [esp], edi
	call _Z14Com_sprintfPosPciPiPKcz
	movzx edx, word [esi+0x4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x800
	mov [esp], edi
	xor ecx, ecx
	mov eax, esi
	call _Z12XAnimDisplayPK11XAnimTree_sjiPciPi
	mov dword [esp+0xc], _cstring_
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x800
	mov [esp], edi
	call _Z14Com_sprintfPosPciPiPKcz
	mov [esp+0x4], edi
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XAnimCreateTree(XAnim_s*, void* (*)(int))
_Z15XAnimCreateTreeP7XAnim_sPFPviE:
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
_Z15XAnimGetChildAtPK7XAnim_sjj:
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
_Z16XAnimCreateAnimsPKciPFPviE:
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
	jnz _Z16XAnimCreateAnimsPKciPFPviE_10
_Z16XAnimCreateAnimsPKciPFPviE_30:
	mov [esp], esi
	call Hunk_DataOnHunk
	test eax, eax
	jz _Z16XAnimCreateAnimsPKciPFPviE_20
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x2
	call Hunk_AddData
_Z16XAnimCreateAnimsPKciPFPviE_20:
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16XAnimCreateAnimsPKciPFPviE_10:
	mov dword [esp+0x4], _cstring_xanimcreateanims
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z18Hunk_AllocDebugMemiPKc
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
	call _Z18Hunk_AllocDebugMemiPKc
	mov [esi+0x8], eax
	jmp _Z16XAnimCreateAnimsPKciPFPviE_30


;XAnimGetAbsDelta(XAnim_s const*, unsigned int, float*, float*, float)
_Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f:
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
	jnz _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_10
	mov edx, [edx+0x4]
	cmp byte [edx+0x11], 0x0
	jnz _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_20
_Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_10:
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
_Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_20:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x4], xmm0
	mov [esp], edx
	call _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4
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
	jnz _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_30
	jp _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_30
	ucomiss xmm0, xmm1
	jp _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_30
	jz _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_40
_Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_30:
	movss [esi], xmm2
	movss [esi+0x4], xmm0
_Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_50:
	movss [ebx], xmm3
	movss [ebx+0x4], xmm4
	movss [ebx+0x8], xmm5
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_40:
	mov dword [esi], 0x0
	mov dword [esi+0x4], 0x3f800000
	jmp _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f_50
	nop


;XAnimGetAnimName(XAnim_s const*, unsigned int)
_Z16XAnimGetAnimNamePK7XAnim_sj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	shl eax, 0x3
	add eax, [ebp+0x8]
	lea edx, [eax+0xc]
	cmp word [eax+0xc], 0x0
	jnz _Z16XAnimGetAnimNamePK7XAnim_sj_10
	mov eax, [edx+0x4]
	mov eax, [eax]
	pop ebp
	ret
_Z16XAnimGetAnimNamePK7XAnim_sj_10:
	mov eax, _cstring_null
	pop ebp
	ret


;XAnimGetRelDelta(XAnim_s const*, unsigned int, float*, float*, float, float)
_Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff:
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
	jnz _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_10
	mov eax, [eax+0x4]
	cmp byte [eax+0x11], 0x0
	jnz _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_20
_Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_10:
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
_Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_20:
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
	call _Z22XAnimCalcRelDeltaPartsPK10XAnimPartsfffP17XAnimSimpleRotPosi
	movss xmm3, dword [ebp-0x38]
	ucomiss xmm3, [ebp-0x20]
	jnz _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_30
	jp _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_30
	ucomiss xmm3, [ebp-0x1c]
	jp _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_30
	jz _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_40
_Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_30:
	mov eax, [ebp-0x20]
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x4], eax
_Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_50:
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
_Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_40:
	mov dword [esi], 0x0
	mov dword [esi+0x4], 0x3f800000
	jmp _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff_50


;XAnimHasFinished(XAnimTree_s const*, unsigned int)
_Z16XAnimHasFinishedPK11XAnimTree_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz _Z16XAnimHasFinishedPK11XAnimTree_sj_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z16XAnimHasFinishedPK11XAnimTree_sj_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z16XAnimHasFinishedPK11XAnimTree_sj_10
	xor edx, edx
_Z16XAnimHasFinishedPK11XAnimTree_sj_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z16XAnimHasFinishedPK11XAnimTree_sj_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov ecx, eax
	test eax, eax
	jnz _Z16XAnimHasFinishedPK11XAnimTree_sj_20
	mov edx, esi
_Z16XAnimHasFinishedPK11XAnimTree_sj_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z16XAnimHasFinishedPK11XAnimTree_sj_40
_Z16XAnimHasFinishedPK11XAnimTree_sj_10:
	mov eax, 0x1
_Z16XAnimHasFinishedPK11XAnimTree_sj_60:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16XAnimHasFinishedPK11XAnimTree_sj_20:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	lea eax, [ecx+g_xAnimInfo+0x10]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, xmm1
	ja _Z16XAnimHasFinishedPK11XAnimTree_sj_10
	ucomiss xmm1, [_float_1_00000000]
	jp _Z16XAnimHasFinishedPK11XAnimTree_sj_50
	jz _Z16XAnimHasFinishedPK11XAnimTree_sj_10
_Z16XAnimHasFinishedPK11XAnimTree_sj_50:
	movzx eax, word [edx+0x8]
	cmp ax, [edx+0xa]
	jg _Z16XAnimHasFinishedPK11XAnimTree_sj_10
	xor eax, eax
	jmp _Z16XAnimHasFinishedPK11XAnimTree_sj_60
	nop


;XAnimIsPrimitive(XAnim_s*, unsigned int)
_Z16XAnimIsPrimitiveP7XAnim_sj:
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
_Z16XAnimSetAnimRateP11XAnimTree_sjf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x4]
	test ax, ax
	jz _Z16XAnimSetAnimRateP11XAnimTree_sjf_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z16XAnimSetAnimRateP11XAnimTree_sjf_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z16XAnimSetAnimRateP11XAnimTree_sjf_10
	xor edx, edx
_Z16XAnimSetAnimRateP11XAnimTree_sjf_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z16XAnimSetAnimRateP11XAnimTree_sjf_30
	mov edx, [ebp+0xc]
	mov eax, edi
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov ecx, eax
	test eax, eax
	jnz _Z16XAnimSetAnimRateP11XAnimTree_sjf_20
	mov edx, esi
_Z16XAnimSetAnimRateP11XAnimTree_sjf_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z16XAnimSetAnimRateP11XAnimTree_sjf_40
_Z16XAnimSetAnimRateP11XAnimTree_sjf_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16XAnimSetAnimRateP11XAnimTree_sjf_20:
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
_Z17XAnimCalcAbsDeltaP6DObj_sjPfS1_:
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
	jz _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__10
	movzx edi, ax
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__10
	xor edx, edx
_Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx esi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, esi
	jz _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__30
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x3c]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov edi, eax
	test eax, eax
	jnz _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__20
	mov edx, esi
_Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__40
_Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__10:
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
_Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__20:
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
	call _Z18XAnimCalcDeltaTreePK6DObj_sjf14XAnimDeltaInfoP17XAnimSimpleRotPos
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x30]
	jnz _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__50
	jp _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__50
	ucomiss xmm0, [ebp-0x2c]
	jp _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__50
	jz _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__60
_Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__50:
	mov eax, [ebp-0x30]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
_Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__70:
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
_Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__60:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x3f800000
	jmp _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1__70


;XAnimResetAnimMap(DObj_s const*, unsigned int)
_Z17XAnimResetAnimMapPK6DObj_sj:
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
	jz _Z17XAnimResetAnimMapPK6DObj_sj_10
	xor esi, esi
	mov dword [ebp-0x4d4], 0x0
	mov edx, [ebp-0x4d4]
_Z17XAnimResetAnimMapPK6DObj_sj_60:
	mov ecx, [ebp-0x4d8]
	mov eax, [ecx+edx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x4d0], edx
	movzx eax, byte [eax+0x4]
	movzx edi, al
	test al, al
	jz _Z17XAnimResetAnimMapPK6DObj_sj_20
	xor ebx, ebx
_Z17XAnimResetAnimMapPK6DObj_sj_50:
	mov eax, [ebp-0x4d0]
	movzx ecx, word [eax+ebx*2]
	movzx eax, cl
	lea edx, [ebp+eax*4-0x4b8]
	cmp word [edx], 0x0
	jz _Z17XAnimResetAnimMapPK6DObj_sj_30
_Z17XAnimResetAnimMapPK6DObj_sj_40:
	add eax, 0x1
	and eax, 0xff
	lea edx, [ebp+eax*4-0x4b8]
	cmp word [edx], 0x0
	jnz _Z17XAnimResetAnimMapPK6DObj_sj_40
_Z17XAnimResetAnimMapPK6DObj_sj_30:
	mov [edx+0x2], si
	mov [edx], cx
	add ebx, 0x1
	add esi, 0x1
	cmp edi, ebx
	ja _Z17XAnimResetAnimMapPK6DObj_sj_50
_Z17XAnimResetAnimMapPK6DObj_sj_20:
	add dword [ebp-0x4d4], 0x1
	mov edx, [ebp-0x4d4]
	cmp [ebp-0x4dc], edx
	ja _Z17XAnimResetAnimMapPK6DObj_sj_60
_Z17XAnimResetAnimMapPK6DObj_sj_10:
	mov eax, [ebp+0xc]
	shl eax, 0x3
	shl dword [ebp+0xc], 0x6
	sub [ebp+0xc], eax
	mov ecx, [ebp+0xc]
	add ecx, g_xAnimInfo
	mov [ebp-0x4cc], ecx
	cmp word [ecx+0x12], 0x0
	jnz _Z17XAnimResetAnimMapPK6DObj_sj_70
	movzx eax, word [ecx+0xc]
	movzx ebx, ax
	test ax, ax
	jnz _Z17XAnimResetAnimMapPK6DObj_sj_80
_Z17XAnimResetAnimMapPK6DObj_sj_90:
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17XAnimResetAnimMapPK6DObj_sj_80:
	mov edx, ebx
	lea eax, [ebp-0x4b8]
	call _Z19XAnimResetAnimMap_rP13XModelNameMapj
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z17XAnimResetAnimMapPK6DObj_sj_80
	jmp _Z17XAnimResetAnimMapPK6DObj_sj_90
_Z17XAnimResetAnimMapPK6DObj_sj_70:
	movzx eax, word [ecx+0x12]
	mov [ebp-0x4c8], eax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
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
	jz _Z17XAnimResetAnimMapPK6DObj_sj_100
	xor edi, edi
_Z17XAnimResetAnimMapPK6DObj_sj_140:
	mov eax, [ebp-0x4bc]
	movzx esi, word [eax+edi*2]
	mov ecx, esi
	and ecx, 0xff
	lea ebx, [ebp+ecx*4-0x4b8]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jz _Z17XAnimResetAnimMapPK6DObj_sj_110
_Z17XAnimResetAnimMapPK6DObj_sj_130:
	cmp esi, edx
	jz _Z17XAnimResetAnimMapPK6DObj_sj_120
	lea eax, [ecx+0x1]
	movzx ecx, al
	lea ebx, [ebp+ecx*4-0x4b8]
	movzx eax, word [ebx]
	movzx edx, ax
	test ax, ax
	jnz _Z17XAnimResetAnimMapPK6DObj_sj_130
_Z17XAnimResetAnimMapPK6DObj_sj_110:
	mov byte [ebp+edi-0x9b], 0x7f
_Z17XAnimResetAnimMapPK6DObj_sj_150:
	add edi, 0x1
	cmp [ebp-0x4c0], edi
	ja _Z17XAnimResetAnimMapPK6DObj_sj_140
_Z17XAnimResetAnimMapPK6DObj_sj_100:
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
	call _Z26SL_RemoveRefToStringOfSizejj
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17XAnimResetAnimMapPK6DObj_sj_120:
	movzx ecx, word [ebx+0x2]
	mov [ebp+edi-0x9b], cl
	mov edx, ecx
	shr edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xac], eax
	jmp _Z17XAnimResetAnimMapPK6DObj_sj_150
	nop
	add [eax], al


;DObjInitServerTime(DObj_s*, float)
_Z18DObjInitServerTimeP6DObj_sf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	test eax, eax
	jz _Z18DObjInitServerTimeP6DObj_sf_10
	cmp word [eax+0x4], 0x0
	jnz _Z18DObjInitServerTimeP6DObj_sf_20
_Z18DObjInitServerTimeP6DObj_sf_10:
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_Z18DObjInitServerTimeP6DObj_sf_20:
	mov dword [ebp-0x2c], 0x0
	mov word [ebp-0x24], 0x0
	lea ecx, [ebp-0x2c]
	movzx edx, word [eax+0x4]
	lea eax, [ebp-0x9]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	movss xmm0, dword [ebp+0xc]
	mov eax, ebx
	call _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh
	add esp, 0x44
	pop ebx
	pop ebp
	ret
	nop


;XAnimCloneAnimTree(XAnimTree_s const*, XAnimTree_s*)
_Z18XAnimCloneAnimTreePK11XAnimTree_sPS_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z18XAnimCloneAnimTreePK11XAnimTree_sPS__10
_Z18XAnimCloneAnimTreePK11XAnimTree_sPS__30:
	movzx eax, word [esi+0x4]
	test ax, ax
	jnz _Z18XAnimCloneAnimTreePK11XAnimTree_sPS__20
	pop ebx
	pop esi
	pop ebp
	ret
_Z18XAnimCloneAnimTreePK11XAnimTree_sPS__20:
	movzx ecx, ax
	mov dword [ebp+0x8], 0x0
	mov edx, ebx
	mov eax, esi
	pop ebx
	pop esi
	pop ebp
	jmp _Z20XAnimCloneAnimTree_rPK11XAnimTree_sPS_jj
_Z18XAnimCloneAnimTreePK11XAnimTree_sPS__10:
	movzx edx, ax
	mov eax, ebx
	call _Z13XAnimFreeInfoP11XAnimTree_sj
	jmp _Z18XAnimCloneAnimTreePK11XAnimTree_sPS__30
	nop


;XAnimGetLengthMsec(XAnim_s const*, unsigned int)
_Z18XAnimGetLengthMsecPK7XAnim_sj:
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
_Z18XAnimSetGoalWeightP6DObj_sjfffjji:
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
	jz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_10
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x24], eax
	jz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_30
	xor edx, edx
_Z18XAnimSetGoalWeightP6DObj_sjfffjji_50:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_40
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x1c]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov esi, eax
	test eax, eax
	jnz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_20
	mov edx, edi
_Z18XAnimSetGoalWeightP6DObj_sjfffjji_40:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_50
_Z18XAnimSetGoalWeightP6DObj_sjfffjji_30:
	movss xmm0, dword [ebp-0x28]
	ucomiss xmm0, [_float_0_000000001]
	jnz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_60
_Z18XAnimSetGoalWeightP6DObj_sjfffjji_70:
	jp _Z18XAnimSetGoalWeightP6DObj_sjfffjji_60
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18XAnimSetGoalWeightP6DObj_sjfffjji_10:
	movaps xmm0, xmm1
	ucomiss xmm0, [_float_0_000000001]
	jz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_70
_Z18XAnimSetGoalWeightP6DObj_sjfffjji_60:
	xor ecx, ecx
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x20]
	call _Z19XAnimAllocInfoIndexP6DObj_sji
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
_Z18XAnimSetGoalWeightP6DObj_sjfffjji_80:
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
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj
_Z18XAnimSetGoalWeightP6DObj_sjfffjji_20:
	mov eax, [ebp-0x3c]
	test eax, eax
	jz _Z18XAnimSetGoalWeightP6DObj_sjfffjji_80
	movss xmm0, dword [ebp-0x2c]
	mov edx, esi
	mov eax, [ebp-0x1c]
	call _Z12XAnimRestartP11XAnimTree_sjf
	mov esi, eax
	jmp _Z18XAnimSetGoalWeightP6DObj_sjfffjji_80
	nop


;XAnimGetNumChildren(XAnim_s const*, unsigned int)
_Z19XAnimGetNumChildrenPK7XAnim_sj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	movzx eax, word [edx+eax*8+0xc]
	pop ebp
	ret


;XAnimSetupSyncNodes(XAnim_s*)
_Z19XAnimSetupSyncNodesP7XAnim_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	xor edx, edx
	pop ebp
	jmp _Z21XAnimSetupSyncNodes_rP7XAnim_sj


;DObjUpdateClientInfo(DObj_s*, float, unsigned char)
_Z20DObjUpdateClientInfoP6DObj_sfh:
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
	jz _Z20DObjUpdateClientInfoP6DObj_sfh_10
	cmp word [ebx+0x4], 0x0
	jnz _Z20DObjUpdateClientInfoP6DObj_sfh_20
_Z20DObjUpdateClientInfoP6DObj_sfh_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20DObjUpdateClientInfoP6DObj_sfh_20:
	mov dword [ebp-0x3c], 0x0
	mov word [ebp-0x34], 0x0
	lea ecx, [ebp-0x3c]
	movzx edx, word [ebx+0x4]
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	movss xmm0, dword [ebp+0xc]
	mov eax, esi
	call _Z18XAnimUpdateOldTimeP6DObj_sjP10XAnimStatefhPh
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz _Z20DObjUpdateClientInfoP6DObj_sfh_10
	mov edx, edi
	movzx ecx, dl
	movzx edx, ax
	movss xmm0, dword [ebp+0xc]
	mov eax, esi
	call _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DObjUpdateServerInfo(DObj_s*, float, int)
_Z20DObjUpdateServerInfoP6DObj_sfi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	mov ebx, [esi]
	test ebx, ebx
	jz _Z20DObjUpdateServerInfoP6DObj_sfi_10
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz _Z20DObjUpdateServerInfoP6DObj_sfi_10
	mov edx, [ebp+0x10]
	test edx, edx
	jz _Z20DObjUpdateServerInfoP6DObj_sfi_20
	movzx edx, ax
	movaps xmm0, xmm1
	mov eax, esi
	movss [ebp-0x18], xmm1
	call _Z24XAnimFindServerNoteTrackPK6DObj_sjf
	movss xmm1, dword [ebp-0x18]
	ucomiss xmm0, [_float_1_00000000]
	jp _Z20DObjUpdateServerInfoP6DObj_sfi_30
	jz _Z20DObjUpdateServerInfoP6DObj_sfi_40
_Z20DObjUpdateServerInfoP6DObj_sfi_30:
	mulss xmm0, xmm1
	addss xmm0, [_float_0_00100000]
	ucomiss xmm1, xmm0
	jae _Z20DObjUpdateServerInfoP6DObj_sfi_50
_Z20DObjUpdateServerInfoP6DObj_sfi_40:
	movzx edx, word [ebx+0x4]
	mov ecx, 0x1
	movaps xmm0, xmm1
	mov eax, esi
	call _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20DObjUpdateServerInfoP6DObj_sfi_20:
	movzx edx, ax
	xor ecx, ecx
	movaps xmm0, xmm1
	mov eax, esi
	call _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh
	xor eax, eax
_Z20DObjUpdateServerInfoP6DObj_sfi_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20DObjUpdateServerInfoP6DObj_sfi_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20DObjUpdateServerInfoP6DObj_sfi_50:
	movzx edx, word [ebx+0x4]
	mov ecx, 0x1
	mov eax, esi
	call _Z27XAnimUpdateTimeAndNotetrackPK6DObj_sjfh
	mov eax, 0x1
	jmp _Z20DObjUpdateServerInfoP6DObj_sfi_60
	add [eax], al


;XAnimGetAnimTreeSize(XAnim_s const*)
_Z20XAnimGetAnimTreeSizePK7XAnim_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop


;XAnimNotetrackExists(XAnim_s const*, unsigned int, unsigned int)
_Z20XAnimNotetrackExistsPK7XAnim_sjj:
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
	jz _Z20XAnimNotetrackExistsPK7XAnim_sjj_10
	movzx ebx, byte [eax+0x1c]
	test ebx, ebx
	jle _Z20XAnimNotetrackExistsPK7XAnim_sjj_10
	movzx eax, word [edx]
	cmp esi, eax
	jz _Z20XAnimNotetrackExistsPK7XAnim_sjj_20
	lea ecx, [edx+0x8]
	xor edx, edx
_Z20XAnimNotetrackExistsPK7XAnim_sjj_30:
	add edx, 0x1
	cmp edx, ebx
	jz _Z20XAnimNotetrackExistsPK7XAnim_sjj_10
	movzx eax, word [ecx]
	add ecx, 0x8
	cmp esi, eax
	jnz _Z20XAnimNotetrackExistsPK7XAnim_sjj_30
_Z20XAnimNotetrackExistsPK7XAnim_sjj_20:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
_Z20XAnimNotetrackExistsPK7XAnim_sjj_10:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;XAnimGetAnimDebugName(XAnim_s const*, unsigned int)
_Z21XAnimGetAnimDebugNamePK7XAnim_sj:
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
	jz _Z21XAnimGetAnimDebugNamePK7XAnim_sj_10
	mov ebx, [eax+ecx*4]
	cmp word [edx+0xc], 0x0
	jnz _Z21XAnimGetAnimDebugNamePK7XAnim_sj_20
	mov edx, [esi+0x4]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21XAnimGetAnimDebugNamePK7XAnim_sj_30
	movzx eax, byte [edx+0x1e]
_Z21XAnimGetAnimDebugNamePK7XAnim_sj_50:
	test eax, eax
	jz _Z21XAnimGetAnimDebugNamePK7XAnim_sj_20
	mov [ebp+0xc], ebx
	mov dword [ebp+0x8], _cstring_3s_missing
_Z21XAnimGetAnimDebugNamePK7XAnim_sj_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z2vaPKcz
_Z21XAnimGetAnimDebugNamePK7XAnim_sj_10:
	cmp word [edx+0xc], 0x0
	jnz _Z21XAnimGetAnimDebugNamePK7XAnim_sj_40
	mov eax, [esi+0x4]
	mov ebx, [eax]
_Z21XAnimGetAnimDebugNamePK7XAnim_sj_20:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21XAnimGetAnimDebugNamePK7XAnim_sj_30:
	mov eax, [edx]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z18DB_IsXAssetDefault10XAssetTypePKc
	movzx eax, al
	jmp _Z21XAnimGetAnimDebugNamePK7XAnim_sj_50
_Z21XAnimGetAnimDebugNamePK7XAnim_sj_40:
	mov [ebp+0xc], ecx
	mov dword [ebp+0x8], _cstring_i
	jmp _Z21XAnimGetAnimDebugNamePK7XAnim_sj_60


;XAnimSetGoalWeightKnob(DObj_s*, unsigned int, float, float, float, unsigned int, int)
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji:
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
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_10
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x28], eax
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jnz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_30
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_10:
	xor ecx, ecx
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x24]
	call _Z19XAnimAllocInfoIndexP6DObj_sji
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
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_210:
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xe]
	movzx edx, ax
	test ax, ax
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_40
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xc]
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_170:
	test ebx, ebx
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_50
	mov ecx, ebx
	pxor xmm5, xmm5
	movaps xmm3, xmm5
	movss xmm4, dword [_data16_7fffffff]
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_60
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_80:
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
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_70
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_60:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	movss xmm2, dword [eax+0x2c]
	cmp esi, ecx
	jnz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_80
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm2
	movaps xmm2, xmm0
	andps xmm2, xmm4
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_80
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_50:
	pxor xmm5, xmm5
	movaps xmm3, xmm5
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_70:
	mulss xmm3, [ebp-0x30]
	movss [ebp-0x1c], xmm3
	test ebx, ebx
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_90
	ucomiss xmm3, xmm5
	jp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_100
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_110
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_100:
	cmp esi, ebx
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_120
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea edi, [eax+g_xAnimInfo]
	lea eax, [edi+0x18]
	pxor xmm5, xmm5
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_130
	jp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_130
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	ucomiss xmm0, xmm5
	jb _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_140
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_180:
	movss [eax+0xc], xmm1
	mov dword [eax+0x10], 0x0
	movzx eax, word [edi+0x4]
	test ax, ax
	jnz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_150
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_160:
	mov word [edi+0x2], 0xffff
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_120:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_100
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_90:
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
	jmp _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_130:
	movss xmm1, dword [ebp-0x1c]
	movss [eax+0xc], xmm1
	mov dword [eax+0x10], 0x0
	movzx eax, word [edi+0x4]
	test ax, ax
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_160
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_150:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [edi+0x4], 0x0
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_160
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_40:
	mov eax, [ebp-0x20]
	movzx ebx, word [eax+0x4]
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_170
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_140:
	movss xmm1, dword [ebp-0x1c]
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_180
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_30:
	xor edx, edx
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_200:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_190
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x20]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov esi, eax
	test eax, eax
	jnz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_20
	mov edx, edi
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_190:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_200
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_10
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_20:
	mov edx, [ebp-0x3c]
	test edx, edx
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_210
	movss xmm0, dword [ebp-0x30]
	mov edx, esi
	mov eax, [ebp-0x20]
	call _Z12XAnimRestartP11XAnimTree_sjf
	mov esi, eax
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_210
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_110:
	cmp esi, ebx
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_220
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea edi, [eax+g_xAnimInfo]
	lea eax, [edi+0x18]
	pxor xmm5, xmm5
	ucomiss xmm5, [eax+0x10]
	jp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_230
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_240
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_230:
	movss xmm2, dword [ebp-0x1c]
	movss [eax+0xc], xmm2
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_260:
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
	movzx eax, word [edi+0x4]
	test ax, ax
	jz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_250
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [edi+0x4], 0x0
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_250:
	mov word [edi+0x2], 0xffff
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_220:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_110
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_90
_Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_240:
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
	jmp _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji_260
	nop


;DObjGetClientNotifyList(XAnimNotify_s**)
_Z23DObjGetClientNotifyListPP13XAnimNotify_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], g_notifyList
	mov eax, [g_notifyListSize]
	pop ebp
	ret
	nop


;XAnimClearTreeGoalWeights(XAnimTree_s*, unsigned int, float)
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	test ax, ax
	jz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_10
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_10
	xor edx, edx
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_30
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov esi, eax
	test eax, eax
	jnz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_20
	mov edx, edi
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_40
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_20:
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
	jnz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_50
	jp _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_50
	movss [eax+0x14], xmm0
	mov byte [eax+0x1c], 0x1
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_50:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_60
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_80:
	mov word [ebx+0x2], 0xffff
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_10
	xor ecx, ecx
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_70:
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
	call _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi
	movzx ecx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_70
	jmp _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_10
_Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_60:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	jmp _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf_80
	nop
	add [eax], al


;XAnimGetAnimTreeDebugName(XAnim_s const*)
_Z25XAnimGetAnimTreeDebugNamePK7XAnim_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;XAnimSetGoalWeightKnobAll(DObj_s*, unsigned int, unsigned int, float, float, float, unsigned int, int)
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji:
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
	call _Z22XAnimSetGoalWeightKnobP6DObj_sjfffji
	mov [ebp-0x24], eax
	mov ebx, [ebx]
	mov [ebp-0x20], ebx
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_10
	movzx ecx, ax
	lea eax, [ecx*8]
	mov edx, ecx
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_10
	xor edx, edx
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_40:
	lea eax, [ecx*8]
	mov esi, ecx
	shl esi, 0x6
	sub esi, eax
	movzx edi, word [esi+g_xAnimInfo+0x10]
	cmp edx, edi
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_30
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x20]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov ecx, eax
	test eax, eax
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_20
	mov edx, edi
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_30:
	movzx eax, word [esi+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_40
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_10:
	xor ecx, ecx
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_20:
	lea eax, [ecx*8]
	shl ecx, 0x6
	sub ecx, eax
	movzx eax, word [ecx+g_xAnimInfo+0xe]
	movzx edi, ax
	test ax, ax
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_50
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_200:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0x10]
	cmp [ebp+0x10], eax
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_60
	mov ebx, [ebp+0x24]
	test ebx, ebx
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_70
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_240:
	lea eax, [edi*8]
	mov edx, edi
	shl edx, 0x6
	sub edx, eax
	movzx eax, word [edx+g_xAnimInfo+0xe]
	movzx edx, ax
	test ax, ax
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_80
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	movzx ebx, word [edx+g_xAnimInfo+0xc]
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_230:
	test ebx, ebx
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_90
	mov ecx, ebx
	pxor xmm5, xmm5
	movaps xmm3, xmm5
	movss xmm6, dword [_float_1_00000000]
	movss xmm4, dword [_data16_7fffffff]
	jmp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_100
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_120:
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
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_110
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_100:
	lea edx, [ecx*8]
	mov eax, ecx
	shl eax, 0x6
	sub eax, edx
	add eax, g_xAnimInfo
	movss xmm2, dword [eax+0x2c]
	cmp edi, ecx
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_120
	movaps xmm0, xmm6
	subss xmm0, xmm2
	movaps xmm2, xmm0
	andps xmm2, xmm4
	jmp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_120
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_90:
	pxor xmm5, xmm5
	movaps xmm3, xmm5
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_110:
	mulss xmm3, [ebp+0x18]
	movss [ebp-0x1c], xmm3
	test ebx, ebx
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_130
	ucomiss xmm3, xmm5
	jp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_140
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_150
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_140:
	cmp edi, ebx
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_160
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	lea eax, [esi+0x18]
	pxor xmm5, xmm5
	pxor xmm2, xmm2
	ucomiss xmm2, [eax+0x10]
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_170
	jp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_170
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	ucomiss xmm0, xmm5
	jb _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_180
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_210:
	movss [eax+0xc], xmm1
	mov dword [eax+0x10], 0x0
	movzx eax, word [esi+0x4]
	test ax, ax
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_190
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_220:
	mov word [esi+0x2], 0xffff
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_160:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_140
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_130:
	mov dword [esp], 0x0
	xor ecx, ecx
	movss xmm2, dword [_float_1_00000000]
	movss xmm1, dword [ebp+0x18]
	movaps xmm0, xmm2
	mov edx, edi
	mov eax, [ebp-0x20]
	call _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj
	lea eax, [edi*8]
	shl edi, 0x6
	sub edi, eax
	movzx eax, word [edi+g_xAnimInfo+0xe]
	movzx edi, ax
	test ax, ax
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_200
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_50:
	mov dword [ebp-0x24], 0x1
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_60:
	mov eax, [ebp-0x24]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_180:
	movss xmm1, dword [ebp-0x1c]
	jmp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_210
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_170:
	movss xmm1, dword [ebp-0x1c]
	movss [eax+0xc], xmm1
	mov dword [eax+0x10], 0x0
	movzx eax, word [esi+0x4]
	test ax, ax
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_220
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_190:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [esi+0x4], 0x0
	jmp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_220
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_80:
	mov eax, [ebp-0x20]
	movzx ebx, word [eax+0x4]
	jmp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_230
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_70:
	movss xmm0, dword [ebp+0x18]
	mov edx, edi
	mov eax, [ebp-0x20]
	call _Z12XAnimRestartP11XAnimTree_sjf
	mov edi, eax
	jmp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_240
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_150:
	cmp edi, ebx
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_250
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	lea esi, [eax+g_xAnimInfo]
	lea eax, [esi+0x18]
	pxor xmm5, xmm5
	ucomiss xmm5, [eax+0x10]
	jp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_260
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_270
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_260:
	movss xmm2, dword [ebp-0x1c]
	movss [eax+0xc], xmm2
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_290:
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
	movzx eax, word [esi+0x4]
	test ax, ax
	jz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_280
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [esi+0x4], 0x0
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_280:
	mov word [esi+0x2], 0xffff
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_250:
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ebx, ax
	test ax, ax
	jnz _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_150
	jmp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_130
_Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_270:
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
	jmp _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji_290
	nop


;XAnimSetCompleteGoalWeight(DObj_s*, unsigned int, float, float, float, unsigned int, unsigned int, int)
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji:
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
	jz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_10
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp+0xc], eax
	jz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_20
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_10
	xor edx, edx
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_40:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_30
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x1c]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov esi, eax
	test eax, eax
	jnz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_20
	mov edx, edi
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_30:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_40
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_10:
	xor ecx, ecx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z19XAnimAllocInfoIndexP6DObj_sji
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
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_80:
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, [ebp+0x1c]
	movss xmm2, dword [ebp+0x18]
	movss xmm1, dword [ebp+0x14]
	movss xmm0, dword [ebp+0x10]
	mov edx, esi
	mov eax, [ebp-0x1c]
	call _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj
	mov ebx, eax
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_60:
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xe]
	movzx esi, ax
	test ax, ax
	jz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_50
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_70:
	lea edx, [esi*8]
	mov eax, esi
	shl eax, 0x6
	sub eax, edx
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+g_xAnimInfo+0x28]
	jnz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_60
	jp _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_60
	mov dword [esp], 0x0
	xor ecx, ecx
	movss xmm2, dword [_float_1_00000000]
	movss xmm1, dword [ebp+0x14]
	movaps xmm0, xmm2
	mov edx, esi
	mov eax, [ebp-0x1c]
	call _Z22XAnimSetGoalWeightNodeP11XAnimTree_sjfffjj
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xe]
	movzx esi, ax
	test ax, ax
	jnz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_70
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_50:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_20:
	mov eax, [ebp+0x24]
	test eax, eax
	jz _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_80
	movss xmm0, dword [ebp+0x14]
	mov edx, esi
	mov eax, [ebp-0x1c]
	call _Z12XAnimRestartP11XAnimTree_sjf
	mov esi, eax
	jmp _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji_80
	nop


;XAnimClearTreeGoalWeightsStrict(XAnimTree_s*, unsigned int, float)
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf:
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
	jle _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_10
	mov dword [ebp-0x24], 0x0
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_60:
	mov edx, [ebp-0x20]
	movzx eax, word [edx+0x6]
	add eax, [ebp-0x24]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	test ax, ax
	jz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_20
	movzx esi, ax
	lea eax, [esi*8]
	mov edx, esi
	shl edx, 0x6
	sub edx, eax
	add edx, g_xAnimInfo
	movzx eax, word [edx+0x10]
	cmp [ebp-0x1c], eax
	jz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_30
	movzx eax, word [edx+0xc]
	movzx ecx, ax
	test ax, ax
	jz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_20
	xor edx, edx
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_50:
	lea eax, [ecx*8]
	mov ebx, ecx
	shl ebx, 0x6
	sub ebx, eax
	movzx edi, word [ebx+g_xAnimInfo+0x10]
	cmp edx, edi
	jz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_40
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	call _Z19XAnimGetInfoIndex_rPK11XAnimTree_sjj
	mov esi, eax
	test eax, eax
	jnz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_30
	mov edx, edi
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_40:
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx ecx, ax
	test ax, ax
	jnz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_50
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_20:
	add dword [ebp-0x24], 0x1
	mov eax, [ebp-0x24]
	cmp [ebp-0x28], eax
	jnz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_60
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_30:
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
	jnz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_70
	jp _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_70
	mov dword [eax+0x14], 0x0
	mov byte [eax+0x1c], 0x1
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_70:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_80
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_100:
	mov word [ebx+0x2], 0xffff
	lea eax, [esi*8]
	shl esi, 0x6
	sub esi, eax
	movzx eax, word [esi+g_xAnimInfo+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_20
	xor ecx, ecx
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_90:
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
	call _Z33XAnimClearTreeGoalWeightsInternalP11XAnimTree_sjfi
	movzx ecx, word [ebx+g_xAnimInfo+0x10]
	movzx eax, word [ebx+g_xAnimInfo+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_90
	add dword [ebp-0x24], 0x1
	mov eax, [ebp-0x24]
	cmp [ebp-0x28], eax
	jnz _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_60
	jmp _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_10
_Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_80:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov word [ebx+0x4], 0x0
	jmp _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf_100
	nop


;XAnimAddNotetrackTimesToScriptArray(XAnim_s const*, unsigned int, unsigned int)
_Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj:
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
	jz _Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_10
	cmp byte [edi+0x1c], 0x0
	jz _Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_10
	xor ebx, ebx
	jmp _Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_20
_Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_30:
	add ebx, 0x1
	add esi, 0x8
	movzx eax, byte [edi+0x1c]
	cmp ebx, eax
	jge _Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_10
_Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_20:
	movzx eax, word [esi]
	cmp eax, [ebp+0x10]
	jnz _Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_30
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z12Scr_AddFloatf
	call _Z12Scr_AddArrayv
	add ebx, 0x1
	add esi, 0x8
	movzx eax, byte [edi+0x1c]
	cmp ebx, eax
	jl _Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_20
_Z35XAnimAddNotetrackTimesToScriptArrayPK7XAnim_sjj_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XAnimFree(XAnimParts*)
_Z9XAnimFreeP10XAnimParts:
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
	jg _Z9XAnimFreeP10XAnimParts_10
	mov ecx, eax
	mov ebx, [ecx+0x50]
	cmp byte [ecx+0x1c], 0x0
	jnz _Z9XAnimFreeP10XAnimParts_20
_Z9XAnimFreeP10XAnimParts_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9XAnimFreeP10XAnimParts_10:
	xor ebx, ebx
_Z9XAnimFreeP10XAnimParts_30:
	movzx eax, word [edi+ebx*2]
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z9XAnimFreeP10XAnimParts_30
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x50]
	cmp byte [ecx+0x1c], 0x0
	jz _Z9XAnimFreeP10XAnimParts_40
_Z9XAnimFreeP10XAnimParts_20:
	xor esi, esi
_Z9XAnimFreeP10XAnimParts_50:
	movzx eax, word [ebx]
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	add esi, 0x1
	add ebx, 0x8
	movsx edx, si
	mov ecx, [ebp+0x8]
	movzx eax, byte [ecx+0x1c]
	cmp edx, eax
	jl _Z9XAnimFreeP10XAnimParts_50
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XAnimInit()
_Z9XAnimInitv:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	xor edx, edx
	mov ecx, g_xAnimInfo
	jmp _Z9XAnimInitv_10
_Z9XAnimInitv_40:
	mov [ecx+0x8], ax
	add edx, 0x1
	mov eax, edx
	and eax, 0x80000fff
	js _Z9XAnimInitv_20
_Z9XAnimInitv_50:
	mov [ecx+0xa], ax
	add ecx, 0x38
	cmp edx, 0x1000
	jz _Z9XAnimInitv_30
_Z9XAnimInitv_10:
	lea eax, [edx+0xfff]
	and eax, 0x80000fff
	jns _Z9XAnimInitv_40
	sub eax, 0x1
	or eax, 0xfffff000
	add eax, 0x1
	mov [ecx+0x8], ax
	add edx, 0x1
	mov eax, edx
	and eax, 0x80000fff
	jns _Z9XAnimInitv_50
_Z9XAnimInitv_20:
	sub eax, 0x1
	or eax, 0xfffff000
	add eax, 0x1
	mov [ecx+0xa], ax
	add ecx, 0x38
	cmp edx, 0x1000
	jnz _Z9XAnimInitv_10
_Z9XAnimInitv_30:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000


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
g_fltMin: resb 0x10
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
_cstring_duplicate_specif:		db 015h,"duplicate specification of animation sync in ",27h,"%s",27h,", %d nodes above ",27h,"%s",27h,0
_cstring_animation_s_in_s:		db 015h,"animation ",27h,"%s",27h," in ",27h,"%s",27h," cannot be sync nonlooping and looping",0
_cstring_animation_s_in_s1:		db 015h,"animation ",27h,"%s",27h," in ",27h,"%s",27h," cannot be sync looping and nonlooping",0
_cstring_cannot_find_xani:		db 015h,"Cannot find ",27h,"xanim/%s",27h,".",0ah,"This is a default xanim file that you should have.",0ah,0
_cstring_animation_cannot:		db 015h,"animation cannot be sync looping and sync nonlooping",0
_cstring_exceeded_maximum:		db 015h,"exceeded maximum number of anim info",0
_cstring_xanimblend:		db "XAnimBlend",0
_cstring_do_not_nest_addi:		db 015h,"Do not nest additives",0
_cstring_xanimcreate:		db "XAnimCreate",0
_cstring_cannot_find_xani1:		db 015h,"Cannot find xanim ",27h,"%s",27h,0
_cstring_void:		db "void",0
_cstring_warning_couldnt_:		db "WARNING: Couldn",27h,"t find xanim ",27h,"%s",27h,", using default xanim ",27h,"%s",27h," instead",0ah,0
_cstring_cannot_find_xani2:		db 015h,"Cannot find xanim ",27h,"%s",27h,".",0
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
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD

