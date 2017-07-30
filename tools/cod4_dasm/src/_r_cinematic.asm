;Imports of r_cinematic:
	extern Image_Release
	extern vidConfig
	extern rgp
	extern R_AddCmdDrawStretchPic
	extern colorWhite
	extern DB_FindXAssetHeader
	extern BinkOpen
	extern fopen
	extern ftell
	extern fseek
	extern snprintf
	extern fclose
	extern BinkSetIOSize
	extern FSPathMakeRef
	extern FSGetCatalogInfo
	extern cgArray
	extern BinkMacOpen
	extern BinkGetError
	extern fread
	extern Sys_Cwd
	extern Image_Setup
	extern memset
	extern s_backEndData
	extern Z_MallocInternal
	extern Sys_EnterCriticalSection
	extern Sys_LeaveCriticalSection
	extern Z_FreeInternal
	extern RB_UnbindAllImages
	extern gfxCmdBufInput
	extern objAlloced
	extern g_zones
	extern BinkClose
	extern BinkGetRealtime
	extern BinkPause
	extern BinkWait
	extern BinkControlBackgroundIO
	extern Sys_ResumeDatabaseThread
	extern Q_strncpyz
	extern Lock_Bink_textures
	extern BinkDoFrame
	extern dx_ctx
	extern Unlock_Bink_textures
	extern BinkNextFrame
	extern BinkSetMemory
	extern BinkSetSoundTrack
	extern Com_PrintWarning
	extern BinkGetFrameBuffersInfo
	extern BinkRegisterFrameBuffers
	extern __udivdi3
	extern Sys_SuspendDatabaseThread
	extern fx_systemBufferPool
	extern BinkSetMixBinVolumes
	extern BinkSetVolume

;Exports of r_cinematic:
	global cinematicGlob
	global CINEMATIC_DEFAULT_FILENAME
	global R_Cinematic_ReleaseImages
	global R_Cinematic_Bink_Free
	global R_Cinematic_DrawLetterbox_OptionalCinematic
	global R_Cinematic_Bink_Alloc
	global R_Cinematic_BinkOpenPath
	global R_Cinematic_BinkOpen
	global R_Cinematic_MakeBinkDrawTextures
	global R_Cinematic_Init
	global R_Cinematic_SyncNow
	global R_Cinematic_Shutdown
	global R_Cinematic_IsStarted
	global R_Cinematic_IsFinished
	global R_Cinematic_IsUnderrun
	global R_Cinematic_IsNextReady
	global R_Cinematic_UpdateFrame
	global R_Cinematic_StopPlayback
	global R_Cinematic_EndLostDevice
	global R_Cinematic_StartPlayback
	global R_Cinematic_BeginLostDevice
	global R_Cinematic_InitBinkVolumes
	global R_Cinematic_StartNextPlayback
	global R_Cinematic_DrawStretchPic_Letterboxed


SECTION .text


;R_Cinematic_ReleaseImages(CinematicTextureSet*)
R_Cinematic_ReleaseImages:
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
R_Cinematic_ReleaseImages_10:
	mov edx, [ebp-0x24]
	lea eax, [ebx+edx]
	mov [esp], eax
	call Image_Release
	mov [esp], esi
	call Image_Release
	mov [esp], edi
	call Image_Release
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Image_Release
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x24], 0x24
	add esi, 0x24
	add edi, 0x24
	add dword [ebp-0x20], 0x24
	cmp dword [ebp-0x1c], 0x2
	jnz R_Cinematic_ReleaseImages_10
	lea eax, [ebx+0x120]
	mov [esp], eax
	call Image_Release
	lea eax, [ebx+0x144]
	mov [esp], eax
	call Image_Release
	lea eax, [ebx+0x168]
	mov [esp], eax
	call Image_Release
	lea eax, [ebx+0x18c]
	mov [esp], eax
	call Image_Release
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_Cinematic_Bink_Free(void*)
R_Cinematic_Bink_Free:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_Cinematic_DrawLetterbox_OptionalCinematic(unsigned char, float)
R_Cinematic_DrawLetterbox_OptionalCinematic:
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
	js R_Cinematic_DrawLetterbox_OptionalCinematic_10
	cvtsi2ss xmm2, edx
R_Cinematic_DrawLetterbox_OptionalCinematic_50:
	mov edx, [ecx+0xc]
	test edx, edx
	js R_Cinematic_DrawLetterbox_OptionalCinematic_20
	cvtsi2ss xmm1, edx
R_Cinematic_DrawLetterbox_OptionalCinematic_40:
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
	call R_AddCmdDrawStretchPic
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
	call R_AddCmdDrawStretchPic
	cmp byte [ebp-0x31], 0x0
	movss xmm2, dword [ebp-0x58]
	jz R_Cinematic_DrawLetterbox_OptionalCinematic_30
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
	call R_AddCmdDrawStretchPic
R_Cinematic_DrawLetterbox_OptionalCinematic_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_DrawLetterbox_OptionalCinematic_20:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp R_Cinematic_DrawLetterbox_OptionalCinematic_40
R_Cinematic_DrawLetterbox_OptionalCinematic_10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm2, eax
	addss xmm2, xmm2
	jmp R_Cinematic_DrawLetterbox_OptionalCinematic_50


;R_Cinematic_Bink_Alloc(unsigned int)
R_Cinematic_Bink_Alloc:
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
R_Cinematic_BinkOpenPath:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov ebx, eax
	mov [ebp-0xc0], ecx
	test dl, 0x8
	jz R_Cinematic_BinkOpenPath_10
	and dl, 0x20
	jz R_Cinematic_BinkOpenPath_20
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	test eax, eax
	jz R_Cinematic_BinkOpenPath_30
	mov ebx, [eax+0x8]
R_Cinematic_BinkOpenPath_130:
	mov dword [esp+0x4], 0x4104400
	mov [esp], ebx
	call BinkOpen
	mov [cinematicGlob+0x318], eax
	test eax, eax
	jz R_Cinematic_BinkOpenPath_40
R_Cinematic_BinkOpenPath_100:
	mov edx, [cinematicGlob+0x318]
	test edx, edx
	jz R_Cinematic_BinkOpenPath_50
	mov eax, 0x1
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_BinkOpenPath_20:
	mov dword [esp+0x4], _cstring_rb
	mov [esp], eax
	call fopen
	mov esi, eax
	test eax, eax
	jz R_Cinematic_BinkOpenPath_60
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
	jle R_Cinematic_BinkOpenPath_70
	mov edx, [cinematicGlob+0x418]
	mov eax, [cinematicGlob+0x41c]
	sub eax, edx
	cmp edi, eax
	jle R_Cinematic_BinkOpenPath_80
	mov ebx, [ebp-0xc0]
	test ebx, ebx
	jz R_Cinematic_BinkOpenPath_90
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_cinematic_too_bi
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
R_Cinematic_BinkOpenPath_90:
	mov [esp], esi
	call fclose
R_Cinematic_BinkOpenPath_110:
	xor eax, eax
R_Cinematic_BinkOpenPath_120:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_BinkOpenPath_10:
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
	jnz R_Cinematic_BinkOpenPath_100
	mov dword [esp+0x14], 0x0
	lea ebx, [ebp-0x5e]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call FSGetCatalogInfo
	test ax, ax
	jnz R_Cinematic_BinkOpenPath_100
	mov dword [esp+0x4], cgArray+0x93160
	mov [esp], ebx
	call BinkMacOpen
	mov [cinematicGlob+0x318], eax
	jmp R_Cinematic_BinkOpenPath_100
R_Cinematic_BinkOpenPath_50:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz R_Cinematic_BinkOpenPath_110
	call BinkGetError
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_binkopen_s
R_Cinematic_BinkOpenPath_150:
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
R_Cinematic_BinkOpenPath_60:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz R_Cinematic_BinkOpenPath_110
	mov dword [esp+0x8], _cstring_open_failed
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
	xor eax, eax
	jmp R_Cinematic_BinkOpenPath_120
R_Cinematic_BinkOpenPath_80:
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
	jz R_Cinematic_BinkOpenPath_130
	mov ecx, [ebp-0xc0]
	test ecx, ecx
	jz R_Cinematic_BinkOpenPath_140
	mov eax, [ebp-0xbc]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_read_was_short_w
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
R_Cinematic_BinkOpenPath_140:
	mov eax, [cinematicGlob+0x414]
	mov [cinematicGlob+0x418], eax
	mov eax, [cinematicGlob+0x420]
	mov [cinematicGlob+0x41c], eax
	xor eax, eax
	jmp R_Cinematic_BinkOpenPath_120
R_Cinematic_BinkOpenPath_30:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz R_Cinematic_BinkOpenPath_110
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_couldnt_find_raw
	jmp R_Cinematic_BinkOpenPath_150
R_Cinematic_BinkOpenPath_40:
	mov eax, [cinematicGlob+0x414]
	mov [cinematicGlob+0x418], eax
	mov eax, [cinematicGlob+0x420]
	mov [cinematicGlob+0x41c], eax
	jmp R_Cinematic_BinkOpenPath_100
R_Cinematic_BinkOpenPath_70:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz R_Cinematic_BinkOpenPath_90
	test edi, edi
	jnz R_Cinematic_BinkOpenPath_160
	mov dword [esp+0x8], _cstring_zero_file_size
R_Cinematic_BinkOpenPath_170:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call snprintf
	jmp R_Cinematic_BinkOpenPath_90
R_Cinematic_BinkOpenPath_160:
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_getfilesize_fail
	jmp R_Cinematic_BinkOpenPath_170
	nop


;R_Cinematic_BinkOpen(char const*, unsigned int, char*, int)
R_Cinematic_BinkOpen:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23c
	mov ebx, eax
	mov esi, edx
	mov [ebp-0x21c], ecx
	call Sys_Cwd
	mov edi, eax
	mov byte [ebp-0x118], 0x0
	test esi, 0x20
	jz R_Cinematic_BinkOpen_10
	mov dword [esp+0x10], _cstring_bik
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_videoss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x218]
	mov [esp], eax
	call snprintf
R_Cinematic_BinkOpen_50:
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [ebp-0x21c]
	mov edx, esi
	lea eax, [ebp-0x218]
	call R_Cinematic_BinkOpenPath
	test al, al
	jnz R_Cinematic_BinkOpen_20
	cmp byte [ebp-0x118], 0x0
	jnz R_Cinematic_BinkOpen_30
R_Cinematic_BinkOpen_40:
	xor eax, eax
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_BinkOpen_30:
	lea eax, [ebp-0x118]
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, [ebp-0x21c]
	mov edx, esi
	call R_Cinematic_BinkOpenPath
	test al, al
	jz R_Cinematic_BinkOpen_40
R_Cinematic_BinkOpen_20:
	mov eax, 0x1
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_BinkOpen_10:
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
	jmp R_Cinematic_BinkOpen_50
	nop


;R_Cinematic_MakeBinkDrawTextures()
R_Cinematic_MakeBinkDrawTextures:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor edi, edi
	mov edx, cinematicGlob
	mov ecx, cinematicGlob+0x60
R_Cinematic_MakeBinkDrawTextures_10:
	mov eax, [edx+0x398]
	test eax, eax
	mov eax, 0x1
	cmovnz edi, eax
	add edx, 0x30
	cmp ecx, edx
	jnz R_Cinematic_MakeBinkDrawTextures_10
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
	call Image_Setup
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
	call Image_Setup
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
	call Image_Setup
	mov eax, [ebx+0x4]
	mov [cinematicGlob+0x3ec], eax
	mov eax, edi
	test al, al
	jnz R_Cinematic_MakeBinkDrawTextures_20
	mov dword [cinematicGlob+0x3f0], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_MakeBinkDrawTextures_20:
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
	call Image_Setup
	mov eax, [ebx+0x4]
	mov [cinematicGlob+0x3f0], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_Cinematic_Init()
R_Cinematic_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x7a8
	mov dword [esp+0x4], 0x0
	mov dword [esp], cinematicGlob
	call memset
	mov dword [cinematicGlob+0x424], 0xffffffff
	mov dword [esp], s_backEndData+0x6ae00
	call Z_MallocInternal
	mov [cinematicGlob+0x79c], eax
	leave
	ret
	nop


;R_Cinematic_SyncNow()
R_Cinematic_SyncNow:
	push ebp
	mov ebp, esp
	mov byte [cinematicGlob+0x314], 0x1
	pop ebp
	jmp R_Cinematic_UpdateFrame


;R_Cinematic_Shutdown()
R_Cinematic_Shutdown:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0xe
	call Sys_EnterCriticalSection
	mov dword [esp], 0xf
	call Sys_EnterCriticalSection
	mov byte [cinematicGlob+0x100], 0x0
	mov byte [cinematicGlob+0x308], 0x1
	mov byte [cinematicGlob+0x309], 0x0
	mov dword [esp], 0xf
	call Sys_LeaveCriticalSection
	mov dword [esp], 0xe
	call Sys_LeaveCriticalSection
	mov byte [cinematicGlob+0x314], 0x1
	call R_Cinematic_UpdateFrame
	xor esi, esi
	mov ebx, cinematicGlob+0x434
R_Cinematic_Shutdown_10:
	mov eax, ebx
	call R_Cinematic_ReleaseImages
	add esi, 0x1
	add ebx, 0x1b0
	cmp esi, 0x2
	jnz R_Cinematic_Shutdown_10
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
R_Cinematic_IsStarted:
	push ebp
	mov ebp, esp
	cmp byte [cinematicGlob+0x309], 0x0
	jnz R_Cinematic_IsStarted_10
	cmp byte [cinematicGlob], 0x0
	jz R_Cinematic_IsStarted_10
	mov eax, 0x1
	pop ebp
	ret
R_Cinematic_IsStarted_10:
	xor eax, eax
	pop ebp
	ret
	add [eax], al


;R_Cinematic_IsFinished()
R_Cinematic_IsFinished:
	push ebp
	mov ebp, esp
	movzx eax, byte [cinematicGlob+0x309]
	pop ebp
	ret
	add [eax], al


;R_Cinematic_IsUnderrun()
R_Cinematic_IsUnderrun:
	push ebp
	mov ebp, esp
	movzx eax, byte [cinematicGlob+0x7a4]
	pop ebp
	ret


;R_Cinematic_IsNextReady()
R_Cinematic_IsNextReady:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp byte [cinematicGlob+0x200], 0x0
	setnz al
	pop ebp
	ret
	nop


;R_Cinematic_UpdateFrame()
R_Cinematic_UpdateFrame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20c
	mov dword [esp], 0xe
	call Sys_EnterCriticalSection
	movzx eax, byte [cinematicGlob+0x314]
	mov byte [cinematicGlob+0x314], 0x0
	mov dword [esp], 0xf
	call Sys_EnterCriticalSection
	movzx ebx, byte [cinematicGlob+0x308]
	test bl, bl
	jnz R_Cinematic_UpdateFrame_10
	mov byte [ebp-0x1d0], 0x0
	xor esi, esi
R_Cinematic_UpdateFrame_280:
	mov dword [esp], 0xf
	call Sys_LeaveCriticalSection
	mov byte [cinematicGlob+0x7a4], 0x0
	test bl, bl
	jz R_Cinematic_UpdateFrame_20
	cmp byte [cinematicGlob], 0x0
	jnz R_Cinematic_UpdateFrame_30
	cmp byte [ebp-0x1d0], 0x0
	jnz R_Cinematic_UpdateFrame_40
R_Cinematic_UpdateFrame_180:
	mov byte [cinematicGlob], 0x0
R_Cinematic_UpdateFrame_20:
	cmp byte [cinematicGlob], 0x0
	jnz R_Cinematic_UpdateFrame_50
	mov eax, [cinematicGlob+0x3f4]
	test eax, eax
	jnz R_Cinematic_UpdateFrame_60
R_Cinematic_UpdateFrame_90:
	cmp dword [cinematicGlob+0x424], 0xffffffff
	jz R_Cinematic_UpdateFrame_70
R_Cinematic_UpdateFrame_100:
	mov eax, [cinematicGlob+0x798]
	lea eax, [eax+eax*2]
	lea eax, [eax+eax*8]
	shl eax, 0x4
	lea esi, [eax+cinematicGlob+0x430]
	lea ebx, [esi+0x4]
	call RB_UnbindAllImages
	mov edx, gfxCmdBufInput
	lea eax, [esi+0x124]
	mov [edx+0x3f8], eax
	lea eax, [esi+0x148]
	mov [edx+0x3fc], eax
	lea eax, [esi+0x16c]
	mov [edx+0x400], eax
	mov eax, [ebx+0x190]
	test eax, eax
	jz R_Cinematic_UpdateFrame_80
	lea eax, [esi+0x190]
	mov [edx+0x404], eax
	mov dword [esp], 0xe
	call Sys_LeaveCriticalSection
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_UpdateFrame_60:
	mov eax, [cinematicGlob+0x428]
	add eax, 0x1
	mov [cinematicGlob+0x428], eax
	cmp eax, 0x4
	jle R_Cinematic_UpdateFrame_90
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
	jnz R_Cinematic_UpdateFrame_100
R_Cinematic_UpdateFrame_70:
	call RB_UnbindAllImages
	mov edx, rgp
	mov ecx, [edx+0x200c]
	mov eax, gfxCmdBufInput
	mov [eax+0x3f8], ecx
	mov edx, [edx+0x2018]
	mov [eax+0x3fc], edx
	mov [eax+0x400], edx
	mov [eax+0x404], ecx
	mov dword [esp], 0xe
	call Sys_LeaveCriticalSection
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_UpdateFrame_40:
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x1
	mov dword [ebp-0x48], 0x2
	mov dword [ebp-0x44], 0x3
	mov dword [ebp-0x40], 0x4
	mov dword [cinematicGlob+0x424], 0xffffffff
	xor dword [cinematicGlob+0x794], 0x1
	mov ecx, [cinematicGlob+0x3f4]
	test ecx, ecx
	jz R_Cinematic_UpdateFrame_110
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
	jz R_Cinematic_UpdateFrame_120
	test esi, 0x20
	jz R_Cinematic_UpdateFrame_130
R_Cinematic_UpdateFrame_120:
	xor edi, edi
	mov dword [ebp-0x1e4], objAlloced+0x1c0
R_Cinematic_UpdateFrame_460:
	mov eax, [cinematicGlob+0x3f8]
	mov ebx, eax
	lea edx, [eax+g_zones+0x500]
	mov [cinematicGlob+0x3f8], edx
	cmp edx, [cinematicGlob+0x3fc]
	jbe R_Cinematic_UpdateFrame_140
	mov ebx, 0xffffffff
	mov eax, 0xffffffff
R_Cinematic_UpdateFrame_140:
	mov ecx, edx
	lea edx, [edx+edi]
	mov [cinematicGlob+0x3f8], edx
	cmp edx, [cinematicGlob+0x3fc]
	jbe R_Cinematic_UpdateFrame_150
	lea edx, [edi-0x1]
	mov ecx, 0xffffffff
R_Cinematic_UpdateFrame_150:
	mov [cinematicGlob+0x404], ebx
	mov [cinematicGlob+0x408], ebx
	add eax, [ebp-0x1e4]
	jmp R_Cinematic_UpdateFrame_160
R_Cinematic_UpdateFrame_30:
	mov dword [cinematicGlob+0x424], 0xffffffff
	cmp byte [cinematicGlob+0x316], 0x0
	jnz R_Cinematic_UpdateFrame_170
R_Cinematic_UpdateFrame_430:
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkClose
	mov dword [cinematicGlob+0x318], 0x0
	mov eax, [cinematicGlob+0x404]
	mov [cinematicGlob+0x408], eax
	mov eax, [cinematicGlob+0x410]
	mov [cinematicGlob+0x40c], eax
	cmp byte [ebp-0x1d0], 0x0
	jz R_Cinematic_UpdateFrame_180
	jmp R_Cinematic_UpdateFrame_40
R_Cinematic_UpdateFrame_50:
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
	jnz R_Cinematic_UpdateFrame_190
	mov eax, [ebp-0xa0]
	cmp eax, [ebp-0xa4]
	jae R_Cinematic_UpdateFrame_190
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	xor edx, edx
	div dword [cinematicGlob+0x310]
	cmp eax, 0x27
	ja R_Cinematic_UpdateFrame_190
	and cl, 0x1
	jz R_Cinematic_UpdateFrame_200
R_Cinematic_UpdateFrame_190:
	cmp ebx, [cinematicGlob+0x42c]
	jz R_Cinematic_UpdateFrame_210
	xor eax, eax
	cmp ebx, 0x1
	setz al
	mov [esp+0x4], eax
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkPause
	mov [cinematicGlob+0x42c], ebx
R_Cinematic_UpdateFrame_210:
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkWait
	test eax, eax
	jz R_Cinematic_UpdateFrame_220
R_Cinematic_UpdateFrame_290:
	mov ecx, [cinematicGlob+0x304]
	mov edx, [cinematicGlob+0x318]
R_Cinematic_UpdateFrame_320:
	and cl, 0x2
	jnz R_Cinematic_UpdateFrame_230
	mov eax, [edx+0xc]
	cmp eax, [edx+0x8]
	jz R_Cinematic_UpdateFrame_240
R_Cinematic_UpdateFrame_230:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], edx
	call BinkGetRealtime
	mov ecx, [ebp-0x50]
	cmp ecx, 0x7fffffff
	jbe R_Cinematic_UpdateFrame_250
	mov dword [cinematicGlob+0x30c], 0x0
	test byte [cinematicGlob+0x304], 0x8
	jnz R_Cinematic_UpdateFrame_260
R_Cinematic_UpdateFrame_410:
	mov eax, [ebp-0x20]
	cmp eax, [ebp-0x24]
	jae R_Cinematic_UpdateFrame_260
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	xor edx, edx
	div dword [cinematicGlob+0x310]
	cmp byte [cinematicGlob+0x316], 0x0
	jz R_Cinematic_UpdateFrame_270
R_Cinematic_UpdateFrame_420:
	cmp eax, 0x5f
	jbe R_Cinematic_UpdateFrame_90
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call Sys_ResumeDatabaseThread
	mov byte [cinematicGlob+0x316], 0x0
	jmp R_Cinematic_UpdateFrame_90
R_Cinematic_UpdateFrame_10:
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], cinematicGlob+0x100
	lea eax, [ebp-0x1d0]
	mov [esp], eax
	call Q_strncpyz
	mov byte [cinematicGlob+0x308], 0x0
	mov esi, [cinematicGlob+0x304]
	jmp R_Cinematic_UpdateFrame_280
R_Cinematic_UpdateFrame_220:
	cmp byte [cinematicGlob+0x7a4], 0x0
	jnz R_Cinematic_UpdateFrame_290
	mov dword [esp], cinematicGlob+0x31c
	call Lock_Bink_textures
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkDoFrame
	test eax, eax
	jnz R_Cinematic_UpdateFrame_300
	mov eax, [cinematicGlob+0x370]
	mov [cinematicGlob+0x424], eax
	mov eax, [cinematicGlob+0x794]
	mov [cinematicGlob+0x798], eax
R_Cinematic_UpdateFrame_300:
	mov eax, [cinematicGlob+0x318]
	mov [esp+0x8], eax
	mov dword [esp+0x4], cinematicGlob+0x31c
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov [esp], eax
	call Unlock_Bink_textures
	mov ecx, [cinematicGlob+0x304]
	test cl, 0x2
	jnz R_Cinematic_UpdateFrame_310
	mov edx, [cinematicGlob+0x318]
	mov eax, [edx+0xc]
	cmp eax, [edx+0x8]
	jz R_Cinematic_UpdateFrame_320
R_Cinematic_UpdateFrame_490:
	mov [esp], edx
	call BinkNextFrame
	mov ecx, [cinematicGlob+0x304]
	mov edx, [cinematicGlob+0x318]
	jmp R_Cinematic_UpdateFrame_320
R_Cinematic_UpdateFrame_110:
	mov eax, [cinematicGlob+0x79c]
	mov [cinematicGlob+0x3f4], eax
	mov [cinematicGlob+0x3f8], eax
	add eax, s_backEndData+0x6ae00
	mov [cinematicGlob+0x400], eax
	mov [cinematicGlob+0x3fc], eax
	test esi, 0x8
	jz R_Cinematic_UpdateFrame_330
	test esi, 0x20
	jz R_Cinematic_UpdateFrame_340
R_Cinematic_UpdateFrame_330:
	xor edi, edi
	mov dword [ebp-0x1e0], objAlloced+0x1c0
R_Cinematic_UpdateFrame_470:
	mov eax, [cinematicGlob+0x3f8]
	mov ebx, eax
	lea edx, [eax+g_zones+0x500]
	mov [cinematicGlob+0x3f8], edx
	cmp edx, [cinematicGlob+0x3fc]
	jbe R_Cinematic_UpdateFrame_350
	mov ebx, 0xffffffff
	mov eax, 0xffffffff
R_Cinematic_UpdateFrame_350:
	mov ecx, edx
	lea edx, [edx+edi]
	mov [cinematicGlob+0x3f8], edx
	cmp edx, [cinematicGlob+0x3fc]
	jbe R_Cinematic_UpdateFrame_360
	lea edx, [edi-0x1]
	mov ecx, 0xffffffff
R_Cinematic_UpdateFrame_360:
	mov [cinematicGlob+0x404], ebx
	mov [cinematicGlob+0x408], ebx
	add eax, [ebp-0x1e0]
R_Cinematic_UpdateFrame_160:
	mov [cinematicGlob+0x410], eax
	mov [cinematicGlob+0x40c], eax
	mov [cinematicGlob+0x414], ecx
	mov [cinematicGlob+0x418], ecx
	mov [cinematicGlob+0x420], edx
	mov [cinematicGlob+0x41c], edx
	mov dword [esp+0x4], R_Cinematic_Bink_Free
	mov dword [esp], R_Cinematic_Bink_Alloc
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
	call R_Cinematic_BinkOpen
	test al, al
	jnz R_Cinematic_UpdateFrame_370
	mov [esp+0xc], ebx
	lea eax, [ebp-0x1d0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_cinematic_bink
	mov dword [esp], 0x8
	call Com_PrintWarning
	mov eax, [cinematicGlob+0x404]
	mov [cinematicGlob+0x408], eax
	mov eax, [cinematicGlob+0x410]
	mov [cinematicGlob+0x40c], eax
	mov byte [ebp-0xd0], 0x0
	mov dword [esp], 0x80
	mov ecx, ebx
	mov edx, esi
	mov eax, _cstring_default
	call R_Cinematic_BinkOpen
	test al, al
	jz R_Cinematic_UpdateFrame_380
R_Cinematic_UpdateFrame_370:
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call R_Cinematic_InitBinkVolumes
	mov dword [esp+0x8], 0xd8
	mov dword [esp+0x4], 0x0
	mov dword [esp], cinematicGlob+0x31c
	call memset
	mov dword [esp+0x4], cinematicGlob+0x35c
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkGetFrameBuffersInfo
	call RB_UnbindAllImages
	mov ebx, [cinematicGlob+0x794]
	lea ebx, [ebx+ebx*2]
	lea ebx, [ebx+ebx*8]
	shl ebx, 0x4
	add ebx, cinematicGlob+0x430
	lea edi, [ebx+0x4]
	mov eax, edi
	call R_Cinematic_ReleaseImages
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
R_Cinematic_UpdateFrame_400:
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
	call Image_Setup
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
	call Image_Setup
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
	call Image_Setup
	mov eax, [esi+edi+0x94]
	mov [ebx+0x18], eax
	mov ecx, [ebp-0x1dc]
	mov edx, [ecx+0x398]
	test edx, edx
	jnz R_Cinematic_UpdateFrame_390
	mov dword [ebx+0x1c], 0x0
R_Cinematic_UpdateFrame_450:
	add dword [ebp-0x1e8], 0x1
	add ebx, 0x20
	add esi, 0x24
	add dword [ebp-0x1f4], 0x24
	add dword [ebp-0x1f0], 0x24
	add dword [ebp-0x1ec], 0x24
	add dword [ebp-0x1dc], 0x30
	cmp dword [ebp-0x1e8], 0x2
	jnz R_Cinematic_UpdateFrame_400
	call R_Cinematic_MakeBinkDrawTextures
	mov dword [esp+0x4], cinematicGlob+0x35c
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkRegisterFrameBuffers
	mov dword [cinematicGlob+0x42c], 0x0
	mov dword [esp+0x8], 0x100
	lea edx, [ebp-0x1d0]
	mov [esp+0x4], edx
	mov dword [esp], cinematicGlob
	call Q_strncpyz
	jmp R_Cinematic_UpdateFrame_20
R_Cinematic_UpdateFrame_250:
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
	jz R_Cinematic_UpdateFrame_410
R_Cinematic_UpdateFrame_260:
	mov eax, 0x64
	cmp byte [cinematicGlob+0x316], 0x0
	jnz R_Cinematic_UpdateFrame_420
R_Cinematic_UpdateFrame_270:
	cmp eax, 0x31
	ja R_Cinematic_UpdateFrame_90
	mov dword [esp+0x4], 0x2
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call Sys_SuspendDatabaseThread
	mov byte [cinematicGlob+0x316], 0x1
	jmp R_Cinematic_UpdateFrame_90
R_Cinematic_UpdateFrame_170:
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call Sys_ResumeDatabaseThread
	mov byte [cinematicGlob+0x316], 0x0
	jmp R_Cinematic_UpdateFrame_430
R_Cinematic_UpdateFrame_240:
	cmp byte [cinematicGlob+0x316], 0x0
	jnz R_Cinematic_UpdateFrame_440
R_Cinematic_UpdateFrame_480:
	mov byte [cinematicGlob+0x309], 0x1
	jmp R_Cinematic_UpdateFrame_90
R_Cinematic_UpdateFrame_80:
	mov eax, rgp
	mov eax, [eax+0x2008]
	mov [edx+0x404], eax
	mov dword [esp], 0xe
	call Sys_LeaveCriticalSection
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cinematic_UpdateFrame_390:
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
	call Image_Setup
	mov eax, [esi+edi+0xdc]
	mov [ebx+0x1c], eax
	jmp R_Cinematic_UpdateFrame_450
R_Cinematic_UpdateFrame_200:
	mov byte [cinematicGlob+0x7a4], 0x1
	mov ebx, 0x1
	jmp R_Cinematic_UpdateFrame_190
R_Cinematic_UpdateFrame_130:
	mov edi, fx_systemBufferPool+0xbb00
	mov dword [ebp-0x1e4], 0x180000
	jmp R_Cinematic_UpdateFrame_460
R_Cinematic_UpdateFrame_340:
	mov edi, fx_systemBufferPool+0xbb00
	mov dword [ebp-0x1e0], 0x180000
	jmp R_Cinematic_UpdateFrame_470
R_Cinematic_UpdateFrame_440:
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call Sys_ResumeDatabaseThread
	mov byte [cinematicGlob+0x316], 0x0
	jmp R_Cinematic_UpdateFrame_480
R_Cinematic_UpdateFrame_380:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_default
	mov dword [esp+0x4], _cstring_r_cinematic_bink1
	mov dword [esp], 0x8
	call Com_PrintWarning
	mov eax, [cinematicGlob+0x404]
	mov [cinematicGlob+0x408], eax
	mov eax, [cinematicGlob+0x410]
	mov [cinematicGlob+0x40c], eax
	mov byte [cinematicGlob+0x309], 0x1
	call RB_UnbindAllImages
	mov edx, rgp
	mov ecx, [edx+0x200c]
	mov eax, gfxCmdBufInput
	mov [eax+0x3f8], ecx
	mov edx, [edx+0x2018]
	mov [eax+0x3fc], edx
	mov [eax+0x400], edx
	mov [eax+0x404], ecx
	jmp R_Cinematic_UpdateFrame_180
R_Cinematic_UpdateFrame_310:
	mov edx, [cinematicGlob+0x318]
	jmp R_Cinematic_UpdateFrame_490


;R_Cinematic_StopPlayback()
R_Cinematic_StopPlayback:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0xe
	call Sys_EnterCriticalSection
	mov dword [esp], 0xf
	call Sys_EnterCriticalSection
	mov byte [cinematicGlob+0x100], 0x0
	mov byte [cinematicGlob+0x308], 0x1
	mov byte [cinematicGlob+0x309], 0x0
	mov dword [esp], 0xf
	call Sys_LeaveCriticalSection
	mov dword [esp], 0xe
	call Sys_LeaveCriticalSection
	leave
	ret
	nop
	add [eax], al


;R_Cinematic_EndLostDevice()
R_Cinematic_EndLostDevice:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], 0xe
	call Sys_EnterCriticalSection
	mov ebx, [cinematicGlob+0x318]
	test ebx, ebx
	jz R_Cinematic_EndLostDevice_10
	call R_Cinematic_MakeBinkDrawTextures
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
	jz R_Cinematic_EndLostDevice_10
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
R_Cinematic_EndLostDevice_10:
	mov dword [esp], 0xe
	call Sys_LeaveCriticalSection
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;R_Cinematic_StartPlayback(char const*, unsigned int, float)
R_Cinematic_StartPlayback:
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
	call Sys_EnterCriticalSection
	mov dword [esp], 0xf
	call Sys_EnterCriticalSection
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov dword [esp], cinematicGlob+0x100
	call Q_strncpyz
	mov byte [cinematicGlob+0x308], 0x1
	mov byte [cinematicGlob+0x309], 0x0
	mov dword [cinematicGlob+0x430], 0x0
	mov [cinematicGlob+0x304], esi
	mov [cinematicGlob+0x7a0], edi
	mov dword [esp], 0xf
	call Sys_LeaveCriticalSection
	mov dword [ebp+0x8], 0xe
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection
	nop
	add [eax], al


;R_Cinematic_BeginLostDevice()
R_Cinematic_BeginLostDevice:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0xe
	call Sys_EnterCriticalSection
	cmp byte [cinematicGlob+0x316], 0x0
	jnz R_Cinematic_BeginLostDevice_10
R_Cinematic_BeginLostDevice_80:
	cmp byte [cinematicGlob+0x309], 0x0
	jnz R_Cinematic_BeginLostDevice_20
	cmp byte [cinematicGlob], 0x0
	jnz R_Cinematic_BeginLostDevice_30
R_Cinematic_BeginLostDevice_20:
	xor eax, eax
R_Cinematic_BeginLostDevice_70:
	test eax, eax
	jz R_Cinematic_BeginLostDevice_40
	mov eax, [cinematicGlob+0x42c]
	test eax, eax
	jz R_Cinematic_BeginLostDevice_50
R_Cinematic_BeginLostDevice_40:
	xor esi, esi
	mov ebx, cinematicGlob+0x430
R_Cinematic_BeginLostDevice_60:
	lea eax, [ebx+0x124]
	mov [esp], eax
	call Image_Release
	lea eax, [ebx+0x148]
	mov [esp], eax
	call Image_Release
	lea eax, [ebx+0x16c]
	mov [esp], eax
	call Image_Release
	lea eax, [ebx+0x190]
	mov [esp], eax
	call Image_Release
	add esi, 0x1
	add ebx, 0x1b0
	cmp esi, 0x2
	jnz R_Cinematic_BeginLostDevice_60
	mov dword [esp], 0xe
	call Sys_LeaveCriticalSection
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_Cinematic_BeginLostDevice_30:
	mov eax, 0x1
	jmp R_Cinematic_BeginLostDevice_70
R_Cinematic_BeginLostDevice_10:
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkControlBackgroundIO
	mov dword [esp], 0x2
	call Sys_ResumeDatabaseThread
	mov byte [cinematicGlob+0x316], 0x0
	jmp R_Cinematic_BeginLostDevice_80
R_Cinematic_BeginLostDevice_50:
	mov dword [cinematicGlob+0x42c], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [cinematicGlob+0x318]
	mov [esp], eax
	call BinkPause
	jmp R_Cinematic_BeginLostDevice_40


;R_Cinematic_InitBinkVolumes(BINK*)
R_Cinematic_InitBinkVolumes:
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
	jle R_Cinematic_InitBinkVolumes_10
	mov esi, 0x8000
R_Cinematic_InitBinkVolumes_20:
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
R_Cinematic_InitBinkVolumes_10:
	xor esi, esi
	test eax, eax
	cmovg esi, [ebp-0x48]
	jmp R_Cinematic_InitBinkVolumes_20


;R_Cinematic_StartNextPlayback()
R_Cinematic_StartNextPlayback:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0xe
	call Sys_EnterCriticalSection
	cmp byte [cinematicGlob+0x200], 0x0
	jz R_Cinematic_StartNextPlayback_10
	mov esi, [cinematicGlob+0x7a0]
	mov ebx, [cinematicGlob+0x300]
	mov dword [esp], 0xf
	call Sys_EnterCriticalSection
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], cinematicGlob+0x200
	mov dword [esp], cinematicGlob+0x100
	call Q_strncpyz
	mov byte [cinematicGlob+0x308], 0x1
	mov byte [cinematicGlob+0x309], 0x0
	mov dword [cinematicGlob+0x430], 0x0
	mov [cinematicGlob+0x304], ebx
	mov [cinematicGlob+0x7a0], esi
	mov dword [esp], 0xf
	call Sys_LeaveCriticalSection
	mov byte [cinematicGlob+0x200], 0x0
R_Cinematic_StartNextPlayback_10:
	mov dword [esp], 0xe
	call Sys_LeaveCriticalSection
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_Cinematic_DrawStretchPic_Letterboxed(int)
R_Cinematic_DrawStretchPic_Letterboxed:
	push ebp
	mov ebp, esp
	movss xmm0, dword [_float_1_00000000]
	mov eax, 0x1
	pop ebp
	jmp R_Cinematic_DrawLetterbox_OptionalCinematic


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

