;Imports of com_math:
	extern floorf
	extern sinf
	extern cosf
	extern atan2
	extern _Z7ms_randv
	extern log
	extern atan
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern acosf

;Exports of com_math:
	global _GLOBAL__I_vec2_origin
	global holdrand
	global ClearBounds
	global _Z10AngleDeltaff
	global _Z10AxisToQuatPA3_KfPf
	global _Z10QuatToAxisPKfPA3_f
	global _Z10Vec3RotatePKfPA3_S_Pf
	global _Z10YawVectorsfPfS_
	global _Z10vectopitchPKf
	global _Z11MatrixSet44PA4_fPKfPA3_S1_f
	global _Z11vectoanglesPKfPf
	global _Z12AxisToAnglesPA3_KfPf
	global _Z12ExpandBoundsPKfS0_PfS1_
	global _Z12ExtendBoundsPfS_PKf
	global _Z12RandWithSeedPi
	global _Z12Vec2DistancePKfS0_
	global _Z12YawVectors2DfPfS_
	global _Z13AxisTransposePA3_KfPA3_f
	global _Z13BoundsOverlapPKfS0_S0_S0_
	global _Z13ClearBounds2DPfS_
	global _Z13PointInBoundsPKfS0_S0_
	global _Z13RotationToYawPKf
	global _Z13Vec2NormalizePf
	global _Z14AnglesSubtractPKfS0_Pf
	global _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	global _Z14ColorNormalizePKfPf
	global _Z14DiffTrackAngleffff
	global _Z14GaussianRandomPfS_
	global _Z14MatrixMultiplyPA3_KfS1_PA3_f
	global _Z14UnitQuatToAxisPKfPA3_f
	global _Z14Vec2DistanceSqPKfS0_
	global _Z14vectosignedyawPKf
	global _Z15CullBoxFromConePKfS0_fS0_S0_
	global _Z15IntersectPlanesPPKfPf
	global _Z15MatrixForViewerPA4_fPKfPA3_S1_
	global _Z15MatrixInverse44PKfPf
	global _Z15MatrixTransposePA3_KfPA3_f
	global _Z15PlaneFromPointsPfPKfS1_S1_
	global _Z15Vec2NormalizeToPKfPf
	global _Z15Vec3NormalizeToPKfPf
	global _Z16AddPointToBoundsPKfPfS1_
	global _Z16LinearTrackAngleffff
	global _Z16MatrixIdentity33PA3_f
	global _Z16MatrixIdentity44PA4_f
	global _Z16MatrixMultiply43PA3_KfS1_PA3_f
	global _Z16MatrixMultiply44PA4_KfS1_PA4_f
	global _Z16PointToBoxDistSqPKfS0_S0_
	global _Z16RadiusFromBoundsPKfS0_
	global _Z16UnitQuatToAnglesPKfPf
	global _Z17AngleNormalize360f
	global _Z17AxisTransformVec3PA3_KfPS_Pf
	global _Z17CullBoxFromSpherePKffS0_S0_
	global _Z17MatrixTranspose44PKfPf
	global _Z17UnitQuatToForwardPKfPf
	global _Z18AddPointToBounds2DPKfPfS1_
	global _Z18BoxDistSqrdExceedsPKfS0_S0_f
	global _Z18CullSphereFromConePKfS0_fS0_f
	global _Z18OrthographicMatrixPA4_ffff
	global _Z18RadiusFromBounds2DPKfS0_
	global _Z19ExpandBoundsToWidthPfS_
	global _Z19PerpendicularVectorPKfPf
	global _Z19PitchForYawOnNormalfPKf
	global _Z19ProjectPointOnPlanePKfS0_Pf
	global _Z19Vec3RotateTransposePKfPA3_S_Pf
	global _Z19VectorAngleMultiplyPff
	global _Z20ShrinkBoundsToHeightPfS_
	global _Z20Vec3ProjectionCoordsPKfPiS1_
	global _Z21Vec3Basis_RightHandedPKfPfS1_
	global _Z23FinitePerspectiveMatrixPA4_fffff
	global _Z23MatrixTransformVector43PKfPA3_S_Pf
	global _Z23MatrixTransformVector44PKfPA4_S_Pf
	global _Z23RotatePointAroundVectorPfPKfS1_f
	global _Z24VecNCompareCustomEpsilonPKfS0_fi
	global _Z25ClosestApproachOfTwoLinesPKfS0_S0_S0_PfS1_
	global _Z25GraphGetValueFromFractioniPA2_Kff
	global _Z25InfinitePerspectiveMatrixPA4_ffff
	global _Z25MatrixInverseOrthogonal43PA3_KfPA3_f
	global _Z25NearestPitchAndYawOnPlanePKfS0_Pf
	global _Z29SnapPointToIntersectingPlanesPPKfPfff
	global _Z30MatrixTransposeTransformVectorPKfPA3_S_Pf
	global _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_
	global _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	global _Z32PointInCircleFromUniformDeviatesffPf
	global _Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS_
	global _Z5irandii
	global _Z6Q_acosf
	global _Z6Q_rintf
	global _Z6flrandff
	global _Z7crandomv
	global _Z7randomfv
	global _Z8AxisCopyPA3_KfPA3_f
	global _Z8QuatLerpPKfS0_fPf
	global _Z8vectoyawPKf
	global _Z9AxisClearPA3_f
	global _Z9ByteToDiriPf
	global _Z9ClampChari
	global _Z9DiffTrackffff
	global _Z9DirToBytePKf
	global _Z9QuatSlerpPKfS0_fPf
	global _Z9Rand_Initi
	global _Z9YawToAxisfPA3_f
	global vec3_origin
	global vec2_origin
	global bytedirs
	global identityMatrix44


SECTION .text


;global constructors keyed to vec2_origin
_GLOBAL__I_vec2_origin:
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


;ClearBounds
ClearBounds:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, 0x48000000
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov eax, 0xc8000000
	mov [ecx], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	pop ebp
	ret
	nop


;AngleDelta(float, float)
_Z10AngleDeltaff:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	movss xmm0, dword [ebp+0x8]
	subss xmm0, [ebp+0xc]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x28], xmm0
	call floorf
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebp-0xc]
	mulss xmm0, [_float_360_00000000]
	movss [ebp-0x2c], xmm0
	fld dword [ebp-0x2c]
	leave
	ret
	nop


;AxisToQuat(float const (*) [3], float*)
_Z10AxisToQuatPA3_KfPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x64
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edx, [eax+0xc]
	lea ecx, [eax+0x18]
	movss xmm3, dword [edx+0x8]
	subss xmm3, [ecx+0x4]
	movss [ebp-0x48], xmm3
	movss xmm5, dword [eax+0x18]
	movaps xmm4, xmm5
	subss xmm4, [eax+0x8]
	movss [ebp-0x44], xmm4
	movss xmm2, dword [eax+0x4]
	subss xmm2, [eax+0xc]
	movss [ebp-0x40], xmm2
	movss xmm0, dword [eax]
	movss [ebp-0x4c], xmm0
	addss xmm0, [edx+0x4]
	addss xmm0, [ecx+0x8]
	movss xmm6, dword [_float_1_00000000]
	addss xmm0, xmm6
	movss [ebp-0x3c], xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	movss [ebp-0x50], xmm1
	movaps xmm7, xmm4
	mulss xmm7, xmm4
	movss [ebp-0x54], xmm7
	addss xmm1, xmm7
	movaps xmm7, xmm2
	mulss xmm7, xmm2
	movss [ebp-0x58], xmm7
	addss xmm1, xmm7
	mulss xmm0, xmm0
	addss xmm1, xmm0
	ucomiss xmm1, xmm6
	jb _Z10AxisToQuatPA3_KfPf_10
	xor eax, eax
_Z10AxisToQuatPA3_KfPf_30:
	sqrtss xmm1, xmm1
	movaps xmm0, xmm6
	divss xmm0, xmm1
	shl eax, 0x4
	lea eax, [ebp+eax-0x48]
	movaps xmm1, xmm0
	mulss xmm1, [eax]
	movss [ebx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [ebx+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x8]
	movss [ebx+0x8], xmm1
	mulss xmm0, [eax+0xc]
	movss [ebx+0xc], xmm0
	add esp, 0x64
	pop ebx
	pop ebp
	ret
_Z10AxisToQuatPA3_KfPf_10:
	addss xmm5, [eax+0x8]
	movss [ebp-0x38], xmm5
	movss xmm7, dword [ecx+0x4]
	addss xmm7, [edx+0x8]
	movss [ebp-0x34], xmm7
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [edx+0x4]
	subss xmm0, [eax]
	addss xmm0, xmm6
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm2
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	movss [ebp-0x5c], xmm1
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	movss [ebp-0x60], xmm1
	movss xmm1, dword [ebp-0x5c]
	addss xmm1, [ebp-0x60]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	addss xmm1, [ebp-0x58]
	ucomiss xmm1, xmm6
	jb _Z10AxisToQuatPA3_KfPf_20
	mov eax, 0x1
	jmp _Z10AxisToQuatPA3_KfPf_30
_Z10AxisToQuatPA3_KfPf_20:
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [edx+0x4]
	subss xmm0, [ecx+0x8]
	addss xmm0, xmm6
	movss [ebp-0x28], xmm0
	movss xmm2, dword [eax+0xc]
	addss xmm2, [eax+0x4]
	movss [ebp-0x24], xmm2
	movss [ebp-0x20], xmm5
	movss [ebp-0x1c], xmm3
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	movaps xmm3, xmm2
	mulss xmm3, xmm2
	addss xmm1, xmm3
	addss xmm1, [ebp-0x5c]
	addss xmm1, [ebp-0x50]
	ucomiss xmm1, xmm6
	jb _Z10AxisToQuatPA3_KfPf_40
	mov eax, 0x2
	jmp _Z10AxisToQuatPA3_KfPf_30
_Z10AxisToQuatPA3_KfPf_40:
	movss [ebp-0x18], xmm2
	movss xmm0, dword [edx+0x4]
	subss xmm0, [eax]
	subss xmm0, [ecx+0x8]
	addss xmm0, xmm6
	movss [ebp-0x14], xmm0
	movss [ebp-0x10], xmm7
	movss [ebp-0xc], xmm4
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	addss xmm1, xmm3
	addss xmm1, [ebp-0x60]
	addss xmm1, [ebp-0x54]
	mov eax, 0x3
	jmp _Z10AxisToQuatPA3_KfPf_30
	nop
	add [eax], al


;QuatToAxis(float const*, float (*) [3])
_Z10QuatToAxisPKfPA3_f:
	push ebp
	mov ebp, esp
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm2, dword [eax]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movss [ebp-0x14], xmm0
	movss xmm3, dword [eax+0x4]
	movaps xmm7, xmm3
	mulss xmm7, xmm3
	movss xmm4, dword [eax+0x8]
	movaps xmm5, xmm4
	mulss xmm5, xmm4
	movss xmm6, dword [eax+0xc]
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm7
	addss xmm0, xmm5
	addss xmm1, xmm0
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm1
	movss xmm1, dword [ebp-0x14]
	mulss xmm1, xmm0
	movss [ebp-0x4], xmm1
	mulss xmm7, xmm0
	movss [ebp-0x8], xmm7
	mulss xmm5, xmm0
	mulss xmm2, xmm0
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movaps xmm1, xmm4
	mulss xmm1, xmm2
	movss [ebp-0x10], xmm1
	mulss xmm2, xmm6
	movss [ebp-0xc], xmm2
	mulss xmm3, xmm0
	movaps xmm2, xmm4
	mulss xmm2, xmm3
	mulss xmm3, xmm6
	mulss xmm4, xmm0
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0x8]
	addss xmm0, xmm5
	movss xmm1, dword [_float_1_00000000]
	movaps xmm6, xmm1
	subss xmm6, xmm0
	movss [edx], xmm6
	movaps xmm0, xmm7
	addss xmm0, xmm4
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp-0x10]
	subss xmm0, xmm3
	movss [edx+0x8], xmm0
	lea eax, [edx+0xc]
	subss xmm7, xmm4
	movss [edx+0xc], xmm7
	addss xmm5, [ebp-0x4]
	movaps xmm0, xmm1
	subss xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0xc]
	addss xmm0, xmm2
	movss [eax+0x8], xmm0
	lea eax, [edx+0x18]
	addss xmm3, [ebp-0x10]
	movss [edx+0x18], xmm3
	subss xmm2, [ebp-0xc]
	movss [eax+0x4], xmm2
	movss xmm6, dword [ebp-0x4]
	addss xmm6, [ebp-0x8]
	subss xmm1, xmm6
	movss [eax+0x8], xmm1
	leave
	ret
	nop


;Vec3Rotate(float const*, float const (*) [3], float*)
_Z10Vec3RotatePKfPA3_S_Pf:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss [ebx], xmm1
	lea ecx, [edx+0xc]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0xc]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	lea ecx, [edx+0x18]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x18]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	movss [ebx+0x8], xmm1
	pop ebx
	pop ebp
	ret


;YawVectors(float, float*, float*)
_Z10YawVectorsfPfS_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	cvtss2sd xmm0, [ebp+0x8]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x10], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0x10]
	movss [esp], xmm0
	call cosf
	test ebx, ebx
	jz _Z10YawVectorsfPfS__10
	fst dword [ebx]
	movss xmm0, dword [ebp-0xc]
	movss [ebx+0x4], xmm0
	mov dword [ebx+0x8], 0x0
_Z10YawVectorsfPfS__10:
	test esi, esi
	jz _Z10YawVectorsfPfS__20
	movss xmm0, dword [ebp-0xc]
	movss [esi], xmm0
	fstp dword [ebp-0x1c]
	mov eax, [ebp-0x1c]
	xor eax, 0x80000000
	mov [esi+0x4], eax
	mov dword [esi+0x8], 0x0
	jmp _Z10YawVectorsfPfS__30
_Z10YawVectorsfPfS__20:
	fstp st0
_Z10YawVectorsfPfS__30:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;vectopitch(float const*)
_Z10vectopitchPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax+0x4]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jnz _Z10vectopitchPKf_10
	jp _Z10vectopitchPKf_10
	ucomiss xmm2, [eax]
	jz _Z10vectopitchPKf_20
_Z10vectopitchPKf_10:
	movss xmm0, dword [eax]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	cvtss2sd xmm1, [eax+0x8]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	movsd [esp], xmm1
	movss [ebp-0x18], xmm2
	call atan2
	fstp qword [ebp-0x20]
	movsd xmm0, qword [ebp-0x20]
	mulsd xmm0, [_double__180_00000000]
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss xmm2, dword [ebp-0x18]
	ucomiss xmm0, xmm2
	jb _Z10vectopitchPKf_30
	movaps xmm1, xmm2
_Z10vectopitchPKf_50:
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0x24]
_Z10vectopitchPKf_60:
	mov [ebp-0x24], eax
	fld dword [ebp-0x24]
	leave
	ret
_Z10vectopitchPKf_20:
	jp _Z10vectopitchPKf_10
	movss xmm0, dword [eax+0x8]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm2
	jb _Z10vectopitchPKf_40
	mov eax, 0x42b40000
	mov [ebp-0x24], eax
	fld dword [ebp-0x24]
	leave
	ret
_Z10vectopitchPKf_30:
	movss xmm1, dword [_float_360_00000000]
	jmp _Z10vectopitchPKf_50
_Z10vectopitchPKf_40:
	mov eax, 0x43870000
	jmp _Z10vectopitchPKf_60
	add [eax], al


;MatrixSet44(float (*) [4], float const*, float const (*) [3], float)
_Z11MatrixSet44PA4_fPKfPA3_S1_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	movss xmm1, dword [ebp+0x14]
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	movss [ecx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [ecx+0x4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x8]
	movss [ecx+0x8], xmm0
	xor esi, esi
	mov [ecx+0xc], esi
	lea edx, [ecx+0x10]
	lea ebx, [eax+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0xc]
	movss [ecx+0x10], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	movss [edx+0x4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x8]
	movss [edx+0x8], xmm0
	mov [edx+0xc], esi
	lea edx, [ecx+0x20]
	lea ebx, [eax+0x18]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x18]
	movss [ecx+0x20], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	movss [edx+0x4], xmm0
	mulss xmm1, [ebx+0x8]
	movss [edx+0x8], xmm1
	mov [edx+0xc], esi
	lea edx, [ecx+0x30]
	mov eax, [edi]
	mov [ecx+0x30], eax
	mov eax, [edi+0x4]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x3f800000
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;vectoangles(float const*, float*)
_Z11vectoanglesPKfPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	movss xmm2, dword [ebx+0x4]
	pxor xmm3, xmm3
	ucomiss xmm2, xmm3
	jnz _Z11vectoanglesPKfPf_10
	jp _Z11vectoanglesPKfPf_10
	ucomiss xmm3, [ebx]
	jz _Z11vectoanglesPKfPf_20
_Z11vectoanglesPKfPf_10:
	movss xmm1, dword [ebx]
	cvtss2sd xmm0, xmm1
	movsd [esp+0x8], xmm0
	cvtss2sd xmm0, xmm2
	movsd [esp], xmm0
	movss [ebp-0x28], xmm1
	movss [ebp-0x38], xmm2
	movss [ebp-0x48], xmm3
	call atan2
	fstp qword [ebp-0x50]
	movsd xmm0, qword [ebp-0x50]
	mulsd xmm0, [_double_180_00000000]
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss xmm3, dword [ebp-0x48]
	ucomiss xmm0, xmm3
	movss xmm1, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x38]
	jb _Z11vectoanglesPKfPf_30
	movaps xmm4, xmm3
_Z11vectoanglesPKfPf_70:
	addss xmm4, xmm0
	movss [ebp-0xc], xmm4
	mulss xmm1, xmm1
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	cvtss2sd xmm0, [ebx+0x8]
	cvtss2sd xmm1, xmm1
	movsd [esp+0x8], xmm1
	movsd [esp], xmm0
	movss [ebp-0x48], xmm3
	call atan2
	fstp qword [ebp-0x50]
	movsd xmm0, qword [ebp-0x50]
	mulsd xmm0, [_double__180_00000000]
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss xmm3, dword [ebp-0x48]
	ucomiss xmm0, xmm3
	jb _Z11vectoanglesPKfPf_40
	movaps xmm1, xmm3
_Z11vectoanglesPKfPf_60:
	addss xmm0, xmm1
_Z11vectoanglesPKfPf_80:
	movss [esi], xmm0
	movss xmm0, dword [ebp-0xc]
	movss [esi+0x4], xmm0
	mov dword [esi+0x8], 0x0
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z11vectoanglesPKfPf_20:
	jp _Z11vectoanglesPKfPf_10
	movss xmm0, dword [ebx+0x8]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm3
	jb _Z11vectoanglesPKfPf_50
	movss [ebp-0xc], xmm3
	movss xmm0, dword [_float_90_00000000]
	movss [esi], xmm0
	movss xmm0, dword [ebp-0xc]
	movss [esi+0x4], xmm0
	mov dword [esi+0x8], 0x0
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z11vectoanglesPKfPf_40:
	movss xmm1, dword [_float_360_00000000]
	jmp _Z11vectoanglesPKfPf_60
_Z11vectoanglesPKfPf_30:
	movss xmm4, dword [_float_360_00000000]
	jmp _Z11vectoanglesPKfPf_70
_Z11vectoanglesPKfPf_50:
	movss [ebp-0xc], xmm3
	movss xmm0, dword [_float_270_00000000]
	jmp _Z11vectoanglesPKfPf_80


;AxisToAngles(float const (*) [3], float*)
_Z12AxisToAnglesPA3_KfPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z11vectoanglesPKfPf
	lea eax, [ebx+0xc]
	movss xmm0, dword [ebx+0xc]
	movss [ebp-0x14], xmm0
	movss xmm2, dword [eax+0x4]
	movss [ebp-0x18], xmm2
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [esi+0x4]
	xorps xmm0, [_data16_80000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x24], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x28]
	movss xmm2, dword [ebp-0x24]
	movss [esp], xmm2
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x14]
	mulss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, [ebp-0x28]
	movss xmm2, dword [ebp-0x20]
	subss xmm2, xmm0
	movss [ebp-0x20], xmm2
	movss xmm0, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x14]
	mulss xmm2, xmm0
	mulss xmm1, [ebp-0x18]
	movss [ebp-0x18], xmm1
	addss xmm2, xmm1
	movss [ebp-0xc], xmm2
	movss xmm0, dword [esi]
	xorps xmm0, [_data16_80000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x10], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x10]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	movss xmm2, dword [ebp-0x1c]
	mulss xmm2, [ebp-0x2c]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm1
	addss xmm2, xmm0
	mulss xmm1, [ebp-0x1c]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [ebp-0x2c]
	subss xmm1, xmm0
	pxor xmm3, xmm3
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, xmm3
	jnz _Z12AxisToAnglesPA3_KfPf_10
	jp _Z12AxisToAnglesPA3_KfPf_10
	ucomiss xmm2, xmm3
	jnz _Z12AxisToAnglesPA3_KfPf_20
	jp _Z12AxisToAnglesPA3_KfPf_20
	xorps xmm1, [_data16_80000000]
	ucomiss xmm1, xmm3
	jb _Z12AxisToAnglesPA3_KfPf_30
	movss xmm0, dword [_float_90_00000000]
	ucomiss xmm3, [ebp-0xc]
	jbe _Z12AxisToAnglesPA3_KfPf_40
_Z12AxisToAnglesPA3_KfPf_60:
	lea eax, [esi+0x8]
	ucomiss xmm3, xmm0
	ja _Z12AxisToAnglesPA3_KfPf_50
	movss xmm1, dword [_float__180_00000000]
_Z12AxisToAnglesPA3_KfPf_80:
	addss xmm0, xmm1
	movss [eax], xmm0
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z12AxisToAnglesPA3_KfPf_20:
	movss xmm0, dword [ebp-0xc]
_Z12AxisToAnglesPA3_KfPf_10:
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm0, xmm2
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp], xmm1
	movss [ebp-0x48], xmm3
	call atan2
	fstp qword [ebp-0x58]
	movsd xmm0, qword [ebp-0x58]
	mulsd xmm0, [_double__180_00000000]
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss xmm3, dword [ebp-0x48]
_Z12AxisToAnglesPA3_KfPf_70:
	ucomiss xmm3, [ebp-0xc]
	ja _Z12AxisToAnglesPA3_KfPf_60
_Z12AxisToAnglesPA3_KfPf_40:
	xorps xmm0, [_data16_80000000]
	movss [esi+0x8], xmm0
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z12AxisToAnglesPA3_KfPf_30:
	movss xmm0, dword [_float__90_00000000]
	jmp _Z12AxisToAnglesPA3_KfPf_70
_Z12AxisToAnglesPA3_KfPf_50:
	movss xmm1, dword [_float_180_00000000]
	jmp _Z12AxisToAnglesPA3_KfPf_80


;ExpandBounds(float const*, float const*, float*, float*)
_Z12ExpandBoundsPKfS0_PfS1_:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov edx, [ebp+0x14]
	movss xmm1, dword [ecx]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	jbe _Z12ExpandBoundsPKfS0_PfS1__10
	movss [eax], xmm1
_Z12ExpandBoundsPKfS0_PfS1__10:
	movss xmm0, dword [ebx]
	ucomiss xmm0, [edx]
	jbe _Z12ExpandBoundsPKfS0_PfS1__20
	movss [edx], xmm0
_Z12ExpandBoundsPKfS0_PfS1__20:
	movss xmm1, dword [ecx+0x4]
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, xmm1
	jbe _Z12ExpandBoundsPKfS0_PfS1__30
	movss [eax+0x4], xmm1
_Z12ExpandBoundsPKfS0_PfS1__30:
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, [edx+0x4]
	jbe _Z12ExpandBoundsPKfS0_PfS1__40
	movss [edx+0x4], xmm0
_Z12ExpandBoundsPKfS0_PfS1__40:
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, xmm1
	jbe _Z12ExpandBoundsPKfS0_PfS1__50
	movss [eax+0x8], xmm1
_Z12ExpandBoundsPKfS0_PfS1__50:
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [edx+0x8]
	jbe _Z12ExpandBoundsPKfS0_PfS1__60
	movss [edx+0x8], xmm0
_Z12ExpandBoundsPKfS0_PfS1__60:
	pop ebx
	pop ebp
	ret
	nop


;ExtendBounds(float*, float*, float const*)
_Z12ExtendBoundsPfS_PKf:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	movss xmm0, dword [edx]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z12ExtendBoundsPfS_PKf_10
	addss xmm0, [eax]
	movss [eax], xmm0
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, xmm1
	jbe _Z12ExtendBoundsPfS_PKf_20
_Z12ExtendBoundsPfS_PKf_40:
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, xmm1
	jbe _Z12ExtendBoundsPfS_PKf_30
_Z12ExtendBoundsPfS_PKf_50:
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	pop ebp
	ret
_Z12ExtendBoundsPfS_PKf_10:
	addss xmm0, [ecx]
	movss [ecx], xmm0
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, xmm1
	ja _Z12ExtendBoundsPfS_PKf_40
_Z12ExtendBoundsPfS_PKf_20:
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, xmm1
	ja _Z12ExtendBoundsPfS_PKf_50
_Z12ExtendBoundsPfS_PKf_30:
	addss xmm0, [ecx+0x8]
	movss [ecx+0x8], xmm0
	pop ebp
	ret
	nop
	add [eax], al


;RandWithSeed(int*)
_Z12RandWithSeedPi:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebx]
	mov eax, ecx
	shl eax, 0x9
	sub eax, ecx
	lea eax, [ecx+eax*4]
	mov edx, eax
	shl edx, 0x9
	sub edx, eax
	lea edx, [ecx+edx*2]
	mov eax, edx
	shl eax, 0x5
	add edx, eax
	shl edx, 0x2
	sub edx, ecx
	lea edx, [ecx+edx*4]
	lea eax, [edx+0x3039]
	mov [ebx], eax
	add edx, 0x13038
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x10
	and eax, 0x7fff
	pop ebx
	pop ebp
	ret
	nop


;Vec2Distance(float const*, float const*)
_Z12Vec2DistancePKfS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax]
	subss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret


;YawVectors2D(float, float*, float*)
_Z12YawVectors2DfPfS_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	cvtss2sd xmm0, [ebp+0x8]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x10], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0x10]
	movss [esp], xmm0
	call cosf
	test ebx, ebx
	jz _Z12YawVectors2DfPfS__10
	fst dword [ebx]
	movss xmm0, dword [ebp-0xc]
	movss [ebx+0x4], xmm0
_Z12YawVectors2DfPfS__10:
	test esi, esi
	jz _Z12YawVectors2DfPfS__20
	movss xmm0, dword [ebp-0xc]
	movss [esi], xmm0
	fstp dword [ebp-0x1c]
	mov eax, [ebp-0x1c]
	xor eax, 0x80000000
	mov [esi+0x4], eax
	jmp _Z12YawVectors2DfPfS__30
_Z12YawVectors2DfPfS__20:
	fstp st0
_Z12YawVectors2DfPfS__30:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;AxisTranspose(float const (*) [3], float (*) [3])
_Z13AxisTransposePA3_KfPA3_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx], eax
	lea edi, [edx+0xc]
	mov eax, [edx+0xc]
	mov [ecx+0x4], eax
	lea esi, [edx+0x18]
	mov eax, [edx+0x18]
	mov [ecx+0x8], eax
	lea ebx, [ecx+0xc]
	mov eax, [edx+0x4]
	mov [ecx+0xc], eax
	mov eax, [edi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x4]
	mov [ebx+0x8], eax
	lea ebx, [ecx+0x18]
	mov eax, [edx+0x8]
	mov [ecx+0x18], eax
	mov eax, [edi+0x8]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;BoundsOverlap(float const*, float const*, float const*, float const*)
_Z13BoundsOverlapPKfS0_S0_S0_:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ebp+0x14]
	movss xmm0, dword [edx]
	ucomiss xmm0, [eax]
	ja _Z13BoundsOverlapPKfS0_S0_S0__10
	movss xmm0, dword [ecx]
	ucomiss xmm0, [ebx]
	ja _Z13BoundsOverlapPKfS0_S0_S0__10
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [eax+0x4]
	ja _Z13BoundsOverlapPKfS0_S0_S0__10
	movss xmm0, dword [ecx+0x4]
	ucomiss xmm0, [ebx+0x4]
	ja _Z13BoundsOverlapPKfS0_S0_S0__10
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [eax+0x8]
	jbe _Z13BoundsOverlapPKfS0_S0_S0__20
_Z13BoundsOverlapPKfS0_S0_S0__10:
	xor eax, eax
	pop ebx
	pop ebp
	ret
_Z13BoundsOverlapPKfS0_S0_S0__20:
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [ebx+0x8]
	ja _Z13BoundsOverlapPKfS0_S0_S0__10
	mov eax, 0x1
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;ClearBounds2D(float*, float*)
_Z13ClearBounds2DPfS_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, 0x48000000
	mov [edx], eax
	mov [edx+0x4], eax
	mov eax, 0xc8000000
	mov [ecx], eax
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop
	add [eax], al


;PointInBounds(float const*, float const*, float const*)
_Z13PointInBoundsPKfS0_S0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx]
	ucomiss xmm0, xmm1
	ja _Z13PointInBoundsPKfS0_S0__10
	ucomiss xmm1, [ecx]
	ja _Z13PointInBoundsPKfS0_S0__10
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, xmm1
	ja _Z13PointInBoundsPKfS0_S0__10
	ucomiss xmm1, [ecx+0x4]
	ja _Z13PointInBoundsPKfS0_S0__10
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, xmm1
	jbe _Z13PointInBoundsPKfS0_S0__20
_Z13PointInBoundsPKfS0_S0__10:
	xor eax, eax
	pop ebp
	ret
_Z13PointInBoundsPKfS0_S0__20:
	ucomiss xmm1, [ecx+0x8]
	ja _Z13PointInBoundsPKfS0_S0__10
	mov eax, 0x1
	pop ebp
	ret
	nop
	add [eax], al


;RotationToYaw(float const*)
_Z13RotationToYawPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x8]
	movss xmm3, dword [eax]
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	movss xmm4, dword [eax+0x4]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm0, xmm2
	movss xmm1, dword [_float_2_00000000]
	divss xmm1, xmm0
	mulss xmm2, xmm1
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	mulss xmm3, xmm4
	mulss xmm1, xmm3
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp], xmm1
	call atan2
	fstp qword [ebp-0x20]
	movsd xmm0, qword [ebp-0x20]
	mulsd xmm0, [_double_57_29577951]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	fld dword [ebp-0xc]
	leave
	ret


;Vec2Normalize(float*)
_Z13Vec2NormalizePf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax]
	lea edx, [eax+0x4]
	movss xmm0, dword [eax+0x4]
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z13Vec2NormalizePf_10
	movss xmm0, dword [_float_1_00000000]
	mulss xmm2, xmm0
	movss [eax], xmm2
	mulss xmm0, [edx]
	movss [edx], xmm0
	movss [ebp-0xc], xmm1
	fld dword [ebp-0xc]
	leave
	ret
_Z13Vec2NormalizePf_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm2, xmm0
	movss [eax], xmm2
	mulss xmm0, [edx]
	movss [edx], xmm0
	movss [ebp-0xc], xmm1
	fld dword [ebp-0xc]
	leave
	ret
	nop


;AnglesSubtract(float const*, float const*, float*)
_Z14AnglesSubtractPKfS0_Pf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	movss xmm0, dword [ebx]
	subss xmm0, [esi]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x1c]
	mulss xmm0, [_float_360_00000000]
	movss [edi], xmm0
	movss xmm0, dword [ebx+0x4]
	subss xmm0, [esi+0x4]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x20]
	mulss xmm0, [_float_360_00000000]
	movss [edi+0x4], xmm0
	movss xmm0, dword [ebx+0x8]
	subss xmm0, [esi+0x8]
	mulss xmm0, [_float_0_00277778]
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x24]
	mulss xmm0, [_float_360_00000000]
	movss [edi+0x8], xmm0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;BoxOnPlaneSide(float const*, float const*, cplane_s const*)
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	movzx eax, byte [edx+0x10]
	cmp al, 0x2
	ja _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_10
	movss xmm3, dword [edx+0xc]
	movzx eax, al
	shl eax, 0x2
	movss xmm0, dword [ecx+eax]
	ucomiss xmm0, xmm3
	jae _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_20
	ucomiss xmm3, [ebx+eax]
	sbb edx, edx
	not edx
	add edx, 0x3
	mov eax, edx
	pop ebx
	pop ebp
	ret
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_10:
	movzx eax, byte [edx+0x11]
	cmp eax, 0x7
	jbe _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_30
	pxor xmm3, xmm3
	movaps xmm4, xmm3
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40:
	movss xmm0, dword [edx+0xc]
	xor edx, edx
	ucomiss xmm4, xmm0
	setae dl
	mov eax, edx
	or eax, 0x2
	ucomiss xmm0, xmm3
	cmova edx, eax
	mov eax, edx
	pop ebx
	pop ebp
	ret
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_30:
	jmp dword [eax*4+_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_jumptab_0]
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_50:
	movss xmm3, dword [edx]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ebx]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x8]
	addss xmm4, xmm0
	mulss xmm3, [ecx]
	mulss xmm1, [ecx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [ecx+0x8]
	addss xmm3, xmm2
	jmp _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_120:
	movss xmm3, dword [edx]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ecx]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x8]
	addss xmm4, xmm0
	mulss xmm3, [ebx]
	mulss xmm1, [ebx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [ebx+0x8]
	addss xmm3, xmm2
	jmp _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_110:
	movss xmm3, dword [edx]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ebx]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x8]
	addss xmm4, xmm0
	mulss xmm3, [ecx]
	mulss xmm1, [ebx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [ebx+0x8]
	addss xmm3, xmm2
	jmp _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_100:
	movss xmm3, dword [edx]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ecx]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x8]
	addss xmm4, xmm0
	mulss xmm3, [ebx]
	mulss xmm1, [ecx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [ebx+0x8]
	addss xmm3, xmm2
	jmp _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_90:
	movss xmm3, dword [edx]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ebx]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x8]
	addss xmm4, xmm0
	mulss xmm3, [ecx]
	mulss xmm1, [ecx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [ebx+0x8]
	addss xmm3, xmm2
	jmp _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_80:
	movss xmm3, dword [edx]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ecx]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x8]
	addss xmm4, xmm0
	mulss xmm3, [ebx]
	mulss xmm1, [ebx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [ecx+0x8]
	addss xmm3, xmm2
	jmp _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_70:
	movss xmm3, dword [edx]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ebx]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x8]
	addss xmm4, xmm0
	mulss xmm3, [ecx]
	mulss xmm1, [ebx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [ecx+0x8]
	addss xmm3, xmm2
	jmp _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_60:
	movss xmm3, dword [edx]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ecx]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x8]
	addss xmm4, xmm0
	mulss xmm3, [ebx]
	mulss xmm1, [ecx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [ecx+0x8]
	addss xmm3, xmm2
	jmp _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_40
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_20:
	mov edx, 0x1
	mov eax, edx
	pop ebx
	pop ebp
	ret
	nop
	
	
_Z14BoxOnPlaneSidePKfS0_PK8cplane_s_jumptab_0:
	dd _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_50
	dd _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_60
	dd _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_70
	dd _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_80
	dd _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_90
	dd _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_100
	dd _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_110
	dd _Z14BoxOnPlaneSidePKfS0_PK8cplane_s_120


;ColorNormalize(float const*, float*)
_Z14ColorNormalizePKfPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm1, dword [eax]
	lea ebx, [eax+0x4]
	movss xmm0, dword [eax+0x4]
	maxss xmm0, xmm1
	lea ecx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	maxss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jnz _Z14ColorNormalizePKfPf_10
	jp _Z14ColorNormalizePKfPf_10
	mov eax, 0x3f800000
	mov [edx+0x8], eax
	mov [edx+0x4], eax
	mov [edx], eax
	movaps xmm2, xmm0
	movss [ebp-0x8], xmm2
	fld dword [ebp-0x8]
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z14ColorNormalizePKfPf_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	mulss xmm1, xmm0
	movss [edx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx]
	movss [edx+0x4], xmm1
	mulss xmm0, [ecx]
	movss [edx+0x8], xmm0
	movss [ebp-0x8], xmm2
	fld dword [ebp-0x8]
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;DiffTrackAngle(float, float, float, float)
_Z14DiffTrackAngleffff:
	push ebp
	mov ebp, esp
	sub esp, 0x58
	movss xmm1, dword [ebp+0x8]
	movss xmm5, dword [ebp+0xc]
	movaps xmm0, xmm1
	subss xmm0, xmm5
	ucomiss xmm0, [_float_180_00000000]
	jbe _Z14DiffTrackAngleffff_10
	movss xmm6, dword [_float_360_00000000]
_Z14DiffTrackAngleffff_20:
	subss xmm1, xmm6
	movaps xmm0, xmm1
	subss xmm0, xmm5
	ucomiss xmm0, [_float_180_00000000]
	ja _Z14DiffTrackAngleffff_20
_Z14DiffTrackAngleffff_70:
	movss xmm2, dword [_float__180_00000000]
	ucomiss xmm2, xmm0
	jbe _Z14DiffTrackAngleffff_30
_Z14DiffTrackAngleffff_40:
	addss xmm1, xmm6
	movaps xmm0, xmm1
	subss xmm0, xmm5
	ucomiss xmm2, xmm0
	ja _Z14DiffTrackAngleffff_40
_Z14DiffTrackAngleffff_30:
	movaps xmm3, xmm0
	mulss xmm3, [ebp+0x10]
	mulss xmm3, [ebp+0x14]
	movss xmm2, dword [_data16_7fffffff]
	movaps xmm4, xmm0
	andps xmm4, xmm2
	ucomiss xmm4, [_float_0_00100000]
	jbe _Z14DiffTrackAngleffff_50
	movaps xmm0, xmm3
	andps xmm0, xmm2
	ucomiss xmm0, xmm4
	ja _Z14DiffTrackAngleffff_50
	movaps xmm0, xmm5
	addss xmm0, xmm3
	jmp _Z14DiffTrackAngleffff_60
_Z14DiffTrackAngleffff_50:
	movaps xmm0, xmm1
_Z14DiffTrackAngleffff_60:
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x28], xmm0
	movss [ebp-0x38], xmm6
	call floorf
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebp-0xc]
	movss xmm6, dword [ebp-0x38]
	mulss xmm0, xmm6
	movss [ebp-0x3c], xmm0
	fld dword [ebp-0x3c]
	leave
	ret
_Z14DiffTrackAngleffff_10:
	movss xmm6, dword [_float_360_00000000]
	jmp _Z14DiffTrackAngleffff_70


;GaussianRandom(float*, float*)
_Z14GaussianRandomPfS_:
	push ebp
	mov ebp, esp
	sub esp, 0x58
_Z14GaussianRandomPfS__10:
	call _Z7ms_randv
	cvtsi2ss xmm3, eax
	mulss xmm3, [_float_0_00003052]
	addss xmm3, xmm3
	subss xmm3, [_float_1_00000000]
	movss [ebp-0x38], xmm3
	call _Z7ms_randv
	cvtsi2ss xmm2, eax
	mulss xmm2, [_float_0_00003052]
	addss xmm2, xmm2
	subss xmm2, [_float_1_00000000]
	movss xmm3, dword [ebp-0x38]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm1, xmm0
	ucomiss xmm1, [_float_1_00000000]
	ja _Z14GaussianRandomPfS__10
	cvtss2sd xmm1, xmm1
	movsd [ebp-0x10], xmm1
	movsd [esp], xmm1
	movss [ebp-0x28], xmm2
	call log
	fstp qword [ebp-0x40]
	movsd xmm0, qword [ebp-0x40]
	mulsd xmm0, [_double__2_00000000]
	divsd xmm0, qword [ebp-0x10]
	cvtsd2ss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss xmm3, dword [ebp-0x38]
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	movss xmm2, dword [ebp-0x28]
	mulss xmm1, xmm2
	mov eax, [ebp+0xc]
	movss [eax], xmm1
	leave
	ret
	nop


;MatrixMultiply(float const (*) [3], float const (*) [3], float (*) [3])
_Z14MatrixMultiplyPA3_KfS1_PA3_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	lea ecx, [edx+0xc]
	mov [ebp-0x14], ecx
	lea edi, [edx+0x18]
	mov [ebp-0x10], edi
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	movss [ebx], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	movss [ebx+0x8], xmm1
	lea esi, [ebx+0xc]
	lea ecx, [eax+0xc]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, [edx]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	movss [ebx+0xc], xmm1
	movss xmm1, dword [eax+0xc]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [ecx+0x4]
	mov edi, [ebp-0x14]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mov edi, [ebp-0x10]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss [esi+0x4], xmm1
	movss xmm1, dword [eax+0xc]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [ecx+0x4]
	mov edi, [ebp-0x14]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mov ecx, [ebp-0x10]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	movss [esi+0x8], xmm1
	lea edi, [ebx+0x18]
	lea ecx, [eax+0x18]
	movss xmm1, dword [eax+0x18]
	mulss xmm1, [edx]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	movss [ebx+0x18], xmm1
	movss xmm1, dword [eax+0x18]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [ecx+0x4]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mov ebx, [ebp-0x10]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss [edi+0x4], xmm1
	movss xmm1, dword [eax+0x18]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [ecx+0x4]
	mov eax, [ebp-0x14]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss [edi+0x8], xmm1
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;UnitQuatToAxis(float const*, float (*) [3])
_Z14UnitQuatToAxisPKfPA3_f:
	push ebp
	mov ebp, esp
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm6, dword [eax]
	movaps xmm4, xmm6
	addss xmm4, xmm6
	mulss xmm6, xmm4
	movss xmm5, dword [eax+0x4]
	movaps xmm7, xmm4
	mulss xmm7, xmm5
	movss xmm1, dword [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	movss [ebp-0xc], xmm0
	movss xmm3, dword [eax+0xc]
	mulss xmm4, xmm3
	movaps xmm0, xmm5
	addss xmm0, xmm5
	mulss xmm5, xmm0
	movaps xmm2, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x8], xmm2
	mulss xmm0, xmm3
	movss [ebp-0x4], xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm1
	mulss xmm3, xmm0
	movss [ebp-0x10], xmm3
	mulss xmm1, xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
	subss xmm3, xmm0
	movss [edx], xmm3
	movss xmm0, dword [ebp-0x10]
	addss xmm0, xmm7
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp-0xc]
	subss xmm0, [ebp-0x4]
	movss [edx+0x8], xmm0
	lea eax, [edx+0xc]
	subss xmm7, [ebp-0x10]
	movss [edx+0xc], xmm7
	addss xmm1, xmm6
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x8]
	addss xmm0, xmm4
	movss [eax+0x8], xmm0
	lea eax, [edx+0x18]
	movss xmm0, dword [ebp-0xc]
	addss xmm0, [ebp-0x4]
	movss [edx+0x18], xmm0
	movss xmm3, dword [ebp-0x8]
	subss xmm3, xmm4
	movss [eax+0x4], xmm3
	addss xmm6, xmm5
	subss xmm2, xmm6
	movss [eax+0x8], xmm2
	leave
	ret


;Vec2DistanceSq(float const*, float const*)
_Z14Vec2DistanceSqPKfS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret


;vectosignedyaw(float const*)
_Z14vectosignedyawPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax+0x4]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jnz _Z14vectosignedyawPKf_10
	jp _Z14vectosignedyawPKf_10
	ucomiss xmm0, [eax]
	jz _Z14vectosignedyawPKf_20
_Z14vectosignedyawPKf_10:
	cvtss2sd xmm0, [eax]
	movsd [esp+0x8], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp], xmm1
	call atan2
	fstp qword [ebp-0x18]
	movsd xmm0, qword [ebp-0x18]
	mulsd xmm0, [_double_180_00000000]
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	mov eax, [ebp-0xc]
	mov [ebp-0xc], eax
	fld dword [ebp-0xc]
	leave
	ret
_Z14vectosignedyawPKf_20:
	jp _Z14vectosignedyawPKf_10
	movss [ebp-0xc], xmm0
	mov eax, [ebp-0xc]
	mov [ebp-0xc], eax
	fld dword [ebp-0xc]
	leave
	ret


;CullBoxFromCone(float const*, float const*, float, float const*, float const*)
_Z15CullBoxFromConePKfS0_fS0_S0_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x14]
	mov ecx, [ebp+0x18]
	movss xmm5, dword [eax]
	subss xmm5, [edx]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x10], xmm0
	subss xmm0, [edx+0x4]
	movss [ebp-0x10], xmm0
	movss xmm1, dword [eax+0x8]
	movss [ebp-0x14], xmm1
	subss xmm1, [edx+0x8]
	movss [ebp-0x14], xmm1
	movss xmm3, dword [ecx]
	movss [ebp-0x28], xmm3
	movss xmm0, dword [ebx]
	movss [ebp-0x1c], xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z15CullBoxFromConePKfS0_fS0_S0__10
	movss xmm0, dword [_float_1_00000000]
_Z15CullBoxFromConePKfS0_fS0_S0__80:
	mulss xmm0, [ebp-0x28]
	movaps xmm2, xmm5
	subss xmm2, xmm0
	movss xmm3, dword [ecx+0x4]
	movss [ebp-0x24], xmm3
	movss xmm0, dword [ebx+0x4]
	movss [ebp-0x18], xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z15CullBoxFromConePKfS0_fS0_S0__20
	movss xmm0, dword [_float_1_00000000]
_Z15CullBoxFromConePKfS0_fS0_S0__70:
	mulss xmm0, [ebp-0x24]
	movss xmm6, dword [ebp-0x10]
	subss xmm6, xmm0
	movss xmm3, dword [ecx+0x8]
	movss [ebp-0x20], xmm3
	movss xmm7, dword [ebx+0x8]
	pxor xmm0, xmm0
	ucomiss xmm7, xmm0
	jb _Z15CullBoxFromConePKfS0_fS0_S0__30
	movss xmm0, dword [_float_1_00000000]
_Z15CullBoxFromConePKfS0_fS0_S0__60:
	mulss xmm0, [ebp-0x20]
	movss xmm4, dword [ebp-0x14]
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x1c]
	mulss xmm3, xmm2
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm4
	addss xmm3, xmm0
	pxor xmm1, xmm1
	ucomiss xmm3, xmm1
	jb _Z15CullBoxFromConePKfS0_fS0_S0__40
_Z15CullBoxFromConePKfS0_fS0_S0__90:
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z15CullBoxFromConePKfS0_fS0_S0__40:
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm0
	addss xmm1, xmm2
	movss xmm2, dword [ebp-0x18]
	mulss xmm2, xmm0
	addss xmm2, xmm6
	mulss xmm0, xmm7
	addss xmm4, xmm0
	movss [ebp-0xc], xmm4
	movaps xmm4, xmm1
	mulss xmm4, xmm1
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, xmm0
	addss xmm4, xmm0
	movss xmm0, dword [ebp+0x10]
	mulss xmm0, xmm0
	movss xmm6, dword [_float_1_00000000]
	subss xmm6, xmm0
	mulss xmm0, xmm4
	mulss xmm3, xmm3
	mulss xmm3, xmm6
	ucomiss xmm3, xmm0
	jb _Z15CullBoxFromConePKfS0_fS0_S0__50
	xor eax, eax
_Z15CullBoxFromConePKfS0_fS0_S0__100:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z15CullBoxFromConePKfS0_fS0_S0__30:
	movss xmm0, dword [_float__1_00000000]
	jmp _Z15CullBoxFromConePKfS0_fS0_S0__60
_Z15CullBoxFromConePKfS0_fS0_S0__20:
	movss xmm0, dword [_float__1_00000000]
	jmp _Z15CullBoxFromConePKfS0_fS0_S0__70
_Z15CullBoxFromConePKfS0_fS0_S0__10:
	movss xmm0, dword [_float__1_00000000]
	jmp _Z15CullBoxFromConePKfS0_fS0_S0__80
_Z15CullBoxFromConePKfS0_fS0_S0__50:
	mulss xmm4, xmm6
	sqrtss xmm0, xmm4
	movss xmm3, dword [ebp+0x10]
	divss xmm3, xmm0
	movaps xmm0, xmm3
	mulss xmm1, xmm3
	addss xmm1, [ebp-0x1c]
	mulss xmm2, xmm3
	addss xmm2, [ebp-0x18]
	mulss xmm0, [ebp-0xc]
	addss xmm0, xmm7
	mulss xmm5, xmm1
	movss xmm3, dword [ebp-0x10]
	mulss xmm3, xmm2
	addss xmm5, xmm3
	movss xmm3, dword [ebp-0x14]
	mulss xmm3, xmm0
	addss xmm5, xmm3
	mulss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	and dword [ebp-0x28], 0x7fffffff
	subss xmm5, [ebp-0x28]
	mulss xmm2, [ebp-0x24]
	movss [ebp-0x24], xmm2
	and dword [ebp-0x24], 0x7fffffff
	subss xmm5, [ebp-0x24]
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	and dword [ebp-0x20], 0x7fffffff
	subss xmm5, [ebp-0x20]
	pxor xmm0, xmm0
	ucomiss xmm5, xmm0
	jae _Z15CullBoxFromConePKfS0_fS0_S0__90
	xor eax, eax
	jmp _Z15CullBoxFromConePKfS0_fS0_S0__100


;IntersectPlanes(float const**, float*)
_Z15IntersectPlanesPPKfPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [ebx]
	mov ecx, [ebx+0x4]
	movss xmm2, dword [ecx+0x4]
	mov eax, [ebx+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm4, dword [eax+0x4]
	movss xmm5, dword [ecx+0x8]
	movaps xmm7, xmm2
	mulss xmm7, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	subss xmm7, xmm0
	movss xmm3, dword [edx+0x8]
	movss xmm0, dword [edx+0x4]
	mulss xmm4, xmm3
	mulss xmm1, xmm0
	subss xmm4, xmm1
	movaps xmm6, xmm5
	mulss xmm6, xmm0
	mulss xmm2, xmm3
	subss xmm6, xmm2
	movaps xmm0, xmm6
	mulss xmm0, [eax]
	cvtss2sd xmm2, xmm0
	movaps xmm1, xmm7
	mulss xmm1, [edx]
	cvtss2sd xmm1, xmm1
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	cvtss2sd xmm0, xmm0
	addsd xmm1, xmm0
	addsd xmm2, xmm1
	movapd xmm0, xmm2
	andpd xmm0, [_data16_ffffffff]
	ucomisd xmm0, [_double_0_00100000]
	jb _Z15IntersectPlanesPPKfPf_10
_Z15IntersectPlanesPPKfPf_20:
	movsd xmm5, qword [_double_1_00000000]
	divsd xmm5, xmm2
	mulss xmm6, [eax+0xc]
	cvtss2sd xmm2, xmm6
	mulss xmm7, [edx+0xc]
	cvtss2sd xmm0, xmm7
	mulss xmm4, [ecx+0xc]
	cvtss2sd xmm1, xmm4
	addsd xmm0, xmm1
	addsd xmm2, xmm0
	mulsd xmm2, xmm5
	cvtsd2ss xmm2, xmm2
	movss [esi], xmm2
	mov edx, [ebx]
	mov ecx, [ebx+0x4]
	movss xmm2, dword [ecx+0x8]
	mov eax, [ebx+0x8]
	movss xmm6, dword [eax]
	movss xmm1, dword [eax+0x8]
	movss xmm4, dword [ecx]
	movss xmm7, dword [edx]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0xc], xmm0
	mulss xmm0, xmm4
	movaps xmm3, xmm2
	mulss xmm3, xmm7
	subss xmm0, xmm3
	mulss xmm0, [eax+0xc]
	cvtss2sd xmm0, xmm0
	mulss xmm2, xmm6
	mulss xmm4, xmm1
	subss xmm2, xmm4
	mulss xmm2, [edx+0xc]
	cvtss2sd xmm2, xmm2
	mulss xmm1, xmm7
	mulss xmm6, [ebp-0xc]
	subss xmm1, xmm6
	mulss xmm1, [ecx+0xc]
	cvtss2sd xmm1, xmm1
	addsd xmm2, xmm1
	addsd xmm0, xmm2
	mulsd xmm0, xmm5
	cvtsd2ss xmm0, xmm0
	movss [esi+0x4], xmm0
	mov edx, [ebx]
	mov ecx, [ebx+0x4]
	movss xmm2, dword [ecx]
	mov eax, [ebx+0x8]
	movss xmm6, dword [eax+0x4]
	movss xmm1, dword [eax]
	movss xmm4, dword [ecx+0x4]
	movss xmm7, dword [edx+0x4]
	movss xmm0, dword [edx]
	movss [ebp-0x10], xmm0
	mulss xmm0, xmm4
	movaps xmm3, xmm2
	mulss xmm3, xmm7
	subss xmm0, xmm3
	mulss xmm0, [eax+0xc]
	cvtss2sd xmm0, xmm0
	mulss xmm2, xmm6
	mulss xmm4, xmm1
	subss xmm2, xmm4
	mulss xmm2, [edx+0xc]
	cvtss2sd xmm2, xmm2
	mulss xmm1, xmm7
	mulss xmm6, [ebp-0x10]
	subss xmm1, xmm6
	mulss xmm1, [ecx+0xc]
	cvtss2sd xmm1, xmm1
	addsd xmm2, xmm1
	addsd xmm0, xmm2
	mulsd xmm5, xmm0
	cvtsd2ss xmm5, xmm5
	movss [esi+0x8], xmm5
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15IntersectPlanesPPKfPf_10:
	jp _Z15IntersectPlanesPPKfPf_20
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;MatrixForViewer(float (*) [4], float const*, float const (*) [3])
_Z15MatrixForViewerPA4_fPKfPA3_S1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea eax, [esi+0xc]
	movss xmm3, dword [_data16_80000000]
	movss xmm0, dword [esi+0xc]
	xorps xmm0, xmm3
	movss [edx], xmm0
	lea edi, [edx+0x10]
	movss xmm0, dword [eax+0x4]
	xorps xmm0, xmm3
	movss [edx+0x10], xmm0
	lea ecx, [edx+0x20]
	mov [ebp-0x20], ecx
	movss xmm2, dword [eax+0x8]
	xorps xmm2, xmm3
	movss [edx+0x20], xmm2
	lea eax, [edx+0x30]
	mov [ebp-0x1c], eax
	movss xmm1, dword [ebx]
	mulss xmm1, [edx]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [edx+0x10]
	addss xmm1, xmm0
	mulss xmm2, [ebx+0x8]
	addss xmm1, xmm2
	xorps xmm1, xmm3
	movss [edx+0x30], xmm1
	lea ecx, [esi+0x18]
	mov eax, [esi+0x18]
	mov [edx+0x4], eax
	mov eax, [ecx+0x4]
	mov [edi+0x4], eax
	movss xmm2, dword [ecx+0x8]
	mov ecx, [ebp-0x20]
	movss [ecx+0x4], xmm2
	movss xmm1, dword [ebx]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	mulss xmm2, [ebx+0x8]
	addss xmm1, xmm2
	xorps xmm1, xmm3
	mov eax, [ebp-0x1c]
	movss [eax+0x4], xmm1
	mov eax, [esi]
	mov [edx+0x8], eax
	mov eax, [esi+0x4]
	mov [edi+0x8], eax
	movss xmm2, dword [esi+0x8]
	movss [ecx+0x8], xmm2
	movss xmm1, dword [ebx]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	mulss xmm2, [ebx+0x8]
	addss xmm1, xmm2
	xorps xmm1, xmm3
	mov ecx, [ebp-0x1c]
	movss [ecx+0x8], xmm1
	xor eax, eax
	mov [edx+0xc], eax
	mov [edi+0xc], eax
	mov edx, [ebp-0x20]
	mov [edx+0xc], eax
	mov dword [ecx+0xc], 0x3f800000
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MatrixInverse44(float const*, float*)
_Z15MatrixInverse44PKfPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xc0
	mov esi, [ebp+0xc]
	xor ecx, ecx
	lea ebx, [ebp-0x48]
	mov edx, [ebp+0x8]
_Z15MatrixInverse44PKfPf_10:
	mov eax, [edx]
	mov [ecx+ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+ecx+0x10], eax
	mov eax, [edx+0x8]
	mov [ebx+ecx+0x20], eax
	mov eax, [edx+0xc]
	mov [ebx+ecx+0x30], eax
	add ecx, 0x4
	add edx, 0x10
	cmp ecx, 0x10
	jnz _Z15MatrixInverse44PKfPf_10
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0xbc], xmm0
	movss xmm1, dword [ebp-0xc]
	movss [ebp-0xb8], xmm1
	movaps xmm6, xmm0
	mulss xmm6, xmm1
	movss xmm2, dword [ebp-0x1c]
	movss [ebp-0xb4], xmm2
	movss xmm0, dword [ebp-0x10]
	movss [ebp-0xb0], xmm0
	mulss xmm2, xmm0
	movss [ebp-0x6c], xmm2
	movss xmm1, dword [ebp-0x24]
	movss [ebp-0xac], xmm1
	movss xmm2, dword [ebp-0xb8]
	mulss xmm2, xmm1
	movss [ebp-0x70], xmm2
	movss xmm0, dword [ebp-0x14]
	movss [ebp-0xa8], xmm0
	movss xmm7, dword [ebp-0xb4]
	mulss xmm7, xmm0
	movss xmm2, dword [ebp-0xb0]
	mulss xmm2, xmm1
	movss [ebp-0x74], xmm2
	movss xmm1, dword [ebp-0xbc]
	mulss xmm1, xmm0
	movss [ebp-0x78], xmm1
	movss xmm2, dword [ebp-0x28]
	movss [ebp-0xa4], xmm2
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm2
	movss [ebp-0x7c], xmm0
	movss xmm1, dword [ebp-0x18]
	movss [ebp-0xa0], xmm1
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm1
	movss [ebp-0x80], xmm2
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, [ebp-0xa4]
	movss [ebp-0x84], xmm0
	movss xmm2, dword [ebp-0xbc]
	mulss xmm2, xmm1
	movss [ebp-0x88], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, [ebp-0xa4]
	movss [ebp-0x8c], xmm0
	movss xmm2, dword [ebp-0xac]
	mulss xmm2, xmm1
	movss [ebp-0x90], xmm2
	movss xmm5, dword [ebp-0x34]
	movss xmm4, dword [ebp-0x2c]
	movaps xmm1, xmm6
	mulss xmm1, xmm5
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm5
	movss xmm2, dword [ebp-0x70]
	mulss xmm2, [ebp-0x30]
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0x78]
	mulss xmm2, xmm4
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi], xmm1
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, [ebp-0x38]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x30]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, xmm6
	movss xmm2, dword [ebp-0x80]
	mulss xmm2, [ebp-0x30]
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0x84]
	mulss xmm2, xmm4
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi+0x4], xmm1
	movss xmm1, dword [ebp-0x70]
	mulss xmm1, [ebp-0x38]
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, xmm5
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, xmm7
	movss xmm2, dword [ebp-0x7c]
	mulss xmm2, xmm5
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0x90]
	mulss xmm2, xmm4
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi+0x8], xmm1
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, [ebp-0x38]
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, xmm5
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x90]
	mulss xmm0, [ebp-0x30]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, [ebp-0x38]
	movss xmm2, dword [ebp-0x88]
	mulss xmm2, xmm5
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0x8c]
	mulss xmm2, [ebp-0x30]
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi+0xc], xmm1
	movss xmm0, dword [ebp-0x44]
	movss [ebp-0x9c], xmm0
	movss xmm1, dword [ebp-0x40]
	movss [ebp-0x98], xmm1
	movss xmm2, dword [ebp-0x3c]
	movss [ebp-0x94], xmm2
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm6
	movss xmm2, dword [ebp-0x98]
	mulss xmm2, xmm7
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0x74]
	mulss xmm2, [ebp-0x94]
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi+0x10], xmm1
	movss xmm3, dword [ebp-0x48]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, [ebp-0x98]
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, [ebp-0x94]
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm3
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x98]
	addss xmm0, [ebp-0x6c]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [ebp-0x94]
	addss xmm0, [ebp-0x6c]
	subss xmm6, xmm0
	movss [esi+0x14], xmm6
	mulss xmm7, xmm3
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, [ebp-0x9c]
	addss xmm7, xmm1
	movss xmm0, dword [ebp-0x90]
	mulss xmm0, [ebp-0x94]
	addss xmm7, xmm0
	movss xmm2, dword [ebp-0x70]
	mulss xmm2, xmm3
	movss [ebp-0x70], xmm2
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, [ebp-0x9c]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, [ebp-0x94]
	addss xmm0, xmm2
	subss xmm7, xmm0
	movss [esi+0x18], xmm7
	movss xmm1, dword [ebp-0x74]
	mulss xmm1, xmm3
	movss xmm2, dword [ebp-0x88]
	mulss xmm2, [ebp-0x9c]
	addss xmm1, xmm2
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss [ebp-0x74], xmm1
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, xmm3
	movss xmm2, dword [ebp-0x84]
	mulss xmm2, [ebp-0x9c]
	addss xmm1, xmm2
	movss [ebp-0x78], xmm1
	movss xmm0, dword [ebp-0x90]
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss xmm2, dword [ebp-0x74]
	subss xmm2, xmm1
	movss [esi+0x1c], xmm2
	movss xmm6, dword [ebp-0x98]
	mulss xmm6, xmm4
	movss xmm7, dword [ebp-0x30]
	mulss xmm7, [ebp-0x94]
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm4
	movss [ebp-0x4c], xmm0
	movss xmm1, dword [ebp-0x94]
	mulss xmm1, xmm5
	movss [ebp-0x50], xmm1
	movss xmm2, dword [ebp-0x30]
	mulss xmm2, [ebp-0x9c]
	movss [ebp-0x54], xmm2
	movss xmm0, dword [ebp-0x98]
	mulss xmm0, xmm5
	movss [ebp-0x58], xmm0
	mulss xmm4, xmm3
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, [ebp-0x94]
	movss [ebp-0x5c], xmm1
	movss xmm2, dword [ebp-0x30]
	mulss xmm2, xmm3
	movss [ebp-0x60], xmm2
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [ebp-0x98]
	movss [ebp-0x64], xmm0
	mulss xmm5, xmm3
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, [ebp-0x9c]
	movss [ebp-0x68], xmm1
	movss xmm1, dword [ebp-0xa8]
	mulss xmm1, xmm6
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, [ebp-0x50]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, [ebp-0x54]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm7
	movss xmm2, dword [ebp-0xb0]
	mulss xmm2, [ebp-0x4c]
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0xb8]
	mulss xmm2, [ebp-0x58]
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi+0x20], xmm1
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm7
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, [ebp-0x64]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xa0]
	mulss xmm0, xmm6
	movss xmm2, dword [ebp-0xb0]
	mulss xmm2, [ebp-0x5c]
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0xb8]
	mulss xmm2, [ebp-0x60]
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi+0x24], xmm1
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, [ebp-0x4c]
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, [ebp-0x5c]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm5
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xa0]
	mulss xmm0, [ebp-0x50]
	movss xmm2, dword [ebp-0xa8]
	mulss xmm2, xmm4
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0xb8]
	mulss xmm2, [ebp-0x68]
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi+0x28], xmm1
	movss xmm0, dword [ebp-0xa0]
	mulss xmm0, [ebp-0x58]
	movss xmm1, dword [ebp-0xa8]
	mulss xmm1, [ebp-0x60]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, [ebp-0x68]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, [ebp-0x54]
	movss xmm2, dword [ebp-0xa8]
	mulss xmm2, [ebp-0x64]
	addss xmm1, xmm2
	movss [ebp-0xa0], xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm5
	movss xmm2, dword [ebp-0xa0]
	addss xmm2, xmm1
	subss xmm0, xmm2
	movss [esi+0x2c], xmm0
	movss xmm1, dword [ebp-0xbc]
	mulss xmm1, [ebp-0x4c]
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, [ebp-0x58]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, [ebp-0x54]
	movss xmm2, dword [ebp-0xac]
	mulss xmm2, xmm6
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0xbc]
	mulss xmm2, [ebp-0x50]
	addss xmm0, xmm2
	subss xmm1, xmm0
	movss [esi+0x30], xmm1
	movss xmm1, dword [ebp-0xb4]
	mulss xmm1, [ebp-0x60]
	mulss xmm6, [ebp-0xa4]
	addss xmm1, xmm6
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, [ebp-0x5c]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm4
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, [ebp-0x64]
	addss xmm0, xmm2
	mulss xmm7, [ebp-0xa4]
	addss xmm0, xmm7
	subss xmm1, xmm0
	movss [esi+0x34], xmm1
	mulss xmm4, [ebp-0xac]
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, [ebp-0x68]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0xa4]
	mulss xmm0, [ebp-0x50]
	addss xmm4, xmm0
	movss xmm1, dword [ebp-0xb4]
	mulss xmm1, xmm5
	movss xmm2, dword [ebp-0xa4]
	mulss xmm2, [ebp-0x4c]
	addss xmm1, xmm2
	movss [ebp-0xb4], xmm1
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [ebp-0x5c]
	addss xmm1, xmm0
	subss xmm4, xmm1
	movss [esi+0x38], xmm4
	mulss xmm5, [ebp-0xbc]
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, [ebp-0x54]
	addss xmm5, xmm1
	movss xmm2, dword [ebp-0xac]
	mulss xmm2, [ebp-0x64]
	addss xmm5, xmm2
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [ebp-0x60]
	movss xmm1, dword [ebp-0xbc]
	mulss xmm1, [ebp-0x68]
	addss xmm0, xmm1
	movss [ebp-0xac], xmm0
	movss xmm2, dword [ebp-0xa4]
	mulss xmm2, [ebp-0x58]
	addss xmm0, xmm2
	subss xmm5, xmm0
	movss [esi+0x3c], xmm5
	mulss xmm3, [esi]
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, [esi+0x4]
	addss xmm3, xmm0
	movss xmm1, dword [ebp-0x98]
	mulss xmm1, [esi+0x8]
	addss xmm3, xmm1
	movss xmm2, dword [ebp-0x94]
	mulss xmm2, [esi+0xc]
	addss xmm3, xmm2
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm3
	mov edx, 0x1
	lea eax, [esi+0x4]
_Z15MatrixInverse44PKfPf_20:
	movaps xmm0, xmm1
	mulss xmm0, [eax-0x4]
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x11
	jnz _Z15MatrixInverse44PKfPf_20
	add esp, 0xc0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MatrixTranspose(float const (*) [3], float (*) [3])
_Z15MatrixTransposePA3_KfPA3_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx], eax
	lea edi, [edx+0xc]
	mov eax, [edx+0xc]
	mov [ecx+0x4], eax
	lea esi, [edx+0x18]
	mov eax, [edx+0x18]
	mov [ecx+0x8], eax
	lea ebx, [ecx+0xc]
	mov eax, [edx+0x4]
	mov [ecx+0xc], eax
	mov eax, [edi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x4]
	mov [ebx+0x8], eax
	lea ebx, [ecx+0x18]
	mov eax, [edx+0x8]
	mov [ecx+0x18], eax
	mov eax, [edi+0x8]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PlaneFromPoints(float*, float const*, float const*, float const*)
_Z15PlaneFromPointsPfPKfS1_S1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x14]
	movss xmm2, dword [edx]
	movss xmm4, dword [ecx]
	subss xmm4, xmm2
	lea esi, [edx+0x4]
	mov [ebp-0x1c], esi
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm1
	movss [ebp-0x10], xmm0
	lea esi, [edx+0x8]
	mov [ebp-0x18], esi
	movss xmm0, dword [edx+0x8]
	movss xmm3, dword [ecx+0x8]
	subss xmm3, xmm0
	movss [ebp-0x14], xmm3
	movss xmm5, dword [ebx]
	subss xmm5, xmm2
	movss xmm6, dword [ebx+0x4]
	subss xmm6, xmm1
	movss xmm7, dword [ebx+0x8]
	subss xmm7, xmm0
	mulss xmm3, xmm6
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, xmm7
	subss xmm3, xmm0
	movss [eax], xmm3
	lea edi, [eax+0x4]
	movaps xmm1, xmm4
	mulss xmm1, xmm7
	movss xmm0, dword [ebp-0x14]
	mulss xmm0, xmm5
	subss xmm1, xmm0
	movss [eax+0x4], xmm1
	lea esi, [eax+0x8]
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, xmm5
	movaps xmm2, xmm4
	mulss xmm2, xmm6
	subss xmm0, xmm2
	movss [eax+0x8], xmm0
	mulss xmm3, xmm3
	mulss xmm1, xmm1
	addss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm0, xmm1
	movss [ebp-0x20], xmm0
	ucomiss xmm0, [_float_2_00000000]
	jae _Z15PlaneFromPointsPfPKfS1_S1__10
	jp _Z15PlaneFromPointsPfPKfS1_S1__10
	ucomiss xmm0, [_float_0_00000000]
	jp _Z15PlaneFromPointsPfPKfS1_S1__20
	jz _Z15PlaneFromPointsPfPKfS1_S1__30
_Z15PlaneFromPointsPfPKfS1_S1__20:
	mulss xmm4, xmm4
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, xmm0
	addss xmm4, xmm0
	movss xmm3, dword [ebp-0x14]
	mulss xmm3, xmm3
	addss xmm4, xmm3
	mulss xmm5, xmm5
	mulss xmm6, xmm6
	addss xmm5, xmm6
	mulss xmm7, xmm7
	addss xmm5, xmm7
	mulss xmm4, xmm5
	mulss xmm4, [_float_0_00000100]
	ucomiss xmm4, [ebp-0x20]
	jb _Z15PlaneFromPointsPfPKfS1_S1__10
	movss xmm4, dword [ecx]
	movss xmm2, dword [ebx]
	subss xmm2, xmm4
	movss xmm1, dword [ecx+0x4]
	movss xmm7, dword [ebx+0x4]
	subss xmm7, xmm1
	movss xmm0, dword [ecx+0x8]
	movss xmm6, dword [ebx+0x8]
	subss xmm6, xmm0
	movss xmm3, dword [edx]
	subss xmm3, xmm4
	movss xmm4, dword [edx+0x4]
	subss xmm4, xmm1
	movss xmm5, dword [edx+0x8]
	subss xmm5, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm4
	movaps xmm1, xmm7
	mulss xmm1, xmm5
	subss xmm0, xmm1
	movss [eax], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	movaps xmm1, xmm6
	mulss xmm1, xmm3
	subss xmm0, xmm1
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm3
	movaps xmm1, xmm2
	mulss xmm1, xmm4
	subss xmm0, xmm1
	movss [eax+0x8], xmm0
	mulss xmm2, xmm2
	mulss xmm7, xmm7
	addss xmm2, xmm7
	mulss xmm6, xmm6
	addss xmm2, xmm6
	mulss xmm3, xmm3
	mulss xmm4, xmm4
	addss xmm3, xmm4
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm2, xmm3
	mulss xmm2, [_float_0_00000100]
	ucomiss xmm2, [ebp-0x20]
	jae _Z15PlaneFromPointsPfPKfS1_S1__30
_Z15PlaneFromPointsPfPKfS1_S1__10:
	sqrtss xmm1, [ebp-0x20]
	movss xmm0, dword [eax]
	divss xmm0, xmm1
	movss [eax], xmm0
	movss xmm0, dword [edi]
	divss xmm0, xmm1
	movss [edi], xmm0
	movss xmm0, dword [esi]
	divss xmm0, xmm1
	movss [esi], xmm0
	movss xmm1, dword [edx]
	mulss xmm1, [eax]
	mov edx, [ebp-0x1c]
	movss xmm0, dword [edx]
	mulss xmm0, [edi]
	addss xmm1, xmm0
	mov edx, [ebp-0x18]
	movss xmm0, dword [edx]
	mulss xmm0, [esi]
	addss xmm1, xmm0
	movss [eax+0xc], xmm1
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PlaneFromPointsPfPKfS1_S1__30:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Vec2NormalizeTo(float const*, float*)
_Z15Vec2NormalizeToPKfPf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	movss xmm2, dword [eax]
	lea edx, [eax+0x4]
	movss xmm0, dword [eax+0x4]
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z15Vec2NormalizeToPKfPf_10
	movss xmm0, dword [_float_1_00000000]
	mulss xmm2, xmm0
	movss [ecx], xmm2
	mulss xmm0, [edx]
	movss [ecx+0x4], xmm0
	movss [ebp-0xc], xmm1
	fld dword [ebp-0xc]
	leave
	ret
_Z15Vec2NormalizeToPKfPf_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm2, xmm0
	movss [ecx], xmm2
	mulss xmm0, [edx]
	movss [ecx+0x4], xmm0
	movss [ebp-0xc], xmm1
	fld dword [ebp-0xc]
	leave
	ret


;Vec3NormalizeTo(float const*, float*)
_Z15Vec3NormalizeToPKfPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm3, dword [eax]
	lea ebx, [eax+0x4]
	movss xmm1, dword [eax+0x4]
	lea ecx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z15Vec3NormalizeToPKfPf_10
	movss xmm2, dword [_float_1_00000000]
_Z15Vec3NormalizeToPKfPf_20:
	mulss xmm3, xmm2
	movss [edx], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [ebx]
	movss [edx+0x4], xmm0
	mulss xmm2, [ecx]
	movss [edx+0x8], xmm2
	movss [ebp-0xc], xmm1
	fld dword [ebp-0xc]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z15Vec3NormalizeToPKfPf_10:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp _Z15Vec3NormalizeToPKfPf_20


;AddPointToBounds(float const*, float*, float*)
_Z16AddPointToBoundsPKfPfS1_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm1, dword [edx]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	jbe _Z16AddPointToBoundsPKfPfS1__10
	movss [eax], xmm1
	movss xmm1, dword [edx]
_Z16AddPointToBoundsPKfPfS1__10:
	ucomiss xmm1, [ecx]
	jbe _Z16AddPointToBoundsPKfPfS1__20
	movss [ecx], xmm1
_Z16AddPointToBoundsPKfPfS1__20:
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, xmm1
	jbe _Z16AddPointToBoundsPKfPfS1__30
	movss [eax+0x4], xmm1
	movss xmm1, dword [edx+0x4]
_Z16AddPointToBoundsPKfPfS1__30:
	ucomiss xmm1, [ecx+0x4]
	jbe _Z16AddPointToBoundsPKfPfS1__40
	movss [ecx+0x4], xmm1
_Z16AddPointToBoundsPKfPfS1__40:
	movss xmm1, dword [edx+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, xmm1
	jbe _Z16AddPointToBoundsPKfPfS1__50
	movss [eax+0x8], xmm1
	movss xmm1, dword [edx+0x8]
_Z16AddPointToBoundsPKfPfS1__50:
	ucomiss xmm1, [ecx+0x8]
	jbe _Z16AddPointToBoundsPKfPfS1__60
	movss [ecx+0x8], xmm1
_Z16AddPointToBoundsPKfPfS1__60:
	pop ebp
	ret


;LinearTrackAngle(float, float, float, float)
_Z16LinearTrackAngleffff:
	push ebp
	mov ebp, esp
	sub esp, 0x58
	movss xmm2, dword [ebp+0x8]
	movss xmm4, dword [ebp+0xc]
	movss xmm0, dword [ebp+0x10]
	movss xmm6, dword [ebp+0x14]
	movaps xmm1, xmm2
	subss xmm1, xmm4
	ucomiss xmm1, [_float_180_00000000]
	jbe _Z16LinearTrackAngleffff_10
	movss xmm5, dword [_float_360_00000000]
_Z16LinearTrackAngleffff_20:
	subss xmm2, xmm5
	movaps xmm1, xmm2
	subss xmm1, xmm4
	ucomiss xmm1, [_float_180_00000000]
	ja _Z16LinearTrackAngleffff_20
_Z16LinearTrackAngleffff_80:
	movss xmm3, dword [_float__180_00000000]
	ucomiss xmm3, xmm1
	jbe _Z16LinearTrackAngleffff_30
_Z16LinearTrackAngleffff_40:
	addss xmm2, xmm5
	movaps xmm1, xmm2
	subss xmm1, xmm4
	ucomiss xmm3, xmm1
	ja _Z16LinearTrackAngleffff_40
_Z16LinearTrackAngleffff_30:
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z16LinearTrackAngleffff_50
	movaps xmm3, xmm0
	mulss xmm3, xmm6
_Z16LinearTrackAngleffff_90:
	movss xmm0, dword [_data16_7fffffff]
	andps xmm1, xmm0
	ucomiss xmm1, [_float_0_00100000]
	jbe _Z16LinearTrackAngleffff_60
	andps xmm0, xmm3
	ucomiss xmm0, xmm1
	ja _Z16LinearTrackAngleffff_60
	movaps xmm0, xmm3
	addss xmm0, xmm4
	jmp _Z16LinearTrackAngleffff_70
_Z16LinearTrackAngleffff_60:
	movaps xmm0, xmm2
_Z16LinearTrackAngleffff_70:
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x28], xmm0
	movss [ebp-0x38], xmm5
	call floorf
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebp-0xc]
	movss xmm5, dword [ebp-0x38]
	mulss xmm0, xmm5
	movss [ebp-0x3c], xmm0
	fld dword [ebp-0x3c]
	leave
	ret
_Z16LinearTrackAngleffff_10:
	movss xmm5, dword [_float_360_00000000]
	jmp _Z16LinearTrackAngleffff_80
_Z16LinearTrackAngleffff_50:
	movaps xmm3, xmm0
	xorps xmm3, [_data16_80000000]
	mulss xmm3, xmm6
	jmp _Z16LinearTrackAngleffff_90


;MatrixIdentity33(float (*) [3])
_Z16MatrixIdentity33PA3_f:
	push ebp
	mov ebp, esp
	push edi
	mov edx, [ebp+0x8]
	cld
	mov ecx, 0x9
	xor eax, eax
	mov edi, edx
	rep stosd
	mov eax, 0x3f800000
	mov [edx], eax
	mov [edx+0x10], eax
	mov [edx+0x20], eax
	pop edi
	pop ebp
	ret
	nop


;MatrixIdentity44(float (*) [4])
_Z16MatrixIdentity44PA4_f:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [identityMatrix44]
	mov [eax], edx
	mov edx, [identityMatrix44+0x4]
	mov [eax+0x4], edx
	mov edx, [identityMatrix44+0x8]
	mov [eax+0x8], edx
	mov edx, [identityMatrix44+0xc]
	mov [eax+0xc], edx
	mov edx, [identityMatrix44+0x10]
	mov [eax+0x10], edx
	mov edx, [identityMatrix44+0x14]
	mov [eax+0x14], edx
	mov edx, [identityMatrix44+0x18]
	mov [eax+0x18], edx
	mov edx, [identityMatrix44+0x1c]
	mov [eax+0x1c], edx
	mov edx, [identityMatrix44+0x20]
	mov [eax+0x20], edx
	mov edx, [identityMatrix44+0x24]
	mov [eax+0x24], edx
	mov edx, [identityMatrix44+0x28]
	mov [eax+0x28], edx
	mov edx, [identityMatrix44+0x2c]
	mov [eax+0x2c], edx
	mov edx, [identityMatrix44+0x30]
	mov [eax+0x30], edx
	mov edx, [identityMatrix44+0x34]
	mov [eax+0x34], edx
	mov edx, [identityMatrix44+0x38]
	mov [eax+0x38], edx
	mov edx, [identityMatrix44+0x3c]
	mov [eax+0x3c], edx
	pop ebp
	ret
	nop


;MatrixMultiply43(float const (*) [3], float const (*) [3], float (*) [3])
_Z16MatrixMultiply43PA3_KfS1_PA3_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0xc]
	add eax, 0xc
	mov [ebp-0x1c], eax
	mov ecx, [ebp+0xc]
	add ecx, 0x18
	mov [ebp-0x18], ecx
	movss xmm1, dword [edx]
	mov esi, [ebp+0xc]
	mulss xmm1, [esi]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [esi+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [esi+0x18]
	addss xmm1, xmm0
	movss [ebx], xmm1
	lea eax, [ebx+0xc]
	mov [ebp-0x14], eax
	lea eax, [edx+0xc]
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [esi]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [esi+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x18]
	addss xmm1, xmm0
	movss [ebx+0xc], xmm1
	lea ecx, [ebx+0x18]
	mov [ebp-0x10], ecx
	lea ecx, [edx+0x18]
	movss xmm1, dword [edx+0x18]
	mulss xmm1, [esi]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [esi+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [esi+0x18]
	addss xmm1, xmm0
	movss [ebx+0x18], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [esi+0x4]
	movss xmm0, dword [edx+0x4]
	mov esi, [ebp-0x1c]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [edx+0xc]
	mov esi, [ebp+0xc]
	mulss xmm1, [esi+0x4]
	movss xmm0, dword [eax+0x4]
	mov esi, [ebp-0x1c]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	mov esi, [ebp-0x14]
	movss [esi+0x4], xmm1
	movss xmm1, dword [edx+0x18]
	mov esi, [ebp+0xc]
	mulss xmm1, [esi+0x4]
	movss xmm0, dword [ecx+0x4]
	mov esi, [ebp-0x1c]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	mov esi, [ebp-0x10]
	movss [esi+0x4], xmm1
	movss xmm1, dword [edx]
	mov esi, [ebp+0xc]
	mulss xmm1, [esi+0x8]
	movss xmm0, dword [edx+0x4]
	mov esi, [ebp-0x1c]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss [ebx+0x8], xmm1
	movss xmm1, dword [edx+0xc]
	mov esi, [ebp+0xc]
	mulss xmm1, [esi+0x8]
	movss xmm0, dword [eax+0x4]
	mov esi, [ebp-0x1c]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov eax, [ebp-0x18]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	mov esi, [ebp-0x14]
	movss [esi+0x8], xmm1
	movss xmm1, dword [edx+0x18]
	mov eax, [ebp+0xc]
	mulss xmm1, [eax+0x8]
	movss xmm0, dword [ecx+0x4]
	mov esi, [ebp-0x1c]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mov eax, [ebp-0x18]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	mov ecx, [ebp-0x10]
	movss [ecx+0x8], xmm1
	lea esi, [ebx+0x24]
	lea ecx, [edx+0x24]
	mov edi, [ebp+0xc]
	add edi, 0x24
	movss xmm1, dword [edx+0x24]
	mov eax, [ebp+0xc]
	mulss xmm1, [eax]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [eax+0x18]
	addss xmm1, xmm0
	addss xmm1, [eax+0x24]
	movss [ebx+0x24], xmm1
	movss xmm1, dword [edx+0x24]
	mulss xmm1, [eax+0x4]
	movss xmm0, dword [ecx+0x4]
	mov eax, [ebp-0x1c]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mov eax, [ebp-0x18]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	addss xmm1, [edi+0x4]
	movss [esi+0x4], xmm1
	movss xmm1, dword [edx+0x24]
	mov eax, [ebp+0xc]
	mulss xmm1, [eax+0x8]
	movss xmm0, dword [ecx+0x4]
	mov eax, [ebp-0x1c]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mov ecx, [ebp-0x18]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	addss xmm1, [edi+0x8]
	movss [esi+0x8], xmm1
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MatrixMultiply44(float const (*) [4], float const (*) [4], float (*) [4])
_Z16MatrixMultiply44PA4_KfS1_PA4_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea eax, [ecx+0x10]
	mov [ebp-0x18], eax
	lea ebx, [ecx+0x20]
	mov [ebp-0x14], ebx
	lea edi, [ecx+0x30]
	movss xmm1, dword [edx]
	mulss xmm1, [ecx]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ecx+0x10]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ecx+0x20]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm0, [ecx+0x30]
	addss xmm1, xmm0
	mov esi, [ebp+0x10]
	movss [esi], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [ecx+0x4]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss [esi+0x4], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [ecx+0x8]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	movss [esi+0x8], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [ecx+0xc]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm0, [edi+0xc]
	addss xmm1, xmm0
	movss [esi+0xc], xmm1
	add esi, 0x10
	mov [ebp-0x10], esi
	lea eax, [edx+0x10]
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [ecx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x10]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x20]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [ecx+0x30]
	addss xmm1, xmm0
	mov ebx, [ebp+0x10]
	movss [ebx+0x10], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [ecx+0x4]
	movss xmm0, dword [eax+0x4]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	mov esi, [ebp-0x10]
	movss [esi+0x4], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [ecx+0x8]
	movss xmm0, dword [eax+0x4]
	mov ebx, [ebp-0x18]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov esi, [ebp-0x14]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	mov ebx, [ebp-0x10]
	movss [ebx+0x8], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [ecx+0xc]
	movss xmm0, dword [eax+0x4]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0xc]
	addss xmm1, xmm0
	mov esi, [ebp-0x10]
	movss [esi+0xc], xmm1
	mov ebx, [ebp+0x10]
	add ebx, 0x20
	lea eax, [edx+0x20]
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [ecx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x10]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x20]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [ecx+0x30]
	addss xmm1, xmm0
	mov esi, [ebp+0x10]
	movss [esi+0x20], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [ecx+0x4]
	movss xmm0, dword [eax+0x4]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov esi, [ebp-0x14]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [ecx+0x8]
	movss xmm0, dword [eax+0x4]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov esi, [ebp-0x14]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	movss [ebx+0x8], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [ecx+0xc]
	movss xmm0, dword [eax+0x4]
	mov esi, [ebp-0x18]
	mulss xmm0, [esi+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov esi, [ebp-0x14]
	mulss xmm0, [esi+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0xc]
	addss xmm1, xmm0
	movss [ebx+0xc], xmm1
	mov esi, [ebp+0x10]
	add esi, 0x30
	lea eax, [edx+0x30]
	movss xmm1, dword [edx+0x30]
	mulss xmm1, [ecx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x10]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x20]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [ecx+0x30]
	addss xmm1, xmm0
	mov ebx, [ebp+0x10]
	movss [ebx+0x30], xmm1
	movss xmm1, dword [edx+0x30]
	mulss xmm1, [ecx+0x4]
	movss xmm0, dword [eax+0x4]
	mov ebx, [ebp-0x18]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss [esi+0x4], xmm1
	movss xmm1, dword [edx+0x30]
	mulss xmm1, [ecx+0x8]
	movss xmm0, dword [eax+0x4]
	mov ebx, [ebp-0x18]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	movss [esi+0x8], xmm1
	movss xmm1, dword [edx+0x30]
	mulss xmm1, [ecx+0xc]
	movss xmm0, dword [eax+0x4]
	mov edx, [ebp-0x18]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0xc]
	addss xmm1, xmm0
	movss [esi+0xc], xmm1
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PointToBoxDistSq(float const*, float const*, float const*)
_Z16PointToBoxDistSqPKfS0_S0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	pxor xmm2, xmm2
	mov edx, 0x1
	movaps xmm3, xmm2
_Z16PointToBoxDistSqPKfS0_S0__20:
	lea eax, [edx*4]
	movss xmm1, dword [ebx+eax-0x4]
	movss xmm0, dword [ecx+eax-0x4]
	subss xmm0, xmm1
	ucomiss xmm0, xmm3
	jbe _Z16PointToBoxDistSqPKfS0_S0__10
_Z16PointToBoxDistSqPKfS0_S0__30:
	mulss xmm0, xmm0
	addss xmm2, xmm0
_Z16PointToBoxDistSqPKfS0_S0__40:
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z16PointToBoxDistSqPKfS0_S0__20
	movss [ebp-0xc], xmm2
	fld dword [ebp-0xc]
	add esp, 0x4
	pop ebx
	pop esi
	pop ebp
	ret
_Z16PointToBoxDistSqPKfS0_S0__10:
	movaps xmm0, xmm1
	mov esi, [ebp+0x10]
	subss xmm0, [eax+esi-0x4]
	ucomiss xmm0, xmm3
	ja _Z16PointToBoxDistSqPKfS0_S0__30
	jmp _Z16PointToBoxDistSqPKfS0_S0__40


;RadiusFromBounds(float const*, float const*)
_Z16RadiusFromBoundsPKfS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, 0x1
	movss xmm2, dword [_data16_7fffffff]
	lea ecx, [ebp-0x14]
_Z16RadiusFromBoundsPKfS0__10:
	lea eax, [edx*4]
	movss xmm1, dword [esi+eax-0x4]
	andps xmm1, xmm2
	movss xmm0, dword [ebx+eax-0x4]
	andps xmm0, xmm2
	maxss xmm1, xmm0
	movss [ecx+eax-0x4], xmm1
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z16RadiusFromBoundsPKfS0__10
	movss xmm2, dword [ebp-0x14]
	movss xmm0, dword [ebp-0x10]
	movss xmm1, dword [ebp-0xc]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	sqrtss xmm2, xmm2
	movss [ebp-0x1c], xmm2
	fld dword [ebp-0x1c]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;UnitQuatToAngles(float const*, float*)
_Z16UnitQuatToAnglesPKfPf:
	push ebp
	mov ebp, esp
	sub esp, 0x68
	mov eax, [ebp+0x8]
	movss xmm6, dword [eax]
	movaps xmm4, xmm6
	addss xmm4, xmm6
	mulss xmm6, xmm4
	movss xmm5, dword [eax+0x4]
	movaps xmm7, xmm4
	mulss xmm7, xmm5
	movss xmm1, dword [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	movss [ebp-0x44], xmm0
	movss xmm3, dword [eax+0xc]
	mulss xmm4, xmm3
	movaps xmm0, xmm5
	addss xmm0, xmm5
	mulss xmm5, xmm0
	movaps xmm2, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x40], xmm2
	mulss xmm0, xmm3
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm1
	mulss xmm3, xmm0
	movss [ebp-0x4c], xmm3
	mulss xmm1, xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
	subss xmm3, xmm0
	movss [ebp-0x2c], xmm3
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, xmm7
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x3c]
	movss [ebp-0x24], xmm0
	subss xmm7, [ebp-0x4c]
	movss [ebp-0x20], xmm7
	addss xmm1, xmm6
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp-0x40]
	addss xmm0, xmm4
	movss [ebp-0x18], xmm0
	movss xmm0, dword [ebp-0x44]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x14], xmm0
	movss xmm3, dword [ebp-0x40]
	subss xmm3, xmm4
	movss [ebp-0x10], xmm3
	addss xmm6, xmm5
	subss xmm2, xmm6
	movss [ebp-0xc], xmm2
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z12AxisToAnglesPA3_KfPf
	leave
	ret
	add [eax], al


;AngleNormalize360(float)
_Z17AngleNormalize360f:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	movss xmm1, dword [_float_0_00277778]
	mulss xmm1, [ebp+0x8]
	movss [esp], xmm1
	movss [ebp-0x28], xmm1
	call floorf
	fstp dword [ebp-0xc]
	movss xmm1, dword [ebp-0x28]
	subss xmm1, [ebp-0xc]
	movss xmm0, dword [_float_360_00000000]
	mulss xmm1, xmm0
	movaps xmm2, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x2
	andps xmm2, xmm0
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x2c], xmm0
	fld dword [ebp-0x2c]
	leave
	ret


;AxisTransformVec3(float const (*) [3], float const*, float*)
_Z17AxisTransformVec3PA3_KfPS_Pf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	lea ebx, [edx+0xc]
	lea esi, [edx+0x18]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	pop ebx
	pop esi
	pop ebp
	ret


;CullBoxFromSphere(float const*, float, float const*, float const*)
_Z17CullBoxFromSpherePKffS0_S0_:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	movss xmm3, dword [ebp+0xc]
	mov eax, [ebp+0x10]
	mov ecx, [ebp+0x14]
	movss xmm0, dword [edx]
	subss xmm0, [eax]
	movss xmm1, dword [_data16_7fffffff]
	andps xmm0, xmm1
	subss xmm0, [ecx]
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jb _Z17CullBoxFromSpherePKffS0_S0__10
	movaps xmm5, xmm0
	mulss xmm5, xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [eax+0x4]
	andps xmm0, xmm1
	subss xmm0, [ecx+0x4]
	ucomiss xmm0, xmm4
	jb _Z17CullBoxFromSpherePKffS0_S0__20
_Z17CullBoxFromSpherePKffS0_S0__40:
	movaps xmm2, xmm0
	mulss xmm2, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [eax+0x8]
	andps xmm0, xmm1
	subss xmm0, [ecx+0x8]
	ucomiss xmm0, xmm4
	jb _Z17CullBoxFromSpherePKffS0_S0__30
_Z17CullBoxFromSpherePKffS0_S0__50:
	mulss xmm0, xmm0
	addss xmm2, xmm5
	addss xmm2, xmm0
	mulss xmm3, xmm3
	xor eax, eax
	ucomiss xmm2, xmm3
	seta al
	leave
	ret
_Z17CullBoxFromSpherePKffS0_S0__10:
	movaps xmm5, xmm4
	movss xmm0, dword [edx+0x4]
	subss xmm0, [eax+0x4]
	andps xmm0, xmm1
	subss xmm0, [ecx+0x4]
	ucomiss xmm0, xmm4
	jae _Z17CullBoxFromSpherePKffS0_S0__40
_Z17CullBoxFromSpherePKffS0_S0__20:
	movaps xmm2, xmm4
	movss xmm0, dword [edx+0x8]
	subss xmm0, [eax+0x8]
	andps xmm0, xmm1
	subss xmm0, [ecx+0x8]
	ucomiss xmm0, xmm4
	jae _Z17CullBoxFromSpherePKffS0_S0__50
_Z17CullBoxFromSpherePKffS0_S0__30:
	movaps xmm0, xmm4
	addss xmm2, xmm5
	addss xmm2, xmm0
	mulss xmm3, xmm3
	xor eax, eax
	ucomiss xmm2, xmm3
	seta al
	leave
	ret
	nop


;MatrixTranspose44(float const*, float*)
_Z17MatrixTranspose44PKfPf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [edx], ecx
	mov ecx, [eax+0x10]
	mov [edx+0x4], ecx
	mov ecx, [eax+0x20]
	mov [edx+0x8], ecx
	mov ecx, [eax+0x30]
	mov [edx+0xc], ecx
	mov ecx, [eax+0x4]
	mov [edx+0x10], ecx
	mov ecx, [eax+0x14]
	mov [edx+0x14], ecx
	mov ecx, [eax+0x24]
	mov [edx+0x18], ecx
	mov ecx, [eax+0x34]
	mov [edx+0x1c], ecx
	mov ecx, [eax+0x8]
	mov [edx+0x20], ecx
	mov ecx, [eax+0x18]
	mov [edx+0x24], ecx
	mov ecx, [eax+0x28]
	mov [edx+0x28], ecx
	mov ecx, [eax+0x38]
	mov [edx+0x2c], ecx
	mov ecx, [eax+0xc]
	mov [edx+0x30], ecx
	mov ecx, [eax+0x1c]
	mov [edx+0x34], ecx
	mov ecx, [eax+0x2c]
	mov [edx+0x38], ecx
	mov eax, [eax+0x3c]
	mov [edx+0x3c], eax
	pop ebp
	ret
	nop


;UnitQuatToForward(float const*, float*)
_Z17UnitQuatToForwardPKfPf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	movss xmm1, dword [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm0, [_float__2_00000000]
	addss xmm0, [_float_1_00000000]
	movss [edx], xmm0
	movss xmm0, dword [eax]
	mulss xmm0, [eax+0x4]
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [eax+0xc]
	addss xmm0, xmm1
	addss xmm0, xmm0
	movss [edx+0x4], xmm0
	movss xmm0, dword [eax]
	mulss xmm0, [eax+0x8]
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [eax+0xc]
	subss xmm0, xmm1
	addss xmm0, xmm0
	movss [edx+0x8], xmm0
	pop ebp
	ret
	nop


;AddPointToBounds2D(float const*, float*, float*)
_Z18AddPointToBounds2DPKfPfS1_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm1, dword [edx]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	jbe _Z18AddPointToBounds2DPKfPfS1__10
	movss [eax], xmm1
	movss xmm1, dword [edx]
_Z18AddPointToBounds2DPKfPfS1__10:
	ucomiss xmm1, [ecx]
	jbe _Z18AddPointToBounds2DPKfPfS1__20
	movss [ecx], xmm1
_Z18AddPointToBounds2DPKfPfS1__20:
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, xmm1
	jbe _Z18AddPointToBounds2DPKfPfS1__30
	movss [eax+0x4], xmm1
	movss xmm1, dword [edx+0x4]
_Z18AddPointToBounds2DPKfPfS1__30:
	ucomiss xmm1, [ecx+0x4]
	jbe _Z18AddPointToBounds2DPKfPfS1__40
	movss [ecx+0x4], xmm1
_Z18AddPointToBounds2DPKfPfS1__40:
	pop ebp
	ret


;BoxDistSqrdExceeds(float const*, float const*, float const*, float)
_Z18BoxDistSqrdExceedsPKfS0_S0_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x10]
	movss xmm3, dword [eax]
	movss xmm0, dword [edx]
	subss xmm0, xmm3
	movss [ebp-0x14], xmm0
	movss xmm2, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm2
	movss [ebp-0x10], xmm0
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	movss [ebp-0xc], xmm0
	movss xmm0, dword [ecx]
	subss xmm0, xmm3
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm2
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm1
	movss [ebp-0x18], xmm0
	pxor xmm3, xmm3
	movaps xmm4, xmm3
	mov edx, 0x1
	lea ebx, [ebp-0x14]
	lea ecx, [ebp-0x20]
_Z18BoxDistSqrdExceedsPKfS0_S0_f_20:
	lea eax, [edx*4]
	movss xmm2, dword [ebx+eax-0x4]
	movss xmm1, dword [ecx+eax-0x4]
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	ucomiss xmm4, xmm0
	jae _Z18BoxDistSqrdExceedsPKfS0_S0_f_10
	mulss xmm2, xmm2
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	minss xmm0, xmm2
	addss xmm3, xmm0
_Z18BoxDistSqrdExceedsPKfS0_S0_f_10:
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z18BoxDistSqrdExceedsPKfS0_S0_f_20
	xor eax, eax
	ucomiss xmm3, [ebp+0x14]
	seta al
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CullSphereFromCone(float const*, float const*, float, float const*, float)
_Z18CullSphereFromConePKfS0_fS0_f:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x14]
	movss xmm3, dword [eax]
	subss xmm3, [edx]
	movss xmm4, dword [eax+0x4]
	subss xmm4, [edx+0x4]
	movss xmm5, dword [eax+0x8]
	subss xmm5, [edx+0x8]
	movss xmm6, dword [ecx]
	movss xmm7, dword [ecx+0x4]
	movss xmm1, dword [ecx+0x8]
	movaps xmm2, xmm3
	mulss xmm2, xmm6
	movaps xmm0, xmm4
	mulss xmm0, xmm7
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm1
	addss xmm2, xmm0
	ucomiss xmm2, [ebp+0x18]
	jb _Z18CullSphereFromConePKfS0_fS0_f_10
_Z18CullSphereFromConePKfS0_fS0_f_20:
	mov eax, 0x1
	leave
	ret
_Z18CullSphereFromConePKfS0_fS0_f_10:
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	mulss xmm6, xmm0
	addss xmm3, xmm6
	mulss xmm7, xmm0
	addss xmm4, xmm7
	mulss xmm1, xmm0
	addss xmm5, xmm1
	movss xmm1, dword [ebp+0x10]
	mulss xmm1, xmm1
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	sqrtss xmm0, xmm0
	mulss xmm2, xmm0
	subss xmm2, [ebp+0x18]
	mulss xmm3, xmm3
	mulss xmm4, xmm4
	addss xmm3, xmm4
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm3, xmm1
	mulss xmm2, xmm2
	ucomiss xmm3, xmm2
	jae _Z18CullSphereFromConePKfS0_fS0_f_20
	xor eax, eax
	leave
	ret


;OrthographicMatrix(float (*) [4], float, float, float)
_Z18OrthographicMatrixPA4_ffff:
	push ebp
	mov ebp, esp
	push edi
	mov edx, [ebp+0x8]
	cld
	mov ecx, 0x10
	xor eax, eax
	mov edi, edx
	rep stosd
	movss xmm0, dword [_float_2_00000000]
	movaps xmm1, xmm0
	divss xmm1, dword [ebp+0xc]
	movss [edx], xmm1
	divss xmm0, dword [ebp+0x10]
	movss [edx+0x14], xmm0
	movss xmm1, dword [_float_0_50000000]
	movaps xmm0, xmm1
	divss xmm0, dword [ebp+0x14]
	movss [edx+0x28], xmm0
	lea edi, [edx+0x30]
	movss [edi+0x8], xmm1
	mov dword [edi+0xc], 0x3f800000
	pop edi
	pop ebp
	ret


;RadiusFromBounds2D(float const*, float const*)
_Z18RadiusFromBounds2DPKfS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, 0x1
	movss xmm2, dword [_data16_7fffffff]
	lea ecx, [ebp-0x10]
_Z18RadiusFromBounds2DPKfS0__10:
	lea eax, [edx*4]
	movss xmm1, dword [esi+eax-0x4]
	andps xmm1, xmm2
	movss xmm0, dword [ebx+eax-0x4]
	andps xmm0, xmm2
	maxss xmm1, xmm0
	movss [ecx+eax-0x4], xmm1
	add edx, 0x1
	cmp edx, 0x3
	jnz _Z18RadiusFromBounds2DPKfS0__10
	movss xmm1, dword [ebp-0x10]
	movss xmm0, dword [ebp-0xc]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss [ebp-0x1c], xmm1
	fld dword [ebp-0x1c]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;ExpandBoundsToWidth(float*, float*)
_Z19ExpandBoundsToWidthPfS_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm2, dword [edx]
	subss xmm2, [eax]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [eax+0x4]
	movss xmm4, dword [edx+0x8]
	subss xmm4, [eax+0x8]
	movaps xmm3, xmm2
	subss xmm3, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm3, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm1
	ucomiss xmm0, xmm4
	jbe _Z19ExpandBoundsToWidthPfS__10
	movaps xmm1, xmm0
	subss xmm1, xmm4
	mulss xmm1, [_float_0_50000000]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	movss [eax+0x8], xmm0
	addss xmm1, [edx+0x8]
	movss [edx+0x8], xmm1
_Z19ExpandBoundsToWidthPfS__10:
	pop ebp
	ret


;PerpendicularVector(float const*, float*)
_Z19PerpendicularVectorPKfPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	movss xmm2, dword [ecx]
	movaps xmm3, xmm2
	mulss xmm3, xmm2
	movss [ebp-0x14], xmm3
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, xmm0
	movss [ebp-0x10], xmm0
	movss xmm1, dword [ecx+0x8]
	mulss xmm1, xmm1
	movss [ebp-0xc], xmm1
	xor eax, eax
	ucomiss xmm3, xmm0
	seta al
	movss xmm0, dword [ebp+eax*4-0x14]
	mov edx, 0x2
	ucomiss xmm0, xmm1
	cmovbe edx, eax
	shl edx, 0x2
	movss xmm4, dword [_data16_80000000]
	movss xmm0, dword [ecx+edx]
	xorps xmm0, xmm4
	mulss xmm2, xmm0
	movss [ebx], xmm2
	lea esi, [ebx+0x4]
	movaps xmm1, xmm0
	mulss xmm1, [ecx+0x4]
	movss [ebx+0x4], xmm1
	lea eax, [ebx+0x8]
	mulss xmm0, [ecx+0x8]
	movss [ebx+0x8], xmm0
	lea edx, [ebx+edx]
	movss xmm5, dword [_float_1_00000000]
	movss xmm0, dword [edx]
	addss xmm0, xmm5
	movss [edx], xmm0
	movss xmm3, dword [ebx]
	movss xmm0, dword [ebx+0x4]
	movss xmm2, dword [ebx+0x8]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm4
	ucomiss xmm0, [_float_0_00000000]
	jb _Z19PerpendicularVectorPKfPf_10
	movaps xmm2, xmm5
	mulss xmm3, xmm2
	movss [ebx], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm2, [eax]
	movss [eax], xmm2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19PerpendicularVectorPKfPf_10:
	movaps xmm2, xmm5
	divss xmm2, xmm1
	mulss xmm3, xmm2
	movss [ebx], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm2, [eax]
	movss [eax], xmm2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;PitchForYawOnNormal(float, float const*)
_Z19PitchForYawOnNormalfPKf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0xc]
	cvtss2sd xmm0, [ebp+0x8]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x10]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call cosf
	movss xmm2, dword [ebx+0x8]
	ucomiss xmm2, [_float_0_00000000]
	jnz _Z19PitchForYawOnNormalfPKf_10
	jp _Z19PitchForYawOnNormalfPKf_10
	fstp st0
	fld dword [_float_270_00000000]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z19PitchForYawOnNormalfPKf_10:
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [ebx]
	movss xmm1, dword [ebp-0x10]
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	divss xmm0, xmm2
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call atan
	fstp qword [ebp-0x28]
	movsd xmm0, qword [ebp-0x28]
	mulsd xmm0, [_double_180_00000000]
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;ProjectPointOnPlane(float const*, float const*, float*)
_Z19ProjectPointOnPlanePKfS0_Pf:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm2, dword [eax]
	movss xmm3, dword [edx]
	movaps xmm1, xmm2
	mulss xmm1, xmm3
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	mulss xmm2, xmm1
	addss xmm3, xmm2
	movss [ecx], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [ecx+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [edx+0x8]
	movss [ecx+0x8], xmm1
	leave
	ret


;Vec3RotateTranspose(float const*, float const (*) [3], float*)
_Z19Vec3RotateTransposePKfPA3_S_Pf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	lea ebx, [edx+0xc]
	lea esi, [edx+0x18]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	pop ebx
	pop esi
	pop ebp
	ret


;VectorAngleMultiply(float*, float)
_Z19VectorAngleMultiplyPff:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	cvtss2sd xmm0, [ebp+0xc]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x10]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x1c]
	movss xmm4, dword [ebp-0x1c]
	movss xmm2, dword [ebx]
	movss xmm3, dword [ebx+0x4]
	movaps xmm0, xmm4
	mulss xmm0, xmm3
	movss xmm1, dword [ebp-0x10]
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	mulss xmm2, xmm4
	mulss xmm3, [ebp-0x10]
	subss xmm2, xmm3
	movss [ebx], xmm2
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;ShrinkBoundsToHeight(float*, float*)
_Z20ShrinkBoundsToHeightPfS_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx]
	subss xmm0, [eax]
	movss xmm3, dword [edx+0x4]
	subss xmm3, [eax+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [eax+0x8]
	ucomiss xmm0, xmm2
	jbe _Z20ShrinkBoundsToHeightPfS__10
	subss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	movaps xmm1, xmm0
	addss xmm1, [eax]
	movss [eax], xmm1
	movss xmm1, dword [edx]
	subss xmm1, xmm0
	movss [edx], xmm1
_Z20ShrinkBoundsToHeightPfS__10:
	ucomiss xmm3, xmm2
	jbe _Z20ShrinkBoundsToHeightPfS__20
	movaps xmm0, xmm3
	subss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	movaps xmm1, xmm0
	addss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	movss xmm1, dword [edx+0x4]
	subss xmm1, xmm0
	movss [edx+0x4], xmm1
_Z20ShrinkBoundsToHeightPfS__20:
	pop ebp
	ret


;Vec3ProjectionCoords(float const*, int*, int*)
_Z20Vec3ProjectionCoordsPKfPiS1_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movss xmm4, dword [eax]
	movaps xmm5, xmm4
	mulss xmm5, xmm4
	movss xmm3, dword [eax+0x4]
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	movss xmm0, dword [eax+0x8]
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	ucomiss xmm1, xmm5
	jb _Z20Vec3ProjectionCoordsPKfPiS1__10
	ucomiss xmm1, xmm2
	jae _Z20Vec3ProjectionCoordsPKfPiS1__20
_Z20Vec3ProjectionCoordsPKfPiS1__10:
	ucomiss xmm2, xmm5
	jae _Z20Vec3ProjectionCoordsPKfPiS1__30
_Z20Vec3ProjectionCoordsPKfPiS1__50:
	ucomiss xmm4, [_float_0_00000000]
	jbe _Z20Vec3ProjectionCoordsPKfPiS1__40
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1
	mov edx, [ebp+0x10]
	mov dword [edx], 0x2
	pop ebp
	ret
_Z20Vec3ProjectionCoordsPKfPiS1__30:
	ucomiss xmm2, xmm1
	jb _Z20Vec3ProjectionCoordsPKfPiS1__50
	ucomiss xmm3, [_float_0_00000000]
	jbe _Z20Vec3ProjectionCoordsPKfPiS1__60
	mov eax, [ebp+0xc]
	mov dword [eax], 0x2
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pop ebp
	ret
_Z20Vec3ProjectionCoordsPKfPiS1__20:
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z20Vec3ProjectionCoordsPKfPiS1__70
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	pop ebp
	ret
_Z20Vec3ProjectionCoordsPKfPiS1__40:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x2
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	pop ebp
	ret
_Z20Vec3ProjectionCoordsPKfPiS1__70:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pop ebp
	ret
_Z20Vec3ProjectionCoordsPKfPiS1__60:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	mov edx, [ebp+0x10]
	mov dword [edx], 0x2
	pop ebp
	ret


;Vec3Basis_RightHanded(float const*, float*, float*)
_Z21Vec3Basis_RightHandedPKfPfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm2, dword [ebx]
	movaps xmm3, xmm2
	mulss xmm3, xmm2
	movss [ebp-0x24], xmm3
	lea eax, [ebx+0x4]
	mov [ebp-0x30], eax
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, xmm0
	movss [ebp-0x20], xmm0
	lea eax, [ebx+0x8]
	mov [ebp-0x2c], eax
	movss xmm1, dword [ebx+0x8]
	mulss xmm1, xmm1
	movss [ebp-0x1c], xmm1
	xor eax, eax
	ucomiss xmm3, xmm0
	seta al
	movss xmm0, dword [ebp+eax*4-0x24]
	mov edx, 0x2
	ucomiss xmm0, xmm1
	cmovbe edx, eax
	shl edx, 0x2
	movss xmm4, dword [_data16_80000000]
	movss xmm0, dword [ebx+edx]
	xorps xmm0, xmm4
	mulss xmm2, xmm0
	movss [ecx], xmm2
	lea esi, [ecx+0x4]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	movss [ecx+0x4], xmm1
	lea eax, [ecx+0x8]
	mulss xmm0, [ebx+0x8]
	movss [ecx+0x8], xmm0
	lea edx, [ecx+edx]
	movss xmm5, dword [_float_1_00000000]
	movss xmm0, dword [edx]
	addss xmm0, xmm5
	movss [edx], xmm0
	movss xmm3, dword [ecx]
	movss xmm0, dword [ecx+0x4]
	movss xmm2, dword [ecx+0x8]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm4
	ucomiss xmm0, [_float_0_00000000]
	jb _Z21Vec3Basis_RightHandedPKfPfS1__10
	movaps xmm2, xmm5
_Z21Vec3Basis_RightHandedPKfPfS1__20:
	mulss xmm3, xmm2
	movss [ecx], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm2, [eax]
	movss [eax], xmm2
	movss xmm1, dword [ecx+0x4]
	mov eax, [ebp-0x2c]
	mulss xmm1, [eax]
	movss xmm0, dword [ecx+0x8]
	mov eax, [ebp-0x30]
	mulss xmm0, [eax]
	subss xmm1, xmm0
	movss [edi], xmm1
	movss xmm1, dword [ecx+0x8]
	mulss xmm1, [ebx]
	movss xmm0, dword [ecx]
	mov eax, [ebp-0x2c]
	mulss xmm0, [eax]
	subss xmm1, xmm0
	movss [edi+0x4], xmm1
	movss xmm1, dword [ecx]
	mov eax, [ebp-0x30]
	mulss xmm1, [eax]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [ebx]
	subss xmm1, xmm0
	movss [edi+0x8], xmm1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Vec3Basis_RightHandedPKfPfS1__10:
	movaps xmm2, xmm5
	divss xmm2, xmm1
	jmp _Z21Vec3Basis_RightHandedPKfPfS1__20


;FinitePerspectiveMatrix(float (*) [4], float, float, float, float)
_Z23FinitePerspectiveMatrixPA4_fffff:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x4
	mov edx, [ebp+0x8]
	movss xmm4, dword [ebp+0x14]
	movss xmm1, dword [ebp+0x18]
	cld
	mov ecx, 0x10
	xor eax, eax
	mov edi, edx
	rep stosd
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm2
	divss xmm0, dword [ebp+0xc]
	movss [edx], xmm0
	movaps xmm0, xmm2
	divss xmm0, dword [ebp+0x10]
	movss [edx+0x14], xmm0
	lea eax, [edx+0x20]
	movaps xmm3, xmm4
	subss xmm3, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	divss xmm0, xmm3
	movss [eax+0x8], xmm0
	movss [eax+0xc], xmm2
	mulss xmm1, xmm4
	divss xmm1, xmm3
	movss [edx+0x38], xmm1
	add esp, 0x4
	pop edi
	pop ebp
	ret


;MatrixTransformVector43(float const*, float const (*) [3], float*)
_Z23MatrixTransformVector43PKfPA3_S_Pf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	lea ebx, [eax+0xc]
	lea esi, [eax+0x18]
	lea edi, [eax+0x24]
	movss xmm1, dword [edx]
	mulss xmm1, [eax]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x18]
	addss xmm1, xmm0
	addss xmm1, [eax+0x24]
	movss [ecx], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0x4]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	addss xmm1, [edi+0x4]
	movss [ecx+0x4], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0x8]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	addss xmm1, [edi+0x8]
	movss [ecx+0x8], xmm1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;MatrixTransformVector44(float const*, float const (*) [4], float*)
_Z23MatrixTransformVector44PKfPA4_S_Pf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	lea ebx, [edx+0x10]
	lea esi, [edx+0x20]
	lea edi, [edx+0x30]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x10]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x20]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x30]
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0xc]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edi+0xc]
	addss xmm1, xmm0
	movss [ecx+0xc], xmm1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RotatePointAroundVector(float*, float const*, float const*, float)
_Z23RotatePointAroundVectorPfPKfS1_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov ecx, [ebp+0xc]
	movss xmm6, dword [ecx]
	movss xmm0, dword [ecx+0x4]
	movss [ebp-0xec], xmm0
	movss xmm7, dword [ecx+0x8]
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	movss [ebp-0x30], xmm1
	mulss xmm0, xmm0
	movss [ebp-0x2c], xmm0
	movaps xmm2, xmm7
	mulss xmm2, xmm7
	movss [ebp-0x28], xmm2
	xor eax, eax
	ucomiss xmm1, xmm0
	seta al
	movss xmm0, dword [ebp+eax*4-0x30]
	mov edx, 0x2
	ucomiss xmm0, xmm2
	cmovbe edx, eax
	shl edx, 0x2
	movss xmm0, dword [ecx+edx]
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm6
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ecx+0x4]
	movss [ebp-0x20], xmm1
	mulss xmm0, [ecx+0x8]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp+edx-0x24]
	movss xmm3, dword [_float_1_00000000]
	movss xmm0, dword [eax]
	addss xmm0, xmm3
	movss [eax], xmm0
	movss xmm5, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x20]
	movss xmm2, dword [ebp-0x1c]
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z23RotatePointAroundVectorPfPKfS1_f_10
_Z23RotatePointAroundVectorPfPKfS1_f_30:
	movaps xmm2, xmm5
	mulss xmm2, xmm3
	movss [ebp-0x24], xmm2
	movaps xmm4, xmm3
	mulss xmm4, [ebp-0x20]
	movss [ebp-0x20], xmm4
	mulss xmm3, [ebp-0x1c]
	movss [ebp-0x1c], xmm3
	movss [ebp-0x78], xmm2
	movss [ebp-0x6c], xmm4
	movss [ebp-0x60], xmm3
	movaps xmm5, xmm7
	mulss xmm5, xmm4
	movss xmm0, dword [ebp-0xec]
	mulss xmm0, xmm3
	subss xmm5, xmm0
	movss [ebp-0x74], xmm5
	movaps xmm0, xmm6
	mulss xmm0, xmm3
	movaps xmm1, xmm7
	mulss xmm1, xmm2
	subss xmm0, xmm1
	movss [ebp-0x68], xmm0
	movss xmm1, dword [ebp-0xec]
	mulss xmm1, xmm2
	movaps xmm0, xmm6
	mulss xmm0, xmm4
	subss xmm1, xmm0
	movss [ebp-0x5c], xmm1
	movss [ebp-0x70], xmm6
	movss xmm0, dword [ebp-0xec]
	movss [ebp-0x64], xmm0
	movss [ebp-0x58], xmm7
	mov eax, [ebp-0x78]
	mov [ebp-0xe4], eax
	mov eax, [ebp-0x68]
	mov [ebp-0xd4], eax
	mov eax, [ebp-0x58]
	mov [ebp-0xc4], eax
	movss [ebp-0xe0], xmm4
	movss [ebp-0xdc], xmm3
	movss [ebp-0xd8], xmm5
	movss [ebp-0xd0], xmm1
	movss [ebp-0xcc], xmm6
	movss [ebp-0xc8], xmm0
	lea esi, [ebp-0x54]
	cld
	mov ecx, 0x9
	xor eax, eax
	mov edi, esi
	rep stosd
	mov dword [ebp-0x34], 0x3f800000
	mov dword [ebp-0x44], 0x3f800000
	mov dword [ebp-0x54], 0x3f800000
	cvtss2sd xmm0, [ebp+0x14]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xf0], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xf4]
	movss xmm0, dword [ebp-0xf4]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0xf0]
	movss [esp], xmm0
	call cosf
	fst dword [ebp-0x54]
	movss xmm0, dword [ebp-0xf4]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x48], xmm0
	fstp dword [ebp-0x44]
	lea ebx, [ebp-0xc0]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	lea eax, [ebp-0x78]
	mov [esp], eax
	call _Z14MatrixMultiplyPA3_KfS1_PA3_f
	lea esi, [ebp-0x9c]
	mov [esp+0x8], esi
	lea edi, [ebp-0xe4]
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z14MatrixMultiplyPA3_KfS1_PA3_f
	mov ebx, [ebp+0x10]
	add ebx, 0x4
	mov ecx, [ebp+0x10]
	add ecx, 0x8
	mov edx, [ebp+0x8]
	mov eax, esi
_Z23RotatePointAroundVectorPfPKfS1_f_20:
	movss xmm0, dword [eax]
	mov esi, [ebp+0x10]
	mulss xmm0, [esi]
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [ebx]
	addss xmm0, xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	movss [edx], xmm0
	add eax, 0xc
	add edx, 0x4
	lea edi, [ebp-0x78]
	cmp eax, edi
	jnz _Z23RotatePointAroundVectorPfPKfS1_f_20
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23RotatePointAroundVectorPfPKfS1_f_10:
	divss xmm3, xmm1
	jmp _Z23RotatePointAroundVectorPfPKfS1_f_30
	nop


;VecNCompareCustomEpsilon(float const*, float const*, float, int)
_Z24VecNCompareCustomEpsilonPKfS0_fi:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	movss xmm1, dword [ebp+0x10]
	mov edx, [ebp+0x14]
	test edx, edx
	jle _Z24VecNCompareCustomEpsilonPKfS0_fi_10
	movss xmm0, dword [ebx]
	subss xmm0, [ecx]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z24VecNCompareCustomEpsilonPKfS0_fi_20
	xor eax, eax
_Z24VecNCompareCustomEpsilonPKfS0_fi_30:
	add eax, 0x1
	cmp edx, eax
	jz _Z24VecNCompareCustomEpsilonPKfS0_fi_10
	movss xmm0, dword [ebx+eax*4]
	subss xmm0, [ecx+eax*4]
	mulss xmm0, xmm0
	ucomiss xmm0, xmm1
	jbe _Z24VecNCompareCustomEpsilonPKfS0_fi_30
_Z24VecNCompareCustomEpsilonPKfS0_fi_20:
	xor eax, eax
	pop ebx
	pop ebp
	ret
_Z24VecNCompareCustomEpsilonPKfS0_fi_10:
	mov eax, 0x1
	pop ebx
	pop ebp
	ret


;ClosestApproachOfTwoLines(float const*, float const*, float const*, float const*, float*, float*)
_Z25ClosestApproachOfTwoLinesPKfS0_S0_S0_PfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov esi, [ebp+0x18]
	mov edi, [ebp+0x1c]
	movss xmm0, dword [edx]
	movss [ebp-0x1c], xmm0
	subss xmm0, [eax]
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x20], xmm1
	subss xmm1, [eax+0x4]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x24], xmm0
	subss xmm0, [eax+0x8]
	movss [ebp-0x24], xmm0
	movss xmm3, dword [ecx]
	movss xmm1, dword [ecx+0x4]
	movss xmm2, dword [ecx+0x8]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movss [ebp-0x34], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebx]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebx+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebx+0x8]
	movss [ebp-0x28], xmm0
	movss xmm6, dword [ebp-0x30]
	mulss xmm6, xmm6
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm0
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, xmm0
	addss xmm6, xmm0
	movss xmm4, dword [ebp-0x30]
	mulss xmm4, xmm3
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm1
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, xmm2
	addss xmm4, xmm0
	movss xmm7, dword [_data16_80000000]
	xorps xmm4, xmm7
	mulss xmm3, [ebp-0x1c]
	mulss xmm1, [ebp-0x20]
	addss xmm3, xmm1
	mulss xmm2, [ebp-0x24]
	addss xmm3, xmm2
	movss xmm5, dword [ebp-0x34]
	mulss xmm5, xmm6
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	subss xmm5, xmm0
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm4
	andps xmm0, [_data16_7fffffff]
	mulss xmm0, [_float_0_00010000]
	ucomiss xmm1, xmm0
	jbe _Z25ClosestApproachOfTwoLinesPKfS0_S0_S0_PfS1__10
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [ebp-0x30]
	movss xmm1, dword [ebp-0x20]
	mulss xmm1, [ebp-0x2c]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, [ebp-0x28]
	addss xmm0, xmm1
	xorps xmm0, xmm7
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm5
	movaps xmm1, xmm4
	mulss xmm1, xmm0
	mulss xmm6, xmm3
	subss xmm1, xmm6
	mulss xmm1, xmm2
	movss [esi], xmm1
	mulss xmm3, xmm4
	mulss xmm0, [ebp-0x34]
	subss xmm3, xmm0
	mulss xmm2, xmm3
	movss [edi], xmm2
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25ClosestApproachOfTwoLinesPKfS0_S0_S0_PfS1__10:
	xorps xmm3, xmm7
	divss xmm3, dword [ebp-0x34]
	movss [esi], xmm3
	mov dword [edi], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;GraphGetValueFromFraction(int, float const (*) [2], float)
_Z25GraphGetValueFromFractioniPA2_Kff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edi, [ebp+0xc]
	movss xmm3, dword [ebp+0x10]
	cmp dword [ebp+0x8], 0x1
	jle _Z25GraphGetValueFromFractioniPA2_Kff_10
	lea esi, [edi+0x8]
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, xmm3
	jae _Z25GraphGetValueFromFractioniPA2_Kff_20
	lea ebx, [edi+0x10]
	mov ecx, 0x1
	mov eax, 0x10
	jmp _Z25GraphGetValueFromFractioniPA2_Kff_30
_Z25GraphGetValueFromFractioniPA2_Kff_50:
	lea edx, [edi+eax]
	mov esi, edx
	movss xmm0, dword [ebx]
	add eax, 0x8
	add ebx, 0x8
	ucomiss xmm0, xmm3
	jae _Z25GraphGetValueFromFractioniPA2_Kff_40
_Z25GraphGetValueFromFractioniPA2_Kff_30:
	add ecx, 0x1
	cmp [ebp+0x8], ecx
	jnz _Z25GraphGetValueFromFractioniPA2_Kff_50
_Z25GraphGetValueFromFractioniPA2_Kff_10:
	movss xmm3, dword [_float__1_00000000]
	movss [ebp-0x10], xmm3
	fld dword [ebp-0x10]
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25GraphGetValueFromFractioniPA2_Kff_20:
	mov edx, esi
_Z25GraphGetValueFromFractioniPA2_Kff_40:
	movss xmm1, dword [edx-0x8]
	movss xmm2, dword [edx-0x4]
	subss xmm3, xmm1
	movss xmm0, dword [esi]
	subss xmm0, xmm1
	divss xmm3, xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm2
	mulss xmm3, xmm0
	addss xmm3, xmm2
	movss [ebp-0x10], xmm3
	fld dword [ebp-0x10]
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;InfinitePerspectiveMatrix(float (*) [4], float, float, float)
_Z25InfinitePerspectiveMatrixPA4_ffff:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x4
	mov edx, [ebp+0x8]
	movss xmm2, dword [ebp+0x14]
	cld
	mov ecx, 0x10
	xor eax, eax
	mov edi, edx
	rep stosd
	movss xmm1, dword [_float_0_99951172]
	movaps xmm0, xmm1
	divss xmm0, dword [ebp+0xc]
	movss [edx], xmm0
	movaps xmm0, xmm1
	divss xmm0, dword [ebp+0x10]
	movss [edx+0x14], xmm0
	lea eax, [edx+0x20]
	movss [eax+0x8], xmm1
	mov dword [eax+0xc], 0x3f800000
	xorps xmm2, [_data16_80000000]
	mulss xmm2, xmm1
	movss [edx+0x38], xmm2
	add esp, 0x4
	pop edi
	pop ebp
	ret
	nop


;MatrixInverseOrthogonal43(float const (*) [3], float (*) [3])
_Z25MatrixInverseOrthogonal43PA3_KfPA3_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx], eax
	lea esi, [edx+0xc]
	mov eax, [edx+0xc]
	mov [ecx+0x4], eax
	lea edi, [edx+0x18]
	mov eax, [edx+0x18]
	mov [ecx+0x8], eax
	lea eax, [ecx+0xc]
	mov [ebp-0x10], eax
	mov eax, [edx+0x4]
	mov [ecx+0xc], eax
	mov eax, [esi+0x4]
	mov ebx, [ebp-0x10]
	mov [ebx+0x4], eax
	mov eax, [edi+0x4]
	mov [ebx+0x8], eax
	lea ebx, [ecx+0x18]
	mov eax, [edx+0x8]
	mov [ecx+0x18], eax
	mov eax, [esi+0x8]
	mov [ebx+0x4], eax
	mov eax, [edi+0x8]
	mov [ebx+0x8], eax
	lea eax, [edx+0x24]
	pxor xmm2, xmm2
	movaps xmm3, xmm2
	subss xmm3, [edx+0x24]
	movaps xmm4, xmm2
	subss xmm4, [eax+0x4]
	subss xmm2, [eax+0x8]
	lea eax, [ecx+0x24]
	movaps xmm0, xmm3
	mulss xmm0, [ecx]
	movaps xmm1, xmm4
	mulss xmm1, [ecx+0xc]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [ecx+0x18]
	addss xmm0, xmm1
	movss [ecx+0x24], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ecx+0x4]
	movaps xmm1, xmm4
	mov edx, [ebp-0x10]
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm3, [ecx+0x8]
	mulss xmm4, [edx+0x8]
	addss xmm3, xmm4
	mulss xmm2, [ebx+0x8]
	addss xmm3, xmm2
	movss [eax+0x8], xmm3
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;NearestPitchAndYawOnPlane(float const*, float const*, float*)
_Z25NearestPitchAndYawOnPlanePKfS0_Pf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0xc]
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm2, dword [ebx]
	movss xmm3, dword [ebp-0x14]
	movss xmm4, dword [ebp-0x10]
	movss xmm5, dword [ebp-0xc]
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [ebx+0x8]
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	mulss xmm2, xmm0
	addss xmm3, xmm2
	movss [ebp-0x20], xmm3
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	addss xmm4, xmm1
	movss [ebp-0x1c], xmm4
	mulss xmm0, [ebx+0x8]
	addss xmm5, xmm0
	movss [ebp-0x18], xmm5
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z11vectoanglesPKfPf
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;SnapPointToIntersectingPlanes(float const**, float*, float, float)
_Z29SnapPointToIntersectingPlanesPPKfPfff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0xc]
	mov ebx, 0x1
	lea esi, [ebp-0x24]
_Z29SnapPointToIntersectingPlanesPPKfPfff_10:
	movss xmm2, dword [edi+ebx*4-0x4]
	movaps xmm0, xmm2
	divss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x58], xmm2
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	cvtsi2ss xmm1, eax
	mulss xmm1, [ebp+0x10]
	movss xmm2, dword [ebp-0x58]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	cmpss xmm0, [ebp+0x14], 0x5
	andps xmm2, xmm0
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [esi], xmm0
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0x4
	jnz _Z29SnapPointToIntersectingPlanesPPKfPfff_10
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x38], xmm0
	ucomiss xmm0, [edi]
	jp _Z29SnapPointToIntersectingPlanesPPKfPfff_20
	jz _Z29SnapPointToIntersectingPlanesPPKfPfff_30
_Z29SnapPointToIntersectingPlanesPPKfPfff_20:
	lea edx, [edi+0x4]
	lea eax, [edi+0x8]
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x44], xmm0
	movss xmm7, dword [ebp-0x1c]
_Z29SnapPointToIntersectingPlanesPPKfPfff_80:
	movss xmm0, dword [edi]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [edx]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax]
	movss [ebp-0x2c], xmm0
	movss xmm6, dword [ebp+0x14]
	pxor xmm0, xmm0
	movss [ebp-0x3c], xmm0
	mov edx, 0x1
_Z29SnapPointToIntersectingPlanesPPKfPfff_50:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4-0x4]
	movss xmm2, dword [eax]
	movss xmm3, dword [eax+0x4]
	movss xmm4, dword [eax+0x8]
	movss xmm5, dword [eax+0xc]
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, xmm2
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm7
	addss xmm1, xmm0
	subss xmm1, xmm5
	andps xmm1, [_data16_7fffffff]
	ucomiss xmm1, [ebp-0x3c]
	jbe _Z29SnapPointToIntersectingPlanesPPKfPfff_40
	movss [ebp-0x3c], xmm1
_Z29SnapPointToIntersectingPlanesPPKfPfff_40:
	mulss xmm2, [ebp-0x34]
	mulss xmm3, [ebp-0x30]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x2c]
	addss xmm2, xmm4
	subss xmm2, xmm5
	andps xmm2, [_data16_7fffffff]
	maxss xmm2, xmm6
	movaps xmm6, xmm2
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z29SnapPointToIntersectingPlanesPPKfPfff_50
	ucomiss xmm2, [ebp-0x3c]
	jbe _Z29SnapPointToIntersectingPlanesPPKfPfff_60
	movss xmm0, dword [ebp-0x38]
	movss [edi], xmm0
	movss xmm0, dword [ebp-0x44]
	movss [edi+0x4], xmm0
	movss [edi+0x8], xmm7
_Z29SnapPointToIntersectingPlanesPPKfPfff_60:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29SnapPointToIntersectingPlanesPPKfPfff_30:
	lea edx, [edi+0x4]
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x44], xmm0
	ucomiss xmm0, [edi+0x4]
	jp _Z29SnapPointToIntersectingPlanesPPKfPfff_70
	jnz _Z29SnapPointToIntersectingPlanesPPKfPfff_70
	lea eax, [edi+0x8]
	movss xmm7, dword [ebp-0x1c]
	ucomiss xmm7, [edi+0x8]
	jnz _Z29SnapPointToIntersectingPlanesPPKfPfff_80
	jp _Z29SnapPointToIntersectingPlanesPPKfPfff_80
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29SnapPointToIntersectingPlanesPPKfPfff_70:
	lea eax, [edi+0x8]
	movss xmm7, dword [ebp-0x1c]
	jmp _Z29SnapPointToIntersectingPlanesPPKfPfff_80
	nop
	add [eax], al


;MatrixTransposeTransformVector(float const*, float const (*) [3], float*)
_Z30MatrixTransposeTransformVectorPKfPA3_S_Pf:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss [ebx], xmm1
	lea ecx, [edx+0xc]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0xc]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	lea ecx, [edx+0x18]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x18]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	movss [ebx+0x8], xmm1
	pop ebx
	pop ebp
	ret


;CullBoxFromConicSectionOfSphere(float const*, float const*, float, float, float const*, float const*)
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	movss xmm2, dword [ebp+0x14]
	mov eax, [ebp+0x18]
	mov ecx, [ebp+0x1c]
	movss xmm5, dword [eax]
	subss xmm5, [edx]
	movss xmm7, dword [eax+0x4]
	subss xmm7, [edx+0x4]
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x18], xmm0
	subss xmm0, [edx+0x8]
	movss [ebp-0x18], xmm0
	movss xmm1, dword [ecx]
	movss [ebp-0x30], xmm1
	movss xmm6, dword [_data16_7fffffff]
	movaps xmm0, xmm5
	andps xmm0, xmm6
	subss xmm0, xmm1
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jb _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__10
	movaps xmm3, xmm0
	mulss xmm3, xmm0
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__10:
	movss xmm4, dword [ecx+0x4]
	movss [ebp-0x2c], xmm4
	movaps xmm0, xmm7
	andps xmm0, xmm6
	subss xmm0, xmm4
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__20
	movaps xmm1, xmm0
	mulss xmm1, xmm0
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__20:
	movss xmm4, dword [ecx+0x8]
	movss [ebp-0x28], xmm4
	movss xmm0, dword [ebp-0x18]
	andps xmm0, xmm6
	subss xmm0, xmm4
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jb _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__30
	mulss xmm0, xmm0
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__100:
	addss xmm1, xmm3
	addss xmm1, xmm0
	mulss xmm2, xmm2
	ucomiss xmm1, xmm2
	ja _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__40
	movss xmm0, dword [ebx]
	movss [ebp-0x24], xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__50
	movss xmm0, dword [_float_1_00000000]
	mulss xmm0, [ebp-0x30]
	movaps xmm3, xmm5
	subss xmm3, xmm0
	movss [ebp-0x14], xmm3
	movss xmm4, dword [ebx+0x4]
	movss [ebp-0x20], xmm4
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jb _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__60
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__120:
	movss xmm0, dword [_float_1_00000000]
	mulss xmm0, [ebp-0x2c]
	movaps xmm4, xmm7
	subss xmm4, xmm0
	movss xmm1, dword [ebx+0x8]
	movss [ebp-0x1c], xmm1
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jb _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__70
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__130:
	movss xmm0, dword [_float_1_00000000]
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__140:
	mulss xmm0, [ebp-0x28]
	movss xmm1, dword [ebp-0x18]
	subss xmm1, xmm0
	movss xmm3, dword [ebp-0x24]
	mulss xmm3, [ebp-0x14]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm4
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, xmm1
	addss xmm3, xmm0
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jb _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__80
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__40:
	mov eax, 0x1
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__80:
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x3c], xmm0
	movss xmm2, dword [ebp-0x24]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x14]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [ebp-0x3c]
	addss xmm4, xmm0
	movss [ebp-0xc], xmm4
	movss xmm4, dword [ebp-0x3c]
	mulss xmm4, [ebp-0x1c]
	addss xmm1, xmm4
	movss [ebp-0x10], xmm1
	movaps xmm4, xmm2
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, xmm0
	addss xmm4, xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm4, xmm0
	movss xmm0, dword [ebp+0x10]
	mulss xmm0, xmm0
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mulss xmm0, xmm4
	mulss xmm3, xmm3
	mulss xmm3, xmm1
	ucomiss xmm3, xmm0
	jb _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__90
	xor eax, eax
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__110:
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__30:
	pxor xmm0, xmm0
	jmp _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__100
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__90:
	mulss xmm4, xmm1
	sqrtss xmm0, xmm4
	movss xmm1, dword [ebp+0x10]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x24]
	movss xmm2, dword [ebp-0xc]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x20]
	mulss xmm0, [ebp-0x10]
	addss xmm0, [ebp-0x1c]
	mulss xmm5, xmm1
	mulss xmm7, xmm2
	addss xmm5, xmm7
	movss xmm3, dword [ebp-0x18]
	mulss xmm3, xmm0
	addss xmm5, xmm3
	mulss xmm1, [ebp-0x30]
	movss [ebp-0x30], xmm1
	and dword [ebp-0x30], 0x7fffffff
	subss xmm5, [ebp-0x30]
	mulss xmm2, [ebp-0x2c]
	movss [ebp-0x2c], xmm2
	and dword [ebp-0x2c], 0x7fffffff
	subss xmm5, [ebp-0x2c]
	mulss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	and dword [ebp-0x28], 0x7fffffff
	subss xmm5, [ebp-0x28]
	pxor xmm4, xmm4
	ucomiss xmm5, xmm4
	jae _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__40
	xor eax, eax
	jmp _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__110
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__50:
	movss xmm0, dword [_float__1_00000000]
	mulss xmm0, [ebp-0x30]
	movaps xmm3, xmm5
	subss xmm3, xmm0
	movss [ebp-0x14], xmm3
	movss xmm4, dword [ebx+0x4]
	movss [ebp-0x20], xmm4
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jae _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__120
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__60:
	movss xmm0, dword [_float__1_00000000]
	mulss xmm0, [ebp-0x2c]
	movaps xmm4, xmm7
	subss xmm4, xmm0
	movss xmm1, dword [ebx+0x8]
	movss [ebp-0x1c], xmm1
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jae _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__130
_Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__70:
	movss xmm0, dword [_float__1_00000000]
	jmp _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0__140


;MatrixTransposeTransformVector43(float const*, float const (*) [3], float*)
_Z32MatrixTransposeTransformVector43PKfPA3_S_Pf:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	lea ecx, [eax+0x24]
	movss xmm2, dword [edx]
	subss xmm2, [eax+0x24]
	movss xmm3, dword [edx+0x4]
	subss xmm3, [ecx+0x4]
	movss xmm4, dword [edx+0x8]
	subss xmm4, [ecx+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebx], xmm0
	lea edx, [eax+0xc]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edx+0x8]
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	lea edx, [eax+0x18]
	mulss xmm2, [eax+0x18]
	mulss xmm3, [edx+0x4]
	addss xmm2, xmm3
	mulss xmm4, [edx+0x8]
	addss xmm2, xmm4
	movss [ebx+0x8], xmm2
	pop ebx
	pop ebp
	ret


;PointInCircleFromUniformDeviates(float, float, float*)
_Z32PointInCircleFromUniformDeviatesffPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x10]
	sqrtss xmm0, [ebp+0x8]
	movss [ebp-0x10], xmm0
	cvtss2sd xmm0, [ebp+0xc]
	mulsd xmm0, [_double_6_28318531]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x14]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [ebp-0x10]
	movss [ebx], xmm0
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, [ebp-0x14]
	movss [ebx+0x4], xmm0
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;ProjectedWindingContainsCoplanarPoint(float const (*) [3], int, int, int, float const*)
_Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov esi, [ebp+0xc]
	lea edx, [esi-0x1]
	test esi, esi
	jle _Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS__10
	mov eax, [ebp+0x10]
	mov ecx, [ebp+0x18]
	movss xmm5, dword [ecx+eax*4]
	mov eax, [ebp+0x14]
	movss xmm4, dword [ecx+eax*4]
	xor ecx, ecx
	xor ebx, ebx
	pxor xmm6, xmm6
	shl eax, 0x2
	mov [ebp-0x10], eax
	mov edi, [ebp+0x10]
	shl edi, 0x2
	jmp _Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS__20
_Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS__40:
	mov ecx, eax
_Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS__20:
	lea eax, [edx+edx*2]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*4]
	mov edx, [ebp+0x14]
	movss xmm3, dword [eax+edx*4]
	mov edx, [ebp+0x10]
	movss xmm2, dword [eax+edx*4]
	mov eax, [ebp+0x8]
	add eax, ebx
	mov edx, [ebp-0x10]
	movss xmm0, dword [eax+edx]
	subss xmm0, xmm3
	movaps xmm1, xmm5
	subss xmm1, xmm2
	mulss xmm0, xmm1
	subss xmm2, [eax+edi]
	movaps xmm1, xmm4
	subss xmm1, xmm3
	mulss xmm2, xmm1
	addss xmm0, xmm2
	ucomiss xmm6, xmm0
	ja _Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS__30
	lea eax, [ecx+0x1]
	add ebx, 0xc
	mov edx, ecx
	cmp esi, eax
	jnz _Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS__40
_Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS__10:
	mov eax, 0x1
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z37ProjectedWindingContainsCoplanarPointPA3_KfiiiPS__30:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;irand(int, int)
_Z5irandii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov esi, [ebp+0xc]
	mov ecx, [holdrand]
	lea eax, [ecx+ecx*2]
	lea eax, [ecx+eax*4]
	shl eax, 0x4
	add eax, ecx
	shl eax, 0x8
	sub eax, ecx
	lea eax, [ecx+eax*4+0x269ec3]
	mov [holdrand], eax
	shr eax, 0x11
	mov [ebp-0x18], eax
	mov dword [ebp-0x14], 0x0
	sub esi, [ebp+0x8]
	mov edi, esi
	sar edi, 0x1f
	mov eax, [ebp-0x18]
	mul esi
	mov ecx, eax
	mov eax, [ebp-0x18]
	imul eax, edi
	lea ebx, [eax+edx]
	shrd ecx, ebx, 0xf
	mov eax, [ebp+0x8]
	add ecx, eax
	mov eax, ecx
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Q_acos(float)
_Z6Q_acosf:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [esp], eax
	call acosf
	fst dword [ebp-0xc]
	movss xmm1, dword [ebp-0xc]
	cvtss2sd xmm0, xmm1
	ucomisd xmm0, [_double_3_14159265]
	ja _Z6Q_acosf_10
	ucomisd xmm0, [_double__3_14159265]
	jae _Z6Q_acosf_20
	jp _Z6Q_acosf_20
_Z6Q_acosf_10:
	fstp st0
	fld dword [_float_3_14159274]
_Z6Q_acosf_20:
	leave
	ret
	nop


;Q_rint(float)
_Z6Q_rintf:
	push ebp
	mov ebp, esp
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [ebp+0x8]
	movss [ebp+0x8], xmm0
	pop ebp
	jmp floorf
	nop


;flrand(float, float)
_Z6flrandff:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	movss xmm1, dword [ebp+0x8]
	movss xmm2, dword [ebp+0xc]
	mov edx, [holdrand]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x4
	add eax, edx
	shl eax, 0x8
	sub eax, edx
	lea eax, [edx+eax*4+0x269ec3]
	mov [holdrand], eax
	mov edx, eax
	shr edx, 0x11
	js _Z6flrandff_10
	cvtsi2ss xmm0, edx
	subss xmm2, xmm1
	mulss xmm0, xmm2
	mulss xmm0, [_float_0_00003052]
	addss xmm1, xmm0
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret
_Z6flrandff_10:
	shr eax, 0x12
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	subss xmm2, xmm1
	mulss xmm0, xmm2
	mulss xmm0, [_float_0_00003052]
	addss xmm1, xmm0
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret
	nop


;crandom()
_Z7crandomv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z7ms_randv
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	addss xmm0, xmm0
	subss xmm0, [_float_1_00000000]
	movss [ebp-0xc], xmm0
	fld dword [ebp-0xc]
	leave
	ret
	nop


;randomf()
_Z7randomfv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z7ms_randv
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xc], xmm0
	fld dword [ebp-0xc]
	leave
	ret
	nop


;AxisCopy(float const (*) [3], float (*) [3])
_Z8AxisCopyPA3_KfPA3_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea esi, [ecx+0xc]
	lea ebx, [edx+0xc]
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	lea esi, [ecx+0x18]
	lea ebx, [edx+0x18]
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;QuatLerp(float const*, float const*, float, float*)
_Z8QuatLerpPKfS0_fPf:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	movss xmm5, dword [ebp+0x10]
	mov ecx, [ebp+0x14]
	movss xmm3, dword [edx]
	movss xmm2, dword [eax]
	movaps xmm1, xmm3
	mulss xmm1, xmm2
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jb _Z8QuatLerpPKfS0_fPf_10
	subss xmm2, xmm3
	mulss xmm2, xmm5
	addss xmm3, xmm2
	movss [ecx], xmm3
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm5
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [edx+0x8]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm5
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movss xmm1, dword [edx+0xc]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm1
	mulss xmm5, xmm0
	addss xmm1, xmm5
	movss [ecx+0xc], xmm1
	leave
	ret
_Z8QuatLerpPKfS0_fPf_10:
	movss xmm0, dword [_data16_80000000]
	movaps xmm1, xmm2
	xorps xmm1, xmm0
	movss [ecx], xmm1
	movss xmm2, dword [eax+0x4]
	xorps xmm2, xmm0
	movss [ecx+0x4], xmm2
	movss xmm3, dword [eax+0x8]
	xorps xmm3, xmm0
	movss [ecx+0x8], xmm3
	movss xmm4, dword [eax+0xc]
	xorps xmm4, xmm0
	movss [ecx+0xc], xmm4
	movss xmm0, dword [edx]
	subss xmm1, xmm0
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ecx], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm2, xmm0
	mulss xmm2, xmm5
	addss xmm0, xmm2
	movss [ecx+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm3, xmm0
	mulss xmm3, xmm5
	addss xmm0, xmm3
	movss [ecx+0x8], xmm0
	movss xmm0, dword [edx+0xc]
	subss xmm4, xmm0
	mulss xmm5, xmm4
	addss xmm0, xmm5
	movss [ecx+0xc], xmm0
	leave
	ret


;vectoyaw(float const*)
_Z8vectoyawPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax+0x4]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jnz _Z8vectoyawPKf_10
	jp _Z8vectoyawPKf_10
	ucomiss xmm2, [eax]
	jz _Z8vectoyawPKf_20
_Z8vectoyawPKf_10:
	cvtss2sd xmm0, [eax]
	movsd [esp+0x8], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp], xmm1
	movss [ebp-0x18], xmm2
	call atan2
	fstp qword [ebp-0x28]
	movsd xmm0, qword [ebp-0x28]
	mulsd xmm0, [_double_180_00000000]
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss xmm2, dword [ebp-0x18]
	ucomiss xmm0, xmm2
	jb _Z8vectoyawPKf_30
	movaps xmm1, xmm2
_Z8vectoyawPKf_40:
	addss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	mov eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	fld dword [ebp-0x1c]
	leave
	ret
_Z8vectoyawPKf_20:
	jp _Z8vectoyawPKf_10
	movss [ebp-0x1c], xmm2
	mov eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	fld dword [ebp-0x1c]
	leave
	ret
_Z8vectoyawPKf_30:
	movss xmm1, dword [_float_360_00000000]
	jmp _Z8vectoyawPKf_40


;AxisClear(float (*) [3])
_Z9AxisClearPA3_f:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ebx, 0x3f800000
	mov [eax], ebx
	xor edx, edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	lea ecx, [eax+0xc]
	mov [eax+0xc], edx
	mov [ecx+0x4], ebx
	mov [ecx+0x8], edx
	lea ecx, [eax+0x18]
	mov [eax+0x18], edx
	mov [ecx+0x4], edx
	mov [ecx+0x8], ebx
	pop ebx
	pop ebp
	ret
	nop


;ByteToDir(int, float*)
_Z9ByteToDiriPf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp eax, 0xa1
	jbe _Z9ByteToDiriPf_10
	xor eax, eax
	mov [ecx], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	pop ebp
	ret
_Z9ByteToDiriPf_10:
	lea eax, [eax+eax*2]
	shl eax, 0x2
	lea edx, [eax+bytedirs]
	mov eax, [eax+bytedirs]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	pop ebp
	ret
	add [eax], al


;ClampChar(int)
_Z9ClampChari:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0xffffff80
	jl _Z9ClampChari_10
	cmp eax, 0x7f
	jg _Z9ClampChari_20
	movsx eax, al
	pop ebp
	ret
_Z9ClampChari_20:
	mov eax, 0x7f
	pop ebp
	ret
_Z9ClampChari_10:
	mov eax, 0xffffff80
	pop ebp
	ret
	nop
	add [eax], al


;DiffTrack(float, float, float, float)
_Z9DiffTrackffff:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	movss xmm4, dword [ebp+0xc]
	movss xmm0, dword [ebp+0x8]
	subss xmm0, xmm4
	movaps xmm2, xmm0
	mulss xmm2, [ebp+0x10]
	mulss xmm2, [ebp+0x14]
	movss xmm1, dword [_data16_7fffffff]
	movaps xmm3, xmm0
	andps xmm3, xmm1
	ucomiss xmm3, [_float_0_00100000]
	jbe _Z9DiffTrackffff_10
	movaps xmm0, xmm2
	andps xmm0, xmm1
	ucomiss xmm0, xmm3
	ja _Z9DiffTrackffff_10
	addss xmm4, xmm2
	movss [ebp+0x8], xmm4
_Z9DiffTrackffff_10:
	fld dword [ebp+0x8]
	leave
	ret
	nop


;DirToByte(float const*)
_Z9DirToBytePKf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z9DirToBytePKf_10
	movss xmm4, dword [eax]
	movss xmm3, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	pxor xmm5, xmm5
	xor eax, eax
	xor ecx, ecx
	xor edx, edx
_Z9DirToBytePKf_30:
	movaps xmm1, xmm4
	mulss xmm1, [edx+bytedirs]
	movaps xmm0, xmm3
	mulss xmm0, [edx+bytedirs+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edx+bytedirs+0x8]
	addss xmm1, xmm0
	ucomiss xmm1, xmm5
	jbe _Z9DirToBytePKf_20
	movaps xmm5, xmm1
	mov eax, ecx
_Z9DirToBytePKf_20:
	add ecx, 0x1
	add edx, 0xc
	cmp ecx, 0xa2
	jnz _Z9DirToBytePKf_30
	movzx eax, al
_Z9DirToBytePKf_10:
	pop ebp
	ret


;QuatSlerp(float const*, float const*, float, float*)
_Z9QuatSlerpPKfS0_fPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ebx, [ebp+0x14]
	movss xmm0, dword [eax]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [edx]
	movss [ebp-0x30], xmm0
	lea edi, [eax+0x4]
	lea ecx, [edx+0x4]
	mov [ebp-0x2c], ecx
	lea ecx, [eax+0x8]
	mov [ebp-0x28], ecx
	lea ecx, [edx+0x8]
	mov [ebp-0x24], ecx
	lea ecx, [eax+0xc]
	mov [ebp-0x20], ecx
	lea ecx, [edx+0xc]
	mov [ebp-0x1c], ecx
	movss xmm1, dword [ebp-0x34]
	mulss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jp _Z9QuatSlerpPKfS0_fPf_10
	jb _Z9QuatSlerpPKfS0_fPf_20
_Z9QuatSlerpPKfS0_fPf_10:
	xor esi, esi
	ucomiss xmm1, [_float_0_94999999]
	jbe _Z9QuatSlerpPKfS0_fPf_30
_Z9QuatSlerpPKfS0_fPf_50:
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, [ebp+0x10]
	movss xmm2, dword [ebp+0x10]
_Z9QuatSlerpPKfS0_fPf_60:
	mov eax, esi
	test al, al
	jz _Z9QuatSlerpPKfS0_fPf_40
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm3
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, xmm2
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x34]
	subss xmm0, [ebp-0x30]
	movss [ebx], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [edi]
	movaps xmm1, xmm2
	mov eax, [ebp-0x2c]
	mulss xmm1, [eax]
	subss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movaps xmm0, xmm3
	mov ecx, [ebp-0x28]
	mulss xmm0, [ecx]
	movaps xmm1, xmm2
	mov eax, [ebp-0x24]
	mulss xmm1, [eax]
	subss xmm0, xmm1
	movss [ebx+0x8], xmm0
	mov ecx, [ebp-0x20]
	mulss xmm3, [ecx]
	mov eax, [ebp-0x1c]
	mulss xmm2, [eax]
	subss xmm3, xmm2
	movss [ebx+0xc], xmm3
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9QuatSlerpPKfS0_fPf_40:
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm3
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, xmm2
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x34]
	addss xmm0, [ebp-0x30]
	movss [ebx], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [edi]
	movaps xmm1, xmm2
	mov eax, [ebp-0x2c]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movaps xmm0, xmm3
	mov ecx, [ebp-0x28]
	mulss xmm0, [ecx]
	movaps xmm1, xmm2
	mov eax, [ebp-0x24]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movss [ebx+0x8], xmm0
	mov ecx, [ebp-0x20]
	mulss xmm3, [ecx]
	mov eax, [ebp-0x1c]
	mulss xmm2, [eax]
	addss xmm3, xmm2
	movss [ebx+0xc], xmm3
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9QuatSlerpPKfS0_fPf_20:
	xorps xmm1, [_data16_80000000]
	mov esi, 0x1
	ucomiss xmm1, [_float_0_94999999]
	ja _Z9QuatSlerpPKfS0_fPf_50
_Z9QuatSlerpPKfS0_fPf_30:
	movss [esp], xmm1
	call acosf
	fstp dword [ebp-0x38]
	movss xmm0, dword [ebp-0x38]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x3c]
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, [ebp+0x10]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x58], xmm1
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm3, dword [ebp-0x6c]
	divss xmm3, dword [ebp-0x3c]
	movss xmm1, dword [ebp-0x58]
	movss [esp], xmm1
	movss [ebp-0x68], xmm3
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm2, dword [ebp-0x6c]
	divss xmm2, dword [ebp-0x3c]
	movss xmm3, dword [ebp-0x68]
	jmp _Z9QuatSlerpPKfS0_fPf_60
	nop


;Rand_Init(int)
_Z9Rand_Initi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [holdrand], eax
	pop ebp
	ret
	nop


;YawToAxis(float, float (*) [3])
_Z9YawToAxisfPA3_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	cvtss2sd xmm0, [ebp+0x8]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x14]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x10]
	pxor xmm1, xmm1
	test ebx, ebx
	jz _Z9YawToAxisfPA3_f_10
	movss xmm0, dword [ebp-0x10]
	movss [ebx], xmm0
	movss xmm0, dword [ebp-0x14]
	movss [ebx+0x4], xmm0
	pxor xmm1, xmm1
	movss [ebx+0x8], xmm1
_Z9YawToAxisfPA3_f_10:
	lea eax, [ebx+0x18]
	mov dword [ebx+0x18], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x3f800000
	lea eax, [ebx+0xc]
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x14]
	movss [ebx+0xc], xmm0
	addss xmm1, [ebp-0x10]
	movss [eax+0x4], xmm1
	mov dword [eax+0x8], 0x0
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of com_math:
SECTION .data
holdrand: dd 0x89abcdef, 0x0
bytedirs: dd 0xbf06964f, 0x0, 0x3f59c444, 0xbee2bef0, 0x3e7496ab, 0x3f5d3b6d, 0xbe9729f6, 0x0, 0x3f74969a, 0xbe9e377a, 0x3f000000, 0x3f4f1bbd, 0xbe265bea, 0x3e86965f, 0x3f737868, 0x0, 0x0, 0x3f800000, 0x0, 0x3f59c444, 0x3f06964f, 0xbe1729f6, 0x3f3770ef, 0x3f2e8512, 0x3e1729f6, 0x3f3770ef, 0x3f2e8512, 0x0, 0x3f06964f, 0x3f59c444, 0x3e9e377a, 0x3f000000, 0x3f4f1bbd, 0x3f06964f, 0x0, 0x3f59c444, 0x3e9729f6, 0x0, 0x3f74969a, 0x3ee2bef0, 0x3e7496ab, 0x3f5d3b6d, 0x3e265bea, 0x3e86965f, 0x3f737868, 0xbf2e8512, 0x3e1729f6, 0x3f3770ef, 0xbf4f1bbd, 0x3e9e377a, 0x3f000000, 0xbf167914, 0x3ed9c433, 0x3f302d49, 0xbf59c444, 0x3f06964f, 0x0, 0xbf5d3b6d, 0x3ee2bef0, 0x3e7496ab, 0xbf3770ef, 0x3f2e8512, 0x3e1729f6, 0xbf302d49, 0x3f167914, 0x3ed9c433, 0xbf000000, 0x3f4f1bbd, 0x3e9e377a, 0xbe7496ab, 0x3f5d3b6d, 0x3ee2bef0, 0xbed9c433, 0x3f302d49, 0x3f167914, 0xbf3770ef, 0x3f2e8512, 0xbe1729f6, 0xbf000000, 0x3f4f1bbd, 0xbe9e377a, 0xbf06964f, 0x3f59c444, 0x0, 0x0, 0x3f59c444, 0xbf06964f, 0xbe7496ab, 0x3f5d3b6d, 0xbee2bef0, 0x0, 0x3f74969a, 0xbe9729f6, 0xbe86965f, 0x3f737868, 0xbe265bea, 0x0, 0x3f800000, 0x0, 0x0, 0x3f74969a, 0x3e9729f6, 0xbe86965f, 0x3f737868, 0x3e265bea, 0x3e7496ab, 0x3f5d3b6d, 0x3ee2bef0, 0x3e86965f, 0x3f737868, 0x3e265bea, 0x3f000000, 0x3f4f1bbd, 0x3e9e377a, 0x3e7496ab, 0x3f5d3b6d, 0xbee2bef0, 0x3e86965f, 0x3f737868, 0xbe265bea, 0x3f000000, 0x3f4f1bbd, 0xbe9e377a, 0x3f59c444, 0x3f06964f, 0x0, 0x3f3770ef, 0x3f2e8512, 0x3e1729f6, 0x3f3770ef, 0x3f2e8512, 0xbe1729f6, 0x3f06964f, 0x3f59c444, 0x0, 0x3ed9c433, 0x3f302d49, 0x3f167914, 0x3f5d3b6d, 0x3ee2bef0, 0x3e7496ab, 0x3f302d49, 0x3f167914, 0x3ed9c433, 0x3f4f1bbd, 0x3e9e377a, 0x3f000000, 0x3f2e8512, 0x3e1729f6, 0x3f3770ef, 0x3f167914, 0x3ed9c433, 0x3f302d49, 0x3f74969a, 0x3e9729f6, 0x0, 0x3f800000, 0x0, 0x0, 0x3f737868, 0x3e265bea, 0x3e86965f, 0x3f59c444, 0xbf06964f, 0x0, 0x3f74969a, 0xbe9729f6, 0x0, 0x3f5d3b6d, 0xbee2bef0, 0x3e7496ab, 0x3f737868, 0xbe265bea, 0x3e86965f, 0x3f4f1bbd, 0xbe9e377a, 0x3f000000, 0x3f2e8512, 0xbe1729f6, 0x3f3770ef, 0x3f59c444, 0x0, 0x3f06964f, 0x3f5d3b6d, 0x3ee2bef0, 0xbe7496ab, 0x3f4f1bbd, 0x3e9e377a, 0xbf000000, 0x3f737868, 0x3e265bea, 0xbe86965f, 0x3f06964f, 0x0, 0xbf59c444, 0x3f2e8512, 0x3e1729f6, 0xbf3770ef, 0x3f2e8512, 0xbe1729f6, 0xbf3770ef, 0x3f59c444, 0x0, 0xbf06964f, 0x3f4f1bbd, 0xbe9e377a, 0xbf000000, 0x3f5d3b6d, 0xbee2bef0, 0xbe7496ab, 0x3f737868, 0xbe265bea, 0xbe86965f, 0x3e1729f6, 0x3f3770ef, 0xbf2e8512, 0x3e9e377a, 0x3f000000, 0xbf4f1bbd, 0x3ed9c433, 0x3f302d49, 0xbf167914, 0x3ee2bef0, 0x3e7496ab, 0xbf5d3b6d, 0x3f167914, 0x3ed9c433, 0xbf302d49, 0x3f302d49, 0x3f167914, 0xbed9c433, 0xbe1729f6, 0x3f3770ef, 0xbf2e8512, 0xbe9e377a, 0x3f000000, 0xbf4f1bbd, 0x0, 0x3f06964f, 0xbf59c444, 0xbf06964f, 0x0, 0xbf59c444, 0xbee2bef0, 0x3e7496ab, 0xbf5d3b6d, 0xbe9729f6, 0x0, 0xbf74969a, 0xbe265bea, 0x3e86965f, 0xbf737868, 0x0, 0x0, 0xbf800000, 0x3e9729f6, 0x0, 0xbf74969a, 0x3e265bea, 0x3e86965f, 0xbf737868, 0xbee2bef0, 0xbe7496ab, 0xbf5d3b6d, 0xbe9e377a, 0xbf000000, 0xbf4f1bbd, 0xbe265bea, 0xbe86965f, 0xbf737868, 0x0, 0xbf59c444, 0xbf06964f, 0xbe1729f6, 0xbf3770ef, 0xbf2e8512, 0x3e1729f6, 0xbf3770ef, 0xbf2e8512, 0x0, 0xbf06964f, 0xbf59c444, 0x3e9e377a, 0xbf000000, 0xbf4f1bbd, 0x3ee2bef0, 0xbe7496ab, 0xbf5d3b6d, 0x3e265bea, 0xbe86965f, 0xbf737868, 0x3e7496ab, 0xbf5d3b6d, 0xbee2bef0, 0x3f000000, 0xbf4f1bbd, 0xbe9e377a, 0x3ed9c433, 0xbf302d49, 0xbf167914, 0x3f3770ef, 0xbf2e8512, 0xbe1729f6, 0x3f302d49, 0xbf167914, 0xbed9c433, 0x3f167914, 0xbed9c433, 0xbf302d49, 0x0, 0xbf74969a, 0xbe9729f6, 0x0, 0xbf800000, 0x0, 0x3e86965f, 0xbf737868, 0xbe265bea, 0x0, 0xbf59c444, 0x3f06964f, 0x0, 0xbf74969a, 0x3e9729f6, 0x3e7496ab, 0xbf5d3b6d, 0x3ee2bef0, 0x3e86965f, 0xbf737868, 0x3e265bea, 0x3f000000, 0xbf4f1bbd, 0x3e9e377a, 0x3f3770ef, 0xbf2e8512, 0x3e1729f6, 0x3f06964f, 0xbf59c444, 0x0, 0xbe7496ab, 0xbf5d3b6d, 0xbee2bef0, 0xbf000000, 0xbf4f1bbd, 0xbe9e377a, 0xbe86965f, 0xbf737868, 0xbe265bea, 0xbf59c444, 0xbf06964f, 0x0, 0xbf3770ef, 0xbf2e8512, 0xbe1729f6, 0xbf3770ef, 0xbf2e8512, 0x3e1729f6, 0xbf06964f, 0xbf59c444, 0x0, 0xbf000000, 0xbf4f1bbd, 0x3e9e377a, 0xbe7496ab, 0xbf5d3b6d, 0x3ee2bef0, 0xbe86965f, 0xbf737868, 0x3e265bea, 0xbf5d3b6d, 0xbee2bef0, 0x3e7496ab, 0xbf4f1bbd, 0xbe9e377a, 0x3f000000, 0xbf302d49, 0xbf167914, 0x3ed9c433, 0xbf2e8512, 0xbe1729f6, 0x3f3770ef, 0xbee2bef0, 0xbe7496ab, 0x3f5d3b6d, 0xbf167914, 0xbed9c433, 0x3f302d49, 0xbe9e377a, 0xbf000000, 0x3f4f1bbd, 0xbe1729f6, 0xbf3770ef, 0x3f2e8512, 0xbed9c433, 0xbf302d49, 0x3f167914, 0xbe265bea, 0xbe86965f, 0x3f737868, 0x3ee2bef0, 0xbe7496ab, 0x3f5d3b6d, 0x3e265bea, 0xbe86965f, 0x3f737868, 0x3e9e377a, 0xbf000000, 0x3f4f1bbd, 0x3e1729f6, 0xbf3770ef, 0x3f2e8512, 0x0, 0xbf06964f, 0x3f59c444, 0x3ed9c433, 0xbf302d49, 0x3f167914, 0x3f167914, 0xbed9c433, 0x3f302d49, 0x3f302d49, 0xbf167914, 0x3ed9c433, 0xbf74969a, 0x3e9729f6, 0x0, 0xbf737868, 0x3e265bea, 0x3e86965f, 0xbf800000, 0x0, 0x0, 0xbf59c444, 0x0, 0x3f06964f, 0xbf74969a, 0xbe9729f6, 0x0, 0xbf737868, 0xbe265bea, 0x3e86965f, 0xbf5d3b6d, 0x3ee2bef0, 0xbe7496ab, 0xbf737868, 0x3e265bea, 0xbe86965f, 0xbf4f1bbd, 0x3e9e377a, 0xbf000000, 0xbf5d3b6d, 0xbee2bef0, 0xbe7496ab, 0xbf737868, 0xbe265bea, 0xbe86965f, 0xbf4f1bbd, 0xbe9e377a, 0xbf000000, 0xbf2e8512, 0x3e1729f6, 0xbf3770ef, 0xbf2e8512, 0xbe1729f6, 0xbf3770ef, 0xbf59c444, 0x0, 0xbf06964f, 0xbf302d49, 0x3f167914, 0xbed9c433, 0xbf167914, 0x3ed9c433, 0xbf302d49, 0xbed9c433, 0x3f302d49, 0xbf167914, 0xbed9c433, 0xbf302d49, 0xbf167914, 0xbf167914, 0xbed9c433, 0xbf302d49, 0xbf302d49, 0xbf167914, 0xbed9c433


;Initialized constant data of com_math:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0xffffffff, 0x7fffffff, 0x0, 0x0
vec3_origin: dd 0x0, 0x0, 0x0
vec2_origin: dd 0x0, 0x0
identityMatrix44: dd 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of com_math:
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



;All constant floats and doubles:
SECTION .rdata
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_float_1_00000000:		dd 0x3f800000	; 1
_float_2_00000000:		dd 0x40000000	; 2
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_double__180_00000000:		dq 0xc066800000000000	; -180
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_double_180_00000000:		dq 0x4066800000000000	; 180
_float_90_00000000:		dd 0x42b40000	; 90
_float_270_00000000:		dd 0x43870000	; 270
_float__180_00000000:		dd 0xc3340000	; -180
_float__90_00000000:		dd 0xc2b40000	; -90
_float_180_00000000:		dd 0x43340000	; 180
_double_57_29577951:		dq 0x404ca5dc1a63c1f8	; 57.2958
_float_0_00000000:		dd 0x0	; 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00003052:		dd 0x38000000	; 3.05176e-05
_double__2_00000000:		dq 0xc000000000000000	; -2
_float__1_00000000:		dd 0xbf800000	; -1
_data16_ffffffff:		dd 0xffffffff, 0x7fffffff, 0x0, 0x0	; OWORD
_double_0_00100000:		dq 0x3f50624de0000000	; 0.001
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_float_0_00000100:		dd 0x358637be	; 1e-06
_float__2_00000000:		dd 0xc0000000	; -2
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_float_0_99951172:		dd 0x3f7fe000	; 0.999512
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319
_double__3_14159265:		dq 0xc00921fb54442d18	; -3.14159
_float_3_14159274:		dd 0x40490fdb	; 3.14159
_float_0_94999999:		dd 0x3f733333	; 0.95

