;Imports of cl_input:
	extern clientUIActives
	extern clients
	extern com_frameTime
	extern cl_freelook
	extern cmd_args
	extern atoi
	extern _Z10Com_PrintfiPKcz
	extern frame_msec
	extern cls
	extern _Z19Key_IsCatcherActiveii
	extern cgArray
	extern m_filter
	extern cg_mapLocationSelectionCursorSpeed
	extern playerKeys
	extern _Z24CG_VehLocalClientDrivingi
	extern _Z17Key_RemoveCatcherii
	extern _Z9ClampChari
	extern _Z16UI_GetActiveMenui
	extern cl_sensitivity
	extern cl_mouseAccel
	extern cl_showMouseRate
	extern _Z26CG_GetPredictedPlayerStatei
	extern _Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput
	extern m_yaw
	extern m_pitch
	extern floorf
	extern m_forward
	extern m_side
	extern clientConnections
	extern _Z16Sys_IsLANAddress8netadr_t
	extern cl_maxpackets
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern cl_nodelta
	extern _Z19IN_ShowSystemCursori
	extern _Z13UI_MouseEventiii
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s
	extern _Z8MSG_InitP5msg_tPhi
	extern _Z13MSG_WriteByteP5msg_ti
	extern _Z13MSG_WriteLongP5msg_ti
	extern cl_packetdup
	extern cl_showSend
	extern _Z13MSG_WriteBitsP5msg_tii
	extern _Z11Com_HashKeyPKci
	extern _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3_
	extern _Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z21MSG_WriteBitsCompresshPKhPhi
	extern _Z15NET_AdrToString8netadr_t
	extern _Z19CL_Netchan_TransmitP9netchan_tPhi
	extern _Z31CL_Netchan_TransmitNextFragmentP9netchan_t
	extern _ZN10LargeLocalD1Ev
	extern _Z15MSG_WriteStringP5msg_tPKc
	extern _Unwind_Resume
	extern _Z15IN_SetCursorPosii
	extern _Z17Cmd_RemoveCommandPKc
	extern _Z8IN_Framev

;Exports of cl_input:
	global playersKb
	global _ZZ12CL_InitInputvE15IN_SprintUp_VAR
	global _ZZ12CL_InitInputvE17IN_SprintDown_VAR
	global _ZZ12CL_InitInputvE13IN_TalkUp_VAR
	global _ZZ12CL_InitInputvE15IN_TalkDown_VAR
	global _ZZ12CL_InitInputvE16IN_GoStandUp_VAR
	global _ZZ12CL_InitInputvE18IN_GoStandDown_VAR
	global _ZZ12CL_InitInputvE15IN_GoCrouch_VAR
	global _ZZ12CL_InitInputvE14IN_GoProne_VAR
	global _ZZ12CL_InitInputvE18IN_ToggleProne_VAR
	global _ZZ12CL_InitInputvE19IN_ToggleCrouch_VAR
	global _ZZ12CL_InitInputvE18IN_RaiseStance_VAR
	global _ZZ12CL_InitInputvE18IN_LowerStance_VAR
	global _ZZ12CL_InitInputvE25IN_ToggleADS_Throw_Up_VAR
	global _ZZ12CL_InitInputvE27IN_ToggleADS_Throw_Down_VAR
	global _ZZ12CL_InitInputvE21IN_Speed_Throw_Up_VAR
	global _ZZ12CL_InitInputvE23IN_Speed_Throw_Down_VAR
	global _ZZ12CL_InitInputvE15IN_Throw_Up_VAR
	global _ZZ12CL_InitInputvE17IN_Throw_Down_VAR
	global _ZZ12CL_InitInputvE15IN_LeaveADS_VAR
	global _ZZ12CL_InitInputvE16IN_ToggleADS_VAR
	global _ZZ12CL_InitInputvE14IN_MLookUp_VAR
	global _ZZ12CL_InitInputvE16IN_MLookDown_VAR
	global _ZZ12CL_InitInputvE16IN_Stance_Up_VAR
	global _ZZ12CL_InitInputvE18IN_Stance_Down_VAR
	global _ZZ12CL_InitInputvE15IN_Prone_Up_VAR
	global _ZZ12CL_InitInputvE17IN_Prone_Down_VAR
	global _ZZ12CL_InitInputvE19IN_LeanRight_Up_VAR
	global _ZZ12CL_InitInputvE21IN_LeanRight_Down_VAR
	global _ZZ12CL_InitInputvE18IN_LeanLeft_Up_VAR
	global _ZZ12CL_InitInputvE20IN_LeanLeft_Down_VAR
	global _ZZ12CL_InitInputvE19IN_UseReload_Up_VAR
	global _ZZ12CL_InitInputvE21IN_UseReload_Down_VAR
	global _ZZ12CL_InitInputvE16IN_Reload_Up_VAR
	global _ZZ12CL_InitInputvE18IN_Reload_Down_VAR
	global _ZZ12CL_InitInputvE18IN_Activate_Up_VAR
	global _ZZ12CL_InitInputvE20IN_Activate_Down_VAR
	global _ZZ12CL_InitInputvE22IN_BreathSprint_Up_VAR
	global _ZZ12CL_InitInputvE24IN_BreathSprint_Down_VAR
	global _ZZ12CL_InitInputvE15IN_Smoke_Up_VAR
	global _ZZ12CL_InitInputvE17IN_Smoke_Down_VAR
	global _ZZ12CL_InitInputvE14IN_Frag_Up_VAR
	global _ZZ12CL_InitInputvE16IN_Frag_Down_VAR
	global _ZZ12CL_InitInputvE21IN_MeleeBreath_Up_VAR
	global _ZZ12CL_InitInputvE23IN_MeleeBreath_Down_VAR
	global _ZZ12CL_InitInputvE16IN_Breath_Up_VAR
	global _ZZ12CL_InitInputvE18IN_Breath_Down_VAR
	global _ZZ12CL_InitInputvE15IN_Melee_Up_VAR
	global _ZZ12CL_InitInputvE17IN_Melee_Down_VAR
	global _ZZ12CL_InitInputvE16IN_Attack_Up_VAR
	global _ZZ12CL_InitInputvE18IN_Attack_Down_VAR
	global _ZZ12CL_InitInputvE14IN_SpeedUp_VAR
	global _ZZ12CL_InitInputvE16IN_SpeedDown_VAR
	global _ZZ12CL_InitInputvE18IN_MoverightUp_VAR
	global _ZZ12CL_InitInputvE20IN_MoverightDown_VAR
	global _ZZ12CL_InitInputvE17IN_MoveleftUp_VAR
	global _ZZ12CL_InitInputvE19IN_MoveleftDown_VAR
	global _ZZ12CL_InitInputvE15IN_StrafeUp_VAR
	global _ZZ12CL_InitInputvE17IN_StrafeDown_VAR
	global _ZZ12CL_InitInputvE17IN_LookdownUp_VAR
	global _ZZ12CL_InitInputvE19IN_LookdownDown_VAR
	global _ZZ12CL_InitInputvE15IN_LookupUp_VAR
	global _ZZ12CL_InitInputvE17IN_LookupDown_VAR
	global _ZZ12CL_InitInputvE13IN_BackUp_VAR
	global _ZZ12CL_InitInputvE15IN_BackDown_VAR
	global _ZZ12CL_InitInputvE16IN_ForwardUp_VAR
	global _ZZ12CL_InitInputvE18IN_ForwardDown_VAR
	global _ZZ12CL_InitInputvE14IN_RightUp_VAR
	global _ZZ12CL_InitInputvE16IN_RightDown_VAR
	global _ZZ12CL_InitInputvE13IN_LeftUp_VAR
	global _ZZ12CL_InitInputvE15IN_LeftDown_VAR
	global _ZZ12CL_InitInputvE13IN_DownUp_VAR
	global _ZZ12CL_InitInputvE15IN_DownDown_VAR
	global _ZZ12CL_InitInputvE11IN_UpUp_VAR
	global _ZZ12CL_InitInputvE13IN_UpDown_VAR
	global _ZZ12CL_InitInputvE17IN_CenterView_VAR
	global _Z9IN_UpDownv
	global _Z7IN_UpUpv
	global _Z11IN_DownDownv
	global _Z9IN_DownUpv
	global _Z11IN_LeftDownv
	global _Z9IN_LeftUpv
	global _Z12IN_RightDownv
	global _Z10IN_RightUpv
	global _Z14IN_ForwardDownv
	global _Z12IN_ForwardUpv
	global _Z11IN_BackDownv
	global _Z9IN_BackUpv
	global _Z13IN_LookupDownv
	global _Z11IN_LookupUpv
	global _Z15IN_LookdownDownv
	global _Z13IN_LookdownUpv
	global _Z13IN_StrafeDownv
	global _Z11IN_StrafeUpv
	global _Z15IN_MoveleftDownv
	global _Z13IN_MoveleftUpv
	global _Z16IN_MoverightDownv
	global _Z14IN_MoverightUpv
	global _Z12IN_SpeedDownv
	global _Z10IN_SpeedUpv
	global _Z14IN_Attack_Downv
	global _Z12IN_Attack_Upv
	global _Z13IN_Melee_Downv
	global _Z11IN_Melee_Upv
	global _Z14IN_Breath_Downv
	global _Z12IN_Breath_Upv
	global _Z19IN_MeleeBreath_Downv
	global _Z17IN_MeleeBreath_Upv
	global _Z12IN_Frag_Downv
	global _Z10IN_Frag_Upv
	global _Z13IN_Smoke_Downv
	global _Z11IN_Smoke_Upv
	global _Z20IN_BreathSprint_Downv
	global _Z18IN_BreathSprint_Upv
	global _Z16IN_Activate_Downv
	global _Z14IN_Activate_Upv
	global _Z14IN_Reload_Downv
	global _Z12IN_Reload_Upv
	global _Z17IN_UseReload_Downv
	global _Z15IN_UseReload_Upv
	global _Z16IN_LeanLeft_Downv
	global _Z14IN_LeanLeft_Upv
	global _Z17IN_LeanRight_Downv
	global _Z15IN_LeanRight_Upv
	global _Z13IN_Prone_Downv
	global _Z11IN_Prone_Upv
	global _Z14IN_Stance_Downv
	global _Z12IN_Stance_Upv
	global _Z12IN_MLookDownv
	global _Z10IN_MLookUpv
	global _Z12IN_ToggleADSv
	global _Z11IN_LeaveADSv
	global _Z13IN_Throw_Downv
	global _Z11IN_Throw_Upv
	global _Z19IN_Speed_Throw_Downv
	global _Z17IN_Speed_Throw_Upv
	global _Z23IN_ToggleADS_Throw_Downv
	global _Z21IN_ToggleADS_Throw_Upv
	global _Z14IN_LowerStancev
	global _Z14IN_RaiseStancev
	global _Z15IN_ToggleCrouchv
	global _Z14IN_TogglePronev
	global _Z10IN_GoPronev
	global _Z11IN_GoCrouchv
	global _Z14IN_GoStandDownv
	global _Z12IN_GoStandUpv
	global _Z11IN_TalkDownv
	global _Z9IN_TalkUpv
	global _Z13IN_SprintDownv
	global _Z11IN_SprintUpv
	global _Z10IN_KeyDownP9kbutton_t
	global _Z8IN_KeyUpP9kbutton_t
	global _Z12CL_CreateCmdi
	global _Z10CL_SendCmdi
	global _Z12CL_InitInputv
	global _Z12CL_SetStancei11StanceState
	global _Z13CL_MouseEventiiii
	global _Z13IN_CenterViewv
	global _Z14CL_WritePacketi
	global _Z15CL_SetCursorPosii
	global _Z16CL_ShutdownInputv
	global _Z16IN_IsTalkKeyHeldv
	global _Z19CL_ShowSystemCursori
	global _Z29CL_CreateCmdsDuringConnectioni
	global _Z8CL_Inputi
	global cl_bypassMouseInput
	global cl_analog_attack_threshold
	global cl_anglespeedkey
	global cl_pitchspeed
	global cl_stanceHoldTime
	global cl_talking
	global cl_yawspeed


SECTION .text


;IN_UpDown()
_Z9IN_UpDownv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0xf0
	call _Z10IN_KeyDownP9kbutton_t
	cmp byte [playersKb+0x1f0], 0x0
	jnz _Z9IN_UpDownv_10
	cmp byte [playersKb+0xec], 0x0
	jz _Z9IN_UpDownv_20
_Z9IN_UpDownv_10:
	mov eax, 0x1
_Z9IN_UpDownv_60:
	test eax, eax
	jnz _Z9IN_UpDownv_30
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z9IN_UpDownv_30
	mov edx, clients
	mov eax, [edx+0x25648]
	cmp eax, 0x1
	jz _Z9IN_UpDownv_40
	cmp eax, 0x2
	jz _Z9IN_UpDownv_50
	mov eax, playersKb+0xc8
	leave
	jmp _Z10IN_KeyDownP9kbutton_t
_Z9IN_UpDownv_50:
	mov dword [edx+0x25648], 0x1
_Z9IN_UpDownv_30:
	leave
	ret
_Z9IN_UpDownv_20:
	xor eax, eax
	jmp _Z9IN_UpDownv_60
_Z9IN_UpDownv_40:
	mov dword [edx+0x25648], 0x0
	leave
	ret
	nop


;IN_UpUp()
_Z7IN_UpUpv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0xf0
	call _Z8IN_KeyUpP9kbutton_t
	mov eax, playersKb+0xc8
	leave
	jmp _Z8IN_KeyUpP9kbutton_t
	nop


;IN_DownDown()
_Z11IN_DownDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0xdc
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_DownUp()
_Z9IN_DownUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0xdc
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_LeftDown()
_Z11IN_LeftDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_LeftUp()
_Z9IN_LeftUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_RightDown()
_Z12IN_RightDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x14
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_RightUp()
_Z10IN_RightUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x14
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_ForwardDown()
_Z14IN_ForwardDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x28
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_ForwardUp()
_Z12IN_ForwardUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x28
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_BackDown()
_Z11IN_BackDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x3c
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_BackUp()
_Z9IN_BackUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x3c
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_LookupDown()
_Z13IN_LookupDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x50
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_LookupUp()
_Z11IN_LookupUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x50
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_LookdownDown()
_Z15IN_LookdownDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x64
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_LookdownUp()
_Z13IN_LookdownUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x64
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_StrafeDown()
_Z13IN_StrafeDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0xa0
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_StrafeUp()
_Z11IN_StrafeUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0xa0
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_MoveleftDown()
_Z15IN_MoveleftDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x78
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_MoveleftUp()
_Z13IN_MoveleftUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x78
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_MoverightDown()
_Z16IN_MoverightDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x8c
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_MoverightUp()
_Z14IN_MoverightUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x8c
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_SpeedDown()
_Z12IN_SpeedDownv:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jg _Z12IN_SpeedDownv_10
	pop ebp
	ret
_Z12IN_SpeedDownv_10:
	mov eax, clients
	mov byte [eax], 0x0
	mov eax, playersKb+0xb4
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t
	nop


;IN_SpeedUp()
_Z10IN_SpeedUpv:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jg _Z10IN_SpeedUpv_10
	pop ebp
	ret
_Z10IN_SpeedUpv_10:
	mov eax, clients
	mov byte [eax], 0x0
	mov eax, playersKb+0xb4
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t
	nop


;IN_Attack_Down()
_Z14IN_Attack_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x118
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Attack_Up()
_Z12IN_Attack_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x118
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_Melee_Down()
_Z13IN_Melee_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x168
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Melee_Up()
_Z11IN_Melee_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x168
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_Breath_Down()
_Z14IN_Breath_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x12c
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Breath_Up()
_Z12IN_Breath_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x12c
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_MeleeBreath_Down()
_Z19IN_MeleeBreath_Downv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0x168
	call _Z10IN_KeyDownP9kbutton_t
	mov eax, playersKb+0x12c
	leave
	jmp _Z10IN_KeyDownP9kbutton_t
	nop


;IN_MeleeBreath_Up()
_Z17IN_MeleeBreath_Upv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0x168
	call _Z8IN_KeyUpP9kbutton_t
	mov eax, playersKb+0x12c
	leave
	jmp _Z8IN_KeyUpP9kbutton_t
	nop


;IN_Frag_Down()
_Z12IN_Frag_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x140
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Frag_Up()
_Z10IN_Frag_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x140
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_Smoke_Down()
_Z13IN_Smoke_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x154
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Smoke_Up()
_Z11IN_Smoke_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x154
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_BreathSprint_Down()
_Z20IN_BreathSprint_Downv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0x12c
	call _Z10IN_KeyDownP9kbutton_t
	mov eax, playersKb+0x21c
	leave
	jmp _Z10IN_KeyDownP9kbutton_t
	nop


;IN_BreathSprint_Up()
_Z18IN_BreathSprint_Upv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0x12c
	call _Z8IN_KeyUpP9kbutton_t
	mov eax, playersKb+0x21c
	leave
	jmp _Z8IN_KeyUpP9kbutton_t
	nop


;IN_Activate_Down()
_Z16IN_Activate_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x17c
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Activate_Up()
_Z14IN_Activate_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x17c
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_Reload_Down()
_Z14IN_Reload_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x190
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Reload_Up()
_Z12IN_Reload_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x190
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_UseReload_Down()
_Z17IN_UseReload_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1a4
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_UseReload_Up()
_Z15IN_UseReload_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1a4
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_LeanLeft_Down()
_Z16IN_LeanLeft_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1b8
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_LeanLeft_Up()
_Z14IN_LeanLeft_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1b8
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_LeanRight_Down()
_Z17IN_LeanRight_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1cc
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_LeanRight_Up()
_Z15IN_LeanRight_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1cc
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_Prone_Down()
_Z13IN_Prone_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1e0
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Prone_Up()
_Z11IN_Prone_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1e0
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_Stance_Down()
_Z14IN_Stance_Downv:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz _Z14IN_Stance_Downv_10
	cmp byte [playersKb+0xec], 0x0
	jz _Z14IN_Stance_Downv_20
_Z14IN_Stance_Downv_10:
	mov eax, 0x1
_Z14IN_Stance_Downv_40:
	test eax, eax
	jnz _Z14IN_Stance_Downv_30
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z14IN_Stance_Downv_30
	mov edx, clients
	mov byte [edx+0x25644], 0x1
	mov eax, [edx+0x25648]
	mov [edx+0x2564c], eax
	mov eax, com_frameTime
	mov eax, [eax]
	mov [edx+0x25650], eax
	cmp dword [edx+0x2564c], 0x1
	jz _Z14IN_Stance_Downv_30
	mov dword [edx+0x25648], 0x1
_Z14IN_Stance_Downv_30:
	pop ebp
	ret
_Z14IN_Stance_Downv_20:
	xor eax, eax
	jmp _Z14IN_Stance_Downv_40


;IN_Stance_Up()
_Z12IN_Stance_Upv:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz _Z12IN_Stance_Upv_10
	cmp byte [playersKb+0xec], 0x0
	jz _Z12IN_Stance_Upv_20
_Z12IN_Stance_Upv_10:
	mov eax, 0x1
_Z12IN_Stance_Upv_60:
	test eax, eax
	jnz _Z12IN_Stance_Upv_30
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z12IN_Stance_Upv_30
	mov eax, clients
	cmp byte [eax+0x25644], 0x0
	jz _Z12IN_Stance_Upv_40
	cmp dword [eax+0x2564c], 0x1
	jz _Z12IN_Stance_Upv_50
_Z12IN_Stance_Upv_40:
	mov byte [eax+0x25644], 0x0
_Z12IN_Stance_Upv_30:
	pop ebp
	ret
_Z12IN_Stance_Upv_20:
	xor eax, eax
	jmp _Z12IN_Stance_Upv_60
_Z12IN_Stance_Upv_50:
	mov dword [eax+0x25648], 0x0
	jmp _Z12IN_Stance_Upv_40
	nop


;IN_MLookDown()
_Z12IN_MLookDownv:
	push ebp
	mov ebp, esp
	mov byte [playersKb+0x114], 0x1
	pop ebp
	ret


;IN_MLookUp()
_Z10IN_MLookUpv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z10IN_MLookUpv_10
	mov byte [playersKb+0x114], 0x0
	mov eax, cl_freelook
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z10IN_MLookUpv_10
	mov edx, clients
	mov eax, [edx+0x88]
	xor eax, 0x80000000
	mov [edx+0x256a8], eax
_Z10IN_MLookUpv_10:
	leave
	ret


;IN_ToggleADS()
_Z12IN_ToggleADSv:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z12IN_ToggleADSv_10
	mov eax, clients
	cmp byte [eax], 0x0
	setz byte [eax]
_Z12IN_ToggleADSv_10:
	pop ebp
	ret
	nop


;IN_LeaveADS()
_Z11IN_LeaveADSv:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z11IN_LeaveADSv_10
	mov eax, clients
	mov byte [eax], 0x0
_Z11IN_LeaveADSv_10:
	pop ebp
	ret


;IN_Throw_Down()
_Z13IN_Throw_Downv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x208
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Throw_Up()
_Z11IN_Throw_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x208
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_Speed_Throw_Down()
_Z19IN_Speed_Throw_Downv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z19IN_Speed_Throw_Downv_10
	mov eax, clients
	mov byte [eax], 0x0
	mov eax, playersKb+0xb4
	call _Z10IN_KeyDownP9kbutton_t
_Z19IN_Speed_Throw_Downv_10:
	mov eax, playersKb+0x208
	leave
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_Speed_Throw_Up()
_Z17IN_Speed_Throw_Upv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z17IN_Speed_Throw_Upv_10
	mov eax, clients
	mov byte [eax], 0x0
	mov eax, playersKb+0xb4
	call _Z8IN_KeyUpP9kbutton_t
_Z17IN_Speed_Throw_Upv_10:
	mov eax, playersKb+0x208
	leave
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_ToggleADS_Throw_Down()
_Z23IN_ToggleADS_Throw_Downv:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z23IN_ToggleADS_Throw_Downv_10
	mov eax, clients
	cmp byte [eax], 0x0
	setz byte [eax]
_Z23IN_ToggleADS_Throw_Downv_10:
	mov eax, playersKb+0x208
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_ToggleADS_Throw_Up()
_Z21IN_ToggleADS_Throw_Upv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x208
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_LowerStance()
_Z14IN_LowerStancev:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z14IN_LowerStancev_10
	cmp byte [playersKb+0x1f0], 0x0
	jz _Z14IN_LowerStancev_20
_Z14IN_LowerStancev_50:
	mov eax, 0x1
_Z14IN_LowerStancev_60:
	test eax, eax
	jnz _Z14IN_LowerStancev_10
	mov edx, clients
	mov eax, [edx+0x25648]
	test eax, eax
	jz _Z14IN_LowerStancev_30
	sub eax, 0x1
	jz _Z14IN_LowerStancev_40
_Z14IN_LowerStancev_10:
	pop ebp
	ret
_Z14IN_LowerStancev_20:
	cmp byte [playersKb+0xec], 0x0
	jnz _Z14IN_LowerStancev_50
	xor eax, eax
	jmp _Z14IN_LowerStancev_60
_Z14IN_LowerStancev_30:
	mov dword [edx+0x25648], 0x1
	pop ebp
	ret
_Z14IN_LowerStancev_40:
	mov dword [edx+0x25648], 0x2
	pop ebp
	ret


;IN_RaiseStance()
_Z14IN_RaiseStancev:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z14IN_RaiseStancev_10
	cmp byte [playersKb+0x1f0], 0x0
	jz _Z14IN_RaiseStancev_20
_Z14IN_RaiseStancev_50:
	mov eax, 0x1
_Z14IN_RaiseStancev_60:
	test eax, eax
	jnz _Z14IN_RaiseStancev_10
	mov edx, clients
	mov eax, [edx+0x25648]
	cmp eax, 0x1
	jz _Z14IN_RaiseStancev_30
	cmp eax, 0x2
	jz _Z14IN_RaiseStancev_40
_Z14IN_RaiseStancev_10:
	pop ebp
	ret
_Z14IN_RaiseStancev_20:
	cmp byte [playersKb+0xec], 0x0
	jnz _Z14IN_RaiseStancev_50
	xor eax, eax
	jmp _Z14IN_RaiseStancev_60
_Z14IN_RaiseStancev_40:
	mov dword [edx+0x25648], 0x1
	pop ebp
	ret
_Z14IN_RaiseStancev_30:
	mov dword [edx+0x25648], 0x0
	pop ebp
	ret
	nop


;IN_ToggleCrouch()
_Z15IN_ToggleCrouchv:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz _Z15IN_ToggleCrouchv_10
	cmp byte [playersKb+0xec], 0x0
	jz _Z15IN_ToggleCrouchv_20
_Z15IN_ToggleCrouchv_10:
	mov eax, 0x1
_Z15IN_ToggleCrouchv_40:
	test eax, eax
	jnz _Z15IN_ToggleCrouchv_30
	mov edx, clients
	xor eax, eax
	cmp dword [edx+0x25648], 0x1
	setnz al
	mov [edx+0x25648], eax
_Z15IN_ToggleCrouchv_30:
	pop ebp
	ret
_Z15IN_ToggleCrouchv_20:
	xor eax, eax
	jmp _Z15IN_ToggleCrouchv_40


;IN_ToggleProne()
_Z14IN_TogglePronev:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz _Z14IN_TogglePronev_10
	cmp byte [playersKb+0xec], 0x0
	jz _Z14IN_TogglePronev_20
_Z14IN_TogglePronev_10:
	mov eax, 0x1
_Z14IN_TogglePronev_40:
	test eax, eax
	jnz _Z14IN_TogglePronev_30
	mov edx, clients
	xor eax, eax
	cmp dword [edx+0x25648], 0x2
	setnz al
	add eax, eax
	mov [edx+0x25648], eax
_Z14IN_TogglePronev_30:
	pop ebp
	ret
_Z14IN_TogglePronev_20:
	xor eax, eax
	jmp _Z14IN_TogglePronev_40


;IN_GoProne()
_Z10IN_GoPronev:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz _Z10IN_GoPronev_10
	cmp byte [playersKb+0xec], 0x0
	jz _Z10IN_GoPronev_20
_Z10IN_GoPronev_10:
	mov eax, 0x1
_Z10IN_GoPronev_40:
	test eax, eax
	jnz _Z10IN_GoPronev_30
	mov eax, clients
	mov dword [eax+0x25648], 0x2
_Z10IN_GoPronev_30:
	pop ebp
	ret
_Z10IN_GoPronev_20:
	xor eax, eax
	jmp _Z10IN_GoPronev_40
	nop


;IN_GoCrouch()
_Z11IN_GoCrouchv:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz _Z11IN_GoCrouchv_10
	cmp byte [playersKb+0xec], 0x0
	jz _Z11IN_GoCrouchv_20
_Z11IN_GoCrouchv_10:
	mov eax, 0x1
_Z11IN_GoCrouchv_40:
	test eax, eax
	jnz _Z11IN_GoCrouchv_30
	mov eax, clients
	mov dword [eax+0x25648], 0x1
_Z11IN_GoCrouchv_30:
	pop ebp
	ret
_Z11IN_GoCrouchv_20:
	xor eax, eax
	jmp _Z11IN_GoCrouchv_40
	nop


;IN_GoStandDown()
_Z14IN_GoStandDownv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jg _Z14IN_GoStandDownv_10
_Z14IN_GoStandDownv_40:
	leave
	ret
_Z14IN_GoStandDownv_10:
	mov eax, playersKb+0xf0
	call _Z10IN_KeyDownP9kbutton_t
	mov edx, clients
	mov eax, [edx+0x25648]
	test eax, eax
	jz _Z14IN_GoStandDownv_20
	cmp byte [playersKb+0x1f0], 0x0
	jz _Z14IN_GoStandDownv_30
_Z14IN_GoStandDownv_50:
	mov eax, 0x1
_Z14IN_GoStandDownv_60:
	test eax, eax
	jnz _Z14IN_GoStandDownv_40
	mov dword [edx+0x25648], 0x0
	leave
	ret
_Z14IN_GoStandDownv_30:
	cmp byte [playersKb+0xec], 0x0
	jnz _Z14IN_GoStandDownv_50
	xor eax, eax
	jmp _Z14IN_GoStandDownv_60
_Z14IN_GoStandDownv_20:
	mov eax, playersKb+0xc8
	leave
	jmp _Z10IN_KeyDownP9kbutton_t
	nop


;IN_GoStandUp()
_Z12IN_GoStandUpv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jg _Z12IN_GoStandUpv_10
	leave
	ret
_Z12IN_GoStandUpv_10:
	mov eax, playersKb+0xf0
	call _Z8IN_KeyUpP9kbutton_t
	mov eax, playersKb+0xc8
	leave
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_TalkDown()
_Z11IN_TalkDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x244
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_TalkUp()
_Z9IN_TalkUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x244
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_SprintDown()
_Z13IN_SprintDownv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x21c
	pop ebp
	jmp _Z10IN_KeyDownP9kbutton_t


;IN_SprintUp()
_Z11IN_SprintUpv:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x21c
	pop ebp
	jmp _Z8IN_KeyUpP9kbutton_t


;IN_KeyDown(kbutton_t*)
_Z10IN_KeyDownP9kbutton_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z10IN_KeyDownP9kbutton_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z10IN_KeyDownP9kbutton_t_90:
	cmp byte [eax], 0x0
	jnz _Z10IN_KeyDownP9kbutton_t_20
	mov eax, 0xffffffff
_Z10IN_KeyDownP9kbutton_t_80:
	mov edx, [ebx]
	cmp eax, edx
	jz _Z10IN_KeyDownP9kbutton_t_30
	mov ecx, [ebx+0x4]
	cmp eax, ecx
	jz _Z10IN_KeyDownP9kbutton_t_30
	test edx, edx
	jnz _Z10IN_KeyDownP9kbutton_t_40
	mov [ebx], eax
_Z10IN_KeyDownP9kbutton_t_70:
	cmp byte [ebx+0x10], 0x0
	jnz _Z10IN_KeyDownP9kbutton_t_30
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z10IN_KeyDownP9kbutton_t_50
	mov eax, _cstring_null
_Z10IN_KeyDownP9kbutton_t_100:
	mov [esp], eax
	call atoi
	mov [ebx+0x8], eax
	mov byte [ebx+0x10], 0x1
	mov byte [ebx+0x11], 0x1
_Z10IN_KeyDownP9kbutton_t_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z10IN_KeyDownP9kbutton_t_40:
	test ecx, ecx
	jnz _Z10IN_KeyDownP9kbutton_t_60
	mov [ebx+0x4], eax
	jmp _Z10IN_KeyDownP9kbutton_t_70
_Z10IN_KeyDownP9kbutton_t_20:
	mov [esp], eax
	call atoi
	jmp _Z10IN_KeyDownP9kbutton_t_80
_Z10IN_KeyDownP9kbutton_t_10:
	mov eax, _cstring_null
	jmp _Z10IN_KeyDownP9kbutton_t_90
_Z10IN_KeyDownP9kbutton_t_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z10IN_KeyDownP9kbutton_t_100
_Z10IN_KeyDownP9kbutton_t_60:
	mov dword [esp+0x4], _cstring_three_keys_down_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;IN_KeyUp(kbutton_t*)
_Z8IN_KeyUpP9kbutton_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z8IN_KeyUpP9kbutton_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z8IN_KeyUpP9kbutton_t_70:
	cmp byte [eax], 0x0
	jnz _Z8IN_KeyUpP9kbutton_t_20
	mov dword [ebx+0x4], 0x0
	mov dword [ebx], 0x0
	mov byte [ebx+0x10], 0x0
_Z8IN_KeyUpP9kbutton_t_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z8IN_KeyUpP9kbutton_t_20:
	mov [esp], eax
	call atoi
	cmp eax, [ebx]
	jz _Z8IN_KeyUpP9kbutton_t_30
	cmp eax, [ebx+0x4]
	jnz _Z8IN_KeyUpP9kbutton_t_40
	mov dword [ebx+0x4], 0x0
_Z8IN_KeyUpP9kbutton_t_80:
	mov edx, [ebx]
	test edx, edx
	jnz _Z8IN_KeyUpP9kbutton_t_40
	mov eax, [ebx+0x4]
	test eax, eax
	jnz _Z8IN_KeyUpP9kbutton_t_40
	mov byte [ebx+0x10], 0x0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z8IN_KeyUpP9kbutton_t_50
	mov eax, _cstring_null
_Z8IN_KeyUpP9kbutton_t_90:
	mov [esp], eax
	call atoi
	test eax, eax
	jz _Z8IN_KeyUpP9kbutton_t_60
	sub eax, [ebx+0x8]
	add [ebx+0xc], eax
	mov byte [ebx+0x10], 0x0
	jmp _Z8IN_KeyUpP9kbutton_t_40
_Z8IN_KeyUpP9kbutton_t_10:
	mov eax, _cstring_null
	jmp _Z8IN_KeyUpP9kbutton_t_70
_Z8IN_KeyUpP9kbutton_t_30:
	mov dword [ebx], 0x0
	jmp _Z8IN_KeyUpP9kbutton_t_80
_Z8IN_KeyUpP9kbutton_t_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z8IN_KeyUpP9kbutton_t_90
_Z8IN_KeyUpP9kbutton_t_60:
	mov eax, frame_msec
	mov eax, [eax]
	shr eax, 1
	add [ebx+0xc], eax
	mov byte [ebx+0x10], 0x0
	jmp _Z8IN_KeyUpP9kbutton_t_40
	nop


;CL_CreateCmd(int)
_Z12CL_CreateCmdi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov esi, eax
	mov [ebp-0x70], edx
	mov eax, clients
	movss xmm0, dword [eax+0x256a8]
	movss [ebp-0x5c], xmm0
	lea edx, [edx+edx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [eax*8+playersKb]
	mov [ebp-0x6c], eax
	mov edx, clients
	test byte [edx+0x31], 0x8
	jnz _Z12CL_CreateCmdi_10
	mov ecx, eax
	mov eax, cls
	mov eax, [eax+0x114]
	cmp byte [ecx+0xc4], 0x0
	jz _Z12CL_CreateCmdi_20
	cvtsi2ss xmm3, eax
	mulss xmm3, [_float_0_00100000]
	mov eax, [cl_anglespeedkey]
	mulss xmm3, [eax+0xc]
_Z12CL_CreateCmdi_1120:
	mov ebx, [ebp-0x6c]
	cmp byte [ebx+0xb0], 0x0
	jnz _Z12CL_CreateCmdi_30
	mov edi, clients
	movss xmm1, dword [edi+0x25664]
	pxor xmm5, xmm5
	ucomiss xmm1, xmm5
	jbe _Z12CL_CreateCmdi_40
	mov eax, [cl_yawspeed]
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, xmm5
	jb _Z12CL_CreateCmdi_50
	movaps xmm1, xmm2
_Z12CL_CreateCmdi_50:
	mov eax, clients
	movss xmm4, dword [eax+0x256ac]
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	mov edx, [ebp-0x6c]
	add edx, 0x14
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz _Z12CL_CreateCmdi_60
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz _Z12CL_CreateCmdi_70
	mov ebx, com_frameTime
	mov ecx, [ebx]
_Z12CL_CreateCmdi_1630:
	mov eax, [ebx]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_60:
	test ecx, ecx
	jle _Z12CL_CreateCmdi_80
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_90
	movss xmm1, dword [_float_1_00000000]
_Z12CL_CreateCmdi_1540:
	mulss xmm1, xmm0
	movaps xmm2, xmm4
	subss xmm2, xmm1
	mov edi, clients
	movss [edi+0x256ac], xmm2
	mov eax, [ebp-0x6c]
	mov ecx, [eax+0xc]
	mov dword [eax+0xc], 0x0
	cmp byte [eax+0x10], 0x0
	jz _Z12CL_CreateCmdi_100
	mov edx, [eax+0x8]
	test edx, edx
	jnz _Z12CL_CreateCmdi_110
	mov edx, com_frameTime
	mov ecx, [edx]
	mov edi, edx
_Z12CL_CreateCmdi_1620:
	mov eax, [edi]
	mov edx, [ebp-0x6c]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_100:
	test ecx, ecx
	jle _Z12CL_CreateCmdi_120
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_130
	movss xmm1, dword [_float_1_00000000]
_Z12CL_CreateCmdi_1520:
	mulss xmm1, xmm0
	addss xmm2, xmm1
	mov ecx, clients
	movss [ecx+0x256ac], xmm2
	mov ebx, ecx
	movss xmm1, dword [ebx+0x25660]
	ucomiss xmm1, xmm5
	ja _Z12CL_CreateCmdi_140
_Z12CL_CreateCmdi_160:
	mov eax, [cl_pitchspeed]
	movss xmm1, dword [eax+0xc]
	jmp _Z12CL_CreateCmdi_150
_Z12CL_CreateCmdi_30:
	pxor xmm5, xmm5
	mov ebx, clients
	movss xmm1, dword [ebx+0x25660]
	ucomiss xmm1, xmm5
	jbe _Z12CL_CreateCmdi_160
_Z12CL_CreateCmdi_140:
	mov eax, [cl_pitchspeed]
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, xmm5
	jb _Z12CL_CreateCmdi_150
	movaps xmm1, xmm2
_Z12CL_CreateCmdi_150:
	mov edi, clients
	movss xmm2, dword [edi+0x256a8]
	mulss xmm3, xmm1
	mov edx, [ebp-0x6c]
	add edx, 0x50
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz _Z12CL_CreateCmdi_170
	mov ebx, [edx+0x8]
	test ebx, ebx
	jz _Z12CL_CreateCmdi_180
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	mov eax, [ebx]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_170:
	test ecx, ecx
	jle _Z12CL_CreateCmdi_190
_Z12CL_CreateCmdi_1180:
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_200
	movss xmm1, dword [_float_1_00000000]
_Z12CL_CreateCmdi_1140:
	mulss xmm1, xmm3
	subss xmm2, xmm1
	mov edi, clients
	movss [edi+0x256a8], xmm2
	mov edx, [ebp-0x6c]
	add edx, 0x64
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz _Z12CL_CreateCmdi_210
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz _Z12CL_CreateCmdi_220
	mov eax, com_frameTime
	mov ecx, [eax]
	mov ebx, eax
_Z12CL_CreateCmdi_1500:
	mov eax, [ebx]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_210:
	test ecx, ecx
	jle _Z12CL_CreateCmdi_230
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_240
	movss xmm0, dword [_float_1_00000000]
_Z12CL_CreateCmdi_1280:
	mulss xmm3, xmm0
	addss xmm2, xmm3
	mov edi, clients
	movss [edi+0x256a8], xmm2
_Z12CL_CreateCmdi_10:
	cld
	mov ecx, 0x8
	xor eax, eax
	mov edi, esi
	rep stosd
	mov dword [esp+0x4], 0x8
	mov eax, [ebp-0x70]
	mov [esp], eax
	call _Z19Key_IsCatcherActiveii
	test al, al
	jz _Z12CL_CreateCmdi_250
	mov edi, cgArray
	mov edx, [edi+0x466f0]
	test edx, edx
	jz _Z12CL_CreateCmdi_260
	mov ecx, clients
	mov eax, [ecx+0x25648]
	cmp eax, 0x1
	jz _Z12CL_CreateCmdi_270
	cmp eax, 0x2
	jz _Z12CL_CreateCmdi_280
	mov ebx, [esi+0x4]
	and bh, 0xfc
	mov [esi+0x4], ebx
_Z12CL_CreateCmdi_1190:
	mov eax, ebx
	and ah, 0xef
	or eax, 0x100000
	mov [esi+0x4], eax
	cvtsi2ss xmm3, dword [edi+0x46124]
	mulss xmm3, [_float_0_00100000]
	movss xmm4, dword [edi+0x504ac]
	divss xmm4, dword [edi+0x504b0]
	mov eax, m_filter
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z12CL_CreateCmdi_290
	mov edx, clients
	mov eax, [edx+0x25640]
	cvtsi2ss xmm0, dword [edx+eax*4+0x25630]
	cvtsi2ss xmm2, dword [edx+eax*4+0x25638]
	mov ecx, edx
_Z12CL_CreateCmdi_1450:
	mov eax, [ecx+0x25640]
	xor eax, 0x1
	mov [ecx+0x25640], eax
	mov dword [ecx+eax*4+0x25630], 0x0
	mov dword [ecx+eax*4+0x25638], 0x0
	mov edx, cg_mapLocationSelectionCursorSpeed
	mov eax, [edx]
	mulss xmm0, [eax+0xc]
	mulss xmm0, xmm3
	movss xmm1, dword [_float_0_10000000]
	mulss xmm0, xmm1
	addss xmm0, [edi+0x5050c]
	movss [edi+0x5050c], xmm0
	mulss xmm2, xmm4
	mov eax, [edx]
	mulss xmm2, [eax+0xc]
	mulss xmm3, xmm2
	mulss xmm3, xmm1
	addss xmm3, [edi+0x50510]
	movss [edi+0x50510], xmm3
	movaps xmm3, xmm0
	pxor xmm5, xmm5
	ucomiss xmm5, xmm0
	ja _Z12CL_CreateCmdi_300
	movss xmm0, dword [_float_1_00000000]
	movaps xmm1, xmm0
	cmpss xmm1, xmm3, 0x5
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
_Z12CL_CreateCmdi_1590:
	movss [edi+0x5050c], xmm3
	movss xmm1, dword [edi+0x50510]
	ucomiss xmm5, xmm1
	ja _Z12CL_CreateCmdi_310
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm1
	movaps xmm1, xmm0
_Z12CL_CreateCmdi_1580:
	movss [edi+0x50510], xmm1
	mov ebx, [ebp-0x70]
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	shl eax, 0x3
	add eax, playerKeys
	mov eax, [eax+0xd24]
	cmp eax, 0x1
	jz _Z12CL_CreateCmdi_320
	cmp eax, 0x2
	jz _Z12CL_CreateCmdi_330
_Z12CL_CreateCmdi_1570:
	mov edi, clients
	mov eax, [edi+0x25654]
	mov [esi+0x14], al
	mov eax, [edi+0x25658]
	mov [esi+0x15], al
	mov edx, [edi+0x2fa0]
	mov eax, [edi+0x10]
	mov ecx, edx
	sub ecx, eax
	add eax, 0x1388
	cmp ecx, 0x1389
	cmovge edx, eax
	mov [esi], edx
	mov ecx, edi
	mov edx, esi
	movss xmm5, dword [_float_0_50000000]
	movss xmm1, dword [_float_182_04444885]
	lea ebx, [edi+0xc]
_Z12CL_CreateCmdi_340:
	movss xmm0, dword [ecx+0x256a8]
	addss xmm0, [ecx+0x25668]
	mulss xmm0, xmm1
	addss xmm0, xmm5
	cvttss2si eax, xmm0
	and eax, 0xffff
	mov [edx+0x8], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, ebx
	jnz _Z12CL_CreateCmdi_340
	mov eax, [esi+0x4]
	mov edx, clients
	or eax, [edx+0x256a0]
	mov [esi+0x4], eax
_Z12CL_CreateCmdi_950:
	mov dword [edx+0x256a0], 0x0
	mov ecx, [ebp-0x70]
	mov [esp], ecx
	movss [ebp-0x98], xmm1
	movss [ebp-0xd8], xmm5
	call _Z24CG_VehLocalClientDrivingi
	test al, al
	movss xmm1, dword [ebp-0x98]
	movss xmm5, dword [ebp-0xd8]
	jz _Z12CL_CreateCmdi_350
	mov ebx, clients
	movss xmm0, dword [ebx+0x1b1bd4]
	mulss xmm0, xmm1
	addss xmm0, xmm5
	cvttss2si eax, xmm0
	and eax, 0xffff
	mov [esi+0xc], eax
	mulss xmm1, [ebx+0x1b1bd8]
	addss xmm1, xmm5
	cvttss2si eax, xmm1
	and eax, 0xffff
	mov [esi+0x8], eax
	mov dword [esi+0x10], 0x0
_Z12CL_CreateCmdi_350:
	mov eax, esi
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CL_CreateCmdi_260:
	mov dword [esp+0x4], 0xfffffff7
	mov edx, [ebp-0x70]
	mov [esp], edx
	call _Z17Key_RemoveCatcherii
_Z12CL_CreateCmdi_250:
	mov eax, [ebp-0x6c]
	add eax, 0x118
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_360
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x12c
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_370
_Z12CL_CreateCmdi_1110:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x140
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_380
_Z12CL_CreateCmdi_1100:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x154
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_390
_Z12CL_CreateCmdi_1090:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x168
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_400
_Z12CL_CreateCmdi_1080:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x17c
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_410
_Z12CL_CreateCmdi_1070:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x190
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_420
_Z12CL_CreateCmdi_1060:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1a4
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_430
_Z12CL_CreateCmdi_1050:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1b8
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_440
_Z12CL_CreateCmdi_1040:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1cc
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_450
_Z12CL_CreateCmdi_1030:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1e0
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_460
_Z12CL_CreateCmdi_1020:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1f4
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_470
_Z12CL_CreateCmdi_1010:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0xc8
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_480
_Z12CL_CreateCmdi_1000:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x208
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_490
_Z12CL_CreateCmdi_990:
	mov byte [eax+0x11], 0x0
	mov ebx, clientUIActives
	mov eax, [ebx+0x4]
	test eax, eax
	jnz _Z12CL_CreateCmdi_500
_Z12CL_CreateCmdi_960:
	cmp dword [ebx+0xc], 0x5
	jg _Z12CL_CreateCmdi_510
_Z12CL_CreateCmdi_970:
	mov ecx, [ebp-0x70]
	lea edx, [ecx+ecx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x3
	movzx edx, byte [eax+playersKb+0x1f0]
	test dl, dl
	jz _Z12CL_CreateCmdi_520
_Z12CL_CreateCmdi_570:
	mov eax, 0x1
	test eax, eax
	jz _Z12CL_CreateCmdi_530
_Z12CL_CreateCmdi_580:
	test dl, dl
	jnz _Z12CL_CreateCmdi_540
	mov ebx, [esi+0x4]
	or bh, 0x2
	and bh, 0xfe
	mov [esi+0x4], ebx
	or bh, 0x10
_Z12CL_CreateCmdi_1170:
	mov [esi+0x4], ebx
	mov eax, clients
	cmp byte [eax], 0x0
	setz al
	mov edx, [ebp-0x6c]
	cmp al, [edx+0xc4]
	jnz _Z12CL_CreateCmdi_550
_Z12CL_CreateCmdi_620:
	or bh, 0x8
	mov [esi+0x4], ebx
	jmp _Z12CL_CreateCmdi_560
_Z12CL_CreateCmdi_520:
	cmp byte [eax+playersKb+0xec], 0x0
	jnz _Z12CL_CreateCmdi_570
	xor eax, eax
	test eax, eax
	jnz _Z12CL_CreateCmdi_580
_Z12CL_CreateCmdi_530:
	mov ebx, clients
	cmp byte [ebx+0x25644], 0x0
	jnz _Z12CL_CreateCmdi_590
	mov edi, ebx
_Z12CL_CreateCmdi_1160:
	mov eax, [edi+0x25648]
	cmp eax, 0x1
	jz _Z12CL_CreateCmdi_600
	cmp eax, 0x2
	jz _Z12CL_CreateCmdi_610
	mov ebx, [esi+0x4]
	and bh, 0xfc
	mov [esi+0x4], ebx
_Z12CL_CreateCmdi_1560:
	and bh, 0xef
	mov [esi+0x4], ebx
	mov eax, clients
	cmp byte [eax], 0x0
	setz al
	mov edx, [ebp-0x6c]
	cmp al, [edx+0xc4]
	jz _Z12CL_CreateCmdi_620
_Z12CL_CreateCmdi_550:
	and bh, 0xf7
	mov [esi+0x4], ebx
_Z12CL_CreateCmdi_560:
	mov edx, [ebp-0x6c]
	add edx, 0x8c
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz _Z12CL_CreateCmdi_630
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz _Z12CL_CreateCmdi_640
	mov ebx, com_frameTime
	mov ecx, [ebx]
_Z12CL_CreateCmdi_1490:
	mov eax, [ebx]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_630:
	pxor xmm0, xmm0
	test ecx, ecx
	jle _Z12CL_CreateCmdi_650
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_660
	movss xmm0, dword [_float_127_00000000]
_Z12CL_CreateCmdi_650:
	cvttss2si edi, xmm0
	mov edx, [ebp-0x6c]
	add edx, 0x78
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz _Z12CL_CreateCmdi_670
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz _Z12CL_CreateCmdi_680
	mov eax, com_frameTime
	mov ecx, [eax]
	mov ebx, eax
_Z12CL_CreateCmdi_1460:
	mov eax, [ebx]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_670:
	pxor xmm0, xmm0
	test ecx, ecx
	jle _Z12CL_CreateCmdi_690
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_700
	movss xmm0, dword [_float_127_00000000]
_Z12CL_CreateCmdi_690:
	cvttss2si eax, xmm0
	sub edi, eax
	mov [ebp-0x64], edi
	mov edx, [ebp-0x6c]
	add edx, 0x28
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz _Z12CL_CreateCmdi_710
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz _Z12CL_CreateCmdi_720
	mov edi, com_frameTime
	mov ecx, [edi]
	mov ebx, edi
_Z12CL_CreateCmdi_1470:
	mov eax, [ebx]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_710:
	pxor xmm0, xmm0
	test ecx, ecx
	jle _Z12CL_CreateCmdi_730
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_740
	movss xmm0, dword [_float_127_00000000]
_Z12CL_CreateCmdi_730:
	cvttss2si edi, xmm0
	mov ebx, [ebp-0x6c]
	add ebx, 0x3c
	mov ecx, [ebx+0xc]
	mov dword [ebx+0xc], 0x0
	cmp byte [ebx+0x10], 0x0
	jz _Z12CL_CreateCmdi_750
	mov edx, [ebx+0x8]
	test edx, edx
	jnz _Z12CL_CreateCmdi_760
	mov eax, com_frameTime
	mov ecx, [eax]
	mov edx, eax
_Z12CL_CreateCmdi_1480:
	mov eax, [edx]
	mov [ebx+0x8], eax
_Z12CL_CreateCmdi_750:
	pxor xmm0, xmm0
	test ecx, ecx
	jle _Z12CL_CreateCmdi_770
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_780
	movss xmm0, dword [_float_127_00000000]
_Z12CL_CreateCmdi_770:
	cvttss2si eax, xmm0
	sub edi, eax
	cmp byte [ebx+0x10], 0x0
	jnz _Z12CL_CreateCmdi_790
	mov eax, [ebp-0x6c]
	add eax, 0x21c
	cmp word [eax+0x10], 0x0
	jz _Z12CL_CreateCmdi_800
	or dword [esi+0x4], 0x2
	mov byte [eax+0x11], 0x0
_Z12CL_CreateCmdi_790:
	mov ecx, [ebp-0x6c]
	add ecx, 0xa0
	mov [ebp-0x68], ecx
	cmp byte [ecx+0x10], 0x0
	jz _Z12CL_CreateCmdi_810
	test byte [esi+0x4], 0x2
	jnz _Z12CL_CreateCmdi_810
	mov edx, [ebp-0x6c]
	add edx, 0x14
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz _Z12CL_CreateCmdi_820
	mov ebx, [edx+0x8]
	test ebx, ebx
	jz _Z12CL_CreateCmdi_830
	mov eax, com_frameTime
	mov eax, [eax]
	mov [ebp-0xdc], eax
	sub eax, ebx
	add ecx, eax
	mov ebx, com_frameTime
	mov eax, [ebx]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_820:
	pxor xmm0, xmm0
	test ecx, ecx
	jle _Z12CL_CreateCmdi_840
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_850
	movss xmm0, dword [_float_127_00000000]
_Z12CL_CreateCmdi_840:
	cvttss2si eax, xmm0
	mov ebx, [ebp-0x64]
	add ebx, eax
	mov eax, [ebp-0x6c]
	mov ecx, [eax+0xc]
	mov dword [eax+0xc], 0x0
	cmp byte [eax+0x10], 0x0
	jz _Z12CL_CreateCmdi_860
	mov edx, [eax+0x8]
	test edx, edx
	jnz _Z12CL_CreateCmdi_870
	mov edx, com_frameTime
	mov ecx, [edx]
_Z12CL_CreateCmdi_1680:
	mov eax, [edx]
	mov edx, [ebp-0x6c]
	mov [edx+0x8], eax
_Z12CL_CreateCmdi_860:
	pxor xmm0, xmm0
	test ecx, ecx
	jle _Z12CL_CreateCmdi_880
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb _Z12CL_CreateCmdi_890
	movss xmm0, dword [_float_127_00000000]
_Z12CL_CreateCmdi_880:
	cvttss2si eax, xmm0
	sub ebx, eax
	mov [ebp-0x64], ebx
_Z12CL_CreateCmdi_810:
	mov [esp], edi
	call _Z9ClampChari
	mov [esi+0x16], al
	mov ecx, [ebp-0x64]
	mov [esp], ecx
	call _Z9ClampChari
	mov [esi+0x17], al
	mov eax, m_filter
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12CL_CreateCmdi_900
	mov ebx, clients
	mov eax, [ebx+0x25630]
	add eax, [ebx+0x25634]
	cvtsi2ss xmm2, eax
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	mov eax, [ebx+0x25638]
	add eax, [ebx+0x2563c]
	cvtsi2ss xmm4, eax
	mulss xmm4, xmm0
	mov edx, ebx
_Z12CL_CreateCmdi_1220:
	mov eax, [edx+0x25640]
	xor eax, 0x1
	mov [edx+0x25640], eax
	mov dword [edx+eax*4+0x25630], 0x0
	mov dword [edx+eax*4+0x25638], 0x0
	mov eax, frame_msec
	mov edx, [eax]
	cmp edx, 0x0
	jnz _Z12CL_CreateCmdi_910
	mov ebx, clients
_Z12CL_CreateCmdi_1350:
	movss xmm1, dword [ebx+0x256a8]
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x5c]
	ucomiss xmm0, [_float_90_00000000]
	jbe _Z12CL_CreateCmdi_920
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, [_float_90_00000000]
	movss [ebx+0x256a8], xmm0
_Z12CL_CreateCmdi_1210:
	mov edx, [ebp-0x70]
	mov [esp], edx
	call _Z24CG_VehLocalClientDrivingi
	test al, al
	jz _Z12CL_CreateCmdi_930
	mov ebx, [esi+0x4]
	and ebx, 0xffff37fe
	mov [esi+0x4], ebx
_Z12CL_CreateCmdi_1200:
	mov ecx, clients
	mov eax, [ecx+0x25654]
	mov [esi+0x14], al
	mov eax, [ecx+0x25658]
	mov [esi+0x15], al
	mov edx, [ecx+0x2fa0]
	mov eax, [ecx+0x10]
	mov ecx, edx
	sub ecx, eax
	add eax, 0x1388
	cmp ecx, 0x1389
	cmovge edx, eax
	mov [esi], edx
	mov ecx, clients
	mov edx, esi
	movss xmm5, dword [_float_0_50000000]
	movss xmm1, dword [_float_182_04444885]
	lea edi, [ecx+0xc]
_Z12CL_CreateCmdi_940:
	movss xmm0, dword [ecx+0x256a8]
	addss xmm0, [ecx+0x25668]
	mulss xmm0, xmm1
	addss xmm0, xmm5
	cvttss2si eax, xmm0
	and eax, 0xffff
	mov [edx+0x8], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, edi
	jnz _Z12CL_CreateCmdi_940
	mov edx, clients
	or ebx, [edx+0x256a0]
	mov [esi+0x4], ebx
	jmp _Z12CL_CreateCmdi_950
_Z12CL_CreateCmdi_500:
	mov eax, [cl_bypassMouseInput]
	cmp byte [eax+0xc], 0x0
	jnz _Z12CL_CreateCmdi_960
	mov edi, [ebp-0x70]
	mov [esp], edi
	call _Z16UI_GetActiveMenui
	cmp eax, 0xa
	jz _Z12CL_CreateCmdi_960
	or dword [esi+0x4], 0x100000
	cmp dword [ebx+0xc], 0x5
	jle _Z12CL_CreateCmdi_970
_Z12CL_CreateCmdi_510:
	mov edx, clients
	mov eax, [edx+0x28]
	sub eax, 0x2
	cmp eax, 0x2
	ja _Z12CL_CreateCmdi_970
	mov eax, [ebp-0x6c]
	add eax, 0xf0
	cmp word [eax+0x10], 0x0
	jz _Z12CL_CreateCmdi_980
	or dword [esi+0x4], 0x400
_Z12CL_CreateCmdi_980:
	mov byte [eax+0x11], 0x0
	mov ecx, [ebp-0x70]
	lea edx, [ecx+ecx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x3
	movzx edx, byte [eax+playersKb+0x1f0]
	test dl, dl
	jz _Z12CL_CreateCmdi_520
	jmp _Z12CL_CreateCmdi_570
_Z12CL_CreateCmdi_490:
	or dword [esi+0x4], 0x80000
	mov byte [eax+0x11], 0x0
	mov ebx, clientUIActives
	mov eax, [ebx+0x4]
	test eax, eax
	jnz _Z12CL_CreateCmdi_500
	jmp _Z12CL_CreateCmdi_960
_Z12CL_CreateCmdi_480:
	or dword [esi+0x4], 0x400
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x208
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_490
	jmp _Z12CL_CreateCmdi_990
_Z12CL_CreateCmdi_470:
	or dword [esi+0x4], 0x200
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0xc8
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_480
	jmp _Z12CL_CreateCmdi_1000
_Z12CL_CreateCmdi_460:
	or dword [esi+0x4], 0x100
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1f4
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_470
	jmp _Z12CL_CreateCmdi_1010
_Z12CL_CreateCmdi_450:
	or dword [esi+0x4], 0x80
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1e0
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_460
	jmp _Z12CL_CreateCmdi_1020
_Z12CL_CreateCmdi_440:
	or dword [esi+0x4], 0x40
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1cc
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_450
	jmp _Z12CL_CreateCmdi_1030
_Z12CL_CreateCmdi_430:
	or dword [esi+0x4], 0x20
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1b8
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_440
	jmp _Z12CL_CreateCmdi_1040
_Z12CL_CreateCmdi_420:
	or dword [esi+0x4], 0x10
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1a4
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_430
	jmp _Z12CL_CreateCmdi_1050
_Z12CL_CreateCmdi_410:
	or dword [esi+0x4], 0x8
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x190
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_420
	jmp _Z12CL_CreateCmdi_1060
_Z12CL_CreateCmdi_400:
	or dword [esi+0x4], 0x4
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x17c
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_410
	jmp _Z12CL_CreateCmdi_1070
_Z12CL_CreateCmdi_390:
	or dword [esi+0x4], 0x8000
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x168
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_400
	jmp _Z12CL_CreateCmdi_1080
_Z12CL_CreateCmdi_380:
	or dword [esi+0x4], 0x4000
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x154
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_390
	jmp _Z12CL_CreateCmdi_1090
_Z12CL_CreateCmdi_370:
	or dword [esi+0x4], 0x2000
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x140
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_380
	jmp _Z12CL_CreateCmdi_1100
_Z12CL_CreateCmdi_360:
	or dword [esi+0x4], 0x1
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x12c
	cmp word [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_370
	jmp _Z12CL_CreateCmdi_1110
_Z12CL_CreateCmdi_20:
	cvtsi2ss xmm3, eax
	mulss xmm3, [_float_0_00100000]
	jmp _Z12CL_CreateCmdi_1120
_Z12CL_CreateCmdi_200:
	cvtsi2ss xmm0, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1130
	cvtsi2ss xmm1, edx
_Z12CL_CreateCmdi_1710:
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z12CL_CreateCmdi_1140
_Z12CL_CreateCmdi_590:
	mov eax, com_frameTime
	mov eax, [eax]
	sub eax, [ebx+0x25650]
	mov edx, [cl_stanceHoldTime]
	cmp eax, [edx+0xc]
	jl _Z12CL_CreateCmdi_1150
	xor eax, eax
	cmp dword [ebx+0x2564c], 0x2
	setnz al
	add eax, eax
	mov [ebx+0x25648], eax
	mov byte [ebx+0x25644], 0x0
	mov edi, clients
	jmp _Z12CL_CreateCmdi_1160
_Z12CL_CreateCmdi_540:
	mov ebx, [esi+0x4]
	or bh, 0x1
	and bh, 0xfd
	mov [esi+0x4], ebx
	or bh, 0x10
	jmp _Z12CL_CreateCmdi_1170
_Z12CL_CreateCmdi_180:
	mov eax, com_frameTime
	mov ecx, [eax]
	mov ebx, eax
	mov eax, [ebx]
	mov [edx+0x8], eax
	test ecx, ecx
	jg _Z12CL_CreateCmdi_1180
_Z12CL_CreateCmdi_190:
	movaps xmm1, xmm5
	jmp _Z12CL_CreateCmdi_1140
_Z12CL_CreateCmdi_280:
	mov ebx, [esi+0x4]
	or bh, 0x1
	and bh, 0xfd
	mov [esi+0x4], ebx
	jmp _Z12CL_CreateCmdi_1190
_Z12CL_CreateCmdi_40:
	mov eax, [cl_yawspeed]
	movss xmm1, dword [eax+0xc]
	jmp _Z12CL_CreateCmdi_50
_Z12CL_CreateCmdi_930:
	mov ebx, [esi+0x4]
	jmp _Z12CL_CreateCmdi_1200
_Z12CL_CreateCmdi_920:
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, xmm1
	ucomiss xmm0, [_float_90_00000000]
	jbe _Z12CL_CreateCmdi_1210
	movss xmm1, dword [ebp-0x5c]
	subss xmm1, [_float_90_00000000]
	mov eax, clients
	movss [eax+0x256a8], xmm1
	jmp _Z12CL_CreateCmdi_1210
_Z12CL_CreateCmdi_900:
	mov edi, clients
	mov eax, [edi+0x25640]
	cvtsi2ss xmm2, dword [edi+eax*4+0x25630]
	cvtsi2ss xmm4, dword [edi+eax*4+0x25638]
	mov edx, edi
	jmp _Z12CL_CreateCmdi_1220
_Z12CL_CreateCmdi_660:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1230
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1640:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp _Z12CL_CreateCmdi_650
_Z12CL_CreateCmdi_700:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1240
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1660:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp _Z12CL_CreateCmdi_690
_Z12CL_CreateCmdi_740:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1250
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1670:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp _Z12CL_CreateCmdi_730
_Z12CL_CreateCmdi_780:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1260
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1650:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp _Z12CL_CreateCmdi_770
_Z12CL_CreateCmdi_240:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1270
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1700:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	jmp _Z12CL_CreateCmdi_1280
_Z12CL_CreateCmdi_910:
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	jl _Z12CL_CreateCmdi_1290
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1720:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mov eax, cl_sensitivity
	mov edx, [eax]
	mov eax, cl_mouseAccel
	mov eax, [eax]
	movaps xmm3, xmm1
	mulss xmm3, [eax+0xc]
	addss xmm3, [edx+0xc]
	mov ecx, clients
	mulss xmm3, [ecx+0x2565c]
	ucomiss xmm1, [_float_0_00000000]
	jp _Z12CL_CreateCmdi_1300
	jz _Z12CL_CreateCmdi_1310
_Z12CL_CreateCmdi_1300:
	mov eax, cl_showMouseRate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z12CL_CreateCmdi_1320
	mov eax, clients
_Z12CL_CreateCmdi_1550:
	test byte [eax+0x31], 0x8
	jnz _Z12CL_CreateCmdi_1330
	movaps xmm0, xmm3
	mulss xmm0, xmm2
	mulss xmm3, xmm4
	movss [ebp-0x60], xmm3
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jnz _Z12CL_CreateCmdi_1340
	jp _Z12CL_CreateCmdi_1340
	ucomiss xmm3, xmm5
	jp _Z12CL_CreateCmdi_1340
	jnz _Z12CL_CreateCmdi_1340
	movss xmm4, dword [_float_0_00100000]
	mov edx, clients
_Z12CL_CreateCmdi_1440:
	mov eax, cls
	cvtsi2ss xmm0, dword [eax+0x114]
	mulss xmm0, xmm4
	movss [ebp-0x58], xmm0
	mov eax, [edx+0x256a8]
	mov [ebp-0x54], eax
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov eax, [edx+0x256ac]
	mov [ebp-0x48], eax
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov eax, [esi+0x4]
	mov [ebp-0x34], eax
	mov dword [ebp-0x30], 0x0
	mov dword [esp], 0x0
	call _Z26CG_GetPredictedPlayerStatei
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput
	mov eax, [ebp-0x28]
	mov ecx, clients
	mov [ecx+0x256a8], eax
	mov eax, [ebp-0x24]
	mov [ecx+0x256ac], eax
	mov eax, [ebp-0x20]
	mov [esi+0x18], eax
	movzx eax, byte [ebp-0x1c]
	mov [esi+0x1c], al
	mov ebx, ecx
	jmp _Z12CL_CreateCmdi_1350
_Z12CL_CreateCmdi_1340:
	mov eax, [ebp-0x68]
	cmp byte [eax+0x10], 0x0
	jnz _Z12CL_CreateCmdi_1360
	mov eax, m_yaw
	mov eax, [eax]
	movaps xmm3, xmm0
	mulss xmm3, [eax+0xc]
	mov edx, clients
	movss xmm1, dword [edx+0x25664]
	ucomiss xmm1, xmm5
	jbe _Z12CL_CreateCmdi_1370
	mov eax, frame_msec
	mov edx, [eax]
	test edx, edx
	js _Z12CL_CreateCmdi_1380
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1780:
	mulss xmm0, xmm1
	mulss xmm0, [_float_0_00100000]
	movaps xmm1, xmm3
	subss xmm1, xmm0
	movaps xmm2, xmm5
	cmpss xmm2, xmm1, 0x6
	movaps xmm1, xmm2
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	subss xmm1, xmm3
	cmpss xmm5, xmm1, 0x6
	movaps xmm2, xmm3
	andps xmm2, xmm5
	movaps xmm3, xmm5
	andnps xmm3, xmm0
	orps xmm3, xmm2
	mov eax, clients
_Z12CL_CreateCmdi_1690:
	movss xmm0, dword [eax+0x256ac]
	subss xmm0, xmm3
	movss [eax+0x256ac], xmm0
_Z12CL_CreateCmdi_1730:
	mov edx, [ebp-0x6c]
	cmp byte [edx+0x114], 0x0
	jnz _Z12CL_CreateCmdi_1390
	mov eax, cl_freelook
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12CL_CreateCmdi_1400
_Z12CL_CreateCmdi_1390:
	mov ecx, [ebp-0x68]
	cmp byte [ecx+0x10], 0x0
	jnz _Z12CL_CreateCmdi_1400
	mov eax, m_pitch
	mov eax, [eax]
	movss xmm3, dword [ebp-0x60]
	mulss xmm3, [eax+0xc]
	mov ebx, clients
	movss xmm0, dword [ebx+0x25660]
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jbe _Z12CL_CreateCmdi_1410
	mov eax, frame_msec
	mov edx, [eax]
	test edx, edx
	js _Z12CL_CreateCmdi_1420
	cvtsi2ss xmm1, edx
_Z12CL_CreateCmdi_1790:
	mulss xmm1, xmm0
	movss xmm4, dword [_float_0_00100000]
	mulss xmm1, xmm4
	movaps xmm0, xmm3
	subss xmm0, xmm1
	movaps xmm2, xmm5
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm3
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm1
	orps xmm3, xmm2
	xorps xmm1, [_data16_80000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	ucomiss xmm0, xmm5
	jb _Z12CL_CreateCmdi_1430
	movaps xmm3, xmm1
_Z12CL_CreateCmdi_1430:
	mov eax, clients
	addss xmm3, [eax+0x256a8]
	movss [eax+0x256a8], xmm3
	mov edx, eax
	jmp _Z12CL_CreateCmdi_1440
_Z12CL_CreateCmdi_290:
	mov ebx, clients
	mov eax, [ebx+0x25630]
	add eax, [ebx+0x25634]
	cvtsi2ss xmm0, eax
	movss xmm5, dword [_float_0_50000000]
	mulss xmm0, xmm5
	mov eax, [ebx+0x25638]
	add eax, [ebx+0x2563c]
	cvtsi2ss xmm2, eax
	mulss xmm2, xmm5
	mov ecx, ebx
	jmp _Z12CL_CreateCmdi_1450
_Z12CL_CreateCmdi_800:
	and dword [esi+0x4], 0xfffffffd
	jmp _Z12CL_CreateCmdi_790
_Z12CL_CreateCmdi_680:
	mov eax, com_frameTime
	mov eax, [eax]
	mov [ebp-0xdc], eax
	sub eax, ebx
	add ecx, eax
	mov ebx, com_frameTime
	jmp _Z12CL_CreateCmdi_1460
_Z12CL_CreateCmdi_720:
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	jmp _Z12CL_CreateCmdi_1470
_Z12CL_CreateCmdi_760:
	mov eax, com_frameTime
	mov eax, [eax]
	mov [ebp-0xdc], eax
	sub eax, edx
	add ecx, eax
	mov edx, com_frameTime
	jmp _Z12CL_CreateCmdi_1480
_Z12CL_CreateCmdi_640:
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	jmp _Z12CL_CreateCmdi_1490
_Z12CL_CreateCmdi_220:
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	jmp _Z12CL_CreateCmdi_1500
_Z12CL_CreateCmdi_230:
	movaps xmm0, xmm5
	jmp _Z12CL_CreateCmdi_1280
_Z12CL_CreateCmdi_270:
	mov ebx, [esi+0x4]
	or bh, 0x2
	and bh, 0xfe
	mov [esi+0x4], ebx
	jmp _Z12CL_CreateCmdi_1190
_Z12CL_CreateCmdi_130:
	cvtsi2ss xmm4, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1510
	cvtsi2ss xmm1, edx
_Z12CL_CreateCmdi_1740:
	divss xmm4, xmm1
	movaps xmm1, xmm4
	jmp _Z12CL_CreateCmdi_1520
_Z12CL_CreateCmdi_90:
	cvtsi2ss xmm2, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1530
	cvtsi2ss xmm1, edx
_Z12CL_CreateCmdi_1750:
	divss xmm2, xmm1
	movaps xmm1, xmm2
	jmp _Z12CL_CreateCmdi_1540
_Z12CL_CreateCmdi_1310:
	mov eax, ecx
	jmp _Z12CL_CreateCmdi_1550
_Z12CL_CreateCmdi_1330:
	mov ebx, eax
	jmp _Z12CL_CreateCmdi_1350
_Z12CL_CreateCmdi_600:
	mov ebx, [esi+0x4]
	or bh, 0x2
	and bh, 0xfe
	mov [esi+0x4], ebx
	jmp _Z12CL_CreateCmdi_1560
_Z12CL_CreateCmdi_330:
	or dword [esi+0x4], 0x20000
	jmp _Z12CL_CreateCmdi_1570
_Z12CL_CreateCmdi_1150:
	mov edi, clients
	jmp _Z12CL_CreateCmdi_1160
_Z12CL_CreateCmdi_310:
	movaps xmm1, xmm5
	jmp _Z12CL_CreateCmdi_1580
_Z12CL_CreateCmdi_300:
	movaps xmm3, xmm5
	jmp _Z12CL_CreateCmdi_1590
_Z12CL_CreateCmdi_610:
	mov ebx, [esi+0x4]
	or bh, 0x1
	and bh, 0xfd
	mov [esi+0x4], ebx
	jmp _Z12CL_CreateCmdi_1560
_Z12CL_CreateCmdi_890:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1600
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1760:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp _Z12CL_CreateCmdi_880
_Z12CL_CreateCmdi_850:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js _Z12CL_CreateCmdi_1610
	cvtsi2ss xmm0, edx
_Z12CL_CreateCmdi_1770:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp _Z12CL_CreateCmdi_840
_Z12CL_CreateCmdi_110:
	mov ebx, com_frameTime
	mov eax, [ebx]
	sub eax, edx
	add ecx, eax
	mov edi, ebx
	jmp _Z12CL_CreateCmdi_1620
_Z12CL_CreateCmdi_70:
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	jmp _Z12CL_CreateCmdi_1630
_Z12CL_CreateCmdi_1230:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1640
_Z12CL_CreateCmdi_1260:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1650
_Z12CL_CreateCmdi_1240:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1660
_Z12CL_CreateCmdi_1250:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1670
_Z12CL_CreateCmdi_80:
	movaps xmm1, xmm5
	jmp _Z12CL_CreateCmdi_1540
_Z12CL_CreateCmdi_120:
	movaps xmm1, xmm5
	jmp _Z12CL_CreateCmdi_1520
_Z12CL_CreateCmdi_320:
	or dword [esi+0x4], 0x10000
	movss xmm1, dword [_float_255_00000000]
	movss xmm0, dword [edi+0x5050c]
	mulss xmm0, xmm1
	movss xmm5, dword [_float_0_50000000]
	addss xmm0, xmm5
	movss [esp], xmm0
	movss [ebp-0x98], xmm1
	movss [ebp-0xd8], xmm5
	call floorf
	fstp dword [ebp-0x74]
	cvttss2si eax, [ebp-0x74]
	add al, 0x80
	mov [esi+0x1d], al
	movss xmm1, dword [ebp-0x98]
	mulss xmm1, [edi+0x50510]
	movss xmm5, dword [ebp-0xd8]
	addss xmm1, xmm5
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x78]
	cvttss2si eax, [ebp-0x78]
	add al, 0x80
	mov [esi+0x1e], al
	jmp _Z12CL_CreateCmdi_1570
_Z12CL_CreateCmdi_830:
	mov ebx, com_frameTime
	mov ecx, [ebx]
	mov eax, [ebx]
	mov [edx+0x8], eax
	jmp _Z12CL_CreateCmdi_820
_Z12CL_CreateCmdi_870:
	mov eax, com_frameTime
	mov eax, [eax]
	mov [ebp-0xdc], eax
	sub eax, edx
	add ecx, eax
	mov edx, com_frameTime
	jmp _Z12CL_CreateCmdi_1680
_Z12CL_CreateCmdi_1370:
	mov eax, edx
	jmp _Z12CL_CreateCmdi_1690
_Z12CL_CreateCmdi_1400:
	movsx ebx, byte [esi+0x16]
	mov eax, m_forward
	mov eax, [eax]
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x60], xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x80]
	cvttss2si eax, [ebp-0x80]
	sub ebx, eax
	mov [esp], ebx
	call _Z9ClampChari
	mov [esi+0x16], al
	movss xmm4, dword [_float_0_00100000]
	mov edx, clients
	jmp _Z12CL_CreateCmdi_1440
_Z12CL_CreateCmdi_1270:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1700
_Z12CL_CreateCmdi_1130:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z12CL_CreateCmdi_1710
_Z12CL_CreateCmdi_1290:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1720
_Z12CL_CreateCmdi_1320:
	cvtss2sd xmm1, xmm3
	movsd [esp+0x10], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_f__f
	mov dword [esp], 0xe
	movss [ebp-0xa8], xmm2
	movss [ebp-0xb8], xmm3
	movss [ebp-0xc8], xmm4
	call _Z10Com_PrintfiPKcz
	movss xmm4, dword [ebp-0xc8]
	movss xmm3, dword [ebp-0xb8]
	movss xmm2, dword [ebp-0xa8]
	mov eax, clients
	jmp _Z12CL_CreateCmdi_1550
_Z12CL_CreateCmdi_1360:
	movsx ebx, byte [esi+0x17]
	mov eax, m_side
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x7c]
	cvttss2si eax, [ebp-0x7c]
	add ebx, eax
	mov [esp], ebx
	call _Z9ClampChari
	mov [esi+0x17], al
	jmp _Z12CL_CreateCmdi_1730
_Z12CL_CreateCmdi_1510:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z12CL_CreateCmdi_1740
_Z12CL_CreateCmdi_1530:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z12CL_CreateCmdi_1750
_Z12CL_CreateCmdi_1600:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1760
_Z12CL_CreateCmdi_1610:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1770
_Z12CL_CreateCmdi_1380:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z12CL_CreateCmdi_1780
_Z12CL_CreateCmdi_1410:
	movss xmm4, dword [_float_0_00100000]
	jmp _Z12CL_CreateCmdi_1430
_Z12CL_CreateCmdi_1420:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z12CL_CreateCmdi_1790


;CL_SendCmd(int)
_Z10CL_SendCmdi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov ebx, clientConnections
	mov eax, [ebx+0x4018c]
	test eax, eax
	jnz _Z10CL_SendCmdi_10
	mov eax, clientUIActives
	mov edx, [eax+0xc]
	lea eax, [edx-0x1]
	cmp eax, 0x1
	jbe _Z10CL_SendCmdi_10
	mov esi, cls
	movzx ecx, byte [esi+0x2dc098]
	test cl, cl
	jnz _Z10CL_SendCmdi_20
_Z10CL_SendCmdi_60:
	lea eax, [edx-0x8]
	cmp eax, 0x1
	jbe _Z10CL_SendCmdi_30
	test cl, cl
	jz _Z10CL_SendCmdi_40
_Z10CL_SendCmdi_30:
	cmp dword [ebx+0x401c8], 0x2
	jz _Z10CL_SendCmdi_50
	mov ecx, [ebx+0x401c8]
	mov [ebp-0x24], ecx
	mov edx, [ebx+0x401cc]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x401d0]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z16Sys_IsLANAddress8netadr_t
	test eax, eax
	jnz _Z10CL_SendCmdi_50
	mov eax, [ebx+0x401b8]
	sub eax, 0x1
	and eax, 0x1f
	lea eax, [eax+eax*2]
	shl eax, 0x2
	add eax, clients
	mov edx, cls
	mov ecx, [edx+0x118]
	sub ecx, [eax+0x696d8]
	mov eax, cl_maxpackets
	mov ebx, [eax]
	mov eax, 0x3e8
	cdq
	idiv dword [ebx+0xc]
	cmp ecx, eax
	jge _Z10CL_SendCmdi_50
_Z10CL_SendCmdi_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10CL_SendCmdi_50:
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z14CL_WritePacketi
_Z10CL_SendCmdi_20:
	mov eax, [esi+0x118]
	sub eax, [ebx+0x8]
	cmp eax, 0x31
	jle _Z10CL_SendCmdi_10
	jmp _Z10CL_SendCmdi_60
_Z10CL_SendCmdi_40:
	mov eax, [esi+0x118]
	sub eax, [ebx+0x8]
	cmp eax, 0x3e7
	jle _Z10CL_SendCmdi_10
	jmp _Z10CL_SendCmdi_30


;CL_InitInput()
_Z12CL_InitInputv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_CenterView_VAR
	mov dword [esp+0x4], _Z13IN_CenterViewv
	mov dword [esp], _cstring_centerview
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_UpDown_VAR
	mov dword [esp+0x4], _Z9IN_UpDownv
	mov dword [esp], _cstring_moveup
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE11IN_UpUp_VAR
	mov dword [esp+0x4], _Z7IN_UpUpv
	mov dword [esp], _cstring_moveup1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_DownDown_VAR
	mov dword [esp+0x4], _Z11IN_DownDownv
	mov dword [esp], _cstring_movedown
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_DownUp_VAR
	mov dword [esp+0x4], _Z9IN_DownUpv
	mov dword [esp], _cstring_movedown1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_LeftDown_VAR
	mov dword [esp+0x4], _Z11IN_LeftDownv
	mov dword [esp], _cstring_left
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_LeftUp_VAR
	mov dword [esp+0x4], _Z9IN_LeftUpv
	mov dword [esp], _cstring_left1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_RightDown_VAR
	mov dword [esp+0x4], _Z12IN_RightDownv
	mov dword [esp], _cstring_right
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_RightUp_VAR
	mov dword [esp+0x4], _Z10IN_RightUpv
	mov dword [esp], _cstring_right1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_ForwardDown_VAR
	mov dword [esp+0x4], _Z14IN_ForwardDownv
	mov dword [esp], _cstring_forward
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_ForwardUp_VAR
	mov dword [esp+0x4], _Z12IN_ForwardUpv
	mov dword [esp], _cstring_forward1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_BackDown_VAR
	mov dword [esp+0x4], _Z11IN_BackDownv
	mov dword [esp], _cstring_back
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_BackUp_VAR
	mov dword [esp+0x4], _Z9IN_BackUpv
	mov dword [esp], _cstring_back1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_LookupDown_VAR
	mov dword [esp+0x4], _Z13IN_LookupDownv
	mov dword [esp], _cstring_lookup
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_LookupUp_VAR
	mov dword [esp+0x4], _Z11IN_LookupUpv
	mov dword [esp], _cstring_lookup1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_LookdownDown_VAR
	mov dword [esp+0x4], _Z15IN_LookdownDownv
	mov dword [esp], _cstring_lookdown
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_LookdownUp_VAR
	mov dword [esp+0x4], _Z13IN_LookdownUpv
	mov dword [esp], _cstring_lookdown1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_StrafeDown_VAR
	mov dword [esp+0x4], _Z13IN_StrafeDownv
	mov dword [esp], _cstring_strafe
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_StrafeUp_VAR
	mov dword [esp+0x4], _Z11IN_StrafeUpv
	mov dword [esp], _cstring_strafe1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_MoveleftDown_VAR
	mov dword [esp+0x4], _Z15IN_MoveleftDownv
	mov dword [esp], _cstring_moveleft
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_MoveleftUp_VAR
	mov dword [esp+0x4], _Z13IN_MoveleftUpv
	mov dword [esp], _cstring_moveleft1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE20IN_MoverightDown_VAR
	mov dword [esp+0x4], _Z16IN_MoverightDownv
	mov dword [esp], _cstring_moveright
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_MoverightUp_VAR
	mov dword [esp+0x4], _Z14IN_MoverightUpv
	mov dword [esp], _cstring_moveright1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_SpeedDown_VAR
	mov dword [esp+0x4], _Z12IN_SpeedDownv
	mov dword [esp], _cstring_speed
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_SpeedUp_VAR
	mov dword [esp+0x4], _Z10IN_SpeedUpv
	mov dword [esp], _cstring_speed1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Attack_Down_VAR
	mov dword [esp+0x4], _Z14IN_Attack_Downv
	mov dword [esp], _cstring_attack
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Attack_Up_VAR
	mov dword [esp+0x4], _Z12IN_Attack_Upv
	mov dword [esp], _cstring_attack1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_Melee_Down_VAR
	mov dword [esp+0x4], _Z13IN_Melee_Downv
	mov dword [esp], _cstring_melee
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_Melee_Up_VAR
	mov dword [esp+0x4], _Z11IN_Melee_Upv
	mov dword [esp], _cstring_melee1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Breath_Down_VAR
	mov dword [esp+0x4], _Z14IN_Breath_Downv
	mov dword [esp], _cstring_holdbreath
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Breath_Up_VAR
	mov dword [esp+0x4], _Z12IN_Breath_Upv
	mov dword [esp], _cstring_holdbreath1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE23IN_MeleeBreath_Down_VAR
	mov dword [esp+0x4], _Z19IN_MeleeBreath_Downv
	mov dword [esp], _cstring_melee_breath
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE21IN_MeleeBreath_Up_VAR
	mov dword [esp+0x4], _Z17IN_MeleeBreath_Upv
	mov dword [esp], _cstring_melee_breath1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Frag_Down_VAR
	mov dword [esp+0x4], _Z12IN_Frag_Downv
	mov dword [esp], _cstring_frag
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_Frag_Up_VAR
	mov dword [esp+0x4], _Z10IN_Frag_Upv
	mov dword [esp], _cstring_frag1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_Smoke_Down_VAR
	mov dword [esp+0x4], _Z13IN_Smoke_Downv
	mov dword [esp], _cstring_smoke
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_Smoke_Up_VAR
	mov dword [esp+0x4], _Z11IN_Smoke_Upv
	mov dword [esp], _cstring_smoke1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE24IN_BreathSprint_Down_VAR
	mov dword [esp+0x4], _Z20IN_BreathSprint_Downv
	mov dword [esp], _cstring_breath_sprint
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE22IN_BreathSprint_Up_VAR
	mov dword [esp+0x4], _Z18IN_BreathSprint_Upv
	mov dword [esp], _cstring_breath_sprint1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE20IN_Activate_Down_VAR
	mov dword [esp+0x4], _Z16IN_Activate_Downv
	mov dword [esp], _cstring_activate
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Activate_Up_VAR
	mov dword [esp+0x4], _Z14IN_Activate_Upv
	mov dword [esp], _cstring_activate1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Reload_Down_VAR
	mov dword [esp+0x4], _Z14IN_Reload_Downv
	mov dword [esp], _cstring_reload
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Reload_Up_VAR
	mov dword [esp+0x4], _Z12IN_Reload_Upv
	mov dword [esp], _cstring_reload1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE21IN_UseReload_Down_VAR
	mov dword [esp+0x4], _Z17IN_UseReload_Downv
	mov dword [esp], _cstring_usereload
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_UseReload_Up_VAR
	mov dword [esp+0x4], _Z15IN_UseReload_Upv
	mov dword [esp], _cstring_usereload1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE20IN_LeanLeft_Down_VAR
	mov dword [esp+0x4], _Z16IN_LeanLeft_Downv
	mov dword [esp], _cstring_leanleft
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_LeanLeft_Up_VAR
	mov dword [esp+0x4], _Z14IN_LeanLeft_Upv
	mov dword [esp], _cstring_leanleft1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE21IN_LeanRight_Down_VAR
	mov dword [esp+0x4], _Z17IN_LeanRight_Downv
	mov dword [esp], _cstring_leanright
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_LeanRight_Up_VAR
	mov dword [esp+0x4], _Z15IN_LeanRight_Upv
	mov dword [esp], _cstring_leanright1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_Prone_Down_VAR
	mov dword [esp+0x4], _Z13IN_Prone_Downv
	mov dword [esp], _cstring_prone
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_Prone_Up_VAR
	mov dword [esp+0x4], _Z11IN_Prone_Upv
	mov dword [esp], _cstring_prone1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Stance_Down_VAR
	mov dword [esp+0x4], _Z14IN_Stance_Downv
	mov dword [esp], _cstring_stance
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Stance_Up_VAR
	mov dword [esp+0x4], _Z12IN_Stance_Upv
	mov dword [esp], _cstring_stance1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_MLookDown_VAR
	mov dword [esp+0x4], _Z12IN_MLookDownv
	mov dword [esp], _cstring_mlook
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_MLookUp_VAR
	mov dword [esp+0x4], _Z10IN_MLookUpv
	mov dword [esp], _cstring_mlook1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_ToggleADS_VAR
	mov dword [esp+0x4], _Z12IN_ToggleADSv
	mov dword [esp], _cstring_toggleads
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_LeaveADS_VAR
	mov dword [esp+0x4], _Z11IN_LeaveADSv
	mov dword [esp], _cstring_leaveads
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_Throw_Down_VAR
	mov dword [esp+0x4], _Z13IN_Throw_Downv
	mov dword [esp], _cstring_throw
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_Throw_Up_VAR
	mov dword [esp+0x4], _Z11IN_Throw_Upv
	mov dword [esp], _cstring_throw1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE23IN_Speed_Throw_Down_VAR
	mov dword [esp+0x4], _Z19IN_Speed_Throw_Downv
	mov dword [esp], _cstring_speed_throw
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE21IN_Speed_Throw_Up_VAR
	mov dword [esp+0x4], _Z17IN_Speed_Throw_Upv
	mov dword [esp], _cstring_speed_throw1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE27IN_ToggleADS_Throw_Down_VAR
	mov dword [esp+0x4], _Z23IN_ToggleADS_Throw_Downv
	mov dword [esp], _cstring_toggleads_throw
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE25IN_ToggleADS_Throw_Up_VAR
	mov dword [esp+0x4], _Z21IN_ToggleADS_Throw_Upv
	mov dword [esp], _cstring_toggleads_throw1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_LowerStance_VAR
	mov dword [esp+0x4], _Z14IN_LowerStancev
	mov dword [esp], _cstring_lowerstance
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_RaiseStance_VAR
	mov dword [esp+0x4], _Z14IN_RaiseStancev
	mov dword [esp], _cstring_raisestance
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_ToggleCrouch_VAR
	mov dword [esp+0x4], _Z15IN_ToggleCrouchv
	mov dword [esp], _cstring_togglecrouch
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_ToggleProne_VAR
	mov dword [esp+0x4], _Z14IN_TogglePronev
	mov dword [esp], _cstring_toggleprone
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_GoProne_VAR
	mov dword [esp+0x4], _Z10IN_GoPronev
	mov dword [esp], _cstring_goprone
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_GoCrouch_VAR
	mov dword [esp+0x4], _Z11IN_GoCrouchv
	mov dword [esp], _cstring_gocrouch
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_GoStandDown_VAR
	mov dword [esp+0x4], _Z14IN_GoStandDownv
	mov dword [esp], _cstring_gostand
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_GoStandUp_VAR
	mov dword [esp+0x4], _Z12IN_GoStandUpv
	mov dword [esp], _cstring_gostand1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_TalkDown_VAR
	mov dword [esp+0x4], _Z11IN_TalkDownv
	mov dword [esp], _cstring_talk
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_TalkUp_VAR
	mov dword [esp+0x4], _Z9IN_TalkUpv
	mov dword [esp], _cstring_talk1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_SprintDown_VAR
	mov dword [esp+0x4], _Z13IN_SprintDownv
	mov dword [esp], _cstring_sprint
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_SprintUp_VAR
	mov dword [esp+0x4], _Z11IN_SprintUpv
	mov dword [esp], _cstring_sprint1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x14], _cstring_the_threshold_be
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x38d1b717
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_cl_analog_attack
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cl_analog_attack_threshold], eax
	mov dword [esp+0x14], _cstring_the_time_to_hold
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x12c
	mov dword [esp], _cstring_cl_stanceholdtim
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [cl_stanceHoldTime], eax
	mov dword [esp+0xc], _cstring_the_server_does_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_nodelta
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov edx, cl_nodelta
	mov [edx], eax
	leave
	ret


;CL_SetStance(int, StanceState)
_Z12CL_SetStancei11StanceState:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	lea eax, [edx*8]
	cmp byte [eax+playersKb+0x1f0], 0x0
	jnz _Z12CL_SetStancei11StanceState_10
	cmp byte [eax+playersKb+0xec], 0x0
	jz _Z12CL_SetStancei11StanceState_20
_Z12CL_SetStancei11StanceState_10:
	mov eax, 0x1
_Z12CL_SetStancei11StanceState_40:
	test eax, eax
	jnz _Z12CL_SetStancei11StanceState_30
	mov eax, clients
	mov edx, [ebp+0xc]
	mov [eax+0x25648], edx
_Z12CL_SetStancei11StanceState_30:
	pop ebp
	ret
_Z12CL_SetStancei11StanceState_20:
	xor eax, eax
	jmp _Z12CL_SetStancei11StanceState_40


;CL_MouseEvent(int, int, int, int)
_Z13CL_MouseEventiiii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, clientUIActives
	test byte [eax+0x4], 0x10
	jz _Z13CL_MouseEventiiii_10
	mov dword [esp], 0x0
	call _Z16UI_GetActiveMenui
	cmp eax, 0xa
	jz _Z13CL_MouseEventiiii_10
	mov eax, [cl_bypassMouseInput]
	cmp byte [eax+0xc], 0x0
	jz _Z13CL_MouseEventiiii_20
_Z13CL_MouseEventiiii_10:
	mov dword [esp], 0x0
	call _Z19IN_ShowSystemCursori
	mov edx, clients
	mov eax, [edx+0x25640]
	mov ecx, [ebp+0x10]
	add [edx+eax*4+0x25630], ecx
	mov ecx, [ebp+0x14]
	add [edx+eax*4+0x25638], ecx
	mov eax, 0x1
	leave
	ret
_Z13CL_MouseEventiiii_20:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov dword [esp], 0x0
	call _Z13UI_MouseEventiii
	xor eax, eax
	leave
	ret


;IN_CenterView()
_Z13IN_CenterViewv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z13IN_CenterViewv_10
	mov edx, clients
	mov eax, [edx+0x88]
	xor eax, 0x80000000
	mov [edx+0x256a8], eax
_Z13IN_CenterViewv_10:
	leave
	ret


;CL_WritePacket(int)
_Z14CL_WritePacketi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x89c
	mov dword [esp+0x4], 0x800
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalC1Ei
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _ZN10LargeLocal6GetBufEv
	mov [ebp-0x87c], eax
	mov eax, clientUIActives
	mov edx, [eax+0xc]
	mov esi, clientConnections
	mov eax, [esi+0x4018c]
	test eax, eax
	jnz _Z14CL_WritePacketi_10
	lea eax, [edx-0x1]
	cmp eax, 0x1
	jbe _Z14CL_WritePacketi_10
	cmp edx, 0x6
	jz _Z14CL_WritePacketi_10
	lea ecx, [ebp-0x4c]
	mov [esp+0x4], ecx
	mov ebx, clients
	lea eax, [ebx+0x24]
	mov [esp], eax
	call _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s
	cld
	mov ecx, 0xa
	xor eax, eax
	lea edi, [ebp-0x74]
	rep stosd
	mov dword [esp+0x8], 0x800
	lea eax, [ebp-0x874]
	mov [esp+0x4], eax
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z8MSG_InitP5msg_tPhi
	mov eax, [ebx+0x256b4]
	mov [esp+0x4], eax
	lea edx, [ebp-0x74]
	mov [esp], edx
	call _Z13MSG_WriteByteP5msg_ti
	mov eax, [esi+0x20134]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [esi+0x20138]
	mov [esp+0x4], eax
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z13MSG_WriteLongP5msg_ti
	mov ebx, [esi+0x130]
	add ebx, 0x1
	cmp ebx, [esi+0x12c]
	jle _Z14CL_WritePacketi_20
_Z14CL_WritePacketi_140:
	mov ebx, clients
	mov esi, clientConnections
	mov eax, cl_packetdup
	mov edx, [eax]
	mov eax, [esi+0x401b8]
	sub eax, [edx+0xc]
	sub eax, 0x1
	and eax, 0x1f
	lea eax, [eax+eax*2]
	mov edx, [ebx+0x666c8]
	mov [ebp-0x880], edx
	mov ecx, [ebx+eax*4+0x696d0]
	sub edx, ecx
	mov [ebp-0x880], edx
	cmp edx, 0x20
	jg _Z14CL_WritePacketi_30
	mov eax, [ebp-0x880]
	test eax, eax
	jle _Z14CL_WritePacketi_40
_Z14CL_WritePacketi_150:
	mov eax, cl_showSend
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14CL_WritePacketi_50
_Z14CL_WritePacketi_170:
	mov eax, [esi+0x40198]
	test eax, eax
	jnz _Z14CL_WritePacketi_60
	mov eax, cl_nodelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14CL_WritePacketi_70
	mov edi, [ebx+0x8]
	test edi, edi
	jz _Z14CL_WritePacketi_70
	mov eax, [esi+0x20134]
	cmp eax, [ebx+0x14]
	jz _Z14CL_WritePacketi_80
_Z14CL_WritePacketi_70:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
_Z14CL_WritePacketi_160:
	mov ecx, [ebp-0x880]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	mov edx, clientConnections
	mov ebx, [edx+0x20134]
	xor ebx, [edx+0x128]
	mov dword [esp+0x4], 0x20
	mov eax, [edx+0x20138]
	and eax, 0x7f
	shl eax, 0xa
	lea eax, [eax+edx+0x20140]
	mov [esp], eax
	call _Z11Com_HashKeyPKci
	mov esi, eax
	xor esi, ebx
	xor ebx, ebx
	lea edx, [ebp-0x4c]
_Z14CL_WritePacketi_90:
	mov ecx, clients
	mov eax, [ecx+0x666c8]
	sub eax, [ebp-0x880]
	lea eax, [ebx+eax+0x1]
	and eax, 0x7f
	shl eax, 0x5
	lea edi, [eax+ecx+0x656c8]
	mov [esp+0xc], edi
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3_
	add ebx, 0x1
	mov edx, edi
	cmp [ebp-0x880], ebx
	jnz _Z14CL_WritePacketi_90
	mov edx, clients
	lea ebx, [edx+0x25674]
	mov eax, [edx+0x25674]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov edx, clients
	mov eax, [edx+0x25678]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov edx, clients
	mov eax, [edx+0x2567c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov edx, clients
	mov eax, [edx+0x256a4]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov edx, clients
	mov eax, [edx+0x2569c]
	mov [esp+0x1c], eax
	mov eax, [edx+0x25698]
	mov [esp+0x18], eax
	mov eax, edx
	add eax, 0x2568c
	mov [esp+0x14], eax
	sub eax, 0xc
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, [edx+0x256a4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii
	mov [ebp-0x884], edi
_Z14CL_WritePacketi_180:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x3
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
	mov edx, [ebp-0x6c]
	mov eax, [edx]
	mov ecx, [ebp-0x87c]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	movzx eax, byte [edx+0x8]
	mov [ecx+0x8], al
	cmp dword [ebp-0x60], 0x800
	jbe _Z14CL_WritePacketi_100
	mov dword [esp+0x4], _cstring_overflow_compres
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14CL_WritePacketi_100:
	mov eax, [ebp-0x60]
	sub eax, 0x9
	mov [esp+0xc], eax
	mov eax, [ebp-0x87c]
	add eax, 0x9
	mov [esp+0x8], eax
	mov eax, [ebp-0x6c]
	add eax, 0x9
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z21MSG_WriteBitsCompresshPKhPhi
	lea edi, [eax+0x9]
	mov esi, clientConnections
	mov eax, [esi+0x401b8]
	and eax, 0x1f
	mov edx, cls
	mov ebx, [edx+0x118]
	mov ecx, clients
	lea eax, [eax+eax*2]
	lea eax, [ecx+eax*4]
	mov [eax+0x696d8], ebx
	mov edx, [ebp-0x884]
	mov edx, [edx]
	mov [eax+0x696d4], edx
	mov edx, [ecx+0x666c8]
	mov [eax+0x696d0], edx
	mov [esi+0x8], ebx
	mov eax, cl_showSend
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CL_WritePacketi_110
	mov ecx, [esi+0x401c8]
	mov [ebp-0x2c], ecx
	mov edx, [esi+0x401cc]
	mov [ebp-0x28], edx
	mov eax, [esi+0x401d0]
	mov [ebp-0x24], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_i_to_s
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z14CL_WritePacketi_110:
	mov [esp+0x8], edi
	mov ecx, [ebp-0x87c]
	mov [esp+0x4], ecx
	lea ebx, [esi+0x401b8]
	mov [esp], ebx
	call _Z19CL_Netchan_TransmitP9netchan_tPhi
	mov edi, esi
	jmp _Z14CL_WritePacketi_120
_Z14CL_WritePacketi_130:
	mov [esp], ebx
	call _Z31CL_Netchan_TransmitNextFragmentP9netchan_t
_Z14CL_WritePacketi_120:
	mov ecx, [edi+0x401e8]
	test ecx, ecx
	jnz _Z14CL_WritePacketi_130
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	add esp, 0x89c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CL_WritePacketi_10:
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _ZN10LargeLocalD1Ev
	add esp, 0x89c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CL_WritePacketi_20:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x2
	lea edx, [ebp-0x74]
	mov [esp], edx
	call _Z13MSG_WriteBitsP5msg_tii
	mov [esp+0x4], ebx
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, ebx
	and eax, 0x7f
	shl eax, 0xa
	lea eax, [eax+esi+0x134]
	mov [esp+0x4], eax
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z15MSG_WriteStringP5msg_tPKc
	add ebx, 0x1
	cmp ebx, [esi+0x12c]
	jle _Z14CL_WritePacketi_20
	jmp _Z14CL_WritePacketi_140
_Z14CL_WritePacketi_30:
	mov dword [esp+0x4], _cstring_max_packet_userc
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov dword [ebp-0x880], 0x20
	jmp _Z14CL_WritePacketi_150
_Z14CL_WritePacketi_60:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x1
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call _Z13MSG_WriteBitsP5msg_tii
	jmp _Z14CL_WritePacketi_160
_Z14CL_WritePacketi_50:
	mov edx, [ebp-0x880]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z14CL_WritePacketi_170
_Z14CL_WritePacketi_40:
	lea eax, [ebp-0x4c]
	mov [ebp-0x884], eax
	jmp _Z14CL_WritePacketi_180
_Z14CL_WritePacketi_80:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x74]
	mov [esp], edx
	call _Z13MSG_WriteBitsP5msg_tii
	jmp _Z14CL_WritePacketi_160
	mov ebx, eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CL_SetCursorPos(int, int)
_Z15CL_SetCursorPosii:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z15IN_SetCursorPosii
	nop


;CL_ShutdownInput()
_Z16CL_ShutdownInputv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_centerview
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_moveup
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_moveup1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_movedown
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_movedown1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_left
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_left1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_right
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_right1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_forward
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_forward1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_back
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_back1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_lookup
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_lookup1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_lookdown
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_lookdown1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_strafe
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_strafe1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_moveleft
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_moveleft1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_moveright
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_moveright1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_speed
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_speed1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_attack
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_attack1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_melee
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_melee1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_holdbreath
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_holdbreath1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_melee_breath
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_melee_breath1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_frag
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_frag1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_smoke
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_smoke1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_breath_sprint
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_breath_sprint1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_activate
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_activate1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_reload
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_reload1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_usereload
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_usereload1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_leanleft
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_leanleft1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_leanright
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_leanright1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_prone
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_prone1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_stance
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_stance1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_mlook
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_mlook1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_toggleads
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_leaveads
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_throw
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_throw1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_speed_throw
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_speed_throw1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_toggleads_throw
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_toggleads_throw1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_lowerstance
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_raisestance
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_togglecrouch
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_toggleprone
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_goprone
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_gocrouch
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_gostand
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_gostand1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_sprint
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_sprint1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_talk
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_talk1
	call _Z17Cmd_RemoveCommandPKc
	leave
	ret


;IN_IsTalkKeyHeld()
_Z16IN_IsTalkKeyHeldv:
	push ebp
	mov ebp, esp
	movzx eax, byte [playersKb+0x254]
	pop ebp
	ret


;CL_ShowSystemCursor(int)
_Z19CL_ShowSystemCursori:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z19IN_ShowSystemCursori
	nop


;CL_CreateCmdsDuringConnection(int)
_Z29CL_CreateCmdsDuringConnectioni:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	cmp eax, 0x4
	jle _Z29CL_CreateCmdsDuringConnectioni_10
	cmp eax, 0x9
	jz _Z29CL_CreateCmdsDuringConnectioni_10
	cmp eax, 0x7
	jg _Z29CL_CreateCmdsDuringConnectioni_20
_Z29CL_CreateCmdsDuringConnectioni_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z29CL_CreateCmdsDuringConnectioni_20:
	mov eax, clients
	mov ebx, [eax+0x666c8]
	add ebx, 0x1
	mov [eax+0x666c8], ebx
	and ebx, 0x7f
	shl ebx, 0x5
	lea ebx, [ebx+eax+0x656c0]
	lea eax, [ebp-0x28]
	mov edx, [ebp+0x8]
	call _Z12CL_CreateCmdi
	mov eax, [ebp-0x28]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x24]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x18]
	mov [ebx+0x18], eax
	mov eax, [ebp-0x14]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x10]
	mov [ebx+0x20], eax
	mov eax, [ebp-0xc]
	mov [ebx+0x24], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CL_Input(int)
_Z8CL_Inputi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, clientUIActives
	cmp dword [ebx+0xc], 0x9
	jz _Z8CL_Inputi_10
_Z8CL_Inputi_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z8CL_Inputi_10:
	call _Z8IN_Framev
	cmp dword [ebx+0xc], 0x7
	jle _Z8CL_Inputi_20
	mov eax, clients
	mov ebx, [eax+0x666c8]
	add ebx, 0x1
	mov [eax+0x666c8], ebx
	and ebx, 0x7f
	shl ebx, 0x5
	lea ebx, [ebx+eax+0x656c0]
	lea eax, [ebp-0x28]
	mov edx, [ebp+0x8]
	call _Z12CL_CreateCmdi
	mov eax, [ebp-0x28]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x24]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x18]
	mov [ebx+0x18], eax
	mov eax, [ebp-0x14]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x10]
	mov [ebx+0x20], eax
	mov eax, [ebp-0xc]
	mov [ebx+0x24], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of cl_input:
SECTION .data


;Initialized constant data of cl_input:
SECTION .rdata


;Zero initialized global or static variables of cl_input:
SECTION .bss
playersKb: resb 0x258
_ZZ12CL_InitInputvE15IN_SprintUp_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_SprintDown_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_TalkUp_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_TalkDown_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_GoStandUp_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_GoStandDown_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_GoCrouch_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_GoProne_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_ToggleProne_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_ToggleCrouch_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_RaiseStance_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_LowerStance_VAR: resb 0x14
_ZZ12CL_InitInputvE25IN_ToggleADS_Throw_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE27IN_ToggleADS_Throw_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE21IN_Speed_Throw_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE23IN_Speed_Throw_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_Throw_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_Throw_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_LeaveADS_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_ToggleADS_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_MLookUp_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_MLookDown_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Stance_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Stance_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_Prone_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_Prone_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_LeanRight_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE21IN_LeanRight_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_LeanLeft_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE20IN_LeanLeft_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_UseReload_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE21IN_UseReload_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Reload_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Reload_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Activate_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE20IN_Activate_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE22IN_BreathSprint_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE24IN_BreathSprint_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_Smoke_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_Smoke_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_Frag_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Frag_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE21IN_MeleeBreath_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE23IN_MeleeBreath_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Breath_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Breath_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_Melee_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_Melee_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Attack_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Attack_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_SpeedUp_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_SpeedDown_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_MoverightUp_VAR: resb 0x14
_ZZ12CL_InitInputvE20IN_MoverightDown_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_MoveleftUp_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_MoveleftDown_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_StrafeUp_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_StrafeDown_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_LookdownUp_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_LookdownDown_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_LookupUp_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_LookupDown_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_BackUp_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_BackDown_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_ForwardUp_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_ForwardDown_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_RightUp_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_RightDown_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_LeftUp_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_LeftDown_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_DownUp_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_DownDown_VAR: resb 0x14
_ZZ12CL_InitInputvE11IN_UpUp_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_UpDown_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_CenterView_VAR: resb 0x60
cl_bypassMouseInput: resb 0x4
cl_analog_attack_threshold: resb 0x5c
cl_anglespeedkey: resb 0x4
cl_pitchspeed: resb 0x4
cl_stanceHoldTime: resb 0x4
cl_talking: resb 0x4
cl_yawspeed: resb 0x10


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_three_keys_down_:		db "Three keys down for a button!",0ah,0
_cstring_f__f:		db "%f : %f",0ah,0
_cstring_centerview:		db "centerview",0
_cstring_moveup:		db "+moveup",0
_cstring_moveup1:		db "-moveup",0
_cstring_movedown:		db "+movedown",0
_cstring_movedown1:		db "-movedown",0
_cstring_left:		db "+left",0
_cstring_left1:		db "-left",0
_cstring_right:		db "+right",0
_cstring_right1:		db "-right",0
_cstring_forward:		db "+forward",0
_cstring_forward1:		db "-forward",0
_cstring_back:		db "+back",0
_cstring_back1:		db "-back",0
_cstring_lookup:		db "+lookup",0
_cstring_lookup1:		db "-lookup",0
_cstring_lookdown:		db "+lookdown",0
_cstring_lookdown1:		db "-lookdown",0
_cstring_strafe:		db "+strafe",0
_cstring_strafe1:		db "-strafe",0
_cstring_moveleft:		db "+moveleft",0
_cstring_moveleft1:		db "-moveleft",0
_cstring_moveright:		db "+moveright",0
_cstring_moveright1:		db "-moveright",0
_cstring_speed:		db "+speed",0
_cstring_speed1:		db "-speed",0
_cstring_attack:		db "+attack",0
_cstring_attack1:		db "-attack",0
_cstring_melee:		db "+melee",0
_cstring_melee1:		db "-melee",0
_cstring_holdbreath:		db "+holdbreath",0
_cstring_holdbreath1:		db "-holdbreath",0
_cstring_melee_breath:		db "+melee_breath",0
_cstring_melee_breath1:		db "-melee_breath",0
_cstring_frag:		db "+frag",0
_cstring_frag1:		db "-frag",0
_cstring_smoke:		db "+smoke",0
_cstring_smoke1:		db "-smoke",0
_cstring_breath_sprint:		db "+breath_sprint",0
_cstring_breath_sprint1:		db "-breath_sprint",0
_cstring_activate:		db "+activate",0
_cstring_activate1:		db "-activate",0
_cstring_reload:		db "+reload",0
_cstring_reload1:		db "-reload",0
_cstring_usereload:		db "+usereload",0
_cstring_usereload1:		db "-usereload",0
_cstring_leanleft:		db "+leanleft",0
_cstring_leanleft1:		db "-leanleft",0
_cstring_leanright:		db "+leanright",0
_cstring_leanright1:		db "-leanright",0
_cstring_prone:		db "+prone",0
_cstring_prone1:		db "-prone",0
_cstring_stance:		db "+stance",0
_cstring_stance1:		db "-stance",0
_cstring_mlook:		db "+mlook",0
_cstring_mlook1:		db "-mlook",0
_cstring_toggleads:		db "toggleads",0
_cstring_leaveads:		db "leaveads",0
_cstring_throw:		db "+throw",0
_cstring_throw1:		db "-throw",0
_cstring_speed_throw:		db "+speed_throw",0
_cstring_speed_throw1:		db "-speed_throw",0
_cstring_toggleads_throw:		db "+toggleads_throw",0
_cstring_toggleads_throw1:		db "-toggleads_throw",0
_cstring_lowerstance:		db "lowerstance",0
_cstring_raisestance:		db "raisestance",0
_cstring_togglecrouch:		db "togglecrouch",0
_cstring_toggleprone:		db "toggleprone",0
_cstring_goprone:		db "goprone",0
_cstring_gocrouch:		db "gocrouch",0
_cstring_gostand:		db "+gostand",0
_cstring_gostand1:		db "-gostand",0
_cstring_talk:		db "+talk",0
_cstring_talk1:		db "-talk",0
_cstring_sprint:		db "+sprint",0
_cstring_sprint1:		db "-sprint",0
_cstring_the_threshold_be:		db "The threshold before firing",0
_cstring_cl_analog_attack:		db "cl_analog_attack_threshold",0
_cstring_the_time_to_hold:		db "The time to hold the stance button before the player goes prone",0
_cstring_cl_stanceholdtim:		db "cl_stanceHoldTime",0
_cstring_the_server_does_:		db "The server does not send snapshot deltas",0
_cstring_cl_nodelta:		db "cl_nodelta",0
_cstring_overflow_compres:		db "Overflow compressed msg buf in CL_WritePacket()",0
_cstring_i_to_s:		db "%i to %s",0ah,0
_cstring_max_packet_userc:		db "MAX_PACKET_USERCMDS",0ah,0
_cstring_i:		db "(%i)",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_182_04444885:		dd 0x43360b61	; 182.044
_float_127_00000000:		dd 0x42fe0000	; 127
_float_90_00000000:		dd 0x42b40000	; 90
_float_0_00000000:		dd 0x0	; 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_255_00000000:		dd 0x437f0000	; 255

