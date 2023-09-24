;Imports of sv_world:
	extern _Z21SV_SvEntityForGentityPK9gentity_s
	extern floorf
	extern _Z16RadiusFromBoundsPKfS0_
	extern _Z17Com_GetServerDObji
	extern _Z13CM_LinkEntityP10svEntity_sPfS1_j
	extern _Z15CM_UnlinkEntityP10svEntity_s
	extern _Z14CM_BoxLeafnumsPKfS0_PtiPi
	extern _Z14CM_LeafClusteri
	extern _Z15CM_TempBoxModelPKfS0_i
	extern _Z18RadiusFromBounds2DPKfS0_
	extern _Z13DObjGetRadiusPK6DObj_s
	extern _Z16CM_BoxSightTraceiPKfS0_S0_S0_ji
	extern _Z28CM_PointSightTraceToEntitiesP17sightpointtrace_t
	extern _Z27CM_ClipSightTraceToEntitiesP11sightclip_t
	extern _Z33CM_PointTraceStaticModelsCompletePKfS0_i
	extern _Z16CM_PointContentsPKfj
	extern _Z15CM_AreaEntitiesPKfS0_Piii
	extern _Z27CM_TransformedPointContentsPKfjS0_S0_
	extern _Z13SV_GentityNumi
	extern sv
	extern _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	extern _Z22CM_TransformedBoxTraceP7trace_tPKfS2_S2_S2_jiS2_S2_
	extern vec3_origin
	extern _Z27CM_TransformedBoxSightTraceiPKfS0_S0_S0_jiS0_S0_
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	extern _Z25DObjGeomTracelinePartBitsP6DObj_siPi
	extern _Z14G_DObjCalcPoseP9gentity_sPi
	extern _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s
	extern _Z15DObjHasContentsP6DObj_si
	extern _Z21DObjTracelinePartBitsP6DObj_sPi
	extern _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s
	extern _Z19CM_CalcTraceExtentsP12TraceExtents
	extern _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	extern _Z25CM_PointTraceStaticModelsP7trace_tPKfS2_i
	extern _Z23CM_PointTraceToEntitiesP12pointtrace_tP7trace_t
	extern _Z21CM_ClipMoveToEntitiesP10moveclip_tP7trace_t

;Exports of sv_world:
	global actorLocationalMaxs
	global actorLocationalMins
	global _Z13SV_LinkEntityP9gentity_s
	global _Z13SV_SightTracePiPKfS1_S1_S1_iii
	global _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi
	global _Z15SV_UnlinkEntityP9gentity_s
	global _Z16SV_PointContentsPKfii
	global _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t
	global _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s
	global _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t
	global _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii
	global _Z22SV_ClipHandleForEntityPK9gentity_s
	global _Z23SV_SetupIgnoreEntParamsP15IgnoreEntParamsi
	global _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s
	global _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi


SECTION .text


;SV_LinkEntity(gentity_s*)
_Z13SV_LinkEntityP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z21SV_SvEntityForGentityPK9gentity_s
	mov [ebp-0x13c], eax
	cmp byte [edi+0xf5], 0x0
	jz _Z13SV_LinkEntityP9gentity_s_10
	mov dword [edi+0x98], 0xffffff
_Z13SV_LinkEntityP9gentity_s_160:
	lea eax, [edi+0x148]
	mov [ebp-0x140], eax
	lea edx, [edi+0x13c]
	mov [ebp-0x144], edx
	mov esi, 0x1
	lea ebx, [edi+0x14c]
_Z13SV_LinkEntityP9gentity_s_30:
	movss xmm0, dword [ebx-0x4]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x14c]
	cvttss2si eax, [ebp-0x14c]
	cvtsi2ss xmm1, eax
	movaps xmm0, xmm1
	subss xmm0, [ebx-0x4]
	mulss xmm0, xmm0
	movss xmm2, dword [_float_0_00000100]
	ucomiss xmm2, xmm0
	jbe _Z13SV_LinkEntityP9gentity_s_20
	movss [ebx-0x4], xmm1
_Z13SV_LinkEntityP9gentity_s_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x4
	jnz _Z13SV_LinkEntityP9gentity_s_30
	cmp byte [edi+0xf5], 0x0
	jz _Z13SV_LinkEntityP9gentity_s_40
	pxor xmm0, xmm0
	mov eax, [ebp-0x140]
	ucomiss xmm0, [eax]
	jz _Z13SV_LinkEntityP9gentity_s_50
_Z13SV_LinkEntityP9gentity_s_80:
	lea esi, [edi+0x114]
	mov [esp+0x4], esi
	lea ecx, [edi+0x108]
	mov [ebp-0x150], ecx
	mov [esp], ecx
	call _Z16RadiusFromBoundsPKfS0_
	fstp dword [ebp-0x15c]
	movss xmm1, dword [ebp-0x15c]
	mov edx, edi
	mov ecx, 0x1
	mov eax, [ebp-0x144]
	add eax, 0x4
_Z13SV_LinkEntityP9gentity_s_60:
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [edx+0x124], xmm0
	movaps xmm0, xmm1
	addss xmm0, [eax-0x4]
	movss [edx+0x130], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z13SV_LinkEntityP9gentity_s_60
	jmp _Z13SV_LinkEntityP9gentity_s_70
_Z13SV_LinkEntityP9gentity_s_50:
	jp _Z13SV_LinkEntityP9gentity_s_80
	ucomiss xmm0, [eax+0x4]
	jnz _Z13SV_LinkEntityP9gentity_s_90
	jp _Z13SV_LinkEntityP9gentity_s_90
	ucomiss xmm0, [eax+0x8]
	jnz _Z13SV_LinkEntityP9gentity_s_80
	jp _Z13SV_LinkEntityP9gentity_s_80
_Z13SV_LinkEntityP9gentity_s_40:
	lea eax, [edi+0x124]
	lea edx, [edi+0x108]
	mov [ebp-0x150], edx
	mov ecx, [ebp-0x144]
	movss xmm0, dword [ecx]
	addss xmm0, [edi+0x108]
	movss [edi+0x124], xmm0
	movss xmm0, dword [ecx+0x4]
	addss xmm0, [edx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ecx+0x8]
	addss xmm0, [edx+0x8]
	movss [eax+0x8], xmm0
	lea eax, [edi+0x130]
	lea esi, [edi+0x114]
	movss xmm0, dword [ecx]
	addss xmm0, [edi+0x114]
	movss [edi+0x130], xmm0
	movss xmm0, dword [ecx+0x4]
	addss xmm0, [esi+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ecx+0x8]
	addss xmm0, [esi+0x8]
	movss [eax+0x8], xmm0
_Z13SV_LinkEntityP9gentity_s_70:
	movss xmm0, dword [edi+0x124]
	movss xmm1, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [edi+0x124], xmm0
	movss xmm0, dword [edi+0x128]
	subss xmm0, xmm1
	movss [edi+0x128], xmm0
	movss xmm0, dword [edi+0x12c]
	subss xmm0, xmm1
	movss [edi+0x12c], xmm0
	movss xmm0, dword [edi+0x130]
	addss xmm0, xmm1
	movss [edi+0x130], xmm0
	movss xmm0, dword [edi+0x134]
	addss xmm0, xmm1
	movss [edi+0x134], xmm0
	addss xmm1, [edi+0x138]
	movss [edi+0x138], xmm1
	mov eax, [ebp-0x13c]
	mov dword [eax+0x11c], 0x0
	mov dword [eax+0x160], 0x0
	movzx eax, byte [edi+0xf6]
	test al, 0x19
	jz _Z13SV_LinkEntityP9gentity_s_100
_Z13SV_LinkEntityP9gentity_s_230:
	mov byte [edi+0xf4], 0x1
	mov ecx, [edi+0x120]
	test ecx, ecx
	jz _Z13SV_LinkEntityP9gentity_s_110
	cmp byte [edi+0xf5], 0x0
	jz _Z13SV_LinkEntityP9gentity_s_120
	mov ebx, [edi+0x88]
_Z13SV_LinkEntityP9gentity_s_250:
	mov eax, [edi]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	test eax, eax
	jz _Z13SV_LinkEntityP9gentity_s_130
	movzx edx, byte [edi+0xf6]
	test dl, 0x6
	jnz _Z13SV_LinkEntityP9gentity_s_140
_Z13SV_LinkEntityP9gentity_s_130:
	mov [esp+0xc], ebx
	lea eax, [edi+0x130]
	mov [esp+0x8], eax
	lea eax, [edi+0x124]
	mov [esp+0x4], eax
	mov edx, [ebp-0x13c]
	mov [esp], edx
	call _Z13CM_LinkEntityP10svEntity_sPfS1_j
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_LinkEntityP9gentity_s_10:
	test dword [edi+0x120], 0x2000001
	jnz _Z13SV_LinkEntityP9gentity_s_150
	mov dword [edi+0x98], 0x0
	jmp _Z13SV_LinkEntityP9gentity_s_160
_Z13SV_LinkEntityP9gentity_s_150:
	cvttss2si edx, [edi+0x114]
	test edx, edx
	jle _Z13SV_LinkEntityP9gentity_s_170
	cmp edx, 0x100
	mov eax, 0xff
	cmovge edx, eax
_Z13SV_LinkEntityP9gentity_s_300:
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [edi+0x110]
	cvttss2si eax, xmm0
	test eax, eax
	jle _Z13SV_LinkEntityP9gentity_s_180
	cmp eax, 0xff
	jle _Z13SV_LinkEntityP9gentity_s_190
	mov ecx, 0xff00
_Z13SV_LinkEntityP9gentity_s_320:
	movss xmm0, dword [_float_32_00000000]
	addss xmm0, [edi+0x11c]
	cvttss2si eax, xmm0
	test eax, eax
	jle _Z13SV_LinkEntityP9gentity_s_200
	cmp eax, 0xff
	jle _Z13SV_LinkEntityP9gentity_s_210
	mov eax, 0xff0000
_Z13SV_LinkEntityP9gentity_s_310:
	or eax, ecx
	or edx, eax
	mov [edi+0x98], edx
	jmp _Z13SV_LinkEntityP9gentity_s_160
_Z13SV_LinkEntityP9gentity_s_110:
	mov ecx, [ebp-0x13c]
	mov [esp], ecx
	call _Z15CM_UnlinkEntityP10svEntity_s
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_LinkEntityP9gentity_s_100:
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x80
	lea eax, [ebp-0x134]
	mov [esp+0x8], eax
	lea eax, [edi+0x130]
	mov [esp+0x4], eax
	lea eax, [edi+0x124]
	mov [esp], eax
	call _Z14CM_BoxLeafnumsPKfS0_PtiPi
	mov [ebp-0x148], eax
	cmp eax, 0x0
	jz _Z13SV_LinkEntityP9gentity_s_110
	jg _Z13SV_LinkEntityP9gentity_s_220
_Z13SV_LinkEntityP9gentity_s_290:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z14CM_LeafClusteri
	mov edx, [ebp-0x13c]
	mov [edx+0x160], eax
	jmp _Z13SV_LinkEntityP9gentity_s_230
_Z13SV_LinkEntityP9gentity_s_140:
	and dl, 0x2
	jz _Z13SV_LinkEntityP9gentity_s_240
	mov ecx, [ebp-0x144]
	movss xmm2, dword [ecx]
	movaps xmm0, xmm2
	addss xmm0, [actorLocationalMins]
	movss [ebp-0x28], xmm0
	movss xmm1, dword [ecx+0x4]
	movaps xmm0, xmm1
	addss xmm0, [actorLocationalMins+0x4]
	movss [ebp-0x24], xmm0
	addss xmm2, [actorLocationalMaxs]
	movss [ebp-0x34], xmm2
	addss xmm1, [actorLocationalMaxs+0x4]
	movss [ebp-0x30], xmm1
_Z13SV_LinkEntityP9gentity_s_330:
	mov [esp+0xc], ebx
	lea eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x13c]
	mov [esp], edx
	call _Z13CM_LinkEntityP10svEntity_sPfS1_j
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_LinkEntityP9gentity_s_120:
	mov eax, [edi+0x120]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x150]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	mov ebx, eax
	jmp _Z13SV_LinkEntityP9gentity_s_250
_Z13SV_LinkEntityP9gentity_s_90:
	mov edx, [ebp-0x140]
	ucomiss xmm0, [edx+0x8]
	jp _Z13SV_LinkEntityP9gentity_s_80
	jnz _Z13SV_LinkEntityP9gentity_s_80
	lea esi, [edi+0x114]
	mov [esp+0x4], esi
	lea eax, [edi+0x108]
	mov [ebp-0x150], eax
	mov [esp], eax
	call _Z18RadiusFromBounds2DPKfS0_
	fstp dword [ebp-0x15c]
	movss xmm1, dword [ebp-0x15c]
	mov edx, edi
	mov ecx, 0x1
	mov eax, [ebp-0x144]
	add eax, 0x4
_Z13SV_LinkEntityP9gentity_s_260:
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [edx+0x124], xmm0
	movaps xmm0, xmm1
	addss xmm0, [eax-0x4]
	movss [edx+0x130], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x3
	jnz _Z13SV_LinkEntityP9gentity_s_260
	mov edx, [ebp-0x144]
	movss xmm0, dword [edx+0x8]
	addss xmm0, [edi+0x110]
	movss [edi+0x12c], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [edi+0x11c]
	movss [edi+0x138], xmm0
	jmp _Z13SV_LinkEntityP9gentity_s_70
_Z13SV_LinkEntityP9gentity_s_220:
	xor ebx, ebx
	jmp _Z13SV_LinkEntityP9gentity_s_270
_Z13SV_LinkEntityP9gentity_s_280:
	add ebx, 0x1
	cmp ebx, [ebp-0x148]
	jz _Z13SV_LinkEntityP9gentity_s_230
_Z13SV_LinkEntityP9gentity_s_270:
	movzx eax, word [ebp+ebx*2-0x134]
	mov [esp], eax
	call _Z14CM_LeafClusteri
	mov edx, eax
	cmp eax, 0xffffffff
	jz _Z13SV_LinkEntityP9gentity_s_280
	mov ecx, [ebp-0x13c]
	mov eax, [ecx+0x11c]
	mov [ecx+eax*4+0x120], edx
	add eax, 0x1
	mov [ecx+0x11c], eax
	cmp eax, 0x10
	jnz _Z13SV_LinkEntityP9gentity_s_280
	jmp _Z13SV_LinkEntityP9gentity_s_290
_Z13SV_LinkEntityP9gentity_s_170:
	mov edx, 0x1
	jmp _Z13SV_LinkEntityP9gentity_s_300
_Z13SV_LinkEntityP9gentity_s_210:
	shl eax, 0x10
	jmp _Z13SV_LinkEntityP9gentity_s_310
_Z13SV_LinkEntityP9gentity_s_190:
	mov ecx, eax
	shl ecx, 0x8
	jmp _Z13SV_LinkEntityP9gentity_s_320
_Z13SV_LinkEntityP9gentity_s_240:
	mov [esp], eax
	call _Z13DObjGetRadiusPK6DObj_s
	fstp dword [ebp-0x15c]
	movss xmm2, dword [ebp-0x15c]
	mov eax, [ebp-0x144]
	movss xmm1, dword [eax+0x4]
	subss xmm1, xmm2
	movss xmm0, dword [eax]
	subss xmm0, xmm2
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm1
	movaps xmm0, xmm2
	addss xmm0, [eax+0x4]
	addss xmm2, [eax]
	movss [ebp-0x34], xmm2
	movss [ebp-0x30], xmm0
	jmp _Z13SV_LinkEntityP9gentity_s_330
_Z13SV_LinkEntityP9gentity_s_180:
	mov ecx, 0x100
	jmp _Z13SV_LinkEntityP9gentity_s_320
_Z13SV_LinkEntityP9gentity_s_200:
	mov eax, 0x10000
	jmp _Z13SV_LinkEntityP9gentity_s_310


;SV_SightTrace(int*, float const*, float const*, float const*, float const*, int, int, int)
_Z13SV_SightTracePiPKfS1_S1_S1_iii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov edi, [ebp+0x24]
	mov [esp+0x18], edi
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call _Z16CM_BoxSightTraceiPKfS0_S0_S0_ji
	mov edx, [ebp+0x8]
	mov [edx], eax
	test eax, eax
	jnz _Z13SV_SightTracePiPKfS1_S1_S1_iii_10
	lea edx, [ebx+0x4]
	lea eax, [esi+0x4]
	mov [ebp-0x6c], eax
	lea eax, [ebx+0x8]
	lea ecx, [esi+0x8]
	movss xmm6, dword [ebx]
	movaps xmm0, xmm6
	subss xmm0, [esi]
	addss xmm0, [ebx+0x4]
	subss xmm0, [esi+0x4]
	addss xmm0, [ebx+0x8]
	subss xmm0, [esi+0x8]
	ucomiss xmm0, [_float_0_00000000]
	jnz _Z13SV_SightTracePiPKfS1_S1_S1_iii_20
	jp _Z13SV_SightTracePiPKfS1_S1_S1_iii_20
	mov [ebp-0x40], edi
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [ebp-0x60], eax
	mov eax, [edx+0x4]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x58], eax
	mov ebx, [ebp+0x18]
	mov eax, [ebx]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x50], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x4c], eax
	mov eax, [ebp+0x1c]
	mov [ebp-0x48], eax
	mov edx, [ebp+0x20]
	mov [ebp-0x44], edx
	mov dword [ebp-0x3c], 0x0
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z28CM_PointSightTraceToEntitiesP17sightpointtrace_t
	mov ebx, [ebp+0x8]
	mov [ebx], eax
_Z13SV_SightTracePiPKfS1_S1_S1_iii_10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_SightTracePiPKfS1_S1_S1_iii_20:
	mov [ebp-0x1c], edi
	mov ebx, [ebp+0x1c]
	mov [ebp-0x24], ebx
	mov ebx, [ebp+0x20]
	mov [ebp-0x20], ebx
	movaps xmm1, xmm6
	subss xmm1, [esi]
	movss xmm4, dword [edx]
	movaps xmm2, xmm4
	mov edx, [ebp-0x6c]
	subss xmm2, [edx]
	movss xmm5, dword [eax]
	movaps xmm3, xmm5
	subss xmm3, [ecx]
	mulss xmm1, [_float_0_50000000]
	mulss xmm2, [_float_0_50000000]
	mulss xmm3, [_float_0_50000000]
	movss [ebp-0x54], xmm1
	movss [ebp-0x50], xmm2
	movss [ebp-0x4c], xmm3
	movss xmm7, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	movss [ebp-0x60], xmm0
	movaps xmm0, xmm2
	xorps xmm0, xmm7
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm3
	xorps xmm0, xmm7
	movss [ebp-0x58], xmm0
	movss xmm0, dword [_float_1_00000000]
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	addss xmm2, xmm0
	movss [ebp-0x44], xmm2
	addss xmm3, xmm0
	movss [ebp-0x40], xmm3
	movaps xmm1, xmm6
	addss xmm1, [esi]
	addss xmm4, [edx]
	addss xmm5, [ecx]
	mulss xmm1, [_float_0_50000000]
	mulss xmm4, [_float_0_50000000]
	mulss xmm5, [_float_0_50000000]
	movaps xmm0, xmm1
	mov ebx, [ebp+0xc]
	addss xmm0, [ebx]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm4
	addss xmm0, [ebx+0x4]
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm5
	addss xmm0, [ebx+0x8]
	movss [ebp-0x34], xmm0
	mov eax, [ebp+0x18]
	addss xmm1, [eax]
	movss [ebp-0x30], xmm1
	addss xmm4, [eax+0x4]
	movss [ebp-0x2c], xmm4
	addss xmm5, [eax+0x8]
	movss [ebp-0x28], xmm5
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z27CM_ClipSightTraceToEntitiesP11sightclip_t
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_TracePassed(float const*, float const*, float const*, float const*, int, int, int, int, unsigned char*, int)
_Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x20]
	mov [esp+0x18], edi
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call _Z16CM_BoxSightTraceiPKfS0_S0_S0_ji
	test eax, eax
	jnz _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_10
	mov edx, [ebp+0x2c]
	test edx, edx
	jnz _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_20
_Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_50:
	lea edx, [ebx+0x4]
	lea eax, [esi+0x4]
	mov [ebp-0x6c], eax
	lea eax, [ebx+0x8]
	lea ecx, [esi+0x8]
	movss xmm6, dword [ebx]
	movaps xmm0, xmm6
	subss xmm0, [esi]
	addss xmm0, [ebx+0x4]
	subss xmm0, [esi+0x4]
	addss xmm0, [ebx+0x8]
	subss xmm0, [esi+0x8]
	ucomiss xmm0, [_float_0_00000000]
	jnz _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_30
	jp _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_30
	mov [ebp-0x40], edi
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebp-0x60], eax
	mov eax, [edx+0x4]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x58], eax
	mov ebx, [ebp+0x14]
	mov eax, [ebx]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x50], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x4c], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x48], eax
	mov edx, [ebp+0x1c]
	mov [ebp-0x44], edx
	mov ebx, [ebp+0x24]
	mov [ebp-0x3c], ebx
	mov eax, [ebp+0x28]
	mov [ebp-0x38], eax
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z28CM_PointSightTraceToEntitiesP17sightpointtrace_t
	test eax, eax
	jz _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_40
_Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_10:
	xor eax, eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_30:
	mov [ebp-0x1c], edi
	mov ebx, [ebp+0x18]
	mov [ebp-0x24], ebx
	mov ebx, [ebp+0x1c]
	mov [ebp-0x20], ebx
	movaps xmm1, xmm6
	subss xmm1, [esi]
	movss xmm4, dword [edx]
	movaps xmm2, xmm4
	mov edx, [ebp-0x6c]
	subss xmm2, [edx]
	movss xmm5, dword [eax]
	movaps xmm3, xmm5
	subss xmm3, [ecx]
	mulss xmm1, [_float_0_50000000]
	mulss xmm2, [_float_0_50000000]
	mulss xmm3, [_float_0_50000000]
	movss [ebp-0x54], xmm1
	movss [ebp-0x50], xmm2
	movss [ebp-0x4c], xmm3
	movss xmm7, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	movss [ebp-0x60], xmm0
	movaps xmm0, xmm2
	xorps xmm0, xmm7
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm3
	xorps xmm0, xmm7
	movss [ebp-0x58], xmm0
	movss xmm0, dword [_float_1_00000000]
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	addss xmm2, xmm0
	movss [ebp-0x44], xmm2
	addss xmm3, xmm0
	movss [ebp-0x40], xmm3
	movaps xmm1, xmm6
	addss xmm1, [esi]
	addss xmm4, [edx]
	addss xmm5, [ecx]
	mulss xmm1, [_float_0_50000000]
	mulss xmm4, [_float_0_50000000]
	mulss xmm5, [_float_0_50000000]
	movaps xmm0, xmm1
	mov ebx, [ebp+0x8]
	addss xmm0, [ebx]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm4
	addss xmm0, [ebx+0x4]
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm5
	addss xmm0, [ebx+0x8]
	movss [ebp-0x34], xmm0
	mov eax, [ebp+0x14]
	addss xmm1, [eax]
	movss [ebp-0x30], xmm1
	addss xmm4, [eax+0x4]
	movss [ebp-0x2c], xmm4
	addss xmm5, [eax+0x8]
	movss [ebp-0x28], xmm5
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z27CM_ClipSightTraceToEntitiesP11sightclip_t
	test eax, eax
	jnz _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_10
_Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_40:
	mov eax, 0x1
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_20:
	mov [esp+0x8], edi
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z33CM_PointTraceStaticModelsCompletePKfS0_i
	test eax, eax
	jnz _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_50
	jmp _Z14SV_TracePassedPKfS0_S0_S0_iiiiPhi_10


;SV_UnlinkEntity(gentity_s*)
_Z15SV_UnlinkEntityP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z21SV_SvEntityForGentityPK9gentity_s
	mov byte [ebx+0xf4], 0x0
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z15CM_UnlinkEntityP10svEntity_s


;SV_PointContents(float const*, int, int)
_Z16SV_PointContentsPKfii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x103c
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16CM_PointContentsPKfj
	mov edi, eax
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x1018]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], eax
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov [ebp-0x101c], eax
	test eax, eax
	jle _Z16SV_PointContentsPKfii_10
	xor esi, esi
	jmp _Z16SV_PointContentsPKfii_20
_Z16SV_PointContentsPKfii_40:
	mov edx, [eax+0x88]
_Z16SV_PointContentsPKfii_50:
	lea eax, [ebx+0x148]
	mov [esp+0xc], eax
	lea eax, [ebx+0x13c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z27CM_TransformedPointContentsPKfjS0_S0_
	or edi, eax
_Z16SV_PointContentsPKfii_30:
	add esi, 0x1
	cmp [ebp-0x101c], esi
	jz _Z16SV_PointContentsPKfii_10
_Z16SV_PointContentsPKfii_20:
	mov eax, [ebp+esi*4-0x1018]
	cmp eax, [ebp+0xc]
	jz _Z16SV_PointContentsPKfii_30
	mov [esp], eax
	call _Z13SV_GentityNumi
	mov ebx, eax
	cmp byte [eax+0xf5], 0x0
	jnz _Z16SV_PointContentsPKfii_40
	mov eax, [eax+0x120]
	mov [esp+0x8], eax
	lea eax, [ebx+0x114]
	mov [esp+0x4], eax
	lea eax, [ebx+0x108]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	mov edx, eax
	jmp _Z16SV_PointContentsPKfii_50
_Z16SV_PointContentsPKfii_10:
	and [ebp+0x10], edi
	mov eax, [ebp+0x10]
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_ClipMoveToEntity(moveclip_t const*, svEntity_s*, trace_t*)
_Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, sv
	add edx, 0x1b30
	sub eax, edx
	sar eax, 0x3
	imul esi, eax, 0x677d46cf
	mov [esp], esi
	call _Z13SV_GentityNumi
	mov ebx, eax
	mov eax, [edi+0x50]
	test [ebx+0x120], eax
	jz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_10
	mov edx, [edi+0x48]
	cmp edx, 0x3ff
	jz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_20
	cmp esi, edx
	jz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_10
	cmp word [ebx+0x154], 0x0
	jz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_20
	movzx eax, word [ebx+0x154]
	sub eax, 0x1
	cmp eax, edx
	jz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_10
	cmp eax, [edi+0x4c]
	jz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_10
_Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_20:
	lea eax, [ebx+0x124]
	movss xmm0, dword [ebx+0x124]
	addss xmm0, [edi]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edi+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edi+0x8]
	movss [ebp-0x1c], xmm0
	lea esi, [edi+0xc]
	lea eax, [ebx+0x130]
	movss xmm0, dword [ebx+0x130]
	addss xmm0, [edi+0xc]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [esi+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [esi+0x8]
	movss [ebp-0x28], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea ecx, [edi+0x24]
	mov [ebp-0x40], ecx
	mov [esp], ecx
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jnz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_10
	cmp byte [ebx+0xf5], 0x0
	jz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_30
	mov edx, [ebx+0x88]
_Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_60:
	lea eax, [ebx+0x148]
	cmp byte [ebx+0xf5], 0x0
	jz _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_40
_Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_50:
	mov ecx, [ebp+0x10]
	movss xmm0, dword [ecx]
	movss [ebp-0x3c], xmm0
	mov [esp+0x20], eax
	lea eax, [ebx+0x13c]
	mov [esp+0x1c], eax
	mov eax, [edi+0x50]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	lea eax, [edi+0x30]
	mov [esp+0x8], eax
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z22CM_TransformedBoxTraceP7trace_tPKfS2_S2_S2_jiS2_S2_
	mov edx, [ebp+0x10]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0x3c]
	jae _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_10
	movzx eax, word [ebx]
	mov dword [edx+0x1c], 0x1
	mov [edx+0x20], ax
_Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_40:
	mov eax, vec3_origin
	jmp _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_50
_Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_30:
	mov eax, [ebx+0x120]
	mov [esp+0x8], eax
	lea eax, [ebx+0x114]
	mov [esp+0x4], eax
	lea eax, [ebx+0x108]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	mov edx, eax
	jmp _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t_60


;SV_ClipSightToEntity(sightclip_t const*, svEntity_s*)
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, sv
	add edx, 0x1b30
	sub eax, edx
	sar eax, 0x3
	imul esi, eax, 0x677d46cf
	mov [esp], esi
	call _Z13SV_GentityNumi
	mov ebx, eax
	mov eax, [eax+0x120]
	mov [ebp-0x1c], eax
	mov ecx, [edi+0x44]
	test ecx, eax
	jz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_10
	mov edx, [edi+0x3c]
	cmp edx, 0x3ff
	jz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_20
	cmp esi, edx
	jz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_10
	cmp word [ebx+0x154], 0x0
	jnz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_30
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_20:
	mov edx, [edi+0x40]
	cmp edx, 0x3ff
	jz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_40
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_90:
	cmp esi, edx
	jz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_10
	cmp word [ebx+0x154], 0x0
	jnz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_50
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_40:
	cmp byte [ebx+0xf5], 0x0
	jz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_60
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_100:
	mov edx, [ebx+0x88]
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_110:
	lea eax, [ebx+0x148]
	cmp byte [ebx+0xf5], 0x0
	jnz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_70
	mov eax, vec3_origin
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_70:
	mov [esp+0x20], eax
	lea eax, [ebx+0x13c]
	mov [esp+0x1c], eax
	mov [esp+0x18], ecx
	mov [esp+0x14], edx
	lea eax, [edi+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	lea eax, [edi+0x30]
	mov [esp+0x8], eax
	lea eax, [edi+0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z27CM_TransformedBoxSightTraceiPKfS0_S0_S0_jiS0_S0_
	test eax, eax
	jnz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_80
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_10:
	xor eax, eax
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_120:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_30:
	movzx eax, word [ebx+0x154]
	sub eax, 0x1
	cmp eax, edx
	jz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_10
	mov edx, [edi+0x40]
	cmp edx, 0x3ff
	jnz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_90
	jmp _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_40
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_50:
	movzx eax, word [ebx+0x154]
	sub eax, 0x1
	cmp eax, edx
	jz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_10
	cmp byte [ebx+0xf5], 0x0
	jnz _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_100
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_60:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebx+0x114]
	mov [esp+0x4], eax
	lea eax, [ebx+0x108]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	mov edx, eax
	mov ecx, [edi+0x44]
	jmp _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_110
_Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_80:
	mov eax, 0xffffffff
	jmp _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s_120
	nop


;SV_PointTraceToEntity(pointtrace_t const*, svEntity_s*, trace_t*)
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov eax, sv
	add eax, 0x1b30
	mov edx, [ebp+0xc]
	sub edx, eax
	mov eax, edx
	sar eax, 0x3
	imul ebx, eax, 0x677d46cf
	mov [esp], ebx
	call _Z13SV_GentityNumi
	mov edi, eax
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x28]
	test [edi+0x120], ecx
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	mov edx, [eax+0x24]
	test edx, edx
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_20
	mov esi, [edx]
	cmp esi, 0x3ff
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_20
	cmp byte [edx+0x8], 0x0
	jnz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_30
	cmp byte [edx+0x9], 0x0
	jnz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_40
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_160:
	lea eax, [edi+0x154]
	mov [ebp-0xb0], eax
	cmp word [edi+0x154], 0x0
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_20
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_170:
	cmp byte [edx+0xa], 0x0
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_50
	movzx eax, word [edi+0x154]
	sub eax, 0x1
	cmp eax, [edx+0x4]
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_60
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_50:
	cmp byte [edx+0xb], 0x0
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_20
	mov edx, [ebp-0xb0]
	movzx eax, word [edx]
	sub eax, 0x1
	cmp eax, esi
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_20:
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x2c]
	test esi, esi
	jnz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_70
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_100:
	mov edx, [ebp+0xc]
	test [edx+0x164], ecx
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [esp+0xc], eax
	lea eax, [edi+0x130]
	mov [esp+0x8], eax
	lea eax, [edi+0x124]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jnz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	cmp byte [edi+0xf5], 0x0
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_80
	mov ecx, [edi+0x88]
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_190:
	lea eax, [edi+0x148]
	cmp byte [edi+0xf5], 0x0
	jnz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_90
	mov edx, vec3_origin
	mov eax, edx
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_180:
	mov ebx, [ebp+0x10]
	movss xmm0, dword [ebx]
	movss [ebp-0xac], xmm0
	mov [esp+0x20], eax
	lea eax, [edi+0x13c]
	mov [esp+0x1c], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x28]
	mov [esp+0x18], eax
	mov [esp+0x14], ecx
	mov [esp+0x10], edx
	mov [esp+0xc], edx
	mov eax, ebx
	add eax, 0xc
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z22CM_TransformedBoxTraceP7trace_tPKfS2_S2_S2_jiS2_S2_
	mov edx, [ebp+0x10]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0xac]
	jae _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	mov word [edx+0x22], 0x0
	mov word [edx+0x24], 0x0
	mov word [edx+0x26], 0x0
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_150:
	movzx eax, word [edi]
	mov ebx, [ebp+0x10]
	mov dword [ebx+0x1c], 0x1
	mov [ebx+0x20], ax
	mov eax, [edi+0x120]
	mov [ebx+0x14], eax
	mov dword [ebx+0x18], 0x0
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_70:
	movzx eax, byte [edi+0xf6]
	test al, 0x6
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_100
	test al, 0x2
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_110
	mov ebx, [ebx+0x30]
	test ebx, ebx
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_100
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_110:
	mov eax, [edi]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov esi, eax
	test eax, eax
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_120
	test byte [edi+0xf6], 0x4
	jnz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_130
	lea eax, [edi+0x13c]
	movss xmm1, dword [edi+0x13c]
	movss [ebp-0x80], xmm1
	movss xmm2, dword [eax+0x4]
	movss [ebp-0x7c], xmm2
	movss xmm3, dword [eax+0x8]
	movss [ebp-0x78], xmm3
	movaps xmm0, xmm1
	addss xmm0, [actorLocationalMins]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm2
	addss xmm0, [actorLocationalMins+0x4]
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm3
	addss xmm0, [actorLocationalMins+0x8]
	movss [ebp-0x34], xmm0
	addss xmm1, [actorLocationalMaxs]
	movss [ebp-0x30], xmm1
	addss xmm2, [actorLocationalMaxs+0x4]
	movss [ebp-0x2c], xmm2
	addss xmm3, [actorLocationalMaxs+0x8]
	movss [ebp-0x28], xmm3
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_200:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jnz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	lea ebx, [ebp-0xa4]
	mov [esp+0x4], ebx
	lea eax, [edi+0x148]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	lea edx, [ebp-0x48]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov [esp], eax
	call _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [ebp-0x74], eax
	test byte [edi+0xf6], 0x4
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_140
	lea ebx, [ebp-0x58]
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z25DObjGeomTracelinePartBitsP6DObj_siPi
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z14G_DObjCalcPoseP9gentity_sPi
	lea eax, [ebp-0x74]
	mov [esp+0x10], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_210:
	movss xmm0, dword [ebp-0x74]
	mov ebx, [ebp+0x10]
	ucomiss xmm0, [ebx]
	jae _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	movss [ebx], xmm0
	mov eax, [ebp-0x70]
	mov [ebx+0x10], eax
	movzx eax, word [ebp-0x60]
	mov [ebx+0x22], ax
	movzx eax, word [ebp-0x5e]
	mov [ebx+0x24], ax
	movzx eax, word [ebp-0x5c]
	mov [ebx+0x26], ax
	mov eax, ebx
	add eax, 0x4
	movss xmm2, dword [ebp-0x6c]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0xa4]
	movss xmm4, dword [ebp-0x68]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss xmm3, dword [ebp-0x64]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x8c]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xa0]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x94]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x88]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm2, [ebp-0x9c]
	mulss xmm4, [ebp-0x90]
	addss xmm2, xmm4
	mulss xmm3, [ebp-0x84]
	addss xmm2, xmm3
	movss [eax+0x8], xmm2
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, [_float_0_69999999]
	setae byte [ebx+0x2a]
	jmp _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_150
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_30:
	cmp ebx, esi
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	cmp byte [edx+0x9], 0x0
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_160
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_40:
	cmp ebx, [edx+0x4]
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	lea eax, [edi+0x154]
	mov [ebp-0xb0], eax
	cmp word [edi+0x154], 0x0
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_20
	jmp _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_170
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_90:
	mov edx, vec3_origin
	jmp _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_180
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_80:
	mov eax, [edi+0x120]
	mov [esp+0x8], eax
	lea eax, [edi+0x114]
	mov [esp+0x4], eax
	lea eax, [edi+0x108]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	mov ecx, eax
	jmp _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_190
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_130:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15DObjHasContentsP6DObj_si
	test eax, eax
	jz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	lea edx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [ebp-0x80], eax
	mov eax, [edx+0x4]
	mov [ebp-0x7c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x78], eax
	mov [esp], esi
	call _Z13DObjGetRadiusPK6DObj_s
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	movss xmm3, dword [ebp-0x78]
	subss xmm3, xmm1
	movss xmm2, dword [ebp-0x7c]
	subss xmm2, xmm1
	movss xmm0, dword [ebp-0x80]
	subss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss [ebp-0x38], xmm2
	movss [ebp-0x34], xmm3
	movaps xmm2, xmm1
	addss xmm2, [ebp-0x78]
	movaps xmm0, xmm1
	addss xmm0, [ebp-0x7c]
	addss xmm1, [ebp-0x80]
	movss [ebp-0x30], xmm1
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm2
	jmp _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_200
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_120:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x28]
	jmp _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_100
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_60:
	cmp ebx, esi
	jnz _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_10
	jmp _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_50
_Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_140:
	lea ebx, [ebp-0x58]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z21DObjTracelinePartBitsP6DObj_sPi
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z14G_DObjCalcPoseP9gentity_sPi
	lea eax, [ebp-0x74]
	mov [esp+0x10], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s
	jmp _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t_210
	nop


;SV_SightTraceToEntity(float const*, float const*, float const*, float const*, int, int)
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x18]
	mov [esp], eax
	call _Z13SV_GentityNumi
	mov ebx, eax
	mov eax, [ebp+0x1c]
	test [ebx+0x120], eax
	jz _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10
	mov edx, 0x1
	lea esi, [ebp-0x24]
	movss xmm2, dword [_float_1_00000000]
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_30:
	lea eax, [edx*4]
	mov ecx, [ebp+0x14]
	movss xmm1, dword [ecx+eax-0x4]
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+eax-0x4]
	ucomiss xmm1, xmm0
	jbe _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_20
	mov ecx, [ebp+0xc]
	addss xmm0, [ecx+eax-0x4]
	subss xmm0, xmm2
	movss [esi+eax-0x4], xmm0
	addss xmm1, [edi+eax-0x4]
	addss xmm1, xmm2
	movss [ebp+eax-0x34], xmm1
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_70:
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_30
	movss xmm0, dword [ebx+0x124]
	ucomiss xmm0, [ebp-0x30]
	ja _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10
	movss xmm0, dword [ebx+0x128]
	ucomiss xmm0, [ebp-0x2c]
	ja _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10
	movss xmm0, dword [ebx+0x12c]
	ucomiss xmm0, [ebp-0x28]
	ja _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10
	movss xmm0, dword [ebp-0x24]
	ucomiss xmm0, [ebx+0x130]
	ja _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10
	movss xmm0, dword [ebp-0x20]
	ucomiss xmm0, [ebx+0x134]
	ja _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10
	movss xmm0, dword [ebp-0x1c]
	ucomiss xmm0, [ebx+0x138]
	ja _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10
	cmp byte [ebx+0xf5], 0x0
	jz _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_40
	mov eax, [ebx+0x88]
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_80:
	lea ecx, [ebx+0x13c]
	lea edx, [ebx+0x148]
	cmp byte [ebx+0xf5], 0x0
	jnz _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_50
	mov edx, vec3_origin
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_50:
	mov [esp+0x20], edx
	mov [esp+0x1c], ecx
	mov edx, [ebp+0x1c]
	mov [esp+0x18], edx
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call _Z27CM_TransformedBoxSightTraceiPKfS0_S0_S0_jiS0_S0_
	test eax, eax
	jz _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10
	mov eax, 0xffffffff
	jmp _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_60
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_10:
	xor eax, eax
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_60:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_20:
	mov ecx, [ebp+0xc]
	addss xmm1, [ecx+eax-0x4]
	subss xmm1, xmm2
	movss [esi+eax-0x4], xmm1
	addss xmm0, [edi+eax-0x4]
	addss xmm0, xmm2
	movss [ebp+eax-0x34], xmm0
	jmp _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_70
_Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_40:
	mov eax, [ebx+0x120]
	mov [esp+0x8], eax
	lea eax, [ebx+0x114]
	mov [esp+0x4], eax
	lea eax, [ebx+0x108]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	jmp _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii_80
	nop


;SV_ClipHandleForEntity(gentity_s const*)
_Z22SV_ClipHandleForEntityPK9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	cmp byte [edx+0xf5], 0x0
	jz _Z22SV_ClipHandleForEntityPK9gentity_s_10
	mov eax, [edx+0x88]
	leave
	ret
_Z22SV_ClipHandleForEntityPK9gentity_s_10:
	mov eax, [edx+0x120]
	mov [esp+0x8], eax
	lea eax, [edx+0x114]
	mov [esp+0x4], eax
	lea eax, [edx+0x108]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	leave
	ret


;SV_SetupIgnoreEntParams(IgnoreEntParams*, int)
_Z23SV_SetupIgnoreEntParamsP15IgnoreEntParamsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebx], eax
	cmp eax, 0x3ff
	jz _Z23SV_SetupIgnoreEntParamsP15IgnoreEntParamsi_10
	mov [esp], eax
	call _Z13SV_GentityNumi
	cmp word [eax+0x154], 0x0
	jnz _Z23SV_SetupIgnoreEntParamsP15IgnoreEntParamsi_20
_Z23SV_SetupIgnoreEntParamsP15IgnoreEntParamsi_10:
	mov dword [ebx+0x4], 0xffffffff
	mov byte [ebx+0x8], 0x1
	mov byte [ebx+0xb], 0x1
	mov byte [ebx+0xa], 0x1
	mov byte [ebx+0x9], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23SV_SetupIgnoreEntParamsP15IgnoreEntParamsi_20:
	movzx eax, word [eax+0x154]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov byte [ebx+0x8], 0x1
	mov byte [ebx+0xb], 0x1
	mov byte [ebx+0xa], 0x1
	mov byte [ebx+0x9], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_PointSightTraceToEntity(sightpointtrace_t const*, svEntity_s*)
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov eax, [ebp+0xc]
	mov edx, sv
	add edx, 0x1b30
	sub eax, edx
	sar eax, 0x3
	imul edi, eax, 0x677d46cf
	mov [esp], edi
	call _Z13SV_GentityNumi
	mov esi, eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	test [esi+0x120], eax
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_10
	mov ecx, edx
	xor ebx, ebx
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_40:
	mov edx, [ecx+0x18]
	cmp edx, 0x3ff
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_20
	cmp edi, edx
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_10
	cmp word [esi+0x154], 0x0
	jnz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_30
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_20:
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x2
	jnz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_40
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x24]
	test eax, eax
	jnz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_50
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_90:
	cmp byte [esi+0xf5], 0x0
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_60
	mov ecx, [esi+0x88]
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_150:
	lea eax, [esi+0x148]
	cmp byte [esi+0xf5], 0x0
	jnz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_70
	mov edx, vec3_origin
	mov eax, edx
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_140:
	mov [esp+0x20], eax
	lea eax, [esi+0x13c]
	mov [esp+0x1c], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x20]
	mov [esp+0x18], eax
	mov [esp+0x14], ecx
	mov [esp+0x10], edx
	mov [esp+0xc], edx
	mov eax, ebx
	add eax, 0xc
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call _Z27CM_TransformedBoxSightTraceiPKfS0_S0_S0_jiS0_S0_
	test eax, eax
	jnz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_80
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_10:
	xor eax, eax
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_130:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_30:
	movzx eax, word [esi+0x154]
	sub eax, 0x1
	cmp eax, edx
	jnz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_20
	jmp _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_10
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_50:
	movzx eax, byte [esi+0xf6]
	test al, 0x6
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_90
	test al, 0x2
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_100
	mov edi, [ecx+0x28]
	test edi, edi
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_90
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_100:
	mov eax, [esi]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov [ebp-0xcc], eax
	test eax, eax
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_90
	test byte [esi+0xf6], 0x4
	jnz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_110
	lea eax, [esi+0x13c]
	movss xmm1, dword [esi+0x13c]
	movss [ebp-0xa4], xmm1
	movss xmm2, dword [eax+0x4]
	movss [ebp-0xa0], xmm2
	movss xmm3, dword [eax+0x8]
	movss [ebp-0x9c], xmm3
	movaps xmm0, xmm1
	addss xmm0, [actorLocationalMins]
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm2
	addss xmm0, [actorLocationalMins+0x4]
	movss [ebp-0x2c], xmm0
	movaps xmm0, xmm3
	addss xmm0, [actorLocationalMins+0x8]
	movss [ebp-0x28], xmm0
	addss xmm1, [actorLocationalMaxs]
	movss [ebp-0x3c], xmm1
	addss xmm2, [actorLocationalMaxs+0x4]
	movss [ebp-0x38], xmm2
	addss xmm3, [actorLocationalMaxs+0x8]
	movss [ebp-0x34], xmm3
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_160:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [ebp-0x98], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x94], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x90], eax
	mov edx, ecx
	add edx, 0xc
	mov eax, [ecx+0xc]
	mov [ebp-0x8c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x88], eax
	mov eax, [edx+0x8]
	mov [ebp-0x84], eax
	lea edi, [ebp-0x98]
	mov [esp], edi
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	mov dword [esp+0xc], 0x3f800000
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jnz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_10
	lea ebx, [ebp-0xc8]
	mov [esp+0x4], ebx
	lea eax, [esi+0x148]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	lea edi, [ebp-0x48]
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	mov dword [ebp-0x74], 0x3f800000
	test byte [esi+0xf6], 0x4
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_120
	lea ebx, [ebp-0x58]
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	mov [esp+0x4], eax
	mov ecx, [ebp-0xcc]
	mov [esp], ecx
	call _Z25DObjGeomTracelinePartBitsP6DObj_siPi
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z14G_DObjCalcPoseP9gentity_sPi
	lea eax, [ebp-0x74]
	mov [esp+0x10], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0xcc]
	mov [esp], edx
	call _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_170:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x74]
	jbe _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_10
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_80:
	mov eax, 0xffffffff
	jmp _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_130
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_70:
	mov edx, vec3_origin
	jmp _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_140
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_60:
	mov eax, [esi+0x120]
	mov [esp+0x8], eax
	lea eax, [esi+0x114]
	mov [esp+0x4], eax
	lea eax, [esi+0x108]
	mov [esp], eax
	call _Z15CM_TempBoxModelPKfS0_i
	mov ecx, eax
	jmp _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_150
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_110:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0xcc]
	mov [esp], eax
	call _Z15DObjHasContentsP6DObj_si
	test eax, eax
	jz _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_10
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0xa4], eax
	mov eax, [edx+0x4]
	mov [ebp-0xa0], eax
	mov eax, [edx+0x8]
	mov [ebp-0x9c], eax
	mov edx, [ebp-0xcc]
	mov [esp], edx
	call _Z13DObjGetRadiusPK6DObj_s
	fstp dword [ebp-0xdc]
	movss xmm1, dword [ebp-0xdc]
	movss xmm3, dword [ebp-0x9c]
	subss xmm3, xmm1
	movss xmm2, dword [ebp-0xa0]
	subss xmm2, xmm1
	movss xmm0, dword [ebp-0xa4]
	subss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm2
	movss [ebp-0x28], xmm3
	movaps xmm2, xmm1
	addss xmm2, [ebp-0x9c]
	movaps xmm0, xmm1
	addss xmm0, [ebp-0xa0]
	addss xmm1, [ebp-0xa4]
	movss [ebp-0x3c], xmm1
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm2
	jmp _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_160
_Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_120:
	lea ebx, [ebp-0x58]
	mov [esp+0x4], ebx
	mov ecx, [ebp-0xcc]
	mov [esp], ecx
	call _Z21DObjTracelinePartBitsP6DObj_sPi
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z14G_DObjCalcPoseP9gentity_sPi
	lea eax, [ebp-0x74]
	mov [esp+0x10], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x28]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0xcc]
	mov [esp], edx
	call _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s
	jmp _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s_170
	nop


;SV_Trace(trace_t*, float const*, float const*, float const*, float const*, IgnoreEntParams const*, int, int, unsigned char*, int)
_Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edi]
	jp _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_10
	jz _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_20
_Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_10:
	mov dword [edi+0x1c], 0x1
	mov word [edi+0x20], 0x3fe
_Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_70:
	pxor xmm1, xmm1
	ucomiss xmm1, [edi]
	jp _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_30
	jz _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_40
_Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_30:
	lea ecx, [ebx+0x4]
	lea eax, [esi+0x4]
	mov [ebp-0x80], eax
	lea edx, [ebx+0x8]
	lea eax, [esi+0x8]
	mov [ebp-0x7c], eax
	movss xmm6, dword [ebx]
	movaps xmm0, xmm6
	subss xmm0, [esi]
	addss xmm0, [ebx+0x4]
	subss xmm0, [esi+0x4]
	addss xmm0, [ebx+0x8]
	subss xmm0, [esi+0x8]
	ucomiss xmm0, xmm1
	jnz _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_50
	jp _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_50
	mov eax, [ebp+0x2c]
	test eax, eax
	jz _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_60
	mov edx, [ebp+0x20]
	mov [esp+0xc], edx
	mov ebx, [ebp+0x18]
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z25CM_PointTraceStaticModelsP7trace_tPKfS2_i
	pxor xmm0, xmm0
	ucomiss xmm0, [edi]
	jp _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_60
	jz _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_40
_Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_60:
	mov eax, [ebp+0x20]
	mov [ebp-0x44], eax
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [ebp-0x6c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x68], eax
	mov eax, [edx+0x8]
	mov [ebp-0x64], eax
	mov ebx, [ebp+0x18]
	mov eax, [ebx]
	mov [ebp-0x60], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x5c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x58], eax
	lea ebx, [ebp-0x6c]
	mov [esp], ebx
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	mov eax, [ebp+0x1c]
	mov [ebp-0x48], eax
	mov edx, [ebp+0x24]
	mov [ebp-0x40], edx
	mov eax, [ebp+0x28]
	mov [ebp-0x3c], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z23CM_PointTraceToEntitiesP12pointtrace_tP7trace_t
_Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_40:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_20:
	mov dword [edi+0x1c], 0x0
	mov word [edi+0x20], 0x0
	jmp _Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_70
_Z8SV_TraceP7trace_tPKfS2_S2_S2_PK15IgnoreEntParamsiiPhi_50:
	mov ebx, [ebp+0x20]
	mov [ebp-0x1c], ebx
	mov ebx, [ebp+0x1c]
	mov eax, [ebx]
	mov [ebp-0x24], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x20], eax
	movaps xmm1, xmm6
	subss xmm1, [esi]
	movss xmm4, dword [ecx]
	movaps xmm2, xmm4
	mov eax, [ebp-0x80]
	subss xmm2, [eax]
	movss xmm5, dword [edx]
	movaps xmm3, xmm5
	mov edx, [ebp-0x7c]
	subss xmm3, [edx]
	mulss xmm1, [_float_0_50000000]
	mulss xmm2, [_float_0_50000000]
	mulss xmm3, [_float_0_50000000]
	movss [ebp-0x60], xmm1
	movss [ebp-0x5c], xmm2
	movss [ebp-0x58], xmm3
	movss xmm7, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	movss [ebp-0x6c], xmm0
	movaps xmm0, xmm2
	xorps xmm0, xmm7
	movss [ebp-0x68], xmm0
	movaps xmm0, xmm3
	xorps xmm0, xmm7
	movss [ebp-0x64], xmm0
	addss xmm1, [_float_1_00000000]
	movss [ebp-0x54], xmm1
	addss xmm2, [_float_1_00000000]
	movss [ebp-0x50], xmm2
	addss xmm3, [_float_1_00000000]
	movss [ebp-0x4c], xmm3
	movaps xmm1, xmm6
	addss xmm1, [esi]
	addss xmm4, [eax]
	addss xmm5, [edx]
	mulss xmm1, [_float_0_50000000]
	mulss xmm4, [_float_0_50000000]
	mulss xmm5, [_float_0_50000000]
	movaps xmm0, xmm1
	mov ebx, [ebp+0xc]
	addss xmm0, [ebx]
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm4
	addss xmm0, [ebx+0x4]
	movss [ebp-0x44], xmm0
	movaps xmm0, xmm5
	addss xmm0, [ebx+0x8]
	movss [ebp-0x40], xmm0
	mov eax, [ebp+0x18]
	addss xmm1, [eax]
	movss [ebp-0x3c], xmm1
	addss xmm4, [eax+0x4]
	movss [ebp-0x38], xmm4
	addss xmm5, [eax+0x8]
	movss [ebp-0x34], xmm5
	lea ebx, [ebp-0x6c]
	lea eax, [ebp-0x48]
	mov [esp], eax
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z21CM_ClipMoveToEntitiesP10moveclip_tP7trace_t
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of sv_world:
SECTION .data
actorLocationalMaxs: dd 0x42800000, 0x42800000, 0x42900000
actorLocationalMins: dd 0xc2800000, 0xc2800000, 0xc2000000, 0x0, 0x0


;Initialized constant data of sv_world:
SECTION .rdata


;Zero initialized global or static variables of sv_world:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000100:		dd 0x358637be	; 1e-06
_float_1_00000000:		dd 0x3f800000	; 1
_float_32_00000000:		dd 0x42000000	; 32
_float_0_00000000:		dd 0x0	; 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_69999999:		dd 0x3f333333	; 0.7

