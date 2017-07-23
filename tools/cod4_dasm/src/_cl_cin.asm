;Imports of cl_cin:
	extern SND_GetVolumeNormalized
	extern snd_cinematicVolumeScale
	extern R_Cinematic_StartPlayback
	extern cls
	extern UI_SetActiveMenu
	extern Con_Close
	extern clientUIActives
	extern R_Cinematic_IsNextReady
	extern R_Cinematic_IsFinished
	extern R_Cinematic_IsStarted
	extern R_Cinematic_DrawStretchPic_Letterboxed
	extern R_Cinematic_StartNextPlayback
	extern R_Cinematic_StopPlayback
	extern nextmap
	extern va
	extern Cbuf_AddText
	extern Cvar_SetString
	extern cmd_args
	extern Com_Printf

;Exports of cl_cin:
	global cin_skippable
	global CIN_PlayCinematic
	global SCR_DrawCinematic
	global SCR_StopCinematic
	global CL_PlayCinematic_f
	global CL_PlayUnskippableCinematic_f


SECTION .text


;CIN_PlayCinematic(int, char const*, int, int, int, int, int)
CIN_PlayCinematic:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	call SND_GetVolumeNormalized
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	mov eax, snd_cinematicVolumeScale
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x5
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_Cinematic_StartPlayback
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jz CIN_PlayCinematic_10
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call UI_SetActiveMenu
CIN_PlayCinematic_10:
	mov [esp], ebx
	call Con_Close
	shl ebx, 0x4
	add ebx, clientUIActives
	mov dword [ebx+0xc], 0x1
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;SCR_DrawCinematic(int)
SCR_DrawCinematic:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	call R_Cinematic_IsNextReady
	test al, al
	jnz SCR_DrawCinematic_10
SCR_DrawCinematic_50:
	call R_Cinematic_IsFinished
	test al, al
	jnz SCR_DrawCinematic_20
SCR_DrawCinematic_40:
	call R_Cinematic_IsStarted
	test al, al
	jnz SCR_DrawCinematic_30
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SCR_DrawCinematic_30:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp R_Cinematic_DrawStretchPic_Letterboxed
SCR_DrawCinematic_20:
	mov [esp], ebx
	call SCR_StopCinematic
	jmp SCR_DrawCinematic_40
SCR_DrawCinematic_10:
	call R_Cinematic_StartNextPlayback
	jmp SCR_DrawCinematic_50
	nop


;SCR_StopCinematic(int)
SCR_StopCinematic:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	cmp byte [cin_skippable], 0x0
	jnz SCR_StopCinematic_10
	call R_Cinematic_IsFinished
	test al, al
	jz SCR_StopCinematic_20
SCR_StopCinematic_10:
	call R_Cinematic_StopPlayback
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x1
	jz SCR_StopCinematic_30
SCR_StopCinematic_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SCR_StopCinematic_30:
	shl dword [ebp+0x8], 0x4
	mov edx, [ebp+0x8]
	mov dword [edx+eax+0xc], 0x0
	mov ebx, nextmap
	mov eax, [ebx]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz SCR_StopCinematic_20
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_AddText
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_SetString
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_PlayCinematic_f()
CL_PlayCinematic_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov byte [cin_skippable], 0x1
	mov ebx, cmd_args
	mov edx, [ebx]
	mov ecx, [ebx+edx*4+0x44]
	cmp ecx, 0x1
	jle CL_PlayCinematic_f_10
	mov eax, [ebx+edx*4+0x64]
	mov esi, [eax+0x4]
CL_PlayCinematic_f_90:
	cmp ecx, 0x2
	jg CL_PlayCinematic_f_20
	mov eax, _cstring_null
CL_PlayCinematic_f_80:
	test esi, esi
	jz CL_PlayCinematic_f_30
	cmp byte [esi], 0x0
	jz CL_PlayCinematic_f_40
CL_PlayCinematic_f_30:
	test eax, eax
	jz CL_PlayCinematic_f_50
	movzx eax, byte [eax]
	cmp al, 0x31
	jz CL_PlayCinematic_f_60
	cmp al, 0x32
	jz CL_PlayCinematic_f_70
CL_PlayCinematic_f_50:
	mov eax, 0x1
CL_PlayCinematic_f_100:
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call CIN_PlayCinematic
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CL_PlayCinematic_f_20:
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp CL_PlayCinematic_f_80
CL_PlayCinematic_f_40:
	mov dword [esp+0x4], _cstring_no_cinematic_fil
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CL_PlayCinematic_f_10:
	mov esi, _cstring_null
	jmp CL_PlayCinematic_f_90
CL_PlayCinematic_f_60:
	mov eax, 0x5
	jmp CL_PlayCinematic_f_100
CL_PlayCinematic_f_70:
	mov eax, 0x3
	jmp CL_PlayCinematic_f_100
	nop


;CL_PlayUnskippableCinematic_f()
CL_PlayUnskippableCinematic_f:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call CL_PlayCinematic_f
	mov byte [cin_skippable], 0x0
	leave
	ret


;Initialized global or static variables of cl_cin:
SECTION .data
cin_skippable: dd 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cl_cin:
SECTION .rdata


;Zero initialized global or static variables of cl_cin:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_s:		db "%s",0ah,0
_cstring_null:		db 0
_cstring_no_cinematic_fil:		db "No cinematic file specified: cinematic filename [1/2/3]",0ah,0



;All constant floats and doubles:
SECTION .rdata

