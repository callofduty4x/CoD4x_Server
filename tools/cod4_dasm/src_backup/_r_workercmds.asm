;Imports of r_workercmds:
	extern _Z30R_ProcessCmd_UpdateFxSpotLightP5FxCmd
	extern _Z33R_ProcessCmd_UpdateFxNonDependentP5FxCmd
	extern _Z30R_ProcessCmd_UpdateFxRemainingP5FxCmd
	extern _Z35R_AddCellStaticSurfacesInFrustumCmdPv
	extern _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv
	extern _Z37R_AddCellDynModelSurfacesInFrustumCmdPv
	extern _Z37R_AddCellDynBrushSurfacesInFrustumCmdPv
	extern _Z31R_AddEntitySurfacesInFrustumCmdPv
	extern _Z30R_AddAllSceneEntSurfacesCameraPK11GfxViewInfo
	extern _Z21R_AddSpotShadowEntCmdPv
	extern _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd
	extern _Z26R_UpdateGfxEntityBoundsCmdPv
	extern _Z18R_SkinGfxEntityCmdPv
	extern dx_ctx
	extern _Z16FX_GenerateVertsP18FxGenerateVertsCmd
	extern _Z28FX_GenerateMarkVertsForWorldi
	extern _Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd
	extern _Z15R_SkinXModelCmdPv

;Exports of r_workercmds:
	global _Z14R_AddWorkerCmd13WorkerCmdTypePv
	global _Z16R_WaitWorkerCmdsv


SECTION .text


;R_AddWorkerCmd(WorkerCmdType, void*)
_Z14R_AddWorkerCmd13WorkerCmdTypePv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp eax, 0x10
	ja _Z14R_AddWorkerCmd13WorkerCmdTypePv_10
	jmp dword [eax*4+_Z14R_AddWorkerCmd13WorkerCmdTypePv_jumptab_0]
_Z14R_AddWorkerCmd13WorkerCmdTypePv_10:
	pop ebp
	ret
_Z14R_AddWorkerCmd13WorkerCmdTypePv_20:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z30R_ProcessCmd_UpdateFxSpotLightP5FxCmd
_Z14R_AddWorkerCmd13WorkerCmdTypePv_30:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z33R_ProcessCmd_UpdateFxNonDependentP5FxCmd
_Z14R_AddWorkerCmd13WorkerCmdTypePv_40:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z30R_ProcessCmd_UpdateFxRemainingP5FxCmd
_Z14R_AddWorkerCmd13WorkerCmdTypePv_50:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z35R_AddCellStaticSurfacesInFrustumCmdPv
_Z14R_AddWorkerCmd13WorkerCmdTypePv_60:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv
_Z14R_AddWorkerCmd13WorkerCmdTypePv_70:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z37R_AddCellDynModelSurfacesInFrustumCmdPv
_Z14R_AddWorkerCmd13WorkerCmdTypePv_80:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z37R_AddCellDynBrushSurfacesInFrustumCmdPv
_Z14R_AddWorkerCmd13WorkerCmdTypePv_90:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z31R_AddEntitySurfacesInFrustumCmdPv
_Z14R_AddWorkerCmd13WorkerCmdTypePv_100:
	mov eax, [edx]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z30R_AddAllSceneEntSurfacesCameraPK11GfxViewInfo
_Z14R_AddWorkerCmd13WorkerCmdTypePv_110:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z21R_AddSpotShadowEntCmdPv
_Z14R_AddWorkerCmd13WorkerCmdTypePv_120:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z26R_GenerateShadowCookiesCmdP15ShadowCookieCmd
_Z14R_AddWorkerCmd13WorkerCmdTypePv_130:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z26R_UpdateGfxEntityBoundsCmdPv
_Z14R_AddWorkerCmd13WorkerCmdTypePv_140:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z18R_SkinGfxEntityCmdPv
_Z14R_AddWorkerCmd13WorkerCmdTypePv_150:
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz _Z14R_AddWorkerCmd13WorkerCmdTypePv_10
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z16FX_GenerateVertsP18FxGenerateVertsCmd
_Z14R_AddWorkerCmd13WorkerCmdTypePv_160:
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz _Z14R_AddWorkerCmd13WorkerCmdTypePv_10
	mov eax, [edx+0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z28FX_GenerateMarkVertsForWorldi
_Z14R_AddWorkerCmd13WorkerCmdTypePv_170:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd
_Z14R_AddWorkerCmd13WorkerCmdTypePv_180:
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z15R_SkinXModelCmdPv
	add [eax], al
	
	
_Z14R_AddWorkerCmd13WorkerCmdTypePv_jumptab_0:
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_20
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_30
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_40
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_50
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_60
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_70
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_80
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_90
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_100
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_110
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_120
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_130
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_140
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_150
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_160
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_170
	dd _Z14R_AddWorkerCmd13WorkerCmdTypePv_180


;R_WaitWorkerCmds()
_Z16R_WaitWorkerCmdsv:
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

