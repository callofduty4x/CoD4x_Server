;Imports of fx_update_util:
	extern fx_randomTable
	extern sinf
	extern cosf
	extern iInterlockedIncrement
	extern _Z14UnitQuatToAxisPKfPA3_f
	extern _Z21Vec3Basis_RightHandedPKfPfS1_
	extern floorf
	extern _Z12FX_RandomDiriPf
	extern fx_serverVisClient

;Exports of fx_update_util:
	global _GLOBAL__I__Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	global _Z13FX_CullSpherePK8FxCamerajPKff
	global _Z14FX_GetElemAxisPK9FxElemDefiPK13orientation_tfPA3_f
	global _Z16FX_AddVisBlockerP8FxSystemPKfff
	global _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	global _Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	global _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf
	global _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	global _Z24FX_GetOriginForTrailElemP8FxEffectPK9FxElemDefPK14FxSpatialFrameiPfS7_S7_
	global _Z24FX_ToggleVisBlockerFrameP8FxSystemS0_
	global _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	global _Z29FX_OrientationPosFromWorldPosPK13orientation_tPKfPf


SECTION .text


;global constructors keyed to FX_OffsetSpawnOrigin(FxSpatialFrame const*, FxElemDef const*, int, float*)
_GLOBAL__I__Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


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


;FX_CullSphere(FxCamera const*, unsigned int, float const*, float)
_Z13FX_CullSpherePK8FxCamerajPKff:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x10]
	test esi, esi
	jz _Z13FX_CullSpherePK8FxCamerajPKff_10
	lea eax, [ebx+0x10]
	movss xmm5, dword [edx]
	movss xmm4, dword [edx+0x4]
	movss xmm3, dword [edx+0x8]
	movss xmm0, dword [ebp+0x14]
	movaps xmm2, xmm0
	xorps xmm2, [_data16_80000000]
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x10]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, [ebx+0x1c]
	ucomiss xmm2, xmm0
	jae _Z13FX_CullSpherePK8FxCamerajPKff_20
	mov ecx, ebx
	xor edx, edx
_Z13FX_CullSpherePK8FxCamerajPKff_30:
	add edx, 0x1
	cmp esi, edx
	jz _Z13FX_CullSpherePK8FxCamerajPKff_10
	mov eax, edx
	shl eax, 0x4
	lea eax, [eax+ebx+0x10]
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, [ecx+0x2c]
	add ecx, 0x10
	ucomiss xmm2, xmm0
	jb _Z13FX_CullSpherePK8FxCamerajPKff_30
_Z13FX_CullSpherePK8FxCamerajPKff_20:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
_Z13FX_CullSpherePK8FxCamerajPKff_10:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;FX_GetElemAxis(FxElemDef const*, int, orientation_t const*, float, float (*) [3])
_Z14FX_GetElemAxisPK9FxElemDefiPK13orientation_tfPA3_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x70
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	movss xmm2, dword [ebp+0x14]
	mov esi, [ebp+0x18]
	mov edx, fx_randomTable
	movss xmm0, dword [edx+ecx*4+0x30]
	movss [ebp-0xc], xmm0
	mulss xmm0, [eax+0x64]
	movss [ebp-0xc], xmm0
	addss xmm0, [eax+0x60]
	movss [ebp-0xc], xmm0
	movss xmm1, dword [edx+ecx*4+0x34]
	mulss xmm1, [eax+0x6c]
	addss xmm1, [eax+0x68]
	movss xmm0, dword [edx+ecx*4+0x38]
	movss [ebp-0x10], xmm0
	mulss xmm0, [eax+0x74]
	movss [ebp-0x10], xmm0
	addss xmm0, [eax+0x70]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [edx+ecx*4+0xc]
	mulss xmm0, [eax+0x7c]
	addss xmm0, [eax+0x78]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0xc]
	movss [ebp-0xc], xmm0
	movss xmm0, dword [edx+ecx*4+0x10]
	mulss xmm0, [eax+0x84]
	addss xmm0, [eax+0x80]
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss xmm0, dword [edx+ecx*4+0x14]
	mulss xmm0, [eax+0x8c]
	addss xmm0, [eax+0x88]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x10]
	movss [ebp-0x10], xmm2
	movss [esp], xmm1
	movss [ebp-0x38], xmm1
	call sinf
	fstp dword [ebp-0x14]
	movss xmm1, dword [ebp-0x38]
	movss [esp], xmm1
	call cosf
	fstp dword [ebp-0x18]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x5c]
	movss xmm5, dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x10]
	movss [esp], xmm0
	movss [ebp-0x48], xmm5
	call sinf
	fstp dword [ebp-0x5c]
	movss xmm6, dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x10]
	movss [esp], xmm0
	movss [ebp-0x58], xmm6
	call cosf
	fstp dword [ebp-0x5c]
	movss xmm7, dword [ebp-0x5c]
	movss xmm5, dword [ebp-0x48]
	movss xmm2, dword [ebp-0x18]
	mulss xmm2, xmm5
	movss xmm3, dword [ebp-0x14]
	mulss xmm3, xmm5
	movss xmm4, dword [ebp-0x1c]
	xorps xmm4, [_data16_80000000]
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x18]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x24]
	addss xmm0, xmm1
	movss [esi], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x1c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x28]
	addss xmm0, xmm1
	movss [esi+0x4], xmm0
	mulss xmm2, [ebx+0x14]
	mulss xmm3, [ebx+0x20]
	addss xmm2, xmm3
	mulss xmm4, [ebx+0x2c]
	addss xmm2, xmm4
	movss [esi+0x8], xmm2
	movss xmm6, dword [ebp-0x58]
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm6
	movss xmm2, dword [ebp-0x18]
	mulss xmm2, xmm1
	movss xmm0, dword [ebp-0x14]
	mulss xmm0, xmm7
	subss xmm2, xmm0
	movss xmm3, dword [ebp-0x14]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, xmm7
	addss xmm3, xmm0
	movaps xmm4, xmm5
	mulss xmm4, xmm6
	lea eax, [esi+0xc]
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x18]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x24]
	addss xmm0, xmm1
	movss [esi+0xc], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x1c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x28]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm2, [ebx+0x14]
	mulss xmm3, [ebx+0x20]
	addss xmm2, xmm3
	mulss xmm4, [ebx+0x2c]
	addss xmm2, xmm4
	movss [eax+0x8], xmm2
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm7
	movss xmm2, dword [ebp-0x18]
	mulss xmm2, xmm1
	movss xmm0, dword [ebp-0x14]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm3, dword [ebp-0x14]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, xmm6
	subss xmm3, xmm0
	mulss xmm5, xmm7
	lea eax, [esi+0x18]
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x18]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [ebx+0x24]
	addss xmm0, xmm1
	movss [esi+0x18], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x1c]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [ebx+0x28]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm2, [ebx+0x14]
	mulss xmm3, [ebx+0x20]
	addss xmm2, xmm3
	mulss xmm5, [ebx+0x2c]
	addss xmm2, xmm5
	movss [eax+0x8], xmm2
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;FX_AddVisBlocker(FxSystem*, float const*, float, float)
_Z16FX_AddVisBlockerP8FxSystemPKfff:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x1ac]
	mov eax, [ecx+0x1000]
	add eax, 0x1
	cmp eax, 0xff
	jg _Z16FX_AddVisBlockerP8FxSystemPKfff_10
	shl eax, 0x4
	lea edx, [ecx+eax]
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mulss xmm0, [_float_16_00000000]
	cvttss2si eax, xmm0
	mov [edx+0xc], ax
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp+0x14]
	mulss xmm0, [_float_65536_00000000]
	cvttss2si eax, xmm0
	mov [edx+0xe], ax
	lea eax, [ecx+0x1000]
	mov [esp], eax
	call iInterlockedIncrement
_Z16FX_AddVisBlockerP8FxSystemPKfff_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;FX_GetOrientation(FxElemDef const*, FxSpatialFrame const*, FxSpatialFrame const*, int, orientation_t*)
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x28], eax
	mov ebx, [ebp+0x18]
	mov eax, [esi]
	and eax, 0xc0
	jnz _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_10
	xor eax, eax
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	lea edx, [ebx+0xc]
	mov ecx, 0x3f800000
	mov [ebx+0xc], ecx
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [ebx+0x18]
	mov [ebx+0x18], eax
	mov [edx+0x4], ecx
	mov [edx+0x8], eax
	lea edx, [ebx+0x24]
	mov [ebx+0x24], eax
	mov [edx+0x4], eax
	mov [edx+0x8], ecx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_10:
	cmp eax, 0x40
	jz _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_20
	add eax, 0xffffff80
	jz _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_30
	mov [esp+0xc], ebx
	mov ecx, [ebp-0x28]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	lea eax, [ebx+0xc]
	mov [ebp-0x24], eax
	pxor xmm3, xmm3
	movss [ebx+0xc], xmm3
	lea ecx, [ebx+0x10]
	mov [ebp-0x20], ecx
	movss [ebx+0x10], xmm3
	lea eax, [ebx+0x14]
	mov [ebp-0x1c], eax
	movss [ebx+0x14], xmm3
	mov ecx, [ebp-0x24]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	movss [ebp-0x38], xmm3
	call _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	movss xmm4, dword [ebx+0xc]
	movaps xmm0, xmm4
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movss xmm2, dword [ebx+0x10]
	movaps xmm0, xmm2
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	movss xmm1, dword [ebx+0x14]
	movaps xmm0, xmm1
	addss xmm0, [ebx+0x8]
	movss [ebx+0x8], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	movss xmm5, dword [_data16_80000000]
	movaps xmm0, xmm2
	xorps xmm0, xmm5
	movss xmm3, dword [ebp-0x38]
	ucomiss xmm0, xmm3
	jb _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_40
	movss xmm6, dword [_float_1_00000000]
	movaps xmm1, xmm6
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_110:
	mulss xmm4, xmm1
	mov ecx, [ebp-0x24]
	movss [ecx], xmm4
	movaps xmm0, xmm1
	mov eax, [ebp-0x20]
	mulss xmm0, [eax]
	movss [eax], xmm0
	mov ecx, [ebp-0x1c]
	mulss xmm1, [ecx]
	movss [ecx], xmm1
	pxor xmm4, xmm4
	ucomiss xmm2, xmm4
	jz _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_50
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_90:
	mov eax, [esi]
	and eax, 0x30
	cmp eax, 0x10
	jz _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_60
	movss xmm0, dword [ebx+0x14]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_99900001]
	jb _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_70
	movaps xmm2, xmm4
	movaps xmm1, xmm6
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_100:
	lea edx, [ebx+0x18]
	movaps xmm3, xmm1
	mov esi, [ebp-0x1c]
	mulss xmm3, [esi]
	movaps xmm0, xmm2
	mov eax, [ebp-0x20]
	mulss xmm0, [eax]
	subss xmm3, xmm0
	movss [ebx+0x18], xmm3
	lea ecx, [ebx+0x1c]
	mov esi, [ebp-0x24]
	mulss xmm2, [esi]
	mov eax, [ebp-0x1c]
	movss xmm0, dword [eax]
	mulss xmm0, xmm4
	subss xmm2, xmm0
	movss [ebx+0x1c], xmm2
	lea eax, [ebx+0x20]
	mov esi, [ebp-0x20]
	movss xmm0, dword [esi]
	mulss xmm0, xmm4
	mov esi, [ebp-0x24]
	mulss xmm1, [esi]
	subss xmm0, xmm1
	movss [ebx+0x20], xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm4
	jb _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_80
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_120:
	movaps xmm1, xmm6
	mulss xmm3, xmm6
	movss [edx], xmm3
	movaps xmm0, xmm6
	mulss xmm0, [ecx]
	movss [ecx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	lea eax, [ebx+0x24]
	mov ecx, [ebp-0x20]
	movss xmm1, dword [ecx]
	mulss xmm1, [edx+0x8]
	mov esi, [ebp-0x1c]
	movss xmm0, dword [esi]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss [ebx+0x24], xmm1
	movss xmm1, dword [esi]
	mulss xmm1, [edx]
	mov ecx, [ebp-0x24]
	movss xmm0, dword [ecx]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [ecx]
	mulss xmm1, [edx+0x4]
	mov esi, [ebp-0x20]
	movss xmm0, dword [esi]
	mulss xmm0, [edx]
	subss xmm1, xmm0
	movss [eax+0x8], xmm1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_50:
	jp _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_90
	mov eax, [ebp-0x24]
	mov dword [eax], 0x3f800000
	mov ecx, [ebp-0x20]
	movss [ecx], xmm4
	mov eax, [ebp-0x1c]
	movss [eax], xmm4
	jmp _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_90
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_70:
	movaps xmm2, xmm6
	movaps xmm1, xmm4
	jmp _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_100
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_20:
	lea edx, [edi+0x10]
	mov eax, [edi+0x10]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	lea eax, [ebx+0xc]
	mov [ebp+0xc], eax
	mov [ebp+0x8], edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z14UnitQuatToAxisPKfPA3_f
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_30:
	lea edx, [ecx+0x10]
	mov eax, [ecx+0x10]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	lea eax, [ebx+0xc]
	mov [ebp+0xc], eax
	mov [ebp+0x8], ecx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z14UnitQuatToAxisPKfPA3_f
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_40:
	movss xmm6, dword [_float_1_00000000]
	movaps xmm1, xmm6
	divss xmm1, xmm2
	jmp _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_110
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_80:
	divss xmm6, xmm1
	jmp _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_120
_Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t_60:
	lea eax, [ebx+0x24]
	mov [ebp+0x10], eax
	lea eax, [ebx+0x18]
	mov [ebp+0xc], eax
	mov ecx, [ebp-0x24]
	mov [ebp+0x8], ecx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21Vec3Basis_RightHandedPKfPfS1_


;FX_GetSpawnOrigin(FxSpatialFrame const*, FxElemDef const*, int, float*)
_Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x70
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov edx, fx_randomTable
	movss xmm1, dword [edx+ecx*4+0x18]
	mulss xmm1, [eax+0x3c]
	addss xmm1, [eax+0x38]
	movss xmm2, dword [edx+ecx*4+0x1c]
	mulss xmm2, [eax+0x44]
	addss xmm2, [eax+0x40]
	movss xmm3, dword [edx+ecx*4+0x20]
	mulss xmm3, [eax+0x4c]
	addss xmm3, [eax+0x48]
	test byte [eax], 0x2
	jnz _Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf_10
	lea eax, [esi+0x10]
	addss xmm1, [esi+0x10]
	movss [ebx], xmm1
	addss xmm2, [eax+0x4]
	movss [ebx+0x4], xmm2
	addss xmm3, [eax+0x8]
	movss [ebx+0x8], xmm3
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
_Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf_10:
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], esi
	movss [ebp-0x48], xmm1
	movss [ebp-0x58], xmm2
	movss [ebp-0x68], xmm3
	call _Z14UnitQuatToAxisPKfPA3_f
	lea eax, [esi+0x10]
	movss xmm1, dword [ebp-0x48]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [esi+0x10]
	movss [ebx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x28]
	addss xmm0, [eax+0x4]
	movss [ebx+0x4], xmm0
	mulss xmm1, [ebp-0x24]
	addss xmm1, [eax+0x8]
	movss [ebx+0x8], xmm1
	movss xmm2, dword [ebp-0x58]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x20]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x1c]
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	mulss xmm2, [ebp-0x18]
	addss xmm2, xmm1
	movss [ebx+0x8], xmm2
	movss xmm3, dword [ebp-0x68]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x14]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x10]
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	mulss xmm3, [ebp-0xc]
	addss xmm3, xmm2
	movss [ebx+0x8], xmm3
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FX_GetVelocityAtTime(FxElemDef const*, int, float, float, orientation_t const*, float const*, float*)
_Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0xc]
	movss xmm1, dword [ebp+0x14]
	mov edi, [ebp+0x18]
	mov ebx, [ebp+0x1c]
	mov esi, [ebp+0x20]
	mov eax, fx_randomTable
	movss xmm5, dword [eax+edx*4]
	movss xmm6, dword [eax+edx*4+0x4]
	movss xmm7, dword [eax+edx*4+0x8]
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0xb2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x20], xmm0
	divss xmm1, dword [ebp+0x10]
	mulss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x38], xmm1
	movss [ebp-0x48], xmm5
	movss [ebp-0x58], xmm6
	movss [ebp-0x68], xmm7
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x38]
	movaps xmm4, xmm1
	subss xmm4, xmm0
	mulss xmm4, [ebp-0x20]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm4
	movss [ebp-0x1c], xmm0
	lea ecx, [eax+eax*2]
	shl ecx, 0x5
	mov eax, [ebp+0x8]
	add ecx, [eax+0xb4]
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, 0x2000000
	movss xmm5, dword [ebp-0x48]
	movss xmm6, dword [ebp-0x58]
	movss xmm7, dword [ebp-0x68]
	jz _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf_10
	lea edx, [ecx+0x90]
	lea eax, [ecx+0x30]
	movaps xmm2, xmm5
	mulss xmm2, [eax+0xc]
	addss xmm2, [ecx+0x30]
	mulss xmm2, xmm0
	movaps xmm3, xmm6
	mulss xmm3, [eax+0x10]
	addss xmm3, [eax+0x4]
	mulss xmm3, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [edx+0x10]
	addss xmm0, [edx+0x4]
	mulss xmm0, xmm4
	addss xmm3, xmm0
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x14]
	addss xmm1, [eax+0x8]
	mulss xmm1, [ebp-0x1c]
	movaps xmm0, xmm7
	mulss xmm0, [edx+0x14]
	addss xmm0, [edx+0x8]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edx+0xc]
	addss xmm0, [ecx+0x90]
	mulss xmm0, xmm4
	addss xmm2, xmm0
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm2, xmm0
	addss xmm2, [esi]
	movss [esi], xmm2
	mulss xmm3, xmm0
	addss xmm3, [esi+0x4]
	movss [esi+0x4], xmm3
	mulss xmm1, xmm0
	addss xmm1, [esi+0x8]
	movss [esi+0x8], xmm1
	mov edx, [ebp+0x8]
	mov eax, [edx]
_Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf_10:
	test eax, 0x1000000
	jz _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf_20
	lea eax, [ecx+0x60]
	movaps xmm0, xmm5
	mulss xmm0, [ecx+0xc]
	addss xmm0, [ecx]
	mulss xmm0, [ebp-0x1c]
	mulss xmm5, [eax+0xc]
	addss xmm5, [ecx+0x60]
	mulss xmm5, xmm4
	addss xmm0, xmm5
	movaps xmm5, xmm6
	mulss xmm5, [ecx+0x10]
	addss xmm5, [ecx+0x4]
	mulss xmm5, [ebp-0x1c]
	mulss xmm6, [eax+0x10]
	addss xmm6, [eax+0x4]
	mulss xmm6, xmm4
	addss xmm5, xmm6
	movaps xmm2, xmm7
	mulss xmm2, [ecx+0x14]
	addss xmm2, [ecx+0x8]
	mulss xmm2, [ebp-0x1c]
	mulss xmm7, [eax+0x14]
	addss xmm7, [eax+0x8]
	mulss xmm4, xmm7
	addss xmm2, xmm4
	movaps xmm4, xmm0
	mulss xmm4, [edi+0x10]
	movaps xmm1, xmm5
	mulss xmm1, [edi+0x1c]
	addss xmm4, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edi+0x28]
	addss xmm4, xmm1
	movaps xmm3, xmm0
	mulss xmm3, [edi+0x14]
	movaps xmm1, xmm5
	mulss xmm1, [edi+0x20]
	addss xmm3, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edi+0x2c]
	addss xmm3, xmm1
	mulss xmm0, [edi+0xc]
	mulss xmm5, [edi+0x18]
	addss xmm0, xmm5
	mulss xmm2, [edi+0x24]
	addss xmm0, xmm2
	movss xmm1, dword [_float_1000_00000000]
	mulss xmm0, xmm1
	addss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm4, xmm1
	addss xmm4, [esi+0x4]
	movss [esi+0x4], xmm4
	mulss xmm3, xmm1
	addss xmm3, [esi+0x8]
	movss [esi+0x8], xmm3
_Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_OffsetSpawnOrigin(FxSpatialFrame const*, FxElemDef const*, int, float*)
_Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov eax, [edi]
	and eax, 0x30
	jz _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf_10
	cmp eax, 0x10
	jz _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf_20
	mov eax, fx_randomTable
	movss xmm0, dword [eax+ebx*4+0x2c]
	movss [ebp-0x50], xmm0
	mulss xmm0, [edi+0x54]
	movss [ebp-0x50], xmm0
	addss xmm0, [edi+0x50]
	movss [ebp-0x50], xmm0
	cvtss2sd xmm0, [eax+ebx*4+0x24]
	mulsd xmm0, [_double_6_28318531]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x4c], xmm0
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14UnitQuatToAxisPKfPA3_f
	movss xmm0, dword [ebp-0x4c]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm3, dword [ebp-0x6c]
	mulss xmm3, [ebp-0x50]
	movss xmm0, dword [ebp-0x4c]
	movss [esp], xmm0
	movss [ebp-0x68], xmm3
	call cosf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, [ebp-0x50]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x3c]
	addss xmm0, [esi]
	movss xmm3, dword [ebp-0x68]
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0x30]
	addss xmm0, xmm2
	movss [esi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	addss xmm0, [esi+0x4]
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0x2c]
	addss xmm0, xmm2
	movss [esi+0x4], xmm0
	mulss xmm1, [ebp-0x34]
	addss xmm1, [esi+0x8]
	mulss xmm3, [ebp-0x28]
	addss xmm1, xmm3
	movss [esi+0x8], xmm1
	mov eax, fx_randomTable
	movss xmm1, dword [eax+ebx*4+0x28]
	mulss xmm1, [edi+0x5c]
	addss xmm1, [edi+0x58]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x48]
	addss xmm0, [esi]
	movss [esi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x44]
	addss xmm0, [esi+0x4]
	movss [esi+0x4], xmm0
	mulss xmm1, [ebp-0x40]
	addss xmm1, [esi+0x8]
	movss [esi+0x8], xmm1
_Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf_20:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12FX_RandomDiriPf
	mov eax, fx_randomTable
	movss xmm1, dword [eax+ebx*4+0x2c]
	mulss xmm1, [edi+0x54]
	addss xmm1, [edi+0x50]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	addss xmm0, [esi]
	movss [esi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	addss xmm0, [esi+0x4]
	movss [esi+0x4], xmm0
	mulss xmm1, [ebp-0x1c]
	addss xmm1, [esi+0x8]
	movss [esi+0x8], xmm1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_GetOriginForTrailElem(FxEffect*, FxElemDef const*, FxSpatialFrame const*, int, float*, float*, float*)
_Z24FX_GetOriginForTrailElemP8FxEffectPK9FxElemDefPK14FxSpatialFrameiPfS7_S7_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x10]
	mov ebx, [ebp+0x1c]
	mov esi, [ebp+0x20]
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z14UnitQuatToAxisPKfPA3_f
	mov eax, [ebp-0x30]
	mov [ebx], eax
	mov eax, [ebp-0x2c]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x24]
	mov [esi], eax
	mov eax, [ebp-0x20]
	mov [esi+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x8], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_ToggleVisBlockerFrame(FxSystem*, FxSystem*)
_Z24FX_ToggleVisBlockerFrameP8FxSystemS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x1a8]
	mov edx, [eax+0x1ac]
	mov [eax+0x1a8], edx
	mov [eax+0x1ac], ecx
	mov dword [ecx+0x1000], 0x0
	movzx edx, byte [eax+0x9df]
	mov eax, fx_serverVisClient
	mov [eax], edx
	pop ebp
	ret


;FX_OrientationPosToWorldPos(orientation_t const*, float const*, float*)
_Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0xc]
	addss xmm1, [eax]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x18]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x24]
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0x10]
	addss xmm1, [eax+0x4]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x1c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x28]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0x14]
	addss xmm1, [eax+0x8]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x20]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x2c]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	pop ebp
	ret
	nop


;FX_OrientationPosFromWorldPos(orientation_t const*, float const*, float*)
_Z29FX_OrientationPosFromWorldPosPK13orientation_tPKfPf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm2, dword [edx]
	subss xmm2, [eax]
	movss xmm3, dword [edx+0x4]
	subss xmm3, [eax+0x4]
	movss xmm4, dword [edx+0x8]
	subss xmm4, [eax+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movss [ecx], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x1c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ecx+0x4], xmm0
	mulss xmm2, [eax+0x24]
	mulss xmm3, [eax+0x28]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x2c]
	addss xmm2, xmm4
	movss [ecx+0x8], xmm2
	pop ebp
	ret
	nop


;Initialized global or static variables of fx_update_util:
SECTION .data


;Initialized constant data of fx_update_util:
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


;Zero initialized global or static variables of fx_update_util:
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


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_16_00000000:		dd 0x41800000	; 16
_float_1_00000000:		dd 0x3f800000	; 1
_float_65536_00000000:		dd 0x47800000	; 65536
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_99900001:		dd 0x3f7fbe77	; 0.999
_float_1000_00000000:		dd 0x447a0000	; 1000
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319

