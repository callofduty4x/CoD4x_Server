;Imports of r_draw_staticmodel:
	extern _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
	extern _Z11MatrixSet44PA4_fPKfPA3_S1_f
	extern _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	extern _Z24DB_GetIndexBufferAndBasehPvS_Pi
	extern _Z27DB_GetVertexBufferAndOffsethPvS_Pi
	extern rgp
	extern _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	extern _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	extern _Z20R_SetReflectionProbe16GfxCmdBufContextj
	extern _Z33R_SetModelLightingCoordsForSourcetP20GfxCmdBufSourceState
	extern _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	extern _Z21R_GetCachedSModelSurfj
	extern gfxBuf
	extern _Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei
	extern _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti
	extern _Z21R_ReadPrimDrawSurfIntP13GfxReadCmdBuf
	extern _Z16XModelGetSurfacePK6XModelii
	extern _Z18XSurfaceGetNumTrisPK8XSurface
	extern _Z19XSurfaceGetNumVertsPK8XSurface
	extern _Z15R_SetVertexDataP14GfxCmdBufStatePKvii
	extern _Z32R_SetupCachedStaticModelLightingP20GfxCmdBufSourceState

;Exports of r_draw_staticmodel:
	global _GLOBAL__I__Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo
	global _Z34R_DrawStaticModelDrawSurfPlacementPK22GfxStaticModelDrawInstP20GfxCmdBufSourceState
	global _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo
	global _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo
	global _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext
	global _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext
	global _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext
	global _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext
	global _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext
	global _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext


SECTION .text


;global constructors keyed to R_DrawStaticModelSurfLit(unsigned int const*, GfxCmdBufContext, GfxCmdBufContext, GfxDrawSurfListInfo const*)
_GLOBAL__I__Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo:
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


;R_DrawStaticModelDrawSurfPlacement(GfxStaticModelDrawInst const*, GfxCmdBufSourceState*)
_Z34R_DrawStaticModelDrawSurfPlacementPK22GfxStaticModelDrawInstP20GfxCmdBufSourceState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, eax
	mov [ebp-0x7c], edx
	lea eax, [eax+0x10]
	movss xmm0, dword [ebx+0x10]
	movss [ebp-0x78], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x44], xmm0
	movss [ebp-0x74], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x40], xmm0
	movss [ebp-0x70], xmm0
	xor edx, edx
	mov [ebp-0x6c], edx
	lea eax, [ebx+0x1c]
	movss xmm0, dword [ebx+0x1c]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x38], xmm0
	movss [ebp-0x64], xmm0
	mov edi, [eax+0x8]
	mov [ebp-0x60], edi
	mov [ebp-0x5c], edx
	lea eax, [ebx+0x28]
	mov esi, [ebx+0x28]
	mov [ebp-0x58], esi
	mov ecx, [eax+0x4]
	mov [ebp-0x54], ecx
	mov eax, [eax+0x8]
	mov [ebp-0x50], eax
	mov [ebp-0x4c], edx
	movss xmm0, dword [ebx+0x10]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebx+0x1c]
	movss [ebp-0x3c], xmm0
	mov [ebp-0x34], edi
	mov [ebp-0x30], esi
	mov [ebp-0x2c], ecx
	mov [ebp-0x28], eax
	mov esi, [ebx+0x34]
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
	lea edx, [ebx+0x4]
	mov ecx, [ebp-0x7c]
	add ecx, 0xef4
	movss xmm0, dword [ebx+0x4]
	mov ebx, [ebp-0x7c]
	subss xmm0, [ebx+0xef4]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [ecx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [ecx+0x8]
	movss [ebp-0x1c], xmm0
	mov [esp+0xc], esi
	lea edx, [ebp-0x48]
	mov [esp+0x8], edx
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z11MatrixSet44PA4_fPKfPA3_S1_f
	mov [esp], ebx
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_DrawStaticModelSurf(unsigned int const*, GfxCmdBufContext, GfxDrawSurfListInfo const*)
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov eax, [ebp+0xc]
	mov [ebp-0x4c], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x50], edx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebp-0x44], eax
	lea ecx, [edx+0x4]
	test eax, eax
	jz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_10
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_60:
	add eax, 0x1
	shr eax, 1
	lea eax, [ecx+eax*4+0x4]
	mov [ebp-0x3c], eax
	mov ebx, [edx+0x4]
	add edx, 0x8
	mov [ebp-0x48], edx
	mov edx, [ebp-0x4c]
	mov [ebp+0xc], edx
	mov eax, [ebp-0x50]
	mov [ebp+0x10], eax
	mov [ebp-0x40], edx
	mov esi, eax
	add esi, 0x90
	movzx eax, word [ebx+0x2]
	mov [ebp-0x2c], eax
	movzx eax, word [ebx+0x4]
	mov [ebp-0x28], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov eax, [ebx+0xc]
	mov [esp+0x4], eax
	movzx eax, byte [ebx+0x6]
	mov [esp], eax
	call _Z24DB_GetIndexBufferAndBasehPvS_Pi
	mov ecx, [ebp-0x1c]
	cmp ecx, [esi+0x4]
	jz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20
	mov [esi+0x4], ecx
	mov edx, [ebp-0x50]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x1a0]
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov eax, [ebx+0x1c]
	mov [esp+0x4], eax
	movzx eax, byte [ebx+0x6]
	mov [esp], eax
	call _Z27DB_GetVertexBufferAndOffsethPvS_Pi
	mov ebx, [ebp-0x20]
	mov ecx, [ebp-0x1c]
	cmp ecx, [esi+0x10]
	jz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_30
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_70:
	mov [esi+0x10], ecx
	mov [esi+0x14], ebx
	mov dword [esi+0xc], 0x20
	mov eax, [esi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_80:
	mov edi, [esi+0x1c]
	test edi, edi
	jz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_40
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_90:
	mov dword [esi+0x1c], 0x0
	mov dword [esi+0x20], 0x0
	mov dword [esi+0x18], 0x0
	mov eax, [esi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_100:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edi, [eax+0x29c]
	xor ebx, ebx
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_50:
	mov eax, [ebp-0x48]
	movzx edx, word [eax+ebx*2]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	lea eax, [edi+eax*4]
	mov edx, [ebp-0x40]
	call _Z34R_DrawStaticModelDrawSurfPlacementPK22GfxStaticModelDrawInstP20GfxCmdBufSourceState
	mov edx, [ebp-0x40]
	mov [ebp-0x58], edx
	mov eax, [ebp-0x50]
	mov [ebp-0x54], eax
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x54]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	lea edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	add ebx, 0x1
	cmp [ebp-0x44], ebx
	jnz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_50
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov [ebp-0x44], eax
	lea ecx, [edx+0x4]
	test eax, eax
	jnz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_60
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_30:
	cmp ebx, [esi+0x14]
	jnz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_70
	cmp dword [esi+0xc], 0x20
	jnz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_70
	jmp _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_80
_Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_40:
	mov ebx, [esi+0x20]
	test ebx, ebx
	jnz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_90
	mov ecx, [esi+0x18]
	test ecx, ecx
	jz _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_100
	jmp _Z21R_DrawStaticModelSurfPKj16GfxCmdBufContextPK19GfxDrawSurfListInfo_90


;R_DrawStaticModelSurfLit(unsigned int const*, GfxCmdBufContext, GfxCmdBufContext, GfxDrawSurfListInfo const*)
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x64], 0x0
	mov eax, [ebp+0xc]
	mov [ebp-0x4c], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x50], edx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebp-0x44], eax
	lea ecx, [edx+0x4]
	test eax, eax
	jz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_10
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_60:
	add eax, 0x1
	shr eax, 1
	lea eax, [ecx+eax*4+0x4]
	mov [ebp-0x3c], eax
	mov ebx, [edx+0x4]
	add edx, 0x8
	mov [ebp-0x48], edx
	mov edx, [ebp-0x4c]
	mov [ebp+0xc], edx
	mov eax, [ebp-0x50]
	mov [ebp+0x10], eax
	mov [ebp-0x40], edx
	mov edi, eax
	add edi, 0x90
	movzx eax, word [ebx+0x2]
	mov [ebp-0x2c], eax
	movzx eax, word [ebx+0x4]
	mov [ebp-0x28], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea esi, [ebp-0x1c]
	mov [esp+0x8], esi
	mov eax, [ebx+0xc]
	mov [esp+0x4], eax
	movzx eax, byte [ebx+0x6]
	mov [esp], eax
	call _Z24DB_GetIndexBufferAndBasehPvS_Pi
	mov ecx, [ebp-0x1c]
	cmp ecx, [edi+0x4]
	jz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_20
	mov [edi+0x4], ecx
	mov edx, [ebp-0x50]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x1a0]
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_20:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov eax, [ebx+0x1c]
	mov [esp+0x4], eax
	movzx eax, byte [ebx+0x6]
	mov [esp], eax
	call _Z27DB_GetVertexBufferAndOffsethPvS_Pi
	mov ebx, [ebp-0x20]
	mov ecx, [ebp-0x1c]
	cmp ecx, [edi+0x10]
	jz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_30
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_70:
	mov [edi+0x10], ecx
	mov [edi+0x14], ebx
	mov dword [edi+0xc], 0x20
	mov eax, [edi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_80:
	mov eax, [edi+0x1c]
	test eax, eax
	jz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_40
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_90:
	mov dword [edi+0x1c], 0x0
	mov dword [edi+0x20], 0x0
	mov dword [edi+0x18], 0x0
	mov eax, [edi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_100:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x29c]
	mov [ebp-0x54], eax
	xor esi, esi
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_50:
	mov edx, [ebp-0x48]
	movzx eax, word [edx+esi*2]
	lea ebx, [eax+eax*8]
	lea ebx, [eax+ebx*2]
	mov eax, [ebp-0x54]
	lea ebx, [eax+ebx*4]
	movzx eax, byte [ebx+0x44]
	mov edx, [ebp-0x40]
	mov [ebp-0x68], edx
	mov edx, [ebp-0x50]
	mov [ebp-0x64], edx
	mov [esp+0x8], eax
	mov eax, [ebp-0x68]
	mov edx, [ebp-0x64]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z20R_SetReflectionProbe16GfxCmdBufContextj
	mov edx, [ebp-0x40]
	mov eax, ebx
	call _Z34R_DrawStaticModelDrawSurfPlacementPK22GfxStaticModelDrawInstP20GfxCmdBufSourceState
	mov edx, [ebp-0x40]
	mov [esp+0x4], edx
	movzx eax, word [ebx+0x46]
	mov [esp], eax
	call _Z33R_SetModelLightingCoordsForSourcetP20GfxCmdBufSourceState
	mov eax, [ebp-0x40]
	mov [ebp-0x60], eax
	mov edx, [ebp-0x50]
	mov [ebp-0x5c], edx
	mov eax, [ebp-0x60]
	mov edx, [ebp-0x5c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	lea edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	add esi, 0x1
	cmp [ebp-0x44], esi
	jnz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_50
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov [ebp-0x44], eax
	lea ecx, [edx+0x4]
	test eax, eax
	jnz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_60
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_30:
	cmp ebx, [edi+0x14]
	jnz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_70
	cmp dword [edi+0xc], 0x20
	jnz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_70
	jmp _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_80
_Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_40:
	mov eax, [edi+0x20]
	test eax, eax
	jnz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_90
	mov eax, [edi+0x18]
	test eax, eax
	jz _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_100
	jmp _Z24R_DrawStaticModelSurfLitPKj16GfxCmdBufContextS1_PK19GfxDrawSurfListInfo_90
	nop


;R_DrawStaticModelCachedSurf(unsigned int const*, GfxCmdBufContext)
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov ecx, [ebp+0xc]
	mov [ebp-0x3c], ecx
	mov ebx, [ebp+0x10]
	mov [ebp-0x40], ebx
	mov [esp], ecx
	mov [esp+0x4], ebx
	call _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	mov eax, [ebp+0x8]
	mov [ebp-0x30], eax
	mov esi, ebx
	add esi, 0x90
	mov ebx, eax
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_50:
	mov edi, [ebx]
	test edi, edi
	jnz _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_10
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_10:
	mov eax, [ebx+0x4]
	mov [ebp-0x38], eax
	add ebx, 0x8
	mov [ebp-0x2c], ebx
	lea eax, [edi+0x1]
	shr eax, 1
	lea eax, [ebx+eax*4]
	mov [ebp-0x30], eax
	movzx eax, word [ebx]
	mov [esp], eax
	call _Z21R_GetCachedSModelSurfj
	mov edx, [ebp-0x3c]
	mov [ebp+0xc], edx
	mov ecx, [ebp-0x40]
	mov [ebp+0x10], ecx
	mov [ebp-0x34], edx
	mov dword [ebp-0x24], 0x10000
	mov edx, [ebp-0x38]
	movzx eax, word [edx+0x4]
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x2c]
	movzx eax, word [ecx]
	lea ecx, [eax-0x1]
	and ecx, 0xfffff000
	shl ecx, 0x9
	mov eax, gfxBuf
	mov ebx, [eax+0xc]
	cmp ebx, [esi+0x10]
	jz _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_20
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_60:
	mov [esi+0x10], ebx
	mov [esi+0x14], ecx
	mov dword [esi+0xc], 0x20
	mov eax, [esi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_70:
	mov ebx, [esi+0x1c]
	test ebx, ebx
	jz _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_30
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_80:
	mov dword [esi+0x1c], 0x0
	mov dword [esi+0x20], 0x0
	mov dword [esi+0x18], 0x0
	mov eax, [esi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_90:
	mov edx, [ebp-0x34]
	mov [ebp-0x48], edx
	mov ecx, [ebp-0x40]
	mov [ebp-0x44], ecx
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	mov edx, [ebp-0x38]
	movzx eax, word [edx+0x8]
	lea eax, [eax+eax*2]
	mov [ebp-0x4c], eax
	movzx eax, word [edx+0x4]
	imul eax, edi
	mov [ebp-0x20], eax
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei
	mov [ebp-0x1c], eax
	xor ebx, ebx
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_40:
	mov ecx, [ebp-0x2c]
	movzx eax, word [ecx+ebx*2]
	mov [esp], eax
	call _Z21R_GetCachedSModelSurfj
	mov ecx, [ebp-0x38]
	movzx edx, word [ecx+0x4]
	mov [esp+0x8], edx
	mov eax, [eax]
	mov edx, [ebp-0x4c]
	lea eax, [edx+eax*4]
	mov ecx, gfxBuf
	mov edx, [ecx+0x8]
	lea eax, [edx+eax*2]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_40
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	mov ebx, [ebp-0x30]
	jmp _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_50
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_20:
	cmp ecx, [esi+0x14]
	jnz _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_60
	cmp dword [esi+0xc], 0x20
	jnz _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_60
	jmp _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_70
_Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_30:
	mov ecx, [esi+0x20]
	test ecx, ecx
	jnz _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_80
	mov edx, [esi+0x18]
	test edx, edx
	jz _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_90
	jmp _Z27R_DrawStaticModelCachedSurfPKj16GfxCmdBufContext_80
	add [eax], al


;R_DrawStaticModelPreTessSurf(unsigned int const*, GfxCmdBufContext)
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov [ebp-0x3c], ebx
	mov [ebp-0x40], esi
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_50:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z21R_ReadPrimDrawSurfIntP13GfxReadCmdBuf
	mov [ebp-0x34], eax
	test eax, eax
	jnz _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_10
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_10:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21R_ReadPrimDrawSurfIntP13GfxReadCmdBuf
	mov edi, eax
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z21R_ReadPrimDrawSurfIntP13GfxReadCmdBuf
	mov [ebp-0x38], eax
	mov eax, edi
	movzx ebx, al
	mov edx, edi
	movzx esi, dh
	shr edi, 0x10
	mov [esp], edi
	call _Z21R_GetCachedSModelSurfj
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov edx, rgp
	mov ecx, [edx+0x20a0]
	movzx edx, word [eax+0x6]
	mov ecx, [ecx+0x29c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov eax, [ecx+eax*4+0x38]
	mov [esp], eax
	call _Z16XModelGetSurfacePK6XModelii
	mov dword [ebp-0x28], 0x10000
	movzx eax, word [eax+0x4]
	imul eax, [ebp-0x34]
	mov [ebp-0x24], eax
	lea ecx, [edi-0x1]
	and ecx, 0xfffff000
	shl ecx, 0x9
	mov eax, gfxBuf
	mov ebx, [eax+0xc]
	mov edi, [ebp-0x40]
	add edi, 0x90
	cmp ebx, [edi+0x10]
	jz _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_20
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_60:
	mov [edi+0x10], ebx
	mov [edi+0x14], ecx
	mov dword [edi+0xc], 0x20
	mov eax, [edi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_70:
	mov ecx, [edi+0x1c]
	test ecx, ecx
	jz _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_30
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_80:
	mov dword [edi+0x1c], 0x0
	mov dword [edi+0x20], 0x0
	mov dword [edi+0x18], 0x0
	mov eax, [edi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_90:
	mov eax, [ebp-0x3c]
	mov [ebp-0x30], eax
	mov edx, [ebp-0x40]
	mov [ebp-0x2c], edx
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	mov edx, [ebp-0x3c]
	mov eax, [edx+0xca8]
	mov ecx, [eax+0x11e6a0]
	cmp ecx, [edi+0x4]
	jz _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_40
	mov [edi+0x4], ecx
	mov eax, [edi]
	mov edx, [eax]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x1a0]
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_40:
	mov eax, [ebp-0x38]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	jmp _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_50
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_20:
	cmp ecx, [edi+0x14]
	jnz _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_60
	cmp dword [edi+0xc], 0x20
	jnz _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_60
	jmp _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_70
_Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_30:
	mov edx, [edi+0x20]
	test edx, edx
	jnz _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_80
	mov eax, [edi+0x18]
	test eax, eax
	jz _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_90
	jmp _Z28R_DrawStaticModelPreTessSurfPKj16GfxCmdBufContext_80
	nop


;R_DrawStaticModelSkinnedSurf(unsigned int const*, GfxCmdBufContext)
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov ecx, [ebp+0xc]
	mov [ebp-0x40], ecx
	mov ebx, [ebp+0x10]
	mov [ebp-0x44], ebx
	mov [esp], ecx
	mov [esp+0x4], ebx
	call _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov [ebp-0x38], ebx
	lea ecx, [edx+0x4]
	test ebx, ebx
	jz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_10
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_60:
	mov eax, ebx
	add eax, 0x1
	shr eax, 1
	lea eax, [ecx+eax*4+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x34], eax
	add edx, 0x8
	mov [ebp-0x3c], edx
	mov edx, [ebp-0x40]
	mov [ebp+0xc], edx
	mov ecx, [ebp-0x44]
	mov [ebp+0x10], ecx
	mov ebx, [ebp+0xc]
	mov [ebp-0x30], ebx
	add ecx, 0x90
	mov [ebp-0x58], ecx
	mov [esp], eax
	call _Z18XSurfaceGetNumTrisPK8XSurface
	mov [ebp-0x20], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call _Z19XSurfaceGetNumVertsPK8XSurface
	mov [ebp-0x24], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov edx, [ebp-0x34]
	mov eax, [edx+0xc]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x58]
	mov [esp], ecx
	call _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti
	mov [ebp-0x1c], eax
	mov eax, gfxBuf
	mov edi, [eax+0x70]
	mov edx, [edi]
	mov ecx, [ebp-0x24]
	mov eax, ecx
	shl eax, 0x5
	add eax, edx
	cmp eax, [edi+0x4]
	jle _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_20
	mov dword [edi], 0x0
	mov ecx, [ebp-0x24]
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_20:
	mov dword [esp+0xc], 0x20
	mov [esp+0x8], ecx
	mov edx, [ebp-0x34]
	mov eax, [edx+0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x44]
	mov [esp], ecx
	call _Z15R_SetVertexDataP14GfxCmdBufStatePKvii
	mov edi, eax
	mov eax, gfxBuf
	mov eax, [eax+0x70]
	mov ecx, [eax+0x8]
	mov eax, [ebp-0x58]
	cmp ecx, [eax+0x10]
	jz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_30
	mov edx, eax
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_80:
	mov [edx+0x10], ecx
	mov [edx+0x14], edi
	mov dword [edx+0xc], 0x20
	mov eax, [edx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], edi
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_120:
	mov ecx, [ebp-0x58]
	mov eax, [ecx+0x1c]
	test eax, eax
	jz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_40
	mov eax, ecx
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_100:
	mov dword [eax+0x1c], 0x0
	mov dword [eax+0x20], 0x0
	mov dword [eax+0x18], 0x0
	mov edx, [ebp-0x58]
	mov eax, [edx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_110:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x29c]
	mov [ebp-0x54], eax
	xor edi, edi
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_50:
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+edi*2]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov edx, [ebp-0x54]
	lea eax, [edx+eax*4]
	mov ebx, [ebp-0x30]
	mov edx, ebx
	call _Z34R_DrawStaticModelDrawSurfPlacementPK22GfxStaticModelDrawInstP20GfxCmdBufSourceState
	mov ecx, [ebp-0x44]
	mov [ebp-0x4c], ecx
	mov [ebp-0x50], ebx
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x58]
	mov [esp], ecx
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	add edi, 0x1
	cmp [ebp-0x38], edi
	jnz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_50
	mov edx, [ebp-0x2c]
	mov ebx, [edx]
	mov [ebp-0x38], ebx
	lea ecx, [edx+0x4]
	test ebx, ebx
	jnz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_60
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_30:
	cmp edi, [eax+0x14]
	jz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_70
	mov edx, [ebp-0x58]
	jmp _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_80
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_40:
	mov eax, [ecx+0x20]
	test eax, eax
	jz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_90
	mov eax, [ebp-0x58]
	jmp _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_100
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_90:
	mov eax, [ecx+0x18]
	test eax, eax
	jz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_110
	mov eax, [ebp-0x58]
	jmp _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_100
_Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_70:
	cmp dword [eax+0xc], 0x20
	jz _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_120
	mov edx, [ebp-0x58]
	jmp _Z28R_DrawStaticModelSkinnedSurfPKj16GfxCmdBufContext_80


;R_DrawStaticModelCachedSurfLit(unsigned int const*, GfxCmdBufContext)
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov eax, [ebp+0x10]
	mov [ebp-0x48], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x44], edx
	mov eax, rgp
	mov eax, [eax+0x2008]
	mov [edx+0xc60], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z32R_SetupCachedStaticModelLightingP20GfxCmdBufSourceState
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	mov eax, [ebp-0x48]
	mov eax, [eax+0x54]
	mov [ebp-0x34], eax
	mov edx, [ebp+0x8]
	mov [ebp-0x2c], edx
	mov eax, edx
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_50:
	mov eax, [eax]
	mov [ebp-0x40], eax
	test eax, eax
	jnz _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_10
	mov eax, [ebp-0x34]
	mov ecx, [ebp-0x48]
	mov [ecx+0x54], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_10:
	mov edx, [ebp-0x2c]
	mov edx, [edx+0x4]
	mov [ebp-0x3c], edx
	mov ecx, [ebp-0x2c]
	add ecx, 0x8
	mov [ebp-0x30], ecx
	add eax, 0x1
	shr eax, 1
	lea eax, [ecx+eax*4]
	mov [ebp-0x2c], eax
	movzx eax, word [ecx]
	mov [esp], eax
	call _Z21R_GetCachedSModelSurfj
	mov edx, rgp
	mov ecx, [edx+0x20a0]
	movzx edx, word [eax+0x6]
	mov ecx, [ecx+0x29c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	movzx eax, byte [ecx+eax*4+0x44]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x48]
	mov [ebp+0x10], eax
	mov edx, [ebp-0x44]
	mov [ebp+0xc], edx
	mov edi, eax
	mov dword [ebp-0x24], 0x10000
	mov ecx, [ebp-0x3c]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x20], eax
	mov edx, [ebp-0x30]
	movzx eax, word [edx]
	lea ecx, [eax-0x1]
	and ecx, 0xfffff000
	shl ecx, 0x9
	mov eax, gfxBuf
	mov ebx, [eax+0xc]
	lea esi, [edi+0x90]
	cmp ebx, [esi+0x10]
	jz _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_20
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_60:
	mov [esi+0x10], ebx
	mov [esi+0x14], ecx
	mov dword [esi+0xc], 0x20
	mov eax, [esi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_70:
	mov edx, [esi+0x1c]
	test edx, edx
	jz _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_30
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_80:
	mov dword [esi+0x1c], 0x0
	mov dword [esi+0x20], 0x0
	mov dword [esi+0x18], 0x0
	mov eax, [esi]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_90:
	mov ecx, [ebp-0x44]
	mov [ebp-0x58], ecx
	mov [ebp-0x54], edi
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x54]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	mov edx, [ebp-0x44]
	mov [ebp-0x50], edx
	mov [ebp-0x4c], edi
	mov ecx, [ebp-0x38]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z20R_SetReflectionProbe16GfxCmdBufContextj
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+0x8]
	lea edi, [eax+eax*2]
	movzx eax, word [edx+0x4]
	imul eax, [ebp-0x40]
	mov [ebp-0x20], eax
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei
	mov [ebp-0x1c], eax
	xor ebx, ebx
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_40:
	mov ecx, [ebp-0x30]
	movzx eax, word [ecx+ebx*2]
	mov [esp], eax
	call _Z21R_GetCachedSModelSurfj
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+0x4]
	mov [esp+0x8], edx
	mov eax, [eax]
	lea eax, [edi+eax*4]
	mov ecx, gfxBuf
	mov edx, [ecx+0x8]
	lea eax, [edx+eax*2]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti
	add ebx, 0x1
	cmp [ebp-0x40], ebx
	jnz _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_40
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	mov eax, [ebp-0x2c]
	jmp _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_50
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_20:
	cmp ecx, [esi+0x14]
	jnz _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_60
	cmp dword [esi+0xc], 0x20
	jnz _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_60
	jmp _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_70
_Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_30:
	mov eax, [esi+0x20]
	test eax, eax
	jnz _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_80
	mov eax, [esi+0x18]
	test eax, eax
	jz _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_90
	jmp _Z30R_DrawStaticModelCachedSurfLitPKj16GfxCmdBufContext_80
	nop


;R_DrawStaticModelPreTessSurfLit(unsigned int const*, GfxCmdBufContext)
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov eax, [ebp+0x10]
	mov [ebp-0x30], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x34], edx
	mov eax, rgp
	mov eax, [eax+0x2008]
	mov [edx+0xc60], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z32R_SetupCachedStaticModelLightingP20GfxCmdBufSourceState
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_50:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z21R_ReadPrimDrawSurfIntP13GfxReadCmdBuf
	mov [ebp-0x4c], eax
	test eax, eax
	jnz _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_10
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_10:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21R_ReadPrimDrawSurfIntP13GfxReadCmdBuf
	mov edi, eax
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z21R_ReadPrimDrawSurfIntP13GfxReadCmdBuf
	mov [ebp-0x50], eax
	mov eax, [ebp-0x30]
	mov [ebp+0x10], eax
	mov edx, [ebp-0x34]
	mov [ebp+0xc], edx
	mov [ebp-0x2c], eax
	mov edx, edi
	movzx ebx, dl
	mov eax, edi
	movzx esi, ah
	shr edi, 0x10
	mov [esp], edi
	call _Z21R_GetCachedSModelSurfj
	mov edx, rgp
	mov ecx, [edx+0x20a0]
	movzx eax, word [eax+0x6]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov eax, [ecx+0x29c]
	lea edx, [eax+edx*4]
	mov [ebp-0x38], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [edx+0x38]
	mov [esp], eax
	call _Z16XModelGetSurfacePK6XModelii
	mov dword [ebp-0x28], 0x10000
	movzx eax, word [eax+0x4]
	imul eax, [ebp-0x4c]
	mov [ebp-0x24], eax
	lea ecx, [edi-0x1]
	and ecx, 0xfffff000
	shl ecx, 0x9
	mov eax, gfxBuf
	mov esi, [eax+0xc]
	mov ebx, [ebp-0x2c]
	add ebx, 0x90
	cmp esi, [ebx+0x10]
	jz _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_20
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_60:
	mov [ebx+0x10], esi
	mov [ebx+0x14], ecx
	mov dword [ebx+0xc], 0x20
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], ecx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_70:
	mov eax, [ebx+0x1c]
	test eax, eax
	jz _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_30
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_80:
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x18], 0x0
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_90:
	mov edx, [ebp-0x34]
	mov [ebp-0x48], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	mov edx, [ebp-0x38]
	movzx eax, byte [edx+0x44]
	mov edx, [ebp-0x34]
	mov [ebp-0x40], edx
	mov edx, [ebp-0x2c]
	mov [ebp-0x3c], edx
	mov [esp+0x8], eax
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z20R_SetReflectionProbe16GfxCmdBufContextj
	mov edx, [ebp-0x34]
	mov eax, [edx+0xca8]
	mov ecx, [eax+0x11e6a0]
	cmp ecx, [ebx+0x4]
	jz _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_40
	mov [ebx+0x4], ecx
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x1a0]
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_40:
	mov eax, [ebp-0x50]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	jmp _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_50
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_20:
	cmp ecx, [ebx+0x14]
	jnz _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_60
	cmp dword [ebx+0xc], 0x20
	jnz _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_60
	jmp _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_70
_Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_30:
	mov edi, [ebx+0x20]
	test edi, edi
	jnz _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_80
	mov esi, [ebx+0x18]
	test esi, esi
	jz _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_90
	jmp _Z31R_DrawStaticModelPreTessSurfLitPKj16GfxCmdBufContext_80


;R_DrawStaticModelSkinnedSurfLit(unsigned int const*, GfxCmdBufContext)
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov ecx, [ebp+0x10]
	mov [ebp-0x44], ecx
	mov ebx, [ebp+0xc]
	mov [ebp-0x40], ebx
	mov ecx, rgp
	mov ecx, [ecx+0x2008]
	mov [ebx+0xc60], ecx
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	mov eax, [ebp-0x44]
	mov eax, [eax+0x54]
	mov [ebp-0x34], eax
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov [ebp-0x38], ebx
	lea ecx, [edx+0x4]
	test ebx, ebx
	jz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_10
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_70:
	mov eax, ebx
	add eax, 0x1
	shr eax, 1
	lea eax, [ecx+eax*4+0x4]
	mov [ebp-0x2c], eax
	mov esi, [edx+0x4]
	add edx, 0x8
	mov [ebp-0x3c], edx
	mov eax, [ebp-0x44]
	mov [ebp+0x10], eax
	mov edx, [ebp-0x40]
	mov [ebp+0xc], edx
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov [ebp-0x68], ecx
	mov [ebp-0x64], ebx
	mov [ebp-0x30], ebx
	add ebx, 0x90
	mov [ebp-0x6c], ebx
	mov [esp], esi
	call _Z18XSurfaceGetNumTrisPK8XSurface
	mov [ebp-0x20], eax
	mov [esp], esi
	call _Z19XSurfaceGetNumVertsPK8XSurface
	mov [ebp-0x24], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti
	mov [ebp-0x1c], eax
	mov eax, gfxBuf
	mov ebx, [eax+0x70]
	mov edx, [ebx]
	mov ecx, [ebp-0x24]
	mov eax, ecx
	shl eax, 0x5
	add eax, edx
	cmp eax, [ebx+0x4]
	jle _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_20
	mov dword [ebx], 0x0
	mov ecx, [ebp-0x24]
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_20:
	mov dword [esp+0xc], 0x20
	mov [esp+0x8], ecx
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z15R_SetVertexDataP14GfxCmdBufStatePKvii
	mov ebx, eax
	mov eax, gfxBuf
	mov eax, [eax+0x70]
	mov ecx, [eax+0x8]
	mov eax, [ebp-0x6c]
	cmp ecx, [eax+0x10]
	jz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_30
	mov edx, eax
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_90:
	mov [edx+0x10], ecx
	mov [edx+0x14], ebx
	mov dword [edx+0xc], 0x20
	mov eax, [edx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_130:
	mov ecx, [ebp-0x6c]
	mov eax, [ecx+0x1c]
	test eax, eax
	jz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_40
	mov ebx, ecx
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_110:
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x18], 0x0
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_120:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x29c]
	mov [ebp-0x5c], eax
	xor edi, edi
	mov ecx, eax
	jmp _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_50
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_60:
	mov ecx, [ebp-0x5c]
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_50:
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+edi*2]
	lea ebx, [eax+eax*8]
	lea ebx, [eax+ebx*2]
	lea ebx, [ecx+ebx*4]
	movzx esi, word [ebx+0x46]
	mov eax, [ebp-0x40]
	mov [ebp-0x68], eax
	mov edx, [ebp-0x30]
	mov [ebp-0x64], edx
	movzx eax, byte [ebx+0x44]
	mov [ebp-0x54], edx
	mov ecx, [ebp-0x68]
	mov [ebp-0x58], ecx
	mov [esp+0x8], eax
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x54]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z20R_SetReflectionProbe16GfxCmdBufContextj
	mov edx, [ebp-0x68]
	mov eax, ebx
	call _Z34R_DrawStaticModelDrawSurfPlacementPK22GfxStaticModelDrawInstP20GfxCmdBufSourceState
	mov edx, [ebp-0x68]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z33R_SetModelLightingCoordsForSourcetP20GfxCmdBufSourceState
	mov ecx, [ebp-0x30]
	mov [ebp-0x4c], ecx
	mov ebx, [ebp-0x68]
	mov [ebp-0x50], ebx
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x6c]
	mov [esp], ecx
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	add edi, 0x1
	cmp [ebp-0x38], edi
	jnz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_60
	mov edx, [ebp-0x2c]
	mov ebx, [edx]
	mov [ebp-0x38], ebx
	lea ecx, [edx+0x4]
	test ebx, ebx
	jnz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_70
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_10:
	mov eax, [ebp-0x34]
	mov ebx, [ebp-0x44]
	mov [ebx+0x54], eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_30:
	cmp ebx, [eax+0x14]
	jz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_80
	mov edx, [ebp-0x6c]
	jmp _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_90
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_40:
	mov eax, [ecx+0x20]
	test eax, eax
	jz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_100
	mov ebx, [ebp-0x6c]
	jmp _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_110
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_100:
	mov eax, [ecx+0x18]
	test eax, eax
	jz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_120
	mov ebx, [ebp-0x6c]
	jmp _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_110
_Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_80:
	cmp dword [eax+0xc], 0x20
	jz _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_130
	mov edx, [ebp-0x6c]
	jmp _Z31R_DrawStaticModelSkinnedSurfLitPKj16GfxCmdBufContext_90


;Initialized global or static variables of r_draw_staticmodel:
SECTION .data


;Initialized constant data of r_draw_staticmodel:
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


;Zero initialized global or static variables of r_draw_staticmodel:
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

