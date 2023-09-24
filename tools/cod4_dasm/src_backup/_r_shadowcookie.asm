;Imports of r_shadowcookie:
	extern rgp
	extern scene
	extern _Z22R_InitDrawSurfListInfoP19GfxDrawSurfListInfo
	extern frontEndDataOut
	extern _Z18R_EmitDrawSurfListPK11GfxDrawSurfjP19GfxDrawSurfListInfo
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z13DObjGetRadiusPK6DObj_s
	extern sc_fadeRange
	extern _Z28CL_GetLocalClientActiveCountv
	extern _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	extern _Z16R_AllocViewParmsv
	extern _Z18OrthographicMatrixPA4_ffff
	extern _Z29R_SetupViewProjectionMatricesP12GfxViewParms
	extern sc_debugCasterCount
	extern sc_wantCount
	extern sc_wantCountMargin
	extern sc_shadowOutRate
	extern sc_debugReceiverCount
	extern _Z19R_FrustumClipPlanesPK9GfxMatrixPA4_KfiP9DpvsPlane
	extern _Z17R_InitBspDrawSurfP18GfxBspDrawSurfData
	extern _Z17R_AddDObjSurfacesP14GfxSceneEntity21MaterialTechniqueTypeP11GfxDrawSurfS3_
	extern sc_length
	extern _Z19CG_UsedDObjCalcPosePK7cpose_t
	extern rg
	extern _Z14R_SkinSceneEntP14GfxSceneEntity
	extern _Z15R_SortDrawSurfsP11GfxDrawSurfi
	extern _Z18R_CylinderSurfacesPKfS0_fPK9DpvsPlanejPFiiPvES4_PP10GfxSurfacej
	extern _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1_
	extern _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
	extern _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	extern _Z11R_EndCmdBufP16GfxDelayedCmdBuf
	extern sc_shadowInRate

;Exports of r_shadowcookie:
	global shadowCookieGlob
	global shadowFrustumSidePlanes
	global _Z21R_ShadowCandidatePredRK15ShadowCandidateS1_
	global _Z24R_AllowBspShadowReceiveriPv
	global _Z31R_SortBspShadowReceiverSurfacesP10GfxSurfaceS0_
	global _Z20R_ResetShadowCookiesv
	global _Z23R_EmitShadowCookieSurfsP11GfxViewInfo
	global _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd
	global _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	global _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1_


SECTION .text


;R_ShadowCandidatePred(ShadowCandidate const&, ShadowCandidate const&)
_Z21R_ShadowCandidatePredRK15ShadowCandidateS1_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	seta al
	movzx eax, al
	pop ebp
	ret


;R_AllowBspShadowReceiver(int, void*)
_Z24R_AllowBspShadowReceiveriPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov eax, [eax]
	cmp byte [eax+ecx], 0x0
	jz _Z24R_AllowBspShadowReceiveriPv_10
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edx, [eax+0x294]
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	mov eax, [eax+edx+0x10]
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x88]
	test eax, eax
	jnz _Z24R_AllowBspShadowReceiveriPv_20
_Z24R_AllowBspShadowReceiveriPv_10:
	xor eax, eax
	pop ebp
	ret
_Z24R_AllowBspShadowReceiveriPv_20:
	mov eax, 0x1
	pop ebp
	ret
	nop


;R_SortBspShadowReceiverSurfaces(GfxSurface*, GfxSurface*)
_Z31R_SortBspShadowReceiverSurfacesP10GfxSurfaceS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	setb al
	movzx eax, al
	pop ebp
	ret
	nop


;R_ResetShadowCookies()
_Z20R_ResetShadowCookiesv:
	push ebp
	mov ebp, esp
	mov dword [shadowCookieGlob], 0x41200000
	mov dword [shadowCookieGlob+0x4], 0xffffffff
	pop ebp
	ret
	nop


;R_EmitShadowCookieSurfs(GfxViewInfo*)
_Z23R_EmitShadowCookieSurfsP11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	add eax, 0x190
	mov [ebp-0x2c], eax
	mov edx, [eax+0x1200]
	test edx, edx
	jnz _Z23R_EmitShadowCookieSurfsP11GfxViewInfo_10
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_EmitShadowCookieSurfsP11GfxViewInfo_10:
	mov edi, eax
	mov dword [ebp-0x28], 0x0
	mov eax, scene
	lea edx, [eax+0x11ead0]
	mov [ebp-0x30], edx
	add eax, 0x11ea60
	mov [ebp-0x34], eax
_Z23R_EmitShadowCookieSurfsP11GfxViewInfo_20:
	mov ecx, [edi+0x64]
	mov [ebp-0x24], ecx
	mov eax, [edi+0x68]
	mov [ebp-0x20], eax
	lea esi, [edi+0x64]
	mov [esp], esi
	call _Z22R_InitDrawSurfListInfoP19GfxDrawSurfListInfo
	mov dword [edi+0x6c], 0x1e
	mov edx, [ebp+0x8]
	mov [edi+0x70], edx
	mov ecx, frontEndDataOut
	mov eax, [ecx]
	lea edx, [eax+0x11e6e0]
	mov eax, [eax+0x11e6e0]
	mov [edi+0x74], eax
	mov eax, [edx+0x4]
	mov [edi+0x78], eax
	mov eax, [edx+0x8]
	mov [edi+0x7c], eax
	mov dword [edi+0x80], 0x0
	lea eax, [edi+0x8c]
	mov [ebp-0x1c], eax
	mov [esp], eax
	call _Z22R_InitDrawSurfListInfoP19GfxDrawSurfListInfo
	mov dword [edi+0x94], 0x1f
	mov edx, [ebp+0x8]
	mov [edi+0x98], edx
	mov ecx, frontEndDataOut
	mov eax, [ecx]
	lea edx, [eax+0x11e6e0]
	mov eax, [eax+0x11e6e0]
	mov [edi+0x9c], eax
	mov eax, [edx+0x4]
	mov [edi+0xa0], eax
	mov eax, [edx+0x8]
	mov [edi+0xa4], eax
	mov dword [edi+0xa8], 0x0
	mov eax, [ecx]
	mov ebx, [eax+0x118254]
	mov [esp+0x8], esi
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp-0x24]
	mov [esp], edx
	call _Z18R_EmitDrawSurfListPK11GfxDrawSurfjP19GfxDrawSurfListInfo
	mov ecx, frontEndDataOut
	mov eax, [ecx]
	lea eax, [eax+ebx*8+0x70000]
	mov [edi+0x64], eax
	mov eax, [ecx]
	mov eax, [eax+0x118254]
	sub eax, ebx
	mov [edi+0x68], eax
	mov eax, [ebp-0x34]
	mov edx, [eax+0x6c]
	mov eax, [ecx]
	mov ebx, [eax+0x118254]
	mov ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z18R_EmitDrawSurfListPK11GfxDrawSurfjP19GfxDrawSurfListInfo
	mov edx, frontEndDataOut
	mov eax, [edx]
	lea eax, [eax+ebx*8+0x70000]
	mov [edi+0x8c], eax
	mov eax, [edx]
	mov eax, [eax+0x118254]
	sub eax, ebx
	mov [edi+0x90], eax
	add dword [ebp-0x28], 0x1
	add edi, 0xc0
	add dword [ebp-0x34], 0x868
	add dword [ebp-0x30], 0x868
	mov eax, [ebp-0x28]
	mov ecx, [ebp-0x2c]
	cmp [ecx+0x1200], eax
	ja _Z23R_EmitShadowCookieSurfsP11GfxViewInfo_20
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_GenerateShadowCookiesCmd(ShadowCookieCmd*)
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x8]
	mov [ebp-0x160], edx
	mov eax, [eax+0x4]
	mov [ebp-0x190], eax
	mov dword [esp+0x4], _cstring_cookie_populate
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	lea eax, [ebp-0x134]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_10:
	mov dword [eax], 0xffffffff
	mov dword [eax+0x4], 0x4cbebc20
	add eax, 0x8
	lea ecx, [ebp-0x74]
	cmp eax, ecx
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_10
	mov ebx, scene
	mov [ebp-0x1b4], ebx
	mov eax, [ebx+0x12b42c]
	mov [ebp-0x1a8], eax
	test eax, eax
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_20
	lea edx, [ebp-0x134]
	mov [ebp-0x1ac], edx
	xor esi, esi
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_30
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_60:
	mov eax, frontEndDataOut
	mov eax, [eax]
	mov eax, [eax+edx*8+0x118260]
	test al, 0x2
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_40
	mov edi, eax
	and edi, 0xe00
	cmp edi, 0x200
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_40
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_70:
	mov eax, [ebx+0x2c]
	cmp eax, 0x4
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_40
	mov eax, [ebx+0x70]
	mov [esp], eax
	call _Z13DObjGetRadiusPK6DObj_s
	fstp dword [ebp-0x1dc]
	movss xmm3, dword [ebp-0x1dc]
	addss xmm3, xmm3
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_50
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_50
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_40:
	add esi, 0x1
	cmp [ebp-0x1a8], esi
	jbe _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_20
	mov ecx, scene
	mov [ebp-0x1b4], ecx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_30:
	lea eax, [esi*4]
	mov edx, esi
	shl edx, 0x7
	sub edx, eax
	mov eax, [ebp-0x1b4]
	lea ebx, [edx+eax+0x12b430]
	movzx eax, word [ebx+0x6c]
	movzx edx, ax
	test ax, ax
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_60
	xor edi, edi
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_70
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_20:
	lea eax, [ebp-0x134]
	lea edx, [ebp-0x74]
	cmp eax, edx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_80
	mov ebx, edx
	sub ebx, eax
	mov eax, ebx
	sar eax, 0x3
	cmp eax, 0x1
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_90
	xor edx, edx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_100:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_100
	lea eax, [edx+edx]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_830:
	mov dword [esp+0xc], _Z21R_ShadowCandidatePredRK15ShadowCandidateS1_
	mov [esp+0x8], eax
	lea eax, [ebp-0x74]
	mov [esp+0x4], eax
	lea edx, [ebp-0x134]
	mov [esp], edx
	call _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0x87
	jg _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_110
	lea eax, [ebp-0x12c]
	lea edx, [ebp-0x74]
	cmp eax, edx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_80
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_150:
	mov [ebp-0x1a4], eax
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov [ebp-0x2c], ebx
	mov [ebp-0x28], esi
	lea ecx, [ebp-0x134]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z21R_ShadowCandidatePredRK15ShadowCandidateS1_
	test al, al
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_120
	mov edx, [ebp-0x1a4]
	add edx, 0x8
	mov [ebp-0x140], edx
	mov edi, [ebp-0x1a4]
	lea ecx, [ebp-0x134]
	sub edi, ecx
	sar edi, 0x3
	test edi, edi
	jle _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_130
	mov ebx, edx
	mov ecx, [ebp-0x1a4]
	sub ecx, 0x8
	xor esi, esi
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_140:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx-0x8], eax
	mov [ebx-0x4], edx
	add esi, 0x1
	sub ebx, 0x8
	sub ecx, 0x8
	cmp esi, edi
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_140
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_130:
	mov eax, [ebp-0x2c]
	mov edx, [ebp-0x28]
	mov [ebp-0x134], eax
	mov [ebp-0x130], edx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_690:
	lea ecx, [ebp-0x74]
	cmp [ebp-0x140], ecx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_80
	mov eax, [ebp-0x140]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_150
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_110:
	lea ecx, [ebp-0x134]
	lea ebx, [ebp-0xb4]
	cmp ecx, ebx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_160
	lea eax, [ebp-0x12c]
	mov [ebp-0x144], eax
	mov edx, eax
	mov ebx, [edx]
	mov esi, [edx+0x4]
	mov [ebp-0x38], ebx
	mov [ebp-0x34], esi
	lea ecx, [ebp-0x134]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x38]
	mov [esp], eax
	call _Z21R_ShadowCandidatePredRK15ShadowCandidateS1_
	test al, al
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_170
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_200:
	mov [ebp-0x2c], ebx
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x144]
	sub ebx, 0x8
	mov esi, [ebp-0x144]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_180
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_190:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_180:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z21R_ShadowCandidatePredRK15ShadowCandidateS1_
	test al, al
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_190
	mov eax, [ebp-0x2c]
	mov edx, [ebp-0x28]
	mov [esi], eax
	mov [esi+0x4], edx
	mov edx, [ebp-0x144]
	add edx, 0x8
	mov [ebp-0x148], edx
	lea ecx, [ebp-0xb4]
	cmp [ebp-0x148], ecx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_160
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_230:
	mov ebx, [ebp-0x148]
	mov [ebp-0x144], ebx
	mov edx, ebx
	mov ebx, [edx]
	mov esi, [edx+0x4]
	mov [ebp-0x38], ebx
	mov [ebp-0x34], esi
	lea ecx, [ebp-0x134]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x38]
	mov [esp], eax
	call _Z21R_ShadowCandidatePredRK15ShadowCandidateS1_
	test al, al
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_200
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_170:
	mov edx, [ebp-0x144]
	add edx, 0x8
	mov [ebp-0x148], edx
	mov edi, [ebp-0x144]
	lea ecx, [ebp-0x134]
	sub edi, ecx
	sar edi, 0x3
	test edi, edi
	jle _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_210
	mov ebx, edx
	mov ecx, [ebp-0x144]
	sub ecx, 0x8
	xor esi, esi
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_220:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx-0x8], eax
	mov [ebx-0x4], edx
	add esi, 0x1
	sub ebx, 0x8
	sub ecx, 0x8
	cmp esi, edi
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_220
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_210:
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [ebp-0x134], eax
	mov [ebp-0x130], edx
	lea ecx, [ebp-0xb4]
	cmp [ebp-0x148], ecx
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_230
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_160:
	lea eax, [ebp-0xb4]
	lea edx, [ebp-0x74]
	cmp eax, edx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_80
	mov edi, eax
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_260:
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [ebp-0x2c], eax
	mov [ebp-0x28], edx
	lea ebx, [edi-0x8]
	mov esi, edi
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_240
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_250:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_240:
	mov [esp+0x4], ebx
	lea ecx, [ebp-0x2c]
	mov [esp], ecx
	call _Z21R_ShadowCandidatePredRK15ShadowCandidateS1_
	test al, al
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_250
	mov eax, [ebp-0x2c]
	mov edx, [ebp-0x28]
	mov [esi], eax
	mov [esi+0x4], edx
	add edi, 0x8
	lea ebx, [ebp-0x74]
	cmp ebx, edi
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_260
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_80:
	mov dword [esp+0x4], _cstring_cookie_casters
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov ebx, [ebp-0x160]
	mov dword [ebx+0x1200], 0x0
	mov eax, sc_fadeRange
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [shadowCookieGlob]
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
	subss xmm3, xmm0
	mulss xmm3, xmm1
	movss [ebp-0x1a0], xmm3
	mulss xmm0, xmm1
	movaps xmm1, xmm2
	divss xmm1, xmm0
	movss [ebp-0x19c], xmm1
	call _Z28CL_GetLocalClientActiveCountv
	mov ecx, eax
	mov edx, 0x18
	mov eax, edx
	cdq
	idiv ecx
	mov [ebp-0x1b0], eax
	test eax, eax
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_270
	mov esi, [ebp-0x134]
	test esi, esi
	js _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_280
	movss xmm0, dword [ebp-0x130]
	movss xmm1, dword [shadowCookieGlob]
	ucomiss xmm0, xmm1
	ja _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_290
	lea ecx, [ebp-0x128]
	mov [ebp-0x14c], ecx
	mov dword [ebp-0x198], 0x0
	mov ebx, scene
	mov [ebp-0x1b4], ebx
	ucomiss xmm0, [ebp-0x1a0]
	jbe _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_300
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_500:
	ucomiss xmm0, [_float_0_00000000]
	jp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_310
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_300
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_310:
	subss xmm1, xmm0
	movss xmm0, dword [ebp-0x19c]
	mulss xmm0, xmm1
	movss [ebp-0x194], xmm0
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_510:
	lea eax, [esi*4]
	mov edx, esi
	shl edx, 0x7
	sub edx, eax
	mov eax, [ebp-0x1b4]
	lea ebx, [edx+eax+0x12b400]
	lea edx, [ebx+0x30]
	mov [ebp-0x184], edx
	mov dword [esp+0xc], 0x1
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	test eax, eax
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_320
	lea ecx, [ebx+0x60]
	mov [ebp-0x18c], ecx
	add ebx, 0x6c
	mov [ebp-0x188], ebx
	mov ebx, [ebp-0x160]
	mov edx, [ebx+0x1200]
	lea eax, [edx+edx*2]
	shl eax, 0x6
	mov edi, ebx
	add edi, eax
	add edx, 0x1
	mov [ebx+0x1200], edx
	mov [edi+0x60], esi
	call _Z16R_AllocViewParmsv
	mov ebx, eax
	mov [edi+0x58], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	lea edx, [eax+0x11e6e0]
	movss xmm5, dword [_data16_80000000]
	movss xmm2, dword [eax+0x11e6e0]
	xorps xmm2, xmm5
	movss [ebp-0x74], xmm2
	movss xmm1, dword [edx+0x4]
	xorps xmm1, xmm5
	movss [ebp-0x70], xmm1
	movss xmm0, dword [edx+0x8]
	xorps xmm0, xmm5
	movss [ebp-0x6c], xmm0
	lea esi, [ebp-0x70]
	mulss xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm2, [_float_0_10000000]
	jae _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_330
	jp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_330
	lea edx, [ebp-0x5c]
	mov dword [ebp-0x5c], 0x3f800000
	pxor xmm4, xmm4
	movss [ebp-0x58], xmm4
	movss [ebp-0x54], xmm4
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_770:
	lea eax, [ebp-0x68]
	lea ecx, [ebp-0x74]
	add ecx, 0x8
	movss xmm3, dword [edx+0x4]
	mulss xmm3, [ebp-0x6c]
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [esi]
	subss xmm3, xmm0
	movss [ebp-0x68], xmm3
	movss xmm2, dword [edx+0x8]
	mulss xmm2, [ebp-0x74]
	movss xmm0, dword [edx]
	mulss xmm0, [ebp-0x6c]
	subss xmm2, xmm0
	movss [ebp-0x64], xmm2
	movss xmm1, dword [edx]
	mulss xmm1, [esi]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebp-0x74]
	subss xmm1, xmm0
	movss [ebp-0x60], xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm4
	jb _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_340
	movss xmm1, dword [_float_1_00000000]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_840:
	mulss xmm3, xmm1
	movss [eax], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x64]
	movss [ebp-0x64], xmm0
	mulss xmm1, [ebp-0x60]
	movss [ebp-0x60], xmm1
	movss xmm1, dword [esi]
	mulss xmm1, [eax+0x8]
	movss xmm0, dword [ecx]
	mulss xmm0, [eax+0x4]
	subss xmm1, xmm0
	movss [edx], xmm1
	movss xmm1, dword [ecx]
	mulss xmm1, [eax]
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, [eax+0x8]
	subss xmm1, xmm0
	movss [ebp-0x58], xmm1
	movss xmm1, dword [ebp-0x74]
	mulss xmm1, [eax+0x4]
	movss xmm0, dword [esi]
	mulss xmm0, [eax]
	subss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movss xmm0, dword [ebp-0x68]
	xorps xmm0, xmm5
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x64]
	xorps xmm0, xmm5
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x60]
	xorps xmm0, xmm5
	movss [ebp-0x60], xmm0
	xor ecx, ecx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_420:
	test cl, 0x1
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_350
	mov eax, [ebp-0x188]
	movss xmm4, dword [eax]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_660:
	test cl, 0x2
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_360
	mov eax, [ebp-0x188]
	movss xmm3, dword [eax+0x4]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_650:
	test cl, 0x4
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_370
	mov eax, [ebp-0x188]
	movss xmm2, dword [eax+0x8]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_640:
	test ecx, ecx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_380
	xor edx, edx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_410:
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0x74]
	movaps xmm1, xmm4
	mulss xmm1, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	lea eax, [ebp+edx*4-0x38]
	ucomiss xmm1, [eax]
	jbe _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_390
	movss [eax], xmm1
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_390:
	lea eax, [ebp+edx*4-0x2c]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	jbe _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_400
	movss [eax], xmm1
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_400:
	add edx, 0x1
	cmp edx, 0x3
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_410
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_1020:
	add ecx, 0x1
	cmp ecx, 0x8
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_420
	mov cl, 0x2
	lea esi, [ebp-0x74]
	movss xmm4, dword [_float_2_00000000]
	movss xmm6, dword [_float_0_93750000]
	movss xmm7, dword [_float__0_50000000]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_440:
	lea eax, [ecx*4]
	movss xmm2, dword [ebp+eax-0x40]
	movss xmm3, dword [ebp+eax-0x34]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movaps xmm1, xmm4
	divss xmm1, xmm0
	mulss xmm1, xmm6
	mov eax, 0x55555556
	imul ecx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*2]
	mov eax, ecx
	sub eax, edx
	cmp eax, 0x2
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_430
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	movss [ebx+eax*4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	movss [ebx+eax*4+0x10], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x8]
	movss [ebx+eax*4+0x20], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm7
	addss xmm2, xmm3
	mulss xmm0, xmm2
	movss [ebx+eax*4+0x30], xmm0
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_700:
	add ecx, 0x1
	add esi, 0xc
	cmp ecx, 0x5
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_440
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x3c], 0x3f800000
	lea edx, [ebx+0x110]
	mov eax, [ebp-0x74]
	mov [ebx+0x110], eax
	mov eax, [ebp-0x70]
	mov [edx+0x4], eax
	mov eax, [ebp-0x6c]
	mov [edx+0x8], eax
	lea edx, [ebx+0x11c]
	mov eax, [ebp-0x68]
	mov [ebx+0x11c], eax
	mov eax, [ebp-0x64]
	mov [edx+0x4], eax
	mov eax, [ebp-0x60]
	mov [edx+0x8], eax
	lea edx, [ebx+0x128]
	mov eax, [ebp-0x5c]
	mov [ebx+0x128], eax
	mov eax, [ebp-0x58]
	mov [edx+0x4], eax
	mov eax, [ebp-0x54]
	mov [edx+0x8], eax
	lea eax, [ebx+0x100]
	movss xmm0, dword [ebp-0x74]
	xorps xmm0, xmm5
	movss [ebx+0x100], xmm0
	movss xmm0, dword [ebp-0x70]
	xorps xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x6c]
	xorps xmm0, xmm5
	movss [eax+0x8], xmm0
	mov dword [ebx+0x10c], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov eax, 0x40020821
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	lea eax, [ebx+0x40]
	mov [esp], eax
	call _Z18OrthographicMatrixPA4_ffff
	mov eax, [ebx+0x78]
	mov [ebx+0x134], eax
	mov [esp], ebx
	call _Z29R_SetupViewProjectionMatricesP12GfxViewParms
	movss xmm0, dword [ebp-0x194]
	movss [edi+0x5c], xmm0
	mov edx, [edi+0x58]
	lea eax, [edx+0x80]
	mov edx, [edx+0x80]
	mov [edi], edx
	mov edx, [eax+0x4]
	mov [edi+0x4], edx
	mov edx, [eax+0x8]
	mov [edi+0x8], edx
	mov edx, [eax+0xc]
	mov [edi+0xc], edx
	mov edx, [eax+0x10]
	mov [edi+0x10], edx
	mov edx, [eax+0x14]
	mov [edi+0x14], edx
	mov edx, [eax+0x18]
	mov [edi+0x18], edx
	mov edx, [eax+0x1c]
	mov [edi+0x1c], edx
	mov edx, [eax+0x20]
	mov [edi+0x20], edx
	mov edx, [eax+0x24]
	mov [edi+0x24], edx
	mov edx, [eax+0x28]
	mov [edi+0x28], edx
	mov edx, [eax+0x2c]
	mov [edi+0x2c], edx
	mov edx, [eax+0x30]
	mov [edi+0x30], edx
	mov edx, [eax+0x34]
	mov [edi+0x34], edx
	mov edx, [eax+0x38]
	mov [edi+0x38], edx
	mov eax, [eax+0x3c]
	mov [edi+0x3c], eax
	mov eax, edi
	mov edx, 0x2
	movss xmm1, dword [_float_0_50000000]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_450:
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	movss [eax], xmm0
	movss xmm0, dword [eax+0x10]
	mulss xmm0, xmm1
	movss [eax+0x10], xmm0
	movss xmm0, dword [eax+0x20]
	mulss xmm0, xmm1
	movss [eax+0x20], xmm0
	movss xmm0, dword [eax+0x30]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [eax+0x30], xmm0
	add eax, 0x4
	sub edx, 0x1
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_450
	lea edx, [edi+0x40]
	mov ecx, [ebp-0x18c]
	mov eax, [ecx]
	mov [edi+0x40], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	lea edx, [edi+0x4c]
	mov ebx, [ebp-0x188]
	mov eax, [ebx]
	mov [edi+0x4c], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov eax, scene
	mov [ebp-0x1b4], eax
	mov edx, [eax+0xe418c]
	mov [ebp-0x180], edx
	mov ecx, eax
	mov eax, [eax+0xe4214]
	lea ebx, [eax+edx*8]
	mov [edi+0x64], ebx
	mov edx, [ecx+0xe4104]
	mov eax, [ecx+0xe4214]
	lea esi, [eax+edx*8]
	mov eax, sc_debugCasterCount
	mov edx, [eax]
	mov ecx, [ebp-0x160]
	mov eax, [ecx+0x1200]
	cmp eax, [edx+0xc]
	jbe _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_460
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_820:
	mov ebx, [ebp-0x1b4]
	mov eax, [ebx+0xe418c]
	mov edx, eax
	sub edx, [ebp-0x180]
	mov [edi+0x68], edx
	mov edx, [ebx+0xe4214]
	lea eax, [edx+eax*8]
	mov [edi+0x8c], eax
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_720:
	add dword [ebp-0x198], 0x1
	mov edx, [ebp-0x198]
	cmp [ebp-0x1b0], edx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_470
	mov edx, [ebp-0x14c]
	mov esi, [edx-0x4]
	test esi, esi
	js _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_480
	movss xmm0, dword [edx]
	movss xmm1, dword [shadowCookieGlob]
	add edx, 0x8
	mov [ebp-0x14c], edx
	ucomiss xmm0, xmm1
	ja _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_490
	ucomiss xmm0, [ebp-0x1a0]
	ja _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_500
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_300:
	movss xmm1, dword [_float_1_00000000]
	movss [ebp-0x194], xmm1
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_510
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_290:
	mov dword [ebp-0x198], 0x0
	mov ecx, scene
	mov [ebp-0x1b4], ecx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_490:
	mov eax, sc_wantCount
	mov eax, [eax]
	mov edx, [eax+0xc]
	mov eax, sc_wantCountMargin
	mov eax, [eax]
	mov ecx, [eax+0xc]
	lea eax, [edx+ecx]
	cmp [ebp-0x198], eax
	jg _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_470
	sub edx, ecx
	cmp [ebp-0x198], edx
	jl _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_520
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_480:
	xor ecx, ecx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_990:
	mov edx, [shadowCookieGlob+0x4]
	cmp edx, 0xffffffff
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_530
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_730:
	mov ebx, [ebp-0x1b4]
	mov eax, [ebx+0x114218]
	sub eax, edx
	cvtsi2ss xmm1, eax
	mulss xmm1, [_float_0_00100000]
	pxor xmm0, xmm0
	maxss xmm0, xmm1
	movaps xmm1, xmm0
	mov edx, ebx
	mov eax, [edx+0x114218]
	mov [shadowCookieGlob+0x4], eax
	cmp ecx, 0x0
	jle _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_540
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_740:
	mov eax, sc_shadowOutRate
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
	addss xmm1, [shadowCookieGlob]
	movss [shadowCookieGlob], xmm1
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_760:
	movss xmm2, dword [_float_0_00010000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm2, 0x5
	andps xmm1, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [shadowCookieGlob], xmm0
	mov eax, sc_debugReceiverCount
	mov eax, [eax]
	mov esi, [eax+0xc]
	mov ecx, [ebp-0x160]
	mov eax, [ecx+0x1200]
	cmp esi, eax
	cmovge esi, eax
	mov [ecx+0x1200], esi
	test esi, esi
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_550
	xor ebx, ebx
	mov ecx, [ebp-0x1b4]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_560
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_570:
	mov eax, scene
	mov [ebp-0x1b4], eax
	mov ecx, eax
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_560:
	mov eax, ebx
	shl eax, 0x5
	add eax, ebx
	lea eax, [ebx+eax*2]
	lea eax, [ebx+eax*4]
	shl eax, 0x3
	lea edx, [eax+ecx+0x11ea60]
	mov dword [edx+0x6c], 0x0
	lea eax, [eax+ecx+0x11ea68]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], shadowFrustumSidePlanes
	lea eax, [ebx+ebx*2]
	shl eax, 0x6
	mov edx, [ebp-0x160]
	mov eax, [edx+eax+0x58]
	mov [esp], eax
	call _Z19R_FrustumClipPlanesPK9GfxMatrixPA4_KfiP9DpvsPlane
	add ebx, 0x1
	cmp esi, ebx
	ja _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_570
	mov ecx, [ebp-0x160]
	mov ecx, [ecx+0x1200]
	mov [ebp-0x178], ecx
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov eax, [eax+0x27c]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z17R_InitBspDrawSurfP18GfxBspDrawSurfData
	mov eax, [ebx+0x20a0]
	mov eax, [eax+0x2a0]
	mov [ebp-0x170], eax
	mov eax, [ebp-0x178]
	test eax, eax
	jg _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_580
	mov ecx, scene
	mov [ebp-0x1b4], ecx
	mov ebx, ecx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_980:
	mov ebx, [ebx+0x12b42c]
	mov [ebp-0x15c], ebx
	mov eax, [ebp-0x160]
	mov eax, [eax+0x1200]
	mov [ebp-0x150], eax
	test ebx, ebx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_550
	xor edi, edi
	mov ecx, [ebp-0x1b4]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_590
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_600:
	add edi, 0x1
	cmp [ebp-0x15c], edi
	jbe _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_550
	mov edx, scene
	mov [ebp-0x1b4], edx
	mov ecx, edx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_590:
	cmp byte [ecx+edi+0x13ac30], 0x1
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_600
	lea eax, [edi*4]
	mov edx, edi
	shl edx, 0x7
	sub edx, eax
	mov ebx, ecx
	lea ecx, [edx+ecx+0x12b400]
	lea eax, [ecx+0x30]
	mov [ebp-0x158], eax
	movzx eax, word [eax+0x6c]
	movzx edx, ax
	test ax, ax
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_600
	mov eax, frontEndDataOut
	mov eax, [eax]
	test byte [eax+edx*8+0x118261], 0x1
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_600
	lea esi, [ecx+0x60]
	mov eax, [ebp-0x150]
	test eax, eax
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_600
	mov dword [ebp-0x154], 0x0
	mov [ebp-0x1b8], ebx
	lea ecx, [ebx+0x11f2d0]
	mov [ebp-0x1bc], ecx
	add ebx, 0x11ea60
	mov [ebp-0x1c0], ebx
	mov dword [ebp-0x1c4], 0x0
	mov dword [ebp-0x1c8], 0x11ea00
	mov eax, [ebp-0x160]
	add eax, 0x60
	mov [ebp-0x1cc], eax
	mov edx, eax
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_630:
	cmp edi, [edx]
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_610
	mov ecx, [ebp-0x1b8]
	mov [ebp-0x1b4], ecx
	mov ebx, [ebp-0x1c8]
	lea edx, [ebx+ecx+0x68]
	xor ecx, ecx
	pxor xmm4, xmm4
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_620:
	movzx eax, byte [edx+0x10]
	movss xmm1, dword [edx]
	mulss xmm1, [esi+eax]
	addss xmm1, [edx+0xc]
	movzx eax, byte [edx+0x11]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [esi+eax]
	addss xmm1, xmm0
	movzx eax, byte [edx+0x12]
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [esi+eax]
	addss xmm1, xmm0
	ucomiss xmm4, xmm1
	jae _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_610
	add ecx, 0x1
	add edx, 0x14
	cmp ecx, 0x5
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_620
	mov eax, [ebp-0x1c0]
	mov ebx, [eax+0x6c]
	add ebx, [ebp-0x1c4]
	mov edx, [ebp-0x1b4]
	lea ebx, [edx+ebx*8+0x11ead0]
	mov ecx, [ebp-0x1bc]
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1f
	mov eax, [ebp-0x158]
	mov [esp], eax
	call _Z17R_AddDObjSurfacesP14GfxSceneEntity21MaterialTechniqueTypeP11GfxDrawSurfS3_
	mov ecx, [ebp-0x1c0]
	mov edx, [ecx+0x6c]
	sub eax, ebx
	sar eax, 0x3
	add edx, eax
	mov [ecx+0x6c], edx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_610:
	add dword [ebp-0x154], 0x1
	add dword [ebp-0x1cc], 0xc0
	add dword [ebp-0x1c8], 0x868
	add dword [ebp-0x1c4], 0x10d
	add dword [ebp-0x1c0], 0x868
	add dword [ebp-0x1bc], 0x868
	mov ebx, [ebp-0x154]
	cmp [ebp-0x150], ebx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_600
	mov edx, [ebp-0x1cc]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_630
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_370:
	mov edx, [ebp-0x18c]
	movss xmm2, dword [edx+0x8]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_640
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_360:
	mov edx, [ebp-0x18c]
	movss xmm3, dword [edx+0x4]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_650
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_350:
	mov edx, [ebp-0x18c]
	movss xmm4, dword [edx]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_660
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_120:
	mov [ebp-0x38], ebx
	mov [ebp-0x34], esi
	mov ebx, [ebp-0x1a4]
	sub ebx, 0x8
	mov esi, [ebp-0x1a4]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_670
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_680:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov esi, ebx
	sub ebx, 0x8
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_670:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x38]
	mov [esp], eax
	call _Z21R_ShadowCandidatePredRK15ShadowCandidateS1_
	test al, al
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_680
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esi], eax
	mov [esi+0x4], edx
	mov edx, [ebp-0x1a4]
	add edx, 0x8
	mov [ebp-0x140], edx
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_690
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_550:
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_430:
	mov eax, [esi]
	mov [ebx+0x8], eax
	mov eax, [esi+0x4]
	mov [ebx+0x18], eax
	mov eax, [esi+0x8]
	mov [ebx+0x28], eax
	addss xmm2, xmm3
	mulss xmm2, xmm7
	movss [ebx+0x38], xmm2
	mov edx, sc_length
	mov eax, [edx]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [eax+0xc]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x8]
	movss [ebx+0x8], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x18]
	movss [ebx+0x18], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x28]
	movss [ebx+0x28], xmm1
	mulss xmm0, xmm2
	movss [ebx+0x38], xmm0
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_700
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_320:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_710
	mov eax, [eax+0x74]
	mov [esp], eax
	call _Z19CG_UsedDObjCalcPosePK7cpose_t
	mov edx, scene
	mov [ebp-0x1b4], edx
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_720
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_270:
	mov ecx, scene
	mov [ebp-0x1b4], ecx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_470:
	mov ecx, 0xffffffff
	mov edx, [shadowCookieGlob+0x4]
	cmp edx, 0xffffffff
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_730
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_530:
	pxor xmm1, xmm1
	mov edx, [ebp-0x1b4]
	mov eax, [edx+0x114218]
	mov [shadowCookieGlob+0x4], eax
	cmp ecx, 0x0
	jg _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_740
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_540:
	jl _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_750
	movss xmm1, dword [shadowCookieGlob]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_760
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_330:
	lea edx, [ebp-0x5c]
	pxor xmm4, xmm4
	movss [ebp-0x5c], xmm4
	movss [ebp-0x58], xmm4
	mov dword [ebp-0x54], 0x3f800000
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_770
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_50:
	mov edx, [ebp-0x190]
	add edx, 0x100
	lea eax, [ebx+0x1c]
	movss xmm0, dword [ebx+0x1c]
	mov ecx, [ebp-0x190]
	subss xmm0, [ecx+0x100]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	divss xmm0, xmm3
	ucomiss xmm0, [_float_100000000_00000000]
	jae _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_40
	cmp edi, 0x800
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_780
	cmp edi, 0x600
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_790
	cmp edi, 0x400
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_800
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_1000:
	mov ebx, [ebp-0x1ac]
	ucomiss xmm0, [ebx+0x4]
	ja _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_40
	mov [ebx], esi
	movss [ebx+0x4], xmm0
	lea eax, [ebp-0x12c]
	lea edx, [ebp-0x134]
	mov [ebp-0x1ac], edx
	mov ecx, edx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_810:
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, [ecx+0x4]
	cmova ecx, eax
	mov [ebp-0x1ac], ecx
	add eax, 0x8
	lea ebx, [ebp-0x74]
	cmp eax, ebx
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_810
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_40
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_460:
	mov eax, rg
	mov edx, [ebp-0x190]
	mov [eax+0x2264], edx
	mov ecx, [ebp-0x184]
	mov [esp], ecx
	call _Z14R_SkinSceneEntP14GfxSceneEntity
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1e
	mov eax, [ebp-0x184]
	mov [esp], eax
	call _Z17R_AddDObjSurfacesP14GfxSceneEntity21MaterialTechniqueTypeP11GfxDrawSurfS3_
	sub eax, ebx
	sar eax, 0x3
	mov ecx, [ebp-0x1b4]
	mov edx, [ecx+0xe418c]
	lea edx, [eax+edx]
	mov [ecx+0xe418c], edx
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15R_SortDrawSurfsP11GfxDrawSurfi
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_820
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_90:
	and eax, 0xffffff00
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_830
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_340:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_840
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_710:
	mov eax, scene
	mov [ebp-0x1b4], eax
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_720
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_580:
	mov dword [ebp-0x17c], 0x0
	mov edx, scene
	mov [ebp-0x1b4], edx
	mov [ebp-0x1d0], ebx
	mov dword [ebp-0x1d4], 0x0
	mov ecx, [ebp-0x160]
	mov [ebp-0x1d8], ecx
	mov ebx, ecx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_950:
	mov edx, [ebx+0x60]
	lea eax, [edx*4]
	shl edx, 0x7
	sub edx, eax
	mov eax, [ebp-0x1b4]
	lea edx, [edx+eax+0x12b400]
	lea ecx, [edx+0x4c]
	mov eax, [edx+0x4c]
	mov [ebp-0x44], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x40], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x58]
	lea ecx, [eax+0x110]
	movss xmm0, dword [eax+0x110]
	mulss xmm0, [_float_10000_00000000]
	addss xmm0, [ebp-0x44]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [_float_10000_00000000]
	addss xmm0, [ebp-0x40]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [_float_10000_00000000]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x48], xmm0
	mov eax, [edx+0xa0]
	mov [esp], eax
	call _Z13DObjGetRadiusPK6DObj_s
	mov edx, [ebp-0x1d4]
	mov ecx, [ebp-0x1b4]
	lea ebx, [edx+ecx+0x11ea60]
	lea esi, [ebx+0x70]
	lea eax, [ebx+0x470]
	mov [ebp-0x16c], eax
	mov dword [esp+0x20], 0x100
	mov [esp+0x1c], eax
	lea edx, [ebp-0x2c]
	mov [esp+0x18], edx
	mov dword [esp+0x14], _Z24R_AllowBspShadowReceiveriPv
	mov dword [esp+0x10], 0x5
	mov edx, [ebp-0x1d4]
	lea eax, [edx+ecx+0x11ea68]
	mov [esp+0xc], eax
	fstp dword [esp+0x8]
	lea ecx, [ebp-0x50]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x44]
	mov [esp], eax
	call _Z18R_CylinderSurfacesPKfS0_fPK9DpvsPlanejPFiiPvES4_PP10GfxSurfacej
	mov [ebp-0x174], eax
	test eax, eax
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_850
	mov edx, eax
	mov [ebp-0x64], esi
	lea eax, [ebx+0x870]
	mov [ebp-0x60], eax
	mov ecx, [ebp-0x16c]
	lea edx, [ecx+edx*4]
	mov [ebp-0x168], edx
	cmp ecx, edx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_860
	mov ebx, edx
	sub ebx, ecx
	mov eax, ebx
	sar eax, 0x2
	cmp eax, 0x1
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_870
	xor edx, edx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_880:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_880
	lea eax, [edx+edx]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_970:
	mov dword [esp+0xc], _Z31R_SortBspShadowReceiverSurfacesP10GfxSurfaceS0_
	mov [esp+0x8], eax
	mov ecx, [ebp-0x168]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x16c]
	mov [esp], eax
	call _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1_
	cmp ebx, 0x43
	jle _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_890
	add esi, 0x440
	mov [ebp-0x13c], esi
	mov dword [esp+0x8], _Z31R_SortBspShadowReceiverSurfacesP10GfxSurfaceS0_
	mov [esp+0x4], esi
	mov ecx, [ebp-0x16c]
	mov [esp], ecx
	call _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
	mov ebx, [ebp-0x13c]
	cmp [ebp-0x168], ebx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_860
	mov eax, ebx
	mov edi, ebx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_920:
	mov eax, [eax]
	mov [ebp-0x164], eax
	mov ebx, [ebp-0x13c]
	sub ebx, 0x4
	mov edx, eax
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_900
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_910:
	mov [edi], esi
	mov edi, ebx
	sub ebx, 0x4
	mov edx, [ebp-0x164]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_900:
	mov esi, [ebx]
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z31R_SortBspShadowReceiverSurfacesP10GfxSurfaceS0_
	test al, al
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_910
	mov ecx, [ebp-0x164]
	mov [edi], ecx
	add dword [ebp-0x13c], 0x4
	mov ebx, [ebp-0x13c]
	cmp [ebp-0x168], ebx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_860
	mov eax, [ebp-0x13c]
	mov edi, [ebp-0x13c]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_920
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_890:
	mov dword [esp+0x8], _Z31R_SortBspShadowReceiverSurfacesP10GfxSurfaceS0_
	mov eax, [ebp-0x168]
	mov [esp+0x4], eax
	mov edx, [ebp-0x16c]
	mov [esp], edx
	call _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_860:
	xor ebx, ebx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_930:
	mov ecx, [ebp-0x1d0]
	mov eax, [ecx+0x20a0]
	mov ecx, [ebp-0x16c]
	mov edx, [ecx+ebx*4]
	sub edx, [eax+0x294]
	sar edx, 0x4
	lea eax, [edx+edx*4]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x8
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x10
	add eax, ecx
	lea eax, [edx+eax*2]
	mov [ebp-0x38], ax
	mov ecx, [ebp-0x170]
	mov edx, [ecx+eax*8+0x4]
	mov eax, [ecx+eax*8]
	lea ecx, [ebp-0x74]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x1
	lea ecx, [ebp-0x38]
	mov [esp+0x8], ecx
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	add ebx, 0x1
	cmp [ebp-0x174], ebx
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_930
	lea ebx, [ebp-0x74]
	mov [esp], ebx
	call _Z11R_EndCmdBufP16GfxDelayedCmdBuf
	mov eax, scene
	mov [ebp-0x1b4], eax
	mov edx, [ebp-0x1d4]
	mov ecx, eax
	lea eax, [edx+eax+0x11ead0]
	mov edx, [ebp-0x64]
	sub edx, eax
	sar edx, 0x3
	mov ebx, [ebp-0x1d4]
	lea eax, [ebx+ecx+0x11ea60]
	mov [eax+0x6c], edx
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_960:
	add dword [ebp-0x17c], 0x1
	add dword [ebp-0x1d8], 0xc0
	add dword [ebp-0x1d4], 0x868
	mov edx, [ebp-0x17c]
	cmp [ebp-0x178], edx
	jz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_940
	mov ebx, [ebp-0x1d8]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_950
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_850:
	mov eax, scene
	mov [ebp-0x1b4], eax
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_960
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_870:
	and eax, 0xffffff00
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_970
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_940:
	mov ebx, [ebp-0x1b4]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_980
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_520:
	mov ecx, 0x1
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_990
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_780:
	movaps xmm0, xmm4
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_1000
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_280:
	mov ebx, scene
	mov [ebp-0x1b4], ebx
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_480
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_790:
	mulss xmm0, [_float_0_25000000]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_1000
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_750:
	mov eax, sc_shadowInRate
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
	movss xmm0, dword [shadowCookieGlob]
	subss xmm0, xmm1
	movss [shadowCookieGlob], xmm0
	movaps xmm1, xmm0
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_760
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_800:
	mulss xmm0, [_float_4_00000000]
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_1000
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_380:
	xor esi, esi
	lea edx, [ebp-0x74]
_Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_1010:
	movaps xmm0, xmm4
	mulss xmm0, [edx]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x8]
	addss xmm0, xmm1
	lea eax, [esi*4]
	movss [ebp+eax-0x38], xmm0
	movss [ebp+eax-0x2c], xmm0
	add esi, 0x1
	add edx, 0xc
	cmp esi, 0x3
	jnz _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_1010
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd_1020


;void std::__adjust_heap<ShadowCandidate*, int, ShadowCandidate, unsigned char (*)(ShadowCandidate const&, ShadowCandidate const&)>(ShadowCandidate*, int, int, ShadowCandidate, unsigned char (*)(ShadowCandidate const&, ShadowCandidate const&))
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*8]
	mov edi, eax
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100:
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
	jg _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40:
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
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50:
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
	jle _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*8]
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp+0x1c]
	test al, al
	jnz _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*8]
	jmp _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10:
	mov [ebp-0x2c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80:
	lea edi, [ebx-0x1]
	mov edx, [ebp+0x8]
	lea esi, [edx+edi*8]
	mov ebx, edx
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90:
	mov eax, [esi]
	mov edx, [esi+0x4]
	mov ecx, [ebp-0x2c]
	mov [ebx+ecx*8], eax
	mov [ebx+ecx*8+0x4], edx
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70
	mov [ebp-0x2c], edi
	mov edi, ebx
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*8]
	lea eax, [esi-0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x1c]
	test al, al
	jnz _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
	mov ebx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90
_ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20:
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+ecx*8-0x8]
	mov edx, [ebx+ecx*8-0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov edi, ecx
	sub edi, 0x1
	lea esi, [ebx+edi*8]
	jmp _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100
	nop


;void std::__introsort_loop<ShadowCandidate*, int, unsigned char (*)(ShadowCandidate const&, ShadowCandidate const&)>(ShadowCandidate*, ShadowCandidate*, int, unsigned char (*)(ShadowCandidate const&, ShadowCandidate const&))
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x87
	jle _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jnz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__140:
	cmp eax, 0xf
	jle _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__10
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
	jmp _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__40:
	add ebx, 0x1
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__30:
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
	call _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub esi, 0x8
	cmp ebx, edi
	jnz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__40
	mov ecx, [ebp+0xc]
	mov [ebp-0x38], ecx
	mov edi, ecx
	sub edi, 0x8
	mov eax, ecx
	sub eax, [ebp+0x8]
	mov [ebp-0x34], eax
	mov esi, eax
	sub esi, 0x8
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__50:
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
	call _ZSt13__adjust_heapIP15ShadowCandidateiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub dword [ebp-0x38], 0x8
	sub edi, 0x8
	sub esi, 0x8
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	add eax, [ebp-0x34]
	lea eax, [eax+esi+0x8]
	cmp eax, 0xf
	jg _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__20:
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov dword [ebp-0x30], 0x0
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__150:
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
	jz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__60
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__70
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__160:
	mov edi, ebx
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__120:
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__110:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__90:
	sub esi, 0x8
	mov [esp+0x4], esi
	lea edx, [ebp-0x20]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__90
	cmp edi, esi
	jae _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__100
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
	jz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__80:
	add edi, 0x8
	jmp _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__110
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__70:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__120
	mov edi, esi
	jmp _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__100:
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], edi
	call _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov eax, edi
	sub eax, [ebp+0x8]
	cmp eax, 0x87
	jle _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__10
	add dword [ebp-0x30], 0x1
	mov [ebp+0xc], edi
	mov edx, [ebp-0x30]
	cmp [ebp+0x10], edx
	jz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__140
	mov esi, edi
	jmp _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__150
_ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__60:
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__120
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__160
	mov edi, esi
	jmp _ZSt16__introsort_loopIP15ShadowCandidateiPFhRKS0_S3_EEvT_S6_T0_T1__120


;Initialized global or static variables of r_shadowcookie:
SECTION .data


;Initialized constant data of r_shadowcookie:
SECTION .rdata
shadowFrustumSidePlanes: dd 0xbf800000, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x3f800000, 0x0, 0xbf800000, 0x0, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x0, 0x3f800000, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_shadowcookie:
SECTION .bss
shadowCookieGlob: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_cookie_populate:		db "cookie populate",0
_cstring_cookie_casters:		db "cookie casters",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_2_00000000:		dd 0x40000000	; 2
_float_0_93750000:		dd 0x3f700000	; 0.9375
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_float_100000000_00000000:		dd 0x4cbebc20	; 1e+08
_float_10000_00000000:		dd 0x461c4000	; 10000
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_4_00000000:		dd 0x40800000	; 4

