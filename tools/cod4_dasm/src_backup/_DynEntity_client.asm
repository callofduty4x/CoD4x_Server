;Imports of DynEntity_client:
	extern _Z20DynEnt_GetCollSector17DynEntityCollTypej
	extern _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	extern _Z20DynEnt_GetClientPoset17DynEntityDrawType
	extern _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i
	extern _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	extern _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	extern _Z16Com_PrintWarningiPKcz
	extern _Z15XModelGetRadiusPK6XModel
	extern _Z15XModelGetBoundsPK6XModelPfS2_
	extern _Z14UnitQuatToAxisPKfPA3_f
	extern _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1_
	extern _Z12R_LinkDynEntj17DynEntityDrawTypePfS0_
	extern _Z15R_GetBrushModelj
	extern _Z16RadiusFromBoundsPKfS0_
	extern _Z18DynEnt_GetContentsPK12DynEntityDef
	extern _Z14CM_TraceSpherePK12TraceExtentsPKfff
	extern _Z24DynEnt_PointTraceToModelPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t
	extern _Z24DynEnt_PointTraceToBrushPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t
	extern _Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t
	extern cg_entitiesArray
	extern _Z15BG_GetWeaponDefj
	extern cgMedia
	extern _Z19CG_RandomEffectAxisPKfPfS1_
	extern _Z22CL_IsLocalClientActivei
	extern cgArray
	extern _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	extern _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	extern _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf
	extern _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf
	extern _Z19DynEnt_UnlinkEntity17DynEntityCollTypet
	extern _Z14R_UnlinkDynEntj17DynEntityDrawType
	extern _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3_
	extern _Z15Phys_ObjDestroy9PhysWorldi
	extern _Z28CL_GetLocalClientActiveCountv
	extern _Z28CL_GetFirstActiveLocalClientv
	extern _Z21DynEnt_GetEntityCount17DynEntityCollType
	extern _Z30CG_GetLocalClientGlobalsForEntii
	extern _Z15CG_CalcEyePointiiPf
	extern _Z19CG_GetViewDirectioniiPfS_S_
	extern player_meleeRange
	extern player_meleeWidth
	extern player_meleeHeight
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z21DynEnt_GetEntityProps13DynEntityType
	extern vec3_origin
	extern _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	extern _Z20Phys_AddJitterRegion9PhysWorldPKfffff
	extern _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi
	extern _Z21DynEnt_ClearCollWorld17DynEntityCollType
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z26DynEntPieces_RegisterDvarsv
	extern _Z23Phys_ObjGetCenterOfMassiPf
	extern _Z6flrandff
	extern _Z16Phys_ObjAddForce9PhysWorldiPKfS1_
	extern _Z14Phys_RunToTimei9PhysWorldi
	extern _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	extern _Z16Phys_ObjIsAsleepi
	extern _Z24VecNCompareCustomEpsilonPKfS0_fi
	extern sv_clientSideBullets
	extern _Z19CM_CalcTraceExtentsP12TraceExtents
	extern _Z20Trace_GetDynEntHitIdPK7trace_tP17DynEntityDrawType
	extern _Z30CG_LocationalTraceEntitiesOnlyP7trace_tPKfS2_ii
	extern _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff
	extern _Z17Com_GetClientDObjii
	extern _Z17DObjGetPhysPresetPK6DObj_s

;Exports of DynEntity_client:
	global _GLOBAL__I__Z22DynEntCl_RegisterDvarsv
	global dynEnt_active
	global dynEnt_explodeMaxEnts
	global dynEnt_explodeSpinScale
	global dynEnt_explodeUpbias
	global dynEnt_explodeMinForce
	global dynEnt_explodeForce
	global dynEnt_bulletForce
	global _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms
	global _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	global _Z18DynEntCl_LinkModelt
	global _Z18DynEntCl_LinkBrusht
	global _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t
	global _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t
	global _Z26DynEntCl_PlayImpactEffectsiiiPKfS0_
	global _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth
	global _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i
	global _ZZ19DynEntCl_MeleeEventiiE12traceOffsets
	global _Z17DynEntCl_Shutdowni
	global _Z19DynEntCl_MeleeEventii
	global _Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t
	global _Z20DynEntCl_JitterEventiPKfffff
	global _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1_
	global _Z21DynEntCl_InitEntitiesi
	global _Z22DynEntCl_ClipMoveTracePK10moveclip_tP7trace_t
	global _Z22DynEntCl_RegisterDvarsv
	global _Z23DynEntCl_ExplosionEventihPKfffS0_fii
	global _Z24DynEntCl_ProcessEntitiesi
	global _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih
	global _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h
	global _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	global _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1_


SECTION .text


;global constructors keyed to DynEntCl_RegisterDvars()
_GLOBAL__I__Z22DynEntCl_RegisterDvarsv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;DynEntCl_AreaEntities_r(DynEntityDrawType, unsigned int, DynEntityAreaParms*)
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms:
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x28], eax
	mov edi, ecx
	test edx, edx
	jnz _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_10
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_50:
	mov eax, [edi]
	ucomiss xmm1, [edx+eax]
	ja _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_20
	mov eax, [ebp-0x20]
	movzx edx, word [eax+0x8]
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_60:
	test edx, edx
	jz _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_30
	mov eax, [ebp-0x28]
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_10:
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z20DynEnt_GetCollSector17DynEntityCollTypej
	mov [ebp-0x20], eax
	mov edx, eax
	mov eax, [eax+0xc]
	test [edi+0x8], eax
	jz _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_30
	movzx eax, word [edx+0x10]
	test ax, ax
	jnz _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_40
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_90:
	mov ecx, [ebp-0x20]
	movzx eax, word [ecx+0x4]
	lea edx, [eax*4]
	movss xmm1, dword [ecx]
	mov eax, [edi+0x4]
	movss xmm0, dword [eax+edx]
	ucomiss xmm0, xmm1
	ja _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_50
	mov eax, [edi]
	movss xmm0, dword [edx+eax]
	ucomiss xmm0, xmm1
	jae _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_30
	mov ecx, [ebp-0x20]
	movzx edx, word [ecx+0xa]
	jmp _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_60
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_100:
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov ebx, eax
	mov ecx, [ebp-0x28]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov edx, [edi+0x8]
	mov [esp+0x10], edx
	mov edx, [edi+0x4]
	mov [esp+0xc], edx
	mov edx, [edi]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i
	test al, al
	jz _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_70
	movzx eax, word [edi+0x12]
	cmp ax, [edi+0x10]
	jz _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_80
	movzx edx, ax
	mov eax, [edi+0xc]
	movzx ecx, word [ebp-0x22]
	mov [eax+edx*2], cx
	add word [edi+0x12], 0x1
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_70:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0x2]
	test ax, ax
	jz _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_90
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_40:
	sub eax, 0x1
	mov [ebp-0x22], ax
	movzx esi, ax
	mov [esp+0x4], esi
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	test byte [eax+0x4], 0x1
	jz _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_70
	jmp _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_100
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_20:
	movzx ebx, word [ecx+0xa]
	movzx edx, word [ecx+0x8]
	mov ecx, edi
	mov eax, [ebp-0x28]
	call _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_110
	mov edx, ebx
	jmp _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_60
_Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_80:
	mov dword [esp+0x4], _cstring_dynentcl_areaent
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	jmp _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms_30
	nop
	add [eax], al


;DynEntCl_CompareDynEntsForExplosion(DynEntSortStruct const&, DynEntSortStruct const&)
_Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax]
	seta al
	movzx eax, al
	pop ebp
	ret


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


;DynEntCl_LinkModel(unsigned short)
_Z18DynEntCl_LinkModelt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	movzx eax, ax
	mov [ebp-0x200], eax
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov ebx, eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x200]
	mov [esp], eax
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov esi, eax
	mov ebx, [ebx+0x20]
	mov [esp], ebx
	call _Z15XModelGetRadiusPK6XModel
	fstp dword [esi+0x1c]
	lea edx, [ebp-0x120]
	lea eax, [ebp-0x114]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z15XModelGetBoundsPK6XModelPfS2_
	mov eax, [ebp-0x120]
	mov [ebp-0x158], eax
	mov eax, [ebp-0x11c]
	mov [ebp-0x154], eax
	mov eax, [ebp-0x118]
	mov [ebp-0x150], eax
	pxor xmm1, xmm1
	movss [ebp-0x14c], xmm1
	mov eax, [ebp-0x114]
	mov [ebp-0x148], eax
	mov eax, [ebp-0x110]
	mov [ebp-0x144], eax
	mov eax, [ebp-0x10c]
	mov [ebp-0x140], eax
	movss [ebp-0x13c], xmm1
	lea eax, [ebp-0x19c]
	mov [esp+0x4], eax
	mov [esp], esi
	movss [ebp-0x218], xmm1
	call _Z14UnitQuatToAxisPKfPA3_f
	lea eax, [esi+0x10]
	movss xmm0, dword [ebp-0x19c]
	movss [ebp-0x1bc], xmm0
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebp-0x198]
	movss [ebp-0x1c0], xmm0
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x194]
	movss [ebp-0x1c4], xmm0
	movss [ebp-0x50], xmm0
	movss xmm1, dword [ebp-0x218]
	movss [ebp-0x4c], xmm1
	movss xmm0, dword [ebp-0x190]
	movss [ebp-0x1c8], xmm0
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x18c]
	movss [ebp-0x1cc], xmm0
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x188]
	movss [ebp-0x1d0], xmm0
	movss [ebp-0x60], xmm0
	movss [ebp-0x5c], xmm1
	movss xmm6, dword [ebp-0x184]
	movss [ebp-0x78], xmm6
	movss xmm7, dword [ebp-0x180]
	movss [ebp-0x74], xmm7
	movss xmm5, dword [ebp-0x17c]
	movss [ebp-0x70], xmm5
	movss [ebp-0x6c], xmm1
	movss xmm0, dword [esi+0x10]
	movss [ebp-0x1d4], xmm0
	movss [ebp-0x28], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x1d8], xmm0
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x1dc], xmm0
	movss [ebp-0x20], xmm0
	movss [ebp-0x1c], xmm1
	mov eax, [ebp-0x158]
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov eax, [ebp-0x148]
	mov [ebp-0x98], eax
	mov [ebp-0x94], eax
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	movss xmm4, dword [g_zero]
	xor eax, eax
	ucomiss xmm4, [ebp-0x1bc]
	setbe al
	sub eax, 0x1
	mov [ebp-0x1b8], eax
	mov [ebp-0x108], eax
	movss xmm3, dword [g_zero+0x4]
	xor ebx, ebx
	ucomiss xmm3, [ebp-0x1c0]
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x104], ebx
	movss xmm2, dword [g_zero+0x8]
	xor ecx, ecx
	ucomiss xmm2, [ebp-0x1c4]
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x100], ecx
	movss xmm0, dword [g_zero+0xc]
	ucomiss xmm0, xmm1
	setbe byte [ebp-0x201]
	movzx edi, byte [ebp-0x201]
	sub edi, 0x1
	mov [ebp-0xfc], edi
	not eax
	mov [ebp-0x1e0], eax
	and eax, [ebp-0x88]
	mov edx, [ebp-0x1b8]
	and edx, [ebp-0x98]
	or eax, edx
	mov [ebp-0xa8], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1e4], eax
	and eax, [ebp-0x84]
	mov edx, [ebp-0x94]
	and edx, ebx
	or eax, edx
	mov [ebp-0xa4], eax
	mov edx, ecx
	not edx
	mov [ebp-0x1e8], edx
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
	and [ebp-0x1e0], eax
	mov edx, [ebp-0x88]
	and [ebp-0x1b8], edx
	mov eax, [ebp-0x1b8]
	or [ebp-0x1e0], eax
	mov edx, [ebp-0x1e0]
	mov [ebp-0xd8], edx
	mov eax, [ebp-0x94]
	and [ebp-0x1e4], eax
	and ebx, [ebp-0x84]
	or [ebp-0x1e4], ebx
	mov edx, [ebp-0x1e4]
	mov [ebp-0xd4], edx
	mov eax, [ebp-0x90]
	and [ebp-0x1e8], eax
	and ecx, [ebp-0x80]
	or [ebp-0x1e8], ecx
	mov edx, [ebp-0x1e8]
	mov [ebp-0xd0], edx
	and esi, [ebp-0x8c]
	and edi, [ebp-0x7c]
	or esi, edi
	mov [ebp-0xcc], esi
	mov eax, [ebp-0x154]
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov eax, [ebp-0x144]
	mov [ebp-0x98], eax
	mov [ebp-0x94], eax
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	xor eax, eax
	ucomiss xmm4, [ebp-0x1c8]
	setbe al
	sub eax, 0x1
	mov [ebp-0x1b4], eax
	mov [ebp-0x38], eax
	xor ebx, ebx
	ucomiss xmm3, [ebp-0x1cc]
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x34], ebx
	xor ecx, ecx
	ucomiss xmm2, [ebp-0x1d0]
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x30], ecx
	movzx edi, byte [ebp-0x201]
	sub edi, 0x1
	mov [ebp-0x2c], edi
	not eax
	mov [ebp-0x1ec], eax
	and eax, [ebp-0x88]
	mov edx, [ebp-0x1b4]
	and edx, [ebp-0x98]
	or eax, edx
	mov [ebp-0xb8], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1f0], eax
	and eax, [ebp-0x84]
	mov edx, [ebp-0x94]
	and edx, ebx
	or eax, edx
	mov [ebp-0xb4], eax
	mov edx, ecx
	not edx
	mov [ebp-0x1f4], edx
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
	and [ebp-0x1ec], eax
	mov edx, [ebp-0x88]
	and [ebp-0x1b4], edx
	mov eax, [ebp-0x1b4]
	or [ebp-0x1ec], eax
	mov edx, [ebp-0x1ec]
	mov [ebp-0xe8], edx
	mov eax, [ebp-0x94]
	and [ebp-0x1f0], eax
	and ebx, [ebp-0x84]
	or [ebp-0x1f0], ebx
	mov edx, [ebp-0x1f0]
	mov [ebp-0xe4], edx
	mov eax, [ebp-0x90]
	and [ebp-0x1f4], eax
	and ecx, [ebp-0x80]
	or [ebp-0x1f4], ecx
	mov edx, [ebp-0x1f4]
	mov [ebp-0xe0], edx
	and esi, [ebp-0x8c]
	and edi, [ebp-0x7c]
	or esi, edi
	mov [ebp-0xdc], esi
	mov eax, [ebp-0x150]
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov eax, [ebp-0x140]
	mov [ebp-0x98], eax
	mov [ebp-0x94], eax
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	xor eax, eax
	ucomiss xmm4, xmm6
	setbe al
	sub eax, 0x1
	mov [ebp-0x1b0], eax
	mov [ebp-0x48], eax
	xor ebx, ebx
	ucomiss xmm3, xmm7
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x44], ebx
	xor ecx, ecx
	ucomiss xmm2, xmm5
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x40], ecx
	movzx eax, byte [ebp-0x201]
	sub eax, 0x1
	mov [ebp-0x1ac], eax
	mov [ebp-0x3c], eax
	mov edx, [ebp-0x1b0]
	not edx
	mov [ebp-0x1f8], edx
	mov eax, edx
	and eax, [ebp-0x88]
	mov edx, [ebp-0x1b0]
	and edx, [ebp-0x98]
	or eax, edx
	mov [ebp-0xc8], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1fc], eax
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
	mov esi, [ebp-0x1ac]
	not esi
	mov eax, [ebp-0x7c]
	and eax, esi
	mov edx, [ebp-0x1ac]
	and edx, [ebp-0x8c]
	or eax, edx
	mov [ebp-0xbc], eax
	mov edx, [ebp-0x98]
	and [ebp-0x1f8], edx
	mov eax, [ebp-0x88]
	and [ebp-0x1b0], eax
	mov edx, [ebp-0x1b0]
	or [ebp-0x1f8], edx
	mov eax, [ebp-0x1f8]
	mov [ebp-0xf8], eax
	mov edx, [ebp-0x94]
	and [ebp-0x1fc], edx
	and ebx, [ebp-0x84]
	or [ebp-0x1fc], ebx
	mov eax, [ebp-0x1fc]
	mov [ebp-0xf4], eax
	and edi, [ebp-0x90]
	and ecx, [ebp-0x80]
	or edi, ecx
	mov [ebp-0xf0], edi
	and esi, [ebp-0x8c]
	mov edx, [ebp-0x7c]
	and [ebp-0x1ac], edx
	or esi, [ebp-0x1ac]
	mov [ebp-0xec], esi
	movss xmm0, dword [ebp-0x1bc]
	mulss xmm0, [ebp-0xa8]
	addss xmm0, [ebp-0x1d4]
	movss [ebp-0x178], xmm0
	movss xmm0, dword [ebp-0x1c0]
	mulss xmm0, [ebp-0xa4]
	addss xmm0, [ebp-0x1d8]
	movss [ebp-0x174], xmm0
	movss xmm0, dword [ebp-0x1c4]
	mulss xmm0, [ebp-0xa0]
	addss xmm0, [ebp-0x1dc]
	movss [ebp-0x170], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [ebp-0x16c], xmm0
	movss xmm0, dword [ebp-0x1c8]
	mulss xmm0, [ebp-0xb8]
	addss xmm0, [ebp-0x178]
	movss [ebp-0x178], xmm0
	movss xmm0, dword [ebp-0x1cc]
	mulss xmm0, [ebp-0xb4]
	addss xmm0, [ebp-0x174]
	movss [ebp-0x174], xmm0
	movss xmm0, dword [ebp-0x1d0]
	mulss xmm0, [ebp-0xb0]
	addss xmm0, [ebp-0x170]
	movss [ebp-0x170], xmm0
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x16c]
	movss [ebp-0x16c], xmm0
	movaps xmm4, xmm6
	mulss xmm4, [ebp-0xc8]
	addss xmm4, [ebp-0x178]
	movss [ebp-0x178], xmm4
	movaps xmm3, xmm7
	mulss xmm3, [ebp-0xc4]
	addss xmm3, [ebp-0x174]
	movss [ebp-0x174], xmm3
	movaps xmm2, xmm5
	mulss xmm2, [ebp-0xc0]
	addss xmm2, [ebp-0x170]
	movss [ebp-0x170], xmm2
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x16c]
	movss [ebp-0x16c], xmm0
	movss xmm0, dword [ebp-0x1bc]
	mulss xmm0, [ebp-0xd8]
	movss [ebp-0x1bc], xmm0
	movss xmm0, dword [ebp-0x1d4]
	addss xmm0, [ebp-0x1bc]
	movss [ebp-0x168], xmm0
	movss xmm0, dword [ebp-0x1c0]
	mulss xmm0, [ebp-0xd4]
	movss [ebp-0x1c0], xmm0
	movss xmm0, dword [ebp-0x1d8]
	addss xmm0, [ebp-0x1c0]
	movss [ebp-0x164], xmm0
	movss xmm0, dword [ebp-0x1c4]
	mulss xmm0, [ebp-0xd0]
	movss [ebp-0x1c4], xmm0
	movss xmm0, dword [ebp-0x1dc]
	addss xmm0, [ebp-0x1c4]
	movss [ebp-0x160], xmm0
	movss xmm0, dword [ebp-0xcc]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [ebp-0x15c], xmm0
	movss xmm0, dword [ebp-0x1c8]
	mulss xmm0, [ebp-0xe8]
	movss [ebp-0x1c8], xmm0
	addss xmm0, [ebp-0x168]
	movss [ebp-0x168], xmm0
	movss xmm0, dword [ebp-0x1cc]
	mulss xmm0, [ebp-0xe4]
	movss [ebp-0x1cc], xmm0
	addss xmm0, [ebp-0x164]
	movss [ebp-0x164], xmm0
	movss xmm0, dword [ebp-0x1d0]
	mulss xmm0, [ebp-0xe0]
	movss [ebp-0x1d0], xmm0
	addss xmm0, [ebp-0x160]
	movss [ebp-0x160], xmm0
	movss xmm0, dword [ebp-0xdc]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x15c]
	mulss xmm6, [ebp-0xf8]
	addss xmm6, [ebp-0x168]
	movss [ebp-0x168], xmm6
	mulss xmm7, [ebp-0xf4]
	addss xmm7, [ebp-0x164]
	movss [ebp-0x164], xmm7
	mulss xmm5, [ebp-0xf0]
	addss xmm5, [ebp-0x160]
	movss [ebp-0x160], xmm5
	mulss xmm1, [ebp-0xec]
	addss xmm1, xmm0
	movss [ebp-0x15c], xmm1
	movss [ebp-0x138], xmm4
	lea esi, [ebp-0x138]
	movss [ebp-0x134], xmm3
	movss [ebp-0x130], xmm2
	movss [ebp-0x12c], xmm6
	lea ebx, [ebp-0x12c]
	movss [ebp-0x128], xmm7
	movss [ebp-0x124], xmm5
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov eax, [ebp-0x200]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1_
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x200]
	mov [esp], edx
	call _Z12R_LinkDynEntj17DynEntityDrawTypePfS0_
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DynEntCl_LinkBrush(unsigned short)
_Z18DynEntCl_LinkBrusht:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1fc
	movzx eax, ax
	mov [ebp-0x1ec], eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov [ebp-0x1ac], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x1ec]
	mov [esp], eax
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov [ebp-0x1a8], eax
	mov edx, [ebp-0x1ac]
	movzx eax, word [edx+0x24]
	mov [esp], eax
	call _Z15R_GetBrushModelj
	mov [ebp-0x19c], eax
	add eax, 0x18
	mov [ebp-0x1a4], eax
	mov ecx, [ebp-0x19c]
	mov eax, [ecx+0x18]
	mov [ebp-0x160], eax
	mov edx, [ebp-0x1a4]
	mov eax, [edx+0x4]
	mov [ebp-0x15c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x158], eax
	mov eax, [edx+0xc]
	mov [ebp-0x154], eax
	add ecx, 0x24
	mov [ebp-0x1a0], ecx
	mov ecx, [ebp-0x19c]
	mov eax, [ecx+0x24]
	mov [ebp-0x150], eax
	mov edx, [ebp-0x1a0]
	mov eax, [edx+0x4]
	mov [ebp-0x14c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x148], eax
	mov eax, [edx+0xc]
	mov [ebp-0x144], eax
	lea eax, [ebp-0x184]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1a8]
	mov [esp], ecx
	call _Z14UnitQuatToAxisPKfPA3_f
	mov eax, [ebp-0x1a8]
	add eax, 0x10
	movss xmm0, dword [ebp-0x184]
	movss [ebp-0x1b0], xmm0
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x180]
	movss [ebp-0x1b4], xmm0
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x17c]
	movss [ebp-0x1b8], xmm0
	movss [ebp-0x48], xmm0
	pxor xmm1, xmm1
	movss [ebp-0x44], xmm1
	movss xmm3, dword [ebp-0x178]
	movss [ebp-0x60], xmm3
	movss xmm4, dword [ebp-0x174]
	movss [ebp-0x5c], xmm4
	movss xmm5, dword [ebp-0x170]
	movss [ebp-0x58], xmm5
	movss [ebp-0x54], xmm1
	movss xmm6, dword [ebp-0x16c]
	movss [ebp-0x70], xmm6
	movss xmm7, dword [ebp-0x168]
	movss [ebp-0x6c], xmm7
	movss xmm0, dword [ebp-0x164]
	movss [ebp-0x1bc], xmm0
	movss [ebp-0x68], xmm0
	movss [ebp-0x64], xmm1
	mov edx, [ebp-0x1a8]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x1c0], xmm0
	movss [ebp-0x40], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x1c4], xmm0
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x1c8], xmm0
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm1
	mov eax, [ebp-0x160]
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov [ebp-0x78], eax
	mov [ebp-0x74], eax
	mov eax, [ebp-0x150]
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	movss xmm0, dword [g_zero]
	xor eax, eax
	ucomiss xmm0, [ebp-0x1b0]
	setbe al
	sub eax, 0x1
	mov [ebp-0x198], eax
	mov [ebp-0x100], eax
	movss xmm0, dword [g_zero+0x4]
	xor ebx, ebx
	ucomiss xmm0, [ebp-0x1b4]
	setbe bl
	sub ebx, 0x1
	mov [ebp-0xfc], ebx
	movss xmm2, dword [g_zero+0x8]
	xor ecx, ecx
	ucomiss xmm2, [ebp-0x1b8]
	setbe cl
	sub ecx, 0x1
	mov [ebp-0xf8], ecx
	movss xmm0, dword [g_zero+0xc]
	ucomiss xmm0, xmm1
	setbe byte [ebp-0x1ed]
	movzx edi, byte [ebp-0x1ed]
	sub edi, 0x1
	mov [ebp-0xf4], edi
	not eax
	mov [ebp-0x1cc], eax
	and eax, [ebp-0x80]
	mov edx, [ebp-0x198]
	and edx, [ebp-0x90]
	or eax, edx
	mov [ebp-0xa0], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1d0], eax
	and eax, [ebp-0x7c]
	mov edx, [ebp-0x8c]
	and edx, ebx
	or eax, edx
	mov [ebp-0x9c], eax
	mov edx, ecx
	not edx
	mov [ebp-0x1d4], edx
	mov eax, edx
	and eax, [ebp-0x78]
	mov edx, [ebp-0x88]
	and edx, ecx
	or eax, edx
	mov [ebp-0x98], eax
	mov esi, edi
	not esi
	mov eax, [ebp-0x74]
	and eax, esi
	mov edx, [ebp-0x84]
	and edx, edi
	or eax, edx
	mov [ebp-0x94], eax
	mov eax, [ebp-0x90]
	and [ebp-0x1cc], eax
	mov edx, [ebp-0x80]
	and [ebp-0x198], edx
	mov eax, [ebp-0x198]
	or [ebp-0x1cc], eax
	mov edx, [ebp-0x1cc]
	mov [ebp-0xd0], edx
	mov eax, [ebp-0x8c]
	and [ebp-0x1d0], eax
	and ebx, [ebp-0x7c]
	or [ebp-0x1d0], ebx
	mov edx, [ebp-0x1d0]
	mov [ebp-0xcc], edx
	mov eax, [ebp-0x88]
	and [ebp-0x1d4], eax
	and ecx, [ebp-0x78]
	or [ebp-0x1d4], ecx
	mov edx, [ebp-0x1d4]
	mov [ebp-0xc8], edx
	and esi, [ebp-0x84]
	and edi, [ebp-0x74]
	or esi, edi
	mov [ebp-0xc4], esi
	mov eax, [ebp-0x15c]
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov [ebp-0x78], eax
	mov [ebp-0x74], eax
	mov eax, [ebp-0x14c]
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	movss xmm0, dword [g_zero]
	xor eax, eax
	ucomiss xmm0, xmm3
	setbe al
	sub eax, 0x1
	mov [ebp-0x194], eax
	mov [ebp-0x110], eax
	movss xmm0, dword [g_zero+0x4]
	xor ebx, ebx
	ucomiss xmm0, xmm4
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x10c], ebx
	xor ecx, ecx
	ucomiss xmm2, xmm5
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x108], ecx
	movzx edi, byte [ebp-0x1ed]
	sub edi, 0x1
	mov [ebp-0x104], edi
	not eax
	mov [ebp-0x1d8], eax
	and eax, [ebp-0x80]
	mov edx, [ebp-0x194]
	and edx, [ebp-0x90]
	or eax, edx
	mov [ebp-0xb0], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1dc], eax
	and eax, [ebp-0x7c]
	mov edx, [ebp-0x8c]
	and edx, ebx
	or eax, edx
	mov [ebp-0xac], eax
	mov edx, ecx
	not edx
	mov [ebp-0x1e0], edx
	mov eax, edx
	and eax, [ebp-0x78]
	mov edx, [ebp-0x88]
	and edx, ecx
	or eax, edx
	mov [ebp-0xa8], eax
	mov esi, edi
	not esi
	mov eax, [ebp-0x74]
	and eax, esi
	mov edx, [ebp-0x84]
	and edx, edi
	or eax, edx
	mov [ebp-0xa4], eax
	mov eax, [ebp-0x90]
	and [ebp-0x1d8], eax
	mov edx, [ebp-0x80]
	and [ebp-0x194], edx
	mov eax, [ebp-0x194]
	or [ebp-0x1d8], eax
	mov edx, [ebp-0x1d8]
	mov [ebp-0xe0], edx
	mov eax, [ebp-0x8c]
	and [ebp-0x1dc], eax
	and ebx, [ebp-0x7c]
	or [ebp-0x1dc], ebx
	mov edx, [ebp-0x1dc]
	mov [ebp-0xdc], edx
	mov eax, [ebp-0x88]
	and [ebp-0x1e0], eax
	and ecx, [ebp-0x78]
	or [ebp-0x1e0], ecx
	mov edx, [ebp-0x1e0]
	mov [ebp-0xd8], edx
	and esi, [ebp-0x84]
	and edi, [ebp-0x74]
	or esi, edi
	mov [ebp-0xd4], esi
	mov eax, [ebp-0x158]
	mov [ebp-0x80], eax
	mov [ebp-0x7c], eax
	mov [ebp-0x78], eax
	mov [ebp-0x74], eax
	mov eax, [ebp-0x148]
	mov [ebp-0x90], eax
	mov [ebp-0x8c], eax
	mov [ebp-0x88], eax
	mov [ebp-0x84], eax
	movss xmm0, dword [g_zero]
	xor eax, eax
	ucomiss xmm0, xmm6
	setbe al
	sub eax, 0x1
	mov [ebp-0x190], eax
	mov [ebp-0x120], eax
	movss xmm0, dword [g_zero+0x4]
	xor ebx, ebx
	ucomiss xmm0, xmm7
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x11c], ebx
	xor ecx, ecx
	ucomiss xmm2, [ebp-0x1bc]
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x118], ecx
	movzx eax, byte [ebp-0x1ed]
	sub eax, 0x1
	mov [ebp-0x18c], eax
	mov [ebp-0x114], eax
	mov edx, [ebp-0x190]
	not edx
	mov [ebp-0x1e4], edx
	mov eax, edx
	and eax, [ebp-0x80]
	mov edx, [ebp-0x190]
	and edx, [ebp-0x90]
	or eax, edx
	mov [ebp-0xc0], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1e8], eax
	and eax, [ebp-0x7c]
	mov edx, [ebp-0x8c]
	and edx, ebx
	or eax, edx
	mov [ebp-0xbc], eax
	mov edi, ecx
	not edi
	mov eax, [ebp-0x78]
	and eax, edi
	mov edx, [ebp-0x88]
	and edx, ecx
	or eax, edx
	mov [ebp-0xb8], eax
	mov esi, [ebp-0x18c]
	not esi
	mov eax, [ebp-0x74]
	and eax, esi
	mov edx, [ebp-0x18c]
	and edx, [ebp-0x84]
	or eax, edx
	mov [ebp-0xb4], eax
	mov edx, [ebp-0x90]
	and [ebp-0x1e4], edx
	mov eax, [ebp-0x80]
	and [ebp-0x190], eax
	mov edx, [ebp-0x190]
	or [ebp-0x1e4], edx
	mov eax, [ebp-0x1e4]
	mov [ebp-0xf0], eax
	mov edx, [ebp-0x8c]
	and [ebp-0x1e8], edx
	and ebx, [ebp-0x7c]
	or [ebp-0x1e8], ebx
	mov eax, [ebp-0x1e8]
	mov [ebp-0xec], eax
	and edi, [ebp-0x88]
	and ecx, [ebp-0x78]
	or edi, ecx
	mov [ebp-0xe8], edi
	and esi, [ebp-0x84]
	mov edx, [ebp-0x74]
	and [ebp-0x18c], edx
	or esi, [ebp-0x18c]
	mov [ebp-0xe4], esi
	movss xmm0, dword [ebp-0x1b0]
	mulss xmm0, [ebp-0xa0]
	addss xmm0, [ebp-0x1c0]
	movss [ebp-0x140], xmm0
	movss xmm0, dword [ebp-0x1b4]
	mulss xmm0, [ebp-0x9c]
	addss xmm0, [ebp-0x1c4]
	movss [ebp-0x13c], xmm0
	movss xmm0, dword [ebp-0x1b8]
	mulss xmm0, [ebp-0x98]
	addss xmm0, [ebp-0x1c8]
	movss [ebp-0x138], xmm0
	movss xmm0, dword [ebp-0x94]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [ebp-0x134], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0xb0]
	addss xmm0, [ebp-0x140]
	movss [ebp-0x140], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0xac]
	addss xmm0, [ebp-0x13c]
	movss [ebp-0x13c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0xa8]
	addss xmm0, [ebp-0x138]
	movss [ebp-0x138], xmm0
	movss xmm0, dword [ebp-0xa4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x134]
	movss [ebp-0x134], xmm0
	movaps xmm2, xmm6
	mulss xmm2, [ebp-0xc0]
	addss xmm2, [ebp-0x140]
	movss [ebp-0x140], xmm2
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xbc]
	addss xmm0, [ebp-0x13c]
	movss [ebp-0x13c], xmm0
	movss xmm0, dword [ebp-0x1bc]
	mulss xmm0, [ebp-0xb8]
	addss xmm0, [ebp-0x138]
	movss [ebp-0x138], xmm0
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x134]
	movss [ebp-0x134], xmm0
	movss xmm0, dword [ebp-0x1b0]
	mulss xmm0, [ebp-0xd0]
	movss [ebp-0x1b0], xmm0
	movss xmm0, dword [ebp-0x1c0]
	addss xmm0, [ebp-0x1b0]
	movss [ebp-0x130], xmm0
	movss xmm0, dword [ebp-0x1b4]
	mulss xmm0, [ebp-0xcc]
	movss [ebp-0x1b4], xmm0
	movss xmm0, dword [ebp-0x1c4]
	addss xmm0, [ebp-0x1b4]
	movss [ebp-0x12c], xmm0
	movss xmm0, dword [ebp-0x1b8]
	mulss xmm0, [ebp-0xc8]
	movss [ebp-0x1b8], xmm0
	movss xmm0, dword [ebp-0x1c8]
	addss xmm0, [ebp-0x1b8]
	movss [ebp-0x128], xmm0
	movss xmm0, dword [ebp-0xc4]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [ebp-0x124], xmm0
	mulss xmm3, [ebp-0xe0]
	addss xmm3, [ebp-0x130]
	mulss xmm4, [ebp-0xdc]
	addss xmm4, [ebp-0x12c]
	mulss xmm5, [ebp-0xd8]
	addss xmm5, [ebp-0x128]
	movss xmm0, dword [ebp-0xd4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x124]
	movss [ebp-0x124], xmm0
	mulss xmm6, [ebp-0xf0]
	addss xmm6, xmm3
	movss [ebp-0x130], xmm6
	mulss xmm7, [ebp-0xec]
	addss xmm7, xmm4
	movss [ebp-0x12c], xmm7
	movss xmm0, dword [ebp-0x1bc]
	mulss xmm0, [ebp-0xe8]
	movss [ebp-0x1bc], xmm0
	addss xmm0, xmm5
	movss [ebp-0x128], xmm0
	mulss xmm1, [ebp-0xe4]
	addss xmm1, [ebp-0x124]
	movss [ebp-0x124], xmm1
	mov eax, [ebp-0x19c]
	movss [eax], xmm2
	mov eax, [ebp-0x13c]
	mov edx, [ebp-0x19c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x138]
	mov [edx+0x8], eax
	mov edx, [ebp-0x19c]
	add edx, 0xc
	mov eax, [ebp-0x130]
	mov ecx, [ebp-0x19c]
	mov [ecx+0xc], eax
	mov eax, [ebp-0x12c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x128]
	mov [edx+0x8], eax
	mov eax, [ebp-0x1a0]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1a4]
	mov [esp], edx
	call _Z16RadiusFromBoundsPKfS0_
	mov ecx, [ebp-0x1a8]
	fstp dword [ecx+0x1c]
	mov edx, [ebp-0x1ac]
	movzx eax, word [edx+0x24]
	mov [esp], eax
	call _Z15R_GetBrushModelj
	mov edx, [eax]
	mov [ebp-0x24], edx
	mov edx, [eax+0x4]
	mov [ebp-0x20], edx
	mov edx, [eax+0x8]
	mov [ebp-0x1c], edx
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
	lea esi, [ebp-0x30]
	mov [esp+0xc], esi
	lea ebx, [ebp-0x24]
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x1ec]
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1_
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x1ec]
	mov [esp], eax
	call _Z12R_LinkDynEntj17DynEntityDrawTypePfS0_
	add esp, 0x1fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DynEntCl_PointTrace_r(DynEntityDrawType, pointtrace_t const*, unsigned int, float*, float*, trace_t*)
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t:
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, eax
	mov [ebp-0x48], edx
	mov edx, [ebp+0x8]
	mov eax, [ebp-0x48]
	mov eax, [eax+0x28]
	mov [ebp-0x3c], eax
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_110:
	test ecx, ecx
	jz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_10
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_40:
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z20DynEnt_GetCollSector17DynEntityCollTypej
	mov edi, eax
	mov eax, [eax+0xc]
	mov edx, [ebp-0x48]
	test [edx+0x28], eax
	jz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_10
	movzx eax, word [edi+0x10]
	test ax, ax
	jnz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_20
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_70:
	movss xmm0, dword [edi]
	movzx eax, word [edi+0x4]
	movss xmm2, dword [ebp+eax*4-0x28]
	subss xmm2, xmm0
	mov edx, [ebp+0xc]
	movss xmm3, dword [edx+eax*4]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_30
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm4, xmm1
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	xor edx, edx
	ucomiss xmm0, xmm1
	setae dl
	mov eax, 0x1
	sub eax, edx
	movzx ecx, word [edi+eax*2+0x8]
	test ecx, ecx
	jnz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_40
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_80:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov [ebp-0x44], eax
	mov [esp], eax
	call _Z18DynEnt_GetContentsPK12DynEntityDef
	test [ebp-0x3c], eax
	jz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_50
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov ebx, eax
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [ebx+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebx+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z14CM_TraceSpherePK12TraceExtentsPKfff
	test eax, eax
	jnz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_50
	test esi, esi
	jnz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_60
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp-0x44]
	mov [esp], edx
	call _Z24DynEnt_PointTraceToModelPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_120:
	pxor xmm0, xmm0
	mov edx, [ebp+0x10]
	ucomiss xmm0, [edx]
	jp _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_50
	jz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_10
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_50:
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0x2]
	test ax, ax
	jz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_70
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_20:
	sub eax, 0x1
	movzx ebx, ax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov [ebp-0x40], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	test byte [eax+0x4], 0x1
	jz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_50
	jmp _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_80
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_30:
	movss xmm4, dword [ebp-0x1c]
	mov eax, [ebp+0x10]
	ucomiss xmm4, [eax]
	jae _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_10
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ebp-0x28]
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm4
	mulss xmm2, xmm0
	addss xmm4, xmm2
	movss [ebp-0x2c], xmm4
	pxor xmm0, xmm0
	xor ebx, ebx
	ucomiss xmm3, xmm0
	setae bl
	movzx ecx, word [edi+ebx*2+0x8]
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, [ebp-0x48]
	mov eax, esi
	call _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_90
	pxor xmm0, xmm0
	mov edx, [ebp+0x10]
	ucomiss xmm0, [edx]
	jp _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_100
	jz _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_10
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_100:
	mov eax, 0x1
	sub eax, ebx
	movzx ecx, word [edi+eax*2+0x8]
	mov eax, [ebp-0x38]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x30]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x1c], eax
	jmp _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_110
_Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_60:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov edx, [ebp-0x48]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x44]
	mov [esp], eax
	call _Z24DynEnt_PointTraceToBrushPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t
	jmp _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t_120


;DynEntCl_ClipMoveTrace_r(moveclip_t const*, unsigned int, float*, float*, trace_t*)
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t:
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x40], eax
	mov eax, [ecx]
	mov [ebp-0x28], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x20], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x1c], eax
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_110:
	test edx, edx
	jz _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_10
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_40:
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call _Z20DynEnt_GetCollSector17DynEntityCollTypej
	mov [ebp-0x3c], eax
	mov edx, eax
	mov eax, [eax+0xc]
	mov ecx, [ebp-0x40]
	test [ecx+0x50], eax
	jz _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_10
	movzx eax, word [edx+0x10]
	test ax, ax
	jnz _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_20
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_50:
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+0x4]
	movss xmm0, dword [edx]
	movss xmm3, dword [ebp+eax*4-0x28]
	subss xmm3, xmm0
	mov ecx, [ebp+0x8]
	movss xmm2, dword [ecx+eax*4]
	subss xmm2, xmm0
	mov edx, [ebp-0x40]
	movss xmm5, dword [edx+eax*4+0x18]
	movaps xmm6, xmm2
	subss xmm6, xmm3
	pxor xmm0, xmm0
	cmpss xmm0, xmm6, 0x6
	movaps xmm1, xmm2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	ucomiss xmm0, xmm5
	jb _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_30
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+0x8]
	test edx, edx
	jnz _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_40
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_60:
	movzx eax, word [edi+0x2]
	test ax, ax
	jz _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_50
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_20:
	lea ebx, [eax-0x1]
	movzx ebx, bx
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov edi, eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov esi, eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x40]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax]
	jp _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_60
	jnz _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_60
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_30:
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	andps xmm2, xmm1
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movss xmm4, dword [_data16_80000000]
	movaps xmm1, xmm5
	xorps xmm1, xmm4
	ucomiss xmm1, xmm0
	jae _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_70
	movss xmm7, dword [ebp-0x1c]
	mov edx, [ebp+0xc]
	ucomiss xmm7, [edx]
	jae _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_10
	pxor xmm0, xmm0
	ucomiss xmm6, xmm0
	jnz _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_80
	jp _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_80
	movss xmm2, dword [_float_1_00000000]
	movaps xmm4, xmm2
	pxor xmm3, xmm3
	xor ebx, ebx
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_120:
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm4
	orps xmm2, xmm1
	movss xmm1, dword [ebp-0x28]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm7
	mulss xmm2, xmm0
	addss xmm7, xmm2
	movss [ebp-0x2c], xmm7
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+ebx*2+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x38]
	mov [esp], eax
	lea ecx, [ebp-0x28]
	mov eax, [ebp-0x40]
	movss [ebp-0x58], xmm3
	call _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_90
	movss xmm3, dword [ebp-0x58]
	pxor xmm0, xmm0
	mov edx, [ebp+0xc]
	ucomiss xmm0, [edx]
	jp _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_100
	jz _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_10
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_100:
	cmpss xmm0, xmm3, 0x2
	andps xmm3, xmm0
	pxor xmm1, xmm1
	orps xmm3, xmm1
	movss xmm1, dword [ebp-0x28]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [ebp-0x1c]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [ebp-0x1c], xmm1
	mov eax, 0x1
	sub eax, ebx
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+eax*2+0x8]
	jmp _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_110
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_70:
	mov eax, [ebp-0x3c]
	movzx edx, word [eax+0xa]
	jmp _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_110
_Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_80:
	movaps xmm2, xmm6
	andps xmm2, [_data16_7fffffff]
	movaps xmm1, xmm3
	xorps xmm1, xmm4
	pxor xmm0, xmm0
	cmpss xmm0, xmm6, 0x2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss xmm4, dword [_float_1_00000000]
	movaps xmm1, xmm4
	divss xmm1, xmm2
	movaps xmm2, xmm0
	addss xmm2, xmm5
	mulss xmm2, xmm1
	movaps xmm3, xmm0
	subss xmm3, xmm5
	mulss xmm3, xmm1
	pxor xmm1, xmm1
	xor ebx, ebx
	ucomiss xmm6, xmm1
	setae bl
	movaps xmm0, xmm4
	subss xmm0, xmm2
	jmp _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t_120
	nop


;DynEntCl_PlayImpactEffects(int, int, int, float const*, float const*)
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x4c], eax
	mov ebx, ecx
	mov esi, [ebp+0xc]
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov eax, cg_entitiesArray
	mov eax, [eax+edx+0x190]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x138]
	cmp eax, 0x2
	jz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__10
	jle _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__20
	cmp eax, 0x3
	jz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__30
	cmp eax, 0x4
	jnz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__40
	mov eax, cgMedia
	mov edx, [eax+0x2754]
	mov edx, [edx+0x4]
	mov edi, [edx+ebx*4+0x210]
	mov ebx, [eax+ebx*4+0x4ac]
	jmp _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__50
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__20:
	sub eax, 0x1
	jz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__60
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__10:
	mov eax, cgMedia
	mov edx, [eax+0x2754]
	mov edx, [edx+0x4]
	mov edi, [edx+ebx*4+0x108]
	mov ebx, [eax+ebx*4+0x3c4]
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__50:
	test edi, edi
	jz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__70
	movss xmm1, dword [esi]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__80
	jnz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__80
	lea eax, [esi+0x4]
	ucomiss xmm0, [esi+0x4]
	jp _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__90
	jz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__100
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__90:
	lea edx, [esi+0x8]
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__110:
	movss [ebp-0x3c], xmm1
	lea esi, [ebp-0x3c]
	mov eax, [eax]
	mov [ebp-0x38], eax
	mov eax, [edx]
	mov [ebp-0x34], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19CG_RandomEffectAxisPKfPfS1_
	mov dword [esp], 0x0
	call _Z22CL_IsLocalClientActivei
	test al, al
	jz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__70
	mov [esp+0x10], esi
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__70:
	test ebx, ebx
	jz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__40
	mov [esp+0xc], ebx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__100:
	lea edx, [esi+0x8]
	ucomiss xmm0, [esi+0x8]
	jp _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__110
	jz _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__70
	jmp _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__110
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__80:
	lea eax, [esi+0x4]
	lea edx, [esi+0x8]
	jmp _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__110
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__30:
	mov eax, cgMedia
	mov edx, [eax+0x2754]
	mov edx, [edx+0x4]
	mov edi, [edx+ebx*4+0x318]
	mov ebx, [eax+ebx*4+0x438]
	jmp _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__50
_Z26DynEntCl_PlayImpactEffectsiiiPKfS0__60:
	mov eax, cgMedia
	mov edx, [eax+0x2754]
	mov edx, [edx+0x4]
	mov edi, [edx+ebx*4]
	mov ebx, [eax+ebx*4+0x350]
	jmp _Z26DynEntCl_PlayImpactEffectsiiiPKfS0__50


;DynEntCl_GetClosestEntities(DynEntityDrawType, float const*, float const*, float const*, unsigned short*, unsigned char)
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x805c
	mov [ebp-0x8050], eax
	movzx edi, byte [ebp+0x10]
	mov [ebp-0x34], edx
	mov [ebp-0x30], ecx
	mov dword [ebp-0x2c], 0x802013
	mov eax, [ebp+0xc]
	mov [ebp-0x28], eax
	mov word [ebp-0x24], 0x1000
	mov word [ebp-0x22], 0x0
	lea ecx, [ebp-0x34]
	mov edx, 0x1
	mov eax, [ebp-0x8050]
	call _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms
	movzx edx, word [ebp-0x22]
	movzx esi, dx
	mov eax, [dynEnt_explodeMaxEnts]
	cmp esi, [eax+0xc]
	jbe _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_10
	test dx, dx
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_20
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_220:
	lea esi, [ebp+esi*8-0x8034]
	mov [ebp-0x804c], esi
	lea ecx, [ebp-0x8034]
	cmp ecx, esi
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_30
	mov ebx, esi
	sub ebx, ecx
	mov eax, ebx
	sar eax, 0x3
	cmp eax, 0x1
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_40
	xor edx, edx
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_50:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_50
	lea eax, [edx+edx]
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_300:
	mov dword [esp+0xc], _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	mov [esp+0x8], eax
	mov edx, [ebp-0x804c]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x8034]
	mov [esp], ecx
	call _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0x87
	jle _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_60
	lea eax, [ebp-0x8034]
	lea edx, [ebp-0x7fb4]
	cmp eax, edx
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_70
	lea ecx, [ebp-0x802c]
	mov [ebp-0x8040], ecx
	mov eax, ecx
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov [ebp-0x34], ebx
	mov [ebp-0x30], esi
	lea edx, [ebp-0x8034]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x34]
	mov [esp], ecx
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_80
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_110:
	mov eax, [ebp-0x8040]
	add eax, 0x8
	mov [ebp-0x8044], eax
	mov edi, [ebp-0x8040]
	lea edx, [ebp-0x8034]
	sub edi, edx
	sar edi, 0x3
	test edi, edi
	jle _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_90
	mov ebx, eax
	mov ecx, [ebp-0x8040]
	sub ecx, 0x8
	xor esi, esi
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_100:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx-0x8], eax
	mov [ebx-0x4], edx
	add esi, 0x1
	sub ebx, 0x8
	sub ecx, 0x8
	cmp esi, edi
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_100
	mov ecx, [ebp-0x8044]
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_310:
	mov eax, [ebp-0x34]
	mov edx, [ebp-0x30]
	mov [ebp-0x8034], eax
	mov [ebp-0x8030], edx
	mov [ebp-0x8040], ecx
	lea edx, [ebp-0x7fb4]
	cmp [ebp-0x8040], edx
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_70
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_140:
	mov eax, [ebp-0x8040]
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov [ebp-0x34], ebx
	mov [ebp-0x30], esi
	lea edx, [ebp-0x8034]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x34]
	mov [esp], ecx
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_110
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_80:
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], esi
	mov ebx, [ebp-0x8040]
	sub ebx, 0x8
	mov esi, [ebp-0x8040]
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_120
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_130:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_120:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_130
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [esi], eax
	mov [esi+0x4], edx
	add dword [ebp-0x8040], 0x8
	lea edx, [ebp-0x7fb4]
	cmp [ebp-0x8040], edx
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_140
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_70:
	lea ecx, [ebp-0x7fb4]
	cmp [ebp-0x804c], ecx
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_30
	mov edi, ecx
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_170:
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [ebp-0x34], eax
	mov [ebp-0x30], edx
	lea ebx, [edi-0x8]
	mov esi, edi
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_150
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_160:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_150:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x34]
	mov [esp], eax
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_160
	mov eax, [ebp-0x34]
	mov edx, [ebp-0x30]
	mov [esi], eax
	mov [esi+0x4], edx
	add edi, 0x8
	cmp [ebp-0x804c], edi
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_170
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_30:
	mov eax, [dynEnt_explodeMaxEnts]
	movzx eax, word [eax+0xc]
	movzx esi, ax
	test ax, ax
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_10
	xor edx, edx
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_180:
	movzx eax, word [ebp+edx*8-0x8030]
	mov ecx, [ebp+0xc]
	mov [ecx+edx*2], ax
	add edx, 0x1
	cmp esi, edx
	ja _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_180
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_10:
	mov eax, esi
	add esp, 0x805c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_20:
	xor ebx, ebx
	mov ecx, [ebp+0xc]
	mov [ebp-0x8054], ecx
	mov eax, edi
	test al, al
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_190
	mov edx, ecx
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_200
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_210:
	mov edx, [ebp-0x8054]
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_200:
	lea edi, [ebx*8]
	movzx eax, word [edx]
	mov [ebp+edi-0x8030], ax
	mov ecx, [ebp-0x8050]
	mov [esp+0x4], ecx
	movzx eax, ax
	mov [esp], eax
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf
	fstp dword [ebp+edi-0x8034]
	add ebx, 0x1
	add dword [ebp-0x8054], 0x2
	cmp esi, ebx
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_210
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_220
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_190:
	lea edi, [ebx*8]
	mov edx, [ebp-0x8054]
	movzx eax, word [edx]
	mov [ebp+edi-0x8030], ax
	mov ecx, [ebp-0x8050]
	mov [esp+0x4], ecx
	movzx eax, ax
	mov [esp], eax
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf
	fstp dword [ebp+edi-0x8034]
	add ebx, 0x1
	add dword [ebp-0x8054], 0x2
	cmp esi, ebx
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_190
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_220
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_60:
	lea eax, [ebp-0x802c]
	cmp [ebp-0x804c], eax
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_30
	mov [ebp-0x8048], eax
	mov ecx, eax
	mov ebx, [ecx]
	mov esi, [ecx+0x4]
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], esi
	lea eax, [ebp-0x8034]
	mov [esp+0x4], eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_230
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_260:
	mov ecx, [ebp-0x8048]
	add ecx, 0x8
	mov [ebp-0x803c], ecx
	mov edi, [ebp-0x8048]
	lea eax, [ebp-0x8034]
	sub edi, eax
	sar edi, 0x3
	test edi, edi
	jle _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_240
	mov ebx, ecx
	mov ecx, [ebp-0x8048]
	sub ecx, 0x8
	xor esi, esi
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_250:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx-0x8], eax
	mov [ebx-0x4], edx
	add esi, 0x1
	sub ebx, 0x8
	sub ecx, 0x8
	cmp edi, esi
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_250
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_240:
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [ebp-0x8034], eax
	mov [ebp-0x8030], edx
	mov eax, [ebp-0x803c]
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_290:
	cmp [ebp-0x804c], eax
	jz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_30
	mov [ebp-0x8048], eax
	mov ecx, eax
	mov ebx, [ecx]
	mov esi, [ecx+0x4]
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], esi
	lea eax, [ebp-0x8034]
	mov [esp+0x4], eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_260
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_230:
	mov [ebp-0x34], ebx
	mov [ebp-0x30], esi
	mov ebx, [ebp-0x8048]
	sub ebx, 0x8
	mov esi, [ebp-0x8048]
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_270
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_280:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_270:
	mov [esp+0x4], ebx
	lea edx, [ebp-0x34]
	mov [esp], edx
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_280
	mov eax, [ebp-0x34]
	mov edx, [ebp-0x30]
	mov [esi], eax
	mov [esi+0x4], edx
	mov ecx, [ebp-0x8048]
	add ecx, 0x8
	mov [ebp-0x803c], ecx
	mov eax, ecx
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_290
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_40:
	and eax, 0xffffff00
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_300
_Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_90:
	mov ecx, eax
	jmp _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth_310
	nop
	add [eax], al


;DynEntCl_Damage(int, unsigned short, DynEntityDrawType, float const*, float const*, int)
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x50], eax
	mov esi, ecx
	movzx edi, dx
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov [ebp-0x4c], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov ebx, eax
	mov eax, [eax+0x8]
	sub eax, [ebp+0x10]
	mov [ebx+0x8], eax
	test eax, eax
	jle _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_10
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_60:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_10:
	and word [ebx+0x4], 0xfffc
	mov eax, [ebx]
	test eax, eax
	jnz _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_20
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_80:
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z19DynEnt_UnlinkEntity17DynEntityCollTypet
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z14R_UnlinkDynEntj17DynEntityDrawType
	mov eax, [ebp-0x4c]
	mov edx, [eax+0x28]
	test edx, edx
	jz _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_30
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_70:
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov ebx, eax
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14UnitQuatToAxisPKfPA3_f
	mov eax, [ebp-0x4c]
	mov esi, [eax+0x28]
	test esi, esi
	jz _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_40
	lea edi, [ebx+0x10]
	mov dword [esp], 0x0
	call _Z22CL_IsLocalClientActivei
	test al, al
	jnz _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_50
	mov eax, [ebp-0x4c]
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_40:
	mov edx, [eax+0x2c]
	test edx, edx
	jz _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_60
	mov eax, [ebp+0xc]
	mov [esp+0x14], eax
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebx+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x50]
	mov [esp], eax
	call _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3_
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_50:
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	mov eax, [ebp-0x4c]
	jmp _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_40
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_30:
	mov eax, [eax+0x2c]
	test eax, eax
	jnz _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_70
	jmp _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_60
_Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_20:
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [ebx], 0x0
	jmp _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i_80
	nop


;DynEntCl_Shutdown(int)
_Z17DynEntCl_Shutdowni:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call _Z28CL_GetLocalClientActiveCountv
	test eax, eax
	jnz _Z17DynEntCl_Shutdowni_10
_Z17DynEntCl_Shutdowni_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17DynEntCl_Shutdowni_10:
	call _Z28CL_GetFirstActiveLocalClientv
	cmp eax, [ebp+0x8]
	jnz _Z17DynEntCl_Shutdowni_20
	mov dword [esp], 0x0
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	mov [ebp-0x1c], ax
	test ax, ax
	jnz _Z17DynEntCl_Shutdowni_30
_Z17DynEntCl_Shutdowni_70:
	mov dword [esp], 0x1
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	mov [ebp-0x1a], ax
	test ax, ax
	jz _Z17DynEntCl_Shutdowni_20
	xor edi, edi
	xor esi, esi
	jmp _Z17DynEntCl_Shutdowni_40
_Z17DynEntCl_Shutdowni_50:
	add edi, 0x1
	add esi, 0x1
	cmp [ebp-0x1a], di
	jz _Z17DynEntCl_Shutdowni_20
_Z17DynEntCl_Shutdowni_40:
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov ebx, eax
	test byte [eax+0x4], 0x1
	jz _Z17DynEntCl_Shutdowni_50
	mov eax, [eax]
	test eax, eax
	jz _Z17DynEntCl_Shutdowni_50
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [ebx], 0x0
	and word [ebx+0x4], 0xfffe
	jmp _Z17DynEntCl_Shutdowni_50
_Z17DynEntCl_Shutdowni_30:
	xor edi, edi
	xor esi, esi
	jmp _Z17DynEntCl_Shutdowni_60
_Z17DynEntCl_Shutdowni_80:
	add edi, 0x1
	add esi, 0x1
	cmp [ebp-0x1c], di
	jz _Z17DynEntCl_Shutdowni_70
_Z17DynEntCl_Shutdowni_60:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov ebx, eax
	test byte [eax+0x4], 0x1
	jz _Z17DynEntCl_Shutdowni_80
	mov eax, [eax]
	test eax, eax
	jz _Z17DynEntCl_Shutdowni_80
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [ebx], 0x0
	and word [ebx+0x4], 0xfffe
	jmp _Z17DynEntCl_Shutdowni_80


;DynEntCl_MeleeEvent(int, int)
_Z19DynEntCl_MeleeEventii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [dynEnt_active]
	cmp byte [eax+0xc], 0x0
	jnz _Z19DynEntCl_MeleeEventii_10
_Z19DynEntCl_MeleeEventii_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DynEntCl_MeleeEventii_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z30CG_GetLocalClientGlobalsForEntii
	test eax, eax
	jz _Z19DynEntCl_MeleeEventii_20
	mov eax, cgArray
	mov eax, [eax+0x24]
	test byte [eax+0x20], 0x6
	jnz _Z19DynEntCl_MeleeEventii_30
_Z19DynEntCl_MeleeEventii_60:
	xor eax, eax
_Z19DynEntCl_MeleeEventii_70:
	test eax, eax
	jz _Z19DynEntCl_MeleeEventii_40
_Z19DynEntCl_MeleeEventii_80:
	mov eax, [ebp+0xc]
	shl eax, 0x2
	mov edx, [ebp+0xc]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea esi, [edx+eax]
	add esi, cg_entitiesArray
	mov eax, [esi+0x190]
	test eax, eax
	jz _Z19DynEntCl_MeleeEventii_40
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, [eax+0x354]
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15CG_CalcEyePointiiPf
	lea eax, [ebp-0x48]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19CG_GetViewDirectioniiPfS_S_
	mov ebx, _ZZ19DynEntCl_MeleeEventiiE12traceOffsets
_Z19DynEntCl_MeleeEventii_50:
	mov eax, player_meleeRange
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x30]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x50], xmm0
	mulss xmm1, [ebp-0x28]
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x4c], xmm1
	mov eax, player_meleeWidth
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, [ebx]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x3c]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	mulss xmm1, [ebp-0x34]
	addss xmm1, [ebp-0x4c]
	movss [ebp-0x4c], xmm1
	mov eax, player_meleeHeight
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, [ebx+0x4]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x48]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x44]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	mulss xmm1, [ebp-0x40]
	addss xmm1, [ebp-0x4c]
	movss [ebp-0x4c], xmm1
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], edi
	lea edx, [ebp-0x54]
	mov [esp+0xc], edx
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih
	test al, al
	jnz _Z19DynEntCl_MeleeEventii_40
	add ebx, 0x8
	cmp ebx, _ZZ19DynEntCl_MeleeEventiiE12traceOffsets+0x28
	jnz _Z19DynEntCl_MeleeEventii_50
	jmp _Z19DynEntCl_MeleeEventii_40
_Z19DynEntCl_MeleeEventii_30:
	mov edx, [ebp+0xc]
	cmp edx, [eax+0xe8]
	jnz _Z19DynEntCl_MeleeEventii_60
	mov eax, 0x1
	jmp _Z19DynEntCl_MeleeEventii_70
_Z19DynEntCl_MeleeEventii_20:
	call _Z28CL_GetFirstActiveLocalClientv
	cmp [ebp+0x8], eax
	jnz _Z19DynEntCl_MeleeEventii_40
	jmp _Z19DynEntCl_MeleeEventii_80


;DynEntCl_PointTrace(pointtrace_t const*, trace_t*)
_Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	pxor xmm0, xmm0
	ucomiss xmm0, [esi]
	jp _Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t_10
	jnz _Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t_10
_Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t_10:
	mov eax, [ebx]
	mov [ebp-0x28], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x20], eax
	lea edx, [ebx+0xc]
	mov eax, [ebx+0xc]
	mov [ebp-0x38], eax
	mov eax, [edx+0x4]
	mov [ebp-0x34], eax
	mov eax, [edx+0x8]
	mov [ebp-0x30], eax
	mov dword [ebp-0x1c], 0x0
	mov eax, [esi]
	mov [ebp-0x2c], eax
	mov dword [esp+0x4], _cstring_dyn_brush_trace
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x8], esi
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea edi, [ebp-0x28]
	mov [esp], edi
	mov ecx, 0x1
	mov edx, ebx
	mov eax, 0x1
	call _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t
	pxor xmm0, xmm0
	ucomiss xmm0, [esi]
	jp _Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t_20
	jz _Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t_30
_Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t_20:
	mov dword [esp+0x4], _cstring_dyn_model_trace
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x8], esi
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], edi
	mov ecx, 0x1
	mov edx, ebx
	xor eax, eax
	call _Z21DynEntCl_PointTrace_r17DynEntityDrawTypePK12pointtrace_tjPfS3_P7trace_t
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DynEntCl_JitterEvent(int, float const*, float, float, float, float)
_Z20DynEntCl_JitterEventiPKfffff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xa09c
	mov eax, [dynEnt_active]
	cmp byte [eax+0xc], 0x0
	jnz _Z20DynEntCl_JitterEventiPKfffff_10
_Z20DynEntCl_JitterEventiPKfffff_40:
	add esp, 0xa09c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20DynEntCl_JitterEventiPKfffff_10:
	mov dword [esp+0x4], 0x3ff
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z30CG_GetLocalClientGlobalsForEntii
	test eax, eax
	jz _Z20DynEntCl_JitterEventiPKfffff_20
	mov eax, cgArray
	mov eax, [eax+0x24]
	test byte [eax+0x20], 0x6
	jnz _Z20DynEntCl_JitterEventiPKfffff_30
_Z20DynEntCl_JitterEventiPKfffff_120:
	xor eax, eax
_Z20DynEntCl_JitterEventiPKfffff_130:
	test eax, eax
	jz _Z20DynEntCl_JitterEventiPKfffff_40
_Z20DynEntCl_JitterEventiPKfffff_440:
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z20DynEntCl_JitterEventiPKfffff_50
	jz _Z20DynEntCl_JitterEventiPKfffff_40
_Z20DynEntCl_JitterEventiPKfffff_50:
	mulss xmm0, [_float__1_41421354]
	movaps xmm1, xmm0
	mov eax, [ebp+0xc]
	addss xmm1, [eax]
	movss [ebp-0x2c], xmm1
	addss xmm0, [eax+0x4]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [_float_1_41421354]
	movaps xmm1, xmm0
	addss xmm1, [eax]
	movss [ebp-0x38], xmm1
	addss xmm0, [eax+0x4]
	movss [ebp-0x34], xmm0
	mov dword [ebp-0x24], 0xff7fffff
	mov dword [ebp-0x30], 0x7f7fffff
	mov dword [ebp-0xa074], 0x0
_Z20DynEntCl_JitterEventiPKfffff_110:
	lea edx, [ebp-0x2c]
	mov [ebp-0x4c], edx
	lea eax, [ebp-0x38]
	mov [ebp-0x48], eax
	mov dword [ebp-0x44], 0x802013
	lea edx, [ebp-0x204c]
	mov [ebp-0x40], edx
	mov word [ebp-0x3c], 0x1000
	mov word [ebp-0x3a], 0x0
	lea ecx, [ebp-0x4c]
	mov edx, 0x1
	mov eax, [ebp-0xa074]
	call _Z23DynEntCl_AreaEntities_r17DynEntityDrawTypejP18DynEntityAreaParms
	movzx eax, word [ebp-0x3a]
	mov [ebp-0xa076], ax
	movzx edx, ax
	mov [ebp-0xa080], edx
	mov eax, [dynEnt_explodeMaxEnts]
	cmp edx, [eax+0xc]
	jg _Z20DynEntCl_JitterEventiPKfffff_60
	cmp word [ebp-0xa076], 0x0
	jz _Z20DynEntCl_JitterEventiPKfffff_70
_Z20DynEntCl_JitterEventiPKfffff_270:
	mov word [ebp-0xa05a], 0x0
	lea edi, [ebp-0x204c]
	jmp _Z20DynEntCl_JitterEventiPKfffff_80
_Z20DynEntCl_JitterEventiPKfffff_90:
	add word [ebp-0xa05a], 0x1
	add edi, 0x2
	movzx edx, word [ebp-0xa05a]
	cmp [ebp-0xa076], dx
	jz _Z20DynEntCl_JitterEventiPKfffff_70
_Z20DynEntCl_JitterEventiPKfffff_80:
	mov eax, [ebp-0xa074]
	mov [esp+0x4], eax
	movzx eax, word [edi]
	mov [esp], eax
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov ebx, eax
	mov edx, [ebp-0xa074]
	mov [esp+0x4], edx
	movzx eax, word [edi]
	mov [esp], eax
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov [ebp-0xa07c], eax
	mov eax, [ebx]
	mov [esp], eax
	call _Z21DynEnt_GetEntityProps13DynEntityType
	cmp byte [eax+0x6], 0x0
	jz _Z20DynEntCl_JitterEventiPKfffff_90
	mov eax, [ebp-0xa07c]
	mov eax, [eax]
	test eax, eax
	jnz _Z20DynEntCl_JitterEventiPKfffff_90
	mov edx, [ebp-0xa074]
	mov [esp+0x4], edx
	movzx eax, word [edi]
	mov [esp], eax
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov edx, [ebx+0x30]
	mov [esp+0x10], edx
	mov edx, vec3_origin
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	add eax, 0x10
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	mov esi, eax
	test eax, eax
	jnz _Z20DynEntCl_JitterEventiPKfffff_100
	mov dword [esp+0x4], _cstring_dynentcl_createp
	mov dword [esp], 0x1
	call _Z16Com_PrintWarningiPKcz
_Z20DynEntCl_JitterEventiPKfffff_280:
	mov eax, [ebp-0xa07c]
	mov [eax], esi
	add word [ebp-0xa05a], 0x1
	add edi, 0x2
	movzx edx, word [ebp-0xa05a]
	cmp [ebp-0xa076], dx
	jnz _Z20DynEntCl_JitterEventiPKfffff_80
_Z20DynEntCl_JitterEventiPKfffff_70:
	add dword [ebp-0xa074], 0x1
	cmp dword [ebp-0xa074], 0x2
	jnz _Z20DynEntCl_JitterEventiPKfffff_110
	movss xmm0, dword [ebp+0x1c]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x8], xmm0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z20Phys_AddJitterRegion9PhysWorldPKfffff
	jmp _Z20DynEntCl_JitterEventiPKfffff_40
_Z20DynEntCl_JitterEventiPKfffff_30:
	cmp dword [eax+0xe8], 0x3ff
	jnz _Z20DynEntCl_JitterEventiPKfffff_120
	mov eax, 0x1
	jmp _Z20DynEntCl_JitterEventiPKfffff_130
_Z20DynEntCl_JitterEventiPKfffff_60:
	cmp word [ebp-0xa076], 0x0
	jnz _Z20DynEntCl_JitterEventiPKfffff_140
_Z20DynEntCl_JitterEventiPKfffff_430:
	mov eax, [ebp-0xa080]
	lea eax, [ebp+eax*8-0xa04c]
	mov [ebp-0xa070], eax
	lea edx, [ebp-0xa04c]
	cmp edx, eax
	jz _Z20DynEntCl_JitterEventiPKfffff_150
	mov ebx, eax
	sub ebx, edx
	mov eax, ebx
	sar eax, 0x3
	cmp eax, 0x1
	jz _Z20DynEntCl_JitterEventiPKfffff_160
	xor edx, edx
_Z20DynEntCl_JitterEventiPKfffff_170:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z20DynEntCl_JitterEventiPKfffff_170
	lea eax, [edx+edx]
_Z20DynEntCl_JitterEventiPKfffff_450:
	mov dword [esp+0xc], _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	mov [esp+0x8], eax
	mov edx, [ebp-0xa070]
	mov [esp+0x4], edx
	lea eax, [ebp-0xa04c]
	mov [esp], eax
	call _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0x87
	jg _Z20DynEntCl_JitterEventiPKfffff_180
	lea eax, [ebp-0xa044]
	cmp [ebp-0xa070], eax
	jz _Z20DynEntCl_JitterEventiPKfffff_150
	mov [ebp-0xa06c], eax
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov [ebp-0x4c], ebx
	mov [ebp-0x48], esi
	lea edx, [ebp-0xa04c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jz _Z20DynEntCl_JitterEventiPKfffff_190
_Z20DynEntCl_JitterEventiPKfffff_380:
	mov edx, [ebp-0xa06c]
	add edx, 0x8
	mov [ebp-0xa068], edx
	mov edi, [ebp-0xa06c]
	lea eax, [ebp-0xa04c]
	sub edi, eax
	sar edi, 0x3
	test edi, edi
	jle _Z20DynEntCl_JitterEventiPKfffff_200
	mov ebx, edx
	mov ecx, [ebp-0xa06c]
	sub ecx, 0x8
	xor esi, esi
_Z20DynEntCl_JitterEventiPKfffff_210:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx-0x8], eax
	mov [ebx-0x4], edx
	add esi, 0x1
	sub ebx, 0x8
	sub ecx, 0x8
	cmp edi, esi
	jnz _Z20DynEntCl_JitterEventiPKfffff_210
_Z20DynEntCl_JitterEventiPKfffff_200:
	mov eax, [ebp-0x4c]
	mov edx, [ebp-0x48]
	mov [ebp-0xa04c], eax
	mov [ebp-0xa048], edx
	mov edx, [ebp-0xa068]
	jmp _Z20DynEntCl_JitterEventiPKfffff_220
_Z20DynEntCl_JitterEventiPKfffff_290:
	lea edx, [ebp-0x9fcc]
	cmp [ebp-0xa070], edx
	jz _Z20DynEntCl_JitterEventiPKfffff_150
	mov edi, edx
_Z20DynEntCl_JitterEventiPKfffff_250:
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [ebp-0x4c], eax
	mov [ebp-0x48], edx
	lea ebx, [edi-0x8]
	mov esi, edi
	jmp _Z20DynEntCl_JitterEventiPKfffff_230
_Z20DynEntCl_JitterEventiPKfffff_240:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z20DynEntCl_JitterEventiPKfffff_230:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z20DynEntCl_JitterEventiPKfffff_240
	mov eax, [ebp-0x4c]
	mov edx, [ebp-0x48]
	mov [esi], eax
	mov [esi+0x4], edx
	add edi, 0x8
	cmp [ebp-0xa070], edi
	jnz _Z20DynEntCl_JitterEventiPKfffff_250
_Z20DynEntCl_JitterEventiPKfffff_150:
	mov eax, [dynEnt_explodeMaxEnts]
	movzx eax, word [eax+0xc]
	mov [ebp-0xa076], ax
	test ax, ax
	jz _Z20DynEntCl_JitterEventiPKfffff_70
	xor ecx, ecx
	xor edx, edx
_Z20DynEntCl_JitterEventiPKfffff_260:
	movzx eax, word [ebp+edx*8-0xa048]
	mov [ebp+edx*2-0x204c], ax
	add ecx, 0x1
	add edx, 0x1
	cmp [ebp-0xa076], cx
	jnz _Z20DynEntCl_JitterEventiPKfffff_260
	jmp _Z20DynEntCl_JitterEventiPKfffff_270
_Z20DynEntCl_JitterEventiPKfffff_100:
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi
	jmp _Z20DynEntCl_JitterEventiPKfffff_280
_Z20DynEntCl_JitterEventiPKfffff_180:
	lea edx, [ebp-0xa04c]
	lea eax, [ebp-0x9fcc]
	cmp edx, eax
	jz _Z20DynEntCl_JitterEventiPKfffff_290
	lea edx, [ebp-0xa044]
	mov [ebp-0xa060], edx
	mov eax, edx
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], esi
	lea edx, [ebp-0xa04c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jz _Z20DynEntCl_JitterEventiPKfffff_300
_Z20DynEntCl_JitterEventiPKfffff_340:
	mov edx, [ebp-0xa060]
	add edx, 0x8
	mov [ebp-0xa064], edx
	mov edi, [ebp-0xa060]
	lea eax, [ebp-0xa04c]
	sub edi, eax
	sar edi, 0x3
	test edi, edi
	jle _Z20DynEntCl_JitterEventiPKfffff_310
	mov ebx, edx
	mov ecx, [ebp-0xa060]
	sub ecx, 0x8
	xor esi, esi
_Z20DynEntCl_JitterEventiPKfffff_320:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx-0x8], eax
	mov [ebx-0x4], edx
	add esi, 0x1
	sub ebx, 0x8
	sub ecx, 0x8
	cmp edi, esi
	jnz _Z20DynEntCl_JitterEventiPKfffff_320
_Z20DynEntCl_JitterEventiPKfffff_310:
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [ebp-0xa04c], eax
	mov [ebp-0xa048], edx
	jmp _Z20DynEntCl_JitterEventiPKfffff_330
_Z20DynEntCl_JitterEventiPKfffff_370:
	mov eax, [ebp-0x4c]
	mov edx, [ebp-0x48]
	mov [esi], eax
	mov [esi+0x4], edx
	mov eax, [ebp-0xa060]
	add eax, 0x8
	mov [ebp-0xa064], eax
_Z20DynEntCl_JitterEventiPKfffff_330:
	lea edx, [ebp-0x9fcc]
	cmp [ebp-0xa064], edx
	jz _Z20DynEntCl_JitterEventiPKfffff_290
	mov eax, [ebp-0xa064]
	mov [ebp-0xa060], eax
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], esi
	lea edx, [ebp-0xa04c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z20DynEntCl_JitterEventiPKfffff_340
_Z20DynEntCl_JitterEventiPKfffff_300:
	mov [ebp-0x4c], ebx
	mov [ebp-0x48], esi
	mov ebx, [ebp-0xa060]
	sub ebx, 0x8
	mov esi, [ebp-0xa060]
	jmp _Z20DynEntCl_JitterEventiPKfffff_350
_Z20DynEntCl_JitterEventiPKfffff_360:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z20DynEntCl_JitterEventiPKfffff_350:
	mov [esp+0x4], ebx
	lea edx, [ebp-0x4c]
	mov [esp], edx
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z20DynEntCl_JitterEventiPKfffff_360
	jmp _Z20DynEntCl_JitterEventiPKfffff_370
_Z20DynEntCl_JitterEventiPKfffff_410:
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [esi], eax
	mov [esi+0x4], edx
	mov eax, [ebp-0xa06c]
	add eax, 0x8
	mov [ebp-0xa068], eax
	mov edx, eax
_Z20DynEntCl_JitterEventiPKfffff_220:
	cmp [ebp-0xa070], edx
	jz _Z20DynEntCl_JitterEventiPKfffff_150
	mov [ebp-0xa06c], edx
	mov eax, edx
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov [ebp-0x4c], ebx
	mov [ebp-0x48], esi
	lea edx, [ebp-0xa04c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z20DynEntCl_JitterEventiPKfffff_380
_Z20DynEntCl_JitterEventiPKfffff_190:
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], esi
	mov ebx, [ebp-0xa06c]
	sub ebx, 0x8
	mov esi, [ebp-0xa06c]
	jmp _Z20DynEntCl_JitterEventiPKfffff_390
_Z20DynEntCl_JitterEventiPKfffff_400:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z20DynEntCl_JitterEventiPKfffff_390:
	mov [esp+0x4], ebx
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z35DynEntCl_CompareDynEntsForExplosionRK16DynEntSortStructS1_
	test al, al
	jnz _Z20DynEntCl_JitterEventiPKfffff_400
	jmp _Z20DynEntCl_JitterEventiPKfffff_410
_Z20DynEntCl_JitterEventiPKfffff_140:
	xor edi, edi
	xor esi, esi
_Z20DynEntCl_JitterEventiPKfffff_420:
	movzx eax, word [ebp+esi*2-0x204c]
	lea ebx, [esi*8]
	mov [ebp+ebx-0xa048], ax
	mov edx, [ebp-0xa074]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf
	fstp dword [ebp+ebx-0xa04c]
	add edi, 0x1
	add esi, 0x1
	cmp [ebp-0xa076], di
	jnz _Z20DynEntCl_JitterEventiPKfffff_420
	jmp _Z20DynEntCl_JitterEventiPKfffff_430
_Z20DynEntCl_JitterEventiPKfffff_20:
	call _Z28CL_GetFirstActiveLocalClientv
	cmp [ebp+0x8], eax
	jnz _Z20DynEntCl_JitterEventiPKfffff_40
	jmp _Z20DynEntCl_JitterEventiPKfffff_440
_Z20DynEntCl_JitterEventiPKfffff_160:
	and eax, 0xffffff00
	jmp _Z20DynEntCl_JitterEventiPKfffff_450


;DynEntCl_DestroyEvent(int, unsigned short, DynEntityDrawType, float const*, float const*)
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	movzx ebx, word [ebp+0xc]
	mov eax, [dynEnt_active]
	cmp byte [eax+0xc], 0x0
	jnz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__10
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__10:
	mov dword [esp+0x4], 0x3ff
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z30CG_GetLocalClientGlobalsForEntii
	test eax, eax
	jz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__20
	mov eax, cgArray
	mov eax, [eax+0x24]
	test byte [eax+0x20], 0x6
	jnz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__30
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__80:
	xor eax, eax
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__90:
	test eax, eax
	jz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__40
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__120:
	movzx ebx, bx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov esi, eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	and word [eax+0x4], 0xfffd
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z19DynEnt_UnlinkEntity17DynEntityCollTypet
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14R_UnlinkDynEntj17DynEntityDrawType
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov ebx, eax
	mov edi, [esi+0x28]
	test edi, edi
	jz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__50
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__100:
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14UnitQuatToAxisPKfPA3_f
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__110:
	mov edi, [esi+0x28]
	test edi, edi
	jz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__60
	lea eax, [ebx+0x10]
	mov [ebp-0x4c], eax
	mov dword [esp], 0x0
	call _Z22CL_IsLocalClientActivei
	test al, al
	jnz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__70
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__60:
	mov edx, [esi+0x2c]
	test edx, edx
	jz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__40
	mov eax, [ebp+0x18]
	mov [esp+0x14], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebx+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3_
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__30:
	cmp dword [eax+0xe8], 0x3ff
	jnz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__80
	mov eax, 0x1
	jmp _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__90
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__50:
	mov ecx, [esi+0x2c]
	test ecx, ecx
	jnz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__100
	jmp _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__110
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__70:
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x4c]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	jmp _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__60
_Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__20:
	call _Z28CL_GetFirstActiveLocalClientv
	cmp [ebp+0x8], eax
	jnz _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__40
	jmp _Z21DynEntCl_DestroyEventit17DynEntityDrawTypePKfS1__120


;DynEntCl_InitEntities(int)
_Z21DynEntCl_InitEntitiesi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call _Z28CL_GetFirstActiveLocalClientv
	cmp eax, [ebp+0x8]
	jz _Z21DynEntCl_InitEntitiesi_10
_Z21DynEntCl_InitEntitiesi_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21DynEntCl_InitEntitiesi_10:
	mov dword [ebp-0x20], 0x0
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z21DynEnt_ClearCollWorld17DynEntityCollType
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	mov [ebp-0x24], ax
	test ax, ax
	jnz _Z21DynEntCl_InitEntitiesi_20
_Z21DynEntCl_InitEntitiesi_40:
	add dword [ebp-0x20], 0x1
	cmp dword [ebp-0x20], 0x2
	jz _Z21DynEntCl_InitEntitiesi_30
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z21DynEnt_ClearCollWorld17DynEntityCollType
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	mov [ebp-0x24], ax
	test ax, ax
	jz _Z21DynEntCl_InitEntitiesi_40
_Z21DynEntCl_InitEntitiesi_20:
	mov word [ebp-0x22], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z21DynEntCl_InitEntitiesi_50
_Z21DynEntCl_InitEntitiesi_70:
	mov eax, [ebp-0x1c]
	call _Z18DynEntCl_LinkModelt
_Z21DynEntCl_InitEntitiesi_80:
	add word [ebp-0x22], 0x1
	add dword [ebp-0x1c], 0x1
	movzx eax, word [ebp-0x22]
	cmp [ebp-0x24], ax
	jz _Z21DynEntCl_InitEntitiesi_40
_Z21DynEntCl_InitEntitiesi_50:
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov esi, eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov edi, eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov [ebp-0x28], eax
	mov eax, [esi+0x4]
	mov [ebx], eax
	mov eax, [esi+0x8]
	mov [ebx+0x4], eax
	mov eax, [esi+0xc]
	mov [ebx+0x8], eax
	mov eax, [esi+0x10]
	mov [ebx+0xc], eax
	mov eax, [esi+0x14]
	mov [ebx+0x10], eax
	mov eax, [esi+0x18]
	mov [ebx+0x14], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x18], eax
	mov dword [edi], 0x0
	mov word [edi+0x4], 0x2
	mov eax, [esi+0x34]
	mov [edi+0x8], eax
	mov eax, [esi]
	mov [esp], eax
	call _Z21DynEnt_GetEntityProps13DynEntityType
	cmp byte [eax+0x4], 0x0
	jz _Z21DynEntCl_InitEntitiesi_60
	or word [edi+0x4], 0x1
_Z21DynEntCl_InitEntitiesi_60:
	mov eax, [ebp-0x28]
	mov word [eax+0x2], 0x0
	mov word [eax], 0x0
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z21DynEntCl_InitEntitiesi_70
	mov eax, [ebp-0x1c]
	call _Z18DynEntCl_LinkBrusht
	jmp _Z21DynEntCl_InitEntitiesi_80
	nop


;DynEntCl_ClipMoveTrace(moveclip_t const*, trace_t*)
_Z22DynEntCl_ClipMoveTracePK10moveclip_tP7trace_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	pxor xmm0, xmm0
	ucomiss xmm0, [esi]
	jp _Z22DynEntCl_ClipMoveTracePK10moveclip_tP7trace_t_10
	jnz _Z22DynEntCl_ClipMoveTracePK10moveclip_tP7trace_t_10
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z22DynEntCl_ClipMoveTracePK10moveclip_tP7trace_t_10:
	lea edx, [ebx+0x24]
	mov eax, [ebx+0x24]
	mov [ebp-0x18], eax
	mov eax, [edx+0x4]
	mov [ebp-0x14], eax
	mov eax, [edx+0x8]
	mov [ebp-0x10], eax
	lea edx, [ebx+0x30]
	mov eax, [ebx+0x30]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	movss [ebp-0xc], xmm0
	mov eax, [esi]
	mov [ebp-0x1c], eax
	lea ecx, [ebp-0x18]
	mov [esp+0x4], esi
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, 0x1
	mov eax, ebx
	call _Z24DynEntCl_ClipMoveTrace_rPK10moveclip_tjPfS2_P7trace_t
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;DynEntCl_RegisterDvars()
_Z22DynEntCl_RegisterDvarsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0xc], _cstring_disableenable_dy
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_dynent_active
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [dynEnt_active], eax
	mov dword [esp+0x14], _cstring_force_applied_fr
	mov dword [esp+0x10], 0x80
	mov esi, 0x49742400
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_dynent_bulletfor
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [dynEnt_bulletForce], eax
	mov dword [esp+0x14], _cstring_force_applied_fr1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x46435000
	mov dword [esp], _cstring_dynent_explodefo
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [dynEnt_explodeForce], eax
	mov dword [esp+0x14], _cstring_upward_bias_appl
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x40000000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_dynent_explodeup
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [dynEnt_explodeUpbias], eax
	mov dword [esp+0x14], _cstring_scale_of_the_ran
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x42c80000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40400000
	mov dword [esp], _cstring_dynent_explodesp
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [dynEnt_explodeSpinScale], eax
	mov dword [esp+0x14], _cstring_force_below_whic
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42200000
	mov dword [esp], _cstring_dynent_explodemi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [dynEnt_explodeMinForce], eax
	mov dword [esp+0x14], _cstring_the_maximum_numb
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x1000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x14
	mov dword [esp], _cstring_dynent_explodema
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [dynEnt_explodeMaxEnts], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	jmp _Z26DynEntPieces_RegisterDvarsv
	nop


;DynEntCl_ExplosionEvent(int, unsigned char, float const*, float, float, float const*, float, int, int)
_Z23DynEntCl_ExplosionEventihPKfffS0_fii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20cc
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x2099], al
	mov eax, [dynEnt_active]
	cmp byte [eax+0xc], 0x0
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_10
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_40:
	add esp, 0x20cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_10:
	mov dword [esp+0x4], 0x3ff
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z30CG_GetLocalClientGlobalsForEntii
	test eax, eax
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_20
	mov eax, cgArray
	mov eax, [eax+0x24]
	test byte [eax+0x20], 0x6
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_30
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_100:
	xor eax, eax
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_110:
	test eax, eax
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_40
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_320:
	pxor xmm0, xmm0
	movss xmm1, dword [ebp+0x18]
	ucomiss xmm1, xmm0
	jp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_50
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_40
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_50:
	mulss xmm1, xmm1
	movss [ebp-0x2078], xmm1
	movss xmm1, dword [ebp+0x14]
	mulss xmm1, xmm1
	movss [ebp-0x207c], xmm1
	movss xmm1, dword [ebp-0x2078]
	ucomiss xmm1, [ebp-0x207c]
	ja _Z23DynEntCl_ExplosionEventihPKfffS0_fii_60
	movss [ebp-0x2074], xmm0
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_120:
	movss xmm1, dword [ebp+0x18]
	mulss xmm1, [_float__1_41421354]
	movaps xmm0, xmm1
	mov eax, [ebp+0x10]
	addss xmm0, [eax]
	movss [ebp-0x24], xmm0
	add eax, 0x4
	mov [ebp-0x2064], eax
	movaps xmm0, xmm1
	mov edx, [ebp+0x10]
	addss xmm0, [edx+0x4]
	movss [ebp-0x20], xmm0
	add edx, 0x8
	mov [ebp-0x2060], edx
	mov ecx, [ebp+0x10]
	addss xmm1, [ecx+0x8]
	movss [ebp-0x1c], xmm1
	movss xmm0, dword [ebp+0x18]
	mulss xmm0, [_float_1_41421354]
	movaps xmm1, xmm0
	addss xmm1, [ecx]
	movss [ebp-0x30], xmm1
	movaps xmm1, xmm0
	addss xmm1, [ecx+0x4]
	movss [ebp-0x2c], xmm1
	addss xmm0, [ecx+0x8]
	movss [ebp-0x28], xmm0
	cmp byte [ebp-0x2099], 0x0
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_70
	mov dword [ebp-0x1c], 0xff7fffff
	mov dword [ebp-0x28], 0x7f7fffff
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_70:
	movzx eax, byte [ebp-0x2099]
	mov [ebp-0x205c], eax
	mov dword [ebp-0x2068], 0x0
	mov edx, eax
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_90:
	mov [esp+0x8], edx
	lea ecx, [ebp-0x2054]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x10]
	mov [esp], eax
	lea ecx, [ebp-0x30]
	lea edx, [ebp-0x24]
	mov eax, [ebp-0x2068]
	call _Z27DynEntCl_GetClosestEntities17DynEntityDrawTypePKfS1_S1_Pth
	mov [ebp-0x2084], eax
	test eax, eax
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_80
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_270:
	add dword [ebp-0x2068], 0x1
	cmp dword [ebp-0x2068], 0x2
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_40
	mov edx, [ebp-0x205c]
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_90
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_30:
	cmp dword [eax+0xe8], 0x3ff
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_100
	mov eax, 0x1
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_110
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_60:
	movss xmm0, dword [ebp+0x14]
	subss xmm0, [ebp+0x18]
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movss [ebp-0x2074], xmm1
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_120
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_80:
	mov dword [ebp-0x2080], 0x0
	lea esi, [ebp-0x2054]
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_260:
	mov edx, [ebp-0x2068]
	mov [esp+0x4], edx
	movzx eax, word [esi]
	mov [esp], eax
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov [ebp-0x2088], eax
	mov ecx, [ebp-0x2068]
	mov [esp+0x4], ecx
	movzx eax, word [esi]
	mov [esp], eax
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov edi, eax
	cmp byte [ebp-0x2099], 0x0
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_130
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf
	fstp dword [ebp-0x206c]
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_280:
	movss xmm0, dword [ebp-0x206c]
	ucomiss xmm0, [ebp-0x2078]
	jae _Z23DynEntCl_ExplosionEventihPKfffS0_fii_140
	ucomiss xmm0, [ebp-0x207c]
	ja _Z23DynEntCl_ExplosionEventihPKfffS0_fii_150
	movss xmm1, dword [ebp+0x20]
	movss [ebp-0x2070], xmm1
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_290:
	mov eax, [ebp-0x2068]
	mov [esp+0x4], eax
	movzx eax, word [esi]
	mov [esp], eax
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov [ebp-0x208c], eax
	mov eax, [eax+0x30]
	movss xmm3, dword [ebp-0x2070]
	mulss xmm3, [eax+0x18]
	mov eax, [dynEnt_explodeForce]
	mulss xmm3, [eax+0xc]
	mov ecx, [ebp+0x1c]
	movss xmm1, dword [ecx]
	mov eax, vec3_origin
	ucomiss xmm1, [eax]
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_160
	jp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_160
	mov edx, eax
	mov eax, ecx
	add eax, 0x4
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_170
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_170
	mov ecx, edx
	mov edx, [ebp+0x1c]
	add edx, 0x8
	movss xmm0, dword [ecx+0x8]
	mov ecx, [ebp+0x1c]
	ucomiss xmm0, [ecx+0x8]
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_180
	jp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_180
	mov eax, [dynEnt_explodeMinForce]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm3
	ja _Z23DynEntCl_ExplosionEventihPKfffS0_fii_140
	lea eax, [edi+0x10]
	movss xmm0, dword [edi+0x10]
	mov edx, [ebp+0x10]
	subss xmm0, [edx]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [eax+0x4]
	mov ecx, [ebp-0x2064]
	subss xmm0, [ecx]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [eax+0x8]
	mov eax, [ebp-0x2060]
	subss xmm0, [eax]
	movss [ebp-0x40], xmm0
	cmp byte [ebp-0x2099], 0x0
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_190
	pxor xmm7, xmm7
	movss [ebp-0x40], xmm7
	movaps xmm2, xmm7
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_340:
	movss xmm4, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x44]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movss xmm5, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm7
	jb _Z23DynEntCl_ExplosionEventihPKfffS0_fii_200
	movss xmm6, dword [_float_1_00000000]
	movaps xmm0, xmm6
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_360:
	mulss xmm4, xmm0
	movss [ebp-0x48], xmm4
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x44]
	movss [ebp-0x44], xmm2
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	mov eax, [dynEnt_explodeUpbias]
	addss xmm0, [eax+0xc]
	movss [ebp-0x40], xmm0
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm7
	jb _Z23DynEntCl_ExplosionEventihPKfffS0_fii_210
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_350:
	movaps xmm1, xmm6
	mulss xmm4, xmm6
	movss [ebp-0x48], xmm4
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	mulss xmm1, [ebp-0x40]
	movss [ebp-0x40], xmm1
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_220
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_170:
	mov edx, ecx
	add edx, 0x8
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_180:
	movss [ebp-0x48], xmm1
	mov eax, [eax]
	mov [ebp-0x44], eax
	mov eax, [edx]
	mov [ebp-0x40], eax
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_220:
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x48]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x38], xmm0
	mulss xmm3, [ebp-0x40]
	movss [ebp-0x34], xmm3
	mov edx, [ebp-0x208c]
	mov eax, [edx]
	mov [esp], eax
	call _Z21DynEnt_GetEntityProps13DynEntityType
	cmp byte [eax+0x6], 0x0
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_230
	mov ecx, [ebp-0x2088]
	mov ebx, [ecx]
	test ebx, ebx
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_240
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_310:
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23Phys_ObjGetCenterOfMassiPf
	movss xmm0, dword [ebp-0x54]
	movss [ebp-0x2098], xmm0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call _Z6flrandff
	fstp dword [ebp-0x20ac]
	movss xmm0, dword [ebp-0x20ac]
	mov eax, [dynEnt_explodeSpinScale]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x2098]
	movss [ebp-0x54], xmm0
	movss xmm1, dword [ebp-0x50]
	movss [ebp-0x2094], xmm1
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call _Z6flrandff
	fstp dword [ebp-0x20ac]
	movss xmm0, dword [ebp-0x20ac]
	mov eax, [dynEnt_explodeSpinScale]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x2094]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x4c]
	movss [ebp-0x2090], xmm0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call _Z6flrandff
	fstp dword [ebp-0x20ac]
	movss xmm0, dword [ebp-0x20ac]
	mov eax, [dynEnt_explodeSpinScale]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x2090]
	movss [ebp-0x4c], xmm0
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x54]
	mov [esp+0x8], eax
	mov edx, [ebp-0x2088]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z16Phys_ObjAddForce9PhysWorldiPKfS1_
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_230:
	mov ecx, [ebp-0x208c]
	mov eax, [ecx]
	mov [esp], eax
	call _Z21DynEnt_GetEntityProps13DynEntityType
	cmp byte [eax+0x7], 0x0
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_140
	mov eax, [ebp+0x24]
	sub eax, [ebp+0x28]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x2070]
	movss [ebp-0x2070], xmm0
	cvtsi2ss xmm0, dword [ebp+0x28]
	addss xmm0, [ebp-0x2070]
	cvttss2si eax, xmm0
	test eax, eax
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_250
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_140:
	add dword [ebp-0x2080], 0x1
	add esi, 0x2
	mov edx, [ebp-0x2080]
	cmp [ebp-0x2084], edx
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_260
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_270
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_130:
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf
	fstp dword [ebp-0x206c]
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_280
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_160:
	mov eax, ecx
	mov edx, ecx
	add eax, 0x4
	add edx, 0x8
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_180
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_150:
	sqrtss xmm0, [ebp-0x206c]
	subss xmm0, [ebp+0x18]
	movss xmm1, dword [ebp-0x2074]
	mulss xmm1, xmm0
	movss xmm0, dword [ebp+0x20]
	mulss xmm0, xmm1
	movss [ebp-0x2070], xmm0
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_290
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_250:
	movzx edx, word [esi]
	mov [esp+0x8], eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	mov ecx, [ebp-0x2068]
	mov eax, [ebp+0x8]
	call _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_140
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_240:
	mov edx, [ebp-0x208c]
	mov eax, [edx+0x30]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea eax, [edi+0x10]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	mov ebx, eax
	test eax, eax
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_300
	mov dword [esp+0x4], _cstring_dynentcl_createp
	mov dword [esp], 0x1
	call _Z16Com_PrintWarningiPKcz
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_330:
	mov eax, [ebp-0x2088]
	mov [eax], ebx
	test ebx, ebx
	jz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_230
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_310
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_20:
	call _Z28CL_GetFirstActiveLocalClientv
	cmp [ebp+0x8], eax
	jnz _Z23DynEntCl_ExplosionEventihPKfffS0_fii_40
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_320
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_300:
	mov [esp+0x4], eax
	mov ecx, [ebp-0x208c]
	mov [esp], ecx
	call _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_330
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_190:
	pxor xmm7, xmm7
	movss xmm2, dword [ebp-0x40]
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_340
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_210:
	divss xmm6, xmm1
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_350
_Z23DynEntCl_ExplosionEventihPKfffS0_fii_200:
	movss xmm6, dword [_float_1_00000000]
	movaps xmm0, xmm6
	divss xmm0, xmm1
	jmp _Z23DynEntCl_ExplosionEventihPKfffS0_fii_360


;DynEntCl_ProcessEntities(int)
_Z24DynEntCl_ProcessEntitiesi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	call _Z28CL_GetFirstActiveLocalClientv
	mov [ebp-0x3c], eax
	cmp eax, [ebp+0x8]
	jz _Z24DynEntCl_ProcessEntitiesi_10
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24DynEntCl_ProcessEntitiesi_10:
	mov dword [esp+0x4], _cstring_process_dyn_ents
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov dword [esp], 0x0
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	mov [ebp-0x32], ax
	test ax, ax
	jnz _Z24DynEntCl_ProcessEntitiesi_20
_Z24DynEntCl_ProcessEntitiesi_90:
	mov dword [esp], 0x1
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	mov [ebp-0x2a], ax
	test ax, ax
	jnz _Z24DynEntCl_ProcessEntitiesi_30
_Z24DynEntCl_ProcessEntitiesi_50:
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z14Phys_RunToTimei9PhysWorldi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24DynEntCl_ProcessEntitiesi_30:
	xor edi, edi
	xor esi, esi
	jmp _Z24DynEntCl_ProcessEntitiesi_40
_Z24DynEntCl_ProcessEntitiesi_60:
	add edi, 0x1
	add esi, 0x1
	cmp [ebp-0x2a], di
	jz _Z24DynEntCl_ProcessEntitiesi_50
_Z24DynEntCl_ProcessEntitiesi_40:
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov ebx, eax
	test byte [eax+0x4], 0x1
	jz _Z24DynEntCl_ProcessEntitiesi_60
	mov edx, [eax]
	test edx, edx
	jz _Z24DynEntCl_ProcessEntitiesi_60
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov [ebp-0x38], eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	mov eax, [ebx]
	mov [esp], eax
	call _Z16Phys_ObjIsAsleepi
	test al, al
	jnz _Z24DynEntCl_ProcessEntitiesi_70
_Z24DynEntCl_ProcessEntitiesi_130:
	mov ebx, [ebp-0x38]
	add ebx, 0x10
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3c23d70a
	mov [esp+0x4], ebx
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _Z24VecNCompareCustomEpsilonPKfS0_fi
	test eax, eax
	jnz _Z24DynEntCl_ProcessEntitiesi_60
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x38]
	mov [edx+0x10], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x8], eax
	mov eax, esi
	call _Z18DynEntCl_LinkBrusht
	jmp _Z24DynEntCl_ProcessEntitiesi_60
_Z24DynEntCl_ProcessEntitiesi_20:
	xor edi, edi
	xor esi, esi
	jmp _Z24DynEntCl_ProcessEntitiesi_80
_Z24DynEntCl_ProcessEntitiesi_100:
	add edi, 0x1
	add esi, 0x1
	cmp [ebp-0x32], di
	jz _Z24DynEntCl_ProcessEntitiesi_90
_Z24DynEntCl_ProcessEntitiesi_80:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov ebx, eax
	test byte [eax+0x4], 0x1
	jz _Z24DynEntCl_ProcessEntitiesi_100
	mov ecx, [eax]
	test ecx, ecx
	jz _Z24DynEntCl_ProcessEntitiesi_100
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov [ebp-0x30], eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	mov eax, [ebx]
	mov [esp], eax
	call _Z16Phys_ObjIsAsleepi
	test al, al
	jnz _Z24DynEntCl_ProcessEntitiesi_110
_Z24DynEntCl_ProcessEntitiesi_120:
	mov ebx, [ebp-0x30]
	add ebx, 0x10
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3c23d70a
	mov [esp+0x4], ebx
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _Z24VecNCompareCustomEpsilonPKfS0_fi
	test eax, eax
	jnz _Z24DynEntCl_ProcessEntitiesi_100
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x30]
	mov [edx+0x10], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x8], eax
	mov eax, esi
	call _Z18DynEntCl_LinkModelt
	jmp _Z24DynEntCl_ProcessEntitiesi_100
_Z24DynEntCl_ProcessEntitiesi_110:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [ebx], 0x0
	jmp _Z24DynEntCl_ProcessEntitiesi_120
_Z24DynEntCl_ProcessEntitiesi_70:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [ebx], 0x0
	jmp _Z24DynEntCl_ProcessEntitiesi_130
	nop


;DynEntCl_DynEntImpactEvent(int, int, float const*, float const*, int, unsigned char)
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov esi, [ebp+0x10]
	movzx eax, byte [ebp+0x1c]
	mov [ebp-0xe5], al
	mov eax, [dynEnt_active]
	cmp byte [eax+0xc], 0x0
	jnz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_10
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_40:
	xor eax, eax
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_110:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_10:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z30CG_GetLocalClientGlobalsForEntii
	test eax, eax
	jz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_20
	mov eax, cgArray
	mov eax, [eax+0x24]
	test byte [eax+0x20], 0x6
	jnz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_30
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_120:
	xor eax, eax
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_130:
	test eax, eax
	jz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_40
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_190:
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_50
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_150:
	cld
	mov ecx, 0xb
	xor eax, eax
	lea edi, [ebp-0x6c]
	rep stosd
	mov dword [ebp-0x6c], 0x3f800000
	mov eax, [esi]
	mov [ebp-0xcc], eax
	mov eax, [esi+0x4]
	mov [ebp-0xc8], eax
	mov eax, [esi+0x8]
	mov [ebp-0xc4], eax
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [ebp-0xc0], eax
	mov eax, [edx+0x4]
	mov [ebp-0xbc], eax
	mov eax, [edx+0x8]
	mov [ebp-0xb8], eax
	lea ebx, [ebp-0xcc]
	mov [esp], ebx
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x802013
	mov dword [ebp-0xa0], 0x1
	mov dword [ebp-0x9c], 0x0
	lea edi, [ebp-0x6c]
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z19DynEntCl_PointTracePK12pointtrace_tP7trace_t
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z20Trace_GetDynEntHitIdPK7trace_tP17DynEntityDrawType
	cmp ax, 0xffff
	jz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_40
	movzx eax, ax
	mov [ebp-0xe4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0xe4]
	mov [esp], edx
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov edi, eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0xe4]
	mov [esp], eax
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	mov [ebp-0xe0], eax
	movss xmm4, dword [ebp-0x6c]
	movss xmm1, dword [esi]
	mov edx, [ebp+0x14]
	movss xmm5, dword [edx]
	movaps xmm0, xmm5
	subss xmm0, xmm1
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [esi+0x4]
	movss xmm3, dword [edx+0x4]
	movaps xmm0, xmm3
	subss xmm0, xmm1
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm0, dword [esi+0x8]
	movss xmm2, dword [edx+0x8]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	mulss xmm4, xmm1
	addss xmm0, xmm4
	movss [ebp-0x20], xmm0
	subss xmm5, [esi]
	movss [ebp-0x34], xmm5
	subss xmm3, [esi+0x4]
	movss [ebp-0x30], xmm3
	subss xmm2, [esi+0x8]
	movss [ebp-0x2c], xmm2
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	mulss xmm3, xmm3
	addss xmm0, xmm3
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_60
	movss xmm1, dword [_float_1_00000000]
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_200:
	mulss xmm5, xmm1
	movss [ebp-0x34], xmm5
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	mulss xmm1, [ebp-0x2c]
	movss [ebp-0x2c], xmm1
	cmp byte [ebp-0xe5], 0x0
	jz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_70
	mov eax, cgMedia
	mov eax, [eax+0x1044]
	mov [esp+0xc], eax
	lea esi, [ebp-0x28]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_140:
	mov eax, [edi]
	mov [esp], eax
	call _Z21DynEnt_GetEntityProps13DynEntityType
	cmp byte [eax+0x6], 0x0
	jnz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_80
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_180:
	mov eax, [edi]
	mov [esp], eax
	call _Z21DynEnt_GetEntityProps13DynEntityType
	cmp byte [eax+0x7], 0x0
	jz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_90
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_100
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_90:
	mov eax, 0x1
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_110
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_30:
	mov edx, [ebp+0xc]
	cmp edx, [eax+0xe8]
	jnz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_120
	mov eax, 0x1
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_130
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_70:
	mov ecx, [ebp-0x5c]
	and ecx, 0x1f00000
	shr ecx, 0x14
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	lea esi, [ebp-0x28]
	mov [esp], esi
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z26DynEntCl_PlayImpactEffectsiiiPKfS0_
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_140
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_100:
	mov ecx, [ebp-0x1c]
	mov edi, [ebp+0x18]
	mov [esp+0x8], edi
	lea eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov [esp], esi
	mov edx, [ebp-0xe4]
	mov eax, [ebp+0x8]
	call _Z15DynEntCl_Damageit17DynEntityDrawTypePKfS1_i
	mov eax, 0x1
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_110
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_50:
	movzx eax, byte [ebp-0xe5]
	mov [ebp-0xd9], al
	lea ebx, [ebp-0x98]
	cld
	mov ecx, 0xb
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov dword [ebp-0x98], 0x3f800000
	mov dword [esp+0x10], 0x2806831
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov edi, [ebp+0x14]
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z30CG_LocationalTraceEntitiesOnlyP7trace_tPKfS2_ii
	mov eax, [ebp-0x7c]
	test eax, eax
	jz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_150
	movss xmm2, dword [ebp-0x98]
	movss xmm1, dword [esi]
	movss xmm0, dword [edi]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x40], xmm1
	movss xmm1, dword [esi+0x4]
	movss xmm0, dword [edi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movss xmm1, dword [esi+0x8]
	movss xmm0, dword [edi+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x38], xmm1
	movzx eax, byte [ebp-0xd9]
	mov [esp+0x14], eax
	lea eax, [ebp-0x40]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_150
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_80:
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0xe4]
	mov [esp], edx
	call _Z20DynEnt_GetClientPoset17DynEntityDrawType
	mov edx, eax
	mov eax, [ebp-0xe0]
	mov ebx, [eax]
	test ebx, ebx
	jnz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_160
	mov eax, [edi+0x30]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	lea eax, [edx+0x10]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	mov ebx, eax
	test eax, eax
	jnz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_170
	mov dword [esp+0x4], _cstring_dynentcl_createp
	mov dword [esp], 0x1
	call _Z16Com_PrintWarningiPKcz
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_210:
	mov edx, [ebp-0xe0]
	mov [edx], ebx
	test ebx, ebx
	jz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_180
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_160:
	mov eax, [edi+0x30]
	mov eax, [eax+0x14]
	mov [esp+0x14], eax
	mov eax, [dynEnt_bulletForce]
	mov eax, [eax+0xc]
	mov [esp+0x10], eax
	lea eax, [ebp-0x34]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_180
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_20:
	call _Z28CL_GetFirstActiveLocalClientv
	cmp [ebp+0x8], eax
	jnz _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_40
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_190
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_60:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_200
_Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_170:
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi
	jmp _Z26DynEntCl_DynEntImpactEventiiPKfS0_ih_210
	nop


;DynEntCl_EntityImpactEvent(trace_t const*, int, int, float const*, float const*, unsigned char)
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	movzx esi, byte [ebp+0x1c]
	cmp dword [ebx+0x1c], 0x1
	jz _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_10
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_10:
	mov eax, [dynEnt_active]
	cmp byte [eax+0xc], 0x0
	jz _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_20
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z30CG_GetLocalClientGlobalsForEntii
	test eax, eax
	jz _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_30
	mov eax, cgArray
	mov eax, [eax+0x24]
	test byte [eax+0x20], 0x6
	jz _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_40
	mov edx, [ebp+0x10]
	cmp edx, [eax+0xe8]
	jz _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_50
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_40:
	xor eax, eax
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_80:
	test eax, eax
	jz _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_20
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_110:
	movzx eax, word [ebx+0x20]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea edi, [eax+edx]
	add edi, cg_entitiesArray
	mov eax, [edi+0x18]
	add eax, 0x1
	cmp eax, 0x1
	jbe _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_20
	mov eax, [ebp+0x18]
	movss xmm3, dword [eax]
	mov edx, [ebp+0x14]
	subss xmm3, [edx]
	movss [ebp-0x24], xmm3
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0x1c], xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_60
	movss xmm1, dword [_float_1_00000000]
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_90:
	mulss xmm3, xmm1
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	mov eax, esi
	test al, al
	jz _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_70
	mov eax, cgMedia
	mov eax, [eax+0x1044]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_100:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov [esp], eax
	call _Z17DObjGetPhysPresetPK6DObj_s
	mov eax, [eax+0x14]
	mov [esp+0x14], eax
	mov eax, [dynEnt_bulletForce]
	mov eax, [eax+0xc]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov eax, [edi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff
	jmp _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_20
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_50:
	mov eax, 0x1
	jmp _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_80
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_60:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_90
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_70:
	mov ecx, [ebx+0x10]
	and ecx, 0x1f00000
	shr ecx, 0x14
	lea eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x18]
	mov [esp], edx
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call _Z26DynEntCl_PlayImpactEffectsiiiPKfS0_
	jmp _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_100
_Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_30:
	call _Z28CL_GetFirstActiveLocalClientv
	cmp [ebp+0xc], eax
	jnz _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_20
	jmp _Z26DynEntCl_EntityImpactEventPK7trace_tiiPKfS3_h_110


;void std::__adjust_heap<DynEntSortStruct*, int, DynEntSortStruct, unsigned char (*)(DynEntSortStruct const&, DynEntSortStruct const&)>(DynEntSortStruct*, int, int, DynEntSortStruct, unsigned char (*)(DynEntSortStruct const&, DynEntSortStruct const&))
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*8]
	mov edi, eax
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100:
	mov eax, [ebp+0x14]
	mov edx, [ebp+0x18]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40:
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [esi], eax
	mov [esi+0x4], edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50:
	mov eax, [esi]
	mov edx, [esi+0x4]
	mov ecx, [ebp+0x8]
	mov [ecx+edi*8], eax
	mov [ecx+edi*8+0x4], edx
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*8]
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp+0x1c]
	test al, al
	jnz _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*8]
	jmp _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10:
	mov [ebp-0x2c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80:
	lea edi, [ebx-0x1]
	mov edx, [ebp+0x8]
	lea esi, [edx+edi*8]
	mov ebx, edx
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90:
	mov eax, [esi]
	mov edx, [esi+0x4]
	mov ecx, [ebp-0x2c]
	mov [ebx+ecx*8], eax
	mov [ebx+ecx*8+0x4], edx
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70
	mov [ebp-0x2c], edi
	mov edi, ebx
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*8]
	lea eax, [esi-0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x1c]
	test al, al
	jnz _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
	mov ebx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90
_ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20:
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+ecx*8-0x8]
	mov edx, [ebx+ecx*8-0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov edi, ecx
	sub edi, 0x1
	lea esi, [ebx+edi*8]
	jmp _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100
	nop


;void std::__introsort_loop<DynEntSortStruct*, int, unsigned char (*)(DynEntSortStruct const&, DynEntSortStruct const&)>(DynEntSortStruct*, DynEntSortStruct*, int, unsigned char (*)(DynEntSortStruct const&, DynEntSortStruct const&))
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x87
	jle _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jnz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__140:
	cmp eax, 0xf
	jle _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__10
	sar eax, 0x3
	mov [ebp-0x3c], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	lea edi, [eax+edx]
	sar edi, 1
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*8]
	xor ebx, ebx
	jmp _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__40:
	add ebx, 0x1
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__30:
	mov eax, [esi]
	mov edx, [esi+0x4]
	mov ecx, [ebp+0x14]
	mov [esp+0x14], ecx
	mov [esp+0xc], eax
	mov [esp+0x10], edx
	mov eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov eax, edi
	sub eax, ebx
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub esi, 0x8
	cmp ebx, edi
	jnz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__40
	mov ecx, [ebp+0xc]
	mov [ebp-0x38], ecx
	mov edi, ecx
	sub edi, 0x8
	mov eax, ecx
	sub eax, [ebp+0x8]
	mov [ebp-0x34], eax
	mov esi, eax
	sub esi, 0x8
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__50:
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [ebp-0x60], eax
	mov [ebp-0x5c], edx
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	mov ecx, [ecx+0x4]
	mov eax, [ebp-0x38]
	mov [eax-0x8], edx
	mov [eax-0x4], ecx
	mov edx, [ebp+0x14]
	mov [esp+0x14], edx
	mov eax, [ebp-0x60]
	mov edx, [ebp-0x5c]
	mov [esp+0xc], eax
	mov [esp+0x10], edx
	mov eax, esi
	sar eax, 0x3
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP16DynEntSortStructiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub dword [ebp-0x38], 0x8
	sub edi, 0x8
	sub esi, 0x8
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	add eax, [ebp-0x34]
	lea eax, [eax+esi+0x8]
	cmp eax, 0xf
	jg _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__20:
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov dword [ebp-0x30], 0x0
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__150:
	sub dword [ebp-0x2c], 0x1
	mov edi, [ebp+0x8]
	sar eax, 0x3
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	lea ebx, [edi+edx*8]
	sub esi, 0x8
	mov [esp+0x4], ebx
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__60
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__70
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__160:
	mov edi, ebx
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__120:
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__110:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__90:
	sub esi, 0x8
	mov [esp+0x4], esi
	lea edx, [ebp-0x20]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__90
	cmp edi, esi
	jae _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__100
	mov ecx, [edi]
	mov ebx, [edi+0x4]
	mov eax, [esi]
	mov edx, [esi+0x4]
	mov [edi], eax
	mov [edi+0x4], edx
	mov [esi], ecx
	mov [esi+0x4], ebx
	add edi, 0x8
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__80:
	add edi, 0x8
	jmp _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__110
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__70:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__120
	mov edi, esi
	jmp _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__100:
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], edi
	call _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov eax, edi
	sub eax, [ebp+0x8]
	cmp eax, 0x87
	jle _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__10
	add dword [ebp-0x30], 0x1
	mov [ebp+0xc], edi
	mov edx, [ebp-0x30]
	cmp [ebp+0x10], edx
	jz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__140
	mov esi, edi
	jmp _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__150
_ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__60:
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__120
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__160
	mov edi, esi
	jmp _ZSt16__introsort_loopIP16DynEntSortStructiPFhRKS0_S3_EEvT_S6_T0_T1__120


;Initialized global or static variables of DynEntity_client:
SECTION .data


;Initialized constant data of DynEntity_client:
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
g_zero: dd 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ19DynEntCl_MeleeEventiiE12traceOffsets: dd 0x0, 0x0, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of DynEntity_client:
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
dynEnt_active: resb 0x4
dynEnt_explodeMaxEnts: resb 0x4
dynEnt_explodeSpinScale: resb 0x4
dynEnt_explodeUpbias: resb 0x4
dynEnt_explodeMinForce: resb 0x4
dynEnt_explodeForce: resb 0x4
dynEnt_bulletForce: resb 0x58


;All cstrings:
SECTION .rdata
_cstring_dynentcl_areaent:		db "DynEntCl_AreaEntities_r: Hit max count!",0ah,0
_cstring_dyn_brush_trace:		db "dyn brush trace",0
_cstring_dyn_model_trace:		db "dyn model trace",0
_cstring_dynentcl_createp:		db "DynEntCl_CreatePhysObj: Unable to create physic object.",0
_cstring_disableenable_dy:		db "Disable/enable dynent reactions",0
_cstring_dynent_active:		db "dynEnt_active",0
_cstring_force_applied_fr:		db "Force applied from bullet hit",0
_cstring_dynent_bulletfor:		db "dynEnt_bulletForce",0
_cstring_force_applied_fr1:		db "Force applied from explosion hit",0
_cstring_dynent_explodefo:		db "dynEnt_explodeForce",0
_cstring_upward_bias_appl:		db "Upward bias applied to force directions from explosion hits",0
_cstring_dynent_explodeup:		db "dynEnt_explodeUpbias",0
_cstring_scale_of_the_ran:		db "Scale of the random offset from the center of mass for explosion forces.",0
_cstring_dynent_explodesp:		db "dynEnt_explodeSpinScale",0
_cstring_force_below_whic:		db "Force below which dynents won",27h,"t even bother waking up",0
_cstring_dynent_explodemi:		db "dynEnt_explodeMinForce",0
_cstring_the_maximum_numb:		db "The maximum number of dynents that can be awakened by one explosion",0
_cstring_dynent_explodema:		db "dynEnt_explodeMaxEnts",0
_cstring_process_dyn_ents:		db "process dyn ents",0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_00000000:		dd 0x0	; 0
_float__1_41421354:		dd 0xbfb504f3	; -1.41421
_float_1_41421354:		dd 0x3fb504f3	; 1.41421

