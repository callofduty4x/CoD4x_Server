;Imports of phys_coll_boxbrush:
	extern memmove
	extern memcpy
	extern _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	extern _Z12CG_DebugLinePKfS0_S0_ii
	extern phys_drawCollisionWorld
	extern colorCyan
	extern dCollideBoxTriangleList
	extern phys_drawCollisionObj
	extern colorLtGreen
	extern cm
	extern _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6_

;Exports of phys_coll_boxbrush:
	global _Z42Phys_CollideOrientedBrushWithBrush_WrapperPK8cbrush_tPv
	global _Z49Phys_CollideOrientedBrushWithTriangleList_WrapperPK8cbrush_tPv
	global _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf
	global _Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo
	global _Z34Phys_TestVertsAgainstPlane_WrapperPKfPK4Poly
	global _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj
	global _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S_
	global _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf
	global _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results
	global _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf
	global _Z13Phys_DrawPolyPK4PolyPKf
	global _Z18GetPolyOrientationPKfPA3_S_j
	global _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	global _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results
	global _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf
	global _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	global _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3_
	global _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results
	global _Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0_
	global _Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf
	global _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf
	global _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results
	global _Z39Phys_CollideOrientedBrushModelWithBrushPK8cbrush_tPK7objInfoP7Results
	global _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results
	global _Z46Phys_CollideOrientedBrushModelWithTriangleListPKtPA3_KfiPK7objInfoiP7Results


SECTION .text


;Phys_CollideOrientedBrushWithBrush_Wrapper(cbrush_t const*, void*)
_Z42Phys_CollideOrientedBrushWithBrush_WrapperPK8cbrush_tPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x8]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jl _Z42Phys_CollideOrientedBrushWithBrush_WrapperPK8cbrush_tPv_10
	leave
	ret
_Z42Phys_CollideOrientedBrushWithBrush_WrapperPK8cbrush_tPv_10:
	mov [esp+0xc], edx
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results
	leave
	ret


;Phys_CollideOrientedBrushWithTriangleList_Wrapper(cbrush_t const*, void*)
_Z49Phys_CollideOrientedBrushWithTriangleList_WrapperPK8cbrush_tPv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edx+0xc]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results
	leave
	ret
	add [eax], al


;Phys_ClipPolyAgainstPlane(float (*) [3], unsigned int, unsigned int, float const*)
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x58], eax
	mov [ebp-0x5c], edx
	sub edx, 0x1
	mov [ebp-0x1c], edx
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x58]
	lea eax, [edx+eax*4]
	mov ecx, [ebp+0x8]
	movss xmm4, dword [ecx]
	add ecx, 0x4
	mov [ebp-0x4c], ecx
	mov esi, [ebp+0x8]
	movss xmm5, dword [esi+0x4]
	add esi, 0x8
	mov [ebp-0x48], esi
	mov edx, [ebp+0x8]
	movss xmm3, dword [edx+0x8]
	add edx, 0xc
	mov [ebp-0x54], edx
	mov ecx, [ebp+0x8]
	movss xmm6, dword [ecx+0xc]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm6, xmm0
	setae byte [ebp-0x1d]
	mov eax, [ebp-0x5c]
	test eax, eax
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_10
	mov ecx, [ebp-0x58]
	mov esi, [ebp-0x1c]
	movzx edi, byte [ebp-0x1d]
	xor ebx, ebx
	mov byte [ebp-0x4d], 0x0
	mov dword [ebp-0x30], 0xffffffff
	mov dword [ebp-0x2c], 0xffffffff
	mov dword [ebp-0x28], 0xffffffff
	mov dword [ebp-0x24], 0xffffffff
	cmp ebx, [ebp-0x1c]
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_20
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_60:
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	movaps xmm1, xmm5
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ecx+0x8]
	addss xmm0, xmm1
	ucomiss xmm6, xmm0
	setae dl
	mov eax, edi
	test al, al
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_30
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_70:
	test dl, dl
	jnz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_40
	mov [ebp-0x2c], esi
	mov [ebp-0x30], ebx
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_40:
	mov byte [ebp-0x4d], 0x1
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_80:
	lea eax, [ebx+0x1]
	add ecx, 0xc
	mov edi, edx
	mov esi, ebx
	cmp [ebp-0x5c], eax
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_50
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_90:
	mov ebx, eax
	cmp ebx, [ebp-0x1c]
	jnz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_60
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_20:
	movzx edx, byte [ebp-0x1d]
	mov eax, edi
	test al, al
	jnz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_70
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_30:
	test dl, dl
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_80
	mov [ebp-0x24], esi
	mov [ebp-0x28], ebx
	lea eax, [ebx+0x1]
	add ecx, 0xc
	mov edi, edx
	mov esi, ebx
	cmp [ebp-0x5c], eax
	jnz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_90
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_50:
	cmp byte [ebp-0x4d], 0x0
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_10
	cmp dword [ebp-0x2c], 0xffffffff
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_100
	mov edx, [ebp-0x24]
	cmp [ebp-0x30], edx
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_110
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x58]
	lea edx, [esi+eax*4]
	mov ecx, [ebp-0x30]
	lea eax, [ecx+ecx*2]
	lea edi, [esi+eax*4]
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x3c], xmm0
	movss xmm7, dword [edi]
	movaps xmm2, xmm7
	subss xmm2, [edx]
	mulss xmm2, xmm4
	movss xmm0, dword [edi+0x4]
	movss [ebp-0x60], xmm0
	subss xmm0, xmm1
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss xmm0, dword [edi+0x8]
	movss [ebp-0x64], xmm0
	subss xmm0, [ebp-0x3c]
	mulss xmm0, xmm3
	addss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_120
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_130
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_120:
	mulss xmm4, [edx]
	mulss xmm5, xmm1
	addss xmm4, xmm5
	mulss xmm3, [ebp-0x3c]
	addss xmm4, xmm3
	movaps xmm1, xmm6
	subss xmm1, xmm4
	divss xmm1, xmm2
	movss xmm0, dword [edx]
	subss xmm7, xmm0
	mulss xmm7, xmm1
	addss xmm0, xmm7
	movss [edi], xmm0
	movss xmm0, dword [edx+0x4]
	movss xmm2, dword [ebp-0x60]
	subss xmm2, xmm0
	movss [ebp-0x60], xmm2
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [edi+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	movss xmm2, dword [ebp-0x64]
	subss xmm2, xmm0
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [edi+0x8], xmm0
	mov eax, [ebp+0x8]
	movss xmm4, dword [eax]
	mov ecx, [ebp-0x58]
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_190:
	mov edx, [ebp-0x28]
	lea eax, [edx+edx*2]
	lea edx, [ecx+eax*4]
	mov esi, [ebp-0x24]
	lea eax, [esi+esi*2]
	lea esi, [ecx+eax*4]
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [edx+0x8]
	mov eax, [ebp-0x4c]
	movss xmm0, dword [eax]
	movss [ebp-0x38], xmm0
	mov eax, [ebp-0x48]
	movss xmm0, dword [eax]
	movss [ebp-0x34], xmm0
	movss xmm2, dword [esi]
	movaps xmm3, xmm2
	subss xmm3, [edx]
	mulss xmm3, xmm4
	movss xmm6, dword [esi+0x4]
	movaps xmm0, xmm6
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	addss xmm3, xmm0
	movss xmm7, dword [esi+0x8]
	movaps xmm0, xmm7
	subss xmm0, xmm5
	mulss xmm0, [ebp-0x34]
	addss xmm3, xmm0
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_140
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_150
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_140:
	mulss xmm4, [edx]
	mulss xmm1, [ebp-0x38]
	addss xmm4, xmm1
	mulss xmm5, [ebp-0x34]
	addss xmm4, xmm5
	mov eax, [ebp-0x54]
	movss xmm1, dword [eax]
	subss xmm1, xmm4
	divss xmm1, xmm3
	movss xmm0, dword [edx]
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [esi], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm6, xmm0
	mulss xmm6, xmm1
	addss xmm0, xmm6
	movss [esi+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm7, xmm0
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss [esi+0x8], xmm0
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_150:
	mov ecx, [ebp-0x5c]
	mov eax, [ebp-0x30]
	add eax, 0x1
	cdq
	idiv ecx
	cmp [ebp-0x24], edx
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_160
	mov edx, [ebp-0x24]
	cmp [ebp-0x30], edx
	jl _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_170
	cmp esi, [ebp-0x58]
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_180
	mov ebx, [ebp-0x30]
	sub ebx, [ebp-0x24]
	lea eax, [ebx+ebx*2]
	lea eax, [eax*4+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x58]
	mov [esp], eax
	call memmove
	lea ecx, [ebx+0x1]
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_160:
	mov [ebp-0x5c], ecx
	mov eax, ecx
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_240:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_10:
	mov dword [ebp-0x5c], 0x0
	mov eax, [ebp-0x5c]
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_230:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_130:
	mov ecx, esi
	jmp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_190
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_100:
	mov eax, [ebp-0x5c]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_110:
	mov esi, [ebp-0x30]
	add esi, 0x1
	cmp [ebp-0x5c], esi
	jnz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_200
	mov ecx, [ebp-0x30]
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4]
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_250:
	add dword [ebp-0x5c], 0x1
	mov eax, esi
	xor edx, edx
	div dword [ebp-0x5c]
	mov esi, edx
	lea eax, [edx+0x1]
	xor edx, edx
	div dword [ebp-0x5c]
	mov eax, [ebp-0x2c]
	add eax, 0x1
	mov ecx, [ebp-0x24]
	cmp [ebp-0x2c], ecx
	cmovle eax, [ebp-0x2c]
	mov [ebp-0x2c], eax
	lea edx, [edx+edx*2]
	mov eax, [ebp-0x58]
	lea edx, [eax+edx*4]
	mov ecx, eax
	add ecx, ebx
	lea ebx, [ecx+0x4]
	lea eax, [edx+0x4]
	mov [ebp-0x44], eax
	movss xmm5, dword [edx+0x4]
	lea edi, [ecx+0x8]
	lea eax, [edx+0x8]
	mov [ebp-0x40], eax
	movss xmm2, dword [edx+0x8]
	mov eax, [ebp-0x4c]
	movss xmm6, dword [eax]
	mov eax, [ebp-0x48]
	movss xmm7, dword [eax]
	movss xmm3, dword [ecx]
	movaps xmm1, xmm3
	subss xmm1, [edx]
	mulss xmm1, xmm4
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm5
	mulss xmm0, xmm6
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm2
	mulss xmm0, xmm7
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jnz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_210
	jp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_210
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x58]
	lea eax, [edx+eax*4]
	movss [eax], xmm3
	mov edx, [ecx+0x4]
	mov [eax+0x4], edx
	mov edx, [ecx+0x8]
	mov [eax+0x8], edx
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_260:
	mov edx, [ebp-0x2c]
	lea eax, [edx+edx*2]
	mov esi, [ebp-0x58]
	lea eax, [esi+eax*4]
	movss xmm2, dword [eax+0x4]
	movss xmm5, dword [eax+0x8]
	mov edx, [ebp+0x8]
	movss xmm3, dword [edx]
	mov esi, [ebp-0x4c]
	movss xmm6, dword [esi]
	mov edx, [ebp-0x48]
	movss xmm7, dword [edx]
	movss xmm4, dword [ecx]
	movaps xmm1, xmm4
	subss xmm1, [eax]
	mulss xmm1, xmm3
	movss xmm0, dword [ebx]
	subss xmm0, xmm2
	mulss xmm0, xmm6
	addss xmm1, xmm0
	movss xmm0, dword [edi]
	subss xmm0, xmm5
	mulss xmm0, xmm7
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_220
	jz _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_100
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_220:
	mulss xmm3, [eax]
	mulss xmm2, xmm6
	addss xmm3, xmm2
	mulss xmm5, xmm7
	addss xmm3, xmm5
	mov edx, [ebp-0x54]
	movss xmm2, dword [edx]
	subss xmm2, xmm3
	divss xmm2, xmm1
	movss xmm0, dword [eax]
	subss xmm4, xmm0
	mulss xmm4, xmm2
	addss xmm0, xmm4
	movss [ecx], xmm0
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [ebx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edi]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ecx+0x8], xmm1
	mov eax, [ebp-0x5c]
	jmp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_230
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_170:
	mov ebx, ecx
	sub ebx, edx
	lea eax, [ebx+ebx*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [edi+0xc]
	mov [esp], eax
	call memmove
	mov esi, [ebp-0x30]
	lea ecx, [esi+ebx+0x1]
	mov [ebp-0x5c], ecx
	mov eax, ecx
	jmp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_240
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_200:
	mov edx, [ebp-0x30]
	lea eax, [edx+edx*2]
	lea ebx, [eax*4]
	mov edx, [ebp-0x58]
	add edx, ebx
	mov eax, [ebp-0x5c]
	sub eax, [ebp-0x30]
	lea eax, [eax+eax*2]
	lea eax, [eax*4-0xc]
	mov [esp+0x8], eax
	lea eax, [edx+0xc]
	mov [esp+0x4], eax
	add edx, 0x18
	mov [esp], edx
	call memmove
	mov ecx, [ebp+0x8]
	movss xmm4, dword [ecx]
	jmp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_250
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_210:
	mulss xmm4, [edx]
	mulss xmm5, xmm6
	addss xmm4, xmm5
	mulss xmm2, xmm7
	addss xmm4, xmm2
	mov eax, [ebp-0x54]
	movss xmm2, dword [eax]
	subss xmm2, xmm4
	divss xmm2, xmm1
	lea eax, [esi+esi*2]
	mov esi, [ebp-0x58]
	lea eax, [esi+eax*4]
	movss xmm0, dword [edx]
	subss xmm3, xmm0
	mulss xmm3, xmm2
	addss xmm0, xmm3
	movss [eax], xmm0
	mov edx, [ebp-0x44]
	movss xmm1, dword [edx]
	movss xmm0, dword [ebx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	mov esi, [ebp-0x40]
	movss xmm1, dword [esi]
	movss xmm0, dword [edi]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [eax+0x8], xmm1
	jmp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_260
_Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_180:
	mov ebx, [ebp-0x30]
	sub ebx, [ebp-0x24]
	lea ecx, [ebx+0x1]
	jmp _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf_160


;Phys_DoesPolyIntersectBox(Poly const*, objInfo const*)
_Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc4c
	mov [ebp-0xc30], edx
	mov esi, [eax+0x4]
	lea edx, [esi+esi*2]
	shl edx, 0x2
	mov eax, [eax]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	lea eax, [ebp-0xc28]
	mov [esp], eax
	call memcpy
	mov edi, [ebp-0xc30]
	mov dword [ebp-0xc2c], 0x0
	lea edx, [edi+0x38]
	mov [ebp-0xc34], edx
	lea ebx, [edi+0x40]
_Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo_30:
	mov eax, [ebx+0x4]
	mov [ebp-0x28], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x24], eax
	movss xmm1, dword [ebx+0xc]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0xc30]
	movss xmm2, dword [eax+0x38]
	mulss xmm2, [ebp-0x28]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebp-0x24]
	addss xmm2, xmm0
	mulss xmm1, [edx+0x8]
	addss xmm2, xmm1
	movaps xmm0, xmm2
	addss xmm0, [edi+0x8c]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov ecx, 0x100
	mov edx, esi
	lea eax, [ebp-0xc28]
	movss [ebp-0xc48], xmm2
	call _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf
	test eax, eax
	movss xmm2, dword [ebp-0xc48]
	jz _Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo_10
	movss xmm0, dword [ebp-0x28]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x24]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x20]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edi+0x8c]
	subss xmm0, xmm2
	movss [ebp-0x1c], xmm0
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov ecx, 0x100
	mov edx, eax
	lea eax, [ebp-0xc28]
	call _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf
	mov esi, eax
	test eax, eax
	jz _Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo_10
	add dword [ebp-0xc2c], 0x1
	add ebx, 0xc
	add edi, 0x4
	cmp dword [ebp-0xc2c], 0x3
	jz _Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo_20
	mov edx, [ebp-0xc34]
	jmp _Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo_30
_Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo_20:
	mov eax, 0x1
	add esp, 0xc4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo_10:
	xor eax, eax
	add esp, 0xc4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_TestVertsAgainstPlane_Wrapper(float const*, Poly const*)
_Z34Phys_TestVertsAgainstPlane_WrapperPKfPK4Poly:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x4]
	mov eax, [eax]
	test ecx, ecx
	jnz _Z34Phys_TestVertsAgainstPlane_WrapperPKfPK4Poly_10
	movss xmm3, dword [_float_3402823466385288598117041]
	movss [ebp-0x4], xmm3
	fld dword [ebp-0x4]
	leave
	ret
_Z34Phys_TestVertsAgainstPlane_WrapperPKfPK4Poly_10:
	movss xmm7, dword [edx]
	movss xmm6, dword [edx+0x4]
	movss xmm5, dword [edx+0x8]
	movss xmm4, dword [edx+0xc]
	xor edx, edx
	movss xmm3, dword [_float_3402823466385288598117041]
_Z34Phys_TestVertsAgainstPlane_WrapperPKfPK4Poly_20:
	movaps xmm0, xmm7
	mulss xmm0, [eax]
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, xmm4
	movaps xmm1, xmm0
	subss xmm1, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
	add edx, 0x1
	add eax, 0xc
	cmp ecx, edx
	jnz _Z34Phys_TestVertsAgainstPlane_WrapperPKfPK4Poly_20
	movss [ebp-0x4], xmm3
	fld dword [ebp-0x4]
	leave
	ret
	nop


;ClipPolys(float const*, float const (*) [3], unsigned int, float const (*) [3], unsigned int, float (*) [3], unsigned int)
_Z9ClipPolysPKfPA3_S_jS2_jPA3_fj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x30], eax
	mov [ebp-0x34], edx
	mov [ebp-0x38], ecx
	mov edi, [ebp+0xc]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x38]
	mov [esp+0x8], edx
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z18GetPolyOrientationPKfPA3_S_j
	cmp eax, 0x2
	jz _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_10
	sub eax, 0x1
	setz al
	mov edx, [ebp-0x38]
	sub edx, 0x1
	mov ecx, [ebp-0x38]
	test ecx, ecx
	jnz _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_20
_Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_40:
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_20:
	movzx eax, al
	mov [ebp-0x2c], eax
	mov ebx, [ebp-0x34]
	xor esi, esi
	jmp _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_30
_Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_50:
	lea eax, [esi+0x1]
	add ebx, 0xc
	mov edx, esi
	cmp [ebp-0x38], eax
	jz _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_40
	mov esi, eax
_Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_30:
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x34]
	lea eax, [edx+eax*4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf
	test al, al
	jz _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_50
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov ecx, [ebp+0x14]
	mov edx, edi
	mov eax, [ebp+0x10]
	call _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf
	mov edi, eax
	cmp eax, 0x2
	ja _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_50
_Z9ClipPolysPKfPA3_S_jS2_jPA3_fj_10:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_TestTriangleAgainstBrushPlane(float const*, float const (*) [3])
_Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea eax, [ecx+0xc]
	movss xmm6, dword [ecx+0xc]
	subss xmm6, [ecx]
	movss [ebp-0x20], xmm6
	movss xmm4, dword [eax+0x4]
	subss xmm4, [ecx+0x4]
	movss [ebp-0x1c], xmm4
	movss xmm3, dword [eax+0x8]
	subss xmm3, [ecx+0x8]
	movss [ebp-0x18], xmm3
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_01000000]
	ja _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__10
_Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__50:
	lea edx, [ebx+0x4]
	lea eax, [ebx+0x8]
	pxor xmm7, xmm7
_Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__60:
	movss xmm6, dword [ebx]
	movss xmm5, dword [edx]
	movss xmm4, dword [eax]
	movss xmm3, dword [ebx+0xc]
	movss xmm2, dword [_float_3402823466385288598117041]
	xor edx, edx
_Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__30:
	lea eax, [ecx+edx]
	movaps xmm1, xmm6
	mulss xmm1, [eax]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	subss xmm1, xmm3
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, xmm7
	jb _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__20
_Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__40:
	add edx, 0xc
	cmp edx, 0x24
	jnz _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__30
_Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__70:
	movss [ebp-0x34], xmm2
	fld dword [ebp-0x34]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__20:
	movaps xmm2, xmm1
	jmp _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__40
_Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__10:
	lea eax, [ecx+0x18]
	movss xmm7, dword [ecx+0x18]
	subss xmm7, [ecx]
	movss [ebp-0x14], xmm7
	movss xmm5, dword [eax+0x4]
	subss xmm5, [ecx+0x4]
	movss [ebp-0x10], xmm5
	movss xmm2, dword [eax+0x8]
	subss xmm2, [ecx+0x8]
	movss [ebp-0xc], xmm2
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_01000000]
	jbe _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__50
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	movss [ebp-0x2c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	mulss xmm2, xmm6
	mulss xmm3, xmm7
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movss [ebp-0x30], xmm0
	movaps xmm2, xmm7
	mulss xmm2, xmm4
	mulss xmm5, xmm6
	subss xmm2, xmm5
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	movss xmm1, dword [ebp-0x30]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_01000000]
	jbe _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__50
	lea edx, [ebx+0x4]
	lea eax, [ebx+0x8]
	movss xmm1, dword [ebp-0x2c]
	mulss xmm1, [ebx]
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	mulss xmm2, [ebx+0x8]
	addss xmm2, xmm1
	movss [ebp-0x2c], xmm2
	pxor xmm7, xmm7
	ucomiss xmm2, xmm7
	jbe _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__60
	movss xmm2, dword [_float__340282346638528859811704]
	jmp _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S__70
	nop


;Phys_CollideBoxWithBrushFace(cbrush_t const*, int, float const*, Poly const*, objInfo const*, Results*, float*)
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc9c
	mov [ebp-0xc80], eax
	mov [ebp-0xc84], edx
	mov edi, ecx
	mov esi, [ebp+0xc]
	movss xmm2, dword [_data16_80000000]
	movss xmm0, dword [ecx]
	xorps xmm0, xmm2
	mov eax, [ebp+0x14]
	movss [eax], xmm0
	lea edx, [ecx+0x4]
	mov [ebp-0xc68], edx
	movss xmm0, dword [ecx+0x4]
	xorps xmm0, xmm2
	movss [eax+0x4], xmm0
	lea ecx, [ecx+0x8]
	mov [ebp-0xc64], ecx
	movss xmm0, dword [edi+0x8]
	xorps xmm0, xmm2
	movss [eax+0x8], xmm0
	movss xmm7, dword [edi]
	movss xmm6, dword [edi+0x4]
	movss xmm5, dword [edi+0x8]
	movss xmm4, dword [_float_1_00000000]
	xor ecx, ecx
	mov dword [ebp-0xc7c], 0xffffffff
	mov dword [ebp-0xc78], 0x0
	lea edx, [esi+0x40]
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_60:
	movaps xmm1, xmm7
	mulss xmm1, [edx+0x4]
	movaps xmm0, xmm6
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movaps xmm3, xmm1
	xorps xmm3, xmm2
	xor eax, eax
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_30:
	movaps xmm0, xmm1
	ucomiss xmm4, xmm0
	jbe _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_10
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_40:
	movaps xmm4, xmm0
	mov [ebp-0xc7c], ecx
	mov [ebp-0xc78], eax
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_10:
	add eax, 0x1
	cmp eax, 0x2
	jz _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_20
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_50:
	test eax, eax
	jz _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_30
	movaps xmm0, xmm3
	ucomiss xmm4, xmm0
	ja _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_40
	add eax, 0x1
	cmp eax, 0x2
	jnz _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_50
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_20:
	add ecx, 0x1
	add edx, 0xc
	cmp ecx, 0x3
	jnz _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_60
	mov ecx, [ebp-0xc7c]
	add ecx, 0x1
	mov ebx, 0x55555556
	mov eax, ecx
	imul ebx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*2]
	sub ecx, edx
	mov [ebp-0xc70], ecx
	add ecx, 0x1
	mov [ebp-0xc8c], ecx
	mov eax, ecx
	imul ebx
	mov ecx, edx
	mov eax, [ebp-0xc8c]
	sar eax, 0x1f
	sub ecx, eax
	lea eax, [ecx+ecx*2]
	mov ecx, [ebp-0xc8c]
	sub ecx, eax
	mov [ebp-0xc6c], ecx
	lea edx, [esi+0x8c]
	mov eax, [esi+0x8c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov ebx, [ebp-0xc78]
	test ebx, ebx
	jz _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_70
	mov ebx, [ebp-0xc7c]
	movss xmm0, dword [ebp+ebx*4-0x24]
	xorps xmm0, xmm2
	movss [ebp+ebx*4-0x24], xmm0
	mov ebx, [ebp-0xc6c]
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_110:
	lea ecx, [esi+0x44]
	movss xmm2, dword [ebp-0x24]
	movss xmm3, dword [ebp-0x20]
	lea eax, [esi+0x50]
	movss xmm4, dword [ebp-0x1c]
	lea edx, [esi+0x5c]
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x44]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x50]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [esi+0x5c]
	addss xmm0, xmm1
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movss [ebp-0x50], xmm0
	mulss xmm2, [ecx+0x8]
	mulss xmm3, [eax+0x8]
	addss xmm2, xmm3
	mulss xmm4, [edx+0x8]
	addss xmm2, xmm4
	movss [ebp-0x4c], xmm2
	lea eax, [esi+0x38]
	movss xmm0, dword [esi+0x38]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, xmm2
	movss [ebp-0x4c], xmm0
	mov eax, [ebp-0xc70]
	lea edx, [eax+eax*2]
	lea edx, [esi+edx*4+0x40]
	movss xmm2, dword [_float__2_00000000]
	movss xmm1, dword [esi+eax*4+0x8c]
	mulss xmm1, xmm2
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x8]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x44], xmm0
	mulss xmm1, [edx+0xc]
	addss xmm1, [ebp-0x4c]
	movss [ebp-0x40], xmm1
	mov ecx, [ebp-0xc6c]
	lea eax, [ecx+ecx*2]
	lea eax, [esi+eax*4+0x40]
	lea ecx, [eax+0x4]
	mulss xmm2, [esi+ebx*4+0x8c]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x48]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x4]
	addss xmm0, [ebp-0x44]
	movss [ebp-0x38], xmm0
	mulss xmm2, [ecx+0x8]
	addss xmm2, xmm1
	movss [ebp-0x34], xmm2
	mov eax, [ebp-0xc70]
	movss xmm1, dword [esi+eax*4+0x8c]
	addss xmm1, xmm1
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x8]
	addss xmm0, [ebp-0x38]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [edx+0xc]
	addss xmm1, xmm2
	movss [ebp-0x28], xmm1
	mov edx, [ebp-0xc84]
	mov [esp+0x4], edx
	mov ecx, [ebp-0xc80]
	mov [esp], ecx
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	mov [ebp-0xc74], eax
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x4]
	mov dword [esp+0xc], 0x100
	lea esi, [ebp-0xc54]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x54]
	mov [esp], eax
	mov edx, [ebx]
	mov eax, edi
	call _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj
	mov [ebp-0xc60], eax
	test eax, eax
	jz _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_80
	mov dword [ebp-0xc5c], 0x0
	pxor xmm2, xmm2
	mov ebx, esi
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_100:
	movss xmm0, dword [edi]
	mulss xmm0, [ebx]
	mov edx, [ebp-0xc68]
	movss xmm1, dword [edx]
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	mov ecx, [ebp-0xc64]
	movss xmm1, dword [ecx]
	mulss xmm1, [ebx+0x8]
	addss xmm0, xmm1
	movss xmm1, dword [edi+0xc]
	subss xmm1, xmm0
	ucomiss xmm1, xmm2
	jbe _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_90
	mov esi, [ebp+0x10]
	mov eax, [esi+0x4]
	cmp eax, [esi+0x8]
	jge _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_80
	mov edx, eax
	imul edx, [esi+0xc]
	add edx, [esi]
	add eax, 0x1
	mov [esi+0x4], eax
	movss [edx+0x20], xmm1
	lea ecx, [edx+0x10]
	mov esi, [ebp+0x14]
	mov eax, [esi]
	mov [edx+0x10], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov eax, [ebp-0xc74]
	mov [edx+0x2c], eax
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jge _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_80
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_90:
	add dword [ebp-0xc5c], 0x1
	add ebx, 0xc
	mov ecx, [ebp-0xc5c]
	cmp [ebp-0xc60], ecx
	ja _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_100
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_80:
	add esp, 0xc9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_70:
	mov ebx, ecx
	jmp _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf_110
	nop


;Phys_CollideOrientedBrushAgainstFixedBrushFace(cbrush_t const*, int, float*, Poly const*, cbrush_t const*, Poly const*, float const (*) [4], Results*)
_Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc4c
	mov [ebp-0xc3c], eax
	mov [ebp-0xc40], edx
	mov esi, ecx
	mov eax, [ebp+0xc]
	movss xmm0, dword [_data16_80000000]
	movss xmm4, dword [ecx]
	movaps xmm1, xmm4
	xorps xmm1, xmm0
	movss [ebp-0xc20], xmm1
	lea edx, [ecx+0x4]
	mov [ebp-0xc34], edx
	movss xmm3, dword [ecx+0x4]
	movaps xmm1, xmm3
	xorps xmm1, xmm0
	movss [ebp-0xc24], xmm1
	lea edx, [ecx+0x8]
	mov [ebp-0xc30], edx
	movss xmm2, dword [ecx+0x8]
	movaps xmm1, xmm2
	xorps xmm1, xmm0
	movss [ebp-0xc28], xmm1
	mov ebx, [eax+0x1c]
	add ebx, 0x6
	jz _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_10
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x14]
	movss xmm5, dword [_float_2_00000000]
	xor ecx, ecx
	mov edi, 0xffffffff
_Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_30:
	cmp dword [edx+0x4], 0x0
	jz _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_20
	movaps xmm1, xmm4
	mulss xmm1, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	ucomiss xmm5, xmm1
	jbe _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_20
	mov edi, ecx
	movaps xmm5, xmm1
_Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_20:
	add ecx, 0x1
	add edx, 0x8
	add eax, 0x10
	cmp ebx, ecx
	jnz _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_30
	test edi, edi
	js _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_10
	mov eax, [ebp-0xc40]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc3c]
	mov [esp], edx
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	mov [ebp-0xc38], eax
	mov ecx, [ebp+0x10]
	lea edx, [ecx+edi*8]
	mov edi, [ebp-0xc40]
	mov eax, [ebp+0x8]
	lea ebx, [eax+edi*8]
	mov ecx, [ebx+0x4]
	mov dword [esp+0xc], 0x100
	lea edi, [ebp-0xc18]
	mov [esp+0x8], edi
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	mov edx, [ebx]
	mov eax, esi
	call _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj
	mov ebx, eax
	test eax, eax
	jz _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_10
	lea edx, [esi+0xc]
	mov [ebp-0xc1c], edx
	mov dword [ebp-0xc2c], 0x0
	pxor xmm2, xmm2
	mov ecx, edi
_Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_50:
	movss xmm0, dword [esi]
	mulss xmm0, [ecx]
	mov edi, [ebp-0xc34]
	movss xmm1, dword [edi]
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	mov eax, [ebp-0xc30]
	movss xmm1, dword [eax]
	mulss xmm1, [ecx+0x8]
	addss xmm0, xmm1
	movss xmm1, dword [edx]
	subss xmm1, xmm0
	ucomiss xmm1, xmm2
	jbe _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_40
	mov edi, [ebp+0x18]
	mov eax, [edi+0x4]
	cmp eax, [edi+0x8]
	jge _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_10
	mov edx, eax
	imul edx, [edi+0xc]
	add edx, [edi]
	add eax, 0x1
	mov [edi+0x4], eax
	movss [edx+0x20], xmm1
	lea eax, [edx+0x10]
	movss xmm0, dword [ebp-0xc20]
	movss [edx+0x10], xmm0
	movss xmm1, dword [ebp-0xc24]
	movss [eax+0x4], xmm1
	movss xmm0, dword [ebp-0xc28]
	movss [eax+0x8], xmm0
	mov dword [eax+0xc], 0x0
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov eax, [ebp-0xc38]
	mov [edx+0x2c], eax
	mov eax, [edi+0x4]
	cmp eax, [edi+0x8]
	jge _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_10
_Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_40:
	add dword [ebp-0xc2c], 0x1
	add ecx, 0xc
	cmp ebx, [ebp-0xc2c]
	jbe _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_10
	mov edx, [ebp-0xc1c]
	jmp _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_50
_Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results_10:
	add esp, 0xc4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;GetClosestBrushFace(float const*, cbrush_t const*, Poly const*, float*)
_Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x80], eax
	mov edi, edx
	mov esi, ecx
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [edx]
	xorps xmm0, xmm1
	mov ebx, 0xbf800000
	mov [ebp-0x78], ebx
	xor eax, eax
	mov [ebp-0x74], eax
	mov [ebp-0x70], eax
	movss [ebp-0x6c], xmm0
	mov edx, [edx+0x10]
	mov ecx, 0x3f800000
	mov [ebp-0x68], ecx
	mov [ebp-0x64], eax
	mov [ebp-0x60], eax
	mov [ebp-0x5c], edx
	movss xmm0, dword [edi+0x4]
	xorps xmm0, xmm1
	mov [ebp-0x58], eax
	mov [ebp-0x54], ebx
	mov [ebp-0x50], eax
	movss [ebp-0x4c], xmm0
	mov edx, [edi+0x14]
	mov [ebp-0x48], eax
	mov [ebp-0x44], ecx
	mov [ebp-0x40], eax
	mov [ebp-0x3c], edx
	movss xmm0, dword [edi+0x8]
	xorps xmm0, xmm1
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	mov [ebp-0x30], ebx
	movss [ebp-0x2c], xmm0
	mov edx, [edi+0x18]
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], ecx
	mov [ebp-0x1c], edx
	mov ecx, esi
	movss xmm2, dword [_float_2_00000000]
	mov dword [ebp-0x7c], 0xffffffff
	xor ebx, ebx
	movss xmm3, dword [_float__0_10000000]
	lea edx, [ebp-0x78]
_Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_20:
	mov eax, [ecx+0x4]
	test eax, eax
	jz _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_10
	mov eax, [ebp-0x80]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jbe _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_10
	ucomiss xmm3, xmm1
	jbe _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_10
	mov [ebp-0x7c], ebx
	movss xmm0, dword [edx]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	movss xmm0, dword [edx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	movss [eax+0x8], xmm0
	movss xmm0, dword [edx+0xc]
	movss [eax+0xc], xmm0
	movaps xmm2, xmm1
_Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_10:
	add ebx, 0x1
	add edx, 0x10
	add ecx, 0x8
	cmp ebx, 0x6
	jnz _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_20
	mov edx, [edi+0x1c]
	test edx, edx
	jnz _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_30
	mov eax, [ebp-0x7c]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_30:
	lea ecx, [esi+0x34]
	xor ebx, ebx
	xor esi, esi
_Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_50:
	mov eax, [ecx]
	test eax, eax
	jz _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_40
	mov eax, [edi+0x20]
	mov edx, [eax+esi]
	mov eax, [ebp-0x80]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jbe _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_40
	ucomiss xmm1, [_float__0_10000000]
	jae _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_40
	jp _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_40
	lea eax, [ebx+0x6]
	mov [ebp-0x7c], eax
	movss xmm0, dword [edx]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	movss xmm0, dword [edx+0x4]
	movss [eax+0x4], xmm0
	mov eax, [edx+0x8]
	mov edx, [ebp+0x8]
	mov [edx+0x8], eax
	mov eax, [edi+0x20]
	mov eax, [eax+esi]
	mov eax, [eax+0xc]
	mov [edx+0xc], eax
	movaps xmm2, xmm1
_Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_40:
	add ebx, 0x1
	add ecx, 0x8
	add esi, 0xc
	cmp [edi+0x1c], ebx
	ja _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf_50
	mov eax, [ebp-0x7c]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_DrawPoly(Poly const*, float const*)
_Z13Phys_DrawPolyPK4PolyPKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x4]
	lea ecx, [eax-0x1]
	test eax, eax
	jnz _Z13Phys_DrawPolyPK4PolyPKf_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Phys_DrawPolyPK4PolyPKf_10:
	xor esi, esi
	xor ebx, ebx
	jmp _Z13Phys_DrawPolyPK4PolyPKf_20
_Z13Phys_DrawPolyPK4PolyPKf_30:
	mov ecx, esi
	mov esi, eax
_Z13Phys_DrawPolyPK4PolyPKf_20:
	mov edx, [edi]
	mov dword [esp+0x10], 0x8
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	lea eax, [edx+ebx]
	mov [esp+0x4], eax
	lea eax, [ecx+ecx*2]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z12CG_DebugLinePKfS0_S0_ii
	lea eax, [esi+0x1]
	add ebx, 0xc
	cmp [edi+0x4], eax
	ja _Z13Phys_DrawPolyPK4PolyPKf_30
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;GetPolyOrientation(float const*, float const (*) [3], unsigned int)
_Z18GetPolyOrientationPKfPA3_S_j:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x8], xmm0
	subss xmm0, [eax]
	movss [ebp-0x8], xmm0
	movss xmm7, dword [edx+0x4]
	subss xmm7, [eax+0x4]
	movss xmm6, dword [edx+0x8]
	subss xmm6, [eax+0x8]
	mov ecx, [ebp+0x10]
	sub ecx, 0x1
	mov edx, 0x1
_Z18GetPolyOrientationPKfPA3_S_j_20:
	cmp edx, ecx
	jae _Z18GetPolyOrientationPKfPA3_S_j_10
	movss xmm2, dword [eax+0x18]
	subss xmm2, [eax+0xc]
	movss xmm3, dword [eax+0x1c]
	subss xmm3, [eax+0x10]
	movss xmm0, dword [eax+0x20]
	subss xmm0, [eax+0x14]
	movaps xmm5, xmm7
	mulss xmm5, xmm0
	movaps xmm1, xmm6
	mulss xmm1, xmm3
	subss xmm5, xmm1
	movaps xmm4, xmm6
	mulss xmm4, xmm2
	mulss xmm0, [ebp-0x8]
	subss xmm4, xmm0
	mulss xmm3, [ebp-0x8]
	mulss xmm2, xmm7
	subss xmm3, xmm2
	add eax, 0xc
	add edx, 0x1
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_01000000]
	jbe _Z18GetPolyOrientationPKfPA3_S_j_20
	mulss xmm5, [ebx]
	mulss xmm4, [ebx+0x4]
	addss xmm5, xmm4
	mulss xmm3, [ebx+0x8]
	addss xmm5, xmm3
	pxor xmm0, xmm0
	xor eax, eax
	ucomiss xmm0, xmm5
	seta al
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z18GetPolyOrientationPKfPA3_S_j_10:
	mov eax, 0x2
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Phys_AddContactData(Results*, float, float const*, float const*, int)
_Z19Phys_AddContactDataP7ResultsfPKfS2_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov eax, [esi+0x4]
	cmp eax, [esi+0x8]
	jge _Z19Phys_AddContactDataP7ResultsfPKfS2_i_10
	mov edx, eax
	imul edx, [esi+0xc]
	add edx, [esi]
	add eax, 0x1
	mov [esi+0x4], eax
	movss xmm0, dword [ebp+0xc]
	movss [edx+0x20], xmm0
	lea ecx, [edx+0x10]
	mov eax, [ebx]
	mov [edx+0x10], eax
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	xor ebx, ebx
	mov [ecx+0xc], ebx
	mov eax, [edi]
	mov [edx], eax
	mov eax, [edi+0x4]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov [edx+0xc], ebx
	mov eax, [ebp+0x18]
	mov [edx+0x2c], eax
	mov eax, [esi+0x4]
	cmp eax, [esi+0x8]
	setl al
	movzx eax, al
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Phys_AddContactDataP7ResultsfPKfS2_i_10:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_CollideBoxWithBrush(cbrush_t const*, objInfo const*, Results*)
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x460c
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	xor edi, edi
	movss xmm5, dword [_data16_7fffffff]
	mov ebx, [ebp+0xc]
	add ebx, 0x40
	xor esi, esi
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_20:
	lea edx, [ebx+0x4]
	lea eax, [ebp-0x94]
	add eax, esi
	mov ecx, 0x3
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_10:
	movss xmm0, dword [edx]
	andps xmm0, xmm5
	movss [eax], xmm0
	add edx, 0x4
	add eax, 0x4
	sub ecx, 0x1
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_10
	add edi, 0x1
	add esi, 0xc
	add ebx, 0xc
	cmp edi, 0x3
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_20
	mov eax, [ebp+0xc]
	add eax, 0x8c
	mov [ebp-0x4548], eax
	mov edx, [ebp+0xc]
	movss xmm3, dword [edx+0x8c]
	add edx, 0x90
	mov [ebp-0x4544], edx
	mov ecx, [ebp+0xc]
	movss xmm1, dword [ecx+0x90]
	add ecx, 0x94
	mov [ebp-0x4540], ecx
	mov ebx, [ebp+0xc]
	movss xmm2, dword [ebx+0x94]
	movaps xmm4, xmm3
	mulss xmm4, [ebp-0x94]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x88]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x7c]
	addss xmm4, xmm0
	movaps xmm6, xmm3
	mulss xmm6, [ebp-0x90]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x84]
	addss xmm6, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x78]
	addss xmm6, xmm0
	mulss xmm3, [ebp-0x8c]
	mulss xmm1, [ebp-0x80]
	addss xmm3, xmm1
	mulss xmm2, [ebp-0x74]
	addss xmm3, xmm2
	mov edi, [ebp+0x8]
	movss xmm0, dword [edi+0x10]
	movss [ebp-0x458c], xmm0
	movss xmm1, dword [ebx+0x38]
	movss [ebp-0x456c], xmm1
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x458c]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_30
	movaps xmm7, xmm0
	subss xmm7, xmm4
	ucomiss xmm7, xmm2
	jb _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_40
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60:
	add esp, 0x460c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_30:
	movss xmm7, dword [_float__340282346638528859811704]
	mov dword [ebp-0x4554], 0xffffffff
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_240:
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax]
	movaps xmm0, xmm1
	mov edx, [ebp+0xc]
	subss xmm0, [edx+0x38]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_50
	subss xmm0, xmm4
	ucomiss xmm0, xmm2
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	cmp byte [eax+0x40], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_70
	ucomiss xmm0, xmm7
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_70
	mov dword [ebp-0x40], 0xbf800000
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x34], xmm1
	movaps xmm7, xmm0
	mov dword [ebp-0x4554], 0x0
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_50:
	movss xmm1, dword [eax+0x14]
	movss xmm0, dword [edx+0x3c]
	subss xmm0, xmm1
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_80
	subss xmm0, xmm6
	ucomiss xmm0, xmm2
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	cmp byte [eax+0x44], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_90
	ucomiss xmm0, xmm7
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_90
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x3f800000
	mov dword [ebp-0x38], 0x0
	movss [ebp-0x34], xmm1
	movaps xmm7, xmm0
	mov dword [ebp-0x4554], 0x3
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_80:
	movss xmm1, dword [eax+0x4]
	movaps xmm0, xmm1
	subss xmm0, [edx+0x3c]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_100
	subss xmm0, xmm6
	ucomiss xmm0, xmm2
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	cmp byte [eax+0x41], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_110
	ucomiss xmm0, xmm7
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_110
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0xbf800000
	mov dword [ebp-0x38], 0x0
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x34], xmm1
	movaps xmm7, xmm0
	mov dword [ebp-0x4554], 0x2
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_100:
	movss xmm1, dword [eax+0x18]
	movss xmm0, dword [edx+0x40]
	subss xmm0, xmm1
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_120
	subss xmm0, xmm3
	ucomiss xmm0, xmm2
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	cmp byte [eax+0x45], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_120
	ucomiss xmm0, xmm7
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_120
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x3f800000
	movss [ebp-0x34], xmm1
	movaps xmm7, xmm0
	mov dword [ebp-0x4554], 0x5
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_120:
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax+0x8]
	movaps xmm0, xmm1
	mov edx, [ebp+0xc]
	subss xmm0, [edx+0x40]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_130
	subss xmm0, xmm3
	ucomiss xmm0, xmm2
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	cmp byte [eax+0x42], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_130
	ucomiss xmm0, xmm7
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_130
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0xbf800000
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x34], xmm1
	movaps xmm7, xmm0
	mov dword [ebp-0x4554], 0x4
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_130:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x1c]
	test edi, edi
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_140
	xor ebx, ebx
	xor ecx, ecx
	mov edx, [eax+0x20]
	mov [ebp-0x459c], edx
	mov edi, [ebp+0xc]
	lea esi, [edi+0x68]
	mov eax, edi
	lea edi, [edi+0x74]
	lea edx, [eax+0x80]
	mov [ebp-0x4570], edx
	cvtss2sd xmm0, [eax+0x8c]
	movsd [ebp-0x4578], xmm0
	cvtss2sd xmm1, [eax+0x90]
	movsd [ebp-0x4580], xmm1
	cvtss2sd xmm2, [eax+0x94]
	movsd [ebp-0x4588], xmm2
	add eax, 0x38
	mov [ebp-0x4590], eax
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_160:
	mov edx, [ebp-0x459c]
	add edx, ecx
	mov [ebp-0x45ec], edx
	mov edx, [edx]
	movss xmm6, dword [edx]
	movss xmm3, dword [edx+0x4]
	movss xmm4, dword [edx+0x8]
	movaps xmm1, xmm6
	mov eax, [ebp+0xc]
	mulss xmm1, [eax+0x68]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x74]
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x80]
	addss xmm1, xmm0
	andps xmm1, xmm5
	cvtss2sd xmm1, xmm1
	mulsd xmm1, [ebp-0x4578]
	movaps xmm0, xmm6
	mulss xmm0, [esi+0x4]
	movaps xmm2, xmm3
	mulss xmm2, [edi+0x4]
	addss xmm0, xmm2
	movaps xmm2, xmm4
	mov eax, [ebp-0x4570]
	mulss xmm2, [eax+0x4]
	addss xmm0, xmm2
	andps xmm0, xmm5
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [ebp-0x4580]
	addsd xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [esi+0x8]
	movaps xmm2, xmm3
	mulss xmm2, [edi+0x8]
	addss xmm0, xmm2
	movaps xmm2, xmm4
	mulss xmm2, [eax+0x8]
	addss xmm0, xmm2
	andps xmm0, xmm5
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [ebp-0x4588]
	addsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss xmm0, dword [ebp-0x456c]
	mulss xmm0, xmm6
	mov eax, [ebp-0x4590]
	mulss xmm3, [eax+0x4]
	addss xmm0, xmm3
	mulss xmm4, [eax+0x8]
	addss xmm0, xmm4
	subss xmm0, [edx+0xc]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_150
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	mov eax, [ebp-0x45ec]
	cmp byte [eax+0xa], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_150
	ucomiss xmm0, xmm7
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_150
	movss [ebp-0x40], xmm6
	mov eax, [edx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x38], eax
	mov eax, [edx+0xc]
	mov [ebp-0x34], eax
	lea edx, [ebx+0x6]
	mov [ebp-0x4554], edx
	movaps xmm7, xmm0
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_150:
	add ebx, 0x1
	add ecx, 0xc
	mov eax, [ebp+0x8]
	cmp ebx, [eax+0x1c]
	jb _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_160
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_140:
	movss [ebp-0x4564], xmm7
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x64], 0x0
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	movss xmm1, dword [_data16_80000000]
	mov edx, [ebp-0x4548]
	movss xmm6, dword [edx]
	xorps xmm6, xmm1
	mov ecx, [ebp-0x4544]
	movss xmm7, dword [ecx]
	xorps xmm7, xmm1
	mov ebx, [ebp-0x4540]
	movss xmm0, dword [ebx]
	movss [ebp-0x4538], xmm0
	xor dword [ebp-0x4538], 0x80000000
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	add edx, 0x6
	mov [ebp-0x4558], edx
	movss xmm0, dword [eax]
	xorps xmm0, xmm1
	mov edx, 0xbf800000
	mov [ebp-0x124], edx
	mov dword [ebp-0x120], 0x0
	mov dword [ebp-0x11c], 0x0
	movss [ebp-0x118], xmm0
	mov ecx, 0x3f800000
	mov [ebp-0x114], ecx
	mov dword [ebp-0x110], 0x0
	mov dword [ebp-0x10c], 0x0
	movss xmm0, dword [ebp-0x458c]
	movss [ebp-0x108], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, xmm1
	mov dword [ebp-0x104], 0x0
	mov [ebp-0x100], edx
	mov dword [ebp-0xfc], 0x0
	movss [ebp-0xf8], xmm0
	mov ebx, eax
	mov eax, [eax+0x14]
	mov dword [ebp-0xf4], 0x0
	mov [ebp-0xf0], ecx
	mov dword [ebp-0xec], 0x0
	mov [ebp-0xe8], eax
	movss xmm0, dword [ebx+0x8]
	xorps xmm0, xmm1
	mov dword [ebp-0xe4], 0x0
	mov dword [ebp-0xe0], 0x0
	mov [ebp-0xdc], edx
	movss [ebp-0xd8], xmm0
	mov eax, [ebx+0x18]
	mov dword [ebp-0xd4], 0x0
	mov dword [ebp-0xd0], 0x0
	mov [ebp-0xcc], ecx
	mov [ebp-0xc8], eax
	mov esi, [ebp-0x4558]
	test esi, esi
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	xor edi, edi
	mov dword [ebp-0x4550], 0x0
	mov eax, [ebp+0xc]
	add eax, 0x68
	mov [ebp-0x45b0], eax
	mov edx, [ebp+0xc]
	add edx, 0x74
	mov [ebp-0x45b4], edx
	mov ecx, [ebp+0xc]
	sub ecx, 0xffffff80
	mov [ebp-0x45b8], ecx
	mov ebx, [ebp+0xc]
	add ebx, 0x38
	mov [ebp-0x45bc], ebx
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_190:
	mov edx, [ebp-0x4550]
	lea eax, [edx+edx*2]
	lea esi, [ebp+eax*4-0x4524]
	lea ebx, [edi*8]
	mov [ebp+ebx-0x924], esi
	lea ecx, [ebp-0x124]
	mov [esp+0x10], ecx
	mov eax, 0x400
	sub eax, edx
	mov [esp+0xc], eax
	lea eax, [ebp-0x924]
	add eax, ebx
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x45d8], xmm6
	movss [ebp-0x45e8], xmm7
	call _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	mov edx, [ebp+ebx-0x920]
	add [ebp-0x4550], edx
	test edx, edx
	movss xmm6, dword [ebp-0x45d8]
	movss xmm7, dword [ebp-0x45e8]
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_170
	mov eax, esi
	xor ecx, ecx
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_180:
	movss xmm3, dword [eax]
	mov ebx, [ebp+0xc]
	subss xmm3, [ebx+0x38]
	movss xmm1, dword [eax+0x4]
	mov ebx, [ebp-0x45bc]
	subss xmm1, [ebx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [ebx+0x8]
	movaps xmm5, xmm3
	mov ebx, [ebp+0xc]
	mulss xmm5, [ebx+0x68]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x74]
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x80]
	addss xmm5, xmm0
	movaps xmm4, xmm3
	mov ebx, [ebp-0x45b0]
	mulss xmm4, [ebx+0x4]
	movaps xmm0, xmm1
	mov ebx, [ebp-0x45b4]
	mulss xmm0, [ebx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mov ebx, [ebp-0x45b8]
	mulss xmm0, [ebx+0x4]
	addss xmm4, xmm0
	mov ebx, [ebp-0x45b0]
	mulss xmm3, [ebx+0x8]
	mov ebx, [ebp-0x45b4]
	mulss xmm1, [ebx+0x8]
	addss xmm3, xmm1
	mov ebx, [ebp-0x45b8]
	mulss xmm2, [ebx+0x8]
	addss xmm3, xmm2
	movaps xmm2, xmm6
	addss xmm2, xmm5
	movss [ebp-0x58], xmm2
	movaps xmm0, xmm7
	addss xmm0, xmm4
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x4538]
	addss xmm0, xmm3
	movss [ebp-0x50], xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm5
	movaps xmm5, xmm0
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm4
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebp-0x4538]
	subss xmm0, xmm3
	movss [ebp-0x44], xmm0
	movss xmm1, dword [ebp-0x70]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	pxor xmm3, xmm3
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm2, xmm3
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x70], xmm0
	movss xmm1, dword [ebp-0x54]
	movss xmm2, dword [ebp-0x6c]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	pxor xmm3, xmm3
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x6c], xmm0
	movss xmm1, dword [ebp-0x50]
	movss xmm2, dword [ebp-0x68]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	pxor xmm3, xmm3
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x68], xmm0
	movss xmm1, dword [ebp-0x64]
	movaps xmm0, xmm5
	subss xmm0, xmm1
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm5, xmm2
	andnps xmm0, xmm1
	orps xmm0, xmm5
	movss [ebp-0x64], xmm0
	movss xmm1, dword [ebp-0x48]
	movss xmm2, dword [ebp-0x60]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	pxor xmm3, xmm3
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x60], xmm0
	movss xmm1, dword [ebp-0x44]
	movss xmm2, dword [ebp-0x5c]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	pxor xmm3, xmm3
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x5c], xmm0
	add ecx, 0x1
	add eax, 0xc
	cmp edx, ecx
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_180
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_170:
	add edi, 0x1
	cmp [ebp-0x4558], edi
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_190
	mov ebx, [ebp-0x4550]
	test ebx, ebx
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	mov eax, phys_drawCollisionWorld
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_200
	mov edx, [ebp+0x8]
	cmp dword [edx+0x1c], 0xfffffffa
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_200
	xor esi, esi
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_210
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_220:
	add esi, 0x1
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1c]
	add eax, 0x6
	cmp eax, esi
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_200
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_210:
	lea ebx, [ebp+esi*8-0x924]
	mov eax, [ebx+0x4]
	lea ecx, [eax-0x1]
	test eax, eax
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_220
	xor edi, edi
	mov dword [ebp-0x452c], 0x0
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_230:
	mov edx, [ebx]
	mov dword [esp+0x10], 0x8
	mov dword [esp+0xc], 0x0
	mov eax, colorCyan
	mov [esp+0x8], eax
	mov eax, [ebp-0x452c]
	add eax, edx
	mov [esp+0x4], eax
	lea eax, [ecx+ecx*2]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z12CG_DebugLinePKfS0_S0_ii
	lea eax, [edi+0x1]
	add dword [ebp-0x452c], 0xc
	cmp [ebx+0x4], eax
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_220
	mov ecx, edi
	mov edi, eax
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_230
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_40:
	cmp byte [edi+0x43], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_30
	mov dword [ebp-0x40], 0x3f800000
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	movss xmm0, dword [ebp-0x458c]
	movss [ebp-0x34], xmm0
	mov dword [ebp-0x4554], 0x1
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_240
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_70:
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_50
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_90:
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_80
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_110:
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_100
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_200:
	mov dword [ebp-0x4560], 0x0
	mov dword [ebp-0x455c], 0x0
	xor ebx, ebx
	lea esi, [ebp-0x70]
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_270:
	lea edx, [esi+ebx*4]
	xor ecx, ecx
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_260:
	movss xmm0, dword [edx]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	mov edi, [ebp-0x455c]
	lea eax, [edi+edi*2]
	add eax, [ebp-0x4560]
	ucomiss xmm0, [ebp+eax*4-0x70]
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_250
	mov [ebp-0x4560], ebx
	mov [ebp-0x455c], ecx
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_250:
	add ecx, 0x1
	add edx, 0xc
	cmp ecx, 0x2
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_260
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_270
	mov edx, [ebp-0x455c]
	lea eax, [edx+edx*2]
	add eax, [ebp-0x4560]
	movss xmm0, dword [ebp+eax*4-0x70]
	ucomiss xmm0, [ebp-0x4564]
	ja _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_280
	cmp dword [ebp-0x4554], 0xffffffff
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_280
	mov ecx, [ebp-0x4554]
	mov ecx, [ebp+ecx*8-0x920]
	test ecx, ecx
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_290
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_280:
	mov edx, [ebp-0x455c]
	test edx, edx
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_300
	mov ebx, [ebp-0x4560]
	lea eax, [ebx+ebx*2]
	mov edi, [ebp+0xc]
	lea eax, [edi+eax*4+0x40]
	lea edx, [eax+0x4]
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [eax+0x4]
	xorps xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edx+0x4]
	xorps xmm0, xmm1
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edx+0x8]
	xorps xmm0, xmm1
	movss [ebp-0x28], xmm0
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_470:
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	lea ecx, [ebp-0x924]
	mov edx, [ebp+0x8]
	lea eax, [ebp-0x30]
	call _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf
	mov [ebp-0x4554], eax
	test eax, eax
	js _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_310
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	mov [ebp-0x454c], eax
	mov eax, [ebp-0x4554]
	lea eax, [ebp+eax*8-0x924]
	mov [ebp-0x453c], eax
	mov ecx, [ebp-0x4560]
	add ecx, 0x1
	mov ebx, 0x55555556
	mov eax, ecx
	imul ebx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*2]
	mov esi, ecx
	sub esi, edx
	lea edi, [esi+0x1]
	mov eax, edi
	imul ebx
	mov ecx, edx
	mov eax, edi
	sar eax, 0x1f
	sub ecx, eax
	lea eax, [ecx+ecx*2]
	mov ebx, edi
	sub ebx, eax
	mov ecx, [ebp-0x4548]
	mov eax, [ecx]
	mov [ebp-0x24], eax
	mov edi, [ebp-0x4544]
	mov eax, [edi]
	mov [ebp-0x20], eax
	mov edx, [ebp-0x4540]
	mov eax, [edx]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x455c]
	test eax, eax
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_320
	movss xmm5, dword [_data16_80000000]
	mov ecx, [ebp-0x4560]
	movss xmm0, dword [ebp+ecx*4-0x24]
	xorps xmm0, xmm5
	movss [ebp+ecx*4-0x24], xmm0
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_480:
	mov eax, [ebp+0xc]
	add eax, 0x44
	movss xmm2, dword [ebp-0x24]
	movss xmm3, dword [ebp-0x20]
	mov edx, [ebp+0xc]
	add edx, 0x50
	movss xmm4, dword [ebp-0x1c]
	mov ecx, [ebp+0xc]
	add ecx, 0x5c
	movaps xmm0, xmm2
	mov edi, [ebp+0xc]
	mulss xmm0, [edi+0x44]
	movaps xmm1, xmm3
	mulss xmm1, [edi+0x50]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edi+0x5c]
	addss xmm0, xmm1
	movss [ebp-0xc4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	movss [ebp-0xc0], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [edx+0x8]
	addss xmm2, xmm3
	mulss xmm4, [ecx+0x8]
	addss xmm2, xmm4
	movss [ebp-0xbc], xmm2
	lea edx, [esi+esi*2]
	lea edx, [edi+edx*4+0x40]
	movss xmm2, dword [_float__2_00000000]
	movss xmm1, dword [edi+esi*4+0x8c]
	mulss xmm1, xmm2
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm0, [ebp-0xc4]
	movss [ebp-0xb8], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x8]
	addss xmm0, [ebp-0xc0]
	movss [ebp-0xb4], xmm0
	mulss xmm1, [edx+0xc]
	addss xmm1, [ebp-0xbc]
	movss [ebp-0xb0], xmm1
	lea eax, [ebx+ebx*2]
	lea eax, [edi+eax*4+0x40]
	lea ecx, [eax+0x4]
	mulss xmm2, [edi+ebx*4+0x8c]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0xb8]
	movss [ebp-0xac], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x4]
	addss xmm0, [ebp-0xb4]
	movss [ebp-0xa8], xmm0
	mulss xmm2, [ecx+0x8]
	addss xmm2, xmm1
	movss [ebp-0xa4], xmm2
	movss xmm1, dword [edi+esi*4+0x8c]
	addss xmm1, xmm1
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm0, [ebp-0xac]
	movss [ebp-0xa0], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x8]
	addss xmm0, [ebp-0xa8]
	movss [ebp-0x9c], xmm0
	mulss xmm1, [edx+0xc]
	addss xmm1, xmm2
	movss [ebp-0x98], xmm1
	xor edx, edx
	lea eax, [edi+0x38]
	mov [ebp-0x4590], eax
	lea ecx, [edi+0x3c]
	mov [ebp-0x4594], ecx
	lea ebx, [edi+0x40]
	mov [ebp-0x4598], ebx
	movss xmm4, dword [edi+0x38]
	lea eax, [ebp-0xc4]
	movss xmm6, dword [edi+0x3c]
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_330:
	movss xmm0, dword [eax]
	addss xmm0, xmm4
	movss [eax], xmm0
	movss xmm3, dword [eax+0x4]
	addss xmm3, xmm6
	movss [eax+0x4], xmm3
	movss xmm1, dword [eax+0x8]
	mov edi, [ebp+0xc]
	addss xmm1, [edi+0x40]
	movss [eax+0x8], xmm1
	movss xmm2, dword [ebp-0x40]
	movaps xmm0, xmm2
	mulss xmm0, [eax]
	mulss xmm3, [ebp-0x3c]
	addss xmm0, xmm3
	mulss xmm1, [ebp-0x38]
	addss xmm0, xmm1
	subss xmm0, [ebp-0x34]
	xorps xmm0, xmm5
	mulss xmm2, xmm0
	addss xmm2, [eax]
	movss [eax], xmm2
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x3c]
	addss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [ebp-0x38]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x4
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_330
	mov eax, [ebp-0x453c]
	mov edi, [eax+0x4]
	test edi, edi
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_340
	xor esi, esi
	xor ebx, ebx
	lea ecx, [ebp-0x1524]
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_350:
	mov edx, ebx
	mov eax, [ebp-0x453c]
	add edx, [eax]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	add esi, 0x1
	add ecx, 0xc
	add ebx, 0xc
	cmp edi, esi
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_350
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_340:
	mov dword [esp+0x8], 0x4
	lea edx, [ebp-0xc4]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z18GetPolyOrientationPKfPA3_S_j
	cmp eax, 0x2
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_310
	sub eax, 0x1
	setz al
	movzx esi, al
	xor edx, edx
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_360
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_390:
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0xc4]
	mov [esp+0x8], eax
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0xc4]
	mov [esp+0x4], eax
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf
	test al, al
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_370
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_530:
	cmp ebx, 0x4
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_380
	mov edx, ebx
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_360:
	lea ebx, [edx+0x1]
	lea eax, [ebp-0x94]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov eax, ebx
	and eax, 0x80000003
	jns _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_390
	sub eax, 0x1
	or eax, 0xfffffffc
	add eax, 0x1
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_390
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_290:
	lea ecx, [ebp-0x40]
	lea ebx, [ebp-0x30]
	mov [esp+0xc], ebx
	mov edi, [ebp+0x10]
	mov [esp+0x8], edi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4554]
	lea eax, [ebp+edx*8-0x924]
	mov [esp], eax
	mov eax, [ebp+0x8]
	call _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_310:
	mov ecx, [ebp+0xc]
	cmp byte [ecx+0xa4], 0x0
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	mov edi, ecx
	mov esi, [ebp+0x8]
	mov dword [ebp-0x4534], 0x1
	mov dword [ebp-0x4530], 0x0
	lea ebx, [ebp-0x124]
	mov [ebp-0x45a0], ebx
	lea eax, [ebp-0x924]
	mov [ebp-0x45a4], eax
	add ebx, 0x10
	mov [ebp-0x45a8], ebx
	mov dword [ebp-0x45ac], 0x8
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_400
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_440:
	movss xmm0, dword [esi]
	ucomiss xmm0, [edi+0x38]
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_410
	mov ecx, [ebp-0x4554]
	cmp [ebp-0x4530], ecx
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_420
	mov edx, [ebp+0xc]
	mov eax, [ebp-0x45a4]
	call _Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo
	test al, al
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_420
	lea ebx, [ebp-0x30]
	mov [esp+0xc], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x45a4]
	mov [esp], ecx
	mov ecx, [ebp-0x45a0]
	mov edx, [ebp-0x4530]
	mov eax, [ebp+0x8]
	call _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_420:
	add dword [ebp-0x4534], 0x2
	add dword [ebp-0x45ac], 0x10
	add dword [ebp-0x45a8], 0x20
	add dword [ebp-0x4530], 0x2
	add dword [ebp-0x45a4], 0x10
	add dword [ebp-0x45a0], 0x20
	add edi, 0x4
	add esi, 0x4
	cmp dword [ebp-0x4534], 0x7
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_430
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_400:
	mov edx, [ebp-0x45ac]
	mov eax, [edx+ebp-0x928]
	test eax, eax
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_440
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_410:
	mov ebx, [ebp-0x45ac]
	mov eax, [ebx+ebp-0x920]
	test eax, eax
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_420
	movss xmm0, dword [edi+0x38]
	ucomiss xmm0, [esi+0x10]
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_420
	mov eax, [ebp-0x4554]
	cmp [ebp-0x4534], eax
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_420
	lea ebx, [ebp-0x924]
	add ebx, [ebp-0x45ac]
	mov edx, [ebp+0xc]
	mov eax, ebx
	call _Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo
	test al, al
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_420
	lea edx, [ebp-0x30]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov ecx, [ebp-0x45a8]
	mov edx, [ebp-0x4534]
	mov eax, [ebp+0x8]
	call _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_420
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_430:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1c]
	test eax, eax
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
	xor edi, edi
	mov esi, 0x6
	xor ebx, ebx
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_450
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_460:
	add edi, 0x1
	add esi, 0x1
	add ebx, 0xc
	mov eax, [ebp+0x8]
	cmp edi, [eax+0x1c]
	jae _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_60
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_450:
	cmp esi, [ebp-0x4554]
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_460
	mov eax, [ebp+edi*8-0x8f0]
	test eax, eax
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_460
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x20]
	mov eax, [eax+ebx]
	mov edx, [ebp+0xc]
	add edx, 0x38
	mov ecx, [ebp+0xc]
	movss xmm1, dword [ecx+0x38]
	mulss xmm1, [eax]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	ucomiss xmm1, [eax+0xc]
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_460
	lea eax, [ebp+esi*8-0x924]
	mov [ebp-0x4568], eax
	mov edx, ecx
	call _Z25Phys_DoesPolyIntersectBoxPK4PolyPK7objInfo
	test al, al
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_460
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x20]
	mov edx, [ecx+ebx]
	mov eax, [edx]
	mov [ebp-0x94], eax
	mov eax, [edx+0x4]
	mov [ebp-0x90], eax
	mov eax, [edx+0x8]
	mov [ebp-0x8c], eax
	mov eax, [ecx+ebx]
	mov eax, [eax+0xc]
	mov [ebp-0x88], eax
	lea ecx, [ebp-0x30]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x4568]
	mov [esp], ecx
	lea ecx, [ebp-0x94]
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z28Phys_CollideBoxWithBrushFacePK8cbrush_tiPKfPK4PolyPK7objInfoP7ResultsPf
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_460
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_300:
	mov edx, [ebp-0x4560]
	lea eax, [edx+edx*2]
	mov ecx, [ebp+0xc]
	lea eax, [ecx+eax*4+0x40]
	lea edx, [eax+0x4]
	mov eax, [eax+0x4]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_470
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_320:
	movss xmm5, dword [_data16_80000000]
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_480
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_380:
	mov eax, [ebp-0x455c]
	test eax, eax
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_490
	mov ebx, [ebp-0x4560]
	lea eax, [ebx+ebx*2]
	mov edx, [ebp+0xc]
	lea eax, [edx+eax*4+0x40]
	lea edx, [eax+0x4]
	movss xmm0, dword [_data16_80000000]
	movss xmm5, dword [eax+0x4]
	xorps xmm5, xmm0
	movss xmm3, dword [edx+0x4]
	xorps xmm3, xmm0
	movss xmm4, dword [edx+0x8]
	xorps xmm4, xmm0
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_520:
	movaps xmm2, xmm5
	mov eax, [ebp-0x4590]
	mulss xmm2, [eax]
	movaps xmm0, xmm3
	mov edx, [ebp-0x4594]
	mulss xmm0, [edx]
	addss xmm2, xmm0
	movaps xmm0, xmm4
	mov ecx, [ebp-0x4598]
	mulss xmm0, [ecx]
	addss xmm2, xmm0
	mov ebx, [ebp-0x4560]
	mov eax, [ebp+0xc]
	addss xmm2, [eax+ebx*4+0x8c]
	test edi, edi
	jz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_310
	xor esi, esi
	lea ebx, [ebp-0x1524]
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_510:
	movaps xmm0, xmm5
	mulss xmm0, [ebx]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x8]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	subss xmm1, xmm0
	movaps xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_500
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jge _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_310
	mov edx, eax
	mov ecx, [ebp+0x10]
	imul edx, [ecx+0xc]
	add edx, [ecx]
	add eax, 0x1
	mov [ecx+0x4], eax
	movss [edx+0x20], xmm0
	lea ecx, [edx+0x10]
	mov eax, [ebp-0x30]
	mov [edx+0x10], eax
	mov eax, [ebp-0x2c]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x28]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov eax, [ebp-0x454c]
	mov [edx+0x2c], eax
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jge _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_310
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_500:
	add esi, 0x1
	add ebx, 0xc
	cmp edi, esi
	jnz _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_510
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_310
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_490:
	mov ecx, [ebp-0x4560]
	lea eax, [ecx+ecx*2]
	mov ebx, [ebp+0xc]
	lea eax, [ebx+eax*4+0x40]
	lea edx, [eax+0x4]
	movss xmm5, dword [eax+0x4]
	movss xmm3, dword [edx+0x4]
	movss xmm4, dword [edx+0x8]
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_520
_Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_370:
	lea eax, [ebp-0x1524]
	lea ecx, [ebp-0x94]
	mov [esp], ecx
	mov ecx, 0x100
	mov edx, edi
	call _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf
	mov edi, eax
	cmp eax, 0x2
	ja _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_530
	jmp _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results_310
	nop


;Phys_GetPlaneForTriangle2(float const (*) [3], float const*, float, float*)
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x14]
	lea esi, [eax+0xc]
	movss xmm0, dword [eax]
	subss xmm0, [eax+0xc]
	movss [ebp-0xa8], xmm0
	movss [ebp-0x3c], xmm0
	lea ebx, [eax+0x4]
	mov [ebp-0x8c], ebx
	lea edi, [eax+0x10]
	mov [ebp-0x88], edi
	movss xmm0, dword [eax+0x4]
	subss xmm0, [eax+0x10]
	movss [ebp-0xb0], xmm0
	movss [ebp-0x38], xmm0
	lea ebx, [eax+0x8]
	mov [ebp-0x84], ebx
	lea edi, [eax+0x14]
	mov [ebp-0x80], edi
	movss xmm0, dword [eax+0x8]
	subss xmm0, [eax+0x14]
	movss [ebp-0xb8], xmm0
	movss [ebp-0x34], xmm0
	lea ebx, [eax+0x18]
	movss xmm1, dword [eax+0x18]
	movss [ebp-0x4c], xmm1
	movss xmm6, dword [eax+0xc]
	pxor xmm4, xmm4
	cmpss xmm4, [ebp-0xa8], 0x6
	movss xmm1, dword [eax]
	andps xmm1, xmm4
	movaps xmm0, xmm4
	andnps xmm0, xmm6
	orps xmm0, xmm1
	movss xmm1, dword [ebp-0x4c]
	subss xmm1, xmm0
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	andps xmm0, xmm2
	movss xmm5, dword [ebp-0x4c]
	andnps xmm1, xmm5
	orps xmm1, xmm0
	movss [ebp-0x50], xmm1
	movss xmm0, dword [ebx+0x4]
	movss [ebp-0xac], xmm0
	movss xmm1, dword [esi+0x4]
	movss [ebp-0x54], xmm1
	pxor xmm3, xmm3
	cmpss xmm3, [ebp-0xb0], 0x6
	movss xmm1, dword [eax+0x4]
	andps xmm1, xmm3
	movaps xmm0, xmm3
	movss xmm2, dword [ebp-0x54]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss xmm1, dword [ebp-0xac]
	subss xmm1, xmm0
	pxor xmm7, xmm7
	cmpss xmm7, xmm1, 0x2
	andps xmm0, xmm7
	movss xmm5, dword [ebp-0xac]
	andnps xmm7, xmm5
	orps xmm7, xmm0
	movss xmm0, dword [ebx+0x8]
	movss [ebp-0xb4], xmm0
	movss xmm1, dword [esi+0x8]
	movss [ebp-0x58], xmm1
	pxor xmm2, xmm2
	cmpss xmm2, [ebp-0xb8], 0x6
	movss xmm1, dword [eax+0x8]
	andps xmm1, xmm2
	movaps xmm0, xmm2
	movss xmm5, dword [ebp-0x58]
	andnps xmm0, xmm5
	orps xmm0, xmm1
	movss xmm1, dword [ebp-0xb4]
	subss xmm1, xmm0
	pxor xmm5, xmm5
	cmpss xmm5, xmm1, 0x2
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0xb4]
	andnps xmm5, xmm1
	orps xmm5, xmm0
	andps xmm6, xmm4
	movss xmm0, dword [eax]
	andnps xmm4, xmm0
	orps xmm4, xmm6
	movaps xmm0, xmm4
	subss xmm0, [ebp-0x4c]
	pxor xmm6, xmm6
	cmpss xmm6, xmm0, 0x2
	andps xmm4, xmm6
	movss xmm1, dword [ebp-0x4c]
	andnps xmm6, xmm1
	orps xmm6, xmm4
	movss xmm0, dword [ebp-0x54]
	andps xmm0, xmm3
	movss xmm1, dword [eax+0x4]
	andnps xmm3, xmm1
	orps xmm3, xmm0
	movaps xmm0, xmm3
	subss xmm0, [ebp-0xac]
	pxor xmm4, xmm4
	cmpss xmm4, xmm0, 0x2
	andps xmm3, xmm4
	movss xmm0, dword [ebp-0xac]
	andnps xmm4, xmm0
	orps xmm4, xmm3
	movss xmm1, dword [ebp-0x58]
	andps xmm1, xmm2
	movss xmm0, dword [eax+0x8]
	andnps xmm2, xmm0
	orps xmm2, xmm1
	movaps xmm0, xmm2
	subss xmm0, [ebp-0xb4]
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	andps xmm2, xmm1
	movss xmm1, dword [ebp-0xb4]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss xmm2, dword [edx]
	movss xmm1, dword [ebp-0x50]
	subss xmm1, xmm2
	movss [ebp-0x50], xmm1
	lea edi, [edx+0x4]
	mov [ebp-0x7c], edi
	movss xmm1, dword [edx+0x4]
	subss xmm7, xmm1
	lea edi, [edx+0x8]
	mov [ebp-0x78], edi
	movss xmm3, dword [edx+0x8]
	subss xmm5, xmm3
	subss xmm2, xmm6
	movaps xmm6, xmm2
	subss xmm1, xmm4
	subss xmm3, xmm0
	movaps xmm0, xmm2
	subss xmm0, xmm1
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	movaps xmm2, xmm6
	andps xmm2, xmm0
	movaps xmm6, xmm0
	andnps xmm6, xmm1
	orps xmm6, xmm2
	movaps xmm0, xmm6
	subss xmm0, xmm3
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm6
	andps xmm1, xmm0
	movaps xmm6, xmm0
	andnps xmm6, xmm3
	orps xmm6, xmm1
	movss xmm0, dword [ebp-0x50]
	subss xmm0, xmm7
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	movss xmm1, dword [ebp-0x50]
	andps xmm1, xmm2
	andnps xmm0, xmm7
	orps xmm0, xmm1
	movss [ebp-0x50], xmm0
	subss xmm0, xmm5
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movss xmm1, dword [ebp-0x50]
	andps xmm1, xmm0
	andnps xmm0, xmm5
	orps xmm0, xmm1
	movss [ebp-0x50], xmm0
	subss xmm0, xmm6
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	movss xmm5, dword [ebp-0x50]
	andps xmm5, xmm2
	andnps xmm0, xmm6
	orps xmm0, xmm5
	ucomiss xmm0, [ebp+0x10]
	jb _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_10
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_30:
	xor eax, eax
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_70:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_10:
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [eax]
	movss [ebp-0x30], xmm0
	lea edi, [eax+0x1c]
	mov [ebp-0x74], edi
	movss xmm0, dword [ebp-0xac]
	subss xmm0, [eax+0x4]
	movss [ebp-0x2c], xmm0
	lea edi, [eax+0x20]
	mov [ebp-0x70], edi
	movss xmm0, dword [ebp-0xb4]
	subss xmm0, [eax+0x8]
	movss [ebp-0x28], xmm0
	movss xmm3, dword [ebp-0xb0]
	mulss xmm3, xmm0
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, [ebp-0x2c]
	subss xmm3, xmm0
	movss [ecx], xmm3
	lea edi, [ecx+0x4]
	mov [ebp-0xa0], edi
	movss xmm2, dword [ebp-0xb8]
	mulss xmm2, [ebp-0x30]
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, [ebp-0x28]
	subss xmm2, xmm0
	movss [ecx+0x4], xmm2
	lea edi, [ecx+0x8]
	mov [ebp-0xc0], edi
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, [ebp-0x2c]
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, [ebp-0x30]
	subss xmm0, xmm1
	movss [ecx+0x8], xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_20
	movss xmm1, dword [_float_1_00000000]
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_80:
	mulss xmm3, xmm1
	movss [ecx], xmm3
	movaps xmm0, xmm1
	mov edi, [ebp-0xa0]
	mulss xmm0, [edi]
	movss [edi], xmm0
	mov edi, [ebp-0xc0]
	mulss xmm1, [edi]
	movss [edi], xmm1
	movss xmm0, dword [edx]
	movss [ebp-0x9c], xmm0
	movaps xmm6, xmm0
	subss xmm6, [eax]
	mov edx, [ebp-0x7c]
	movss xmm0, dword [edx]
	movss [ebp-0x98], xmm0
	mov edx, [ebp-0x8c]
	subss xmm0, [edx]
	movss [ebp-0x64], xmm0
	mov edi, [ebp-0x78]
	movss xmm0, dword [edi]
	movss [ebp-0x94], xmm0
	mov edx, [ebp-0x84]
	subss xmm0, [edx]
	movss [ebp-0x68], xmm0
	movss xmm5, dword [ecx+0x4]
	movss xmm7, dword [ecx+0x8]
	movaps xmm0, xmm6
	mulss xmm0, [ecx]
	movss xmm1, dword [ebp-0x64]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [ebp+0x10]
	jae _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_30
	movss xmm1, dword [ebp-0x34]
	movss xmm2, dword [ebp-0x38]
	movaps xmm3, xmm5
	mulss xmm3, xmm1
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	subss xmm3, xmm0
	movss xmm0, dword [ecx]
	movss [ebp-0xa4], xmm0
	movss xmm4, dword [ebp-0xa8]
	mulss xmm4, xmm7
	mulss xmm1, xmm0
	subss xmm4, xmm1
	mulss xmm2, xmm0
	movss xmm1, dword [ebp-0xa8]
	mulss xmm1, xmm5
	subss xmm2, xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [ebp-0xcc], xmm0
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_40
	movss xmm0, dword [_float_1_00000000]
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_90:
	movss xmm1, dword [ebp+0x10]
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x90], xmm1
	mulss xmm3, xmm0
	mulss xmm3, xmm6
	mulss xmm4, xmm0
	mulss xmm4, [ebp-0x64]
	addss xmm3, xmm4
	mulss xmm2, xmm0
	mulss xmm2, [ebp-0x68]
	addss xmm3, xmm2
	ucomiss xmm1, xmm3
	jae _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_30
	movss xmm1, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x2c]
	movaps xmm4, xmm5
	mulss xmm4, xmm1
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	subss xmm4, xmm0
	movss xmm0, dword [ebp-0x30]
	movaps xmm3, xmm7
	mulss xmm3, xmm0
	mulss xmm1, [ebp-0xa4]
	subss xmm3, xmm1
	mulss xmm2, [ebp-0xa4]
	mulss xmm5, xmm0
	subss xmm2, xmm5
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jb _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_50
	movss xmm0, dword [_float_1_00000000]
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_100:
	mulss xmm4, xmm0
	mulss xmm6, xmm4
	mulss xmm3, xmm0
	mulss xmm3, [ebp-0x64]
	movss [ebp-0x64], xmm3
	addss xmm6, xmm3
	mulss xmm2, xmm0
	mulss xmm2, [ebp-0x68]
	addss xmm6, xmm2
	movss xmm0, dword [ebp-0x90]
	ucomiss xmm0, xmm6
	jae _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_30
	movss xmm2, dword [esi]
	subss xmm2, [ebx]
	movss [ebp-0x24], xmm2
	mov edx, [ebp-0x88]
	movss xmm3, dword [edx]
	mov ebx, [ebp-0x74]
	subss xmm3, [ebx]
	movss [ebp-0x20], xmm3
	mov edi, [ebp-0x80]
	movss xmm1, dword [edi]
	mov edx, [ebp-0x70]
	subss xmm1, [edx]
	movss [ebp-0x1c], xmm1
	movss xmm6, dword [ebp-0x9c]
	subss xmm6, [esi]
	movss xmm0, dword [ebp-0x98]
	mov ebx, [ebp-0x88]
	subss xmm0, [ebx]
	movss [ebp-0x5c], xmm0
	movss xmm5, dword [ebp-0x94]
	subss xmm5, [edi]
	movss [ebp-0x60], xmm5
	mov edx, [ebp-0xa0]
	movss xmm7, dword [edx]
	mov ebx, [ebp-0xc0]
	movss xmm0, dword [ebx]
	movss [ebp-0x6c], xmm0
	movaps xmm5, xmm7
	mulss xmm5, xmm1
	mulss xmm0, xmm3
	subss xmm5, xmm0
	movss xmm4, dword [ebp-0x6c]
	mulss xmm4, xmm2
	mulss xmm1, [ebp-0xa4]
	subss xmm4, xmm1
	mulss xmm3, [ebp-0xa4]
	mulss xmm2, xmm7
	subss xmm3, xmm2
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_60
	movss xmm0, dword [_float_1_00000000]
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_110:
	mulss xmm5, xmm0
	mulss xmm6, xmm5
	mulss xmm4, xmm0
	mulss xmm4, [ebp-0x5c]
	movss [ebp-0x5c], xmm4
	addss xmm6, xmm4
	mulss xmm3, xmm0
	mulss xmm3, [ebp-0x60]
	movss [ebp-0x60], xmm3
	addss xmm6, xmm3
	movss xmm5, dword [ebp-0x90]
	ucomiss xmm5, xmm6
	jae _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_30
	movss xmm0, dword [eax]
	mulss xmm0, [ecx]
	mov eax, [ebp-0x8c]
	mulss xmm7, [eax]
	addss xmm0, xmm7
	movss xmm1, dword [ebp-0x6c]
	mov edx, [ebp-0x84]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movss [ecx+0xc], xmm0
	mov eax, 0x1
	jmp _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_70
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_20:
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm1
	movaps xmm1, xmm5
	jmp _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_80
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_40:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0xcc]
	jmp _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_90
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_50:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_100
_Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_60:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf_110


;Phys_GetWindingForBrushFace2(cbrush_t const*, unsigned int, Poly*, int, float const (*) [4])
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0xc]
	cmp ebx, 0x5
	ja _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_10
	mov edx, ebx
	and edx, 0x1
	mov ecx, ebx
	shr ecx, 1
	lea eax, [edx+edx]
	add eax, edx
	lea edx, [eax+ecx]
	mov edi, [ebp+0x8]
	movsx esi, word [edi+edx*2+0x34]
	add eax, edi
	movzx ecx, byte [eax+ecx+0x40]
	mov [ebp-0x50], ecx
	shl ebx, 0x4
	mov edx, [ebp+0x18]
	add edx, ebx
	mov eax, [edx]
	mov [ebp-0x48], eax
	mov eax, [edx+0x4]
	mov [ebp-0x44], eax
	mov eax, [edx+0x8]
	mov [ebp-0x40], eax
	mov eax, [edx+0xc]
	mov [ebp-0x3c], eax
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_40:
	cmp dword [ebp-0x50], 0x2
	jle _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_20
	mov eax, [ebp-0x50]
	cmp eax, [ebp+0x14]
	jle _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_30
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_20:
	mov edx, [ebp+0x10]
	mov dword [edx+0x4], 0x0
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_150:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_10:
	lea ecx, [ebx+ebx*2-0x12]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	lea ecx, [eax+ecx*4]
	movsx esi, word [ecx+0x8]
	movzx edi, byte [ecx+0xa]
	mov [ebp-0x50], edi
	mov edx, [ecx]
	mov eax, [edx]
	mov [ebp-0x48], eax
	mov eax, [edx+0x4]
	mov [ebp-0x44], eax
	mov eax, [edx+0x8]
	mov [ebp-0x40], eax
	mov eax, [ecx]
	mov eax, [eax+0xc]
	mov [ebp-0x3c], eax
	jmp _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_40
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_30:
	mov ecx, [ebp+0x8]
	add esi, [ecx+0x30]
	mov [ebp-0x54], esi
	movzx eax, byte [esi+eax-0x1]
	cmp eax, 0x5
	jg _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_50
	shl eax, 0x4
	mov edx, [ebp+0x18]
	add edx, eax
	mov eax, [edx]
	mov [ebp-0x38], eax
	mov eax, [edx+0x4]
	mov [ebp-0x34], eax
	mov eax, [edx+0x8]
	mov [ebp-0x30], eax
	mov eax, [edx+0xc]
	mov [ebp-0x2c], eax
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_120:
	mov eax, [ebp+0x10]
	mov dword [eax+0x4], 0x0
	xor edi, edi
	xor esi, esi
	jmp _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_60
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_100:
	shl eax, 0x4
	mov ecx, [ebp+0x18]
	lea edx, [eax+ecx]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_110:
	lea edx, [esi+esi*2]
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	lea eax, [eax+edx*4]
	movss xmm2, dword [ebp-0x34]
	movss xmm1, dword [ebp-0x20]
	movss xmm4, dword [ebp-0x24]
	movss xmm5, dword [ebp-0x30]
	movaps xmm6, xmm2
	mulss xmm6, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	subss xmm6, xmm0
	movss xmm3, dword [ebp-0x40]
	movss xmm0, dword [ebp-0x44]
	mulss xmm4, xmm3
	mulss xmm1, xmm0
	subss xmm4, xmm1
	mulss xmm5, xmm0
	mulss xmm2, xmm3
	subss xmm5, xmm2
	movaps xmm2, xmm5
	mulss xmm2, [ebp-0x28]
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x48]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x38]
	addss xmm0, xmm1
	addss xmm2, xmm0
	movaps xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	movss xmm1, dword [_float_0_00100000]
	ucomiss xmm1, xmm0
	ja _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_70
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	movss [ebp-0x4c], xmm0
	mulss xmm5, [ebp-0x1c]
	mulss xmm6, [ebp-0x3c]
	mulss xmm4, [ebp-0x2c]
	addss xmm6, xmm4
	addss xmm5, xmm6
	mulss xmm5, xmm0
	movss [eax], xmm5
	movss xmm2, dword [ebp-0x30]
	movss xmm5, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x20]
	movss xmm4, dword [ebp-0x38]
	movss xmm6, dword [ebp-0x48]
	movss xmm7, dword [ebp-0x40]
	movaps xmm0, xmm4
	mulss xmm0, xmm7
	movaps xmm1, xmm2
	mulss xmm1, xmm6
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x1c]
	mulss xmm2, xmm5
	mulss xmm4, xmm3
	subss xmm2, xmm4
	mulss xmm2, [ebp-0x3c]
	mulss xmm3, xmm6
	mulss xmm5, xmm7
	subss xmm3, xmm5
	mulss xmm3, [ebp-0x2c]
	addss xmm2, xmm3
	addss xmm0, xmm2
	mulss xmm0, [ebp-0x4c]
	movss [eax+0x4], xmm0
	movss xmm2, dword [ebp-0x38]
	movss xmm5, dword [ebp-0x24]
	movss xmm3, dword [ebp-0x28]
	movss xmm4, dword [ebp-0x34]
	movss xmm6, dword [ebp-0x44]
	movss xmm7, dword [ebp-0x48]
	movaps xmm0, xmm4
	mulss xmm0, xmm7
	movaps xmm1, xmm2
	mulss xmm1, xmm6
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x1c]
	mulss xmm2, xmm5
	mulss xmm4, xmm3
	subss xmm2, xmm4
	mulss xmm2, [ebp-0x3c]
	mulss xmm3, xmm6
	mulss xmm5, xmm7
	subss xmm3, xmm5
	mulss xmm3, [ebp-0x2c]
	addss xmm2, xmm3
	addss xmm0, xmm2
	mulss xmm0, [ebp-0x4c]
	movss [eax+0x8], xmm0
	mov esi, [ecx+0x4]
	test esi, esi
	jz _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_80
	lea eax, [esi+esi*2]
	shl eax, 0x2
	add eax, [ecx]
	lea edx, [eax-0xc]
	movss xmm0, dword [eax-0xc]
	subss xmm0, [eax]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_1_00000000]
	jb _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_70
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_80:
	lea eax, [esi+0x1]
	mov edx, [ebp+0x10]
	mov [edx+0x4], eax
	mov esi, eax
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_70:
	mov eax, [ebp-0x28]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x2c], eax
	add edi, 0x1
	cmp [ebp-0x50], edi
	jz _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_90
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_60:
	mov edx, [ebp-0x54]
	movzx eax, byte [edx+edi]
	cmp eax, 0x5
	jle _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_100
	lea ecx, [eax+eax*2-0x12]
	shl ecx, 0x2
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x20]
	mov edx, [ebx+ecx]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [ecx+ebx]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	jmp _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_110
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_50:
	mov edi, ecx
	lea ecx, [eax+eax*2-0x12]
	shl ecx, 0x2
	mov ebx, [edi+0x20]
	mov edx, [ebx+ecx]
	mov eax, [edx]
	mov [ebp-0x38], eax
	mov eax, [edx+0x4]
	mov [ebp-0x34], eax
	mov eax, [edx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ecx+ebx]
	mov eax, [eax+0xc]
	mov [ebp-0x2c], eax
	jmp _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_120
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_90:
	cmp esi, 0x1
	jbe _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_130
	mov ecx, [ebp+0x10]
	mov edx, [ecx]
	lea eax, [esi+esi*2]
	lea eax, [edx+eax*4]
	lea ecx, [eax-0xc]
	movss xmm0, dword [edx]
	subss xmm0, [eax-0xc]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ecx+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_1_00000000]
	jb _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_140
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_130:
	mov eax, [ebp+0x10]
	cmp dword [eax+0x4], 0x2
	ja _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_150
	mov dword [eax+0x4], 0x0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_140:
	jp _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_130
	lea eax, [esi-0x1]
	mov edi, [ebp+0x10]
	mov [edi+0x4], eax
	jmp _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf_130
	nop


;Phys_ClipLineSegmentAgainstPoly(float const*, float const (*) [3], unsigned int, float*, float*)
_Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x10]
	mov [esp+0x8], edi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18GetPolyOrientationPKfPA3_S_j
	cmp eax, 0x2
	jz _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__10
	sub eax, 0x1
	setz al
	test edi, edi
	jnz _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__20
_Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__50:
	mov eax, 0x2
_Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__70:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__20:
	movzx eax, al
	mov [ebp-0x2c], eax
	mov ebx, [ebp+0xc]
	xor esi, esi
_Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__40:
	add esi, 0x1
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov eax, esi
	xor edx, edx
	div edi
	lea edx, [edx+edx*2]
	mov eax, [ebp+0xc]
	lea edx, [eax+edx*4]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf
	test al, al
	jnz _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__30
_Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__60:
	add ebx, 0xc
	cmp edi, esi
	jnz _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__40
	jmp _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__50
_Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__30:
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf
	test eax, eax
	jnz _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__60
_Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__10:
	xor eax, eax
	jmp _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3__70


;Phys_CollideBoxWithTriangleList(unsigned short const*, float const (*) [3], unsigned int, objInfo const*, int, Results*)
_Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0x14]
	add eax, 0x44
	mov [ebp-0x5c], eax
	xor edi, edi
	xor esi, esi
	mov ebx, eax
_Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_30:
	mov ecx, esi
	lea edx, [ebx+edi*4]
	xor ebx, ebx
_Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_10:
	mov eax, [edx]
	mov [ebp+ecx-0x58], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0xc
	cmp ebx, 0x3
	jnz _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_10
	mov dword [esi+ebp-0x4c], 0x0
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jz _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_20
	mov ebx, [ebp-0x5c]
	jmp _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_30
_Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_20:
	mov edx, [ebp+0x14]
	add edx, 0x38
	mov ecx, [ebp+0x14]
	mov eax, [ecx+0x38]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp+0x1c]
	mov ebx, [eax+0x4]
	lea esi, [ebx+ebx*2]
	shl esi, 0x4
	mov edx, eax
	mov eax, [eax+0xc]
	mov [esp+0x24], eax
	mov eax, esi
	add eax, [edx]
	mov [esp+0x20], eax
	mov eax, [edx+0x8]
	sub eax, ebx
	mov [esp+0x1c], eax
	mov eax, ecx
	add eax, 0x98
	mov [esp+0x18], eax
	sub eax, 0xc
	mov [esp+0x14], eax
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	lea ecx, [ebp-0x58]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dCollideBoxTriangleList
	lea eax, [ebx+eax]
	mov edx, [ebp+0x1c]
	mov [edx+0x4], eax
	cmp ebx, eax
	jge _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_40
	mov ecx, esi
	mov edx, ebx
	mov ebx, [ebp+0x1c]
	jmp _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_50
_Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_60:
	mov ebx, eax
_Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_50:
	mov eax, [ebx]
	mov ebx, [ebp+0x18]
	mov [eax+ecx+0x2c], ebx
	add edx, 0x1
	add ecx, 0x30
	mov eax, [ebp+0x1c]
	cmp edx, [eax+0x4]
	jl _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_60
_Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_40:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_ProjectFaceOntoFaceAndClip(float const*, Poly const*, Poly const*, int, Results*, float const*)
_Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc3c
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov esi, [ebp+0x18]
	mov ecx, [ebx+0x4]
	mov dword [esp+0xc], 0x100
	lea edi, [ebp-0xc18]
	mov [esp+0x8], edi
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	mov edx, [ebx]
	mov eax, [ebp+0x8]
	call _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj
	mov [ebp-0xc2c], eax
	test eax, eax
	jz _Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0__10
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov [ebp-0xc24], eax
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [ebp-0xc20], eax
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [ebp-0xc1c], eax
	mov dword [ebp-0xc28], 0x0
	pxor xmm2, xmm2
	mov ebx, edi
_Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0__30:
	mov edi, [ebp+0x8]
	movss xmm0, dword [edi]
	mulss xmm0, [ebx]
	mov eax, [ebp-0xc20]
	movss xmm1, dword [eax]
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	mov edi, [ebp-0xc1c]
	movss xmm1, dword [edi]
	mulss xmm1, [ebx+0x8]
	addss xmm0, xmm1
	mov eax, [ebp-0xc24]
	movss xmm1, dword [eax]
	subss xmm1, xmm0
	ucomiss xmm1, xmm2
	jbe _Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0__20
	mov eax, [esi+0x4]
	cmp eax, [esi+0x8]
	jge _Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0__10
	mov edx, eax
	imul edx, [esi+0xc]
	add edx, [esi]
	add eax, 0x1
	mov [esi+0x4], eax
	movss [edx+0x20], xmm1
	lea ecx, [edx+0x10]
	mov edi, [ebp+0x1c]
	mov eax, [edi]
	mov [edx+0x10], eax
	mov eax, [edi+0x4]
	mov [ecx+0x4], eax
	mov eax, [edi+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov eax, [ebp+0x14]
	mov [edx+0x2c], eax
	mov eax, [esi+0x4]
	cmp eax, [esi+0x8]
	jge _Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0__10
_Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0__20:
	add dword [ebp-0xc28], 0x1
	add ebx, 0xc
	mov edi, [ebp-0xc28]
	cmp [ebp-0xc2c], edi
	ja _Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0__30
_Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0__10:
	add esp, 0xc3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_ClipLineSegmentAgainstPlane(float*, float*, float const*)
_Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x10]
	movss xmm3, dword [eax]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movss xmm4, dword [eax+0xc]
	movaps xmm5, xmm3
	mulss xmm5, [ecx]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x8]
	addss xmm5, xmm0
	subss xmm5, xmm4
	mulss xmm3, [edx]
	mulss xmm1, [edx+0x4]
	addss xmm3, xmm1
	mulss xmm2, [edx+0x8]
	addss xmm3, xmm2
	subss xmm3, xmm4
	pxor xmm0, xmm0
	ucomiss xmm0, xmm5
	jb _Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf_10
	ucomiss xmm0, xmm3
	jae _Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf_20
	movaps xmm0, xmm5
	subss xmm0, xmm3
	movaps xmm2, xmm5
	divss xmm2, xmm0
	movss xmm1, dword [ecx]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edx], xmm1
	movss xmm1, dword [ecx+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edx+0x4], xmm1
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [edx+0x8], xmm1
	mov eax, 0x2
	pop ebp
	ret
_Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf_10:
	ucomiss xmm0, xmm3
	jb _Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf_30
	movaps xmm0, xmm3
	subss xmm0, xmm5
	movaps xmm2, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [edx]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [edx+0x8]
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ecx+0x8], xmm1
_Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf_20:
	mov eax, 0x2
	pop ebp
	ret
_Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf_30:
	xor eax, eax
	pop ebp
	ret
	nop


;Phys_GetChoppingPlaneForPolyEdge(float const*, float const*, float const*, unsigned char, float*)
_Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov ecx, [ebp+0x18]
	movzx esi, byte [ebp+0x14]
	movss xmm4, dword [eax]
	subss xmm4, [ebx]
	lea edi, [ebx+0x4]
	mov [ebp-0x10], edi
	movss xmm3, dword [eax+0x4]
	subss xmm3, [ebx+0x4]
	lea edi, [ebx+0x8]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [ebx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_10000000]
	jp _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_10
	jb _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_20
_Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_10:
	mov eax, esi
	test al, al
	jz _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_30
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x8]
	subss xmm0, xmm1
	movss [ecx], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x8]
	mulss xmm2, [edx]
	subss xmm0, xmm2
	movss [ecx+0x4], xmm0
	mulss xmm3, [edx]
	mulss xmm4, [edx+0x4]
	subss xmm3, xmm4
	movss [ecx+0x8], xmm3
	movaps xmm2, xmm0
_Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_40:
	movss xmm0, dword [ecx]
	mulss xmm0, xmm0
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [_float_0_10000000]
	ucomiss xmm1, xmm0
	ja _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_20
	movss xmm0, dword [ebx]
	mulss xmm0, [ecx]
	mov eax, [ebp-0x10]
	mulss xmm2, [eax]
	addss xmm0, xmm2
	mulss xmm3, [edi]
	addss xmm0, xmm3
	movss [ecx+0xc], xmm0
	mov eax, 0x1
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_20:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_30:
	movaps xmm0, xmm3
	mulss xmm0, [edx+0x8]
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	subss xmm0, xmm1
	movss [ecx], xmm0
	mulss xmm2, [edx]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x8]
	subss xmm2, xmm0
	movss [ecx+0x4], xmm2
	mulss xmm4, [edx+0x4]
	mulss xmm3, [edx]
	subss xmm4, xmm3
	movss [ecx+0x8], xmm4
	movaps xmm3, xmm4
	jmp _Z32Phys_GetChoppingPlaneForPolyEdgePKfS0_S0_hPf_40
	nop


;Phys_CollideOrientedBrushWithBrush(cbrush_t const*, cbrush_t const*, objInfo const*, Results*)
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x51ec
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	movss [ebp-0x51a0], xmm0
	xorps xmm0, [_data16_80000000]
	mov eax, 0xbf800000
	mov [ebp-0x100], eax
	mov dword [ebp-0xfc], 0x0
	mov dword [ebp-0xf8], 0x0
	movss [ebp-0xf4], xmm0
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x5180], xmm0
	mov dword [ebp-0xf0], 0x3f800000
	mov dword [ebp-0xec], 0x0
	mov dword [ebp-0xe8], 0x0
	movss [ebp-0xe4], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x517c], xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	mov dword [ebp-0xe0], 0x0
	mov [ebp-0xdc], eax
	mov dword [ebp-0xd8], 0x0
	movss [ebp-0xd4], xmm0
	movss xmm2, dword [edx+0x14]
	movss [ebp-0x5188], xmm2
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0xcc], 0x3f800000
	mov dword [ebp-0xc8], 0x0
	movss [ebp-0xc4], xmm2
	movss xmm7, dword [edx+0x8]
	movaps xmm0, xmm7
	xorps xmm0, [_data16_80000000]
	mov dword [ebp-0xc0], 0x0
	mov dword [ebp-0xbc], 0x0
	mov [ebp-0xb8], eax
	movss [ebp-0xb4], xmm0
	movss xmm0, dword [edx+0x18]
	movss [ebp-0x5190], xmm0
	mov dword [ebp-0xb0], 0x0
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x3f800000
	movss [ebp-0xa4], xmm0
	xor ecx, ecx
	mov eax, [ebp+0x10]
	add eax, 0x44
	mov [ebp-0x5198], eax
	mov edx, [ebp+0x10]
	add edx, 0x38
	mov [ebp-0x5184], edx
	mov ebx, [ebp+0x10]
	lea edi, [ebx+0x50]
	lea esi, [ebx+0x5c]
	lea eax, [ebx+0x3c]
	mov [ebp-0x518c], eax
	lea edx, [ebx+0x40]
	mov [ebp-0x5194], edx
	movss xmm6, dword [ebx+0x44]
	movss xmm5, dword [ebx+0x50]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_10:
	mov eax, ecx
	shl eax, 0x4
	lea edx, [ebp-0x5100]
	add edx, eax
	movss xmm4, dword [eax+ebp-0xf4]
	lea ebx, [ebp-0x100]
	lea eax, [ebx+eax]
	movss xmm3, dword [eax]
	mulss xmm3, xmm6
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	movss xmm0, dword [eax+0x8]
	mov ebx, [ebp+0x10]
	mulss xmm0, [ebx+0x5c]
	addss xmm3, xmm0
	movss [edx], xmm3
	movss xmm2, dword [eax]
	mov ebx, [ebp-0x5198]
	mulss xmm2, [ebx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edi+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x4]
	addss xmm2, xmm0
	movss [edx+0x4], xmm2
	movss xmm1, dword [eax]
	mulss xmm1, [ebx+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss [edx+0x8], xmm1
	mov eax, [ebp+0x10]
	mulss xmm3, [eax+0x38]
	mulss xmm2, [eax+0x3c]
	addss xmm3, xmm2
	mulss xmm1, [eax+0x40]
	addss xmm3, xmm1
	addss xmm4, xmm3
	movss [edx+0xc], xmm4
	add ecx, 0x1
	cmp ecx, 0x6
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_10
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x1c]
	test ebx, ebx
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_20
	mov eax, edx
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_210:
	xor dword [ebp-0x51a0], 0x80000000
	mov dword [ebp-0x1d00], 0xbf800000
	mov dword [ebp-0x1cfc], 0x0
	mov dword [ebp-0x1cf8], 0x0
	movss xmm0, dword [ebp-0x51a0]
	movss [ebp-0x1cf4], xmm0
	mov dword [ebp-0x1cf0], 0x3f800000
	mov dword [ebp-0x1cec], 0x0
	mov dword [ebp-0x1ce8], 0x0
	movss xmm1, dword [ebp-0x5180]
	movss [ebp-0x1ce4], xmm1
	xor dword [ebp-0x517c], 0x80000000
	mov dword [ebp-0x1ce0], 0x0
	mov dword [ebp-0x1cdc], 0xbf800000
	mov dword [ebp-0x1cd8], 0x0
	movss xmm2, dword [ebp-0x517c]
	movss [ebp-0x1cd4], xmm2
	mov dword [ebp-0x1cd0], 0x0
	mov dword [ebp-0x1ccc], 0x3f800000
	mov dword [ebp-0x1cc8], 0x0
	movss xmm0, dword [ebp-0x5188]
	movss [ebp-0x1cc4], xmm0
	xorps xmm7, [_data16_80000000]
	mov dword [ebp-0x1cc0], 0x0
	mov dword [ebp-0x1cbc], 0x0
	mov dword [ebp-0x1cb8], 0xbf800000
	movss [ebp-0x1cb4], xmm7
	mov dword [ebp-0x1cb0], 0x0
	mov dword [ebp-0x1cac], 0x0
	mov dword [ebp-0x1ca8], 0x3f800000
	movss xmm1, dword [ebp-0x5190]
	movss [ebp-0x1ca4], xmm1
	cmp dword [eax+0x1c], 0xfffffffa
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
	mov dword [ebp-0x515c], 0x0
	mov dword [ebp-0x5178], 0x0
	lea edx, [ebp-0x5100]
	mov [ebp-0x5120], edx
	mov dword [ebp-0x511c], 0xffffffb8
	lea ebx, [ebp-0x10fc]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_120:
	mov ecx, [ebp-0x5178]
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0x2900]
	mov [ebx-0x4], eax
	mov esi, 0x100
	sub esi, ecx
	cmp dword [ebp-0x515c], 0x5
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_40
	mov edx, [ebp-0x515c]
	and edx, 0x1
	mov ecx, [ebp-0x515c]
	shr ecx, 1
	lea eax, [edx+edx]
	add eax, edx
	lea edx, [eax+ecx]
	mov edi, [ebp+0x8]
	movsx edx, word [edi+edx*2+0x34]
	add eax, edi
	movzx edi, byte [eax+ecx+0x40]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_180:
	mov ecx, [ebp-0x5120]
	mov eax, [ecx]
	mov [ebp-0xa0], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x9c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x98], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x94], eax
	cmp edi, 0x2
	jle _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_50
	cmp edi, esi
	jg _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_50
	mov esi, [ebp+0x8]
	add edx, [esi+0x30]
	mov [ebp-0x5160], edx
	movzx eax, byte [edx+edi-0x1]
	shl eax, 0x4
	lea edx, [ebp-0x5100]
	lea eax, [edx+eax]
	mov edx, [eax]
	mov [ebp-0x90], edx
	mov edx, [eax+0x4]
	mov [ebp-0x8c], edx
	mov edx, [eax+0x8]
	mov [ebp-0x88], edx
	mov eax, [eax+0xc]
	mov [ebp-0x84], eax
	mov dword [ebx], 0x0
	xor esi, esi
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_80:
	mov ecx, [ebp-0x5160]
	movzx eax, byte [esi+ecx]
	shl eax, 0x4
	lea edx, [ebp-0x5100]
	lea eax, [edx+eax]
	mov edx, [eax]
	mov [ebp-0x80], edx
	mov edx, [eax+0x4]
	mov [ebp-0x7c], edx
	mov edx, [eax+0x8]
	mov [ebp-0x78], edx
	mov eax, [eax+0xc]
	mov [ebp-0x74], eax
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	mov edx, [ebx-0x4]
	lea eax, [edx+eax*4]
	movss xmm2, dword [ebp-0x8c]
	movss xmm1, dword [ebp-0x78]
	movss xmm4, dword [ebp-0x7c]
	movss xmm5, dword [ebp-0x88]
	movaps xmm6, xmm2
	mulss xmm6, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	subss xmm6, xmm0
	movss xmm3, dword [ebp-0x98]
	movss xmm0, dword [ebp-0x9c]
	mulss xmm4, xmm3
	mulss xmm1, xmm0
	subss xmm4, xmm1
	mulss xmm5, xmm0
	mulss xmm2, xmm3
	subss xmm5, xmm2
	movaps xmm2, xmm5
	mulss xmm2, [ebp-0x80]
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0xa0]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x90]
	addss xmm0, xmm1
	addss xmm2, xmm0
	movaps xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	movss xmm1, dword [_float_0_00100000]
	ucomiss xmm1, xmm0
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_60
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	movss [ebp-0x5158], xmm0
	mulss xmm5, [ebp-0x74]
	mulss xmm6, [ebp-0x94]
	mulss xmm4, [ebp-0x84]
	addss xmm6, xmm4
	addss xmm5, xmm6
	mulss xmm5, xmm0
	movss [eax], xmm5
	movss xmm2, dword [ebp-0x88]
	movss xmm5, dword [ebp-0x80]
	movss xmm3, dword [ebp-0x78]
	movss xmm4, dword [ebp-0x90]
	movss xmm6, dword [ebp-0xa0]
	movss xmm7, dword [ebp-0x98]
	movaps xmm0, xmm4
	mulss xmm0, xmm7
	movaps xmm1, xmm2
	mulss xmm1, xmm6
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x74]
	mulss xmm2, xmm5
	mulss xmm4, xmm3
	subss xmm2, xmm4
	mulss xmm2, [ebp-0x94]
	mulss xmm3, xmm6
	mulss xmm5, xmm7
	subss xmm3, xmm5
	mulss xmm3, [ebp-0x84]
	addss xmm2, xmm3
	addss xmm0, xmm2
	mulss xmm0, [ebp-0x5158]
	movss [eax+0x4], xmm0
	movss xmm2, dword [ebp-0x90]
	movss xmm5, dword [ebp-0x7c]
	movss xmm3, dword [ebp-0x80]
	movss xmm4, dword [ebp-0x8c]
	movss xmm6, dword [ebp-0x9c]
	movss xmm7, dword [ebp-0xa0]
	movaps xmm0, xmm4
	mulss xmm0, xmm7
	movaps xmm1, xmm2
	mulss xmm1, xmm6
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x74]
	mulss xmm2, xmm5
	mulss xmm4, xmm3
	subss xmm2, xmm4
	mulss xmm2, [ebp-0x94]
	mulss xmm3, xmm6
	mulss xmm5, xmm7
	subss xmm3, xmm5
	mulss xmm3, [ebp-0x84]
	addss xmm2, xmm3
	addss xmm0, xmm2
	mulss xmm0, [ebp-0x5158]
	movss [eax+0x8], xmm0
	mov ecx, [ebx]
	test ecx, ecx
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_70
	lea eax, [ecx+ecx*2]
	shl eax, 0x2
	add eax, [ebx-0x4]
	lea edx, [eax-0xc]
	movss xmm0, dword [eax-0xc]
	subss xmm0, [eax]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_1_00000000]
	jb _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_60
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_70:
	lea eax, [ecx+0x1]
	mov [ebx], eax
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_60:
	mov eax, [ebp-0x80]
	mov [ebp-0x90], eax
	mov eax, [ebp-0x7c]
	mov [ebp-0x8c], eax
	mov eax, [ebp-0x78]
	mov [ebp-0x88], eax
	mov eax, [ebp-0x74]
	mov [ebp-0x84], eax
	add esi, 0x1
	cmp edi, esi
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_80
	mov esi, [ebx]
	cmp esi, 0x1
	jbe _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_90
	mov edx, [ebx-0x4]
	lea eax, [esi+esi*2]
	lea eax, [edx+eax*4]
	lea ecx, [eax-0xc]
	movss xmm0, dword [edx]
	subss xmm0, [eax-0xc]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ecx+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_100
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_90:
	cmp dword [ebx], 0x2
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_110
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_50:
	mov dword [ebx], 0x0
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_110:
	mov eax, [ebx]
	add [ebp-0x5178], eax
	add dword [ebp-0x515c], 0x1
	add ebx, 0x8
	add dword [ebp-0x5120], 0x10
	add dword [ebp-0x511c], 0xc
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	lea eax, [edx+0x6]
	cmp [ebp-0x515c], eax
	jb _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_120
	mov ecx, [ebp-0x5178]
	test ecx, ecx
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
	mov eax, phys_drawCollisionObj
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_130
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_220:
	lea ebx, [ebp-0x2900]
	mov [ebp-0x20], ebx
	mov esi, [ebp-0x5178]
	mov [ebp-0x1c], esi
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov edi, [ebp+0xc]
	movss xmm0, dword [edi]
	xorps xmm0, [_data16_80000000]
	mov dword [ebp-0x1d00], 0xbf800000
	mov dword [ebp-0x1cfc], 0x0
	mov dword [ebp-0x1cf8], 0x0
	movss [ebp-0x1cf4], xmm0
	mov eax, [edi+0x10]
	mov dword [ebp-0x1cf0], 0x3f800000
	mov dword [ebp-0x1cec], 0x0
	mov dword [ebp-0x1ce8], 0x0
	mov [ebp-0x1ce4], eax
	movss xmm0, dword [edi+0x4]
	xorps xmm0, [_data16_80000000]
	mov dword [ebp-0x1ce0], 0x0
	mov dword [ebp-0x1cdc], 0xbf800000
	mov dword [ebp-0x1cd8], 0x0
	movss [ebp-0x1cd4], xmm0
	mov eax, [edi+0x14]
	mov dword [ebp-0x1cd0], 0x0
	mov dword [ebp-0x1ccc], 0x3f800000
	mov dword [ebp-0x1cc8], 0x0
	mov [ebp-0x1cc4], eax
	movss xmm0, dword [edi+0x8]
	xorps xmm0, [_data16_80000000]
	mov dword [ebp-0x1cc0], 0x0
	mov dword [ebp-0x1cbc], 0x0
	mov dword [ebp-0x1cb8], 0xbf800000
	movss [ebp-0x1cb4], xmm0
	mov eax, [edi+0x18]
	mov dword [ebp-0x1cb0], 0x0
	mov dword [ebp-0x1cac], 0x0
	mov dword [ebp-0x1ca8], 0x3f800000
	mov [ebp-0x1ca4], eax
	movss xmm0, dword [_float__340282346638528859811704]
	movss [ebp-0x516c], xmm0
	xor esi, esi
	mov dword [ebp-0x5168], 0xffffffff
	lea edi, [ebp-0x20]
	lea ebx, [ebp-0x1d00]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_150:
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z34Phys_TestVertsAgainstPlane_WrapperPKfPK4Poly
	fstp dword [ebp-0x5114]
	movss xmm1, dword [ebp-0x5114]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jae _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
	mov ecx, esi
	shr ecx, 1
	mov edx, esi
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	add eax, [ebp+0xc]
	cmp byte [eax+ecx+0x40], 0x0
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_140
	ucomiss xmm1, [ebp-0x516c]
	jbe _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_140
	mov [ebp-0x5168], esi
	mov eax, [ebx]
	mov [ebp-0x40], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x38], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x34], eax
	movss [ebp-0x516c], xmm1
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_140:
	add esi, 0x1
	add ebx, 0x10
	cmp esi, 0x6
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_150
	mov eax, [ebp+0xc]
	mov edx, [eax+0x1c]
	test edx, edx
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_160
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_410:
	mov ebx, eax
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [eax]
	xorps xmm0, xmm1
	mov ecx, 0xbf800000
	mov [ebp-0xa0], ecx
	mov dword [ebp-0x9c], 0x0
	mov dword [ebp-0x98], 0x0
	movss [ebp-0x94], xmm0
	mov eax, [eax+0x10]
	mov edx, 0x3f800000
	mov [ebp-0x90], edx
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x88], 0x0
	mov [ebp-0x84], eax
	movss xmm0, dword [ebx+0x4]
	xorps xmm0, xmm1
	mov dword [ebp-0x80], 0x0
	mov [ebp-0x7c], ecx
	mov dword [ebp-0x78], 0x0
	movss [ebp-0x74], xmm0
	mov eax, [ebx+0x14]
	mov dword [ebp-0x70], 0x0
	mov [ebp-0x6c], edx
	mov dword [ebp-0x68], 0x0
	mov [ebp-0x64], eax
	movss xmm0, dword [ebx+0x8]
	xorps xmm0, xmm1
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	mov [ebp-0x58], ecx
	movss [ebp-0x54], xmm0
	mov eax, [ebx+0x18]
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov [ebp-0x48], edx
	mov [ebp-0x44], eax
	cmp dword [ebx+0x1c], 0xfffffffa
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_170
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30:
	add esp, 0x51ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_40:
	mov eax, [ebp-0x511c]
	mov edi, [ebp+0x8]
	add eax, [edi+0x20]
	movsx edx, word [eax+0x8]
	movzx edi, byte [eax+0xa]
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_180
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_20:
	mov dword [ebp-0x51cc], 0x0
	mov dword [ebp-0x51bc], 0x0
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x519c], ecx
	mov edx, [ebp-0x51cc]
	mov ebx, ecx
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_190
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_200:
	mov edx, eax
	mov ebx, [ebp-0x519c]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_190:
	shl edx, 0x4
	lea edx, [edx+ebp-0x50a0]
	mov ecx, [ebp-0x51bc]
	mov eax, [ecx+ebx]
	movss xmm4, dword [eax+0xc]
	movss xmm3, dword [eax]
	mov ecx, [ebp-0x5198]
	mulss xmm3, [ecx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edi]
	addss xmm3, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi]
	addss xmm3, xmm0
	movss [edx], xmm3
	movss xmm2, dword [eax]
	mulss xmm2, [ecx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edi+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x4]
	addss xmm2, xmm0
	movss [edx+0x4], xmm2
	movss xmm1, dword [eax]
	mulss xmm1, [ecx+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss [edx+0x8], xmm1
	mov ebx, [ebp-0x5184]
	mulss xmm3, [ebx]
	mov eax, [ebp-0x518c]
	mulss xmm2, [eax]
	addss xmm3, xmm2
	mov ecx, [ebp-0x5194]
	mulss xmm1, [ecx]
	addss xmm3, xmm1
	addss xmm4, xmm3
	movss [edx+0xc], xmm4
	add dword [ebp-0x51cc], 0x1
	add dword [ebp-0x51bc], 0xc
	mov eax, [ebp-0x51cc]
	mov ebx, [ebp+0x8]
	cmp eax, [ebx+0x1c]
	jb _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_200
	mov eax, ebx
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_210
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_130:
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x1c], 0xfffffffa
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_220
	mov dword [ebp-0x5164], 0x0
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_230
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_240:
	add dword [ebp-0x5164], 0x1
	lea eax, [edx+0x6]
	cmp eax, [ebp-0x5164]
	jbe _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_220
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_230:
	mov esi, [ebp-0x5164]
	lea ebx, [ebp+esi*8-0x1100]
	mov eax, [ebx+0x4]
	lea ecx, [eax-0x1]
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_240
	xor edi, edi
	xor esi, esi
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_250
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_260:
	mov ecx, edi
	mov edi, eax
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_250:
	mov edx, [ebx]
	mov dword [esp+0x10], 0x8
	mov dword [esp+0xc], 0x0
	mov eax, colorLtGreen
	mov [esp+0x8], eax
	lea eax, [esi+edx]
	mov [esp+0x4], eax
	lea eax, [ecx+ecx*2]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z12CG_DebugLinePKfS0_S0_ii
	lea eax, [edi+0x1]
	add esi, 0xc
	cmp [ebx+0x4], eax
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_260
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_240
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_170:
	xor esi, esi
	mov dword [ebp-0x5174], 0x0
	lea ebx, [ebp-0x900]
	mov edi, ebx
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_270:
	mov edx, [ebp-0x5174]
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0x3500]
	mov [ebx], eax
	lea ecx, [ebp-0xa0]
	mov [esp+0x10], ecx
	mov eax, 0x100
	sub eax, edx
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	mov edx, [ebx+0x4]
	add [ebp-0x5174], edx
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x1c]
	lea eax, [edx+0x6]
	cmp eax, esi
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_270
	mov eax, [ebp-0x5174]
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
	mov eax, phys_drawCollisionWorld
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_280
	mov ecx, [ebp+0xc]
	cmp dword [ecx+0x1c], 0xfffffffa
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_290
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_280:
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x1c], 0xfffffffa
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_300
	xor esi, esi
	movss xmm0, dword [_float__340282346638528859811704]
	movss [ebp-0x5110], xmm0
	mov dword [ebp-0x5170], 0xffffffff
	xor edi, edi
	lea ebx, [ebp-0x50fc]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_340:
	movss xmm7, dword [ebx-0x4]
	movss xmm6, dword [ebx]
	movss xmm5, dword [ebx+0x4]
	movss xmm4, dword [ebx+0x8]
	xor edx, edx
	movss xmm3, dword [_float_3402823466385288598117041]
	lea eax, [ebp-0x3500]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_310:
	movaps xmm0, xmm7
	mulss xmm0, [eax]
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, xmm4
	movaps xmm1, xmm0
	subss xmm1, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
	add edx, 0x1
	add eax, 0xc
	cmp edx, [ebp-0x5174]
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_310
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jae _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
	cmp esi, 0x5
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_320
	mov ecx, esi
	shr ecx, 1
	mov edx, esi
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	add eax, [ebp+0x8]
	cmp byte [eax+ecx+0x40], 0x0
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_330
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_360:
	mov ecx, [ebp+0x8]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_370:
	add esi, 0x1
	add ebx, 0x10
	add edi, 0xc
	mov eax, [ecx+0x1c]
	add eax, 0x6
	cmp eax, esi
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_340
	movss xmm0, dword [ebp-0x5110]
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_350
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_330:
	ucomiss xmm3, [ebp-0x5110]
	jbe _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_360
	mov [ebp-0x5170], esi
	movss [ebp-0x30], xmm7
	mov eax, [ebx]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x28], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x24], eax
	movss [ebp-0x5110], xmm3
	mov ecx, [ebp+0x8]
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_370
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_100:
	lea eax, [esi-0x1]
	mov [ebx], eax
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_90
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_320:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	cmp byte [edi+eax-0x3e], 0x0
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_330
	mov ecx, edx
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_370
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_160:
	xor esi, esi
	xor ebx, ebx
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x20]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_400:
	mov edx, [ebx+ecx]
	mov eax, [edx]
	mov [ebp-0xa0], eax
	mov eax, [edx+0x4]
	mov [ebp-0x9c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x98], eax
	mov eax, [ebx+ecx]
	mov eax, [eax+0xc]
	mov [ebp-0x94], eax
	mov [esp+0x4], edi
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call _Z34Phys_TestVertsAgainstPlane_WrapperPKfPK4Poly
	fstp dword [ebp-0x5118]
	movss xmm0, dword [ebp-0x5118]
	ucomiss xmm0, [_float_0_00000000]
	jae _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x20]
	cmp byte [ebx+ecx+0xa], 0x0
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_380
	ucomiss xmm0, [ebp-0x516c]
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_390
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_420:
	mov eax, [ebp+0xc]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_380:
	add esi, 0x1
	add ebx, 0xc
	cmp [eax+0x1c], esi
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_400
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_410
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_390:
	lea edx, [esi+0x6]
	mov [ebp-0x5168], edx
	mov eax, [ebp-0xa0]
	mov [ebp-0x40], eax
	mov eax, [ebp-0x9c]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x98]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x94]
	mov [ebp-0x34], eax
	movss [ebp-0x516c], xmm0
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_420
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_300:
	movss xmm0, dword [_float__340282346638528859811704]
	movss [ebp-0x5110], xmm0
	mov dword [ebp-0x5170], 0xffffffff
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_350:
	cmp dword [ebp-0x5168], 0xffffffff
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_430
	mov eax, [ebp-0x5168]
	mov edi, [ebp+eax*8-0x8fc]
	test edi, edi
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_440
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_430:
	xor edx, edx
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_620:
	cmp dword [ebp-0x5170], 0xffffffff
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_450
	mov ecx, [ebp-0x5170]
	mov esi, [ebp+ecx*8-0x10fc]
	test esi, esi
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_460
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_450:
	xor eax, eax
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_610:
	test dl, dl
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_470
	movss xmm1, dword [ebp-0x516c]
	ucomiss xmm1, xmm0
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_480
	test al, al
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_490
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_480:
	lea ecx, [ebp-0x40]
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	lea edx, [ebp-0x5100]
	mov [esp+0xc], edx
	lea ebx, [ebp-0x1100]
	mov [esp+0x8], ebx
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	lea edi, [ebp-0x900]
	mov [esp], edi
	mov edx, [ebp-0x5168]
	mov eax, [ebp+0xc]
	call _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_580:
	mov ecx, [ebp+0x10]
	cmp byte [ecx+0xa4], 0x0
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
	mov edi, ecx
	movss xmm1, dword [_data16_80000000]
	mov ebx, [ebp+0xc]
	movss xmm0, dword [ebx]
	xorps xmm0, xmm1
	mov ebx, 0xbf800000
	mov [ebp-0x100], ebx
	xor eax, eax
	mov [ebp-0xfc], eax
	mov [ebp-0xf8], eax
	movss [ebp-0xf4], xmm0
	mov esi, [ebp+0xc]
	mov edx, [esi+0x10]
	mov ecx, 0x3f800000
	mov [ebp-0xf0], ecx
	mov [ebp-0xec], eax
	mov [ebp-0xe8], eax
	mov [ebp-0xe4], edx
	movss xmm0, dword [esi+0x4]
	xorps xmm0, xmm1
	mov [ebp-0xe0], eax
	mov [ebp-0xdc], ebx
	mov [ebp-0xd8], eax
	movss [ebp-0xd4], xmm0
	mov edx, [esi+0x14]
	mov [ebp-0xd0], eax
	mov [ebp-0xcc], ecx
	mov [ebp-0xc8], eax
	mov [ebp-0xc4], edx
	movss xmm0, dword [esi+0x8]
	xorps xmm0, xmm1
	mov [ebp-0xc0], eax
	mov [ebp-0xbc], eax
	mov [ebp-0xb8], ebx
	movss [ebp-0xb4], xmm0
	mov edx, [esi+0x18]
	mov [ebp-0xb0], eax
	mov [ebp-0xac], eax
	mov [ebp-0xa8], ecx
	mov [ebp-0xa4], edx
	mov dword [ebp-0x5128], 0x1
	mov dword [ebp-0x5124], 0x0
	lea eax, [ebp-0x100]
	mov [ebp-0x51a4], eax
	lea edx, [ebp-0x900]
	mov [ebp-0x51a8], edx
	add eax, 0x10
	mov [ebp-0x51ac], eax
	mov dword [ebp-0x51b0], 0x8
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_540:
	mov ecx, [ebp-0x51b0]
	mov ebx, [ecx+ebp-0x904]
	test ebx, ebx
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_500
	movss xmm0, dword [esi]
	ucomiss xmm0, [edi+0x38]
	jbe _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_510
	mov ebx, [ebp-0x5168]
	cmp [ebp-0x5124], ebx
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_520
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	add edx, 0x6
	mov [ebp-0x5150], edx
	mov ecx, [ebp-0x51a8]
	mov ebx, [ecx+0x4]
	lea eax, [ebx+ebx*2]
	shl eax, 0x2
	mov edx, [ecx]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x1d00]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x5150]
	test edx, edx
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_530
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_740:
	mov edx, [ebp+0x14]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x5100]
	mov [esp+0xc], ecx
	lea ebx, [ebp-0x1100]
	mov [esp+0x8], ebx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x900]
	mov [esp], edx
	mov ecx, [ebp-0x51a4]
	mov edx, [ebp-0x5124]
	mov eax, [ebp+0xc]
	call _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_520:
	add dword [ebp-0x5128], 0x2
	add dword [ebp-0x51b0], 0x10
	add dword [ebp-0x51ac], 0x20
	add dword [ebp-0x5124], 0x2
	add dword [ebp-0x51a8], 0x10
	add dword [ebp-0x51a4], 0x20
	add edi, 0x4
	add esi, 0x4
	cmp dword [ebp-0x5128], 0x7
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_540
	mov esi, [ebp+0xc]
	mov eax, [esi+0x1c]
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
	xor ebx, ebx
	mov esi, 0x6
	xor edi, edi
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_570:
	cmp esi, [ebp-0x5168]
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_550
	mov eax, [ebp+ebx*8-0x8cc]
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_550
	mov edx, [ebp+0xc]
	mov eax, [edx+0x20]
	mov eax, [eax+edi]
	mov ecx, [ebp-0x5184]
	movss xmm1, dword [ecx]
	mulss xmm1, [eax]
	mov edx, [ebp-0x518c]
	movss xmm0, dword [edx]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	mov ecx, [ebp-0x5194]
	movss xmm0, dword [ecx]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	ucomiss xmm1, [eax+0xc]
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_560
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_550:
	add ebx, 0x1
	add esi, 0x1
	add edi, 0xc
	mov edx, [ebp+0xc]
	cmp ebx, [edx+0x1c]
	jb _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_570
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_470:
	test al, al
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_30
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_490:
	mov eax, [ebp-0x30]
	mov [ebp-0x1d00], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x1cfc], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x1cf8], eax
	lea ebx, [ebp-0xa0]
	mov [esp], ebx
	lea ecx, [ebp-0x900]
	mov edx, [ebp+0xc]
	lea eax, [ebp-0x1d00]
	call _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf
	mov [ebp-0x5168], eax
	test eax, eax
	js _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_580
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	mov edi, eax
	mov ecx, [ebp-0x5168]
	lea ebx, [ebp+ecx*8-0x900]
	mov eax, [ebp-0x5170]
	lea esi, [ebp+eax*8-0x1100]
	mov ecx, [esi+0x4]
	lea eax, [ebp-0x30]
	mov dword [esp+0xc], 0x100
	lea edx, [ebp-0x4100]
	mov [esp+0x8], edx
	mov edx, [ebx+0x4]
	mov [esp+0x4], edx
	mov edx, [ebx]
	mov [esp], edx
	mov edx, [esi]
	call _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj
	mov esi, eax
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_580
	mov dword [ebp-0x5154], 0x0
	lea ebx, [ebp-0x4100]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_600:
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [ebx]
	movss xmm1, dword [ebp-0x2c]
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, [ebx+0x8]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x24]
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_590
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jge _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_580
	mov ecx, edx
	mov edx, eax
	imul edx, [ecx+0xc]
	add edx, [ecx]
	add eax, 0x1
	mov [ecx+0x4], eax
	movss [edx+0x20], xmm1
	lea ecx, [edx+0x10]
	mov eax, [ebp-0x1d00]
	mov [edx+0x10], eax
	mov eax, [ebp-0x1cfc]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x1cf8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov [edx+0x2c], edi
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jge _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_580
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_590:
	add dword [ebp-0x5154], 0x1
	add ebx, 0xc
	cmp esi, [ebp-0x5154]
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_600
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_580
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_460:
	mov eax, 0x1
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_610
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_440:
	mov edx, 0x1
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_620
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_290:
	mov dword [ebp-0x510c], 0x0
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_630
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_640:
	add dword [ebp-0x510c], 0x1
	lea eax, [edx+0x6]
	cmp eax, [ebp-0x510c]
	jbe _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_280
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_630:
	mov esi, [ebp-0x510c]
	lea ebx, [ebp+esi*8-0x900]
	mov eax, [ebx+0x4]
	lea ecx, [eax-0x1]
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_640
	xor edi, edi
	xor esi, esi
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_650
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_660:
	mov ecx, edi
	mov edi, eax
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_650:
	mov edx, [ebx]
	mov dword [esp+0x10], 0x8
	mov dword [esp+0xc], 0x0
	mov eax, colorCyan
	mov [esp+0x8], eax
	lea eax, [esi+edx]
	mov [esp+0x4], eax
	lea eax, [ecx+ecx*2]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z12CG_DebugLinePKfS0_S0_ii
	lea eax, [edi+0x1]
	add esi, 0xc
	cmp [ebx+0x4], eax
	ja _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_660
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x1c]
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_640
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_510:
	mov ecx, [ebp-0x51b0]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_500:
	mov eax, [ecx+ebp-0x8fc]
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_520
	movss xmm0, dword [edi+0x38]
	ucomiss xmm0, [esi+0x10]
	jbe _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_520
	mov ebx, [ebp-0x5168]
	cmp [ebp-0x5128], ebx
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_520
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	add edx, 0x6
	mov [ebp-0x5148], edx
	mov ebx, [ecx+ebp-0x8fc]
	lea eax, [ebx+ebx*2]
	shl eax, 0x2
	mov edx, [ecx+ebp-0x900]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea ecx, [ebp-0x4100]
	mov [esp], ecx
	call memcpy
	mov eax, [ebp-0x5148]
	test eax, eax
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_670
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_770:
	mov ebx, [ebp+0x14]
	mov [esp+0x10], ebx
	lea eax, [ebp-0x5100]
	mov [esp+0xc], eax
	lea edx, [ebp-0x1100]
	mov [esp+0x8], edx
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x900]
	mov [esp], ebx
	mov ecx, [ebp-0x51ac]
	mov edx, [ebp-0x5128]
	mov eax, [ebp+0xc]
	call _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_520
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_560:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	add edx, 0x6
	mov [ebp-0x5140], edx
	lea eax, [ebp+esi*8-0x900]
	mov ecx, [eax+0x4]
	mov [ebp-0x513c], ecx
	lea edx, [ecx+ecx*2]
	shl edx, 0x2
	mov eax, [eax]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	lea eax, [ebp-0x4100]
	mov [esp], eax
	call memcpy
	mov eax, [ebp-0x5140]
	test eax, eax
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_680
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_710:
	mov edx, [ebp+0xc]
	mov ecx, [edx+0x20]
	mov edx, [ecx+edi]
	mov eax, [edx]
	mov [ebp-0xa0], eax
	mov eax, [edx+0x4]
	mov [ebp-0x9c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x98], eax
	mov eax, [ecx+edi]
	mov eax, [eax+0xc]
	mov [ebp-0x94], eax
	mov ecx, [ebp+0x14]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x5100]
	mov [esp+0xc], eax
	lea edx, [ebp-0x1100]
	mov [esp+0x8], edx
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x900]
	mov [esp], eax
	lea ecx, [ebp-0xa0]
	mov edx, esi
	mov eax, [ebp+0xc]
	call _Z46Phys_CollideOrientedBrushAgainstFixedBrushFacePK8cbrush_tiPfPK4PolyS1_S5_PA4_KfP7Results
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_550
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_680:
	mov dword [ebp-0x5138], 0x0
	lea edx, [ebp-0x5100]
	mov [ebp-0x5134], edx
	mov ecx, edx
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_690
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_700:
	mov ecx, [ebp-0x5134]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_690:
	mov [esp], ecx
	mov ecx, 0x100
	mov edx, [ebp-0x513c]
	lea eax, [ebp-0x4100]
	call _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf
	mov [ebp-0x513c], eax
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_550
	add dword [ebp-0x5138], 0x1
	add dword [ebp-0x5134], 0x10
	mov eax, [ebp-0x5138]
	cmp [ebp-0x5140], eax
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_700
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_710
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_530:
	mov dword [ebp-0x514c], 0x0
	lea edx, [ebp-0x5100]
	mov [ebp-0x512c], edx
	mov ecx, edx
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_720
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_730:
	mov ecx, [ebp-0x512c]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_720:
	mov [esp], ecx
	mov ecx, 0x100
	mov edx, ebx
	lea eax, [ebp-0x1d00]
	call _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf
	mov ebx, eax
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_520
	add dword [ebp-0x514c], 0x1
	add dword [ebp-0x512c], 0x10
	mov eax, [ebp-0x514c]
	cmp [ebp-0x5150], eax
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_730
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_740
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_670:
	mov dword [ebp-0x5144], 0x0
	lea eax, [ebp-0x5100]
	mov [ebp-0x5130], eax
	mov edx, eax
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_750
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_760:
	mov edx, [ebp-0x5130]
_Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_750:
	mov [esp], edx
	mov ecx, 0x100
	mov edx, ebx
	lea eax, [ebp-0x4100]
	call _Z25Phys_ClipPolyAgainstPlanePA3_fjjPKf
	mov ebx, eax
	test eax, eax
	jz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_520
	add dword [ebp-0x5144], 0x1
	add dword [ebp-0x5130], 0x10
	mov ecx, [ebp-0x5144]
	cmp [ebp-0x5148], ecx
	jnz _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_760
	jmp _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results_770


;Phys_CollideOrientedBrushModelWithBrush(cbrush_t const*, objInfo const*, Results*)
_Z39Phys_CollideOrientedBrushModelWithBrushPK8cbrush_tPK7objInfoP7Results:
	push ebp
	mov ebp, esp
	sub esp, 0x58
	mov edx, [ebp+0xc]
	mov eax, 0xff7fffff
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov [ebp-0x18], eax
	mov eax, 0x7f7fffff
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov eax, [ebp+0x8]
	mov [ebp-0x14], eax
	mov [ebp-0x10], edx
	mov eax, [ebp+0x10]
	mov [ebp-0xc], eax
	lea eax, [ebp-0x14]
	mov [esp+0x18], eax
	mov dword [esp+0x14], _Z42Phys_CollideOrientedBrushWithBrush_WrapperPK8cbrush_tPv
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [edx+0x8c]
	mov eax, [eax+0x40]
	lea eax, [eax+eax*4]
	mov edx, cm
	mov edx, [edx+0x44]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6_
	leave
	ret
	nop


;Phys_CollideOrientedBrushWithTriangleList(cbrush_t const*, unsigned short const*, float const (*) [3], int, objInfo const*, int, Results*)
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x453c
	mov eax, [ebp+0x18]
	add eax, 0x38
	mov [ebp-0x4504], eax
	mov edx, [ebp+0x18]
	mov eax, [edx+0x38]
	mov [ebp-0x24], eax
	add edx, 0x3c
	mov [ebp-0x4500], edx
	mov ecx, [ebp+0x18]
	mov eax, [ecx+0x3c]
	mov [ebp-0x20], eax
	add ecx, 0x40
	mov [ebp-0x44fc], ecx
	mov ebx, [ebp+0x18]
	mov eax, [ebx+0x40]
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebx+0x30]
	movss [ebp-0x4508], xmm0
	mov edi, [ebp+0x14]
	test edi, edi
	jle _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_10
	mov esi, [ebp+0x20]
	mov eax, [esi+0x8]
	cmp eax, [esi+0x4]
	jg _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_20
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_10:
	add esp, 0x453c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_20:
	mov edi, [ebp+0xc]
	mov [ebp-0x4510], edi
	mov dword [ebp-0x450c], 0x0
	mov ecx, edi
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_110:
	movzx eax, word [ecx]
	lea eax, [eax+eax*2]
	mov ebx, [ebp+0x10]
	lea eax, [ebx+eax*4]
	mov edx, [eax]
	mov [ebp-0xb4], edx
	mov edx, [eax+0x4]
	mov [ebp-0xb0], edx
	mov eax, [eax+0x8]
	mov [ebp-0xac], eax
	movzx eax, word [ecx+0x2]
	lea eax, [eax+eax*2]
	lea eax, [ebx+eax*4]
	mov edx, [eax]
	mov [ebp-0xa8], edx
	mov edx, [eax+0x4]
	mov [ebp-0xa4], edx
	mov eax, [eax+0x8]
	mov [ebp-0xa0], eax
	movzx eax, word [ecx+0x4]
	lea eax, [eax+eax*2]
	lea eax, [ebx+eax*4]
	add ecx, 0x6
	mov [ebp-0x4510], ecx
	mov edx, [eax]
	mov [ebp-0x9c], edx
	mov edx, [eax+0x4]
	mov [ebp-0x98], edx
	mov eax, [eax+0x8]
	mov [ebp-0x94], eax
	lea esi, [ebp-0x34]
	mov [esp+0xc], esi
	movss xmm0, dword [ebp-0x4508]
	movss [esp+0x8], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea edx, [ebp-0xb4]
	mov [esp], edx
	call _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf
	test eax, eax
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_30
	movss xmm2, dword [ebp-0xb4]
	mov ecx, [ebp-0x4504]
	subss xmm2, [ecx]
	movss xmm3, dword [ebp-0xb0]
	mov ebx, [ebp-0x4500]
	subss xmm3, [ebx]
	movss xmm4, dword [ebp-0xac]
	mov esi, [ebp-0x44fc]
	subss xmm4, [esi]
	mov eax, [ebp+0x18]
	add eax, 0x68
	mov edx, [ebp+0x18]
	add edx, 0x74
	mov ecx, [ebp+0x18]
	sub ecx, 0xffffff80
	movaps xmm0, xmm2
	mov edi, [ebp+0x18]
	mulss xmm0, [edi+0x68]
	movaps xmm1, xmm3
	mulss xmm1, [edi+0x74]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edi+0x80]
	addss xmm0, xmm1
	movss [ebp-0x90], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	movss [ebp-0x8c], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [edx+0x8]
	addss xmm2, xmm3
	mulss xmm4, [ecx+0x8]
	addss xmm2, xmm4
	movss [ebp-0x88], xmm2
	movss xmm2, dword [ebp-0xa8]
	mov ebx, [ebp-0x4504]
	subss xmm2, [ebx]
	movss xmm3, dword [ebp-0xa4]
	mov esi, [ebp-0x4500]
	subss xmm3, [esi]
	movss xmm4, dword [ebp-0xa0]
	mov edi, [ebp-0x44fc]
	subss xmm4, [edi]
	movaps xmm0, xmm2
	mov ebx, [ebp+0x18]
	mulss xmm0, [ebx+0x68]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x74]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x80]
	addss xmm0, xmm1
	movss [ebp-0x84], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	movss [ebp-0x80], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [edx+0x8]
	addss xmm2, xmm3
	mulss xmm4, [ecx+0x8]
	addss xmm2, xmm4
	movss [ebp-0x7c], xmm2
	movss xmm2, dword [ebp-0x9c]
	mov esi, [ebp-0x4504]
	subss xmm2, [esi]
	movss xmm3, dword [ebp-0x98]
	mov edi, [ebp-0x4500]
	subss xmm3, [edi]
	movss xmm4, dword [ebp-0x94]
	mov ebx, [ebp-0x44fc]
	subss xmm4, [ebx]
	movaps xmm0, xmm2
	mov esi, [ebp+0x18]
	mulss xmm0, [esi+0x68]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x74]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [esi+0x80]
	addss xmm0, xmm1
	movss [ebp-0x78], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	movss [ebp-0x74], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [edx+0x8]
	addss xmm2, xmm3
	mulss xmm4, [ecx+0x8]
	addss xmm2, xmm4
	movss [ebp-0x70], xmm2
	mov edi, [ebp+0x20]
	mov edi, [edi+0x4]
	mov [ebp-0x44f8], edi
	xor eax, eax
	mov [ebp-0x44], eax
	mov [ebp-0x40], eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	movss xmm1, dword [_data16_80000000]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	xorps xmm0, xmm1
	mov ebx, 0xbf800000
	mov [ebp-0x14b4], ebx
	mov [ebp-0x14b0], eax
	mov [ebp-0x14ac], eax
	movss [ebp-0x14a8], xmm0
	mov edx, [edx+0x10]
	mov ecx, 0x3f800000
	mov [ebp-0x14a4], ecx
	mov [ebp-0x14a0], eax
	mov [ebp-0x149c], eax
	mov [ebp-0x1498], edx
	mov esi, [ebp+0x8]
	movss xmm0, dword [esi+0x4]
	xorps xmm0, xmm1
	mov [ebp-0x1494], eax
	mov [ebp-0x1490], ebx
	mov [ebp-0x148c], eax
	movss [ebp-0x1488], xmm0
	mov edx, [esi+0x14]
	mov [ebp-0x1484], eax
	mov [ebp-0x1480], ecx
	mov [ebp-0x147c], eax
	mov [ebp-0x1478], edx
	movss xmm0, dword [esi+0x8]
	xorps xmm0, xmm1
	mov [ebp-0x1474], eax
	mov [ebp-0x1470], eax
	mov [ebp-0x146c], ebx
	movss [ebp-0x1468], xmm0
	mov edx, [esi+0x18]
	mov [ebp-0x1464], eax
	mov [ebp-0x1460], eax
	mov [ebp-0x145c], ecx
	mov [ebp-0x1458], edx
	movss xmm0, dword [_float__340282346638528859811704]
	movss [ebp-0x44f0], xmm0
	xor esi, esi
	mov dword [ebp-0x44bc], 0xffffffff
	lea ebx, [ebp-0x14b4]
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_60:
	lea eax, [ebp-0x90]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S_
	fstp dword [ebp-0x44c4]
	movss xmm0, dword [ebp-0x44c4]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jae _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_40
	mov ecx, esi
	shr ecx, 1
	mov edx, esi
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	add eax, [ebp+0x8]
	cmp byte [eax+ecx+0x40], 0x0
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_50
	ucomiss xmm0, [ebp-0x44f0]
	jbe _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_50
	mov [ebp-0x44bc], esi
	mov eax, [ebx]
	mov [ebp-0x44], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x40], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x38], eax
	movss [ebp-0x44f0], xmm0
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_50:
	add esi, 0x1
	add ebx, 0x10
	cmp esi, 0x6
	jnz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_60
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	test esi, esi
	jnz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_70
	mov ebx, [ebp+0x8]
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_180:
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [eax]
	xorps xmm0, xmm1
	mov ecx, 0xbf800000
	mov [ebp-0x14b4], ecx
	mov dword [ebp-0x14b0], 0x0
	mov dword [ebp-0x14ac], 0x0
	movss [ebp-0x14a8], xmm0
	mov eax, [eax+0x10]
	mov edx, 0x3f800000
	mov [ebp-0x14a4], edx
	mov dword [ebp-0x14a0], 0x0
	mov dword [ebp-0x149c], 0x0
	mov [ebp-0x1498], eax
	movss xmm0, dword [ebx+0x4]
	xorps xmm0, xmm1
	mov dword [ebp-0x1494], 0x0
	mov [ebp-0x1490], ecx
	mov dword [ebp-0x148c], 0x0
	movss [ebp-0x1488], xmm0
	mov eax, [ebx+0x14]
	mov dword [ebp-0x1484], 0x0
	mov [ebp-0x1480], edx
	mov dword [ebp-0x147c], 0x0
	mov [ebp-0x1478], eax
	movss xmm0, dword [ebx+0x8]
	xorps xmm0, xmm1
	mov dword [ebp-0x1474], 0x0
	mov dword [ebp-0x1470], 0x0
	mov [ebp-0x146c], ecx
	movss [ebp-0x1468], xmm0
	mov eax, [ebx+0x18]
	mov dword [ebp-0x1464], 0x0
	mov dword [ebp-0x1460], 0x0
	mov [ebp-0x145c], edx
	mov [ebp-0x1458], eax
	cmp dword [ebx+0x1c], 0xfffffffa
	jnz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_80
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_320:
	mov ebx, [ebp+0x20]
	mov eax, [ebx+0x4]
	mov edi, ebx
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_120:
	mov esi, [ebp-0x44f8]
	lea edx, [esi+esi*2]
	shl edx, 0x4
	add edx, [edi]
	sub eax, esi
	mov [ebp-0x44f4], eax
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_30
	mov dword [ebp-0x4520], 0x0
	mov eax, [ebp+0x18]
	lea edi, [eax+0x44]
	lea esi, [eax+0x50]
	lea ebx, [eax+0x5c]
	mov ecx, eax
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_90
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_100:
	mov ecx, [ebp+0x18]
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_90:
	lea eax, [edx+0x10]
	movss xmm1, dword [edx+0x10]
	movss xmm3, dword [eax+0x4]
	movss xmm4, dword [eax+0x8]
	movaps xmm5, xmm1
	mulss xmm5, [edi+0x4]
	movaps xmm0, xmm3
	mulss xmm0, [esi+0x4]
	addss xmm5, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x4]
	addss xmm5, xmm0
	movaps xmm2, xmm1
	mulss xmm2, [edi+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [esi+0x8]
	addss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x8]
	addss xmm2, xmm0
	mulss xmm1, [ecx+0x44]
	mulss xmm3, [ecx+0x50]
	addss xmm1, xmm3
	mulss xmm4, [ecx+0x5c]
	addss xmm1, xmm4
	movss [edx+0x10], xmm1
	movss [eax+0x4], xmm5
	movss [eax+0x8], xmm2
	movss xmm1, dword [edx]
	movss xmm4, dword [edx+0x4]
	movss xmm5, dword [edx+0x8]
	movaps xmm3, xmm1
	mulss xmm3, [edi+0x4]
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x4]
	addss xmm3, xmm0
	movaps xmm2, xmm1
	mulss xmm2, [edi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x8]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x8]
	addss xmm2, xmm0
	mulss xmm1, [ecx+0x44]
	mulss xmm4, [ecx+0x50]
	addss xmm1, xmm4
	mulss xmm5, [ecx+0x5c]
	addss xmm1, xmm5
	mov eax, [ebp-0x4504]
	addss xmm1, [eax]
	movss [edx], xmm1
	mov ecx, [ebp-0x4500]
	addss xmm3, [ecx]
	movss [edx+0x4], xmm3
	mov eax, [ebp-0x44fc]
	addss xmm2, [eax]
	movss [edx+0x8], xmm2
	add edx, 0x30
	add dword [ebp-0x4520], 0x1
	mov ecx, [ebp-0x4520]
	cmp [ebp-0x44f4], ecx
	jnz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_100
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_30:
	add dword [ebp-0x450c], 0x1
	mov ebx, [ebp-0x450c]
	cmp [ebp+0x14], ebx
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_10
	mov edx, [ebp+0x20]
	mov eax, [edx+0x8]
	cmp eax, [edx+0x4]
	jle _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_10
	mov ecx, [ebp-0x4510]
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_110
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_40:
	mov edx, [ebp+0x20]
	mov eax, [edx+0x4]
	mov edi, edx
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_120
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_70:
	xor esi, esi
	xor ebx, ebx
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_130
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_160:
	mov edi, eax
	add esi, 0x1
	add ebx, 0xc
	cmp [edi+0x1c], esi
	jbe _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_140
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_130:
	mov edx, [ebx+ecx]
	mov eax, [edx]
	mov [ebp-0x6c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x68], eax
	mov eax, [edx+0x8]
	mov [ebp-0x64], eax
	mov eax, [ebx+ecx]
	mov eax, [eax+0xc]
	mov [ebp-0x60], eax
	lea edx, [ebp-0x90]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x6c]
	mov [esp], ecx
	call _Z34Phys_TestTriangleAgainstBrushPlanePKfPA3_S_
	fstp dword [ebp-0x44c8]
	movss xmm0, dword [ebp-0x44c8]
	ucomiss xmm0, [_float_0_00000000]
	jae _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_150
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	cmp byte [ebx+ecx+0xa], 0x0
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_160
	ucomiss xmm0, [ebp-0x44f0]
	jbe _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_170
	lea edx, [esi+0x6]
	mov [ebp-0x44bc], edx
	mov eax, [ebp-0x6c]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x40], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x60]
	mov [ebp-0x38], eax
	movss [ebp-0x44f0], xmm0
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_170:
	mov edi, [ebp+0x8]
	add esi, 0x1
	add ebx, 0xc
	cmp [edi+0x1c], esi
	ja _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_130
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_140:
	mov eax, edi
	mov ebx, edi
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_180
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_80:
	xor esi, esi
	mov dword [ebp-0x44e4], 0x0
	lea ebx, [ebp-0x8b4]
	mov edi, ebx
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_190:
	mov edx, [ebp-0x44e4]
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0x44b4]
	mov [ebx], eax
	lea ecx, [ebp-0x14b4]
	mov [esp+0x10], ecx
	mov eax, 0x400
	sub eax, edx
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	mov edx, [ebx+0x4]
	add [ebp-0x44e4], edx
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x1c]
	lea eax, [ecx+0x6]
	cmp eax, esi
	ja _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_190
	mov ebx, [ebp-0x44e4]
	test ebx, ebx
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_200
	mov eax, phys_drawCollisionObj
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_210
	mov edx, [ebp+0x8]
	cmp dword [edx+0x1c], 0xfffffffa
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_210
	mov dword [ebp-0x44ec], 0x0
	mov ebx, [ebp+0x18]
	lea edi, [ebx+0x44]
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_220
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_230:
	add dword [ebp-0x44ec], 0x1
	lea eax, [ecx+0x6]
	cmp eax, [ebp-0x44ec]
	jbe _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_210
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_220:
	mov edx, [ebp-0x44ec]
	lea edx, [ebp+edx*8-0x8b4]
	mov [ebp-0x44e8], edx
	mov eax, [edx+0x4]
	lea edx, [eax-0x1]
	test eax, eax
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_230
	mov esi, [ebp+0x18]
	add esi, 0x50
	mov ebx, [ebp+0x18]
	add ebx, 0x5c
	mov dword [ebp-0x44c0], 0x0
	mov dword [ebp-0x44cc], 0x0
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_240
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_250:
	mov edx, [ebp-0x44c0]
	mov [ebp-0x44c0], eax
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_240:
	lea edx, [edx+edx*2]
	mov ecx, [ebp-0x44e8]
	mov eax, [ecx]
	lea edx, [eax+edx*4]
	movss xmm3, dword [edx]
	mulss xmm3, [edi]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [esi]
	addss xmm3, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx]
	addss xmm3, xmm0
	movss [ebp-0x14b4], xmm3
	movss xmm2, dword [edx]
	mulss xmm2, [edi+0x4]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [esi+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+0x4]
	addss xmm2, xmm0
	movss [ebp-0x14b0], xmm2
	movss xmm1, dword [edx]
	mulss xmm1, [edi+0x8]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	mov eax, [ebp-0x4504]
	addss xmm3, [eax]
	movss [ebp-0x14b4], xmm3
	mov edx, [ebp-0x4500]
	addss xmm2, [edx]
	movss [ebp-0x14b0], xmm2
	mov ecx, [ebp-0x44fc]
	addss xmm1, [ecx]
	movss [ebp-0x14ac], xmm1
	mov eax, [ebp-0x44cc]
	mov edx, [ebp-0x44e8]
	add eax, [edx]
	movss xmm3, dword [eax]
	mulss xmm3, [edi]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [esi]
	addss xmm3, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebx]
	addss xmm3, xmm0
	movss [ebp-0x6c], xmm3
	movss xmm2, dword [eax]
	mulss xmm2, [edi+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [esi+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebx+0x4]
	addss xmm2, xmm0
	movss [ebp-0x68], xmm2
	movss xmm1, dword [eax]
	mulss xmm1, [edi+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	mov ecx, [ebp-0x4504]
	addss xmm3, [ecx]
	movss [ebp-0x6c], xmm3
	mov eax, [ebp-0x4500]
	addss xmm2, [eax]
	movss [ebp-0x68], xmm2
	mov edx, [ebp-0x44fc]
	addss xmm1, [edx]
	movss [ebp-0x64], xmm1
	mov dword [esp+0x10], 0x8
	mov dword [esp+0xc], 0x0
	mov eax, colorLtGreen
	mov [esp+0x8], eax
	lea ecx, [ebp-0x6c]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x14b4]
	mov [esp], eax
	call _Z12CG_DebugLinePKfS0_S0_ii
	mov eax, [ebp-0x44c0]
	add eax, 0x1
	add dword [ebp-0x44cc], 0xc
	mov edx, [ebp-0x44e8]
	cmp [edx+0x4], eax
	ja _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_250
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_230
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_210:
	movss xmm2, dword [ebp-0x90]
	subss xmm2, [ebp-0x84]
	movss [ebp-0x6c], xmm2
	lea edx, [ebp-0x8c]
	movss xmm3, dword [ebp-0x8c]
	subss xmm3, [ebp-0x80]
	movss [ebp-0x68], xmm3
	lea eax, [ebp-0x88]
	movss xmm1, dword [ebp-0x88]
	subss xmm1, [ebp-0x7c]
	movss [ebp-0x64], xmm1
	movss xmm0, dword [ebp-0x78]
	subss xmm0, [ebp-0x90]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x74]
	subss xmm0, [ebp-0x8c]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x70]
	subss xmm0, [ebp-0x88]
	movss [ebp-0x58], xmm0
	movaps xmm4, xmm3
	mulss xmm4, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x5c]
	subss xmm4, xmm0
	movss [ebp-0x54], xmm4
	mulss xmm1, [ebp-0x60]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x58]
	subss xmm1, xmm0
	movss [ebp-0x50], xmm1
	mulss xmm2, [ebp-0x5c]
	mulss xmm3, [ebp-0x60]
	subss xmm2, xmm3
	movss [ebp-0x4c], xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_260
	movss xmm0, dword [_float_1_00000000]
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_290:
	movaps xmm3, xmm0
	mulss xmm3, xmm4
	movss [ebp-0x54], xmm3
	movaps xmm7, xmm0
	mulss xmm7, [ebp-0x50]
	movss [ebp-0x50], xmm7
	movaps xmm6, xmm0
	mulss xmm6, [ebp-0x4c]
	movss [ebp-0x4c], xmm6
	movss xmm5, dword [ebp-0x90]
	mulss xmm5, xmm3
	movss xmm0, dword [edx]
	mulss xmm0, xmm7
	addss xmm5, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [eax]
	addss xmm5, xmm0
	movss [ebp-0x48], xmm5
	xor edx, edx
	movss xmm4, dword [_float_3402823466385288598117041]
	lea eax, [ebp-0x44b4]
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_270:
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, xmm5
	movaps xmm1, xmm0
	subss xmm1, xmm4
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	movaps xmm2, xmm4
	andps xmm2, xmm1
	movaps xmm4, xmm1
	andnps xmm4, xmm0
	orps xmm4, xmm2
	add edx, 0x1
	add eax, 0xc
	cmp [ebp-0x44e4], edx
	jnz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_270
	ucomiss xmm4, [_float_0_00000000]
	jb _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_280
	mov edi, [ebp+0x20]
	mov eax, [edi+0x4]
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_120
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_150:
	mov ecx, [ebp+0x20]
	mov eax, [ecx+0x4]
	mov edi, ecx
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_120
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_260:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_290
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_280:
	movss xmm0, dword [ebp-0x44f0]
	ucomiss xmm0, xmm4
	jbe _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_300
	cmp dword [ebp-0x44bc], 0xffffffff
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_300
	mov eax, [ebp-0x44bc]
	mov edx, [ebp+eax*8-0x8b0]
	test edx, edx
	jnz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_310
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_300:
	xorps xmm3, [_data16_80000000]
	movss [ebp-0x44d0], xmm3
	xorps xmm7, [_data16_80000000]
	movss [ebp-0x44d4], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0x44d8], xmm6
	lea ebx, [ebp-0x54]
	lea eax, [ebp-0x44]
	mov [esp], eax
	lea ecx, [ebp-0x8b4]
	mov edx, [ebp+0x8]
	mov eax, ebx
	call _Z19GetClosestBrushFacePKfPK8cbrush_tPK4PolyPf
	test eax, eax
	js _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_150
	lea eax, [ebp+eax*8-0x8b4]
	mov dword [esp+0xc], 0x100
	lea ecx, [ebp-0x14b4]
	mov [esp+0x8], ecx
	mov edx, [eax+0x4]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	mov ecx, 0x3
	lea edx, [ebp-0x90]
	mov eax, ebx
	call _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj
	mov ebx, eax
	test eax, eax
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_320
	xor esi, esi
	mov edi, [ebp+0x20]
	mov eax, [edi+0x4]
	lea ecx, [ebp-0x14b4]
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_360:
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [ecx]
	movss xmm1, dword [ebp-0x50]
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, [ecx+0x8]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x48]
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_330
	mov edx, [ebp+0x20]
	cmp eax, [edx+0x8]
	jge _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_340
	mov edi, edx
	mov edx, eax
	imul edx, [edi+0xc]
	add edx, [edi]
	add eax, 0x1
	mov [edi+0x4], eax
	movss [edx+0x20], xmm1
	lea eax, [edx+0x10]
	movss xmm0, dword [ebp-0x44d0]
	movss [edx+0x10], xmm0
	movss xmm1, dword [ebp-0x44d4]
	movss [eax+0x4], xmm1
	movss xmm2, dword [ebp-0x44d8]
	movss [eax+0x8], xmm2
	mov dword [eax+0xc], 0x0
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov eax, [ebp+0x1c]
	mov [edx+0x2c], eax
	mov eax, [edi+0x4]
	cmp eax, [edi+0x8]
	jge _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_350
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_330:
	add esi, 0x1
	add ecx, 0xc
	cmp ebx, esi
	ja _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_360
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_350:
	mov edi, [ebp+0x20]
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_120
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_340:
	mov edi, edx
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_120
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_310:
	movss xmm0, dword [ebp-0x44]
	movss [ebp-0x451c], xmm0
	mov esi, [ebp-0x40]
	mov edi, [ebp-0x3c]
	lea edx, [ebp+eax*8-0x8b4]
	mov ecx, [edx+0x4]
	mov dword [esp+0xc], 0x100
	lea eax, [ebp-0x14b4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	lea ebx, [ebp-0x90]
	mov [esp], ebx
	mov edx, [edx]
	lea eax, [ebp-0x44]
	call _Z9ClipPolysPKfPA3_S_jS2_jPA3_fj
	mov [ebp-0x44e0], eax
	test eax, eax
	jz _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_40
	mov dword [ebp-0x44dc], 0x0
	mov edx, [ebp+0x20]
	mov eax, [edx+0x4]
	lea ecx, [ebp-0x14b4]
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_380:
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [ecx]
	movss xmm1, dword [ebp-0x40]
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, [ecx+0x8]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x38]
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_370
	mov edx, [ebp+0x20]
	cmp eax, [edx+0x8]
	jge _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_340
	mov edx, eax
	mov ebx, [ebp+0x20]
	imul edx, [ebx+0xc]
	add edx, [ebx]
	add eax, 0x1
	mov [ebx+0x4], eax
	movss [edx+0x20], xmm1
	lea eax, [edx+0x10]
	movss xmm0, dword [ebp-0x451c]
	movss [edx+0x10], xmm0
	mov [eax+0x4], esi
	mov [eax+0x8], edi
	mov dword [eax+0xc], 0x0
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov eax, [ebp+0x1c]
	mov [edx+0x2c], eax
	mov eax, [ebx+0x4]
	cmp eax, [ebx+0x8]
	jge _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_350
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_370:
	add dword [ebp-0x44dc], 0x1
	add ecx, 0xc
	mov edx, [ebp-0x44dc]
	cmp [ebp-0x44e0], edx
	ja _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_380
	mov edi, [ebp+0x20]
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_120
_Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_200:
	mov esi, [ebp+0x20]
	mov eax, [esi+0x4]
	mov edi, esi
	jmp _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results_120


;Phys_CollideOrientedBrushModelWithTriangleList(unsigned short const*, float const (*) [3], int, objInfo const*, int, Results*)
_Z46Phys_CollideOrientedBrushModelWithTriangleListPKtPA3_KfiPK7objInfoiP7Results:
	push ebp
	mov ebp, esp
	sub esp, 0x58
	mov edx, [ebp+0x1c]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jl _Z46Phys_CollideOrientedBrushModelWithTriangleListPKtPA3_KfiPK7objInfoiP7Results_10
	leave
	ret
_Z46Phys_CollideOrientedBrushModelWithTriangleListPKtPA3_KfiPK7objInfoiP7Results_10:
	mov eax, 0xff7fffff
	mov [ebp-0x14], eax
	mov [ebp-0x10], eax
	mov [ebp-0xc], eax
	mov eax, 0x7f7fffff
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov [ebp-0x18], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x2c], eax
	mov [ebp-0x24], edx
	mov edx, [ebp+0x8]
	mov [ebp-0x38], edx
	mov eax, [ebp+0xc]
	mov [ebp-0x34], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x30], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x28], eax
	lea eax, [ebp-0x38]
	mov [esp+0x18], eax
	mov dword [esp+0x14], _Z49Phys_CollideOrientedBrushWithTriangleList_WrapperPK8cbrush_tPv
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov eax, [edx+0x8c]
	mov eax, [eax+0x40]
	lea eax, [eax+eax*4]
	mov edx, cm
	mov edx, [edx+0x44]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6_
	leave
	ret


;Initialized global or static variables of phys_coll_boxbrush:
SECTION .data


;Initialized constant data of phys_coll_boxbrush:
SECTION .rdata


;Zero initialized global or static variables of phys_coll_boxbrush:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float__340282346638528859811704:		dd 0xff7fffff	; -3.40282e+38
_float_1_00000000:		dd 0x3f800000	; 1
_float__2_00000000:		dd 0xc0000000	; -2
_float_2_00000000:		dd 0x40000000	; 2
_float__0_10000000:		dd 0xbdcccccd	; -0.1
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_00000000:		dd 0x0	; 0

