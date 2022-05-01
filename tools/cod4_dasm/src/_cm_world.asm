;Imports of cm_world:
	extern sv
	extern _Z21SV_GEntityForSvEntityP10svEntity_s
	extern _Z11Com_DPrintfiPKcz
	extern _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s
	extern _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	extern _Z27CM_TraceStaticModelCompleteP14cStaticModel_sPKfS2_i
	extern cm
	extern _Z17XModelGetContentsPK6XModel
	extern _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s
	extern _Z19CM_TraceStaticModelP14cStaticModel_sP7trace_tPKfS4_i
	extern _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t
	extern _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t
	extern memset
	extern _Z14CM_ModelBoundsjPfS_
	extern _Z20CM_ClipHandleToModelj
	extern _Z19CM_CalcTraceExtentsP12TraceExtents

;Exports of cm_world:
	global cm_world
	global _Z17CM_AreaEntities_rjP11areaParms_t
	global _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2_
	global _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3_
	global _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3_
	global _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t
	global _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t
	global _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t
	global _Z11CM_SortNodetPfS_
	global _Z12CM_LinkWorldv
	global _Z13CM_LinkEntityP10svEntity_sPfS1_j
	global _Z15CM_AreaEntitiesPKfS0_Piii
	global _Z15CM_UnlinkEntityP10svEntity_s
	global _Z21CM_ClipMoveToEntitiesP10moveclip_tP7trace_t
	global _Z23CM_PointTraceToEntitiesP12pointtrace_tP7trace_t
	global _Z25CM_PointTraceStaticModelsP7trace_tPKfS2_i
	global _Z27CM_ClipSightTraceToEntitiesP11sightclip_t
	global _Z28CM_PointSightTraceToEntitiesP17sightpointtrace_t
	global _Z33CM_PointTraceStaticModelsCompletePKfS0_i


SECTION .text


;CM_AreaEntities_r(unsigned int, areaParms_t*)
_Z17CM_AreaEntities_rjP11areaParms_t:
_Z17CM_AreaEntities_rjP11areaParms_t_110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, eax
	mov esi, edx
	mov eax, sv
	mov [ebp-0x24], eax
	mov edx, eax
	add edx, 0x1b30
	mov [ebp-0x28], edx
_Z17CM_AreaEntities_rjP11areaParms_t_60:
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	lea edi, [ecx+cm_world+0x1c]
	mov eax, [edi+0x4]
	test [esi+0x14], eax
	jz _Z17CM_AreaEntities_rjP11areaParms_t_10
_Z17CM_AreaEntities_rjP11areaParms_t_50:
	movzx eax, word [edi+0xc]
	movzx edx, ax
	test ax, ax
	jnz _Z17CM_AreaEntities_rjP11areaParms_t_20
_Z17CM_AreaEntities_rjP11areaParms_t_100:
	movzx eax, word [edi+0x14]
	lea edx, [eax*4]
	movss xmm1, dword [edi+0x10]
	mov eax, [esi+0x4]
	movss xmm0, dword [eax+edx]
	ucomiss xmm0, xmm1
	jbe _Z17CM_AreaEntities_rjP11areaParms_t_30
	mov eax, [esi]
	ucomiss xmm1, [edx+eax]
	ja _Z17CM_AreaEntities_rjP11areaParms_t_40
	movzx ecx, word [edi+0x18]
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	lea edi, [ecx+cm_world+0x1c]
	mov eax, [edi+0x4]
	test [esi+0x14], eax
	jnz _Z17CM_AreaEntities_rjP11areaParms_t_50
_Z17CM_AreaEntities_rjP11areaParms_t_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CM_AreaEntities_rjP11areaParms_t_30:
	mov eax, [esi]
	movss xmm0, dword [edx+eax]
	ucomiss xmm0, xmm1
	jae _Z17CM_AreaEntities_rjP11areaParms_t_10
	movzx ecx, word [edi+0x1a]
	jmp _Z17CM_AreaEntities_rjP11areaParms_t_60
_Z17CM_AreaEntities_rjP11areaParms_t_20:
	mov eax, [ebp-0x24]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x1c], eax
_Z17CM_AreaEntities_rjP11areaParms_t_90:
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	mov edx, [ebp-0x20]
	lea ebx, [edx+eax*8+0x19b8]
	mov [esp], ebx
	call _Z21SV_GEntityForSvEntityP10svEntity_s
	mov edx, eax
	mov eax, [eax+0x120]
	test [esi+0x14], eax
	jz _Z17CM_AreaEntities_rjP11areaParms_t_70
	mov eax, [esi+0x4]
	movss xmm0, dword [edx+0x124]
	ucomiss xmm0, [eax]
	ja _Z17CM_AreaEntities_rjP11areaParms_t_70
	mov ecx, [esi]
	movss xmm0, dword [ecx]
	ucomiss xmm0, [edx+0x130]
	ja _Z17CM_AreaEntities_rjP11areaParms_t_70
	movss xmm0, dword [edx+0x128]
	ucomiss xmm0, [eax+0x4]
	ja _Z17CM_AreaEntities_rjP11areaParms_t_70
	movss xmm0, dword [ecx+0x4]
	ucomiss xmm0, [edx+0x134]
	ja _Z17CM_AreaEntities_rjP11areaParms_t_70
	movss xmm0, dword [edx+0x12c]
	ucomiss xmm0, [eax+0x8]
	ja _Z17CM_AreaEntities_rjP11areaParms_t_70
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [edx+0x138]
	ja _Z17CM_AreaEntities_rjP11areaParms_t_70
	mov ecx, [esi+0xc]
	cmp ecx, [esi+0x10]
	jz _Z17CM_AreaEntities_rjP11areaParms_t_80
	mov edx, [esi+0x8]
	mov eax, ebx
	sub eax, [ebp-0x1c]
	sar eax, 0x3
	imul eax, eax, 0x677d46cf
	mov [edx+ecx*4], eax
	add dword [esi+0xc], 0x1
_Z17CM_AreaEntities_rjP11areaParms_t_70:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jnz _Z17CM_AreaEntities_rjP11areaParms_t_90
	jmp _Z17CM_AreaEntities_rjP11areaParms_t_100
_Z17CM_AreaEntities_rjP11areaParms_t_40:
	movzx ebx, word [edi+0x1a]
	movzx eax, word [edi+0x18]
	mov edx, esi
	call _Z17CM_AreaEntities_rjP11areaParms_t_110
	mov ecx, ebx
	jmp _Z17CM_AreaEntities_rjP11areaParms_t_60
_Z17CM_AreaEntities_rjP11areaParms_t_80:
	mov dword [esp+0x4], _cstring_cm_areaentities_
	mov dword [esp], 0x10
	call _Z11Com_DPrintfiPKcz
	jmp _Z17CM_AreaEntities_rjP11areaParms_t_10


;CM_PointSightTraceToEntities_r(sightpointtrace_t*, unsigned short, float const*, float const*)
_Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2_:
_Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, eax
	mov edi, [ebp+0x8]
	movzx edx, dx
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	lea ebx, [edx+cm_world+0x1c]
	mov eax, [esi+0x20]
	test [ebx+0x4], eax
	jz _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__10
	test [ebx+0x8], eax
	jz _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__10
	movzx eax, word [ebx+0x14]
	shl eax, 0x2
	movss xmm0, dword [ebx+0x10]
	movss xmm2, dword [eax+ecx]
	subss xmm2, xmm0
	movss xmm3, dword [eax+edi]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jb _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__20
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm4
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	andps xmm2, xmm1
	andnps xmm0, xmm3
	orps xmm0, xmm2
	xor edx, edx
	ucomiss xmm0, xmm4
	setae dl
	mov eax, 0x1
	sub eax, edx
	movzx edx, word [ebx+eax*2+0x18]
	mov [esp], edi
	mov eax, esi
	call _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__30
	test eax, eax
	jnz _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__40
_Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__60:
	movzx eax, word [ebx+0xc]
	movzx ecx, ax
	test ax, ax
	jnz _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__50
_Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__10:
	xor eax, eax
_Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__50:
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	sub eax, ecx
	lea ebx, [eax*8+0x19b8]
	add ebx, sv
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z26SV_PointSightTraceToEntityPK17sightpointtrace_tP10svEntity_s
	test eax, eax
	jnz _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__40
	movzx eax, word [ebx+0x2]
	movzx ecx, ax
	test ax, ax
	jnz _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__50
	jmp _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__10
_Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__20:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ecx]
	movss xmm0, dword [edi]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ecx+0x4]
	movss xmm0, dword [edi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [edi+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	xor eax, eax
	ucomiss xmm3, xmm4
	setae al
	mov [ebp-0x2c], eax
	movzx edx, word [ebx+eax*2+0x18]
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov eax, esi
	call _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__30
	test eax, eax
	jnz _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__40
	mov al, 0x1
	sub eax, [ebp-0x2c]
	movzx edx, word [ebx+eax*2+0x18]
	mov [esp], edi
	lea ecx, [ebp-0x24]
	mov eax, esi
	call _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__30
	test eax, eax
	jz _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__60
	jmp _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2__40
	nop


;CM_PointTraceStaticModelsComplete_r(staticmodeltrace_t const*, unsigned short, float const*, float const*)
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3_:
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, eax
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x28], eax
	jmp _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__10
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__40:
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax+0x10]
	movzx eax, word [eax+0x14]
	movss xmm2, dword [ebp+eax*4-0x30]
	subss xmm2, xmm0
	mov ecx, [ebp+0x8]
	movss xmm3, dword [ecx+eax*4]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__20
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm4, xmm1
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov edx, 0x1
	sub edx, eax
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+edx*2+0x18]
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__10:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edx, [eax+0xc]
	mov [ebp-0x3c], edx
	mov eax, [eax+0xc]
	test [edi+0x24], eax
	jz _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__30
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__100:
	movzx eax, word [edx+0xe]
	test ax, ax
	jz _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__40
	jmp _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__50
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__80:
	mov dword [esp+0xc], 0x3f800000
	lea eax, [ebx-0xc]
	mov [esp+0x8], eax
	lea eax, [ebx-0x18]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jnz _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__60
	mov eax, [edi+0x24]
	mov [esp+0xc], eax
	lea eax, [edi+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z27CM_TraceStaticModelCompleteP14cStaticModel_sPKfS2_i
	test eax, eax
	jz _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__70
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__60:
	movzx eax, word [esi]
	test ax, ax
	jz _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__40
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__50:
	movzx eax, ax
	lea ebx, [eax+eax*4]
	shl ebx, 0x4
	mov ecx, cm
	add ebx, [ecx+0x14]
	lea esi, [ebx-0x50]
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z17XModelGetContentsPK6XModel
	test [edi+0x24], eax
	jz _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__60
	jmp _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__80
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__20:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	pxor xmm0, xmm0
	xor ebx, ebx
	ucomiss xmm3, xmm0
	setae bl
	mov eax, [ebp-0x3c]
	movzx edx, word [eax+ebx*2+0x18]
	lea eax, [ebp-0x24]
	mov [esp], eax
	lea ecx, [ebp-0x30]
	mov eax, edi
	call _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__90
	test eax, eax
	jz _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__70
	mov eax, 0x1
	sub eax, ebx
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+eax*2+0x18]
	mov eax, [ebp-0x24]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x28], eax
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edx, [eax+0xc]
	mov [ebp-0x3c], edx
	mov eax, [eax+0xc]
	test [edi+0x24], eax
	jnz _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__100
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__30:
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3__70:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CM_ClipSightTraceToEntities_r(sightclip_t const*, unsigned short, float const*, float const*)
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3_:
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__100:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, eax
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x28], eax
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__80:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov eax, [edi+0x44]
	test [esi+0x4], eax
	jz _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__10
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__40:
	test [esi+0x8], eax
	jz _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__10
	movzx eax, word [esi+0xc]
	movzx edx, ax
	test ax, ax
	jnz _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__20
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__50:
	movzx eax, word [esi+0x14]
	movss xmm0, dword [esi+0x10]
	movss xmm3, dword [ebp+eax*4-0x30]
	subss xmm3, xmm0
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+eax*4]
	subss xmm2, xmm0
	movss xmm5, dword [edi+eax*4+0x18]
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
	jb _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__30
	movzx edx, word [esi+0x18]
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov eax, [edi+0x44]
	test [esi+0x4], eax
	jnz _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__40
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__10:
	xor eax, eax
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__110:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__60:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jz _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__50
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__20:
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*8+0x19b8]
	add ebx, sv
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z20SV_ClipSightToEntityPK11sightclip_tP10svEntity_s
	test eax, eax
	jz _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__60
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__30:
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
	jb _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__70
	movzx edx, word [esi+0x1a]
	jmp _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__80
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__70:
	ucomiss xmm6, xmm7
	jnz _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__90
	jp _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__90
	movaps xmm3, xmm7
	movss xmm2, dword [_float_1_00000000]
	movaps xmm4, xmm2
	xor ebx, ebx
	movaps xmm0, xmm7
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__120:
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm4
	orps xmm2, xmm1
	movss xmm1, dword [ebp-0x30]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	movzx edx, word [esi+ebx*2+0x18]
	lea eax, [ebp-0x24]
	mov [esp], eax
	lea ecx, [ebp-0x30]
	mov eax, edi
	movss [ebp-0x48], xmm3
	movss [ebp-0x58], xmm7
	call _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__100
	test eax, eax
	movss xmm3, dword [ebp-0x48]
	movss xmm7, dword [ebp-0x58]
	jnz _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__110
	movaps xmm0, xmm7
	cmpss xmm0, xmm3, 0x2
	andps xmm3, xmm0
	orps xmm3, xmm7
	movss xmm1, dword [ebp-0x30]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [ebp-0x28], xmm1
	mov al, 0x1
	sub eax, ebx
	movzx edx, word [esi+eax*2+0x18]
	jmp _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__80
_Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__90:
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
	movaps xmm3, xmm0
	subss xmm3, xmm5
	mulss xmm3, xmm1
	movaps xmm2, xmm0
	addss xmm2, xmm5
	mulss xmm2, xmm1
	xor ebx, ebx
	ucomiss xmm6, xmm7
	setae bl
	movaps xmm0, xmm4
	subss xmm0, xmm2
	jmp _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3__120
	nop


;CM_PointTraceStaticModels_r(locTraceWork_t*, unsigned short, float const*, float const*, trace_t*)
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t:
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_80:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x3c], eax
	mov eax, [ecx]
	mov [ebp-0x38], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x34], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x3c]
	add eax, 0x4
	mov [ebp-0x40], eax
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_90:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edi, [eax+0xc]
	mov eax, [eax+0xc]
	mov edx, [ebp-0x3c]
	test [edx], eax
	jz _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_10
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_40:
	movzx eax, word [edi+0xe]
	test ax, ax
	jnz _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_20
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_60:
	movss xmm0, dword [edi+0x10]
	movzx eax, word [edi+0x14]
	movss xmm2, dword [ebp+eax*4-0x38]
	subss xmm2, xmm0
	mov edx, [ebp+0x8]
	movss xmm3, dword [edx+eax*4]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_30
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
	movzx edx, word [edi+eax*2+0x18]
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edi, [eax+0xc]
	mov eax, [eax+0xc]
	mov edx, [ebp-0x3c]
	test [edx], eax
	jnz _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_40
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_70:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea eax, [ebx-0xc]
	mov [esp+0x8], eax
	lea eax, [ebx-0x18]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	test eax, eax
	jnz _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_50
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov [esp+0x10], eax
	mov eax, edx
	add eax, 0x10
	mov [esp+0xc], eax
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z19CM_TraceStaticModelP14cStaticModel_sP7trace_tPKfS4_i
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_50:
	movzx eax, word [esi]
	test ax, ax
	jz _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_60
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_20:
	movzx eax, ax
	lea ebx, [eax+eax*4]
	shl ebx, 0x4
	mov eax, cm
	add ebx, [eax+0x14]
	lea esi, [ebx-0x50]
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z17XModelGetContentsPK6XModel
	mov edx, [ebp-0x3c]
	test [edx], eax
	jz _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_50
	jmp _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_70
_Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_30:
	movss xmm4, dword [ebp-0x2c]
	mov eax, [ebp+0xc]
	ucomiss xmm4, [eax]
	jae _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_10
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm4
	mulss xmm2, xmm0
	addss xmm4, xmm2
	movss [ebp-0x1c], xmm4
	pxor xmm0, xmm0
	xor ebx, ebx
	ucomiss xmm3, xmm0
	setae bl
	movzx edx, word [edi+ebx*2+0x18]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	lea ecx, [ebp-0x38]
	mov eax, [ebp-0x3c]
	call _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_80
	mov eax, 0x1
	sub eax, ebx
	movzx edx, word [edi+eax*2+0x18]
	mov eax, [ebp-0x28]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x2c], eax
	jmp _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t_90


;CM_PointTraceToEntities_r(pointtrace_t*, unsigned short, float const*, float const*, trace_t*)
_Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t:
_Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_60:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov eax, [ecx]
	mov [ebp-0x38], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x34], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
_Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_70:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov eax, [edi+0x28]
	test [esi+0x4], eax
	jz _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_10
_Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_40:
	test [esi+0x8], eax
	jz _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_10
	movzx eax, word [esi+0xc]
	movzx edx, ax
	test ax, ax
	jnz _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_20
_Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_50:
	movss xmm0, dword [esi+0x10]
	movzx eax, word [esi+0x14]
	movss xmm2, dword [ebp+eax*4-0x38]
	subss xmm2, xmm0
	mov edx, [ebp+0x8]
	movss xmm3, dword [edx+eax*4]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_30
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm4, xmm1
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov edx, 0x1
	sub edx, eax
	movzx edx, word [esi+edx*2+0x18]
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov eax, [edi+0x28]
	test [esi+0x4], eax
	jnz _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_40
_Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_20:
	lea ebx, [edx+edx*2]
	shl ebx, 0x4
	sub ebx, edx
	lea ebx, [ebx*8+0x19b8]
	add ebx, sv
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z21SV_PointTraceToEntityPK12pointtrace_tP10svEntity_sP7trace_t
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jnz _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_20
	jmp _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_50
_Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_30:
	movss xmm4, dword [ebp-0x2c]
	mov eax, [ebp+0xc]
	ucomiss xmm4, [eax]
	jae _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_10
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm4
	mulss xmm2, xmm0
	addss xmm4, xmm2
	movss [ebp-0x1c], xmm4
	pxor xmm0, xmm0
	xor ebx, ebx
	ucomiss xmm3, xmm0
	setae bl
	movzx edx, word [esi+ebx*2+0x18]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	lea ecx, [ebp-0x38]
	mov eax, edi
	call _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_60
	mov eax, 0x1
	sub eax, ebx
	movzx edx, word [esi+eax*2+0x18]
	mov eax, [ebp-0x28]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x2c], eax
	jmp _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t_70
	nop


;CM_ClipMoveToEntities_r(moveclip_t const*, unsigned short, float const*, float const*, trace_t*)
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t:
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, eax
	mov eax, [ecx]
	mov [ebp-0x38], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x34], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_90:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov ecx, [edi+0x50]
	test [esi+0x4], ecx
	jz _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_10
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_40:
	test [esi+0x8], ecx
	jz _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_10
	movzx eax, word [esi+0xc]
	movzx edx, ax
	test ax, ax
	jnz _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_20
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_50:
	movzx eax, word [esi+0x14]
	movss xmm0, dword [esi+0x10]
	movss xmm3, dword [ebp+eax*4-0x38]
	subss xmm3, xmm0
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+eax*4]
	subss xmm2, xmm0
	movss xmm5, dword [edi+eax*4+0x18]
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
	jb _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_30
	movzx edx, word [esi+0x18]
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov ecx, [edi+0x50]
	test [esi+0x4], ecx
	jnz _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_40
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_70:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z19SV_ClipMoveToEntityPK10moveclip_tP10svEntity_sP7trace_t
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_60:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jz _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_50
	mov ecx, [edi+0x50]
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_20:
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*8+0x19b8]
	add ebx, sv
	test [ebx+0x164], ecx
	jz _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_60
	jmp _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_70
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_30:
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
	jb _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_80
	movzx edx, word [esi+0x1a]
	jmp _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_90
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_80:
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x3c], xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax]
	jae _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_10
	ucomiss xmm6, xmm7
	jnz _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_100
	jp _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_100
	movaps xmm3, xmm7
	movss xmm2, dword [_float_1_00000000]
	movaps xmm4, xmm2
	xor eax, eax
	movaps xmm0, xmm7
	mov ebx, 0x1
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_120:
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm4
	orps xmm2, xmm1
	movss xmm1, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, [ebp-0x3c]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x3c]
	movss [ebp-0x1c], xmm2
	movzx edx, word [esi+eax*2+0x18]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	lea ecx, [ebp-0x38]
	mov eax, edi
	movss [ebp-0x58], xmm3
	movss [ebp-0x68], xmm7
	call _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_110
	movss xmm3, dword [ebp-0x58]
	movss xmm7, dword [ebp-0x68]
	movaps xmm0, xmm7
	cmpss xmm0, xmm3, 0x2
	andps xmm3, xmm0
	orps xmm3, xmm7
	movss xmm1, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [ebp-0x2c], xmm1
	movzx edx, word [esi+ebx*2+0x18]
	jmp _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_90
_Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_100:
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
	movaps xmm3, xmm0
	subss xmm3, xmm5
	mulss xmm3, xmm1
	movaps xmm2, xmm0
	addss xmm2, xmm5
	mulss xmm2, xmm1
	xor eax, eax
	ucomiss xmm6, xmm7
	setae al
	movaps xmm0, xmm4
	subss xmm0, xmm2
	mov ebx, 0x1
	sub ebx, eax
	jmp _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t_120
	nop


;CM_SortNode(unsigned short, float*, float*)
_Z11CM_SortNodetPfS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x58], edx
	mov [ebp-0x5c], ecx
	mov [ebp-0x52], ax
	movzx eax, ax
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x34], eax
	movzx eax, word [eax+0x14]
	mov [ebp-0x44], eax
	mov edx, [ebp-0x34]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x40], xmm0
	movzx edi, word [edx+0xc]
	test di, di
	jz _Z11CM_SortNodetPfS__10
	mov dword [ebp-0x3c], 0x0
	mov eax, sv
	mov [ebp-0x60], eax
_Z11CM_SortNodetPfS__60:
	movzx eax, di
	lea edx, [eax+eax*2]
	shl edx, 0x4
	sub edx, eax
	mov eax, [ebp-0x60]
	lea edx, [eax+edx*8+0x19b8]
	mov [ebp-0x4c], edx
	mov eax, [ebp-0x44]
	movss xmm0, dword [edx+eax*4+0x168]
	ucomiss xmm0, [ebp-0x40]
	jbe _Z11CM_SortNodetPfS__20
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x18]
	test ax, ax
	jnz _Z11CM_SortNodetPfS__30
	movzx edx, word [cm_world+0x18]
	test dx, dx
	jz _Z11CM_SortNodetPfS__40
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x58]
	subss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x5c]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp-0x58]
	subss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	ucomiss xmm0, xmm1
	setae bl
	movzx ecx, bx
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+ecx*4-0x20]
	jb _Z11CM_SortNodetPfS__50
_Z11CM_SortNodetPfS__40:
	mov eax, [ebp-0x4c]
_Z11CM_SortNodetPfS__260:
	movzx edi, word [eax+0x2]
	mov [ebp-0x3c], eax
_Z11CM_SortNodetPfS__240:
	test di, di
	jnz _Z11CM_SortNodetPfS__60
	mov eax, [ebp-0x34]
_Z11CM_SortNodetPfS__280:
	movzx edi, word [eax+0xe]
	test di, di
	jz _Z11CM_SortNodetPfS__70
	mov dword [ebp-0x38], 0x0
_Z11CM_SortNodetPfS__120:
	mov eax, cm
	mov eax, [eax+0x14]
	mov [ebp-0x50], eax
	movzx eax, di
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov edx, [ebp-0x50]
	lea eax, [edx+eax-0x50]
	mov [ebp-0x48], eax
	mov edx, [ebp-0x44]
	movss xmm0, dword [eax+edx*4+0x38]
	ucomiss xmm0, [ebp-0x40]
	jbe _Z11CM_SortNodetPfS__80
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x18]
	test ax, ax
	jnz _Z11CM_SortNodetPfS__90
	movzx edx, word [cm_world+0x18]
	test dx, dx
	jz _Z11CM_SortNodetPfS__100
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x58]
	subss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x5c]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp-0x58]
	subss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	ucomiss xmm0, xmm1
	setae bl
	movzx ecx, bx
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+ecx*4-0x20]
	jb _Z11CM_SortNodetPfS__110
_Z11CM_SortNodetPfS__100:
	mov eax, [ebp-0x48]
_Z11CM_SortNodetPfS__250:
	movzx edi, word [eax]
	mov [ebp-0x38], eax
_Z11CM_SortNodetPfS__180:
	test di, di
	jnz _Z11CM_SortNodetPfS__120
_Z11CM_SortNodetPfS__70:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11CM_SortNodetPfS__80:
	mov eax, edx
	movss xmm0, dword [ebp-0x40]
	mov edx, [ebp-0x48]
	ucomiss xmm0, [edx+eax*4+0x44]
	jbe _Z11CM_SortNodetPfS__130
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x1a]
	test ax, ax
	jnz _Z11CM_SortNodetPfS__90
	movzx edx, word [cm_world+0x18]
	test dx, dx
	jz _Z11CM_SortNodetPfS__100
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x58]
	subss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x5c]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp-0x58]
	subss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	ucomiss xmm0, xmm1
	setae bl
	movzx ecx, bx
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+ecx*4-0x20]
	jae _Z11CM_SortNodetPfS__100
	movzx esi, dx
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x16]
	mov [cm_world+0x18], dx
	mov [eax+0x14], bx
	mov edx, [ebp-0x5c]
	movss xmm0, dword [edx+ecx*4]
	mov edx, [ebp-0x58]
	addss xmm0, [edx+ecx*4]
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x10], xmm0
	mov eax, esi
	test si, si
	jz _Z11CM_SortNodetPfS__100
	mov edx, [ebp-0x34]
	mov [edx+0x1a], si
_Z11CM_SortNodetPfS__290:
	movzx eax, ax
	mov [ebp-0x2c], eax
	mov edx, eax
	shl edx, 0x2
	shl eax, 0x5
	sub eax, edx
	movzx edx, word [ebp-0x52]
	mov [eax+cm_world+0x32], dx
	jmp _Z11CM_SortNodetPfS__140
_Z11CM_SortNodetPfS__90:
	movzx eax, ax
	mov [ebp-0x2c], eax
_Z11CM_SortNodetPfS__140:
	mov edx, [ebp-0x48]
	movzx edi, word [edx]
	mov ecx, edx
	sub ecx, [ebp-0x50]
	sar ecx, 0x4
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea ebx, [ecx+eax*4]
	movzx eax, word [ebp-0x2c]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea esi, [eax+0x1a]
	movzx ecx, word [eax+0x1a]
	movzx edx, cx
	lea eax, [edx-0x1]
	cmp ebx, eax
	jb _Z11CM_SortNodetPfS__150
_Z11CM_SortNodetPfS__160:
	lea eax, [edx+edx*4]
	shl eax, 0x4
	add eax, [ebp-0x50]
	lea esi, [eax-0x50]
	movzx ecx, word [eax-0x50]
	movzx edx, cx
	lea eax, [edx-0x1]
	cmp ebx, eax
	jae _Z11CM_SortNodetPfS__160
_Z11CM_SortNodetPfS__150:
	mov eax, [ebp-0x48]
	mov [eax], cx
	lea eax, [ebx+0x1]
	mov [esi], ax
	mov eax, [ebp-0x2c]
	shl eax, 0x2
	mov esi, [ebp-0x2c]
	shl esi, 0x5
	sub esi, eax
	mov ebx, [esi+cm_world+0x1c]
	mov edx, [ebp-0x48]
	mov eax, [edx+0x4]
	mov [esp], eax
	call _Z17XModelGetContentsPK6XModel
	or ebx, eax
	mov [esi+cm_world+0x1c], ebx
	mov ebx, [ebp-0x38]
	test ebx, ebx
	jz _Z11CM_SortNodetPfS__170
	mov edx, [ebp-0x38]
	mov [edx], di
	jmp _Z11CM_SortNodetPfS__180
_Z11CM_SortNodetPfS__20:
	movss xmm0, dword [ebp-0x40]
	ucomiss xmm0, [edx+eax*4+0x170]
	jbe _Z11CM_SortNodetPfS__190
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x1a]
	test ax, ax
	jnz _Z11CM_SortNodetPfS__30
	movzx edx, word [cm_world+0x18]
	test dx, dx
	jz _Z11CM_SortNodetPfS__40
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x58]
	subss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x5c]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp-0x58]
	subss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	ucomiss xmm0, xmm1
	setae bl
	movzx ecx, bx
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+ecx*4-0x20]
	jae _Z11CM_SortNodetPfS__40
	movzx esi, dx
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x16]
	mov [cm_world+0x18], dx
	mov [eax+0x14], bx
	mov edx, [ebp-0x5c]
	movss xmm0, dword [edx+ecx*4]
	mov edx, [ebp-0x58]
	addss xmm0, [edx+ecx*4]
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x10], xmm0
	mov eax, esi
	test si, si
	jz _Z11CM_SortNodetPfS__40
	mov edx, [ebp-0x34]
	mov [edx+0x1a], si
_Z11CM_SortNodetPfS__300:
	movzx esi, ax
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	movzx edx, word [ebp-0x52]
	mov [eax+cm_world+0x32], dx
	jmp _Z11CM_SortNodetPfS__200
_Z11CM_SortNodetPfS__30:
	movzx esi, ax
_Z11CM_SortNodetPfS__200:
	mov edx, [ebp-0x4c]
	movzx edi, word [edx+0x2]
	mov [ebp-0x2e], si
	mov edx, [ebp-0x60]
	lea eax, [edx+0x1b30]
	mov edx, [ebp-0x4c]
	sub edx, eax
	mov eax, edx
	sar eax, 0x3
	imul ebx, eax, 0x677d46cf
	movzx eax, si
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea ecx, [eax+0x18]
	movzx edx, word [eax+0x18]
	lea eax, [edx-0x1]
	cmp ebx, eax
	jb _Z11CM_SortNodetPfS__210
_Z11CM_SortNodetPfS__220:
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	mov edx, [ebp-0x60]
	lea eax, [edx+eax*8+0x19b8]
	lea ecx, [eax+0x2]
	movzx edx, word [eax+0x2]
	lea eax, [edx-0x1]
	cmp ebx, eax
	jae _Z11CM_SortNodetPfS__220
	movzx edx, word [ebp-0x2e]
_Z11CM_SortNodetPfS__270:
	mov eax, [ebp-0x4c]
	mov [eax], dx
	movzx eax, word [ecx]
	mov edx, [ebp-0x4c]
	mov [edx+0x2], ax
	lea eax, [ebx+0x1]
	mov [ecx], ax
	lea eax, [esi*4]
	shl esi, 0x5
	sub esi, eax
	mov ebx, [esi+cm_world+0x20]
	mov [esp], edx
	call _Z21SV_GEntityForSvEntityP10svEntity_s
	or ebx, [eax+0x120]
	mov [esi+cm_world+0x20], ebx
	mov eax, [esi+cm_world+0x24]
	mov edx, [ebp-0x4c]
	or eax, [edx+0x164]
	mov [esi+cm_world+0x24], eax
	mov esi, [ebp-0x3c]
	test esi, esi
	jz _Z11CM_SortNodetPfS__230
	mov edx, [ebp-0x3c]
	mov [edx+0x2], di
	jmp _Z11CM_SortNodetPfS__240
_Z11CM_SortNodetPfS__130:
	mov eax, edx
	jmp _Z11CM_SortNodetPfS__250
_Z11CM_SortNodetPfS__190:
	mov eax, edx
	jmp _Z11CM_SortNodetPfS__260
_Z11CM_SortNodetPfS__210:
	mov edx, esi
	jmp _Z11CM_SortNodetPfS__270
_Z11CM_SortNodetPfS__10:
	mov eax, edx
	jmp _Z11CM_SortNodetPfS__280
_Z11CM_SortNodetPfS__170:
	mov eax, [ebp-0x34]
	mov [eax+0xe], di
	jmp _Z11CM_SortNodetPfS__180
_Z11CM_SortNodetPfS__230:
	mov eax, [ebp-0x34]
	mov [eax+0xc], di
	jmp _Z11CM_SortNodetPfS__240
_Z11CM_SortNodetPfS__110:
	movzx esi, dx
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x16]
	mov [cm_world+0x18], dx
	mov [eax+0x14], bx
	mov edx, [ebp-0x5c]
	movss xmm0, dword [edx+ecx*4]
	mov edx, [ebp-0x58]
	addss xmm0, [edx+ecx*4]
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x10], xmm0
	mov eax, esi
	test si, si
	jz _Z11CM_SortNodetPfS__100
	mov edx, [ebp-0x34]
	mov [edx+0x18], si
	jmp _Z11CM_SortNodetPfS__290
_Z11CM_SortNodetPfS__50:
	movzx esi, dx
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x16]
	mov [cm_world+0x18], dx
	mov [eax+0x14], bx
	mov edx, [ebp-0x5c]
	movss xmm0, dword [edx+ecx*4]
	mov edx, [ebp-0x58]
	addss xmm0, [edx+ecx*4]
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x10], xmm0
	mov eax, esi
	test si, si
	jz _Z11CM_SortNodetPfS__40
	mov edx, [ebp-0x34]
	mov [edx+0x18], si
	jmp _Z11CM_SortNodetPfS__300
	nop


;CM_LinkWorld()
_Z12CM_LinkWorldv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp+0x8], 0x701c
	mov dword [esp+0x4], 0x0
	mov dword [esp], cm_world
	call memset
	mov dword [esp+0x8], cm_world+0xc
	mov dword [esp+0x4], cm_world
	mov dword [esp], 0x0
	call _Z14CM_ModelBoundsjPfS_
	mov word [cm_world+0x18], 0x2
	mov eax, 0x3
	mov edx, cm_world
_Z12CM_LinkWorldv_10:
	mov [edx+0x6a], ax
	add eax, 0x1
	add edx, 0x1c
	cmp eax, 0x400
	jnz _Z12CM_LinkWorldv_10
	mov word [cm_world+0x7016], 0x0
	movss xmm1, dword [cm_world+0xc]
	subss xmm1, [cm_world]
	movss xmm0, dword [cm_world+0x10]
	subss xmm0, [cm_world+0x4]
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov [cm_world+0x4c], ax
	movzx eax, ax
	movss xmm0, dword [eax*4+cm_world+0xc]
	addss xmm0, [eax*4+cm_world]
	mulss xmm0, [_float_0_50000000]
	movss [cm_world+0x48], xmm0
	mov eax, cm
	mov esi, [eax+0x14]
	mov edi, [eax+0x10]
	test edi, edi
	jnz _Z12CM_LinkWorldv_20
_Z12CM_LinkWorldv_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CM_LinkWorldv_20:
	mov dword [ebp-0x34], 0x0
	mov [ebp-0x38], eax
	jmp _Z12CM_LinkWorldv_30
_Z12CM_LinkWorldv_50:
	add dword [ebp-0x34], 0x1
	add esi, 0x50
	mov edx, [ebp-0x34]
	mov eax, [ebp-0x38]
	cmp edx, [eax+0x10]
	jae _Z12CM_LinkWorldv_40
_Z12CM_LinkWorldv_30:
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z17XModelGetContentsPK6XModel
	test eax, eax
	jz _Z12CM_LinkWorldv_50
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z17XModelGetContentsPK6XModel
	mov ecx, eax
	mov eax, [cm_world]
	mov [ebp-0x20], eax
	mov eax, [cm_world+0x4]
	mov [ebp-0x1c], eax
	mov eax, [cm_world+0xc]
	mov [ebp-0x28], eax
	mov eax, [cm_world+0x10]
	mov [ebp-0x24], eax
	mov eax, 0x1
	mov edi, cm_world+0x10
_Z12CM_LinkWorldv_70:
	movzx ebx, ax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, ecx
	or edx, [eax+cm_world+0x1c]
	mov [eax+edi+0xc], edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x14]
	movss xmm1, dword [eax+0x10]
	movss xmm0, dword [esi+edx*4+0x38]
	ucomiss xmm0, xmm1
	jbe _Z12CM_LinkWorldv_60
	movss [ebp+edx*4-0x20], xmm1
	movzx eax, word [eax+0x18]
	test ax, ax
	jnz _Z12CM_LinkWorldv_70
_Z12CM_LinkWorldv_100:
	mov eax, [ebp-0x38]
	mov eax, [eax+0x14]
	mov [ebp-0x30], eax
	mov ecx, esi
	sub ecx, eax
	sar ecx, 0x4
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea edi, [ecx+eax*4]
	movzx eax, bx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edx, [eax+0x1a]
	mov [ebp-0x2c], edx
	movzx ecx, word [eax+0x1a]
	movzx edx, cx
	lea eax, [edx-0x1]
	cmp eax, edi
	ja _Z12CM_LinkWorldv_80
_Z12CM_LinkWorldv_90:
	lea eax, [edx+edx*4]
	shl eax, 0x4
	add eax, [ebp-0x30]
	lea edx, [eax-0x50]
	mov [ebp-0x2c], edx
	movzx ecx, word [eax-0x50]
	movzx edx, cx
	lea eax, [edx-0x1]
	cmp eax, edi
	jbe _Z12CM_LinkWorldv_90
_Z12CM_LinkWorldv_80:
	mov [esi], cx
	lea eax, [edi+0x1]
	mov edx, [ebp-0x2c]
	mov [edx], ax
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x20]
	mov eax, ebx
	call _Z11CM_SortNodetPfS_
	jmp _Z12CM_LinkWorldv_50
_Z12CM_LinkWorldv_60:
	ucomiss xmm1, [esi+edx*4+0x44]
	jbe _Z12CM_LinkWorldv_100
	movss [ebp+edx*4-0x28], xmm1
	movzx eax, word [eax+0x1a]
	test ax, ax
	jnz _Z12CM_LinkWorldv_70
	jmp _Z12CM_LinkWorldv_100


;CM_LinkEntity(svEntity_s*, float*, float*, unsigned int)
_Z13CM_LinkEntityP10svEntity_sPfS1_j:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z20CM_ClipHandleToModelj
	lea ebx, [eax+0x1c]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21SV_GEntityForSvEntityP10svEntity_s
	mov eax, [eax+0x120]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x4]
	or eax, [ebx+0x8]
	mov [ebp-0x38], eax
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_10
	mov edx, [ebp+0x8]
	movzx ebx, word [edx]
	test bx, bx
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_20
	movzx eax, bx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x34], eax
	mov ecx, [ebp+0x8]
	mov word [ecx], 0x0
	movzx edx, word [eax+0xc]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	mov edi, sv
	lea ecx, [edi+eax*8+0x19b8]
	cmp [ebp+0x8], ecx
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_30
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_40
_Z13CM_LinkEntityP10svEntity_sPfS1_j_50:
	mov ecx, eax
_Z13CM_LinkEntityP10svEntity_sPfS1_j_30:
	movzx edx, word [ecx+0x2]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea eax, [edi+eax*8+0x19b8]
	cmp [ebp+0x8], eax
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_50
	mov esi, [ebp+0x8]
	movzx eax, word [esi+0x2]
	mov [ecx+0x2], ax
_Z13CM_LinkEntityP10svEntity_sPfS1_j_420:
	mov eax, [ebp-0x34]
	mov esi, [eax+0xc]
	test esi, esi
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_60
_Z13CM_LinkEntityP10svEntity_sPfS1_j_90:
	mov ecx, [eax+0x18]
	test ecx, ecx
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_70
	mov eax, [ebp-0x34]
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	movzx ecx, word [eax+0x16]
	test cx, cx
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_70
	movzx eax, word [cm_world+0x18]
	mov edx, [ebp-0x34]
	mov [edx+0x16], ax
	mov [cm_world+0x18], bx
	movzx eax, cx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x34], eax
	cmp bx, [eax+0x18]
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_80
	mov word [eax+0x1a], 0x0
	mov ebx, ecx
_Z13CM_LinkEntityP10svEntity_sPfS1_j_380:
	mov eax, [ebp-0x34]
	mov esi, [eax+0xc]
	test esi, esi
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_90
_Z13CM_LinkEntityP10svEntity_sPfS1_j_60:
	mov edx, eax
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_100
_Z13CM_LinkEntityP10svEntity_sPfS1_j_170:
	mov [ebp-0x2a], bx
	mov edi, sv
	lea eax, [edi+0x1b30]
	mov esi, [ebp+0x8]
	sub esi, eax
	mov eax, esi
	sar eax, 0x3
	imul esi, eax, 0x677d46cf
	movzx eax, bx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea ecx, [eax+0x18]
	movzx edx, word [eax+0x18]
	lea eax, [edx-0x1]
	cmp esi, eax
	jb _Z13CM_LinkEntityP10svEntity_sPfS1_j_110
_Z13CM_LinkEntityP10svEntity_sPfS1_j_120:
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea eax, [edi+eax*8+0x19b8]
	lea ecx, [eax+0x2]
	movzx edx, word [eax+0x2]
	lea eax, [edx-0x1]
	cmp esi, eax
	jae _Z13CM_LinkEntityP10svEntity_sPfS1_j_120
_Z13CM_LinkEntityP10svEntity_sPfS1_j_110:
	movzx edx, word [ebp-0x2a]
	mov eax, [ebp+0x8]
	mov [eax], dx
	movzx eax, word [ecx]
	mov edx, [ebp+0x8]
	mov [edx+0x2], ax
	lea eax, [esi+0x1]
	mov [ecx], ax
_Z13CM_LinkEntityP10svEntity_sPfS1_j_350:
	mov esi, [ebp-0x38]
	mov ecx, [ebp+0x8]
	mov [ecx+0x164], esi
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx+0x168], eax
	mov eax, [edx+0x4]
	mov [ecx+0x16c], eax
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov esi, [ebp+0x8]
	mov [esi+0x170], eax
	mov eax, [ecx+0x4]
	mov [esi+0x174], eax
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x20]
	mov eax, ebx
	call _Z11CM_SortNodetPfS_
_Z13CM_LinkEntityP10svEntity_sPfS1_j_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13CM_LinkEntityP10svEntity_sPfS1_j_10:
	mov esi, eax
	not esi
	mov [ebp-0x40], esi
	mov eax, sv
	mov [ebp-0x44], eax
_Z13CM_LinkEntityP10svEntity_sPfS1_j_280:
	mov eax, [cm_world]
	mov [ebp-0x20], eax
	mov eax, [cm_world+0x4]
	mov [ebp-0x1c], eax
	mov eax, [cm_world+0xc]
	mov [ebp-0x28], eax
	mov eax, [cm_world+0x10]
	mov [ebp-0x24], eax
	mov edi, 0x1
_Z13CM_LinkEntityP10svEntity_sPfS1_j_150:
	movzx ebx, di
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, [ebp-0x3c]
	or edx, [eax+cm_world+0x20]
	mov [eax+cm_world+0x20], edx
	mov edx, [ebp-0x38]
	or edx, [eax+cm_world+0x24]
	mov [eax+cm_world+0x24], edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x14]
	movss xmm1, dword [eax+0x10]
	lea ecx, [edx*4]
	mov esi, [ebp+0xc]
	movss xmm0, dword [ecx+esi]
	ucomiss xmm0, xmm1
	jbe _Z13CM_LinkEntityP10svEntity_sPfS1_j_130
	movss [ebp+edx*4-0x20], xmm1
	movzx eax, word [eax+0x18]
	test ax, ax
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_140
	mov edi, eax
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_150
_Z13CM_LinkEntityP10svEntity_sPfS1_j_330:
	mov ecx, [ebp-0x40]
	test [edx+0x164], ecx
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_160
_Z13CM_LinkEntityP10svEntity_sPfS1_j_140:
	mov eax, [ebp+0x8]
_Z13CM_LinkEntityP10svEntity_sPfS1_j_340:
	movzx esi, word [eax]
	test si, si
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_170
	cmp si, di
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_180
	mov ecx, [ebp+0x8]
_Z13CM_LinkEntityP10svEntity_sPfS1_j_360:
	movzx eax, si
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x30], eax
	mov word [ecx], 0x0
	movzx edx, word [eax+0xc]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	mov edi, [ebp-0x44]
	lea ecx, [edi+eax*8+0x19b8]
	cmp [ebp+0x8], ecx
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_190
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_200
_Z13CM_LinkEntityP10svEntity_sPfS1_j_210:
	mov ecx, eax
_Z13CM_LinkEntityP10svEntity_sPfS1_j_190:
	movzx edx, word [ecx+0x2]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea eax, [edi+eax*8+0x19b8]
	cmp [ebp+0x8], eax
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_210
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x2]
	mov [ecx+0x2], ax
_Z13CM_LinkEntityP10svEntity_sPfS1_j_370:
	mov eax, [ebp-0x30]
	mov edx, [eax+0xc]
	test edx, edx
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_220
_Z13CM_LinkEntityP10svEntity_sPfS1_j_250:
	mov eax, [eax+0x18]
	test eax, eax
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_230
	mov ecx, [ebp-0x30]
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	mov eax, [ebp-0x30]
	movzx ecx, word [eax+0x16]
	test cx, cx
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_220
	mov edx, eax
	movzx eax, word [cm_world+0x18]
	mov [edx+0x16], ax
	mov [cm_world+0x18], si
	movzx eax, cx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x30], eax
	cmp si, [eax+0x18]
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_240
	mov word [eax+0x1a], 0x0
	mov esi, ecx
_Z13CM_LinkEntityP10svEntity_sPfS1_j_310:
	mov eax, [ebp-0x30]
	mov edx, [eax+0xc]
	test edx, edx
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_250
_Z13CM_LinkEntityP10svEntity_sPfS1_j_220:
	mov edx, eax
_Z13CM_LinkEntityP10svEntity_sPfS1_j_290:
	movzx eax, word [edx+0x18]
	movzx edx, word [edx+0x1a]
	lea ecx, [eax*4]
	shl eax, 0x5
	sub eax, ecx
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	mov edi, [eax+cm_world+0x20]
	or edi, [edx+cm_world+0x20]
	mov esi, [eax+cm_world+0x24]
	or esi, [edx+cm_world+0x24]
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0xc]
	test ax, ax
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_260
_Z13CM_LinkEntityP10svEntity_sPfS1_j_270:
	movzx edx, ax
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*8+0x19b8]
	add ebx, sv
	mov [esp], ebx
	call _Z21SV_GEntityForSvEntityP10svEntity_s
	or edi, [eax+0x120]
	or esi, [ebx+0x164]
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_270
	mov ecx, [ebp-0x30]
_Z13CM_LinkEntityP10svEntity_sPfS1_j_320:
	mov [ecx+0x4], edi
	mov [ecx+0x8], esi
	movzx eax, word [ecx+0x16]
	test ax, ax
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_280
	movzx eax, ax
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x30], eax
	mov edx, eax
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_290
_Z13CM_LinkEntityP10svEntity_sPfS1_j_130:
	mov esi, [ebp+0x10]
	ucomiss xmm1, [ecx+esi]
	jbe _Z13CM_LinkEntityP10svEntity_sPfS1_j_300
	movss [ebp+edx*4-0x28], xmm1
	movzx eax, word [eax+0x1a]
	test ax, ax
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_140
	mov edi, eax
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_150
_Z13CM_LinkEntityP10svEntity_sPfS1_j_240:
	mov word [eax+0x18], 0x0
	mov esi, ecx
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_310
_Z13CM_LinkEntityP10svEntity_sPfS1_j_260:
	mov ecx, edx
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_320
_Z13CM_LinkEntityP10svEntity_sPfS1_j_300:
	mov edx, [ebp+0x8]
	cmp [edx], di
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_330
	mov eax, edx
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_340
_Z13CM_LinkEntityP10svEntity_sPfS1_j_230:
	mov edx, [ebp-0x30]
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_290
_Z13CM_LinkEntityP10svEntity_sPfS1_j_180:
	mov edx, [ebp-0x40]
	mov eax, [ebp+0x8]
	test [eax+0x164], edx
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_350
	mov ecx, eax
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_360
_Z13CM_LinkEntityP10svEntity_sPfS1_j_200:
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x2]
	mov ecx, [ebp-0x30]
	mov [ecx+0xc], ax
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_370
_Z13CM_LinkEntityP10svEntity_sPfS1_j_80:
	mov word [eax+0x18], 0x0
	mov ebx, ecx
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_380
_Z13CM_LinkEntityP10svEntity_sPfS1_j_70:
	mov edx, [ebp-0x34]
_Z13CM_LinkEntityP10svEntity_sPfS1_j_100:
	movzx eax, word [edx+0x18]
	movzx edx, word [edx+0x1a]
	lea ecx, [eax*4]
	shl eax, 0x5
	sub eax, ecx
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	mov edi, [eax+cm_world+0x20]
	or edi, [edx+cm_world+0x20]
	mov esi, [eax+cm_world+0x24]
	or esi, [edx+cm_world+0x24]
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0xc]
	test ax, ax
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_390
_Z13CM_LinkEntityP10svEntity_sPfS1_j_400:
	movzx edx, ax
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*8+0x19b8]
	add ebx, sv
	mov [esp], ebx
	call _Z21SV_GEntityForSvEntityP10svEntity_s
	or edi, [eax+0x120]
	or esi, [ebx+0x164]
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz _Z13CM_LinkEntityP10svEntity_sPfS1_j_400
	mov ecx, [ebp-0x34]
_Z13CM_LinkEntityP10svEntity_sPfS1_j_410:
	mov [ecx+0x4], edi
	mov [ecx+0x8], esi
	movzx eax, word [ecx+0x16]
	test ax, ax
	jz _Z13CM_LinkEntityP10svEntity_sPfS1_j_20
	movzx eax, ax
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x34], eax
	mov edx, eax
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_100
_Z13CM_LinkEntityP10svEntity_sPfS1_j_390:
	mov ecx, edx
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_410
_Z13CM_LinkEntityP10svEntity_sPfS1_j_160:
	mov esi, [ebp-0x38]
	mov [edx+0x164], esi
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov ecx, [ebp+0x8]
	mov [ecx+0x168], eax
	mov eax, [edx+0x4]
	mov [ecx+0x16c], eax
	mov esi, [ebp+0x10]
	mov eax, [esi]
	mov [ecx+0x170], eax
	mov eax, [esi+0x4]
	mov [ecx+0x174], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13CM_LinkEntityP10svEntity_sPfS1_j_40:
	mov esi, [ebp+0x8]
	movzx eax, word [esi+0x2]
	mov edx, [ebp-0x34]
	mov [edx+0xc], ax
	jmp _Z13CM_LinkEntityP10svEntity_sPfS1_j_420
	add [eax], al


;CM_AreaEntities(float const*, float const*, int*, int, int)
_Z15CM_AreaEntitiesPKfS0_Piii:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x18], eax
	mov dword [ebp-0x14], 0x0
	mov eax, [ebp+0x14]
	mov [ebp-0x10], eax
	mov eax, [ebp+0x18]
	mov [ebp-0xc], eax
	lea edx, [ebp-0x20]
	mov eax, 0x1
	call _Z17CM_AreaEntities_rjP11areaParms_t
	mov eax, [ebp-0x14]
	leave
	ret
	nop


;CM_UnlinkEntity(svEntity_s*)
_Z15CM_UnlinkEntityP10svEntity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	movzx ebx, word [esi]
	test bx, bx
	jz _Z15CM_UnlinkEntityP10svEntity_s_10
	movzx eax, bx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x1c], eax
	mov word [esi], 0x0
	movzx edx, word [eax+0xc]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	mov edi, sv
	lea ecx, [edi+eax*8+0x19b8]
	cmp esi, ecx
	jnz _Z15CM_UnlinkEntityP10svEntity_s_20
	jmp _Z15CM_UnlinkEntityP10svEntity_s_30
_Z15CM_UnlinkEntityP10svEntity_s_40:
	mov ecx, eax
_Z15CM_UnlinkEntityP10svEntity_s_20:
	movzx edx, word [ecx+0x2]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea eax, [edi+eax*8+0x19b8]
	cmp esi, eax
	jnz _Z15CM_UnlinkEntityP10svEntity_s_40
	movzx eax, word [esi+0x2]
	mov [ecx+0x2], ax
_Z15CM_UnlinkEntityP10svEntity_s_160:
	mov edx, [ebp-0x1c]
	mov ecx, [edx+0xc]
	test ecx, ecx
	jnz _Z15CM_UnlinkEntityP10svEntity_s_50
_Z15CM_UnlinkEntityP10svEntity_s_90:
	mov eax, [edx+0x18]
	test eax, eax
	jnz _Z15CM_UnlinkEntityP10svEntity_s_60
	mov ecx, [ebp-0x1c]
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	mov eax, [ebp-0x1c]
	movzx ecx, word [eax+0x16]
	test cx, cx
	jz _Z15CM_UnlinkEntityP10svEntity_s_70
	mov edx, eax
	movzx eax, word [cm_world+0x18]
	mov [edx+0x16], ax
	mov [cm_world+0x18], bx
	movzx eax, cx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x1c], eax
	cmp bx, [eax+0x18]
	jz _Z15CM_UnlinkEntityP10svEntity_s_80
	mov word [eax+0x1a], 0x0
	mov ebx, ecx
_Z15CM_UnlinkEntityP10svEntity_s_150:
	mov edx, [ebp-0x1c]
	mov ecx, [edx+0xc]
	test ecx, ecx
	jz _Z15CM_UnlinkEntityP10svEntity_s_90
_Z15CM_UnlinkEntityP10svEntity_s_50:
	mov ecx, edx
	jmp _Z15CM_UnlinkEntityP10svEntity_s_100
_Z15CM_UnlinkEntityP10svEntity_s_130:
	mov ecx, [ebp-0x1c]
	mov [ecx+0x4], edi
	mov [ecx+0x8], esi
	movzx eax, word [ecx+0x16]
	test ax, ax
	jz _Z15CM_UnlinkEntityP10svEntity_s_10
_Z15CM_UnlinkEntityP10svEntity_s_140:
	movzx eax, ax
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x1c], eax
_Z15CM_UnlinkEntityP10svEntity_s_70:
	mov ecx, eax
_Z15CM_UnlinkEntityP10svEntity_s_100:
	movzx eax, word [ecx+0x18]
	movzx edx, word [ecx+0x1a]
	lea ecx, [eax*4]
	shl eax, 0x5
	sub eax, ecx
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	mov edi, [eax+cm_world+0x20]
	or edi, [edx+cm_world+0x20]
	mov esi, [eax+cm_world+0x24]
	or esi, [edx+cm_world+0x24]
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0xc]
	test ax, ax
	jz _Z15CM_UnlinkEntityP10svEntity_s_110
_Z15CM_UnlinkEntityP10svEntity_s_120:
	movzx edx, ax
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea ebx, [eax*8+0x19b8]
	add ebx, sv
	mov [esp], ebx
	call _Z21SV_GEntityForSvEntityP10svEntity_s
	or edi, [eax+0x120]
	or esi, [ebx+0x164]
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz _Z15CM_UnlinkEntityP10svEntity_s_120
	jmp _Z15CM_UnlinkEntityP10svEntity_s_130
_Z15CM_UnlinkEntityP10svEntity_s_110:
	mov ecx, edx
	mov [ecx+0x4], edi
	mov [ecx+0x8], esi
	movzx eax, word [ecx+0x16]
	test ax, ax
	jnz _Z15CM_UnlinkEntityP10svEntity_s_140
_Z15CM_UnlinkEntityP10svEntity_s_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CM_UnlinkEntityP10svEntity_s_80:
	mov word [eax+0x18], 0x0
	mov ebx, ecx
	jmp _Z15CM_UnlinkEntityP10svEntity_s_150
_Z15CM_UnlinkEntityP10svEntity_s_60:
	mov ecx, [ebp-0x1c]
	jmp _Z15CM_UnlinkEntityP10svEntity_s_100
_Z15CM_UnlinkEntityP10svEntity_s_30:
	movzx eax, word [ecx+0x2]
	mov edx, [ebp-0x1c]
	mov [edx+0xc], ax
	jmp _Z15CM_UnlinkEntityP10svEntity_s_160
	nop


;CM_ClipMoveToEntities(moveclip_t*, trace_t*)
_Z21CM_ClipMoveToEntitiesP10moveclip_tP7trace_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea ecx, [eax+0x24]
	mov edx, [eax+0x24]
	mov [ebp-0x18], edx
	mov edx, [ecx+0x4]
	mov [ebp-0x14], edx
	mov edx, [ecx+0x8]
	mov [ebp-0x10], edx
	lea ecx, [eax+0x30]
	mov edx, [eax+0x30]
	mov [ebp-0x28], edx
	mov edx, [ecx+0x4]
	mov [ebp-0x24], edx
	mov edx, [ecx+0x8]
	mov [ebp-0x20], edx
	mov dword [ebp-0xc], 0x0
	mov edx, [ebx]
	mov [ebp-0x1c], edx
	lea ecx, [ebp-0x18]
	mov [esp+0x4], ebx
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov edx, 0x1
	call _Z23CM_ClipMoveToEntities_rPK10moveclip_ttPKfS3_P7trace_t
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;CM_PointTraceToEntities(pointtrace_t*, trace_t*)
_Z23CM_PointTraceToEntitiesP12pointtrace_tP7trace_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [eax]
	mov [ebp-0x18], edx
	mov edx, [eax+0x4]
	mov [ebp-0x14], edx
	mov edx, [eax+0x8]
	mov [ebp-0x10], edx
	lea ecx, [eax+0xc]
	mov edx, [eax+0xc]
	mov [ebp-0x28], edx
	mov edx, [ecx+0x4]
	mov [ebp-0x24], edx
	mov edx, [ecx+0x8]
	mov [ebp-0x20], edx
	mov dword [ebp-0xc], 0x0
	mov edx, [ebx]
	mov [ebp-0x1c], edx
	lea ecx, [ebp-0x18]
	mov [esp+0x4], ebx
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov edx, 0x1
	call _Z25CM_PointTraceToEntities_rP12pointtrace_ttPKfS2_P7trace_t
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;CM_PointTraceStaticModels(trace_t*, float const*, float const*, int)
_Z25CM_PointTraceStaticModelsP7trace_tPKfS2_i:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x50], eax
	mov eax, [edx]
	mov [ebp-0x4c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x48], eax
	mov eax, [edx+0x8]
	mov [ebp-0x44], eax
	mov eax, [ecx]
	mov [ebp-0x40], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x38], eax
	lea esi, [ebp-0x50]
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	mov eax, [ebp-0x4c]
	mov [ebp-0x18], eax
	mov eax, [ebp-0x48]
	mov [ebp-0x14], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	mov eax, [ebp-0x40]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x38]
	mov [ebp-0x20], eax
	mov eax, [ebx]
	mov [ebp-0x1c], eax
	lea ecx, [ebp-0x18]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, 0x1
	mov eax, esi
	call _Z27CM_PointTraceStaticModels_rP14locTraceWork_ttPKfS2_P7trace_t
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CM_ClipSightTraceToEntities(sightclip_t*)
_Z27CM_ClipSightTraceToEntitiesP11sightclip_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea ecx, [eax+0x24]
	lea edx, [eax+0x30]
	mov [ebp+0x8], edx
	mov edx, 0x1
	pop ebp
	jmp _Z29CM_ClipSightTraceToEntities_rPK11sightclip_ttPKfS3_


;CM_PointSightTraceToEntities(sightpointtrace_t*)
_Z28CM_PointSightTraceToEntitiesP17sightpointtrace_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+0xc]
	mov [ebp+0x8], edx
	mov ecx, eax
	mov edx, 0x1
	pop ebp
	jmp _Z30CM_PointSightTraceToEntities_rP17sightpointtrace_ttPKfS2_
	nop


;CM_PointTraceStaticModelsComplete(float const*, float const*, int)
_Z33CM_PointTraceStaticModelsCompletePKfS0_i:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov eax, [edx]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ecx]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x20], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x30]
	mov [esp], ebx
	call _Z19CM_CalcTraceExtentsP12TraceExtents
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, ebx
	mov edx, 0x1
	mov eax, ebx
	call _Z35CM_PointTraceStaticModelsComplete_rPK18staticmodeltrace_ttPKfS3_
	add esp, 0x44
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of cm_world:
SECTION .data


;Initialized constant data of cm_world:
SECTION .rdata


;Zero initialized global or static variables of cm_world:
SECTION .bss
cm_world: resb 0x7080


;All cstrings:
SECTION .rdata
_cstring_cm_areaentities_:		db "CM_AreaEntities: MAXCOUNT",0ah,0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_512_00000000:		dd 0x44000000	; 512
_float_0_50000000:		dd 0x3f000000	; 0.5

