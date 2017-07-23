;Imports of cg_pose_utils:
	extern InterlockedCompareExchange

;Exports of cg_pose_utils:
	global CG_UsedDObjCalcPose
	global CG_CullIn


SECTION .text


;CG_UsedDObjCalcPose(cpose_t const*)
CG_UsedDObjCalcPose:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call InterlockedCompareExchange
	leave
	ret


;CG_CullIn(cpose_t const*)
CG_CullIn:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x8], 0x2
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of cg_pose_utils:
SECTION .data


;Initialized constant data of cg_pose_utils:
SECTION .rdata


;Zero initialized global or static variables of cg_pose_utils:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

