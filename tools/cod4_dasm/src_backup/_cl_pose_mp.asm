;Imports of cl_pose_mp:
	extern _Z19R_GetLocalClientNumv
	extern clients
	extern iInterlockedExchangeAdd
	extern _Z14DObjSkelExistsPK6DObj_si
	extern _Z16I_dmaGetDObjSkelPK6DObj_s
	extern _Z24DObjSkelAreBonesUpToDatePK6DObj_sPi
	extern _Z20DObjGetAllocSkelSizePK6DObj_s
	extern _Z16Com_PrintWarningiPKcz
	extern _Z14DObjCreateSkelPK6DObj_sPci

;Exports of cl_pose_mp:
	global _ZZ25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMatE9warnCount
	global _Z18CL_AllocSkelMemoryj
	global _Z19CL_GetSkelTimeStampv
	global _Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat


SECTION .text


;CL_AllocSkelMemory(unsigned int)
_Z18CL_AllocSkelMemoryj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	add ebx, 0xf
	and ebx, 0xfffffff0
	call _Z19R_GetLocalClientNumv
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*8]
	lea edx, [eax+edx*4]
	mov ecx, edx
	shl ecx, 0x7
	sub ecx, edx
	lea ecx, [ecx+eax+0x256b0]
	mov edi, clients
	lea ecx, [ecx+edi+0xc]
	mov [esp+0x4], ebx
	mov [esp], ecx
	call iInterlockedExchangeAdd
	mov esi, eax
	call _Z19R_GetLocalClientNumv
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*8]
	lea edx, [eax+edx*4]
	mov ecx, edx
	shl ecx, 0x7
	sub ecx, edx
	add ecx, eax
	mov eax, esi
	add eax, [ecx+edi+0x656c0]
	add ebx, esi
	cmp ebx, 0x3fff1
	mov edx, 0x0
	cmovae eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CL_GetSkelTimeStamp()
_Z19CL_GetSkelTimeStampv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z19R_GetLocalClientNumv
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*8]
	lea edx, [eax+edx*4]
	mov ecx, edx
	shl ecx, 0x7
	sub ecx, edx
	add ecx, eax
	add ecx, clients
	mov eax, [ecx+0x256b8]
	leave
	ret


;CL_DObjCreateSkelForBones(DObj_s const*, int*, DObjAnimMat**)
_Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov [ebp-0x20], edx
	call _Z19R_GetLocalClientNumv
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*8]
	lea edx, [eax+edx*4]
	mov ecx, edx
	shl ecx, 0x7
	sub ecx, edx
	add ecx, eax
	mov eax, clients
	mov edi, [ecx+eax+0x256b8]
	mov [esp+0x4], edi
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z14DObjSkelExistsPK6DObj_si
	test eax, eax
	jz _Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat_10
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z16I_dmaGetDObjSkelPK6DObj_s
	mov edx, [ebp-0x20]
	mov [edx], eax
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24DObjSkelAreBonesUpToDatePK6DObj_sPi
_Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat_10:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z20DObjGetAllocSkelSizePK6DObj_s
	lea esi, [eax+0xf]
	and esi, 0xfffffff0
	call _Z19R_GetLocalClientNumv
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*8]
	lea edx, [eax+edx*4]
	mov ecx, edx
	shl ecx, 0x7
	sub ecx, edx
	lea ecx, [ecx+eax+0x256b0]
	mov eax, clients
	lea ecx, [ecx+eax+0xc]
	mov [esp+0x4], esi
	mov [esp], ecx
	call iInterlockedExchangeAdd
	mov ebx, eax
	call _Z19R_GetLocalClientNumv
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*8]
	lea edx, [eax+edx*4]
	mov ecx, edx
	shl ecx, 0x7
	sub ecx, edx
	add ecx, eax
	mov edx, ebx
	mov eax, clients
	add edx, [ecx+eax+0x656c0]
	lea eax, [esi+ebx]
	cmp eax, 0x3fff0
	jbe _Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat_20
_Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat_40:
	mov eax, [ebp-0x20]
	mov dword [eax], 0x0
	cmp edi, [_ZZ25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMatE9warnCount]
	jz _Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat_30
	mov [_ZZ25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMatE9warnCount], edi
	mov dword [esp+0x4], _cstring_warning_cl_skel_
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
_Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat_30:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat_20:
	test edx, edx
	jz _Z25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMat_40
	mov eax, [ebp-0x20]
	mov [eax], edx
	mov [esp+0x8], edi
	mov [esp+0x4], edx
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z14DObjCreateSkelPK6DObj_sPci
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of cl_pose_mp:
SECTION .data


;Initialized constant data of cl_pose_mp:
SECTION .rdata


;Zero initialized global or static variables of cl_pose_mp:
SECTION .bss
_ZZ25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMatE9warnCount: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_warning_cl_skel_:		db "WARNING: CL_SKEL_MEMORY_SIZE exceeded - not calculating skeleton",0ah,0



;All constant floats and doubles:
SECTION .rdata

