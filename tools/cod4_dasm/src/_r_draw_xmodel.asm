;Imports of r_draw_xmodel:
	extern _Z24DB_GetIndexBufferAndBasehPvS_Pi
	extern _Z27DB_GetVertexBufferAndOffsethPvS_Pi
	extern _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	extern _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	extern _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
	extern _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	extern _Z33R_SetModelLightingCoordsForSourcetP20GfxCmdBufSourceState
	extern _Z20R_SetReflectionProbe16GfxCmdBufContextj

;Exports of r_draw_xmodel:
	global _GLOBAL__I__Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo
	global _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface
	global _Z21R_DrawXModelRigidSurfPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo
	global _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo
	global _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo


SECTION .text


;global constructors keyed to R_DrawXModelRigidSurfLit(GfxDrawSurf const*, unsigned int, GfxCmdBufContext, GfxCmdBufContext, GfxDrawSurfListInfo const*)
_GLOBAL__I__Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo:
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


;R_DrawXModelRigidModelSurf(GfxCmdBufContext, XSurface*)
_Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov esi, ecx
	mov [ebp-0x3c], eax
	mov edi, edx
	movzx eax, word [ecx+0x2]
	mov [ebp-0x30], eax
	movzx eax, word [ecx+0x4]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ecx+0xc]
	mov [esp+0x4], eax
	movzx eax, byte [ecx+0x6]
	mov [esp], eax
	call _Z24DB_GetIndexBufferAndBasehPvS_Pi
	mov ecx, [ebp-0x24]
	lea ebx, [edi+0x90]
	cmp ecx, [ebx+0x4]
	jz _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_10
	mov [ebx+0x4], ecx
	mov eax, [edi+0x90]
	mov edx, [eax]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x1a0]
_Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_10:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	movzx eax, byte [esi+0x6]
	mov [esp], eax
	call _Z27DB_GetVertexBufferAndOffsethPvS_Pi
	mov esi, [ebp-0x20]
	mov ecx, [ebp-0x1c]
	cmp ecx, [ebx+0x10]
	jz _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_20
_Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_40:
	mov [ebx+0x10], ecx
	mov [ebx+0x14], esi
	mov dword [ebx+0xc], 0x20
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], esi
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
_Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_50:
	mov ecx, [ebx+0x1c]
	test ecx, ecx
	jz _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_30
_Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_60:
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
_Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_70:
	mov eax, [ebp-0x3c]
	mov [ebp-0x48], eax
	mov [ebp-0x44], edi
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_20:
	cmp esi, [ebx+0x14]
	jnz _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_40
	cmp dword [ebx+0xc], 0x20
	jnz _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_40
	jmp _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_50
_Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_30:
	mov edx, [ebx+0x20]
	test edx, edx
	jnz _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_60
	mov eax, [ebx+0x18]
	test eax, eax
	jnz _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_60
	jmp _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface_70


;R_DrawXModelRigidSurf(GfxDrawSurf const*, unsigned int, GfxCmdBufContext, GfxDrawSurfListInfo const*)
_Z21R_DrawXModelRigidSurfPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0xb4], 0x0
	mov eax, [ebp+0x14]
	mov [ebp-0x90], eax
	mov edi, [ebp+0x10]
	mov edx, [edi+0xca8]
	mov [ebp-0xa0], edx
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov dword [ebp-0xc0], 0xffffffff
	mov dword [ebp-0xbc], 0xffffffff
	mov word [ebp-0xc0], 0x0
	and dword [ebp-0xc0], 0xff00ffff
	and dword [ebp-0xc0], 0xe0ffffff
	mov edx, [ebp-0xc0]
	and edx, ebx
	mov [ebp-0xb0], edx
	mov eax, [ebp-0xbc]
	and eax, esi
	mov [ebp-0xac], eax
	lea eax, [edi+0xef4]
	movss xmm0, dword [edi+0xef4]
	movss [ebp-0x48], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x44], xmm1
	movss xmm2, dword [eax+0x8]
	pxor xmm3, xmm3
	movss [ebp-0xd0], xmm3
	subss xmm0, [g_unit]
	movss [ebp-0xc4], xmm0
	movss [ebp-0x48], xmm0
	subss xmm1, [g_unit+0x4]
	movss [ebp-0xc8], xmm1
	movss [ebp-0x44], xmm1
	subss xmm2, [g_unit+0x8]
	movss [ebp-0xcc], xmm2
	movss [ebp-0x40], xmm2
	subss xmm3, [g_unit+0xc]
	movss [ebp-0xa4], xmm3
	movss [ebp-0x3c], xmm3
	mov dword [ebp-0x8c], 0x0
	jmp _Z21R_DrawXModelRigidSurfPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_10
_Z21R_DrawXModelRigidSurfPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_30:
	pxor xmm2, xmm2
	movss [ebp-0xd0], xmm2
_Z21R_DrawXModelRigidSurfPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_10:
	movzx ebx, bx
	mov eax, [ebp-0xa0]
	lea ebx, [eax+ebx*4]
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	movss xmm6, dword [ebp-0x28]
	movaps xmm4, xmm6
	addss xmm4, xmm6
	mulss xmm6, xmm4
	movss xmm5, dword [ebp-0x24]
	movaps xmm7, xmm4
	mulss xmm7, xmm5
	movss xmm1, dword [ebp-0x20]
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	movss [ebp-0x9c], xmm0
	movss xmm3, dword [ebp-0x1c]
	mulss xmm4, xmm3
	movaps xmm0, xmm5
	addss xmm0, xmm5
	mulss xmm5, xmm0
	movaps xmm2, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x98], xmm2
	mulss xmm0, xmm3
	movss [ebp-0x94], xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm1
	mulss xmm3, xmm0
	movss [ebp-0xdc], xmm3
	mulss xmm1, xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
	subss xmm3, xmm0
	movss [ebp-0x88], xmm3
	movss xmm0, dword [ebp-0xdc]
	addss xmm0, xmm7
	movss [ebp-0x84], xmm0
	movss xmm0, dword [ebp-0x9c]
	subss xmm0, [ebp-0x94]
	movss [ebp-0x80], xmm0
	mov dword [ebp-0x7c], 0x0
	subss xmm7, [ebp-0xdc]
	movss [ebp-0x78], xmm7
	addss xmm1, xmm6
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x98]
	addss xmm0, xmm4
	movss [ebp-0x70], xmm0
	mov dword [ebp-0x6c], 0x0
	movss xmm0, dword [ebp-0x9c]
	addss xmm0, [ebp-0x94]
	movss [ebp-0x68], xmm0
	movss xmm3, dword [ebp-0x98]
	subss xmm3, xmm4
	movss [ebp-0x64], xmm3
	addss xmm6, xmm5
	subss xmm2, xmm6
	movss [ebp-0x60], xmm2
	mov dword [ebp-0x5c], 0x0
	movss xmm0, dword [ebx+0x34]
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm0
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm0
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x88]
	movss [ebp-0x88], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x84]
	movss [ebp-0x84], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x80]
	movss [ebp-0x80], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x7c]
	movss [ebp-0x7c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm7
	movss [ebp-0x78], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x74]
	movss [ebp-0x74], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x70]
	movss [ebp-0x70], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x6c]
	movss [ebp-0x6c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x68]
	movss [ebp-0x68], xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss [ebp-0x64], xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm2
	movss [ebp-0x60], xmm1
	mulss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	lea eax, [ebx+0x28]
	movss xmm0, dword [ebx+0x28]
	movss [ebp-0x58], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x54], xmm1
	movss xmm2, dword [eax+0x8]
	subss xmm0, [ebp-0xc4]
	movss [ebp-0x58], xmm0
	subss xmm1, [ebp-0xc8]
	movss [ebp-0x54], xmm1
	subss xmm2, [ebp-0xcc]
	movss [ebp-0x50], xmm2
	movss xmm0, dword [ebp-0xd0]
	subss xmm0, [ebp-0xa4]
	movss [ebp-0x4c], xmm0
	mov [esp], edi
	call _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
	mov edx, [ebp-0x88]
	mov [eax], edx
	mov edx, [ebp-0x84]
	mov [eax+0x4], edx
	mov edx, [ebp-0x80]
	mov [eax+0x8], edx
	mov edx, [ebp-0x7c]
	mov [eax+0xc], edx
	lea ecx, [eax+0x10]
	mov edx, [ebp-0x78]
	mov [eax+0x10], edx
	mov edx, [ebp-0x74]
	mov [ecx+0x4], edx
	mov edx, [ebp-0x70]
	mov [ecx+0x8], edx
	mov edx, [ebp-0x6c]
	mov [ecx+0xc], edx
	lea ecx, [eax+0x20]
	mov edx, [ebp-0x68]
	mov [eax+0x20], edx
	mov edx, [ebp-0x64]
	mov [ecx+0x4], edx
	mov edx, [ebp-0x60]
	mov [ecx+0x8], edx
	mov edx, [ebp-0x5c]
	mov [ecx+0xc], edx
	lea ecx, [eax+0x30]
	mov edx, [ebp-0x58]
	mov [eax+0x30], edx
	mov eax, [ebp-0x54]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x50]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x4c]
	mov [ecx+0xc], eax
	mov [esp], edi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	mov ecx, [ebx+0x4]
	mov eax, [ebp-0x90]
	mov [ebp-0xb4], eax
	mov [ebp-0xb8], edi
	mov eax, [ebp-0xb8]
	mov edx, [ebp-0xb4]
	call _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface
	add dword [ebp-0x8c], 0x1
	mov edx, [ebp-0x8c]
	cmp [ebp+0xc], edx
	jz _Z21R_DrawXModelRigidSurfPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20
	mov eax, edx
	mov edx, [ebp+0x8]
	mov ebx, [edx+eax*8]
	mov esi, [edx+eax*8+0x4]
	mov eax, [ebp-0xc0]
	and eax, ebx
	mov edx, [ebp-0xbc]
	and edx, esi
	mov ecx, [ebp-0xac]
	xor ecx, edx
	xor eax, [ebp-0xb0]
	or ecx, eax
	jz _Z21R_DrawXModelRigidSurfPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_30
	mov eax, [ebp-0x8c]
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_DrawXModelRigidSurfPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20:
	mov eax, edx
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_DrawXModelRigidSurfLit(GfxDrawSurf const*, unsigned int, GfxCmdBufContext, GfxCmdBufContext, GfxDrawSurfListInfo const*)
_Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov dword [ebp-0xc8], 0x0
	mov dword [ebp-0xc4], 0x0
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0xcc], 0x0
	mov eax, [ebp+0x14]
	mov [ebp-0x8c], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x90], edx
	mov ecx, [edx+0xca8]
	mov [ebp-0x94], ecx
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov edi, [eax+0x4]
	mov dword [ebp-0xd8], 0xffffffff
	mov dword [ebp-0xd4], 0xffffffff
	mov word [ebp-0xd8], 0x0
	and dword [ebp-0xd8], 0xff00ffff
	mov edx, [ebp-0xd8]
	and edx, esi
	mov [ebp-0xb8], edx
	mov ecx, [ebp-0xd4]
	and ecx, edi
	mov [ebp-0xb4], ecx
	mov eax, [ebp-0x90]
	add eax, 0xef4
	mov edx, [ebp-0x90]
	movss xmm0, dword [edx+0xef4]
	movss [ebp-0x48], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x44], xmm1
	movss xmm2, dword [eax+0x8]
	subss xmm0, [g_unit]
	movss [ebp-0xdc], xmm0
	movss [ebp-0x48], xmm0
	subss xmm1, [g_unit+0x4]
	movss [ebp-0xe0], xmm1
	movss [ebp-0x44], xmm1
	subss xmm2, [g_unit+0x8]
	movss [ebp-0xe4], xmm2
	movss [ebp-0x40], xmm2
	pxor xmm3, xmm3
	subss xmm3, [g_unit+0xc]
	movss [ebp-0xa4], xmm3
	movss [ebp-0x3c], xmm3
	movzx eax, si
	mov edx, [ebp-0x94]
	lea ebx, [edx+eax*4]
	movzx ecx, word [ebx+0xe]
	mov [ebp-0xb0], ecx
	mov eax, [ebp-0x90]
	mov eax, [eax+0xf10]
	mov [ebp-0xac], eax
	mov edx, [ebp-0x90]
	movss xmm0, dword [edx+0xf60]
	movss [ebp-0xa8], xmm0
	mov dword [ebp-0xbc], 0x0
_Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_30:
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	movss xmm6, dword [ebp-0x28]
	movaps xmm4, xmm6
	addss xmm4, xmm6
	mulss xmm6, xmm4
	movss xmm5, dword [ebp-0x24]
	movaps xmm7, xmm4
	mulss xmm7, xmm5
	movss xmm1, dword [ebp-0x20]
	movaps xmm2, xmm4
	mulss xmm2, xmm1
	movss [ebp-0xa0], xmm2
	movss xmm3, dword [ebp-0x1c]
	mulss xmm4, xmm3
	movaps xmm0, xmm5
	addss xmm0, xmm5
	mulss xmm5, xmm0
	movaps xmm2, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x9c], xmm2
	mulss xmm0, xmm3
	movss [ebp-0x98], xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm1
	mulss xmm3, xmm0
	movss [ebp-0xec], xmm3
	mulss xmm1, xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
	subss xmm3, xmm0
	movss [ebp-0x88], xmm3
	movss xmm0, dword [ebp-0xec]
	addss xmm0, xmm7
	movss [ebp-0x84], xmm0
	movss xmm0, dword [ebp-0xa0]
	subss xmm0, [ebp-0x98]
	movss [ebp-0x80], xmm0
	mov dword [ebp-0x7c], 0x0
	subss xmm7, [ebp-0xec]
	movss [ebp-0x78], xmm7
	addss xmm1, xmm6
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x9c]
	addss xmm0, xmm4
	movss [ebp-0x70], xmm0
	mov dword [ebp-0x6c], 0x0
	movss xmm0, dword [ebp-0xa0]
	addss xmm0, [ebp-0x98]
	movss [ebp-0x68], xmm0
	movss xmm1, dword [ebp-0x9c]
	subss xmm1, xmm4
	movss [ebp-0x64], xmm1
	addss xmm6, xmm5
	subss xmm2, xmm6
	movss [ebp-0x60], xmm2
	mov dword [ebp-0x5c], 0x0
	movss xmm0, dword [ebx+0x34]
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm0
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm0
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss [ebp-0x88], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x84]
	movss [ebp-0x84], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x80]
	movss [ebp-0x80], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x7c]
	movss [ebp-0x7c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm7
	movss [ebp-0x78], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x74]
	movss [ebp-0x74], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x70]
	movss [ebp-0x70], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x6c]
	movss [ebp-0x6c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x68]
	movss [ebp-0x68], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x64]
	movss [ebp-0x64], xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm2
	movss [ebp-0x60], xmm1
	mulss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	lea eax, [ebx+0x28]
	movss xmm0, dword [ebx+0x28]
	movss [ebp-0x58], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x54], xmm1
	movss xmm2, dword [eax+0x8]
	subss xmm0, [ebp-0xdc]
	movss [ebp-0x58], xmm0
	subss xmm1, [ebp-0xe0]
	movss [ebp-0x54], xmm1
	subss xmm2, [ebp-0xe4]
	movss [ebp-0x50], xmm2
	pxor xmm0, xmm0
	subss xmm0, [ebp-0xa4]
	movss [ebp-0x4c], xmm0
	mov eax, [ebp-0x90]
	mov [esp], eax
	call _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
	mov edx, [ebp-0x88]
	mov [eax], edx
	mov edx, [ebp-0x84]
	mov [eax+0x4], edx
	mov edx, [ebp-0x80]
	mov [eax+0x8], edx
	mov edx, [ebp-0x7c]
	mov [eax+0xc], edx
	lea ecx, [eax+0x10]
	mov edx, [ebp-0x78]
	mov [eax+0x10], edx
	mov edx, [ebp-0x74]
	mov [ecx+0x4], edx
	mov edx, [ebp-0x70]
	mov [ecx+0x8], edx
	mov edx, [ebp-0x6c]
	mov [ecx+0xc], edx
	lea ecx, [eax+0x20]
	mov edx, [ebp-0x68]
	mov [eax+0x20], edx
	mov edx, [ebp-0x64]
	mov [ecx+0x4], edx
	mov edx, [ebp-0x60]
	mov [ecx+0x8], edx
	mov edx, [ebp-0x5c]
	mov [ecx+0xc], edx
	lea ecx, [eax+0x30]
	mov edx, [ebp-0x58]
	mov [eax+0x30], edx
	mov eax, [ebp-0x54]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x50]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x4c]
	mov [ecx+0xc], eax
	mov edx, [ebp-0x90]
	mov [esp], edx
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	mov ecx, [ebp-0x90]
	mov [esp+0x4], ecx
	movzx eax, word [ebx+0x10]
	mov [esp], eax
	call _Z33R_SetModelLightingCoordsForSourcetP20GfxCmdBufSourceState
	mov ecx, esi
	shr ecx, 0x10
	movzx eax, cl
	mov ecx, [ebp-0x8c]
	mov [ebp-0xcc], ecx
	mov ecx, [ebp-0x90]
	mov [ebp-0xd0], ecx
	mov [esp+0x8], eax
	mov eax, [ebp-0xd0]
	mov edx, [ebp-0xcc]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z20R_SetReflectionProbe16GfxCmdBufContextj
	mov ecx, [ebx+0x4]
	mov edx, [ebp-0x8c]
	mov [ebp-0xc4], edx
	mov eax, [ebp-0x90]
	mov [ebp-0xc8], eax
	mov eax, [ebp-0xc8]
	mov edx, [ebp-0xc4]
	call _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface
	add dword [ebp-0xbc], 0x1
	mov edx, [ebp-0xbc]
	cmp [ebp+0xc], edx
	jz _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_10
	mov eax, [ebp+0x8]
	mov esi, [eax+edx*8]
	mov edi, [eax+edx*8+0x4]
	mov eax, [ebp-0xd8]
	and eax, esi
	mov edx, [ebp-0xd4]
	and edx, edi
	mov ecx, [ebp-0xb4]
	xor ecx, edx
	xor eax, [ebp-0xb8]
	or ecx, eax
	jnz _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_20
	movzx eax, si
	mov edx, [ebp-0x94]
	lea ebx, [edx+eax*4]
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	cmp [ebp-0xb0], edx
	jz _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_30
	test ax, ax
	jz _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_40
	mov ecx, [ebp-0x94]
	lea edx, [ecx+edx*8+0x118260]
	mov eax, [edx]
	and eax, 0x2
	cmp [ebp-0xac], eax
	jnz _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_20
	movss xmm0, dword [ebp-0xa8]
	ucomiss xmm0, [edx+0x4]
	jp _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_20
_Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_50:
	jz _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_30
_Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_20:
	mov eax, [ebp-0xbc]
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_40:
	mov edi, [ebp-0xac]
	test edi, edi
	jnz _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_20
	movss xmm1, dword [ebp-0xa8]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jnp _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_50
	jmp _Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_20
_Z24R_DrawXModelRigidSurfLitPK11GfxDrawSurfj16GfxCmdBufContextS2_PK19GfxDrawSurfListInfo_10:
	mov eax, edx
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_DrawXModelRigidSurfCamera(GfxDrawSurf const*, unsigned int, GfxCmdBufContext, GfxDrawSurfListInfo const*)
_Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov dword [ebp-0xc8], 0x0
	mov dword [ebp-0xc4], 0x0
	mov eax, [ebp+0x14]
	mov [ebp-0x8c], eax
	mov edi, [ebp+0x10]
	mov edx, [edi+0xca8]
	mov [ebp-0x90], edx
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov dword [ebp-0xd0], 0xffffffff
	mov dword [ebp-0xcc], 0xffffffff
	mov word [ebp-0xd0], 0x0
	and dword [ebp-0xd0], 0xff00ffff
	and dword [ebp-0xd0], 0xe0ffffff
	mov edx, [ebp-0xd0]
	and edx, ebx
	mov [ebp-0xb8], edx
	mov eax, [ebp-0xcc]
	and eax, esi
	mov [ebp-0xb4], eax
	lea eax, [edi+0xef4]
	movss xmm0, dword [edi+0xef4]
	movss [ebp-0x48], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x44], xmm1
	movss xmm2, dword [eax+0x8]
	subss xmm0, [g_unit]
	movss [ebp-0xd4], xmm0
	movss [ebp-0x48], xmm0
	subss xmm1, [g_unit+0x4]
	movss [ebp-0xd8], xmm1
	movss [ebp-0x44], xmm1
	subss xmm2, [g_unit+0x8]
	movss [ebp-0xdc], xmm2
	movss [ebp-0x40], xmm2
	pxor xmm3, xmm3
	subss xmm3, [g_unit+0xc]
	movss [ebp-0xa0], xmm3
	movss [ebp-0x3c], xmm3
	movzx eax, bx
	mov edx, [ebp-0x90]
	lea ebx, [edx+eax*4]
	movzx eax, word [ebx+0xe]
	mov [ebp-0xac], eax
	mov edx, [edi+0xf10]
	mov [ebp-0xa8], edx
	movss xmm0, dword [edi+0xf60]
	movss [ebp-0xa4], xmm0
	mov dword [ebp-0xbc], 0x0
_Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_30:
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	movss xmm6, dword [ebp-0x28]
	movaps xmm4, xmm6
	addss xmm4, xmm6
	mulss xmm6, xmm4
	movss xmm5, dword [ebp-0x24]
	movaps xmm7, xmm4
	mulss xmm7, xmm5
	movss xmm1, dword [ebp-0x20]
	movaps xmm2, xmm4
	mulss xmm2, xmm1
	movss [ebp-0x9c], xmm2
	movss xmm3, dword [ebp-0x1c]
	mulss xmm4, xmm3
	movaps xmm0, xmm5
	addss xmm0, xmm5
	mulss xmm5, xmm0
	movaps xmm2, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x98], xmm2
	mulss xmm0, xmm3
	movss [ebp-0x94], xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm1
	mulss xmm3, xmm0
	movss [ebp-0xec], xmm3
	mulss xmm1, xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
	subss xmm3, xmm0
	movss [ebp-0x88], xmm3
	movss xmm0, dword [ebp-0xec]
	addss xmm0, xmm7
	movss [ebp-0x84], xmm0
	movss xmm0, dword [ebp-0x9c]
	subss xmm0, [ebp-0x94]
	movss [ebp-0x80], xmm0
	mov dword [ebp-0x7c], 0x0
	subss xmm7, [ebp-0xec]
	movss [ebp-0x78], xmm7
	addss xmm1, xmm6
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x98]
	addss xmm0, xmm4
	movss [ebp-0x70], xmm0
	mov dword [ebp-0x6c], 0x0
	movss xmm0, dword [ebp-0x9c]
	addss xmm0, [ebp-0x94]
	movss [ebp-0x68], xmm0
	movss xmm1, dword [ebp-0x98]
	subss xmm1, xmm4
	movss [ebp-0x64], xmm1
	addss xmm6, xmm5
	subss xmm2, xmm6
	movss [ebp-0x60], xmm2
	mov dword [ebp-0x5c], 0x0
	movss xmm0, dword [ebx+0x34]
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm0
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm0
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss [ebp-0x88], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x84]
	movss [ebp-0x84], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x80]
	movss [ebp-0x80], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x7c]
	movss [ebp-0x7c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm7
	movss [ebp-0x78], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x74]
	movss [ebp-0x74], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x70]
	movss [ebp-0x70], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x6c]
	movss [ebp-0x6c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x68]
	movss [ebp-0x68], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x64]
	movss [ebp-0x64], xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm2
	movss [ebp-0x60], xmm1
	mulss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	lea eax, [ebx+0x28]
	movss xmm0, dword [ebx+0x28]
	movss [ebp-0x58], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x54], xmm1
	movss xmm2, dword [eax+0x8]
	subss xmm0, [ebp-0xd4]
	movss [ebp-0x58], xmm0
	subss xmm1, [ebp-0xd8]
	movss [ebp-0x54], xmm1
	subss xmm2, [ebp-0xdc]
	movss [ebp-0x50], xmm2
	pxor xmm0, xmm0
	subss xmm0, [ebp-0xa0]
	movss [ebp-0x4c], xmm0
	mov [esp], edi
	call _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
	mov edx, [ebp-0x88]
	mov [eax], edx
	mov edx, [ebp-0x84]
	mov [eax+0x4], edx
	mov edx, [ebp-0x80]
	mov [eax+0x8], edx
	mov edx, [ebp-0x7c]
	mov [eax+0xc], edx
	lea ecx, [eax+0x10]
	mov edx, [ebp-0x78]
	mov [eax+0x10], edx
	mov edx, [ebp-0x74]
	mov [ecx+0x4], edx
	mov edx, [ebp-0x70]
	mov [ecx+0x8], edx
	mov edx, [ebp-0x6c]
	mov [ecx+0xc], edx
	lea ecx, [eax+0x20]
	mov edx, [ebp-0x68]
	mov [eax+0x20], edx
	mov edx, [ebp-0x64]
	mov [ecx+0x4], edx
	mov edx, [ebp-0x60]
	mov [ecx+0x8], edx
	mov edx, [ebp-0x5c]
	mov [ecx+0xc], edx
	lea ecx, [eax+0x30]
	mov edx, [ebp-0x58]
	mov [eax+0x30], edx
	mov eax, [ebp-0x54]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x50]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x4c]
	mov [ecx+0xc], eax
	mov [esp], edi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	mov ecx, [ebx+0x4]
	mov eax, [ebp-0x8c]
	mov [ebp-0xc4], eax
	mov [ebp-0xc8], edi
	mov eax, [ebp-0xc8]
	mov edx, [ebp-0xc4]
	call _Z26R_DrawXModelRigidModelSurf16GfxCmdBufContextP8XSurface
	add dword [ebp-0xbc], 0x1
	mov edx, [ebp-0xbc]
	cmp [ebp+0xc], edx
	jz _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_10
	mov eax, edx
	mov edx, [ebp+0x8]
	mov ebx, [edx+eax*8]
	mov esi, [edx+eax*8+0x4]
	mov eax, [ebp-0xd0]
	and eax, ebx
	mov edx, [ebp-0xcc]
	and edx, esi
	mov ecx, [ebp-0xb4]
	xor ecx, edx
	xor eax, [ebp-0xb8]
	or ecx, eax
	jnz _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20
	movzx eax, bx
	mov edx, [ebp-0x90]
	lea ebx, [edx+eax*4]
	movzx eax, word [ebx+0xe]
	movzx edx, ax
	cmp [ebp-0xac], edx
	jz _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_30
	test ax, ax
	jz _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_40
	mov eax, [ebp-0x90]
	lea edx, [eax+edx*8+0x118260]
	mov eax, [edx]
	and eax, 0x2
	cmp [ebp-0xa8], eax
	jnz _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20
	movss xmm0, dword [ebp-0xa4]
	ucomiss xmm0, [edx+0x4]
	jp _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20
_Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_50:
	jz _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_30
_Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20:
	mov eax, [ebp-0xbc]
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_40:
	mov esi, [ebp-0xa8]
	test esi, esi
	jnz _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20
	movss xmm1, dword [ebp-0xa4]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jnp _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_50
	jmp _Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_20
_Z27R_DrawXModelRigidSurfCameraPK11GfxDrawSurfj16GfxCmdBufContextPK19GfxDrawSurfListInfo_10:
	mov eax, edx
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of r_draw_xmodel:
SECTION .data


;Initialized constant data of r_draw_xmodel:
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
g_unit: dd 0x0, 0x0, 0x0, 0x3f800000


;Zero initialized global or static variables of r_draw_xmodel:
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
_float_1_00000000:		dd 0x3f800000	; 1

