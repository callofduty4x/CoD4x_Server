;Imports of r_workercmds_common:
	extern _Z14R_AddWorkerCmd13WorkerCmdTypePv
	extern _Z18FX_UpdateRemainingP5FxCmd
	extern _Z12FX_EndUpdatei
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z24FX_AddNonSpriteDrawSurfsP5FxCmd
	extern _Z23FX_FillGenerateVertsCmdiP18FxGenerateVertsCmd
	extern _Z18FX_UpdateSpotLightP5FxCmd
	extern _Z21FX_UpdateNonDependentP5FxCmd

;Exports of r_workercmds_common:
	global _Z22R_SkinGfxEntityDelayedP14GfxSceneEntity
	global _Z23R_UpdateSpotLightEffectP5FxCmd
	global _Z24R_UpdateRemainingEffectsP5FxCmd
	global _Z27R_UpdateNonDependentEffectsP5FxCmd
	global _Z27R_UpdateXModelBoundsDelayedP14GfxSceneEntity
	global _Z30R_ProcessCmd_UpdateFxRemainingP5FxCmd
	global _Z30R_ProcessCmd_UpdateFxSpotLightP5FxCmd
	global _Z33R_ProcessCmd_UpdateFxNonDependentP5FxCmd


SECTION .text


;R_SkinGfxEntityDelayed(GfxSceneEntity*)
_Z22R_SkinGfxEntityDelayedP14GfxSceneEntity:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xc
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	leave
	ret


;R_UpdateSpotLightEffect(FxCmd*)
_Z23R_UpdateSpotLightEffectP5FxCmd:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	leave
	ret
	nop


;R_UpdateRemainingEffects(FxCmd*)
_Z24R_UpdateRemainingEffectsP5FxCmd:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	leave
	ret
	nop


;R_UpdateNonDependentEffects(FxCmd*)
_Z27R_UpdateNonDependentEffectsP5FxCmd:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	leave
	ret
	nop


;R_UpdateXModelBoundsDelayed(GfxSceneEntity*)
_Z27R_UpdateXModelBoundsDelayedP14GfxSceneEntity:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xb
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	leave
	ret
	nop


;R_ProcessCmd_UpdateFxRemaining(FxCmd*)
_Z30R_ProcessCmd_UpdateFxRemainingP5FxCmd:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z18FX_UpdateRemainingP5FxCmd
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _Z12FX_EndUpdatei
	mov [esp+0x4], ebx
	mov dword [esp], 0xe
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	mov dword [esp+0x4], _cstring_fx_surfs
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp], ebx
	call _Z24FX_AddNonSpriteDrawSurfsP5FxCmd
	lea esi, [ebp-0x4c]
	mov [esp+0x4], esi
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _Z23FX_FillGenerateVertsCmdiP18FxGenerateVertsCmd
	mov [esp+0x4], esi
	mov dword [esp], 0xd
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_ProcessCmd_UpdateFxSpotLight(FxCmd*)
_Z30R_ProcessCmd_UpdateFxSpotLightP5FxCmd:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18FX_UpdateSpotLightP5FxCmd
	nop


;R_ProcessCmd_UpdateFxNonDependent(FxCmd*)
_Z33R_ProcessCmd_UpdateFxNonDependentP5FxCmd:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z21FX_UpdateNonDependentP5FxCmd
	nop


;Initialized global or static variables of r_workercmds_common:
SECTION .data


;Initialized constant data of r_workercmds_common:
SECTION .rdata


;Zero initialized global or static variables of r_workercmds_common:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_fx_surfs:		db "fx surfs",0



;All constant floats and doubles:
SECTION .rdata

