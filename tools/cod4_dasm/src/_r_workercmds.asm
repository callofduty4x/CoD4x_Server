;Imports of r_workercmds:
	extern R_ProcessCmd_UpdateFxSpotLight
	extern R_ProcessCmd_UpdateFxNonDependent
	extern R_ProcessCmd_UpdateFxRemaining
	extern R_AddCellStaticSurfacesInFrustumCmd
	extern R_AddCellSceneEntSurfacesInFrustumCmd
	extern R_AddCellDynModelSurfacesInFrustumCmd
	extern R_AddCellDynBrushSurfacesInFrustumCmd
	extern R_AddEntitySurfacesInFrustumCmd
	extern R_AddAllSceneEntSurfacesCamera
	extern R_AddSpotShadowEntCmd
	extern R_GenerateShadowCookiesCmd
	extern R_UpdateGfxEntityBoundsCmd
	extern R_SkinGfxEntityCmd
	extern dx_ctx
	extern FX_GenerateVerts
	extern FX_GenerateMarkVertsForWorld
	extern R_SkinCachedStaticModelCmd
	extern R_SkinXModelCmd

;Exports of r_workercmds:
	global R_AddWorkerCmd
	global R_WaitWorkerCmds


SECTION .text


;R_AddWorkerCmd(WorkerCmdType, void*)
R_AddWorkerCmd:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp eax, 0x10
	ja R_AddWorkerCmd_10
	jmp dword [eax*4+R_AddWorkerCmd_jumptab_0]
R_AddWorkerCmd_10:
	pop ebp
	ret
R_AddWorkerCmd_20:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_ProcessCmd_UpdateFxSpotLight
R_AddWorkerCmd_30:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_ProcessCmd_UpdateFxNonDependent
R_AddWorkerCmd_40:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_ProcessCmd_UpdateFxRemaining
R_AddWorkerCmd_50:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_AddCellStaticSurfacesInFrustumCmd
R_AddWorkerCmd_60:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_AddCellSceneEntSurfacesInFrustumCmd
R_AddWorkerCmd_70:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_AddCellDynModelSurfacesInFrustumCmd
R_AddWorkerCmd_80:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_AddCellDynBrushSurfacesInFrustumCmd
R_AddWorkerCmd_90:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_AddEntitySurfacesInFrustumCmd
R_AddWorkerCmd_100:
	mov eax, [edx]
	mov [ebp+0x8], eax
	pop ebp
	jmp R_AddAllSceneEntSurfacesCamera
R_AddWorkerCmd_110:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_AddSpotShadowEntCmd
R_AddWorkerCmd_120:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_GenerateShadowCookiesCmd
R_AddWorkerCmd_130:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_UpdateGfxEntityBoundsCmd
R_AddWorkerCmd_140:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_SkinGfxEntityCmd
R_AddWorkerCmd_150:
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz R_AddWorkerCmd_10
	mov [ebp+0x8], edx
	pop ebp
	jmp FX_GenerateVerts
R_AddWorkerCmd_160:
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz R_AddWorkerCmd_10
	mov eax, [edx+0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp FX_GenerateMarkVertsForWorld
R_AddWorkerCmd_170:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_SkinCachedStaticModelCmd
R_AddWorkerCmd_180:
	mov [ebp+0x8], edx
	pop ebp
	jmp R_SkinXModelCmd
	add [eax], al
	
	
R_AddWorkerCmd_jumptab_0:
	dd R_AddWorkerCmd_20
	dd R_AddWorkerCmd_30
	dd R_AddWorkerCmd_40
	dd R_AddWorkerCmd_50
	dd R_AddWorkerCmd_60
	dd R_AddWorkerCmd_70
	dd R_AddWorkerCmd_80
	dd R_AddWorkerCmd_90
	dd R_AddWorkerCmd_100
	dd R_AddWorkerCmd_110
	dd R_AddWorkerCmd_120
	dd R_AddWorkerCmd_130
	dd R_AddWorkerCmd_140
	dd R_AddWorkerCmd_150
	dd R_AddWorkerCmd_160
	dd R_AddWorkerCmd_170
	dd R_AddWorkerCmd_180


;R_WaitWorkerCmds()
R_WaitWorkerCmds:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Initialized global or static variables of r_workercmds:
SECTION .data


;Initialized constant data of r_workercmds:
SECTION .rdata


;Zero initialized global or static variables of r_workercmds:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

