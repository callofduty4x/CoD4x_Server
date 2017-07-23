;Imports of cl_pose_mp:
	extern R_GetLocalClientNum
	extern clients
	extern InterlockedExchangeAdd
	extern DObjSkelExists
	extern I_dmaGetDObjSkel
	extern DObjSkelAreBonesUpToDate
	extern DObjGetAllocSkelSize
	extern Com_PrintWarning
	extern DObjCreateSkel

;Exports of cl_pose_mp:
	global _ZZ25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMatE9warnCount
	global CL_AllocSkelMemory
	global CL_GetSkelTimeStamp
	global CL_DObjCreateSkelForBones


SECTION .text


;CL_AllocSkelMemory(unsigned int)
CL_AllocSkelMemory:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	add ebx, 0xf
	and ebx, 0xfffffff0
	call R_GetLocalClientNum
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
	call InterlockedExchangeAdd
	mov esi, eax
	call R_GetLocalClientNum
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
CL_GetSkelTimeStamp:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call R_GetLocalClientNum
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
CL_DObjCreateSkelForBones:
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
	call R_GetLocalClientNum
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
	call DObjSkelExists
	test eax, eax
	jz CL_DObjCreateSkelForBones_10
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call I_dmaGetDObjSkel
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
	jmp DObjSkelAreBonesUpToDate
CL_DObjCreateSkelForBones_10:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call DObjGetAllocSkelSize
	lea esi, [eax+0xf]
	and esi, 0xfffffff0
	call R_GetLocalClientNum
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
	call InterlockedExchangeAdd
	mov ebx, eax
	call R_GetLocalClientNum
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
	jbe CL_DObjCreateSkelForBones_20
CL_DObjCreateSkelForBones_40:
	mov eax, [ebp-0x20]
	mov dword [eax], 0x0
	cmp edi, [_ZZ25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMatE9warnCount]
	jz CL_DObjCreateSkelForBones_30
	mov [_ZZ25CL_DObjCreateSkelForBonesPK6DObj_sPiPP11DObjAnimMatE9warnCount], edi
	mov dword [esp+0x4], _cstring_warning_cl_skel_
	mov dword [esp], 0xe
	call Com_PrintWarning
CL_DObjCreateSkelForBones_30:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DObjCreateSkelForBones_20:
	test edx, edx
	jz CL_DObjCreateSkelForBones_40
	mov eax, [ebp-0x20]
	mov [eax], edx
	mov [esp+0x8], edi
	mov [esp+0x4], edx
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call DObjCreateSkel
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

