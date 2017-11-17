;Imports of cg_ents_mp:
	extern MT_Alloc
	extern vec3_origin
	extern BG_EvaluateTrajectory
	extern floorf
	extern cg_entitiesArray
	extern cgArray
	extern FX_ThroughWithEffect
	extern CL_DObjCreateSkelForBone
	extern DObjGetHierarchyBits
	extern CG_DoControllers
	extern DObjCalcSkel
	extern CL_GetConfigString
	extern CG_PlaySoundAliasByName
	extern CG_IsRagdollTrajectory
	extern BG_GetNumWeapons
	extern BG_GetWeaponDef
	extern CG_PlaySoundAlias
	extern R_AddDObjToScene
	extern CG_AddHudGrenade
	extern Com_Error
	extern R_GetBrushModel
	extern CG_CompassUpdateVehicleInfo
	extern cgsArray
	extern AnglesToAxis
	extern FX_SpawnOrientedEffect
	extern CG_VehProcessEntity
	extern comWorld
	extern CG_PlayerUsingScopedTurret
	extern CG_ShouldPlaySoundOnLocalClient
	extern CL_PickSoundAlias
	extern SND_PlayBlendedSoundAliases
	extern FX_RetriggerEffect
	extern CG_Player
	extern CG_Corpse
	extern R_AddBrushModelToSceneFromAngles
	extern AngleVectors
	extern AimTarget_ProcessEntity
	extern scr_const
	extern CG_PlayBoltedEffect
	extern DObjUpdateClientInfo
	extern cg_entityOriginArray
	extern CG_IsEntityLinked
	extern Com_GetClientDObj
	extern DObjGetHidePartBits
	extern DObjSetHidePartBits
	extern FX_MarkEntUpdateHidePartBits
	extern CG_EntityNeedsLinked
	extern CG_LinkEntity
	extern CG_UnlinkEntity
	extern DObjGetRadius
	extern R_LinkDObjEntity
	extern CG_VehEntityUsingVehicle
	extern CG_VehSeatTransformForPlayer
	extern CG_VehPlayerVehicleSlot
	extern PIXBeginNamedEvent
	extern CG_AddClientSideSounds
	extern DObjGetBoneIndex
	extern DObjGetRotTransArray
	extern CG_CheckDObjInfoMatches
	extern Phys_ObjDestroy
	extern FX_MarkEntDetachAll
	extern CG_SafeDObjFree
	extern Com_ClientDObjCreate
	extern CG_SetDObjInfo
	extern XAnimSetCompleteGoalWeight
	extern Hunk_AllocXAnimClient
	extern XAnimCreateAnims
	extern XAnimBlend
	extern BG_CreateXAnim
	extern XAnimCreateTree
	extern DObjGetTree
	extern XAnimSetGoalWeightKnobAll
	extern BG_Player_DoControllersSetup
	extern controller_names
	extern R_SkinGfxEntityDelayed
	extern R_UpdateXModelBoundsDelayed
	extern Ragdoll_CreateRagdollForDObj
	extern Ragdoll_GetRootOrigin
	extern Sys_EnterCriticalSection
	extern Phys_ObjGetInterpolatedState
	extern Sys_LeaveCriticalSection
	extern UnitQuatToAngles
	extern AnglesToQuat
	extern DObjGetPhysPreset
	extern Phys_ObjCreate
	extern DObjGetName
	extern Com_PrintWarning
	extern DObjPhysicsSetCollisionFromXModel
	extern Phys_ObjBulletImpact
	extern DObjGetClientNotifyList
	extern Q_stricmp
	extern R_LinkBModelEntity

;Exports of cg_ents_mp:
	global _GLOBAL__I__Z24CG_Player_PreControllersP6DObj_sP9centity_s
	global g_entMoveTolVec
	global CG_AllocAnimTree
	global CG_LockLightingOrigin
	global CG_InterpolateEntityPosition
	global CG_GetPose
	global CG_ClearUnion
	global CG_DObjCalcBone
	global CG_GetPoseAngles
	global CG_GetPoseOrigin
	global CG_ProcessEntity
	global CG_DObjUpdateInfo
	global CG_AddPacketEntity
	global CG_AddPacketEntities
	global CG_GetSkinCacheEntry
	global CG_DObjGetWorldTagPos
	global CG_PreProcess_GetDObj
	global CG_mg42_PreControllers
	global CG_DObjGetWorldTagMatrix
	global CG_GetPoseLightingHandle
	global CG_Player_PreControllers
	global CG_PredictiveSkinCEntity
	global CG_SetFrameInterpolation
	global CG_AdjustPositionForMover
	global CG_DObjGetWorldBoneMatrix
	global CG_CalcEntityLerpPositions
	global CG_ProcessClientNoteTracks
	global CG_UpdateBModelWorldBounds


SECTION .text


;global constructors keyed to CG_Player_PreControllers(DObj_s*, centity_s*)
_GLOBAL__I__Z24CG_Player_PreControllersP6DObj_sP9centity_s:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


;CG_AllocAnimTree(int)
CG_AllocAnimTree:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x5
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MT_Alloc
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


;CG_LockLightingOrigin(centity_s*, float*)
CG_LockLightingOrigin:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov ecx, eax
	test byte [eax+0xd5], 0x4
	jz CG_LockLightingOrigin_10
	lea ebx, [eax+0x1cc]
	mov eax, vec3_origin
	movss xmm0, dword [ecx+0x1cc]
	ucomiss xmm0, [eax]
	jp CG_LockLightingOrigin_20
	jz CG_LockLightingOrigin_30
CG_LockLightingOrigin_20:
	lea edi, [ecx+0x1d0]
	lea esi, [ecx+0x1d4]
	mov [ebp-0x10], esi
	lea esi, [ecx+0x1c]
CG_LockLightingOrigin_60:
	mov eax, [ebx]
	mov [edx], eax
	lea eax, [edx+0x4]
	mov [ebp-0x14], eax
	mov eax, [edi]
	mov [edx+0x4], eax
	lea edi, [edx+0x8]
	mov eax, [ebp-0x10]
	movss xmm0, dword [eax]
	movss [edx+0x8], xmm0
CG_LockLightingOrigin_70:
	xor eax, eax
	mov [ecx+0x1cc], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	mov eax, [ecx+0x1c]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov edx, [ebp-0x14]
	mov [edx], eax
	movss xmm0, dword [_float_4_00000000]
	addss xmm0, [esi+0x8]
	movss [edi], xmm0
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_LockLightingOrigin_30:
	lea edi, [ebx+0x4]
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, [eax+0x4]
	jp CG_LockLightingOrigin_40
	jnz CG_LockLightingOrigin_40
	lea esi, [ebx+0x8]
	mov [ebp-0x10], esi
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [eax+0x8]
	jnz CG_LockLightingOrigin_50
	jp CG_LockLightingOrigin_50
	lea esi, [ecx+0x1c]
	mov eax, [ecx+0x1c]
	mov [ebx], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	jmp CG_LockLightingOrigin_60
CG_LockLightingOrigin_10:
	lea eax, [edx+0x4]
	mov [ebp-0x14], eax
	lea edi, [edx+0x8]
	lea ebx, [ecx+0x1cc]
	lea esi, [ecx+0x1c]
	jmp CG_LockLightingOrigin_70
CG_LockLightingOrigin_40:
	lea eax, [ebx+0x8]
	mov [ebp-0x10], eax
	lea esi, [ecx+0x1c]
	jmp CG_LockLightingOrigin_60
CG_LockLightingOrigin_50:
	lea esi, [ecx+0x1c]
	jmp CG_LockLightingOrigin_60
	nop


;CG_InterpolateEntityPosition(cg_s*, centity_s*)
CG_InterpolateEntityPosition:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, eax
	mov edi, edx
	movss xmm0, dword [eax+0x46120]
	movss [ebp-0x40], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [esi+0x20]
	mov eax, [eax+0x8]
	mov [esp+0x4], eax
	lea eax, [edx+0x68]
	mov [esp], eax
	call BG_EvaluateTrajectory
	lea ebx, [ebp-0x30]
	mov [esp+0x8], ebx
	mov eax, [esi+0x24]
	mov eax, [eax+0x8]
	mov [esp+0x4], eax
	lea eax, [edi+0xd8]
	mov [esp], eax
	call BG_EvaluateTrajectory
	lea eax, [edi+0x1c]
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x40]
	addss xmm1, xmm0
	movss [edi+0x1c], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x40]
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x40]
	addss xmm1, xmm0
	movss [eax+0x8], xmm1
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [esi+0x20]
	mov eax, [eax+0x8]
	mov [esp+0x4], eax
	lea eax, [edi+0x8c]
	mov [esp], eax
	call BG_EvaluateTrajectory
	mov [esp+0x8], ebx
	mov eax, [esi+0x24]
	mov eax, [eax+0x8]
	mov [esp+0x4], eax
	lea eax, [edi+0xfc]
	mov [esp], eax
	call BG_EvaluateTrajectory
	movss xmm2, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x68], xmm0
	movss [ebp-0x88], xmm2
	call floorf
	fstp dword [ebp-0x44]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x44]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebp-0x40]
	movss xmm2, dword [ebp-0x88]
	addss xmm2, xmm0
	movss [edi+0x28], xmm2
	movss xmm2, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x68], xmm0
	movss [ebp-0x88], xmm2
	call floorf
	fstp dword [ebp-0x48]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x48]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebp-0x40]
	movss xmm2, dword [ebp-0x88]
	addss xmm2, xmm0
	movss [edi+0x2c], xmm2
	movss xmm2, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x68], xmm0
	movss [ebp-0x88], xmm2
	call floorf
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x4c]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebp-0x40]
	movss xmm2, dword [ebp-0x88]
	addss xmm2, xmm0
	movss [edi+0x30], xmm2
	cmp dword [edi+0xd0], 0x1
	jz CG_InterpolateEntityPosition_10
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_InterpolateEntityPosition_10:
	mov eax, [edi+0x158]
	lea ebx, [eax+eax*8]
	mov edx, ebx
	shl edx, 0x4
	add ebx, edx
	lea ebx, [eax+ebx*2]
	lea ebx, [esi+ebx*4+0xe9f30]
	lea eax, [ebx+0x4]
	mov [ebp-0x3c], eax
	cvtsi2ss xmm2, dword [edi+0xb4]
	cvtsi2ss xmm0, dword [edi+0x124]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x68], xmm0
	movss [ebp-0x88], xmm2
	call floorf
	fstp dword [ebp-0x50]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x50]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebp-0x40]
	movss xmm2, dword [ebp-0x88]
	addss xmm2, xmm0
	mov eax, [ebp-0x3c]
	movss [eax+0x3dc], xmm2
	lea ecx, [ebx+0x3e8]
	lea edx, [edi+0x28]
	mov eax, [edi+0x28]
	mov [ebx+0x3e8], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	xor eax, eax
	mov [edi+0x28], eax
	mov [edi+0x30], eax
	movss xmm2, dword [edi+0xb0]
	movss xmm1, dword [edi+0x120]
	subss xmm1, xmm2
	mulss xmm1, [_float_0_00277778]
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x78], xmm1
	movss [ebp-0x88], xmm2
	call floorf
	fstp dword [ebp-0x54]
	movss xmm1, dword [ebp-0x78]
	subss xmm1, [ebp-0x54]
	mulss xmm1, [_float_360_00000000]
	mulss xmm1, [ebp-0x40]
	movss [ebp-0x40], xmm1
	movss xmm2, dword [ebp-0x88]
	addss xmm2, xmm1
	mov eax, [ebp-0x3c]
	movss [eax+0x3e0], xmm2
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_GetPose(int, int)
CG_GetPose:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	cmp edx, 0x3ff
	jg CG_GetPose_10
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea eax, [edx+eax]
	add eax, cg_entitiesArray
	pop ebp
	ret
CG_GetPose_10:
	mov eax, cgArray
	add eax, 0xfd234
	pop ebp
	ret


;CG_ClearUnion(int, centity_s*)
CG_ClearUnion:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	movzx eax, byte [ebx+0x3]
	cmp eax, 0xe
	ja CG_ClearUnion_10
	jmp dword [eax*4+CG_ClearUnion_jumptab_0]
CG_ClearUnion_40:
	mov eax, [ebx+0x44]
	test eax, eax
	jz CG_ClearUnion_20
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_ThroughWithEffect
CG_ClearUnion_20:
	mov dword [ebx+0x40], 0x0
	mov dword [ebx+0x44], 0x0
CG_ClearUnion_10:
	mov byte [ebx+0x3], 0x0
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
CG_ClearUnion_30:
	lea eax, [ebx+0x40]
	mov dword [ebx+0x40], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov byte [ebx+0x3], 0x0
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
CG_ClearUnion_60:
	lea edi, [ebx+0x40]
	cld
	mov ecx, 0x9
	xor eax, eax
	rep stosd
	mov byte [ebx+0x3], 0x0
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
CG_ClearUnion_50:
	lea eax, [ebx+0x40]
	mov dword [ebx+0x40], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov byte [ebx+0x3], 0x0
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
	nop
	add [eax], al
	
	
CG_ClearUnion_jumptab_0:
	dd CG_ClearUnion_10
	dd CG_ClearUnion_30
	dd CG_ClearUnion_10
	dd CG_ClearUnion_10
	dd CG_ClearUnion_10
	dd CG_ClearUnion_10
	dd CG_ClearUnion_10
	dd CG_ClearUnion_10
	dd CG_ClearUnion_40
	dd CG_ClearUnion_40
	dd CG_ClearUnion_10
	dd CG_ClearUnion_50
	dd CG_ClearUnion_60
	dd CG_ClearUnion_10
	dd CG_ClearUnion_60


;CG_DObjCalcBone(cpose_t const*, DObj_s*, int)
CG_DObjCalcBone:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov [esp+0x4], edi
	mov [esp], esi
	call CL_DObjCreateSkelForBone
	test eax, eax
	jnz CG_DObjCalcBone_10
	lea ebx, [ebp-0x28]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], esi
	call DObjGetHierarchyBits
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DoControllers
	mov [esp+0x4], ebx
	mov [esp], esi
	call DObjCalcSkel
CG_DObjCalcBone_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_GetPoseAngles(cpose_t const*, float*)
CG_GetPoseAngles:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [eax+0x28]
	mov eax, [eax+0x28]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	pop ebp
	ret
	nop


;CG_GetPoseOrigin(cpose_t const*, float*)
CG_GetPoseOrigin:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	pop ebp
	ret
	nop


;CG_ProcessEntity(int, centity_s*)
CG_ProcessEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x14c]
	test ecx, ecx
	jz CG_ProcessEntity_10
	cmp dword [edi+0x164], 0xffffff
	jz CG_ProcessEntity_20
	mov eax, [edi+0x14c]
	add eax, 0x53e
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	mov [esp+0xc], eax
	lea eax, [edi+0x1c]
	mov [esp+0x8], eax
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAliasByName
CG_ProcessEntity_10:
	lea eax, [edi+0x68]
	mov [esp], eax
	call CG_IsRagdollTrajectory
	test al, al
	jnz CG_ProcessEntity_30
CG_ProcessEntity_130:
	movzx ecx, byte [edi+0x3]
	cmp [edi+0xd0], ecx
	jz CG_ProcessEntity_40
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_ClearUnion
	mov ecx, [edi+0xd0]
	cmp ecx, 0xe
	jbe CG_ProcessEntity_50
CG_ProcessEntity_120:
	mov byte [edi+0x3], 0x0
CG_ProcessEntity_40:
	cmp ecx, 0xe
	ja CG_ProcessEntity_60
	jmp dword [ecx*4+CG_ProcessEntity_jumptab_0]
CG_ProcessEntity_410:
	lea esi, [edi+0xcc]
	test byte [esi+0x8], 0x20
	jnz CG_ProcessEntity_70
	mov eax, cgArray
	mov eax, [eax+0x46128]
	cmp eax, [esi+0x54]
	jl CG_ProcessEntity_70
	mov ebx, [esi+0xc4]
	call BG_GetNumWeapons
	cmp ebx, eax
	jb CG_ProcessEntity_80
	mov dword [esi+0xc4], 0x0
CG_ProcessEntity_80:
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov ebx, eax
	mov eax, [eax+0x164]
	test eax, eax
	jz CG_ProcessEntity_90
	mov [esp+0xc], eax
	lea eax, [edi+0x1c]
	mov [esp+0x8], eax
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
CG_ProcessEntity_90:
	mov eax, [ebx+0x584]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PreProcess_GetDObj
	mov [ebp-0x64], eax
	test eax, eax
	jz CG_ProcessEntity_70
	mov ecx, [ebx+0x6a8]
	test ecx, ecx
	jz CG_ProcessEntity_100
	cmp byte [edi+0x1c2], 0x0
	jz CG_ProcessEntity_110
CG_ProcessEntity_100:
	lea edx, [edi+0x1c]
	mov eax, [edi+0x1c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	movss xmm0, dword [_float_4_00000000]
	addss xmm0, [edx+0x8]
	movss [ebp-0x34], xmm0
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [esi]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp-0x64]
	mov [esp], eax
	call R_AddDObjToScene
	mov [esp+0x4], edi
	mov eax, cgArray
	mov [esp], eax
	call CG_AddHudGrenade
CG_ProcessEntity_70:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ProcessEntity_60:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_bad_entity_type_
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ProcessEntity_50:
	mov eax, 0x1
	shl eax, cl
	test eax, 0x5b02
	jz CG_ProcessEntity_120
	mov [edi+0x3], cl
	jmp CG_ProcessEntity_40
CG_ProcessEntity_30:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_CalcEntityLerpPositions
	jmp CG_ProcessEntity_130
CG_ProcessEntity_20:
	mov eax, [edi+0x154]
	mov [esp], eax
	call R_GetBrushModel
	lea edx, [eax+0x18]
	lea ecx, [eax+0x24]
	movss xmm2, dword [edx+0x4]
	addss xmm2, [ecx+0x4]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss xmm1, dword [edx+0x8]
	addss xmm1, [ecx+0x8]
	mulss xmm1, xmm3
	lea edx, [edi+0x1c]
	movss xmm0, dword [eax+0x18]
	addss xmm0, [eax+0x24]
	mulss xmm0, xmm3
	addss xmm0, [edi+0x1c]
	movss [ebp-0x3c], xmm0
	addss xmm2, [edx+0x4]
	movss [ebp-0x38], xmm2
	addss xmm1, [edx+0x8]
	movss [ebp-0x34], xmm1
	mov eax, [edi+0x14c]
	add eax, 0x53e
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov [esp+0xc], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlaySoundAliasByName
	jmp CG_ProcessEntity_10
CG_ProcessEntity_490:
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_CompassUpdateVehicleInfo
CG_ProcessEntity_420:
	lea esi, [edi+0xcc]
	mov eax, [esi+0x8]
	test al, 0x20
	jnz CG_ProcessEntity_70
	cmp dword [esi+0x98], 0xffffff
	jz CG_ProcessEntity_140
	mov edx, [esi+0x88]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0x294]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
CG_ProcessEntity_150:
	mov [esp+0x8], eax
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PreProcess_GetDObj
	mov esi, eax
	test eax, eax
	jz CG_ProcessEntity_70
	lea ebx, [ebp-0x3c]
	mov edx, ebx
	mov eax, edi
	call CG_LockLightingOrigin
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov eax, [edi+0xcc]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call R_AddDObjToScene
	jmp CG_ProcessEntity_70
CG_ProcessEntity_370:
	lea ecx, [edi+0xcc]
	test byte [ecx+0x8], 0x20
	jnz CG_ProcessEntity_70
	mov edx, [ecx+0x88]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0x294]
	mov [esp+0xc], eax
	mov eax, [ecx+0x4]
	jmp CG_ProcessEntity_150
CG_ProcessEntity_440:
	mov eax, [edi+0x40]
	cmp eax, [edi+0x13c]
	jz CG_ProcessEntity_70
	mov eax, [edi+0x44]
	test eax, eax
	jz CG_ProcessEntity_160
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_ThroughWithEffect
CG_ProcessEntity_160:
	mov dword [edi+0x40], 0x0
	mov dword [edi+0x44], 0x0
	mov esi, [edi+0x13c]
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	lea eax, [edi+0x108]
	mov [esp], eax
	call AnglesToAxis
	mov dword [esp+0x14], 0x3ff
	mov [esp+0x10], ebx
	lea eax, [edi+0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov edx, [edi+0x1a0]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0xa94]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_SpawnOrientedEffect
	mov [edi+0x44], eax
	test eax, eax
	jz CG_ProcessEntity_70
	mov eax, [edi+0x13c]
	mov [edi+0x40], eax
	jmp CG_ProcessEntity_70
CG_ProcessEntity_480:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_VehProcessEntity
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_CompassUpdateVehicleInfo
	jmp CG_ProcessEntity_70
CG_ProcessEntity_460:
	lea eax, [edi+0x64]
	mov [ebp-0x54], eax
	lea edx, [edi+0xd4]
	mov [ebp-0x50], edx
	mov edx, [edi+0x154]
	mov eax, edx
	shl eax, 0x6
	mov ecx, cgArray
	mov [ebp-0x7c], ecx
	lea ecx, [eax+ecx+0x49380]
	mov [ebp-0x70], ecx
	add ecx, 0x8
	mov [ebp-0x4c], ecx
	lea esi, [eax+edx*4]
	mov eax, comWorld
	add esi, [eax+0xc]
	lea edx, [edi+0xb0]
	movzx eax, byte [edi+0xb0]
	cvtsi2ss xmm4, eax
	movss xmm0, dword [_float_0_00392157]
	mulss xmm4, xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm5, eax
	mulss xmm5, xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm6, eax
	mulss xmm6, xmm0
	lea edx, [edi+0x120]
	movzx eax, byte [edi+0x120]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm2, eax
	mulss xmm2, xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm3, eax
	mulss xmm3, xmm0
	mov eax, [ebp-0x54]
	movss xmm0, dword [eax+0x50]
	mulss xmm4, xmm0
	mulss xmm5, xmm0
	mulss xmm6, xmm0
	mov edx, [ebp-0x50]
	movss xmm7, dword [edx+0x50]
	mov eax, [ebp-0x70]
	add eax, 0xc
	mov ecx, [ebp-0x7c]
	movss xmm0, dword [ecx+0x46120]
	mulss xmm1, xmm7
	subss xmm1, xmm4
	mulss xmm1, xmm0
	addss xmm4, xmm1
	mov edx, [ebp-0x70]
	movss [edx+0xc], xmm4
	mulss xmm2, xmm7
	subss xmm2, xmm5
	mulss xmm2, xmm0
	addss xmm5, xmm2
	movss [eax+0x4], xmm5
	mulss xmm3, xmm7
	subss xmm3, xmm6
	mulss xmm0, xmm3
	addss xmm6, xmm0
	movss [eax+0x8], xmm6
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [esi+0x38]
	ja CG_ProcessEntity_170
CG_ProcessEntity_330:
	movss xmm0, dword [esi+0x3c]
	ucomiss xmm0, [_float_0_00000000]
	jbe CG_ProcessEntity_180
	mov ebx, [ebp-0x4c]
	add ebx, 0x1c
	mov [esp+0x8], ebx
	mov edx, [ebp-0x7c]
	mov eax, [edx+0x46128]
	mov [esp+0x4], eax
	mov eax, [ebp-0x50]
	add eax, 0x4
	mov [esp], eax
	call BG_EvaluateTrajectory
	movss xmm6, dword [esi+0x1c]
	mov ecx, [ebp-0x4c]
	movss xmm3, dword [ecx+0x1c]
	subss xmm3, xmm6
	movss xmm4, dword [ebx+0x4]
	subss xmm4, [esi+0x20]
	movss xmm5, dword [ebx+0x8]
	subss xmm5, [esi+0x24]
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss xmm1, dword [esi+0x3c]
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	ucomiss xmm0, xmm2
	jbe CG_ProcessEntity_190
	mov edx, cgArray
	mov [ebp-0x7c], edx
CG_ProcessEntity_310:
	mov ecx, [ebp-0x54]
	movss xmm1, dword [ecx+0x54]
	mov eax, [ebp-0x50]
	movss xmm0, dword [eax+0x54]
	subss xmm0, xmm1
	mulss xmm0, [edx+0x46120]
	addss xmm1, xmm0
	mov ecx, [ebp-0x4c]
	movss [ecx+0x28], xmm1
	mov eax, [ebp-0x54]
	movss xmm1, dword [eax+0x58]
	mov edx, [ebp-0x50]
	movss xmm0, dword [edx+0x58]
	subss xmm0, xmm1
	mov ecx, [ebp-0x7c]
	mulss xmm0, [ecx+0x46120]
	addss xmm1, xmm0
	mov eax, [ebp-0x4c]
	movss [eax+0x2c], xmm1
	mov edx, [ebp-0x54]
	movss xmm1, dword [edx+0x5c]
	mov ecx, [ebp-0x50]
	movss xmm0, dword [ecx+0x5c]
	subss xmm0, xmm1
	mov eax, [ebp-0x7c]
	mulss xmm0, [eax+0x46120]
	addss xmm1, xmm0
	mov edx, [ebp-0x4c]
	movss [edx+0x30], xmm1
	mov ecx, [ebp-0x54]
	movzx edx, byte [ecx+0x4f]
	mov ecx, [ebp-0x50]
	movzx eax, byte [ecx+0x4f]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mov eax, [ebp-0x7c]
	mulss xmm0, [eax+0x46120]
	cvttss2si eax, xmm0
	add edx, eax
	mov ecx, [ebp-0x4c]
	mov [ecx+0x34], edx
	jmp CG_ProcessEntity_70
CG_ProcessEntity_470:
	lea ebx, [edi+0xcc]
	test byte [ebx+0x8], 0x20
	jnz CG_ProcessEntity_70
	mov edx, [ebx+0x88]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0x294]
	mov [esp+0xc], eax
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PreProcess_GetDObj
	mov esi, eax
	test eax, eax
	jz CG_ProcessEntity_70
	mov [esp+0x4], edi
	mov [esp], eax
	call CG_mg42_PreControllers
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlayerUsingScopedTurret
	test al, al
	jz CG_ProcessEntity_200
	mov eax, cgArray
	mov edx, [eax+0x46138]
	test edx, edx
	jnz CG_ProcessEntity_200
	mov eax, [eax+0x466d8]
	cmp eax, [edi+0xcc]
	jz CG_ProcessEntity_70
CG_ProcessEntity_200:
	lea edx, [edi+0x1c]
	mov eax, [edi+0x1c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	movss xmm0, dword [_float_32_00000000]
	addss xmm0, [edx+0x8]
	movss [ebp-0x34], xmm0
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call R_AddDObjToScene
	jmp CG_ProcessEntity_70
CG_ProcessEntity_430:
	lea esi, [edi+0x64]
	lea ebx, [edi+0xcc]
	mov eax, [ebx+0xb4]
	test eax, eax
	jz CG_ProcessEntity_70
	mov edx, [ebx+0xb8]
	test edx, edx
	jz CG_ProcessEntity_70
	add eax, 0x53e
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_GetConfigString
	lea ecx, [edi+0x1c]
	mov [ebp-0x60], ecx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_ShouldPlaySoundOnLocalClient
	test al, al
	jz CG_ProcessEntity_70
	mov eax, [ebx+0xb4]
	add eax, 0x53e
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_GetConfigString
	mov [esp], eax
	call CL_PickSoundAlias
	mov [ebp-0x5c], eax
	mov eax, [ebx+0xb8]
	add eax, 0x53e
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	mov [esp], eax
	call CL_PickSoundAlias
	mov edx, eax
	mov eax, [ebp-0x5c]
	test eax, eax
	jz CG_ProcessEntity_70
	test edx, edx
	jz CG_ProcessEntity_70
	movss xmm1, dword [esi+0x4c]
	movss xmm0, dword [ebx+0x54]
	subss xmm0, xmm1
	mov eax, cgArray
	mulss xmm0, [eax+0x46120]
	addss xmm1, xmm0
	mov eax, [edi+0xcc]
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x0
	mov ecx, [ebp-0x60]
	mov [esp+0x14], ecx
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm1
	mov [esp+0x4], edx
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call SND_PlayBlendedSoundAliases
	jmp CG_ProcessEntity_70
CG_ProcessEntity_450:
	movss xmm3, dword [edi+0x120]
	ucomiss xmm3, [_float_0_00000000]
	jp CG_ProcessEntity_210
	jz CG_ProcessEntity_220
CG_ProcessEntity_210:
	lea eax, [edi+0x1c]
	mov edx, cgArray
	mov [ebp-0x7c], edx
	movss xmm0, dword [edi+0x1c]
	subss xmm0, [edx+0x46158]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4615c]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x46160]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	jae CG_ProcessEntity_70
CG_ProcessEntity_300:
	mov eax, [edi+0x124]
	mov [ebp-0x58], eax
	mov eax, [edi+0x44]
	test eax, eax
	jz CG_ProcessEntity_230
	mov edx, [ebp-0x7c]
CG_ProcessEntity_350:
	mov eax, [edi+0x40]
	cmp eax, [edx+0x46128]
	jg CG_ProcessEntity_70
	mov ebx, cgArray
CG_ProcessEntity_240:
	mov [esp+0x8], eax
	mov eax, [edi+0x44]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_RetriggerEffect
	mov eax, [ebp-0x58]
	add eax, [edi+0x40]
	mov [edi+0x40], eax
	cmp [ebx+0x46128], eax
	jge CG_ProcessEntity_240
	jmp CG_ProcessEntity_70
CG_ProcessEntity_380:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_Player
	jmp CG_ProcessEntity_70
CG_ProcessEntity_390:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_Corpse
	jmp CG_ProcessEntity_70
CG_ProcessEntity_400:
	lea esi, [edi+0xcc]
	mov eax, [esi+0x88]
	cmp eax, 0x7ff
	jg CG_ProcessEntity_250
CG_ProcessEntity_320:
	test byte [esi+0x8], 0x20
	jnz CG_ProcessEntity_70
	mov ebx, [esi+0x88]
	mov ecx, ebx
	and ecx, 0x8000007f
	mov [ebp-0x6c], ecx
	js CG_ProcessEntity_260
	mov eax, ecx
CG_ProcessEntity_340:
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x68], eax
	mov eax, ebx
	lea edx, [ebx+0x7f]
	cmp ebx, 0xffffffff
	cmovle eax, edx
	sar eax, 0x7
	movzx ebx, al
	mov edx, [ebp-0x68]
	mov eax, [edx+ebx*4+0x2bc]
	test eax, eax
	jz CG_ProcessEntity_270
CG_ProcessEntity_360:
	mov eax, [edx+ebx*4+0x2bc]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [edi+0xcc]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PreProcess_GetDObj
	mov ecx, eax
	test eax, eax
	jz CG_ProcessEntity_70
	lea edx, [edi+0x1c]
	mov eax, [edi+0x1c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	movss xmm0, dword [_float_4_00000000]
	addss xmm0, [edx+0x8]
	movss [ebp-0x34], xmm0
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [edi+0xcc]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ecx
	call R_AddDObjToScene
	jmp CG_ProcessEntity_70
CG_ProcessEntity_140:
	cmp byte [edi+0x1c0], 0x0
	jz CG_ProcessEntity_280
	test ah, 0x8
	jnz CG_ProcessEntity_290
CG_ProcessEntity_280:
	mov ebx, [esi]
	mov eax, [esi+0x88]
	mov [esp], eax
	call R_GetBrushModel
	mov [esp+0xc], ebx
	lea edx, [edi+0x28]
	mov [esp+0x8], edx
	lea edx, [edi+0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call R_AddBrushModelToSceneFromAngles
	jmp CG_ProcessEntity_70
CG_ProcessEntity_220:
	mov ecx, cgArray
	mov [ebp-0x7c], ecx
	jmp CG_ProcessEntity_300
CG_ProcessEntity_180:
	mov edx, [ebp-0x7c]
	jmp CG_ProcessEntity_310
CG_ProcessEntity_250:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bad_item_index_i
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_ProcessEntity_320
CG_ProcessEntity_190:
	sqrtss xmm0, xmm2
	divss xmm1, xmm0
	mulss xmm3, xmm1
	addss xmm6, xmm3
	movss [ecx+0x1c], xmm6
	mulss xmm4, xmm1
	addss xmm4, [esi+0x20]
	movss [ebx+0x4], xmm4
	mulss xmm5, xmm1
	addss xmm5, [esi+0x24]
	movss [ebx+0x8], xmm5
	mov eax, cgArray
	mov [ebp-0x7c], eax
	mov edx, eax
	jmp CG_ProcessEntity_310
CG_ProcessEntity_170:
	lea ebx, [ebp-0x3c]
	mov [esp+0x8], ebx
	mov eax, [ecx+0x46128]
	mov [esp+0x4], eax
	lea eax, [edi+0xfc]
	mov [esp], eax
	call BG_EvaluateTrajectory
	mov eax, [ebp-0x70]
	add eax, 0x18
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], ebx
	call AngleVectors
	movss xmm1, dword [g_zero+0x60]
	mov eax, [ebp-0x70]
	movss xmm0, dword [eax+0x18]
	xorps xmm0, xmm1
	movss [eax+0x18], xmm0
	movss xmm0, dword [eax+0x1c]
	movss [ebp-0x74], xmm0
	xor dword [ebp-0x74], 0x80000000
	movss xmm0, dword [ebp-0x74]
	movss [eax+0x1c], xmm0
	movss xmm0, dword [eax+0x20]
	movss [ebp-0x78], xmm0
	xor dword [ebp-0x78], 0x80000000
	movss xmm0, dword [ebp-0x78]
	movss [eax+0x20], xmm0
	movss xmm5, dword [esi+0x38]
	ucomiss xmm5, [_float__1_00000000]
	jbe CG_ProcessEntity_330
	movss xmm4, dword [esi+0x10]
	movss xmm6, dword [esi+0x14]
	movss xmm7, dword [esi+0x18]
	movaps xmm3, xmm4
	mulss xmm3, [eax+0x18]
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm7
	addss xmm3, xmm0
	ucomiss xmm3, xmm5
	jae CG_ProcessEntity_330
	movaps xmm2, xmm3
	xorps xmm2, xmm1
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mulss xmm3, xmm3
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm3
	divss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	mulss xmm4, xmm2
	addss xmm4, [eax+0x18]
	mulss xmm4, xmm1
	addss xmm0, xmm4
	movss [eax+0x18], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [esi+0x14]
	mulss xmm6, xmm2
	addss xmm6, [ebp-0x74]
	mulss xmm6, xmm1
	addss xmm0, xmm6
	movss [eax+0x1c], xmm0
	mulss xmm5, [esi+0x18]
	mulss xmm7, xmm2
	addss xmm7, [ebp-0x78]
	mulss xmm7, xmm1
	addss xmm5, xmm7
	movss [eax+0x20], xmm5
	jmp CG_ProcessEntity_330
CG_ProcessEntity_290:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call AimTarget_ProcessEntity
	jmp CG_ProcessEntity_280
CG_ProcessEntity_260:
	sub ecx, 0x1
	or ecx, 0xffffff80
	add ecx, 0x1
	mov [ebp-0x6c], ecx
	mov eax, ecx
	jmp CG_ProcessEntity_340
CG_ProcessEntity_230:
	mov edx, [ebp-0x7c]
	mov esi, [edx+0x46128]
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	lea eax, [edi+0x108]
	mov [esp], eax
	call AnglesToAxis
	mov dword [esp+0x14], 0x3ff
	mov [esp+0x10], ebx
	lea eax, [edi+0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov edx, [edi+0x1a0]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0xa94]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_SpawnOrientedEffect
	mov [edi+0x44], eax
	test eax, eax
	jz CG_ProcessEntity_70
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x7c]
	add eax, [edx+0x46128]
	mov [edi+0x40], eax
	mov ecx, cgArray
	mov [ebp-0x7c], ecx
	mov edx, ecx
	jmp CG_ProcessEntity_350
CG_ProcessEntity_110:
	mov byte [edi+0x1c2], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x9a]
	mov [esp+0xc], eax
	mov eax, [edi+0xcc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x6a8]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayBoltedEffect
	jmp CG_ProcessEntity_100
CG_ProcessEntity_270:
	mov eax, [edx+0x4]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov ecx, [ebp-0x6c]
	mov [esp+0xc], ecx
	mov eax, [esi+0x88]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_no_xmodel_loaded
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0x68]
	jmp CG_ProcessEntity_360
	nop
	
	
CG_ProcessEntity_jumptab_0:
	dd CG_ProcessEntity_370
	dd CG_ProcessEntity_380
	dd CG_ProcessEntity_390
	dd CG_ProcessEntity_400
	dd CG_ProcessEntity_410
	dd CG_ProcessEntity_70
	dd CG_ProcessEntity_420
	dd CG_ProcessEntity_430
	dd CG_ProcessEntity_440
	dd CG_ProcessEntity_450
	dd CG_ProcessEntity_460
	dd CG_ProcessEntity_470
	dd CG_ProcessEntity_480
	dd CG_ProcessEntity_490
	dd CG_ProcessEntity_480


;CG_DObjUpdateInfo(cg_s const*, DObj_s*, unsigned char)
CG_DObjUpdateInfo:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	movzx eax, byte [ebp+0x10]
	mov [ebp+0x10], eax
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x46124]
	mulss xmm0, [_float_0_00100000]
	movss [ebp+0xc], xmm0
	mov [ebp+0x8], edx
	pop ebp
	jmp DObjUpdateClientInfo


;CG_AddPacketEntity(int, int)
CG_AddPacketEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0xc]
	shl eax, 0x2
	mov edx, [ebp+0xc]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea edi, [edx+eax]
	add edi, cg_entitiesArray
	mov eax, [edi+0xd0]
	lea ebx, [edi+0x1c]
	movss xmm0, dword [edi+0x1c]
	movss [ebp-0x38], xmm0
	lea esi, [edi+0x20]
	movss xmm0, dword [edi+0x20]
	movss [ebp-0x3c], xmm0
	lea edx, [edi+0x24]
	mov [ebp-0x4c], edx
	movss xmm0, dword [edi+0x24]
	movss [ebp-0x40], xmm0
	lea edx, [edi+0x28]
	mov [ebp-0x54], edx
	movss xmm0, dword [edi+0x28]
	movss [ebp-0x2c], xmm0
	lea edx, [edi+0x2c]
	mov [ebp-0x48], edx
	movss xmm0, dword [edi+0x2c]
	movss [ebp-0x30], xmm0
	lea edx, [edi+0x30]
	mov [ebp-0x44], edx
	movss xmm0, dword [edi+0x30]
	movss [ebp-0x34], xmm0
	cmp eax, 0x6
	jz CG_AddPacketEntity_10
	cmp eax, 0xd
	jz CG_AddPacketEntity_10
CG_AddPacketEntity_120:
	sub eax, 0x1
	jz CG_AddPacketEntity_20
CG_AddPacketEntity_160:
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_CalcEntityLerpPositions
CG_AddPacketEntity_170:
	movss xmm0, dword [ebp-0x38]
	ucomiss xmm0, [ebx]
	jz CG_AddPacketEntity_30
CG_AddPacketEntity_90:
	mov byte [ebp-0x4d], 0x1
CG_AddPacketEntity_100:
	mov eax, [ebp+0xc]
	lea edx, [eax+eax*2]
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*2]
	shl eax, 0xc
	lea edx, [eax+edx*4]
	add edx, cg_entityOriginArray
	movss xmm0, dword [edx]
	subss xmm0, [ebx]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [esi]
	movss xmm2, dword [edx+0x8]
	mov eax, [ebp-0x4c]
	subss xmm2, [eax]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_256_00000000]
	ja CG_AddPacketEntity_40
CG_AddPacketEntity_140:
	cmp dword [edi+0x18], 0xffffffff
	jz CG_AddPacketEntity_50
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_IsEntityLinked
	test al, al
	jz CG_AddPacketEntity_60
	cmp byte [ebp-0x4d], 0x0
	jnz CG_AddPacketEntity_70
CG_AddPacketEntity_110:
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call Com_GetClientDObj
	mov esi, eax
	test eax, eax
	jz CG_AddPacketEntity_80
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call DObjGetHidePartBits
	lea ebx, [edi+0x1b0]
	mov [esp+0x4], ebx
	mov [esp], esi
	call DObjSetHidePartBits
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call FX_MarkEntUpdateHidePartBits
CG_AddPacketEntity_80:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_ProcessEntity
CG_AddPacketEntity_150:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddPacketEntity_30:
	jp CG_AddPacketEntity_90
	movss xmm0, dword [ebp-0x3c]
	ucomiss xmm0, [esi]
	jnz CG_AddPacketEntity_90
	jp CG_AddPacketEntity_90
	movss xmm0, dword [ebp-0x40]
	mov eax, [ebp-0x4c]
	ucomiss xmm0, [eax]
	jnz CG_AddPacketEntity_90
	jp CG_AddPacketEntity_90
	movss xmm0, dword [ebp-0x2c]
	mov eax, [ebp-0x54]
	ucomiss xmm0, [eax]
	jnz CG_AddPacketEntity_90
	jp CG_AddPacketEntity_90
	movss xmm0, dword [ebp-0x30]
	mov eax, [ebp-0x48]
	ucomiss xmm0, [eax]
	jnz CG_AddPacketEntity_90
	jp CG_AddPacketEntity_90
	movss xmm0, dword [ebp-0x34]
	mov eax, [ebp-0x44]
	ucomiss xmm0, [eax]
	jnz CG_AddPacketEntity_90
	jp CG_AddPacketEntity_90
	mov byte [ebp-0x4d], 0x0
	jmp CG_AddPacketEntity_100
CG_AddPacketEntity_60:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_EntityNeedsLinked
	test al, al
	jz CG_AddPacketEntity_110
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LinkEntity
	jmp CG_AddPacketEntity_110
CG_AddPacketEntity_10:
	cmp dword [edi+0x164], 0xffffff
	jnz CG_AddPacketEntity_120
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_CalcEntityLerpPositions
	movss xmm0, dword [ebp-0x38]
	ucomiss xmm0, [edi+0x1c]
	jnz CG_AddPacketEntity_130
	jp CG_AddPacketEntity_130
	movss xmm0, dword [ebp-0x3c]
	ucomiss xmm0, [edi+0x20]
	jnz CG_AddPacketEntity_130
	jp CG_AddPacketEntity_130
	movss xmm0, dword [ebp-0x40]
	ucomiss xmm0, [edi+0x24]
	jnz CG_AddPacketEntity_130
	jp CG_AddPacketEntity_130
	movss xmm0, dword [ebp-0x2c]
	ucomiss xmm0, [edi+0x28]
	jnz CG_AddPacketEntity_130
	jp CG_AddPacketEntity_130
	movss xmm0, dword [ebp-0x30]
	ucomiss xmm0, [edi+0x2c]
	jnz CG_AddPacketEntity_130
	jp CG_AddPacketEntity_130
	movss xmm0, dword [ebp-0x34]
	ucomiss xmm0, [edi+0x30]
	jnz CG_AddPacketEntity_130
	jp CG_AddPacketEntity_130
	mov byte [ebp-0x4d], 0x0
	jmp CG_AddPacketEntity_140
CG_AddPacketEntity_50:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_IsEntityLinked
	test al, al
	jz CG_AddPacketEntity_150
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_UnlinkEntity
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddPacketEntity_40:
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [esi]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x4c]
	mov eax, [ecx]
	mov [edx+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call Com_GetClientDObj
	test eax, eax
	jz CG_AddPacketEntity_140
	mov [esp], eax
	call DObjGetRadius
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, [_float_16_00000000]
	movss [esp+0xc], xmm0
	mov [esp+0x8], ebx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_LinkDObjEntity
	jmp CG_AddPacketEntity_140
CG_AddPacketEntity_20:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_VehEntityUsingVehicle
	test al, al
	jz CG_AddPacketEntity_160
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_VehSeatTransformForPlayer
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_VehPlayerVehicleSlot
	sub eax, 0x1
	jz CG_AddPacketEntity_170
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x54]
	mov [edx], eax
	mov eax, [ebp-0x24]
	mov [edx+0x4], eax
	mov eax, [ebp-0x20]
	mov [edx+0x8], eax
	jmp CG_AddPacketEntity_170
CG_AddPacketEntity_130:
	mov byte [ebp-0x4d], 0x1
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_UpdateBModelWorldBounds
	jmp CG_AddPacketEntity_140
CG_AddPacketEntity_70:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_LinkEntity
	jmp CG_AddPacketEntity_110


;CG_AddPacketEntities(int)
CG_AddPacketEntities:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov dword [esp+0x4], _cstring_add_packet_ents
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov eax, cgArray
	mov dword [eax+0x50490], 0x0
	test dword [eax+0x461ec], 0x300
	jnz CG_AddPacketEntities_10
	mov dword [ebp-0x124], 0x3ff
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AddClientSideSounds
	mov ecx, cgArray
	mov eax, [ecx+0x24]
	mov esi, [eax+0x2f70]
	test esi, esi
	jg CG_AddPacketEntities_20
CG_AddPacketEntities_30:
	mov dword [ebp-0x120], 0x0
CG_AddPacketEntities_90:
	mov eax, [ebp-0x120]
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddPacketEntities_10:
	mov eax, [eax+0x466d8]
	mov [ebp-0x124], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AddClientSideSounds
	mov ecx, cgArray
	mov eax, [ecx+0x24]
	mov esi, [eax+0x2f70]
	test esi, esi
	jle CG_AddPacketEntities_30
CG_AddPacketEntities_20:
	xor edi, edi
	mov dword [ebp-0x120], 0x0
	mov dword [ebp-0x11c], 0x0
	xor esi, esi
	jmp CG_AddPacketEntities_40
CG_AddPacketEntities_80:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AddPacketEntity
	mov ecx, cgArray
CG_AddPacketEntities_60:
	add edi, 0x1
	add esi, 0xf4
	mov eax, [ecx+0x24]
	cmp [eax+0x2f70], edi
	jle CG_AddPacketEntities_50
CG_AddPacketEntities_40:
	mov ebx, [esi+eax+0x2f78]
	lea eax, [ebx*4]
	mov edx, ebx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea eax, [edx+eax]
	add eax, cg_entitiesArray
	mov edx, [eax+0xd0]
	cmp edx, 0x10
	ja CG_AddPacketEntities_60
	cmp [ebp-0x124], ebx
	jz CG_AddPacketEntities_70
	sub edx, 0x1
	jnz CG_AddPacketEntities_80
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_VehEntityUsingVehicle
	test al, al
	jz CG_AddPacketEntities_80
	mov eax, [ebp-0x11c]
	mov [ebp+eax*4-0x118], ebx
	add eax, 0x1
	mov [ebp-0x11c], eax
	mov ecx, cgArray
	add edi, 0x1
	add esi, 0xf4
	mov eax, [ecx+0x24]
	cmp [eax+0x2f70], edi
	jg CG_AddPacketEntities_40
CG_AddPacketEntities_50:
	mov ebx, [ebp-0x11c]
	test ebx, ebx
	jle CG_AddPacketEntities_90
	xor ebx, ebx
CG_AddPacketEntities_100:
	mov eax, [ebp+ebx*4-0x118]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AddPacketEntity
	add ebx, 0x1
	cmp ebx, [ebp-0x11c]
	jnz CG_AddPacketEntities_100
	mov eax, [ebp-0x120]
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddPacketEntities_70:
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_CalcEntityLerpPositions
	mov dword [ebp-0x120], 0x1
	mov ecx, cgArray
	jmp CG_AddPacketEntities_60
	nop


;CG_GetSkinCacheEntry(cpose_t const*)
CG_GetSkinCacheEntry:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x34
	pop ebp
	ret
	nop


;CG_DObjGetWorldTagPos(cpose_t const*, DObj_s*, unsigned int, float*)
CG_DObjGetWorldTagPos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	mov byte [ebp-0x19], 0xfe
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call DObjGetBoneIndex
	test eax, eax
	jnz CG_DObjGetWorldTagPos_10
CG_DObjGetWorldTagPos_30:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DObjGetWorldTagPos_10:
	movzx esi, byte [ebp-0x19]
	mov [esp+0x4], esi
	mov [esp], edi
	call CL_DObjCreateSkelForBone
	test eax, eax
	jz CG_DObjGetWorldTagPos_20
CG_DObjGetWorldTagPos_40:
	mov [esp], edi
	call DObjGetRotTransArray
	test eax, eax
	jz CG_DObjGetWorldTagPos_30
	shl esi, 0x5
	mov ecx, eax
	add ecx, esi
	jz CG_DObjGetWorldTagPos_30
	lea edx, [ecx+0x10]
	mov eax, cgArray
	movss xmm0, dword [ecx+0x10]
	addss xmm0, [eax+0x49310]
	mov ecx, [ebp+0x14]
	movss [ecx], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [eax+0x49314]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [eax+0x49318]
	movss [ecx+0x8], xmm0
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DObjGetWorldTagPos_20:
	lea ebx, [ebp-0x2c]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call DObjGetHierarchyBits
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DoControllers
	mov [esp+0x4], ebx
	mov [esp], edi
	call DObjCalcSkel
	jmp CG_DObjGetWorldTagPos_40


;CG_PreProcess_GetDObj(int, int, int, XModel*)
CG_PreProcess_GetDObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call Com_GetClientDObj
	mov ebx, eax
	mov eax, [ebp+0xc]
	shl eax, 0x2
	mov edx, [ebp+0xc]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea esi, [edx+eax]
	add esi, cg_entitiesArray
	test ebx, ebx
	jz CG_PreProcess_GetDObj_10
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz CG_PreProcess_GetDObj_20
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_CheckDObjInfoMatches
	test eax, eax
	jz CG_PreProcess_GetDObj_20
CG_PreProcess_GetDObj_80:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_PreProcess_GetDObj_20:
	mov eax, [esi+0x18]
	add eax, 0x1
	cmp eax, 0x1
	jbe CG_PreProcess_GetDObj_30
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_IsEntityLinked
	test al, al
	jnz CG_PreProcess_GetDObj_40
CG_PreProcess_GetDObj_120:
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Phys_ObjDestroy
	mov dword [esi+0x18], 0x0
CG_PreProcess_GetDObj_30:
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_MarkEntDetachAll
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_SafeDObjFree
CG_PreProcess_GetDObj_10:
	mov edx, [ebp+0x14]
	test edx, edx
	jz CG_PreProcess_GetDObj_50
	cmp dword [ebp+0x10], 0xb
	jz CG_PreProcess_GetDObj_60
	cmp dword [ebp+0x10], 0xc
	jz CG_PreProcess_GetDObj_70
CG_PreProcess_GetDObj_90:
	xor eax, eax
CG_PreProcess_GetDObj_100:
	mov [esi+0x1d8], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x20], edx
	mov word [ebp-0x1c], 0x0
	mov byte [ebp-0x1a], 0x1
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_ClientDObjCreate
	mov ebx, eax
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_SetDObjInfo
	mov edx, [esi+0xcc]
	lea edx, [edx+edx*2]
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*2]
	shl eax, 0xc
	lea edx, [eax+edx*4]
	add edx, cg_entityOriginArray
	mov eax, 0x48000000
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	cmp dword [ebp+0x10], 0xc
	jnz CG_PreProcess_GetDObj_80
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3fc00000
	mov dword [esp+0xc], 0x3e4ccccd
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call XAnimSetCompleteGoalWeight
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_PreProcess_GetDObj_60:
	mov eax, [esi+0x190]
	mov [esp], eax
	call BG_GetWeaponDef
	mov ebx, eax
	mov eax, Hunk_AllocXAnimClient
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_mg42
	call XAnimCreateAnims
	mov edi, eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x2
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], _cstring_root
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimBlend
	mov eax, [ebx+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call BG_CreateXAnim
	mov eax, [ebx+0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call BG_CreateXAnim
CG_PreProcess_GetDObj_110:
	test edi, edi
	jz CG_PreProcess_GetDObj_90
	mov dword [esp+0x4], CG_AllocAnimTree
	mov [esp], edi
	call XAnimCreateTree
	jmp CG_PreProcess_GetDObj_100
CG_PreProcess_GetDObj_70:
	mov eax, [esi+0x190]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, Hunk_AllocXAnimClient
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_helicopter
	call XAnimCreateAnims
	mov edi, eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], _cstring_root
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimBlend
	mov dword [esp+0x8], _cstring_bh_rotors
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call BG_CreateXAnim
	jmp CG_PreProcess_GetDObj_110
CG_PreProcess_GetDObj_40:
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_UnlinkEntity
	jmp CG_PreProcess_GetDObj_120
CG_PreProcess_GetDObj_50:
	xor ebx, ebx
	jmp CG_PreProcess_GetDObj_80
	nop


;CG_mg42_PreControllers(DObj_s*, centity_s*)
CG_mg42_PreControllers:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0xc]
	lea eax, [esi+0x64]
	mov [ebp-0x1c], eax
	lea ebx, [esi+0xcc]
	mov edi, cgArray
	test dword [edi+0x461ec], 0x300
	jz CG_mg42_PreControllers_10
	mov eax, [edi+0x466d8]
	cmp eax, [esi+0xcc]
	jz CG_mg42_PreControllers_20
CG_mg42_PreControllers_10:
	xor edx, edx
	xor eax, eax
CG_mg42_PreControllers_80:
	mov [esi+0x4c], al
	test dl, dl
	jz CG_mg42_PreControllers_30
	lea eax, [edi+0x4d360]
	mov [esi+0x40], eax
	mov dword [esi+0x8], 0x0
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0x2c], xmm0
	movaps xmm2, xmm0
CG_mg42_PreControllers_70:
	mov eax, [ebp-0x1c]
	movss xmm1, dword [eax+0x54]
	movss xmm0, dword [ebx+0x5c]
	subss xmm0, xmm1
	mulss xmm0, [_float_0_00277778]
	addss xmm2, xmm0
	movss [esp], xmm2
	movss [ebp-0x48], xmm0
	movss [ebp-0x58], xmm1
	call floorf
	fstp dword [ebp-0x28]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x28]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [edi+0x46120]
	movss xmm1, dword [ebp-0x58]
	addss xmm1, xmm0
	movss [esi+0x48], xmm1
	lea eax, [esi+0x4d]
	mov [esp+0x8], eax
	mov ebx, scr_const
	movzx eax, word [ebx+0x86]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DObjGetBoneIndex
	lea eax, [esi+0x4e]
	mov [esp+0x8], eax
	movzx eax, word [ebx+0x88]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DObjGetBoneIndex
	lea eax, [esi+0x4f]
	mov [esp+0x8], eax
	movzx eax, word [ebx+0x90]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DObjGetBoneIndex
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DObjGetTree
	test dword [edi+0x461ec], 0x300
	jz CG_mg42_PreControllers_40
	mov eax, [edi+0x466d8]
	cmp eax, [esi+0xcc]
	jz CG_mg42_PreControllers_50
CG_mg42_PreControllers_40:
	test byte [esi+0xd4], 0x40
	jz CG_mg42_PreControllers_50
	mov edx, 0x2
CG_mg42_PreControllers_60:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov eax, 0x3f800000
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x3dcccccd
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call XAnimSetGoalWeightKnobAll
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_mg42_PreControllers_50:
	mov edx, 0x1
	jmp CG_mg42_PreControllers_60
CG_mg42_PreControllers_30:
	mov eax, [ebp-0x1c]
	movss xmm2, dword [eax+0x4c]
	movss xmm0, dword [ebx+0x54]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movss xmm1, dword [_float_0_50000000]
	movss [ebp-0x2c], xmm1
	addss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x48], xmm0
	movss [ebp-0x68], xmm2
	call floorf
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x20]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [edi+0x46120]
	movss xmm2, dword [ebp-0x68]
	addss xmm2, xmm0
	movss [esi+0x40], xmm2
	mov eax, [ebp-0x1c]
	movss xmm2, dword [eax+0x50]
	movss xmm0, dword [ebx+0x58]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movss xmm1, dword [ebp-0x2c]
	addss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x48], xmm0
	movss [ebp-0x68], xmm2
	call floorf
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x24]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [edi+0x46120]
	movss xmm2, dword [ebp-0x68]
	addss xmm2, xmm0
	movss [esi+0x44], xmm2
	movss xmm2, dword [ebp-0x2c]
	jmp CG_mg42_PreControllers_70
CG_mg42_PreControllers_20:
	mov edx, 0x1
	mov eax, 0x1
	jmp CG_mg42_PreControllers_80
	nop


;CG_DObjGetWorldTagMatrix(cpose_t const*, DObj_s*, unsigned int, float (*) [3], float*)
CG_DObjGetWorldTagMatrix:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0xc]
	mov byte [ebp-0x19], 0xfe
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call DObjGetBoneIndex
	test eax, eax
	jnz CG_DObjGetWorldTagMatrix_10
CG_DObjGetWorldTagMatrix_30:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DObjGetWorldTagMatrix_10:
	movzx esi, byte [ebp-0x19]
	mov [esp+0x4], esi
	mov [esp], edi
	call CL_DObjCreateSkelForBone
	test eax, eax
	jz CG_DObjGetWorldTagMatrix_20
CG_DObjGetWorldTagMatrix_40:
	mov [esp], edi
	call DObjGetRotTransArray
	test eax, eax
	jz CG_DObjGetWorldTagMatrix_30
	shl esi, 0x5
	mov ecx, eax
	add ecx, esi
	jz CG_DObjGetWorldTagMatrix_30
	movss xmm1, dword [ecx+0x1c]
	movaps xmm4, xmm1
	mulss xmm4, [ecx]
	movaps xmm6, xmm1
	mulss xmm6, [ecx+0x4]
	mulss xmm1, [ecx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	movss [ebp-0x44], xmm0
	movss xmm3, dword [ecx+0x4]
	movaps xmm5, xmm4
	mulss xmm5, xmm3
	movss xmm2, dword [ecx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ecx+0xc]
	mulss xmm4, xmm0
	mulss xmm3, xmm6
	movss [ebp-0x3c], xmm3
	movaps xmm7, xmm6
	mulss xmm7, xmm2
	mulss xmm6, xmm0
	movaps xmm3, xmm1
	mulss xmm3, xmm2
	mulss xmm1, xmm0
	movss [ebp-0x4c], xmm1
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, xmm3
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	mov eax, [ebp+0x14]
	movss [eax], xmm1
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x40]
	subss xmm0, xmm6
	movss [eax+0x8], xmm0
	mov eax, [ebp+0x14]
	add eax, 0xc
	subss xmm5, [ebp-0x4c]
	mov edx, [ebp+0x14]
	movss [edx+0xc], xmm5
	addss xmm3, [ebp-0x44]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movss [eax+0x4], xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm7
	movss [eax+0x8], xmm0
	mov eax, edx
	add eax, 0x18
	addss xmm6, [ebp-0x40]
	movss [edx+0x18], xmm6
	subss xmm7, xmm4
	movss [eax+0x4], xmm7
	movss xmm1, dword [ebp-0x44]
	addss xmm1, [ebp-0x3c]
	subss xmm2, xmm1
	movss [eax+0x8], xmm2
	lea edx, [ecx+0x10]
	mov eax, cgArray
	movss xmm0, dword [ecx+0x10]
	addss xmm0, [eax+0x49310]
	mov ecx, [ebp+0x18]
	movss [ecx], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [eax+0x49314]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [eax+0x49318]
	movss [ecx+0x8], xmm0
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DObjGetWorldTagMatrix_20:
	lea ebx, [ebp-0x2c]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call DObjGetHierarchyBits
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DoControllers
	mov [esp+0x4], ebx
	mov [esp], edi
	call DObjCalcSkel
	jmp CG_DObjGetWorldTagMatrix_40


;CG_GetPoseLightingHandle(cpose_t const*)
CG_GetPoseLightingHandle:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;CG_Player_PreControllers(DObj_s*, centity_s*)
CG_Player_PreControllers:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	add ebx, 0xcc
	mov edx, [ebp+0xc]
	mov eax, [edx+0xd0]
	mov [edx+0x2], al
	mov edx, [ebx+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4+0xe9f30]
	lea ecx, [eax+0x4]
	mov [ebp-0x1c], ecx
	mov eax, [eax+0x4]
	test eax, eax
	jnz CG_Player_PreControllers_10
	mov eax, [ebp+0xc]
	mov dword [eax+0x40], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_Player_PreControllers_10:
	mov eax, [edx+0x46124]
	mov [esp+0x8], eax
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_Player_DoControllersSetup
	xor edi, edi
	mov esi, controller_names
	mov ebx, [ebp+0xc]
	add ebx, 0x44
CG_Player_PreControllers_20:
	mov [esp+0x8], ebx
	mov eax, [esi]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call DObjGetBoneIndex
	add edi, 0x1
	add ebx, 0x1
	add esi, 0x4
	cmp edi, 0x6
	jnz CG_Player_PreControllers_20
	mov eax, [ebp-0x1c]
	add eax, 0x3f8
	mov edx, [ebp+0xc]
	mov [edx+0x40], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_PredictiveSkinCEntity(GfxSceneEntity*)
CG_PredictiveSkinCEntity:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x74]
	mov eax, [edx+0x8]
	cmp eax, 0x1
	jz CG_PredictiveSkinCEntity_10
	cmp eax, 0x2
	jz CG_PredictiveSkinCEntity_20
	pop ebp
	ret
CG_PredictiveSkinCEntity_20:
	mov dword [edx+0x8], 0x0
	mov [ebp+0x8], ecx
	pop ebp
	jmp R_SkinGfxEntityDelayed
CG_PredictiveSkinCEntity_10:
	mov dword [edx+0x8], 0x0
	mov [ebp+0x8], ecx
	pop ebp
	jmp R_UpdateXModelBoundsDelayed


;CG_SetFrameInterpolation(int)
CG_SetFrameInterpolation:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, cgArray
	mov eax, [ecx+0x20]
	mov edx, [eax+0x8]
	mov eax, [ecx+0x24]
	mov eax, [eax+0x8]
	mov ebx, eax
	sub ebx, edx
	jnz CG_SetFrameInterpolation_10
	mov dword [ecx+0x46120], 0x0
CG_SetFrameInterpolation_20:
	pop ebx
	pop ebp
	ret
CG_SetFrameInterpolation_10:
	mov eax, [ecx+0x46128]
	sub eax, edx
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, ebx
	divss xmm0, xmm1
	movss [ecx+0x46120], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jae CG_SetFrameInterpolation_20
	jp CG_SetFrameInterpolation_20
	xor eax, eax
	mov [ecx+0x46120], eax
	pop ebx
	pop ebp
	ret
	nop


;CG_AdjustPositionForMover(int, float const*, int, int, int, float*, float*)
CG_AdjustPositionForMover:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edx, [ebp+0x10]
	mov edi, [ebp+0x20]
	test edi, edi
	jz CG_AdjustPositionForMover_10
	xor eax, eax
	mov [edi], eax
	mov [edi+0x4], eax
	mov [edi+0x8], eax
CG_AdjustPositionForMover_10:
	lea eax, [edx-0x1]
	cmp eax, 0x3fc
	ja CG_AdjustPositionForMover_20
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea ebx, [edx+eax]
	add ebx, cg_entitiesArray
	mov eax, [ebx+0xd0]
	cmp eax, 0x6
	jz CG_AdjustPositionForMover_30
	cmp eax, 0xd
	jz CG_AdjustPositionForMover_30
CG_AdjustPositionForMover_20:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov edx, [ebp+0x1c]
	mov [edx], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov edx, [ebp+0x1c]
	mov [edx+0x4], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	mov edx, [ebp+0x1c]
	mov [edx+0x8], eax
CG_AdjustPositionForMover_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AdjustPositionForMover_30:
	lea esi, [ebx+0x68]
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_EvaluateTrajectory
	add ebx, 0x8c
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_EvaluateTrajectory
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_EvaluateTrajectory
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_EvaluateTrajectory
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, [ebp-0x20]
	movss xmm2, dword [ebp-0x28]
	subss xmm2, [ebp-0x1c]
	movss xmm5, dword [ebp-0x48]
	subss xmm5, [ebp-0x3c]
	movss xmm4, dword [ebp-0x44]
	subss xmm4, [ebp-0x38]
	movss xmm3, dword [ebp-0x40]
	subss xmm3, [ebp-0x34]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x24]
	mov eax, [ebp+0xc]
	addss xmm0, [eax]
	mov edx, [ebp+0x1c]
	movss [edx], xmm0
	addss xmm1, [eax+0x4]
	movss [edx+0x4], xmm1
	addss xmm2, [eax+0x8]
	movss [edx+0x8], xmm2
	test edi, edi
	jz CG_AdjustPositionForMover_40
	movss [edi], xmm5
	movss [edi+0x4], xmm4
	movss [edi+0x8], xmm3
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_DObjGetWorldBoneMatrix(cpose_t const*, DObj_s*, int, float (*) [3], float*)
CG_DObjGetWorldBoneMatrix:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov [esp+0x4], esi
	mov [esp], edi
	call CL_DObjCreateSkelForBone
	test eax, eax
	jz CG_DObjGetWorldBoneMatrix_10
	mov [esp], edi
	call DObjGetRotTransArray
	test eax, eax
	jz CG_DObjGetWorldBoneMatrix_20
CG_DObjGetWorldBoneMatrix_30:
	shl esi, 0x5
	mov ecx, eax
	add ecx, esi
	jz CG_DObjGetWorldBoneMatrix_20
	movss xmm1, dword [ecx+0x1c]
	movaps xmm4, xmm1
	mulss xmm4, [ecx]
	movaps xmm6, xmm1
	mulss xmm6, [ecx+0x4]
	mulss xmm1, [ecx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	movss [ebp-0x34], xmm0
	movss xmm3, dword [ecx+0x4]
	movaps xmm5, xmm4
	mulss xmm5, xmm3
	movss xmm2, dword [ecx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ecx+0xc]
	mulss xmm4, xmm0
	mulss xmm3, xmm6
	movss [ebp-0x2c], xmm3
	movaps xmm7, xmm6
	mulss xmm7, xmm2
	mulss xmm6, xmm0
	movaps xmm3, xmm1
	mulss xmm3, xmm2
	mulss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movss xmm0, dword [ebp-0x2c]
	addss xmm0, xmm3
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	mov eax, [ebp+0x14]
	movss [eax], xmm1
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm6
	movss [eax+0x8], xmm0
	mov eax, [ebp+0x14]
	add eax, 0xc
	subss xmm5, [ebp-0x3c]
	mov edx, [ebp+0x14]
	movss [edx+0xc], xmm5
	addss xmm3, [ebp-0x34]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movss [eax+0x4], xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm7
	movss [eax+0x8], xmm0
	mov eax, edx
	add eax, 0x18
	addss xmm6, [ebp-0x30]
	movss [edx+0x18], xmm6
	subss xmm7, xmm4
	movss [eax+0x4], xmm7
	movss xmm1, dword [ebp-0x34]
	addss xmm1, [ebp-0x2c]
	subss xmm2, xmm1
	movss [eax+0x8], xmm2
	lea edx, [ecx+0x10]
	mov eax, cgArray
	movss xmm0, dword [ecx+0x10]
	addss xmm0, [eax+0x49310]
	mov ecx, [ebp+0x18]
	movss [ecx], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [eax+0x49314]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [eax+0x49318]
	movss [ecx+0x8], xmm0
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DObjGetWorldBoneMatrix_10:
	lea ebx, [ebp-0x28]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call DObjGetHierarchyBits
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DoControllers
	mov [esp+0x4], ebx
	mov [esp], edi
	call DObjCalcSkel
	mov [esp], edi
	call DObjGetRotTransArray
	test eax, eax
	jnz CG_DObjGetWorldBoneMatrix_30
CG_DObjGetWorldBoneMatrix_20:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_CalcEntityLerpPositions(int, centity_s*)
CG_CalcEntityLerpPositions:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0xc]
	mov eax, [esi+0x68]
	cmp eax, 0x8
	jz CG_CalcEntityLerpPositions_10
	cmp eax, 0x1
	jz CG_CalcEntityLerpPositions_20
	cmp eax, 0x3
	jnz CG_CalcEntityLerpPositions_30
	cmp dword [esi+0xcc], 0x3f
	jle CG_CalcEntityLerpPositions_40
CG_CalcEntityLerpPositions_30:
	lea eax, [esi+0x1c]
	mov [ebp-0x64], eax
	lea edx, [esi+0x68]
	mov [ebp-0x60], edx
	mov [esp+0x8], eax
	mov ebx, cgArray
	mov eax, [ebx+0x46128]
	mov [esp+0x4], eax
	mov [esp], edx
	call BG_EvaluateTrajectory
	lea edi, [esi+0x28]
	mov [esp+0x8], edi
	mov eax, [ebx+0x46128]
	mov [esp+0x4], eax
	lea eax, [esi+0x8c]
	mov [esp], eax
	call BG_EvaluateTrajectory
	mov eax, [esi+0xd0]
	cmp eax, 0x1
	jz CG_CalcEntityLerpPositions_50
	cmp eax, 0x2
	jz CG_CalcEntityLerpPositions_60
CG_CalcEntityLerpPositions_160:
	mov ebx, cgArray
	lea eax, [ebx+0x490a0]
	cmp esi, eax
	jz CG_CalcEntityLerpPositions_70
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0x64]
	mov [esp+0x14], eax
	mov eax, [ebx+0x46128]
	mov [esp+0x10], eax
	mov eax, [ebx+0x20]
	mov eax, [eax+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x148]
	mov [esp+0x8], eax
	mov edx, [ebp-0x64]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AdjustPositionForMover
CG_CalcEntityLerpPositions_70:
	mov edx, [ebp-0x60]
	mov [esp], edx
	call CG_IsRagdollTrajectory
	test al, al
	jz CG_CalcEntityLerpPositions_80
	mov edx, [esi+0x10]
	test edx, edx
	jnz CG_CalcEntityLerpPositions_90
	mov eax, [esi+0x14]
	test eax, eax
	jnz CG_CalcEntityLerpPositions_100
	mov ecx, [ebx+0x5052c]
	test ecx, ecx
	jz CG_CalcEntityLerpPositions_110
CG_CalcEntityLerpPositions_210:
	cmp dword [esi+0xd0], 0x2
	jz CG_CalcEntityLerpPositions_120
CG_CalcEntityLerpPositions_250:
	mov ebx, 0x1
	mov eax, 0x1
CG_CalcEntityLerpPositions_260:
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, [esi+0xcc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_CreateRagdollForDObj
	test bl, bl
	jnz CG_CalcEntityLerpPositions_130
	mov [esi+0x14], eax
	mov edx, [esi+0x10]
CG_CalcEntityLerpPositions_200:
	mov byte [esi+0xc], 0x1
	test edx, edx
	jz CG_CalcEntityLerpPositions_100
CG_CalcEntityLerpPositions_90:
	mov eax, [esi+0x14]
	test eax, eax
	jnz CG_CalcEntityLerpPositions_140
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov [esp], edx
	call Ragdoll_GetRootOrigin
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CalcEntityLerpPositions_20:
	cmp dword [esi+0xd8], 0x8
	jz CG_CalcEntityLerpPositions_30
CG_CalcEntityLerpPositions_40:
	mov eax, cgArray
	mov edx, esi
	call CG_InterpolateEntityPosition
CG_CalcEntityLerpPositions_80:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CalcEntityLerpPositions_10:
	lea ecx, [esi+0xcc]
	cmp byte [esi+0x1c0], 0x0
	jz CG_CalcEntityLerpPositions_80
	test byte [ecx+0x8], 0x20
	jnz CG_CalcEntityLerpPositions_80
	cmp dword [ecx+0x98], 0xffffff
	jz CG_CalcEntityLerpPositions_80
	mov edx, [ecx+0x88]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0x294]
	mov [esp+0xc], eax
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PreProcess_GetDObj
	test eax, eax
	jz CG_CalcEntityLerpPositions_80
	mov eax, [esi+0x18]
	test eax, eax
	jnz CG_CalcEntityLerpPositions_150
	mov edx, [esi+0xdc]
	add edx, 0x3e8
	mov eax, cgArray
	cmp [eax+0x46128], edx
	jle CG_CalcEntityLerpPositions_150
	mov dword [esi+0x18], 0xffffffff
	jmp CG_CalcEntityLerpPositions_80
CG_CalcEntityLerpPositions_140:
	mov edx, [ebp-0x64]
	mov [esp+0x4], edx
	mov [esp], eax
	call Ragdoll_GetRootOrigin
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CalcEntityLerpPositions_50:
	mov edx, [esi+0x158]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4+0xe9f30]
CG_CalcEntityLerpPositions_190:
	lea ebx, [eax+0x4]
	cvtsi2ss xmm0, dword [esi+0x124]
	movss [ebx+0x3dc], xmm0
	lea ecx, [eax+0x3e8]
	mov edx, [esi+0x28]
	mov [eax+0x3e8], edx
	mov eax, [edi+0x4]
	mov [ecx+0x4], eax
	mov eax, [edi+0x8]
	mov [ecx+0x8], eax
	xor eax, eax
	mov [esi+0x28], eax
	mov [esi+0x30], eax
	mov eax, [esi+0x120]
	mov [ebx+0x3e0], eax
	jmp CG_CalcEntityLerpPositions_160
CG_CalcEntityLerpPositions_150:
	mov eax, [esi+0x18]
	test eax, eax
	jz CG_CalcEntityLerpPositions_170
CG_CalcEntityLerpPositions_240:
	cmp dword [esi+0x18], 0xffffffff
	jz CG_CalcEntityLerpPositions_180
	mov dword [esp], 0xb
	call Sys_EnterCriticalSection
	lea ebx, [ebp-0x4c]
	mov [esp+0xc], ebx
	lea eax, [esi+0x1c]
	mov [esp+0x8], eax
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Phys_ObjGetInterpolatedState
	mov dword [esp], 0xb
	call Sys_LeaveCriticalSection
	lea eax, [esi+0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call UnitQuatToAngles
	jmp CG_CalcEntityLerpPositions_80
CG_CalcEntityLerpPositions_100:
	mov edi, [esi+0x14]
	test edi, edi
	jnz CG_CalcEntityLerpPositions_90
	jmp CG_CalcEntityLerpPositions_80
CG_CalcEntityLerpPositions_60:
	mov edx, [esi+0xcc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgsArray
	lea eax, [edx+eax*4-0x11f40]
	jmp CG_CalcEntityLerpPositions_190
CG_CalcEntityLerpPositions_130:
	mov [esi+0x10], eax
	mov edx, eax
	jmp CG_CalcEntityLerpPositions_200
CG_CalcEntityLerpPositions_110:
	mov edx, [esi+0xd4]
	shr edx, 0x13
	and edx, 0x1
	jmp CG_CalcEntityLerpPositions_210
CG_CalcEntityLerpPositions_180:
	lea ecx, [esi+0x1c]
	lea edx, [esi+0x74]
	mov eax, [esi+0x74]
	mov [esi+0x1c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea ecx, [esi+0x28]
	lea edx, [esi+0x98]
	mov eax, [esi+0x98]
	mov [esi+0x28], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	jmp CG_CalcEntityLerpPositions_80
CG_CalcEntityLerpPositions_170:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x28], 0x0
	lea edx, [esi+0x74]
	mov eax, [esi+0x74]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x4c]
	mov [esp+0x4], edx
	lea eax, [esi+0x98]
	mov [esp], eax
	call AnglesToQuat
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [esi+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	mov ebx, eax
	mov [esp], eax
	call DObjGetPhysPreset
	mov edi, eax
	test eax, eax
	jz CG_CalcEntityLerpPositions_220
	mov dword [esp], 0xb
	call Sys_EnterCriticalSection
	mov [esp+0x10], edi
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea edx, [ebp-0x4c]
	mov [esp+0x8], edx
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Phys_ObjCreate
	mov [ebp-0x5c], eax
	test eax, eax
	jnz CG_CalcEntityLerpPositions_230
	mov [esp], ebx
	call DObjGetName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_create
	mov dword [esp], 0x1
	call Com_PrintWarning
	mov dword [esi+0x18], 0xffffffff
	mov dword [esp], 0xb
	call Sys_LeaveCriticalSection
	jmp CG_CalcEntityLerpPositions_240
CG_CalcEntityLerpPositions_120:
	mov eax, [esi+0x158]
	cmp eax, [ebx]
	jnz CG_CalcEntityLerpPositions_250
	test ecx, ecx
	jz CG_CalcEntityLerpPositions_250
	xor ebx, ebx
	xor eax, eax
	jmp CG_CalcEntityLerpPositions_260
CG_CalcEntityLerpPositions_230:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call DObjPhysicsSetCollisionFromXModel
	lea eax, [esi+0xa4]
	movss xmm3, dword [esi+0xa4]
	movss [ebp-0x3c], xmm3
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x38], xmm1
	movss xmm2, dword [eax+0x8]
	movss [ebp-0x34], xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [g_zero+0x50]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb CG_CalcEntityLerpPositions_270
	movss xmm1, dword [_float_1_00000000]
CG_CalcEntityLerpPositions_280:
	mulss xmm3, xmm1
	movss [ebp-0x3c], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mulss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	mov eax, [edi+0x14]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm2
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [esi+0x80]
	mov [esp+0x8], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Phys_ObjBulletImpact
	mov dword [esp], 0xb
	call Sys_LeaveCriticalSection
	mov edx, [ebp-0x5c]
	mov [esi+0x18], edx
	jmp CG_CalcEntityLerpPositions_240
CG_CalcEntityLerpPositions_220:
	mov dword [esi+0x18], 0xffffffff
	mov [esp], ebx
	call DObjGetName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_create1
	mov dword [esp], 0x1
	call Com_PrintWarning
	jmp CG_CalcEntityLerpPositions_240
CG_CalcEntityLerpPositions_270:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp CG_CalcEntityLerpPositions_280
	add [eax], al


;CG_ProcessClientNoteTracks(cg_s*, int)
CG_ProcessClientNoteTracks:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	cmp edi, 0x3f
	jbe CG_ProcessClientNoteTracks_10
CG_ProcessClientNoteTracks_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ProcessClientNoteTracks_10:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call DObjGetClientNotifyList
	mov [ebp-0x2c], eax
	test eax, eax
	jle CG_ProcessClientNoteTracks_20
	xor esi, esi
	xor ebx, ebx
	lea eax, [edi+edi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [edi+eax*2]
	mov edx, [ebp+0x8]
	lea edi, [edx+eax*4]
	jmp CG_ProcessClientNoteTracks_30
CG_ProcessClientNoteTracks_40:
	add esi, 0x1
	add ebx, 0xc
	cmp [ebp-0x2c], esi
	jz CG_ProcessClientNoteTracks_20
CG_ProcessClientNoteTracks_30:
	mov eax, ebx
	add eax, [ebp-0x1c]
	cmp dword [eax+0x4], 0x1
	jnz CG_ProcessClientNoteTracks_40
	mov dword [esp+0x4], _cstring_anim_gunhand__le
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CG_ProcessClientNoteTracks_50
	mov dword [edi+0xea324], 0x1
	mov dword [edi+0xea328], 0x1
	jmp CG_ProcessClientNoteTracks_40
CG_ProcessClientNoteTracks_50:
	mov dword [esp+0x4], _cstring_anim_gunhand__ri
	mov eax, [ebp-0x1c]
	mov eax, [ebx+eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CG_ProcessClientNoteTracks_40
	mov dword [edi+0xea324], 0x0
	mov dword [edi+0xea328], 0x1
	jmp CG_ProcessClientNoteTracks_40


;CG_UpdateBModelWorldBounds(int, centity_s*, int)
CG_UpdateBModelWorldBounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1fc
	mov edx, [ebp+0xc]
	mov eax, [edx+0x154]
	mov [esp], eax
	call R_GetBrushModel
	mov [ebp-0x1b0], eax
	mov edx, eax
	add edx, 0x18
	mov ecx, eax
	mov eax, [eax+0x18]
	mov [ebp-0x168], eax
	mov eax, [edx+0x4]
	mov [ebp-0x164], eax
	mov eax, [edx+0x8]
	mov [ebp-0x160], eax
	mov eax, [edx+0xc]
	mov [ebp-0x15c], eax
	add edx, 0xc
	mov eax, [ecx+0x24]
	mov [ebp-0x158], eax
	mov eax, [edx+0x4]
	mov [ebp-0x154], eax
	mov eax, [edx+0x8]
	mov [ebp-0x150], eax
	mov eax, [edx+0xc]
	mov [ebp-0x14c], eax
	lea eax, [ebp-0x18c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	add eax, 0x28
	mov [esp], eax
	call AnglesToAxis
	mov eax, [ebp+0xc]
	add eax, 0x1c
	movss xmm0, dword [ebp-0x18c]
	movss [ebp-0x1b4], xmm0
	movss [ebp-0x38], xmm0
	movss xmm1, dword [ebp-0x188]
	movss [ebp-0x1b8], xmm1
	movss [ebp-0x34], xmm1
	movss xmm2, dword [ebp-0x184]
	movss [ebp-0x1bc], xmm2
	movss [ebp-0x30], xmm2
	mov dword [ebp-0x2c], 0x0
	movss xmm1, dword [ebp-0x180]
	movss [ebp-0x48], xmm1
	movss xmm2, dword [ebp-0x17c]
	movss [ebp-0x44], xmm2
	movss xmm3, dword [ebp-0x178]
	movss [ebp-0x40], xmm3
	mov dword [ebp-0x3c], 0x0
	movss xmm4, dword [ebp-0x174]
	movss [ebp-0x58], xmm4
	movss xmm5, dword [ebp-0x170]
	movss [ebp-0x54], xmm5
	movss xmm6, dword [ebp-0x16c]
	movss [ebp-0x50], xmm6
	mov dword [ebp-0x4c], 0x0
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx+0x1c]
	movss [ebp-0x1c0], xmm0
	movss [ebp-0x28], xmm0
	movss xmm7, dword [eax+0x4]
	movss [ebp-0x1c4], xmm7
	movss [ebp-0x24], xmm7
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x1c8], xmm0
	movss [ebp-0x20], xmm0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x168]
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov eax, [ebp-0x158]
	mov [ebp-0x98], eax
	mov [ebp-0x94], eax
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	movss xmm7, dword [g_zero]
	xor eax, eax
	ucomiss xmm7, [ebp-0x1b4]
	setbe al
	sub eax, 0x1
	mov [ebp-0x1ac], eax
	mov [ebp-0x108], eax
	movss xmm0, dword [g_zero+0x4]
	xor ebx, ebx
	ucomiss xmm0, [ebp-0x1b8]
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x104], ebx
	movss xmm7, dword [g_zero+0x8]
	xor ecx, ecx
	ucomiss xmm7, [ebp-0x1bc]
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x100], ecx
	movss xmm0, dword [g_zero+0xc]
	pxor xmm7, xmm7
	ucomiss xmm0, xmm7
	setbe byte [ebp-0x1e9]
	movzx edi, byte [ebp-0x1e9]
	sub edi, 0x1
	mov [ebp-0xfc], edi
	not eax
	mov [ebp-0x1cc], eax
	and eax, [ebp-0x88]
	mov edx, [ebp-0x1ac]
	and edx, [ebp-0x98]
	or eax, edx
	mov [ebp-0xa8], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1d0], eax
	and eax, [ebp-0x84]
	mov edx, [ebp-0x94]
	and edx, ebx
	or eax, edx
	mov [ebp-0xa4], eax
	mov edx, ecx
	not edx
	mov [ebp-0x1d4], edx
	mov eax, edx
	and eax, [ebp-0x80]
	mov edx, [ebp-0x90]
	and edx, ecx
	or eax, edx
	mov [ebp-0xa0], eax
	mov esi, edi
	not esi
	mov eax, [ebp-0x7c]
	and eax, esi
	mov edx, [ebp-0x8c]
	and edx, edi
	or eax, edx
	mov [ebp-0x9c], eax
	mov eax, [ebp-0x98]
	and [ebp-0x1cc], eax
	mov edx, [ebp-0x88]
	and [ebp-0x1ac], edx
	mov eax, [ebp-0x1ac]
	or [ebp-0x1cc], eax
	mov edx, [ebp-0x1cc]
	mov [ebp-0xd8], edx
	mov eax, [ebp-0x94]
	and [ebp-0x1d0], eax
	and ebx, [ebp-0x84]
	or [ebp-0x1d0], ebx
	mov edx, [ebp-0x1d0]
	mov [ebp-0xd4], edx
	mov eax, [ebp-0x90]
	and [ebp-0x1d4], eax
	and ecx, [ebp-0x80]
	or [ebp-0x1d4], ecx
	mov edx, [ebp-0x1d4]
	mov [ebp-0xd0], edx
	and esi, [ebp-0x8c]
	and edi, [ebp-0x7c]
	or esi, edi
	mov [ebp-0xcc], esi
	mov eax, [ebp-0x164]
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov eax, [ebp-0x154]
	mov [ebp-0x98], eax
	mov [ebp-0x94], eax
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	movss xmm0, dword [g_zero]
	xor eax, eax
	ucomiss xmm0, xmm1
	setbe al
	sub eax, 0x1
	mov [ebp-0x1a8], eax
	mov [ebp-0x118], eax
	movss xmm7, dword [g_zero+0x4]
	xor ebx, ebx
	ucomiss xmm7, xmm2
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x114], ebx
	movss xmm0, dword [g_zero+0x8]
	xor ecx, ecx
	ucomiss xmm0, xmm3
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x110], ecx
	movzx edi, byte [ebp-0x1e9]
	sub edi, 0x1
	mov [ebp-0x10c], edi
	not eax
	mov [ebp-0x1d8], eax
	and eax, [ebp-0x88]
	mov edx, [ebp-0x1a8]
	and edx, [ebp-0x98]
	or eax, edx
	mov [ebp-0xb8], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1dc], eax
	and eax, [ebp-0x84]
	mov edx, [ebp-0x94]
	and edx, ebx
	or eax, edx
	mov [ebp-0xb4], eax
	mov edx, ecx
	not edx
	mov [ebp-0x1e0], edx
	mov eax, edx
	and eax, [ebp-0x80]
	mov edx, [ebp-0x90]
	and edx, ecx
	or eax, edx
	mov [ebp-0xb0], eax
	mov esi, edi
	not esi
	mov eax, [ebp-0x7c]
	and eax, esi
	mov edx, [ebp-0x8c]
	and edx, edi
	or eax, edx
	mov [ebp-0xac], eax
	mov eax, [ebp-0x98]
	and [ebp-0x1d8], eax
	mov edx, [ebp-0x88]
	and [ebp-0x1a8], edx
	mov eax, [ebp-0x1a8]
	or [ebp-0x1d8], eax
	mov edx, [ebp-0x1d8]
	mov [ebp-0xe8], edx
	mov eax, [ebp-0x94]
	and [ebp-0x1dc], eax
	and ebx, [ebp-0x84]
	or [ebp-0x1dc], ebx
	mov edx, [ebp-0x1dc]
	mov [ebp-0xe4], edx
	mov eax, [ebp-0x90]
	and [ebp-0x1e0], eax
	and ecx, [ebp-0x80]
	or [ebp-0x1e0], ecx
	mov edx, [ebp-0x1e0]
	mov [ebp-0xe0], edx
	and esi, [ebp-0x8c]
	and edi, [ebp-0x7c]
	or esi, edi
	mov [ebp-0xdc], esi
	mov eax, [ebp-0x160]
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov eax, [ebp-0x150]
	mov [ebp-0x98], eax
	mov [ebp-0x94], eax
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	movss xmm0, dword [g_zero]
	xor eax, eax
	ucomiss xmm0, xmm4
	setbe al
	sub eax, 0x1
	mov [ebp-0x1a4], eax
	mov [ebp-0x128], eax
	xor ebx, ebx
	ucomiss xmm7, xmm5
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x124], ebx
	movss xmm7, dword [g_zero+0x8]
	xor ecx, ecx
	ucomiss xmm7, xmm6
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x120], ecx
	movzx eax, byte [ebp-0x1e9]
	sub eax, 0x1
	mov [ebp-0x1a0], eax
	mov [ebp-0x11c], eax
	mov edx, [ebp-0x1a4]
	not edx
	mov [ebp-0x1e4], edx
	mov eax, edx
	and eax, [ebp-0x88]
	mov edx, [ebp-0x1a4]
	and edx, [ebp-0x98]
	or eax, edx
	mov [ebp-0xc8], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1e8], eax
	and eax, [ebp-0x84]
	mov edx, [ebp-0x94]
	and edx, ebx
	or eax, edx
	mov [ebp-0xc4], eax
	mov edi, ecx
	not edi
	mov eax, [ebp-0x80]
	and eax, edi
	mov edx, [ebp-0x90]
	and edx, ecx
	or eax, edx
	mov [ebp-0xc0], eax
	mov esi, [ebp-0x1a0]
	not esi
	mov eax, [ebp-0x7c]
	and eax, esi
	mov edx, [ebp-0x1a0]
	and edx, [ebp-0x8c]
	or eax, edx
	mov [ebp-0xbc], eax
	mov edx, [ebp-0x98]
	and [ebp-0x1e4], edx
	mov eax, [ebp-0x88]
	and [ebp-0x1a4], eax
	mov edx, [ebp-0x1a4]
	or [ebp-0x1e4], edx
	mov eax, [ebp-0x1e4]
	mov [ebp-0xf8], eax
	mov edx, [ebp-0x94]
	and [ebp-0x1e8], edx
	and ebx, [ebp-0x84]
	or [ebp-0x1e8], ebx
	mov eax, [ebp-0x1e8]
	mov [ebp-0xf4], eax
	and edi, [ebp-0x90]
	and ecx, [ebp-0x80]
	or edi, ecx
	mov [ebp-0xf0], edi
	and esi, [ebp-0x8c]
	mov edx, [ebp-0x7c]
	and [ebp-0x1a0], edx
	or esi, [ebp-0x1a0]
	mov [ebp-0xec], esi
	movss xmm0, dword [ebp-0x1b4]
	mulss xmm0, [ebp-0xa8]
	addss xmm0, [ebp-0x1c0]
	movss [ebp-0x148], xmm0
	movss xmm0, dword [ebp-0x1b8]
	mulss xmm0, [ebp-0xa4]
	addss xmm0, [ebp-0x1c4]
	movss [ebp-0x144], xmm0
	movss xmm0, dword [ebp-0x1bc]
	mulss xmm0, [ebp-0xa0]
	addss xmm0, [ebp-0x1c8]
	movss [ebp-0x140], xmm0
	pxor xmm0, xmm0
	mulss xmm0, [ebp-0x9c]
	pxor xmm7, xmm7
	addss xmm0, xmm7
	movss [ebp-0x13c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0xb8]
	addss xmm0, [ebp-0x148]
	movss [ebp-0x148], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xb4]
	addss xmm0, [ebp-0x144]
	movss [ebp-0x144], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0xb0]
	addss xmm0, [ebp-0x140]
	movss [ebp-0x140], xmm0
	pxor xmm0, xmm0
	mulss xmm0, [ebp-0xac]
	addss xmm0, [ebp-0x13c]
	movss [ebp-0x13c], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0xc8]
	addss xmm0, [ebp-0x148]
	movss [ebp-0x148], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0xc4]
	addss xmm0, [ebp-0x144]
	movss [ebp-0x144], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0xc0]
	addss xmm0, [ebp-0x140]
	movss [ebp-0x140], xmm0
	pxor xmm0, xmm0
	mulss xmm0, [ebp-0xbc]
	addss xmm0, [ebp-0x13c]
	movss [ebp-0x13c], xmm0
	movss xmm0, dword [ebp-0x1b4]
	mulss xmm0, [ebp-0xd8]
	movss xmm7, dword [ebp-0x1c0]
	addss xmm7, xmm0
	movss [ebp-0x138], xmm7
	movss xmm0, dword [ebp-0x1b8]
	mulss xmm0, [ebp-0xd4]
	movss xmm7, dword [ebp-0x1c4]
	addss xmm7, xmm0
	movss [ebp-0x134], xmm7
	movss xmm0, dword [ebp-0x1bc]
	mulss xmm0, [ebp-0xd0]
	movss xmm7, dword [ebp-0x1c8]
	addss xmm7, xmm0
	movss [ebp-0x130], xmm7
	pxor xmm0, xmm0
	mulss xmm0, [ebp-0xcc]
	pxor xmm7, xmm7
	addss xmm0, xmm7
	movss [ebp-0x12c], xmm0
	mulss xmm1, [ebp-0xe8]
	addss xmm1, [ebp-0x138]
	mulss xmm2, [ebp-0xe4]
	addss xmm2, [ebp-0x134]
	mulss xmm3, [ebp-0xe0]
	addss xmm3, [ebp-0x130]
	pxor xmm0, xmm0
	mulss xmm0, [ebp-0xdc]
	addss xmm0, [ebp-0x12c]
	movss [ebp-0x12c], xmm0
	mulss xmm4, [ebp-0xf8]
	addss xmm4, xmm1
	movss [ebp-0x138], xmm4
	mulss xmm5, [ebp-0xf4]
	addss xmm5, xmm2
	movss [ebp-0x134], xmm5
	mulss xmm6, [ebp-0xf0]
	addss xmm6, xmm3
	movss [ebp-0x130], xmm6
	pxor xmm0, xmm0
	mulss xmm0, [ebp-0xec]
	addss xmm0, [ebp-0x12c]
	movss [ebp-0x12c], xmm0
	mov eax, [ebp-0x148]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x144]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x140]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x13c]
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x138]
	mov [ebp-0x78], eax
	mov eax, [ebp-0x134]
	mov [ebp-0x74], eax
	mov eax, [ebp-0x130]
	mov [ebp-0x70], eax
	mov eax, [ebp-0x12c]
	mov [ebp-0x6c], eax
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jnz CG_UpdateBModelWorldBounds_10
	mov eax, [ebp-0x1b0]
	movss xmm3, dword [eax+0x8]
	subss xmm3, [ebp-0x60]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0x64]
	movss xmm0, dword [ebp-0x68]
	movss [ebp-0x19c], xmm0
	movss xmm4, dword [eax]
	subss xmm4, xmm0
	movaps xmm0, xmm4
	subss xmm0, xmm1
	cmpss xmm7, xmm0, 0x2
	movaps xmm2, xmm4
	andps xmm2, xmm7
	movaps xmm4, xmm7
	andnps xmm4, xmm1
	orps xmm4, xmm2
	movaps xmm0, xmm4
	subss xmm0, xmm3
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	andps xmm3, xmm1
	andnps xmm0, xmm4
	orps xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	jb CG_UpdateBModelWorldBounds_20
	mov edx, eax
	add edx, 0xc
	movss xmm7, dword [ebp-0x70]
	movaps xmm3, xmm7
	subss xmm3, [edx+0x8]
	movss xmm6, dword [ebp-0x74]
	movaps xmm4, xmm6
	subss xmm4, [edx+0x4]
	movss xmm5, dword [ebp-0x78]
	movaps xmm2, xmm5
	subss xmm2, [eax+0xc]
	movaps xmm0, xmm2
	subss xmm0, xmm4
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm4
	andps xmm1, xmm0
	movaps xmm4, xmm0
	andnps xmm4, xmm2
	orps xmm4, xmm1
	movaps xmm0, xmm4
	subss xmm0, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	andps xmm4, xmm2
	andnps xmm0, xmm3
	orps xmm0, xmm4
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	jae CG_UpdateBModelWorldBounds_30
CG_UpdateBModelWorldBounds_40:
	movss xmm0, dword [ebp-0x19c]
	subss xmm0, [g_entMoveTolVec]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [g_entMoveTolVec+0x4]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x60]
	subss xmm0, [g_entMoveTolVec+0x8]
	movss [ebp-0x60], xmm0
	addss xmm5, [g_entMoveTolVec]
	movss [ebp-0x78], xmm5
	addss xmm6, [g_entMoveTolVec+0x4]
	movss [ebp-0x74], xmm6
	addss xmm7, [g_entMoveTolVec+0x8]
	movss [ebp-0x70], xmm7
	mov ecx, [ebp-0x1b0]
CG_UpdateBModelWorldBounds_50:
	mov eax, [ebp-0x68]
	mov [ecx], eax
	mov eax, [ebp-0x64]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x60]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x78]
	mov [ecx+0xc], eax
	mov eax, [ebp-0x74]
	mov [edx+0x4], eax
	mov eax, [ebp-0x70]
	mov [edx+0x8], eax
	mov [esp+0x8], ecx
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call R_LinkBModelEntity
CG_UpdateBModelWorldBounds_30:
	add esp, 0x1fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_UpdateBModelWorldBounds_20:
	lea edx, [eax+0xc]
	movss xmm7, dword [ebp-0x70]
	movss xmm6, dword [ebp-0x74]
	movss xmm5, dword [ebp-0x78]
	jmp CG_UpdateBModelWorldBounds_40
CG_UpdateBModelWorldBounds_10:
	mov eax, [ebp-0x1b0]
	lea edx, [eax+0xc]
	mov ecx, eax
	jmp CG_UpdateBModelWorldBounds_50
	nop


;Initialized global or static variables of cg_ents_mp:
SECTION .data
g_entMoveTolVec: dd 0x41800000, 0x41800000, 0x41800000, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cg_ents_mp:
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
g_zero: dd 0x0, 0x0, 0x0, 0x0, 0x6b051, 0x6b05c, 0x6b051, 0x6b051, 0x6b051, 0x6b051, 0x6b051, 0x6b051, 0x6b02d, 0x6b02d, 0x6b051, 0x6b097, 0x6b07f, 0x6b051, 0x6b07f, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x6d216, 0x6d82e, 0x6d842, 0x6d856, 0x6cf4e, 0x6d067, 0x6d17e, 0x6d649, 0x6d244, 0x6d76b, 0x6d30c, 0x6d572, 0x6d2e3, 0x6d169, 0x6d2e3, 0x0


;Zero initialized global or static variables of cg_ents_mp:
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
g_fltMin: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_bad_entity_type_:		db 015h,"Bad entity type: %i",0ah,0
_cstring_bad_item_index_i:		db 015h,"Bad item index %i on entity",0
_cstring_no_xmodel_loaded:		db 015h,"No XModel loaded for item index %i, weap index %i, model %i (%s)",0
_cstring_add_packet_ents:		db "add packet ents",0
_cstring_mg42:		db "MG42",0
_cstring_root:		db "root",0
_cstring_helicopter:		db "helicopter",0
_cstring_bh_rotors:		db "bh_rotors",0
_cstring_failed_to_create:		db "Failed to create physics object for ",27h,"%s",27h,".",0ah,0
_cstring_failed_to_create1:		db "Failed to create physics object for ",27h,"%s",27h,".  No physics preset.",0ah,0
_cstring_anim_gunhand__le:		db "anim_gunhand = ",22h,"left",22h,0
_cstring_anim_gunhand__ri:		db "anim_gunhand = ",22h,"right",22h,0



;All constant floats and doubles:
SECTION .rdata
_float_4_00000000:		dd 0x40800000	; 4
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_float_32_00000000:		dd 0x42000000	; 32
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_256_00000000:		dd 0x43800000	; 256
_float_16_00000000:		dd 0x41800000	; 16

