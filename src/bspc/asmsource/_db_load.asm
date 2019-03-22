;Imports of db_load:
	extern Load_Stream
	extern DB_PushStreamPos
	extern DB_ConvertOffsetToPointer
	extern DB_AllocStreamPos
	extern DB_PopStreamPos
	extern Load_XStringCustom
	extern Load_ScriptStringCustom
	extern DB_ConvertOffsetToAlias
	extern Load_SetSoundData
	extern DB_InsertPointer
	extern Load_GetCurrentZoneHandle
	extern Mark_GfxImageAsset
	extern Mark_LightDefAsset
	extern Load_FxEffectDefFromName
	extern Load_XModelAsset
	extern Mark_ScriptStringCustom
	extern Mark_snd_alias_list_Asset
	extern Mark_SndCurveAsset
	extern Mark_LoadedSoundAsset
	extern Mark_XModelAsset
	extern Mark_PhysPresetAsset
	extern Mark_MapEntsAsset
	extern Mark_FxEffectDefAsset
	extern Load_FontAsset
	extern Load_MapEntsAsset
	extern Load_RawFileAsset
	extern Load_ComWorldAsset
	extern Load_GfxImageAsset
	extern Load_GfxWorldAsset
	extern Load_MenuListAsset
	extern Load_SndCurveAsset
	extern Load_ClipMapAsset
	extern Load_MenuAsset
	extern Load_BuildVertexDecl
	extern Load_WeaponDefAsset
	extern Mark_StringTableAsset
	extern Mark_XAnimPartsAsset
	extern Mark_MaterialTechniqueSetAsset
	extern Mark_ComWorldAsset
	extern Mark_ClipMapAsset
	extern Mark_GameWorldSpAsset
	extern Mark_GameWorldMpAsset
	extern Mark_GfxWorldAsset
	extern Mark_FontAsset
	extern Mark_MenuListAsset
	extern Mark_MenuAsset
	extern Mark_LocalizeEntryAsset
	extern Mark_WeaponDefAsset
	extern Mark_RawFileAsset
	extern Mark_FxImpactTableAsset
	extern Load_PhysPresetAsset
	extern Load_XAnimPartsAsset
	extern Load_GameWorldMpAsset
	extern Load_GameWorldSpAsset
	extern Load_LightDefAsset
	extern Load_Texture
	extern Load_LoadedSoundAsset
	extern Load_MaterialAsset
	extern Load_StringTableAsset
	extern Mark_MaterialAsset
	extern Load_FxImpactTableAsset
	extern Load_LocalizeEntryAsset
	extern Load_TempStringCustom
	extern Load_FxEffectDefAsset
	extern Load_VertexBuffer
	extern Load_snd_alias_list_Asset
	extern Load_CreateMaterialPixelShader
	extern Load_PicmipWater
	extern Load_MaterialTechniqueSetAsset
	extern Load_CreateMaterialVertexShader
	extern Load_WeaponDefSounds
	extern Load_WeaponDef
	extern Load_XModelBoneNames
	extern Load_MaterialHandle


;Exports of db_load:
	global Load_XModel
	global Mark_XAsset
	global Load_GfxCell
	global Load_MapEnts
	global Load_RawFile
	global Load_water_t
	global Load_ComWorld
	global Load_GfxWorld
	global Load_Material
	global Load_MenuList
	global Load_MssSound
	global Load_PathData
	global Load_XSurface
	global Load_cbrush_t
	global Mark_GfxWorld
	global Load_FxElemDef
	global Load_GfxPortal
	global Load_XModelPtr
	global Load_clipMap_t
	global Load_itemDef_t
	global Load_menuDef_t
	global Mark_WeaponDef
	global Mark_XModelPtr
	global Mark_clipMap_t
	global Load_FontHandle
	global Load_FxTrailDef
	global Load_MapEntsPtr
	global Load_RawFilePtr
	global Load_XAnimParts
	global Load_multiDef_t
	global AllocLoad_XAsset
	global Load_ComWorldPtr
	global Load_FxEffectDef
	global Load_GfxImagePtr
	global Load_GfxLightDef
	global Load_GfxWorldPtr
	global Load_MenuListPtr
	global Load_SndCurvePtr
	global Load_StringTable
	global Load_clipMap_ptr
	global Load_menuDef_ptr
	global Load_snd_alias_t
	global Load_BrushWrapper
	global Load_DynEntityDef
	global Load_GfxLightGrid
	global Load_MaterialPass
	global Load_PhysGeomList
	global Load_WeaponDefPtr
	global Load_XAssetHeader
	global Load_XModelPieces
	global Mark_XAssetHeader
	global Load_FxElemVisuals
	global Load_FxImpactEntry
	global Load_FxImpactTable
	global Load_PhysPresetPtr
	global Load_XAnimPartsPtr
	global Load_itemDefData_t
	global Load_GameWorldMpPtr
	global Load_GameWorldSpPtr
	global Load_GfxLightDefPtr
	global Load_GfxLightRegion
	global Load_GfxTextureLoad
	global Load_ItemKeyHandler
	global Load_LoadedSoundPtr
	global Load_StringTablePtr
	global Load_XAnimDeltaPart
	global Load_listBoxDef_ptr
	global Mark_MaterialHandle
	global Load_FxElemDefVisuals
	global Load_FxImpactTablePtr
	global Load_LocalizeEntryPtr
	global Load_snd_alias_list_t
	global Mark_FxElemDefVisuals
	global Load_FxEffectDefHandle
	global Load_GfxShadowGeometry
	global Load_pathnode_tree_ptr
	global Mark_FxEffectDefHandle
	global Load_GfxWorldDpvsPlanes
	global Load_GfxWorldDpvsStatic
	global Load_GfxWorldVertexData
	global Load_XAnimDynamicFrames
	global Load_snd_alias_list_ptr
	global Mark_snd_alias_list_ptr
	global Load_GfxWorldDpvsDynamic
	global Load_MaterialArgumentDef
	global Load_expressionEntry_ptr
	global Load_pathnode_constant_t
	global Mark_pathnode_constant_t
	global Load_MaterialTechniqueSet
	global Load_XSurfaceCollisionTree
	global Load_MaterialPixelShaderPtr
	global Load_MaterialTextureDefInfo
	global Load_GfxWorldVertexLayerData
	global Load_MaterialTechniqueSetPtr
	global Load_MaterialVertexShaderPtr
	global Load_Font
	global varScriptStringList
	global varXAsset
	global varXAssetList
	global varBrushWrapper
	global varByteVec
	global varCollisionAabbTree
	global varCollisionBorder
	global varCollisionPartition
	global varComPrimaryLight
	global varComWorld
	global varComWorldPtr
	global varConstChar
	global varDObjAnimMat
	global varDWORD
	global varDynEntityClient
	global varDynEntityColl
	global varDynEntityDef
	global varDynEntityPose
	global varFont
	global varFontHandle
	global varFxEffectDef
	global varFxEffectDefHandle
	global varFxEffectDefRef
	global varFxElemDef
	global varFxElemDefVisuals
	global varFxElemMarkVisuals
	global varFxElemVelStateSample
	global varFxElemVisStateSample
	global varFxElemVisuals
	global varFxImpactEntry
	global varFxImpactTable
	global varFxImpactTablePtr
	global varFxTrailDef
	global varFxTrailVertex
	global varGameWorldMp
	global varGameWorldMpPtr
	global varGameWorldSp
	global varGameWorldSpPtr
	global varGfxAabbTree
	global varGfxBrushModel
	global varGfxCell
	global varGfxCullGroup
	global varGfxDrawSurf
	global varGfxImage
	global varGfxImageLoadDef
	global varGfxImagePtr
	global varGfxLight
	global varGfxLightDef
	global varGfxLightDefPtr
	global varGfxLightGrid
	global varGfxLightGridColors
	global varGfxLightGridEntry
	global varGfxLightImage
	global varGfxLightRegion
	global varGfxLightRegionAxis
	global varGfxLightRegionHull
	global varGfxLightmapArray
	global varGfxPackedVertex0
	global varGfxPixelShaderLoadDef
	global varGfxPortal
	global varGfxRawTexture
	global varGfxReflectionProbe
	global varGfxSceneDynBrush
	global varGfxSceneDynModel
	global varGfxShadowGeometry
	global varGfxStateBits
	global varGfxStaticModelDrawInst
	global varGfxStaticModelInst
	global varGfxSurface
	global varGfxTextureLoad
	global varGfxVertexBuffer
	global varGfxVertexShaderLoadDef
	global varGfxWorld
	global varGfxWorldDpvsDynamic
	global varGfxWorldDpvsPlanes
	global varGfxWorldDpvsStatic
	global varGfxWorldPtr
	global varGfxWorldVertex0
	global varGfxWorldVertexData
	global varGfxWorldVertexLayerData
	global varGlyph
	global varItemKeyHandler
	global varItemKeyHandlerNext
	global varLeafBrush
	global varLoadedSound
	global varLoadedSoundPtr
	global varLocalizeEntry
	global varLocalizeEntryPtr
	global varMapEnts
	global varMapEntsPtr
	global varMaterial
	global varMaterialArgumentCodeConst
	global varMaterialArgumentDef
	global varMaterialConstantDef
	global varMaterialHandle
	global varMaterialInfo
	global varMaterialMemory
	global varMaterialPass
	global varMaterialPixelShader
	global varMaterialPixelShaderProgram
	global varMaterialPixelShaderPtr
	global varMaterialShaderArgument
	global varMaterialTechnique
	global varMaterialTechniquePtr
	global varMaterialTechniqueSet
	global varMaterialTechniqueSetPtr
	global varMaterialTextureDef
	global varMaterialTextureDefInfo
	global varMaterialVertexDeclaration
	global varMaterialVertexShader
	global varMaterialVertexShaderProgram
	global varMaterialVertexShaderPtr
	global varMenuList
	global varMenuListPtr
	global varMssSound
	global varOperand
	global varPathData
	global varPhysGeomInfo
	global varPhysGeomList
	global varPhysPreset
	global varPhysPresetPtr
	global varRawFile
	global varRawFilePtr
	global varScriptString
	global varSndCurve
	global varSndCurvePtr
	global varSoundFile
	global varSoundFileRef
	global varSpeakerMap
	global varStaticModelIndex
	global varStreamFileInfo
	global varStreamFileName
	global varStreamFileNameRaw
	global varStreamedSound
	global varStringTable
	global varStringTablePtr
	global varTempString
	global varUShortVec
	global varUnsignedShort
	global varWeaponDef
	global varWeaponDefPtr
	global varWindow
	global varXAnimDeltaPart
	global varXAnimDeltaPartQuat
	global varXAnimDeltaPartQuatData
	global varXAnimDeltaPartQuatDataFrames
	global varXAnimDynamicFrames
	global varXAnimDynamicIndicesDeltaQuat
	global varXAnimDynamicIndicesTrans
	global varXAnimIndices
	global varXAnimNotifyInfo
	global varXAnimPartTrans
	global varXAnimPartTransData
	global varXAnimPartTransFrames
	global varXAnimParts
	global varXAnimPartsPtr
	global varXAssetHeader
	global varXBlendInfo
	global varXBoneInfo
	global varXModel
	global varXModelCollSurf
	global varXModelCollTri
	global varXModelPiece
	global varXModelPieces
	global varXModelPiecesPtr
	global varXModelPtr
	global varXQuat2
	global varXRigidVertList
	global varXString
	global varXStringPtr
	global varXSurface
	global varXSurfaceCollisionLeaf
	global varXSurfaceCollisionNode
	global varXSurfaceCollisionTree
	global varXSurfaceVertexInfo
	global varXZoneHandle
	global varbyte
	global varcLeafBrushNodeData_t
	global varcLeafBrushNodeLeaf_t
	global varcLeafBrushNode_t
	global varcLeaf_t
	global varcNode_t
	global varcStaticModel_t
	global varcbrush_t
	global varcbrushedge_t
	global varcbrushside_t
	global varchar
	global varclipMap_ptr
	global varclipMap_t
	global varcmodel_t
	global varcomplex_t
	global varcplane_t
	global vardmaterial_t
	global vareditFieldDef_ptr
	global vareditFieldDef_t
	global varentryInternalData
	global varexpressionEntry
	global varexpressionEntry_ptr
	global varfloat
	global varint
	global varitemDefData_t
	global varitemDef_ptr
	global varitemDef_t
	global varlistBoxDef_ptr
	global varlistBoxDef_t
	global varmenuDef_ptr
	global varmenuDef_t
	global varmultiDef_ptr
	global varmultiDef_t
	global varoperandInternalDataUnion
	global varpathbasenode_t
	global varpathlink_t
	global varpathnode_constant_t
	global varpathnode_t
	global varpathnode_tree_info_t
	global varpathnode_tree_nodes_t
	global varpathnode_tree_ptr
	global varpathnode_tree_t
	global varr_index16_t
	global varr_index_t
	global varraw_byte
	global varraw_byte16
	global varraw_uint
	global varraw_uint128
	global varshort
	global varsnd_alias_list_name
	global varsnd_alias_list_ptr
	global varsnd_alias_list_t
	global varsnd_alias_t
	global varstatement
	global varsunflare_t
	global varuint
	global varushort
	global varvec2_t
	global varvec3_t
	global varwater_t
	global varwindowDef_t


SECTION .text


;Load_XModel(unsigned char)
Load_XModel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0xdc
	mov eax, [varXModel]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varXModel]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_XModel_10
	add eax, 0x1
	jz Load_XModel_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_XModel_10:
Load_XModel_BoneNames:
	call Load_XModelBoneNames
	mov ebx, [varXModel]
Load_XModel_30:
Load_XModel_parentList:
	mov eax, [ebx+0xc]
	test eax, eax
	jz Load_XModel_50
	add eax, 0x1
	jz Load_XModel_60
	lea eax, [ebx+0xc]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varXModel]
Load_XModel_50:
Load_XModel_quats:
	mov eax, [ebx+0x10]
	test eax, eax
	jz Load_XModel_70
	add eax, 0x1
	jz Load_XModel_80
	lea eax, [ebx+0x10]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varXModel]
Load_XModel_70:
Load_XModel_trans:
	mov eax, [ebx+0x14]
	test eax, eax
	jz Load_XModel_90
	add eax, 0x1
	jz Load_XModel_100
	lea eax, [ebx+0x14]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varXModel]
Load_XModel_90:
Load_XModel_partClassification:
	mov eax, [ebx+0x18]
	test eax, eax
	jz Load_XModel_110
	add eax, 0x1
	jz Load_XModel_120
	lea eax, [ebx+0x18]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varXModel]
Load_XModel_110:
Load_XModel_baseMat:
	mov eax, [ebx+0x1c]
	test eax, eax
	jz Load_XModel_130
	add eax, 0x1
	jz Load_XModel_140
	lea eax, [ebx+0x1c]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varXModel]
Load_XModel_130:
Load_XModel_surfs:
	mov ecx, [ebx+0x20]
	test ecx, ecx
	jz Load_XModel_150
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x20], eax
	mov eax, [varXModel]
	mov ecx, [eax+0x20]
	mov [varXSurface], ecx
	movzx edi, byte [eax+0x6]
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXSurface]
	test edi, edi
	jg Load_XModel_160
Load_XModel_280:
	mov ebx, [varXModel]
Load_XModel_150:
Load_XModel_materialHandles:
	mov edx, [ebx+0x24]
	test edx, edx
	jz Load_XModel_170
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varXModel]
	mov edx, [eax+0x24]
	mov [varMaterialHandle], edx
	movzx edi, byte [eax+0x6]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varMaterialHandle]
	test edi, edi
	jg Load_XModel_180
Load_XModel_300:
	mov ebx, [varXModel]
Load_XModel_170:
Load_XModel_collSurfs:
	mov eax, [ebx+0x98]
	test eax, eax
	jz Load_XModel_190
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x98], eax
	mov eax, [varXModel]
	mov edx, [eax+0x98]
	mov [varXModelCollSurf], edx
	mov edi, [eax+0x9c]
	lea eax, [edi+edi*4]
	lea eax, [edi+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varXModelCollSurf]
	test edi, edi
	jg Load_XModel_200
Load_XModel_260:
	mov ebx, [varXModel]
Load_XModel_190:
Load_XModel_boneInfo:
	mov eax, [ebx+0xa4]
	test eax, eax
	jz Load_XModel_210
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xa4], eax
	mov eax, [varXModel]
	mov edx, [eax+0xa4]
	mov [varXBoneInfo], edx
	movzx eax, byte [eax+0x4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXModel]
Load_XModel_210:
Load_XModel_physPreset:
	lea eax, [ebx+0xd4]
	mov [varPhysPresetPtr], eax
	mov dword [esp], 0x0
	call Load_PhysPresetPtr
	mov ebx, [varXModel]
	mov eax, [ebx+0xd8]
	test eax, eax
	jz Load_XModel_220
	add eax, 0x1
	jz Load_XModel_230
	lea eax, [ebx+0xd8]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_XModel_220:
Load_XModel_exit:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_XModel_200:
	mov dword [ebp-0x1c], 0x0
Load_XModel_250:
	mov [varXModelCollSurf], esi
	mov dword [esp+0x8], 0x2c
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXModelCollSurf]
	mov eax, [ebx]
	test eax, eax
	jz Load_XModel_240
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varXModelCollSurf]
	mov edx, [eax]
	mov [varXModelCollTri], edx
	mov eax, [eax+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_XModel_240:
	add esi, 0x2c
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jnz Load_XModel_250
	jmp Load_XModel_260
Load_XModel_160:
	xor esi, esi
Load_XModel_270:
	mov [varXSurface], ebx
	mov dword [esp], 0x0
	call Load_XSurface
	add ebx, 0x38
	add esi, 0x1
	cmp edi, esi
	jnz Load_XModel_270
	jmp Load_XModel_280
Load_XModel_180:
	xor esi, esi
Load_XModel_290:
	mov [varMaterialHandle], ebx
	mov dword [esp], 0x0
	call Load_MaterialHandle
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_XModel_290
	jmp Load_XModel_300
Load_XModel_230:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xd8], eax
	mov eax, [varXModel]
	mov eax, [eax+0xd8]
	mov [varPhysGeomList], eax
	mov dword [esp], 0x1
	call Load_PhysGeomList
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_XModel_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_XModel_10
Load_XModel_80:
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x10], eax
	mov edx, [varXModel]
	mov ecx, [edx+0x10]
	mov [varshort], ecx
	movzx eax, byte [edx+0x4]
	movzx edx, byte [edx+0x5]
	sub eax, edx
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXModel]
	jmp Load_XModel_70
Load_XModel_100:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x14], eax
	mov edx, [varXModel]
	mov ecx, [edx+0x14]
	mov [varfloat], ecx
	movzx eax, byte [edx+0x4]
	movzx edx, byte [edx+0x5]
	sub eax, edx
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXModel]
	jmp Load_XModel_90
Load_XModel_120:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x18], eax
	mov eax, [varXModel]
	mov edx, [eax+0x18]
	mov [varbyte], edx
	movzx eax, byte [eax+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXModel]
	jmp Load_XModel_110
Load_XModel_140:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov eax, [varXModel]
	mov edx, [eax+0x1c]
	mov [varDObjAnimMat], edx
	movzx eax, byte [eax+0x4]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXModel]
	jmp Load_XModel_130
Load_XModel_60:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0xc], eax
	mov edx, [varXModel]
	mov ecx, [edx+0xc]
	mov [varbyte], ecx
	movzx eax, byte [edx+0x4]
	movzx edx, byte [edx+0x5]
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXModel]
	jmp Load_XModel_50


;Mark_XAsset()
Mark_XAsset:
	push ebp
	mov ebp, esp
	mov eax, [varXAsset]
	add eax, 0x4
	mov [varXAssetHeader], eax
	pop ebp
	jmp Mark_XAssetHeader


;Load_GfxCell(unsigned char)
Load_GfxCell:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x38
	mov eax, [varGfxCell]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varGfxCell]
	mov edx, [ebx+0x1c]
	test edx, edx
	jz Load_GfxCell_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov eax, [varGfxCell]
	mov edx, [eax+0x1c]
	mov [varGfxAabbTree], edx
	mov edi, [eax+0x18]
	lea eax, [edi+edi*4]
	lea eax, [edi+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varGfxAabbTree]
	test edi, edi
	jg Load_GfxCell_20
Load_GfxCell_100:
	mov ebx, [varGfxCell]
Load_GfxCell_10:
	mov eax, [ebx+0x24]
	test eax, eax
	jz Load_GfxCell_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varGfxCell]
	mov edx, [eax+0x24]
	mov [varGfxPortal], edx
	mov edi, [eax+0x20]
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxPortal]
	test edi, edi
	jg Load_GfxCell_40
Load_GfxCell_80:
	mov ebx, [varGfxCell]
Load_GfxCell_30:
	mov eax, [ebx+0x2c]
	test eax, eax
	jz Load_GfxCell_50
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x2c], eax
	mov eax, [varGfxCell]
	mov edx, [eax+0x2c]
	mov [varint], edx
	mov eax, [eax+0x28]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxCell]
Load_GfxCell_50:
	mov eax, [ebx+0x34]
	test eax, eax
	jz Load_GfxCell_60
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x34], eax
	mov eax, [varGfxCell]
	mov edx, [eax+0x34]
	mov [varbyte], edx
	movzx eax, byte [eax+0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxCell_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_GfxCell_40:
	xor esi, esi
Load_GfxCell_70:
	mov [varGfxPortal], ebx
	mov dword [esp], 0x0
	call Load_GfxPortal
	add ebx, 0x44
	add esi, 0x1
	cmp edi, esi
	jnz Load_GfxCell_70
	jmp Load_GfxCell_80
Load_GfxCell_20:
	mov dword [ebp-0x1c], 0x0
	jmp Load_GfxCell_90
Load_GfxCell_120:
	lea eax, [ebx+0x24]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_GfxCell_110:
	add esi, 0x2c
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jz Load_GfxCell_100
Load_GfxCell_90:
	mov [varGfxAabbTree], esi
	mov dword [esp+0x8], 0x2c
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varGfxAabbTree]
	mov eax, [ebx+0x24]
	test eax, eax
	jz Load_GfxCell_110
	add eax, 0x1
	jnz Load_GfxCell_120
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varGfxAabbTree]
	mov edx, [eax+0x24]
	mov [varStaticModelIndex], edx
	movzx eax, word [eax+0x22]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_GfxCell_110
	nop


;Load_MapEnts(unsigned char)
Load_MapEnts:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0xc
	mov eax, [varMapEnts]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varMapEnts]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_MapEnts_10
	add eax, 0x1
	jz Load_MapEnts_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_MapEnts_10:
	mov ebx, [varMapEnts]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_MapEnts_30
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varMapEnts]
	mov edx, [eax+0x4]
	mov [varchar], edx
	mov eax, [eax+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_MapEnts_30:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_PopStreamPos
Load_MapEnts_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_MapEnts_10
	nop


;Load_RawFile(unsigned char)
Load_RawFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0xc
	mov eax, [varRawFile]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varRawFile]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_RawFile_10
	add eax, 0x1
	jz Load_RawFile_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_RawFile_10:
	mov ebx, [varRawFile]
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_RawFile_30
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varRawFile]
	mov edx, [eax+0x8]
	mov [varConstChar], edx
	mov eax, [eax+0x4]
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_RawFile_30:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_PopStreamPos
Load_RawFile_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_RawFile_10


;Load_water_t(unsigned char)
Load_water_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x44
	mov eax, [varwater_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varwater_t]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_water_t_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov edx, [varwater_t]
	mov ecx, [edx+0x4]
	mov [varcomplex_t], ecx
	mov eax, [edx+0xc]
	imul eax, [edx+0x10]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varwater_t]
Load_water_t_10:
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_water_t_20
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov edx, [varwater_t]
	mov ecx, [edx+0x8]
	mov [varfloat], ecx
	mov eax, [edx+0xc]
	imul eax, [edx+0x10]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varwater_t]
Load_water_t_20:
	lea eax, [ebx+0x40]
	mov [varGfxImagePtr], eax
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_GfxImagePtr
	nop


;Load_ComWorld(unsigned char)
Load_ComWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x10
	mov eax, [varComWorld]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varComWorld]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_ComWorld_10
	add eax, 0x1
	jz Load_ComWorld_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_ComWorld_10:
	mov ebx, [varComWorld]
	mov eax, [ebx+0xc]
	test eax, eax
	jz Load_ComWorld_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xc], eax
	mov eax, [varComWorld]
	mov edx, [eax+0xc]
	mov [varComPrimaryLight], edx
	mov edi, [eax+0x8]
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varComPrimaryLight]
	test edi, edi
	jg Load_ComWorld_40
Load_ComWorld_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_ComWorld_40:
	mov dword [ebp-0x1c], 0x0
	jmp Load_ComWorld_50
Load_ComWorld_70:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_ComWorld_60:
	add esi, 0x44
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jz Load_ComWorld_30
Load_ComWorld_50:
	mov [varComPrimaryLight], esi
	mov dword [esp+0x8], 0x44
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varComPrimaryLight]
	add eax, 0x40
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_ComWorld_60
	add eax, 0x1
	jnz Load_ComWorld_70
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_ComWorld_60
Load_ComWorld_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_ComWorld_10
	nop


;Load_GfxWorld(unsigned char)
Load_GfxWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x2dc
	mov eax, [varGfxWorld]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varGfxWorld]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_GfxWorld_10
	add eax, 0x1
	jz Load_GfxWorld_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_GfxWorld_10:
	mov eax, [varGfxWorld]
	add eax, 0x4
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_GfxWorld_30
	add eax, 0x1
	jz Load_GfxWorld_40
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_GfxWorld_30:
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0x14]
	test eax, eax
	jz Load_GfxWorld_50
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x14], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x14]
	mov [varr_index_t], edx
	mov eax, [eax+0x10]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorld]
Load_GfxWorld_50:
	mov eax, [ebx+0x24]
	test eax, eax
	jz Load_GfxWorld_60
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x24]
	mov [varint], edx
	mov eax, [eax+0x20]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorld]
Load_GfxWorld_60:
	lea eax, [ebx+0x28]
	mov [varGfxImagePtr], eax
	mov dword [esp], 0x0
	call Load_GfxImagePtr
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0xc8]
	test eax, eax
	jz Load_GfxWorld_70
	add eax, 0x1
	jz Load_GfxWorld_80
	lea eax, [ebx+0xc8]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varGfxWorld]
Load_GfxWorld_70:
	mov eax, [ebx+0xe8]
	test eax, eax
	jz Load_GfxWorld_90
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xe8], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0xe8]
	mov [varGfxReflectionProbe], edx
	mov edi, [eax+0xe4]
	mov eax, edi
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxReflectionProbe]
	test edi, edi
	jg Load_GfxWorld_100
Load_GfxWorld_90:
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0xec]
	test eax, eax
	jz Load_GfxWorld_110
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xec], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0xec]
	mov [varGfxRawTexture], edx
	mov eax, [eax+0xe4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_110:
	call DB_PopStreamPos
	mov eax, [varGfxWorld]
	add eax, 0xf0
	mov [varGfxWorldDpvsPlanes], eax
	mov dword [esp], 0x0
	call Load_GfxWorldDpvsPlanes
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0x104]
	test eax, eax
	jz Load_GfxWorld_120
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x104], eax
	mov eax, [varGfxWorld]
	mov ecx, [eax+0x104]
	mov [varGfxCell], ecx
	mov edi, [eax+0xf0]
	lea edx, [edi*8]
	mov eax, edi
	shl eax, 0x6
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxCell]
	test edi, edi
	jg Load_GfxWorld_130
Load_GfxWorld_380:
	mov ebx, [varGfxWorld]
Load_GfxWorld_120:
	mov eax, [ebx+0x10c]
	test eax, eax
	jz Load_GfxWorld_140
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x10c], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x10c]
	mov [varGfxLightmapArray], edx
	mov edi, [eax+0x108]
	lea eax, [edi*8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxLightmapArray]
	test edi, edi
	jg Load_GfxWorld_150
Load_GfxWorld_400:
	mov ebx, [varGfxWorld]
Load_GfxWorld_140:
	lea eax, [ebx+0x110]
	mov [varGfxLightGrid], eax
	mov dword [esp], 0x0
	call Load_GfxLightGrid
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov edi, [ebx+0x148]
	test edi, edi
	jz Load_GfxWorld_160
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x148], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x148]
	mov [varGfxRawTexture], edx
	mov eax, [eax+0x108]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_160:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov esi, [ebx+0x14c]
	test esi, esi
	jz Load_GfxWorld_170
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x14c], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x14c]
	mov [varGfxRawTexture], edx
	mov eax, [eax+0x108]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_170:
	call DB_PopStreamPos
	mov ebx, [varGfxWorld]
	mov ecx, [ebx+0x154]
	test ecx, ecx
	jz Load_GfxWorld_180
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x154], eax
	mov eax, [varGfxWorld]
	mov ecx, [eax+0x154]
	mov [varGfxBrushModel], ecx
	mov eax, [eax+0x150]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorld]
Load_GfxWorld_180:
	mov edx, [ebx+0x178]
	test edx, edx
	jz Load_GfxWorld_190
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x178], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x178]
	mov [varMaterialMemory], edx
	mov edi, [eax+0x174]
	lea eax, [edi*8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varMaterialMemory]
	test edi, edi
	jg Load_GfxWorld_200
Load_GfxWorld_420:
	mov ebx, [varGfxWorld]
Load_GfxWorld_190:
	lea eax, [ebx+0x34]
	mov [varGfxWorldVertexData], eax
	mov dword [esp], 0x0
	call Load_GfxWorldVertexData
	mov eax, [varGfxWorld]
	add eax, 0x40
	mov [varGfxWorldVertexLayerData], eax
	mov dword [esp], 0x0
	call Load_GfxWorldVertexLayerData
	mov eax, [varGfxWorld]
	add eax, 0x17c
	mov [varsunflare_t], eax
	mov dword [esp+0x8], 0x60
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varsunflare_t]
	add eax, 0x4
	mov [varMaterialHandle], eax
	mov dword [esp], 0x0
	call Load_MaterialHandle
	mov eax, [varsunflare_t]
	add eax, 0x8
	mov [varMaterialHandle], eax
	mov dword [esp], 0x0
	call Load_MaterialHandle
	mov eax, [varGfxWorld]
	add eax, 0x21c
	mov [varGfxImagePtr], eax
	mov dword [esp], 0x0
	call Load_GfxImagePtr
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0x220]
	test eax, eax
	jz Load_GfxWorld_210
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x220], eax
	mov eax, [varGfxWorld]
	mov ecx, [eax+0x220]
	mov [varraw_uint], ecx
	mov edx, [eax+0xf0]
	lea eax, [edx+0x1f]
	sar eax, 0x5
	imul edx, eax
	shl edx, 0x2
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_210:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0x224]
	test eax, eax
	jz Load_GfxWorld_220
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x224], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x224]
	mov [varGfxSceneDynModel], edx
	mov eax, [eax+0x2b4]
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_220:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0x228]
	test eax, eax
	jz Load_GfxWorld_230
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x228], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x228]
	mov [varGfxSceneDynBrush], edx
	mov eax, [eax+0x2b8]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_230:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0x22c]
	test eax, eax
	jz Load_GfxWorld_240
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x22c], eax
	mov edx, [varGfxWorld]
	mov ecx, [edx+0x22c]
	mov [varraw_uint], ecx
	mov eax, [edx+0xdc]
	sub eax, [edx+0xd8]
	shl eax, 0xc
	lea eax, [eax*4-0x4000]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_240:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0x230]
	test eax, eax
	jz Load_GfxWorld_250
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x230], eax
	mov edx, [varGfxWorld]
	mov ecx, [edx+0x230]
	mov [varraw_uint], ecx
	mov eax, [edx+0xdc]
	sub eax, [edx+0xd8]
	sub eax, 0x1
	imul eax, [edx+0x2b4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_250:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov eax, [ebx+0x234]
	test eax, eax
	jz Load_GfxWorld_260
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x234], eax
	mov edx, [varGfxWorld]
	mov ecx, [edx+0x234]
	mov [varraw_uint], ecx
	mov eax, [edx+0xdc]
	sub eax, [edx+0xd8]
	sub eax, 0x1
	imul eax, [edx+0x2b8]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_260:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorld]
	mov edi, [ebx+0x238]
	test edi, edi
	jz Load_GfxWorld_270
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x238], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x238]
	mov [varraw_byte], edx
	mov eax, [eax+0x2b4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorld_270:
	call DB_PopStreamPos
	mov ebx, [varGfxWorld]
	mov esi, [ebx+0x23c]
	test esi, esi
	jz Load_GfxWorld_280
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x23c], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x23c]
	mov [varGfxShadowGeometry], edx
	mov edi, [eax+0xdc]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxShadowGeometry]
	test edi, edi
	jg Load_GfxWorld_290
Load_GfxWorld_350:
	mov ebx, [varGfxWorld]
Load_GfxWorld_280:
	mov ecx, [ebx+0x240]
	test ecx, ecx
	jz Load_GfxWorld_300
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x240], eax
	mov eax, [varGfxWorld]
	mov edx, [eax+0x240]
	mov [varGfxLightRegion], edx
	mov edi, [eax+0xdc]
	lea eax, [edi*8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxLightRegion]
	test edi, edi
	jg Load_GfxWorld_310
Load_GfxWorld_330:
	mov ebx, [varGfxWorld]
Load_GfxWorld_300:
	lea eax, [ebx+0x244]
	mov [varGfxWorldDpvsStatic], eax
	mov dword [esp], 0x0
	call Load_GfxWorldDpvsStatic
	mov eax, [varGfxWorld]
	add eax, 0x2ac
	mov [varGfxWorldDpvsDynamic], eax
	mov dword [esp], 0x0
	call Load_GfxWorldDpvsDynamic
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxWorld_310:
	xor esi, esi
Load_GfxWorld_320:
	mov [varGfxLightRegion], ebx
	mov dword [esp], 0x0
	call Load_GfxLightRegion
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz Load_GfxWorld_320
	jmp Load_GfxWorld_330
Load_GfxWorld_290:
	xor esi, esi
Load_GfxWorld_340:
	mov [varGfxShadowGeometry], ebx
	mov dword [esp], 0x0
	call Load_GfxShadowGeometry
	add ebx, 0xc
	add esi, 0x1
	cmp edi, esi
	jnz Load_GfxWorld_340
	jmp Load_GfxWorld_350
Load_GfxWorld_100:
	xor esi, esi
Load_GfxWorld_360:
	mov [varGfxReflectionProbe], ebx
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varGfxReflectionProbe]
	add eax, 0xc
	mov [varGfxImagePtr], eax
	mov dword [esp], 0x0
	call Load_GfxImagePtr
	add ebx, 0x10
	add esi, 0x1
	cmp edi, esi
	jnz Load_GfxWorld_360
	jmp Load_GfxWorld_90
Load_GfxWorld_130:
	xor esi, esi
Load_GfxWorld_370:
	mov [varGfxCell], ebx
	mov dword [esp], 0x0
	call Load_GfxCell
	add ebx, 0x38
	add esi, 0x1
	cmp edi, esi
	jnz Load_GfxWorld_370
	jmp Load_GfxWorld_380
Load_GfxWorld_150:
	xor esi, esi
Load_GfxWorld_390:
	mov [varGfxLightmapArray], ebx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varGfxLightmapArray]
	mov [varGfxImagePtr], eax
	mov dword [esp], 0x0
	call Load_GfxImagePtr
	mov eax, [varGfxLightmapArray]
	add eax, 0x4
	mov [varGfxImagePtr], eax
	mov dword [esp], 0x0
	call Load_GfxImagePtr
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz Load_GfxWorld_390
	jmp Load_GfxWorld_400
Load_GfxWorld_200:
	xor esi, esi
Load_GfxWorld_410:
	mov [varMaterialMemory], ebx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varMaterialMemory]
	mov [varMaterialHandle], eax
	mov dword [esp], 0x0
	call Load_MaterialHandle
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz Load_GfxWorld_410
	jmp Load_GfxWorld_420
Load_GfxWorld_40:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_GfxWorld_30
Load_GfxWorld_80:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xc8], eax
	mov eax, [varGfxWorld]
	mov eax, [eax+0xc8]
	mov [varGfxLight], eax
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varGfxLight]
	add eax, 0x3c
	mov [varGfxLightDefPtr], eax
	mov dword [esp], 0x0
	call Load_GfxLightDefPtr
	mov ebx, [varGfxWorld]
	jmp Load_GfxWorld_70
Load_GfxWorld_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_GfxWorld_10


;Load_Material(unsigned char)
Load_Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x50
	mov eax, [varMaterial]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varMaterial]
	mov [varMaterialInfo], eax
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varMaterialInfo]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_Material_10
	add eax, 0x1
	jz Load_Material_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_Material_10:
	mov eax, [varMaterial]
	add eax, 0x40
	mov [varMaterialTechniqueSetPtr], eax
	mov dword [esp], 0x0
	call Load_MaterialTechniqueSetPtr
	mov ebx, [varMaterial]
	mov eax, [ebx+0x44]
	test eax, eax
	jz Load_Material_30
	add eax, 0x1
	jz Load_Material_40
	lea eax, [ebx+0x44]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varMaterial]
Load_Material_30:
	mov eax, [ebx+0x48]
	test eax, eax
	jz Load_Material_50
	add eax, 0x1
	jz Load_Material_60
	lea eax, [ebx+0x48]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varMaterial]
Load_Material_50:
	mov eax, [ebx+0x4c]
	test eax, eax
	jz Load_Material_70
	add eax, 0x1
	jz Load_Material_80
	lea eax, [ebx+0x4c]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_Material_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_Material_80:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4c], eax
	mov eax, [varMaterial]
	mov edx, [eax+0x4c]
	mov [varGfxStateBits], edx
	movzx eax, byte [eax+0x3c]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_Material_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_Material_10
Load_Material_40:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x44], eax
	mov eax, [varMaterial]
	mov edx, [eax+0x44]
	mov [varMaterialTextureDef], edx
	movzx edi, byte [eax+0x3a]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varMaterialTextureDef]
	test edi, edi
	jg Load_Material_90
Load_Material_110:
	mov ebx, [varMaterial]
	jmp Load_Material_30
Load_Material_60:
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x48], eax
	mov eax, [varMaterial]
	mov edx, [eax+0x48]
	mov [varMaterialConstantDef], edx
	movzx eax, byte [eax+0x3b]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varMaterial]
	jmp Load_Material_50
Load_Material_90:
	xor esi, esi
Load_Material_100:
	mov [varMaterialTextureDef], ebx
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varMaterialTextureDef]
	add eax, 0x8
	mov [varMaterialTextureDefInfo], eax
	mov dword [esp], 0x0
	call Load_MaterialTextureDefInfo
	add ebx, 0xc
	add esi, 0x1
	cmp edi, esi
	jnz Load_Material_100
	jmp Load_Material_110


;Load_MenuList(unsigned char)
Load_MenuList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0xc
	mov eax, [varMenuList]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varMenuList]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_MenuList_10
	add eax, 0x1
	jz Load_MenuList_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_MenuList_10:
	mov ebx, [varMenuList]
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_MenuList_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varMenuList]
	mov edx, [eax+0x8]
	mov [varmenuDef_ptr], edx
	mov edi, [eax+0x4]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varmenuDef_ptr]
	test edi, edi
	jg Load_MenuList_40
Load_MenuList_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_MenuList_40:
	xor esi, esi
Load_MenuList_50:
	mov [varmenuDef_ptr], ebx
	mov dword [esp], 0x0
	call Load_menuDef_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_MenuList_50
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_MenuList_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_MenuList_10
	nop


;Load_MssSound(unsigned char)
Load_MssSound:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x28
	mov eax, [varMssSound]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varMssSound]
	mov esi, [ebx+0x24]
	test esi, esi
	jz Load_MssSound_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_MssSound_20
	lea eax, [ebx+0x24]
	mov [esp], eax
	call DB_ConvertOffsetToAlias
Load_MssSound_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_MssSound_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov edx, [varMssSound]
	mov eax, [edx+0x24]
	mov [varbyte], eax
	cmp esi, 0xfffffffe
	jz Load_MssSound_30
	xor ebx, ebx
Load_MssSound_40:
	mov eax, [edx+0x8]
	mov [esp+0x8], eax
	mov eax, [varbyte]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varMssSound]
	mov [esp+0x4], eax
	add eax, 0x24
	mov [esp], eax
	call Load_SetSoundData
	test ebx, ebx
	jz Load_MssSound_10
	mov eax, [varMssSound]
	mov eax, [eax+0x24]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_MssSound_30:
	call DB_InsertPointer
	mov ebx, eax
	mov edx, [varMssSound]
	jmp Load_MssSound_40
	add [eax], al


;Load_PathData(unsigned char)
Load_PathData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x28
	mov eax, [varPathData]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varPathData]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_PathData_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varPathData]
	mov edx, [eax+0x4]
	mov [varpathnode_t], edx
	mov edi, [eax]
	mov eax, edi
	shl eax, 0x7
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varpathnode_t]
	test edi, edi
	jg Load_PathData_20
Load_PathData_10:
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varPathData]
	mov edi, [ebx+0x8]
	test edi, edi
	jz Load_PathData_30
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varPathData]
	mov edx, [eax+0x8]
	mov [varpathbasenode_t], edx
	mov eax, [eax]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_PathData_30:
	call DB_PopStreamPos
	mov ebx, [varPathData]
	mov esi, [ebx+0x10]
	test esi, esi
	jz Load_PathData_40
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x10], eax
	mov eax, [varPathData]
	mov edx, [eax+0x10]
	mov [varUnsignedShort], edx
	mov eax, [eax]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varPathData]
Load_PathData_40:
	mov ecx, [ebx+0x14]
	test ecx, ecx
	jz Load_PathData_50
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x14], eax
	mov eax, [varPathData]
	mov edx, [eax+0x14]
	mov [varUnsignedShort], edx
	mov eax, [eax]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varPathData]
Load_PathData_50:
	mov edx, [ebx+0x1c]
	test edx, edx
	jz Load_PathData_60
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov eax, [varPathData]
	mov edx, [eax+0x1c]
	mov [varbyte], edx
	mov eax, [eax+0x18]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varPathData]
Load_PathData_60:
	mov eax, [ebx+0x24]
	test eax, eax
	jz Load_PathData_70
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varPathData]
	mov edx, [eax+0x24]
	mov [varpathnode_tree_t], edx
	mov eax, [eax+0x20]
	mov [ebp-0x20], eax
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov edi, [varpathnode_tree_t]
	mov eax, [ebp-0x20]
	test eax, eax
	jg Load_PathData_80
Load_PathData_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_PathData_80:
	mov dword [ebp-0x1c], 0x0
Load_PathData_110:
	mov [varpathnode_tree_t], edi
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varpathnode_tree_t]
	lea edx, [eax+0x8]
	mov [varpathnode_tree_info_t], edx
	mov eax, [eax]
	test eax, eax
	js Load_PathData_90
	mov [varpathnode_tree_ptr], edx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varpathnode_tree_ptr]
	mov esi, 0x2
Load_PathData_100:
	mov [varpathnode_tree_ptr], ebx
	mov dword [esp], 0x0
	call Load_pathnode_tree_ptr
	add ebx, 0x4
	sub esi, 0x1
	jnz Load_PathData_100
Load_PathData_120:
	add edi, 0x10
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jnz Load_PathData_110
	jmp Load_PathData_70
Load_PathData_90:
	mov [varpathnode_tree_nodes_t], edx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varpathnode_tree_nodes_t]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_PathData_120
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varpathnode_tree_nodes_t]
	mov edx, [eax+0x4]
	mov [varushort], edx
	mov eax, [eax]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	add edi, 0x10
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jnz Load_PathData_110
	jmp Load_PathData_70
Load_PathData_20:
	xor esi, esi
Load_PathData_130:
	mov [varpathnode_t], ebx
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varpathnode_t]
	mov [varpathnode_constant_t], eax
	mov dword [esp], 0x0
	call Load_pathnode_constant_t
	sub ebx, 0xffffff80
	add esi, 0x1
	cmp edi, esi
	jnz Load_PathData_130
	jmp Load_PathData_10
	nop


;Load_XSurface(unsigned char)
Load_XSurface:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x38
	mov eax, [varXSurface]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varXSurface]
	add eax, 0x6
	mov [varXZoneHandle], eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varXZoneHandle]
	mov [varbyte], eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varXZoneHandle]
	mov [esp], eax
	call Load_GetCurrentZoneHandle
	mov eax, [varXSurface]
	add eax, 0x10
	mov [varXSurfaceVertexInfo], eax
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXSurfaceVertexInfo]
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_XSurface_10
	add eax, 0x1
	jz Load_XSurface_20
	lea eax, [ebx+0x8]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_XSurface_10:
	mov dword [esp], 0x7
	call DB_PushStreamPos
	mov ebx, [varXSurface]
	mov eax, [ebx+0x1c]
	test eax, eax
	jz Load_XSurface_30
	add eax, 0x1
	jz Load_XSurface_40
	lea eax, [ebx+0x1c]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_XSurface_30:
	call DB_PopStreamPos
	mov ebx, [varXSurface]
	mov eax, [ebx+0x24]
	test eax, eax
	jz Load_XSurface_50
	add eax, 0x1
	jz Load_XSurface_60
	lea eax, [ebx+0x24]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_XSurface_50:
	mov dword [esp], 0x8
	call DB_PushStreamPos
	mov ebx, [varXSurface]
	mov eax, [ebx+0xc]
	test eax, eax
	jz Load_XSurface_70
	add eax, 0x1
	jz Load_XSurface_80
	lea eax, [ebx+0xc]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_XSurface_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_XSurface_80:
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0xc], eax
	mov eax, [varXSurface]
	mov edx, [eax+0xc]
	mov [varr_index16_t], edx
	movzx eax, word [eax+0x4]
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_XSurface_20:
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov ebx, [varXSurfaceVertexInfo]
	mov esi, [ebx+0x8]
	mov [varXBlendInfo], esi
	movsx ecx, word [ebx]
	movsx edx, word [ebx+0x4]
	lea edx, [edx+edx*4]
	movsx eax, word [ebx+0x2]
	lea eax, [eax+eax*2]
	add edx, eax
	add ecx, edx
	movsx edx, word [ebx+0x6]
	lea eax, [edx*8]
	sub eax, edx
	add ecx, eax
	add ecx, ecx
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_XSurface_10
Load_XSurface_40:
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov eax, [varXSurface]
	mov edx, [eax+0x1c]
	mov [varGfxPackedVertex0], edx
	movzx eax, word [eax+0x2]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_XSurface_30
Load_XSurface_60:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varXSurface]
	mov edx, [eax+0x24]
	mov [varXRigidVertList], edx
	mov edi, [eax+0x20]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varXRigidVertList]
	test edi, edi
	jle Load_XSurface_50
	mov dword [ebp-0x1c], 0x0
	jmp Load_XSurface_90
Load_XSurface_110:
	lea eax, [ebx+0x8]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_XSurface_100:
	add esi, 0xc
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jz Load_XSurface_50
Load_XSurface_90:
	mov [varXRigidVertList], esi
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXRigidVertList]
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_XSurface_100
	add eax, 0x1
	jnz Load_XSurface_110
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varXRigidVertList]
	mov eax, [eax+0x8]
	mov [varXSurfaceCollisionTree], eax
	mov dword [esp], 0x1
	call Load_XSurfaceCollisionTree
	jmp Load_XSurface_100
	add [eax], al


;Load_cbrush_t(unsigned char)
Load_cbrush_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x50
	mov eax, [varcbrush_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varcbrush_t]
	mov eax, [ebx+0x20]
	test eax, eax
	jz Load_cbrush_t_10
	add eax, 0x1
	jz Load_cbrush_t_20
	lea eax, [ebx+0x20]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varcbrush_t]
Load_cbrush_t_10:
	mov eax, [ebx+0x30]
	test eax, eax
	jz Load_cbrush_t_30
	add eax, 0x1
	jz Load_cbrush_t_40
	lea eax, [ebx+0x30]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_cbrush_t_40:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x30], eax
	mov eax, [varcbrush_t]
	mov eax, [eax+0x30]
	mov [varcbrushedge_t], eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
Load_cbrush_t_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_cbrush_t_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x20], eax
	mov eax, [varcbrush_t]
	mov eax, [eax+0x20]
	mov [varcbrushside_t], eax
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varcbrushside_t]
	mov eax, [ebx]
	test eax, eax
	jz Load_cbrush_t_50
	add eax, 0x1
	jz Load_cbrush_t_60
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
	mov ebx, [varcbrush_t]
	jmp Load_cbrush_t_10
Load_cbrush_t_50:
	mov ebx, [varcbrush_t]
	jmp Load_cbrush_t_10
Load_cbrush_t_60:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varcbrushside_t]
	mov eax, [eax]
	mov [varcplane_t], eax
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varcbrush_t]
	jmp Load_cbrush_t_10
	nop
	add [eax], al


;Mark_GfxWorld()
Mark_GfxWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [varGfxWorld]
	lea eax, [edx+0x28]
	mov [varGfxImagePtr], eax
	mov eax, [edx+0x28]
	test eax, eax
	jz Mark_GfxWorld_10
	mov [varGfxImage], eax
	mov [esp], eax
	call Mark_GfxImageAsset
	mov edx, [varGfxWorld]
Mark_GfxWorld_10:
	mov ecx, [edx+0xc8]
	test ecx, ecx
	jz Mark_GfxWorld_20
	mov [varGfxLight], ecx
	lea eax, [ecx+0x3c]
	mov [varGfxLightDefPtr], eax
	mov eax, [ecx+0x3c]
	test eax, eax
	jz Mark_GfxWorld_20
	mov [varGfxLightDef], eax
	mov [esp], eax
	call Mark_LightDefAsset
	mov edx, [varGfxLightDef]
	lea eax, [edx+0x4]
	mov [varGfxLightImage], eax
	mov [varGfxImagePtr], eax
	mov eax, [edx+0x4]
	test eax, eax
	jz Mark_GfxWorld_30
	mov [varGfxImage], eax
	mov [esp], eax
	call Mark_GfxImageAsset
	mov edx, [varGfxWorld]
Mark_GfxWorld_20:
	mov ebx, [edx+0xe8]
	test ebx, ebx
	jz Mark_GfxWorld_40
	mov [varGfxReflectionProbe], ebx
	mov edi, [edx+0xe4]
	test edi, edi
	jle Mark_GfxWorld_40
	xor esi, esi
Mark_GfxWorld_60:
	mov [varGfxReflectionProbe], ebx
	lea eax, [ebx+0xc]
	mov [varGfxImagePtr], eax
	mov eax, [ebx+0xc]
	test eax, eax
	jz Mark_GfxWorld_50
	mov [varGfxImage], eax
	mov [esp], eax
	call Mark_GfxImageAsset
Mark_GfxWorld_50:
	add ebx, 0x10
	add esi, 0x1
	cmp edi, esi
	jnz Mark_GfxWorld_60
	mov edx, [varGfxWorld]
Mark_GfxWorld_40:
	mov ebx, [edx+0x10c]
	test ebx, ebx
	jz Mark_GfxWorld_70
	mov [varGfxLightmapArray], ebx
	mov edi, [edx+0x108]
	test edi, edi
	jg Mark_GfxWorld_80
Mark_GfxWorld_70:
	mov ebx, [edx+0x178]
	test ebx, ebx
	jz Mark_GfxWorld_90
	mov [varMaterialMemory], ebx
	mov edi, [edx+0x174]
	test edi, edi
	jg Mark_GfxWorld_100
Mark_GfxWorld_90:
	lea eax, [edx+0x17c]
	mov [varsunflare_t], eax
	lea eax, [edx+0x180]
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varsunflare_t]
	add eax, 0x8
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov edx, [varGfxWorld]
	lea eax, [edx+0x21c]
	mov [varGfxImagePtr], eax
	mov eax, [edx+0x21c]
	test eax, eax
	jz Mark_GfxWorld_110
	mov [varGfxImage], eax
	mov [esp], eax
	call Mark_GfxImageAsset
	mov edx, [varGfxWorld]
Mark_GfxWorld_110:
	lea eax, [edx+0x244]
	mov [varGfxWorldDpvsStatic], eax
	mov ebx, [eax+0x50]
	test ebx, ebx
	jz Mark_GfxWorld_120
	mov [varGfxSurface], ebx
	mov edi, [edx+0x18]
	test edi, edi
	jg Mark_GfxWorld_130
Mark_GfxWorld_230:
	mov eax, [varGfxWorldDpvsStatic]
Mark_GfxWorld_120:
	mov ebx, [eax+0x58]
	test ebx, ebx
	jz Mark_GfxWorld_140
	mov [varGfxStaticModelDrawInst], ebx
	mov edi, [eax]
	test edi, edi
	jg Mark_GfxWorld_150
Mark_GfxWorld_140:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_GfxWorld_80:
	xor esi, esi
	jmp Mark_GfxWorld_160
Mark_GfxWorld_190:
	mov [varGfxImage], eax
	mov [esp], eax
	call Mark_GfxImageAsset
	mov edx, [varGfxLightmapArray]
Mark_GfxWorld_200:
	lea eax, [edx+0x4]
	mov [varGfxImagePtr], eax
	mov eax, [edx+0x4]
	test eax, eax
	jz Mark_GfxWorld_170
	mov [varGfxImage], eax
	mov [esp], eax
	call Mark_GfxImageAsset
Mark_GfxWorld_170:
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jz Mark_GfxWorld_180
Mark_GfxWorld_160:
	mov [varGfxLightmapArray], ebx
	mov [varGfxImagePtr], ebx
	mov eax, [ebx]
	test eax, eax
	jnz Mark_GfxWorld_190
	mov edx, ebx
	jmp Mark_GfxWorld_200
Mark_GfxWorld_180:
	mov edx, [varGfxWorld]
	jmp Mark_GfxWorld_70
Mark_GfxWorld_150:
	xor esi, esi
Mark_GfxWorld_210:
	mov [varGfxStaticModelDrawInst], ebx
	lea eax, [ebx+0x38]
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	add ebx, 0x4c
	add esi, 0x1
	cmp edi, esi
	jnz Mark_GfxWorld_210
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_GfxWorld_130:
	xor esi, esi
Mark_GfxWorld_220:
	mov [varGfxSurface], ebx
	lea eax, [ebx+0x10]
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	add ebx, 0x30
	add esi, 0x1
	cmp edi, esi
	jnz Mark_GfxWorld_220
	jmp Mark_GfxWorld_230
Mark_GfxWorld_100:
	xor esi, esi
Mark_GfxWorld_240:
	mov [varMaterialMemory], ebx
	mov [varMaterialHandle], ebx
	call Mark_MaterialHandle
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz Mark_GfxWorld_240
	mov edx, [varGfxWorld]
	jmp Mark_GfxWorld_90
Mark_GfxWorld_30:
	mov edx, [varGfxWorld]
	jmp Mark_GfxWorld_20
	add [eax], al


;Load_FxElemDef(unsigned char)
Load_FxElemDef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0xfc
	mov eax, [varFxElemDef]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varFxElemDef]
	mov eax, [ebx+0xb4]
	test eax, eax
	jz Load_FxElemDef_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xb4], eax
	mov eax, [varFxElemDef]
	mov edx, [eax+0xb4]
	mov [varFxElemVelStateSample], edx
	movzx eax, byte [eax+0xb2]
	lea eax, [eax+eax*2+0x3]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varFxElemDef]
Load_FxElemDef_10:
	mov eax, [ebx+0xb8]
	test eax, eax
	jz Load_FxElemDef_20
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xb8], eax
	mov eax, [varFxElemDef]
	mov edx, [eax+0xb8]
	mov [varFxElemVisStateSample], edx
	movzx eax, byte [eax+0xb3]
	lea eax, [eax+eax*2+0x3]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varFxElemDef]
Load_FxElemDef_20:
	lea eax, [ebx+0xbc]
	mov [varFxElemDefVisuals], eax
	mov dword [esp], 0x0
	call Load_FxElemDefVisuals
	mov eax, [varFxElemDef]
	add eax, 0xd8
	mov [varFxEffectDefRef], eax
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxElemDef_30
	add eax, 0x1
	jz Load_FxElemDef_40
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_FxElemDef_30:
	mov eax, [varFxEffectDefRef]
	mov [esp], eax
	call Load_FxEffectDefFromName
	mov eax, [varFxElemDef]
	add eax, 0xdc
	mov [varFxEffectDefRef], eax
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxElemDef_50
	add eax, 0x1
	jz Load_FxElemDef_60
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_FxElemDef_50:
	mov eax, [varFxEffectDefRef]
	mov [esp], eax
	call Load_FxEffectDefFromName
	mov eax, [varFxElemDef]
	add eax, 0xe0
	mov [varFxEffectDefRef], eax
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxElemDef_70
	add eax, 0x1
	jz Load_FxElemDef_80
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_FxElemDef_70:
	mov eax, [varFxEffectDefRef]
	mov [esp], eax
	call Load_FxEffectDefFromName
	mov ebx, [varFxElemDef]
	mov ecx, [ebx+0xf4]
	test ecx, ecx
	jz Load_FxElemDef_90
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xf4], eax
	mov eax, [varFxElemDef]
	mov eax, [eax+0xf4]
	mov [varFxTrailDef], eax
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_FxTrailDef
Load_FxElemDef_90:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_FxElemDef_80:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_FxElemDef_70
Load_FxElemDef_40:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_FxElemDef_30
Load_FxElemDef_60:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_FxElemDef_50
	nop
	add [eax], al


;Load_GfxPortal(unsigned char)
Load_GfxPortal:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x44
	mov eax, [varGfxPortal]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varGfxPortal]
	mov eax, [ebx+0x20]
	test eax, eax
	jz Load_GfxPortal_10
	add eax, 0x1
	jz Load_GfxPortal_20
	lea eax, [ebx+0x20]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varGfxPortal]
Load_GfxPortal_10:
	mov ecx, [ebx+0x24]
	test ecx, ecx
	jz Load_GfxPortal_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varGfxPortal]
	mov edx, [eax+0x24]
	mov [varvec3_t], edx
	movzx eax, byte [eax+0x28]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxPortal_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_GfxPortal_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x20], eax
	mov eax, [varGfxPortal]
	mov eax, [eax+0x20]
	mov [varGfxCell], eax
	mov dword [esp], 0x1
	call Load_GfxCell
	mov ebx, [varGfxPortal]
	jmp Load_GfxPortal_10
	nop



;Load_XModelPtr(unsigned char)
Load_XModelPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varXModelPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varXModelPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_XModelPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_XModelPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_XModelPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_XModelPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varXModelPtr]
	mov eax, [eax]
	mov [varXModel], eax
	cmp esi, 0xfffffffe
	jz Load_XModelPtr_30
	xor ebx, ebx
Load_XModelPtr_40:
	mov dword [esp], 0x1
	call Load_XModel
	mov eax, [varXModelPtr]
	mov [esp], eax
	call Load_XModelAsset
	test ebx, ebx
	jz Load_XModelPtr_10
	mov eax, [varXModelPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_XModelPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_XModelPtr_40
	nop


;Load_clipMap_t(unsigned char)
Load_clipMap_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x11c
	mov eax, [varclipMap_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varclipMap_t]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_clipMap_t_10
	add eax, 0x1
	jz Load_clipMap_t_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_clipMap_t_10:
	mov ebx, [varclipMap_t]
	mov eax, [ebx+0xc]
	test eax, eax
	jz Load_clipMap_t_30
	add eax, 0x1
	jz Load_clipMap_t_40
	lea eax, [ebx+0xc]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varclipMap_t]
Load_clipMap_t_30:
	mov edi, [ebx+0x14]
	test edi, edi
	jz Load_clipMap_t_50
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x14], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x14]
	mov [varcStaticModel_t], edx
	mov edi, [eax+0x10]
	lea eax, [edi+edi*4]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varcStaticModel_t]
	test edi, edi
	jg Load_clipMap_t_60
Load_clipMap_t_430:
	mov ebx, [varclipMap_t]
Load_clipMap_t_50:
	mov esi, [ebx+0x1c]
	test esi, esi
	jz Load_clipMap_t_70
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x1c]
	mov [vardmaterial_t], edx
	mov eax, [eax+0x18]
	lea eax, [eax+eax*8]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_70:
	mov ecx, [ebx+0x24]
	test ecx, ecx
	jz Load_clipMap_t_80
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x24]
	mov [varcbrushside_t], edx
	mov edi, [eax+0x20]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varcbrushside_t]
	test edi, edi
	jg Load_clipMap_t_90
Load_clipMap_t_450:
	mov ebx, [varclipMap_t]
Load_clipMap_t_80:
	mov edx, [ebx+0x2c]
	test edx, edx
	jz Load_clipMap_t_100
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x2c], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x2c]
	mov [varcbrushedge_t], edx
	mov eax, [eax+0x28]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_100:
	mov eax, [ebx+0x34]
	test eax, eax
	jz Load_clipMap_t_110
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x34], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x34]
	mov [varcNode_t], edx
	mov edi, [eax+0x30]
	lea eax, [edi*8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varcNode_t]
	test edi, edi
	jg Load_clipMap_t_120
Load_clipMap_t_490:
	mov ebx, [varclipMap_t]
Load_clipMap_t_110:
	mov eax, [ebx+0x3c]
	test eax, eax
	jz Load_clipMap_t_130
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x3c], eax
	mov eax, [varclipMap_t]
	mov ecx, [eax+0x3c]
	mov [varcLeaf_t], ecx
	mov eax, [eax+0x38]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_130:
	mov eax, [ebx+0x4c]
	test eax, eax
	jz Load_clipMap_t_140
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x4c], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x4c]
	mov [varLeafBrush], edx
	mov eax, [eax+0x48]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_140:
	mov eax, [ebx+0x44]
	test eax, eax
	jz Load_clipMap_t_150
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x44], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x44]
	mov [varcLeafBrushNode_t], edx
	mov edi, [eax+0x40]
	lea eax, [edi+edi*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varcLeafBrushNode_t]
	test edi, edi
	jg Load_clipMap_t_160
Load_clipMap_t_550:
	mov ebx, [varclipMap_t]
Load_clipMap_t_150:
	mov eax, [ebx+0x54]
	test eax, eax
	jz Load_clipMap_t_170
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x54], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x54]
	mov [varuint], edx
	mov eax, [eax+0x50]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_170:
	mov eax, [ebx+0x5c]
	test eax, eax
	jz Load_clipMap_t_180
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x5c], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x5c]
	mov [varvec3_t], edx
	mov eax, [eax+0x58]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_180:
	mov edi, [ebx+0x64]
	test edi, edi
	jz Load_clipMap_t_190
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x64], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x64]
	mov [varUnsignedShort], edx
	mov eax, [eax+0x60]
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_190:
	mov esi, [ebx+0x68]
	test esi, esi
	jz Load_clipMap_t_200
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x68], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x68]
	mov [varbyte], edx
	mov eax, [eax+0x60]
	lea eax, [eax+eax*2+0x1f]
	sar eax, 0x5
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_200:
	mov ecx, [ebx+0x70]
	test ecx, ecx
	jz Load_clipMap_t_210
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x70], eax
	mov eax, [varclipMap_t]
	mov ecx, [eax+0x70]
	mov [varCollisionBorder], ecx
	mov eax, [eax+0x6c]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_210:
	mov edx, [ebx+0x78]
	test edx, edx
	jz Load_clipMap_t_220
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x78], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x78]
	mov [varCollisionPartition], edx
	mov edi, [eax+0x74]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varCollisionPartition]
	test edi, edi
	jg Load_clipMap_t_230
Load_clipMap_t_570:
	mov ebx, [varclipMap_t]
Load_clipMap_t_220:
	mov eax, [ebx+0x80]
	test eax, eax
	jz Load_clipMap_t_240
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x80], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x80]
	mov [varCollisionAabbTree], edx
	mov eax, [eax+0x7c]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_240:
	mov eax, [ebx+0x88]
	test eax, eax
	jz Load_clipMap_t_250
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x88], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x88]
	mov [varcmodel_t], edx
	mov eax, [eax+0x84]
	lea eax, [eax+eax*8]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_250:
	mov eax, [ebx+0x90]
	test eax, eax
	jz Load_clipMap_t_260
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x90], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x90]
	mov [varcbrush_t], edx
	movzx edi, word [eax+0x8c]
	lea eax, [edi+edi*4]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varcbrush_t]
	test edi, edi
	jg Load_clipMap_t_270
Load_clipMap_t_610:
	mov ebx, [varclipMap_t]
Load_clipMap_t_260:
	mov eax, [ebx+0x9c]
	test eax, eax
	jz Load_clipMap_t_280
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x9c], eax
	mov edx, [varclipMap_t]
	mov ecx, [edx+0x9c]
	mov [varbyte], ecx
	mov eax, [edx+0x98]
	imul eax, [edx+0x94]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
Load_clipMap_t_280:
	lea eax, [ebx+0xa4]
	mov [varMapEntsPtr], eax
	mov dword [esp], 0x0
	call Load_MapEntsPtr
	mov ebx, [varclipMap_t]
	mov eax, [ebx+0xa8]
	test eax, eax
	jz Load_clipMap_t_290
	add eax, 0x1
	jz Load_clipMap_t_300
	lea eax, [ebx+0xa8]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varclipMap_t]
Load_clipMap_t_290:
	mov eax, [ebx+0xf8]
	test eax, eax
	jz Load_clipMap_t_310
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xf8], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0xf8]
	mov [varDynEntityDef], edx
	movzx edi, word [eax+0xf4]
	lea eax, [edi+edi*2]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varDynEntityDef]
	test edi, edi
	jg Load_clipMap_t_320
Load_clipMap_t_630:
	mov ebx, [varclipMap_t]
Load_clipMap_t_310:
	mov eax, [ebx+0xfc]
	test eax, eax
	jz Load_clipMap_t_330
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xfc], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0xfc]
	mov [varDynEntityDef], edx
	movzx edi, word [eax+0xf6]
	lea eax, [edi+edi*2]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varDynEntityDef]
	test edi, edi
	jg Load_clipMap_t_340
Load_clipMap_t_330:
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varclipMap_t]
	mov edi, [ebx+0x100]
	test edi, edi
	jz Load_clipMap_t_350
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x100], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x100]
	mov [varDynEntityPose], edx
	movzx eax, word [eax+0xf4]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_clipMap_t_350:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varclipMap_t]
	mov esi, [ebx+0x104]
	test esi, esi
	jz Load_clipMap_t_360
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x104], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x104]
	mov [varDynEntityPose], edx
	movzx eax, word [eax+0xf6]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_clipMap_t_360:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varclipMap_t]
	mov ecx, [ebx+0x108]
	test ecx, ecx
	jz Load_clipMap_t_370
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x108], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x108]
	mov [varDynEntityClient], edx
	movzx eax, word [eax+0xf4]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_clipMap_t_370:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varclipMap_t]
	mov edx, [ebx+0x10c]
	test edx, edx
	jz Load_clipMap_t_380
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x10c], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x10c]
	mov [varDynEntityClient], edx
	movzx eax, word [eax+0xf6]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_clipMap_t_380:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varclipMap_t]
	mov eax, [ebx+0x110]
	test eax, eax
	jz Load_clipMap_t_390
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x110], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x110]
	mov [varDynEntityColl], edx
	movzx eax, word [eax+0xf4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_clipMap_t_390:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varclipMap_t]
	mov eax, [ebx+0x114]
	test eax, eax
	jz Load_clipMap_t_400
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x114], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0x114]
	mov [varDynEntityColl], edx
	movzx eax, word [eax+0xf6]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_clipMap_t_400:
	call DB_PopStreamPos
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_clipMap_t_340:
	xor esi, esi
Load_clipMap_t_410:
	mov [varDynEntityDef], ebx
	mov dword [esp], 0x0
	call Load_DynEntityDef
	add ebx, 0x60
	add esi, 0x1
	cmp edi, esi
	jnz Load_clipMap_t_410
	jmp Load_clipMap_t_330
Load_clipMap_t_60:
	xor esi, esi
Load_clipMap_t_420:
	mov [varcStaticModel_t], ebx
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varcStaticModel_t]
	add eax, 0x4
	mov [varXModelPtr], eax
	mov dword [esp], 0x0
	call Load_XModelPtr
	add ebx, 0x50
	add esi, 0x1
	cmp edi, esi
	jnz Load_clipMap_t_420
	jmp Load_clipMap_t_430
Load_clipMap_t_90:
	mov dword [ebp-0x28], 0x0
	jmp Load_clipMap_t_440
Load_clipMap_t_470:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_clipMap_t_460:
	add esi, 0xc
	add dword [ebp-0x28], 0x1
	cmp edi, [ebp-0x28]
	jz Load_clipMap_t_450
Load_clipMap_t_440:
	mov [varcbrushside_t], esi
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varcbrushside_t]
	mov eax, [ebx]
	test eax, eax
	jz Load_clipMap_t_460
	add eax, 0x1
	jnz Load_clipMap_t_470
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varcbrushside_t]
	mov eax, [eax]
	mov [varcplane_t], eax
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_clipMap_t_460
Load_clipMap_t_120:
	mov dword [ebp-0x24], 0x0
	jmp Load_clipMap_t_480
Load_clipMap_t_510:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_clipMap_t_500:
	add esi, 0x8
	add dword [ebp-0x24], 0x1
	cmp edi, [ebp-0x24]
	jz Load_clipMap_t_490
Load_clipMap_t_480:
	mov [varcNode_t], esi
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varcNode_t]
	mov eax, [ebx]
	test eax, eax
	jz Load_clipMap_t_500
	add eax, 0x1
	jnz Load_clipMap_t_510
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varcNode_t]
	mov eax, [eax]
	mov [varcplane_t], eax
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_clipMap_t_500
Load_clipMap_t_160:
	mov dword [ebp-0x20], 0x0
Load_clipMap_t_540:
	mov [varcLeafBrushNode_t], esi
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varcLeafBrushNode_t]
	lea edx, [eax+0x8]
	mov [varcLeafBrushNodeData_t], edx
	cmp word [eax+0x2], 0x0
	jle Load_clipMap_t_520
	mov [varcLeafBrushNodeLeaf_t], edx
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varcLeafBrushNodeLeaf_t]
	mov eax, [ebx]
	test eax, eax
	jz Load_clipMap_t_520
	add eax, 0x1
	jz Load_clipMap_t_530
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_clipMap_t_520:
	add esi, 0x14
	add dword [ebp-0x20], 0x1
	cmp edi, [ebp-0x20]
	jnz Load_clipMap_t_540
	jmp Load_clipMap_t_550
Load_clipMap_t_230:
	mov dword [ebp-0x1c], 0x0
	jmp Load_clipMap_t_560
Load_clipMap_t_590:
	lea eax, [ebx+0x8]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_clipMap_t_580:
	add esi, 0xc
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jz Load_clipMap_t_570
Load_clipMap_t_560:
	mov [varCollisionPartition], esi
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varCollisionPartition]
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_clipMap_t_580
	add eax, 0x1
	jnz Load_clipMap_t_590
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varCollisionPartition]
	mov eax, [eax+0x8]
	mov [varCollisionBorder], eax
	mov dword [esp+0x8], 0x1c
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_clipMap_t_580
Load_clipMap_t_270:
	xor esi, esi
Load_clipMap_t_600:
	mov [varcbrush_t], ebx
	mov dword [esp], 0x0
	call Load_cbrush_t
	add ebx, 0x50
	add esi, 0x1
	cmp edi, esi
	jnz Load_clipMap_t_600
	jmp Load_clipMap_t_610
Load_clipMap_t_320:
	xor esi, esi
Load_clipMap_t_620:
	mov [varDynEntityDef], ebx
	mov dword [esp], 0x0
	call Load_DynEntityDef
	add ebx, 0x60
	add esi, 0x1
	cmp edi, esi
	jnz Load_clipMap_t_620
	jmp Load_clipMap_t_630
Load_clipMap_t_530:
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varcLeafBrushNodeLeaf_t]
	mov edx, [eax]
	mov [varLeafBrush], edx
	mov eax, [varcLeafBrushNode_t]
	movsx eax, word [eax+0x2]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_clipMap_t_520
Load_clipMap_t_300:
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0xa8], eax
	mov eax, [varclipMap_t]
	mov eax, [eax+0xa8]
	mov [varcbrush_t], eax
	mov dword [esp], 0x1
	call Load_cbrush_t
	mov ebx, [varclipMap_t]
	jmp Load_clipMap_t_290
Load_clipMap_t_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_clipMap_t_10
Load_clipMap_t_40:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xc], eax
	mov eax, [varclipMap_t]
	mov edx, [eax+0xc]
	mov [varcplane_t], edx
	mov eax, [eax+0x8]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varclipMap_t]
	jmp Load_clipMap_t_30
	nop


;Load_itemDef_t(unsigned char)
Load_itemDef_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x174
	mov eax, [varitemDef_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varitemDef_t]
	mov [varWindow], eax
	mov dword [esp+0x8], 0x9c
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varWindow]
	mov [varwindowDef_t], eax
	mov dword [esp+0x8], 0x9c
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varwindowDef_t]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_10
	add eax, 0x1
	jz Load_itemDef_t_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_10:
	mov eax, [varwindowDef_t]
	add eax, 0x34
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_30
	add eax, 0x1
	jz Load_itemDef_t_40
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_30:
	mov eax, [varwindowDef_t]
	add eax, 0x98
	mov [varMaterialHandle], eax
	mov dword [esp], 0x0
	call Load_MaterialHandle
	mov eax, [varitemDef_t]
	add eax, 0xe0
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_50
	add eax, 0x1
	jz Load_itemDef_t_60
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_50:
	mov eax, [varitemDef_t]
	add eax, 0xec
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_70
	add eax, 0x1
	jz Load_itemDef_t_80
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_70:
	mov eax, [varitemDef_t]
	add eax, 0xf0
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_90
	add eax, 0x1
	jz Load_itemDef_t_100
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_90:
	mov eax, [varitemDef_t]
	add eax, 0xf4
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_110
	add eax, 0x1
	jz Load_itemDef_t_120
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_110:
	mov eax, [varitemDef_t]
	add eax, 0xf8
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_130
	add eax, 0x1
	jz Load_itemDef_t_140
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_130:
	mov eax, [varitemDef_t]
	add eax, 0xfc
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_150
	add eax, 0x1
	jz Load_itemDef_t_160
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_150:
	mov eax, [varitemDef_t]
	add eax, 0x100
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_170
	add eax, 0x1
	jz Load_itemDef_t_180
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_170:
	mov eax, [varitemDef_t]
	add eax, 0x104
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_190
	add eax, 0x1
	jz Load_itemDef_t_200
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_190:
	mov eax, [varitemDef_t]
	add eax, 0x108
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_210
	add eax, 0x1
	jz Load_itemDef_t_220
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_210:
	mov eax, [varitemDef_t]
	add eax, 0x10c
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_230
	add eax, 0x1
	jz Load_itemDef_t_240
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_230:
	mov eax, [varitemDef_t]
	add eax, 0x110
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_250
	add eax, 0x1
	jz Load_itemDef_t_260
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_250:
	mov ebx, [varitemDef_t]
	mov eax, [ebx+0x114]
	test eax, eax
	jz Load_itemDef_t_270
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x114], eax
	mov eax, [varitemDef_t]
	mov eax, [eax+0x114]
	mov [varItemKeyHandler], eax
	mov dword [esp], 0x1
	call Load_ItemKeyHandler
	mov ebx, [varitemDef_t]
Load_itemDef_t_270:
	lea eax, [ebx+0x118]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDef_t_280
	add eax, 0x1
	jz Load_itemDef_t_290
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_itemDef_t_280:
	mov eax, [varitemDef_t]
	add eax, 0x120
	mov [varsnd_alias_list_ptr], eax
	mov dword [esp], 0x0
	call Load_snd_alias_list_ptr
	mov eax, [varitemDef_t]
	add eax, 0x12c
	mov [varitemDefData_t], eax
	mov dword [esp], 0x0
	call Load_itemDefData_t
	mov eax, [varitemDef_t]
	add eax, 0x134
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_itemDef_t_300
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_itemDef_t_310
Load_itemDef_t_300:
	mov eax, [varitemDef_t]
	add eax, 0x13c
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_itemDef_t_320
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_itemDef_t_330
Load_itemDef_t_320:
	mov eax, [varitemDef_t]
	add eax, 0x144
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov edi, [ebx+0x4]
	test edi, edi
	jz Load_itemDef_t_340
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_itemDef_t_350
Load_itemDef_t_340:
	mov eax, [varitemDef_t]
	add eax, 0x14c
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov esi, [ebx+0x4]
	test esi, esi
	jz Load_itemDef_t_360
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_itemDef_t_370
Load_itemDef_t_360:
	mov eax, [varitemDef_t]
	add eax, 0x154
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov ecx, [ebx+0x4]
	test ecx, ecx
	jz Load_itemDef_t_380
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_itemDef_t_390
Load_itemDef_t_380:
	mov eax, [varitemDef_t]
	add eax, 0x15c
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov edx, [ebx+0x4]
	test edx, edx
	jz Load_itemDef_t_400
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_itemDef_t_410
Load_itemDef_t_400:
	mov eax, [varitemDef_t]
	add eax, 0x164
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_itemDef_t_420
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_itemDef_t_430
Load_itemDef_t_420:
	mov eax, [varitemDef_t]
	add eax, 0x16c
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_itemDef_t_440
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_itemDef_t_450
Load_itemDef_t_440:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_itemDef_t_450:
	xor esi, esi
Load_itemDef_t_460:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_itemDef_t_460
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_itemDef_t_430:
	xor esi, esi
Load_itemDef_t_470:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_itemDef_t_470
	jmp Load_itemDef_t_420
Load_itemDef_t_310:
	xor esi, esi
Load_itemDef_t_480:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_itemDef_t_480
	jmp Load_itemDef_t_300
Load_itemDef_t_330:
	xor esi, esi
Load_itemDef_t_490:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_itemDef_t_490
	jmp Load_itemDef_t_320
Load_itemDef_t_350:
	xor esi, esi
Load_itemDef_t_500:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_itemDef_t_500
	jmp Load_itemDef_t_340
Load_itemDef_t_370:
	xor esi, esi
Load_itemDef_t_510:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_itemDef_t_510
	jmp Load_itemDef_t_360
Load_itemDef_t_390:
	xor esi, esi
Load_itemDef_t_520:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_itemDef_t_520
	jmp Load_itemDef_t_380
Load_itemDef_t_410:
	xor esi, esi
Load_itemDef_t_530:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_itemDef_t_530
	jmp Load_itemDef_t_400
Load_itemDef_t_240:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_230
Load_itemDef_t_260:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_250
Load_itemDef_t_80:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_70
Load_itemDef_t_100:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_90
Load_itemDef_t_120:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_110
Load_itemDef_t_140:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_130
Load_itemDef_t_40:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_30
Load_itemDef_t_60:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_50
Load_itemDef_t_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_10
Load_itemDef_t_290:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_280
Load_itemDef_t_160:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_150
Load_itemDef_t_180:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_170
Load_itemDef_t_200:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_190
Load_itemDef_t_220:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_itemDef_t_210
	nop


;Load_menuDef_t(unsigned char)
Load_menuDef_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x11c
	mov eax, [varmenuDef_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varmenuDef_t]
	mov [varWindow], eax
	mov dword [esp+0x8], 0x9c
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varWindow]
	mov [varwindowDef_t], eax
	mov dword [esp+0x8], 0x9c
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varwindowDef_t]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_menuDef_t_10
	add eax, 0x1
	jz Load_menuDef_t_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_menuDef_t_10:
	mov eax, [varwindowDef_t]
	add eax, 0x34
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_menuDef_t_30
	add eax, 0x1
	jz Load_menuDef_t_40
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_menuDef_t_30:
	mov eax, [varwindowDef_t]
	add eax, 0x98
	mov [varMaterialHandle], eax
	mov dword [esp], 0x0
	call Load_MaterialHandle
	mov eax, [varmenuDef_t]
	add eax, 0x9c
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_menuDef_t_50
	add eax, 0x1
	jz Load_menuDef_t_60
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_menuDef_t_50:
	mov eax, [varmenuDef_t]
	add eax, 0xc4
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_menuDef_t_70
	add eax, 0x1
	jz Load_menuDef_t_80
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_menuDef_t_70:
	mov eax, [varmenuDef_t]
	add eax, 0xc8
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_menuDef_t_90
	add eax, 0x1
	jz Load_menuDef_t_100
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_menuDef_t_90:
	mov eax, [varmenuDef_t]
	add eax, 0xcc
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_menuDef_t_110
	add eax, 0x1
	jz Load_menuDef_t_120
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_menuDef_t_110:
	mov ebx, [varmenuDef_t]
	mov eax, [ebx+0xd0]
	test eax, eax
	jz Load_menuDef_t_130
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xd0], eax
	mov eax, [varmenuDef_t]
	mov eax, [eax+0xd0]
	mov [varItemKeyHandler], eax
	mov dword [esp], 0x1
	call Load_ItemKeyHandler
	mov ebx, [varmenuDef_t]
Load_menuDef_t_130:
	lea eax, [ebx+0xd4]
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_menuDef_t_140
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_menuDef_t_150
Load_menuDef_t_140:
	mov eax, [varmenuDef_t]
	add eax, 0xdc
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_menuDef_t_160
	add eax, 0x1
	jz Load_menuDef_t_170
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_menuDef_t_160:
	mov eax, [varmenuDef_t]
	add eax, 0xe0
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_menuDef_t_180
	add eax, 0x1
	jz Load_menuDef_t_190
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_menuDef_t_180:
	mov eax, [varmenuDef_t]
	add eax, 0x108
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_menuDef_t_200
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_menuDef_t_210
Load_menuDef_t_200:
	mov eax, [varmenuDef_t]
	add eax, 0x110
	mov [varstatement], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varstatement]
	mov edi, [ebx+0x4]
	test edi, edi
	jz Load_menuDef_t_220
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varstatement]
	mov edx, [eax+0x4]
	mov [varexpressionEntry_ptr], edx
	mov edi, [eax]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	test edi, edi
	jg Load_menuDef_t_230
Load_menuDef_t_220:
	mov ebx, [varmenuDef_t]
	mov esi, [ebx+0x118]
	test esi, esi
	jz Load_menuDef_t_240
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x118], eax
	mov eax, [varmenuDef_t]
	mov edx, [eax+0x118]
	mov [varitemDef_ptr], edx
	mov edi, [eax+0xa4]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varitemDef_ptr]
	test edi, edi
	jg Load_menuDef_t_250
Load_menuDef_t_240:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_menuDef_t_250:
	mov dword [ebp-0x1c], 0x0
Load_menuDef_t_270:
	mov [varitemDef_ptr], esi
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varitemDef_ptr]
	mov ecx, [ebx]
	test ecx, ecx
	jz Load_menuDef_t_260
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varitemDef_ptr]
	mov eax, [eax]
	mov [varitemDef_t], eax
	mov dword [esp], 0x1
	call Load_itemDef_t
Load_menuDef_t_260:
	add esi, 0x4
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jnz Load_menuDef_t_270
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_menuDef_t_230:
	xor esi, esi
Load_menuDef_t_280:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_menuDef_t_280
	jmp Load_menuDef_t_220
Load_menuDef_t_150:
	xor esi, esi
Load_menuDef_t_290:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_menuDef_t_290
	jmp Load_menuDef_t_140
Load_menuDef_t_210:
	xor esi, esi
Load_menuDef_t_300:
	mov [varexpressionEntry_ptr], ebx
	mov dword [esp], 0x0
	call Load_expressionEntry_ptr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_menuDef_t_300
	jmp Load_menuDef_t_200
Load_menuDef_t_80:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_menuDef_t_70
Load_menuDef_t_100:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_menuDef_t_90
Load_menuDef_t_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_menuDef_t_10
Load_menuDef_t_120:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_menuDef_t_110
Load_menuDef_t_170:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_menuDef_t_160
Load_menuDef_t_190:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_menuDef_t_180
Load_menuDef_t_40:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_menuDef_t_30
Load_menuDef_t_60:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_menuDef_t_50


;Mark_WeaponDef()
Mark_WeaponDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [varWeaponDef]
	add ebx, 0xc
	mov [varXModelPtr], ebx
	xor esi, esi
Mark_WeaponDef_10:
	mov [varXModelPtr], ebx
	call Mark_XModelPtr
	add ebx, 0x4
	add esi, 0x1
	cmp esi, 0x10
	jnz Mark_WeaponDef_10
	mov eax, [varWeaponDef]
	add eax, 0x4c
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	mov ebx, [varWeaponDef]
	add ebx, 0xd8
	mov [varScriptString], ebx
	mov si, 0x8
Mark_WeaponDef_20:
	mov [varScriptString], ebx
	mov [esp], ebx
	call Mark_ScriptStringCustom
	add ebx, 0x2
	sub esi, 0x1
	jnz Mark_WeaponDef_20
	mov ebx, [varWeaponDef]
	add ebx, 0xe8
	mov [varScriptString], ebx
	mov esi, 0x10
Mark_WeaponDef_30:
	mov [varScriptString], ebx
	mov [esp], ebx
	call Mark_ScriptStringCustom
	add ebx, 0x2
	sub esi, 0x1
	jnz Mark_WeaponDef_30
	mov ebx, [varWeaponDef]
	add ebx, 0x108
	mov [varScriptString], ebx
	mov esi, 0x10
Mark_WeaponDef_40:
	mov [varScriptString], ebx
	mov [esp], ebx
	call Mark_ScriptStringCustom
	add ebx, 0x2
	sub esi, 0x1
	jnz Mark_WeaponDef_40
	mov eax, [varWeaponDef]
	add eax, 0x14c
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x150
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov edx, [varWeaponDef]
	lea eax, [edx+0x154]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x154]
	test eax, eax
	jz Mark_WeaponDef_50
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_60
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_60
	xor esi, esi
	jmp Mark_WeaponDef_70
Mark_WeaponDef_100:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_110:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_80
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_80:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_60
Mark_WeaponDef_70:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_90
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_100
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_100
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_110
Mark_WeaponDef_60:
	mov edx, [varWeaponDef]
Mark_WeaponDef_50:
	lea eax, [edx+0x158]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x158]
	test eax, eax
	jz Mark_WeaponDef_120
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_130
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_130
	xor esi, esi
	jmp Mark_WeaponDef_140
Mark_WeaponDef_170:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_180:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_150
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_150:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_130
Mark_WeaponDef_140:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_160
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_170
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_170
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_180
Mark_WeaponDef_130:
	mov edx, [varWeaponDef]
Mark_WeaponDef_120:
	lea eax, [edx+0x15c]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x15c]
	test eax, eax
	jz Mark_WeaponDef_190
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_200
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_200
	xor esi, esi
	jmp Mark_WeaponDef_210
Mark_WeaponDef_240:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_250:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_220
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_220:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_200
Mark_WeaponDef_210:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_230
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_240
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_240
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_250
Mark_WeaponDef_200:
	mov edx, [varWeaponDef]
Mark_WeaponDef_190:
	lea eax, [edx+0x160]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x160]
	test eax, eax
	jz Mark_WeaponDef_260
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_270
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_270
	xor esi, esi
	jmp Mark_WeaponDef_280
Mark_WeaponDef_310:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_320:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_290
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_290:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_270
Mark_WeaponDef_280:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_300
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_310
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_310
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_320
Mark_WeaponDef_270:
	mov edx, [varWeaponDef]
Mark_WeaponDef_260:
	lea eax, [edx+0x164]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x164]
	test eax, eax
	jz Mark_WeaponDef_330
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_340
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_340
	xor esi, esi
	jmp Mark_WeaponDef_350
Mark_WeaponDef_380:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_390:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_360
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_360:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_340
Mark_WeaponDef_350:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_370
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_380
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_380
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_390
Mark_WeaponDef_340:
	mov edx, [varWeaponDef]
Mark_WeaponDef_330:
	lea eax, [edx+0x168]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x168]
	test eax, eax
	jz Mark_WeaponDef_400
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_410
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_410
	xor esi, esi
	jmp Mark_WeaponDef_420
Mark_WeaponDef_450:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_460:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_430
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_430:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_410
Mark_WeaponDef_420:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_440
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_450
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_450
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_460
Mark_WeaponDef_410:
	mov edx, [varWeaponDef]
Mark_WeaponDef_400:
	lea eax, [edx+0x16c]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x16c]
	test eax, eax
	jz Mark_WeaponDef_470
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_480
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_480
	xor esi, esi
	jmp Mark_WeaponDef_490
Mark_WeaponDef_520:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_530:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_500
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_500:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_480
Mark_WeaponDef_490:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_510
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_520
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_520
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_530
Mark_WeaponDef_480:
	mov edx, [varWeaponDef]
Mark_WeaponDef_470:
	lea eax, [edx+0x170]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x170]
	test eax, eax
	jz Mark_WeaponDef_540
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_550
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_550
	xor esi, esi
	jmp Mark_WeaponDef_560
Mark_WeaponDef_590:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_600:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_570
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_570:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_550
Mark_WeaponDef_560:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_580
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_590
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_590
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_600
Mark_WeaponDef_550:
	mov edx, [varWeaponDef]
Mark_WeaponDef_540:
	lea eax, [edx+0x174]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x174]
	test eax, eax
	jz Mark_WeaponDef_610
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_620
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_620
	xor esi, esi
	jmp Mark_WeaponDef_630
Mark_WeaponDef_660:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_670:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_640
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_640:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_620
Mark_WeaponDef_630:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_650
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_660
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_660
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_670
Mark_WeaponDef_620:
	mov edx, [varWeaponDef]
Mark_WeaponDef_610:
	lea eax, [edx+0x178]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x178]
	test eax, eax
	jz Mark_WeaponDef_680
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_690
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_690
	xor esi, esi
	jmp Mark_WeaponDef_700
Mark_WeaponDef_730:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_740:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_710
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_710:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_690
Mark_WeaponDef_700:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_720
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_730
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_730
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_740
Mark_WeaponDef_690:
	mov edx, [varWeaponDef]
Mark_WeaponDef_680:
	lea eax, [edx+0x17c]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x17c]
	test eax, eax
	jz Mark_WeaponDef_750
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_760
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_760
	xor esi, esi
	jmp Mark_WeaponDef_770
Mark_WeaponDef_800:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_810:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_780
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_780:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_760
Mark_WeaponDef_770:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_790
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_800
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_800
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_810
Mark_WeaponDef_760:
	mov edx, [varWeaponDef]
Mark_WeaponDef_750:
	lea eax, [edx+0x180]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x180]
	test eax, eax
	jz Mark_WeaponDef_820
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_830
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_830
	xor esi, esi
	jmp Mark_WeaponDef_840
Mark_WeaponDef_870:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_880:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_850
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_850:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_830
Mark_WeaponDef_840:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_860
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_870
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_870
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_880
Mark_WeaponDef_830:
	mov edx, [varWeaponDef]
Mark_WeaponDef_820:
	lea eax, [edx+0x184]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x184]
	test eax, eax
	jz Mark_WeaponDef_890
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_900
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_900
	xor esi, esi
	jmp Mark_WeaponDef_910
Mark_WeaponDef_940:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_950:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_920
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_920:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_900
Mark_WeaponDef_910:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_930
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_940
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_940
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_950
Mark_WeaponDef_900:
	mov edx, [varWeaponDef]
Mark_WeaponDef_890:
	lea eax, [edx+0x188]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x188]
	test eax, eax
	jz Mark_WeaponDef_960
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_970
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_970
	xor esi, esi
	jmp Mark_WeaponDef_980
Mark_WeaponDef_1010:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1020:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_990
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_990:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_970
Mark_WeaponDef_980:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1000
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1010
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1010
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1020
Mark_WeaponDef_970:
	mov edx, [varWeaponDef]
Mark_WeaponDef_960:
	lea eax, [edx+0x18c]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x18c]
	test eax, eax
	jz Mark_WeaponDef_1030
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_1040
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_1040
	xor esi, esi
	jmp Mark_WeaponDef_1050
Mark_WeaponDef_1080:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1090:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_1060
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_1060:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_1040
Mark_WeaponDef_1050:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1070
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1080
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1080
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1090
Mark_WeaponDef_1040:
	mov edx, [varWeaponDef]
Mark_WeaponDef_1030:
	lea eax, [edx+0x190]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x190]
	test eax, eax
	jz Mark_WeaponDef_1100
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_1110
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_1110
	xor esi, esi
	jmp Mark_WeaponDef_1120
Mark_WeaponDef_1150:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1160:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_1130
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_1130:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_1110
Mark_WeaponDef_1120:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1140
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1150
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1150
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1160
Mark_WeaponDef_1110:
	mov edx, [varWeaponDef]
Mark_WeaponDef_1100:
	lea eax, [edx+0x194]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x194]
	test eax, eax
	jz Mark_WeaponDef_1170
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_1180
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_1180
	xor esi, esi
	jmp Mark_WeaponDef_1190
Mark_WeaponDef_1220:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1230:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_1200
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_1200:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_1180
Mark_WeaponDef_1190:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1210
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1220
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1220
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1230
Mark_WeaponDef_1180:
	mov edx, [varWeaponDef]
Mark_WeaponDef_1170:
	lea eax, [edx+0x198]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x198]
	test eax, eax
	jz Mark_WeaponDef_1240
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_1250
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_1250
	xor esi, esi
	jmp Mark_WeaponDef_1260
Mark_WeaponDef_1290:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1300:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_1270
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_1270:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_1250
Mark_WeaponDef_1260:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1280
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1290
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1290
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1300
Mark_WeaponDef_1250:
	mov edx, [varWeaponDef]
Mark_WeaponDef_1240:
	lea eax, [edx+0x19c]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x19c]
	test eax, eax
	jz Mark_WeaponDef_1310
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_1320
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_1320
	xor esi, esi
	jmp Mark_WeaponDef_1330
Mark_WeaponDef_1360:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1370:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_1340
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_1340:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_1320
Mark_WeaponDef_1330:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1350
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1360
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1360
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1370
Mark_WeaponDef_1320:
	mov edx, [varWeaponDef]
Mark_WeaponDef_1310:
	lea eax, [edx+0x1a0]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x1a0]
	test eax, eax
	jz Mark_WeaponDef_1380
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_1390
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_1390
	xor esi, esi
	jmp Mark_WeaponDef_1400
Mark_WeaponDef_1430:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1440:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_1410
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_1410:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_1390
Mark_WeaponDef_1400:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1420
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1430
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1430
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1440
Mark_WeaponDef_1390:
	mov edx, [varWeaponDef]
Mark_WeaponDef_1380:
	lea eax, [edx+0x1a4]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x1a4]
	test eax, eax
	jz Mark_WeaponDef_1450
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_1460
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_1460
	xor esi, esi
	jmp Mark_WeaponDef_1470
Mark_WeaponDef_1500:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1510:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_1480
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_1480:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_1460
Mark_WeaponDef_1470:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1490
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1500
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1500
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1510
Mark_WeaponDef_1460:
	mov edx, [varWeaponDef]
Mark_WeaponDef_1450:
	lea eax, [edx+0x1a8]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x1a8]
	test eax, eax
	jz Mark_WeaponDef_1520
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_WeaponDef_1530
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_WeaponDef_1530
	xor esi, esi
	jmp Mark_WeaponDef_1540
Mark_WeaponDef_1570:
	mov edx, [varsnd_alias_t]
Mark_WeaponDef_1580:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_WeaponDef_1550
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_WeaponDef_1550:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_WeaponDef_1530
Mark_WeaponDef_1540:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_WeaponDef_1560
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_WeaponDef_1570
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_WeaponDef_1570
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_WeaponDef_1580
Mark_WeaponDef_1530:
	mov edx, [varWeaponDef]
Mark_WeaponDef_1520:
	lea eax, [edx+0x1ac]
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1b0
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1b4
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1b8
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1bc
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1c0
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1c4
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1c8
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1cc
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1d0
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1d4
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1d8
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1dc
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1e0
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1e4
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1e8
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1ec
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1f0
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1f4
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1f8
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x1fc
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x200
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x204
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov edx, [varWeaponDef]
	mov ebx, [edx+0x208]
	test ebx, ebx
	jz Mark_WeaponDef_1590
	mov [varsnd_alias_list_name], ebx
	mov esi, 0x1d
Mark_WeaponDef_1600:
	mov [varsnd_alias_list_name], ebx
	mov [varsnd_alias_list_ptr], ebx
	call Mark_snd_alias_list_ptr
	add ebx, 0x4
	sub esi, 0x1
	jnz Mark_WeaponDef_1600
	mov edx, [varWeaponDef]
Mark_WeaponDef_1590:
	lea eax, [edx+0x20c]
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x210
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x214
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x218
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x21c
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varWeaponDef]
	add eax, 0x220
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov ebx, [varWeaponDef]
	add ebx, 0x2bc
	mov [varXModelPtr], ebx
	mov esi, 0x10
Mark_WeaponDef_1610:
	mov [varXModelPtr], ebx
	call Mark_XModelPtr
	add ebx, 0x4
	sub esi, 0x1
	jnz Mark_WeaponDef_1610
	mov eax, [varWeaponDef]
	add eax, 0x2fc
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	mov eax, [varWeaponDef]
	add eax, 0x300
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	mov eax, [varWeaponDef]
	add eax, 0x304
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	mov eax, [varWeaponDef]
	add eax, 0x308
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	mov eax, [varWeaponDef]
	add eax, 0x30c
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varWeaponDef]
	add eax, 0x314
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varWeaponDef]
	add eax, 0x430
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varWeaponDef]
	add eax, 0x434
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varWeaponDef]
	add eax, 0x518
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varWeaponDef]
	add eax, 0x524
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varWeaponDef]
	add eax, 0x584
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	mov eax, [varWeaponDef]
	add eax, 0x58c
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x594
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x598
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x59c
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	call Mark_snd_alias_list_ptr
	mov eax, [varWeaponDef]
	add eax, 0x6a8
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x6c4
	mov [varFxEffectDefHandle], eax
	call Mark_FxEffectDefHandle
	mov eax, [varWeaponDef]
	add eax, 0x6c8
	mov [varsnd_alias_list_name], eax
	mov [varsnd_alias_list_ptr], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mark_snd_alias_list_ptr
Mark_WeaponDef_90:
	mov edx, ebx
	jmp Mark_WeaponDef_110
Mark_WeaponDef_160:
	mov edx, ebx
	jmp Mark_WeaponDef_180
Mark_WeaponDef_1350:
	mov edx, ebx
	jmp Mark_WeaponDef_1370
Mark_WeaponDef_1420:
	mov edx, ebx
	jmp Mark_WeaponDef_1440
Mark_WeaponDef_1490:
	mov edx, ebx
	jmp Mark_WeaponDef_1510
Mark_WeaponDef_1560:
	mov edx, ebx
	jmp Mark_WeaponDef_1580
Mark_WeaponDef_230:
	mov edx, ebx
	jmp Mark_WeaponDef_250
Mark_WeaponDef_300:
	mov edx, ebx
	jmp Mark_WeaponDef_320
Mark_WeaponDef_370:
	mov edx, ebx
	jmp Mark_WeaponDef_390
Mark_WeaponDef_440:
	mov edx, ebx
	jmp Mark_WeaponDef_460
Mark_WeaponDef_510:
	mov edx, ebx
	jmp Mark_WeaponDef_530
Mark_WeaponDef_580:
	mov edx, ebx
	jmp Mark_WeaponDef_600
Mark_WeaponDef_650:
	mov edx, ebx
	jmp Mark_WeaponDef_670
Mark_WeaponDef_720:
	mov edx, ebx
	jmp Mark_WeaponDef_740
Mark_WeaponDef_790:
	mov edx, ebx
	jmp Mark_WeaponDef_810
Mark_WeaponDef_860:
	mov edx, ebx
	jmp Mark_WeaponDef_880
Mark_WeaponDef_930:
	mov edx, ebx
	jmp Mark_WeaponDef_950
Mark_WeaponDef_1000:
	mov edx, ebx
	jmp Mark_WeaponDef_1020
Mark_WeaponDef_1070:
	mov edx, ebx
	jmp Mark_WeaponDef_1090
Mark_WeaponDef_1140:
	mov edx, ebx
	jmp Mark_WeaponDef_1160
Mark_WeaponDef_1210:
	mov edx, ebx
	jmp Mark_WeaponDef_1230
Mark_WeaponDef_1280:
	mov edx, ebx
	jmp Mark_WeaponDef_1300
	nop


;Mark_XModelPtr()
Mark_XModelPtr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [varXModelPtr]
	mov eax, [eax]
	test eax, eax
	jz Mark_XModelPtr_10
	mov [varXModel], eax
	mov [esp], eax
	call Mark_XModelAsset
	mov edx, [varXModel]
	mov ebx, [edx+0x8]
	test ebx, ebx
	jz Mark_XModelPtr_20
	mov [varScriptString], ebx
	movzx edi, byte [edx+0x4]
	test edi, edi
	jg Mark_XModelPtr_30
Mark_XModelPtr_20:
	mov ebx, [edx+0x24]
	test ebx, ebx
	jz Mark_XModelPtr_40
	mov [varMaterialHandle], ebx
	movzx edi, byte [edx+0x6]
	test edi, edi
	jg Mark_XModelPtr_50
Mark_XModelPtr_40:
	lea eax, [edx+0xd4]
	mov [varPhysPresetPtr], eax
	mov eax, [edx+0xd4]
	test eax, eax
	jz Mark_XModelPtr_10
	mov [varPhysPreset], eax
	mov [esp], eax
	call Mark_PhysPresetAsset
Mark_XModelPtr_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_XModelPtr_50:
	xor esi, esi
Mark_XModelPtr_60:
	mov [varMaterialHandle], ebx
	call Mark_MaterialHandle
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Mark_XModelPtr_60
	mov edx, [varXModel]
	jmp Mark_XModelPtr_40
Mark_XModelPtr_30:
	xor esi, esi
Mark_XModelPtr_70:
	mov [varScriptString], ebx
	mov [esp], ebx
	call Mark_ScriptStringCustom
	add ebx, 0x2
	add esi, 0x1
	cmp edi, esi
	jnz Mark_XModelPtr_70
	mov edx, [varXModel]
	jmp Mark_XModelPtr_20


;Mark_clipMap_t()
Mark_clipMap_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [varclipMap_t]
	mov ebx, [edx+0x14]
	test ebx, ebx
	jz Mark_clipMap_t_10
	mov [varcStaticModel_t], ebx
	mov edi, [edx+0x10]
	test edi, edi
	jg Mark_clipMap_t_20
Mark_clipMap_t_10:
	lea eax, [edx+0xa4]
	mov [varMapEntsPtr], eax
	mov eax, [edx+0xa4]
	test eax, eax
	jz Mark_clipMap_t_30
	mov [varMapEnts], eax
	mov [esp], eax
	call Mark_MapEntsAsset
	mov edx, [varclipMap_t]
Mark_clipMap_t_30:
	mov eax, [edx+0xf8]
	mov [ebp-0x28], eax
	test eax, eax
	jz Mark_clipMap_t_40
	mov [varDynEntityDef], eax
	movzx eax, word [edx+0xf4]
	mov [ebp-0x30], eax
	test eax, eax
	jg Mark_clipMap_t_50
Mark_clipMap_t_40:
	mov eax, [edx+0xfc]
	mov [ebp-0x1c], eax
	test eax, eax
	jz Mark_clipMap_t_60
	mov [varDynEntityDef], eax
	movzx edx, word [edx+0xf6]
	mov [ebp-0x24], edx
	test edx, edx
	jg Mark_clipMap_t_70
Mark_clipMap_t_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_clipMap_t_70:
	mov dword [ebp-0x20], 0x0
	jmp Mark_clipMap_t_80
Mark_clipMap_t_130:
	lea eax, [edx+0x30]
	mov [varPhysPresetPtr], eax
	mov eax, [edx+0x30]
	test eax, eax
	jz Mark_clipMap_t_90
	mov [varPhysPreset], eax
	mov [esp], eax
	call Mark_PhysPresetAsset
Mark_clipMap_t_90:
	add dword [ebp-0x1c], 0x60
	add dword [ebp-0x20], 0x1
	mov eax, [ebp-0x20]
	cmp [ebp-0x24], eax
	jz Mark_clipMap_t_60
Mark_clipMap_t_80:
	mov eax, [ebp-0x1c]
	mov [varDynEntityDef], eax
	add eax, 0x20
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	mov edx, [varDynEntityDef]
	lea eax, [edx+0x28]
	mov [varFxEffectDefHandle], eax
	mov eax, [edx+0x28]
	test eax, eax
	jz Mark_clipMap_t_100
	mov [varFxEffectDef], eax
	mov [esp], eax
	call Mark_FxEffectDefAsset
	mov edx, [varFxEffectDef]
	mov eax, [edx+0x1c]
	test eax, eax
	jz Mark_clipMap_t_110
	mov [varFxElemDef], eax
	mov esi, [edx+0x10]
	add esi, [edx+0x14]
	add esi, [edx+0x18]
	mov ebx, eax
	test esi, esi
	jg Mark_clipMap_t_120
Mark_clipMap_t_110:
	mov edx, [varDynEntityDef]
Mark_clipMap_t_100:
	lea eax, [edx+0x2c]
	mov [varXModelPiecesPtr], eax
	mov eax, [edx+0x2c]
	test eax, eax
	jz Mark_clipMap_t_130
	mov [varXModelPieces], eax
	mov ebx, [eax+0x8]
	test ebx, ebx
	jz Mark_clipMap_t_130
	mov [varXModelPiece], ebx
	mov edi, [eax+0x4]
	test edi, edi
	jle Mark_clipMap_t_130
	xor esi, esi
Mark_clipMap_t_140:
	mov [varXModelPiece], ebx
	mov [varXModelPtr], ebx
	call Mark_XModelPtr
	add ebx, 0x10
	add esi, 0x1
	cmp edi, esi
	jnz Mark_clipMap_t_140
	mov edx, [varDynEntityDef]
	jmp Mark_clipMap_t_130
Mark_clipMap_t_120:
	xor edi, edi
Mark_clipMap_t_150:
	mov [varFxElemDef], ebx
	lea eax, [ebx+0xbc]
	mov [varFxElemDefVisuals], eax
	call Mark_FxElemDefVisuals
	add ebx, 0xfc
	add edi, 0x1
	cmp esi, edi
	jnz Mark_clipMap_t_150
	jmp Mark_clipMap_t_110
Mark_clipMap_t_50:
	mov dword [ebp-0x2c], 0x0
	jmp Mark_clipMap_t_160
Mark_clipMap_t_220:
	lea eax, [edx+0x30]
	mov [varPhysPresetPtr], eax
	mov eax, [edx+0x30]
	test eax, eax
	jz Mark_clipMap_t_170
	mov [varPhysPreset], eax
	mov [esp], eax
	call Mark_PhysPresetAsset
Mark_clipMap_t_170:
	add dword [ebp-0x28], 0x60
	add dword [ebp-0x2c], 0x1
	mov eax, [ebp-0x2c]
	cmp [ebp-0x30], eax
	jz Mark_clipMap_t_180
Mark_clipMap_t_160:
	mov edx, [ebp-0x28]
	mov [varDynEntityDef], edx
	lea eax, [edx+0x20]
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	mov edx, [varDynEntityDef]
	lea eax, [edx+0x28]
	mov [varFxEffectDefHandle], eax
	mov eax, [edx+0x28]
	test eax, eax
	jz Mark_clipMap_t_190
	mov [varFxEffectDef], eax
	mov [esp], eax
	call Mark_FxEffectDefAsset
	mov edx, [varFxEffectDef]
	mov eax, [edx+0x1c]
	test eax, eax
	jz Mark_clipMap_t_200
	mov [varFxElemDef], eax
	mov esi, [edx+0x10]
	add esi, [edx+0x14]
	add esi, [edx+0x18]
	mov ebx, eax
	test esi, esi
	jg Mark_clipMap_t_210
Mark_clipMap_t_200:
	mov edx, [varDynEntityDef]
Mark_clipMap_t_190:
	lea eax, [edx+0x2c]
	mov [varXModelPiecesPtr], eax
	mov eax, [edx+0x2c]
	test eax, eax
	jz Mark_clipMap_t_220
	mov [varXModelPieces], eax
	mov ebx, [eax+0x8]
	test ebx, ebx
	jz Mark_clipMap_t_220
	mov [varXModelPiece], ebx
	mov edi, [eax+0x4]
	test edi, edi
	jle Mark_clipMap_t_220
	xor esi, esi
Mark_clipMap_t_230:
	mov [varXModelPiece], ebx
	mov [varXModelPtr], ebx
	call Mark_XModelPtr
	add ebx, 0x10
	add esi, 0x1
	cmp edi, esi
	jnz Mark_clipMap_t_230
	mov edx, [varDynEntityDef]
	jmp Mark_clipMap_t_220
Mark_clipMap_t_210:
	xor edi, edi
Mark_clipMap_t_240:
	mov [varFxElemDef], ebx
	lea eax, [ebx+0xbc]
	mov [varFxElemDefVisuals], eax
	call Mark_FxElemDefVisuals
	add ebx, 0xfc
	add edi, 0x1
	cmp esi, edi
	jnz Mark_clipMap_t_240
	jmp Mark_clipMap_t_200
Mark_clipMap_t_180:
	mov edx, [varclipMap_t]
	jmp Mark_clipMap_t_40
Mark_clipMap_t_20:
	xor esi, esi
Mark_clipMap_t_250:
	mov [varcStaticModel_t], ebx
	lea eax, [ebx+0x4]
	mov [varXModelPtr], eax
	call Mark_XModelPtr
	add ebx, 0x50
	add esi, 0x1
	cmp edi, esi
	jnz Mark_clipMap_t_250
	mov edx, [varclipMap_t]
	jmp Mark_clipMap_t_10
	nop
	add [eax], al


;Load_FontHandle(unsigned char)
Load_FontHandle:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varFontHandle]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varFontHandle]
	mov esi, [ebx]
	test esi, esi
	jz Load_FontHandle_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_FontHandle_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_FontHandle_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_FontHandle_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varFontHandle]
	mov eax, [eax]
	mov [varFont], eax
	cmp esi, 0xfffffffe
	jz Load_FontHandle_30
	xor ebx, ebx
Load_FontHandle_40:
	mov dword [esp], 0x1
	call Load_Font
	mov eax, [varFontHandle]
	mov [esp], eax
	call Load_FontAsset
	test ebx, ebx
	jz Load_FontHandle_10
	mov eax, [varFontHandle]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_FontHandle_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_FontHandle_40
	nop


;Load_FxTrailDef(unsigned char)
Load_FxTrailDef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x1c
	mov eax, [varFxTrailDef]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varFxTrailDef]
	mov eax, [ebx+0x10]
	test eax, eax
	jz Load_FxTrailDef_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x10], eax
	mov eax, [varFxTrailDef]
	mov edx, [eax+0x10]
	mov [varFxTrailVertex], edx
	mov eax, [eax+0xc]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varFxTrailDef]
Load_FxTrailDef_10:
	mov eax, [ebx+0x18]
	test eax, eax
	jz Load_FxTrailDef_20
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x18], eax
	mov eax, [varFxTrailDef]
	mov edx, [eax+0x18]
	mov [varushort], edx
	mov eax, [eax+0x14]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_FxTrailDef_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Load_MapEntsPtr(unsigned char)
Load_MapEntsPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varMapEntsPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varMapEntsPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_MapEntsPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_MapEntsPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_MapEntsPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_MapEntsPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMapEntsPtr]
	mov eax, [eax]
	mov [varMapEnts], eax
	cmp esi, 0xfffffffe
	jz Load_MapEntsPtr_30
	xor ebx, ebx
Load_MapEntsPtr_40:
	mov dword [esp], 0x1
	call Load_MapEnts
	mov eax, [varMapEntsPtr]
	mov [esp], eax
	call Load_MapEntsAsset
	test ebx, ebx
	jz Load_MapEntsPtr_10
	mov eax, [varMapEntsPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_MapEntsPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_MapEntsPtr_40
	nop


;Load_RawFilePtr(unsigned char)
Load_RawFilePtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varRawFilePtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varRawFilePtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_RawFilePtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_RawFilePtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_RawFilePtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_RawFilePtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varRawFilePtr]
	mov eax, [eax]
	mov [varRawFile], eax
	cmp esi, 0xfffffffe
	jz Load_RawFilePtr_30
	xor ebx, ebx
Load_RawFilePtr_40:
	mov dword [esp], 0x1
	call Load_RawFile
	mov eax, [varRawFilePtr]
	mov [esp], eax
	call Load_RawFileAsset
	test ebx, ebx
	jz Load_RawFilePtr_10
	mov eax, [varRawFilePtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_RawFilePtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_RawFilePtr_40
	nop


;Load_XAnimParts(unsigned char)
Load_XAnimParts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x58
	mov eax, [varXAnimParts]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varXAnimParts]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_XAnimParts_10
	add eax, 0x1
	jz Load_XAnimParts_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_XAnimParts_10:
	mov ebx, [varXAnimParts]
	mov eax, [ebx+0x30]
	test eax, eax
	jz Load_XAnimParts_30
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x30], eax
	mov eax, [varXAnimParts]
	mov edx, [eax+0x30]
	mov [varScriptString], edx
	movzx edi, byte [eax+0x1b]
	lea eax, [edi+edi]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varScriptString]
	test edi, edi
	jg Load_XAnimParts_40
Load_XAnimParts_190:
	mov ebx, [varXAnimParts]
Load_XAnimParts_30:
	mov eax, [ebx+0x50]
	test eax, eax
	jz Load_XAnimParts_50
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x50], eax
	mov eax, [varXAnimParts]
	mov edx, [eax+0x50]
	mov [varXAnimNotifyInfo], edx
	movzx edi, byte [eax+0x1c]
	lea eax, [edi*8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXAnimNotifyInfo]
	test edi, edi
	jg Load_XAnimParts_60
Load_XAnimParts_170:
	mov ebx, [varXAnimParts]
Load_XAnimParts_50:
	mov eax, [ebx+0x54]
	test eax, eax
	jz Load_XAnimParts_70
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x54], eax
	mov eax, [varXAnimParts]
	mov eax, [eax+0x54]
	mov [varXAnimDeltaPart], eax
	mov dword [esp], 0x1
	call Load_XAnimDeltaPart
	mov ebx, [varXAnimParts]
Load_XAnimParts_70:
	mov eax, [ebx+0x34]
	test eax, eax
	jz Load_XAnimParts_80
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x34], eax
	mov eax, [varXAnimParts]
	mov edx, [eax+0x34]
	mov [varbyte], edx
	movzx eax, word [eax+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXAnimParts]
Load_XAnimParts_80:
	mov edi, [ebx+0x38]
	test edi, edi
	jz Load_XAnimParts_90
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x38], eax
	mov eax, [varXAnimParts]
	mov edx, [eax+0x38]
	mov [varshort], edx
	movzx eax, word [eax+0x6]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXAnimParts]
Load_XAnimParts_90:
	mov esi, [ebx+0x3c]
	test esi, esi
	jz Load_XAnimParts_100
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x3c], eax
	mov eax, [varXAnimParts]
	mov edx, [eax+0x3c]
	mov [varint], edx
	movzx eax, word [eax+0x8]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXAnimParts]
Load_XAnimParts_100:
	mov ecx, [ebx+0x40]
	test ecx, ecx
	jz Load_XAnimParts_110
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x40], eax
	mov eax, [varXAnimParts]
	mov edx, [eax+0x40]
	mov [varshort], edx
	mov eax, [eax+0x20]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXAnimParts]
Load_XAnimParts_110:
	mov edx, [ebx+0x44]
	test edx, edx
	jz Load_XAnimParts_120
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x44], eax
	mov eax, [varXAnimParts]
	mov edx, [eax+0x44]
	mov [varbyte], edx
	movzx eax, word [eax+0xa]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXAnimParts]
Load_XAnimParts_120:
	mov eax, [ebx+0x48]
	test eax, eax
	jz Load_XAnimParts_130
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x48], eax
	mov eax, [varXAnimParts]
	mov edx, [eax+0x48]
	mov [varint], edx
	movzx eax, word [eax+0xc]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXAnimParts]
Load_XAnimParts_130:
	lea eax, [ebx+0x4c]
	mov [varXAnimIndices], eax
	cmp word [ebx+0xe], 0xff
	ja Load_XAnimParts_140
	mov eax, [ebx+0x4c]
	test eax, eax
	jz Load_XAnimParts_150
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x4c], eax
	mov eax, [varXAnimIndices]
	mov edx, [eax]
	mov [varbyte], edx
	mov eax, [varXAnimParts]
	mov eax, [eax+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_XAnimParts_150:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_XAnimParts_140:
	mov eax, [ebx+0x4c]
	test eax, eax
	jz Load_XAnimParts_150
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x4c], eax
	mov eax, [varXAnimIndices]
	mov edx, [eax]
	mov [varushort], edx
	mov eax, [varXAnimParts]
	mov eax, [eax+0x24]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_XAnimParts_60:
	xor esi, esi
Load_XAnimParts_160:
	mov [varXAnimNotifyInfo], ebx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varXAnimNotifyInfo]
	mov [varScriptString], eax
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varScriptString]
	mov [esp], eax
	call Load_ScriptStringCustom
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz Load_XAnimParts_160
	jmp Load_XAnimParts_170
Load_XAnimParts_40:
	xor esi, esi
Load_XAnimParts_180:
	mov [varScriptString], ebx
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varScriptString]
	mov [esp], eax
	call Load_ScriptStringCustom
	add ebx, 0x2
	add esi, 0x1
	cmp edi, esi
	jnz Load_XAnimParts_180
	jmp Load_XAnimParts_190
Load_XAnimParts_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_XAnimParts_10
	nop


;Load_multiDef_t(unsigned char)
Load_multiDef_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x188
	mov eax, [varmultiDef_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varmultiDef_t]
	mov [varXString], eax
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov esi, [varXString]
	mov edi, 0x20
	jmp Load_multiDef_t_10
Load_multiDef_t_40:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_multiDef_t_30:
	add esi, 0x4
	sub edi, 0x1
	jz Load_multiDef_t_20
Load_multiDef_t_10:
	mov [varXString], esi
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_multiDef_t_30
	add eax, 0x1
	jnz Load_multiDef_t_40
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	add esi, 0x4
	sub edi, 0x1
	jnz Load_multiDef_t_10
Load_multiDef_t_20:
	mov eax, [varmultiDef_t]
	sub eax, 0xffffff80
	mov [varXString], eax
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov esi, [varXString]
	mov edi, 0x20
	jmp Load_multiDef_t_50
Load_multiDef_t_80:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_multiDef_t_70:
	add esi, 0x4
	sub edi, 0x1
	jz Load_multiDef_t_60
Load_multiDef_t_50:
	mov [varXString], esi
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_multiDef_t_70
	add eax, 0x1
	jnz Load_multiDef_t_80
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	add esi, 0x4
	sub edi, 0x1
	jnz Load_multiDef_t_50
Load_multiDef_t_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;AllocLoad_XAsset()
AllocLoad_XAsset:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	leave
	ret


;Load_ComWorldPtr(unsigned char)
Load_ComWorldPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varComWorldPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varComWorldPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_ComWorldPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_ComWorldPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_ComWorldPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_ComWorldPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varComWorldPtr]
	mov eax, [eax]
	mov [varComWorld], eax
	cmp esi, 0xfffffffe
	jz Load_ComWorldPtr_30
	xor ebx, ebx
Load_ComWorldPtr_40:
	mov dword [esp], 0x1
	call Load_ComWorld
	mov eax, [varComWorldPtr]
	mov [esp], eax
	call Load_ComWorldAsset
	test ebx, ebx
	jz Load_ComWorldPtr_10
	mov eax, [varComWorldPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_ComWorldPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_ComWorldPtr_40
	nop
	add [eax], al


;Load_FxEffectDef(unsigned char)
Load_FxEffectDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x20
	mov eax, [varFxEffectDef]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varFxEffectDef]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxEffectDef_10
	add eax, 0x1
	jz Load_FxEffectDef_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_FxEffectDef_10:
	mov ebx, [varFxEffectDef]
	mov eax, [ebx+0x1c]
	test eax, eax
	jz Load_FxEffectDef_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov eax, [varFxEffectDef]
	mov ecx, [eax+0x1c]
	mov [varFxElemDef], ecx
	mov esi, [eax+0x10]
	add esi, [eax+0x14]
	add esi, [eax+0x18]
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x8
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varFxElemDef]
	test esi, esi
	jg Load_FxEffectDef_40
Load_FxEffectDef_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_FxEffectDef_40:
	xor edi, edi
Load_FxEffectDef_50:
	mov [varFxElemDef], ebx
	mov dword [esp], 0x0
	call Load_FxElemDef
	add ebx, 0xfc
	add edi, 0x1
	cmp esi, edi
	jnz Load_FxEffectDef_50
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_FxEffectDef_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_FxEffectDef_10
	nop
	add [eax], al


;Load_GfxImagePtr(unsigned char)
Load_GfxImagePtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varGfxImagePtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varGfxImagePtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_GfxImagePtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_GfxImagePtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_GfxImagePtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxImagePtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGfxImagePtr]
	mov eax, [eax]
	mov [varGfxImage], eax
	cmp esi, 0xfffffffe
	jz Load_GfxImagePtr_30
	xor esi, esi
Load_GfxImagePtr_60:
	mov dword [esp+0x8], 0x24
	mov eax, [varGfxImage]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varGfxImage]
	add eax, 0x20
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_GfxImagePtr_40
	add eax, 0x1
	jz Load_GfxImagePtr_50
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_GfxImagePtr_40:
	mov eax, [varGfxImage]
	add eax, 0x4
	mov [varGfxTextureLoad], eax
	mov dword [esp], 0x0
	call Load_GfxTextureLoad
	call DB_PopStreamPos
	mov eax, [varGfxImagePtr]
	mov [esp], eax
	call Load_GfxImageAsset
	test esi, esi
	jz Load_GfxImagePtr_10
	mov eax, [varGfxImagePtr]
	mov eax, [eax]
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxImagePtr_50:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_GfxImagePtr_40
Load_GfxImagePtr_30:
	call DB_InsertPointer
	mov esi, eax
	jmp Load_GfxImagePtr_60


;Load_GfxLightDef(unsigned char)
Load_GfxLightDef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x10
	mov eax, [varGfxLightDef]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varGfxLightDef]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_GfxLightDef_10
	add eax, 0x1
	jz Load_GfxLightDef_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_GfxLightDef_10:
	mov eax, [varGfxLightDef]
	add eax, 0x4
	mov [varGfxLightImage], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varGfxLightImage]
	mov [varGfxImagePtr], eax
	mov dword [esp], 0x0
	call Load_GfxImagePtr
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_PopStreamPos
Load_GfxLightDef_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_GfxLightDef_10
	nop


;Load_GfxWorldPtr(unsigned char)
Load_GfxWorldPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varGfxWorldPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varGfxWorldPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_GfxWorldPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_GfxWorldPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_GfxWorldPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxWorldPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGfxWorldPtr]
	mov eax, [eax]
	mov [varGfxWorld], eax
	cmp esi, 0xfffffffe
	jz Load_GfxWorldPtr_30
	xor ebx, ebx
Load_GfxWorldPtr_40:
	mov dword [esp], 0x1
	call Load_GfxWorld
	mov eax, [varGfxWorldPtr]
	mov [esp], eax
	call Load_GfxWorldAsset
	test ebx, ebx
	jz Load_GfxWorldPtr_10
	mov eax, [varGfxWorldPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxWorldPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_GfxWorldPtr_40
	nop
	add [eax], al


;Load_MenuListPtr(unsigned char)
Load_MenuListPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varMenuListPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varMenuListPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_MenuListPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_MenuListPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_MenuListPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_MenuListPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMenuListPtr]
	mov eax, [eax]
	mov [varMenuList], eax
	cmp esi, 0xfffffffe
	jz Load_MenuListPtr_30
	xor ebx, ebx
Load_MenuListPtr_40:
	mov dword [esp], 0x1
	call Load_MenuList
	mov eax, [varMenuListPtr]
	mov [esp], eax
	call Load_MenuListAsset
	test ebx, ebx
	jz Load_MenuListPtr_10
	mov eax, [varMenuListPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_MenuListPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_MenuListPtr_40
	nop


;Load_SndCurvePtr(unsigned char)
Load_SndCurvePtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varSndCurvePtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varSndCurvePtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_SndCurvePtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_SndCurvePtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_SndCurvePtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_SndCurvePtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varSndCurvePtr]
	mov eax, [eax]
	mov [varSndCurve], eax
	cmp esi, 0xfffffffe
	jz Load_SndCurvePtr_30
	xor esi, esi
Load_SndCurvePtr_60:
	mov dword [esp+0x8], 0x48
	mov eax, [varSndCurve]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varSndCurve]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_SndCurvePtr_40
	add eax, 0x1
	jz Load_SndCurvePtr_50
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_SndCurvePtr_40:
	call DB_PopStreamPos
	mov eax, [varSndCurvePtr]
	mov [esp], eax
	call Load_SndCurveAsset
	test esi, esi
	jz Load_SndCurvePtr_10
	mov eax, [varSndCurvePtr]
	mov eax, [eax]
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_SndCurvePtr_50:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_SndCurvePtr_40
Load_SndCurvePtr_30:
	call DB_InsertPointer
	mov esi, eax
	jmp Load_SndCurvePtr_60


;Load_StringTable(unsigned char)
Load_StringTable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x10
	mov eax, [varStringTable]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varStringTable]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_StringTable_10
	add eax, 0x1
	jz Load_StringTable_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_StringTable_10:
	mov ebx, [varStringTable]
	mov edx, [ebx+0xc]
	test edx, edx
	jz Load_StringTable_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xc], eax
	mov eax, [varStringTable]
	mov edx, [eax+0xc]
	mov [varXString], edx
	mov edi, [eax+0x4]
	imul edi, [eax+0x8]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varXString]
	test edi, edi
	jg Load_StringTable_40
Load_StringTable_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_StringTable_40:
	mov dword [ebp-0x1c], 0x0
	jmp Load_StringTable_50
Load_StringTable_70:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_StringTable_60:
	add esi, 0x4
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jz Load_StringTable_30
Load_StringTable_50:
	mov [varXString], esi
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_StringTable_60
	add eax, 0x1
	jnz Load_StringTable_70
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_StringTable_60
Load_StringTable_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_StringTable_10


;Load_clipMap_ptr(unsigned char)
Load_clipMap_ptr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varclipMap_ptr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varclipMap_ptr]
	mov esi, [ebx]
	test esi, esi
	jz Load_clipMap_ptr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_clipMap_ptr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_clipMap_ptr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_clipMap_ptr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varclipMap_ptr]
	mov eax, [eax]
	mov [varclipMap_t], eax
	cmp esi, 0xfffffffe
	jz Load_clipMap_ptr_30
	xor ebx, ebx
Load_clipMap_ptr_40:
	mov dword [esp], 0x1
	call Load_clipMap_t
	mov eax, [varclipMap_ptr]
	mov [esp], eax
	call Load_ClipMapAsset
	test ebx, ebx
	jz Load_clipMap_ptr_10
	mov eax, [varclipMap_ptr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_clipMap_ptr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_clipMap_ptr_40
	nop
	add [eax], al


;Load_menuDef_ptr(unsigned char)
Load_menuDef_ptr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varmenuDef_ptr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varmenuDef_ptr]
	mov esi, [ebx]
	test esi, esi
	jz Load_menuDef_ptr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_menuDef_ptr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_menuDef_ptr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_menuDef_ptr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varmenuDef_ptr]
	mov eax, [eax]
	mov [varmenuDef_t], eax
	cmp esi, 0xfffffffe
	jz Load_menuDef_ptr_30
	xor ebx, ebx
Load_menuDef_ptr_40:
	mov dword [esp], 0x1
	call Load_menuDef_t
	mov eax, [varmenuDef_ptr]
	mov [esp], eax
	call Load_MenuAsset
	test ebx, ebx
	jz Load_menuDef_ptr_10
	mov eax, [varmenuDef_ptr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_menuDef_ptr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_menuDef_ptr_40
	nop


;Load_snd_alias_t(unsigned char)
Load_snd_alias_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x5c
	mov eax, [varsnd_alias_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varsnd_alias_t]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_snd_alias_t_10
	add eax, 0x1
	jz Load_snd_alias_t_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_snd_alias_t_10:
	mov eax, [varsnd_alias_t]
	add eax, 0x4
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_snd_alias_t_30
	add eax, 0x1
	jz Load_snd_alias_t_40
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_snd_alias_t_30:
	mov eax, [varsnd_alias_t]
	add eax, 0x8
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_snd_alias_t_50
	add eax, 0x1
	jz Load_snd_alias_t_60
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_snd_alias_t_50:
	mov eax, [varsnd_alias_t]
	add eax, 0xc
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_snd_alias_t_70
	add eax, 0x1
	jz Load_snd_alias_t_80
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_snd_alias_t_70:
	mov ebx, [varsnd_alias_t]
	mov eax, [ebx+0x10]
	test eax, eax
	jz Load_snd_alias_t_90
	add eax, 0x1
	jz Load_snd_alias_t_100
	lea eax, [ebx+0x10]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varsnd_alias_t]
Load_snd_alias_t_90:
	lea eax, [ebx+0x48]
	mov [varSndCurvePtr], eax
	mov dword [esp], 0x0
	call Load_SndCurvePtr
	mov ebx, [varsnd_alias_t]
	mov eax, [ebx+0x58]
	test eax, eax
	jz Load_snd_alias_t_110
	add eax, 0x1
	jz Load_snd_alias_t_120
	lea eax, [ebx+0x58]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_snd_alias_t_120:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x58], eax
	mov eax, [varsnd_alias_t]
	mov eax, [eax+0x58]
	mov [varSpeakerMap], eax
	mov dword [esp+0x8], 0x198
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varSpeakerMap]
	add eax, 0x4
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_snd_alias_t_110
	add eax, 0x1
	jz Load_snd_alias_t_130
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_snd_alias_t_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_snd_alias_t_10
Load_snd_alias_t_40:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_snd_alias_t_30
Load_snd_alias_t_60:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_snd_alias_t_50
Load_snd_alias_t_80:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_snd_alias_t_70
Load_snd_alias_t_100:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x10], eax
	mov eax, [varsnd_alias_t]
	mov eax, [eax+0x10]
	mov [varSoundFile], eax
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varSoundFile]
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jz Load_snd_alias_t_140
	mov [varStreamedSound], edx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varStreamedSound]
	mov [varStreamFileName], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varStreamFileName]
	mov [varStreamFileInfo], eax
	mov [varStreamFileNameRaw], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varStreamFileNameRaw]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_snd_alias_t_150
	add eax, 0x1
	jz Load_snd_alias_t_160
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_snd_alias_t_150:
	mov eax, [varStreamFileNameRaw]
	add eax, 0x4
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_snd_alias_t_170
	add eax, 0x1
	jz Load_snd_alias_t_180
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
	mov ebx, [varsnd_alias_t]
	jmp Load_snd_alias_t_90
Load_snd_alias_t_110:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_snd_alias_t_140:
	mov [varLoadedSoundPtr], edx
	mov dword [esp], 0x0
	call Load_LoadedSoundPtr
	mov ebx, [varsnd_alias_t]
	jmp Load_snd_alias_t_90
Load_snd_alias_t_130:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [ebp+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_XStringCustom
Load_snd_alias_t_170:
	mov ebx, [varsnd_alias_t]
	jmp Load_snd_alias_t_90
Load_snd_alias_t_180:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	mov ebx, [varsnd_alias_t]
	jmp Load_snd_alias_t_90
Load_snd_alias_t_160:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_snd_alias_t_150
	nop


;Load_BrushWrapper(unsigned char)
Load_BrushWrapper:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x50
	mov eax, [varBrushWrapper]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varBrushWrapper]
	mov eax, [ebx+0x20]
	test eax, eax
	jz Load_BrushWrapper_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x20], eax
	mov eax, [varBrushWrapper]
	mov edx, [eax+0x20]
	mov [varcbrushside_t], edx
	mov edi, [eax+0x1c]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varcbrushside_t]
	test edi, edi
	jg Load_BrushWrapper_20
Load_BrushWrapper_70:
	mov ebx, [varBrushWrapper]
Load_BrushWrapper_10:
	mov eax, [ebx+0x30]
	test eax, eax
	jz Load_BrushWrapper_30
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x30], eax
	mov eax, [varBrushWrapper]
	mov edx, [eax+0x30]
	mov [varcbrushedge_t], edx
	mov eax, [eax+0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varBrushWrapper]
Load_BrushWrapper_30:
	mov eax, [ebx+0x4c]
	test eax, eax
	jz Load_BrushWrapper_40
	add eax, 0x1
	jz Load_BrushWrapper_50
	lea eax, [ebx+0x4c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_BrushWrapper_50:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4c], eax
	mov eax, [varBrushWrapper]
	mov edx, [eax+0x4c]
	mov [varcplane_t], edx
	mov eax, [eax+0x1c]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_BrushWrapper_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_BrushWrapper_20:
	mov dword [ebp-0x1c], 0x0
	jmp Load_BrushWrapper_60
Load_BrushWrapper_90:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_BrushWrapper_80:
	add esi, 0xc
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jz Load_BrushWrapper_70
Load_BrushWrapper_60:
	mov [varcbrushside_t], esi
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varcbrushside_t]
	mov eax, [ebx]
	test eax, eax
	jz Load_BrushWrapper_80
	add eax, 0x1
	jnz Load_BrushWrapper_90
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varcbrushside_t]
	mov eax, [eax]
	mov [varcplane_t], eax
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_BrushWrapper_80


;Load_DynEntityDef(unsigned char)
Load_DynEntityDef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x60
	mov eax, [varDynEntityDef]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varDynEntityDef]
	add eax, 0x20
	mov [varXModelPtr], eax
	mov dword [esp], 0x0
	call Load_XModelPtr
	mov eax, [varDynEntityDef]
	add eax, 0x28
	mov [varFxEffectDefHandle], eax
	mov dword [esp], 0x0
	call Load_FxEffectDefHandle
	mov eax, [varDynEntityDef]
	add eax, 0x2c
	mov [varXModelPiecesPtr], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXModelPiecesPtr]
	mov eax, [ebx]
	test eax, eax
	jz Load_DynEntityDef_10
	add eax, 0x1
	jz Load_DynEntityDef_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_DynEntityDef_10:
	mov eax, [varDynEntityDef]
	add eax, 0x30
	mov [varPhysPresetPtr], eax
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_PhysPresetPtr
Load_DynEntityDef_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varXModelPiecesPtr]
	mov eax, [eax]
	mov [varXModelPieces], eax
	mov dword [esp], 0x1
	call Load_XModelPieces
	mov eax, [varDynEntityDef]
	add eax, 0x30
	mov [varPhysPresetPtr], eax
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_PhysPresetPtr


;Load_GfxLightGrid(unsigned char)
Load_GfxLightGrid:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x38
	mov eax, [varGfxLightGrid]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varGfxLightGrid]
	mov eax, [ebx+0x1c]
	test eax, eax
	jz Load_GfxLightGrid_10
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov edx, [varGfxLightGrid]
	mov ebx, [edx+0x1c]
	mov [varushort], ebx
	mov ecx, [edx+0x14]
	movzx eax, word [edx+ecx*2+0xe]
	movzx edx, word [edx+ecx*2+0x8]
	sub eax, edx
	lea eax, [eax+eax+0x2]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxLightGrid]
Load_GfxLightGrid_10:
	mov eax, [ebx+0x24]
	test eax, eax
	jz Load_GfxLightGrid_20
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varGfxLightGrid]
	mov edx, [eax+0x24]
	mov [varbyte], edx
	mov eax, [eax+0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxLightGrid]
Load_GfxLightGrid_20:
	mov eax, [ebx+0x2c]
	test eax, eax
	jz Load_GfxLightGrid_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x2c], eax
	mov eax, [varGfxLightGrid]
	mov edx, [eax+0x2c]
	mov [varGfxLightGridEntry], edx
	mov eax, [eax+0x28]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxLightGrid]
Load_GfxLightGrid_30:
	mov eax, [ebx+0x34]
	test eax, eax
	jz Load_GfxLightGrid_40
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x34], eax
	mov eax, [varGfxLightGrid]
	mov ecx, [eax+0x34]
	mov [varGfxLightGridColors], ecx
	mov eax, [eax+0x30]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxLightGrid_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Load_MaterialPass(unsigned char)
Load_MaterialPass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x14
	mov eax, [varMaterialPass]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varMaterialPass]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialPass_10
	add eax, 0x1
	jz Load_MaterialPass_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
	mov ebx, [varMaterialPass]
Load_MaterialPass_10:
	lea eax, [ebx+0x4]
	mov [varMaterialVertexShaderPtr], eax
	mov dword [esp], 0x0
	call Load_MaterialVertexShaderPtr
	mov eax, [varMaterialPass]
	add eax, 0x8
	mov [varMaterialPixelShaderPtr], eax
	mov dword [esp], 0x0
	call Load_MaterialPixelShaderPtr
	mov ebx, [varMaterialPass]
	mov edx, [ebx+0x10]
	test edx, edx
	jz Load_MaterialPass_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x10], eax
	mov ecx, [varMaterialPass]
	mov ebx, [ecx+0x10]
	mov [varMaterialShaderArgument], ebx
	movzx eax, byte [ecx+0xc]
	movzx edx, byte [ecx+0xd]
	add eax, edx
	movzx edx, byte [ecx+0xe]
	lea edi, [eax+edx]
	lea eax, [edi*8]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varMaterialShaderArgument]
	test edi, edi
	jg Load_MaterialPass_40
Load_MaterialPass_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_MaterialPass_40:
	xor esi, esi
Load_MaterialPass_50:
	mov [varMaterialShaderArgument], ebx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varMaterialShaderArgument]
	add eax, 0x4
	mov [varMaterialArgumentDef], eax
	mov dword [esp], 0x0
	call Load_MaterialArgumentDef
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz Load_MaterialPass_50
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_MaterialPass_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMaterialPass]
	mov eax, [eax]
	mov [varMaterialVertexDeclaration], eax
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varMaterialPass]
	mov [esp], eax
	call Load_BuildVertexDecl
	mov ebx, [varMaterialPass]
	jmp Load_MaterialPass_10


;Load_PhysGeomList(unsigned char)
Load_PhysGeomList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x2c
	mov eax, [varPhysGeomList]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varPhysGeomList]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_PhysGeomList_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varPhysGeomList]
	mov edx, [eax+0x4]
	mov [varPhysGeomInfo], edx
	mov edi, [eax]
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varPhysGeomInfo]
	test edi, edi
	jg Load_PhysGeomList_20
Load_PhysGeomList_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_PhysGeomList_20:
	mov dword [ebp-0x1c], 0x0
	jmp Load_PhysGeomList_30
Load_PhysGeomList_50:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_PhysGeomList_40:
	add esi, 0x44
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jz Load_PhysGeomList_10
Load_PhysGeomList_30:
	mov [varPhysGeomInfo], esi
	mov dword [esp+0x8], 0x44
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varPhysGeomInfo]
	mov eax, [ebx]
	test eax, eax
	jz Load_PhysGeomList_40
	add eax, 0x1
	jnz Load_PhysGeomList_50
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varPhysGeomInfo]
	mov eax, [eax]
	mov [varBrushWrapper], eax
	mov dword [esp], 0x1
	call Load_BrushWrapper
	jmp Load_PhysGeomList_40
	add [eax], al


;Load_WeaponDefPtr(unsigned char)
Load_WeaponDefPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varWeaponDefPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varWeaponDefPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_WeaponDefPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_WeaponDefPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_WeaponDefPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_WeaponDefPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varWeaponDefPtr]
	mov eax, [eax]
	mov [varWeaponDef], eax
	cmp esi, 0xfffffffe
	jz Load_WeaponDefPtr_30
	xor ebx, ebx
Load_WeaponDefPtr_40:
	mov dword [esp], 0x1
	call Load_WeaponDef
	mov eax, [varWeaponDefPtr]
	mov [esp], eax
	call Load_WeaponDefAsset
	test ebx, ebx
	jz Load_WeaponDefPtr_10
	mov eax, [varWeaponDefPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_WeaponDefPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_WeaponDefPtr_40
	nop
	add [eax], al


;Load_XAssetHeader(unsigned char)
Load_XAssetHeader:
	push ebp
	mov ebp, esp
	movzx ecx, byte [ebp+0x8]
	mov eax, [varXAsset]
	mov edx, [eax]
	cmp edx, 0x1
	jz Load_XAssetHeader_10
	cmp edx, 0x2
	jz Load_XAssetHeader_20
	cmp edx, 0x3
	jz Load_XAssetHeader_30
	cmp edx, 0x4
	jz Load_XAssetHeader_40
	cmp edx, 0x5
	jz Load_XAssetHeader_50
	cmp edx, 0x6
	jz Load_XAssetHeader_60
	cmp edx, 0x7
	jz Load_XAssetHeader_70
	cmp edx, 0x8
	jz Load_XAssetHeader_80
	cmp edx, 0x9
	jz Load_XAssetHeader_90
	lea eax, [edx-0xa]
	cmp eax, 0x1
	jbe Load_XAssetHeader_100
	cmp edx, 0xc
	jz Load_XAssetHeader_110
	cmp edx, 0xd
	jz Load_XAssetHeader_120
	cmp edx, 0xe
	jz Load_XAssetHeader_130
	cmp edx, 0xf
	jz Load_XAssetHeader_140
	cmp edx, 0x10
	jz Load_XAssetHeader_150
	cmp edx, 0x11
	jz Load_XAssetHeader_160
	cmp edx, 0x13
	jz Load_XAssetHeader_170
	cmp edx, 0x14
	jz Load_XAssetHeader_180
	cmp edx, 0x15
	jz Load_XAssetHeader_190
	cmp edx, 0x16
	jz Load_XAssetHeader_200
	cmp edx, 0x17
	jz Load_XAssetHeader_210
	cmp edx, 0x19
	jz Load_XAssetHeader_220
	cmp edx, 0x1a
	jz Load_XAssetHeader_230
	cmp edx, 0x1f
	jz Load_XAssetHeader_240
	cmp edx, 0x20
	jz Load_XAssetHeader_250
	pop ebp
	ret
Load_XAssetHeader_50:
	mov eax, [varXAssetHeader]
	mov [varMaterialTechniqueSetPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_MaterialTechniqueSetPtr
Load_XAssetHeader_10:
	mov eax, [varXAssetHeader]
	mov [varPhysPresetPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_PhysPresetPtr
Load_XAssetHeader_20:
	mov eax, [varXAssetHeader]
	mov [varXAnimPartsPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_XAnimPartsPtr
Load_XAssetHeader_30:
	mov eax, [varXAssetHeader]
	mov [varXModelPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_XModelPtr
Load_XAssetHeader_40:
	mov eax, [varXAssetHeader]
	mov [varMaterialHandle], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_MaterialHandle
Load_XAssetHeader_60:
	mov eax, [varXAssetHeader]
	mov [varGfxImagePtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_GfxImagePtr
Load_XAssetHeader_70:
	mov eax, [varXAssetHeader]
	mov [varsnd_alias_list_ptr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_snd_alias_list_ptr
Load_XAssetHeader_110:
	mov eax, [varXAssetHeader]
	mov [varComWorldPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_ComWorldPtr
Load_XAssetHeader_190:
	mov eax, [varXAssetHeader]
	mov [varmenuDef_ptr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_menuDef_ptr
Load_XAssetHeader_80:
	mov eax, [varXAssetHeader]
	mov [varSndCurvePtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_SndCurvePtr
Load_XAssetHeader_90:
	mov eax, [varXAssetHeader]
	mov [varLoadedSoundPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_LoadedSoundPtr
Load_XAssetHeader_120:
	mov eax, [varXAssetHeader]
	mov [varGameWorldSpPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_GameWorldSpPtr
Load_XAssetHeader_100:
	mov eax, [varXAssetHeader]
	mov [varclipMap_ptr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_clipMap_ptr
Load_XAssetHeader_130:
	mov eax, [varXAssetHeader]
	mov [varGameWorldMpPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_GameWorldMpPtr
Load_XAssetHeader_140:
	mov eax, [varXAssetHeader]
	mov [varMapEntsPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_MapEntsPtr
Load_XAssetHeader_150:
	mov eax, [varXAssetHeader]
	mov [varGfxWorldPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_GfxWorldPtr
Load_XAssetHeader_160:
	mov eax, [varXAssetHeader]
	mov [varGfxLightDefPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_GfxLightDefPtr
Load_XAssetHeader_170:
	mov eax, [varXAssetHeader]
	mov [varFontHandle], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_FontHandle
Load_XAssetHeader_180:
	mov eax, [varXAssetHeader]
	mov [varMenuListPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_MenuListPtr
Load_XAssetHeader_200:
	mov eax, [varXAssetHeader]
	mov [varLocalizeEntryPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_LocalizeEntryPtr
Load_XAssetHeader_210:
	mov eax, [varXAssetHeader]
	mov [varWeaponDefPtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_WeaponDefPtr
Load_XAssetHeader_250:
	mov eax, [varXAssetHeader]
	mov [varStringTablePtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_StringTablePtr
Load_XAssetHeader_220:
	mov eax, [varXAssetHeader]
	mov [varFxEffectDefHandle], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_FxEffectDefHandle
Load_XAssetHeader_230:
	mov eax, [varXAssetHeader]
	mov [varFxImpactTablePtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_FxImpactTablePtr
Load_XAssetHeader_240:
	mov eax, [varXAssetHeader]
	mov [varRawFilePtr], eax
	movzx eax, cl
	mov [ebp+0x8], eax
	pop ebp
	jmp Load_RawFilePtr


;Load_XModelPieces(unsigned char)
Load_XModelPieces:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0xc
	mov eax, [varXModelPieces]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varXModelPieces]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_XModelPieces_10
	add eax, 0x1
	jz Load_XModelPieces_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_XModelPieces_10:
	mov ebx, [varXModelPieces]
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_XModelPieces_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varXModelPieces]
	mov edx, [eax+0x8]
	mov [varXModelPiece], edx
	mov edi, [eax+0x4]
	mov eax, edi
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXModelPiece]
	test edi, edi
	jg Load_XModelPieces_40
Load_XModelPieces_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_XModelPieces_40:
	xor esi, esi
Load_XModelPieces_50:
	mov [varXModelPiece], ebx
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varXModelPiece]
	mov [varXModelPtr], eax
	mov dword [esp], 0x0
	call Load_XModelPtr
	add ebx, 0x10
	add esi, 0x1
	cmp edi, esi
	jnz Load_XModelPieces_50
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_XModelPieces_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_XModelPieces_10
	nop


;Mark_XAssetHeader()
Mark_XAssetHeader:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [varXAsset]
	mov edx, [eax]
	cmp edx, 0x1
	jz Mark_XAssetHeader_10
	cmp edx, 0x2
	jz Mark_XAssetHeader_20
	cmp edx, 0x3
	jz Mark_XAssetHeader_30
	cmp edx, 0x4
	jz Mark_XAssetHeader_40
	cmp edx, 0x5
	jz Mark_XAssetHeader_50
	cmp edx, 0x6
	jz Mark_XAssetHeader_60
	cmp edx, 0x7
	jz Mark_XAssetHeader_70
	cmp edx, 0x8
	jz Mark_XAssetHeader_80
	cmp edx, 0x9
	jz Mark_XAssetHeader_90
	lea eax, [edx-0xa]
	cmp eax, 0x1
	jbe Mark_XAssetHeader_100
	cmp edx, 0xc
	jz Mark_XAssetHeader_110
	cmp edx, 0xd
	jz Mark_XAssetHeader_120
	cmp edx, 0xe
	jz Mark_XAssetHeader_130
	cmp edx, 0xf
	jz Mark_XAssetHeader_140
	cmp edx, 0x10
	jz Mark_XAssetHeader_150
	cmp edx, 0x11
	jz Mark_XAssetHeader_160
	cmp edx, 0x13
	jz Mark_XAssetHeader_170
	cmp edx, 0x14
	jz Mark_XAssetHeader_180
	cmp edx, 0x15
	jz Mark_XAssetHeader_190
	cmp edx, 0x16
	jz Mark_XAssetHeader_200
	cmp edx, 0x17
	jz Mark_XAssetHeader_210
	cmp edx, 0x19
	jz Mark_XAssetHeader_220
	cmp edx, 0x1a
	jz Mark_XAssetHeader_230
	cmp edx, 0x1f
	jz Mark_XAssetHeader_240
	cmp edx, 0x20
	jnz Mark_XAssetHeader_250
	mov eax, [varXAssetHeader]
	mov [varStringTablePtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varStringTable], eax
	mov [esp], eax
	call Mark_StringTableAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_10:
	mov eax, [varXAssetHeader]
	mov [varPhysPresetPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varPhysPreset], eax
	mov [esp], eax
	call Mark_PhysPresetAsset
Mark_XAssetHeader_250:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_XAssetHeader_20:
	mov eax, [varXAssetHeader]
	mov [varXAnimPartsPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varXAnimParts], eax
	mov [esp], eax
	call Mark_XAnimPartsAsset
	mov eax, [varXAnimParts]
	mov ebx, [eax+0x30]
	test ebx, ebx
	jz Mark_XAssetHeader_260
	mov [varScriptString], ebx
	movzx edi, byte [eax+0x1b]
	test edi, edi
	jg Mark_XAssetHeader_270
Mark_XAssetHeader_260:
	mov ebx, [eax+0x50]
	test ebx, ebx
	jz Mark_XAssetHeader_250
	mov [varXAnimNotifyInfo], ebx
	movzx edi, byte [eax+0x1c]
	test edi, edi
	jle Mark_XAssetHeader_250
	xor esi, esi
Mark_XAssetHeader_280:
	mov [varXAnimNotifyInfo], ebx
	mov [varScriptString], ebx
	mov [esp], ebx
	call Mark_ScriptStringCustom
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz Mark_XAssetHeader_280
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_60:
	mov eax, [varXAssetHeader]
	mov [varGfxImagePtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
Mark_XAssetHeader_360:
	mov [varGfxImage], eax
	mov [esp], eax
	call Mark_GfxImageAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_30:
	mov eax, [varXAssetHeader]
	mov [varXModelPtr], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mark_XModelPtr
Mark_XAssetHeader_50:
	mov eax, [varXAssetHeader]
	mov [varMaterialTechniqueSetPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varMaterialTechniqueSet], eax
	mov [esp], eax
	call Mark_MaterialTechniqueSetAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_40:
	mov eax, [varXAssetHeader]
Mark_XAssetHeader_370:
	mov [varMaterialHandle], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mark_MaterialHandle
Mark_XAssetHeader_70:
	mov eax, [varXAssetHeader]
	mov [varsnd_alias_list_ptr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_XAssetHeader_250
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_XAssetHeader_250
	xor esi, esi
	jmp Mark_XAssetHeader_290
Mark_XAssetHeader_320:
	mov edx, [varsnd_alias_t]
Mark_XAssetHeader_330:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_XAssetHeader_300
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_XAssetHeader_300:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_XAssetHeader_250
Mark_XAssetHeader_290:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_XAssetHeader_310
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_XAssetHeader_320
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_XAssetHeader_320
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_XAssetHeader_330
Mark_XAssetHeader_110:
	mov eax, [varXAssetHeader]
	mov [varComWorldPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varComWorld], eax
	mov [esp], eax
	call Mark_ComWorldAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_310:
	mov edx, ebx
	jmp Mark_XAssetHeader_330
Mark_XAssetHeader_270:
	xor esi, esi
Mark_XAssetHeader_340:
	mov [varScriptString], ebx
	mov [esp], ebx
	call Mark_ScriptStringCustom
	add ebx, 0x2
	add esi, 0x1
	cmp edi, esi
	jnz Mark_XAssetHeader_340
	mov eax, [varXAnimParts]
	jmp Mark_XAssetHeader_260
Mark_XAssetHeader_80:
	mov eax, [varXAssetHeader]
	mov [varSndCurvePtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_90:
	mov eax, [varXAssetHeader]
	mov [varLoadedSoundPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_100:
	mov eax, [varXAssetHeader]
	mov [varclipMap_ptr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varclipMap_t], eax
	mov [esp], eax
	call Mark_ClipMapAsset
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mark_clipMap_t
Mark_XAssetHeader_120:
	mov eax, [varXAssetHeader]
	mov [varGameWorldSpPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varGameWorldSp], eax
	mov [esp], eax
	call Mark_GameWorldSpAsset
	mov edx, [varGameWorldSp]
	lea eax, [edx+0x4]
	mov [varPathData], eax
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_XAssetHeader_250
	mov [varpathnode_t], ebx
	mov edi, [edx+0x4]
	test edi, edi
	jle Mark_XAssetHeader_250
	xor esi, esi
Mark_XAssetHeader_350:
	mov [varpathnode_t], ebx
	mov [varpathnode_constant_t], ebx
	call Mark_pathnode_constant_t
	sub ebx, 0xffffff80
	add esi, 0x1
	cmp edi, esi
	jnz Mark_XAssetHeader_350
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_130:
	mov eax, [varXAssetHeader]
	mov [varGameWorldMpPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varGameWorldMp], eax
	mov [esp], eax
	call Mark_GameWorldMpAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_140:
	mov eax, [varXAssetHeader]
	mov [varMapEntsPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varMapEnts], eax
	mov [esp], eax
	call Mark_MapEntsAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_150:
	mov eax, [varXAssetHeader]
	mov [varGfxWorldPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varGfxWorld], eax
	mov [esp], eax
	call Mark_GfxWorldAsset
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mark_GfxWorld
Mark_XAssetHeader_160:
	mov eax, [varXAssetHeader]
	mov [varGfxLightDefPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varGfxLightDef], eax
	mov [esp], eax
	call Mark_LightDefAsset
	mov edx, [varGfxLightDef]
	lea eax, [edx+0x4]
	mov [varGfxLightImage], eax
	mov [varGfxImagePtr], eax
	mov eax, [edx+0x4]
	test eax, eax
	jnz Mark_XAssetHeader_360
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_170:
	mov eax, [varXAssetHeader]
	mov [varFontHandle], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varFont], eax
	mov [esp], eax
	call Mark_FontAsset
	mov eax, [varFont]
	add eax, 0xc
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varFont]
	add eax, 0x10
	jmp Mark_XAssetHeader_370
Mark_XAssetHeader_180:
	mov eax, [varXAssetHeader]
	mov [varMenuListPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varMenuList], eax
	mov [esp], eax
	call Mark_MenuListAsset
	mov eax, [varMenuList]
	mov edx, [eax+0x8]
	mov [ebp-0x4c], edx
	test edx, edx
	jz Mark_XAssetHeader_250
	mov [varmenuDef_ptr], edx
	mov eax, [eax+0x4]
	mov [ebp-0x54], eax
	test eax, eax
	jle Mark_XAssetHeader_250
	mov dword [ebp-0x50], 0x0
Mark_XAssetHeader_480:
	mov eax, [ebp-0x4c]
	mov [varmenuDef_ptr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_380
	mov [varmenuDef_t], eax
	mov [esp], eax
	call Mark_MenuAsset
	mov eax, [varmenuDef_t]
	mov [varWindow], eax
	mov [varwindowDef_t], eax
	add eax, 0x98
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varmenuDef_t]
	mov edi, [eax+0x118]
	test edi, edi
	jz Mark_XAssetHeader_380
	mov [varitemDef_ptr], edi
	mov eax, [eax+0xa4]
	mov [ebp-0x48], eax
	test eax, eax
	jle Mark_XAssetHeader_380
	mov dword [ebp-0x44], 0x0
Mark_XAssetHeader_470:
	mov [varitemDef_ptr], edi
	mov eax, [edi]
	test eax, eax
	jz Mark_XAssetHeader_390
	mov [varitemDef_t], eax
	mov [varWindow], eax
	mov [varwindowDef_t], eax
	lea eax, [eax+0x98]
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov edx, [varitemDef_t]
	lea eax, [edx+0x120]
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x120]
	test eax, eax
	jz Mark_XAssetHeader_400
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_XAssetHeader_410
	mov [varsnd_alias_t], ebx
	mov eax, [eax+0x8]
	mov [ebp-0x40], eax
	test eax, eax
	jle Mark_XAssetHeader_410
	xor esi, esi
	jmp Mark_XAssetHeader_420
Mark_XAssetHeader_450:
	mov edx, [varsnd_alias_t]
Mark_XAssetHeader_460:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_XAssetHeader_430
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_XAssetHeader_430:
	add ebx, 0x5c
	add esi, 0x1
	cmp [ebp-0x40], esi
	jz Mark_XAssetHeader_410
Mark_XAssetHeader_420:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_XAssetHeader_440
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_XAssetHeader_450
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_XAssetHeader_450
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_XAssetHeader_460
Mark_XAssetHeader_410:
	mov edx, [varitemDef_t]
Mark_XAssetHeader_400:
	lea eax, [edx+0x12c]
	mov [varitemDefData_t], eax
	cmp dword [edx+0xb4], 0x6
	jnz Mark_XAssetHeader_390
	mov [varlistBoxDef_ptr], eax
	mov eax, [edx+0x12c]
	test eax, eax
	jz Mark_XAssetHeader_390
	mov [varlistBoxDef_t], eax
	add eax, 0x150
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
Mark_XAssetHeader_390:
	add edi, 0x4
	add dword [ebp-0x44], 0x1
	mov eax, [ebp-0x44]
	cmp [ebp-0x48], eax
	jnz Mark_XAssetHeader_470
Mark_XAssetHeader_380:
	add dword [ebp-0x4c], 0x4
	add dword [ebp-0x50], 0x1
	mov edx, [ebp-0x50]
	cmp [ebp-0x54], edx
	jnz Mark_XAssetHeader_480
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_440:
	mov edx, ebx
	jmp Mark_XAssetHeader_460
Mark_XAssetHeader_190:
	mov eax, [varXAssetHeader]
	mov [varmenuDef_ptr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varmenuDef_t], eax
	mov [esp], eax
	call Mark_MenuAsset
	mov eax, [varmenuDef_t]
	mov [varWindow], eax
	mov [varwindowDef_t], eax
	add eax, 0x98
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov eax, [varmenuDef_t]
	mov edi, [eax+0x118]
	test edi, edi
	jz Mark_XAssetHeader_250
	mov [varitemDef_ptr], edi
	mov eax, [eax+0xa4]
	mov [ebp-0x3c], eax
	test eax, eax
	jle Mark_XAssetHeader_250
	mov dword [ebp-0x38], 0x0
Mark_XAssetHeader_570:
	mov [varitemDef_ptr], edi
	mov eax, [edi]
	test eax, eax
	jz Mark_XAssetHeader_490
	mov [varitemDef_t], eax
	mov [varWindow], eax
	mov [varwindowDef_t], eax
	lea eax, [eax+0x98]
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
	mov edx, [varitemDef_t]
	lea eax, [edx+0x120]
	mov [varsnd_alias_list_ptr], eax
	mov eax, [edx+0x120]
	test eax, eax
	jz Mark_XAssetHeader_500
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_XAssetHeader_510
	mov [varsnd_alias_t], ebx
	mov eax, [eax+0x8]
	mov [ebp-0x34], eax
	test eax, eax
	jle Mark_XAssetHeader_510
	xor esi, esi
	jmp Mark_XAssetHeader_520
Mark_XAssetHeader_550:
	mov edx, [varsnd_alias_t]
Mark_XAssetHeader_560:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_XAssetHeader_530
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_XAssetHeader_530:
	add ebx, 0x5c
	add esi, 0x1
	cmp [ebp-0x34], esi
	jz Mark_XAssetHeader_510
Mark_XAssetHeader_520:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_XAssetHeader_540
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_XAssetHeader_550
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_XAssetHeader_550
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_XAssetHeader_560
Mark_XAssetHeader_510:
	mov edx, [varitemDef_t]
Mark_XAssetHeader_500:
	lea eax, [edx+0x12c]
	mov [varitemDefData_t], eax
	cmp dword [edx+0xb4], 0x6
	jnz Mark_XAssetHeader_490
	mov [varlistBoxDef_ptr], eax
	mov eax, [edx+0x12c]
	test eax, eax
	jz Mark_XAssetHeader_490
	mov [varlistBoxDef_t], eax
	add eax, 0x150
	mov [varMaterialHandle], eax
	call Mark_MaterialHandle
Mark_XAssetHeader_490:
	add edi, 0x4
	add dword [ebp-0x38], 0x1
	mov eax, [ebp-0x38]
	cmp [ebp-0x3c], eax
	jnz Mark_XAssetHeader_570
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_540:
	mov edx, ebx
	jmp Mark_XAssetHeader_560
Mark_XAssetHeader_200:
	mov eax, [varXAssetHeader]
	mov [varLocalizeEntryPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varLocalizeEntry], eax
	mov [esp], eax
	call Mark_LocalizeEntryAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_210:
	mov eax, [varXAssetHeader]
	mov [varWeaponDefPtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varWeaponDef], eax
	mov [esp], eax
	call Mark_WeaponDefAsset
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mark_WeaponDef
Mark_XAssetHeader_220:
	mov eax, [varXAssetHeader]
	mov [varFxEffectDefHandle], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varFxEffectDef], eax
	mov [esp], eax
	call Mark_FxEffectDefAsset
	mov edx, [varFxEffectDef]
	mov eax, [edx+0x1c]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varFxElemDef], eax
	mov esi, [edx+0x10]
	add esi, [edx+0x14]
	add esi, [edx+0x18]
	mov ebx, eax
	test esi, esi
	jle Mark_XAssetHeader_250
	xor edi, edi
Mark_XAssetHeader_580:
	mov [varFxElemDef], ebx
	lea eax, [ebx+0xbc]
	mov [varFxElemDefVisuals], eax
	call Mark_FxElemDefVisuals
	add ebx, 0xfc
	add edi, 0x1
	cmp esi, edi
	jnz Mark_XAssetHeader_580
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_240:
	mov eax, [varXAssetHeader]
	mov [varRawFilePtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varRawFile], eax
	mov [esp], eax
	call Mark_RawFileAsset
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_230:
	mov eax, [varXAssetHeader]
	mov [varFxImpactTablePtr], eax
	mov eax, [eax]
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varFxImpactTable], eax
	mov [esp], eax
	call Mark_FxImpactTableAsset
	mov eax, [varFxImpactTable]
	mov eax, [eax+0x4]
	mov [ebp-0x2c], eax
	test eax, eax
	jz Mark_XAssetHeader_250
	mov [varFxImpactEntry], eax
	mov dword [ebp-0x30], 0x0
Mark_XAssetHeader_670:
	mov edx, [ebp-0x2c]
	mov [varFxImpactEntry], edx
	mov [ebp-0x28], edx
	mov [varFxEffectDefHandle], edx
	mov dword [ebp-0x20], 0x1d
	jmp Mark_XAssetHeader_590
Mark_XAssetHeader_610:
	add dword [ebp-0x28], 0x4
	sub dword [ebp-0x20], 0x1
	jz Mark_XAssetHeader_600
	mov edx, [ebp-0x28]
Mark_XAssetHeader_590:
	mov [varFxEffectDefHandle], edx
	mov eax, [edx]
	test eax, eax
	jz Mark_XAssetHeader_610
	mov [varFxEffectDef], eax
	mov [esp], eax
	call Mark_FxEffectDefAsset
	mov edx, [varFxEffectDef]
	mov eax, [edx+0x1c]
	test eax, eax
	jz Mark_XAssetHeader_610
	mov [varFxElemDef], eax
	mov esi, [edx+0x10]
	add esi, [edx+0x14]
	add esi, [edx+0x18]
	mov ebx, eax
	test esi, esi
	jle Mark_XAssetHeader_610
	xor edi, edi
Mark_XAssetHeader_620:
	mov [varFxElemDef], ebx
	lea eax, [ebx+0xbc]
	mov [varFxElemDefVisuals], eax
	call Mark_FxElemDefVisuals
	add ebx, 0xfc
	add edi, 0x1
	cmp esi, edi
	jnz Mark_XAssetHeader_620
	jmp Mark_XAssetHeader_610
Mark_XAssetHeader_600:
	mov eax, [varFxImpactEntry]
	add eax, 0x74
	mov [ebp-0x24], eax
	mov [varFxEffectDefHandle], eax
	mov dword [ebp-0x1c], 0x4
	mov edx, eax
	mov [varFxEffectDefHandle], edx
	mov eax, [edx]
	test eax, eax
	jz Mark_XAssetHeader_630
Mark_XAssetHeader_660:
	mov [varFxEffectDef], eax
	mov [esp], eax
	call Mark_FxEffectDefAsset
	mov edx, [varFxEffectDef]
	mov eax, [edx+0x1c]
	test eax, eax
	jz Mark_XAssetHeader_630
	mov [varFxElemDef], eax
	mov esi, [edx+0x10]
	add esi, [edx+0x14]
	add esi, [edx+0x18]
	mov ebx, eax
	test esi, esi
	jg Mark_XAssetHeader_640
Mark_XAssetHeader_630:
	add dword [ebp-0x24], 0x4
	sub dword [ebp-0x1c], 0x1
	jz Mark_XAssetHeader_650
	mov edx, [ebp-0x24]
	mov [varFxEffectDefHandle], edx
	mov eax, [edx]
	test eax, eax
	jnz Mark_XAssetHeader_660
	jmp Mark_XAssetHeader_630
Mark_XAssetHeader_650:
	add dword [ebp-0x2c], 0x84
	add dword [ebp-0x30], 0x1
	cmp dword [ebp-0x30], 0xc
	jnz Mark_XAssetHeader_670
	jmp Mark_XAssetHeader_250
Mark_XAssetHeader_640:
	xor edi, edi
Mark_XAssetHeader_680:
	mov [varFxElemDef], ebx
	lea eax, [ebx+0xbc]
	mov [varFxElemDefVisuals], eax
	call Mark_FxElemDefVisuals
	add ebx, 0xfc
	add edi, 0x1
	cmp esi, edi
	jnz Mark_XAssetHeader_680
	jmp Mark_XAssetHeader_630


;Load_FxElemVisuals(unsigned char)
Load_FxElemVisuals:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	movzx edx, byte [ebp+0x8]
	mov eax, [varFxElemDef]
	movzx eax, byte [eax+0xb0]
	cmp al, 0x5
	jz Load_FxElemVisuals_10
	cmp al, 0xa
	jz Load_FxElemVisuals_20
	cmp al, 0x8
	jz Load_FxElemVisuals_30
	sub al, 0x6
	cmp al, 0x1
	jbe Load_FxElemVisuals_40
	mov eax, [varFxElemVisuals]
	mov [varMaterialHandle], eax
	movzx eax, dl
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_MaterialHandle
Load_FxElemVisuals_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_FxElemVisuals_10:
	mov eax, [varFxElemVisuals]
	mov [varXModelPtr], eax
	movzx eax, dl
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_XModelPtr
Load_FxElemVisuals_20:
	mov eax, [varFxElemVisuals]
	mov [varFxEffectDefRef], eax
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	movzx eax, dl
	mov [esp], eax
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxElemVisuals_50
	add eax, 0x1
	jz Load_FxElemVisuals_60
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_FxElemVisuals_50:
	mov eax, [varFxEffectDefRef]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_FxEffectDefFromName
Load_FxElemVisuals_30:
	mov eax, [varFxElemVisuals]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	movzx eax, dl
	mov [esp], eax
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxElemVisuals_40
	add eax, 0x1
	jz Load_FxElemVisuals_70
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_FxElemVisuals_60:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_FxElemVisuals_50
Load_FxElemVisuals_70:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [ebp+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_XStringCustom


;Load_FxImpactEntry(unsigned char)
Load_FxImpactEntry:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x84
	mov eax, [varFxImpactEntry]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varFxImpactEntry]
	mov [varFxEffectDefHandle], eax
	mov dword [esp+0x8], 0x74
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varFxEffectDefHandle]
	mov esi, 0x1d
Load_FxImpactEntry_10:
	mov [varFxEffectDefHandle], ebx
	mov dword [esp], 0x0
	call Load_FxEffectDefHandle
	add ebx, 0x4
	sub esi, 0x1
	jnz Load_FxImpactEntry_10
	mov eax, [varFxImpactEntry]
	add eax, 0x74
	mov [varFxEffectDefHandle], eax
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varFxEffectDefHandle]
	mov esi, 0x4
Load_FxImpactEntry_20:
	mov [varFxEffectDefHandle], ebx
	mov dword [esp], 0x0
	call Load_FxEffectDefHandle
	add ebx, 0x4
	sub esi, 0x1
	jnz Load_FxImpactEntry_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Load_FxImpactTable(unsigned char)
Load_FxImpactTable:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x8
	mov eax, [varFxImpactTable]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varFxImpactTable]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxImpactTable_10
	add eax, 0x1
	jz Load_FxImpactTable_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_FxImpactTable_10:
	mov ebx, [varFxImpactTable]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_FxImpactTable_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varFxImpactTable]
	mov eax, [eax+0x4]
	mov [varFxImpactEntry], eax
	mov dword [esp+0x8], 0x630
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varFxImpactEntry]
	mov esi, 0xc
Load_FxImpactTable_40:
	mov [varFxImpactEntry], ebx
	mov dword [esp], 0x0
	call Load_FxImpactEntry
	add ebx, 0x84
	sub esi, 0x1
	jnz Load_FxImpactTable_40
Load_FxImpactTable_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_FxImpactTable_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_FxImpactTable_10


;Load_PhysPresetPtr(unsigned char)
Load_PhysPresetPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varPhysPresetPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varPhysPresetPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_PhysPresetPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_PhysPresetPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_PhysPresetPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_PhysPresetPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varPhysPresetPtr]
	mov eax, [eax]
	mov [varPhysPreset], eax
	cmp esi, 0xfffffffe
	jz Load_PhysPresetPtr_30
	xor esi, esi
Load_PhysPresetPtr_80:
	mov dword [esp+0x8], 0x2c
	mov eax, [varPhysPreset]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varPhysPreset]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_PhysPresetPtr_40
	add eax, 0x1
	jz Load_PhysPresetPtr_50
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_PhysPresetPtr_40:
	mov eax, [varPhysPreset]
	add eax, 0x1c
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_PhysPresetPtr_60
	add eax, 0x1
	jz Load_PhysPresetPtr_70
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_PhysPresetPtr_60:
	call DB_PopStreamPos
	mov eax, [varPhysPresetPtr]
	mov [esp], eax
	call Load_PhysPresetAsset
	test esi, esi
	jz Load_PhysPresetPtr_10
	mov eax, [varPhysPresetPtr]
	mov eax, [eax]
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_PhysPresetPtr_50:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_PhysPresetPtr_40
Load_PhysPresetPtr_70:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_PhysPresetPtr_60
Load_PhysPresetPtr_30:
	call DB_InsertPointer
	mov esi, eax
	jmp Load_PhysPresetPtr_80
	add [eax], al


;Load_XAnimPartsPtr(unsigned char)
Load_XAnimPartsPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varXAnimPartsPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varXAnimPartsPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_XAnimPartsPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_XAnimPartsPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_XAnimPartsPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_XAnimPartsPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varXAnimPartsPtr]
	mov eax, [eax]
	mov [varXAnimParts], eax
	cmp esi, 0xfffffffe
	jz Load_XAnimPartsPtr_30
	xor ebx, ebx
Load_XAnimPartsPtr_40:
	mov dword [esp], 0x1
	call Load_XAnimParts
	mov eax, [varXAnimPartsPtr]
	mov [esp], eax
	call Load_XAnimPartsAsset
	test ebx, ebx
	jz Load_XAnimPartsPtr_10
	mov eax, [varXAnimPartsPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_XAnimPartsPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_XAnimPartsPtr_40
	nop


;Load_itemDefData_t(unsigned char)
Load_itemDefData_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	movzx edx, byte [ebp+0x8]
	mov eax, [varitemDef_t]
	mov eax, [eax+0xb4]
	cmp eax, 0x6
	jz Load_itemDefData_t_10
	cmp eax, 0x4
	jz Load_itemDefData_t_20
	cmp eax, 0x9
	jz Load_itemDefData_t_20
	cmp eax, 0x10
	jz Load_itemDefData_t_20
	cmp eax, 0x12
	jz Load_itemDefData_t_20
	cmp eax, 0xb
	jz Load_itemDefData_t_20
	cmp eax, 0xe
	jz Load_itemDefData_t_20
	cmp eax, 0xa
	jz Load_itemDefData_t_20
	test eax, eax
	jz Load_itemDefData_t_20
	cmp eax, 0x11
	jz Load_itemDefData_t_20
	cmp eax, 0xc
	jz Load_itemDefData_t_30
	cmp eax, 0xd
	jnz Load_itemDefData_t_40
	mov eax, [varitemDefData_t]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	movzx eax, dl
	mov [esp], eax
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDefData_t_40
	add eax, 0x1
	jz Load_itemDefData_t_50
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_itemDefData_t_20:
	mov eax, [varitemDefData_t]
	mov [vareditFieldDef_ptr], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	movzx eax, dl
	mov [esp], eax
	call Load_Stream
	mov ebx, [vareditFieldDef_ptr]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDefData_t_40
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [vareditFieldDef_ptr]
	mov eax, [eax]
	mov [vareditFieldDef_t], eax
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
Load_itemDefData_t_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_itemDefData_t_10:
	mov eax, [varitemDefData_t]
	mov [varlistBoxDef_ptr], eax
	movzx eax, dl
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_listBoxDef_ptr
Load_itemDefData_t_30:
	mov eax, [varitemDefData_t]
	mov [varmultiDef_ptr], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	movzx eax, dl
	mov [esp], eax
	call Load_Stream
	mov ebx, [varmultiDef_ptr]
	mov eax, [ebx]
	test eax, eax
	jz Load_itemDefData_t_40
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varmultiDef_ptr]
	mov eax, [eax]
	mov [varmultiDef_t], eax
	mov dword [ebp+0x8], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_multiDef_t
Load_itemDefData_t_50:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [ebp+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_XStringCustom
	nop


;Load_GameWorldMpPtr(unsigned char)
Load_GameWorldMpPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varGameWorldMpPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varGameWorldMpPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_GameWorldMpPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_GameWorldMpPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_GameWorldMpPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GameWorldMpPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGameWorldMpPtr]
	mov eax, [eax]
	mov [varGameWorldMp], eax
	cmp esi, 0xfffffffe
	jz Load_GameWorldMpPtr_30
	xor esi, esi
Load_GameWorldMpPtr_60:
	mov dword [esp+0x8], 0x4
	mov eax, [varGameWorldMp]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varGameWorldMp]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_GameWorldMpPtr_40
	add eax, 0x1
	jz Load_GameWorldMpPtr_50
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_GameWorldMpPtr_40:
	call DB_PopStreamPos
	mov eax, [varGameWorldMpPtr]
	mov [esp], eax
	call Load_GameWorldMpAsset
	test esi, esi
	jz Load_GameWorldMpPtr_10
	mov eax, [varGameWorldMpPtr]
	mov eax, [eax]
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GameWorldMpPtr_50:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_GameWorldMpPtr_40
Load_GameWorldMpPtr_30:
	call DB_InsertPointer
	mov esi, eax
	jmp Load_GameWorldMpPtr_60
	add [eax], al


;Load_GameWorldSpPtr(unsigned char)
Load_GameWorldSpPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varGameWorldSpPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varGameWorldSpPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_GameWorldSpPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_GameWorldSpPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_GameWorldSpPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GameWorldSpPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGameWorldSpPtr]
	mov eax, [eax]
	mov [varGameWorldSp], eax
	cmp esi, 0xfffffffe
	jz Load_GameWorldSpPtr_30
	xor esi, esi
Load_GameWorldSpPtr_60:
	mov dword [esp+0x8], 0x2c
	mov eax, [varGameWorldSp]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varGameWorldSp]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_GameWorldSpPtr_40
	add eax, 0x1
	jz Load_GameWorldSpPtr_50
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_GameWorldSpPtr_40:
	mov eax, [varGameWorldSp]
	add eax, 0x4
	mov [varPathData], eax
	mov dword [esp], 0x0
	call Load_PathData
	call DB_PopStreamPos
	mov eax, [varGameWorldSpPtr]
	mov [esp], eax
	call Load_GameWorldSpAsset
	test esi, esi
	jz Load_GameWorldSpPtr_10
	mov eax, [varGameWorldSpPtr]
	mov eax, [eax]
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GameWorldSpPtr_50:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_GameWorldSpPtr_40
Load_GameWorldSpPtr_30:
	call DB_InsertPointer
	mov esi, eax
	jmp Load_GameWorldSpPtr_60
	nop
	add [eax], al


;Load_GfxLightDefPtr(unsigned char)
Load_GfxLightDefPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varGfxLightDefPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varGfxLightDefPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_GfxLightDefPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_GfxLightDefPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_GfxLightDefPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxLightDefPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGfxLightDefPtr]
	mov eax, [eax]
	mov [varGfxLightDef], eax
	cmp esi, 0xfffffffe
	jz Load_GfxLightDefPtr_30
	xor ebx, ebx
Load_GfxLightDefPtr_40:
	mov dword [esp], 0x1
	call Load_GfxLightDef
	mov eax, [varGfxLightDefPtr]
	mov [esp], eax
	call Load_LightDefAsset
	test ebx, ebx
	jz Load_GfxLightDefPtr_10
	mov eax, [varGfxLightDefPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxLightDefPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_GfxLightDefPtr_40
	nop
	add [eax], al


;Load_GfxLightRegion(unsigned char)
Load_GfxLightRegion:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x8
	mov eax, [varGfxLightRegion]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varGfxLightRegion]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_GfxLightRegion_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varGfxLightRegion]
	mov edx, [eax+0x4]
	mov [varGfxLightRegionHull], edx
	mov edi, [eax]
	lea eax, [edi+edi*4]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov esi, [varGfxLightRegionHull]
	test edi, edi
	jg Load_GfxLightRegion_20
Load_GfxLightRegion_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_GfxLightRegion_20:
	mov dword [ebp-0x1c], 0x0
Load_GfxLightRegion_40:
	mov [varGfxLightRegionHull], esi
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varGfxLightRegionHull]
	mov eax, [ebx+0x4c]
	test eax, eax
	jz Load_GfxLightRegion_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4c], eax
	mov eax, [varGfxLightRegionHull]
	mov edx, [eax+0x4c]
	mov [varGfxLightRegionAxis], edx
	mov eax, [eax+0x48]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxLightRegion_30:
	add esi, 0x50
	add dword [ebp-0x1c], 0x1
	cmp edi, [ebp-0x1c]
	jnz Load_GfxLightRegion_40
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Load_GfxTextureLoad(unsigned char)
Load_GfxTextureLoad:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varGfxTextureLoad]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varGfxTextureLoad]
	mov esi, [ebx]
	test esi, esi
	jz Load_GfxTextureLoad_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_GfxTextureLoad_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_GfxTextureLoad_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxTextureLoad_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGfxTextureLoad]
	mov eax, [eax]
	mov [varGfxImageLoadDef], eax
	cmp esi, 0xfffffffe
	jz Load_GfxTextureLoad_30
	xor ebx, ebx
Load_GfxTextureLoad_40:
	mov dword [esp+0x8], 0x10
	mov eax, [varGfxImageLoadDef]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varGfxImageLoadDef]
	lea edx, [eax+0x10]
	mov [varbyte], edx
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varGfxImage]
	mov [esp+0x4], eax
	mov eax, [varGfxTextureLoad]
	mov [esp], eax
	call Load_Texture
	test ebx, ebx
	jz Load_GfxTextureLoad_10
	mov eax, [varGfxTextureLoad]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxTextureLoad_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_GfxTextureLoad_40
	add [eax], al


;Load_ItemKeyHandler(unsigned char)
Load_ItemKeyHandler:
Load_ItemKeyHandler_40:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0xc
	mov eax, [varItemKeyHandler]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varItemKeyHandler]
	add eax, 0x4
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_ItemKeyHandler_10
	add eax, 0x1
	jz Load_ItemKeyHandler_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_ItemKeyHandler_10:
	mov ebx, [varItemKeyHandler]
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_ItemKeyHandler_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varItemKeyHandler]
	mov eax, [eax+0x8]
	mov [varItemKeyHandlerNext], eax
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varItemKeyHandlerNext]
	mov [varItemKeyHandler], eax
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_ItemKeyHandler_40
Load_ItemKeyHandler_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_ItemKeyHandler_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_ItemKeyHandler_10


;Load_LoadedSoundPtr(unsigned char)
Load_LoadedSoundPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varLoadedSoundPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varLoadedSoundPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_LoadedSoundPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_LoadedSoundPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_LoadedSoundPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_LoadedSoundPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varLoadedSoundPtr]
	mov eax, [eax]
	mov [varLoadedSound], eax
	cmp esi, 0xfffffffe
	jz Load_LoadedSoundPtr_30
	xor esi, esi
Load_LoadedSoundPtr_60:
	mov dword [esp+0x8], 0x2c
	mov eax, [varLoadedSound]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varLoadedSound]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_LoadedSoundPtr_40
	add eax, 0x1
	jz Load_LoadedSoundPtr_50
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_LoadedSoundPtr_40:
	mov eax, [varLoadedSound]
	add eax, 0x4
	mov [varMssSound], eax
	mov dword [esp], 0x0
	call Load_MssSound
	call DB_PopStreamPos
	mov eax, [varLoadedSoundPtr]
	mov [esp], eax
	call Load_LoadedSoundAsset
	test esi, esi
	jz Load_LoadedSoundPtr_10
	mov eax, [varLoadedSoundPtr]
	mov eax, [eax]
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_LoadedSoundPtr_50:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_LoadedSoundPtr_40
Load_LoadedSoundPtr_30:
	call DB_InsertPointer
	mov esi, eax
	jmp Load_LoadedSoundPtr_60
	nop
	add [eax], al


;Load_StringTablePtr(unsigned char)
Load_StringTablePtr:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x4
	mov eax, [varStringTablePtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varStringTablePtr]
	mov eax, [ebx]
	test eax, eax
	jz Load_StringTablePtr_10
	add eax, 0x1
	jz Load_StringTablePtr_20
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_StringTablePtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varStringTablePtr]
	mov eax, [eax]
	mov [varStringTable], eax
	mov dword [esp], 0x1
	call Load_StringTable
	mov eax, [varStringTablePtr]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_StringTableAsset
Load_StringTablePtr_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Load_XAnimDeltaPart(unsigned char)
Load_XAnimDeltaPart:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x8
	mov eax, [varXAnimDeltaPart]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varXAnimDeltaPart]
	mov eax, [ebx]
	test eax, eax
	jz Load_XAnimDeltaPart_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varXAnimDeltaPart]
	mov eax, [eax]
	mov [varXAnimPartTrans], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varXAnimPartTrans]
	lea edx, [eax+0x4]
	mov [varXAnimPartTransData], edx
	cmp word [eax], 0x0
	jnz Load_XAnimDeltaPart_20
	mov [varvec3_t], edx
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXAnimDeltaPart]
Load_XAnimDeltaPart_10:
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_XAnimDeltaPart_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varXAnimDeltaPart]
	mov eax, [eax+0x4]
	mov [varXAnimDeltaPartQuat], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varXAnimDeltaPartQuat]
	lea edx, [eax+0x4]
	mov [varXAnimDeltaPartQuatData], edx
	cmp word [eax], 0x0
	jnz Load_XAnimDeltaPart_40
	mov [varXQuat2], edx
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_XAnimDeltaPart_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_XAnimDeltaPart_40:
	mov [varXAnimDeltaPartQuatDataFrames], edx
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov edx, [varXAnimDeltaPartQuatDataFrames]
	add edx, 0x4
	mov [varXAnimDynamicIndicesDeltaQuat], edx
	mov eax, [varXAnimParts]
	cmp word [eax+0xe], 0xff
	ja Load_XAnimDeltaPart_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov edx, [varXAnimDynamicIndicesDeltaQuat]
	mov [varbyte], edx
	mov eax, [varXAnimDeltaPartQuat]
	movzx eax, word [eax]
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_XAnimDeltaPart_80:
	mov ebx, [varXAnimDeltaPartQuatDataFrames]
	mov eax, [ebx]
	test eax, eax
	jz Load_XAnimDeltaPart_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varXAnimDeltaPartQuatDataFrames]
	mov edx, [eax]
	mov [varXQuat2], edx
	mov eax, [varXAnimDeltaPartQuat]
	movzx eax, word [eax]
	test ax, ax
	jnz Load_XAnimDeltaPart_60
	xor eax, eax
Load_XAnimDeltaPart_100:
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_XAnimDeltaPart_20:
	mov [varXAnimPartTransFrames], edx
	mov dword [esp+0x8], 0x1c
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov edx, [varXAnimPartTransFrames]
	add edx, 0x1c
	mov [varXAnimDynamicIndicesTrans], edx
	mov eax, [varXAnimParts]
	cmp word [eax+0xe], 0xff
	ja Load_XAnimDeltaPart_70
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov edx, [varXAnimDynamicIndicesTrans]
	mov [varbyte], edx
	mov eax, [varXAnimPartTrans]
	movzx eax, word [eax]
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_XAnimDeltaPart_90:
	mov eax, [varXAnimPartTransFrames]
	add eax, 0x18
	mov [varXAnimDynamicFrames], eax
	mov dword [esp], 0x0
	call Load_XAnimDynamicFrames
	mov ebx, [varXAnimDeltaPart]
	jmp Load_XAnimDeltaPart_10
Load_XAnimDeltaPart_50:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov edx, [varXAnimDynamicIndicesDeltaQuat]
	mov [varUnsignedShort], edx
	mov eax, [varXAnimDeltaPartQuat]
	movzx eax, word [eax]
	lea eax, [eax+eax+0x2]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_XAnimDeltaPart_80
Load_XAnimDeltaPart_70:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov edx, [varXAnimDynamicIndicesTrans]
	mov [varUnsignedShort], edx
	mov eax, [varXAnimPartTrans]
	movzx eax, word [eax]
	lea eax, [eax+eax+0x2]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_XAnimDeltaPart_90
Load_XAnimDeltaPart_60:
	movzx eax, ax
	add eax, 0x1
	jmp Load_XAnimDeltaPart_100
	nop


;Load_listBoxDef_ptr(unsigned char)
Load_listBoxDef_ptr:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x4
	mov eax, [varlistBoxDef_ptr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varlistBoxDef_ptr]
	mov eax, [ebx]
	test eax, eax
	jz Load_listBoxDef_ptr_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varlistBoxDef_ptr]
	mov eax, [eax]
	mov [varlistBoxDef_t], eax
	mov dword [esp+0x8], 0x154
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varlistBoxDef_t]
	add eax, 0x120
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_listBoxDef_ptr_20
	add eax, 0x1
	jz Load_listBoxDef_ptr_30
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_listBoxDef_ptr_20:
	mov eax, [varlistBoxDef_t]
	add eax, 0x150
	mov [varMaterialHandle], eax
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_MaterialHandle
Load_listBoxDef_ptr_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_listBoxDef_ptr_30:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	mov eax, [varlistBoxDef_t]
	add eax, 0x150
	mov [varMaterialHandle], eax
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_MaterialHandle
	nop
	add [eax], al


;Mark_MaterialHandle()
Mark_MaterialHandle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [varMaterialHandle]
	mov eax, [eax]
	test eax, eax
	jz Mark_MaterialHandle_10
	mov [varMaterial], eax
	mov [esp], eax
	call Mark_MaterialAsset
	mov edx, [varMaterial]
	lea eax, [edx+0x40]
	mov [varMaterialTechniqueSetPtr], eax
	mov eax, [edx+0x40]
	test eax, eax
	jz Mark_MaterialHandle_20
	mov [varMaterialTechniqueSet], eax
	mov [esp], eax
	call Mark_MaterialTechniqueSetAsset
	mov edx, [varMaterial]
Mark_MaterialHandle_20:
	mov ebx, [edx+0x44]
	test ebx, ebx
	jz Mark_MaterialHandle_10
	mov [varMaterialTextureDef], ebx
	movzx edi, byte [edx+0x3a]
	test edi, edi
	jle Mark_MaterialHandle_10
	xor esi, esi
	jmp Mark_MaterialHandle_30
Mark_MaterialHandle_50:
	mov [varGfxImagePtr], eax
	mov eax, [ebx+0x8]
	test eax, eax
	jz Mark_MaterialHandle_40
Mark_MaterialHandle_60:
	mov [varGfxImage], eax
	mov [esp], eax
	call Mark_GfxImageAsset
Mark_MaterialHandle_40:
	add ebx, 0xc
	add esi, 0x1
	cmp edi, esi
	jz Mark_MaterialHandle_10
Mark_MaterialHandle_30:
	mov [varMaterialTextureDef], ebx
	lea eax, [ebx+0x8]
	mov [varMaterialTextureDefInfo], eax
	cmp byte [ebx+0x7], 0xb
	jnz Mark_MaterialHandle_50
	mov edx, [ebx+0x8]
	test edx, edx
	jz Mark_MaterialHandle_40
	mov [varwater_t], edx
	lea eax, [edx+0x40]
	mov [varGfxImagePtr], eax
	mov eax, [edx+0x40]
	test eax, eax
	jnz Mark_MaterialHandle_60
	add ebx, 0xc
	add esi, 0x1
	cmp edi, esi
	jnz Mark_MaterialHandle_30
Mark_MaterialHandle_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_FxElemDefVisuals(unsigned char)
Load_FxElemDefVisuals:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx edx, byte [ebp+0x8]
	mov eax, [varFxElemDef]
	cmp byte [eax+0xb0], 0x9
	jz Load_FxElemDefVisuals_10
	cmp byte [eax+0xb1], 0x1
	jbe Load_FxElemDefVisuals_20
	mov ebx, [varFxElemDefVisuals]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxElemDefVisuals_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varFxElemDefVisuals]
	mov edx, [eax]
	mov [varFxElemVisuals], edx
	mov eax, [varFxElemDef]
	movzx edi, byte [eax+0xb1]
	lea eax, [edi*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varFxElemVisuals]
	test edi, edi
	jg Load_FxElemDefVisuals_40
Load_FxElemDefVisuals_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_FxElemDefVisuals_40:
	xor esi, esi
Load_FxElemDefVisuals_50:
	mov [varFxElemVisuals], ebx
	mov dword [esp], 0x0
	call Load_FxElemVisuals
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Load_FxElemDefVisuals_50
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_FxElemDefVisuals_10:
	mov ebx, [varFxElemDefVisuals]
	mov edx, [ebx]
	test edx, edx
	jz Load_FxElemDefVisuals_30
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varFxElemDefVisuals]
	mov edx, [eax]
	mov [varFxElemMarkVisuals], edx
	mov eax, [varFxElemDef]
	movzx eax, byte [eax+0xb1]
	mov [ebp-0x20], eax
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov edi, [varFxElemMarkVisuals]
	mov eax, [ebp-0x20]
	test eax, eax
	jle Load_FxElemDefVisuals_30
	mov dword [ebp-0x1c], 0x0
Load_FxElemDefVisuals_70:
	mov [varFxElemMarkVisuals], edi
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varFxElemMarkVisuals]
	mov [varMaterialHandle], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varMaterialHandle]
	mov esi, 0x2
Load_FxElemDefVisuals_60:
	mov [varMaterialHandle], ebx
	mov dword [esp], 0x0
	call Load_MaterialHandle
	add ebx, 0x4
	sub esi, 0x1
	jnz Load_FxElemDefVisuals_60
	add edi, 0x8
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jnz Load_FxElemDefVisuals_70
	jmp Load_FxElemDefVisuals_30
Load_FxElemDefVisuals_20:
	mov eax, [varFxElemDefVisuals]
	mov [varFxElemVisuals], eax
	movzx eax, dl
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Load_FxElemVisuals


;Load_FxImpactTablePtr(unsigned char)
Load_FxImpactTablePtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varFxImpactTablePtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varFxImpactTablePtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_FxImpactTablePtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_FxImpactTablePtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_FxImpactTablePtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_FxImpactTablePtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varFxImpactTablePtr]
	mov eax, [eax]
	mov [varFxImpactTable], eax
	cmp esi, 0xfffffffe
	jz Load_FxImpactTablePtr_30
	xor ebx, ebx
Load_FxImpactTablePtr_40:
	mov dword [esp], 0x1
	call Load_FxImpactTable
	mov eax, [varFxImpactTablePtr]
	mov [esp], eax
	call Load_FxImpactTableAsset
	test ebx, ebx
	jz Load_FxImpactTablePtr_10
	mov eax, [varFxImpactTablePtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_FxImpactTablePtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_FxImpactTablePtr_40
	nop


;Load_LocalizeEntryPtr(unsigned char)
Load_LocalizeEntryPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varLocalizeEntryPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varLocalizeEntryPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_LocalizeEntryPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_LocalizeEntryPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_LocalizeEntryPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_LocalizeEntryPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varLocalizeEntryPtr]
	mov eax, [eax]
	mov [varLocalizeEntry], eax
	cmp esi, 0xfffffffe
	jz Load_LocalizeEntryPtr_30
	xor esi, esi
Load_LocalizeEntryPtr_80:
	mov dword [esp+0x8], 0x8
	mov eax, [varLocalizeEntry]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varLocalizeEntry]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_LocalizeEntryPtr_40
	add eax, 0x1
	jz Load_LocalizeEntryPtr_50
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_LocalizeEntryPtr_40:
	mov eax, [varLocalizeEntry]
	add eax, 0x4
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_LocalizeEntryPtr_60
	add eax, 0x1
	jz Load_LocalizeEntryPtr_70
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_LocalizeEntryPtr_60:
	call DB_PopStreamPos
	mov eax, [varLocalizeEntryPtr]
	mov [esp], eax
	call Load_LocalizeEntryAsset
	test esi, esi
	jz Load_LocalizeEntryPtr_10
	mov eax, [varLocalizeEntryPtr]
	mov eax, [eax]
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_LocalizeEntryPtr_50:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_LocalizeEntryPtr_40
Load_LocalizeEntryPtr_70:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_LocalizeEntryPtr_60
Load_LocalizeEntryPtr_30:
	call DB_InsertPointer
	mov esi, eax
	jmp Load_LocalizeEntryPtr_80


;Load_snd_alias_list_t(unsigned char)
Load_snd_alias_list_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0xc
	mov eax, [varsnd_alias_list_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varsnd_alias_list_t]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_snd_alias_list_t_10
	add eax, 0x1
	jz Load_snd_alias_list_t_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_snd_alias_list_t_10:
	mov ebx, [varsnd_alias_list_t]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_snd_alias_list_t_30
	add eax, 0x1
	jz Load_snd_alias_list_t_40
	lea eax, [ebx+0x4]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_snd_alias_list_t_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_snd_alias_list_t_40:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varsnd_alias_list_t]
	mov edx, [eax+0x4]
	mov [varsnd_alias_t], edx
	mov edi, [eax+0x8]
	lea eax, [edi+edi*2]
	shl eax, 0x3
	sub eax, edi
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varsnd_alias_t]
	test edi, edi
	jle Load_snd_alias_list_t_30
	xor esi, esi
Load_snd_alias_list_t_50:
	mov [varsnd_alias_t], ebx
	mov dword [esp], 0x0
	call Load_snd_alias_t
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jnz Load_snd_alias_list_t_50
	jmp Load_snd_alias_list_t_30
Load_snd_alias_list_t_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_snd_alias_list_t_10
	nop


;Mark_FxElemDefVisuals()
Mark_FxElemDefVisuals:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [varFxElemDef]
	cmp byte [edx+0xb0], 0x9
	jz Mark_FxElemDefVisuals_10
	cmp byte [edx+0xb1], 0x1
	jbe Mark_FxElemDefVisuals_20
	mov eax, [varFxElemDefVisuals]
	mov ebx, [eax]
	test ebx, ebx
	jz Mark_FxElemDefVisuals_30
	mov [varFxElemVisuals], ebx
	movzx edi, byte [edx+0xb1]
	test edi, edi
	jle Mark_FxElemDefVisuals_30
	xor esi, esi
	jmp Mark_FxElemDefVisuals_40
Mark_FxElemDefVisuals_60:
	cmp al, 0xa
	jz Mark_FxElemDefVisuals_50
	cmp al, 0x8
	jz Mark_FxElemDefVisuals_50
	sub al, 0x6
	cmp al, 0x1
	jbe Mark_FxElemDefVisuals_50
	mov [varMaterialHandle], ebx
	call Mark_MaterialHandle
Mark_FxElemDefVisuals_50:
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jz Mark_FxElemDefVisuals_30
Mark_FxElemDefVisuals_70:
	mov edx, [varFxElemDef]
Mark_FxElemDefVisuals_40:
	mov [varFxElemVisuals], ebx
	movzx eax, byte [edx+0xb0]
	cmp al, 0x5
	jnz Mark_FxElemDefVisuals_60
	mov [varXModelPtr], ebx
	call Mark_XModelPtr
	add ebx, 0x4
	add esi, 0x1
	cmp edi, esi
	jnz Mark_FxElemDefVisuals_70
Mark_FxElemDefVisuals_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_FxElemDefVisuals_10:
	mov eax, [varFxElemDefVisuals]
	mov edi, [eax]
	test edi, edi
	jz Mark_FxElemDefVisuals_30
	mov [varFxElemMarkVisuals], edi
	movzx edx, byte [edx+0xb1]
	mov [ebp-0x20], edx
	test edx, edx
	jle Mark_FxElemDefVisuals_30
	mov dword [ebp-0x1c], 0x0
Mark_FxElemDefVisuals_90:
	mov [varFxElemMarkVisuals], edi
	mov ebx, edi
	mov [varMaterialHandle], edi
	mov esi, 0x2
Mark_FxElemDefVisuals_80:
	mov [varMaterialHandle], ebx
	call Mark_MaterialHandle
	add ebx, 0x4
	sub esi, 0x1
	jnz Mark_FxElemDefVisuals_80
	add edi, 0x8
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jnz Mark_FxElemDefVisuals_90
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_FxElemDefVisuals_20:
	mov ecx, [varFxElemDefVisuals]
	mov [varFxElemVisuals], ecx
	movzx eax, byte [edx+0xb0]
	cmp al, 0x5
	jz Mark_FxElemDefVisuals_100
	cmp al, 0xa
	jz Mark_FxElemDefVisuals_30
	cmp al, 0x8
	jz Mark_FxElemDefVisuals_30
	sub al, 0x6
	cmp al, 0x1
	jbe Mark_FxElemDefVisuals_30
	mov [varMaterialHandle], ecx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mark_MaterialHandle
Mark_FxElemDefVisuals_100:
	mov [varXModelPtr], ecx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mark_XModelPtr
	add [eax], al


;Load_FxEffectDefHandle(unsigned char)
Load_FxEffectDefHandle:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varFxEffectDefHandle]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varFxEffectDefHandle]
	mov esi, [ebx]
	test esi, esi
	jz Load_FxEffectDefHandle_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_FxEffectDefHandle_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_FxEffectDefHandle_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_FxEffectDefHandle_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varFxEffectDefHandle]
	mov eax, [eax]
	mov [varFxEffectDef], eax
	cmp esi, 0xfffffffe
	jz Load_FxEffectDefHandle_30
	xor ebx, ebx
Load_FxEffectDefHandle_40:
	mov dword [esp], 0x1
	call Load_FxEffectDef
	mov eax, [varFxEffectDefHandle]
	mov [esp], eax
	call Load_FxEffectDefAsset
	test ebx, ebx
	jz Load_FxEffectDefHandle_10
	mov eax, [varFxEffectDefHandle]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_FxEffectDefHandle_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_FxEffectDefHandle_40
	nop


;Load_GfxShadowGeometry(unsigned char)
Load_GfxShadowGeometry:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0xc
	mov eax, [varGfxShadowGeometry]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varGfxShadowGeometry]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_GfxShadowGeometry_10
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varGfxShadowGeometry]
	mov edx, [eax+0x4]
	mov [varushort], edx
	movzx eax, word [eax]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxShadowGeometry]
Load_GfxShadowGeometry_10:
	mov eax, [ebx+0x8]
	test eax, eax
	jz Load_GfxShadowGeometry_20
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varGfxShadowGeometry]
	mov edx, [eax+0x8]
	mov [varushort], edx
	movzx eax, word [eax+0x2]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxShadowGeometry_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Load_pathnode_tree_ptr(unsigned char)
Load_pathnode_tree_ptr:
Load_pathnode_tree_ptr_40:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varpathnode_tree_ptr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varpathnode_tree_ptr]
	mov eax, [ebx]
	test eax, eax
	jz Load_pathnode_tree_ptr_10
	add eax, 0x1
	jz Load_pathnode_tree_ptr_20
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_pathnode_tree_ptr_30:
	mov [varpathnode_tree_nodes_t], edx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varpathnode_tree_nodes_t]
	mov edx, [ebx+0x4]
	test edx, edx
	jz Load_pathnode_tree_ptr_10
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varpathnode_tree_nodes_t]
	mov edx, [eax+0x4]
	mov [varushort], edx
	mov eax, [eax]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_pathnode_tree_ptr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Load_pathnode_tree_ptr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varpathnode_tree_ptr]
	mov eax, [eax]
	mov [varpathnode_tree_t], eax
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varpathnode_tree_t]
	lea edx, [eax+0x8]
	mov [varpathnode_tree_info_t], edx
	mov ecx, [eax]
	test ecx, ecx
	js Load_pathnode_tree_ptr_30
	mov [varpathnode_tree_ptr], edx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varpathnode_tree_ptr]
	mov esi, 0x2
Load_pathnode_tree_ptr_50:
	mov [varpathnode_tree_ptr], ebx
	mov dword [esp], 0x0
	call Load_pathnode_tree_ptr_40
	add ebx, 0x4
	sub esi, 0x1
	jnz Load_pathnode_tree_ptr_50
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Mark_FxEffectDefHandle()
Mark_FxEffectDefHandle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [varFxEffectDefHandle]
	mov eax, [eax]
	test eax, eax
	jz Mark_FxEffectDefHandle_10
	mov [varFxEffectDef], eax
	mov [esp], eax
	call Mark_FxEffectDefAsset
	mov edx, [varFxEffectDef]
	mov eax, [edx+0x1c]
	test eax, eax
	jz Mark_FxEffectDefHandle_10
	mov [varFxElemDef], eax
	mov esi, [edx+0x10]
	add esi, [edx+0x14]
	add esi, [edx+0x18]
	mov ebx, eax
	test esi, esi
	jg Mark_FxEffectDefHandle_20
Mark_FxEffectDefHandle_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_FxEffectDefHandle_20:
	xor edi, edi
Mark_FxEffectDefHandle_30:
	mov [varFxElemDef], ebx
	lea eax, [ebx+0xbc]
	mov [varFxElemDefVisuals], eax
	call Mark_FxElemDefVisuals
	add ebx, 0xfc
	add edi, 0x1
	cmp esi, edi
	jnz Mark_FxEffectDefHandle_30
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_GfxWorldDpvsPlanes(unsigned char)
Load_GfxWorldDpvsPlanes:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x10
	mov eax, [varGfxWorldDpvsPlanes]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varGfxWorldDpvsPlanes]
	mov eax, [ebx+0x4]
	test eax, eax
	jz Load_GfxWorldDpvsPlanes_10
	add eax, 0x1
	jz Load_GfxWorldDpvsPlanes_20
	lea eax, [ebx+0x4]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
	mov ebx, [varGfxWorldDpvsPlanes]
Load_GfxWorldDpvsPlanes_10:
	mov edx, [ebx+0x8]
	test edx, edx
	jz Load_GfxWorldDpvsPlanes_30
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x8], eax
	mov eax, [varGfxWorldDpvsPlanes]
	mov edx, [eax+0x8]
	mov [varushort], edx
	mov eax, [varGfxWorld]
	mov eax, [eax+0xc]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsPlanes_30:
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsPlanes]
	mov eax, [ebx+0xc]
	test eax, eax
	jz Load_GfxWorldDpvsPlanes_40
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0xc], eax
	mov eax, [varGfxWorldDpvsPlanes]
	mov edx, [eax+0xc]
	mov [varraw_uint], edx
	mov eax, [eax]
	shl eax, 0xa
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsPlanes_40:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_PopStreamPos
Load_GfxWorldDpvsPlanes_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4], eax
	mov eax, [varGfxWorldDpvsPlanes]
	mov edx, [eax+0x4]
	mov [varcplane_t], edx
	mov eax, [varGfxWorld]
	mov eax, [eax+0x8]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorldDpvsPlanes]
	jmp Load_GfxWorldDpvsPlanes_10


;Load_GfxWorldDpvsStatic(unsigned char)
Load_GfxWorldDpvsStatic:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x68
	mov eax, [varGfxWorldDpvsStatic]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov eax, [ebx+0x2c]
	test eax, eax
	jz Load_GfxWorldDpvsStatic_10
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x2c], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x2c]
	mov [varraw_byte], edx
	mov eax, [eax]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_10:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov eax, [ebx+0x30]
	test eax, eax
	jz Load_GfxWorldDpvsStatic_20
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x30], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x30]
	mov [varraw_byte], edx
	mov eax, [eax]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_20:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov edi, [ebx+0x34]
	test edi, edi
	jz Load_GfxWorldDpvsStatic_30
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x34], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x34]
	mov [varraw_byte], edx
	mov eax, [eax]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_30:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov esi, [ebx+0x38]
	test esi, esi
	jz Load_GfxWorldDpvsStatic_40
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x38], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x38]
	mov [varraw_byte], edx
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_40:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov ecx, [ebx+0x3c]
	test ecx, ecx
	jz Load_GfxWorldDpvsStatic_50
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x3c], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x3c]
	mov [varraw_byte], edx
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_50:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov edx, [ebx+0x40]
	test edx, edx
	jz Load_GfxWorldDpvsStatic_60
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx+0x40], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x40]
	mov [varraw_byte], edx
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_60:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov eax, [ebx+0x44]
	test eax, eax
	jz Load_GfxWorldDpvsStatic_70
	mov dword [esp], 0x7f
	call DB_AllocStreamPos
	mov [ebx+0x44], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x44]
	mov [varraw_uint128], edx
	mov eax, [eax+0x24]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_70:
	call DB_PopStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov eax, [ebx+0x48]
	test eax, eax
	jz Load_GfxWorldDpvsStatic_80
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x48], eax
	mov edx, [varGfxWorldDpvsStatic]
	mov ecx, [edx+0x48]
	mov [varushort], ecx
	mov eax, [edx+0x4]
	add eax, [edx+0x8]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorldDpvsStatic]
Load_GfxWorldDpvsStatic_80:
	mov eax, [ebx+0x4c]
	test eax, eax
	jz Load_GfxWorldDpvsStatic_90
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x4c], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov ecx, [eax+0x4c]
	mov [varGfxStaticModelInst], ecx
	mov eax, [eax]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorldDpvsStatic]
Load_GfxWorldDpvsStatic_90:
	mov eax, [ebx+0x50]
	test eax, eax
	jz Load_GfxWorldDpvsStatic_100
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x50], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x50]
	mov [varGfxSurface], edx
	mov eax, [varGfxWorld]
	mov edi, [eax+0x18]
	lea eax, [edi+edi*2]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxSurface]
	test edi, edi
	jg Load_GfxWorldDpvsStatic_110
Load_GfxWorldDpvsStatic_190:
	mov ebx, [varGfxWorldDpvsStatic]
Load_GfxWorldDpvsStatic_100:
	mov eax, [ebx+0x54]
	test eax, eax
	jz Load_GfxWorldDpvsStatic_120
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x54], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x54]
	mov [varGfxCullGroup], edx
	mov eax, [varGfxWorld]
	mov eax, [eax+0xe0]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorldDpvsStatic]
Load_GfxWorldDpvsStatic_120:
	mov eax, [ebx+0x58]
	test eax, eax
	jz Load_GfxWorldDpvsStatic_130
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x58], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x58]
	mov [varGfxStaticModelDrawInst], edx
	mov esi, [eax]
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxStaticModelDrawInst]
	test esi, esi
	jg Load_GfxWorldDpvsStatic_140
Load_GfxWorldDpvsStatic_130:
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov edi, [ebx+0x5c]
	test edi, edi
	jz Load_GfxWorldDpvsStatic_150
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x5c], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x5c]
	mov [varGfxDrawSurf], edx
	mov eax, [eax+0x4]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_150:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsStatic]
	mov esi, [ebx+0x60]
	test esi, esi
	jz Load_GfxWorldDpvsStatic_160
	mov dword [esp], 0x7f
	call DB_AllocStreamPos
	mov [ebx+0x60], eax
	mov eax, [varGfxWorldDpvsStatic]
	mov edx, [eax+0x60]
	mov [varraw_uint128], edx
	mov eax, [eax+0x28]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsStatic_160:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_GfxWorldDpvsStatic_140:
	xor edi, edi
Load_GfxWorldDpvsStatic_170:
	mov [varGfxStaticModelDrawInst], ebx
	mov dword [esp+0x8], 0x4c
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varGfxStaticModelDrawInst]
	add eax, 0x38
	mov [varXModelPtr], eax
	mov dword [esp], 0x0
	call Load_XModelPtr
	add ebx, 0x4c
	add edi, 0x1
	cmp esi, edi
	jnz Load_GfxWorldDpvsStatic_170
	jmp Load_GfxWorldDpvsStatic_130
Load_GfxWorldDpvsStatic_110:
	xor esi, esi
Load_GfxWorldDpvsStatic_180:
	mov [varGfxSurface], ebx
	mov dword [esp+0x8], 0x30
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varGfxSurface]
	add eax, 0x10
	mov [varMaterialHandle], eax
	mov dword [esp], 0x0
	call Load_MaterialHandle
	add ebx, 0x30
	add esi, 0x1
	cmp edi, esi
	jnz Load_GfxWorldDpvsStatic_180
	jmp Load_GfxWorldDpvsStatic_190
	nop


;Load_GfxWorldVertexData(unsigned char)
Load_GfxWorldVertexData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x8
	mov eax, [varGfxWorldVertexData]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varGfxWorldVertexData]
	mov edx, [ebx]
	test edx, edx
	jz Load_GfxWorldVertexData_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGfxWorldVertexData]
	mov ecx, [eax]
	mov [varGfxWorldVertex0], ecx
	mov eax, [varGfxWorld]
	mov eax, [eax+0x30]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorldVertexData]
Load_GfxWorldVertexData_10:
	lea eax, [ebx+0x4]
	mov [varGfxVertexBuffer], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ecx, [varGfxWorld]
	mov eax, [ecx+0x30]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp+0x8], edx
	mov eax, [ecx+0x34]
	mov [esp+0x4], eax
	mov eax, [varGfxWorldVertexData]
	add eax, 0x4
	mov [esp], eax
	call Load_VertexBuffer
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Load_XAnimDynamicFrames(unsigned char)
Load_XAnimDynamicFrames:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [varXAnimPartTrans]
	cmp byte [eax+0x2], 0x0
	jz Load_XAnimDynamicFrames_10
	mov ebx, [varXAnimDynamicFrames]
	mov edx, [ebx]
	test edx, edx
	jz Load_XAnimDynamicFrames_20
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varXAnimDynamicFrames]
	mov edx, [eax]
	mov [varByteVec], edx
	mov eax, [varXAnimPartTrans]
	movzx eax, word [eax]
	test ax, ax
	jnz Load_XAnimDynamicFrames_30
	xor eax, eax
Load_XAnimDynamicFrames_50:
	lea eax, [eax+eax*2]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_XAnimDynamicFrames_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_XAnimDynamicFrames_10:
	mov ebx, [varXAnimDynamicFrames]
	mov eax, [ebx]
	test eax, eax
	jz Load_XAnimDynamicFrames_20
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varXAnimDynamicFrames]
	mov edx, [eax]
	mov [varUShortVec], edx
	mov eax, [varXAnimPartTrans]
	movzx eax, word [eax]
	test ax, ax
	jnz Load_XAnimDynamicFrames_40
	xor eax, eax
Load_XAnimDynamicFrames_60:
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_XAnimDynamicFrames_30:
	movzx eax, ax
	add eax, 0x1
	jmp Load_XAnimDynamicFrames_50
Load_XAnimDynamicFrames_40:
	movzx eax, ax
	add eax, 0x1
	jmp Load_XAnimDynamicFrames_60
	add [eax], al


;Load_snd_alias_list_ptr(unsigned char)
Load_snd_alias_list_ptr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varsnd_alias_list_ptr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varsnd_alias_list_ptr]
	mov esi, [ebx]
	test esi, esi
	jz Load_snd_alias_list_ptr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_snd_alias_list_ptr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_snd_alias_list_ptr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_snd_alias_list_ptr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varsnd_alias_list_ptr]
	mov eax, [eax]
	mov [varsnd_alias_list_t], eax
	cmp esi, 0xfffffffe
	jz Load_snd_alias_list_ptr_30
	xor ebx, ebx
Load_snd_alias_list_ptr_40:
	mov dword [esp], 0x1
	call Load_snd_alias_list_t
	mov eax, [varsnd_alias_list_ptr]
	mov [esp], eax
	call Load_snd_alias_list_Asset
	test ebx, ebx
	jz Load_snd_alias_list_ptr_10
	mov eax, [varsnd_alias_list_ptr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_snd_alias_list_ptr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_snd_alias_list_ptr_40
	nop
	add [eax], al


;Mark_snd_alias_list_ptr()
Mark_snd_alias_list_ptr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [varsnd_alias_list_ptr]
	mov eax, [eax]
	test eax, eax
	jz Mark_snd_alias_list_ptr_10
	mov [varsnd_alias_list_t], eax
	mov [esp], eax
	call Mark_snd_alias_list_Asset
	mov eax, [varsnd_alias_list_t]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Mark_snd_alias_list_ptr_10
	mov [varsnd_alias_t], ebx
	mov edi, [eax+0x8]
	test edi, edi
	jle Mark_snd_alias_list_ptr_10
	xor esi, esi
	jmp Mark_snd_alias_list_ptr_20
Mark_snd_alias_list_ptr_50:
	mov edx, [varsnd_alias_t]
Mark_snd_alias_list_ptr_60:
	lea eax, [edx+0x48]
	mov [varSndCurvePtr], eax
	mov eax, [edx+0x48]
	test eax, eax
	jz Mark_snd_alias_list_ptr_30
	mov [varSndCurve], eax
	mov [esp], eax
	call Mark_SndCurveAsset
Mark_snd_alias_list_ptr_30:
	add ebx, 0x5c
	add esi, 0x1
	cmp edi, esi
	jz Mark_snd_alias_list_ptr_10
Mark_snd_alias_list_ptr_20:
	mov [varsnd_alias_t], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Mark_snd_alias_list_ptr_40
	mov [varSoundFile], eax
	lea edx, [eax+0x4]
	mov [varSoundFileRef], edx
	cmp byte [eax], 0x1
	jnz Mark_snd_alias_list_ptr_50
	mov [varLoadedSoundPtr], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz Mark_snd_alias_list_ptr_50
	mov [varLoadedSound], eax
	mov [esp], eax
	call Mark_LoadedSoundAsset
	mov edx, [varsnd_alias_t]
	jmp Mark_snd_alias_list_ptr_60
Mark_snd_alias_list_ptr_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Mark_snd_alias_list_ptr_40:
	mov edx, ebx
	jmp Mark_snd_alias_list_ptr_60


;Load_GfxWorldDpvsDynamic(unsigned char)
Load_GfxWorldDpvsDynamic:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x30
	mov eax, [varGfxWorldDpvsDynamic]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsDynamic]
	mov ecx, [ebx+0x10]
	test ecx, ecx
	jz Load_GfxWorldDpvsDynamic_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x10], eax
	mov eax, [varGfxWorldDpvsDynamic]
	mov ecx, [eax+0x10]
	mov [varraw_uint], ecx
	mov eax, [eax]
	mov edx, [varGfxWorld]
	imul eax, [edx+0xf0]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsDynamic_10:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsDynamic]
	mov edx, [ebx+0x14]
	test edx, edx
	jz Load_GfxWorldDpvsDynamic_20
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x14], eax
	mov eax, [varGfxWorldDpvsDynamic]
	mov ecx, [eax+0x14]
	mov [varraw_uint], ecx
	mov eax, [eax+0x4]
	mov edx, [varGfxWorld]
	imul eax, [edx+0xf0]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsDynamic_20:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsDynamic]
	mov eax, [ebx+0x18]
	test eax, eax
	jz Load_GfxWorldDpvsDynamic_30
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x18], eax
	mov eax, [varGfxWorldDpvsDynamic]
	mov edx, [eax+0x18]
	mov [varraw_byte16], edx
	mov eax, [eax]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsDynamic_30:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsDynamic]
	mov eax, [ebx+0x24]
	test eax, eax
	jz Load_GfxWorldDpvsDynamic_40
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varGfxWorldDpvsDynamic]
	mov edx, [eax+0x24]
	mov [varraw_byte16], edx
	mov eax, [eax+0x4]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsDynamic_40:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsDynamic]
	mov eax, [ebx+0x1c]
	test eax, eax
	jz Load_GfxWorldDpvsDynamic_50
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov eax, [varGfxWorldDpvsDynamic]
	mov edx, [eax+0x1c]
	mov [varraw_byte16], edx
	mov eax, [eax]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsDynamic_50:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsDynamic]
	mov eax, [ebx+0x28]
	test eax, eax
	jz Load_GfxWorldDpvsDynamic_60
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x28], eax
	mov eax, [varGfxWorldDpvsDynamic]
	mov edx, [eax+0x28]
	mov [varraw_byte16], edx
	mov eax, [eax+0x4]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsDynamic_60:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsDynamic]
	mov eax, [ebx+0x20]
	test eax, eax
	jz Load_GfxWorldDpvsDynamic_70
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x20], eax
	mov eax, [varGfxWorldDpvsDynamic]
	mov edx, [eax+0x20]
	mov [varraw_byte16], edx
	mov eax, [eax]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsDynamic_70:
	call DB_PopStreamPos
	mov dword [esp], 0x1
	call DB_PushStreamPos
	mov ebx, [varGfxWorldDpvsDynamic]
	mov eax, [ebx+0x2c]
	test eax, eax
	jz Load_GfxWorldDpvsDynamic_80
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x2c], eax
	mov eax, [varGfxWorldDpvsDynamic]
	mov edx, [eax+0x2c]
	mov [varraw_byte16], edx
	mov eax, [eax+0x4]
	shl eax, 0x5
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_GfxWorldDpvsDynamic_80:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_PopStreamPos
	nop


;Load_MaterialArgumentDef(unsigned char)
Load_MaterialArgumentDef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	movzx edx, byte [ebp+0x8]
	mov eax, [varMaterialShaderArgument]
	movzx eax, word [eax]
	cmp ax, 0x1
	jz Load_MaterialArgumentDef_10
	cmp ax, 0x7
	jz Load_MaterialArgumentDef_10
	cmp ax, 0x3
	jz Load_MaterialArgumentDef_20
	cmp ax, 0x5
	jz Load_MaterialArgumentDef_20
	test dl, dl
	jnz Load_MaterialArgumentDef_30
Load_MaterialArgumentDef_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_MaterialArgumentDef_20:
	test dl, dl
	jz Load_MaterialArgumentDef_40
	mov eax, [varMaterialArgumentDef]
	mov [varMaterialArgumentCodeConst], eax
	jmp Load_MaterialArgumentDef_50
Load_MaterialArgumentDef_10:
	mov ebx, [varMaterialArgumentDef]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialArgumentDef_40
	add eax, 0x1
	jz Load_MaterialArgumentDef_60
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_MaterialArgumentDef_30:
	mov eax, [varMaterialArgumentDef]
	mov [varuint], eax
Load_MaterialArgumentDef_50:
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	movzx eax, dl
	mov [esp], eax
	call Load_Stream
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_MaterialArgumentDef_60:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMaterialArgumentDef]
	mov eax, [eax]
	mov [varfloat], eax
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	jmp Load_MaterialArgumentDef_40
	nop


;Load_expressionEntry_ptr(unsigned char)
Load_expressionEntry_ptr:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x4
	mov eax, [varexpressionEntry_ptr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varexpressionEntry_ptr]
	mov eax, [ebx]
	test eax, eax
	jz Load_expressionEntry_ptr_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varexpressionEntry_ptr]
	mov eax, [eax]
	mov [varexpressionEntry], eax
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varexpressionEntry]
	lea edx, [eax+0x4]
	mov [varentryInternalData], edx
	mov eax, [eax]
	test eax, eax
	jnz Load_expressionEntry_ptr_20
Load_expressionEntry_ptr_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_expressionEntry_ptr_20:
	mov [varOperand], edx
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varOperand]
	lea edx, [eax+0x4]
	mov [varoperandInternalDataUnion], edx
	mov eax, [eax]
	test eax, eax
	jz Load_expressionEntry_ptr_10
	cmp eax, 0x1
	jz Load_expressionEntry_ptr_10
	cmp eax, 0x2
	jnz Load_expressionEntry_ptr_10
	mov [varXString], edx
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_expressionEntry_ptr_10
	add eax, 0x1
	jz Load_expressionEntry_ptr_30
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_expressionEntry_ptr_30:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [ebp+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_XStringCustom


;Load_pathnode_constant_t(unsigned char)
Load_pathnode_constant_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x44
	mov eax, [varpathnode_constant_t]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov eax, [varpathnode_constant_t]
	add eax, 0x6
	mov [varScriptString], eax
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varScriptString]
	mov [esp], eax
	call Load_ScriptStringCustom
	mov eax, [varpathnode_constant_t]
	add eax, 0x8
	mov [varScriptString], eax
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varScriptString]
	mov [esp], eax
	call Load_ScriptStringCustom
	mov eax, [varpathnode_constant_t]
	add eax, 0xa
	mov [varScriptString], eax
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varScriptString]
	mov [esp], eax
	call Load_ScriptStringCustom
	mov eax, [varpathnode_constant_t]
	add eax, 0xc
	mov [varScriptString], eax
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varScriptString]
	mov [esp], eax
	call Load_ScriptStringCustom
	mov eax, [varpathnode_constant_t]
	add eax, 0xe
	mov [varScriptString], eax
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varScriptString]
	mov [esp], eax
	call Load_ScriptStringCustom
	mov ebx, [varpathnode_constant_t]
	mov eax, [ebx+0x40]
	test eax, eax
	jz Load_pathnode_constant_t_10
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x40], eax
	mov eax, [varpathnode_constant_t]
	mov edx, [eax+0x40]
	mov [varpathlink_t], edx
	movzx eax, word [eax+0x3e]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_pathnode_constant_t_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Mark_pathnode_constant_t()
Mark_pathnode_constant_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [varpathnode_constant_t]
	add eax, 0x6
	mov [varScriptString], eax
	mov [esp], eax
	call Mark_ScriptStringCustom
	mov eax, [varpathnode_constant_t]
	add eax, 0x8
	mov [varScriptString], eax
	mov [esp], eax
	call Mark_ScriptStringCustom
	mov eax, [varpathnode_constant_t]
	add eax, 0xa
	mov [varScriptString], eax
	mov [esp], eax
	call Mark_ScriptStringCustom
	mov eax, [varpathnode_constant_t]
	add eax, 0xc
	mov [varScriptString], eax
	mov [esp], eax
	call Mark_ScriptStringCustom
	mov eax, [varpathnode_constant_t]
	add eax, 0xe
	mov [varScriptString], eax
	mov [esp], eax
	call Mark_ScriptStringCustom
	leave
	ret
	nop
	add [eax], al


;Load_MaterialTechniqueSet(unsigned char)
Load_MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x94
	mov eax, [varMaterialTechniqueSet]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varMaterialTechniqueSet]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialTechniqueSet_10
	add eax, 0x1
	jz Load_MaterialTechniqueSet_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_MaterialTechniqueSet_10:
	mov eax, [varMaterialTechniqueSet]
	add eax, 0xc
	mov [varMaterialTechniquePtr], eax
	mov dword [esp+0x8], 0x88
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varMaterialTechniquePtr]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x22
	jmp Load_MaterialTechniqueSet_30
Load_MaterialTechniqueSet_60:
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_MaterialTechniqueSet_50:
	add dword [ebp-0x20], 0x4
	sub dword [ebp-0x1c], 0x1
	jz Load_MaterialTechniqueSet_40
Load_MaterialTechniqueSet_80:
	mov eax, [ebp-0x20]
Load_MaterialTechniqueSet_30:
	mov [varMaterialTechniquePtr], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varMaterialTechniquePtr]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialTechniqueSet_50
	add eax, 0x1
	jnz Load_MaterialTechniqueSet_60
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMaterialTechniquePtr]
	mov eax, [eax]
	mov [varMaterialTechnique], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varMaterialTechnique]
	lea edx, [eax+0x8]
	mov [varMaterialPass], edx
	movzx edi, word [eax+0x6]
	lea eax, [edi+edi*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varMaterialPass]
	test edi, edi
	jg Load_MaterialTechniqueSet_70
Load_MaterialTechniqueSet_100:
	mov eax, [varMaterialTechnique]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialTechniqueSet_50
	add eax, 0x1
	jnz Load_MaterialTechniqueSet_60
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	add dword [ebp-0x20], 0x4
	sub dword [ebp-0x1c], 0x1
	jnz Load_MaterialTechniqueSet_80
Load_MaterialTechniqueSet_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_PopStreamPos
Load_MaterialTechniqueSet_70:
	xor esi, esi
Load_MaterialTechniqueSet_90:
	mov [varMaterialPass], ebx
	mov dword [esp], 0x0
	call Load_MaterialPass
	add ebx, 0x14
	add esi, 0x1
	cmp edi, esi
	jnz Load_MaterialTechniqueSet_90
	jmp Load_MaterialTechniqueSet_100
Load_MaterialTechniqueSet_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_MaterialTechniqueSet_10
	nop


;Load_XSurfaceCollisionTree(unsigned char)
Load_XSurfaceCollisionTree:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x28
	mov eax, [varXSurfaceCollisionTree]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varXSurfaceCollisionTree]
	mov eax, [ebx+0x1c]
	test eax, eax
	jz Load_XSurfaceCollisionTree_10
	mov dword [esp], 0xf
	call DB_AllocStreamPos
	mov [ebx+0x1c], eax
	mov eax, [varXSurfaceCollisionTree]
	mov edx, [eax+0x1c]
	mov [varXSurfaceCollisionNode], edx
	mov eax, [eax+0x18]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varXSurfaceCollisionTree]
Load_XSurfaceCollisionTree_10:
	mov eax, [ebx+0x24]
	test eax, eax
	jz Load_XSurfaceCollisionTree_20
	mov dword [esp], 0x1
	call DB_AllocStreamPos
	mov [ebx+0x24], eax
	mov eax, [varXSurfaceCollisionTree]
	mov edx, [eax+0x24]
	mov [varXSurfaceCollisionLeaf], edx
	mov eax, [eax+0x20]
	add eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_XSurfaceCollisionTree_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;Load_MaterialPixelShaderPtr(unsigned char)
Load_MaterialPixelShaderPtr:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x4
	mov eax, [varMaterialPixelShaderPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varMaterialPixelShaderPtr]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialPixelShaderPtr_10
	add eax, 0x1
	jz Load_MaterialPixelShaderPtr_20
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_MaterialPixelShaderPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMaterialPixelShaderPtr]
	mov eax, [eax]
	mov [varMaterialPixelShader], eax
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varMaterialPixelShader]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialPixelShaderPtr_30
	add eax, 0x1
	jz Load_MaterialPixelShaderPtr_40
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_MaterialPixelShaderPtr_30:
	mov eax, [varMaterialPixelShader]
	add eax, 0x4
	mov [varMaterialPixelShaderProgram], eax
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varMaterialPixelShaderProgram]
	add eax, 0x4
	mov [varGfxPixelShaderLoadDef], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varGfxPixelShaderLoadDef]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialPixelShaderPtr_50
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGfxPixelShaderLoadDef]
	mov edx, [eax]
	mov [varDWORD], edx
	movzx eax, word [eax+0x4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_MaterialPixelShaderPtr_50:
	mov eax, [varMaterialPixelShader]
	mov [esp+0x4], eax
	mov eax, [varMaterialPixelShaderProgram]
	add eax, 0x4
	mov [esp], eax
	call Load_CreateMaterialPixelShader
Load_MaterialPixelShaderPtr_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_MaterialPixelShaderPtr_40:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_MaterialPixelShaderPtr_30


;Load_MaterialTextureDefInfo(unsigned char)
Load_MaterialTextureDefInfo:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	movzx edx, byte [ebp+0x8]
	mov eax, [varMaterialTextureDef]
	cmp byte [eax+0x7], 0xb
	jz Load_MaterialTextureDefInfo_10
	mov eax, [varMaterialTextureDefInfo]
	mov [varGfxImagePtr], eax
	movzx eax, dl
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_GfxImagePtr
Load_MaterialTextureDefInfo_10:
	mov ebx, [varMaterialTextureDefInfo]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialTextureDefInfo_20
	add eax, 0x1
	jz Load_MaterialTextureDefInfo_30
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_MaterialTextureDefInfo_30:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMaterialTextureDefInfo]
	mov eax, [eax]
	mov [varwater_t], eax
	mov dword [esp], 0x1
	call Load_water_t
	mov eax, [varMaterialTextureDefInfo]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Load_PicmipWater
Load_MaterialTextureDefInfo_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Load_GfxWorldVertexLayerData(unsigned char)
Load_GfxWorldVertexLayerData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x8
	mov eax, [varGfxWorldVertexLayerData]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varGfxWorldVertexLayerData]
	mov eax, [ebx]
	test eax, eax
	jz Load_GfxWorldVertexLayerData_10
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGfxWorldVertexLayerData]
	mov edx, [eax]
	mov [varbyte], edx
	mov eax, [varGfxWorld]
	mov eax, [eax+0x3c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	mov ebx, [varGfxWorldVertexLayerData]
Load_GfxWorldVertexLayerData_10:
	lea eax, [ebx+0x4]
	mov [varGfxVertexBuffer], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov edx, [varGfxWorld]
	mov eax, [edx+0x3c]
	mov [esp+0x8], eax
	mov eax, [edx+0x40]
	mov [esp+0x4], eax
	mov eax, [varGfxWorldVertexLayerData]
	add eax, 0x4
	mov [esp], eax
	call Load_VertexBuffer
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Load_MaterialTechniqueSetPtr(unsigned char)
Load_MaterialTechniqueSetPtr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x4
	mov eax, [varMaterialTechniqueSetPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x0
	call DB_PushStreamPos
	mov ebx, [varMaterialTechniqueSetPtr]
	mov esi, [ebx]
	test esi, esi
	jz Load_MaterialTechniqueSetPtr_10
	lea eax, [esi+0x2]
	cmp eax, 0x1
	jbe Load_MaterialTechniqueSetPtr_20
	mov [esp], ebx
	call DB_ConvertOffsetToAlias
Load_MaterialTechniqueSetPtr_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_MaterialTechniqueSetPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMaterialTechniqueSetPtr]
	mov eax, [eax]
	mov [varMaterialTechniqueSet], eax
	cmp esi, 0xfffffffe
	jz Load_MaterialTechniqueSetPtr_30
	xor ebx, ebx
Load_MaterialTechniqueSetPtr_40:
	mov dword [esp], 0x1
	call Load_MaterialTechniqueSet
	mov eax, [varMaterialTechniqueSetPtr]
	mov [esp], eax
	call Load_MaterialTechniqueSetAsset
	test ebx, ebx
	jz Load_MaterialTechniqueSetPtr_10
	mov eax, [varMaterialTechniqueSetPtr]
	mov eax, [eax]
	mov [ebx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_PopStreamPos
Load_MaterialTechniqueSetPtr_30:
	call DB_InsertPointer
	mov ebx, eax
	jmp Load_MaterialTechniqueSetPtr_40
	nop


;Load_MaterialVertexShaderPtr(unsigned char)
Load_MaterialVertexShaderPtr:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x4
	mov eax, [varMaterialVertexShaderPtr]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov ebx, [varMaterialVertexShaderPtr]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialVertexShaderPtr_10
	add eax, 0x1
	jz Load_MaterialVertexShaderPtr_20
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_ConvertOffsetToPointer
Load_MaterialVertexShaderPtr_20:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varMaterialVertexShaderPtr]
	mov eax, [eax]
	mov [varMaterialVertexShader], eax
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Load_Stream
	mov eax, [varMaterialVertexShader]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialVertexShaderPtr_30
	add eax, 0x1
	jz Load_MaterialVertexShaderPtr_40
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_MaterialVertexShaderPtr_30:
	mov eax, [varMaterialVertexShader]
	add eax, 0x4
	mov [varMaterialVertexShaderProgram], eax
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov eax, [varMaterialVertexShaderProgram]
	add eax, 0x4
	mov [varGfxVertexShaderLoadDef], eax
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varGfxVertexShaderLoadDef]
	mov eax, [ebx]
	test eax, eax
	jz Load_MaterialVertexShaderPtr_50
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx], eax
	mov eax, [varGfxVertexShaderLoadDef]
	mov edx, [eax]
	mov [varDWORD], edx
	movzx eax, word [eax+0x4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
Load_MaterialVertexShaderPtr_50:
	mov eax, [varMaterialVertexShader]
	mov [esp+0x4], eax
	mov eax, [varMaterialVertexShaderProgram]
	add eax, 0x4
	mov [esp], eax
	call Load_CreateMaterialVertexShader
Load_MaterialVertexShaderPtr_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_MaterialVertexShaderPtr_40:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_MaterialVertexShaderPtr_30
	add [eax], al


;Load_Font(unsigned char)
Load_Font:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x18
	mov eax, [varFont]
	mov [esp+0x4], eax
	movzx eax, byte [ebp+0x8]
	mov [esp], eax
	call Load_Stream
	mov dword [esp], 0x4
	call DB_PushStreamPos
	mov eax, [varFont]
	mov [varXString], eax
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Load_Stream
	mov ebx, [varXString]
	mov eax, [ebx]
	test eax, eax
	jz Load_Font_10
	add eax, 0x1
	jz Load_Font_20
	mov [esp], ebx
	call DB_ConvertOffsetToPointer
Load_Font_10:
	mov eax, [varFont]
	add eax, 0xc
	mov [varMaterialHandle], eax
	mov dword [esp], 0x0
	call Load_MaterialHandle
	mov eax, [varFont]
	add eax, 0x10
	mov [varMaterialHandle], eax
	mov dword [esp], 0x0
	call Load_MaterialHandle
	mov ebx, [varFont]
	mov eax, [ebx+0x14]
	test eax, eax
	jz Load_Font_30
	add eax, 0x1
	jz Load_Font_40
	lea eax, [ebx+0x14]
	mov [esp], eax
	call DB_ConvertOffsetToPointer
Load_Font_30:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_PopStreamPos
Load_Font_40:
	mov dword [esp], 0x3
	call DB_AllocStreamPos
	mov [ebx+0x14], eax
	mov eax, [varFont]
	mov edx, [eax+0x14]
	mov [varGlyph], edx
	mov eax, [eax+0x8]
	lea eax, [eax+eax*2]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Load_Stream
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DB_PopStreamPos
Load_Font_20:
	mov dword [esp], 0x0
	call DB_AllocStreamPos
	mov [ebx], eax
	mov edx, [varXString]
	mov eax, [edx]
	mov [varConstChar], eax
	mov [esp], edx
	call Load_XStringCustom
	jmp Load_Font_10


;Zero initialized global or static variables of db_load:
SECTION .bss
varXAsset: resb 0x8
varXAssetList: resb 0x4
varBrushWrapper: resb 0x10
varByteVec: resb 0x4
varCollisionAabbTree: resb 0x8
varCollisionBorder: resb 0x4
varCollisionPartition: resb 0x4
varComPrimaryLight: resb 0x4
varComWorld: resb 0x4
varComWorldPtr: resb 0x4
varConstChar: resb 0x4
varDObjAnimMat: resb 0x4
varDWORD: resb 0x10
varDynEntityClient: resb 0x4
varDynEntityColl: resb 0x4
varDynEntityDef: resb 0xc
varDynEntityPose: resb 0x4
varFont: resb 0x4
varFontHandle: resb 0x4
varFxEffectDef: resb 0x4
varFxEffectDefHandle: resb 0x14
varFxEffectDefRef: resb 0x4
varFxElemDef: resb 0x4
varFxElemDefVisuals: resb 0x14
varFxElemMarkVisuals: resb 0x4
varFxElemVelStateSample: resb 0xc
varFxElemVisStateSample: resb 0x8
varFxElemVisuals: resb 0x4
varFxImpactEntry: resb 0x4
varFxImpactTable: resb 0x4
varFxImpactTablePtr: resb 0x4
varFxTrailDef: resb 0x4
varFxTrailVertex: resb 0x4
varGameWorldMp: resb 0x4
varGameWorldMpPtr: resb 0x4
varGameWorldSp: resb 0x4
varGameWorldSpPtr: resb 0x4
varGfxAabbTree: resb 0x4
varGfxBrushModel: resb 0x10
varGfxCell: resb 0x4
varGfxCullGroup: resb 0x4
varGfxDrawSurf: resb 0x4
varGfxImage: resb 0x8
varGfxImageLoadDef: resb 0x4
varGfxImagePtr: resb 0x4
varGfxLight: resb 0x4
varGfxLightDef: resb 0x8
varGfxLightDefPtr: resb 0x4
varGfxLightGrid: resb 0x4
varGfxLightGridColors: resb 0x4
varGfxLightGridEntry: resb 0x8
varGfxLightImage: resb 0x4
varGfxLightRegion: resb 0x4
varGfxLightRegionAxis: resb 0x4
varGfxLightRegionHull: resb 0x4
varGfxLightmapArray: resb 0x4
varGfxPackedVertex0: resb 0xc
varGfxPixelShaderLoadDef: resb 0x4
varGfxPortal: resb 0x4
varGfxRawTexture: resb 0x4
varGfxReflectionProbe: resb 0x4
varGfxSceneDynBrush: resb 0x4
varGfxSceneDynModel: resb 0xc
varGfxShadowGeometry: resb 0x4
varGfxStateBits: resb 0x4
varGfxStaticModelDrawInst: resb 0x4
varGfxStaticModelInst: resb 0x4
varGfxSurface: resb 0x8
varGfxTextureLoad: resb 0x10
varGfxVertexBuffer: resb 0x4
varGfxVertexShaderLoadDef: resb 0x10
varGfxWorld: resb 0x4
varGfxWorldDpvsDynamic: resb 0x4
varGfxWorldDpvsPlanes: resb 0x4
varGfxWorldDpvsStatic: resb 0x4
varGfxWorldPtr: resb 0x4
varGfxWorldVertex0: resb 0xc
varGfxWorldVertexData: resb 0x4
varGfxWorldVertexLayerData: resb 0x4
varGlyph: resb 0x4
varItemKeyHandler: resb 0x4
varItemKeyHandlerNext: resb 0x4
varLeafBrush: resb 0x4
varLoadedSound: resb 0x4
varLoadedSoundPtr: resb 0x4
varLocalizeEntry: resb 0x4
varLocalizeEntryPtr: resb 0x4
varMapEnts: resb 0x8
varMapEntsPtr: resb 0x4
varMaterial: resb 0x4
varMaterialArgumentCodeConst: resb 0x4
varMaterialArgumentDef: resb 0x4
varMaterialConstantDef: resb 0x4
varMaterialHandle: resb 0x4
varMaterialInfo: resb 0x10
varMaterialMemory: resb 0x4
varMaterialPass: resb 0x4
varMaterialPixelShader: resb 0x4
varMaterialPixelShaderProgram: resb 0x4
varMaterialPixelShaderPtr: resb 0x4
varMaterialShaderArgument: resb 0x4
varMaterialTechnique: resb 0x4
varMaterialTechniquePtr: resb 0x4
varMaterialTechniqueSet: resb 0x8
varMaterialTechniqueSetPtr: resb 0x4
varMaterialTextureDef: resb 0x4
varMaterialTextureDefInfo: resb 0x8
varMaterialVertexDeclaration: resb 0x8
varMaterialVertexShader: resb 0x4
varMaterialVertexShaderProgram: resb 0x4
varMaterialVertexShaderPtr: resb 0x4
varMenuList: resb 0x4
varMenuListPtr: resb 0x4
varMssSound: resb 0xc
varOperand: resb 0x8
varPathData: resb 0x4
varPhysGeomInfo: resb 0x4
varPhysGeomList: resb 0x4
varPhysPreset: resb 0x4
varPhysPresetPtr: resb 0x4
varRawFile: resb 0x4
varRawFilePtr: resb 0x4
varScriptString: resb 0x4
varSndCurve: resb 0x4
varSndCurvePtr: resb 0x4
varSoundFile: resb 0x4
varSoundFileRef: resb 0x4
varSpeakerMap: resb 0x10
varStaticModelIndex: resb 0x10
varStreamFileInfo: resb 0x4
varStreamFileName: resb 0x4
varStreamFileNameRaw: resb 0xc
varStreamedSound: resb 0x4
varStringTable: resb 0x4
varStringTablePtr: resb 0x4
varUShortVec: resb 0x4
varUnsignedShort: resb 0x4
varWeaponDef: resb 0x54
varWeaponDefPtr: resb 0x4
varWindow: resb 0x4
varXAnimDeltaPart: resb 0x4
varXAnimDeltaPartQuat: resb 0x4
varXAnimDeltaPartQuatData: resb 0x4
varXAnimDeltaPartQuatDataFrames: resb 0x4
varXAnimDynamicFrames: resb 0x4
varXAnimDynamicIndicesDeltaQuat: resb 0x4
varXAnimDynamicIndicesTrans: resb 0x4
varXAnimIndices: resb 0x4
varXAnimNotifyInfo: resb 0x4
varXAnimPartTrans: resb 0x4
varXAnimPartTransData: resb 0x4
varXAnimPartTransFrames: resb 0x4
varXAnimParts: resb 0x4
varXAnimPartsPtr: resb 0x4
varXAssetHeader: resb 0x4
varXBlendInfo: resb 0x4
varXBoneInfo: resb 0x4
varXModel: resb 0x4
varXModelCollSurf: resb 0x4
varXModelCollTri: resb 0x8
varXModelPiece: resb 0x4
varXModelPieces: resb 0x4
varXModelPiecesPtr: resb 0x4
varXModelPtr: resb 0x4
varXQuat2: resb 0x8
varXRigidVertList: resb 0x4
varXString: resb 0x4
varXStringPtr: resb 0x4
varXSurface: resb 0x4
varXSurfaceCollisionLeaf: resb 0x8
varXSurfaceCollisionNode: resb 0x4
varXSurfaceCollisionTree: resb 0x4
varXSurfaceVertexInfo: resb 0x4
varXZoneHandle: resb 0x4
varbyte: resb 0x1c
varcLeafBrushNodeData_t: resb 0x8
varcLeafBrushNodeLeaf_t: resb 0x4
varcLeafBrushNode_t: resb 0x4
varcLeaf_t: resb 0x4
varcNode_t: resb 0x4
varcStaticModel_t: resb 0x4
varcbrush_t: resb 0x8
varcbrushedge_t: resb 0x8
varcbrushside_t: resb 0x4
varchar: resb 0x8
varclipMap_ptr: resb 0x4
varclipMap_t: resb 0x4
varcmodel_t: resb 0x4
varcomplex_t: resb 0x4
varcplane_t: resb 0x8
vardmaterial_t: resb 0x4
vareditFieldDef_ptr: resb 0x4
vareditFieldDef_t: resb 0x4
varentryInternalData: resb 0x8
varexpressionEntry: resb 0x8
varexpressionEntry_ptr: resb 0x4
varfloat: resb 0xc
varint: resb 0x14
varitemDefData_t: resb 0x4
varitemDef_ptr: resb 0x4
varitemDef_t: resb 0x4
varlistBoxDef_ptr: resb 0x4
varlistBoxDef_t: resb 0x8
varmenuDef_ptr: resb 0x4
varmenuDef_t: resb 0x4
varmultiDef_ptr: resb 0x4
varmultiDef_t: resb 0x4
varoperandInternalDataUnion: resb 0x4
varpathbasenode_t: resb 0x4
varpathlink_t: resb 0x4
varpathnode_constant_t: resb 0x8
varpathnode_t: resb 0x4
varpathnode_tree_info_t: resb 0x4
varpathnode_tree_nodes_t: resb 0x4
varpathnode_tree_ptr: resb 0x4
varpathnode_tree_t: resb 0x4
varr_index16_t: resb 0x4
varr_index_t: resb 0x8
varraw_byte: resb 0x4
varraw_byte16: resb 0x4
varraw_uint: resb 0xc
varraw_uint128: resb 0x4
varshort: resb 0x10
varsnd_alias_list_name: resb 0x4
varsnd_alias_list_ptr: resb 0x4
varsnd_alias_list_t: resb 0x4
varsnd_alias_t: resb 0x4
varstatement: resb 0x4
varsunflare_t: resb 0x4
varuint: resb 0xc
varushort: resb 0xc
varvec2_t: resb 0x8
varvec3_t: resb 0x4
varwater_t: resb 0x4
varwindowDef_t: resb 0xc


;Initialized global or static variables of db_load:
SECTION .data


;Initialized constant data of db_load:
SECTION .rdata


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

