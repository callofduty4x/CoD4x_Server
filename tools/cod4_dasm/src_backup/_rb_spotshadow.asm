;Imports of rb_spotshadow:
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern gfxMetrics
	extern rgp
	extern _Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData
	extern _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	extern shadowmapClearColor
	extern _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	extern pixelCostMode
	extern _Z13R_InitContextPK14GfxBackEndDataP9GfxCmdBuf
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern sm_polygonOffsetScale
	extern sm_polygonOffsetBias
	extern _Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii
	extern _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_

;Exports of rb_spotshadow:
	global _Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1_
	global _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo


SECTION .text


;R_DrawSpotShadowMapCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
_Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov [ebp-0x1c], esi
	mov ecx, [edi+0x1c8]
	mov [esp+0x8], ecx
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov eax, [edi+0x1dc]
	test eax, eax
	jnz _Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1__10
_Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1__30:
	mov eax, gfxMetrics
	cmp byte [eax+0x14], 0x0
	jnz _Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1__20
	mov eax, [edi+0x1e0]
	mov edx, rgp
	mov edx, [edx+0x204c]
	mov [ebp-0x30], ebx
	mov [ebp-0x2c], esi
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData
_Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1__20:
	mov [ebp-0x28], ebx
	mov [ebp-0x24], esi
	lea eax, [edi+0x18c]
	mov [ebp+0x14], eax
	mov dword [ebp+0x10], 0x0
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov [ebp+0x8], eax
	mov [ebp+0xc], edx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
_Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1__10:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov eax, shadowmapClearColor
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x90]
	mov [esp], eax
	call _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	jmp _Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1__30
	nop


;RB_SpotShadowMaps(GfxBackEndData const*, GfxViewInfo const*)
_Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfbc
	mov eax, pixelCostMode
	mov ecx, [eax]
	test ecx, ecx
	jz _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_10
_Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_20:
	add esp, 0xfbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_10:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13R_InitContextPK14GfxBackEndDataP9GfxCmdBuf
	mov dword [esp+0x4], _cstring_spot_shadow_maps
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	add eax, 0x6380
	mov [esp+0x4], eax
	lea esi, [ebp-0xfa8]
	mov [esp], esi
	call _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	mov eax, [ebp+0xc]
	mov edx, [eax+0x5b30]
	test edx, edx
	jz _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_20
	xor edi, edi
	mov ebx, eax
	add ebx, 0x5b40
_Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_50:
	mov eax, [ebx+0x1c8]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, sm_polygonOffsetScale
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mov eax, sm_polygonOffsetBias
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_0_25000000]
	ucomiss xmm0, [ebp-0x698]
	jnz _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30
	jp _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30
	ucomiss xmm1, [ebp-0x694]
	jnz _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30
	jp _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30
	pxor xmm2, xmm2
	ucomiss xmm2, [ebp-0x690]
	jnz _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30
	jp _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30
	ucomiss xmm2, [ebp-0x68c]
	jp _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30
	jz _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_40
_Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_30:
	movss [ebp-0x698], xmm0
	movss [ebp-0x694], xmm1
	mov dword [ebp-0x690], 0x0
	mov dword [ebp-0x68c], 0x0
	add word [ebp-0x166], 0x1
_Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_40:
	mov eax, [ebx+0x1c0]
	mov [esp+0x10], eax
	mov eax, [ebx+0x1bc]
	mov [esp+0xc], eax
	mov eax, [ebx+0x1b8]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1b4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii
	mov dword [esp+0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	lea eax, [ebx+0x18c]
	mov [esp+0x10], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _Z27R_DrawSpotShadowMapCallbackPKv16GfxCmdBufContextS1_
	call _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_
	add edi, 0x1
	add ebx, 0x1f0
	mov eax, [ebp+0xc]
	cmp edi, [eax+0x5b30]
	jb _Z17RB_SpotShadowMapsPK14GfxBackEndDataPK11GfxViewInfo_50
	add esp, 0xfbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of rb_spotshadow:
SECTION .data


;Initialized constant data of rb_spotshadow:
SECTION .rdata


;Zero initialized global or static variables of rb_spotshadow:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_spot_shadow_maps:		db "Spot Shadow Maps",0



;All constant floats and doubles:
SECTION .rdata
_float_0_25000000:		dd 0x3e800000	; 0.25

