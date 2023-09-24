;Imports of cg_pose_utils:
	extern iInterlockedCompareExchange

;Exports of cg_pose_utils:
	global _Z19CG_UsedDObjCalcPosePK7cpose_t
	global _Z9CG_CullInPK7cpose_t


SECTION .text


;CG_UsedDObjCalcPose(cpose_t const*)
_Z19CG_UsedDObjCalcPosePK7cpose_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedCompareExchange
	leave
	ret


;CG_CullIn(cpose_t const*)
_Z9CG_CullInPK7cpose_t:
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

