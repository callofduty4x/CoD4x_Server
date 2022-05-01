;Imports of cm_mesh:
	extern _Z15Vec3NormalizeToPKfPf
	extern cm

;Exports of cm_mesh:
	global _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0_
	global _Z10CM_CullBoxPK11traceWork_tPKfS3_
	global _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t
	global _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t
	global _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t
	global _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t
	global _Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t
	global _Z23CM_TraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t
	global _Z28CM_SightTraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t


SECTION .text


;CM_DistanceSquaredBetweenSegments(float const*, float const*, float const*, float const*)
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	movss xmm4, dword [edx]
	movss xmm7, dword [edx+0x4]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0xc], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0x28], xmm0
	movss xmm3, dword [ebx]
	movss xmm5, dword [ebx+0x4]
	movss xmm6, dword [ebx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm3
	movaps xmm1, xmm7
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0x20], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0x18], xmm0
	movss xmm0, dword [eax]
	subss xmm0, [ecx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ecx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [ecx+0x8]
	mulss xmm4, xmm0
	mulss xmm7, xmm1
	addss xmm4, xmm7
	movss xmm7, dword [ebp-0xc]
	mulss xmm7, xmm2
	addss xmm4, xmm7
	cvtss2sd xmm4, xmm4
	mulss xmm3, xmm0
	mulss xmm5, xmm1
	addss xmm3, xmm5
	mulss xmm6, xmm2
	addss xmm3, xmm6
	cvtss2sd xmm3, xmm3
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	cvtss2sd xmm7, xmm0
	movsd xmm5, qword [ebp-0x28]
	mulsd xmm5, [ebp-0x18]
	movsd xmm0, qword [ebp-0x20]
	mulsd xmm0, xmm0
	subsd xmm5, xmm0
	movsd xmm2, qword [ebp-0x20]
	mulsd xmm2, xmm3
	movsd xmm0, qword [ebp-0x18]
	mulsd xmm0, xmm4
	subsd xmm2, xmm0
	pxor xmm6, xmm6
	ucomisd xmm6, xmm2
	jae _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__10
	ucomisd xmm2, xmm5
	jae _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__20
	movsd xmm1, qword [ebp-0x28]
	mulsd xmm1, xmm3
	movsd xmm0, qword [ebp-0x20]
	mulsd xmm0, xmm4
	subsd xmm1, xmm0
	ucomisd xmm6, xmm1
	jae _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__30
	ucomisd xmm1, xmm5
	jb _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__40
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__80:
	ucomisd xmm4, [ebp-0x20]
	jae _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__50
	movsd xmm1, qword [ebp-0x20]
	subsd xmm1, xmm4
	ucomisd xmm1, [ebp-0x28]
	jb _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__60
	movapd xmm0, xmm4
	subsd xmm0, xmm3
	subsd xmm0, [ebp-0x20]
	movsd xmm2, qword [ebp-0x28]
	addsd xmm2, [ebp-0x18]
	movsd [ebp-0x28], xmm2
	addsd xmm2, xmm0
	addsd xmm0, xmm2
	addsd xmm7, xmm0
	cvtsd2ss xmm0, xmm7
	jmp _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__70
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__20:
	movsd xmm1, qword [ebp-0x20]
	addsd xmm1, xmm3
	ucomisd xmm6, xmm1
	jae _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__30
	ucomisd xmm1, [ebp-0x18]
	jae _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__80
	movapd xmm0, xmm1
	divsd xmm0, qword [ebp-0x18]
	movsd xmm2, qword [ebp-0x18]
	mulsd xmm2, xmm0
	mulsd xmm1, [_double__2_00000000]
	addsd xmm1, xmm2
	mulsd xmm0, xmm1
	addsd xmm0, [ebp-0x28]
	addsd xmm4, xmm4
	addsd xmm4, xmm0
	movsd [ebp-0x28], xmm4
	addsd xmm7, xmm4
	cvtsd2ss xmm0, xmm7
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__10:
	ucomisd xmm6, xmm3
	jae _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__30
	ucomisd xmm3, [ebp-0x18]
	jae _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__80
	movapd xmm0, xmm3
	divsd xmm0, qword [ebp-0x18]
	movsd xmm1, qword [ebp-0x18]
	mulsd xmm1, xmm0
	mulsd xmm3, [_double__2_00000000]
	addsd xmm3, xmm1
	movsd [ebp-0x18], xmm3
	mulsd xmm0, xmm3
	addsd xmm7, xmm0
	cvtsd2ss xmm0, xmm7
	jmp _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__70
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__30:
	pxor xmm0, xmm0
	ucomisd xmm4, xmm0
	jb _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__90
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__100:
	cvtsd2ss xmm0, xmm7
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__70:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__50:
	mulsd xmm3, [_double__2_00000000]
	addsd xmm3, [ebp-0x18]
	movsd [ebp-0x18], xmm3
	addsd xmm7, xmm3
	cvtsd2ss xmm0, xmm7
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__40:
	movsd xmm0, qword [_double_1_00000000]
	divsd xmm0, xmm5
	mulsd xmm1, xmm0
	mulsd xmm0, xmm2
	movsd xmm2, qword [ebp-0x20]
	mulsd xmm2, xmm1
	subsd xmm4, xmm2
	addsd xmm4, xmm4
	movsd xmm2, qword [ebp-0x28]
	mulsd xmm2, xmm0
	addsd xmm4, xmm2
	mulsd xmm0, xmm4
	movsd xmm2, qword [ebp-0x18]
	mulsd xmm2, xmm1
	mulsd xmm3, [_double__2_00000000]
	addsd xmm3, xmm2
	movsd [ebp-0x18], xmm3
	mulsd xmm1, xmm3
	addsd xmm0, xmm1
	addsd xmm7, xmm0
	jmp _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__100
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__60:
	divsd xmm1, qword [ebp-0x28]
	movapd xmm0, xmm4
	subsd xmm0, [ebp-0x20]
	movsd xmm2, qword [ebp-0x28]
	mulsd xmm2, xmm1
	movsd [ebp-0x28], xmm2
	addsd xmm2, xmm0
	addsd xmm0, xmm2
	mulsd xmm1, xmm0
	addsd xmm1, [ebp-0x18]
	mulsd xmm3, [_double__2_00000000]
	addsd xmm3, xmm1
	movsd [ebp-0x18], xmm3
	addsd xmm7, xmm3
	cvtsd2ss xmm0, xmm7
	jmp _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__70
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__90:
	movapd xmm0, xmm4
	xorpd xmm0, [_data16_0]
	ucomisd xmm0, [ebp-0x28]
	jb _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__110
	addsd xmm4, xmm4
	addsd xmm4, [ebp-0x28]
	movsd [ebp-0x28], xmm4
	addsd xmm7, xmm4
	cvtsd2ss xmm0, xmm7
	jmp _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__70
_Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__110:
	divsd xmm0, qword [ebp-0x28]
	addsd xmm4, xmm4
	movsd xmm1, qword [ebp-0x28]
	mulsd xmm1, xmm0
	addsd xmm4, xmm1
	mulsd xmm0, xmm4
	addsd xmm7, xmm0
	cvtsd2ss xmm0, xmm7
	jmp _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0__70


;CM_CullBox(traceWork_t const*, float const*, float const*)
_Z10CM_CullBoxPK11traceWork_tPKfS3_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, eax
	lea eax, [eax+0x38]
	movss xmm0, dword [ebx+0x38]
	subss xmm0, [edx]
	movss [ebp-0xc], xmm0
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss [ebp-0x10], xmm1
	movss xmm5, dword [eax+0x8]
	subss xmm5, [edx+0x8]
	lea eax, [ebx+0x5c]
	movss xmm6, dword [ecx]
	addss xmm6, [ebx+0x5c]
	movss xmm7, dword [ecx+0x4]
	addss xmm7, [eax+0x4]
	movss xmm4, dword [ecx+0x8]
	addss xmm4, [eax+0x8]
	movss xmm0, dword [ebx+0x50]
	movss [ebp-0x24], xmm0
	movss xmm3, dword [_data16_7fffffff]
	movss xmm1, dword [ebp-0xc]
	andps xmm1, xmm3
	addss xmm0, xmm6
	ucomiss xmm1, xmm0
	ja _Z10CM_CullBoxPK11traceWork_tPKfS3__10
	movss xmm1, dword [ebx+0x54]
	movss [ebp-0x20], xmm1
	movss xmm1, dword [ebp-0x10]
	andps xmm1, xmm3
	movss xmm0, dword [ebp-0x20]
	addss xmm0, xmm7
	ucomiss xmm1, xmm0
	ja _Z10CM_CullBoxPK11traceWork_tPKfS3__10
	movss xmm0, dword [ebx+0x58]
	movss [ebp-0x1c], xmm0
	movaps xmm1, xmm5
	andps xmm1, xmm3
	addss xmm0, xmm4
	ucomiss xmm1, xmm0
	ja _Z10CM_CullBoxPK11traceWork_tPKfS3__10
	cmp byte [ebx+0x85], 0x0
	jnz _Z10CM_CullBoxPK11traceWork_tPKfS3__20
	movss xmm1, dword [ebx+0x48]
	movss [ebp-0x18], xmm1
	movss xmm0, dword [ebx+0x4c]
	movss [ebp-0x14], xmm0
	movaps xmm2, xmm1
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, [ebp-0x14]
	subss xmm2, xmm0
	andps xmm2, xmm3
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0x20]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	ucomiss xmm2, xmm0
	ja _Z10CM_CullBoxPK11traceWork_tPKfS3__10
	movss xmm0, dword [ebx+0x44]
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, [ebp-0x14]
	mulss xmm5, xmm0
	subss xmm1, xmm5
	movss [ebp-0x14], xmm1
	and dword [ebp-0x14], 0x7fffffff
	mulss xmm4, [ebp-0x24]
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm6
	addss xmm4, xmm1
	movss xmm1, dword [ebp-0x14]
	ucomiss xmm1, xmm4
	ja _Z10CM_CullBoxPK11traceWork_tPKfS3__10
	mulss xmm0, [ebp-0x10]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [ebp-0x18]
	movss xmm1, dword [ebp-0x10]
	subss xmm1, xmm0
	movss [ebp-0x10], xmm1
	and dword [ebp-0x10], 0x7fffffff
	mulss xmm6, [ebp-0x20]
	mulss xmm7, [ebp-0x24]
	addss xmm6, xmm7
	movss xmm0, dword [ebp-0x10]
	ucomiss xmm0, xmm6
	jbe _Z10CM_CullBoxPK11traceWork_tPKfS3__20
_Z10CM_CullBoxPK11traceWork_tPKfS3__10:
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z10CM_CullBoxPK11traceWork_tPKfS3__20:
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CM_TraceSphereThroughEdge(traceWork_t const*, float const*, float const*, float const*, trace_t*)
_Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x70
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	movss xmm0, dword [edx]
	subss xmm0, [ecx]
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ecx+0x4]
	movss [ebp-0x20], xmm1
	movss xmm2, dword [edx+0x8]
	subss xmm2, [ecx+0x8]
	movss [ebp-0x24], xmm2
	movss xmm7, dword [eax+0x4]
	movss xmm4, dword [ebx+0x2c]
	movss [ebp-0x38], xmm4
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x34], xmm0
	movss xmm1, dword [ebx+0x28]
	movss [ebp-0x30], xmm1
	movaps xmm5, xmm4
	mulss xmm5, xmm7
	mulss xmm0, xmm1
	subss xmm5, xmm0
	movss xmm2, dword [ebx+0x24]
	movss [ebp-0x2c], xmm2
	movss xmm4, dword [eax]
	movss [ebp-0x28], xmm4
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [ebp-0x2c]
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, xmm4
	subss xmm2, xmm0
	movaps xmm3, xmm1
	mulss xmm3, xmm4
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm7
	subss xmm3, xmm0
	movss xmm6, dword [ebp-0x1c]
	mulss xmm6, xmm5
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm2
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm3
	addss xmm6, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	movss xmm1, dword [_float_0_12500000]
	addss xmm1, [ebx+0x88]
	movss [ebp-0x44], xmm1
	mulss xmm6, xmm6
	mulss xmm1, xmm1
	mulss xmm1, xmm0
	subss xmm1, xmm6
	ucomiss xmm1, [_float_0_00000000]
	jp _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_10
	jbe _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_20
_Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_10:
	mulss xmm4, xmm4
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	addss xmm0, xmm4
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm0
	addss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	mulss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	sqrtsd xmm0, xmm0
	cvtss2sd xmm1, [ebp-0x48]
	divsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x3c], xmm0
	movss xmm4, dword [ebp-0x20]
	mulss xmm4, [ebp-0x34]
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm7
	subss xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, [ebp-0x28]
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, [ebp-0x34]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm4, xmm2
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0x20]
	mulss xmm1, [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm4, xmm3
	movaps xmm1, xmm4
	divss xmm1, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, xmm1
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	ja _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_20
	movaps xmm5, xmm1
	subss xmm5, [ebp-0x3c]
	ucomiss xmm5, [esi]
	jae _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_20
	ucomiss xmm2, xmm5
	ja _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_30
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm5
	addss xmm0, [ebp-0x1c]
	movss xmm2, dword [ebp-0x30]
	mulss xmm2, xmm5
	addss xmm2, [ebp-0x20]
	movss xmm3, dword [ebp-0x38]
	mulss xmm3, xmm5
	addss xmm3, [ebp-0x24]
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, xmm0
	mulss xmm7, xmm2
	addss xmm1, xmm7
	movss xmm4, dword [ebp-0x34]
	mulss xmm4, xmm3
	addss xmm1, xmm4
	xorps xmm1, [_data16_80000000]
	pxor xmm4, xmm4
	ucomiss xmm4, xmm1
	jae _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_40
	ucomiss xmm1, [ebp-0x40]
	jae _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_50
	divss xmm1, dword [ebp-0x40]
	movss xmm4, dword [ebp-0x28]
	mulss xmm4, xmm1
	addss xmm0, xmm4
	movss [ebp-0x14], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movss [ebp-0x10], xmm2
	mulss xmm1, [eax+0x8]
	addss xmm3, xmm1
	movss [ebp-0xc], xmm3
	lea eax, [esi+0x4]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x44]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x14]
	movss [esi+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x10]
	movss [eax+0x4], xmm1
	mulss xmm0, [ebp-0xc]
	movss [eax+0x8], xmm0
	movss [esi], xmm5
	xor eax, eax
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
_Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_30:
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [ebp-0x28]
	mulss xmm7, [ebp-0x20]
	addss xmm0, xmm7
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, [ebp-0x34]
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm2, xmm0
	jae _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_40
	ucomiss xmm0, [ebp-0x40]
	jae _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_50
	divss xmm0, dword [ebp-0x40]
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x14], xmm1
	movaps xmm2, xmm0
	mulss xmm2, [eax+0x4]
	addss xmm2, [ebp-0x20]
	movss [ebp-0x10], xmm2
	mulss xmm0, [eax+0x8]
	addss xmm0, [ebp-0x24]
	movss [ebp-0xc], xmm0
	mulss xmm1, [ebx+0x24]
	mulss xmm2, [ebx+0x28]
	addss xmm1, xmm2
	mulss xmm0, [ebx+0x2c]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jb _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_60
_Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_20:
	mov eax, 0x1
_Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_70:
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
_Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_50:
	mov eax, 0x3
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
_Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_60:
	lea eax, [esi+0x4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x14]
	mov [esp], eax
	movss [ebp-0x58], xmm4
	movss [ebp-0x68], xmm6
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	pxor xmm2, xmm2
	movss [esi], xmm2
	movss xmm0, dword [ebx+0x88]
	movss xmm4, dword [ebp-0x58]
	mulss xmm4, xmm4
	mulss xmm0, xmm0
	mulss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	movss xmm6, dword [ebp-0x68]
	subss xmm0, xmm6
	movss xmm1, dword [ebp-0x40]
	mulss xmm1, xmm0
	ucomiss xmm1, xmm4
	seta byte [esi+0x29]
	xor eax, eax
	jmp _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_70
_Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_40:
	mov eax, 0x2
	jmp _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t_70
	nop


;CM_PositionTestInAabbTree_r(traceWork_t const*, CollisionAabbTree*, trace_t*)
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t:
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_160:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov [ebp-0x100], eax
	mov esi, edx
	mov [ebp-0x104], ecx
	lea ecx, [edx+0xc]
	call _Z10CM_CullBoxPK11traceWork_tPKfS3_
	test al, al
	jnz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_10
	movzx edx, word [esi+0x1a]
	test dx, dx
	jnz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_20
	mov edx, [ebp-0x100]
	movsx ecx, word [edx+0xa0]
	mov edx, [esi+0x1c]
	mov ebx, [ebp-0x100]
	mov eax, [ebx+0xa4]
	lea eax, [eax+edx*4]
	cmp ecx, [eax]
	jz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_10
	mov [eax], ecx
	lea ecx, [edx+edx*2]
	mov edx, cm
	mov eax, [edx+0x78]
	lea ecx, [eax+ecx*4]
	mov eax, [ecx+0x4]
	lea eax, [eax+eax*2]
	mov edx, [edx+0x64]
	lea edi, [edx+eax*2]
	movzx eax, byte [ecx]
	movzx edx, al
	mov [ebp-0xfc], edx
	test al, al
	jz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_10
	mov dword [ebp-0x5c], 0x0
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_150:
	mov ebx, [ebp-0x100]
	movss xmm0, dword [ebx+0x8c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_30
	jz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_40
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_30:
	addss xmm0, [ebx+0x8]
	movss [ebp-0xf8], xmm0
	movss xmm2, dword [ebx+0x4]
	movss [ebp-0xf4], xmm2
	movss xmm3, dword [ebx]
	movss [ebp-0x108], xmm3
	movss [ebp-0x24], xmm3
	movss [ebp-0x20], xmm2
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebx+0x8]
	movss [ebp-0x80], xmm0
	subss xmm0, [ebx+0x8c]
	movss [ebp-0x80], xmm0
	movss xmm1, dword [ebx+0x88]
	mulss xmm1, xmm1
	movss [ebp-0xf0], xmm1
	mov eax, cm
	mov edx, [eax+0x5c]
	movzx eax, word [edi]
	lea eax, [eax+eax*2]
	lea ebx, [edx+eax*4]
	movzx eax, word [edi+0x2]
	lea eax, [eax+eax*2]
	lea esi, [edx+eax*4]
	movzx eax, word [edi+0x4]
	lea eax, [eax+eax*2]
	lea eax, [edx+eax*4]
	mov [ebp-0xa0], eax
	movss xmm0, dword [esi]
	movss [ebp-0x10c], xmm0
	subss xmm0, [ebx]
	movss [ebp-0x10c], xmm0
	movss [ebp-0x30], xmm0
	lea eax, [esi+0x4]
	mov [ebp-0xec], eax
	movss xmm0, dword [esi+0x4]
	movss [ebp-0x110], xmm0
	subss xmm0, [ebx+0x4]
	movss [ebp-0x110], xmm0
	movss [ebp-0x2c], xmm0
	lea eax, [esi+0x8]
	mov [ebp-0xe8], eax
	movss xmm0, dword [esi+0x8]
	movss [ebp-0xe4], xmm0
	subss xmm0, [ebx+0x8]
	movss [ebp-0xe4], xmm0
	movss [ebp-0x28], xmm0
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax]
	movss [ebp-0x114], xmm0
	subss xmm0, [ebx]
	movss [ebp-0x114], xmm0
	movss [ebp-0x3c], xmm0
	add eax, 0x4
	mov [ebp-0xe0], eax
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x118], xmm0
	subss xmm0, [ebx+0x4]
	movss [ebp-0x118], xmm0
	movss [ebp-0x38], xmm0
	add eax, 0x8
	mov [ebp-0xdc], eax
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax+0x8]
	movss [ebp-0xd8], xmm0
	subss xmm0, [ebx+0x8]
	movss [ebp-0xd8], xmm0
	movss [ebp-0x34], xmm0
	movaps xmm7, xmm0
	mulss xmm7, [ebp-0x110]
	movss xmm0, dword [ebp-0xe4]
	mulss xmm0, [ebp-0x118]
	subss xmm7, xmm0
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, [ebp-0x114]
	movss xmm0, dword [ebp-0xd8]
	mulss xmm0, [ebp-0x10c]
	subss xmm1, xmm0
	movss [ebp-0x78], xmm1
	movss xmm2, dword [ebp-0x118]
	mulss xmm2, [ebp-0x10c]
	movss xmm0, dword [ebp-0x110]
	mulss xmm0, [ebp-0x114]
	subss xmm2, xmm0
	movss [ebp-0x7c], xmm2
	movss xmm3, dword [ebx]
	movss [ebp-0xd4], xmm3
	movss xmm0, dword [ebx+0x4]
	movss [ebp-0xd0], xmm0
	movss xmm1, dword [ebx+0x8]
	movss [ebp-0xcc], xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm7
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, [ebp-0xd0]
	addss xmm1, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xcc]
	addss xmm1, xmm0
	cvtss2sd xmm1, xmm1
	movss xmm2, dword [ebp-0x108]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, [ebp-0xf4]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, [ebp-0x7c]
	addss xmm0, xmm2
	cvtss2sd xmm5, xmm0
	subsd xmm5, xmm1
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, [ebp-0x7c]
	addss xmm2, xmm0
	cvtss2sd xmm6, xmm2
	subsd xmm6, xmm1
	movapd xmm0, xmm5
	mulsd xmm0, xmm6
	pxor xmm2, xmm2
	ucomisd xmm2, xmm0
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_50
	mulss xmm7, xmm7
	movss xmm3, dword [ebp-0x78]
	mulss xmm3, xmm3
	addss xmm7, xmm3
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, xmm0
	addss xmm7, xmm0
	cvtss2sd xmm0, xmm7
	cvtss2sd xmm1, [ebp-0xf0]
	mulsd xmm0, xmm1
	mulsd xmm5, xmm5
	ucomisd xmm0, xmm5
	seta dl
	mulsd xmm6, xmm6
	ucomisd xmm0, xmm6
	seta cl
	mov eax, ecx
	or eax, edx
	test al, 0x1
	jz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_60
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x110]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0xa8], xmm0
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, [ebp-0x10c]
	movss xmm1, dword [ebp-0x110]
	mulss xmm1, [ebp-0x118]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, [ebp-0xd8]
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0xb0], xmm0
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x118]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xd8]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0xb8], xmm0
	movsd xmm1, qword [ebp-0xa8]
	mulsd xmm1, xmm0
	movsd xmm0, qword [ebp-0xb0]
	mulsd xmm0, xmm0
	subsd xmm1, xmm0
	movsd [ebp-0xc0], xmm1
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_290:
	test dl, dl
	jz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_70
	movss xmm2, dword [ebp-0xd4]
	subss xmm2, [ebp-0x108]
	movss xmm3, dword [ebp-0xd0]
	subss xmm3, [ebp-0xf4]
	movss xmm4, dword [ebp-0xcc]
	subss xmm4, [ebp-0xf8]
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x110]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	cvtss2sd xmm5, xmm0
	mulss xmm2, [ebp-0x114]
	mulss xmm3, [ebp-0x118]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0xd8]
	addss xmm2, xmm4
	cvtss2sd xmm2, xmm2
	movsd xmm1, qword [ebp-0xb0]
	mulsd xmm1, xmm2
	movsd xmm0, qword [ebp-0xb8]
	mulsd xmm0, xmm5
	subsd xmm1, xmm0
	pxor xmm3, xmm3
	ucomisd xmm3, xmm1
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_70
	movsd xmm0, qword [ebp-0xb0]
	mulsd xmm0, xmm5
	mulsd xmm2, [ebp-0xa8]
	subsd xmm0, xmm2
	ucomisd xmm0, xmm3
	jb _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_80
	addsd xmm1, xmm0
	movsd xmm0, qword [ebp-0xc0]
	ucomisd xmm0, xmm1
	jae _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_90
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_80:
	xor eax, eax
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_370:
	test eax, eax
	jnz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_100
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_70:
	test cl, cl
	jz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_110
	movss xmm0, dword [ebp-0xd4]
	subss xmm0, [ebp-0x108]
	movss xmm1, dword [ebp-0xd0]
	subss xmm1, [ebp-0xf4]
	movss xmm2, dword [ebp-0xcc]
	subss xmm2, [ebp-0x80]
	movss xmm3, dword [ebp-0x10c]
	mulss xmm3, xmm0
	movss [ebp-0x10c], xmm3
	movss xmm3, dword [ebp-0x110]
	mulss xmm3, xmm1
	movss [ebp-0x110], xmm3
	movss xmm3, dword [ebp-0x10c]
	addss xmm3, [ebp-0x110]
	movss [ebp-0x10c], xmm3
	movss xmm3, dword [ebp-0xe4]
	mulss xmm3, xmm2
	movss [ebp-0xe4], xmm3
	movss xmm3, dword [ebp-0x10c]
	addss xmm3, [ebp-0xe4]
	cvtss2sd xmm5, xmm3
	mulss xmm0, [ebp-0x114]
	mulss xmm1, [ebp-0x118]
	addss xmm0, xmm1
	movss [ebp-0x114], xmm0
	mulss xmm2, [ebp-0xd8]
	addss xmm0, xmm2
	cvtss2sd xmm2, xmm0
	movsd xmm1, qword [ebp-0xb0]
	mulsd xmm1, xmm2
	movsd xmm0, qword [ebp-0xb8]
	mulsd xmm0, xmm5
	subsd xmm1, xmm0
	pxor xmm3, xmm3
	ucomisd xmm3, xmm1
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_110
	movsd xmm0, qword [ebp-0xb0]
	mulsd xmm0, xmm5
	mulsd xmm2, [ebp-0xa8]
	subsd xmm0, xmm2
	ucomisd xmm0, xmm3
	jb _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_120
	addsd xmm1, xmm0
	movsd xmm0, qword [ebp-0xc0]
	ucomisd xmm0, xmm1
	jae _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_130
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_120:
	xor eax, eax
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_360:
	test eax, eax
	jnz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_100
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_110:
	movss xmm1, dword [ebp-0x108]
	subss xmm1, xmm1
	movss [ebp-0x54], xmm1
	movss xmm2, dword [ebp-0xf4]
	subss xmm2, xmm2
	movss [ebp-0x50], xmm2
	movss xmm3, dword [ebp-0x80]
	subss xmm3, [ebp-0xf8]
	movss [ebp-0x4c], xmm3
	lea eax, [ebp-0x30]
	mov [esp], eax
	mov ecx, ebx
	lea edx, [ebp-0x54]
	lea eax, [ebp-0x24]
	call _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0_
	movss xmm1, dword [ebp-0xf0]
	ucomiss xmm1, xmm0
	jbe _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_140
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_100:
	mov eax, [ebp-0x104]
	mov dword [eax], 0x0
	mov byte [eax+0x29], 0x1
	mov byte [eax+0x28], 0x1
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_60:
	mov edx, [ebp-0x104]
	cmp byte [edx+0x29], 0x0
	jnz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_10
	add edi, 0x6
	add dword [ebp-0x5c], 0x1
	mov ebx, [ebp-0x5c]
	cmp [ebp-0xfc], ebx
	jnz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_150
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_10:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_20:
	mov ebx, [esi+0x1c]
	shl ebx, 0x5
	mov eax, cm
	add ebx, [eax+0x80]
	test dx, dx
	jz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_10
	xor edi, edi
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_170:
	mov ecx, [ebp-0x104]
	mov edx, ebx
	mov eax, [ebp-0x100]
	call _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_160
	mov eax, [ebp-0x104]
	cmp byte [eax+0x29], 0x0
	jnz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_10
	add edi, 0x1
	add ebx, 0x20
	movzx eax, word [esi+0x1a]
	cmp eax, edi
	jg _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_170
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_10
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_40:
	mov edx, cm
	mov ebx, [edx+0x5c]
	movzx edx, word [edi]
	lea edx, [edx+edx*2]
	lea edx, [ebx+edx*4]
	movzx eax, word [edi+0x2]
	lea eax, [eax+eax*2]
	lea eax, [ebx+eax*4]
	movzx ecx, word [edi+0x4]
	lea ecx, [ecx+ecx*2]
	lea ecx, [ebx+ecx*4]
	movss xmm7, dword [edx]
	movss xmm0, dword [eax]
	subss xmm0, xmm7
	movss [ebp-0x6c], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x9c], xmm1
	movss xmm2, dword [eax+0x4]
	subss xmm2, xmm1
	movss [ebp-0x70], xmm2
	movss xmm3, dword [edx+0x8]
	movss [ebp-0x98], xmm3
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm3
	movss [ebp-0x74], xmm0
	movss xmm1, dword [ecx]
	subss xmm1, xmm7
	movss [ebp-0x60], xmm1
	movss xmm2, dword [ecx+0x4]
	subss xmm2, [ebp-0x9c]
	movss [ebp-0x64], xmm2
	movss xmm3, dword [ecx+0x8]
	subss xmm3, [ebp-0x98]
	movss [ebp-0x68], xmm3
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm0
	movss [ebp-0x90], xmm0
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm0
	addss xmm0, [ebp-0x90]
	movss [ebp-0x90], xmm0
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm0
	addss xmm0, [ebp-0x90]
	movss [ebp-0x90], xmm0
	movss xmm4, dword [ebp-0x6c]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm2
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm3
	addss xmm4, xmm0
	mulss xmm1, xmm1
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm0, xmm1
	movss [ebp-0x94], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x94]
	movss [ebp-0x94], xmm0
	mov eax, [ebp-0x100]
	movss xmm0, dword [eax]
	movss [ebp-0x8c], xmm0
	movaps xmm3, xmm0
	subss xmm3, xmm7
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x88], xmm1
	subss xmm1, [ebp-0x9c]
	movss xmm2, dword [eax+0x8]
	movss [ebp-0x84], xmm2
	subss xmm2, [ebp-0x98]
	movss xmm6, dword [ebp-0x6c]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm2
	addss xmm6, xmm0
	mulss xmm3, [ebp-0x60]
	mulss xmm1, [ebp-0x64]
	addss xmm3, xmm1
	mulss xmm2, [ebp-0x68]
	addss xmm3, xmm2
	movss xmm5, dword [ebp-0x90]
	mulss xmm5, [ebp-0x94]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	subss xmm5, xmm0
	movaps xmm2, xmm4
	mulss xmm2, xmm3
	movss xmm0, dword [ebp-0x94]
	mulss xmm0, xmm6
	subss xmm2, xmm0
	movaps xmm1, xmm4
	mulss xmm1, xmm6
	movss xmm0, dword [ebp-0x90]
	mulss xmm0, xmm3
	subss xmm1, xmm0
	movaps xmm0, xmm2
	addss xmm0, xmm1
	ucomiss xmm5, xmm0
	jb _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_180
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_190
	pxor xmm3, xmm3
	ucomiss xmm3, xmm1
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_200
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm5
	mulss xmm2, xmm0
	mulss xmm0, xmm1
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250:
	movss xmm3, dword [ebp-0x6c]
	mulss xmm3, xmm2
	addss xmm7, xmm3
	movss xmm1, dword [ebp-0x60]
	mulss xmm1, xmm0
	addss xmm7, xmm1
	subss xmm7, [ebp-0x8c]
	movss xmm3, dword [ebp-0x70]
	mulss xmm3, xmm2
	movss xmm1, dword [ebp-0x9c]
	addss xmm1, xmm3
	movss xmm3, dword [ebp-0x64]
	mulss xmm3, xmm0
	addss xmm1, xmm3
	subss xmm1, [ebp-0x88]
	movss [ebp-0x9c], xmm1
	mulss xmm2, [ebp-0x74]
	movss xmm1, dword [ebp-0x98]
	addss xmm1, xmm2
	mulss xmm0, [ebp-0x68]
	addss xmm0, xmm1
	subss xmm0, [ebp-0x84]
	movss [ebp-0x98], xmm0
	mov eax, [ebp-0x100]
	movss xmm0, dword [eax+0x88]
	mulss xmm7, xmm7
	movss xmm1, dword [ebp-0x9c]
	mulss xmm1, xmm1
	addss xmm7, xmm1
	movss xmm2, dword [ebp-0x98]
	mulss xmm2, xmm2
	addss xmm7, xmm2
	mulss xmm0, xmm0
	ucomiss xmm0, xmm7
	jbe _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_60
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_100
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_180:
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_210
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_220
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_350:
	movss xmm0, dword [ebp-0x94]
	subss xmm0, xmm4
	addss xmm0, xmm3
	subss xmm0, xmm6
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_230
	movaps xmm1, xmm4
	mulss xmm1, [_float__2_00000000]
	addss xmm1, [ebp-0x90]
	addss xmm1, [ebp-0x94]
	ucomiss xmm0, xmm1
	jb _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_240
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_390:
	movss xmm2, dword [_float_1_00000000]
	pxor xmm0, xmm0
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_50:
	movaps xmm2, xmm3
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x110]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0xa8], xmm0
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, [ebp-0x10c]
	movss xmm1, dword [ebp-0x110]
	mulss xmm1, [ebp-0x118]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, [ebp-0xd8]
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0xb0], xmm0
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x118]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xd8]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0xb8], xmm0
	movsd xmm3, qword [ebp-0xa8]
	mulsd xmm3, xmm0
	movsd xmm0, qword [ebp-0xb0]
	mulsd xmm0, xmm0
	subsd xmm3, xmm0
	movsd [ebp-0xc0], xmm3
	movapd xmm0, xmm5
	subsd xmm0, xmm6
	movapd xmm1, xmm5
	divsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss xmm0, dword [ebp-0x108]
	subss xmm0, xmm0
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x108]
	subss xmm2, xmm0
	movss xmm0, dword [ebp-0xf4]
	subss xmm0, xmm0
	mulss xmm0, xmm1
	addss xmm0, [ebp-0xf4]
	movss xmm4, dword [ebp-0xd0]
	subss xmm4, xmm0
	movss xmm0, dword [ebp-0x80]
	subss xmm0, [ebp-0xf8]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0xf8]
	movss xmm3, dword [ebp-0xcc]
	subss xmm3, xmm1
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x110]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [ebp-0xc8], xmm0
	mulss xmm2, [ebp-0x114]
	mulss xmm4, [ebp-0x118]
	addss xmm2, xmm4
	mulss xmm3, [ebp-0xd8]
	addss xmm2, xmm3
	cvtss2sd xmm2, xmm2
	movsd xmm1, qword [ebp-0xb0]
	mulsd xmm1, xmm2
	movsd xmm0, qword [ebp-0xb8]
	mulsd xmm0, [ebp-0xc8]
	subsd xmm1, xmm0
	pxor xmm3, xmm3
	ucomisd xmm3, xmm1
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_260
	movsd xmm0, qword [ebp-0xb0]
	mulsd xmm0, [ebp-0xc8]
	mulsd xmm2, [ebp-0xa8]
	subsd xmm0, xmm2
	ucomisd xmm0, xmm3
	jb _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_270
	addsd xmm1, xmm0
	movsd xmm0, qword [ebp-0xc0]
	ucomisd xmm0, xmm1
	jae _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_280
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_270:
	xor eax, eax
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_380:
	test eax, eax
	jnz _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_100
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_260:
	mulss xmm7, xmm7
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, xmm1
	addss xmm7, xmm1
	movss xmm2, dword [ebp-0x7c]
	mulss xmm2, xmm2
	addss xmm7, xmm2
	cvtss2sd xmm1, xmm7
	cvtss2sd xmm0, [ebp-0xf0]
	mulsd xmm1, xmm0
	mulsd xmm5, xmm5
	ucomisd xmm1, xmm5
	seta dl
	mulsd xmm6, xmm6
	ucomisd xmm1, xmm6
	seta cl
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_290
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_220:
	movss xmm1, dword [ebp-0x90]
	addss xmm1, xmm6
	ucomiss xmm1, xmm2
	jbe _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_300
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_200:
	pxor xmm0, xmm0
	ucomiss xmm6, xmm0
	jb _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_310
	movaps xmm2, xmm0
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_240:
	movaps xmm2, xmm0
	divss xmm2, xmm1
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_190:
	ucomiss xmm0, xmm1
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_320
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_340:
	pxor xmm1, xmm1
	ucomiss xmm3, xmm1
	jb _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_330
	pxor xmm0, xmm0
	movaps xmm2, xmm0
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_210:
	movss xmm1, dword [ebp-0x94]
	addss xmm1, xmm3
	ucomiss xmm1, xmm0
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_340
	movaps xmm0, xmm4
	addss xmm0, xmm6
	ucomiss xmm1, xmm0
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_350
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_400:
	pxor xmm2, xmm2
	movss xmm0, dword [_float_1_00000000]
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_140:
	lea eax, [ebp-0x3c]
	mov [esp], eax
	mov ecx, ebx
	lea edx, [ebp-0x54]
	lea eax, [ebp-0x24]
	call _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0_
	movss xmm2, dword [ebp-0xf0]
	ucomiss xmm2, xmm0
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_100
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax]
	subss xmm0, [esi]
	movss [ebp-0x48], xmm0
	mov edx, [ebp-0xe0]
	movss xmm0, dword [edx]
	mov ebx, [ebp-0xec]
	subss xmm0, [ebx]
	movss [ebp-0x44], xmm0
	mov eax, [ebp-0xdc]
	movss xmm0, dword [eax]
	mov edx, [ebp-0xe8]
	subss xmm0, [edx]
	movss [ebp-0x40], xmm0
	lea eax, [ebp-0x48]
	mov [esp], eax
	mov ecx, esi
	lea edx, [ebp-0x54]
	lea eax, [ebp-0x24]
	call _Z33CM_DistanceSquaredBetweenSegmentsPKfS0_S0_S0_
	movss xmm1, dword [ebp-0xf0]
	ucomiss xmm1, xmm0
	jbe _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_60
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_100
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_130:
	mov eax, 0x1
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_360
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_90:
	mov eax, 0x1
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_370
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_280:
	mov eax, 0x1
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_380
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_310:
	movaps xmm0, xmm6
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [ebp-0x90]
	jae _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_390
	movaps xmm2, xmm0
	divss xmm2, dword [ebp-0x90]
	pxor xmm0, xmm0
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_300:
	movaps xmm0, xmm4
	addss xmm0, xmm3
	ucomiss xmm1, xmm0
	jbe _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_390
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_350
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_230:
	movaps xmm2, xmm1
	movss xmm0, dword [_float_1_00000000]
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_330:
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [ebp-0x94]
	jae _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_400
	divss xmm0, dword [ebp-0x94]
	pxor xmm2, xmm2
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250
_Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_320:
	ucomiss xmm0, xmm6
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_200
	ucomiss xmm0, xmm3
	ja _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_340
	movaps xmm2, xmm0
	jmp _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t_250


;CM_TraceSphereThroughBorder(traceWork_t const*, CollisionBorder const*, float, trace_t*)
_Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	add esp, 0xffffff80
	mov ebx, eax
	mov esi, ecx
	movss xmm5, dword [edx+0x4]
	mulss xmm5, [edx+0x14]
	movss xmm1, dword [edx]
	mulss xmm1, [edx+0x8]
	addss xmm5, xmm1
	movss [ebp-0x14], xmm5
	movss xmm4, dword [edx+0x4]
	mulss xmm4, [edx+0x8]
	movss xmm1, dword [edx]
	mulss xmm1, [edx+0x14]
	subss xmm4, xmm1
	movss [ebp-0x10], xmm4
	movss xmm7, dword [edx+0xc]
	movss [ebp-0xc], xmm7
	movss xmm6, dword [edx+0x18]
	movaps xmm2, xmm6
	addss xmm2, [edx+0x14]
	movss xmm3, dword [edx+0x8]
	movss xmm1, dword [edx+0x4]
	mulss xmm1, xmm2
	movss [ebp-0x3c], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, xmm3
	addss xmm1, [ebp-0x3c]
	movss [ebp-0x3c], xmm1
	mulss xmm3, [edx+0x4]
	mulss xmm2, [edx]
	subss xmm3, xmm2
	movaps xmm1, xmm6
	mulss xmm1, [edx+0x10]
	addss xmm1, [edx+0xc]
	subss xmm5, [ebp-0x3c]
	movss [ebp-0x20], xmm5
	subss xmm4, xmm3
	movss [ebp-0x1c], xmm4
	subss xmm7, xmm1
	movss [ebp-0x18], xmm7
	mov eax, [eax]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x28], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x24], eax
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	lea ecx, [ebp-0x14]
	lea edx, [ebp-0x2c]
	mov [esp+0x4], esi
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov eax, ebx
	movss [ebp-0x58], xmm1
	movss [ebp-0x68], xmm3
	call _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t
	cmp eax, 0x2
	movss xmm1, dword [ebp-0x58]
	movss xmm3, dword [ebp-0x68]
	jz _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_10
	cmp eax, 0x3
	jz _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_20
_Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_30:
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret
_Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_20:
	movss xmm4, dword [ebp-0x2c]
	subss xmm4, [ebp-0x3c]
	movss xmm5, dword [ebp-0x28]
	subss xmm5, xmm3
	movss xmm6, dword [ebp-0x24]
	subss xmm6, xmm1
	movss xmm1, dword [ebx+0x24]
	movaps xmm2, xmm4
	mulss xmm2, xmm1
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x28]
	addss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebx+0x2c]
	addss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jae _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_30
_Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_50:
	movaps xmm7, xmm4
	mulss xmm7, xmm4
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	addss xmm7, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	addss xmm7, xmm0
	movss xmm0, dword [ebx+0x88]
	addss xmm0, [_float_0_12500000]
	mulss xmm0, xmm0
	movaps xmm3, xmm7
	subss xmm3, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm3
	jae _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_40
	movss xmm7, dword [ebx+0x34]
	movss [ebp-0x6c], xmm7
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	mulss xmm3, xmm7
	movaps xmm7, xmm0
	subss xmm7, xmm3
	mulss xmm0, [_float_0_00100000]
	ucomiss xmm0, xmm7
	ja _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_30
	sqrtss xmm3, xmm7
	xorps xmm3, [_data16_80000000]
	subss xmm3, xmm2
	divss xmm3, dword [ebp-0x6c]
	ucomiss xmm3, [esi]
	jae _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_30
	mulss xmm1, xmm3
	addss xmm4, xmm1
	movss [esi+0x4], xmm4
	movaps xmm0, xmm3
	mulss xmm0, [ebx+0x28]
	addss xmm5, xmm0
	movss [esi+0x8], xmm5
	movaps xmm0, xmm3
	mulss xmm0, [ebx+0x2c]
	addss xmm6, xmm0
	movss [esi+0xc], xmm6
	movss xmm1, dword [_float_0_12500000]
	addss xmm1, [ebx+0x88]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm4
	movss [esi+0x4], xmm1
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	movss [esi+0x8], xmm2
	mulss xmm0, xmm6
	movss [esi+0xc], xmm0
	mulss xmm1, xmm1
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss xmm0, dword [_float_3_00000000]
	subss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	movaps xmm1, xmm0
	mulss xmm1, [esi+0x4]
	movss [esi+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [esi+0x8]
	movss [esi+0x8], xmm1
	mulss xmm0, [esi+0xc]
	movss [esi+0xc], xmm0
	mov byte [esi+0x2a], 0x0
	movss [esi], xmm3
	jmp _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_30
_Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_10:
	movss xmm4, dword [ebp-0x2c]
	subss xmm4, [ebp-0x14]
	movss xmm5, dword [ebp-0x28]
	subss xmm5, [ebp-0x10]
	movss xmm6, dword [ebp-0x24]
	subss xmm6, [ebp-0xc]
	movss xmm1, dword [ebx+0x24]
	movaps xmm2, xmm4
	mulss xmm2, xmm1
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x28]
	addss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebx+0x2c]
	addss xmm2, xmm0
	pxor xmm7, xmm7
	ucomiss xmm2, xmm7
	jb _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_50
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret
_Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_40:
	sqrtss xmm1, xmm7
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	lea eax, [esi+0x4]
	mulss xmm4, xmm0
	movss [esi+0x4], xmm4
	mulss xmm5, xmm0
	movss [eax+0x4], xmm5
	mulss xmm6, xmm0
	movss [eax+0x8], xmm6
	mov byte [esi+0x2a], 0x0
	mov dword [esi], 0x0
	movss xmm0, dword [ebx+0x88]
	mulss xmm0, xmm0
	ucomiss xmm0, xmm7
	jbe _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_30
	mov byte [esi+0x29], 0x1
	jmp _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t_30


;CM_TraceThroughAabbTree_r(traceWork_t const*, CollisionAabbTree const*, trace_t*)
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t:
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_190:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov [ebp-0x118], eax
	mov esi, edx
	mov [ebp-0x11c], ecx
	lea ecx, [edx+0xc]
	call _Z10CM_CullBoxPK11traceWork_tPKfS3_
	test al, al
	jnz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
	movzx edx, word [esi+0x1a]
	test dx, dx
	jnz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_20
	mov eax, [ebp-0x118]
	mov ecx, [eax+0xa0]
	mov edx, [esi+0x1c]
	mov eax, [eax+0xa4]
	lea eax, [eax+edx*4]
	cmp ecx, [eax]
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
	mov [eax], ecx
	mov ebx, cm
	lea edx, [edx+edx*2]
	mov eax, [ebx+0x78]
	lea edx, [eax+edx*4]
	mov [ebp-0x114], edx
	mov edi, [ebp-0x118]
	cmp byte [edi+0x84], 0x0
	jnz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_30
	mov ecx, [edx+0x4]
	mov [ebp-0x6c], ecx
	movzx eax, byte [edx]
	add eax, ecx
	cmp ecx, eax
	jge _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_40
	lea eax, [ecx+ecx*2]
	lea edx, [eax+eax]
	mov [ebp-0x90], edx
	lea ecx, [eax+0x2]
	mov [ebp-0x8c], ecx
	lea edi, [eax+0x1]
	mov [ebp-0x88], edi
	mov [ebp-0x84], eax
	mov eax, [ebp-0x118]
	add eax, 0x24
	mov [ebp-0x130], eax
	pxor xmm0, xmm0
	movss [ebp-0x12c], xmm0
	mov eax, [ebp-0x118]
	add eax, 0x28
	mov [ebp-0x134], eax
	mov edx, [ebp-0x118]
	add edx, 0x2c
	mov [ebp-0x138], edx
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_50
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_70:
	mov ebx, cm
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_50:
	mov edx, [ebp-0x90]
	add edx, [ebx+0x64]
	mov ecx, [ebx+0x5c]
	movzx eax, word [edx]
	lea eax, [eax+eax*2]
	lea esi, [ecx+eax*4]
	movzx eax, word [edx+0x2]
	lea eax, [eax+eax*2]
	lea eax, [ecx+eax*4]
	mov [ebp-0x74], eax
	movzx eax, word [edx+0x4]
	lea eax, [eax+eax*2]
	lea edi, [ecx+eax*4]
	movss xmm0, dword [esi]
	mov ecx, [ebp-0x74]
	subss xmm0, [ecx]
	movss [ebp-0x3c], xmm0
	add ecx, 0x4
	mov [ebp-0x78], ecx
	movss xmm0, dword [esi+0x4]
	mov ebx, [ebp-0x74]
	subss xmm0, [ebx+0x4]
	movss [ebp-0x38], xmm0
	add ebx, 0x8
	mov [ebp-0x94], ebx
	movss xmm0, dword [esi+0x8]
	mov eax, [ebp-0x74]
	subss xmm0, [eax+0x8]
	movss [ebp-0x34], xmm0
	movss xmm4, dword [esi]
	subss xmm4, [edi]
	movss [ebp-0x24], xmm4
	lea edx, [edi+0x4]
	mov [ebp-0x98], edx
	movss xmm3, dword [esi+0x4]
	subss xmm3, [edi+0x4]
	movss [ebp-0x20], xmm3
	lea ecx, [edi+0x8]
	mov [ebp-0x7c], ecx
	movss xmm0, dword [esi+0x8]
	subss xmm0, [edi+0x8]
	movss [ebp-0x1c], xmm0
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x34]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x38]
	subss xmm1, xmm2
	movss [ebp-0x54], xmm1
	mulss xmm0, [ebp-0x3c]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x34]
	subss xmm0, xmm1
	movss [ebp-0x50], xmm0
	mulss xmm4, [ebp-0x38]
	mulss xmm3, [ebp-0x3c]
	subss xmm4, xmm3
	movss [ebp-0x4c], xmm4
	mov ebx, [ebp-0x118]
	movss xmm0, dword [ebx+0x24]
	mulss xmm0, [ebp-0x54]
	movss [ebp-0x108], xmm0
	movss xmm0, dword [ebx+0x28]
	mulss xmm0, [ebp-0x50]
	addss xmm0, [ebp-0x108]
	mulss xmm4, [ebx+0x2c]
	addss xmm4, xmm0
	movss [ebp-0x108], xmm4
	ucomiss xmm4, [ebp-0x12c]
	jb _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_60
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260:
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x90], 0x6
	add dword [ebp-0x8c], 0x3
	add dword [ebp-0x88], 0x3
	add dword [ebp-0x84], 0x3
	mov edx, [ebp-0x114]
	movzx eax, byte [edx]
	add eax, [edx+0x4]
	cmp eax, [ebp-0x6c]
	jg _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_70
	movss xmm0, dword [ebp-0x12c]
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_240:
	mov eax, [ebp-0x118]
	ucomiss xmm0, [eax+0x24]
	jnz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_80
	jp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_80
	ucomiss xmm0, [eax+0x28]
	jp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_90
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_90:
	movss xmm0, dword [ebp-0x12c]
	mov eax, [ebp-0x118]
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_80:
	ucomiss xmm0, [eax+0x8c]
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_100
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_180:
	mov ecx, [ebp-0x114]
	cmp byte [ecx+0x1], 0x0
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
	xor esi, esi
	xor ebx, ebx
	mov edi, [ebp-0x118]
	add edi, 0x24
	mov [ebp-0x130], edi
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_110
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_120:
	add esi, 0x1
	add ebx, 0x1c
	movzx eax, byte [edx+0x1]
	cmp esi, eax
	jge _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
	pxor xmm1, xmm1
	movss [ebp-0x12c], xmm1
	mov edi, [ebp-0x130]
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_110:
	mov eax, ebx
	mov edx, [ebp-0x114]
	add eax, [edx+0x8]
	mov ecx, [ebp-0x118]
	movss xmm6, dword [ecx+0x24]
	movss xmm3, dword [edi+0x4]
	movss xmm4, dword [eax+0x4]
	movaps xmm2, xmm6
	mulss xmm2, [eax]
	movaps xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_120
	movss xmm1, dword [ecx+0x88]
	movss [ebp-0xdc], xmm1
	addss xmm1, [_float_0_12500000]
	movss [ebp-0xcc], xmm1
	movss xmm0, dword [ecx]
	movss [ebp-0xc8], xmm0
	movss xmm1, dword [ecx+0x4]
	movss [ebp-0xc4], xmm1
	movss xmm7, dword [eax+0x8]
	mulss xmm0, [eax]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	subss xmm0, xmm7
	movss xmm5, dword [ebp-0xcc]
	subss xmm5, xmm0
	divss xmm5, xmm2
	mov edx, [ebp-0x11c]
	movss xmm0, dword [edx]
	movss [ebp-0xd8], xmm0
	ucomiss xmm5, xmm0
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	movaps xmm1, xmm5
	mulss xmm1, [ecx+0x30]
	movss xmm0, dword [ebp-0xcc]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	movss xmm1, dword [ecx+0x8]
	movss [ebp-0xc0], xmm1
	movss xmm2, dword [edi+0x8]
	movss [ebp-0xbc], xmm2
	mulss xmm2, xmm5
	addss xmm2, xmm1
	movss xmm0, dword [eax]
	movss [ebp-0xd4], xmm0
	movss xmm1, dword [eax+0x14]
	movss [ebp-0xd0], xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm5
	addss xmm1, [ebp-0xc8]
	mulss xmm1, xmm4
	movaps xmm0, xmm3
	mulss xmm0, xmm5
	addss xmm0, [ebp-0xc4]
	mulss xmm0, [ebp-0xd4]
	subss xmm1, xmm0
	subss xmm1, [ebp-0xd0]
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_140
	movss xmm0, dword [eax+0x18]
	movss [ebp-0x70], xmm0
	ucomiss xmm1, xmm0
	jbe _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_150
	movss xmm0, dword [ebp-0xd0]
	addss xmm0, [ebp-0x70]
	movaps xmm1, xmm4
	mulss xmm1, xmm0
	movss xmm2, dword [ebp-0xd4]
	mulss xmm2, xmm7
	addss xmm1, xmm2
	movss xmm2, dword [ebp-0xc8]
	subss xmm2, xmm1
	mulss xmm7, xmm4
	mulss xmm0, [ebp-0xd4]
	subss xmm7, xmm0
	movss xmm0, dword [ebp-0xc4]
	subss xmm0, xmm7
	movaps xmm1, xmm6
	mulss xmm1, xmm2
	mulss xmm3, xmm0
	addss xmm1, xmm3
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xcc]
	mulss xmm0, xmm0
	movss [ebp-0xcc], xmm0
	movaps xmm0, xmm2
	subss xmm0, [ebp-0xcc]
	ucomiss xmm3, xmm0
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_160
	mov edx, [ebp-0x118]
	movss xmm3, dword [edx+0x34]
	movaps xmm2, xmm1
	mulss xmm2, xmm1
	mulss xmm0, xmm3
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	movaps xmm5, xmm1
	xorps xmm5, [_data16_80000000]
	sqrtss xmm0, xmm2
	subss xmm5, xmm0
	divss xmm5, xmm3
	ucomiss xmm5, [ebp-0xd8]
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	pxor xmm1, xmm1
	ucomiss xmm1, xmm5
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	movss xmm2, dword [ebp-0xbc]
	mulss xmm2, xmm5
	addss xmm2, [ebp-0xc0]
	movss xmm1, dword [ebp-0x70]
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_330:
	mulss xmm1, [eax+0x10]
	addss xmm1, [eax+0xc]
	subss xmm1, xmm2
	mov edx, [ebp-0x118]
	movss xmm0, dword [edx+0x8c]
	ucomiss xmm1, xmm0
	jbe _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_170
	movss xmm2, dword [ebp-0xdc]
	addss xmm2, xmm0
	ucomiss xmm2, xmm1
	jbe _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	mov ecx, [ebp-0x11c]
	mov edx, eax
	mov eax, [ebp-0x118]
	call _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t
	mov edx, [ebp-0x114]
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_120
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_100:
	jp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_180
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10:
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_20:
	mov ebx, [esi+0x1c]
	shl ebx, 0x5
	mov eax, cm
	add ebx, [eax+0x80]
	test dx, dx
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
	xor edi, edi
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_200:
	mov ecx, [ebp-0x11c]
	mov edx, ebx
	mov eax, [ebp-0x118]
	call _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_190
	add edi, 0x1
	add ebx, 0x20
	movzx eax, word [esi+0x1a]
	cmp eax, edi
	jg _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_200
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_30:
	mov esi, [edx+0x4]
	movzx eax, byte [edx]
	add eax, esi
	cmp eax, esi
	jle _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
	lea eax, [esi+esi*2]
	lea edi, [eax+eax]
	mov eax, [ebp-0x118]
	add eax, 0x24
	mov [ebp-0x130], eax
	mov [ebp-0x13c], ebx
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_210
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220:
	add esi, 0x1
	add edi, 0x6
	mov edx, [ebp-0x114]
	movzx eax, byte [edx]
	add eax, [edx+0x4]
	cmp eax, esi
	jle _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
	mov ebx, [ebp-0x13c]
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_210:
	mov edx, edi
	add edx, [ebx+0x64]
	mov ecx, [ebx+0x5c]
	movzx eax, word [edx]
	lea eax, [eax+eax*2]
	lea ebx, [ecx+eax*4]
	movzx eax, word [edx+0x2]
	lea eax, [eax+eax*2]
	lea eax, [ecx+eax*4]
	movss xmm2, dword [ebx]
	movaps xmm0, xmm2
	subss xmm0, [eax]
	movss [ebp-0xb0], xmm0
	movss xmm1, dword [ebx+0x4]
	movaps xmm3, xmm1
	subss xmm3, [eax+0x4]
	movss [ebp-0xb4], xmm3
	movss xmm0, dword [ebx+0x8]
	movaps xmm4, xmm0
	subss xmm4, [eax+0x8]
	movss [ebp-0xb8], xmm4
	movzx eax, word [edx+0x4]
	lea eax, [eax+eax*2]
	lea eax, [ecx+eax*4]
	subss xmm2, [eax]
	movss [ebp-0xa4], xmm2
	subss xmm1, [eax+0x4]
	movss [ebp-0xa8], xmm1
	subss xmm0, [eax+0x8]
	movss [ebp-0xac], xmm0
	movaps xmm5, xmm4
	mulss xmm5, xmm1
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0xac]
	subss xmm5, xmm0
	movss [ebp-0x3c], xmm5
	movss xmm4, dword [ebp-0xb0]
	mulss xmm4, [ebp-0xac]
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm2
	subss xmm4, xmm0
	movss [ebp-0x38], xmm4
	mulss xmm3, xmm2
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, xmm1
	subss xmm3, xmm0
	movss [ebp-0x34], xmm3
	mov eax, [ebp-0x118]
	movss xmm1, dword [eax+0x24]
	mov edx, [ebp-0x130]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x110], xmm0
	movss xmm7, dword [edx+0x8]
	movaps xmm6, xmm1
	mulss xmm6, xmm5
	mulss xmm0, xmm4
	addss xmm6, xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm7
	addss xmm6, xmm0
	pxor xmm2, xmm2
	ucomiss xmm6, xmm2
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220
	movss xmm0, dword [ebx]
	movss [ebp-0x9c], xmm0
	subss xmm0, [eax]
	movss [ebp-0x9c], xmm0
	movss xmm2, dword [ebx+0x4]
	movss [ebp-0xa0], xmm2
	subss xmm2, [eax+0x4]
	movss [ebp-0xa0], xmm2
	movss xmm2, dword [ebx+0x8]
	subss xmm2, [eax+0x8]
	mulss xmm5, xmm0
	mulss xmm4, [ebp-0xa0]
	addss xmm5, xmm4
	mulss xmm3, xmm2
	addss xmm5, xmm3
	pxor xmm3, xmm3
	ucomiss xmm5, xmm3
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220
	movaps xmm0, xmm6
	mov eax, [ebp-0x11c]
	mulss xmm0, [eax]
	ucomiss xmm0, xmm5
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220
	movss xmm4, dword [ebp-0x110]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0xa0]
	mulss xmm0, xmm7
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x9c]
	mulss xmm3, xmm7
	mulss xmm2, xmm1
	subss xmm3, xmm2
	mulss xmm1, [ebp-0xa0]
	movss xmm0, dword [ebp-0x110]
	mulss xmm0, [ebp-0x9c]
	subss xmm1, xmm0
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, xmm4
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0xb8]
	mulss xmm2, xmm1
	addss xmm0, xmm2
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220
	ucomiss xmm6, xmm0
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220
	movss xmm2, dword [ebp-0xa4]
	mulss xmm2, xmm4
	mulss xmm3, [ebp-0xa8]
	addss xmm2, xmm3
	mulss xmm1, [ebp-0xac]
	addss xmm2, xmm1
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220
	subss xmm0, xmm2
	ucomiss xmm6, xmm0
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220
	mov byte [eax+0x2a], 0x0
	mov eax, [ebp-0x11c]
	add eax, 0x4
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	movss [ebp-0x178], xmm5
	movss [ebp-0x188], xmm6
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	movss xmm5, dword [ebp-0x178]
	movss xmm6, dword [ebp-0x188]
	divss xmm5, xmm6
	mov eax, [ebp-0x11c]
	movss [eax], xmm5
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_220
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_170:
	movaps xmm2, xmm0
	xorps xmm2, [_data16_80000000]
	ucomiss xmm2, xmm1
	jbe _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_230
	movaps xmm0, xmm2
	subss xmm0, [ebp-0xdc]
	ucomiss xmm1, xmm0
	jbe _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	mov ecx, [ebp-0x11c]
	movaps xmm0, xmm2
	mov edx, eax
	mov eax, [ebp-0x118]
	call _Z27CM_TraceSphereThroughBorderPK11traceWork_tPK15CollisionBorderfP7trace_t
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130:
	mov edx, [ebp-0x114]
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_120
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_40:
	pxor xmm0, xmm0
	movss [ebp-0x12c], xmm0
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_240
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_60:
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x104]
	movss xmm1, dword [ebx]
	movss [ebp-0x120], xmm1
	movss [ebp-0x30], xmm1
	movss xmm2, dword [ebx+0x4]
	movss [ebp-0x124], xmm2
	movss [ebp-0x2c], xmm2
	movss xmm7, dword [ebx+0x8]
	movss xmm1, dword [ebx+0x8c]
	movss xmm6, dword [_data16_80000000]
	movaps xmm2, xmm1
	xorps xmm2, xmm6
	movss xmm3, dword [ebp-0x58]
	movss [ebp-0x128], xmm3
	movss xmm0, dword [ebp-0x12c]
	cmpss xmm0, xmm3, 0x2
	andps xmm1, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm1
	subss xmm7, xmm0
	movss [ebp-0x28], xmm7
	movss xmm4, dword [ebx+0x88]
	movss [ebp-0x10c], xmm4
	movaps xmm0, xmm4
	xorps xmm0, xmm6
	movss xmm2, dword [ebp-0x60]
	movss xmm1, dword [ebp-0x5c]
	movss [ebp-0xf8], xmm1
	movss xmm3, dword [esi]
	movss [ebp-0xf4], xmm3
	movaps xmm5, xmm0
	mulss xmm5, xmm2
	addss xmm5, [ebp-0x120]
	subss xmm5, xmm3
	movss xmm4, dword [esi+0x4]
	movss [ebp-0xf0], xmm4
	movaps xmm4, xmm1
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x124]
	subss xmm4, [ebp-0xf0]
	movss xmm1, dword [esi+0x8]
	movss [ebp-0xec], xmm1
	movaps xmm3, xmm0
	mulss xmm3, [ebp-0x128]
	addss xmm3, xmm7
	subss xmm3, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm5
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x12c]
	ucomiss xmm0, xmm1
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_250
	subss xmm1, [_float_0_12500000]
	movss [ebp-0xe8], xmm1
	xor dword [ebp-0xe8], 0x80000000
	movss xmm1, dword [ebp-0x104]
	mulss xmm1, [ebp-0xe8]
	divss xmm1, dword [ebp-0x108]
	movss [ebp-0xe8], xmm1
	mov eax, [ebp-0x11c]
	ucomiss xmm1, [eax]
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
	mov byte [ebp-0xfa], 0x0
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_320:
	mov edx, [ebp-0x134]
	movss xmm2, dword [edx]
	mov ecx, [ebp-0x138]
	movss xmm1, dword [ecx]
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	subss xmm7, xmm0
	mov ebx, [ebp-0x130]
	movss xmm0, dword [ebx]
	movaps xmm6, xmm5
	mulss xmm6, xmm1
	mulss xmm3, xmm0
	subss xmm6, xmm3
	movaps xmm1, xmm4
	mulss xmm1, xmm0
	mulss xmm5, xmm2
	subss xmm1, xmm5
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x100], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x38]
	addss xmm0, [ebp-0x100]
	movss [ebp-0x100], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x34]
	addss xmm0, [ebp-0x100]
	movss [ebp-0x100], xmm0
	pxor xmm2, xmm2
	movss [ebp-0x12c], xmm2
	ucomiss xmm2, xmm0
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_270
	xor eax, eax
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_410:
	mov byte [ebp-0xf9], 0x1
	mov dword [ebp-0xe4], 0x0
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_420:
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x24]
	mulss xmm6, [ebp-0x20]
	addss xmm0, xmm6
	mulss xmm1, [ebp-0x1c]
	addss xmm0, xmm1
	ucomiss xmm0, [ebp-0x12c]
	jbe _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_280
	lea edx, [ebp-0x30]
	mov ebx, [ebp-0x11c]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, esi
	mov eax, [ebp-0x118]
	movss [ebp-0x158], xmm0
	call _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t
	test eax, eax
	movss xmm0, dword [ebp-0x158]
	jnz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_290
	mov ebx, cm
	mov edx, [ebp-0x88]
	sar edx, 0x3
	mov eax, [ebx+0x68]
	movzx eax, byte [eax+edx]
	mov ecx, [ebp-0x88]
	and ecx, 0x7
	sar eax, cl
	and eax, 0x1
	mov edi, [ebp-0x11c]
	mov [edi+0x2a], al
	pxor xmm0, xmm0
	movss [ebp-0x12c], xmm0
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_290:
	cmp eax, 0x1
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_280
	cmp eax, 0x2
	cmovnz esi, edi
	mov ebx, cm
	mov edx, [ebp-0x88]
	sar edx, 0x3
	mov eax, [ebx+0x68]
	movzx eax, byte [eax+edx]
	mov ecx, [ebp-0x88]
	and ecx, 0x7
	sar eax, cl
	and [ebp-0xf9], al
	mov [ebp-0xe4], esi
	mov eax, 0x1
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_280:
	subss xmm0, [ebp-0x100]
	movss xmm1, dword [ebp-0x108]
	ucomiss xmm1, xmm0
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_300
	test al, al
	jnz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_310
	mov edx, [ebp-0x11c]
	add edx, 0x4
	mov eax, [ebp-0x60]
	mov ecx, [ebp-0x11c]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x5c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x58]
	mov [edx+0x8], eax
	mov byte [ecx+0x2a], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x12c], xmm0
	subss xmm0, [ebp-0xe8]
	movss xmm1, dword [ebp-0x12c]
	cmpss xmm1, xmm0, 0x6
	movss xmm2, dword [ebp-0xe8]
	andps xmm2, xmm1
	movaps xmm0, xmm2
	movss xmm3, dword [ebp-0x12c]
	orps xmm0, xmm3
	movss [ecx], xmm0
	movzx eax, byte [ebp-0xfa]
	mov [ecx+0x29], al
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_250:
	movss xmm3, dword [ebp-0x120]
	subss xmm3, [ebp-0xf4]
	movss xmm1, dword [ebp-0x124]
	subss xmm1, [ebp-0xf0]
	movss [ebp-0x80], xmm1
	subss xmm7, [ebp-0xec]
	movaps xmm1, xmm2
	mulss xmm1, xmm3
	movss xmm0, dword [ebp-0xf8]
	mulss xmm0, [ebp-0x80]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	movss xmm4, dword [ebp-0x10c]
	mulss xmm4, xmm4
	ucomiss xmm0, xmm4
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
	movaps xmm0, xmm1
	xorps xmm0, xmm6
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	addss xmm5, xmm3
	movss xmm4, dword [ebp-0xf8]
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x80]
	movaps xmm3, xmm0
	mulss xmm3, [ebp-0x128]
	addss xmm3, xmm7
	movss xmm0, dword [ebp-0x12c]
	movss [ebp-0xe8], xmm0
	mov byte [ebp-0xfa], 0x1
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_320
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_150:
	movss xmm3, dword [ebp-0x12c]
	maxss xmm3, xmm5
	movaps xmm5, xmm3
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_330
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_310:
	mov ecx, [ebp-0xe4]
	test ecx, ecx
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_340
	mov edx, [ebp-0xe4]
	add edx, 0x4
	mov [ebp-0x98], edx
	mov ecx, [ebp-0xe4]
	add ecx, 0x8
	mov [ebp-0x94], ecx
	mov ebx, [ebp-0xe4]
	mov [ebp-0x74], ebx
	mov edi, ebx
	mov eax, edx
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_400:
	movzx edx, byte [ebp-0xf9]
	movss xmm3, dword [ebp-0x30]
	subss xmm3, [edi]
	movss xmm4, dword [ebp-0x2c]
	subss xmm4, [eax]
	movss xmm5, dword [ebp-0x28]
	subss xmm5, [ecx]
	mov ebx, [ebp-0x130]
	movss xmm7, dword [ebx]
	movaps xmm2, xmm3
	mulss xmm2, xmm7
	movaps xmm0, xmm4
	mov edi, [ebp-0x134]
	mulss xmm0, [edi]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mov eax, [ebp-0x138]
	mulss xmm0, [eax]
	addss xmm2, xmm0
	pxor xmm0, xmm0
	movss [ebp-0x12c], xmm0
	ucomiss xmm2, xmm0
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm0, xmm1
	movss [ebp-0xe0], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	addss xmm0, [ebp-0xe0]
	movss [ebp-0xe0], xmm0
	mov eax, [ebp-0x118]
	movss xmm0, dword [eax+0x88]
	addss xmm0, [_float_0_12500000]
	mulss xmm0, xmm0
	movss xmm6, dword [ebp-0xe0]
	subss xmm6, xmm0
	movss xmm0, dword [ebp-0x12c]
	ucomiss xmm0, xmm6
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_350
	movss xmm0, dword [eax+0x34]
	movss [ebp-0x19c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	mulss xmm6, [ebp-0x19c]
	movaps xmm1, xmm0
	subss xmm1, xmm6
	mulss xmm0, [_float_0_00100000]
	ucomiss xmm0, xmm1
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
	sqrtss xmm6, xmm1
	xorps xmm6, [_data16_80000000]
	subss xmm6, xmm2
	divss xmm6, dword [ebp-0x19c]
	mov eax, [ebp-0x11c]
	ucomiss xmm6, [eax]
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
	mulss xmm7, xmm6
	addss xmm3, xmm7
	movss [eax+0x4], xmm3
	movaps xmm0, xmm6
	mov ecx, [ebp-0x134]
	mulss xmm0, [ecx]
	addss xmm4, xmm0
	movss [eax+0x8], xmm4
	movaps xmm0, xmm6
	mov ebx, [ebp-0x138]
	mulss xmm0, [ebx]
	addss xmm5, xmm0
	movss [eax+0xc], xmm5
	movss xmm1, dword [_float_0_12500000]
	mov edi, [ebp-0x118]
	addss xmm1, [edi+0x88]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss [eax+0x4], xmm1
	movaps xmm2, xmm0
	mulss xmm2, xmm4
	movss [eax+0x8], xmm2
	mulss xmm0, xmm5
	movss [eax+0xc], xmm0
	mulss xmm1, xmm1
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss xmm0, dword [_float_3_00000000]
	subss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	mulss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
	mov [eax+0x2a], dl
	movss [eax], xmm6
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_300:
	mov eax, [ebp-0x74]
	movss xmm0, dword [eax]
	subss xmm0, [edi]
	movss [ebp-0x48], xmm0
	mov edx, [ebp-0x78]
	movss xmm0, dword [edx]
	mov ecx, [ebp-0x98]
	subss xmm0, [ecx]
	movss [ebp-0x44], xmm0
	mov ebx, [ebp-0x94]
	movss xmm0, dword [ebx]
	mov eax, [ebp-0x7c]
	subss xmm0, [eax]
	movss [ebp-0x40], xmm0
	lea edx, [ebp-0x30]
	mov ecx, [ebp-0x11c]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x48]
	mov [esp], eax
	mov ecx, [ebp-0x74]
	mov eax, [ebp-0x118]
	call _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t
	test eax, eax
	jnz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_360
	mov ebx, cm
	mov edx, [ebp-0x84]
	sar edx, 0x3
	mov eax, [ebx+0x68]
	movzx eax, byte [eax+edx]
	mov ecx, [ebp-0x84]
	and ecx, 0x7
	sar eax, cl
	and eax, 0x1
	mov ebx, [ebp-0x11c]
	mov [ebx+0x2a], al
	pxor xmm0, xmm0
	movss [ebp-0x12c], xmm0
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_140:
	movss xmm0, dword [ebp-0xd0]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xd4]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm2, dword [ebp-0xc8]
	subss xmm2, xmm0
	mulss xmm7, xmm4
	movss xmm1, dword [ebp-0xd4]
	mulss xmm1, [ebp-0xd0]
	subss xmm7, xmm1
	movss xmm0, dword [ebp-0xc4]
	subss xmm0, xmm7
	movaps xmm1, xmm6
	mulss xmm1, xmm2
	mulss xmm3, xmm0
	addss xmm1, xmm3
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xcc]
	mulss xmm0, xmm0
	movss [ebp-0xcc], xmm0
	movaps xmm0, xmm2
	subss xmm0, [ebp-0xcc]
	ucomiss xmm3, xmm0
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_370
	mov edx, [ebp-0x118]
	movss xmm3, dword [edx+0x34]
	movaps xmm2, xmm1
	mulss xmm2, xmm1
	mulss xmm0, xmm3
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	movaps xmm5, xmm1
	xorps xmm5, [_data16_80000000]
	sqrtss xmm0, xmm2
	subss xmm5, xmm0
	divss xmm5, xmm3
	ucomiss xmm5, [ebp-0xd8]
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	pxor xmm1, xmm1
	ucomiss xmm1, xmm5
	jae _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	movss xmm2, dword [ebp-0xbc]
	mulss xmm2, xmm5
	addss xmm2, [ebp-0xc0]
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_330
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_270:
	lea edx, [ebp-0x30]
	mov eax, [ebp-0x11c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	mov ecx, esi
	mov eax, [ebp-0x118]
	movss [ebp-0x168], xmm1
	movss [ebp-0x188], xmm6
	movss [ebp-0x198], xmm7
	call _Z25CM_TraceSphereThroughEdgePK11traceWork_tPKfS3_S3_P7trace_t
	test eax, eax
	movss xmm1, dword [ebp-0x168]
	movss xmm6, dword [ebp-0x188]
	movss xmm7, dword [ebp-0x198]
	jnz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_380
	mov ebx, cm
	mov edx, [ebp-0x8c]
	sar edx, 0x3
	mov eax, [ebx+0x68]
	movzx eax, byte [eax+edx]
	mov ecx, [ebp-0x8c]
	and ecx, 0x7
	sar eax, cl
	and eax, 0x1
	mov edx, [ebp-0x11c]
	mov [edx+0x2a], al
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_360:
	cmp eax, 0x1
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_310
	cmp eax, 0x2
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_390
	mov [ebp-0x74], edi
	mov edx, [ebp-0x7c]
	mov [ebp-0x94], edx
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_430:
	mov ebx, cm
	mov edx, [ebp-0x84]
	sar edx, 0x3
	mov eax, [ebx+0x68]
	movzx eax, byte [eax+edx]
	mov ecx, [ebp-0x84]
	and ecx, 0x7
	sar eax, cl
	and [ebp-0xf9], al
	mov edi, [ebp-0x74]
	mov eax, [ebp-0x98]
	mov ecx, [ebp-0x94]
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_400
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_230:
	mov edx, [ebp-0x11c]
	movss [edx], xmm5
	mov byte [edx+0x2a], 0x0
	mov ecx, [eax+0x4]
	mov edx, [ebp-0x11c]
	add edx, 0x4
	mov eax, [eax]
	mov edi, [ebp-0x11c]
	mov [edi+0x4], eax
	mov [edx+0x4], ecx
	mov dword [edx+0x8], 0x0
	mov edx, [ebp-0x114]
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_120
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_380:
	cmp eax, 0x1
	jz _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_410
	cmp eax, 0x2
	mov ecx, [ebp-0x74]
	cmovz ecx, esi
	mov [ebp-0xe4], ecx
	mov ebx, cm
	mov edx, [ebp-0x8c]
	sar edx, 0x3
	mov eax, [ebx+0x68]
	movzx eax, byte [eax+edx]
	mov ecx, [ebp-0x8c]
	and ecx, 0x7
	sar eax, cl
	and al, 0x1
	mov [ebp-0xf9], al
	mov eax, 0x1
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_420
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_340:
	pxor xmm0, xmm0
	movss [ebp-0x12c], xmm0
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_390:
	mov eax, [ebp-0x78]
	mov [ebp-0x98], eax
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_430
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_160:
	movss xmm1, dword [ebp-0x70]
	mulss xmm1, [eax+0x10]
	movss [ebp-0x70], xmm1
	addss xmm1, [eax+0xc]
	movss xmm3, dword [ebp-0xc0]
	subss xmm3, xmm1
	movss [ebp-0xc0], xmm3
	and dword [ebp-0xc0], 0x7fffffff
	movss xmm0, dword [ebp-0xc0]
	mov eax, [ebp-0x118]
	ucomiss xmm0, [eax+0x8c]
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	mov eax, [ebp-0x11c]
	add eax, 0x4
	movss xmm0, dword [ebp-0xd4]
	mov edx, [ebp-0x11c]
	movss [edx+0x4], xmm0
	movss [eax+0x4], xmm4
	mov dword [eax+0x8], 0x0
	mov byte [edx+0x2a], 0x0
	mov dword [edx], 0x0
	mov eax, [ebp-0x118]
	movss xmm0, dword [eax+0x88]
	mulss xmm0, xmm0
	ucomiss xmm0, xmm2
	jbe _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_440:
	mov byte [edx+0x29], 0x1
	mov edx, [ebp-0x114]
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_120
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_370:
	movss xmm0, dword [eax+0xc]
	subss xmm0, [ecx+0x8]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [ecx+0x8c]
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
	mov eax, edx
	add eax, 0x4
	movss xmm1, dword [ebp-0xd4]
	movss [edx+0x4], xmm1
	movss [eax+0x4], xmm4
	mov dword [eax+0x8], 0x0
	mov byte [edx+0x2a], 0x0
	mov dword [edx], 0x0
	movss xmm0, dword [ecx+0x88]
	mulss xmm0, xmm0
	ucomiss xmm0, xmm2
	ja _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_440
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_130
_Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_350:
	sqrtss xmm1, [ebp-0xe0]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mov eax, [ebp-0x11c]
	add eax, 0x4
	mulss xmm3, xmm0
	mov ecx, [ebp-0x11c]
	movss [ecx+0x4], xmm3
	mulss xmm4, xmm0
	movss [eax+0x4], xmm4
	mulss xmm5, xmm0
	movss [eax+0x8], xmm5
	mov [ecx+0x2a], dl
	movss xmm0, dword [ebp-0x12c]
	movss [ecx], xmm0
	mov eax, [ebp-0x118]
	movss xmm0, dword [eax+0x88]
	mulss xmm0, xmm0
	ucomiss xmm0, [ebp-0xe0]
	jbe _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
	mov byte [ecx+0x29], 0x1
	jmp _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t_260
	nop


;CM_MeshTestInLeaf(traceWork_t const*, cLeaf_t*, trace_t*)
_Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov eax, [ebp+0xc]
	movzx ecx, word [eax+0x2]
	test ecx, ecx
	jle _Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_10
	xor edi, edi
	jmp _Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_20
_Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_30:
	add edi, 0x1
	cmp edi, ecx
	jge _Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_10
_Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_20:
	mov edx, [ebp+0xc]
	movzx eax, word [edx]
	lea ebx, [edi+eax]
	shl ebx, 0x5
	mov esi, cm
	add ebx, [esi+0x80]
	movzx eax, word [ebx+0x18]
	lea eax, [eax+eax*8]
	mov edx, [esi+0x1c]
	lea esi, [edx+eax*8]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x80]
	test [esi+0x44], eax
	jz _Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_30
	mov eax, edx
	mov ecx, [ebp+0x10]
	mov edx, ebx
	call _Z27CM_PositionTestInAabbTree_rPK11traceWork_tP17CollisionAabbTreeP7trace_t
	mov eax, [ebp+0x10]
	cmp byte [eax+0x28], 0x0
	jnz _Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_40
	mov esi, [ebp+0xc]
	movzx ecx, word [esi+0x2]
	add edi, 0x1
	cmp edi, ecx
	jl _Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_20
_Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_40:
	mov edx, eax
	mov eax, [esi+0x40]
	mov [edx+0x10], eax
	mov eax, [esi+0x44]
	mov [edx+0x14], eax
	mov [edx+0x18], esi
	jmp _Z17CM_MeshTestInLeafPK11traceWork_tP7cLeaf_tP7trace_t_10


;CM_TraceThroughAabbTree(traceWork_t const*, CollisionAabbTree const*, trace_t*)
_Z23CM_TraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	movzx eax, word [esi+0x18]
	lea eax, [eax+eax*8]
	mov edx, cm
	mov edx, [edx+0x1c]
	lea ebx, [edx+eax*8]
	mov eax, [edi+0x80]
	test [ebx+0x44], eax
	jnz _Z23CM_TraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
_Z23CM_TraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CM_TraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t_10:
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	movss [ebp-0x1c], xmm0
	mov ecx, eax
	mov edx, esi
	mov eax, edi
	call _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t
	movss xmm0, dword [ebp-0x1c]
	mov eax, [ebp+0x10]
	ucomiss xmm0, [eax]
	jbe _Z23CM_TraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t_20
	mov edx, eax
	mov eax, [ebx+0x40]
	mov [edx+0x10], eax
	mov eax, [ebx+0x44]
	mov [edx+0x14], eax
	mov [edx+0x18], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CM_SightTraceThroughAabbTree(traceWork_t const*, CollisionAabbTree const*, trace_t*)
_Z28CM_SightTraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	movzx eax, word [esi+0x18]
	lea eax, [eax+eax*8]
	mov edx, cm
	mov edx, [edx+0x1c]
	lea ebx, [edx+eax*8]
	mov eax, [edi+0x80]
	test [ebx+0x44], eax
	jnz _Z28CM_SightTraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t_10
_Z28CM_SightTraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28CM_SightTraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t_10:
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	movss [ebp-0x1c], xmm0
	mov ecx, eax
	mov edx, esi
	mov eax, edi
	call _Z25CM_TraceThroughAabbTree_rPK11traceWork_tPK17CollisionAabbTreeP7trace_t
	movss xmm0, dword [ebp-0x1c]
	mov eax, [ebp+0x10]
	ucomiss xmm0, [eax]
	jbe _Z28CM_SightTraceThroughAabbTreePK11traceWork_tPK17CollisionAabbTreeP7trace_t_20
	mov edx, eax
	mov eax, [ebx+0x40]
	mov [edx+0x10], eax
	mov eax, [ebx+0x44]
	mov [edx+0x14], eax
	mov [edx+0x18], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of cm_mesh:
SECTION .data


;Initialized constant data of cm_mesh:
SECTION .rdata


;Zero initialized global or static variables of cm_mesh:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_double__2_00000000:		dq 0xc000000000000000	; -2
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_data16_0:		dd 0x0, 0x80000000, 0x0, 0x0	; OWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_12500000:		dd 0x3e000000	; 0.125
_float_0_00000000:		dd 0x0	; 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_float__2_00000000:		dd 0xc0000000	; -2
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_3_00000000:		dd 0x40400000	; 3
_float_0_50000000:		dd 0x3f000000	; 0.5

