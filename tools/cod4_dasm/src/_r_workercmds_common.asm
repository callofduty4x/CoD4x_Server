;Imports of r_workercmds_common:
	extern R_AddWorkerCmd
	extern FX_UpdateRemaining
	extern FX_EndUpdate
	extern PIXBeginNamedEvent
	extern FX_AddNonSpriteDrawSurfs
	extern FX_FillGenerateVertsCmd
	extern FX_UpdateSpotLight
	extern FX_UpdateNonDependent

;Exports of r_workercmds_common:
	global R_SkinGfxEntityDelayed
	global R_UpdateSpotLightEffect
	global R_UpdateRemainingEffects
	global R_UpdateNonDependentEffects
	global R_UpdateXModelBoundsDelayed
	global R_ProcessCmd_UpdateFxRemaining
	global R_ProcessCmd_UpdateFxSpotLight
	global R_ProcessCmd_UpdateFxNonDependent


SECTION .text


;R_SkinGfxEntityDelayed(GfxSceneEntity*)
R_SkinGfxEntityDelayed:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xc
	call R_AddWorkerCmd
	leave
	ret


;R_UpdateSpotLightEffect(FxCmd*)
R_UpdateSpotLightEffect:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call R_AddWorkerCmd
	leave
	ret
	nop


;R_UpdateRemainingEffects(FxCmd*)
R_UpdateRemainingEffects:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call R_AddWorkerCmd
	leave
	ret
	nop


;R_UpdateNonDependentEffects(FxCmd*)
R_UpdateNonDependentEffects:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call R_AddWorkerCmd
	leave
	ret
	nop


;R_UpdateXModelBoundsDelayed(GfxSceneEntity*)
R_UpdateXModelBoundsDelayed:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xb
	call R_AddWorkerCmd
	leave
	ret
	nop


;R_ProcessCmd_UpdateFxRemaining(FxCmd*)
R_ProcessCmd_UpdateFxRemaining:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call FX_UpdateRemaining
	mov eax, [ebx+0x4]
	mov [esp], eax
	call FX_EndUpdate
	mov [esp+0x4], ebx
	mov dword [esp], 0xe
	call R_AddWorkerCmd
	mov dword [esp+0x4], _cstring_fx_surfs
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov [esp], ebx
	call FX_AddNonSpriteDrawSurfs
	lea esi, [ebp-0x4c]
	mov [esp+0x4], esi
	mov eax, [ebx+0x4]
	mov [esp], eax
	call FX_FillGenerateVertsCmd
	mov [esp+0x4], esi
	mov dword [esp], 0xd
	call R_AddWorkerCmd
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_ProcessCmd_UpdateFxSpotLight(FxCmd*)
R_ProcessCmd_UpdateFxSpotLight:
	push ebp
	mov ebp, esp
	pop ebp
	jmp FX_UpdateSpotLight
	nop


;R_ProcessCmd_UpdateFxNonDependent(FxCmd*)
R_ProcessCmd_UpdateFxNonDependent:
	push ebp
	mov ebp, esp
	pop ebp
	jmp FX_UpdateNonDependent
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

