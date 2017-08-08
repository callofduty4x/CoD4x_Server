;Imports of fx_load_obj:
	extern Com_Parse
	extern Q_strncpyz
	extern Com_ParseFloat
	extern Com_ParseInt
	extern useFastFile
	extern Com_MatchToken
	extern Com_UngetToken
	extern Com_ScriptError
	extern strcmp
	extern Com_Printf
	extern Hunk_AllocInternal
	extern DB_FindXAssetHeader
	extern Q_stricmp
	extern strcpy
	extern FX_Convert
	extern ReplaceStringInternal
	extern Material_RegisterHandle
	extern R_RegisterModel
	extern atof
	extern FxCurve_AllocAndCreateWithKeys
	extern Hunk_AllocAlignInternal
	extern memcpy
	extern Com_Error
	extern memset
	extern Com_sprintf
	extern FS_ReadFile
	extern FS_FreeFile
	extern Com_PrintError
	extern PhysPresetPrecache
	extern Com_BeginParseSession
	extern Com_SetSpaceDelimited
	extern Com_SetParseNegativeNumbers
	extern Com_EndParseSession

;Exports of fx_load_obj:
	global fx_load
	global s_elemFields
	global FX_ParseName
	global FX_ParseNonAtlasFlags
	global FX_ParseSpawnRange
	global FX_ParseFadeInRange
	global FX_ParseFadeOutRange
	global FX_ParseSpawnFrustumCullRadius
	global FX_ParseSpawnDefLooping
	global FX_ParseSpawnDefOneShot
	global FX_ParseSpawnDelayMsec
	global FX_ParseLifeSpanMsec
	global FX_ParseSpawnOrgX
	global FX_ParseSpawnOrgY
	global FX_ParseSpawnOrgZ
	global FX_ParseSpawnOffsetRadius
	global FX_ParseSpawnOffsetHeight
	global FX_ParseSpawnAnglePitch
	global FX_ParseSpawnAngleYaw
	global FX_ParseSpawnAngleRoll
	global FX_ParseAngleVelPitch
	global FX_ParseAngleVelYaw
	global FX_ParseAngleVelRoll
	global FX_ParseInitialRot
	global FX_ParseGravity
	global FX_ParseElasticity
	global FX_ParseAtlasBehavior
	global FX_ParseAtlasIndex
	global FX_ParseAtlasFps
	global FX_ParseAtlasLoopCount
	global FX_ParseAtlasColIndexBits
	global FX_ParseAtlasRowIndexBits
	global FX_ParseAtlasEntryCount
	global FX_ParseVelGraph0X
	global FX_ParseVelGraph0Y
	global FX_ParseVelGraph0Z
	global FX_ParseVelGraph1X
	global FX_ParseVelGraph1Y
	global FX_ParseVelGraph1Z
	global FX_ParseRotGraph
	global FX_ParseSizeGraph0
	global FX_ParseSizeGraph1
	global FX_ParseScaleGraph
	global FX_ParseColorGraph
	global FX_ParseAlphaGraph
	global FX_ParseLightingFrac
	global FX_ParseCollOffset
	global FX_ParseCollRadius
	global FX_ParseFxOnImpact
	global FX_ParseFxOnDeath
	global FX_ParseSortOrder
	global FX_ParseEmission
	global FX_ParseEmitDist
	global FX_ParseEmitDistVariance
	global FX_ParseTrailRepeatTime
	global FX_ParseTrailSplitDist
	global FX_ParseTrailScrollTime
	global FX_ParseTrailRepeatDist
	global FX_ParseTrailDef
	global FX_ParseBillboardSprite
	global FX_ParseOrientedSprite
	global FX_ParseCloud
	global FX_ParseTail
	global FX_ParseTrail
	global FX_ParseDecal
	global FX_ParseModel
	global FX_ParseLight
	global FX_ParseSpotLight
	global FX_ParseRunner
	global FX_ParseSound
	global FX_ParseFlagsField
	global FX_Register_FastFile
	global FX_Register_LoadObj
	global FX_RegisterAsset_SoundAliasName
	global FX_ParseAssetArray_FxElemVisuals
	global FX_RegisterAsset_Material
	global FX_RegisterAsset_Model
	global FX_RegisterAsset_EffectDef
	global FX_ParseCurve
	global FX_ParseGraphRange
	global FX_RegisterAsset_DecalMaterials
	global FX_LoadFailed
	global typePrefixes.130273
	global FX_AllocMem
	global FX_Register
	global FX_UnregisterAll
	global FX_ForEachEffectDef
	global FX_LoadEditorEffect
	global FX_RegisterPhysPreset
	global FX_RegisterDefaultEffect
	global FX_RegisterMarkMaterials
	global FX_LoadEditorEffectFromBuffer
	global s_allFlagDefs


SECTION .text


;FX_ParseName(char const**, FxEditorElemDef*)
FX_ParseName:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_Parse
	mov dword [esp+0x8], 0x30
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Q_strncpyz
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseNonAtlasFlags(char const**, FxEditorElemDef*)
FX_ParseNonAtlasFlags:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov dword [ebp-0xc], 0x0
	lea ecx, [edx+0x30]
	mov [ebp-0x14], ecx
	add edx, 0x34
	mov [ebp-0x10], edx
	lea edx, [ebp-0x14]
	call FX_ParseFlagsField
	movzx eax, al
	leave
	ret


;FX_ParseSpawnRange(char const**, FxEditorElemDef*)
FX_ParseSpawnRange:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x38]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x38]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseFadeInRange(char const**, FxEditorElemDef*)
FX_ParseFadeInRange:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x40]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x40]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseFadeOutRange(char const**, FxEditorElemDef*)
FX_ParseFadeOutRange:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x48]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x48]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnFrustumCullRadius(char const**, FxEditorElemDef*)
FX_ParseSpawnFrustumCullRadius:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseFloat
	mov eax, [ebp+0xc]
	fstp dword [eax+0x50]
	mov eax, 0x1
	leave
	ret


;FX_ParseSpawnDefLooping(char const**, FxEditorElemDef*)
FX_ParseSpawnDefLooping:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call Com_ParseInt
	mov [esi+0x54], eax
	mov [esp], ebx
	call Com_ParseInt
	mov [esi+0x58], eax
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;FX_ParseSpawnDefOneShot(char const**, FxEditorElemDef*)
FX_ParseSpawnDefOneShot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x5c]
	mov [esp], esi
	call Com_ParseInt
	mov [ebx+0x5c], eax
	mov [esp], esi
	call Com_ParseInt
	mov [edi+0x4], eax
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnDelayMsec(char const**, FxEditorElemDef*)
FX_ParseSpawnDelayMsec:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x64]
	mov [esp], esi
	call Com_ParseInt
	mov [ebx+0x64], eax
	mov [esp], esi
	call Com_ParseInt
	mov [edi+0x4], eax
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseLifeSpanMsec(char const**, FxEditorElemDef*)
FX_ParseLifeSpanMsec:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x6c]
	mov [esp], esi
	call Com_ParseInt
	mov [ebx+0x6c], eax
	mov [esp], esi
	call Com_ParseInt
	mov [edi+0x4], eax
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnOrgX(char const**, FxEditorElemDef*)
FX_ParseSpawnOrgX:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x74]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x74]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnOrgY(char const**, FxEditorElemDef*)
FX_ParseSpawnOrgY:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x7c]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x7c]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnOrgZ(char const**, FxEditorElemDef*)
FX_ParseSpawnOrgZ:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x84]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x84]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnOffsetRadius(char const**, FxEditorElemDef*)
FX_ParseSpawnOffsetRadius:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x8c]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x8c]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnOffsetHeight(char const**, FxEditorElemDef*)
FX_ParseSpawnOffsetHeight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x94]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x94]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnAnglePitch(char const**, FxEditorElemDef*)
FX_ParseSpawnAnglePitch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x9c]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x9c]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnAngleYaw(char const**, FxEditorElemDef*)
FX_ParseSpawnAngleYaw:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0xa4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0xa4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseSpawnAngleRoll(char const**, FxEditorElemDef*)
FX_ParseSpawnAngleRoll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0xac]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0xac]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseAngleVelPitch(char const**, FxEditorElemDef*)
FX_ParseAngleVelPitch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0xb4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0xb4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseAngleVelYaw(char const**, FxEditorElemDef*)
FX_ParseAngleVelYaw:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0xbc]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0xbc]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseAngleVelRoll(char const**, FxEditorElemDef*)
FX_ParseAngleVelRoll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0xc4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0xc4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseInitialRot(char const**, FxEditorElemDef*)
FX_ParseInitialRot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0xcc]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0xcc]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseGravity(char const**, FxEditorElemDef*)
FX_ParseGravity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0xd4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0xd4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseElasticity(char const**, FxEditorElemDef*)
FX_ParseElasticity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0xdc]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0xdc]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseAtlasBehavior(char const**, FxEditorElemDef*)
FX_ParseAtlasBehavior:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	add edx, 0xe4
	mov [ebp-0xc], edx
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	lea edx, [ebp-0x14]
	call FX_ParseFlagsField
	movzx eax, al
	leave
	ret


;FX_ParseAtlasIndex(char const**, FxEditorElemDef*)
FX_ParseAtlasIndex:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0xe8], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseAtlasFps(char const**, FxEditorElemDef*)
FX_ParseAtlasFps:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0xec], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseAtlasLoopCount(char const**, FxEditorElemDef*)
FX_ParseAtlasLoopCount:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0xf0], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseAtlasColIndexBits(char const**, FxEditorElemDef*)
FX_ParseAtlasColIndexBits:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0xf4], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseAtlasRowIndexBits(char const**, FxEditorElemDef*)
FX_ParseAtlasRowIndexBits:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0xf8], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseAtlasEntryCount(char const**, FxEditorElemDef*)
FX_ParseAtlasEntryCount:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0xfc], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseVelGraph0X(char const**, FxEditorElemDef*)
FX_ParseVelGraph0X:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x100]
	add edx, 0x118
	mov [esp], edx
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [_float__0_50000000]
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseVelGraph0Y(char const**, FxEditorElemDef*)
FX_ParseVelGraph0Y:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x104]
	add edx, 0x120
	mov [esp], edx
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [_float__0_50000000]
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseVelGraph0Z(char const**, FxEditorElemDef*)
FX_ParseVelGraph0Z:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x108]
	add edx, 0x128
	mov [esp], edx
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [_float__0_50000000]
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseVelGraph1X(char const**, FxEditorElemDef*)
FX_ParseVelGraph1X:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x10c]
	add edx, 0x130
	mov [esp], edx
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [_float__0_50000000]
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseVelGraph1Y(char const**, FxEditorElemDef*)
FX_ParseVelGraph1Y:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x110]
	add edx, 0x138
	mov [esp], edx
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [_float__0_50000000]
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseVelGraph1Z(char const**, FxEditorElemDef*)
FX_ParseVelGraph1Z:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x114]
	add edx, 0x140
	mov [esp], edx
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [_float__0_50000000]
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseRotGraph(char const**, FxEditorElemDef*)
FX_ParseRotGraph:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x148]
	add edx, 0x14c
	mov [esp], edx
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [_float__0_50000000]
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseSizeGraph0(char const**, FxEditorElemDef*)
FX_ParseSizeGraph0:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x154]
	add edx, 0x15c
	mov [esp], edx
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseSizeGraph1(char const**, FxEditorElemDef*)
FX_ParseSizeGraph1:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x158]
	add edx, 0x164
	mov [esp], edx
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseScaleGraph(char const**, FxEditorElemDef*)
FX_ParseScaleGraph:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx+0x16c]
	add edx, 0x170
	mov [esp], edx
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret


;FX_ParseColorGraph(char const**, FxEditorElemDef*)
FX_ParseColorGraph:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	lea ecx, [ebp-0xc]
	mov edx, [ebp+0xc]
	add edx, 0x178
	mov [esp], edx
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, 0x3
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret
	nop


;FX_ParseAlphaGraph(char const**, FxEditorElemDef*)
FX_ParseAlphaGraph:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	lea ecx, [ebp-0xc]
	mov edx, [ebp+0xc]
	add edx, 0x180
	mov [esp], edx
	movss xmm1, dword [_float_1_00000000]
	pxor xmm0, xmm0
	mov edx, 0x1
	call FX_ParseGraphRange
	movzx eax, al
	leave
	ret
	nop


;FX_ParseLightingFrac(char const**, FxEditorElemDef*)
FX_ParseLightingFrac:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseFloat
	mov eax, [ebp+0xc]
	fstp dword [eax+0x188]
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseCollOffset(char const**, FxEditorElemDef*)
FX_ParseCollOffset:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea edi, [esi+0x18c]
	mov [esp], ebx
	call Com_ParseFloat
	fstp dword [esi+0x18c]
	mov [esp], ebx
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov [esp], ebx
	call Com_ParseFloat
	fstp dword [edi+0x8]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_ParseCollRadius(char const**, FxEditorElemDef*)
FX_ParseCollRadius:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseFloat
	mov eax, [ebp+0xc]
	fstp dword [eax+0x198]
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseFxOnImpact(char const**, FxEditorElemDef*)
FX_ParseFxOnImpact:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_Parse
	mov ecx, eax
	cmp byte [eax], 0x0
	jz FX_ParseFxOnImpact_10
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, FX_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, FX_Register_LoadObj
	cmovz edx, eax
	mov [esp], ecx
	call edx
	mov [ebx+0x19c], eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FX_ParseFxOnImpact_10:
	mov dword [ebx+0x19c], 0x0
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;FX_ParseFxOnDeath(char const**, FxEditorElemDef*)
FX_ParseFxOnDeath:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_Parse
	mov ecx, eax
	cmp byte [eax], 0x0
	jz FX_ParseFxOnDeath_10
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, FX_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, FX_Register_LoadObj
	cmovz edx, eax
	mov [esp], ecx
	call edx
	mov [ebx+0x1a0], eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FX_ParseFxOnDeath_10:
	mov dword [ebx+0x1a0], 0x0
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;FX_ParseSortOrder(char const**, FxEditorElemDef*)
FX_ParseSortOrder:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0x1a4], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseEmission(char const**, FxEditorElemDef*)
FX_ParseEmission:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_Parse
	mov ecx, eax
	cmp byte [eax], 0x0
	jz FX_ParseEmission_10
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, FX_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, FX_Register_LoadObj
	cmovz edx, eax
	mov [esp], ecx
	call edx
	mov [ebx+0x1a8], eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FX_ParseEmission_10:
	mov dword [ebx+0x1a8], 0x0
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;FX_ParseEmitDist(char const**, FxEditorElemDef*)
FX_ParseEmitDist:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x1ac]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x1ac]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_ParseEmitDistVariance(char const**, FxEditorElemDef*)
FX_ParseEmitDistVariance:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x1b4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x1b4]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [edi+0x4]
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ParseTrailRepeatTime(char const**, FxEditorElemDef*)
FX_ParseTrailRepeatTime:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseFloat
	fstp st0
	mov eax, 0x1
	leave
	ret


;FX_ParseTrailSplitDist(char const**, FxEditorElemDef*)
FX_ParseTrailSplitDist:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0x244], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseTrailScrollTime(char const**, FxEditorElemDef*)
FX_ParseTrailScrollTime:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseFloat
	mov eax, [ebp+0xc]
	fstp dword [eax+0x24c]
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseTrailRepeatDist(char const**, FxEditorElemDef*)
FX_ParseTrailRepeatDist:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseInt
	mov edx, [ebp+0xc]
	mov [edx+0x248], eax
	mov eax, 0x1
	leave
	ret
	nop


;FX_ParseTrailDef(char const**, FxEditorElemDef*)
FX_ParseTrailDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call Com_MatchToken
	test eax, eax
	jz FX_ParseTrailDef_10
	mov dword [esi+0x750], 0x0
	jmp FX_ParseTrailDef_20
FX_ParseTrailDef_40:
	call Com_UngetToken
	mov eax, [esi+0x750]
	cmp eax, 0x40
	jz FX_ParseTrailDef_30
	lea ebx, [eax+eax*4]
	lea ebx, [esi+ebx*4+0x250]
	mov [esp], edi
	call Com_ParseFloat
	fstp dword [ebx]
	mov [esp], edi
	call Com_ParseFloat
	fstp dword [ebx+0x4]
	mov [esp], edi
	call Com_ParseFloat
	fstp dword [ebx+0x10]
	add dword [esi+0x750], 0x1
FX_ParseTrailDef_20:
	mov [esp], edi
	call Com_Parse
	cmp byte [eax], 0x7d
	jnz FX_ParseTrailDef_40
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call Com_MatchToken
	test eax, eax
	jz FX_ParseTrailDef_10
	mov dword [esi+0x854], 0x0
FX_ParseTrailDef_60:
	mov [esp], edi
	call Com_Parse
	cmp byte [eax], 0x7d
	jz FX_ParseTrailDef_50
	call Com_UngetToken
	mov [esp], edi
	call Com_ParseInt
	mov edx, [esi+0x854]
	mov [esi+edx*2+0x754], ax
	add edx, 0x1
	mov [esi+0x854], edx
	add edx, 0xffffff80
	jnz FX_ParseTrailDef_60
	mov dword [esp], _cstring_ran_out_of_trail
	call Com_ScriptError
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseTrailDef_30:
	mov dword [esp], _cstring_ran_out_of_trail1
	call Com_ScriptError
FX_ParseTrailDef_10:
	xor eax, eax
FX_ParseTrailDef_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseTrailDef_50:
	mov eax, 0x1
	jmp FX_ParseTrailDef_70


;FX_ParseBillboardSprite(char const**, FxEditorElemDef*)
FX_ParseBillboardSprite:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov dword [esp+0x4], FX_RegisterAsset_Material
	lea edx, [ecx+0x1c4]
	mov [esp], edx
	xor edx, edx
	call FX_ParseAssetArray_FxElemVisuals
	movzx eax, al
	leave
	ret
	nop


;FX_ParseOrientedSprite(char const**, FxEditorElemDef*)
FX_ParseOrientedSprite:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov dword [esp+0x4], FX_RegisterAsset_Material
	lea edx, [ecx+0x1c4]
	mov [esp], edx
	mov edx, 0x1
	call FX_ParseAssetArray_FxElemVisuals
	movzx eax, al
	leave
	ret


;FX_ParseCloud(char const**, FxEditorElemDef*)
FX_ParseCloud:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov dword [esp+0x4], FX_RegisterAsset_Material
	lea edx, [ecx+0x1c4]
	mov [esp], edx
	mov edx, 0x4
	call FX_ParseAssetArray_FxElemVisuals
	movzx eax, al
	leave
	ret


;FX_ParseTail(char const**, FxEditorElemDef*)
FX_ParseTail:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov dword [esp+0x4], FX_RegisterAsset_Material
	lea edx, [ecx+0x1c4]
	mov [esp], edx
	mov edx, 0x2
	call FX_ParseAssetArray_FxElemVisuals
	movzx eax, al
	leave
	ret


;FX_ParseTrail(char const**, FxEditorElemDef*)
FX_ParseTrail:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov dword [esp+0x4], FX_RegisterAsset_Material
	lea edx, [ecx+0x1c4]
	mov [esp], edx
	mov edx, 0x3
	call FX_ParseAssetArray_FxElemVisuals
	movzx eax, al
	leave
	ret


;FX_ParseDecal(char const**, FxEditorElemDef*)
FX_ParseDecal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov ebx, [ebp+0xc]
	lea edi, [ebx+0x1c4]
	cmp byte [ebx+0x1bc], 0xb
	jz FX_ParseDecal_10
	mov dword [esp], _cstring_more_than_one_ty
	call Com_ScriptError
FX_ParseDecal_20:
	xor eax, eax
	movzx eax, al
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseDecal_10:
	mov byte [ebx+0x1bc], 0x9
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_MatchToken
	test eax, eax
	jz FX_ParseDecal_20
	mov dword [ebx+0x1c0], 0x0
	lea esi, [ebp-0x11c]
	jmp FX_ParseDecal_30
FX_ParseDecal_50:
	cmp dword [ebx+0x1c0], 0x10
	jz FX_ParseDecal_40
	mov dword [esp+0x8], 0x104
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncpyz
	mov eax, [ebx+0x1c0]
	lea eax, [edi+eax*8]
	mov [esp+0x4], eax
	mov [esp], esi
	call FX_RegisterAsset_DecalMaterials
	test al, al
	jz FX_ParseDecal_20
	add dword [ebx+0x1c0], 0x1
FX_ParseDecal_30:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_Parse
	cmp byte [eax], 0x7d
	jnz FX_ParseDecal_50
	mov eax, 0x1
	movzx eax, al
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseDecal_40:
	mov dword [esp+0x4], 0x10
	mov dword [esp], _cstring_more_than_i_visu
	call Com_ScriptError
	xor eax, eax
	movzx eax, al
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_ParseModel(char const**, FxEditorElemDef*)
FX_ParseModel:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov dword [esp+0x4], FX_RegisterAsset_Model
	lea edx, [ecx+0x1c4]
	mov [esp], edx
	mov edx, 0x5
	call FX_ParseAssetArray_FxElemVisuals
	movzx eax, al
	leave
	ret


;FX_ParseLight(char const**, FxEditorElemDef*)
FX_ParseLight:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	cmp byte [eax+0x1bc], 0xb
	jz FX_ParseLight_10
	mov dword [esp], _cstring_more_than_one_ty
	call Com_ScriptError
	xor eax, eax
	movzx eax, al
	leave
	ret
FX_ParseLight_10:
	mov byte [eax+0x1bc], 0x6
	mov eax, 0x1
	movzx eax, al
	leave
	ret


;FX_ParseSpotLight(char const**, FxEditorElemDef*)
FX_ParseSpotLight:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	cmp byte [eax+0x1bc], 0xb
	jz FX_ParseSpotLight_10
	mov dword [esp], _cstring_more_than_one_ty
	call Com_ScriptError
	xor eax, eax
	movzx eax, al
	leave
	ret
FX_ParseSpotLight_10:
	mov byte [eax+0x1bc], 0x7
	mov eax, 0x1
	movzx eax, al
	leave
	ret


;FX_ParseRunner(char const**, FxEditorElemDef*)
FX_ParseRunner:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov dword [esp+0x4], FX_RegisterAsset_EffectDef
	lea edx, [ecx+0x1c4]
	mov [esp], edx
	mov edx, 0xa
	call FX_ParseAssetArray_FxElemVisuals
	movzx eax, al
	leave
	ret


;FX_ParseSound(char const**, FxEditorElemDef*)
FX_ParseSound:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov dword [esp+0x4], FX_RegisterAsset_SoundAliasName
	lea edx, [ecx+0x1c4]
	mov [esp], edx
	mov edx, 0x8
	call FX_ParseAssetArray_FxElemVisuals
	movzx eax, al
	leave
	ret


;FX_ParseFlagsField(char const**, FxFlagOutputSet*)
FX_ParseFlagsField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
FX_ParseFlagsField_90:
	mov [esp], eax
	call Com_Parse
	mov edi, eax
	cmp byte [eax], 0x3b
	jz FX_ParseFlagsField_10
	mov edx, [s_allFlagDefs]
	test edx, edx
	jz FX_ParseFlagsField_20
	mov ebx, s_allFlagDefs
FX_ParseFlagsField_50:
	mov eax, [ebx+0x4]
	mov ecx, [ebp-0x20]
	mov esi, [ecx+eax*4]
	test esi, esi
	jz FX_ParseFlagsField_30
	mov [esp+0x4], edx
	mov [esp], edi
	call strcmp
	test eax, eax
	jz FX_ParseFlagsField_40
FX_ParseFlagsField_30:
	add ebx, 0x10
	mov edx, [ebx]
	test edx, edx
	jnz FX_ParseFlagsField_50
FX_ParseFlagsField_20:
	mov dword [esp+0x4], _cstring_valid_flags
	mov dword [esp], 0x15
	call Com_Printf
	mov edx, [s_allFlagDefs]
	test edx, edx
	jz FX_ParseFlagsField_60
	mov ebx, s_allFlagDefs+0x4
FX_ParseFlagsField_80:
	mov eax, [ebx]
	mov ecx, [ebp-0x20]
	mov eax, [ecx+eax*4]
	test eax, eax
	jz FX_ParseFlagsField_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x15
	call Com_Printf
FX_ParseFlagsField_70:
	mov edx, [ebx+0xc]
	add ebx, 0x10
	test edx, edx
	jnz FX_ParseFlagsField_80
FX_ParseFlagsField_60:
	mov [esp+0x4], edi
	mov dword [esp], _cstring_unknown_flag_s
	call Com_ScriptError
	xor eax, eax
FX_ParseFlagsField_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseFlagsField_40:
	mov eax, [ebx+0x8]
	not eax
	and eax, [esi]
	mov [esi], eax
	or eax, [ebx+0xc]
	mov [esi], eax
	mov eax, [ebp-0x1c]
	jmp FX_ParseFlagsField_90
FX_ParseFlagsField_10:
	call Com_UngetToken
	mov eax, 0x1
	jmp FX_ParseFlagsField_100


;Hunk_AllocPhysPresetPrecache(int)
Hunk_AllocPhysPresetPrecache:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;FX_Register_FastFile(char const*)
FX_Register_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x19
	call DB_FindXAssetHeader
	leave
	ret
	nop


;FX_Register_LoadObj(char const*)
FX_Register_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10b6c
	mov edi, [ebp+0x8]
	movzx ecx, byte [edi]
	test cl, cl
	jnz FX_Register_LoadObj_10
	xor ebx, ebx
FX_Register_LoadObj_80:
	mov eax, [ebx*4+fx_load+0x4]
	test eax, eax
	jz FX_Register_LoadObj_20
FX_Register_LoadObj_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz FX_Register_LoadObj_30
	add ebx, 0x1
	and ebx, 0x1ff
	mov eax, [ebx*4+fx_load+0x4]
	test eax, eax
	jnz FX_Register_LoadObj_40
FX_Register_LoadObj_20:
	mov [esp+0x4], edi
	lea esi, [ebp-0x10b5c]
	mov [esp], esi
	call strcpy
	mov [esp+0x4], esi
	mov [esp], edi
	call FX_LoadEditorEffect
	test al, al
	jnz FX_Register_LoadObj_50
FX_Register_LoadObj_100:
	mov eax, edi
	call FX_LoadFailed
	mov edx, eax
FX_Register_LoadObj_90:
	mov eax, fx_load
	mov [eax+ebx*4+0x4], edx
FX_Register_LoadObj_30:
	mov eax, [ebx*4+fx_load+0x4]
	add esp, 0x10b6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_Register_LoadObj_10:
	mov ebx, 0x77
	xor esi, esi
FX_Register_LoadObj_70:
	cmp cl, 0x2f
	jz FX_Register_LoadObj_60
	lea eax, [ecx-0x41]
	lea edx, [ecx+0x20]
	cmp al, 0x19
	cmovbe ecx, edx
FX_Register_LoadObj_60:
	movsx eax, cl
	imul eax, ebx
	add esi, eax
	add ebx, 0x1
	movzx ecx, byte [edi+ebx-0x77]
	test cl, cl
	jnz FX_Register_LoadObj_70
	mov ebx, esi
	and ebx, 0x1ff
	jmp FX_Register_LoadObj_80
FX_Register_LoadObj_50:
	mov dword [esp+0x4], FX_AllocMem
	mov [esp], esi
	call FX_Convert
	mov edx, eax
	test eax, eax
	jnz FX_Register_LoadObj_90
	jmp FX_Register_LoadObj_100
	nop


;FX_RegisterAsset_SoundAliasName(char const*, FxElemVisuals*)
FX_RegisterAsset_SoundAliasName:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call ReplaceStringInternal
	mov eax, 0x1
	leave
	ret
	nop


;unsigned char FX_ParseAssetArray<FxElemVisuals, 32>(char const**, unsigned char, FxEditorElemDef*, FxElemVisuals (&) [32], unsigned char (*)(char const*, FxElemVisuals*))
FX_ParseAssetArray_FxElemVisuals:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edi, eax
	mov ebx, ecx
	movzx eax, dl
	cmp byte [ecx+0x1bc], 0xb
	jz FX_ParseAssetArray_FxElemVisuals_10
	mov dword [esp], _cstring_more_than_one_ty
	call Com_ScriptError
FX_ParseAssetArray_FxElemVisuals_20:
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseAssetArray_FxElemVisuals_10:
	mov [ecx+0x1bc], al
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call Com_MatchToken
	test eax, eax
	jz FX_ParseAssetArray_FxElemVisuals_20
	mov dword [ebx+0x1c0], 0x0
	lea esi, [ebp-0x11c]
	jmp FX_ParseAssetArray_FxElemVisuals_30
FX_ParseAssetArray_FxElemVisuals_50:
	cmp dword [ebx+0x1c0], 0x20
	jz FX_ParseAssetArray_FxElemVisuals_40
	mov dword [esp+0x8], 0x104
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncpyz
	mov eax, [ebx+0x1c0]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0xc]
	test al, al
	jz FX_ParseAssetArray_FxElemVisuals_20
	add dword [ebx+0x1c0], 0x1
FX_ParseAssetArray_FxElemVisuals_30:
	mov [esp], edi
	call Com_Parse
	cmp byte [eax], 0x7d
	jnz FX_ParseAssetArray_FxElemVisuals_50
	mov eax, 0x1
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseAssetArray_FxElemVisuals_40:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_more_than_i_visu
	call Com_ScriptError
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_RegisterAsset_Material(char const*, FxElemVisuals*)
FX_RegisterAsset_Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, _cstring_default
	mov ebx, 0x9
	cld
	mov esi, [ebp+0x8]
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz FX_RegisterAsset_Material_10
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_RegisterAsset_Material_10:
	test eax, eax
	mov eax, _cstring_default3d
	cmovnz eax, [ebp+0x8]
	mov dword [esp+0x4], 0x6
	mov [esp], eax
	call Material_RegisterHandle
	mov edx, [ebp+0xc]
	mov [edx], eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_RegisterAsset_Model(char const*, FxElemVisuals*)
FX_RegisterAsset_Model:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_RegisterModel
	mov edx, [ebp+0xc]
	mov [edx], eax
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret


;FX_RegisterAsset_EffectDef(char const*, FxElemVisuals*)
FX_RegisterAsset_EffectDef:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, FX_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, FX_Register_LoadObj
	cmovz edx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	mov edx, [ebp+0xc]
	mov [edx], eax
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;FX_ParseCurve(char const**, int, float, float, FxCurve const**)
FX_ParseCurve:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x84c
	mov [ebp-0x824], eax
	mov [ebp-0x828], edx
	movss [ebp-0x82c], xmm0
	movss [ebp-0x830], xmm1
	mov [ebp-0x834], ecx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov [esp], eax
	call Com_MatchToken
	test eax, eax
	jnz FX_ParseCurve_10
FX_ParseCurve_130:
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseCurve_10:
	mov edi, [ebp-0x828]
	add edi, 0x1
	xor ebx, ebx
	lea esi, [ebp-0x818]
	jmp FX_ParseCurve_20
FX_ParseCurve_50:
	cmp ebx, 0x200
	jz FX_ParseCurve_30
	mov [esp], eax
	call atof
	fstp qword [ebp-0x820]
	cvtsd2ss xmm2, [ebp-0x820]
	movss [esi], xmm2
	mov eax, ebx
	cdq
	idiv edi
	test edx, edx
	jz FX_ParseCurve_40
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x830]
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm0, xmm1
	movss xmm3, dword [ebp-0x830]
	andnps xmm1, xmm3
	orps xmm1, xmm0
	movss xmm0, dword [ebp-0x82c]
	subss xmm0, xmm2
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	movss xmm3, dword [ebp-0x82c]
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [esi], xmm0
FX_ParseCurve_40:
	add ebx, 0x1
	add esi, 0x4
FX_ParseCurve_20:
	mov eax, [ebp-0x824]
	mov [esp], eax
	call Com_Parse
	cmp byte [eax], 0x7d
	jnz FX_ParseCurve_50
	mov eax, ebx
	cdq
	idiv edi
	mov ebx, eax
	test edx, edx
	jnz FX_ParseCurve_60
	cmp eax, 0x1
	jle FX_ParseCurve_70
	movss xmm1, dword [ebp-0x818]
	ucomiss xmm1, [_float_0_00000000]
	jnz FX_ParseCurve_80
	jp FX_ParseCurve_80
	lea eax, [eax*4-0x4]
	imul eax, edi
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp+eax-0x818]
	jp FX_ParseCurve_80
	jz FX_ParseCurve_90
FX_ParseCurve_80:
	mov dword [esp], _cstring_curves_must_alwa
	call Com_ScriptError
	xor eax, eax
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseCurve_60:
	mov dword [esp], _cstring_curve_has_a_part
	call Com_ScriptError
	xor eax, eax
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseCurve_90:
	ucomiss xmm1, [ebp+edi*4-0x818]
	jae FX_ParseCurve_100
	mov edx, 0x1
FX_ParseCurve_120:
	add edx, 0x1
	cmp ebx, edx
	jz FX_ParseCurve_110
	mov ecx, edx
	imul ecx, edi
	lea eax, [edx-0x1]
	imul eax, edi
	movss xmm0, dword [ebp+eax*4-0x818]
	ucomiss xmm0, [ebp+ecx*4-0x818]
	jb FX_ParseCurve_120
	mov edi, ecx
FX_ParseCurve_140:
	cvtss2sd xmm0, [ebp+eax*4-0x818]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebp+edi*4-0x818]
	movsd [esp+0x8], xmm0
	mov [esp+0x4], edx
	mov dword [esp], _cstring_curves_times_mus
	call Com_ScriptError
	xor eax, eax
	jmp FX_ParseCurve_130
FX_ParseCurve_70:
	mov dword [esp], _cstring_curves_must_alwa1
	call Com_ScriptError
	xor eax, eax
	jmp FX_ParseCurve_130
FX_ParseCurve_100:
	mov edx, 0x1
	xor eax, eax
	jmp FX_ParseCurve_140
FX_ParseCurve_110:
	mov [esp+0x8], edx
	mov edx, [ebp-0x828]
	mov [esp+0x4], edx
	lea eax, [ebp-0x818]
	mov [esp], eax
	call FxCurve_AllocAndCreateWithKeys
	mov edx, [ebp-0x834]
	mov [edx], eax
	mov eax, 0x1
	jmp FX_ParseCurve_130
FX_ParseCurve_30:
	mov eax, ebx
	xor edx, edx
	div edi
	mov [esp+0x8], eax
	mov eax, [ebp-0x828]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_idimensional_val
	call Com_ScriptError
	xor eax, eax
	jmp FX_ParseCurve_130
	nop


;FX_ParseGraphRange(char const**, int, float, float, float*, FxCurve const**)
FX_ParseGraphRange:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov edi, edx
	movss [ebp-0x1c], xmm0
	movss [ebp-0x20], xmm1
	mov ebx, ecx
	mov [esp], eax
	call Com_ParseFloat
	fstp dword [ebx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call Com_MatchToken
	test eax, eax
	jnz FX_ParseGraphRange_10
FX_ParseGraphRange_20:
	xor eax, eax
FX_ParseGraphRange_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ParseGraphRange_10:
	mov ecx, [ebp+0x8]
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	mov edx, edi
	mov eax, esi
	call FX_ParseCurve
	test al, al
	jz FX_ParseGraphRange_20
	mov ecx, [ebp+0x8]
	add ecx, 0x4
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	mov edx, edi
	mov eax, esi
	call FX_ParseCurve
	test al, al
	jz FX_ParseGraphRange_20
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call Com_MatchToken
	test eax, eax
	jz FX_ParseGraphRange_20
	mov eax, 0x1
	jmp FX_ParseGraphRange_30
	nop


;FX_RegisterAsset_DecalMaterials(char const*, FxElemMarkVisuals*)
FX_RegisterAsset_DecalMaterials:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_RegisterMarkMaterials
	movzx eax, al
	leave
	ret
	nop


;FX_LoadFailed(char const*)
FX_LoadFailed:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov ecx, [fx_load+0x804]
	test ecx, ecx
	jz FX_LoadFailed_10
	mov eax, [fx_load+0x804]
FX_LoadFailed_60:
	mov edi, [eax]
	mov esi, 0xffffffff
	xor edx, edx
	cld
	mov ecx, esi
	mov eax, edx
	repne scasb
	not ecx
	mov eax, [fx_load+0x804]
	mov ebx, [eax+0x8]
	sub ebx, ecx
	mov dword [esp+0x4], 0x4
	mov ecx, esi
	mov edi, [ebp-0x1c]
	mov eax, edx
	repne scasb
	not ecx
	add ecx, ebx
	mov [esp], ecx
	call Hunk_AllocAlignInternal
	mov esi, eax
	mov [esp+0x8], ebx
	mov eax, [fx_load+0x804]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	lea ebx, [esi+ebx]
	mov [esi], ebx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	mov ebx, esi
	sub ebx, [fx_load+0x804]
	mov edx, ebx
	add edx, [esi+0x1c]
	mov [esi+0x1c], edx
	mov eax, [esi+0x14]
	add eax, [esi+0x10]
	test eax, eax
	jle FX_LoadFailed_20
	xor edi, edi
	xor ecx, ecx
	jmp FX_LoadFailed_30
FX_LoadFailed_40:
	mov edx, [esi+0x1c]
FX_LoadFailed_30:
	add [ecx+edx+0xb4], ebx
	mov eax, ecx
	add eax, [esi+0x1c]
	add [eax+0xb8], ebx
	add edi, 0x1
	add ecx, 0xfc
	mov eax, [esi+0x14]
	add eax, [esi+0x10]
	cmp eax, edi
	jg FX_LoadFailed_40
FX_LoadFailed_20:
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_LoadFailed_10:
	mov dword [esp+0x4], _cstring_miscmissing_fx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz FX_LoadFailed_50
FX_LoadFailed_70:
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, FX_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, FX_Register_LoadObj
	cmovz edx, eax
	mov dword [esp], _cstring_miscmissing_fx
	call edx
	mov [fx_load+0x804], eax
	jmp FX_LoadFailed_60
FX_LoadFailed_50:
	mov dword [esp+0x4], _cstring_couldnt_load_def
	mov dword [esp], 0x1
	call Com_Error
	jmp FX_LoadFailed_70


;FX_AllocMem(int)
FX_AllocMem:
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


;FX_Register(char const*)
FX_Register:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, FX_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, FX_Register_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;FX_UnregisterAll()
FX_UnregisterAll:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x808
	mov dword [esp+0x4], 0x0
	mov dword [esp], fx_load
	call memset
	leave
	ret


;FX_ForEachEffectDef(void (*)(FxEffectDef const*, void*), void*)
FX_ForEachEffectDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov ebx, fx_load
	mov esi, fx_load+0x800
FX_ForEachEffectDef_20:
	mov eax, [ebx+0x4]
	test eax, eax
	jz FX_ForEachEffectDef_10
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
FX_ForEachEffectDef_10:
	add ebx, 0x4
	cmp esi, ebx
	jnz FX_ForEachEffectDef_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_LoadEditorEffect(char const*, FxEditorEffectDef*)
FX_LoadEditorEffect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_fxsefx
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call Com_sprintf
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	test eax, eax
	js FX_LoadEditorEffect_10
	mov [esp+0x4], esi
	mov [esp], edi
	call strcpy
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FX_LoadEditorEffectFromBuffer
	mov ebx, eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	movzx eax, bl
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_LoadEditorEffect_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_not_found
	mov dword [esp], 0x15
	call Com_PrintError
	xor eax, eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_RegisterPhysPreset(char const*)
FX_RegisterPhysPreset:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], Hunk_AllocPhysPresetPrecache
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PhysPresetPrecache
	leave
	ret
	nop
	add [eax], al


;FX_RegisterDefaultEffect()
FX_RegisterDefaultEffect:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, FX_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, FX_Register_LoadObj
	cmovz edx, eax
	mov dword [esp], _cstring_miscmissing_fx
	call edx
	mov [fx_load+0x804], eax
	leave
	ret


;FX_RegisterMarkMaterials(char const*, Material**)
FX_RegisterMarkMaterials:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov ecx, 0x9
	cld
	mov esi, [ebp+0x8]
	mov edi, _cstring_default
	repe cmpsb
	mov eax, 0x0
	jz FX_RegisterMarkMaterials_10
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_RegisterMarkMaterials_10:
	test eax, eax
	mov eax, _cstring_default3d
	cmovnz eax, [ebp+0x8]
	mov [ebp+0x8], eax
	mov byte [ebp-0x119], 0x1
	xor ebx, ebx
FX_RegisterMarkMaterials_40:
	mov [esp+0x10], eax
	mov eax, [ebx+typePrefixes.130273]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	lea edx, [ebp-0x118]
	mov [esp], edx
	call Com_sprintf
	mov ecx, 0x9
	cld
	lea esi, [ebp-0x118]
	mov edi, _cstring_default
	repe cmpsb
	mov edx, 0x0
	jz FX_RegisterMarkMaterials_20
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
FX_RegisterMarkMaterials_20:
	mov eax, _cstring_default3d
	test edx, edx
	lea edx, [ebp-0x118]
	cmovnz eax, edx
	mov dword [esp+0x4], 0x6
	mov [esp], eax
	call Material_RegisterHandle
	mov edx, [ebp+0xc]
	mov [ebx+edx], eax
	test eax, eax
	mov eax, 0x0
	movzx edx, byte [ebp-0x119]
	cmovz edx, eax
	mov [ebp-0x119], dl
	add ebx, 0x4
	cmp ebx, 0x8
	jnz FX_RegisterMarkMaterials_30
	movzx eax, dl
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_RegisterMarkMaterials_30:
	mov eax, [ebp+0x8]
	jmp FX_RegisterMarkMaterials_40
	nop


;FX_LoadEditorEffectFromBuffer(char const*, char const*, FxEditorEffectDef*)
FX_LoadEditorEffectFromBuffer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Com_BeginParseSession
	mov dword [esp], 0x0
	call Com_SetSpaceDelimited
	mov dword [esp], 0x1
	call Com_SetParseNegativeNumbers
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov dword [esp+0x4], _cstring_iwfx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz FX_LoadEditorEffectFromBuffer_10
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_ParseInt
	mov [ebp-0x30], eax
	cmp eax, 0x2
	jg FX_LoadEditorEffectFromBuffer_20
	mov eax, [ebp+0x10]
	mov dword [eax+0x40], 0x0
FX_LoadEditorEffectFromBuffer_180:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov edx, [ebp-0x1c]
	test edx, edx
	jz FX_LoadEditorEffectFromBuffer_30
	cmp byte [eax], 0x7b
	jnz FX_LoadEditorEffectFromBuffer_40
	mov eax, [ebp+0x10]
	mov edx, [eax+0x40]
	cmp edx, 0x20
	jz FX_LoadEditorEffectFromBuffer_50
	mov eax, edx
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	mov edx, [ebp+0x10]
	lea eax, [edx+eax*8+0x44]
	mov [ebp-0x2c], eax
	mov dword [esp+0x8], 0x858
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	cmp dword [ebp-0x30], 0x1
	jle FX_LoadEditorEffectFromBuffer_60
FX_LoadEditorEffectFromBuffer_160:
	mov edx, [ebp-0x2c]
	mov byte [edx+0x1bc], 0xb
	mov dword [edx+0x1a4], 0x5
FX_LoadEditorEffectFromBuffer_130:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov edi, eax
	cmp byte [eax], 0x7d
	jz FX_LoadEditorEffectFromBuffer_70
	xor esi, esi
	mov ebx, s_elemFields
	jmp FX_LoadEditorEffectFromBuffer_80
FX_LoadEditorEffectFromBuffer_100:
	add esi, 0x1
	add ebx, 0x8
	cmp esi, 0x45
	jz FX_LoadEditorEffectFromBuffer_90
FX_LoadEditorEffectFromBuffer_80:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jnz FX_LoadEditorEffectFromBuffer_100
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call dword [esi*8+s_elemFields+0x4]
	test al, al
	jnz FX_LoadEditorEffectFromBuffer_110
	xor eax, eax
FX_LoadEditorEffectFromBuffer_140:
	movzx ebx, al
FX_LoadEditorEffectFromBuffer_120:
	call Com_EndParseSession
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_LoadEditorEffectFromBuffer_10:
	mov dword [esp], _cstring_effect_needs_to_
	call Com_ScriptError
	xor ebx, ebx
	call Com_EndParseSession
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_LoadEditorEffectFromBuffer_20:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], eax
	mov dword [esp], _cstring_version_i_is_too
	call Com_ScriptError
	xor eax, eax
	movzx ebx, al
	jmp FX_LoadEditorEffectFromBuffer_120
FX_LoadEditorEffectFromBuffer_110:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_2
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_MatchToken
	test eax, eax
	jnz FX_LoadEditorEffectFromBuffer_130
	xor eax, eax
	jmp FX_LoadEditorEffectFromBuffer_140
FX_LoadEditorEffectFromBuffer_90:
	mov dword [esp+0x4], _cstring_valid_effects_el
	mov dword [esp], 0x15
	call Com_Printf
	mov ebx, s_elemFields
	mov esi, typePrefixes.130273
FX_LoadEditorEffectFromBuffer_150:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x15
	call Com_Printf
	add ebx, 0x8
	cmp esi, ebx
	jnz FX_LoadEditorEffectFromBuffer_150
	mov [esp+0x4], edi
	mov dword [esp], _cstring_unkown_field_s
	call Com_ScriptError
	xor eax, eax
	jmp FX_LoadEditorEffectFromBuffer_140
FX_LoadEditorEffectFromBuffer_60:
	mov eax, [ebp-0x2c]
	mov dword [eax+0x30], 0x400
	jmp FX_LoadEditorEffectFromBuffer_160
FX_LoadEditorEffectFromBuffer_70:
	mov eax, [ebp-0x2c]
	cmp byte [eax+0x1bc], 0xb
	jz FX_LoadEditorEffectFromBuffer_170
	mov edx, [ebp+0x10]
	add dword [edx+0x40], 0x1
	jmp FX_LoadEditorEffectFromBuffer_180
FX_LoadEditorEffectFromBuffer_30:
	mov eax, 0x1
	movzx ebx, al
	jmp FX_LoadEditorEffectFromBuffer_120
FX_LoadEditorEffectFromBuffer_40:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_expected__to_sta
	call Com_ScriptError
	xor eax, eax
	movzx ebx, al
	jmp FX_LoadEditorEffectFromBuffer_120
FX_LoadEditorEffectFromBuffer_50:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_cannot_have_more
	call Com_ScriptError
	xor eax, eax
	movzx ebx, al
	jmp FX_LoadEditorEffectFromBuffer_120
FX_LoadEditorEffectFromBuffer_170:
	mov dword [esp], _cstring_no_visual_type_s
	call Com_ScriptError
	xor eax, eax
	jmp FX_LoadEditorEffectFromBuffer_140
	nop


;Initialized global or static variables of fx_load_obj:
SECTION .data


;Initialized constant data of fx_load_obj:
SECTION .rdata
s_elemFields: dd _cstring_name, FX_ParseName, _cstring_editorflags, FX_ParseNonAtlasFlags, _cstring_flags, FX_ParseNonAtlasFlags, _cstring_spawnrange, FX_ParseSpawnRange, _cstring_fadeinrange, FX_ParseFadeInRange, _cstring_fadeoutrange, FX_ParseFadeOutRange, _cstring_spawnfrustumcull, FX_ParseSpawnFrustumCullRadius, _cstring_spawnlooping, FX_ParseSpawnDefLooping, _cstring_spawnoneshot, FX_ParseSpawnDefOneShot, _cstring_spawndelaymsec, FX_ParseSpawnDelayMsec, _cstring_lifespanmsec, FX_ParseLifeSpanMsec, _cstring_spawnorgx, FX_ParseSpawnOrgX, _cstring_spawnorgy, FX_ParseSpawnOrgY, _cstring_spawnorgz, FX_ParseSpawnOrgZ, _cstring_spawnoffsetradiu, FX_ParseSpawnOffsetRadius, _cstring_spawnoffsetheigh, FX_ParseSpawnOffsetHeight, _cstring_spawnanglepitch, FX_ParseSpawnAnglePitch, _cstring_spawnangleyaw, FX_ParseSpawnAngleYaw, _cstring_spawnangleroll, FX_ParseSpawnAngleRoll, _cstring_anglevelpitch, FX_ParseAngleVelPitch, _cstring_anglevelyaw, FX_ParseAngleVelYaw, _cstring_anglevelroll, FX_ParseAngleVelRoll, _cstring_initialrot, FX_ParseInitialRot, _cstring_gravity, FX_ParseGravity, _cstring_elasticity, FX_ParseElasticity, _cstring_atlasbehavior, FX_ParseAtlasBehavior, _cstring_atlasindex, FX_ParseAtlasIndex, _cstring_atlasfps, FX_ParseAtlasFps, _cstring_atlasloopcount, FX_ParseAtlasLoopCount, _cstring_atlascolindexbit, FX_ParseAtlasColIndexBits, _cstring_atlasrowindexbit, FX_ParseAtlasRowIndexBits, _cstring_atlasentrycount, FX_ParseAtlasEntryCount, _cstring_velgraph0x, FX_ParseVelGraph0X, _cstring_velgraph0y, FX_ParseVelGraph0Y, _cstring_velgraph0z, FX_ParseVelGraph0Z, _cstring_velgraph1x, FX_ParseVelGraph1X, _cstring_velgraph1y, FX_ParseVelGraph1Y, _cstring_velgraph1z, FX_ParseVelGraph1Z, _cstring_rotgraph, FX_ParseRotGraph, _cstring_sizegraph0, FX_ParseSizeGraph0, _cstring_sizegraph1, FX_ParseSizeGraph1, _cstring_scalegraph, FX_ParseScaleGraph, _cstring_colorgraph, FX_ParseColorGraph, _cstring_alphagraph, FX_ParseAlphaGraph, _cstring_lightingfrac, FX_ParseLightingFrac, _cstring_colloffset, FX_ParseCollOffset, _cstring_collradius, FX_ParseCollRadius, _cstring_fxonimpact, FX_ParseFxOnImpact, _cstring_fxondeath, FX_ParseFxOnDeath, _cstring_sortorder, FX_ParseSortOrder, _cstring_emission, FX_ParseEmission, _cstring_emitdist, FX_ParseEmitDist, _cstring_emitdistvariance, FX_ParseEmitDistVariance, _cstring_trailrepeattime, FX_ParseTrailRepeatTime, _cstring_trailsplitdist, FX_ParseTrailSplitDist, _cstring_trailscrolltime, FX_ParseTrailScrollTime, _cstring_trailrepeatdist, FX_ParseTrailRepeatDist, _cstring_traildef, FX_ParseTrailDef, _cstring_billboardsprite, FX_ParseBillboardSprite, _cstring_orientedsprite, FX_ParseOrientedSprite, _cstring_cloud, FX_ParseCloud, _cstring_tail, FX_ParseTail, _cstring_trail, FX_ParseTrail, _cstring_decal, FX_ParseDecal, _cstring_model, FX_ParseModel, _cstring_light, FX_ParseLight, _cstring_spotlight, FX_ParseSpotLight, _cstring_runner, FX_ParseRunner, _cstring_sound, FX_ParseSound
typePrefixes.130273: dd _cstring_mc, _cstring_wc, 0x0, 0x0, 0x0, 0x0
s_allFlagDefs: dd _cstring_looping, 0x0, 0x1, 0x1, _cstring_userandcolor, 0x0, 0x2, 0x2, _cstring_userandalpha, 0x0, 0x4, 0x4, _cstring_userandsize0, 0x0, 0x8, 0x8, _cstring_userandsize1, 0x0, 0x10, 0x10, _cstring_userandscale, 0x0, 0x20, 0x20, _cstring_userandrotdelta, 0x0, 0x40, 0x40, _cstring_modcolorbyalpha, 0x0, 0x80, 0x80, _cstring_userandvel0, 0x0, 0x100, 0x100, _cstring_userandvel1, 0x0, 0x200, 0x200, _cstring_usebackcompatvel, 0x0, 0x400, 0x400, _cstring_absvel0, 0x0, 0x800, 0x800, _cstring_absvel1, 0x0, 0x1000, 0x1000, _cstring_playontouch, 0x0, 0x2000, 0x2000, _cstring_playondeath, 0x0, 0x4000, 0x4000, _cstring_playonrun, 0x0, 0x8000, 0x8000, _cstring_boundingsphere, 0x0, 0x10000, 0x10000, _cstring_useitemclip, 0x0, 0x20000, 0x20000, _cstring_disabled, 0x0, 0x80000000, 0x80000000, _cstring_spawnrelative, 0x1, 0x2, 0x2, _cstring_spawnfrustumcull1, 0x1, 0x4, 0x4, _cstring_runnerusesrandro, 0x1, 0x8, 0x8, _cstring_spawnoffsetnone, 0x1, 0x30, 0x0, _cstring_spawnoffsetspher, 0x1, 0x30, 0x10, _cstring_spawnoffsetcylin, 0x1, 0x30, 0x20, _cstring_runreltoworld, 0x1, 0xc0, 0x0, _cstring_runreltospawn, 0x1, 0xc0, 0x40, _cstring_runreltoeffect, 0x1, 0xc0, 0x80, _cstring_runreltooffset, 0x1, 0xc0, 0xc0, _cstring_usecollision, 0x1, 0x100, 0x100, _cstring_dieontouch, 0x1, 0x200, 0x200, _cstring_drawpastfog, 0x1, 0x400, 0x400, _cstring_drawwithviewmode, 0x1, 0x800, 0x800, _cstring_blockssight, 0x1, 0x1000, 0x1000, _cstring_modelusesphysics, 0x1, 0x8000000, 0x8000000, _cstring_nonuniformscale, 0x1, 0x10000000, 0x10000000, _cstring_startfixed, 0x2, 0x3, 0x0, _cstring_startrandom, 0x2, 0x3, 0x1, _cstring_startindexed, 0x2, 0x3, 0x2, _cstring_playoverlife, 0x2, 0x4, 0x4, _cstring_looponlyntimes, 0x2, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of fx_load_obj:
SECTION .bss
fx_load: resb 0x880


;All cstrings:
SECTION .rdata
_cstring_:		db "{",0
_cstring_ran_out_of_trail:		db "ran out of trail inds in edElemDef->trailDef",0ah,0
_cstring_ran_out_of_trail1:		db "ran out of trail verts in edElemDef->trailDef",0ah,0
_cstring_more_than_one_ty:		db "More than one type of visuals present in effect element",0ah,0
_cstring_more_than_i_visu:		db "More than %i visuals in array",0ah,0
_cstring_valid_flags:		db "Valid flags:",0ah,0
_cstring___s:		db "  %s",0ah,0
_cstring_unknown_flag_s:		db "Unknown flag ",27h,"%s",27h,0ah,0
_cstring_default:		db "$default",0
_cstring_default3d:		db "$default3d",0
_cstring_curves_must_alwa:		db "Curves must always start at time 0 and end at time 1.",0ah,0
_cstring_curve_has_a_part:		db "Curve has a partial key.",0ah,0
_cstring_curves_times_mus:		db "Curves times must be monotonically increasing (key %i is at %g <= %g).",0ah,0
_cstring_curves_must_alwa1:		db "Curves must always have at least 2 keys.",0ah,0
_cstring_idimensional_val:		db "%i-dimensional values cannot have more than %i keys.",0ah,0
_cstring_1:		db "}",0
_cstring_miscmissing_fx:		db "misc/missing_fx",0
_cstring_couldnt_load_def:		db "Couldn",27h,"t load default effect",0
_cstring_fxsefx:		db "fx/%s.efx",0
_cstring_s_not_found:		db "%s not found",0ah,0
_cstring_ss:		db "%s/%s",0
_cstring_iwfx:		db "iwfx",0
_cstring_effect_needs_to_:		db "Effect needs to be updated from the legacy format.",0ah,0
_cstring_version_i_is_too:		db "Version %i is too high. I can only handle up to %i.",0ah,0
_cstring_2:		db ";",0
_cstring_valid_effects_el:		db "Valid effects element fields:",0ah,0
_cstring_unkown_field_s:		db "unkown field ",27h,"%s",27h,0ah,0
_cstring_expected__to_sta:		db "Expected ",27h,"{",27h," to start a new segment, found ",27h,"%s",27h," instead.",0ah,0
_cstring_cannot_have_more:		db "Cannot have more than %i segments.",0ah,0
_cstring_no_visual_type_s:		db "no visual type specified",0ah,0
_cstring_name:		db "name",0
_cstring_editorflags:		db "editorFlags",0
_cstring_flags:		db "flags",0
_cstring_spawnrange:		db "spawnRange",0
_cstring_fadeinrange:		db "fadeInRange",0
_cstring_fadeoutrange:		db "fadeOutRange",0
_cstring_spawnfrustumcull:		db "spawnFrustumCullRadius",0
_cstring_spawnlooping:		db "spawnLooping",0
_cstring_spawnoneshot:		db "spawnOneShot",0
_cstring_spawndelaymsec:		db "spawnDelayMsec",0
_cstring_lifespanmsec:		db "lifeSpanMsec",0
_cstring_spawnorgx:		db "spawnOrgX",0
_cstring_spawnorgy:		db "spawnOrgY",0
_cstring_spawnorgz:		db "spawnOrgZ",0
_cstring_spawnoffsetradiu:		db "spawnOffsetRadius",0
_cstring_spawnoffsetheigh:		db "spawnOffsetHeight",0
_cstring_spawnanglepitch:		db "spawnAnglePitch",0
_cstring_spawnangleyaw:		db "spawnAngleYaw",0
_cstring_spawnangleroll:		db "spawnAngleRoll",0
_cstring_anglevelpitch:		db "angleVelPitch",0
_cstring_anglevelyaw:		db "angleVelYaw",0
_cstring_anglevelroll:		db "angleVelRoll",0
_cstring_initialrot:		db "initialRot",0
_cstring_gravity:		db "gravity",0
_cstring_elasticity:		db "elasticity",0
_cstring_atlasbehavior:		db "atlasBehavior",0
_cstring_atlasindex:		db "atlasIndex",0
_cstring_atlasfps:		db "atlasFps",0
_cstring_atlasloopcount:		db "atlasLoopCount",0
_cstring_atlascolindexbit:		db "atlasColIndexBits",0
_cstring_atlasrowindexbit:		db "atlasRowIndexBits",0
_cstring_atlasentrycount:		db "atlasEntryCount",0
_cstring_velgraph0x:		db "velGraph0X",0
_cstring_velgraph0y:		db "velGraph0Y",0
_cstring_velgraph0z:		db "velGraph0Z",0
_cstring_velgraph1x:		db "velGraph1X",0
_cstring_velgraph1y:		db "velGraph1Y",0
_cstring_velgraph1z:		db "velGraph1Z",0
_cstring_rotgraph:		db "rotGraph",0
_cstring_sizegraph0:		db "sizeGraph0",0
_cstring_sizegraph1:		db "sizeGraph1",0
_cstring_scalegraph:		db "scaleGraph",0
_cstring_colorgraph:		db "colorGraph",0
_cstring_alphagraph:		db "alphaGraph",0
_cstring_lightingfrac:		db "lightingFrac",0
_cstring_colloffset:		db "collOffset",0
_cstring_collradius:		db "collRadius",0
_cstring_fxonimpact:		db "fxOnImpact",0
_cstring_fxondeath:		db "fxOnDeath",0
_cstring_sortorder:		db "sortOrder",0
_cstring_emission:		db "emission",0
_cstring_emitdist:		db "emitDist",0
_cstring_emitdistvariance:		db "emitDistVariance",0
_cstring_trailrepeattime:		db "trailRepeatTime",0
_cstring_trailsplitdist:		db "trailSplitDist",0
_cstring_trailscrolltime:		db "trailScrollTime",0
_cstring_trailrepeatdist:		db "trailRepeatDist",0
_cstring_traildef:		db "trailDef",0
_cstring_billboardsprite:		db "billboardSprite",0
_cstring_orientedsprite:		db "orientedSprite",0
_cstring_cloud:		db "cloud",0
_cstring_tail:		db "tail",0
_cstring_trail:		db "trail",0
_cstring_decal:		db "decal",0
_cstring_model:		db "model",0
_cstring_light:		db "light",0
_cstring_spotlight:		db "spotLight",0
_cstring_runner:		db "runner",0
_cstring_sound:		db "sound",0
_cstring_mc:		db "mc",0
_cstring_wc:		db "wc",0
_cstring_looping:		db "looping",0
_cstring_userandcolor:		db "useRandColor",0
_cstring_userandalpha:		db "useRandAlpha",0
_cstring_userandsize0:		db "useRandSize0",0
_cstring_userandsize1:		db "useRandSize1",0
_cstring_userandscale:		db "useRandScale",0
_cstring_userandrotdelta:		db "useRandRotDelta",0
_cstring_modcolorbyalpha:		db "modColorByAlpha",0
_cstring_userandvel0:		db "useRandVel0",0
_cstring_userandvel1:		db "useRandVel1",0
_cstring_usebackcompatvel:		db "useBackCompatVel",0
_cstring_absvel0:		db "absVel0",0
_cstring_absvel1:		db "absVel1",0
_cstring_playontouch:		db "playOnTouch",0
_cstring_playondeath:		db "playOnDeath",0
_cstring_playonrun:		db "playOnRun",0
_cstring_boundingsphere:		db "boundingSphere",0
_cstring_useitemclip:		db "useItemClip",0
_cstring_disabled:		db "disabled",0
_cstring_spawnrelative:		db "spawnRelative",0
_cstring_spawnfrustumcull1:		db "spawnFrustumCull",0
_cstring_runnerusesrandro:		db "runnerUsesRandRot",0
_cstring_spawnoffsetnone:		db "spawnOffsetNone",0
_cstring_spawnoffsetspher:		db "spawnOffsetSphere",0
_cstring_spawnoffsetcylin:		db "spawnOffsetCylinder",0
_cstring_runreltoworld:		db "runRelToWorld",0
_cstring_runreltospawn:		db "runRelToSpawn",0
_cstring_runreltoeffect:		db "runRelToEffect",0
_cstring_runreltooffset:		db "runRelToOffset",0
_cstring_usecollision:		db "useCollision",0
_cstring_dieontouch:		db "dieOnTouch",0
_cstring_drawpastfog:		db "drawPastFog",0
_cstring_drawwithviewmode:		db "drawWithViewModel",0
_cstring_blockssight:		db "blocksSight",0
_cstring_modelusesphysics:		db "modelUsesPhysics",0
_cstring_nonuniformscale:		db "nonUniformScale",0
_cstring_startfixed:		db "startFixed",0
_cstring_startrandom:		db "startRandom",0
_cstring_startindexed:		db "startIndexed",0
_cstring_playoverlife:		db "playOverLife",0
_cstring_looponlyntimes:		db "loopOnlyNTimes",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0

