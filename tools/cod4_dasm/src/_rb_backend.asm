;Imports of rb_backend:
	extern RB_EndTessSurface
	extern gfxCmdBufSourceState
	extern gfxRenderTargets
	extern gfxCmdBufContext
	extern Image_GetSurface
	extern rgp
	extern gfxCmdBufState
	extern R_ClearScreen
	extern R_SetViewportStruct
	extern RB_SetTessTechnique
	extern RB_TessOverflow
	extern sinf
	extern cosf
	extern dx_ctx
	extern R_Set2D
	extern pow
	extern floorf
	extern _ZN10MacDisplay11GetDeviceIDEv
	extern _ZN10MacDisplay11GetVendorIDEv
	extern _ZN10MacDisplay16GetIsAntialiasedEv
	extern rg
	extern memcpy
	extern R_CmdBufSet3D
	extern R_Set3D
	extern CL_ScaledMilliseconds
	extern R_GetCharacterGlyph
	extern R_WarnOncePerFrame
	extern SEH_ReadCharFromString
	extern R_FontGetRandomLetter
	extern RandWithSeed
	extern ColorIndex
	extern bg_itemlist
	extern SEH_PrintStrlen
	extern gfxBuf
	extern r_gamma
	extern r_ignoreHwGamma
	extern Cvar_ClearModified
	extern R_SetColorMappings
	extern R_ErrorDescription
	extern Com_Error
	extern R_SetDrawSurfsShadowableLight
	extern pixelCostMode
	extern R_SetupMaterial
	extern R_SkipDrawSurfListMaterial
	extern R_ChangeDepthHackNearClip
	extern R_ChangeDepthRange
	extern R_PixelCost_EndSurface
	extern R_SetupPass
	extern R_UpdateMaterialTime
	extern R_PixelCost_BeginSurface
	extern R_GetViewport
	extern R_SetViewport
	extern R_UpdateViewport
	extern r_glob
	extern R_GetCachedSModelSurf
	extern XModelGetStaticModelCacheVertCount
	extern R_LockVertexBuffer
	extern Com_Memcpy
	extern R_UnlockVertexBuffer
	extern RB_PatchModelLighting
	extern RB_UploadShaderStep
	extern R_Cinematic_UpdateFrame
	extern r_texFilterAnisoMax
	extern R_CheckDvarModified
	extern R_SetTexFilter
	extern r_showPixelCost
	extern r_aaAlpha
	extern gfxMetrics
	extern R_SetAlphaAntiAliasingState
	extern R_PixelCost_PrintColorCodeKey
	extern r_texFilterDisable
	extern r_texFilterAnisoMin
	extern r_texFilterMipMode
	extern r_texFilterMipBias
	extern Vec2Normalize
	extern gfxCmdBufInput
	extern R_RegisterFont
	extern RB_InitSceneViewport
	extern R_InitCmdBufSourceState
	extern memset
	extern R_SetRenderTargetSize
	extern R_SetRenderTarget
	extern R_ClearAllStreamSources
	extern R_AcquireGpuFenceLock
	extern RB_IsGpuFenceFinished
	extern R_ReleaseGpuFenceLock
	extern RB_Draw3DCommon
	extern msecPerRawTimerTick
	extern RB_Draw3DInternal
	extern R_TessTrianglesList
	extern R_TessTrianglesPreTessList
	extern R_TessStaticModelRigidDrawSurfList
	extern R_TessStaticModelPreTessList
	extern R_TessStaticModelCachedList
	extern R_TessStaticModelSkinnedDrawSurfList
	extern R_TessBModel
	extern R_TessXModelRigidDrawSurfList
	extern R_TessXModelRigidSkinnedDrawSurfList
	extern R_TessXModelSkinnedDrawSurfList
	extern R_TessCodeMeshList
	extern R_TessMarkMeshList
	extern R_TessParticleCloudList

;Exports of rb_backend:
	global _GLOBAL__I_backEndData
	global RB_RenderCommandTable
	global RB_SetMaterialColorCmd
	global RB_SaveScreenCmd
	global RB_SaveScreenSectionCmd
	global RB_ClearScreenCmd
	global RB_SetViewportCmd
	global RB_StretchPicCmd
	global RB_StretchPicCmdFlipST
	global RB_StretchPicRotateXYCmd
	global RB_StretchPicRotateSTCmd
	global RB_StretchRawCmd
	global RB_DrawQuadPicCmd
	global RB_DrawFullScreenColoredQuadCmd
	global RB_DrawText2DCmd
	global RB_DrawText3DCmd
	global RB_BlendSavedScreenBlurredCmd
	global RB_BlendSavedScreenFlashedCmd
	global RB_DrawPointsCmd
	global RB_DrawLinesCmd
	global RB_DrawTrianglesCmd
	global RB_ProjectionSetCmd
	global rb_tessTable
	global _ZZ14RB_LookupColorhPhE11color_table
	global RB_DrawStretchPicRotate
	global RB_DrawCursor
	global _ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E10MY_OFFSETS
	global _ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E25MY_ALTCOLOR_TWO_CINEMATIC
	global _ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E15MY_ALTCOLOR_TWO
	global DrawText2D
	global RB_EndFrame
	global R_DrawSurfs
	global RB_BeginFrame
	global R_SetVertex2d
	global RB_DrawLines2D
	global RB_DrawLines3D
	global RB_LookupColor
	global RB_SetIdentity
	global RB_SetBspImages
	global RB_SetGammaRamp
	global R_InsertGpuFence
	global RB_DrawStretchPic
	global RB_InitCodeImages
	global RB_DrawTextInSpace
	global RB_FullScreenFilter
	global RB_InitCodeConstants
	global RB_SplitScreenFilter
	global R_ShowDirtyDiscError
	global RB_DrawStretchPicFlipST
	global R_SetVertex4dWithNormal
	global RB_RegisterBackendAssets
	global RB_FullScreenColoredFilter
	global RB_InitBackendGlobalStructs
	global RB_CallExecuteRenderCommands
	global RB_DrawFullScreenColoredQuad
	global RB_ExecuteRenderCommandsLoop
	global RB_Draw3D
	global R_Resolve
	global backEnd
	global backEndData
	global tess


SECTION .text


;global constructors keyed to backEndData
_GLOBAL__I_backEndData:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


;RB_SetMaterialColorCmd(GfxRenderCommandExecState*)
RB_SetMaterialColorCmd:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [esi]
	mov eax, [tess+0x22a948]
	test eax, eax
	jz RB_SetMaterialColorCmd_10
	call RB_EndTessSurface
RB_SetMaterialColorCmd_10:
	lea ecx, [ebx+0x4]
	mov edx, gfxCmdBufSourceState
	mov eax, [ebx+0x4]
	mov [edx+0xb00], eax
	mov eax, [ecx+0x4]
	mov [edx+0xb04], eax
	mov eax, [ecx+0x8]
	mov [edx+0xb08], eax
	mov eax, [ecx+0xc]
	mov [edx+0xb0c], eax
	add word [edx+0xe80], 0x1
	mov edx, [esi]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [esi], eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;RB_SaveScreenCmd(GfxRenderCommandExecState*)
RB_SaveScreenCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	mov ebx, [tess+0x22a948]
	test ebx, ebx
	jz RB_SaveScreenCmd_10
	call RB_EndTessSurface
RB_SaveScreenCmd_10:
	mov edi, gfxRenderTargets
	mov edx, [edi]
	mov eax, gfxCmdBufContext
	mov esi, [eax+0x4]
	mov [esp], edx
	call Image_GetSurface
	mov ebx, eax
	mov edx, [esi+0x90]
	mov ecx, [edx]
	mov dword [esp+0x14], 0x2
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [esi+0xa04]
	lea eax, [eax+eax*4]
	mov eax, [edi+eax*4+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x88]
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	mov edx, [ebp-0x1c]
	mov ecx, [edx+0x4]
	mov eax, gfxCmdBufSourceState
	mov edx, [eax+0xf3c]
	mov eax, rgp
	mov [eax+ecx*4+0x2100], edx
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_SaveScreenSectionCmd(GfxRenderCommandExecState*)
RB_SaveScreenSectionCmd:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [esi]
	mov eax, [tess+0x22a948]
	test eax, eax
	jz RB_SaveScreenSectionCmd_10
	call RB_EndTessSurface
RB_SaveScreenSectionCmd_10:
	mov ecx, [ebx+0x14]
	mov eax, gfxCmdBufSourceState
	mov edx, [eax+0xf3c]
	mov eax, rgp
	mov [eax+ecx*4+0x2100], edx
	mov edx, [esi]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [esi], eax
	pop ebx
	pop esi
	pop ebp
	ret


;RB_ClearScreenCmd(GfxRenderCommandExecState*)
RB_ClearScreenCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [tess+0x22a948]
	test eax, eax
	jz RB_ClearScreenCmd_10
	call RB_EndTessSurface
RB_ClearScreenCmd_10:
	mov edx, [ebx]
	mov dword [esp+0x14], 0x0
	movzx eax, byte [edx+0x5]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	lea eax, [edx+0xc]
	mov [esp+0x8], eax
	movzx eax, byte [edx+0x4]
	mov [esp+0x4], eax
	mov eax, gfxCmdBufState
	mov eax, [eax+0x90]
	mov [esp], eax
	call R_ClearScreen
	mov edx, [ebx]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;RB_SetViewportCmd(GfxRenderCommandExecState*)
RB_SetViewportCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [tess+0x22a948]
	test eax, eax
	jz RB_SetViewportCmd_10
	call RB_EndTessSurface
RB_SetViewportCmd_10:
	mov eax, [ebx]
	add eax, 0x4
	mov [esp+0x4], eax
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetViewportStruct
	mov edx, [ebx]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;RB_StretchPicCmd(GfxRenderCommandExecState*)
RB_StretchPicCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov dword [esp+0x28], 0x7
	mov eax, [edx+0x28]
	mov [esp+0x24], eax
	mov eax, [edx+0x24]
	mov [esp+0x20], eax
	mov eax, [edx+0x20]
	mov [esp+0x1c], eax
	mov eax, [edx+0x1c]
	mov [esp+0x18], eax
	mov eax, [edx+0x18]
	mov [esp+0x14], eax
	mov eax, [edx+0x14]
	mov [esp+0x10], eax
	mov eax, [edx+0x10]
	mov [esp+0xc], eax
	mov eax, [edx+0xc]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [edx+0x4]
	mov [esp], eax
	call RB_DrawStretchPic
	mov edx, [ebx]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;RB_StretchPicCmdFlipST(GfxRenderCommandExecState*)
RB_StretchPicCmdFlipST:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov dword [esp+0x28], 0x7
	mov eax, [edx+0x28]
	mov [esp+0x24], eax
	mov eax, [edx+0x24]
	mov [esp+0x20], eax
	mov eax, [edx+0x20]
	mov [esp+0x1c], eax
	mov eax, [edx+0x1c]
	mov [esp+0x18], eax
	mov eax, [edx+0x18]
	mov [esp+0x14], eax
	mov eax, [edx+0x14]
	mov [esp+0x10], eax
	mov eax, [edx+0x10]
	mov [esp+0xc], eax
	mov eax, [edx+0xc]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [edx+0x4]
	mov [esp], eax
	call RB_DrawStretchPicFlipST
	mov edx, [ebx]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;RB_StretchPicRotateXYCmd(GfxRenderCommandExecState*)
RB_StretchPicRotateXYCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov dword [esp+0x4], 0x4
	mov eax, [esi+0x4]
	mov [esp], eax
	call RB_SetTessTechnique
	mov ecx, [tess+0x22a94c]
	lea eax, [ecx+0x4]
	cmp eax, 0x154a
	jg RB_StretchPicRotateXYCmd_10
	mov edx, [tess+0x22a948]
	lea eax, [edx+0x6]
	cmp eax, 0x100000
	jle RB_StretchPicRotateXYCmd_20
RB_StretchPicRotateXYCmd_10:
	call RB_TessOverflow
	mov ecx, [tess+0x22a94c]
	mov edx, [tess+0x22a948]
RB_StretchPicRotateXYCmd_20:
	mov ebx, ecx
	lea eax, [ecx+0x4]
	mov [tess+0x22a94c], eax
	lea eax, [edx+0x6]
	mov [tess+0x22a948], eax
	lea eax, [ebx+0x3]
	mov [edx+edx+tess+0x2a940], ax
	mov [edx+edx+tess+0x2a942], cx
	lea eax, [ebx+0x2]
	mov [edx+edx+tess+0x2a944], ax
	mov [edx+edx+tess+0x2a946], ax
	mov [edx+edx+tess+0x2a948], cx
	lea eax, [ebx+0x1]
	mov [edx+edx+tess+0x2a94a], ax
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [esi+0x10]
	mulss xmm0, xmm1
	movss [ebp-0x38], xmm0
	mulss xmm1, [esi+0x14]
	addss xmm0, [esi+0x8]
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm1
	addss xmm0, [esi+0xc]
	movss [ebp-0x3c], xmm0
	cvtss2sd xmm0, [esi+0x2c]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x34], xmm0
	movss [esp], xmm0
	movss [ebp-0x58], xmm1
	call sinf
	fstp dword [ebp-0x44]
	movss xmm0, dword [ebp-0x34]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x5c]
	movss xmm2, dword [ebp-0x5c]
	movss xmm4, dword [ebp-0x38]
	mulss xmm4, xmm2
	movss xmm6, dword [ebp-0x38]
	mulss xmm6, [ebp-0x44]
	movss xmm1, dword [ebp-0x58]
	movaps xmm3, xmm1
	xorps xmm3, [_data16_80000000]
	mulss xmm3, [ebp-0x44]
	mulss xmm2, xmm1
	mov edi, [esi+0x28]
	movss xmm0, dword [esi+0x1c]
	movss [ebp-0x30], xmm0
	mov edx, [esi+0x18]
	movss xmm5, dword [ebp-0x3c]
	subss xmm5, xmm6
	movss xmm1, dword [ebp-0x40]
	subss xmm1, xmm4
	movzx ebx, bx
	shl ebx, 0x5
	lea eax, [ebx+tess]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	movss [ebx+tess], xmm0
	movaps xmm0, xmm5
	subss xmm0, xmm2
	movss [eax+0x4], xmm0
	mov dword [eax+0x8], 0x0
	mov ecx, 0x3f800000
	mov [eax+0xc], ecx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], edi
	mov [eax+0x14], edx
	movss xmm0, dword [ebp-0x30]
	movss [eax+0x18], xmm0
	mov eax, [esi+0x28]
	mov [ebp-0x20], eax
	movss xmm0, dword [esi+0x1c]
	movss [ebp-0x2c], xmm0
	mov edi, [esi+0x20]
	addss xmm6, [ebp-0x3c]
	addss xmm4, [ebp-0x40]
	lea edx, [ebx+0x20]
	lea eax, [edx+tess]
	movaps xmm0, xmm4
	subss xmm0, xmm3
	movss [edx+tess], xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm2
	movss [eax+0x4], xmm0
	mov dword [eax+0x8], 0x0
	mov [eax+0xc], ecx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebp-0x20]
	mov [eax+0x10], edx
	mov [eax+0x14], edi
	movss xmm0, dword [ebp-0x2c]
	movss [eax+0x18], xmm0
	mov eax, [esi+0x28]
	mov [ebp-0x1c], eax
	movss xmm0, dword [esi+0x24]
	mov edi, [esi+0x20]
	lea edx, [ebx+0x40]
	lea eax, [edx+tess]
	addss xmm4, xmm3
	movss [edx+tess], xmm4
	addss xmm6, xmm2
	movss [eax+0x4], xmm6
	mov dword [eax+0x8], 0x0
	mov [eax+0xc], ecx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebp-0x1c]
	mov [eax+0x10], edx
	mov [eax+0x14], edi
	movss [eax+0x18], xmm0
	mov edi, [esi+0x28]
	movss xmm0, dword [esi+0x24]
	mov edx, [esi+0x18]
	add ebx, 0x60
	lea eax, [ebx+tess]
	addss xmm3, xmm1
	movss [ebx+tess], xmm3
	addss xmm2, xmm5
	movss [eax+0x4], xmm2
	mov dword [eax+0x8], 0x0
	mov [eax+0xc], ecx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], edi
	mov [eax+0x14], edx
	movss [eax+0x18], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_StretchPicRotateSTCmd(GfxRenderCommandExecState*)
RB_StretchPicRotateSTCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov edi, [eax]
	mov dword [esp+0x4], 0x4
	mov eax, [edi+0x4]
	mov [esp], eax
	call RB_SetTessTechnique
	mov edx, [tess+0x22a94c]
	mov esi, edx
	mov ebx, [tess+0x22a948]
	mov ecx, ebx
	lea eax, [edx+0x4]
	cmp eax, 0x154a
	jg RB_StretchPicRotateSTCmd_10
	lea eax, [ebx+0x6]
	cmp eax, 0x100000
	jle RB_StretchPicRotateSTCmd_20
RB_StretchPicRotateSTCmd_10:
	call RB_TessOverflow
	mov edx, [tess+0x22a94c]
	mov ecx, [tess+0x22a948]
RB_StretchPicRotateSTCmd_20:
	lea eax, [edx+0x4]
	mov [tess+0x22a94c], eax
	lea eax, [ecx+0x6]
	mov [tess+0x22a948], eax
	lea eax, [esi+0x3]
	mov [ebx+ebx+tess+0x2a940], ax
	mov [ebx+ebx+tess+0x2a942], si
	lea eax, [esi+0x2]
	mov [ebx+ebx+tess+0x2a944], ax
	mov [ebx+ebx+tess+0x2a946], ax
	mov [ebx+ebx+tess+0x2a948], si
	lea eax, [esi+0x1]
	mov [ebx+ebx+tess+0x2a94a], ax
	cvtss2sd xmm0, [edi+0x30]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x20], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x28]
	movss xmm2, dword [edi+0x20]
	movss xmm0, dword [ebp-0x20]
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call cosf
	fstp dword [ebp-0x3c]
	movss xmm4, dword [ebp-0x3c]
	movss xmm2, dword [ebp-0x38]
	mulss xmm4, xmm2
	movss xmm1, dword [edi+0x24]
	movaps xmm5, xmm4
	mulss xmm5, xmm1
	movss xmm0, dword [edi+0x28]
	movss xmm3, dword [ebp-0x28]
	mulss xmm3, xmm2
	mulss xmm3, xmm0
	xorps xmm2, [_data16_80000000]
	mulss xmm2, [ebp-0x28]
	mulss xmm2, xmm1
	mulss xmm4, xmm0
	movss xmm1, dword [edi+0x18]
	movaps xmm6, xmm1
	subss xmm6, xmm5
	movss xmm0, dword [edi+0x1c]
	movaps xmm7, xmm0
	subss xmm7, xmm3
	addss xmm5, xmm1
	addss xmm3, xmm0
	mov eax, [edi+0x2c]
	mov [ebp-0x24], eax
	mov ebx, [edi+0xc]
	movzx ecx, si
	shl ecx, 0x5
	lea edx, [ecx+tess]
	mov eax, [edi+0x8]
	mov [ecx+tess], eax
	mov [edx+0x4], ebx
	mov dword [edx+0x8], 0x0
	mov esi, 0x3f800000
	mov [edx+0xc], esi
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebp-0x24]
	mov [edx+0x10], eax
	movaps xmm0, xmm6
	subss xmm0, xmm2
	movss [edx+0x14], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm4
	movss [edx+0x18], xmm0
	mov edx, [edi+0x2c]
	mov [ebp-0x1c], edx
	mov ebx, [edi+0xc]
	lea edx, [ecx+0x20]
	lea eax, [edx+tess]
	movss xmm0, dword [edi+0x8]
	addss xmm0, [edi+0x10]
	movss [edx+tess], xmm0
	mov [eax+0x4], ebx
	mov dword [eax+0x8], 0x0
	mov [eax+0xc], esi
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebp-0x1c]
	mov [eax+0x10], edx
	movaps xmm0, xmm5
	subss xmm0, xmm2
	movss [eax+0x14], xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm4
	movss [eax+0x18], xmm0
	mov ebx, [edi+0x2c]
	movss xmm1, dword [edi+0xc]
	addss xmm1, [edi+0x14]
	lea edx, [ecx+0x40]
	lea eax, [edx+tess]
	movss xmm0, dword [edi+0x8]
	addss xmm0, [edi+0x10]
	movss [edx+tess], xmm0
	movss [eax+0x4], xmm1
	mov dword [eax+0x8], 0x0
	mov [eax+0xc], esi
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], ebx
	addss xmm5, xmm2
	movss [eax+0x14], xmm5
	addss xmm3, xmm4
	movss [eax+0x18], xmm3
	mov ebx, [edi+0x2c]
	movss xmm0, dword [edi+0xc]
	addss xmm0, [edi+0x14]
	add ecx, 0x60
	lea eax, [ecx+tess]
	mov edx, [edi+0x8]
	mov [ecx+tess], edx
	movss [eax+0x4], xmm0
	mov dword [eax+0x8], 0x0
	mov [eax+0xc], esi
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], ebx
	addss xmm2, xmm6
	movss [eax+0x14], xmm2
	addss xmm4, xmm7
	movss [eax+0x18], xmm4
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_StretchRawCmd(GfxRenderCommandExecState*)
RB_StretchRawCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov ebx, [eax+0x1c]
	mov edx, [eax+0x18]
	mov [ebp-0x54], edx
	mov edi, [eax+0x14]
	mov edx, [eax+0x10]
	mov [ebp-0x50], edx
	mov edx, [eax+0xc]
	mov [ebp-0x4c], edx
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov eax, [eax+0x4]
	mov [ebp-0x44], eax
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x18], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x16
	mov eax, [ebp-0x54]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], edx
	call dword [ecx+0x90]
	test eax, eax
	js RB_StretchRawCmd_10
	mov edx, [ebp-0x1c]
	mov ecx, [edx]
	mov dword [esp+0xc], 0x2000
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x34]
	mov ecx, [ebp-0x20]
	lea eax, [edi*4]
	mov edx, [ebp-0x24]
	sub edx, eax
	mov [ebp-0x3c], edx
	mov esi, [ebp-0x54]
	test esi, esi
	jle RB_StretchRawCmd_20
	mov dword [ebp-0x40], 0x0
RB_StretchRawCmd_50:
	test edi, edi
	jle RB_StretchRawCmd_30
	xor esi, esi
RB_StretchRawCmd_40:
	movzx edx, byte [ebx]
	shl edx, 0x10
	movzx eax, byte [ebx+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ebx+0x2]
	or edx, eax
	movzx eax, byte [ebx+0x3]
	shl eax, 0x18
	or edx, eax
	mov [ecx], edx
	add ebx, 0x4
	add ecx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz RB_StretchRawCmd_40
RB_StretchRawCmd_30:
	add ecx, [ebp-0x3c]
	add dword [ebp-0x40], 0x1
	mov eax, [ebp-0x40]
	cmp [ebp-0x54], eax
	jnz RB_StretchRawCmd_50
RB_StretchRawCmd_20:
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x38]
	mov edx, [ebp-0x44]
	mov [ebp-0x34], edx
	mov eax, [ebp-0x48]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x4c]
	add eax, edx
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x50]
	add eax, [ebp-0x48]
	mov [ebp-0x28], eax
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x14], 0x2
	lea eax, [ebp-0x34]
	mov [esp+0x10], eax
	mov eax, gfxRenderTargets
	mov eax, [eax+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x88]
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
RB_StretchRawCmd_10:
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_DrawQuadPicCmd(GfxRenderCommandExecState*)
RB_DrawQuadPicCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edi, [eax]
	mov dword [esp+0x4], 0x4
	mov eax, [edi+0x4]
	mov [esp], eax
	call RB_SetTessTechnique
	mov ecx, [tess+0x22a94c]
	lea eax, [ecx+0x4]
	cmp eax, 0x154a
	jg RB_DrawQuadPicCmd_10
	mov edx, [tess+0x22a948]
	lea eax, [edx+0x6]
	cmp eax, 0x100000
	jle RB_DrawQuadPicCmd_20
RB_DrawQuadPicCmd_10:
	call RB_TessOverflow
	mov ecx, [tess+0x22a94c]
	mov edx, [tess+0x22a948]
RB_DrawQuadPicCmd_20:
	mov ebx, ecx
	lea eax, [ebx+0x4]
	mov [tess+0x22a94c], eax
	lea eax, [edx+0x6]
	mov [tess+0x22a948], eax
	lea eax, [ecx+0x3]
	mov [edx+edx+tess+0x2a940], ax
	mov [edx+edx+tess+0x2a942], bx
	lea eax, [ecx+0x2]
	mov [edx+edx+tess+0x2a944], ax
	mov [edx+edx+tess+0x2a946], ax
	mov [edx+edx+tess+0x2a948], bx
	lea eax, [ecx+0x1]
	mov [edx+edx+tess+0x2a94a], ax
	mov edx, [edi+0x28]
	mov [ebp-0x2c], edx
	mov ebx, [edi+0xc]
	movzx ecx, cx
	shl ecx, 0x5
	lea eax, [ecx+tess]
	mov edx, [edi+0x8]
	mov [ecx+tess], edx
	mov [eax+0x4], ebx
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebp-0x2c]
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x0
	mov eax, [edi+0x28]
	mov [ebp-0x24], eax
	movss xmm0, dword [edi+0x14]
	lea ebx, [ecx+0x20]
	lea eax, [ebx+tess]
	mov edx, [edi+0x10]
	mov [ebx+tess], edx
	movss [eax+0x4], xmm0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebp-0x24]
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x3f800000
	mov dword [eax+0x18], 0x0
	mov eax, [edi+0x28]
	mov [ebp-0x20], eax
	mov esi, [edi+0x1c]
	lea ebx, [ecx+0x40]
	lea eax, [ebx+tess]
	mov edx, [edi+0x18]
	mov [ebx+tess], edx
	mov [eax+0x4], esi
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebp-0x20]
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x3f800000
	mov dword [eax+0x18], 0x3f800000
	mov eax, [edi+0x28]
	mov [ebp-0x1c], eax
	mov ebx, [edi+0x24]
	add ecx, 0x60
	lea eax, [ecx+tess]
	mov edx, [edi+0x20]
	mov [ecx+tess], edx
	mov [eax+0x4], ebx
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebp-0x1c]
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x3f800000
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_DrawFullScreenColoredQuadCmd(GfxRenderCommandExecState*)
RB_DrawFullScreenColoredQuadCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [eax+0x18]
	mov [ebp-0x28], edx
	movss xmm0, dword [eax+0x14]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x10]
	movss [ebp-0x20], xmm0
	mov edi, [eax+0xc]
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov [ebp-0x1c], eax
	mov eax, [tess+0x22a948]
	test eax, eax
	jz RB_DrawFullScreenColoredQuadCmd_10
	call RB_EndTessSurface
RB_DrawFullScreenColoredQuadCmd_10:
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_Set2D
	mov dword [esp+0x28], 0x9
	mov eax, [ebp-0x28]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x20], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x1c], xmm0
	mov [esp+0x18], edi
	mov [esp+0x14], esi
	cvtsi2ss xmm0, dword [ebx+0xf6c]
	movss [esp+0x10], xmm0
	cvtsi2ss xmm0, dword [ebx+0xf68]
	movss [esp+0xc], xmm0
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call RB_DrawStretchPic
	call RB_EndTessSurface
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_DrawText2DCmd(GfxRenderCommandExecState*)
RB_DrawText2DCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	cvtss2sd xmm0, [ebx+0xc]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x1c], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x40]
	movss xmm0, dword [ebp-0x1c]
	movss [esp], xmm0
	call cosf
	mov edx, [ebx+0x44]
	mov ecx, [ebx+0x40]
	mov esi, [ebx+0x3c]
	mov edi, [ebx+0x38]
	mov eax, [ebx+0x34]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x30]
	mov [ebp-0x38], eax
	movss xmm0, dword [ebx+0x4c]
	movsx eax, byte [ebx+0x2c]
	mov [ebp-0x30], eax
	mov eax, [ebx+0x28]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x24]
	mov [ebp-0x28], eax
	mov eax, [ebx+0x20]
	mov [ebp-0x24], eax
	mov eax, [ebx+0x1c]
	mov [ebp-0x20], eax
	mov eax, [ebx+0x48]
	mov [esp+0x50], eax
	mov [esp+0x4c], edx
	mov [esp+0x48], ecx
	mov [esp+0x44], esi
	mov [esp+0x40], edi
	mov edx, [ebp-0x3c]
	mov [esp+0x3c], edx
	mov eax, [ebp-0x38]
	mov [esp+0x38], eax
	movss [esp+0x34], xmm0
	mov edx, [ebp-0x30]
	mov [esp+0x30], edx
	mov eax, [ebp-0x2c]
	mov [esp+0x2c], eax
	mov edx, [ebp-0x28]
	mov [esp+0x28], edx
	mov eax, [ebp-0x24]
	mov [esp+0x24], eax
	mov edx, [ebp-0x20]
	mov [esp+0x20], edx
	fstp dword [esp+0x1c]
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x18], xmm0
	mov eax, [ebx+0x18]
	mov [esp+0x14], eax
	mov eax, [ebx+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, [ebx+0x8]
	mov [esp+0x8], eax
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	add ebx, 0x50
	mov [esp], ebx
	call DrawText2D
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;RB_DrawText3DCmd(GfxRenderCommandExecState*)
RB_DrawText3DCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov edx, [eax+0x2c]
	mov [esp+0x14], edx
	lea edx, [eax+0x20]
	mov [esp+0x10], edx
	lea edx, [eax+0x14]
	mov [esp+0xc], edx
	lea edx, [eax+0x4]
	mov [esp+0x8], edx
	mov edx, [eax+0x10]
	mov [esp+0x4], edx
	add eax, 0x30
	mov [esp], eax
	call RB_DrawTextInSpace
	mov edx, [ebx]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;RB_BlendSavedScreenBlurredCmd(GfxRenderCommandExecState*)
RB_BlendSavedScreenBlurredCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov eax, [tess+0x22a948]
	test eax, eax
	jnz RB_BlendSavedScreenBlurredCmd_10
RB_BlendSavedScreenBlurredCmd_60:
	mov esi, gfxCmdBufSourceState
	mov ecx, rgp
	mov edx, [ebx+0x18]
	mov eax, [esi+0xf3c]
	sub eax, [ecx+edx*4+0x2100]
	js RB_BlendSavedScreenBlurredCmd_20
	mov edx, [ebx+0x4]
	cmp eax, edx
	jl RB_BlendSavedScreenBlurredCmd_30
RB_BlendSavedScreenBlurredCmd_20:
	mov edx, [edi]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [edi], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_BlendSavedScreenBlurredCmd_30:
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp], 0x40000000
	mov dword [esp+0x4], 0x3f847ae1
	call pow
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	ucomiss xmm0, [_float_0_99000001]
	jbe RB_BlendSavedScreenBlurredCmd_40
	movss xmm0, dword [_float_252_44999695]
RB_BlendSavedScreenBlurredCmd_70:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	shl eax, 0x18
	or eax, 0xffffff
	mov [ebp-0x1c], eax
	cvtsi2ss xmm0, dword [esi+0xf68]
	movss [ebp-0x30], xmm0
	mulss xmm0, [ebx+0x10]
	movss [ebp-0x30], xmm0
	cvtsi2ss xmm0, dword [esi+0xf6c]
	movss [ebp-0x2c], xmm0
	mulss xmm0, [ebx+0x14]
	movss [ebp-0x2c], xmm0
	mov eax, gfxRenderTargets
	mov eax, [eax]
	mov [esi+0xc44], eax
	call _ZN10MacDisplay11GetDeviceIDEv
	mov esi, eax
	call _ZN10MacDisplay11GetVendorIDEv
	cmp eax, 0x10de
	jz RB_BlendSavedScreenBlurredCmd_50
RB_BlendSavedScreenBlurredCmd_90:
	movss xmm2, dword [ebx+0x8]
	movss xmm1, dword [ebx+0xc]
	mov dword [esp+0x28], 0x9
	mov eax, [ebp-0x1c]
	mov [esp+0x24], eax
	movss [esp+0x20], xmm1
	movaps xmm0, xmm2
	addss xmm0, [ebx+0x10]
	movss [esp+0x1c], xmm0
	addss xmm1, [ebx+0x14]
RB_BlendSavedScreenBlurredCmd_100:
	movss [esp+0x18], xmm1
	movss [esp+0x14], xmm2
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x30]
	movss [esp+0xc], xmm0
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, rgp
	mov eax, [eax+0x20f0]
	mov [esp], eax
	call RB_DrawStretchPic
	mov edx, [edi]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [edi], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_BlendSavedScreenBlurredCmd_10:
	call RB_EndTessSurface
	jmp RB_BlendSavedScreenBlurredCmd_60
RB_BlendSavedScreenBlurredCmd_40:
	mulss xmm0, [_float_255_00000000]
	jmp RB_BlendSavedScreenBlurredCmd_70
RB_BlendSavedScreenBlurredCmd_50:
	cmp esi, 0x393
	jz RB_BlendSavedScreenBlurredCmd_80
	cmp esi, 0x395
	jz RB_BlendSavedScreenBlurredCmd_80
	cmp esi, 0x391
	jnz RB_BlendSavedScreenBlurredCmd_90
RB_BlendSavedScreenBlurredCmd_80:
	call _ZN10MacDisplay16GetIsAntialiasedEv
	test al, al
	jz RB_BlendSavedScreenBlurredCmd_90
	movss xmm1, dword [ebx+0xc]
	movss xmm2, dword [ebx+0x8]
	mov dword [esp+0x28], 0x9
	mov eax, [ebp-0x1c]
	mov [esp+0x24], eax
	movaps xmm0, xmm1
	addss xmm0, [ebx+0x14]
	movss [esp+0x20], xmm0
	movaps xmm0, xmm2
	addss xmm0, [ebx+0x10]
	movss [esp+0x1c], xmm0
	jmp RB_BlendSavedScreenBlurredCmd_100
	nop


;RB_BlendSavedScreenFlashedCmd(GfxRenderCommandExecState*)
RB_BlendSavedScreenFlashedCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov esi, [edi]
	mov eax, [tess+0x22a948]
	test eax, eax
	jnz RB_BlendSavedScreenFlashedCmd_10
RB_BlendSavedScreenFlashedCmd_30:
	movss xmm1, dword [_float_255_00000000]
	movss xmm0, dword [esi+0x4]
	mulss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x48], xmm1
	call floorf
	fstp dword [ebp-0x34]
	cvttss2si eax, [ebp-0x34]
	movzx eax, al
	mov ebx, eax
	shl ebx, 0x10
	mov edx, eax
	shl edx, 0x8
	or ebx, edx
	or ebx, eax
	movss xmm1, dword [ebp-0x48]
	mulss xmm1, [esi+0x8]
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x38]
	cvttss2si eax, [ebp-0x38]
	shl eax, 0x18
	or ebx, eax
	mov [ebp-0x1c], ebx
	mov edx, gfxCmdBufSourceState
	cvtsi2ss xmm0, dword [edx+0xf68]
	movss [ebp-0x30], xmm0
	mulss xmm0, [esi+0x14]
	movss [ebp-0x30], xmm0
	cvtsi2ss xmm0, dword [edx+0xf6c]
	movss [ebp-0x2c], xmm0
	mulss xmm0, [esi+0x18]
	movss [ebp-0x2c], xmm0
	mov eax, gfxRenderTargets
	mov eax, [eax]
	mov [edx+0xc44], eax
	call _ZN10MacDisplay11GetDeviceIDEv
	mov ebx, eax
	call _ZN10MacDisplay11GetVendorIDEv
	cmp eax, 0x10de
	jz RB_BlendSavedScreenFlashedCmd_20
RB_BlendSavedScreenFlashedCmd_50:
	movss xmm2, dword [esi+0xc]
	movss xmm1, dword [esi+0x10]
	mov dword [esp+0x28], 0x9
	mov eax, [ebp-0x1c]
	mov [esp+0x24], eax
	movss [esp+0x20], xmm1
	movaps xmm0, xmm2
	addss xmm0, [esi+0x14]
	movss [esp+0x1c], xmm0
	addss xmm1, [esi+0x18]
RB_BlendSavedScreenFlashedCmd_60:
	movss [esp+0x18], xmm1
	movss [esp+0x14], xmm2
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x30]
	movss [esp+0xc], xmm0
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, rgp
	mov eax, [eax+0x20f4]
	mov [esp], eax
	call RB_DrawStretchPic
	mov edx, [edi]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [edi], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_BlendSavedScreenFlashedCmd_10:
	call RB_EndTessSurface
	jmp RB_BlendSavedScreenFlashedCmd_30
RB_BlendSavedScreenFlashedCmd_20:
	cmp ebx, 0x393
	jz RB_BlendSavedScreenFlashedCmd_40
	cmp ebx, 0x395
	jz RB_BlendSavedScreenFlashedCmd_40
	cmp ebx, 0x391
	jnz RB_BlendSavedScreenFlashedCmd_50
RB_BlendSavedScreenFlashedCmd_40:
	call _ZN10MacDisplay16GetIsAntialiasedEv
	test al, al
	jz RB_BlendSavedScreenFlashedCmd_50
	movss xmm1, dword [esi+0x10]
	movss xmm2, dword [esi+0xc]
	mov dword [esp+0x28], 0x9
	mov eax, [ebp-0x1c]
	mov [esp+0x24], eax
	movaps xmm0, xmm1
	addss xmm0, [esi+0x18]
	movss [esp+0x20], xmm0
	movaps xmm0, xmm2
	addss xmm0, [esi+0x14]
	movss [esp+0x1c], xmm0
	jmp RB_BlendSavedScreenFlashedCmd_60


;RB_DrawPointsCmd(GfxRenderCommandExecState*)
RB_DrawPointsCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x38], eax
	cmp byte [eax+0x7], 0x2
	jz RB_DrawPointsCmd_10
	mov dword [esp+0x4], 0x4
	mov eax, rgp
	mov eax, [eax+0x203c]
	mov [esp], eax
	call RB_SetTessTechnique
	mov ebx, gfxCmdBufSourceState
	cmp dword [ebx+0xf38], 0x3
	jz RB_DrawPointsCmd_20
	mov eax, [tess+0x22a948]
	test eax, eax
	jnz RB_DrawPointsCmd_30
RB_DrawPointsCmd_130:
	mov dword [ebx+0xf38], 0x3
	lea edx, [ebx+0xcb0]
	mov dword [esp+0x8], 0x140
	mov eax, rg
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	xor eax, eax
	mov [ebx+0xef4], eax
	mov [ebx+0xef8], eax
	mov [ebx+0xefc], eax
	mov dword [ebx+0xf00], 0x3f800000
	mov [esp], ebx
	call R_CmdBufSet3D
RB_DrawPointsCmd_20:
	mov edx, [ebx+0xf0c]
	lea eax, [edx+0x80]
	mov [ebp-0x30], eax
	mov ecx, [ebp-0x38]
	movzx eax, byte [ecx+0x6]
	cvtsi2ss xmm1, eax
	cvtsi2ss xmm0, dword [ebx+0xf68]
	movaps xmm2, xmm1
	divss xmm2, xmm0
	movss [ebp-0x2c], xmm2
	cvtsi2ss xmm0, dword [ebx+0xf6c]
	divss xmm1, xmm0
	movss [ebp-0x28], xmm1
	mov ebx, ecx
	add ebx, 0x8
	cmp word [ecx+0x4], 0x0
	jle RB_DrawPointsCmd_40
	lea eax, [edx+0x90]
	mov [ebp-0x1c], eax
	lea edi, [edx+0xa0]
	lea esi, [edx+0xb0]
	mov dword [ebp-0x34], 0x0
	mov edx, [tess+0x22a94c]
	jmp RB_DrawPointsCmd_50
RB_DrawPointsCmd_80:
	mov eax, [ebp-0x1c]
RB_DrawPointsCmd_50:
	movss xmm3, dword [ebx]
	movss xmm1, dword [ebx+0x4]
	movss xmm2, dword [ebx+0x8]
	movaps xmm7, xmm3
	mov ecx, [ebp-0x30]
	mulss xmm7, [ecx]
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edi]
	addss xmm7, xmm0
	addss xmm7, [esi]
	movaps xmm5, xmm3
	mulss xmm5, [ecx+0x4]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edi+0x4]
	addss xmm5, xmm0
	addss xmm5, [esi+0x4]
	movaps xmm6, xmm3
	mulss xmm6, [ecx+0x8]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x8]
	addss xmm6, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edi+0x8]
	addss xmm6, xmm0
	addss xmm6, [esi+0x8]
	movaps xmm4, xmm3
	mulss xmm4, [ecx+0xc]
	mulss xmm1, [eax+0xc]
	addss xmm4, xmm1
	mulss xmm2, [edi+0xc]
	addss xmm4, xmm2
	addss xmm4, [esi+0xc]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm4
	movss [ebp-0x20], xmm0
	movss xmm2, dword [ebp-0x28]
	mulss xmm2, xmm4
	movss [ebp-0x24], xmm2
	movaps xmm0, xmm4
	mulss xmm0, [_float__0_00100000]
	addss xmm6, xmm0
	lea eax, [edx+0x4]
	cmp eax, 0x154a
	jg RB_DrawPointsCmd_60
	mov ecx, [tess+0x22a948]
	lea eax, [ecx+0x6]
	cmp eax, 0x100000
	jle RB_DrawPointsCmd_70
RB_DrawPointsCmd_60:
	movss [ebp-0x58], xmm4
	movss [ebp-0x68], xmm5
	movss [ebp-0x78], xmm6
	movss [ebp-0x88], xmm7
	call RB_TessOverflow
	mov edx, [tess+0x22a94c]
	mov ecx, [tess+0x22a948]
	movss xmm7, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x68]
	movss xmm4, dword [ebp-0x58]
RB_DrawPointsCmd_70:
	lea eax, [edx+0x3]
	mov [ecx+ecx+tess+0x2a940], ax
	mov [ecx+ecx+tess+0x2a942], dx
	lea eax, [edx+0x2]
	mov [ecx+ecx+tess+0x2a944], ax
	mov [ecx+ecx+tess+0x2a946], ax
	mov [ecx+ecx+tess+0x2a948], dx
	lea eax, [edx+0x1]
	mov [ecx+ecx+tess+0x2a94a], ax
	lea eax, [ecx+0x6]
	mov [tess+0x22a948], eax
	movaps xmm2, xmm5
	subss xmm2, [ebp-0x24]
	movaps xmm0, xmm7
	subss xmm0, [ebp-0x20]
	shl edx, 0x5
	lea eax, [edx+tess]
	movss [edx+tess], xmm0
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm6
	movss [eax+0xc], xmm4
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebx+0xc]
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x0
	movss xmm1, dword [ebp-0x24]
	addss xmm1, xmm5
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x20
	lea edx, [eax+tess]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	movss [edx+0x8], xmm6
	movss [edx+0xc], xmm4
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x0
	mov dword [edx+0x18], 0x3f800000
	movss xmm0, dword [ebp-0x20]
	addss xmm0, xmm7
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x40
	lea edx, [eax+tess]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	movss [edx+0x8], xmm6
	movss [edx+0xc], xmm4
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x3f800000
	mov dword [edx+0x18], 0x3f800000
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x60
	lea edx, [eax+tess]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm2
	movss [edx+0x8], xmm6
	movss [edx+0xc], xmm4
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x3f800000
	mov dword [edx+0x18], 0x0
	mov eax, [tess+0x22a94c]
	add eax, 0x4
	mov edx, eax
	mov [tess+0x22a94c], eax
	add dword [ebp-0x34], 0x1
	add ebx, 0x10
	mov ecx, [ebp-0x38]
	movsx eax, word [ecx+0x4]
	cmp eax, [ebp-0x34]
	jg RB_DrawPointsCmd_80
RB_DrawPointsCmd_40:
	call RB_EndTessSurface
RB_DrawPointsCmd_90:
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawPointsCmd_10:
	mov dword [esp+0x4], 0x4
	mov eax, rgp
	mov eax, [eax+0x2034]
	mov [esp], eax
	call RB_SetTessTechnique
	mov edx, [ebp-0x38]
	movzx eax, byte [edx+0x6]
	cvtsi2ss xmm2, eax
	mulss xmm2, [_float_0_50000000]
	mov ebx, edx
	add ebx, 0x8
	cmp word [edx+0x4], 0x0
	jle RB_DrawPointsCmd_90
	xor esi, esi
	mov edx, [tess+0x22a94c]
RB_DrawPointsCmd_120:
	lea eax, [edx+0x4]
	cmp eax, 0x154a
	jg RB_DrawPointsCmd_100
	mov ecx, [tess+0x22a948]
	lea eax, [ecx+0x6]
	cmp eax, 0x100000
	jle RB_DrawPointsCmd_110
RB_DrawPointsCmd_100:
	movss [ebp-0x48], xmm2
	call RB_TessOverflow
	mov edx, [tess+0x22a94c]
	mov ecx, [tess+0x22a948]
	movss xmm2, dword [ebp-0x48]
RB_DrawPointsCmd_110:
	lea eax, [edx+0x1]
	mov [ecx+ecx+tess+0x2a940], ax
	mov [ecx+ecx+tess+0x2a942], dx
	lea eax, [edx+0x2]
	mov [ecx+ecx+tess+0x2a944], ax
	mov [ecx+ecx+tess+0x2a946], ax
	mov [ecx+ecx+tess+0x2a948], dx
	lea eax, [edx+0x3]
	mov [ecx+ecx+tess+0x2a94a], ax
	lea eax, [ecx+0x6]
	mov [tess+0x22a948], eax
	mov ecx, [ebx+0x8]
	movss xmm1, dword [ebx+0x4]
	subss xmm1, xmm2
	shl edx, 0x5
	lea eax, [edx+tess]
	movss xmm0, dword [ebx]
	subss xmm0, xmm2
	movss [edx+tess], xmm0
	movss [eax+0x4], xmm1
	mov [eax+0x8], ecx
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebx+0xc]
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x0
	mov ecx, [ebx+0x8]
	movaps xmm1, xmm2
	addss xmm1, [ebx+0x4]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x20
	lea edx, [eax+tess]
	movss xmm0, dword [ebx]
	subss xmm0, xmm2
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ecx
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x0
	mov dword [edx+0x18], 0x3f800000
	mov ecx, [ebx+0x8]
	movaps xmm1, xmm2
	addss xmm1, [ebx+0x4]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x40
	lea edx, [eax+tess]
	movaps xmm0, xmm2
	addss xmm0, [ebx]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ecx
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x3f800000
	mov dword [edx+0x18], 0x3f800000
	mov ecx, [ebx+0x8]
	movss xmm1, dword [ebx+0x4]
	subss xmm1, xmm2
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x60
	lea edx, [eax+tess]
	movaps xmm0, xmm2
	addss xmm0, [ebx]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ecx
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x3f800000
	mov dword [edx+0x18], 0x0
	mov edx, [tess+0x22a94c]
	add edx, 0x4
	mov [tess+0x22a94c], edx
	add esi, 0x1
	add ebx, 0x10
	mov ecx, [ebp-0x38]
	movsx eax, word [ecx+0x4]
	cmp eax, esi
	jg RB_DrawPointsCmd_120
	mov eax, [ebp+0x8]
	mov edx, [eax]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawPointsCmd_30:
	call RB_EndTessSurface
	jmp RB_DrawPointsCmd_130
	nop


;RB_DrawLinesCmd(GfxRenderCommandExecState*)
RB_DrawLinesCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	cmp byte [edx+0x7], 0x2
	jz RB_DrawLinesCmd_10
	mov dword [esp+0xc], 0x1
	lea eax, [edx+0x8]
	mov [esp+0x8], eax
	movzx eax, byte [edx+0x6]
	mov [esp+0x4], eax
	movsx eax, word [edx+0x4]
	mov [esp], eax
	call RB_DrawLines3D
	mov edx, [ebx]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_DrawLinesCmd_10:
	lea eax, [edx+0x8]
	mov [esp+0x8], eax
	movzx eax, byte [edx+0x6]
	mov [esp+0x4], eax
	movsx eax, word [edx+0x4]
	mov [esp], eax
	call RB_DrawLines2D
	mov edx, [ebx]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;RB_DrawTrianglesCmd(GfxRenderCommandExecState*)
RB_DrawTrianglesCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	movsx ecx, word [eax+0xe]
	mov [ebp-0x38], ecx
	shl ecx, 0x4
	add ecx, 0x10
	mov ebx, [ebp-0x38]
	lea edx, [ebx+ebx*2]
	lea edx, [ecx+edx*4]
	lea ebx, [edx+ebx*4]
	lea esi, [eax+0x10]
	mov [ebp-0x30], esi
	lea ecx, [eax+ecx]
	mov [ebp-0x2c], ecx
	lea edx, [eax+edx]
	mov [ebp-0x28], edx
	lea edx, [eax+ebx]
	mov [ebp-0x24], edx
	mov ecx, [ebp-0x38]
	lea edx, [ebx+ecx*8]
	lea edi, [eax+edx]
	movsx ebx, word [eax+0xc]
	mov [ebp-0x34], ebx
	mov esi, [eax+0x8]
	mov ebx, [eax+0x4]
	mov ecx, [tess+0x22a948]
	test ecx, ecx
	jnz RB_DrawTrianglesCmd_10
RB_DrawTrianglesCmd_70:
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set3D
	mov [esp+0x4], esi
	mov [esp], ebx
	call RB_SetTessTechnique
	mov ecx, [tess+0x22a94c]
	mov eax, [ebp-0x38]
	add eax, ecx
	cmp eax, 0x154a
	jg RB_DrawTrianglesCmd_20
	mov eax, [ebp-0x34]
	add eax, [tess+0x22a948]
	cmp eax, 0x100000
	jg RB_DrawTrianglesCmd_20
RB_DrawTrianglesCmd_60:
	mov edx, [ebp-0x34]
	test edx, edx
	jle RB_DrawTrianglesCmd_30
	xor ebx, ebx
	mov esi, [tess+0x22a948]
RB_DrawTrianglesCmd_40:
	lea edx, [ebx+esi]
	movzx eax, word [edi+ebx*2]
	add eax, ecx
	mov [edx+edx+tess+0x2a940], ax
	add ebx, 0x1
	cmp [ebp-0x34], ebx
	jnz RB_DrawTrianglesCmd_40
RB_DrawTrianglesCmd_30:
	mov eax, [ebp-0x38]
	test eax, eax
	jg RB_DrawTrianglesCmd_50
RB_DrawTrianglesCmd_100:
	mov ebx, [ebp-0x34]
	add [tess+0x22a948], ebx
	mov eax, [ebp-0x38]
	add eax, ecx
	mov [tess+0x22a94c], eax
	call RB_EndTessSurface
	mov esi, [ebp+0x8]
	mov edx, [esi]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [esi], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawTrianglesCmd_20:
	call RB_TessOverflow
	mov ecx, [tess+0x22a94c]
	jmp RB_DrawTrianglesCmd_60
RB_DrawTrianglesCmd_10:
	call RB_EndTessSurface
	jmp RB_DrawTrianglesCmd_70
RB_DrawTrianglesCmd_50:
	mov esi, [ebp-0x28]
	mov [ebp-0x20], esi
	mov edi, [ebp-0x24]
	mov esi, [ebp-0x2c]
	mov ebx, [ebp-0x30]
	mov dword [ebp-0x1c], 0x0
	jmp RB_DrawTrianglesCmd_80
RB_DrawTrianglesCmd_90:
	mov ecx, [tess+0x22a94c]
RB_DrawTrianglesCmd_80:
	mov eax, [ebp-0x20]
	mov [esp+0x28], eax
	mov eax, [edi+0x4]
	mov [esp+0x24], eax
	mov eax, [edi]
	mov [esp+0x20], eax
	mov eax, [esi+0x8]
	mov [esp+0x1c], eax
	mov eax, [esi+0x4]
	mov [esp+0x18], eax
	mov eax, [esi]
	mov [esp+0x14], eax
	mov eax, [ebx+0xc]
	mov [esp+0x10], eax
	mov eax, [ebx+0x8]
	mov [esp+0xc], eax
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	add eax, ecx
	shl eax, 0x5
	add eax, tess
	mov [esp], eax
	call R_SetVertex4dWithNormal
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x20], 0x4
	add edi, 0x8
	add esi, 0xc
	add ebx, 0x10
	mov edx, [ebp-0x1c]
	cmp [ebp-0x38], edx
	jnz RB_DrawTrianglesCmd_90
	mov ecx, [tess+0x22a94c]
	jmp RB_DrawTrianglesCmd_100
	nop


;RB_ProjectionSetCmd(GfxRenderCommandExecState*)
RB_ProjectionSetCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, [edx+0x4]
	test eax, eax
	jz RB_ProjectionSetCmd_10
	sub eax, 0x1
	jz RB_ProjectionSetCmd_20
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_ProjectionSetCmd_10:
	mov eax, [tess+0x22a948]
	test eax, eax
	jnz RB_ProjectionSetCmd_30
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set2D
	mov edx, [ebx]
RB_ProjectionSetCmd_40:
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_ProjectionSetCmd_30:
	call RB_EndTessSurface
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set2D
	mov edx, [ebx]
	jmp RB_ProjectionSetCmd_40
RB_ProjectionSetCmd_20:
	mov eax, [tess+0x22a948]
	test eax, eax
	jnz RB_ProjectionSetCmd_50
RB_ProjectionSetCmd_60:
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set3D
	mov edx, [ebx]
	movzx eax, word [edx+0x2]
	add eax, edx
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_ProjectionSetCmd_50:
	call RB_EndTessSurface
	jmp RB_ProjectionSetCmd_60
	nop


;__static_initialization_and_destruction_0(int, int)
__static_initialization_and_destruction_0:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz __static_initialization_and_destruction_0_10
__static_initialization_and_destruction_0_20:
	pop ebp
	ret
__static_initialization_and_destruction_0_10:
	sub eax, 0x1
	jnz __static_initialization_and_destruction_0_20
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


;RB_DrawStretchPicRotate(Material const*, float, float, float, float, float, float, float, float, float, float, unsigned long, GfxPrimStatsTarget)
RB_DrawStretchPicRotate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movss [ebp-0x1c], xmm0
	movss [ebp-0x20], xmm1
	movss [ebp-0x24], xmm2
	movss [ebp-0x28], xmm3
	mov edi, edx
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call RB_SetTessTechnique
	mov ecx, [tess+0x22a94c]
	lea eax, [ecx+0x4]
	cmp eax, 0x154a
	jg RB_DrawStretchPicRotate_10
	mov edx, [tess+0x22a948]
	lea eax, [edx+0x6]
	cmp eax, 0x100000
	jle RB_DrawStretchPicRotate_20
RB_DrawStretchPicRotate_10:
	call RB_TessOverflow
	mov ecx, [tess+0x22a94c]
	mov edx, [tess+0x22a948]
RB_DrawStretchPicRotate_20:
	mov ebx, ecx
	lea eax, [ebx+0x4]
	mov [tess+0x22a94c], eax
	lea eax, [edx+0x6]
	mov [tess+0x22a948], eax
	lea eax, [ecx+0x3]
	mov [edx+edx+tess+0x2a940], ax
	mov [edx+edx+tess+0x2a942], bx
	lea eax, [ecx+0x2]
	mov [edx+edx+tess+0x2a944], ax
	mov [edx+edx+tess+0x2a946], ax
	mov [edx+edx+tess+0x2a948], bx
	lea eax, [ecx+0x1]
	mov [edx+edx+tess+0x2a94a], ax
	movss xmm2, dword [ebp-0x28]
	xorps xmm2, [_data16_80000000]
	mulss xmm2, [ebp+0x18]
	movss xmm3, dword [ebp+0x1c]
	mulss xmm3, [ebp-0x28]
	movzx ecx, cx
	shl ecx, 0x5
	lea eax, [ecx+tess]
	movss xmm0, dword [ebp-0x1c]
	movss [ecx+tess], xmm0
	movss xmm4, dword [ebp-0x20]
	movss [eax+0x4], xmm4
	xor esi, esi
	mov [eax+0x8], esi
	mov ebx, 0x3f800000
	mov [eax+0xc], ebx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], edi
	movss xmm0, dword [ebp+0x8]
	movss [eax+0x14], xmm0
	movss xmm4, dword [ebp+0xc]
	movss [eax+0x18], xmm4
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, [ebp+0x18]
	addss xmm1, [ebp-0x20]
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, [ebp+0x1c]
	addss xmm0, [ebp-0x1c]
	lea edx, [ecx+0x20]
	lea eax, [edx+tess]
	movss [edx+tess], xmm0
	movss [eax+0x4], xmm1
	mov [eax+0x8], esi
	mov [eax+0xc], ebx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], edi
	movss xmm4, dword [ebp+0x10]
	movss [eax+0x14], xmm4
	movss xmm4, dword [ebp+0xc]
	movss [eax+0x18], xmm4
	lea edx, [ecx+0x40]
	lea eax, [edx+tess]
	addss xmm0, xmm2
	movss [edx+tess], xmm0
	addss xmm1, xmm3
	movss [eax+0x4], xmm1
	mov [eax+0x8], esi
	mov [eax+0xc], ebx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], edi
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x14], xmm0
	movss xmm4, dword [ebp+0x14]
	movss [eax+0x18], xmm4
	add ecx, 0x60
	lea eax, [ecx+tess]
	addss xmm2, [ebp-0x1c]
	movss [ecx+tess], xmm2
	addss xmm3, [ebp-0x20]
	movss [eax+0x4], xmm3
	mov [eax+0x8], esi
	mov [eax+0xc], ebx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], edi
	movss xmm0, dword [ebp+0x8]
	movss [eax+0x14], xmm0
	movss [eax+0x18], xmm4
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_DrawCursor(Material const*, unsigned char, float, float, float, float, Font_s*, float, float, unsigned long)
RB_DrawCursor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, eax
	movss [ebp-0x1c], xmm0
	movss [ebp-0x20], xmm1
	movss [ebp-0x24], xmm2
	movss [ebp-0x28], xmm3
	mov esi, ecx
	movss xmm0, dword [ebp+0x8]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [ebp-0x30], xmm0
	mov eax, [ebp+0x10]
	mov [ebp-0x34], eax
	mov ebx, edx
	call CL_ScaledMilliseconds
	lea edx, [eax+0xff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	test ah, 0x1
	jnz RB_DrawCursor_10
	movzx eax, bl
	mov [esp+0x4], eax
	mov [esp], esi
	call R_GetCharacterGlyph
	mov edx, eax
	movzx eax, byte [eax+0x6]
	cvtsi2ss xmm3, eax
	mulss xmm3, [ebp-0x30]
	movzx eax, byte [edx+0x5]
	cvtsi2ss xmm2, eax
	mulss xmm2, [ebp-0x2c]
	movsx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, [ebp-0x30]
	addss xmm1, [ebp-0x20]
	mov eax, [edi+0x40]
	mov eax, [eax+0x8]
	mov ecx, [eax+0x28]
	test ecx, ecx
	jz RB_DrawCursor_20
RB_DrawCursor_40:
	mov eax, 0x1
RB_DrawCursor_50:
	test eax, eax
	jz RB_DrawCursor_30
	mov eax, [edi]
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x26
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_WarnOncePerFrame
RB_DrawCursor_30:
	movss xmm0, dword [ebp-0x28]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x10], xmm0
	mov eax, [edx+0x14]
	mov [esp+0xc], eax
	mov eax, [edx+0x10]
	mov [esp+0x8], eax
	mov eax, [edx+0xc]
	mov [esp+0x4], eax
	mov eax, [edx+0x8]
	mov [esp], eax
	mov ecx, 0x7
	mov edx, [ebp-0x34]
	movss xmm0, dword [ebp-0x1c]
	mov eax, edi
	call RB_DrawStretchPicRotate
RB_DrawCursor_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawCursor_20:
	mov eax, [eax+0x20]
	test eax, eax
	jnz RB_DrawCursor_40
	xor eax, eax
	jmp RB_DrawCursor_50


;DrawText2D(char const*, float, float, Font_s*, float, float, float, float, GfxColor, int, int, int, char, float, GfxColor, int, int, int, int, Material const*, Material const*)
DrawText2D:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov esi, [ebp+0x30]
	movzx eax, byte [ebp+0x38]
	mov [ebp-0xe9], al
	mov edx, [ebp+0x28]
	shr edx, 0x18
	mov [ebp-0xe8], dl
	mov eax, edx
	shl eax, 0x18
	mov [ebp-0xf0], eax
	mov edx, esi
	and dl, 0x1
	mov [ebp-0x85], dl
	jnz DrawText2D_10
	pxor xmm0, xmm0
	movss [ebp-0xb4], xmm0
DrawText2D_790:
	mov eax, [ebp+0x14]
	mov eax, [eax+0xc]
	mov [ebp-0xb0], eax
	test esi, 0x40
	jnz DrawText2D_20
	mov dword [ebp-0xa4], 0x1
	mov byte [ebp-0xa5], 0x0
	mov byte [ebp-0x9d], 0x0
	mov dword [ebp-0x9c], 0x0
DrawText2D_780:
	test esi, 0x10
	jnz DrawText2D_30
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0x90], 0x1
DrawText2D_320:
	movss xmm0, dword [_float__0_50000000]
	movss xmm1, dword [ebp+0x18]
	mulss xmm1, xmm0
	addss xmm1, [ebp+0xc]
	movss [ebp-0x98], xmm1
	movss xmm2, dword [ebp+0x1c]
	mulss xmm2, xmm0
	addss xmm2, [ebp+0x10]
	movss [ebp-0x94], xmm2
	mov edx, [ebp-0x90]
	test edx, edx
	jle DrawText2D_40
	mov eax, esi
	shr eax, 1
	and eax, 0x1
	mov [ebp-0xbc], eax
	mov edx, esi
	shr edx, 0x7
	and edx, 0x1
	mov [ebp-0xcc], edx
	movss xmm0, dword [ebp+0x18]
	mulss xmm0, [ebp+0x3c]
	movss [ebp-0xc8], xmm0
	movss xmm1, dword [ebp-0xb4]
	mulss xmm1, [ebp+0x18]
	movss [ebp-0xb8], xmm1
	mov eax, esi
	shr eax, 0x8
	and eax, 0x1
	mov [ebp-0xd4], eax
	mov edx, esi
	shr edx, 0x5
	and edx, 0x1
	mov [ebp-0x5c], edx
	shr esi, 0x2
	mov edi, esi
	and edi, 0x1
	mov [ebp-0xc4], edi
	shr esi, 1
	mov eax, esi
	and eax, 0x1
	mov [ebp-0xc0], eax
	cvtsi2ss xmm0, dword [ebp+0x50]
	divss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [_float_30_00000000]
	cvttss2si edx, xmm0
	mov [ebp-0x68], edx
	shr esi, 0x6
	mov [ebp-0xd0], esi
	and dword [ebp-0xd0], 0x1
	mov dword [ebp-0x8c], 0x0
	movzx edi, byte [ebp-0xe9]
	mov [ebp-0xfc], edi
DrawText2D_150:
	mov eax, [ebp-0xa4]
	mov [ebp-0x24], eax
	mov edx, [ebp+0x28]
	mov [ebp-0x20], edx
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebp-0x98]
	movss [ebp-0x3c], xmm0
	movss xmm1, dword [ebp-0x94]
	movss [ebp-0x40], xmm1
	mov edx, [ebp+0x2c]
	mov [ebp-0x84], edx
	mov byte [ebp-0x7c], 0x0
	mov dword [ebp-0x80], 0x0
DrawText2D_310:
	cmp byte [eax], 0x0
	jz DrawText2D_50
DrawText2D_120:
	mov esi, [ebp-0x84]
	test esi, esi
	jz DrawText2D_50
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call SEH_ReadCharFromString
	mov ebx, eax
	cmp eax, 0x5e
	jz DrawText2D_60
DrawText2D_430:
	cmp byte [ebp-0xa5], 0x0
	jz DrawText2D_70
	cmp dword [ebp-0x84], 0x1
	jz DrawText2D_80
DrawText2D_70:
	mov byte [ebp-0x7a], 0x0
DrawText2D_680:
	cmp ebx, 0x5e
	jz DrawText2D_90
	cmp ebx, 0xa
	jz DrawText2D_100
	cmp ebx, 0xd
	jnz DrawText2D_110
	movss xmm1, dword [ebp-0x98]
	movss [ebp-0x3c], xmm1
	mov eax, [ebp-0x1c]
	cmp byte [eax], 0x0
	jnz DrawText2D_120
DrawText2D_50:
	mov ebx, [ebp-0xbc]
	test ebx, ebx
	jz DrawText2D_130
	mov eax, [ebp-0x80]
	cmp [ebp+0x34], eax
	jz DrawText2D_140
DrawText2D_130:
	add dword [ebp-0x8c], 0x1
	mov eax, [ebp-0x8c]
	cmp [ebp-0x90], eax
	jnz DrawText2D_150
DrawText2D_40:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawText2D_80:
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_FontGetRandomLetter
	mov ebx, eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call RandWithSeed
	test al, 0x1
	jz DrawText2D_160
	mov byte [ebp-0x7a], 0xc0
	mov byte [ebp-0x79], 0x1
	mov ebx, 0x4f
	cmp byte [ebp-0x9d], 0x0
	jnz DrawText2D_170
DrawText2D_330:
	mov esi, ebx
	mov byte [ebp-0x7b], 0x0
DrawText2D_550:
	cmp byte [ebp-0x79], 0x0
	jnz DrawText2D_180
DrawText2D_360:
	mov dword [ebp-0x78], 0x0
	mov [esp+0x4], esi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call R_GetCharacterGlyph
	mov edi, eax
	cmp esi, ebx
	jz DrawText2D_190
DrawText2D_370:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_GetCharacterGlyph
	movzx edx, byte [eax+0x5]
	cvtsi2ss xmm1, edx
	mulss xmm1, [_float_0_50000000]
	movzx edx, byte [edi+0x5]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float__0_50000000]
	addss xmm1, xmm0
	movzx eax, byte [eax+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x74], xmm0
DrawText2D_380:
	movsx eax, byte [edi+0x2]
	cvtsi2ss xmm2, eax
	addss xmm2, xmm1
	mulss xmm2, [ebp+0x18]
	movsx eax, byte [edi+0x3]
	cvtsi2ss xmm3, eax
	mulss xmm3, [ebp+0x1c]
	mov ebx, [ebp-0x20]
	cmp byte [ebp-0x9d], 0x0
	jnz DrawText2D_200
	cmp byte [ebp-0xa5], 0x0
	jz DrawText2D_210
	cmp dword [ebp-0x84], 0x1
	jz DrawText2D_200
DrawText2D_210:
	cmp byte [ebp-0x7b], 0x0
	jnz DrawText2D_220
	mov eax, [ebp-0x8c]
	test eax, eax
	jnz DrawText2D_230
	mov eax, [ebp-0xc4]
	test eax, eax
	jnz DrawText2D_240
	addss xmm2, [ebp-0x3c]
	movss [ebp-0x48], xmm2
	addss xmm3, [ebp-0x40]
	movss [ebp-0x44], xmm3
	movaps xmm1, xmm3
DrawText2D_640:
	subss xmm2, [ebp-0x98]
	movss xmm4, dword [ebp+0x24]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0x98]
	addss xmm0, xmm4
	movss [ebp-0x64], xmm0
	subss xmm1, [ebp-0x94]
	movss xmm0, dword [ebp+0x20]
	mulss xmm0, xmm1
	movss xmm5, dword [ebp-0x64]
	subss xmm5, xmm0
	mulss xmm2, [ebp+0x20]
	movss [ebp-0x60], xmm2
	movss xmm4, dword [ebp+0x24]
	mulss xmm4, xmm1
	addss xmm4, [ebp-0x94]
	addss xmm4, xmm2
	cmp byte [ebp-0x79], 0x0
	jnz DrawText2D_250
	movzx eax, byte [edi+0x6]
	cvtsi2ss xmm3, eax
	mulss xmm3, [ebp+0x1c]
	movzx eax, byte [edi+0x5]
	cvtsi2ss xmm2, eax
	mulss xmm2, [ebp+0x18]
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz DrawText2D_260
	mov eax, [eax+0x20]
	test eax, eax
	jnz DrawText2D_260
	xor eax, eax
	test eax, eax
	jz DrawText2D_270
DrawText2D_580:
	mov edi, [ebp-0xb0]
	mov eax, [edi]
	mov [esp+0x4], eax
	mov dword [esp], 0x26
	call R_WarnOncePerFrame
DrawText2D_590:
	mov edi, [ebp-0xbc]
	test edi, edi
	jz DrawText2D_220
	mov eax, [ebp-0x80]
	cmp [ebp+0x34], eax
	jz DrawText2D_280
DrawText2D_220:
	cmp byte [ebp-0x85], 0x0
	jz DrawText2D_290
	movss xmm2, dword [ebp-0x3c]
	addss xmm2, [ebp-0xb8]
	movss [ebp-0x3c], xmm2
DrawText2D_470:
	mov edi, [ebp-0xcc]
	test edi, edi
	jz DrawText2D_300
	movss xmm1, dword [ebp-0x3c]
	addss xmm1, [ebp-0xc8]
	movss [ebp-0x3c], xmm1
DrawText2D_300:
	add dword [ebp-0x80], 0x1
	sub dword [ebp-0x84], 0x1
	mov eax, [ebp-0x1c]
	jmp DrawText2D_310
DrawText2D_30:
	mov edx, [ebp+0x14]
	mov edx, [edx+0x10]
	mov [ebp-0xac], edx
	mov dword [ebp-0x90], 0x2
	jmp DrawText2D_320
DrawText2D_110:
	mov byte [ebp-0x79], 0x0
	cmp byte [ebp-0x9d], 0x0
	jz DrawText2D_330
DrawText2D_170:
	movzx eax, byte [ebp-0x1d]
	mov [ebp-0x69], al
	lea eax, [ebp-0x24]
	mov [esp], eax
	call RandWithSeed
	mov ecx, eax
	mov eax, [ebp+0x50]
	cdq
	idiv dword [ebp-0x68]
	mov edi, eax
	mov eax, ecx
	cdq
	idiv dword [ebp-0x68]
	imul edi, edx
	cmp [ebp-0x9c], edi
	jl DrawText2D_340
	mov esi, ebx
	mov byte [ebp-0x7b], 0x1
	mov byte [ebp-0x79], 0x0
	movss xmm1, dword [_float_255_00000000]
DrawText2D_570:
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0xf8]
	cvttss2si edx, [ebp-0xf8]
	cmp edx, 0xfe
	jle DrawText2D_350
	mov eax, 0xffffffff
	mov [ebp-0x7a], al
	cmp byte [ebp-0x79], 0x0
	jz DrawText2D_360
DrawText2D_180:
	mov eax, [ebp-0x24]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call RandWithSeed
	mov [ebp-0x78], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call R_GetCharacterGlyph
	mov edi, eax
	cmp esi, ebx
	jnz DrawText2D_370
DrawText2D_190:
	movzx eax, byte [eax+0x4]
	cvtsi2ss xmm1, eax
	movss [ebp-0x74], xmm1
	pxor xmm1, xmm1
	jmp DrawText2D_380
DrawText2D_90:
	mov esi, [ebp-0x1c]
	movzx ecx, byte [esi]
	lea eax, [ecx-0x1]
	cmp al, 0x1
	ja DrawText2D_110
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x98]
	movss xmm2, dword [ebp-0x40]
	subss xmm2, [ebp-0x94]
	movss xmm5, dword [ebp+0x24]
	mulss xmm5, xmm0
	addss xmm5, [ebp-0x98]
	movss xmm1, dword [ebp+0x20]
	mulss xmm1, xmm2
	subss xmm5, xmm1
	movss xmm1, dword [ebp+0x24]
	mulss xmm1, xmm2
	addss xmm1, [ebp-0x94]
	mulss xmm0, [ebp+0x20]
	addss xmm1, xmm0
	mov edx, [ebp-0x20]
	sub cl, 0x1
	jz DrawText2D_390
	movss xmm2, dword [_float_1_00000000]
	movss [ebp-0x70], xmm2
	xor edi, edi
	mov eax, [ebp+0x14]
	mov ebx, [eax+0x4]
	movsx eax, byte [esi+0x1]
	sub eax, 0x10
	imul eax, ebx
	mov ecx, eax
	add ecx, 0x10
	js DrawText2D_400
DrawText2D_720:
	sar ecx, 0x5
	cvtsi2ss xmm4, ecx
	mulss xmm4, [ebp+0x18]
	movsx eax, byte [esi+0x2]
	sub eax, 0x10
	imul eax, ebx
	mov ecx, eax
	add ecx, 0x10
	js DrawText2D_410
DrawText2D_730:
	sar ecx, 0x5
	cvtsi2ss xmm3, ecx
	mulss xmm3, [ebp+0x1c]
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp+0x1c]
	addss xmm0, xmm3
	mulss xmm0, [_float__0_50000000]
	mov eax, [esi+0x3]
	movss xmm2, dword [ebp+0x24]
	movss [esp+0x14], xmm2
	movss xmm2, dword [ebp+0x20]
	movss [esp+0x10], xmm2
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	movss xmm2, dword [ebp-0x70]
	movss [esp], xmm2
	mov ecx, 0x7
	movaps xmm2, xmm4
	addss xmm1, xmm0
	movaps xmm0, xmm5
	movss [ebp-0x118], xmm4
	call RB_DrawStretchPicRotate
	movss xmm4, dword [ebp-0x118]
	addss xmm4, [ebp-0x3c]
	movss [ebp-0x3c], xmm4
	mov eax, [ebp-0xcc]
	test eax, eax
	jz DrawText2D_420
	addss xmm4, [ebp-0xc8]
	movss [ebp-0x3c], xmm4
DrawText2D_420:
	mov eax, [ebp-0x1c]
	add eax, 0x7
	mov [ebp-0x1c], eax
	add dword [ebp-0x80], 0x1
	sub dword [ebp-0x84], 0x1
	jmp DrawText2D_310
DrawText2D_60:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz DrawText2D_430
	movzx eax, byte [eax]
	cmp al, 0x5e
	jz DrawText2D_430
	cmp al, 0x2f
	jle DrawText2D_430
	cmp al, 0x39
	jg DrawText2D_430
	movzx eax, al
	mov [esp], eax
	call ColorIndex
	mov ebx, eax
	mov dword [esp], 0x37
	call ColorIndex
	cmp bl, al
	jz DrawText2D_440
	mov eax, [ebp-0xd4]
	test eax, eax
	jz DrawText2D_450
	mov eax, [ebp-0x1c]
	movzx eax, byte [eax]
	mov [esp], eax
	call ColorIndex
	cmp al, 0x2
	jz DrawText2D_460
DrawText2D_450:
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	movzx eax, byte [eax]
	mov [esp], eax
	call RB_LookupColor
	movzx edx, byte [ebp-0x28]
	shl edx, 0x10
	movzx eax, byte [ebp-0x27]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ebp-0x26]
	or edx, eax
	movzx eax, byte [ebp-0xe8]
	shl eax, 0x18
	or edx, eax
	mov [ebp-0x20], edx
	mov byte [ebp-0x7c], 0x0
DrawText2D_800:
	mov eax, [ebp-0x1c]
	add eax, 0x1
	mov [ebp-0x1c], eax
	add dword [ebp-0x80], 0x2
	jmp DrawText2D_310
DrawText2D_200:
	mov eax, ebx
	shr eax, 0x18
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_255_00000000]
	movzx eax, byte [ebp-0x7a]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_255_00000000]
	mulss xmm1, xmm0
	mulss xmm1, [_float_255_00000000]
	cvttss2si eax, xmm1
	shl eax, 0x18
	and ebx, 0xffffff
	or ebx, eax
	jmp DrawText2D_210
DrawText2D_290:
	movss xmm4, dword [ebp-0x74]
	mulss xmm4, [ebp+0x18]
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, xmm4
	movss [ebp-0x3c], xmm0
	jmp DrawText2D_470
DrawText2D_100:
	mov eax, [ebp+0x14]
	cvtsi2ss xmm0, dword [eax+0x4]
	mulss xmm0, [ebp+0x1c]
	addss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x98]
	movss [ebp-0x3c], xmm0
	mov eax, [ebp-0x1c]
	jmp DrawText2D_310
DrawText2D_230:
	cmp dword [ebp-0x8c], 0x1
	jnz DrawText2D_220
	mov esi, [ebp-0xd4]
	test esi, esi
	jz DrawText2D_480
	cmp byte [ebp-0x7c], 0x0
	jz DrawText2D_220
DrawText2D_480:
	mov edx, ebx
	mov ecx, [ebp-0x5c]
	test ecx, ecx
	jz DrawText2D_490
	mov eax, [ebp+0x40]
	and eax, bg_itemlist+0x1c60
	and ebx, 0xff00ffff
	or ebx, eax
	mov edx, [ebp+0x40]
	movzx eax, dh
	mov bh, al
	mov bl, [ebp+0x40]
DrawText2D_750:
	addss xmm2, [ebp-0x3c]
	movzx eax, byte [edi+0x5]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float__0_75000000]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	mulss xmm0, [ebp+0x18]
	addss xmm0, xmm2
	movss [ebp-0x50], xmm0
	addss xmm3, [ebp-0x40]
	movss [ebp-0x4c], xmm3
	movzx eax, byte [edi+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float__0_12500000]
	mulss xmm0, xmm1
	mulss xmm0, [ebp+0x1c]
	addss xmm0, xmm3
	movss [ebp-0x4c], xmm0
	mov eax, [ebp-0x78]
	and eax, 0x8000000f
	js DrawText2D_500
DrawText2D_830:
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_06250000]
	mulss xmm1, xmm0
	movss [ebp-0x58], xmm1
	movss xmm2, dword [_float_0_06250000]
	addss xmm2, xmm1
	movss [ebp-0x54], xmm2
	mov esi, _ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E10MY_OFFSETS
DrawText2D_540:
	movss xmm0, dword [esi]
	addss xmm0, xmm0
	mulss xmm0, [ebp+0x18]
	addss xmm0, [ebp-0x50]
	subss xmm0, [ebp-0x98]
	movss xmm1, dword [esi+0x4]
	addss xmm1, xmm1
	mulss xmm1, [ebp+0x1c]
	addss xmm1, [ebp-0x4c]
	subss xmm1, [ebp-0x94]
	movss xmm5, dword [ebp+0x24]
	mulss xmm5, xmm0
	addss xmm5, [ebp-0x98]
	movss xmm2, dword [ebp+0x20]
	mulss xmm2, xmm1
	subss xmm5, xmm2
	movss xmm4, dword [ebp+0x24]
	mulss xmm4, xmm1
	addss xmm4, [ebp-0x94]
	mulss xmm0, [ebp+0x20]
	addss xmm4, xmm0
	cmp byte [ebp-0x79], 0x0
	jnz DrawText2D_510
	movzx eax, byte [edi+0x6]
	cvtsi2ss xmm3, eax
	mulss xmm3, [ebp+0x1c]
	mulss xmm3, [_float_1_12500000]
	movzx eax, byte [edi+0x5]
	cvtsi2ss xmm2, eax
	mulss xmm2, [ebp+0x18]
	mulss xmm2, [_float_1_75000000]
	mov edx, [ebp-0xac]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz DrawText2D_520
	mov eax, [eax+0x20]
	test eax, eax
	jnz DrawText2D_520
	xor eax, eax
	test eax, eax
	jz DrawText2D_530
DrawText2D_660:
	mov edx, [ebp-0xac]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov dword [esp], 0x26
	call R_WarnOncePerFrame
DrawText2D_670:
	add esi, 0x8
	cmp esi, _ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E10MY_OFFSETS+0x20
	jnz DrawText2D_540
	jmp DrawText2D_220
DrawText2D_350:
	xor eax, eax
	test edx, edx
	cmovg eax, edx
	mov [ebp-0x7a], al
	jmp DrawText2D_550
DrawText2D_340:
	mov eax, [ebp-0x9c]
	add eax, 0x3c
	cmp edi, eax
	jle DrawText2D_560
	mov esi, ebx
	mov byte [ebp-0x7b], 0x0
	mov byte [ebp-0x79], 0x0
	movss xmm1, dword [_float_255_00000000]
	jmp DrawText2D_570
DrawText2D_260:
	mov eax, 0x1
	test eax, eax
	jnz DrawText2D_580
DrawText2D_270:
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp+0x20]
	movss [esp+0x10], xmm1
	mov eax, [edi+0x14]
	mov [esp+0xc], eax
	mov eax, [edi+0x10]
	mov [esp+0x8], eax
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	mov [esp], eax
	mov ecx, 0x7
	mov edx, ebx
	movaps xmm1, xmm4
	movaps xmm0, xmm5
	mov eax, [ebp-0xb0]
	call RB_DrawStretchPicRotate
	jmp DrawText2D_590
DrawText2D_240:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz DrawText2D_600
	movss xmm1, dword [_float_2_00000000]
DrawText2D_700:
	addss xmm2, [ebp-0x3c]
	movss [ebp-0x48], xmm2
	addss xmm3, [ebp-0x40]
	movss [ebp-0x44], xmm3
	addss xmm2, xmm1
	subss xmm2, [ebp-0x98]
	addss xmm1, xmm3
	subss xmm1, [ebp-0x94]
	movss xmm5, dword [ebp+0x24]
	mulss xmm5, xmm2
	addss xmm5, [ebp-0x98]
	movss xmm0, dword [ebp+0x20]
	mulss xmm0, xmm1
	subss xmm5, xmm0
	movss xmm4, dword [ebp+0x24]
	mulss xmm4, xmm1
	addss xmm4, [ebp-0x94]
	mulss xmm2, [ebp+0x20]
	addss xmm4, xmm2
	cmp byte [ebp-0x79], 0x0
	jnz DrawText2D_610
	movzx eax, byte [edi+0x6]
	cvtsi2ss xmm3, eax
	mulss xmm3, [ebp+0x1c]
	movzx eax, byte [edi+0x5]
	cvtsi2ss xmm2, eax
	mulss xmm2, [ebp+0x18]
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov esi, [eax+0x28]
	test esi, esi
	jnz DrawText2D_620
	mov ecx, [eax+0x20]
	test ecx, ecx
	jnz DrawText2D_620
	xor eax, eax
	test eax, eax
	jnz DrawText2D_630
DrawText2D_650:
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp+0x20]
	movss [esp+0x10], xmm1
	mov eax, [edi+0x14]
	mov [esp+0xc], eax
	mov eax, [edi+0x10]
	mov [esp+0x8], eax
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	mov [esp], eax
	mov ecx, 0x7
	mov edx, [ebp-0xf0]
	movaps xmm1, xmm4
	movaps xmm0, xmm5
	mov eax, [ebp-0xb0]
	call RB_DrawStretchPicRotate
	movss xmm2, dword [ebp-0x48]
	movss xmm1, dword [ebp-0x44]
	jmp DrawText2D_640
DrawText2D_620:
	mov eax, 0x1
	test eax, eax
	jz DrawText2D_650
DrawText2D_630:
	mov edx, [ebp-0xb0]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov dword [esp], 0x26
	call R_WarnOncePerFrame
	movss xmm2, dword [ebp-0x48]
	movss xmm1, dword [ebp-0x44]
	jmp DrawText2D_640
DrawText2D_520:
	mov eax, 0x1
	test eax, eax
	jnz DrawText2D_660
DrawText2D_530:
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp+0x20]
	movss [esp+0x10], xmm1
	mov eax, [edi+0x14]
	mov [esp+0xc], eax
	mov eax, [edi+0x10]
	mov [esp+0x8], eax
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	mov [esp], eax
	mov ecx, 0x7
	mov edx, ebx
	movaps xmm1, xmm4
	movaps xmm0, xmm5
	mov eax, [ebp-0xac]
	call RB_DrawStretchPicRotate
	jmp DrawText2D_670
DrawText2D_160:
	mov byte [ebp-0x7a], 0xc0
	jmp DrawText2D_680
DrawText2D_250:
	mov eax, [ebp-0x78]
	and eax, 0x8000000f
	js DrawText2D_690
DrawText2D_810:
	cvtsi2ss xmm1, eax
	mulss xmm1, [_float_0_06250000]
	movzx eax, byte [edi+0x6]
	cvtsi2ss xmm3, eax
	movzx eax, byte [edi+0x5]
	cvtsi2ss xmm2, eax
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp+0x20]
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3f800000
	movaps xmm0, xmm1
	addss xmm0, [_float_0_06250000]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	movss [esp], xmm1
	mov ecx, 0x7
	mov edx, ebx
	mulss xmm3, [ebp+0x1c]
	mulss xmm2, [ebp+0x18]
	movaps xmm1, xmm4
	movaps xmm0, xmm5
	mov eax, [ebp+0x54]
	call RB_DrawStretchPicRotate
	jmp DrawText2D_590
DrawText2D_510:
	movzx eax, byte [edi+0x6]
	cvtsi2ss xmm1, eax
	movzx eax, byte [edi+0x5]
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp+0x24]
	movss [esp+0x14], xmm2
	movss xmm2, dword [ebp+0x20]
	movss [esp+0x10], xmm2
	mov dword [esp+0xc], 0x3f800000
	movss xmm2, dword [ebp-0x54]
	movss [esp+0x8], xmm2
	mov dword [esp+0x4], 0x0
	movss xmm2, dword [ebp-0x58]
	movss [esp], xmm2
	mov ecx, 0x7
	mov edx, ebx
	movss xmm3, dword [ebp+0x1c]
	mulss xmm3, xmm1
	movss xmm2, dword [ebp+0x18]
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	movaps xmm0, xmm5
	mov eax, [ebp+0x58]
	call RB_DrawStretchPicRotate
	jmp DrawText2D_670
DrawText2D_600:
	movss xmm1, dword [_float_1_00000000]
	jmp DrawText2D_700
DrawText2D_560:
	mov edx, [ebp+0x44]
	lea eax, [ebx+edx]
	add eax, [ebp-0x9c]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call RandWithSeed
	test al, 0x1
	jz DrawText2D_710
	mov esi, 0x4f
	mov byte [ebp-0x79], 0x1
DrawText2D_820:
	mov eax, [ebp-0x9c]
	sub eax, edi
	add eax, 0x3c
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_60_00000000]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movzx eax, byte [ebp-0x69]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_255_00000000]
	mulss xmm1, xmm0
	mulss xmm1, [_float_255_00000000]
	mov byte [ebp-0x7b], 0x0
	jmp DrawText2D_570
DrawText2D_390:
	pxor xmm0, xmm0
	movss [ebp-0x70], xmm0
	mov edi, 0x3f800000
	mov eax, [ebp+0x14]
	mov ebx, [eax+0x4]
	movsx eax, byte [esi+0x1]
	sub eax, 0x10
	imul eax, ebx
	mov ecx, eax
	add ecx, 0x10
	jns DrawText2D_720
DrawText2D_400:
	lea ecx, [eax+0x2f]
	sar ecx, 0x5
	cvtsi2ss xmm4, ecx
	mulss xmm4, [ebp+0x18]
	movsx eax, byte [esi+0x2]
	sub eax, 0x10
	imul eax, ebx
	mov ecx, eax
	add ecx, 0x10
	jns DrawText2D_730
DrawText2D_410:
	lea ecx, [eax+0x2f]
	jmp DrawText2D_730
DrawText2D_610:
	mov eax, [ebp-0x78]
	and eax, 0x8000000f
	js DrawText2D_740
DrawText2D_840:
	cvtsi2ss xmm1, eax
	mulss xmm1, [_float_0_06250000]
	movzx eax, byte [edi+0x6]
	cvtsi2ss xmm3, eax
	movzx eax, byte [edi+0x5]
	cvtsi2ss xmm2, eax
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp+0x20]
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3f800000
	movaps xmm0, xmm1
	addss xmm0, [_float_0_06250000]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	movss [esp], xmm1
	mov ecx, 0x7
	mov edx, [ebp-0xf0]
	mulss xmm3, [ebp+0x1c]
	mulss xmm2, [ebp+0x18]
	movaps xmm1, xmm4
	movaps xmm0, xmm5
	mov eax, [ebp+0x54]
	call RB_DrawStretchPicRotate
	movss xmm2, dword [ebp-0x48]
	movss xmm1, dword [ebp-0x44]
	jmp DrawText2D_640
DrawText2D_490:
	mov eax, ebx
	shr eax, 0x10
	movzx eax, al
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_06000000]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	movzx eax, al
	shl eax, 0x10
	and ebx, 0xff00ffff
	or ebx, eax
	movzx eax, dh
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov bh, al
	movzx eax, dl
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov bl, al
	jmp DrawText2D_750
DrawText2D_20:
	mov dword [ebp-0x24], 0x1
	mov eax, gfxCmdBufSourceState
	mov edi, [eax+0xf3c]
	sub edi, [ebp+0x44]
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SEH_PrintStrlen
	mov ecx, eax
	cmp [ebp+0x2c], eax
	cmovl ecx, [ebp+0x2c]
	mov edx, [ebp+0x48]
	imul edx, ecx
	mov eax, [ebp+0x4c]
	add eax, [ebp+0x50]
	cmp edi, eax
	jg DrawText2D_40
	cmp edi, edx
	jl DrawText2D_760
	cmp [ebp+0x4c], edi
	jl DrawText2D_770
	mov byte [ebp-0xa5], 0x0
	mov byte [ebp-0x9d], 0x0
	mov dword [ebp-0x9c], 0x0
DrawText2D_860:
	mov eax, [ebp-0x24]
	mov [ebp-0xa4], eax
	jmp DrawText2D_780
DrawText2D_10:
	mov dword [esp+0x4], 0x6f
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_GetCharacterGlyph
	movzx eax, byte [eax+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0xb4], xmm0
	jmp DrawText2D_790
DrawText2D_140:
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x98]
	movss xmm4, dword [ebp-0x40]
	subss xmm4, [ebp-0x94]
	movss xmm1, dword [ebp+0x24]
	mulss xmm1, xmm4
	addss xmm1, [ebp-0x94]
	movss xmm5, dword [ebp+0x20]
	mulss xmm5, xmm0
	mulss xmm0, [ebp+0x24]
	addss xmm0, [ebp-0x98]
	mulss xmm4, [ebp+0x20]
	mov edx, [ebp+0x28]
	mov [esp+0x8], edx
	movss xmm2, dword [ebp+0x1c]
	movss [esp+0x4], xmm2
	movss xmm2, dword [ebp+0x18]
	movss [esp], xmm2
	mov ecx, [ebp+0x14]
	movss xmm3, dword [ebp+0x24]
	movss xmm2, dword [ebp+0x20]
	addss xmm1, xmm5
	subss xmm0, xmm4
	mov edx, [ebp-0xfc]
	mov eax, [ebp-0xb0]
	call RB_DrawCursor
	jmp DrawText2D_130
DrawText2D_280:
	movss xmm0, dword [ebp-0x40]
	subss xmm0, [ebp-0x94]
	movss xmm1, dword [ebp+0x24]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x94]
	mulss xmm0, [ebp+0x20]
	mov [esp+0x8], ebx
	movss xmm2, dword [ebp+0x1c]
	movss [esp+0x4], xmm2
	movss xmm4, dword [ebp+0x18]
	movss [esp], xmm4
	mov ecx, [ebp+0x14]
	movss xmm3, dword [ebp+0x24]
	movss xmm2, dword [ebp+0x20]
	addss xmm1, [ebp-0x60]
	movss xmm4, dword [ebp-0x64]
	subss xmm4, xmm0
	movaps xmm0, xmm4
	mov edx, [ebp-0xfc]
	mov eax, [ebp-0xb0]
	call RB_DrawCursor
	jmp DrawText2D_220
DrawText2D_440:
	mov edi, [ebp+0x28]
	mov [ebp-0x20], edi
	mov byte [ebp-0x7c], 0x0
	jmp DrawText2D_800
DrawText2D_690:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp DrawText2D_810
DrawText2D_710:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_FontGetRandomLetter
	mov esi, eax
	mov byte [ebp-0x79], 0x0
	jmp DrawText2D_820
DrawText2D_500:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp DrawText2D_830
DrawText2D_740:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp DrawText2D_840
DrawText2D_460:
	mov ecx, _ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E25MY_ALTCOLOR_TWO_CINEMATIC
	mov eax, [ebp-0xd0]
	test eax, eax
	mov eax, _ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E15MY_ALTCOLOR_TWO
	cmovz ecx, eax
	movzx edx, byte [ecx]
	shl edx, 0x10
	movzx eax, byte [ecx+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ecx+0x2]
	or edx, eax
	movzx eax, byte [ecx+0x3]
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_255_00000000]
	movzx eax, byte [ebp-0xe8]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_255_00000000]
	mulss xmm1, xmm0
	mulss xmm1, [_float_255_00000000]
	cvttss2si eax, xmm1
	shl eax, 0x18
	or edx, eax
	mov [ebp-0x20], edx
	mov byte [ebp-0x7c], 0x1
	jmp DrawText2D_800
DrawText2D_760:
	mov eax, edi
	cdq
	idiv dword [ebp+0x48]
	mov [ebp-0xf4], eax
	mov eax, [ebp+0x48]
	imul eax, [ebp-0xf4]
	mov ebx, edi
	sub ebx, eax
	mov eax, [ebp+0x48]
	lea edx, [eax+0x3]
	cmp eax, 0xffffffff
	cmovle eax, edx
	mov edx, eax
	sar edx, 0x2
	jnz DrawText2D_850
DrawText2D_870:
	mov edx, [ebp+0x44]
	lea eax, [ecx+edx]
	lea eax, [ebx+eax]
	add eax, [ebp-0xf4]
	mov [ebp-0x24], eax
	lea ebx, [ebp-0x24]
	mov [esp], ebx
	call RandWithSeed
	mov [esp], ebx
	call RandWithSeed
	mov edi, [ebp-0xf4]
	add edi, 0x1
	mov [ebp+0x2c], edi
	mov byte [ebp-0xa5], 0x1
	mov byte [ebp-0x9d], 0x0
	mov dword [ebp-0x9c], 0x0
	jmp DrawText2D_860
DrawText2D_850:
	mov eax, ebx
	mov edi, edx
	cdq
	idiv edi
	mov ebx, eax
	jmp DrawText2D_870
DrawText2D_770:
	mov edx, [ebp+0x44]
	lea eax, [ecx+edx]
	mov [ebp-0x24], eax
	lea ebx, [ebp-0x24]
	mov [esp], ebx
	call RandWithSeed
	mov [esp], ebx
	call RandWithSeed
	mov eax, [ebp+0x4c]
	sub edi, eax
	mov [ebp-0x9c], edi
	mov byte [ebp-0xa5], 0x0
	mov byte [ebp-0x9d], 0x1
	jmp DrawText2D_860
	nop


;RB_EndFrame(unsigned int)
RB_EndFrame:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	test byte [ebp+0x8], 0x2
	jnz RB_EndFrame_10
RB_EndFrame_40:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
RB_EndFrame_10:
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x44]
	test eax, eax
	js RB_EndFrame_20
RB_EndFrame_50:
	mov edx, dx_ctx
	mov eax, [edx+0x2c54]
	mov ecx, [edx+eax*4+0x2c34]
	mov [edx+0x2cd4], ecx
	add eax, 0x1
	and eax, 0x7
	mov [edx+0x2c54], eax
	mov eax, [ecx]
	mov dword [esp+0x4], 0x1
	mov [esp], ecx
	call dword [eax+0x18]
	mov eax, gfxBuf
	mov eax, [eax+0x48]
	mov dword [eax], 0x0
	mov eax, r_gamma
	mov edx, [eax]
	cmp byte [edx+0xb], 0x0
	jnz RB_EndFrame_30
	mov eax, r_ignoreHwGamma
	mov eax, [eax]
	cmp byte [eax+0xb], 0x0
	jz RB_EndFrame_40
RB_EndFrame_30:
	mov [esp], edx
	call Cvar_ClearModified
	mov ebx, r_ignoreHwGamma
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_ClearModified
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jnz RB_EndFrame_40
	add esp, 0x24
	pop ebx
	pop ebp
	jmp R_SetColorMappings
RB_EndFrame_20:
	cmp eax, 0x88760868
	jz RB_EndFrame_50
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_direct3ddevice9p
	mov dword [esp], 0x1
	call Com_Error
	jmp RB_EndFrame_50


;R_DrawSurfs(GfxCmdBufContext, GfxCmdBufState*, GfxDrawSurfListInfo const*)
R_DrawSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x6c], 0x0
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0x8]
	mov [ebp-0x4c], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x48], edx
	mov dword [edx+0xa08], 0x0
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call R_SetDrawSurfsShadowableLight
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_Set3D
	mov edx, [ebp-0x4c]
	cmp byte [edx+0xf70], 0x0
	jnz R_DrawSurfs_10
	mov eax, edx
R_DrawSurfs_200:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	mov edx, 0x0
	cmovnz edx, [ebp-0x4c]
	mov [ebp-0x44], edx
	mov ecx, [ebx+0x4]
	mov [ebp-0x64], ecx
	mov [ebp-0x28], eax
	mov edx, [ebp-0x48]
	mov [ebp-0x24], edx
	mov dword [ebp-0x20], 0x0
	mov [ebp-0x1c], ebx
	xor ecx, ecx
	mov edx, [ebp-0x64]
	test edx, edx
	jnz R_DrawSurfs_20
	jmp R_DrawSurfs_30
R_DrawSurfs_80:
	mov eax, pixelCostMode
	mov eax, [eax]
	test eax, eax
	setnz byte [ebp-0x4d]
	cmp byte [ebp-0x4d], 0x0
	jnz R_DrawSurfs_40
R_DrawSurfs_170:
	mov ecx, [ebp-0x38]
	mov [ebp-0x40], ecx
	mov eax, [ebp-0x24]
	mov eax, [eax+0xc0]
	cmp word [eax+0x6], 0x0
	jnz R_DrawSurfs_50
	xor edi, edi
R_DrawSurfs_140:
	cmp byte [ebp-0x4d], 0x0
	jnz R_DrawSurfs_60
R_DrawSurfs_110:
	mov ecx, edi
	add ecx, [ebp-0x20]
	mov [ebp-0x20], ecx
	cmp [ebp-0x64], ecx
	jz R_DrawSurfs_70
R_DrawSurfs_20:
	mov eax, [ebp+0x10]
	mov [ebp-0x6c], eax
	mov edx, [ebp-0x44]
	mov [ebp-0x70], edx
	mov eax, [ebp-0x70]
	mov edx, [ebp-0x6c]
	mov [ebp-0x38], eax
	mov [ebp-0x34], edx
	mov edx, [ebp-0x1c]
	mov ebx, [edx+0x4]
	sub ebx, ecx
	mov eax, [edx]
	lea ecx, [eax+ecx*8]
	mov [ebp-0x58], ecx
	mov esi, [ecx]
	mov edi, [ecx+0x4]
	mov [esp+0x10], esi
	mov [esp+0x14], edi
	mov [esp+0xc], edx
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupMaterial
	test eax, eax
	jnz R_DrawSurfs_80
	mov [esp+0x4], ebx
	mov edx, [ebp-0x58]
	mov [esp], edx
	call R_SkipDrawSurfListMaterial
	mov edi, eax
	mov ecx, edi
	add ecx, [ebp-0x20]
	mov [ebp-0x20], ecx
	cmp [ebp-0x64], ecx
	jnz R_DrawSurfs_20
R_DrawSurfs_70:
	mov ecx, [ebp-0x4c]
R_DrawSurfs_180:
	mov eax, [ebp+0x10]
	mov [ebp-0x6c], eax
	mov edx, [ebp-0x44]
	mov [ebp-0x70], edx
	mov [ebp+0x8], ecx
	mov eax, [ebp-0x48]
	mov [ebp+0xc], eax
	mov ebx, ecx
	mov edx, [ebp-0x70]
	mov ecx, [ebp-0x6c]
	mov [ebp-0x78], edx
	mov [ebp-0x74], ecx
	mov [ebp-0x3c], ecx
	mov dword [ebx+0xf08], 0x0
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call R_ChangeDepthHackNearClip
	mov edi, [ebp-0x48]
	cmp dword [ebx+0xf34], 0x1
	sbb edx, edx
	cmp edx, [edi+0xcc]
	jz R_DrawSurfs_90
	mov [esp+0x4], edx
	mov [esp], edi
	call R_ChangeDepthRange
R_DrawSurfs_90:
	mov edi, [ebp-0x3c]
	test edi, edi
	jz R_DrawSurfs_100
	mov eax, [ebp-0x44]
	mov [ebp-0x78], eax
	mov edx, [ebp-0x6c]
	mov [ebp-0x74], edx
	cmp dword [eax+0xf34], 0x1
	sbb eax, eax
	mov ecx, [ebp-0x3c]
	cmp eax, [ecx+0xcc]
	jz R_DrawSurfs_100
	mov [esp+0x4], eax
	mov [esp], edx
	call R_ChangeDepthRange
R_DrawSurfs_100:
	mov edx, [ebp-0x48]
	mov dword [edx+0xa08], 0x0
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DrawSurfs_60:
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_PixelCost_EndSurface
	jmp R_DrawSurfs_110
R_DrawSurfs_50:
	mov eax, edi
	shr eax, 0x12
	mov ebx, eax
	and ebx, 0xf
	mov dword [ebp-0x54], 0x0
	jmp R_DrawSurfs_120
R_DrawSurfs_150:
	mov eax, [ebp-0x34]
	test eax, eax
	jz R_DrawSurfs_130
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPass
	mov edx, [ebp-0x34]
R_DrawSurfs_160:
	mov eax, [ebx*4+rb_tessTable]
	mov [ebp-0x5c], edx
	mov edx, [ebp-0x40]
	mov [ebp-0x60], edx
	mov edx, [ebp-0x60]
	mov ecx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov [esp+0x8], ecx
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call eax
	mov edi, eax
	add dword [ebp-0x54], 0x1
	mov eax, [ebp-0x24]
	mov eax, [eax+0xc0]
	movzx eax, word [eax+0x6]
	cmp [ebp-0x54], eax
	jae R_DrawSurfs_140
R_DrawSurfs_120:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x28]
	mov [esp], eax
	call R_UpdateMaterialTime
	mov eax, [ebp-0x54]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPass
	mov eax, [ebp-0x54]
	test eax, eax
	jz R_DrawSurfs_150
R_DrawSurfs_130:
	xor edx, edx
	jmp R_DrawSurfs_160
R_DrawSurfs_40:
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_PixelCost_BeginSurface
	jmp R_DrawSurfs_170
R_DrawSurfs_30:
	mov ecx, eax
	jmp R_DrawSurfs_180
R_DrawSurfs_10:
	lea ecx, [ebp-0x38]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_GetViewport
	lea edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call R_SetViewport
	mov esi, [ebp+0x10]
	test esi, esi
	jz R_DrawSurfs_190
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call R_SetViewport
R_DrawSurfs_190:
	lea ecx, [ebp-0x38]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_UpdateViewport
	mov eax, [ebp-0x4c]
	jmp R_DrawSurfs_200


;RB_BeginFrame(void const*)
RB_BeginFrame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov [backEndData], edx
	test byte [edx+0x11e770], 0x1
	jz RB_BeginFrame_10
	mov eax, r_glob
	add dword [eax], 0x1
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jz RB_BeginFrame_20
RB_BeginFrame_80:
	mov edx, [backEndData]
	mov eax, [edx+0xf0220]
	test eax, eax
	jz RB_BeginFrame_30
	mov eax, gfxBuf
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov ecx, [ebp-0x20]
	jmp RB_BeginFrame_40
RB_BeginFrame_50:
	mov ecx, eax
RB_BeginFrame_40:
	movzx eax, word [edx+ecx*2+0xf0020]
	mov [esp], eax
	call R_GetCachedSModelSurf
	mov ebx, eax
	movzx eax, word [eax+0x4]
	mov [esp+0x4], eax
	mov eax, rgp
	mov eax, [eax+0x20a0]
	movzx edx, word [ebx+0x6]
	mov ecx, [eax+0x29c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov eax, [ecx+eax*4+0x38]
	mov [esp], eax
	call XModelGetStaticModelCacheVertCount
	mov edi, eax
	mov esi, eax
	shl esi, 0x5
	mov dword [esp+0xc], 0x1000
	mov [esp+0x8], esi
	mov eax, [ebx]
	shl eax, 0x5
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call R_LockVertexBuffer
	mov [esp+0x8], esi
	mov edx, [ebp-0x1c]
	shl edx, 0x5
	mov ecx, [backEndData]
	lea edx, [edx+ecx+0xb0020]
	mov [esp+0x4], edx
	mov [esp], eax
	call Com_Memcpy
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call R_UnlockVertexBuffer
	add [ebp-0x1c], edi
	add dword [ebp-0x20], 0x1
	mov edx, [backEndData]
	mov eax, [ebp-0x20]
	cmp eax, [edx+0xf0220]
	jb RB_BeginFrame_50
RB_BeginFrame_30:
	mov eax, [edx+0x118228]
	mov [esp+0x4], eax
	lea eax, [edx+0xf0228]
	mov [esp], eax
	call RB_PatchModelLighting
	mov eax, dx_ctx
	mov byte [eax+0x2c6d], 0x1
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa4]
	call RB_UploadShaderStep
	call R_Cinematic_UpdateFrame
	mov dword [tess+0x22a948], 0x0
	mov dword [tess+0x22a94c], 0x0
RB_BeginFrame_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_BeginFrame_20:
	mov eax, r_texFilterAnisoMax
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jz RB_BeginFrame_60
RB_BeginFrame_100:
	call R_SetTexFilter
RB_BeginFrame_110:
	mov ebx, r_showPixelCost
	mov eax, [ebx]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jnz RB_BeginFrame_70
RB_BeginFrame_90:
	mov eax, r_aaAlpha
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jz RB_BeginFrame_80
	mov eax, gfxMetrics
	cmp byte [eax+0x27], 0x0
	jz RB_BeginFrame_80
	mov eax, gfxCmdBufState
	mov edx, [eax+0x9e4]
	mov [esp+0x4], edx
	mov eax, [eax+0x90]
	mov [esp], eax
	call R_SetAlphaAntiAliasingState
	jmp RB_BeginFrame_80
RB_BeginFrame_70:
	mov eax, [ebx]
	mov edx, [eax+0xc]
	test edx, edx
	jnz RB_BeginFrame_90
	call R_PixelCost_PrintColorCodeKey
	jmp RB_BeginFrame_90
RB_BeginFrame_60:
	mov eax, r_texFilterDisable
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jnz RB_BeginFrame_100
	mov eax, r_texFilterAnisoMin
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jnz RB_BeginFrame_100
	mov eax, r_texFilterMipMode
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jnz RB_BeginFrame_100
	mov eax, r_texFilterMipBias
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jz RB_BeginFrame_110
	jmp RB_BeginFrame_100


;R_SetVertex2d(GfxVertex*, float, float, float, float, unsigned long)
R_SetVertex2d:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [eax], edx
	mov edx, [ebp+0x10]
	mov [eax+0x4], edx
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebp+0x1c]
	mov [eax+0x10], edx
	mov edx, [ebp+0x14]
	mov [eax+0x14], edx
	mov edx, [ebp+0x18]
	mov [eax+0x18], edx
	pop ebp
	ret


;RB_DrawLines2D(int, int, GfxPointVertex const*)
RB_DrawLines2D:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], 0x4
	mov eax, rgp
	mov eax, [eax+0x2034]
	mov [esp], eax
	call RB_SetTessTechnique
	mov eax, [ebp+0x8]
	test eax, eax
	jg RB_DrawLines2D_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawLines2D_10:
	xor edi, edi
	mov esi, [ebp+0x10]
	add esi, 0x10
	mov ebx, [ebp+0x10]
	add ebx, 0x4
RB_DrawLines2D_40:
	movss xmm0, dword [esi+0x4]
	subss xmm0, [ebx]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebx-0x4]
	subss xmm0, [esi]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Vec2Normalize
	fstp st0
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x1c], xmm0
	mov edx, [tess+0x22a94c]
	lea eax, [edx+0x4]
	cmp eax, 0x154a
	jg RB_DrawLines2D_20
	mov ecx, [tess+0x22a948]
	lea eax, [ecx+0x6]
	cmp eax, 0x100000
	jle RB_DrawLines2D_30
RB_DrawLines2D_20:
	call RB_TessOverflow
	mov edx, [tess+0x22a94c]
	mov ecx, [tess+0x22a948]
RB_DrawLines2D_30:
	lea eax, [edx+0x1]
	mov [ecx+ecx+tess+0x2a940], ax
	mov [ecx+ecx+tess+0x2a942], dx
	lea eax, [edx+0x2]
	mov [ecx+ecx+tess+0x2a944], ax
	mov [ecx+ecx+tess+0x2a946], ax
	mov [ecx+ecx+tess+0x2a948], dx
	lea eax, [edx+0x3]
	mov [ecx+ecx+tess+0x2a94a], ax
	lea eax, [ecx+0x6]
	mov [tess+0x22a948], eax
	mov ecx, [ebx+0x4]
	movss xmm1, dword [ebx]
	subss xmm1, [ebp-0x1c]
	shl edx, 0x5
	lea eax, [edx+tess]
	movss xmm0, dword [ebx-0x4]
	subss xmm0, [ebp-0x20]
	movss [edx+tess], xmm0
	movss [eax+0x4], xmm1
	mov [eax+0x8], ecx
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov edx, [ebx+0x8]
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x0
	mov ecx, [esi+0x8]
	movss xmm1, dword [esi+0x4]
	subss xmm1, [ebp-0x1c]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x20
	lea edx, [eax+tess]
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x20]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ecx
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0x18]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x0
	mov dword [edx+0x18], 0x3f800000
	mov ecx, [esi+0x8]
	movss xmm1, dword [esi+0x4]
	addss xmm1, [ebp-0x1c]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x40
	lea edx, [eax+tess]
	movss xmm0, dword [esi]
	addss xmm0, [ebp-0x20]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ecx
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0x18]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x3f800000
	mov dword [edx+0x18], 0x3f800000
	mov ecx, [ebx+0x4]
	movss xmm1, dword [ebx]
	addss xmm1, [ebp-0x1c]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x60
	lea edx, [eax+tess]
	movss xmm0, dword [ebx-0x4]
	addss xmm0, [ebp-0x20]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ecx
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0x8]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x3f800000
	mov dword [edx+0x18], 0x0
	add dword [tess+0x22a94c], 0x4
	add edi, 0x1
	add ebx, 0x20
	add esi, 0x20
	cmp [ebp+0x8], edi
	jnz RB_DrawLines2D_40
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_DrawLines3D(int, int, GfxPointVertex const*, unsigned char)
RB_DrawLines3D:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	cmp byte [ebp+0x14], 0x0
	jz RB_DrawLines3D_10
	mov dword [esp+0x4], 0x4
	mov eax, rgp
	mov eax, [eax+0x2040]
	mov [esp], eax
	call RB_SetTessTechnique
RB_DrawLines3D_50:
	mov ebx, gfxCmdBufSourceState
	cmp dword [ebx+0xf38], 0x3
	jz RB_DrawLines3D_20
	mov edi, [tess+0x22a948]
	test edi, edi
	jnz RB_DrawLines3D_30
RB_DrawLines3D_60:
	mov dword [ebx+0xf38], 0x3
	lea edx, [ebx+0xcb0]
	mov dword [esp+0x8], 0x140
	mov eax, rg
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	xor eax, eax
	mov [ebx+0xef4], eax
	mov [ebx+0xef8], eax
	mov [ebx+0xefc], eax
	mov dword [ebx+0xf00], 0x3f800000
	mov [esp], ebx
	call R_CmdBufSet3D
RB_DrawLines3D_20:
	mov eax, [ebx+0xf0c]
	lea edi, [eax+0x80]
	cvtsi2ss xmm0, dword [ebp+0xc]
	cvtsi2ss xmm1, dword [ebx+0xf68]
	movaps xmm2, xmm0
	divss xmm2, xmm1
	movss [ebp-0x68], xmm2
	cvtsi2ss xmm1, dword [ebx+0xf6c]
	divss xmm0, xmm1
	movss [ebp-0x64], xmm0
	mov esi, [ebp+0x8]
	test esi, esi
	jg RB_DrawLines3D_40
	call RB_EndTessSurface
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawLines3D_10:
	mov dword [esp+0x4], 0x4
	mov eax, rgp
	mov eax, [eax+0x2044]
	mov [esp], eax
	call RB_SetTessTechnique
	jmp RB_DrawLines3D_50
RB_DrawLines3D_30:
	call RB_EndTessSurface
	jmp RB_DrawLines3D_60
RB_DrawLines3D_40:
	lea edx, [eax+0x90]
	mov [ebp-0x48], edx
	lea ecx, [eax+0xa0]
	mov [ebp-0x44], ecx
	add eax, 0xb0
	mov [ebp-0x40], eax
	mov ebx, [ebp+0x10]
	add ebx, 0x10
	mov esi, ebx
	mov dword [ebp-0x6c], 0x0
	mov ecx, eax
	jmp RB_DrawLines3D_70
RB_DrawLines3D_100:
	mov edx, [ebp-0x48]
	mov ecx, [ebp-0x40]
RB_DrawLines3D_70:
	lea eax, [ebx-0x10]
	mov [ebp-0x3c], eax
	movss xmm6, dword [ebx-0x10]
	movss xmm1, dword [ebx-0xc]
	movss xmm0, dword [edx]
	movss [ebp-0x7c], xmm0
	movss xmm2, dword [ebx-0x8]
	mov eax, [ebp-0x44]
	movss xmm0, dword [eax]
	movss [ebp-0x78], xmm0
	mov eax, [ebp-0x40]
	movss xmm0, dword [eax]
	movss [ebp-0x98], xmm0
	movss xmm0, dword [edi]
	mulss xmm0, xmm6
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x4c]
	addss xmm0, [ebp-0x98]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x74], xmm0
	mov eax, [ebp-0x44]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x70], xmm0
	mov eax, [ebp-0x40]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x94], xmm0
	movss xmm0, dword [edi+0x4]
	mulss xmm0, xmm6
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x50]
	addss xmm0, [ebp-0x94]
	movss [ebp-0x50], xmm0
	movss xmm5, dword [edx+0x8]
	mov eax, [ebp-0x44]
	movss xmm7, dword [eax+0x8]
	mov edx, [ebp-0x40]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x90], xmm0
	movss xmm0, dword [edi+0x8]
	mulss xmm0, xmm6
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm5
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm7
	addss xmm0, [ebp-0x54]
	addss xmm0, [ebp-0x90]
	movss [ebp-0x54], xmm0
	mov eax, [ebp-0x48]
	movss xmm3, dword [eax+0xc]
	mov edx, [ebp-0x44]
	movss xmm4, dword [edx+0xc]
	movss xmm0, dword [ecx+0xc]
	movss [ebp-0x8c], xmm0
	mulss xmm6, [edi+0xc]
	mulss xmm1, xmm3
	addss xmm1, xmm6
	mulss xmm2, xmm4
	addss xmm2, xmm1
	addss xmm2, xmm0
	movss [ebp-0x58], xmm2
	movss xmm1, dword [esi+0x4]
	movss xmm2, dword [esi+0x8]
	movss xmm6, dword [edi]
	mulss xmm6, [esi]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss [ebp-0x5c], xmm6
	movss xmm6, dword [ebp-0x78]
	mulss xmm6, xmm2
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, xmm6
	movss xmm6, dword [ebp-0x98]
	addss xmm6, xmm0
	movss [ebp-0x5c], xmm6
	movss xmm6, dword [edi+0x4]
	mulss xmm6, [esi]
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm2
	addss xmm6, xmm0
	addss xmm6, [ebp-0x94]
	movss xmm0, dword [edi+0x8]
	mulss xmm0, [esi]
	mulss xmm5, xmm1
	addss xmm5, xmm0
	mulss xmm7, xmm2
	addss xmm7, xmm5
	movss xmm0, dword [ebp-0x90]
	addss xmm0, xmm7
	movss [ebp-0x60], xmm0
	movss xmm5, dword [edi+0xc]
	mulss xmm5, [esi]
	mulss xmm3, xmm1
	addss xmm5, xmm3
	mulss xmm4, xmm2
	addss xmm5, xmm4
	addss xmm5, [ebp-0x8c]
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0x50]
	mulss xmm1, xmm5
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0x58]
	mulss xmm1, [ebp-0x5c]
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	movss [ebp-0xa8], xmm5
	movss [ebp-0xb8], xmm6
	call Vec2Normalize
	fstp st0
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	movss xmm2, dword [ebp-0x64]
	mulss xmm2, [ebp-0x1c]
	movss [ebp-0x1c], xmm2
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm2
	movss [ebp-0x2c], xmm0
	movss xmm5, dword [ebp-0xa8]
	mulss xmm1, xmm5
	movss [ebp-0x28], xmm1
	mulss xmm2, xmm5
	movss [ebp-0x24], xmm2
	mov edx, [tess+0x22a94c]
	lea eax, [edx+0x4]
	cmp eax, 0x154a
	movss xmm6, dword [ebp-0xb8]
	jg RB_DrawLines3D_80
	mov ecx, [tess+0x22a948]
	lea eax, [ecx+0x6]
	cmp eax, 0x100000
	jle RB_DrawLines3D_90
RB_DrawLines3D_80:
	movss [ebp-0xa8], xmm5
	movss [ebp-0xb8], xmm6
	call RB_TessOverflow
	mov edx, [tess+0x22a94c]
	mov ecx, [tess+0x22a948]
	movss xmm6, dword [ebp-0xb8]
	movss xmm5, dword [ebp-0xa8]
RB_DrawLines3D_90:
	lea eax, [edx+0x3]
	mov [ecx+ecx+tess+0x2a940], ax
	mov [ecx+ecx+tess+0x2a942], dx
	lea eax, [edx+0x2]
	mov [ecx+ecx+tess+0x2a944], ax
	mov [ecx+ecx+tess+0x2a946], ax
	mov [ecx+ecx+tess+0x2a948], dx
	lea eax, [edx+0x1]
	mov [ecx+ecx+tess+0x2a94a], ax
	lea eax, [ecx+0x6]
	mov [tess+0x22a948], eax
	movss xmm1, dword [ebp-0x50]
	subss xmm1, [ebp-0x2c]
	shl edx, 0x5
	lea eax, [edx+tess]
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [ebp-0x30]
	movss [edx+tess], xmm0
	movss [eax+0x4], xmm1
	movss xmm0, dword [ebp-0x54]
	movss [eax+0x8], xmm0
	movss xmm2, dword [ebp-0x58]
	movss [eax+0xc], xmm2
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov ecx, [ebp-0x3c]
	mov edx, [ecx+0xc]
	mov [eax+0x10], edx
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x0
	movaps xmm1, xmm6
	subss xmm1, [ebp-0x24]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x20
	lea edx, [eax+tess]
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x28]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	movss xmm0, dword [ebp-0x60]
	movss [edx+0x8], xmm0
	movss [edx+0xc], xmm5
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x0
	mov dword [edx+0x18], 0x3f800000
	addss xmm6, [ebp-0x24]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x40
	lea edx, [eax+tess]
	movss xmm2, dword [ebp-0x5c]
	addss xmm2, [ebp-0x28]
	movss [eax+tess], xmm2
	movss [edx+0x4], xmm6
	movss [edx+0x8], xmm0
	movss [edx+0xc], xmm5
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ebx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x3f800000
	mov dword [edx+0x18], 0x3f800000
	movss xmm6, dword [ebp-0x50]
	addss xmm6, [ebp-0x2c]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x60
	lea edx, [eax+tess]
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, [ebp-0x30]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm6
	movss xmm2, dword [ebp-0x54]
	movss [edx+0x8], xmm2
	movss xmm6, dword [ebp-0x58]
	movss [edx+0xc], xmm6
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov eax, [ecx+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x3f800000
	mov dword [edx+0x18], 0x0
	add dword [tess+0x22a94c], 0x4
	add dword [ebp-0x6c], 0x1
	add esi, 0x20
	add ebx, 0x20
	mov eax, [ebp-0x6c]
	cmp [ebp+0x8], eax
	jnz RB_DrawLines3D_100
	call RB_EndTessSurface
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_LookupColor(unsigned char, unsigned char*)
RB_LookupColor:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	movzx ebx, byte [ebp+0x8]
	movzx eax, bl
	mov [esp], eax
	call ColorIndex
	movzx eax, al
	cmp eax, 0x7
	ja RB_LookupColor_10
	mov eax, [eax*4+_ZZ14RB_LookupColorhPhE11color_table]
	mov edx, [ebp+0xc]
	mov [edx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_LookupColor_10:
	cmp bl, 0x38
	jz RB_LookupColor_20
	cmp bl, 0x39
	jz RB_LookupColor_30
	mov eax, [ebp+0xc]
	mov dword [eax], 0xffffffff
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_LookupColor_20:
	mov eax, rg
	cmp dword [eax+0x21d4], 0x2
	jz RB_LookupColor_40
RB_LookupColor_50:
	add eax, 0x21cc
RB_LookupColor_60:
	mov eax, [eax]
	mov edx, [ebp+0xc]
	mov [edx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_LookupColor_30:
	mov eax, rg
	cmp dword [eax+0x21d4], 0x2
	jz RB_LookupColor_50
RB_LookupColor_40:
	add eax, 0x21d0
	jmp RB_LookupColor_60


;RB_SetIdentity()
RB_SetIdentity:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, gfxCmdBufSourceState
	cmp dword [ebx+0xf38], 0x3
	jz RB_SetIdentity_10
	mov eax, [tess+0x22a948]
	test eax, eax
	jnz RB_SetIdentity_20
RB_SetIdentity_30:
	mov dword [ebx+0xf38], 0x3
	lea edx, [ebx+0xcb0]
	mov dword [esp+0x8], 0x140
	mov eax, rg
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	xor eax, eax
	mov [ebx+0xef4], eax
	mov [ebx+0xef8], eax
	mov [ebx+0xefc], eax
	mov dword [ebx+0xf00], 0x3f800000
	mov [esp], ebx
	call R_CmdBufSet3D
RB_SetIdentity_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_SetIdentity_20:
	call RB_EndTessSurface
	jmp RB_SetIdentity_30
	nop


;RB_SetBspImages()
RB_SetBspImages:
	push ebp
	mov ebp, esp
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov ecx, gfxCmdBufInput
	mov eax, [edx+0x21c]
	mov [ecx+0x3e4], eax
	mov eax, [edx+0x28]
	mov [ecx+0x3d8], eax
	movzx eax, byte [edx+0x2c]
	mov [ecx+0x41a], al
	pop ebp
	ret
	nop


;RB_SetGammaRamp(GfxGammaRamp const*)
RB_SetGammaRamp:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x610
	mov ecx, [ebp+0x8]
	lea esi, [ebp-0x608]
	mov edx, esi
	lea ebx, [ebp-0x408]
RB_SetGammaRamp_10:
	movzx eax, word [ecx]
	mov [edx], ax
	mov [edx+0x200], ax
	mov [edx+0x400], ax
	add ecx, 0x2
	add edx, 0x2
	cmp edx, ebx
	jnz RB_SetGammaRamp_10
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov eax, [eax+0x2c70]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x54]
	add esp, 0x610
	pop ebx
	pop esi
	pop ebp
	ret


;R_InsertGpuFence()
R_InsertGpuFence:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, dx_ctx
	mov eax, [ebx+0x2c88]
	mov edx, [eax]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x18]
	mov byte [ebx+0x2ca4], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;RB_DrawStretchPic(Material const*, float, float, float, float, float, float, float, float, unsigned long, GfxPrimStatsTarget)
RB_DrawStretchPic:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x20]
	mov esi, [ebp+0x2c]
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call RB_SetTessTechnique
	mov ebx, [tess+0x22a94c]
	lea eax, [ebx+0x4]
	cmp eax, 0x154a
	jg RB_DrawStretchPic_10
	mov ecx, [tess+0x22a948]
	lea eax, [ecx+0x6]
	cmp eax, 0x100000
	jle RB_DrawStretchPic_20
RB_DrawStretchPic_10:
	call RB_TessOverflow
	mov ebx, [tess+0x22a94c]
	mov ecx, [tess+0x22a948]
RB_DrawStretchPic_20:
	mov edx, ebx
	lea eax, [edx+0x3]
	mov [ecx+ecx+tess+0x2a940], ax
	mov [ecx+ecx+tess+0x2a942], bx
	lea eax, [edx+0x2]
	mov [ecx+ecx+tess+0x2a944], ax
	mov [ecx+ecx+tess+0x2a946], ax
	mov [ecx+ecx+tess+0x2a948], bx
	add edx, 0x1
	mov [ecx+ecx+tess+0x2a94a], dx
	mov edx, ebx
	shl edx, 0x5
	lea eax, [edx+tess]
	movss xmm0, dword [ebp+0xc]
	movss [edx+tess], xmm0
	movss xmm1, dword [ebp+0x10]
	movss [eax+0x4], xmm1
	xor ebx, ebx
	mov [eax+0x8], ebx
	mov ecx, 0x3f800000
	mov [eax+0xc], ecx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], esi
	movss xmm0, dword [ebp+0x1c]
	movss [eax+0x14], xmm0
	mov [eax+0x18], edi
	movss xmm0, dword [ebp+0xc]
	addss xmm0, [ebp+0x14]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x20
	lea edx, [eax+tess]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ebx
	mov [edx+0xc], ecx
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov [edx+0x10], esi
	movss xmm1, dword [ebp+0x24]
	movss [edx+0x14], xmm1
	mov [edx+0x18], edi
	movss xmm1, dword [ebp+0x10]
	addss xmm1, [ebp+0x18]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x40
	lea edx, [eax+tess]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ebx
	mov [edx+0xc], ecx
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov [edx+0x10], esi
	movss xmm0, dword [ebp+0x24]
	movss [edx+0x14], xmm0
	movss xmm0, dword [ebp+0x28]
	movss [edx+0x18], xmm0
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x60
	lea edx, [eax+tess]
	movss xmm0, dword [ebp+0xc]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ebx
	mov [edx+0xc], ecx
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov [edx+0x10], esi
	movss xmm1, dword [ebp+0x1c]
	movss [edx+0x14], xmm1
	movss xmm0, dword [ebp+0x28]
	movss [edx+0x18], xmm0
	add dword [tess+0x22a94c], 0x4
	add dword [tess+0x22a948], 0x6
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_InitCodeImages()
RB_InitCodeImages:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, gfxCmdBufInput
	mov ebx, rgp
	mov edx, [ebx+0x200c]
	mov [eax+0x3a0], edx
	mov byte [eax+0x40c], 0x1
	mov ecx, rg
	mov dword [ecx+0x2270], 0x0
	mov edx, [ebx+0x2008]
	mov [eax+0x3a4], edx
	mov byte [eax+0x40d], 0x1
	mov dword [ecx+0x2274], 0x0
	mov edx, [ebx+0x201c]
	mov [eax+0x3a8], edx
	mov byte [eax+0x40e], 0x1
	mov dword [ecx+0x2278], 0x0
	mov dword [eax+0x3ac], 0x0
	mov byte [eax+0x40f], 0xe2
	mov dword [ecx+0x227c], 0x0
	mov esi, gfxRenderTargets
	mov edx, [esi+0xb4]
	mov [eax+0x3b8], edx
	mov byte [eax+0x412], 0x62
	mov dword [ecx+0x2288], _cstring_shadowcookiesamp
	mov edx, gfxMetrics
	movzx ebx, byte [edx+0x24]
	mov edx, [esi+0x104]
	mov [eax+0x3bc], edx
	mov [eax+0x413], bl
	mov dword [ecx+0x228c], _cstring_shadowmapsampler
	mov dword [eax+0x3c0], 0x0
	mov [eax+0x414], bl
	mov dword [ecx+0x2290], _cstring_shadowmapsampler1
	mov dword [eax+0x3c4], 0x0
	mov byte [eax+0x415], 0x62
	mov dword [ecx+0x2294], _cstring_feedbacksampler
	mov dword [eax+0x3c8], 0x0
	mov byte [eax+0x416], 0x62
	mov dword [ecx+0x2298], 0x0
	mov dword [eax+0x3cc], 0x0
	mov byte [eax+0x417], 0x62
	mov dword [ecx+0x229c], 0x0
	mov edx, [esi+0xdc]
	mov [eax+0x3d0], edx
	mov byte [eax+0x418], 0x62
	mov dword [ecx+0x22a0], _cstring_posteffect0
	mov edx, [esi+0xf0]
	mov [eax+0x3d4], edx
	mov byte [eax+0x419], 0x62
	mov dword [ecx+0x22a4], _cstring_posteffect1
	mov dword [eax+0x3d8], 0x0
	mov byte [eax+0x41a], 0x0
	mov dword [ecx+0x22a8], _cstring_samplersky
	mov dword [eax+0x3dc], 0x0
	mov byte [eax+0x41b], 0x0
	mov dword [ecx+0x22ac], _cstring_attenuationsampl
	mov dword [eax+0x3e0], 0x0
	mov byte [eax+0x41c], 0x62
	mov dword [ecx+0x22b0], 0x0
	mov dword [eax+0x3e4], 0x0
	mov byte [eax+0x41d], 0x62
	mov dword [ecx+0x22b4], 0x0
	mov edx, [esi+0x64]
	mov [eax+0x3e8], edx
	mov byte [eax+0x41e], 0x61
	mov dword [ecx+0x22b8], 0x0
	mov dword [eax+0x3f8], 0x0
	mov byte [eax+0x422], 0x62
	mov dword [ecx+0x22c8], _cstring_cinematicy
	mov dword [eax+0x3fc], 0x0
	mov byte [eax+0x423], 0x62
	mov dword [ecx+0x22cc], _cstring_cinematiccr
	mov dword [eax+0x400], 0x0
	mov byte [eax+0x424], 0x62
	mov dword [ecx+0x22d0], _cstring_cinematiccb
	mov dword [eax+0x404], 0x0
	mov byte [eax+0x425], 0x62
	mov dword [ecx+0x22d4], _cstring_cinematica
	pop ebx
	pop esi
	pop ebp
	ret


;RB_DrawTextInSpace(char const*, Font_s*, float const*, float const*, float const*, unsigned long)
RB_DrawTextInSpace:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	mov [ebp-0x60], eax
	mov ecx, [tess+0x22a948]
	test ecx, ecx
	jnz RB_DrawTextInSpace_10
RB_DrawTextInSpace_70:
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set3D
	movss xmm1, dword [_float__0_50000000]
	mov edx, [ebp+0x14]
	movss xmm0, dword [edx]
	mulss xmm0, xmm1
	movss [ebp-0x2c], xmm0
	addss xmm0, [ebx]
	movss [ebp-0x2c], xmm0
	add edx, 0x4
	mov [ebp-0x5c], edx
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	movss [ebp-0x30], xmm0
	addss xmm0, [ebx+0x4]
	movss [ebp-0x30], xmm0
	add eax, 0x8
	mov [ebp-0x58], eax
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, xmm1
	movss [ebp-0x34], xmm0
	addss xmm0, [ebx+0x8]
	movss [ebp-0x34], xmm0
	mov eax, [ebp+0x18]
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	add eax, 0x4
	mov [ebp-0x54], eax
	mov edx, [ebp+0x18]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	add edx, 0x8
	mov [ebp-0x50], edx
	mov eax, [ebp+0x18]
	mulss xmm1, [eax+0x8]
	addss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz RB_DrawTextInSpace_20
RB_DrawTextInSpace_60:
	mov edx, [tess+0x22a948]
	test edx, edx
	jz RB_DrawTextInSpace_30
	call RB_EndTessSurface
RB_DrawTextInSpace_30:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawTextInSpace_20:
	mov dword [esp+0x4], 0x0
	lea edx, [ebp+0x8]
	mov [esp], edx
	call SEH_ReadCharFromString
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_GetCharacterGlyph
	mov [ebp-0x64], eax
	mov edx, eax
	movsx eax, byte [eax+0x2]
	cvtsi2ss xmm0, eax
	mov eax, [ebp+0x14]
	movss xmm1, dword [eax]
	movss [ebp-0x70], xmm1
	movaps xmm5, xmm1
	mulss xmm5, xmm0
	addss xmm5, [ebp-0x2c]
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	movss [ebp-0x6c], xmm1
	movaps xmm6, xmm1
	mulss xmm6, xmm0
	addss xmm6, [ebp-0x30]
	mov eax, [ebp-0x58]
	movss xmm4, dword [eax]
	movaps xmm7, xmm0
	mulss xmm7, xmm4
	addss xmm7, [ebp-0x34]
	movsx eax, byte [edx+0x3]
	cvtsi2ss xmm0, eax
	mov edx, [ebp+0x18]
	movss xmm3, dword [edx]
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	addss xmm5, xmm1
	mov eax, [ebp-0x54]
	movss xmm2, dword [eax]
	movaps xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm6, xmm1
	mov edx, [ebp-0x50]
	movss xmm1, dword [edx]
	movss [ebp-0xac], xmm1
	mulss xmm0, xmm1
	addss xmm7, xmm0
	mov edx, [ebp-0x64]
	movzx eax, byte [edx+0x5]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x70]
	mulss xmm1, xmm0
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, xmm0
	movss [ebp-0x48], xmm1
	mulss xmm4, xmm0
	movss [ebp-0x4c], xmm4
	movzx eax, byte [edx+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm3, xmm0
	movss [ebp-0x38], xmm3
	mulss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm0
	movss [ebp-0x40], xmm1
	mov dword [esp+0x4], 0x4
	mov eax, [ebp-0x60]
	mov [esp], eax
	movss [ebp-0x88], xmm5
	movss [ebp-0x98], xmm6
	movss [ebp-0xa8], xmm7
	call RB_SetTessTechnique
	mov edx, [tess+0x22a94c]
	lea eax, [edx+0x4]
	cmp eax, 0x154a
	movss xmm5, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x98]
	movss xmm7, dword [ebp-0xa8]
	jg RB_DrawTextInSpace_40
	mov esi, [tess+0x22a948]
	lea eax, [esi+0x6]
	cmp eax, 0x100000
	jle RB_DrawTextInSpace_50
RB_DrawTextInSpace_40:
	movss [ebp-0x88], xmm5
	movss [ebp-0x98], xmm6
	movss [ebp-0xa8], xmm7
	call RB_TessOverflow
	mov edx, [tess+0x22a94c]
	mov esi, [tess+0x22a948]
	movss xmm7, dword [ebp-0xa8]
	movss xmm6, dword [ebp-0x98]
	movss xmm5, dword [ebp-0x88]
RB_DrawTextInSpace_50:
	mov ebx, edx
	movzx edx, si
	lea eax, [ebx+0x4]
	mov [tess+0x22a94c], eax
	lea eax, [esi+0x6]
	mov [tess+0x22a948], eax
	lea eax, [ebx+0x3]
	mov [edx+edx+tess+0x2a940], ax
	mov [edx+edx+tess+0x2a942], bx
	lea eax, [ebx+0x2]
	mov [edx+edx+tess+0x2a944], ax
	mov [edx+edx+tess+0x2a946], ax
	mov [edx+edx+tess+0x2a948], bx
	lea eax, [ebx+0x1]
	mov [edx+edx+tess+0x2a94a], ax
	mov edx, [ebp+0x1c]
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x64]
	mov esi, [eax+0xc]
	mov edx, [eax+0x8]
	movzx ecx, bx
	shl ecx, 0x5
	lea eax, [ecx+tess]
	movss [ecx+tess], xmm5
	movss [eax+0x4], xmm6
	movss [eax+0x8], xmm7
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov ebx, [ebp-0x1c]
	mov [eax+0x10], ebx
	mov [eax+0x14], edx
	mov [eax+0x18], esi
	mov edx, [ebp-0x64]
	mov edi, [edx+0xc]
	mov esi, [edx+0x10]
	movss xmm2, dword [ebp-0x4c]
	addss xmm2, xmm7
	movss xmm1, dword [ebp-0x48]
	addss xmm1, xmm6
	movss xmm0, dword [ebp-0x44]
	addss xmm0, xmm5
	lea edx, [ecx+0x20]
	lea eax, [edx+tess]
	movss [edx+tess], xmm0
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm2
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], ebx
	mov [eax+0x14], esi
	mov [eax+0x18], edi
	mov eax, [ebp-0x64]
	mov edi, [eax+0x14]
	mov esi, [eax+0x10]
	lea edx, [ecx+0x40]
	lea eax, [edx+tess]
	addss xmm0, [ebp-0x38]
	movss [edx+tess], xmm0
	addss xmm1, [ebp-0x3c]
	movss [eax+0x4], xmm1
	addss xmm2, [ebp-0x40]
	movss [eax+0x8], xmm2
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], ebx
	mov [eax+0x14], esi
	mov [eax+0x18], edi
	mov edx, [ebp-0x64]
	mov esi, [edx+0x14]
	mov edx, [edx+0x8]
	add ecx, 0x60
	lea eax, [ecx+tess]
	addss xmm5, [ebp-0x38]
	movss [ecx+tess], xmm5
	addss xmm6, [ebp-0x3c]
	movss [eax+0x4], xmm6
	addss xmm7, [ebp-0x40]
	movss [eax+0x8], xmm7
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], ebx
	mov [eax+0x14], edx
	mov [eax+0x18], esi
	mov edx, [ebp-0x64]
	movzx eax, byte [edx+0x4]
	cvtsi2ss xmm0, eax
	movaps xmm1, xmm0
	mov eax, [ebp+0x14]
	mulss xmm1, [eax]
	addss xmm1, [ebp-0x2c]
	movss [ebp-0x2c], xmm1
	movaps xmm1, xmm0
	mov edx, [ebp-0x5c]
	mulss xmm1, [edx]
	addss xmm1, [ebp-0x30]
	movss [ebp-0x30], xmm1
	mov eax, [ebp-0x58]
	mulss xmm0, [eax]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz RB_DrawTextInSpace_20
	jmp RB_DrawTextInSpace_60
RB_DrawTextInSpace_10:
	call RB_EndTessSurface
	jmp RB_DrawTextInSpace_70
	nop


;RB_FullScreenFilter(Material const*)
RB_FullScreenFilter:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov ecx, [tess+0x22a948]
	test ecx, ecx
	jz RB_FullScreenFilter_10
	call RB_EndTessSurface
RB_FullScreenFilter_10:
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_Set2D
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov eax, 0x3f800000
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	xor eax, eax
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	cvtsi2ss xmm0, dword [ebx+0xf6c]
	movss [esp+0x10], xmm0
	cvtsi2ss xmm0, dword [ebx+0xf68]
	movss [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov [esp], esi
	call RB_DrawStretchPic
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	jmp RB_EndTessSurface


;RB_InitCodeConstants()
RB_InitCodeConstants:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;RB_SplitScreenFilter(Material const*, GfxViewInfo const*)
RB_SplitScreenFilter:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [tess+0x22a948]
	test eax, eax
	jz RB_SplitScreenFilter_10
	call RB_EndTessSurface
RB_SplitScreenFilter_10:
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_Set2D
	cvtsi2ss xmm5, dword [esi+0x16c]
	cvtsi2ss xmm4, dword [esi+0x170]
	cvtsi2ss xmm3, dword [ebx+0xf68]
	cvtsi2ss xmm0, dword [ebx+0xf6c]
	cvtsi2ss xmm2, dword [esi+0x164]
	divss xmm2, xmm3
	cvtsi2ss xmm1, dword [esi+0x168]
	divss xmm1, xmm0
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	movaps xmm6, xmm4
	divss xmm6, xmm0
	movaps xmm0, xmm6
	addss xmm0, xmm1
	movss [esp+0x20], xmm0
	movaps xmm0, xmm5
	divss xmm0, xmm3
	addss xmm0, xmm2
	movss [esp+0x1c], xmm0
	movss [esp+0x18], xmm1
	movss [esp+0x14], xmm2
	movss [esp+0x10], xmm4
	movss [esp+0xc], xmm5
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov [esp], edi
	call RB_DrawStretchPic
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp RB_EndTessSurface


;R_ShowDirtyDiscError()
R_ShowDirtyDiscError:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;RB_DrawStretchPicFlipST(Material const*, float, float, float, float, float, float, float, float, unsigned long, GfxPrimStatsTarget)
RB_DrawStretchPicFlipST:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x1c]
	mov esi, [ebp+0x2c]
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call RB_SetTessTechnique
	mov ebx, [tess+0x22a94c]
	lea eax, [ebx+0x4]
	cmp eax, 0x154a
	jg RB_DrawStretchPicFlipST_10
	mov ecx, [tess+0x22a948]
	lea eax, [ecx+0x6]
	cmp eax, 0x100000
	jle RB_DrawStretchPicFlipST_20
RB_DrawStretchPicFlipST_10:
	call RB_TessOverflow
	mov ebx, [tess+0x22a94c]
	mov ecx, [tess+0x22a948]
RB_DrawStretchPicFlipST_20:
	mov edx, ebx
	lea eax, [edx+0x3]
	mov [ecx+ecx+tess+0x2a940], ax
	mov [ecx+ecx+tess+0x2a942], bx
	lea eax, [edx+0x2]
	mov [ecx+ecx+tess+0x2a944], ax
	mov [ecx+ecx+tess+0x2a946], ax
	mov [ecx+ecx+tess+0x2a948], bx
	add edx, 0x1
	mov [ecx+ecx+tess+0x2a94a], dx
	mov edx, ebx
	shl edx, 0x5
	lea eax, [edx+tess]
	movss xmm0, dword [ebp+0xc]
	movss [edx+tess], xmm0
	movss xmm1, dword [ebp+0x10]
	movss [eax+0x4], xmm1
	xor ebx, ebx
	mov [eax+0x8], ebx
	mov ecx, 0x3f800000
	mov [eax+0xc], ecx
	mov dword [eax+0x1c], 0x3ffe7f7f
	mov [eax+0x10], esi
	mov [eax+0x14], edi
	movss xmm0, dword [ebp+0x20]
	movss [eax+0x18], xmm0
	movss xmm0, dword [ebp+0xc]
	addss xmm0, [ebp+0x14]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x20
	lea edx, [eax+tess]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ebx
	mov [edx+0xc], ecx
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov [edx+0x10], esi
	mov [edx+0x14], edi
	movss xmm1, dword [ebp+0x28]
	movss [edx+0x18], xmm1
	movss xmm1, dword [ebp+0x10]
	addss xmm1, [ebp+0x18]
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x40
	lea edx, [eax+tess]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ebx
	mov [edx+0xc], ecx
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov [edx+0x10], esi
	movss xmm0, dword [ebp+0x24]
	movss [edx+0x14], xmm0
	movss xmm0, dword [ebp+0x28]
	movss [edx+0x18], xmm0
	mov eax, [tess+0x22a94c]
	shl eax, 0x5
	add eax, 0x60
	lea edx, [eax+tess]
	movss xmm0, dword [ebp+0xc]
	movss [eax+tess], xmm0
	movss [edx+0x4], xmm1
	mov [edx+0x8], ebx
	mov [edx+0xc], ecx
	mov dword [edx+0x1c], 0x3ffe7f7f
	mov [edx+0x10], esi
	movss xmm1, dword [ebp+0x24]
	movss [edx+0x14], xmm1
	movss xmm0, dword [ebp+0x20]
	movss [edx+0x18], xmm0
	add dword [tess+0x22a94c], 0x4
	add dword [tess+0x22a948], 0x6
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_SetVertex4dWithNormal(GfxVertex*, float, float, float, float, float, float, float, float, float, unsigned char const*)
R_SetVertex4dWithNormal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	xor edx, edx
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ecx], eax
	mov eax, [ebp+0x10]
	mov [ecx+0x4], eax
	mov eax, [ebp+0x14]
	mov [ecx+0x8], eax
	mov eax, [ebp+0x18]
	mov [ecx+0xc], eax
	movss xmm1, dword [_float_127_00000000]
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, xmm1
	movss xmm2, dword [_float_127_50000000]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	mov dl, al
	movss xmm0, dword [ebp+0x20]
	mulss xmm0, xmm1
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	mov dh, al
	mulss xmm1, [ebp+0x24]
	addss xmm1, xmm2
	cvttss2si eax, xmm1
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ecx+0x1c], edx
	mov eax, [ebp+0x30]
	mov eax, [eax]
	mov [ecx+0x10], eax
	mov eax, [ebp+0x28]
	mov [ecx+0x14], eax
	mov eax, [ebp+0x2c]
	mov [ecx+0x18], eax
	leave
	ret


;RB_RegisterBackendAssets()
RB_RegisterBackendAssets:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fontssmalldevfon
	call R_RegisterFont
	mov [backEnd+0x8], eax
	leave
	ret
	nop


;RB_FullScreenColoredFilter(Material const*, unsigned long)
RB_FullScreenColoredFilter:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [tess+0x22a948]
	test ebx, ebx
	jz RB_FullScreenColoredFilter_10
	call RB_EndTessSurface
RB_FullScreenColoredFilter_10:
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_Set2D
	mov dword [esp+0x28], 0x9
	mov [esp+0x24], esi
	mov eax, 0x3f800000
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	xor eax, eax
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	cvtsi2ss xmm0, dword [ebx+0xf6c]
	movss [esp+0x10], xmm0
	cvtsi2ss xmm0, dword [ebx+0xf68]
	movss [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov [esp], edi
	call RB_DrawStretchPic
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp RB_EndTessSurface
	nop


;RB_InitBackendGlobalStructs()
RB_InitBackendGlobalStructs:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov dword [backEnd], 0x0
	mov dword [backEnd+0x4], 0x0
	mov dword [backEnd+0x8], 0x0
	call RB_InitSceneViewport
	leave
	jmp RB_InitCodeImages
	nop


;RB_CallExecuteRenderCommands()
RB_CallExecuteRenderCommands:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov eax, [backEndData]
	test byte [eax+0x11e770], 0x2
	jz RB_CallExecuteRenderCommands_10
	mov eax, [eax+0x11e6c4]
	test eax, eax
	jnz RB_CallExecuteRenderCommands_20
RB_CallExecuteRenderCommands_140:
	mov dword [esp+0x8], 0x0
	mov eax, gfxCmdBufInput
	mov [esp+0x4], eax
	mov esi, gfxCmdBufSourceState
	mov [esp], esi
	call R_InitCmdBufSourceState
	mov eax, [backEndData]
	mov [esi+0xca8], eax
	mov ebx, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	lea eax, [ebx+0xd8]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add ebx, 0x1d8
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	call RB_InitSceneViewport
	mov eax, [backEndData]
	mov eax, [eax+0x11e6cc]
	test eax, eax
	jz RB_CallExecuteRenderCommands_30
	mov [ebp-0xc], eax
	movzx eax, word [eax]
	test ax, ax
	jnz RB_CallExecuteRenderCommands_40
	mov esi, [tess+0x22a948]
	test esi, esi
	jnz RB_CallExecuteRenderCommands_50
RB_CallExecuteRenderCommands_30:
	mov ebx, [tess+0x22a948]
	test ebx, ebx
	jnz RB_CallExecuteRenderCommands_60
RB_CallExecuteRenderCommands_150:
	mov ebx, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	mov ecx, [ebx+0x94]
	test ecx, ecx
	jz RB_CallExecuteRenderCommands_70
RB_CallExecuteRenderCommands_160:
	mov dword [ebx+0x94], 0x0
	mov eax, [ebx+0x90]
	mov edx, [eax]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x1a0]
RB_CallExecuteRenderCommands_70:
	lea eax, [ebx+0x90]
	mov [esp], eax
	call R_ClearAllStreamSources
	mov esi, dx_ctx
	mov eax, [esi+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa8]
	mov byte [esi+0x2c6d], 0x0
	mov edx, [esi+0x2c58]
	test edx, edx
	jnz RB_CallExecuteRenderCommands_80
	mov dword [esi+0x2c8c], 0x0
	mov dword [esi+0x2c90], 0x0
RB_CallExecuteRenderCommands_10:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
RB_CallExecuteRenderCommands_80:
	call R_AcquireGpuFenceLock
	call RB_IsGpuFenceFinished
	test al, al
	jnz RB_CallExecuteRenderCommands_90
	rdtsc
	mov ebx, eax
RB_CallExecuteRenderCommands_110:
	call RB_IsGpuFenceFinished
	test al, al
	jnz RB_CallExecuteRenderCommands_100
	rdtsc
	cmp eax, ebx
	jns RB_CallExecuteRenderCommands_110
	mov esi, dx_ctx
	mov byte [esi+0x2ca4], 0x0
RB_CallExecuteRenderCommands_230:
	rdtsc
	sub eax, ebx
	js RB_CallExecuteRenderCommands_120
	sar eax, 0x4
	cdq
	add [esi+0x2c8c], eax
	adc [esi+0x2c90], edx
RB_CallExecuteRenderCommands_120:
	cmp dword [esi+0x2c58], 0x2
	jz RB_CallExecuteRenderCommands_130
RB_CallExecuteRenderCommands_210:
	mov eax, [esi+0x2c88]
	mov edx, [eax]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x18]
	mov byte [esi+0x2ca4], 0x1
	call R_ReleaseGpuFenceLock
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
RB_CallExecuteRenderCommands_20:
	call RB_Draw3DCommon
	jmp RB_CallExecuteRenderCommands_140
RB_CallExecuteRenderCommands_50:
	call RB_EndTessSurface
	mov ebx, [tess+0x22a948]
	test ebx, ebx
	jz RB_CallExecuteRenderCommands_150
RB_CallExecuteRenderCommands_60:
	call RB_EndTessSurface
	mov ebx, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	mov ecx, [ebx+0x94]
	test ecx, ecx
	jnz RB_CallExecuteRenderCommands_160
	jmp RB_CallExecuteRenderCommands_70
RB_CallExecuteRenderCommands_40:
	lea ebx, [ebp-0xc]
RB_CallExecuteRenderCommands_170:
	movzx eax, ax
	mov [esp], ebx
	call dword [eax*4+RB_RenderCommandTable]
	mov eax, [ebp-0xc]
	movzx eax, word [eax]
	test ax, ax
	jnz RB_CallExecuteRenderCommands_170
	mov esi, [tess+0x22a948]
	test esi, esi
	jz RB_CallExecuteRenderCommands_30
	jmp RB_CallExecuteRenderCommands_50
RB_CallExecuteRenderCommands_90:
	mov eax, [esi+0x2c8c]
	mov edx, [esi+0x2c90]
	cmp edx, 0x0
	ja RB_CallExecuteRenderCommands_180
	cmp eax, 0x4e20
	jbe RB_CallExecuteRenderCommands_190
RB_CallExecuteRenderCommands_180:
	mov esi, dx_ctx
	mov ecx, eax
	mov ebx, edx
	add ecx, 0xffffb1e0
	adc ebx, 0xffffffff
	shrd ecx, ebx, 0x7
	shr ebx, 0x7
	mov eax, ecx
	mov edx, ebx
	shld edx, eax, 0x7
	shl eax, 0x7
	sub eax, ecx
	sbb edx, ebx
	mov [esi+0x2c8c], eax
	mov [esi+0x2c90], edx
	jmp RB_CallExecuteRenderCommands_120
RB_CallExecuteRenderCommands_130:
	movsd xmm0, qword [_double_30_00000000]
	mov eax, msecPerRawTimerTick
	divsd xmm0, qword [eax]
	movsd xmm1, qword [_double_92233720368547758_double]
	ucomisd xmm0, xmm1
	jae RB_CallExecuteRenderCommands_200
	fnstcw word [ebp-0x1a]
	movzx eax, word [ebp-0x1a]
	mov ah, 0xc
	mov [ebp-0x1c], ax
	movsd [ebp-0x30], xmm0
	fld qword [ebp-0x30]
	fldcw word [ebp-0x1c]
	fistp qword [ebp-0x28]
	fldcw word [ebp-0x1a]
	mov ecx, [ebp-0x28]
	mov ebx, [ebp-0x24]
RB_CallExecuteRenderCommands_220:
	mov [esi+0x2c8c], ecx
	mov [esi+0x2c90], ebx
	jmp RB_CallExecuteRenderCommands_210
RB_CallExecuteRenderCommands_200:
	subsd xmm0, xmm1
	fnstcw word [ebp-0x1a]
	movzx eax, word [ebp-0x1a]
	mov ah, 0xc
	mov [ebp-0x1c], ax
	movsd [ebp-0x30], xmm0
	fld qword [ebp-0x30]
	fldcw word [ebp-0x1c]
	fistp qword [ebp-0x28]
	fldcw word [ebp-0x1a]
	mov ecx, [ebp-0x28]
	mov ebx, [ebp-0x24]
	lea edx, [ebx-0x80000000]
	mov ebx, edx
	jmp RB_CallExecuteRenderCommands_220
RB_CallExecuteRenderCommands_190:
	mov dword [esi+0x2c8c], 0x0
	mov dword [esi+0x2c90], 0x0
	jmp RB_CallExecuteRenderCommands_120
RB_CallExecuteRenderCommands_100:
	mov esi, dx_ctx
	jmp RB_CallExecuteRenderCommands_230


;RB_DrawFullScreenColoredQuad(Material const*, float, float, float, float, unsigned long)
RB_DrawFullScreenColoredQuad:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebp+0xc]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebp-0x28], xmm0
	mov edi, [ebp+0x18]
	mov esi, [ebp+0x1c]
	mov eax, [tess+0x22a948]
	test eax, eax
	jz RB_DrawFullScreenColoredQuad_10
	call RB_EndTessSurface
RB_DrawFullScreenColoredQuad_10:
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_Set2D
	mov dword [esp+0x28], 0x9
	mov [esp+0x24], esi
	mov [esp+0x20], edi
	movss xmm0, dword [ebp-0x28]
	movss [esp+0x1c], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x18], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x14], xmm0
	cvtsi2ss xmm0, dword [ebx+0xf6c]
	movss [esp+0x10], xmm0
	cvtsi2ss xmm0, dword [ebx+0xf68]
	movss [esp+0xc], xmm0
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call RB_DrawStretchPic
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp RB_EndTessSurface
	nop


;RB_ExecuteRenderCommandsLoop(void const*)
RB_ExecuteRenderCommandsLoop:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov [ebp-0xc], eax
	movzx eax, word [eax]
	test ax, ax
	jnz RB_ExecuteRenderCommandsLoop_10
RB_ExecuteRenderCommandsLoop_40:
	mov eax, [tess+0x22a948]
	test eax, eax
	jz RB_ExecuteRenderCommandsLoop_20
	call RB_EndTessSurface
RB_ExecuteRenderCommandsLoop_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
RB_ExecuteRenderCommandsLoop_10:
	lea ebx, [ebp-0xc]
RB_ExecuteRenderCommandsLoop_30:
	movzx eax, ax
	mov [esp], ebx
	call dword [eax*4+RB_RenderCommandTable]
	mov eax, [ebp-0xc]
	movzx eax, word [eax]
	test ax, ax
	jnz RB_ExecuteRenderCommandsLoop_30
	jmp RB_ExecuteRenderCommandsLoop_40


;RB_Draw3D()
RB_Draw3D:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [backEndData]
	mov ecx, [ebx+0x11e6c4]
	test ecx, ecx
	jz RB_Draw3D_10
	mov ecx, [ebx+0x11e6c0]
	lea edx, [ecx+ecx*2]
	lea edx, [ecx+edx*4]
	shl edx, 0x4
	add edx, ecx
	mov eax, edx
	shl eax, 0x7
	sub eax, edx
	add eax, ecx
	add eax, [ebx+0x11e6c8]
	mov [esp], eax
	call RB_Draw3DInternal
RB_Draw3D_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_Resolve(GfxCmdBufContext, GfxImage*)
R_Resolve:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Image_GetSurface
	mov ebx, eax
	mov edx, [esi+0x90]
	mov ecx, [edx]
	mov dword [esp+0x14], 0x2
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [esi+0xa04]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	add eax, gfxRenderTargets
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x88]
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of rb_backend:
SECTION .data


;Initialized constant data of rb_backend:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x0, 0x0, 0x0, 0x0
RB_RenderCommandTable: dd 0x0, RB_SetMaterialColorCmd, RB_SaveScreenCmd, RB_SaveScreenSectionCmd, RB_ClearScreenCmd, RB_SetViewportCmd, RB_StretchPicCmd, RB_StretchPicCmdFlipST, RB_StretchPicRotateXYCmd, RB_StretchPicRotateSTCmd, RB_StretchRawCmd, RB_DrawQuadPicCmd, RB_DrawFullScreenColoredQuadCmd, RB_DrawText2DCmd, RB_DrawText3DCmd, RB_BlendSavedScreenBlurredCmd, RB_BlendSavedScreenFlashedCmd, RB_DrawPointsCmd, RB_DrawLinesCmd, RB_DrawTrianglesCmd, RB_ProjectionSetCmd, 0x0, 0x0, 0x0
rb_tessTable: dd R_TessTrianglesList, R_TessTrianglesPreTessList, R_TessStaticModelRigidDrawSurfList, R_TessStaticModelPreTessList, R_TessStaticModelCachedList, R_TessStaticModelSkinnedDrawSurfList, R_TessBModel, R_TessXModelRigidDrawSurfList, R_TessXModelRigidSkinnedDrawSurfList, R_TessXModelSkinnedDrawSurfList, R_TessCodeMeshList, R_TessMarkMeshList, R_TessParticleCloudList, 0x0, 0x0, 0x0
_ZZ14RB_LookupColorhPhE11color_table: dd 0xff000000, 0xff5c5cff, 0xff00ff00, 0xff00ffff, 0xffff0000, 0xffffff00, 0xffff5cff, 0xffffffff, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E10MY_OFFSETS: dd 0xbf800000, 0xbf800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000
		db 0x0
_ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E25MY_ALTCOLOR_TWO_CINEMATIC: dd 0xdce6ffe6
_ZZ10DrawText2DPKcffP6Font_sffff8GfxColoriiicfS3_iiiiPK8MaterialS6_E15MY_ALTCOLOR_TWO: dd 0xdce6ffe6, 0x0, 0x0, 0x0, 0x0, 0x0
		db 0x0, 0x0, 0x0


;Zero initialized global or static variables of rb_backend:
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
backEnd: resb 0xc
backEndData: resb 0x14
tess: resb 0x22a960


;All cstrings:
SECTION .rdata
_cstring_direct3ddevice9p:		db "Direct3DDevice9::Present failed: %s",0ah,0
_cstring_shadowcookiesamp:		db "shadowCookieSampler",0
_cstring_shadowmapsampler:		db "shadowmapSamplerSun",0
_cstring_shadowmapsampler1:		db "shadowmapSamplerSpot",0
_cstring_feedbacksampler:		db "feedbackSampler",0
_cstring_posteffect0:		db "postEffect0",0
_cstring_posteffect1:		db "postEffect1",0
_cstring_samplersky:		db "sampler.sky",0
_cstring_attenuationsampl:		db "attenuationSampler",0
_cstring_cinematicy:		db "cinematicY",0
_cstring_cinematiccr:		db "cinematicCr",0
_cstring_cinematiccb:		db "cinematicCb",0
_cstring_cinematica:		db "cinematicA",0
_cstring_fontssmalldevfon:		db "fonts/smalldevfont",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_99000001:		dd 0x3f7d70a4	; 0.99
_float_252_44999695:		dd 0x437c7333	; 252.45
_float_255_00000000:		dd 0x437f0000	; 255
_float__0_00100000:		dd 0xba83126f	; -0.001
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_30_00000000:		dd 0x41f00000	; 30
_float_1_00000000:		dd 0x3f800000	; 1
_float__0_75000000:		dd 0xbf400000	; -0.75
_float__0_12500000:		dd 0xbe000000	; -0.125
_float_0_06250000:		dd 0x3d800000	; 0.0625
_float_1_12500000:		dd 0x3f900000	; 1.125
_float_1_75000000:		dd 0x3fe00000	; 1.75
_float_2_00000000:		dd 0x40000000	; 2
_float_60_00000000:		dd 0x42700000	; 60
_float_0_06000000:		dd 0x3d75c28f	; 0.06
_float_127_00000000:		dd 0x42fe0000	; 127
_float_127_50000000:		dd 0x42ff0000	; 127.5
_double_30_00000000:		dq 0x403e000000000000	; 30
_double_92233720368547758_double:		dq 0x43e0000000000000	; 9.22337e+18

