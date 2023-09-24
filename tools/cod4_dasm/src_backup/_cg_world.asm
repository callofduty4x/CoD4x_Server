;Imports of cg_world:
	extern _Z16RadiusFromBoundsPKfS0_
	extern _Z14CM_ModelBoundsjPfS_
	extern _Z29CG_GetCollWorldLocalClientNumv
	extern _Z22CG_GetEntityCollSectorit
	extern _Z20CG_GetEntityCollNodeii
	extern cg_entitiesArray
	extern _Z15DObjHasContentsP6DObj_si
	extern _Z15DObjGetContentsPK6DObj_s
	extern _Z13DObjGetRadiusPK6DObj_s
	extern _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	extern cgArray
	extern _Z25DObjGeomTracelinePartBitsP6DObj_siPi
	extern _Z15CG_DObjCalcPosePK7cpose_tPK6DObj_sPi
	extern _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s
	extern _Z17Com_GetClientDObjii
	extern vec3_origin
	extern _Z22CM_TransformedBoxTraceP7trace_tPKfS2_S2_S2_jiS2_S2_
	extern _Z18CM_ContentsOfModelj
	extern _Z15CM_TempBoxModelPKfS0_i
	extern _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	extern _Z25CM_PointTraceStaticModelsP7trace_tPKfS2_i
	extern _Z19CM_CalcTraceExtentsP12TraceExtents
	extern _Z22DynEntCl_ClipMoveTracePK10moveclip_tP7trace_t
	extern _Z17CG_LinkEntityColliiPKfS0_
	extern _Z19CG_UnlinkEntityCollii
	extern _Z18PIXBeginNamedEventiPKcz

;Exports of cg_world:
	global _Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2_
	global _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t
	global _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t
	global _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh
	global _Z13CG_LinkEntityii
	global _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	global _Z15CG_UnlinkEntityii
	global _Z17CG_IsEntityLinkedii
	global _Z18CG_LocationalTraceP7trace_tPKfS2_ii
	global _Z20CG_EntityNeedsLinkedii
	global _Z30CG_LocationalTraceEntitiesOnlyP7trace_tPKfS2_ii


SECTION .text


;CG_GetEntityBModelBounds(centity_s const*, float*, float*, float*, float*)
_Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov [ebp-0x1c], edx
	mov edi, ecx
	mov esi, [ebp+0x8]
	lea eax, [eax+0xcc]
	mov edx, [eax+0x98]
	cmp edx, 0xffffff
	jz _Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2__10
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	mov eax, [ebp-0x1c]
	movss [eax+0x4], xmm1
	movss [eax], xmm1
	subss xmm0, xmm2
	movss [ecx+0x4], xmm0
	movss [ecx], xmm0
	movzx eax, dh
	sub eax, 0x1
	cvtsi2ss xmm0, eax
	movaps xmm1, xmm2
	subss xmm1, xmm0
	mov eax, [ebp-0x1c]
	movss [eax+0x8], xmm1
	sar edx, 0x10
	movzx eax, dl
	sub eax, 0x20
	cvtsi2ss xmm0, eax
	subss xmm0, xmm2
	movss [ecx+0x8], xmm0
_Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2__20:
	mov [esp+0x4], edi
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z16RadiusFromBoundsPKfS0_
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	mov edx, [ebp-0x2c]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x2c], xmm0
	mov eax, [ebp-0x2c]
	mov [esi], eax
	mov [esi+0x4], eax
	mov [esi+0x8], eax
	mov eax, [ebp+0xc]
	mov [eax], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	movss xmm0, dword [ebx+0x1c]
	addss xmm0, [esi]
	movss [esi], xmm0
	movss xmm0, dword [ebx+0x20]
	addss xmm0, [esi+0x4]
	movss [esi+0x4], xmm0
	movss xmm0, dword [ebx+0x24]
	addss xmm0, [esi+0x8]
	movss [esi+0x8], xmm0
	movss xmm0, dword [ebx+0x1c]
	addss xmm0, [eax]
	movss [eax], xmm0
	movss xmm0, dword [ebx+0x20]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebx+0x24]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2__10:
	mov [esp+0x8], ecx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov eax, [eax+0x88]
	mov [esp], eax
	call _Z14CM_ModelBoundsjPfS_
	jmp _Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2__20
	nop


;CG_PointTraceToEntities_r(pointtrace_t const*, unsigned short, float const*, float const*, trace_t*)
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t:
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_200:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov [ebp-0xb4], eax
	mov ebx, ecx
	mov esi, edx
	call _Z29CG_GetCollWorldLocalClientNumv
	mov [ebp-0xa8], eax
	mov eax, [ebx]
	mov [ebp-0x58], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x50], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x4c], eax
	test si, si
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_10
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_40:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_10:
	mov eax, [ebp-0xb4]
	add eax, 0xc
	mov [ebp-0xb8], eax
	jmp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_20
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_50:
	mov ecx, [ebp-0xb0]
	movss xmm0, dword [ecx]
	movzx eax, word [ecx+0x4]
	movss xmm2, dword [ebp+eax*4-0x58]
	subss xmm2, xmm0
	mov edx, [ebp+0x8]
	movss xmm3, dword [edx+eax*4]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_30
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
	movzx esi, word [ecx+eax*2+0x8]
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_220:
	test si, si
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_40
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_20:
	movzx eax, si
	mov [esp+0x4], eax
	mov edx, [ebp-0xa8]
	mov [esp], edx
	call _Z22CG_GetEntityCollSectorit
	mov [ebp-0xb0], eax
	movzx eax, word [eax+0xc]
	test ax, ax
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_50
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_120:
	movzx eax, ax
	lea ebx, [eax-0x1]
	mov [esp+0x4], ebx
	mov eax, [ebp-0xa8]
	mov [esp], eax
	call _Z20CG_GetEntityCollNodeii
	mov [ebp-0xac], eax
	mov edx, [ebp-0xb4]
	mov eax, [edx+0x24]
	cmp ebx, [eax]
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_60
	call _Z29CG_GetCollWorldLocalClientNumv
	mov ecx, eax
	lea eax, [ebx*4]
	mov edx, ebx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea edi, [edx+eax]
	add edi, cg_entitiesArray
	lea eax, [edi+0xcc]
	mov [ebp-0xa4], eax
	mov edx, [ebp-0xb4]
	mov esi, [edx+0x2c]
	test esi, esi
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_70
	mov edx, [eax+0x98]
	test edx, edx
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_70
	mov eax, [eax+0x4]
	cmp eax, 0x6
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_80
	cmp eax, 0xe
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_80
	cmp eax, 0xc
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_80
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_70:
	xor esi, esi
	mov ecx, [ebp-0xa4]
	mov eax, [ecx+0x98]
	test eax, eax
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_90
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_150:
	test esi, esi
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_100
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_160:
	mov edx, [ebp-0xb4]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15DObjHasContentsP6DObj_si
	test eax, eax
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_110
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_100:
	mov eax, [ebp+0xc]
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_130:
	pxor xmm0, xmm0
	ucomiss xmm0, [eax]
	jp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_60
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_40
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_60:
	mov edx, [ebp-0xac]
	movzx eax, word [edx+0x2]
	test ax, ax
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_120
	jmp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_50
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_110:
	mov [esp], esi
	call _Z15DObjGetContentsPK6DObj_s
	mov [ebp-0xa0], eax
	mov ecx, [ebp-0xb4]
	test [ecx+0x28], eax
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_100
	mov [esp], esi
	call _Z13DObjGetRadiusPK6DObj_s
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	movss xmm3, dword [edi+0x24]
	subss xmm3, xmm1
	movss xmm2, dword [edi+0x20]
	subss xmm2, xmm1
	movss xmm0, dword [edi+0x1c]
	subss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss [ebp-0x38], xmm2
	movss [ebp-0x34], xmm3
	movaps xmm2, xmm1
	addss xmm2, [edi+0x24]
	movaps xmm0, xmm1
	addss xmm0, [edi+0x20]
	addss xmm1, [edi+0x1c]
	movss [ebp-0x24], xmm1
	movss [ebp-0x20], xmm0
	movss [ebp-0x1c], xmm2
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov edx, [ebp-0xb4]
	mov [esp], edx
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_100
	mov ecx, [ebp-0xb4]
	movss xmm0, dword [ecx]
	mov eax, cgArray
	subss xmm0, [eax+0x49310]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ecx+0x4]
	subss xmm0, [eax+0x49314]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [eax+0x49318]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ecx+0xc]
	subss xmm0, [eax+0x49310]
	movss [ebp-0x30], xmm0
	mov edx, [ebp-0xb8]
	movss xmm0, dword [edx+0x4]
	subss xmm0, [eax+0x49314]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [eax+0x49318]
	movss [ebp-0x28], xmm0
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [ebp-0x94], eax
	lea ebx, [ebp-0x78]
	mov [esp+0x8], ebx
	mov edx, [ebp-0xb4]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z25DObjGeomTracelinePartBitsP6DObj_siPi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z15CG_DObjCalcPosePK7cpose_tPK6DObj_sPi
	lea eax, [ebp-0x94]
	mov [esp+0x10], eax
	mov ecx, [ebp-0xb4]
	mov eax, [ecx+0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s
	movss xmm0, dword [ebp-0x94]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax]
	jae _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_130
	movss [eax], xmm0
	mov eax, [ebp-0x90]
	mov edx, [ebp+0xc]
	mov [edx+0x10], eax
	movzx eax, word [ebp-0x80]
	mov [edx+0x22], ax
	movzx eax, word [ebp-0x7e]
	mov [edx+0x24], ax
	movzx eax, word [ebp-0x7c]
	mov [edx+0x26], ax
	mov edx, [ebp+0xc]
	add edx, 0x4
	mov eax, [ebp-0x8c]
	mov ecx, [ebp+0xc]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x88]
	mov [edx+0x4], eax
	mov eax, [ebp-0x84]
	mov [edx+0x8], eax
	movss xmm0, dword [ecx+0xc]
	ucomiss xmm0, [_float_0_69999999]
	setae byte [ecx+0x2a]
	jmp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_140
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_80:
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z17Com_GetClientDObjii
	mov esi, eax
	mov ecx, [ebp-0xa4]
	mov eax, [ecx+0x98]
	test eax, eax
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_150
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_90:
	test esi, esi
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_160
	cmp eax, 0xffffff
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_170
	mov dword [ebp-0xa0], 0x2000000
	mov ecx, [ebp-0xa4]
	cmp dword [ecx+0x4], 0x1
	mov eax, 0x1
	cmovz eax, [ebp-0xa0]
	mov [ebp-0xa0], eax
	mov edx, eax
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_230:
	mov eax, [ebp-0xb4]
	test [eax+0x28], edx
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_100
	lea ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x3c]
	mov [esp], eax
	lea ecx, [ebp-0x48]
	lea edx, [ebp-0x30]
	mov eax, edi
	call _Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2_
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov edx, [ebp-0xb4]
	mov [esp], edx
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_100
	mov ecx, [ebp-0xa4]
	cmp dword [ecx+0x98], 0xffffff
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_180
	mov ecx, [ecx+0x88]
	lea edx, [edi+0x28]
	mov eax, [edi+0x28]
	mov [ebp-0x94], eax
	mov eax, [edx+0x4]
	mov [ebp-0x90], eax
	mov eax, [edx+0x8]
	mov [ebp-0x8c], eax
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_240:
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx]
	movss [ebp-0x9c], xmm0
	lea eax, [ebp-0x94]
	mov [esp+0x20], eax
	lea eax, [edi+0x1c]
	mov [esp+0x1c], eax
	mov edx, [ebp-0xb4]
	mov eax, [edx+0x28]
	mov [esp+0x18], eax
	mov [esp+0x14], ecx
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov ecx, [ebp-0xb8]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z22CM_TransformedBoxTraceP7trace_tPKfS2_S2_S2_jiS2_S2_
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0x9c]
	jae _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_190
	mov word [edx+0x22], 0x0
	mov word [edx+0x24], 0x0
	mov word [edx+0x26], 0x0
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_140:
	mov ecx, [ebp-0xa4]
	movzx eax, word [ecx]
	mov edx, [ebp+0xc]
	mov dword [edx+0x1c], 0x1
	mov [edx+0x20], ax
	mov ecx, [ebp-0xa0]
	mov [edx+0x14], ecx
	mov dword [edx+0x18], 0x0
	jmp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_100
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_30:
	movss xmm4, dword [ebp-0x4c]
	mov eax, [ebp+0xc]
	ucomiss xmm4, [eax]
	jae _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_40
	mov ecx, eax
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ebp-0x58]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x68], xmm1
	movss xmm1, dword [ebp-0x54]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x64], xmm1
	movss xmm1, dword [ebp-0x50]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x60], xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm4
	mulss xmm2, xmm0
	addss xmm4, xmm2
	movss [ebp-0x5c], xmm4
	pxor xmm0, xmm0
	xor ebx, ebx
	ucomiss xmm3, xmm0
	setae bl
	mov eax, [ebp-0xb0]
	movzx edx, word [eax+ebx*2+0x8]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x68]
	mov [esp], eax
	lea ecx, [ebp-0x58]
	mov eax, [ebp-0xb4]
	call _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_200
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax]
	jp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_210
	jz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_40
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_210:
	mov eax, 0x1
	sub eax, ebx
	mov edx, [ebp-0xb0]
	movzx esi, word [edx+eax*2+0x8]
	mov eax, [ebp-0x68]
	mov [ebp-0x58], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x54], eax
	mov eax, [ebp-0x60]
	mov [ebp-0x50], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x4c], eax
	jmp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_220
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_170:
	mov eax, [ebp-0xa4]
	test byte [eax+0x8], 0x1
	jnz _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_100
	mov eax, [eax+0x88]
	mov [esp], eax
	call _Z18CM_ContentsOfModelj
	mov [ebp-0xa0], eax
	mov edx, eax
	jmp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_230
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_180:
	mov edx, [ebp-0xa0]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x48]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	mov ecx, eax
	mov dword [ebp-0x94], 0x0
	mov dword [ebp-0x90], 0x0
	mov dword [ebp-0x8c], 0x0
	jmp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_240
_Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_190:
	mov eax, edx
	jmp _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t_130


;CG_ClipMoveToEntities_r(moveclip_t const*, unsigned short, float const*, float const*, trace_t*)
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t:
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_170:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov [ebp-0x90], eax
	mov ebx, ecx
	mov esi, edx
	call _Z29CG_GetCollWorldLocalClientNumv
	mov [ebp-0x80], eax
	mov eax, [ebx]
	mov [ebp-0x74], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x70], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x6c], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x68], eax
	test si, si
	jnz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_10
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_30:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_10:
	mov eax, [ebp-0x90]
	add eax, 0xc
	mov [ebp-0x94], eax
	mov edx, [ebp-0x90]
	add edx, 0x24
	mov [ebp-0x98], edx
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_20
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_50:
	mov eax, [ebp-0x88]
	movzx esi, word [eax+0x8]
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_70:
	test si, si
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_30
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_20:
	movzx eax, si
	mov [esp+0x4], eax
	mov eax, [ebp-0x80]
	mov [esp], eax
	call _Z22CG_GetEntityCollSectorit
	mov [ebp-0x88], eax
	movzx eax, word [eax+0xc]
	test ax, ax
	jnz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_40
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_100:
	mov edx, [ebp-0x88]
	movzx eax, word [edx+0x4]
	movss xmm0, dword [edx]
	movss xmm3, dword [ebp+eax*4-0x74]
	subss xmm3, xmm0
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+eax*4]
	subss xmm2, xmm0
	mov edx, [ebp-0x90]
	movss xmm5, dword [edx+eax*4+0x18]
	movaps xmm6, xmm2
	subss xmm6, xmm3
	pxor xmm7, xmm7
	movaps xmm0, xmm7
	cmpss xmm0, xmm6, 0x6
	movaps xmm1, xmm2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	ucomiss xmm0, xmm5
	jae _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_50
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	andps xmm2, xmm1
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movss xmm4, dword [_data16_80000000]
	movaps xmm1, xmm5
	xorps xmm1, xmm4
	ucomiss xmm1, xmm0
	jb _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_60
	mov eax, [ebp-0x88]
	movzx esi, word [eax+0xa]
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_70
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_140:
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	lea eax, [ebp-0x54]
	mov [esp], eax
	lea ecx, [ebp-0x24]
	lea edx, [ebp-0x48]
	mov eax, ebx
	call _Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2_
	movss xmm0, dword [ebp-0x54]
	mov edx, [ebp-0x90]
	addss xmm0, [edx]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x50]
	addss xmm0, [edx+0x4]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, [edx+0x8]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [edx+0xc]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x2c]
	mov eax, [ebp-0x94]
	addss xmm0, [eax+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [eax+0x8]
	movss [ebp-0x28], xmm0
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	mov eax, [ebp-0x98]
	mov [esp], eax
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_80
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_120:
	mov eax, [ebp+0xc]
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_230:
	cmp byte [eax+0x28], 0x0
	jnz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_30
	pxor xmm0, xmm0
	ucomiss xmm0, [eax]
	jp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_90
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_30
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_90:
	mov edx, [ebp-0x84]
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_150:
	movzx eax, word [edx+0x2]
	test ax, ax
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_100
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_40:
	movzx eax, ax
	lea ebx, [eax-0x1]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x80]
	mov [esp], eax
	call _Z20CG_GetEntityCollNodeii
	mov [ebp-0x84], eax
	mov edx, [ebp-0x90]
	cmp ebx, [edx+0x48]
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_110
	call _Z29CG_GetCollWorldLocalClientNumv
	lea eax, [ebx*4]
	mov edx, ebx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea ebx, [edx+eax]
	add ebx, cg_entitiesArray
	lea esi, [ebx+0xcc]
	mov eax, [esi+0x98]
	test eax, eax
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_120
	cmp eax, 0xffffff
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_130
	mov edi, 0x2000000
	cmp dword [esi+0x4], 0x1
	mov eax, 0x1
	cmovnz edi, eax
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_190:
	mov eax, [ebp-0x90]
	test [eax+0x50], edi
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_120
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_140
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_110:
	mov edx, eax
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_150
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_60:
	movss xmm0, dword [ebp-0x68]
	movss [ebp-0x8c], xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax]
	jae _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_30
	ucomiss xmm6, xmm7
	jnz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_160
	jp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_160
	movss xmm2, dword [_float_1_00000000]
	movaps xmm4, xmm2
	movaps xmm3, xmm7
	xor ebx, ebx
	movaps xmm0, xmm7
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_200:
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm4
	orps xmm2, xmm1
	movss xmm1, dword [ebp-0x74]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x64], xmm1
	movss xmm1, dword [ebp-0x70]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x60], xmm1
	movss xmm1, dword [ebp-0x6c]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x5c], xmm1
	movss xmm0, dword [eax+0xc]
	subss xmm0, [ebp-0x8c]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x8c]
	movss [ebp-0x58], xmm2
	mov eax, [ebp-0x88]
	movzx edx, word [eax+ebx*2+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x64]
	mov [esp], eax
	lea ecx, [ebp-0x74]
	mov eax, [ebp-0x90]
	movss [ebp-0xa8], xmm3
	movss [ebp-0xb8], xmm7
	call _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_170
	movss xmm3, dword [ebp-0xa8]
	movss xmm7, dword [ebp-0xb8]
	mov edx, [ebp+0xc]
	ucomiss xmm7, [edx]
	jp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_180
	jz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_30
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_180:
	movaps xmm0, xmm7
	cmpss xmm0, xmm3, 0x2
	andps xmm3, xmm0
	orps xmm3, xmm7
	movss xmm1, dword [ebp-0x74]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x74], xmm1
	movss xmm1, dword [ebp-0x70]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x70], xmm1
	movss xmm1, dword [ebp-0x6c]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x6c], xmm1
	movss xmm1, dword [ebp-0x68]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [ebp-0x68], xmm1
	mov eax, 0x1
	sub eax, ebx
	mov edx, [ebp-0x88]
	movzx esi, word [edx+eax*2+0x8]
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_70
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_130:
	test byte [esi+0x8], 0x1
	jnz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_120
	mov eax, [esi+0x88]
	mov [esp], eax
	call _Z18CM_ContentsOfModelj
	mov edi, eax
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_190
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_160:
	movaps xmm2, xmm6
	andps xmm2, [_data16_7fffffff]
	movaps xmm1, xmm3
	xorps xmm1, xmm4
	movaps xmm0, xmm7
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
	xor ebx, ebx
	ucomiss xmm6, xmm7
	setae bl
	movaps xmm0, xmm4
	subss xmm0, xmm2
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_200
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_80:
	cmp dword [esi+0x98], 0xffffff
	jnz _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_210
	mov ecx, [esi+0x88]
	lea edx, [ebx+0x28]
	mov eax, [ebx+0x28]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_240:
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx]
	movss [ebp-0x7c], xmm0
	lea eax, [ebp-0x3c]
	mov [esp+0x20], eax
	lea eax, [ebx+0x1c]
	mov [esp+0x1c], eax
	mov edx, [ebp-0x90]
	mov eax, [edx+0x50]
	mov [esp+0x18], eax
	mov [esp+0x14], ecx
	mov eax, [ebp-0x94]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, edx
	add eax, 0x30
	mov [esp+0x8], eax
	mov edx, [ebp-0x98]
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z22CM_TransformedBoxTraceP7trace_tPKfS2_S2_S2_jiS2_S2_
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0x7c]
	jae _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_220
	mov word [edx+0x22], 0x0
	mov word [edx+0x24], 0x0
	mov word [edx+0x26], 0x0
	movzx eax, word [esi]
	mov dword [edx+0x1c], 0x1
	mov [edx+0x20], ax
	mov eax, [ebp+0xc]
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_230
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_210:
	mov [esp+0x8], edi
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	mov ecx, eax
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_240
_Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_220:
	mov eax, edx
	jmp _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_230
	nop


;CG_Trace(trace_t*, float const*, float const*, float const*, float const*, int, int, unsigned char, unsigned char)
_Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov edi, eax
	mov [ebp-0xa0], edx
	mov ebx, ecx
	mov esi, [ebp+0x8]
	movzx eax, byte [ebp+0x18]
	mov [ebp-0xa1], al
	movzx edx, byte [ebp+0x1c]
	mov [ebp-0xa2], dl
	mov eax, [ebp+0x14]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], ecx
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov eax, [ebp-0xa0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edi]
	jp _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_10
	jz _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_20
_Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_10:
	mov dword [edi+0x1c], 0x1
	mov word [edi+0x20], 0x3fe
_Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_70:
	pxor xmm1, xmm1
	ucomiss xmm1, [edi]
	jp _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_30
	jz _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_40
_Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_30:
	lea edx, [esi+0x4]
	lea eax, [ebx+0x4]
	mov [ebp-0x9c], eax
	lea eax, [esi+0x8]
	lea ecx, [ebx+0x8]
	movss xmm6, dword [esi]
	movaps xmm0, xmm6
	subss xmm0, [ebx]
	addss xmm0, [esi+0x4]
	subss xmm0, [ebx+0x4]
	addss xmm0, [esi+0x8]
	subss xmm0, [ebx+0x8]
	ucomiss xmm0, xmm1
	jnz _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_50
	jp _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_50
	cmp byte [ebp-0xa2], 0x0
	jz _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_60
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov esi, [ebp+0xc]
	mov [esp+0x8], esi
	mov eax, [ebp-0xa0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z25CM_PointTraceStaticModelsP7trace_tPKfS2_i
	pxor xmm0, xmm0
	ucomiss xmm0, [edi]
	jp _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_60
	jz _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_40
_Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_60:
	mov eax, [ebp+0x10]
	mov [ebp-0x24], eax
	mov dword [ebp-0x20], 0xffffffff
	mov byte [ebp-0x1c], 0x1
	mov byte [ebp-0x1b], 0x0
	mov byte [ebp-0x19], 0x0
	mov byte [ebp-0x1a], 0x0
	mov edx, [ebp-0xa0]
	mov eax, [edx]
	mov [ebp-0x98], eax
	mov eax, [edx+0x4]
	mov [ebp-0x94], eax
	mov eax, [edx+0x8]
	mov [ebp-0x90], eax
	mov esi, [ebp+0xc]
	mov eax, [esi]
	mov [ebp-0x8c], eax
	mov eax, [esi+0x4]
	mov [ebp-0x88], eax
	mov eax, [esi+0x8]
	mov [ebp-0x84], eax
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	lea eax, [ebp-0x24]
	mov [ebp-0x74], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x70], eax
	movzx eax, byte [ebp-0xa1]
	mov [ebp-0x6c], eax
	mov dword [ebp-0x68], 0x0
	mov eax, [ebp-0x98]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x94]
	mov [ebp-0x40], eax
	mov eax, [ebp-0x90]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x8c]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x88]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x84]
	mov [ebp-0x2c], eax
	mov dword [ebp-0x38], 0x0
	mov eax, [edi]
	mov [ebp-0x28], eax
	lea ecx, [ebp-0x44]
	mov [esp+0x4], edi
	lea eax, [ebp-0x34]
	mov [esp], eax
	mov edx, 0x1
	mov eax, ebx
	call _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t
_Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_40:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_20:
	mov dword [edi+0x1c], 0x0
	mov word [edi+0x20], 0x0
	jmp _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_70
_Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh_50:
	mov esi, [ebp+0x14]
	mov [ebp-0x48], esi
	mov esi, [ebp+0x10]
	mov [ebp-0x50], esi
	mov dword [ebp-0x4c], 0xffffffff
	movaps xmm1, xmm6
	subss xmm1, [ebx]
	movss xmm4, dword [edx]
	movaps xmm2, xmm4
	mov edx, [ebp-0x9c]
	subss xmm2, [edx]
	movss xmm5, dword [eax]
	movaps xmm3, xmm5
	subss xmm3, [ecx]
	mulss xmm1, [_float_0_50000000]
	mulss xmm2, [_float_0_50000000]
	mulss xmm3, [_float_0_50000000]
	movss [ebp-0x8c], xmm1
	movss [ebp-0x88], xmm2
	movss [ebp-0x84], xmm3
	movss xmm7, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	movss [ebp-0x98], xmm0
	movaps xmm0, xmm2
	xorps xmm0, xmm7
	movss [ebp-0x94], xmm0
	movaps xmm0, xmm3
	xorps xmm0, xmm7
	movss [ebp-0x90], xmm0
	addss xmm1, [_float_1_00000000]
	movss [ebp-0x80], xmm1
	addss xmm2, [_float_1_00000000]
	movss [ebp-0x7c], xmm2
	addss xmm3, [_float_1_00000000]
	movss [ebp-0x78], xmm3
	movaps xmm1, xmm6
	addss xmm1, [ebx]
	addss xmm4, [edx]
	addss xmm5, [ecx]
	mulss xmm1, [_float_0_50000000]
	mulss xmm4, [_float_0_50000000]
	mulss xmm5, [_float_0_50000000]
	movaps xmm0, xmm1
	mov esi, [ebp-0xa0]
	addss xmm0, [esi]
	movss [ebp-0x74], xmm0
	movaps xmm0, xmm4
	addss xmm0, [esi+0x4]
	movss [ebp-0x70], xmm0
	movaps xmm0, xmm5
	addss xmm0, [esi+0x8]
	movss [ebp-0x6c], xmm0
	mov eax, [ebp+0xc]
	addss xmm1, [eax]
	movss [ebp-0x68], xmm1
	addss xmm4, [eax+0x4]
	movss [ebp-0x64], xmm4
	addss xmm5, [eax+0x8]
	movss [ebp-0x60], xmm5
	lea ebx, [ebp-0x98]
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	mov eax, [ebp-0x74]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x70]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x6c]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x40], eax
	mov eax, [ebp-0x60]
	mov [ebp-0x3c], eax
	mov dword [ebp-0x28], 0x0
	mov eax, [edi]
	mov [ebp-0x38], eax
	lea ecx, [ebp-0x34]
	mov [esp+0x4], edi
	lea eax, [ebp-0x44]
	mov [esp], eax
	mov edx, 0x1
	mov eax, ebx
	call _Z23CG_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z22DynEntCl_ClipMoveTracePK10moveclip_tP7trace_t
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_LinkEntity(int, int)
_Z13CG_LinkEntityii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0xc]
	lea eax, [esi*4]
	mov edx, esi
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea edi, [edx+eax]
	add edi, cg_entitiesArray
	lea ebx, [edi+0xcc]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17Com_GetClientDObjii
	test eax, eax
	jz _Z13CG_LinkEntityii_10
	mov [esp], eax
	call _Z13DObjGetRadiusPK6DObj_s
	fstp dword [ebp-0x4c]
	movss xmm2, dword [ebp-0x4c]
	movss xmm4, dword [edi+0x24]
	movss xmm3, dword [edi+0x20]
	movss xmm1, dword [edi+0x1c]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm4
	subss xmm0, xmm2
	movss [ebp-0x1c], xmm0
	addss xmm1, xmm2
	movss [ebp-0x30], xmm1
	addss xmm3, xmm2
	movss [ebp-0x2c], xmm3
	addss xmm4, xmm2
	movss [ebp-0x28], xmm4
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_LinkEntityColliiPKfS0_
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13CG_LinkEntityii_10:
	mov ecx, [ebx+0x98]
	test ecx, ecx
	jnz _Z13CG_LinkEntityii_20
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19CG_UnlinkEntityCollii
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13CG_LinkEntityii_20:
	lea ecx, [ebp-0x48]
	lea edx, [ebp-0x3c]
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x24]
	mov [esp], ebx
	mov eax, edi
	call _Z24CG_GetEntityBModelBoundsPK9centity_sPfS2_S2_S2_
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_LinkEntityColliiPKfS0_
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_TraceCapsule(trace_t*, float const*, float const*, float const*, float const*, int, int)
_Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov [ebp+0x8], ebx
	mov edi, [ebp+0x18]
	mov esi, [ebp+0x1c]
	mov dword [ebp+0x1c], 0x0
	mov dword [ebp+0x18], 0x0
	mov ebx, [ebp+0x20]
	mov [ebp+0x14], ebx
	mov [ebp+0x10], esi
	mov [ebp+0xc], edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh


;CG_UnlinkEntity(int, int)
_Z15CG_UnlinkEntityii:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z19CG_UnlinkEntityCollii
	nop


;CG_IsEntityLinked(int, int)
_Z17CG_IsEntityLinkedii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20CG_GetEntityCollNodeii
	cmp word [eax], 0x0
	setnz al
	movzx eax, al
	leave
	ret


;CG_LocationalTrace(trace_t*, float const*, float const*, int, int)
_Z18CG_LocationalTraceP7trace_tPKfS2_ii:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x4], _cstring_loc_trace
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov ecx, vec3_origin
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ecx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z8CG_TraceP7trace_tPKfS2_S2_S2_iihh
	leave
	ret
	nop


;CG_EntityNeedsLinked(int, int)
_Z20CG_EntityNeedsLinkedii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0xc]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea eax, [edx+eax]
	add eax, cg_entitiesArray
	mov edx, [eax+0x164]
	test edx, edx
	jnz _Z20CG_EntityNeedsLinkedii_10
	add eax, 0xcc
	mov edx, [eax+0x98]
	test edx, edx
	jnz _Z20CG_EntityNeedsLinkedii_20
	mov eax, [eax+0x4]
	cmp eax, 0x6
	jz _Z20CG_EntityNeedsLinkedii_30
	cmp eax, 0xe
	jz _Z20CG_EntityNeedsLinkedii_30
	cmp eax, 0xc
	jz _Z20CG_EntityNeedsLinkedii_30
_Z20CG_EntityNeedsLinkedii_20:
	xor eax, eax
	leave
	ret
_Z20CG_EntityNeedsLinkedii_30:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z17Com_GetClientDObjii
	test eax, eax
	jz _Z20CG_EntityNeedsLinkedii_20
_Z20CG_EntityNeedsLinkedii_10:
	mov eax, 0x1
	leave
	ret


;CG_LocationalTraceEntitiesOnly(trace_t*, float const*, float const*, int, int)
_Z30CG_LocationalTraceEntitiesOnlyP7trace_tPKfS2_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov dword [esp+0x4], _cstring_loc_trace_entiti
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov eax, [ebp+0x14]
	mov [ebp-0x24], eax
	mov dword [ebp-0x20], 0xffffffff
	mov byte [ebp-0x1c], 0x1
	mov byte [ebp-0x1b], 0x0
	mov byte [ebp-0x19], 0x0
	mov byte [ebp-0x1a], 0x0
	mov eax, [ebx]
	mov [ebp-0x78], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x74], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x70], eax
	mov eax, [esi]
	mov [ebp-0x6c], eax
	mov eax, [esi+0x4]
	mov [ebp-0x68], eax
	mov eax, [esi+0x8]
	mov [ebp-0x64], eax
	lea ebx, [ebp-0x78]
	mov [esp], ebx
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	lea eax, [ebp-0x24]
	mov [ebp-0x54], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x50], eax
	mov dword [ebp-0x4c], 0x1
	mov dword [ebp-0x48], 0x0
	mov eax, [ebp-0x78]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x74]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x70]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x6c]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x40], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x3c], eax
	mov dword [ebp-0x28], 0x0
	mov eax, [edi]
	mov [ebp-0x38], eax
	lea ecx, [ebp-0x34]
	mov [esp+0x4], edi
	lea eax, [ebp-0x44]
	mov [esp], eax
	mov edx, 0x1
	mov eax, ebx
	call _Z25CG_PointTraceToEntities_rPK12pointtrace_ttPKfS3_P7trace_t
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of cg_world:
SECTION .data


;Initialized constant data of cg_world:
SECTION .rdata


;Zero initialized global or static variables of cg_world:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_loc_trace:		db "loc trace",0
_cstring_loc_trace_entiti:		db "loc trace entities",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_69999999:		dd 0x3f333333	; 0.7
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_50000000:		dd 0x3f000000	; 0.5

