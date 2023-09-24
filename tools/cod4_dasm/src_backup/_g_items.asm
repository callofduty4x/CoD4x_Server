;Imports of g_items:
	extern _Z15BG_GetWeaponDefj
	extern _Z6G_randv
	extern g_entities
	extern pickupPrints
	extern _Z19BG_WeaponIsClipOnlyi
	extern _Z2vaPKcz
	extern _Z24SV_GameSendServerCommandi11svscmd_typePKc
	extern level
	extern _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si
	extern _Z10I_strncpyzPcPKci
	extern _Z10I_CleanStrPc
	extern _Z10SV_GetGuidi
	extern _Z11G_LogPrintfPKcz
	extern _Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s
	extern _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj
	extern _Z21G_AddPredictableEventP9gentity_sij
	extern _Z12G_FreeEntityP9gentity_s
	extern _Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s
	extern _Z16BG_ClipForWeaponi
	extern _Z13Scr_AddEntityP9gentity_s
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z19G_SelectWeaponIndexii
	extern _Z10G_AddEventP9gentity_sij
	extern _Z16Scr_AddUndefinedv
	extern _Z18G_GivePlayerWeaponP13playerState_sih
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z11G_EntLinkToP9gentity_sS0_j
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern bg_itemlist
	extern _Z16BG_AmmoForWeaponi
	extern _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	extern _Z19BG_TakePlayerWeaponP13playerState_sji
	extern _Z23G_DObjGetWorldTagMatrixP9gentity_sjPA3_f
	extern _Z14Com_PrintErroriPKcz
	extern _Z13XModelGetNamePK6XModel
	extern _Z10G_SetModelP9gentity_sPKc
	extern _Z12G_DObjUpdateP9gentity_s
	extern _Z12G_ModelIndexPKc
	extern _Z9XModelBadPK6XModel
	extern _Z15G_OverrideModeliPKc
	extern _Z20G_GetHintStringIndexPiPKc
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern _Z4vtosPKf
	extern _Z18SL_ConvertToStringj
	extern _Z10Com_PrintfiPKcz
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z12AxisToAnglesPA3_KfPf
	extern _Z11Com_sprintfPciPKcz
	extern _Z16G_SetConstStringPtPKc
	extern _Z18SV_SetConfigstringiPKc
	extern memset
	extern _Z9I_strncatPciPKc
	extern _Z16BG_GetNumWeaponsv
	extern _Z23BG_GetMaxPickupableAmmoPK13playerState_sj
	extern _Z7G_Spawnv
	extern g_maxDroppedWeapons
	extern _Z16Com_PrintWarningiPKcz
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern g_dropForwardSpeed
	extern g_dropUpSpeedBase
	extern _Z7crandomv
	extern g_dropUpSpeedRand
	extern g_dropHorzSpeedRand
	extern _Z10G_RunThinkP9gentity_s
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern _Z16SV_PointContentsPKfii

;Exports of g_items:
	global _Z32TransferRandomAmmoToWeaponEntityP9gentity_si
	global _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih
	global _Z10Touch_ItemP9gentity_sS0_i
	global _Z11Drop_WeaponP9gentity_sihj
	global _Z11G_SpawnItemP9gentity_sPK7gitem_s
	global _Z15Touch_Item_AutoP9gentity_sS0_i
	global _Z16G_RegisterWeaponj
	global _Z16IsItemRegisteredi
	global _Z18FinishSpawningItemP9gentity_s
	global _Z18G_GetItemClassnamePK7gitem_sPt
	global _Z19SaveRegisteredItemsv
	global _Z20ClearRegisteredItemsv
	global _Z21DroppedItemClearOwnerP9gentity_s
	global _Z21SaveRegisteredWeaponsv
	global _Z8Add_AmmoP9gentity_sjhii
	global _Z9Drop_ItemP9gentity_sPK7gitem_sfi
	global _Z9Fill_ClipP13playerState_sj
	global _Z9G_RunItemP9gentity_s
	global itemRegistered


SECTION .text


;TransferRandomAmmoToWeaponEntity(gentity_s*, int)
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov [ebp-0x20], edx
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x1c], 0x0
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_90:
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jle _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_10
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x28], eax
	mov edx, [eax+0x344]
	test edx, edx
	js _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_20
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_30
	mov ecx, [ebp-0x28]
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_100:
	mov ebx, [ecx+0x548]
	mov esi, [ecx+0x544]
	cmp ebx, esi
	jge _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_40
	mov eax, esi
	mov esi, ebx
	mov ebx, eax
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_40:
	test ebx, ebx
	js _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_50
	call _Z6G_randv
	sub ebx, esi
	lea edx, [ebx+0x1]
	mov ecx, edx
	cdq
	idiv ecx
	lea ebx, [esi+edx]
	test ebx, ebx
	jle _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_50
	mov eax, [ebp-0x28]
	cmp dword [eax+0x338], 0x1
	jz _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_60
	call _Z6G_randv
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x338]
	add edx, 0x1
	mov ecx, edx
	cdq
	idiv ecx
	cmp edx, ebx
	jl _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_70
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_110:
	mov edx, ebx
	xor eax, eax
	jmp _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_80
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_50:
	xor eax, eax
	xor edx, edx
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_80:
	mov ecx, [ebp-0x20]
	mov [edi+0x1bc], ecx
	mov [edi+0x1b4], eax
	mov [edi+0x1b8], edx
	mov [esp], ecx
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x540]
	mov [ebp-0x20], eax
	mov eax, [edi+0x1b4]
	add [ebp-0x24], eax
	mov ecx, [edi+0x1b8]
	add [ebp-0x24], ecx
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_10:
	add dword [ebp-0x1c], 0x1
	add edi, 0xc
	cmp dword [ebp-0x1c], 0x2
	jnz _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_90
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_30:
	mov eax, [ebp-0x24]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_20:
	mov ecx, eax
	jmp _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_100
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_60:
	mov edx, 0x1
	cmp edx, ebx
	jge _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_110
_Z32TransferRandomAmmoToWeaponEntityP9gentity_si_70:
	mov eax, ebx
	sub eax, edx
	jmp _Z32TransferRandomAmmoToWeaponEntityP9gentity_si_80
	nop


;WeaponPickup_LeechFromWeaponEnt(gentity_s*, gentity_s*, int, int*, unsigned char)
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x30], edx
	mov [ebp-0x34], ecx
	movzx edx, byte [ebp+0xc]
	mov [ebp-0x35], dl
	mov edx, [ebp-0x30]
	sub edx, g_entities
	sar edx, 0x2
	imul edx, edx, 0x2c0685b5
	mov [ebp-0x3c], edx
	mov [ebp-0x1c], eax
	mov byte [ebp-0x29], 0x0
	mov dword [ebp-0x28], 0x0
	mov edi, eax
	add edi, 0x1b0
	mov edx, eax
	mov eax, [edx+0x1bc]
	mov ebx, eax
	and ebx, 0x8000007f
	js _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_10
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_100:
	test ebx, ebx
	jle _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_20
	lea edx, [eax+0x7f]
	cmp eax, 0xffffffff
	cmovle eax, edx
	mov esi, eax
	shr esi, 0x7
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x24], eax
	lea eax, [edi+0x4]
	mov [ebp-0x20], eax
	mov eax, [edi+0x4]
	mov edx, [ebp-0x34]
	test edx, edx
	jz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_30
	add eax, [edi+0x8]
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_30:
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov edx, esi
	movzx eax, dl
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z8Add_AmmoP9gentity_sjhii
	mov esi, eax
	test eax, eax
	jz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_20
	cmp byte [ebp-0x35], 0x0
	jz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_40
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_110:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	sub eax, esi
	mov [edx], eax
	test eax, eax
	js _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_50
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_130:
	mov byte [ebp-0x29], 0x1
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_20:
	add dword [ebp-0x28], 0x1
	add edi, 0xc
	add dword [ebp-0x1c], 0xc
	cmp dword [ebp-0x28], 0x2
	jnz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_60
	cmp byte [ebp-0x35], 0x0
	jnz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_70
	cmp byte [ebp-0x29], 0x0
	jnz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_80
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_70:
	mov eax, [ebp-0x34]
	test eax, eax
	jz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_90
	cmp byte [ebp-0x29], 0x0
	jz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_90
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_90:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_60:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x1bc]
	mov ebx, eax
	and ebx, 0x8000007f
	jns _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_100
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_10:
	sub ebx, 0x1
	or ebx, 0xffffff80
	add ebx, 0x1
	jmp _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_100
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_40:
	mov eax, pickupPrints
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_110
	mov [esp], ebx
	call _Z19BG_WeaponIsClipOnlyi
	test eax, eax
	jz _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_120
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_pickup_cl
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_140:
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	jmp _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_110
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_80:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x9
	jmp _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_70
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_50:
	add [edx+0x4], eax
	mov dword [edx], 0x0
	mov ecx, [edx+0x4]
	test ecx, ecx
	jns _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_130
	mov dword [edx+0x4], 0x0
	mov byte [ebp-0x29], 0x1
	jmp _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_20
_Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_120:
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_pickup_am
	jmp _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih_140


;Touch_Item(gentity_s*, gentity_s*, int)
_Z10Touch_ItemP9gentity_sS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov eax, [ebp+0x8]
	cmp byte [eax+0x16c], 0x0
	jz _Z10Touch_ItemP9gentity_sS0_i_10
	mov dword [ebp-0x1c], 0x0
	mov byte [eax+0x16c], 0x0
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x15c]
	test edx, edx
	jz _Z10Touch_ItemP9gentity_sS0_i_10
	mov ebx, [ecx+0x1a0]
	test ebx, ebx
	jle _Z10Touch_ItemP9gentity_sS0_i_10
	mov eax, level
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz _Z10Touch_ItemP9gentity_sS0_i_20
_Z10Touch_ItemP9gentity_sS0_i_10:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Touch_ItemP9gentity_sS0_i_20:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x88]
	and ecx, 0x8000007f
	mov [ebp-0xd8], ecx
	js _Z10Touch_ItemP9gentity_sS0_i_30
_Z10Touch_ItemP9gentity_sS0_i_150:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si
	test eax, eax
	jnz _Z10Touch_ItemP9gentity_sS0_i_40
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _Z10Touch_ItemP9gentity_sS0_i_10
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8c]
	mov edx, [ebp+0xc]
	cmp eax, [edx]
	jz _Z10Touch_ItemP9gentity_sS0_i_10
	mov ebx, [ebp-0xd8]
	sar ebx, 0x5
	mov edx, [edx+0x15c]
	mov ecx, [ebp-0xd8]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jnz _Z10Touch_ItemP9gentity_sS0_i_50
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_cant_get_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, g_entities
	sub [ebp+0xc], ecx
	sar dword [ebp+0xc], 0x2
	imul eax, [ebp+0xc], 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	jmp _Z10Touch_ItemP9gentity_sS0_i_10
_Z10Touch_ItemP9gentity_sS0_i_40:
	mov dword [esp+0x8], 0x40
	mov edx, [ebp+0xc]
	mov eax, [edx+0x15c]
	add eax, 0x3048
	mov [esp+0x4], eax
	lea ebx, [ebp-0x94]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z10I_CleanStrPc
	mov ecx, [ebp-0xd8]
	mov [esp], ecx
	call _Z15BG_GetWeaponDefj
	mov edi, [eax]
	mov eax, [ebp+0xc]
	mov esi, [eax]
	mov [esp], esi
	call _Z10SV_GetGuidi
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov dword [esp], _cstring_weaponsdss
	call _Z11G_LogPrintfPKcz
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x88]
	and ecx, 0x8000007f
	mov [ebp-0xdc], ecx
	js _Z10Touch_ItemP9gentity_sS0_i_60
	mov eax, ecx
_Z10Touch_ItemP9gentity_sS0_i_310:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x15c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s
	test al, al
	jz _Z10Touch_ItemP9gentity_sS0_i_70
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z10Touch_ItemP9gentity_sS0_i_80
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, [ebp+0xc]
	mov esi, [edx+0x15c]
	mov edx, [ebp-0xdc]
	sar edx, 0x5
	mov ecx, [ebp-0xdc]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	xor ebx, ebx
	test [esi+edx*4+0x55c], eax
	setnz bl
	test ebx, ebx
	jnz _Z10Touch_ItemP9gentity_sS0_i_90
	mov ecx, [ebp-0xdc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj
	test al, al
	jz _Z10Touch_ItemP9gentity_sS0_i_70
_Z10Touch_ItemP9gentity_sS0_i_90:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z10Touch_ItemP9gentity_sS0_i_100
_Z10Touch_ItemP9gentity_sS0_i_340:
	test bl, bl
	jnz _Z10Touch_ItemP9gentity_sS0_i_110
_Z10Touch_ItemP9gentity_sS0_i_70:
	xor ebx, ebx
_Z10Touch_ItemP9gentity_sS0_i_160:
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z10Touch_ItemP9gentity_sS0_i_120
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x15c]
	mov esi, [eax+0x2fd4]
	test esi, esi
	jz _Z10Touch_ItemP9gentity_sS0_i_130
	mov eax, [ebp-0xd8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call _Z21G_AddPredictableEventP9gentity_sij
_Z10Touch_ItemP9gentity_sS0_i_120:
	test ebx, ebx
	jz _Z10Touch_ItemP9gentity_sS0_i_10
	mov edx, [ebp+0x8]
	cmp dword [edx+0x4], 0x4
	jz _Z10Touch_ItemP9gentity_sS0_i_140
	mov ecx, edx
_Z10Touch_ItemP9gentity_sS0_i_320:
	mov [esp], ecx
	call _Z12G_FreeEntityP9gentity_s
	jmp _Z10Touch_ItemP9gentity_sS0_i_10
_Z10Touch_ItemP9gentity_sS0_i_30:
	sub ecx, 0x1
	or ecx, 0xffffff80
	add ecx, 0x1
	mov [ebp-0xd8], ecx
	jmp _Z10Touch_ItemP9gentity_sS0_i_150
_Z10Touch_ItemP9gentity_sS0_i_50:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_pickup_ca
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, g_entities
	sub [ebp+0xc], edx
	sar dword [ebp+0xc], 0x2
	imul eax, [ebp+0xc], 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	jmp _Z10Touch_ItemP9gentity_sS0_i_10
_Z10Touch_ItemP9gentity_sS0_i_110:
	mov ebx, 0x1
	jmp _Z10Touch_ItemP9gentity_sS0_i_160
_Z10Touch_ItemP9gentity_sS0_i_80:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x88]
	lea edx, [eax+0x7f]
	cmp eax, 0xffffffff
	cmovle eax, edx
	mov ebx, eax
	shr ebx, 0x7
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0xa0], eax
	mov edx, [ebp+0x8]
	cmp dword [edx+0x4], 0x4
	jz _Z10Touch_ItemP9gentity_sS0_i_170
	or dword [edx+0x180], 0x1000000
	mov [ebp-0xcd], bl
	mov ecx, [ebp+0xc]
	mov edi, [ecx+0x15c]
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x13c]
	test eax, eax
	jnz _Z10Touch_ItemP9gentity_sS0_i_180
	mov ecx, [edi+0xe8]
	test ecx, ecx
	jz _Z10Touch_ItemP9gentity_sS0_i_190
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+edx*4+0x55c], eax
	jz _Z10Touch_ItemP9gentity_sS0_i_200
_Z10Touch_ItemP9gentity_sS0_i_190:
	mov [esp], edi
	call _Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s
	test al, al
	jz _Z10Touch_ItemP9gentity_sS0_i_210
	mov eax, [edi+0xe8]
	test eax, eax
	jz _Z10Touch_ItemP9gentity_sS0_i_220
	mov esi, eax
	mov ebx, eax
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0xec], eax
	cmp dword [eax+0x13c], 0x3
	jz _Z10Touch_ItemP9gentity_sS0_i_230
_Z10Touch_ItemP9gentity_sS0_i_390:
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	test [edi+edx*4+0x55c], eax
	jz _Z10Touch_ItemP9gentity_sS0_i_220
	mov eax, [ebp-0xec]
	mov eax, [eax+0x13c]
	test eax, eax
	jnz _Z10Touch_ItemP9gentity_sS0_i_220
	test esi, esi
	jnz _Z10Touch_ItemP9gentity_sS0_i_240
_Z10Touch_ItemP9gentity_sS0_i_220:
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_cant_get_
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
_Z10Touch_ItemP9gentity_sS0_i_200:
	xor eax, eax
	mov dword [ebp-0xd4], 0x0
_Z10Touch_ItemP9gentity_sS0_i_350:
	mov edx, [ebp+0x8]
	and dword [edx+0x180], 0xfeffffff
	test eax, eax
	jz _Z10Touch_ItemP9gentity_sS0_i_70
	mov dword [ebp-0x1c], 0x9
	mov [ebp-0x9c], edx
	mov dword [ebp-0xa4], 0x0
	mov ecx, edx
_Z10Touch_ItemP9gentity_sS0_i_330:
	mov eax, [ecx+0x1bc]
	mov edi, eax
	and edi, 0x8000007f
	js _Z10Touch_ItemP9gentity_sS0_i_250
_Z10Touch_ItemP9gentity_sS0_i_370:
	lea edx, [eax+0x7f]
	cmp eax, 0xffffffff
	cmovle eax, edx
	shr eax, 0x7
	mov [ebp-0xb8], al
	test edi, edi
	jle _Z10Touch_ItemP9gentity_sS0_i_260
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov eax, [ebp-0x9c]
	mov esi, [eax+0x1b8]
	test esi, esi
	js _Z10Touch_ItemP9gentity_sS0_i_270
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x15c]
	mov [esp], edi
	call _Z16BG_ClipForWeaponi
	mov [ebx+eax*4+0x35c], esi
	mov ecx, [ebp-0x9c]
_Z10Touch_ItemP9gentity_sS0_i_360:
	xor eax, eax
	cmp esi, 0xffffffff
	setz al
	mov [esp+0x10], eax
	mov eax, [ecx+0x1b4]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0xb8]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z8Add_AmmoP9gentity_sjhii
_Z10Touch_ItemP9gentity_sS0_i_260:
	add dword [ebp-0xa4], 0x1
	add dword [ebp-0x9c], 0xc
	cmp dword [ebp-0xa4], 0x2
	jnz _Z10Touch_ItemP9gentity_sS0_i_280
	mov eax, [ebp-0xd4]
	test eax, eax
	jz _Z10Touch_ItemP9gentity_sS0_i_290
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, [ebp+0xc]
	mov eax, [ebp-0xd4]
	call _Z31WeaponPickup_LeechFromWeaponEntP9gentity_sS0_iPih
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call _Z13Scr_AddEntityP9gentity_s
_Z10Touch_ItemP9gentity_sS0_i_380:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	mov edx, [ebp-0xa0]
	cmp dword [edx+0x12c], 0x1
	jnz _Z10Touch_ItemP9gentity_sS0_i_300
	mov edi, [edx+0x144]
	test edi, edi
	jnz _Z10Touch_ItemP9gentity_sS0_i_110
_Z10Touch_ItemP9gentity_sS0_i_300:
	mov ecx, [ebp-0xdc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esp], eax
	call _Z19G_SelectWeaponIndexii
	mov ebx, 0x1
	jmp _Z10Touch_ItemP9gentity_sS0_i_160
_Z10Touch_ItemP9gentity_sS0_i_130:
	mov eax, ecx
	mov ecx, [ebp-0xd8]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z10G_AddEventP9gentity_sij
	jmp _Z10Touch_ItemP9gentity_sS0_i_120
_Z10Touch_ItemP9gentity_sS0_i_60:
	sub ecx, 0x1
	or ecx, 0xffffff80
	add ecx, 0x1
	mov [ebp-0xdc], ecx
	mov eax, ecx
	jmp _Z10Touch_ItemP9gentity_sS0_i_310
_Z10Touch_ItemP9gentity_sS0_i_140:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
	mov ecx, [ebp+0x8]
	jmp _Z10Touch_ItemP9gentity_sS0_i_320
_Z10Touch_ItemP9gentity_sS0_i_280:
	mov ecx, [ebp-0x9c]
	jmp _Z10Touch_ItemP9gentity_sS0_i_330
_Z10Touch_ItemP9gentity_sS0_i_170:
	mov dword [ebp-0x1c], 0xa
	call _Z16Scr_AddUndefinedv
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	mov ebx, 0x1
	jmp _Z10Touch_ItemP9gentity_sS0_i_160
_Z10Touch_ItemP9gentity_sS0_i_100:
	call _Z16Scr_AddUndefinedv
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z10Touch_ItemP9gentity_sS0_i_340
_Z10Touch_ItemP9gentity_sS0_i_180:
	movzx eax, byte [ebp-0xcd]
	mov [esp+0x8], eax
	mov edx, [ebp-0xdc]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z18G_GivePlayerWeaponP13playerState_sih
	mov eax, 0x1
	mov dword [ebp-0xd4], 0x0
	jmp _Z10Touch_ItemP9gentity_sS0_i_350
_Z10Touch_ItemP9gentity_sS0_i_270:
	mov ecx, eax
	jmp _Z10Touch_ItemP9gentity_sS0_i_360
_Z10Touch_ItemP9gentity_sS0_i_250:
	sub edi, 0x1
	or edi, 0xffffff80
	add edi, 0x1
	jmp _Z10Touch_ItemP9gentity_sS0_i_370
_Z10Touch_ItemP9gentity_sS0_i_290:
	call _Z16Scr_AddUndefinedv
	jmp _Z10Touch_ItemP9gentity_sS0_i_380
_Z10Touch_ItemP9gentity_sS0_i_210:
	movzx eax, byte [ebp-0xcd]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xdc]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z18G_GivePlayerWeaponP13playerState_sih
	mov eax, 0x1
	mov dword [ebp-0xd4], 0x0
	jmp _Z10Touch_ItemP9gentity_sS0_i_350
_Z10Touch_ItemP9gentity_sS0_i_230:
	mov esi, [eax+0x540]
	mov ebx, esi
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov [ebp-0xec], eax
	jmp _Z10Touch_ItemP9gentity_sS0_i_390
_Z10Touch_ItemP9gentity_sS0_i_240:
	mov dword [esp+0xc], 0x0
	movzx eax, byte [esi+edi+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z11Drop_WeaponP9gentity_sihj
	mov [ebp-0xd4], eax
	test eax, eax
	jz _Z10Touch_ItemP9gentity_sS0_i_400
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x17c]
	and eax, 0xfffffffe
	mov edx, [ebp-0xd4]
	mov [edx+0x17c], eax
	mov eax, [ecx+0x7c]
	mov [edx+0x7c], eax
	test byte [edx+0x181], 0x10
	jz _Z10Touch_ItemP9gentity_sS0_i_410
	mov eax, [ecx+0x218]
	test eax, eax
	jz _Z10Touch_ItemP9gentity_sS0_i_410
	mov eax, [eax]
	test eax, eax
	jz _Z10Touch_ItemP9gentity_sS0_i_410
	mov eax, ecx
	add eax, 0x13c
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z11G_SetOriginP9gentity_sPKf
	mov eax, [ebp+0x8]
	add eax, 0x148
	mov [esp+0x4], eax
	mov ecx, [ebp-0xd4]
	mov [esp], ecx
	call _Z10G_SetAngleP9gentity_sPKf
	mov eax, [ebp+0x8]
	mov edx, [eax+0x218]
	movzx eax, word [edx+0x8]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call _Z11G_EntLinkToP9gentity_sS0_j
_Z10Touch_ItemP9gentity_sS0_i_450:
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call _Z13SV_LinkEntityP9gentity_s
_Z10Touch_ItemP9gentity_sS0_i_400:
	movzx eax, byte [ebp-0xcd]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xdc]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z18G_GivePlayerWeaponP13playerState_sih
	mov eax, 0x1
	jmp _Z10Touch_ItemP9gentity_sS0_i_350
_Z10Touch_ItemP9gentity_sS0_i_410:
	mov esi, [ebp+0x8]
	add esi, 0x13c
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x13c]
	mov [ebp-0x28], eax
	add ecx, 0x140
	mov [ebp-0xc0], ecx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x140]
	mov [ebp-0x24], eax
	add edx, 0x144
	mov [ebp-0xbc], edx
	movss xmm0, dword [_float_2_00000000]
	mov ecx, [ebp+0x8]
	addss xmm0, [ecx+0x144]
	movss [ebp-0x20], xmm0
	mov ebx, [ecx+0x190]
	test ebx, ebx
	mov eax, 0x491
	cmovz ebx, eax
	mov eax, [ebp-0xd4]
	add eax, 0x154
	mov [ebp-0xcc], eax
	mov edx, [ebp-0xd4]
	cmp word [edx+0x154], 0x0
	jnz _Z10Touch_ItemP9gentity_sS0_i_420
	mov eax, 0x3ff
_Z10Touch_ItemP9gentity_sS0_i_460:
	mov edx, [ebp-0xd4]
	add edx, 0x114
	mov [ebp-0xc8], edx
	mov ecx, [ebp-0xd4]
	add ecx, 0x108
	mov [ebp-0xc4], ecx
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	lea edx, [ebp-0x54]
	mov [esp], edx
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x2c], 0x0
	jnz _Z10Touch_ItemP9gentity_sS0_i_430
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [esi]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	mov ecx, [ebp-0xc0]
	movss xmm1, dword [ecx]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0xbc]
	movss xmm1, dword [eax]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x20], xmm1
	mov edx, [ebp-0xcc]
	cmp word [edx], 0x0
	jnz _Z10Touch_ItemP9gentity_sS0_i_440
	mov eax, 0x3ff
_Z10Touch_ItemP9gentity_sS0_i_470:
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov eax, [ebp-0xc8]
	mov [esp+0xc], eax
	mov edx, [ebp-0xc4]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x28]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [esi]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x24]
	mov edx, [ebp-0xc0]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x20]
	mov ecx, [ebp-0xbc]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x20], xmm1
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call _Z11G_SetOriginP9gentity_sPKf
_Z10Touch_ItemP9gentity_sS0_i_480:
	mov eax, [ebp+0x8]
	add eax, 0x148
	mov [esp+0x4], eax
	mov eax, [ebp-0xd4]
	mov [esp], eax
	call _Z10G_SetAngleP9gentity_sPKf
	jmp _Z10Touch_ItemP9gentity_sS0_i_450
_Z10Touch_ItemP9gentity_sS0_i_420:
	mov ecx, [ebp-0xd4]
	movzx eax, word [ecx+0x154]
	sub eax, 0x1
	jmp _Z10Touch_ItemP9gentity_sS0_i_460
_Z10Touch_ItemP9gentity_sS0_i_440:
	mov ecx, [ebp-0xcc]
	movzx eax, word [ecx]
	sub eax, 0x1
	jmp _Z10Touch_ItemP9gentity_sS0_i_470
_Z10Touch_ItemP9gentity_sS0_i_430:
	mov [esp+0x4], esi
	mov ecx, [ebp-0xd4]
	mov [esp], ecx
	call _Z11G_SetOriginP9gentity_sPKf
	jmp _Z10Touch_ItemP9gentity_sS0_i_480


;Drop_Weapon(gentity_s*, int, unsigned char, unsigned int)
_Z11Drop_WeaponP9gentity_sihj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0xc]
	movzx ebx, byte [ebp+0x10]
	mov [ebp-0x8c], edi
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x13c], 0x3
	jz _Z11Drop_WeaponP9gentity_sihj_10
_Z11Drop_WeaponP9gentity_sihj_140:
	movzx eax, bl
	shl eax, 0x7
	lea eax, [edi+eax]
	mov edx, bg_itemlist
	lea esi, [edx+eax*4]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	test ebx, ebx
	jz _Z11Drop_WeaponP9gentity_sihj_20
	mov edx, [ebp-0x8c]
	sar edx, 0x5
	mov ecx, [ebp-0x8c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx*4+0x55c], eax
	jz _Z11Drop_WeaponP9gentity_sihj_30
	mov [esp], edi
	call _Z16BG_ClipForWeaponi
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x15c]
	mov eax, [ecx+eax*4+0x35c]
	test eax, eax
	jle _Z11Drop_WeaponP9gentity_sihj_40
_Z11Drop_WeaponP9gentity_sihj_20:
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x500]
	test eax, eax
	jnz _Z11Drop_WeaponP9gentity_sihj_50
_Z11Drop_WeaponP9gentity_sihj_100:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9Drop_ItemP9gentity_sPK7gitem_sfi
	mov [ebp-0x98], eax
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x15c]
	test ebx, ebx
	jz _Z11Drop_WeaponP9gentity_sihj_60
	mov esi, eax
	mov dword [ebp-0x94], 0x0
_Z11Drop_WeaponP9gentity_sihj_80:
	test edi, edi
	jle _Z11Drop_WeaponP9gentity_sihj_70
	mov [esp], edi
	call _Z16BG_ClipForWeaponi
	mov [ebp-0x90], eax
	mov [esp], edi
	call _Z16BG_AmmoForWeaponi
	mov ebx, eax
	mov [esp], edi
	call _Z16BG_ClipForWeaponi
	mov [esp+0x8], edi
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov [esp], eax
	call _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov edx, [edx+ebx*4+0x15c]
	sub edx, eax
	mov eax, 0x0
	cmovs edx, eax
	mov [esi+0x1bc], edi
	mov [esi+0x1b4], edx
	mov eax, [ecx+0x15c]
	mov ebx, [ebp-0x90]
	mov eax, [eax+ebx*4+0x35c]
	mov [esi+0x1b8], eax
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov edi, [eax+0x540]
_Z11Drop_WeaponP9gentity_sihj_70:
	add dword [ebp-0x94], 0x1
	add esi, 0xc
	cmp dword [ebp-0x94], 0x2
	jnz _Z11Drop_WeaponP9gentity_sihj_80
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z19BG_TakePlayerWeaponP13playerState_sji
_Z11Drop_WeaponP9gentity_sihj_160:
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jnz _Z11Drop_WeaponP9gentity_sihj_90
_Z11Drop_WeaponP9gentity_sihj_110:
	mov eax, [ebp-0x98]
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Drop_WeaponP9gentity_sihj_50:
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x15c]
	mov [esp], edi
	call _Z16BG_ClipForWeaponi
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jnz _Z11Drop_WeaponP9gentity_sihj_100
	mov dword [esp+0x8], 0x1
	mov ecx, [ebp-0x8c]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call _Z19BG_TakePlayerWeaponP13playerState_sji
	mov dword [ebp-0x98], 0x0
	jmp _Z11Drop_WeaponP9gentity_sihj_110
_Z11Drop_WeaponP9gentity_sihj_90:
	lea eax, [ebp-0x80]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z23G_DObjGetWorldTagMatrixP9gentity_sjPA3_f
	test eax, eax
	jz _Z11Drop_WeaponP9gentity_sihj_120
	mov eax, ebx
	add eax, 0x108
	mov edx, ebx
	add edx, 0x114
	movss xmm2, dword [ebx+0x108]
	addss xmm2, [ebx+0x114]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss xmm1, dword [eax+0x4]
	addss xmm1, [edx+0x4]
	mulss xmm1, xmm3
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	mulss xmm0, xmm3
	add eax, 0x34
	addss xmm2, [ebx+0x13c]
	movss [ebp-0x24], xmm2
	addss xmm1, [eax+0x4]
	movss [ebp-0x20], xmm1
	addss xmm0, [eax+0x8]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp-0x98]
	mov eax, [edx+0x190]
	test eax, eax
	mov edx, 0x491
	cmovz eax, edx
	mov [esp+0x18], eax
	mov eax, [ebx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x98]
	add eax, 0x114
	mov [esp+0xc], eax
	mov eax, [ebp-0x98]
	add eax, 0x108
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x50]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	mov ecx, [ebp-0x98]
	add ecx, 0x18
	movss xmm2, dword [ebp-0x50]
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov ebx, [ebp-0x98]
	movss [ebx+0x18], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x54]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ecx+0x8], xmm1
	mov edx, ebx
	add edx, 0x13c
	mov eax, [ebx+0x18]
	mov [ebx+0x13c], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [ebx+0x10], eax
_Z11Drop_WeaponP9gentity_sihj_120:
	mov eax, [ebp+0x8]
	add eax, 0x148
	mov [esp+0x4], eax
	mov eax, [ebp-0x98]
	mov [esp], eax
	call _Z10G_SetAngleP9gentity_sPKf
	mov eax, [ebp-0x98]
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Drop_WeaponP9gentity_sihj_10:
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov edx, [eax+0x540]
	test edx, edx
	jz _Z11Drop_WeaponP9gentity_sihj_130
	mov edi, edx
	mov [ebp-0x8c], edx
	jmp _Z11Drop_WeaponP9gentity_sihj_140
_Z11Drop_WeaponP9gentity_sihj_30:
	mov dword [esp+0x8], 0x1
	mov edx, [ebp-0x8c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z19BG_TakePlayerWeaponP13playerState_sji
	mov dword [ebp-0x98], 0x0
	jmp _Z11Drop_WeaponP9gentity_sihj_110
_Z11Drop_WeaponP9gentity_sihj_40:
	mov [esp], edi
	call _Z16BG_AmmoForWeaponi
	mov ebx, eax
	mov [esp], edi
	call _Z16BG_ClipForWeaponi
	mov eax, [ebp-0x8c]
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x15c]
	mov edx, [ecx+ebx*4+0x15c]
	sub edx, eax
	cmp edx, 0x0
	jl _Z11Drop_WeaponP9gentity_sihj_150
	jg _Z11Drop_WeaponP9gentity_sihj_20
_Z11Drop_WeaponP9gentity_sihj_150:
	mov dword [esp+0x8], 0x1
	mov ebx, [ebp-0x8c]
	mov [esp+0x4], ebx
	mov [esp], ecx
	call _Z19BG_TakePlayerWeaponP13playerState_sji
	mov dword [ebp-0x98], 0x0
	jmp _Z11Drop_WeaponP9gentity_sihj_110
_Z11Drop_WeaponP9gentity_sihj_60:
	mov edx, edi
	call _Z32TransferRandomAmmoToWeaponEntityP9gentity_si
	jmp _Z11Drop_WeaponP9gentity_sihj_160
_Z11Drop_WeaponP9gentity_sihj_130:
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_drop_weapon_tryi
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x98], 0x0
	jmp _Z11Drop_WeaponP9gentity_sihj_110


;G_SpawnItem(gentity_s*, gitem_s const*)
_Z11G_SpawnItemP9gentity_sPK7gitem_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	sub ebx, bg_itemlist
	sar ebx, 0x2
	mov [esi+0x1bc], ebx
	mov edi, ebx
	and edi, 0x8000007f
	js _Z11G_SpawnItemP9gentity_sPK7gitem_s_10
_Z11G_SpawnItemP9gentity_sPK7gitem_s_60:
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov edx, ebx
	lea ecx, [ebx+0x7f]
	cmp ebx, 0xffffffff
	cmovle edx, ecx
	sar edx, 0x7
	movzx edx, dl
	mov eax, [eax+edx*4+0x2bc]
	test eax, eax
	jz _Z11G_SpawnItemP9gentity_sPK7gitem_s_20
	mov [esp], eax
	call _Z13XModelGetNamePK6XModel
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10G_SetModelP9gentity_sPKc
_Z11G_SpawnItemP9gentity_sPK7gitem_s_20:
	lea edx, [esi+0x108]
	mov eax, 0xbf800000
	mov [esi+0x108], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [esi+0x114]
	mov eax, 0x3f800000
	mov [esi+0x114], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov dword [esi+0x120], 0x407c0108
	mov dword [esi+0x4], 0x3
	movzx eax, word [esi+0x1bc]
	mov [esi+0x88], eax
	mov edx, edi
	mov eax, esi
	call _Z32TransferRandomAmmoToWeaponEntityP9gentity_si
	mov [esp], esi
	call _Z12G_DObjUpdateP9gentity_s
	mov dword [esi+0x8c], 0x40
	or dword [esi+0x180], 0x1000
	mov ebx, level
	cmp byte [ebx+0xb34], 0x0
	jnz _Z11G_SpawnItemP9gentity_sPK7gitem_s_30
	mov byte [esi+0x16e], 0x12
	test byte [esi+0x17c], 0x1
	jz _Z11G_SpawnItemP9gentity_sPK7gitem_s_40
_Z11G_SpawnItemP9gentity_sPK7gitem_s_50:
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10G_SetAngleP9gentity_sPKf
	lea eax, [esi+0x13c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11G_SetOriginP9gentity_sPKf
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13SV_LinkEntityP9gentity_s
_Z11G_SpawnItemP9gentity_sPK7gitem_s_40:
	mov dword [esi+0x7c], 0x3ff
	movss xmm0, dword [_float_90_00000000]
	addss xmm0, [esi+0x150]
	movss [esi+0x150], xmm0
	jmp _Z11G_SpawnItemP9gentity_sPK7gitem_s_50
_Z11G_SpawnItemP9gentity_sPK7gitem_s_30:
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10G_SetAngleP9gentity_sPKf
	mov eax, [ebx+0x1ec]
	add eax, 0x64
	mov [esi+0x19c], eax
	mov byte [esi+0x16e], 0x11
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11G_SpawnItemP9gentity_sPK7gitem_s_10:
	sub edi, 0x1
	or edi, 0xffffff80
	add edi, 0x1
	jmp _Z11G_SpawnItemP9gentity_sPK7gitem_s_60


;Touch_Item_Auto(gentity_s*, gentity_s*, int)
_Z15Touch_Item_AutoP9gentity_sS0_i:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0x16c], 0x1
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z10Touch_ItemP9gentity_sS0_i


;G_RegisterWeapon(unsigned int)
_Z16G_RegisterWeaponj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov dword [edx*4+itemRegistered], 0x1
	mov eax, level
	mov dword [eax+0x2dec], 0x1
	mov dword [eax+0x2de8], 0x1
	mov [esp], edx
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x1c], eax
	mov edx, eax
	mov eax, [eax+0x7dc]
	cmp byte [eax], 0x0
	jnz _Z16G_RegisterWeaponj_10
_Z16G_RegisterWeaponj_70:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x7e0]
	cmp byte [eax], 0x0
	jnz _Z16G_RegisterWeaponj_20
	mov ebx, edx
_Z16G_RegisterWeaponj_90:
	mov esi, 0x10
	jmp _Z16G_RegisterWeaponj_30
_Z16G_RegisterWeaponj_50:
	add ebx, 0x4
	mov eax, esi
	sub al, 0x1
	mov esi, eax
	jz _Z16G_RegisterWeaponj_40
_Z16G_RegisterWeaponj_30:
	mov eax, [ebx+0x2bc]
	test eax, eax
	jz _Z16G_RegisterWeaponj_50
	mov [esp], eax
	call _Z13XModelGetNamePK6XModel
	mov [esp], eax
	call _Z12G_ModelIndexPKc
	mov edi, eax
	mov eax, [ebx+0x2bc]
	mov [esp], eax
	call _Z9XModelBadPK6XModel
	test eax, eax
	jz _Z16G_RegisterWeaponj_50
	mov dword [esp+0x4], _cstring_defaultweapon
	mov [esp], edi
	call _Z15G_OverrideModeliPKc
	add ebx, 0x4
	mov eax, esi
	sub al, 0x1
	mov esi, eax
	jnz _Z16G_RegisterWeaponj_30
_Z16G_RegisterWeaponj_40:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x584]
	test eax, eax
	jz _Z16G_RegisterWeaponj_60
	mov [esp], eax
	call _Z13XModelGetNamePK6XModel
	mov [esp], eax
	call _Z12G_ModelIndexPKc
_Z16G_RegisterWeaponj_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16G_RegisterWeaponj_10:
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x7e4
	mov [esp], eax
	call _Z20G_GetHintStringIndexPiPKc
	test eax, eax
	jnz _Z16G_RegisterWeaponj_70
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_too_many_differe
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16G_RegisterWeaponj_70
_Z16G_RegisterWeaponj_20:
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x7e8
	mov [esp], eax
	call _Z20G_GetHintStringIndexPiPKc
	test eax, eax
	jz _Z16G_RegisterWeaponj_80
	mov ebx, [ebp-0x1c]
	jmp _Z16G_RegisterWeaponj_90
_Z16G_RegisterWeaponj_80:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_too_many_differe
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ebx, [ebp-0x1c]
	jmp _Z16G_RegisterWeaponj_90
	nop


;IsItemRegistered(int)
_Z16IsItemRegisteredi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+itemRegistered]
	pop ebp
	ret
	nop


;FinishSpawningItem(gentity_s*)
_Z18FinishSpawningItemP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov edi, [ebp+0x8]
	mov byte [edi+0x16e], 0x12
	test byte [edi+0x17c], 0x1
	jnz _Z18FinishSpawningItemP9gentity_s_10
	mov eax, 0xbf800000
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov eax, 0x3f800000
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	mov ebx, [edi+0x190]
	test ebx, ebx
	mov eax, 0x491
	cmovz ebx, eax
	lea eax, [edi+0x13c]
	mov [ebp-0xbc], eax
	mov edx, [edi+0x13c]
	mov [ebp-0x48], edx
	mov eax, [edi+0x140]
	mov [ebp-0x44], eax
	movss xmm0, dword [edi+0x144]
	movss [ebp-0x40], xmm0
	subss xmm0, [_float_4096_00000000]
	mov [ebp-0x24], edx
	mov [ebp-0x20], eax
	movss [ebp-0x1c], xmm0
	mov [esp+0x18], ebx
	mov eax, [edi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea esi, [ebp-0xb0]
	mov [esp], esi
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x87], 0x0
	jnz _Z18FinishSpawningItemP9gentity_s_20
_Z18FinishSpawningItemP9gentity_s_40:
	mov [esp], esi
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx eax, ax
	mov [edi+0x7c], eax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	or dword [edx+0x180], 0x100000
	movss xmm2, dword [ebp-0xb0]
	movss xmm1, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movss xmm1, dword [ebp-0x44]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x50], xmm1
	movss xmm1, dword [ebp-0x40]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x4c], xmm1
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11G_SetOriginP9gentity_sPKf
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb0]
	ja _Z18FinishSpawningItemP9gentity_s_30
_Z18FinishSpawningItemP9gentity_s_50:
	mov [esp], edi
	call _Z13SV_LinkEntityP9gentity_s
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FinishSpawningItemP9gentity_s_20:
	mov edx, [edi+0x13c]
	mov [ebp-0x48], edx
	mov eax, [edi+0x140]
	mov [ebp-0x44], eax
	movss xmm1, dword [edi+0x144]
	movaps xmm0, xmm1
	subss xmm0, [_float_15_00000000]
	movss [ebp-0x40], xmm0
	subss xmm1, [_float_4096_00000000]
	mov [ebp-0x24], edx
	mov [ebp-0x20], eax
	movss [ebp-0x1c], xmm1
	mov [esp+0x18], ebx
	mov eax, [edi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x87], 0x0
	jz _Z18FinishSpawningItemP9gentity_s_40
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call _Z4vtosPKf
	mov ebx, eax
	movzx eax, word [edi+0x170]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_finishspawningit
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov [esp], edi
	call _Z12G_FreeEntityP9gentity_s
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FinishSpawningItemP9gentity_s_10:
	lea eax, [edi+0x13c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11G_SetOriginP9gentity_sPKf
	jmp _Z18FinishSpawningItemP9gentity_s_50
_Z18FinishSpawningItemP9gentity_s_30:
	mov eax, [ebp-0xac]
	mov [ebp-0x6c], eax
	lea esi, [ebp-0x84]
	mov eax, [ebp-0xa8]
	mov [ebp-0x68], eax
	mov eax, [ebp-0xa4]
	mov [ebp-0x64], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	lea eax, [edi+0x148]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm2, dword [ebp-0x68]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x7c]
	movss xmm3, dword [ebp-0x64]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x80]
	subss xmm4, xmm0
	movss [ebp-0x78], xmm4
	mulss xmm3, [ebp-0x84]
	movss xmm1, dword [ebp-0x6c]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x7c]
	subss xmm3, xmm0
	movss [ebp-0x74], xmm3
	mulss xmm1, [ebp-0x80]
	mulss xmm2, [ebp-0x84]
	subss xmm1, xmm2
	movss [ebp-0x70], xmm1
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x64]
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x68]
	subss xmm0, xmm2
	movss [ebp-0x84], xmm0
	mulss xmm1, [ebp-0x6c]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x64]
	subss xmm1, xmm0
	movss [ebp-0x80], xmm1
	mulss xmm4, [ebp-0x68]
	mulss xmm3, [ebp-0x6c]
	subss xmm4, xmm3
	movss [ebp-0x7c], xmm4
	lea ebx, [ebp-0x60]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z12AxisToAnglesPA3_KfPf
	movss xmm0, dword [_float_90_00000000]
	addss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
	jmp _Z18FinishSpawningItemP9gentity_s_50
	nop


;G_GetItemClassname(gitem_s const*, unsigned short*)
_Z18G_GetItemClassnamePK7gitem_sPt:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov eax, [ebp+0x8]
	sub eax, bg_itemlist
	sar eax, 0x2
	and eax, 0x8000007f
	js _Z18G_GetItemClassnamePK7gitem_sPt_10
_Z18G_GetItemClassnamePK7gitem_sPt_20:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_weapon_s
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16G_SetConstStringPtPKc
	add esp, 0x114
	pop ebx
	pop ebp
	ret
_Z18G_GetItemClassnamePK7gitem_sPt_10:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	jmp _Z18G_GetItemClassnamePK7gitem_sPt_20


;SaveRegisteredItems()
_Z19SaveRegisteredItemsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, level
	mov dword [eax+0x2dec], 0x0
	xor edi, edi
	xor esi, esi
	xor ecx, ecx
	xor ebx, ebx
_Z19SaveRegisteredItemsv_40:
	lea eax, [ebx*4+itemRegistered]
	mov edx, 0x10
_Z19SaveRegisteredItemsv_20:
	cmp dword [eax], 0x0
	jnz _Z19SaveRegisteredItemsv_10
	add eax, 0x200
	sub edx, 0x1
	jnz _Z19SaveRegisteredItemsv_20
	add ecx, 0x1
	cmp ecx, 0x4
	jz _Z19SaveRegisteredItemsv_30
_Z19SaveRegisteredItemsv_60:
	add ebx, 0x1
	cmp ebx, 0x80
	jnz _Z19SaveRegisteredItemsv_40
	test ecx, ecx
	jz _Z19SaveRegisteredItemsv_50
	mov eax, 0x30
	cmp esi, 0x9
	mov edx, 0x57
	cmovg eax, edx
	add eax, esi
	mov [ebp+edi-0x98], al
	add edi, 0x1
_Z19SaveRegisteredItemsv_50:
	mov byte [ebp+edi-0x98], 0x0
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov dword [esp], 0x90a
	call _Z18SV_SetConfigstringiPKc
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19SaveRegisteredItemsv_10:
	mov eax, 0x1
	shl eax, cl
	add esi, eax
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z19SaveRegisteredItemsv_60
_Z19SaveRegisteredItemsv_30:
	cmp esi, 0x9
	jg _Z19SaveRegisteredItemsv_70
	mov eax, 0x30
_Z19SaveRegisteredItemsv_80:
	add eax, esi
	mov [ebp+edi-0x98], al
	add edi, 0x1
	xor esi, esi
	xor ecx, ecx
	jmp _Z19SaveRegisteredItemsv_60
_Z19SaveRegisteredItemsv_70:
	mov eax, 0x57
	jmp _Z19SaveRegisteredItemsv_80
	nop


;ClearRegisteredItems()
_Z20ClearRegisteredItemsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	mov dword [esp], itemRegistered
	call memset
	mov dword [itemRegistered], 0x1
	leave
	ret


;DroppedItemClearOwner(gentity_s*)
_Z21DroppedItemClearOwnerP9gentity_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x8c], 0x40
	pop ebp
	ret


;SaveRegisteredWeapons()
_Z21SaveRegisteredWeaponsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	mov eax, level
	mov dword [eax+0x2de8], 0x0
	mov byte [ebp-0x2018], 0x0
	xor ebx, ebx
	mov esi, 0x1
	lea edi, [ebp-0x2018]
	jmp _Z21SaveRegisteredWeaponsv_10
_Z21SaveRegisteredWeaponsv_30:
	test ebx, ebx
	jz _Z21SaveRegisteredWeaponsv_20
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x2000
	mov [esp], edi
	call _Z9I_strncatPciPKc
_Z21SaveRegisteredWeaponsv_20:
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov [esp], edi
	call _Z9I_strncatPciPKc
	add esi, 0x1
_Z21SaveRegisteredWeaponsv_10:
	call _Z16BG_GetNumWeaponsv
	cmp esi, eax
	jb _Z21SaveRegisteredWeaponsv_30
	mov [esp+0x4], edi
	mov dword [esp], 0x8d2
	call _Z18SV_SetConfigstringiPKc
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Add_Ammo(gentity_s*, unsigned int, unsigned char, int, int)
_Z8Add_AmmoP9gentity_sjhii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0xc]
	movzx ebx, byte [ebp+0x10]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x15c]
	mov edx, edi
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x55c], eax
	jnz _Z8Add_AmmoP9gentity_sjhii_10
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj
	test al, al
	jz _Z8Add_AmmoP9gentity_sjhii_20
_Z8Add_AmmoP9gentity_sjhii_10:
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x3c], eax
	mov [esp], edi
	call _Z16BG_AmmoForWeaponi
	mov [ebp-0x38], eax
	mov [esp], edi
	call _Z16BG_ClipForWeaponi
	mov [ebp-0x34], eax
	mov eax, [ebp-0x38]
	mov eax, [esi+eax*4+0x15c]
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x34]
	mov edx, [esi+edx*4+0x35c]
	mov [ebp-0x28], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	mov [ebp-0x24], eax
	mov eax, [ebp+0x14]
	mov ecx, [ebp-0x38]
	add [esi+ecx*4+0x15c], eax
	mov [esp], edi
	call _Z19BG_WeaponIsClipOnlyi
	test eax, eax
	jnz _Z8Add_AmmoP9gentity_sjhii_30
	mov byte [ebp-0x2d], 0x0
_Z8Add_AmmoP9gentity_sjhii_120:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z8Add_AmmoP9gentity_sjhii_40
	cmp byte [ebp-0x2d], 0x0
	jnz _Z8Add_AmmoP9gentity_sjhii_40
_Z8Add_AmmoP9gentity_sjhii_100:
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x38]
	cmp edx, [esi+eax*4+0x15c]
	jl _Z8Add_AmmoP9gentity_sjhii_50
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x338]
	mov edx, [ebp-0x34]
	cmp [esi+edx*4+0x35c], eax
	jg _Z8Add_AmmoP9gentity_sjhii_60
_Z8Add_AmmoP9gentity_sjhii_110:
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x344]
	test eax, eax
	js _Z8Add_AmmoP9gentity_sjhii_70
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z23BG_GetMaxPickupableAmmoPK13playerState_sj
	mov ebx, eax
	test eax, eax
	js _Z8Add_AmmoP9gentity_sjhii_80
_Z8Add_AmmoP9gentity_sjhii_70:
	mov eax, [ebp-0x38]
	mov edx, [esi+eax*4+0x15c]
	sub edx, [ebp-0x2c]
	mov ecx, [ebp-0x34]
	mov eax, [esi+ecx*4+0x35c]
	sub eax, [ebp-0x28]
	lea eax, [edx+eax]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8Add_AmmoP9gentity_sjhii_40:
	mov [esp], edi
	call _Z16BG_AmmoForWeaponi
	mov [ebp-0x20], eax
	mov [esp], edi
	call _Z16BG_ClipForWeaponi
	mov [ebp-0x1c], eax
	test edi, edi
	jnz _Z8Add_AmmoP9gentity_sjhii_90
_Z8Add_AmmoP9gentity_sjhii_140:
	cmp byte [ebp-0x2d], 0x0
	jz _Z8Add_AmmoP9gentity_sjhii_100
	mov ecx, [ebp-0x38]
	mov dword [esi+ecx*4+0x15c], 0x0
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x338]
	mov edx, [ebp-0x34]
	cmp [esi+edx*4+0x35c], eax
	jle _Z8Add_AmmoP9gentity_sjhii_110
_Z8Add_AmmoP9gentity_sjhii_60:
	mov [esi+edx*4+0x35c], eax
	jmp _Z8Add_AmmoP9gentity_sjhii_110
_Z8Add_AmmoP9gentity_sjhii_50:
	mov [esi+eax*4+0x15c], edx
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x338]
	mov edx, [ebp-0x34]
	cmp [esi+edx*4+0x35c], eax
	jle _Z8Add_AmmoP9gentity_sjhii_110
	jmp _Z8Add_AmmoP9gentity_sjhii_60
_Z8Add_AmmoP9gentity_sjhii_30:
	movzx eax, bl
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z18G_GivePlayerWeaponP13playerState_sih
	mov byte [ebp-0x2d], 0x1
	jmp _Z8Add_AmmoP9gentity_sjhii_120
_Z8Add_AmmoP9gentity_sjhii_80:
	mov [esp], edi
	call _Z19BG_WeaponIsClipOnlyi
	mov edx, eax
	test eax, eax
	jz _Z8Add_AmmoP9gentity_sjhii_130
	mov eax, ebx
	mov ecx, [ebp-0x34]
	add eax, [esi+ecx*4+0x35c]
	mov [esi+ecx*4+0x35c], eax
	test eax, eax
	jg _Z8Add_AmmoP9gentity_sjhii_70
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z19BG_TakePlayerWeaponP13playerState_sji
_Z8Add_AmmoP9gentity_sjhii_20:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8Add_AmmoP9gentity_sjhii_90:
	call _Z16BG_GetNumWeaponsv
	cmp edi, eax
	jae _Z8Add_AmmoP9gentity_sjhii_140
	mov edx, [ebp-0x1c]
	mov ebx, [esi+edx*4+0x35c]
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x338]
	sub eax, ebx
	mov ecx, [ebp-0x20]
	mov edx, [esi+ecx*4+0x15c]
	cmp eax, edx
	cmovg eax, edx
	test eax, eax
	jz _Z8Add_AmmoP9gentity_sjhii_140
	sub edx, eax
	mov [esi+ecx*4+0x15c], edx
	mov edx, [ebp-0x1c]
	add [esi+edx*4+0x35c], eax
	jmp _Z8Add_AmmoP9gentity_sjhii_140
_Z8Add_AmmoP9gentity_sjhii_130:
	mov eax, ebx
	mov ecx, [ebp-0x38]
	add eax, [esi+ecx*4+0x15c]
	cmovns edx, eax
	mov [esi+ecx*4+0x15c], edx
	jmp _Z8Add_AmmoP9gentity_sjhii_70
	nop


;Drop_Item(gentity_s*, gitem_s const*, float, int)
_Z9Drop_ItemP9gentity_sPK7gitem_sfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov esi, [ebp+0x8]
	movss xmm0, dword [ebp+0x10]
	mov eax, [esi+0x14c]
	mov [ebp-0x2c], eax
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	xor eax, eax
	mov [ebp-0x30], eax
	mov [ebp-0x28], eax
	mov edx, [ebp+0x14]
	test edx, edx
	jz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_10
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_150:
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
	movss xmm0, dword [esi+0x11c]
	subss xmm0, [esi+0x110]
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	mov esi, [esi]
	mov [ebp-0x164], esi
	mov eax, [ebp+0xc]
	sub eax, bg_itemlist
	sar eax, 0x2
	mov [ebp-0x174], eax
	call _Z7G_Spawnv
	mov edi, eax
	mov eax, g_maxDroppedWeapons
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x154], eax
	test eax, eax
	jle _Z9Drop_ItemP9gentity_sPK7gitem_sfi_20
	mov edx, level
	mov ecx, edx
	add edx, 0x1544
	cmp word [edx], 0x0
	jz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_30
	movss xmm0, dword [_float__1_00000000]
	movss [ebp-0x158], xmm0
	mov dword [ebp-0x14c], 0xffffffff
	mov dword [ebp-0x160], 0x0
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_40
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_70:
	add dword [ebp-0x160], 0x1
	mov eax, [ebp-0x160]
	cmp [ebp-0x154], eax
	jz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_50
	mov ecx, level
	lea eax, [ecx+eax*4+0x1540]
	lea edx, [eax+0x4]
	cmp word [eax+0x4], 0x0
	jz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_60
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_40:
	movzx eax, word [edx]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax-0x274]
	add ebx, g_entities
	test byte [ebx+0x183], 0x1
	jnz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_70
	mov eax, [ebx+0x1bc]
	and eax, 0x8000007f
	js _Z9Drop_ItemP9gentity_sPK7gitem_sfi_80
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_170:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x3fc]
	test eax, eax
	jnz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_70
	mov eax, level
	mov edx, [eax+0x1e4]
	mov [ebp-0x15c], edx
	test edx, edx
	jle _Z9Drop_ItemP9gentity_sPK7gitem_sfi_90
	mov eax, [eax]
	mov [ebp-0x150], eax
	xor esi, esi
	movss xmm3, dword [_float_999998029824_00000000]
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_100
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_120:
	add esi, 0x1
	add dword [ebp-0x150], 0x3184
	cmp [ebp-0x15c], esi
	jz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_110
	mov eax, [ebp-0x150]
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_100:
	cmp dword [eax+0x2f8c], 0x2
	jnz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_120
	mov eax, [eax+0x2f64]
	test eax, eax
	jnz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_120
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [eax+esi+0x130]
	add eax, g_entities
	lea ecx, [eax+0xc]
	lea edx, [ebx+0x13c]
	movss xmm0, dword [ebx+0x13c]
	subss xmm0, [eax+0xc]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ecx+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	minss xmm0, xmm3
	movaps xmm3, xmm0
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_120
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_180:
	mov eax, [ebp-0x154]
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_find_a
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x160], 0x0
	mov edx, [ebp-0x160]
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_190:
	mov ebx, level
	lea eax, [ebx+edx*4+0x1540]
	lea esi, [eax+0x4]
	movzx edx, word [eax+0x4]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, g_entities
	mov [esp], eax
	call _Z12G_FreeEntityP9gentity_s
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _ZN9EntHandle6setEntEP9gentity_s
	mov ecx, ebx
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_60:
	mov [esp+0x4], edi
	mov edx, [ebp-0x160]
	lea eax, [ecx+edx*4+0x1544]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [edi+0x4], 0x3
	mov eax, [ebp-0x174]
	mov [edi+0x88], eax
	mov esi, eax
	and esi, 0x8000007f
	js _Z9Drop_ItemP9gentity_sPK7gitem_sfi_130
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_160:
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov eax, [eax]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_weapon_s
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x13c]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp+0x4], ebx
	lea eax, [edi+0x170]
	mov [esp], eax
	call _Z16G_SetConstStringPtPKc
	mov eax, [ebp-0x174]
	mov [edi+0x1bc], eax
	lea edx, [edi+0x108]
	mov eax, 0xbf800000
	mov [edi+0x108], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [edi+0x114]
	mov eax, 0x3f800000
	mov [edi+0x114], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov dword [edi+0x120], 0x407c0108
	mov edx, [ebp-0x164]
	mov [edi+0x8c], edx
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov edx, [ebp-0x174]
	lea ecx, [edx+0x7f]
	cmp edx, 0xffffffff
	cmovle edx, ecx
	sar edx, 0x7
	movzx edx, dl
	mov eax, [eax+edx*4+0x2bc]
	test eax, eax
	jz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_140
	mov [esp], eax
	call _Z13XModelGetNamePK6XModel
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10G_SetModelP9gentity_sPKc
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_140:
	mov [esp], edi
	call _Z12G_DObjUpdateP9gentity_s
	mov byte [edi+0x16e], 0x10
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11G_SetOriginP9gentity_sPKf
	mov dword [edi+0xc], 0x5
	mov ebx, level
	mov eax, [ebx+0x1ec]
	mov [edi+0x10], eax
	lea edx, [edi+0x24]
	mov eax, [ebp-0x24]
	mov [edi+0x24], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
	mov dword [edi+0x180], 0x10
	mov eax, [ebx+0x1ec]
	add eax, 0x3e8
	mov [edi+0x19c], eax
	mov [esp], edi
	call _Z13SV_LinkEntityP9gentity_s
	mov eax, edi
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_30:
	mov dword [ebp-0x160], 0x0
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_60
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_10:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	mov eax, g_dropForwardSpeed
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	mov eax, g_dropUpSpeedBase
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x170], xmm0
	movss [ebp-0x188], xmm1
	call _Z7crandomv
	fstp dword [ebp-0x18c]
	movss xmm0, dword [ebp-0x18c]
	mov eax, g_dropUpSpeedRand
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x170]
	movss xmm1, dword [ebp-0x188]
	addss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x16c], xmm0
	call _Z7crandomv
	fstp dword [ebp-0x18c]
	movss xmm0, dword [ebp-0x18c]
	mov ebx, g_dropHorzSpeedRand
	mov eax, [ebx]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x16c]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x168], xmm0
	call _Z7crandomv
	fstp dword [ebp-0x18c]
	movss xmm0, dword [ebp-0x18c]
	mov eax, [ebx]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x168]
	movss [ebp-0x20], xmm0
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_150
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_130:
	sub esi, 0x1
	or esi, 0xffffff80
	add esi, 0x1
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_160
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_90:
	movss xmm3, dword [_float_999998029824_00000000]
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_110:
	ucomiss xmm3, [ebp-0x158]
	jbe _Z9Drop_ItemP9gentity_sPK7gitem_sfi_70
	mov edx, [ebp-0x160]
	mov [ebp-0x14c], edx
	movss [ebp-0x158], xmm3
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_70
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_80:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_170
_Z9Drop_ItemP9gentity_sPK7gitem_sfi_50:
	cmp dword [ebp-0x14c], 0xffffffff
	jz _Z9Drop_ItemP9gentity_sPK7gitem_sfi_180
	mov edx, [ebp-0x14c]
	mov [ebp-0x160], edx
	jmp _Z9Drop_ItemP9gentity_sPK7gitem_sfi_190
	nop


;Fill_Clip(playerState_s*, unsigned int)
_Z9Fill_ClipP13playerState_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov [esp], esi
	call _Z16BG_AmmoForWeaponi
	mov [ebp-0x1c], eax
	mov [esp], esi
	call _Z16BG_ClipForWeaponi
	mov edi, eax
	test esi, esi
	jnz _Z9Fill_ClipP13playerState_sj_10
_Z9Fill_ClipP13playerState_sj_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9Fill_ClipP13playerState_sj_10:
	call _Z16BG_GetNumWeaponsv
	cmp esi, eax
	jae _Z9Fill_ClipP13playerState_sj_20
	mov eax, [ebp+0x8]
	mov ebx, [eax+edi*4+0x35c]
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x338]
	sub eax, ebx
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp+0x8]
	mov edx, [ebx+ecx*4+0x15c]
	cmp eax, edx
	cmovg eax, edx
	test eax, eax
	jz _Z9Fill_ClipP13playerState_sj_20
	sub edx, eax
	mov [ebx+ecx*4+0x15c], edx
	add [ebx+edi*4+0x35c], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_RunItem(gentity_s*)
_Z9G_RunItemP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x7c]
	cmp ebx, 0x3ff
	jz _Z9G_RunItemP9gentity_s_10
	mov eax, level
	mov ecx, [eax+0x4]
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ebx
	mov ebx, [eax+ecx+0xc]
	test ebx, ebx
	jnz _Z9G_RunItemP9gentity_s_10
_Z9G_RunItemP9gentity_s_40:
	mov ecx, [esi+0xc]
	test ecx, ecx
	jz _Z9G_RunItemP9gentity_s_20
	mov edx, [esi+0x218]
	test edx, edx
	jz _Z9G_RunItemP9gentity_s_30
_Z9G_RunItemP9gentity_s_20:
	mov [esp], esi
	call _Z10G_RunThinkP9gentity_s
_Z9G_RunItemP9gentity_s_80:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9G_RunItemP9gentity_s_10:
	mov eax, [esi+0xc]
	cmp eax, 0x5
	jz _Z9G_RunItemP9gentity_s_40
	cmp eax, 0xa
	jz _Z9G_RunItemP9gentity_s_40
	test byte [esi+0x17c], 0x1
	jnz _Z9G_RunItemP9gentity_s_40
	mov dword [esi+0xc], 0x5
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esi+0x10], eax
	lea ecx, [esi+0x18]
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [esi+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea edx, [esi+0x24]
	xor eax, eax
	mov [esi+0x24], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	jmp _Z9G_RunItemP9gentity_s_40
_Z9G_RunItemP9gentity_s_30:
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov ebx, [esi+0x190]
	test ebx, ebx
	mov eax, 0x491
	cmovz ebx, eax
	lea edi, [esi+0x13c]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [esi+0x13c]
	lea edx, [esi+0x140]
	mov [ebp-0xa0], edx
	movss xmm1, dword [ebp-0x20]
	subss xmm1, [esi+0x140]
	lea ecx, [esi+0x144]
	mov [ebp-0x9c], ecx
	movss xmm3, dword [ebp-0x1c]
	movaps xmm2, xmm3
	subss xmm2, [esi+0x144]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_0_10000000]
	jae _Z9G_RunItemP9gentity_s_50
	jp _Z9G_RunItemP9gentity_s_50
	subss xmm3, [_float_1_00000000]
	movss [ebp-0x1c], xmm3
_Z9G_RunItemP9gentity_s_50:
	lea eax, [esi+0x154]
	mov [ebp-0xac], eax
	cmp word [esi+0x154], 0x0
	jnz _Z9G_RunItemP9gentity_s_60
	mov eax, 0x3ff
_Z9G_RunItemP9gentity_s_110:
	lea edx, [esi+0x114]
	mov [ebp-0xa8], edx
	lea ecx, [esi+0x108]
	mov [ebp-0xa4], ecx
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	lea edx, [ebp-0x8c]
	mov [esp], edx
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm1, dword [ebp-0x8c]
	ucomiss xmm1, [_float_1_00000000]
	jb _Z9G_RunItemP9gentity_s_70
_Z9G_RunItemP9gentity_s_120:
	mov eax, [ebp-0x24]
	mov [edi], eax
	mov eax, [ebp-0x20]
	mov [edi+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x8], eax
_Z9G_RunItemP9gentity_s_150:
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	mov [esp], esi
	call _Z10G_RunThinkP9gentity_s
	cmp byte [esi+0x100], 0x0
	jz _Z9G_RunItemP9gentity_s_80
	movss xmm0, dword [ebp-0x8c]
	ucomiss xmm0, [_float_0_01000000]
	jae _Z9G_RunItemP9gentity_s_80
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x80]
	jae _Z9G_RunItemP9gentity_s_90
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0xffffffff
	mov [esp], edi
	call _Z16SV_PointContentsPKfii
	test eax, eax
	jz _Z9G_RunItemP9gentity_s_100
_Z9G_RunItemP9gentity_s_90:
	mov [esp], esi
	call _Z12G_FreeEntityP9gentity_s
	jmp _Z9G_RunItemP9gentity_s_80
_Z9G_RunItemP9gentity_s_60:
	movzx eax, word [esi+0x154]
	sub eax, 0x1
	jmp _Z9G_RunItemP9gentity_s_110
_Z9G_RunItemP9gentity_s_70:
	jp _Z9G_RunItemP9gentity_s_120
	movss xmm0, dword [edi]
	movss xmm7, dword [ebp-0x24]
	movaps xmm4, xmm7
	subss xmm4, xmm0
	mulss xmm4, xmm1
	addss xmm4, xmm0
	movss [ebp-0x30], xmm4
	mov ecx, [ebp-0xa0]
	movss xmm0, dword [ecx]
	movss xmm6, dword [ebp-0x20]
	movaps xmm3, xmm6
	subss xmm3, xmm0
	mulss xmm3, xmm1
	addss xmm3, xmm0
	movss [ebp-0x2c], xmm3
	mov eax, [ebp-0x9c]
	movss xmm0, dword [eax]
	movss xmm5, dword [ebp-0x1c]
	movaps xmm2, xmm5
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm2, xmm0
	movss [ebp-0x28], xmm2
	cmp byte [ebp-0x63], 0x0
	jnz _Z9G_RunItemP9gentity_s_130
	ucomiss xmm1, [_float_0_01000000]
	jae _Z9G_RunItemP9gentity_s_130
	jp _Z9G_RunItemP9gentity_s_130
	movss xmm0, dword [_float_0_50000000]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z9G_RunItemP9gentity_s_130
	movss xmm2, dword [ebp-0x88]
	movaps xmm1, xmm7
	subss xmm1, [edi]
	mulss xmm1, xmm2
	subss xmm6, [ecx]
	mulss xmm6, [ebp-0x84]
	addss xmm1, xmm6
	subss xmm5, [eax]
	mulss xmm5, [ebp-0x80]
	addss xmm1, xmm5
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm7, xmm2
	movss [ebp-0x24], xmm7
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x84]
	addss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	mulss xmm0, [ebp-0x80]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp-0xac]
	cmp word [edx], 0x0
	jnz _Z9G_RunItemP9gentity_s_140
	mov eax, 0x3ff
_Z9G_RunItemP9gentity_s_170:
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov edx, [ebp-0xa8]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xa4]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm1, dword [ebp-0x8c]
	movss xmm4, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm4
	mulss xmm0, xmm1
	addss xmm4, xmm0
	movss [ebp-0x30], xmm4
	movss xmm3, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm3
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movss [ebp-0x2c], xmm3
	movss xmm2, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	addss xmm2, xmm1
	movss [ebp-0x28], xmm2
_Z9G_RunItemP9gentity_s_130:
	mov dword [esi+0xc], 0x3
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esi+0x10], eax
	mov dword [esi+0x14], 0x32
	lea edx, [esi+0x18]
	mov eax, [edi]
	mov [esi+0x18], eax
	mov ecx, [ebp-0xa0]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x9c]
	mov eax, [ecx]
	mov [edx+0x8], eax
	lea eax, [esi+0x24]
	movaps xmm1, xmm4
	subss xmm1, [edi]
	movss [esi+0x24], xmm1
	movaps xmm0, xmm3
	mov edx, [ebp-0xa0]
	subss xmm0, [edx]
	movss [esi+0x28], xmm0
	movaps xmm0, xmm2
	subss xmm0, [ecx]
	movss [esi+0x2c], xmm0
	movss xmm0, dword [_float_20_00000000]
	mulss xmm1, xmm0
	movss [esi+0x24], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [esi+0x28], xmm1
	mulss xmm0, [eax+0x8]
	movss [esi+0x2c], xmm0
	movss [edi], xmm4
	movss [edi+0x4], xmm3
	movss [edi+0x8], xmm2
	jmp _Z9G_RunItemP9gentity_s_150
_Z9G_RunItemP9gentity_s_100:
	mov eax, [ebp-0x88]
	mov [ebp-0x48], eax
	lea ebx, [ebp-0x60]
	mov eax, [ebp-0x84]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x80]
	mov [ebp-0x40], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	lea eax, [esi+0x148]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm2, dword [ebp-0x44]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x58]
	movss xmm3, dword [ebp-0x40]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x5c]
	subss xmm4, xmm0
	movss [ebp-0x54], xmm4
	mulss xmm3, [ebp-0x60]
	movss xmm1, dword [ebp-0x48]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x58]
	subss xmm3, xmm0
	movss [ebp-0x50], xmm3
	mulss xmm1, [ebp-0x5c]
	mulss xmm2, [ebp-0x60]
	subss xmm1, xmm2
	movss [ebp-0x4c], xmm1
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x40]
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x44]
	subss xmm0, xmm2
	movss [ebp-0x60], xmm0
	mulss xmm1, [ebp-0x48]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x40]
	subss xmm1, xmm0
	movss [ebp-0x5c], xmm1
	mulss xmm4, [ebp-0x44]
	mulss xmm3, [ebp-0x48]
	subss xmm4, xmm3
	movss [ebp-0x58], xmm4
	lea edi, [ebp-0x3c]
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z12AxisToAnglesPA3_KfPf
	mov eax, [esi+0x88]
	test eax, eax
	jz _Z9G_RunItemP9gentity_s_160
	movss xmm0, dword [_float_90_00000000]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
_Z9G_RunItemP9gentity_s_160:
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z10G_SetAngleP9gentity_sPKf
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11G_SetOriginP9gentity_sPKf
	lea ecx, [ebp-0x8c]
	mov [esp], ecx
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx eax, ax
	mov [esi+0x7c], eax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	or dword [edx+0x180], 0x100000
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	jmp _Z9G_RunItemP9gentity_s_80
_Z9G_RunItemP9gentity_s_140:
	mov ecx, [ebp-0xac]
	movzx eax, word [ecx]
	sub eax, 0x1
	jmp _Z9G_RunItemP9gentity_s_170
	nop


;Initialized global or static variables of g_items:
SECTION .data


;Initialized constant data of g_items:
SECTION .rdata


;Zero initialized global or static variables of g_items:
SECTION .bss
itemRegistered: resb 0x2064


;All cstrings:
SECTION .rdata
_cstring_c_game_pickup_cl:		db "%c ",22h,"GAME_PICKUP_CLIPONLY_AMMO",014h,"%s",22h,0
_cstring_c_game_pickup_am:		db "%c ",22h,"GAME_PICKUP_AMMO",014h,"%s",22h,0
_cstring_c_game_cant_get_:		db "%c ",22h,"GAME_CANT_GET_PRIMARY_WEAP_MESSAGE",22h,0
_cstring_weaponsdss:		db "Weapon;%s;%d;%s;%s",0ah,0
_cstring_c_game_pickup_ca:		db "%c ",22h,"GAME_PICKUP_CANTCARRYMOREAMMO",014h,"%s",22h,0
_cstring_drop_weapon_tryi:		db "Drop_Weapon(): Trying to drop alt-type weapon, ",22h,"%s",22h,", but it has no corresponding altWeapon set.",0ah,0
_cstring_defaultweapon:		db "defaultweapon",0
_cstring_too_many_differe:		db 015h,"Too many different hintstring values on weapons. Max allowed is %i different strings",0
_cstring_finishspawningit:		db "FinishSpawningItem: %s startsolid at %s",0ah,0
_cstring_weapon_s:		db "weapon_%s",0
_cstring_space:		db " ",0
_cstring_could_not_find_a:		db "Could not find a suitable weapon entity to free out of %i possible.  Using index zero.",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_2_00000000:		dd 0x40000000	; 2
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_90_00000000:		dd 0x42b40000	; 90
_float_4096_00000000:		dd 0x45800000	; 4096
_float_1_00000000:		dd 0x3f800000	; 1
_float_15_00000000:		dd 0x41700000	; 15
_float__1_00000000:		dd 0xbf800000	; -1
_float_999998029824_00000000:		dd 0x5368d487	; 9.99998e+11
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_20_00000000:		dd 0x41a00000	; 20

