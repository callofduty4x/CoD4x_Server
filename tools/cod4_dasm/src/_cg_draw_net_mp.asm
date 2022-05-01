;Imports of cg_draw_net_mp:
	extern _Z21CL_IsServerRestartingi
	extern _Z22CL_GetCurrentCmdNumberi
	extern _Z13CL_GetUserCmdiiP9usercmd_s
	extern cgArray
	extern scrPlaceView
	extern _Z22UI_SafeTranslateStringPKc
	extern _Z16UI_GetFontHandlePK15ScreenPlacementif
	extern _Z12UI_TextWidthPKciP6Font_sf
	extern colorWhite
	extern _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	extern _Z23Material_RegisterHandlePKci
	extern _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	extern cg_drawLagometer
	extern cgsArray
	extern cgMedia
	extern colorYellow
	extern _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	extern colorBlue
	extern colorGreen
	extern colorRed
	extern cg_nopredict
	extern cg_synchronousClients
	extern _Z19CG_DrawBigDevStringPK15ScreenPlacementffPKcfi

;Exports of cg_draw_net_mp:
	global _Z17CG_DrawDisconnecti
	global _Z16CG_DrawLagometeri
	global _Z24CG_AddLagometerFrameInfoPK4cg_s
	global _Z27CG_AddLagometerSnapshotInfoP10snapshot_s
	global lagometer


SECTION .text


;CG_DrawDisconnect(int)
_Z17CG_DrawDisconnecti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z21CL_IsServerRestartingi
	test al, al
	jz _Z17CG_DrawDisconnecti_10
_Z17CG_DrawDisconnecti_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CG_DrawDisconnecti_10:
	mov [esp], ebx
	call _Z22CL_GetCurrentCmdNumberi
	lea edx, [ebp-0x38]
	mov [esp+0x8], edx
	sub eax, 0x7f
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13CL_GetUserCmdiiP9usercmd_s
	mov edx, [ebp-0x38]
	mov edi, cgArray
	mov eax, [edi+0x24]
	cmp edx, [eax+0xc]
	jle _Z17CG_DrawDisconnecti_20
	cmp edx, [edi+0x46128]
	jg _Z17CG_DrawDisconnecti_20
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	mov [ebp-0x3c], ebx
	mov eax, scrPlaceView
	add [ebp-0x3c], eax
	mov dword [esp], _cstring_cgame_connection
	call _Z22UI_SafeTranslateStringPKc
	mov [ebp-0x40], eax
	mov ebx, 0x3f000000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov esi, eax
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z12UI_TextWidthPKciP6Font_sf
	mov dword [esp+0x28], 0x3
	mov edx, colorWhite
	mov [esp+0x24], edx
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x42c80000
	mov edx, 0x280
	sub edx, eax
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm0, eax
	movss [esp+0x10], xmm0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x7fffffff
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	test byte [edi+0x46129], 0x2
	jnz _Z17CG_DrawDisconnecti_20
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_net_disconnect
	call _Z23Material_RegisterHandlePKci
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov eax, 0x42400000
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x43a00000
	mov dword [esp+0x4], 0x43940000
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	jmp _Z17CG_DrawDisconnecti_20


;CG_DrawLagometer(int)
_Z16CG_DrawLagometeri:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov eax, cg_drawLagometer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16CG_DrawLagometeri_10
	mov eax, cgsArray
	mov eax, [eax+0x1c]
	test eax, eax
	jz _Z16CG_DrawLagometeri_20
_Z16CG_DrawLagometeri_10:
	mov edx, [ebp-0x1c]
	mov [ebp+0x8], edx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z17CG_DrawDisconnecti
_Z16CG_DrawLagometeri_20:
	mov eax, [ebp-0x1c]
	shl eax, 0x6
	mov edx, [ebp-0x1c]
	lea edi, [eax+edx*4]
	add edi, scrPlaceView
	mov ebx, cgMedia
	mov eax, [ebx+0x20]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x3
	mov dword [esp+0x14], 0x3
	mov eax, 0x42400000
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0xc30c0000
	mov dword [esp+0x4], 0xc25c0000
	mov [esp], edi
	call _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	xor esi, esi
	pxor xmm1, xmm1
	movaps xmm3, xmm1
	jmp _Z16CG_DrawLagometeri_30
_Z16CG_DrawLagometeri_60:
	movss xmm0, dword [_float_16_00000000]
	movss xmm1, dword [_float__140_00000000]
_Z16CG_DrawLagometeri_70:
	mov eax, [ebx]
	mov [esp+0x30], eax
	mov eax, colorYellow
	mov [esp+0x2c], eax
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x3
	mov dword [esp+0x14], 0x3
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm1
_Z16CG_DrawLagometeri_90:
	movss xmm0, dword [_float__7_00000000]
	subss xmm0, xmm3
	movss [esp+0x4], xmm0
	mov [esp], edi
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	pxor xmm1, xmm1
_Z16CG_DrawLagometeri_80:
	add esi, 0x1
	cvtsi2ss xmm3, esi
	cmp esi, 0x30
	jz _Z16CG_DrawLagometeri_40
_Z16CG_DrawLagometeri_30:
	mov eax, esi
	not eax
	add eax, [lagometer+0x200]
	and eax, 0x7f
	cvtsi2ss xmm0, dword [eax*4+lagometer]
	mulss xmm0, [_float_0_05333333]
	ucomiss xmm0, xmm1
	jbe _Z16CG_DrawLagometeri_50
	ucomiss xmm0, [_float_16_00000000]
	ja _Z16CG_DrawLagometeri_60
	movss xmm1, dword [_float__124_00000000]
	subss xmm1, xmm0
	jmp _Z16CG_DrawLagometeri_70
_Z16CG_DrawLagometeri_50:
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	jbe _Z16CG_DrawLagometeri_80
	xorps xmm0, [_data16_80000000]
	movss xmm2, dword [_float_16_00000000]
	movaps xmm1, xmm2
	cmpss xmm1, xmm0, 0x5
	andps xmm0, xmm1
	andnps xmm1, xmm2
	orps xmm1, xmm0
	mov eax, [ebx]
	mov [esp+0x30], eax
	mov eax, colorBlue
	mov [esp+0x2c], eax
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x3
	mov dword [esp+0x14], 0x3
	movss [esp+0x10], xmm1
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0xc2f80000
	jmp _Z16CG_DrawLagometeri_90
_Z16CG_DrawLagometeri_40:
	xor ebx, ebx
	movaps xmm2, xmm1
	jmp _Z16CG_DrawLagometeri_100
_Z16CG_DrawLagometeri_140:
	mov edx, colorYellow
	mulss xmm0, [_float_0_02666667]
	ucomiss xmm0, [_float_24_00000000]
	jbe _Z16CG_DrawLagometeri_110
_Z16CG_DrawLagometeri_150:
	movss xmm0, dword [_float_24_00000000]
	movss xmm1, dword [_float__116_00000000]
_Z16CG_DrawLagometeri_160:
	mov eax, cgMedia
	mov eax, [eax]
	mov [esp+0x30], eax
	mov [esp+0x2c], edx
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x3
	mov dword [esp+0x14], 0x3
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm1
_Z16CG_DrawLagometeri_180:
	movss xmm0, dword [_float__7_00000000]
	subss xmm0, xmm2
	movss [esp+0x4], xmm0
	mov [esp], edi
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
_Z16CG_DrawLagometeri_170:
	add ebx, 0x1
	cvtsi2ss xmm2, ebx
	cmp ebx, 0x30
	jz _Z16CG_DrawLagometeri_120
	pxor xmm1, xmm1
_Z16CG_DrawLagometeri_100:
	mov eax, ebx
	not eax
	add eax, [lagometer+0x604]
	and eax, 0x7f
	cvtsi2ss xmm0, dword [eax*4+lagometer+0x404]
	ucomiss xmm0, xmm1
	jbe _Z16CG_DrawLagometeri_130
	test byte [eax*4+lagometer+0x204], 0x1
	jnz _Z16CG_DrawLagometeri_140
	mov edx, colorGreen
	mulss xmm0, [_float_0_02666667]
	ucomiss xmm0, [_float_24_00000000]
	ja _Z16CG_DrawLagometeri_150
_Z16CG_DrawLagometeri_110:
	movss xmm1, dword [_float__92_00000000]
	subss xmm1, xmm0
	jmp _Z16CG_DrawLagometeri_160
_Z16CG_DrawLagometeri_130:
	ucomiss xmm1, xmm0
	jbe _Z16CG_DrawLagometeri_170
	mov eax, cgMedia
	mov eax, [eax]
	mov [esp+0x30], eax
	mov eax, colorRed
	mov [esp+0x2c], eax
	movss [esp+0x28], xmm1
	movss [esp+0x24], xmm1
	movss [esp+0x20], xmm1
	movss [esp+0x1c], xmm1
	mov dword [esp+0x18], 0x3
	mov dword [esp+0x14], 0x3
	mov dword [esp+0x10], 0x41c00000
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0xc2e80000
	jmp _Z16CG_DrawLagometeri_180
_Z16CG_DrawLagometeri_120:
	mov eax, cg_nopredict
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CG_DrawLagometeri_190
	mov eax, cg_synchronousClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16CG_DrawLagometeri_200
_Z16CG_DrawLagometeri_190:
	mov dword [esp+0x14], 0xa
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], _cstring_snc
	mov dword [esp+0x8], 0x43aa0000
	mov dword [esp+0x4], 0x441e4000
	mov [esp], edi
	call _Z19CG_DrawBigDevStringPK15ScreenPlacementffPKcfi
_Z16CG_DrawLagometeri_200:
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z17CG_DrawDisconnecti


;CG_AddLagometerFrameInfo(cg_s const*)
_Z24CG_AddLagometerFrameInfoPK4cg_s:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov edx, [lagometer+0x200]
	mov ebx, edx
	and ebx, 0x7f
	mov eax, [ecx+0x46128]
	sub eax, [ecx+0x1c]
	mov [ebx*4+lagometer], eax
	add edx, 0x1
	mov [lagometer+0x200], edx
	pop ebx
	pop ebp
	ret


;CG_AddLagometerSnapshotInfo(snapshot_s*)
_Z27CG_AddLagometerSnapshotInfoP10snapshot_s:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz _Z27CG_AddLagometerSnapshotInfoP10snapshot_s_10
	mov edx, [lagometer+0x604]
	mov ecx, edx
	and ecx, 0x7f
	mov eax, [ebx+0x4]
	mov [ecx*4+lagometer+0x404], eax
	mov eax, [ebx]
	mov [ecx*4+lagometer+0x204], eax
	add edx, 0x1
	mov [lagometer+0x604], edx
	pop ebx
	pop ebp
	ret
_Z27CG_AddLagometerSnapshotInfoP10snapshot_s_10:
	mov eax, [lagometer+0x604]
	mov edx, eax
	and edx, 0x7f
	mov dword [edx*4+lagometer+0x404], 0xffffffff
	add eax, 0x1
	mov [lagometer+0x604], eax
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of cg_draw_net_mp:
SECTION .data


;Initialized constant data of cg_draw_net_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_draw_net_mp:
SECTION .bss
lagometer: resb 0x680


;All cstrings:
SECTION .rdata
_cstring_cgame_connection:		db "CGAME_CONNECTIONINTERUPTED",0
_cstring_net_disconnect:		db "net_disconnect",0
_cstring_snc:		db "snc",0



;All constant floats and doubles:
SECTION .rdata
_float_16_00000000:		dd 0x41800000	; 16
_float__140_00000000:		dd 0xc30c0000	; -140
_float__7_00000000:		dd 0xc0e00000	; -7
_float_0_05333333:		dd 0x3d5a740e	; 0.0533333
_float__124_00000000:		dd 0xc2f80000	; -124
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_02666667:		dd 0x3cda740e	; 0.0266667
_float_24_00000000:		dd 0x41c00000	; 24
_float__116_00000000:		dd 0xc2e80000	; -116
_float__92_00000000:		dd 0xc2b80000	; -92

