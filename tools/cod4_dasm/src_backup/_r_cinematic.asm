;Imports of r_cinematic:
	extern _Z13Image_ReleaseP8GfxImage
	extern vidConfig
	extern rgp
	extern _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	extern colorWhite
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern BinkOpen
	extern fopen
	extern ftell
	extern fseek
	extern snprintf
	extern fclose
	extern BinkSetIOSize
	extern FSPathMakeRef
	extern FSGetCatalogInfo
	extern BinkMacOpen
	extern BinkGetError
	extern fread
	extern _Z7Sys_Cwdv
	extern _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	extern memset
	extern Z_MallocInternal
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern Z_FreeInternal
	extern _Z18RB_UnbindAllImagesv
	extern gfxCmdBufInput
	extern g_zones
	extern BinkClose
	extern BinkGetRealtime
	extern BinkPause
	extern BinkWait
	extern BinkControlBackgroundIO
	extern _Z24Sys_ResumeDatabaseThread11ThreadOwner
	extern _Z10I_strncpyzPcPKci
	extern Lock_Bink_textures
	extern BinkDoFrame
	extern dx_ctx
	extern Unlock_Bink_textures
	extern BinkNextFrame
	extern BinkSetMemory
	extern BinkSetSoundTrack
	extern _Z16Com_PrintWarningiPKcz
	extern BinkGetFrameBuffersInfo
	extern BinkRegisterFrameBuffers
	extern __udivdi3
	extern _Z25Sys_SuspendDatabaseThread11ThreadOwner
	extern BinkSetMixBinVolumes
	extern BinkSetVolume

;Exports of r_cinematic:
	global cinematicGlob
	global CINEMATIC_DEFAULT_FILENAME
	global _Z25R_Cinematic_ReleaseImagesP19CinematicTextureSet
	global _Z21R_Cinematic_Bink_FreePv
	global _Z43R_Cinematic_DrawLetterbox_OptionalCinematichf
	global _Z22R_Cinematic_Bink_Allocj
	global _Z24R_Cinematic_BinkOpenPathPKcjPci
	global _Z20R_Cinematic_BinkOpenPKcjPci
	global _Z32R_Cinematic_MakeBinkDrawTexturesv
	global _Z16R_Cinematic_Initv
	global _Z19R_Cinematic_SyncNowv
	global _Z20R_Cinematic_Shutdownv
	global _Z21R_Cinematic_IsStartedv
	global _Z22R_Cinematic_IsFinishedv
	global _Z22R_Cinematic_IsUnderrunv
	global _Z23R_Cinematic_IsNextReadyv
	global _Z23R_Cinematic_UpdateFramev
	global _Z24R_Cinematic_StopPlaybackv
	global _Z25R_Cinematic_EndLostDevicev
	global _Z25R_Cinematic_StartPlaybackPKcjf
	global _Z27R_Cinematic_BeginLostDevicev
	global _Z27R_Cinematic_InitBinkVolumesP4BINK
	global _Z29R_Cinematic_StartNextPlaybackv
	global _Z38R_Cinematic_DrawStretchPic_Letterboxedi


SECTION .text


;R_Cinematic_ReleaseImages(CinematicTextureSet*)
_Z25R_Cinematic_ReleaseImagesP19CinematicTextureSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov dword [ebp-0x1c], 0x0
	lea eax, [eax+0xd8]
	mov [ebp-0x20], eax
	lea edi, [ebx+0x90]
	lea esi, [ebx+0x48]
	mov dword [ebp-0x24], 0x0
_Z25R_Cinematic_ReleaseImagesP19CinematicTextureSet_10:
	mov edx, [ebp-0x24]
	lea eax, [ebx+edx]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	mov [esp], esi
	call _Z13Image_ReleaseP8GfxImage
	mov [esp], edi
	call _Z13Image_ReleaseP8GfxImage
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x24], 0x24
	add esi, 0x24
	add edi, 0x24
	add dword [ebp-0x20], 0x24
	cmp dword [ebp-0x1c], 0x2
	jnz _Z25R_Cinematic_ReleaseImagesP19CinematicTextureSet_10
	lea eax, [ebx+0x120]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	lea eax, [ebx+0x144]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	lea eax, [ebx+0x168]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	lea eax, [ebx+0x18c]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_Cinematic_Bink_Free(void*)
_Z21R_Cinematic_Bink_FreePv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_Cinematic_DrawLetterbox_OptionalCinematic(unsigned char, float)
_Z43R_Cinematic_DrawLetterbox_OptionalCinematichf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x31], al
	mov ecx, vidConfig
	mov edx, [ecx+0x8]
	test edx, edx
	js _Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_10
	cvtsi2ss xmm2, edx
_Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_50:
	mov edx, [ecx+0xc]
	test edx, edx
	js _Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_20
	cvtsi2ss xmm1, edx
_Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_40:
	movaps xmm3, xmm2
	mulss xmm3, [ecx+0x20]
	divss xmm3, dword [_float_1_77777779]
	movss [ebp-0x30], xmm3
	movaps xmm3, xmm1
	minss xmm3, dword [ebp-0x30]
	movss [ebp-0x30], xmm3
	movaps xmm3, xmm1
	subss xmm3, [ebp-0x30]
	mulss xmm3, [_float_0_50000000]
	movss [ebp-0x2c], xmm3
	xor esi, esi
	mov [ebp-0x28], esi
	mov [ebp-0x24], esi
	mov [ebp-0x20], esi
	movss [ebp-0x1c], xmm0
	mov edx, rgp
	mov eax, [edx+0x2034]
	mov [esp+0x24], eax
	lea ebx, [ebp-0x28]
	mov [esp+0x20], ebx
	mov edi, 0x3f800000
	mov [esp+0x1c], edi
	mov [esp+0x18], edi
	mov [esp+0x14], esi
	mov [esp+0x10], esi
	movss [esp+0xc], xmm3
	movss [esp+0x8], xmm2
	mov [esp+0x4], esi
	mov [esp], esi
	movss [ebp-0x48], xmm1
	movss [ebp-0x58], xmm2
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	mov edx, rgp
	mov eax, [edx+0x2034]
	mov [esp+0x24], eax
	mov [esp+0x20], ebx
	mov [esp+0x1c], edi
	mov [esp+0x18], edi
	mov [esp+0x14], esi
	mov [esp+0x10], esi
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0xc], xmm0
	movss xmm2, dword [ebp-0x58]
	movss [esp+0x8], xmm2
	movss xmm1, dword [ebp-0x48]
	subss xmm1, xmm0
	movss [esp+0x4], xmm1
	mov [esp], esi
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	cmp byte [ebp-0x31], 0x0
	movss xmm2, dword [ebp-0x58]
	jz _Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_30
	mov edx, rgp
	mov eax, [edx+0x20b0]
	mov [esp+0x24], eax
	mov eax, colorWhite
	mov [esp+0x20], eax
	mov [esp+0x1c], edi
	mov [esp+0x18], edi
	mov [esp+0x14], esi
	mov [esp+0x10], esi
	movss xmm0, dword [ebp-0x30]
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm2
	movss xmm3, dword [ebp-0x2c]
	movss [esp+0x4], xmm3
	mov [esp], esi
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
_Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_20:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_40
_Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm2, eax
	addss xmm2, xmm2
	jmp _Z43R_Cinematic_DrawLetterbox_OptionalCinematichf_50


;R_Cinematic_Bink_Alloc(unsigned int)
_Z22R_Cinematic_Bink_Allocj:
	push ebp
	mov ebp, esp
	mov eax, [cinematicGlob+0x408]
	mov edx, eax
	add edx, [ebp+0x8]
	mov [cinematicGlob+0x408], edx
	cmp edx, [cinematicGlob+0x40c]
	mov edx, 0xffffffff
	cmova eax, edx
	pop ebp
	ret
	nop


;R_Cinematic_BinkOpenPath(char const*, unsigned int, char*, int)
_Z24R_Cinematic_BinkOpenPathPKcjPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov ebx, eax
	mov [ebp-0xc0], ecx
	test dl, 0x8
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_10
	and dl, 0x20
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_20
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	test eax, eax
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_30
	mov ebx, [eax+0x8]
_Z24R_Cinematic_BinkOpenPathPKcjPci_130:
	mov dword [esp+0x4], 0x4104400
	mov [esp], ebx
	call BinkOpen
	mov [cinematicGlob+0x318], eax
	test eax, eax
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_40
_Z24R_Cinematic_BinkOpenPathPKcjPci_100:
	mov edx, [cinematicGlob+0x318]
	test edx, edx
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_50
	mov eax, 0x1
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_Cinematic_BinkOpenPathPKcjPci_20:
	mov dword [esp+0x4], _cstring_rb
	mov [esp], eax
	call fopen
	mov esi, eax
	test eax, eax
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_60
	mov [esp], eax
	call ftell
	mov ebx, eax
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call fseek
	mov [esp], esi
	call ftell
	mov edi, eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call fseek
	test edi, edi
	jle _Z24R_Cinematic_BinkOpenPathPKcjPci_70
	mov edx, [cinematicGlob+0x418]
	mov eax, [cinematicGlob+0x41c]
	sub eax, edx
	cmp edi, eax
	jle _Z24R_Cinematic_BinkOpenPathPKcjPci_80
	mov ebx, [ebp-0xc0]
	test ebx, ebx
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_90
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_cinematic_too_bi
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
_Z24R_Cinematic_BinkOpenPathPKcjPci_90:
	mov [esp], esi
	call fclose
_Z24R_Cinematic_BinkOpenPathPKcjPci_110:
	xor eax, eax
_Z24R_Cinematic_BinkOpenPathPKcjPci_120:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_Cinematic_BinkOpenPathPKcjPci_10:
	mov eax, [cinematicGlob+0x40c]
	sub eax, [cinematicGlob+0x408]
	sub eax, 0x180000
	mov [cinematicGlob+0x310], eax
	mov [esp], eax
	call BinkSetIOSize
	mov dword [esp+0x8], 0x0
	lea esi, [ebp-0xae]
	mov [esp+0x4], esi
	mov [esp], ebx
	call FSPathMakeRef
	test eax, eax
	jnz _Z24R_Cinematic_BinkOpenPathPKcjPci_100
	mov dword [esp+0x14], 0x0
	lea ebx, [ebp-0x5e]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call FSGetCatalogInfo
	test ax, ax
	jnz _Z24R_Cinematic_BinkOpenPathPKcjPci_100
	mov dword [esp+0x4], 0x1104400
	mov [esp], ebx
	call BinkMacOpen
	mov [cinematicGlob+0x318], eax
	jmp _Z24R_Cinematic_BinkOpenPathPKcjPci_100
_Z24R_Cinematic_BinkOpenPathPKcjPci_50:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_110
	call BinkGetError
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_binkopen_s
_Z24R_Cinematic_BinkOpenPathPKcjPci_150:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
	xor eax, eax
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_Cinematic_BinkOpenPathPKcjPci_60:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_110
	mov dword [esp+0x8], _cstring_open_failed
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
	xor eax, eax
	jmp _Z24R_Cinematic_BinkOpenPathPKcjPci_120
_Z24R_Cinematic_BinkOpenPathPKcjPci_80:
	lea eax, [edx+edi]
	mov [cinematicGlob+0x418], eax
	mov ebx, 0xffffffff
	cmp eax, [cinematicGlob+0x41c]
	cmovbe ebx, edx
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call fread
	mov [ebp-0xbc], eax
	mov [esp], esi
	call fclose
	cmp edi, [ebp-0xbc]
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_130
	mov ecx, [ebp-0xc0]
	test ecx, ecx
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_140
	mov eax, [ebp-0xbc]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_read_was_short_w
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
_Z24R_Cinematic_BinkOpenPathPKcjPci_140:
	mov eax, [cinematicGlob+0x414]
	mov [cinematicGlob+0x418], eax
	mov eax, [cinematicGlob+0x420]
	mov [cinematicGlob+0x41c], eax
	xor eax, eax
	jmp _Z24R_Cinematic_BinkOpenPathPKcjPci_120
_Z24R_Cinematic_BinkOpenPathPKcjPci_30:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_110
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_couldnt_find_raw
	jmp _Z24R_Cinematic_BinkOpenPathPKcjPci_150
_Z24R_Cinematic_BinkOpenPathPKcjPci_40:
	mov eax, [cinematicGlob+0x414]
	mov [cinematicGlob+0x418], eax
	mov eax, [cinematicGlob+0x420]
	mov [cinematicGlob+0x41c], eax
	jmp _Z24R_Cinematic_BinkOpenPathPKcjPci_100
_Z24R_Cinematic_BinkOpenPathPKcjPci_70:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz _Z24R_Cinematic_BinkOpenPathPKcjPci_90
	test edi, edi
	jnz _Z24R_Cinematic_BinkOpenPathPKcjPci_160
	mov dword [esp+0x8], _cstring_zero_file_size
_Z24R_Cinematic_BinkOpenPathPKcjPci_170:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
	jmp _Z24R_Cinematic_BinkOpenPathPKcjPci_90
_Z24R_Cinematic_BinkOpenPathPKcjPci_160:
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_getfilesize_fail
	jmp _Z24R_Cinematic_BinkOpenPathPKcjPci_170
	nop


;R_Cinematic_BinkOpen(char const*, unsigned int, char*, int)
_Z20R_Cinematic_BinkOpenPKcjPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23c
	mov ebx, eax
	mov esi, edx
	mov [ebp-0x21c], ecx
	call _Z7Sys_Cwdv
	mov edi, eax
	mov byte [ebp-0x118], 0x0
	test esi, 0x20
	jz _Z20R_Cinematic_BinkOpenPKcjPci_10
	mov dword [esp+0x10], _cstring_bik
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_videoss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x218]
	mov [esp], eax
	call snprintf
_Z20R_Cinematic_BinkOpenPKcjPci_50:
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [ebp-0x21c]
	mov edx, esi
	lea eax, [ebp-0x218]
	call _Z24R_Cinematic_BinkOpenPathPKcjPci
	test al, al
	jnz _Z20R_Cinematic_BinkOpenPKcjPci_20
	cmp byte [ebp-0x118], 0x0
	jnz _Z20R_Cinematic_BinkOpenPKcjPci_30
_Z20R_Cinematic_BinkOpenPKcjPci_40:
	xor eax, eax
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_Cinematic_BinkOpenPKcjPci_30:
	lea eax, [ebp-0x118]
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, [ebp-0x21c]
	mov edx, esi
	call _Z24R_Cinematic_BinkOpenPathPKcjPci
	test al, al
	jz _Z20R_Cinematic_BinkOpenPKcjPci_40
_Z20R_Cinematic_BinkOpenPKcjPci_20:
	mov eax, 0x1
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_Cinematic_BinkOpenPKcjPci_10:
	mov dword [esp+0x14], _cstring_bik
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_smainvideoss
	mov dword [esp+0x4], 0x100
	lea edx, [ebp-0x218]
	mov [esp], edx
	call snprintf
	mov dword [esp+0x14], _cstring_bik
	mov [esp+0x10], ebx
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_srawvideoss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x118]
	mov [esp], eax
	call snprintf
	jmp _Z20R_Cinematic_BinkOpenPKcjPci_50
	nop


;R_Cinematic_MakeBinkDrawTextures()
_Z32R_Cinematic_MakeBinkDrawTexturesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor edi, edi
	mov edx, cinematicGlob
	mov ecx, cinematicGlob+0x60
_Z32R_Cinematic_MakeBinkDrawTexturesv_10:
	mov eax, [edx+0x398]
	test eax, eax
	mov eax, 0x1
	cmovnz edi, eax
	add edx, 0x30
	cmp ecx, edx
	jnz _Z32R_Cinematic_MakeBinkDrawTexturesv_10
	mov eax, [cinematicGlob+0x794]
	lea eax, [eax+eax*2]
	lea eax, [eax+eax*8]
	shl eax, 0x4
	lea esi, [eax+cinematicGlob+0x430]
	lea ebx, [esi+0x124]
	mov dword [esp+0x18], _cstring_r_cinematic_make
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x10003
	mov dword [esp+0xc], 0x1
	mov eax, [cinematicGlob+0x364]
	mov [esp+0x8], eax
	mov eax, [cinematicGlob+0x360]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	mov eax, [ebx+0x4]
	mov [cinematicGlob+0x3e4], eax
	lea ebx, [esi+0x148]
	mov dword [esp+0x18], _cstring_r_cinematic_make
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x10003
	mov dword [esp+0xc], 0x1
	mov eax, [cinematicGlob+0x36c]
	mov [esp+0x8], eax
	mov eax, [cinematicGlob+0x368]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	mov eax, [ebx+0x4]
	mov [cinematicGlob+0x3e8], eax
	lea ebx, [esi+0x16c]
	mov dword [esp+0x18], _cstring_r_cinematic_make
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x10003
	mov dword [esp+0xc], 0x1
	mov eax, [cinematicGlob+0x36c]
	mov [esp+0x8], eax
	mov eax, [cinematicGlob+0x368]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	mov eax, [ebx+0x4]
	mov [cinematicGlob+0x3ec], eax
	mov eax, edi
	test al, al
	jnz _Z32R_Cinematic_MakeBinkDrawTexturesv_20
	mov dword [cinematicGlob+0x3f0], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32R_Cinematic_MakeBinkDrawTexturesv_20:
	lea ebx, [esi+0x190]
	mov dword [esp+0x18], _cstring_r_cinematic_make
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x10003
	mov dword [esp+0xc], 0x1
	mov eax, [cinematicGlob+0x364]
	mov [esp+0x8], eax
	mov eax, [cinematicGlob+0x360]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	mov eax, [ebx+0x4]
	mov [cinematicGlob+0x3f0], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_Cinematic_Init()
_Z16R_Cinematic_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x7a8
	mov dword [esp+0x4], 0x0
	mov dword [esp], cinematicGlob
	call memset
	mov dword [cinematicGlob+0x424], 0xffffffff
	mov dword [esp], 0xd00000
	call Z_MallocInternal
	mov [cinematicGlob+0x79c], eax
	leave
	ret
	nop


;R_Cinematic_SyncNow()
_Z19R_Cinematic_SyncNowv:
	push ebp
	mov ebp, esp
	mov byte [cinematicGlob+0x314], 0x1
	pop ebp
	jmp _Z23R_Cinematic_UpdateFramev


;R_Cinematic_Shutdown()
_Z20R_Cinematic_Shutdownv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0xe
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp], 0xf
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov byte [cinematicGlob+0x100], 0x0
	mov byte [cinematicGlob+0x308], 0x1
	mov byte [cinematicGlob+0x309], 0x0
	mov dword [esp], 0xf
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov dword [esp], 0xe
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov byte [cinematicGlob+0x314], 0x1
	call _Z23R_Cinematic_UpdateFramev
	xor esi, esi
	mov ebx, cinematicGlob+0x434
_Z20R_Cinematic_Shutdownv_10:
	mov eax, ebx
	call _Z25R_Cinematic_ReleaseImagesP19CinematicTextureSet
	add esi, 0x1
	add ebx, 0x1b0
	cmp esi, 0x2
	jnz _Z20R_Cinematic_Shutdownv_10
	mov eax, [cinematicGlob+0x79c]
	mov [esp], eax
	call Z_FreeInternal
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_Cinematic_IsStarted()
_Z21R_Cinematic_IsStartedv:
	push ebp
	mov ebp, esp
	cmp byte [cinematicGlob+0x309], 0x0
	jnz _Z21R_Cinematic_IsStartedv_10
	cmp byte [cinematicGlob], 0x0
	jz _Z21R_Cinematic_IsStartedv_10
	mov eax, 0x1
	pop ebp
	ret
_Z21R_Cinematic_IsStartedv_10:
	xor eax, eax
	pop ebp
	ret
	add [eax], al


;R_Cinematic_IsFinished()
_Z22R_Cinematic_IsFinishedv:
	push ebp
	mov ebp, esp
	movzx eax, byte [cinematicGlob+0x309]
	pop ebp
	ret
	add [eax], al


;R_Cinematic_IsUnderrun()
_Z22R_Cinematic_IsUnderrunv:
	push ebp
	mov ebp, esp
	movzx eax, byte [cinematicGlob+0x7a4]
	pop ebp
	ret


;R_Cinematic_IsNextReady()
_Z23R_Cinematic_IsNextReadyv:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp byte [cinematicGlob+0x200], 0x0
	setnz al
	pop ebp
	ret
	nop


;R_Cinematic_UpdateFrame()
_Z23R_Cinematic_UpdateFramev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20c
	mov dword [esp], 0xe
	call _Z24Sys_EnterCriticalSection15CriticalSection
	movzx eax, byte [cinematicGlob+0x314]
	mov byte [cinematicGlob+0x314], 0x0
	mov dword [esp], 0xf
	call _Z24Sys_EnterCriticalSection15CriticalSection
	movzx ebx, byte [cinematicGlob+0x308]
	test bl, bl
	jnz _Z23R_Cinematic_UpdateFramev_10
	mov byte [ebp-0x1d0], 0x0
	xor esi, esi
_Z23R_Cinematic_UpdateFramev_280:
	mov dword [esp], 0xf
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov byte [cinematicGlob+0x7a4], 0x0
	test bl, bl
	jz _Z23R_Cinematic_UpdateFramev_20
	cmp byte [cinematicGlob], 0x0
	jnz _Z23R_Cinematic_UpdateFramev_30
	cmp byte [ebp-0x1d0], 0x0
	jnz _Z23R_Cinematic_UpdateFramev_40
_Z23R_Cinematic_UpdateFramev_180:
	mov byte [cinematicGlob], 0x0
_Z23R_Cinematic_UpdateFramev_20:
	cmp byte [cinematicGlob], 0x0
	jnz _Z23R_Cinematic_UpdateFramev_50
	mov eax, [cinematicGlob+0x3f4]
	test eax, eax
	jnz _Z23R_Cinematic_UpdateFramev_60
_Z23R_Cinematic_UpdateFramev_90:
	cmp dword [cinematicGlob+0x424], 0xffffffff
	jz _Z23R_Cinematic_UpdateFramev_70
_Z23R_Cinematic_UpdateFramev_100:
	mov eax, [cinematicGlob+0x798]
	lea eax, [eax+eax*2]
	lea eax, [eax+eax*8]
	shl eax, 0x4
	lea esi, [eax+cinematicGlob+0x430]
	lea ebx, [esi+0x4]
	call _Z18RB_UnbindAllImagesv
	mov edx, gfxCmdBufInput
	lea eax, [esi+0x124]
	mov [edx+0x3f8], eax
	lea eax, [esi+0x148]
	mov [edx+0x3fc], eax
	lea eax, [esi+0x16c]
	mov [edx+0x400], eax
	mov eax, [ebx+0x190]
	test eax, eax
	jz _Z23R_Cinematic_UpdateFramev_80
	lea eax, [esi+0x190]
	mov [edx+0x404], eax
	mov dword [esp], 0xe
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_Cinematic_UpdateFramev_60:
	mov eax, [cinematicGlob+0x428]
	add eax, 0x1
	mov [cinematicGlob+0x428], eax
	cmp eax, 0x4
	jle _Z23R_Cinematic_UpdateFramev_90
	mov dword [cinematicGlob+0x3f4], 0x0
	mov dword [cinematicGlob+0x3f8], 0x0
	mov dword [cinematicGlob+0x3fc], 0x0
	mov dword [cinematicGlob+0x400], 0x0
	mov dword [cinematicGlob+0x404], 0x0
	mov dword [cinematicGlob+0x408], 0x0
	mov dword [cinematicGlob+0x40c], 0x0
	mov dword [cinematicGlob+0x410], 0x0
	mov dword [cinematicGlob+0x414], 0x0
	mov dword [cinematicGlob+0x418], 0x0
	mov dword [cinematicGlob+0x41c], 0x0
	mov dword [cinematicGlob+0x420], 0x0
	cmp dword [cinematicGlob+0x424], 0xffffffff
	jnz _Z23R_Cinematic_UpdateFramev_100
_Z23R_Cinematic_UpdateFramev_70:
	call _Z18RB_UnbindAllImagesv
	mov edx, rgp
	mov ecx, [edx+0x200c]
	mov eax, gfxCmdBufInput
	mov [eax+0x3f8], ecx
	mov edx, [edx+0x2018]
	mov [eax+0x3fc], edx
	mov [eax+0x400], edx
	mov [eax+0x404], ecx
	mov dword [esp], 0xe
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_Cinematic_UpdateFramev_40:
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x1
	mov dword [ebp-0x48], 0x2
	mov dword [ebp-0x44], 0x3
	mov dword [ebp-0x40], 0x4
	mov dword [cinematicGlob+0x424], 0xffffffff
	xor dword [cinematicGlob+0x794], 0x1
	mov ecx, [cinematicGlob+0x3f4]
	test ecx, ecx
	jz _Z23R_Cinematic_UpdateFramev_110
	mov dword [cinematicGlob+0x404], 0x0
	mov dword [cinematicGlob+0x408], 0x0
	mov dword [cinematicGlob+0x40c], 0x0
	mov dword [cinematicGlob+0x410], 0x0
	mov dword [cinematicGlob+0x414], 0x0
	mov dword [cinematicGlob+0x418], 0x0
	mov dword [cinematicGlob+0x41c], 0x0
	mov dword [cinematicGlob+0x420], 0x0
	mov eax, [cinematicGlob+0x3f4]
	mov [cinematicGlob+0x3f8], eax
	mov eax, [cinematicGlob+0x400]
	mov [cinematicGlob+0x3fc], eax
	test esi, 0x8
	jz _Z23R_Cinematic_UpdateFramev_120
	test esi, 0x20
	jz _Z23R_Cinematic_UpdateFramev_130
_Z23R_Cinematic_UpdateFramev_120:
	xor edi, edi
	mov dword [ebp-0x1e4], 0x89ac00
_Z23R_Cinematic_UpdateFramev_460:
	mov eax, [cinematicGlob+0x3f8]
	mov ebx, eax
	lea edx, [eax+g_zones+0x500]
	mov [cinematicGlob+0x3f8], edx
	cmp edx, [cinematicGlob+0x3fc]
	jbe _Z23R_Cinematic_UpdateFramev_140
	mov ebx, 0xffffffff
	mov eax, 0xffffffff
_Z23R_Cinematic_UpdateFramev_140:
	mov ecx, edx
	lea edx, [edx+edi]
	mov [cinematicGlob+0x3f8], edx
	cmp edx, [cinematicGlob+0x3fc]
	jbe _Z23R_Cinematic_UpdateFramev_150
	lea edx, [edi-0x1]
	mov ecx, 0xffffffff
_Z23R_Cinematic_UpdateFramev_150:
	mov [cinematicGlob+0x404], ebx
	mov [cinematicGlob+0x408], ebx
	add eax, [ebp-0x1e4]
	jmp _Z23R_Cinematic_UpdateFramev_160
_Z23R_Cinematic_UpdateFramev_30:
	mov dword [cinematicGlob+0x424], 0xffffffff
	cmp byte [cinematicGlob+0x316], 0x0
	jnz _Z23R_Cinematic_UpdateFramev_170
_Z23R_Cinematic_UpdateFramev_430:
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkClose
	mov dword [cinematicGlob+0x318], 0x0
	mov eax, [cinematicGlob+0x404]
	mov [cinematicGlob+0x408], eax
	mov eax, [cinematicGlob+0x410]
	mov [cinematicGlob+0x40c], eax
	cmp byte [ebp-0x1d0], 0x0
	jz _Z23R_Cinematic_UpdateFramev_180
	jmp _Z23R_Cinematic_UpdateFramev_40
_Z23R_Cinematic_UpdateFramev_50:
	mov dword [cinematicGlob+0x428], 0x0
	mov ebx, [cinematicGlob+0x430]
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xd0]
	mov [esp+0x4], eax
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkGetRealtime
	mov ecx, [cinematicGlob+0x304]
	test cl, 0x8
	jnz _Z23R_Cinematic_UpdateFramev_190
	mov eax, [ebp-0xa0]
	cmp eax, [ebp-0xa4]
	jae _Z23R_Cinematic_UpdateFramev_190
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	xor edx, edx
	div dword [cinematicGlob+0x310]
	cmp eax, 0x27
	ja _Z23R_Cinematic_UpdateFramev_190
	and cl, 0x1
	jz _Z23R_Cinematic_UpdateFramev_200
_Z23R_Cinematic_UpdateFramev_190:
	cmp ebx, [cinematicGlob+0x42c]
	jz _Z23R_Cinematic_UpdateFramev_210
	xor eax, eax
	cmp ebx, 0x1
	setz al
	mov [esp+0x4], eax
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkPause
	mov [cinematicGlob+0x42c], ebx
_Z23R_Cinematic_UpdateFramev_210:
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkWait
	test eax, eax
	jz _Z23R_Cinematic_UpdateFramev_220
_Z23R_Cinematic_UpdateFramev_290:
	mov ecx, [cinematicGlob+0x304]
	mov edx, [cinematicGlob+0x318]
_Z23R_Cinematic_UpdateFramev_320:
	and cl, 0x2
	jnz _Z23R_Cinematic_UpdateFramev_230
	mov eax, [edx+0xc]
	cmp eax, [edx+0x8]
	jz _Z23R_Cinematic_UpdateFramev_240
_Z23R_Cinematic_UpdateFramev_230:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], edx
	call BinkGetRealtime
	mov ecx, [ebp-0x50]
	cmp ecx, 0x7fffffff
	jbe _Z23R_Cinematic_UpdateFramev_250
	mov dword [cinematicGlob+0x30c], 0x0
	test byte [cinematicGlob+0x304], 0x8
	jnz _Z23R_Cinematic_UpdateFramev_260
_Z23R_Cinematic_UpdateFramev_410:
	mov eax, [ebp-0x20]
	cmp eax, [ebp-0x24]
	jae _Z23R_Cinematic_UpdateFramev_260
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	xor edx, edx
	div dword [cinematicGlob+0x310]
	cmp byte [cinematicGlob+0x316], 0x0
	jz _Z23R_Cinematic_UpdateFramev_270
_Z23R_Cinematic_UpdateFramev_420:
	cmp eax, 0x5f
	jbe _Z23R_Cinematic_UpdateFramev_90
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call _Z24Sys_ResumeDatabaseThread11ThreadOwner
	mov byte [cinematicGlob+0x316], 0x0
	jmp _Z23R_Cinematic_UpdateFramev_90
_Z23R_Cinematic_UpdateFramev_10:
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], cinematicGlob+0x100
	lea eax, [ebp-0x1d0]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov byte [cinematicGlob+0x308], 0x0
	mov esi, [cinematicGlob+0x304]
	jmp _Z23R_Cinematic_UpdateFramev_280
_Z23R_Cinematic_UpdateFramev_220:
	cmp byte [cinematicGlob+0x7a4], 0x0
	jnz _Z23R_Cinematic_UpdateFramev_290
	mov dword [esp], cinematicGlob+0x31c
	call Lock_Bink_textures
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkDoFrame
	test eax, eax
	jnz _Z23R_Cinematic_UpdateFramev_300
	mov eax, [cinematicGlob+0x370]
	mov [cinematicGlob+0x424], eax
	mov eax, [cinematicGlob+0x794]
	mov [cinematicGlob+0x798], eax
_Z23R_Cinematic_UpdateFramev_300:
	mov eax, [cinematicGlob+0x318]
	mov [esp+0x8], eax
	mov dword [esp+0x4], cinematicGlob+0x31c
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov [esp], eax
	call Unlock_Bink_textures
	mov ecx, [cinematicGlob+0x304]
	test cl, 0x2
	jnz _Z23R_Cinematic_UpdateFramev_310
	mov edx, [cinematicGlob+0x318]
	mov eax, [edx+0xc]
	cmp eax, [edx+0x8]
	jz _Z23R_Cinematic_UpdateFramev_320
_Z23R_Cinematic_UpdateFramev_490:
	mov [esp], edx
	call BinkNextFrame
	mov ecx, [cinematicGlob+0x304]
	mov edx, [cinematicGlob+0x318]
	jmp _Z23R_Cinematic_UpdateFramev_320
_Z23R_Cinematic_UpdateFramev_110:
	mov eax, [cinematicGlob+0x79c]
	mov [cinematicGlob+0x3f4], eax
	mov [cinematicGlob+0x3f8], eax
	add eax, 0xd00000
	mov [cinematicGlob+0x400], eax
	mov [cinematicGlob+0x3fc], eax
	test esi, 0x8
	jz _Z23R_Cinematic_UpdateFramev_330
	test esi, 0x20
	jz _Z23R_Cinematic_UpdateFramev_340
_Z23R_Cinematic_UpdateFramev_330:
	xor edi, edi
	mov dword [ebp-0x1e0], 0x89ac00
_Z23R_Cinematic_UpdateFramev_470:
	mov eax, [cinematicGlob+0x3f8]
	mov ebx, eax
	lea edx, [eax+g_zones+0x500]
	mov [cinematicGlob+0x3f8], edx
	cmp edx, [cinematicGlob+0x3fc]
	jbe _Z23R_Cinematic_UpdateFramev_350
	mov ebx, 0xffffffff
	mov eax, 0xffffffff
_Z23R_Cinematic_UpdateFramev_350:
	mov ecx, edx
	lea edx, [edx+edi]
	mov [cinematicGlob+0x3f8], edx
	cmp edx, [cinematicGlob+0x3fc]
	jbe _Z23R_Cinematic_UpdateFramev_360
	lea edx, [edi-0x1]
	mov ecx, 0xffffffff
_Z23R_Cinematic_UpdateFramev_360:
	mov [cinematicGlob+0x404], ebx
	mov [cinematicGlob+0x408], ebx
	add eax, [ebp-0x1e0]
_Z23R_Cinematic_UpdateFramev_160:
	mov [cinematicGlob+0x410], eax
	mov [cinematicGlob+0x40c], eax
	mov [cinematicGlob+0x414], ecx
	mov [cinematicGlob+0x418], ecx
	mov [cinematicGlob+0x420], edx
	mov [cinematicGlob+0x41c], edx
	mov dword [esp+0x4], _Z21R_Cinematic_Bink_FreePv
	mov dword [esp], _Z22R_Cinematic_Bink_Allocj
	call BinkSetMemory
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov dword [esp], 0x5
	call BinkSetSoundTrack
	mov dword [cinematicGlob+0x30c], 0x0
	mov byte [ebp-0xd0], 0x0
	lea ebx, [ebp-0xd0]
	mov dword [esp], 0x80
	mov ecx, ebx
	mov edx, esi
	lea eax, [ebp-0x1d0]
	call _Z20R_Cinematic_BinkOpenPKcjPci
	test al, al
	jnz _Z23R_Cinematic_UpdateFramev_370
	mov [esp+0xc], ebx
	lea eax, [ebp-0x1d0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_cinematic_bink
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	mov eax, [cinematicGlob+0x404]
	mov [cinematicGlob+0x408], eax
	mov eax, [cinematicGlob+0x410]
	mov [cinematicGlob+0x40c], eax
	mov byte [ebp-0xd0], 0x0
	mov dword [esp], 0x80
	mov ecx, ebx
	mov edx, esi
	mov eax, _cstring_default
	call _Z20R_Cinematic_BinkOpenPKcjPci
	test al, al
	jz _Z23R_Cinematic_UpdateFramev_380
_Z23R_Cinematic_UpdateFramev_370:
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call _Z27R_Cinematic_InitBinkVolumesP4BINK
	mov dword [esp+0x8], 0xd8
	mov dword [esp+0x4], 0x0
	mov dword [esp], cinematicGlob+0x31c
	call memset
	mov dword [esp+0x4], cinematicGlob+0x35c
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkGetFrameBuffersInfo
	call _Z18RB_UnbindAllImagesv
	mov ebx, [cinematicGlob+0x794]
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx+ebx*8]
	shl ebx, 0x4
	add ebx, cinematicGlob+0x430
	lea edi, [ebx+0x4]
	mov eax, edi
	call _Z25R_Cinematic_ReleaseImagesP19CinematicTextureSet
	mov dword [ebp-0x1e8], 0x0
	mov dword [ebp-0x1dc], cinematicGlob
	lea edx, [ebx+0xdc]
	mov [ebp-0x1ec], edx
	lea ecx, [ebx+0x94]
	mov [ebp-0x1f0], ecx
	add ebx, 0x4c
	mov [ebp-0x1f4], ebx
	xor esi, esi
	mov ebx, cinematicGlob+0x31c
_Z23R_Cinematic_UpdateFramev_400:
	lea edx, [edi+esi]
	mov dword [esp+0x18], _cstring_r_cinematic_make
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x40003
	mov dword [esp+0xc], 0x1
	mov eax, [cinematicGlob+0x364]
	mov [esp+0x8], eax
	mov eax, [cinematicGlob+0x360]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	mov eax, [esi+edi+0x4]
	mov [ebx+0x10], eax
	mov dword [esp+0x18], _cstring_r_cinematic_make
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x40003
	mov dword [esp+0xc], 0x1
	mov eax, [cinematicGlob+0x36c]
	mov [esp+0x8], eax
	mov eax, [cinematicGlob+0x368]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1f4]
	mov [esp], eax
	call _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	mov eax, [esi+edi+0x4c]
	mov [ebx+0x14], eax
	mov dword [esp+0x18], _cstring_r_cinematic_make
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x40003
	mov dword [esp+0xc], 0x1
	mov eax, [cinematicGlob+0x36c]
	mov [esp+0x8], eax
	mov eax, [cinematicGlob+0x368]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1f0]
	mov [esp], edx
	call _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	mov eax, [esi+edi+0x94]
	mov [ebx+0x18], eax
	mov ecx, [ebp-0x1dc]
	mov edx, [ecx+0x398]
	test edx, edx
	jnz _Z23R_Cinematic_UpdateFramev_390
	mov dword [ebx+0x1c], 0x0
_Z23R_Cinematic_UpdateFramev_450:
	add dword [ebp-0x1e8], 0x1
	add ebx, 0x20
	add esi, 0x24
	add dword [ebp-0x1f4], 0x24
	add dword [ebp-0x1f0], 0x24
	add dword [ebp-0x1ec], 0x24
	add dword [ebp-0x1dc], 0x30
	cmp dword [ebp-0x1e8], 0x2
	jnz _Z23R_Cinematic_UpdateFramev_400
	call _Z32R_Cinematic_MakeBinkDrawTexturesv
	mov dword [esp+0x4], cinematicGlob+0x35c
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkRegisterFrameBuffers
	mov dword [cinematicGlob+0x42c], 0x0
	mov dword [esp+0x8], 0x100
	lea edx, [ebp-0x1d0]
	mov [esp+0x4], edx
	mov dword [esp], cinematicGlob
	call _Z10I_strncpyzPcPKci
	jmp _Z23R_Cinematic_UpdateFramev_20
_Z23R_Cinematic_UpdateFramev_250:
	mov esi, [ebp-0x48]
	mov eax, ecx
	mul esi
	mov ecx, eax
	mov ebx, edx
	mov esi, eax
	mov edi, edx
	shld edi, esi, 0x2
	shl esi, 0x2
	shld edx, eax, 0x7
	shl eax, 0x7
	sub eax, esi
	sbb edx, edi
	add eax, ecx
	adc edx, ebx
	shld edx, eax, 0x3
	shl eax, 0x3
	mov ecx, [ebp-0x4c]
	mov [esp+0x8], ecx
	mov dword [esp+0xc], 0x0
	mov [esp], eax
	mov [esp+0x4], edx
	call __udivdi3
	mov [cinematicGlob+0x30c], eax
	test byte [cinematicGlob+0x304], 0x8
	jz _Z23R_Cinematic_UpdateFramev_410
_Z23R_Cinematic_UpdateFramev_260:
	mov eax, 0x64
	cmp byte [cinematicGlob+0x316], 0x0
	jnz _Z23R_Cinematic_UpdateFramev_420
_Z23R_Cinematic_UpdateFramev_270:
	cmp eax, 0x31
	ja _Z23R_Cinematic_UpdateFramev_90
	mov dword [esp+0x4], 0x2
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call _Z25Sys_SuspendDatabaseThread11ThreadOwner
	mov byte [cinematicGlob+0x316], 0x1
	jmp _Z23R_Cinematic_UpdateFramev_90
_Z23R_Cinematic_UpdateFramev_170:
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call _Z24Sys_ResumeDatabaseThread11ThreadOwner
	mov byte [cinematicGlob+0x316], 0x0
	jmp _Z23R_Cinematic_UpdateFramev_430
_Z23R_Cinematic_UpdateFramev_240:
	cmp byte [cinematicGlob+0x316], 0x0
	jnz _Z23R_Cinematic_UpdateFramev_440
_Z23R_Cinematic_UpdateFramev_480:
	mov byte [cinematicGlob+0x309], 0x1
	jmp _Z23R_Cinematic_UpdateFramev_90
_Z23R_Cinematic_UpdateFramev_80:
	mov eax, rgp
	mov eax, [eax+0x2008]
	mov [edx+0x404], eax
	mov dword [esp], 0xe
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_Cinematic_UpdateFramev_390:
	mov dword [esp+0x18], _cstring_r_cinematic_make
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x40003
	mov dword [esp+0xc], 0x1
	mov eax, [cinematicGlob+0x364]
	mov [esp+0x8], eax
	mov eax, [cinematicGlob+0x360]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1ec]
	mov [esp], eax
	call _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	mov eax, [esi+edi+0xdc]
	mov [ebx+0x1c], eax
	jmp _Z23R_Cinematic_UpdateFramev_450
_Z23R_Cinematic_UpdateFramev_200:
	mov byte [cinematicGlob+0x7a4], 0x1
	mov ebx, 0x1
	jmp _Z23R_Cinematic_UpdateFramev_190
_Z23R_Cinematic_UpdateFramev_130:
	mov edi, 0x71ac00
	mov dword [ebp-0x1e4], 0x180000
	jmp _Z23R_Cinematic_UpdateFramev_460
_Z23R_Cinematic_UpdateFramev_340:
	mov edi, 0x71ac00
	mov dword [ebp-0x1e0], 0x180000
	jmp _Z23R_Cinematic_UpdateFramev_470
_Z23R_Cinematic_UpdateFramev_440:
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call _Z24Sys_ResumeDatabaseThread11ThreadOwner
	mov byte [cinematicGlob+0x316], 0x0
	jmp _Z23R_Cinematic_UpdateFramev_480
_Z23R_Cinematic_UpdateFramev_380:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_default
	mov dword [esp+0x4], _cstring_r_cinematic_bink1
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	mov eax, [cinematicGlob+0x404]
	mov [cinematicGlob+0x408], eax
	mov eax, [cinematicGlob+0x410]
	mov [cinematicGlob+0x40c], eax
	mov byte [cinematicGlob+0x309], 0x1
	call _Z18RB_UnbindAllImagesv
	mov edx, rgp
	mov ecx, [edx+0x200c]
	mov eax, gfxCmdBufInput
	mov [eax+0x3f8], ecx
	mov edx, [edx+0x2018]
	mov [eax+0x3fc], edx
	mov [eax+0x400], edx
	mov [eax+0x404], ecx
	jmp _Z23R_Cinematic_UpdateFramev_180
_Z23R_Cinematic_UpdateFramev_310:
	mov edx, [cinematicGlob+0x318]
	jmp _Z23R_Cinematic_UpdateFramev_490


;R_Cinematic_StopPlayback()
_Z24R_Cinematic_StopPlaybackv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0xe
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp], 0xf
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov byte [cinematicGlob+0x100], 0x0
	mov byte [cinematicGlob+0x308], 0x1
	mov byte [cinematicGlob+0x309], 0x0
	mov dword [esp], 0xf
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov dword [esp], 0xe
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	leave
	ret
	nop
	add [eax], al


;R_Cinematic_EndLostDevice()
_Z25R_Cinematic_EndLostDevicev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], 0xe
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov ebx, [cinematicGlob+0x318]
	test ebx, ebx
	jz _Z25R_Cinematic_EndLostDevicev_10
	call _Z32R_Cinematic_MakeBinkDrawTexturesv
	mov ebx, [cinematicGlob+0x364]
	mov esi, [cinematicGlob+0x3e4]
	mov eax, [esi]
	mov dword [esp+0x10], 0x2000
	mov dword [esp+0xc], 0x0
	lea edi, [ebp-0x20]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call dword [eax+0x4c]
	imul ebx, [ebp-0x20]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memset
	mov eax, [esi]
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call dword [eax+0x50]
	mov ebx, [cinematicGlob+0x36c]
	mov esi, [cinematicGlob+0x3e8]
	mov eax, [esi]
	mov dword [esp+0x10], 0x2000
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call dword [eax+0x4c]
	imul ebx, [ebp-0x20]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x80
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memset
	mov eax, [esi]
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call dword [eax+0x50]
	mov ebx, [cinematicGlob+0x36c]
	mov esi, [cinematicGlob+0x3ec]
	mov eax, [esi]
	mov dword [esp+0x10], 0x2000
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call dword [eax+0x4c]
	imul ebx, [ebp-0x20]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x80
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memset
	mov eax, [esi]
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call dword [eax+0x50]
	mov esi, [cinematicGlob+0x3f0]
	test esi, esi
	jz _Z25R_Cinematic_EndLostDevicev_10
	mov ebx, [cinematicGlob+0x364]
	mov eax, [esi]
	mov dword [esp+0x10], 0x2000
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call dword [eax+0x4c]
	imul ebx, [ebp-0x20]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memset
	mov eax, [esi]
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call dword [eax+0x50]
_Z25R_Cinematic_EndLostDevicev_10:
	mov dword [esp], 0xe
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;R_Cinematic_StartPlayback(char const*, unsigned int, float)
_Z25R_Cinematic_StartPlaybackPKcjf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov dword [esp], 0xe
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp], 0xf
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov dword [esp], cinematicGlob+0x100
	call _Z10I_strncpyzPcPKci
	mov byte [cinematicGlob+0x308], 0x1
	mov byte [cinematicGlob+0x309], 0x0
	mov dword [cinematicGlob+0x430], 0x0
	mov [cinematicGlob+0x304], esi
	mov [cinematicGlob+0x7a0], edi
	mov dword [esp], 0xf
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov dword [ebp+0x8], 0xe
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
	nop
	add [eax], al


;R_Cinematic_BeginLostDevice()
_Z27R_Cinematic_BeginLostDevicev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0xe
	call _Z24Sys_EnterCriticalSection15CriticalSection
	cmp byte [cinematicGlob+0x316], 0x0
	jnz _Z27R_Cinematic_BeginLostDevicev_10
_Z27R_Cinematic_BeginLostDevicev_80:
	cmp byte [cinematicGlob+0x309], 0x0
	jnz _Z27R_Cinematic_BeginLostDevicev_20
	cmp byte [cinematicGlob], 0x0
	jnz _Z27R_Cinematic_BeginLostDevicev_30
_Z27R_Cinematic_BeginLostDevicev_20:
	xor eax, eax
_Z27R_Cinematic_BeginLostDevicev_70:
	test eax, eax
	jz _Z27R_Cinematic_BeginLostDevicev_40
	mov eax, [cinematicGlob+0x42c]
	test eax, eax
	jz _Z27R_Cinematic_BeginLostDevicev_50
_Z27R_Cinematic_BeginLostDevicev_40:
	xor esi, esi
	mov ebx, cinematicGlob+0x430
_Z27R_Cinematic_BeginLostDevicev_60:
	lea eax, [ebx+0x124]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	lea eax, [ebx+0x148]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	lea eax, [ebx+0x16c]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	lea eax, [ebx+0x190]
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
	add esi, 0x1
	add ebx, 0x1b0
	cmp esi, 0x2
	jnz _Z27R_Cinematic_BeginLostDevicev_60
	mov dword [esp], 0xe
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z27R_Cinematic_BeginLostDevicev_30:
	mov eax, 0x1
	jmp _Z27R_Cinematic_BeginLostDevicev_70
_Z27R_Cinematic_BeginLostDevicev_10:
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call _Z24Sys_ResumeDatabaseThread11ThreadOwner
	mov byte [cinematicGlob+0x316], 0x0
	jmp _Z27R_Cinematic_BeginLostDevicev_80
_Z27R_Cinematic_BeginLostDevicev_50:
	mov dword [cinematicGlob+0x42c], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkPause
	jmp _Z27R_Cinematic_BeginLostDevicev_40


;R_Cinematic_InitBinkVolumes(BINK*)
_Z27R_Cinematic_InitBinkVolumesP4BINK:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movss xmm0, dword [_float_32768_00000000]
	mulss xmm0, [cinematicGlob+0x7a0]
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm1, dword [_data16_4f000000]
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	andps xmm1, xmm2
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0x48], xmm0
	mov eax, [ebp-0x48]
	cmp eax, 0x7fff
	jle _Z27R_Cinematic_InitBinkVolumesP4BINK_10
	mov esi, 0x8000
_Z27R_Cinematic_InitBinkVolumesP4BINK_20:
	cld
	mov ebx, 0x8
	lea edi, [ebp-0x38]
	mov ecx, ebx
	xor eax, eax
	rep stosd
	mov [ebp-0x38], esi
	mov [ebp-0x34], esi
	mov dword [esp+0x10], 0x8
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetMixBinVolumes
	cld
	lea edi, [ebp-0x38]
	mov ecx, ebx
	xor eax, eax
	rep stosd
	mov [ebp-0x30], esi
	mov dword [esp+0x10], 0x8
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetMixBinVolumes
	cld
	lea edi, [ebp-0x38]
	mov ecx, ebx
	xor eax, eax
	rep stosd
	mov [ebp-0x2c], esi
	mov dword [esp+0x10], 0x8
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetMixBinVolumes
	cld
	lea edi, [ebp-0x38]
	mov ecx, ebx
	xor eax, eax
	rep stosd
	mov [ebp-0x28], esi
	mov [ebp-0x24], esi
	mov dword [esp+0x10], 0x8
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetMixBinVolumes
	cld
	lea edi, [ebp-0x38]
	mov ecx, ebx
	xor eax, eax
	rep stosd
	mov [ebp-0x20], esi
	mov [ebp-0x1c], esi
	mov dword [esp+0x10], 0x8
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetMixBinVolumes
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetVolume
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetVolume
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetVolume
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkSetVolume
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_Cinematic_InitBinkVolumesP4BINK_10:
	xor esi, esi
	test eax, eax
	cmovg esi, [ebp-0x48]
	jmp _Z27R_Cinematic_InitBinkVolumesP4BINK_20


;R_Cinematic_StartNextPlayback()
_Z29R_Cinematic_StartNextPlaybackv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0xe
	call _Z24Sys_EnterCriticalSection15CriticalSection
	cmp byte [cinematicGlob+0x200], 0x0
	jz _Z29R_Cinematic_StartNextPlaybackv_10
	mov esi, [cinematicGlob+0x7a0]
	mov ebx, [cinematicGlob+0x300]
	mov dword [esp], 0xf
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], cinematicGlob+0x200
	mov dword [esp], cinematicGlob+0x100
	call _Z10I_strncpyzPcPKci
	mov byte [cinematicGlob+0x308], 0x1
	mov byte [cinematicGlob+0x309], 0x0
	mov dword [cinematicGlob+0x430], 0x0
	mov [cinematicGlob+0x304], ebx
	mov [cinematicGlob+0x7a0], esi
	mov dword [esp], 0xf
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov byte [cinematicGlob+0x200], 0x0
_Z29R_Cinematic_StartNextPlaybackv_10:
	mov dword [esp], 0xe
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_Cinematic_DrawStretchPic_Letterboxed(int)
_Z38R_Cinematic_DrawStretchPic_Letterboxedi:
	push ebp
	mov ebp, esp
	movss xmm0, dword [_float_1_00000000]
	mov eax, 0x1
	pop ebp
	jmp _Z43R_Cinematic_DrawLetterbox_OptionalCinematichf


;Initialized global or static variables of r_cinematic:
SECTION .data


;Initialized constant data of r_cinematic:
SECTION .rdata


;Zero initialized global or static variables of r_cinematic:
SECTION .bss
cinematicGlob: resb 0x800


;All cstrings:
SECTION .rdata
_cstring_rb:		db "rb",0
_cstring_cinematic_too_bi:		db "Cinematic too big (%i > %i)",0
_cstring_binkopen_s:		db "BinkOpen: %s",0
_cstring_open_failed:		db "Open failed",0
_cstring_read_was_short_w:		db "Read was short (wanted %i got %i)",0
_cstring_couldnt_find_raw:		db "Couldn",27h,"t find rawfile ",27h,"%s",27h," in db",0
_cstring_zero_file_size:		db "Zero file size",0
_cstring_getfilesize_fail:		db "GetFileSize failed (%i)",0
_cstring_bik:		db "bik",0
_cstring_videoss:		db "video/%s.%s",0
_cstring_smainvideoss:		db "%s/main/video/%s.%s",0
_cstring_srawvideoss:		db "%s/raw/video/%s.%s",0
_cstring_r_cinematic_make:		db "R_Cinematic_MakeBinkTexture",0
_cstring_r_cinematic_bink:		db "R_Cinematic_BinkOpen ",27h,"%s",27h," failed: %s; trying default.",0ah,0
_cstring_default:		db "default",0
_cstring_r_cinematic_bink1:		db "R_Cinematic_BinkOpen ",27h,"%s",27h," failed: %s; not playing movie.",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1_77777779:		dd 0x3fe38e39	; 1.77778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_32768_00000000:		dd 0x47000000	; 32768
_data16_4f000000:		dd 0x4f000000, 0x0, 0x0, 0x0	; OWORD
_data16_4f800000:		dd 0x4f800000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1

