#include "q_shared.h"
#include "cm_local.h"
#include "qcommon.h"
#include "cmd.h"
#include "filesystem.h"

static fileHandle_t f;

void CM_DebugViewBasicDetails()
{
    FS_Printf( f, "ClipMap %s contains:\n", cm.name);
    FS_Printf( f, "Planes: %d\n", cm.planeCount);
    FS_Printf( f, "StaticModels: %d\n", cm.numStaticModels);
    FS_Printf( f, "Materials: %d\n", cm.numMaterials);
    FS_Printf( f, "BrushSides: %d\n", cm.numBrushSides);
    FS_Printf( f, "BrushEdges: %d\n", cm.numBrushEdges);
    FS_Printf( f, "Nodes: %d\n", cm.numNodes);
    FS_Printf( f, "Leafs: %d\n", cm.numLeafs);
    FS_Printf( f, "LeafbrushNodes: %d\n", cm.leafbrushNodesCount);
    FS_Printf( f, "LeafBrushes: %d\n", cm.numLeafBrushes);
    FS_Printf( f, "LeafSurfaces: %d\n", cm.numLeafSurfaces);
    FS_Printf( f, "Verticles: %d\n", cm.vertCount);
    FS_Printf( f, "TriIndices: %d\n", cm.triCount);
    FS_Printf( f, "CollisionBorders: %d\n", cm.borderCount);
    FS_Printf( f, "CollisionPartitions: %d\n", cm.partitionCount);
    FS_Printf( f, "CollisionAabbTrees: %d\n", cm.aabbTreeCount);
    FS_Printf( f, "SubModels cmodels: %d\n", cm.numSubModels);
    FS_Printf( f, "Brushes: %d\n", cm.numBrushes);
    FS_Printf( f, "Clusters: %d\n", cm.numClusters);
    FS_Printf( f, "dynEnts0: %d\n", cm.dynEntCount[0]);
    FS_Printf( f, "dynEnt1: %d\n", cm.dynEntCount[1]);
    FS_Printf( f, "\n");
}

void CM_DebugPrintMaterialInfo()
{
    int i;
    uint32_t content = 0;
    uint32_t surface = 0;

    FS_Printf( f, "--------------- MaterialInfo --------------------\n");

    for(i = 0; i < cm.numMaterials; ++i)
    {
        FS_Printf( f, "%s surf: 0x%08x cont: 0x%08x\n", cm.materials[i].material, cm.materials[i].surfaceFlags, cm.materials[i].contentFlags);
        surface |= cm.materials[i].surfaceFlags;
        content |= cm.materials[i].contentFlags;
    }
    FS_Printf( f, "\n");
    FS_Printf( f, "used surface flags: 0x%08x\n", surface);
    FS_Printf( f, "used content flags: 0x%08x\n", content);
    FS_Printf( f, "\n");
    FS_Printf( f, "-------------------------------------------------\n");


}

void CM_DebugCLeafBrushNodes()
{
    int i;
    FS_Printf( f, "--------------- CLeafBrushNodes ------------------\n");

    uint32_t content = 0;
    for(i = 0; i < cm.leafbrushNodesCount; ++i)
    {
        FS_Printf( f, "Count: %d cont: 0x%08x\n", cm.leafbrushNodes[i].leafBrushCount, cm.leafbrushNodes[i].contents);
        content |= cm.leafbrushNodes[i].contents;
    }
    FS_Printf( f, "\n");
    FS_Printf( f, "used content flags: 0x%08x\n", content);
    FS_Printf( f, "\n");
    FS_Printf( f, "-------------------------------------------------\n");
}

void CM_DebugCBrush()
{
    int i;
    FS_Printf( f, "-------------------- CBrush ----------------------\n");
    uint32_t content = 0;
    for(i = 0; i < cm.numBrushes; ++i)
    {
        FS_Printf( f, "cont: 0x%08x\n", cm.brushes[i].contents);
        content |= cm.brushes[i].contents;
    }
    FS_Printf( f, "\n");
    FS_Printf( f, "used content flags: 0x%08x\n", content);
    FS_Printf( f, "\n");
    FS_Printf( f, "-------------------------------------------------\n");
}


void CM_DebugCLeaf()
{
    int i;
    FS_Printf( f, "-------------------- cLeaf ----------------------\n");
    uint32_t brushcontent = 0;
    uint32_t terriancontent = 0;

    for(i = 0; i < cm.numLeafs; ++i)
    {
        FS_Printf( f, "brushContents: 0x%08x  terrainContents: 0x%08x\n", cm.leafs[i].brushContents, cm.leafs[i].terrainContents);
        brushcontent |= cm.leafs[i].brushContents;
        terriancontent |= cm.leafs[i].terrainContents;
    }
    FS_Printf( f, "\n");
    FS_Printf( f, "used content flags: 0x%08x  0x%08x\n", brushcontent, terriancontent);
    FS_Printf( f, "\n");
    FS_Printf( f, "-----------------------------------------------\n");
}

void CM_DebugSubModels()
{
    int i;
    FS_Printf( f, "------------- SubModels.cLeaf -----------------\n");
    uint32_t brushcontent = 0;

    for(i = 0; i < cm.numSubModels; ++i)
    {
        FS_Printf( f, "brushContents: 0x%08x\n", cm.cmodels[i].leaf.brushContents);
        brushcontent |= cm.cmodels[i].leaf.brushContents;
    }
    FS_Printf( f, "\n");
    FS_Printf( f, "used content flags: 0x%08x\n", brushcontent);
    FS_Printf( f, "\n");
    FS_Printf( f, "-----------------------------------------------\n");

}

void CM_DebugDoAll_f()
{
    f = FS_FOpenFileWrite("cm_debug.log");
    if(f < 1)
    {
        Com_PrintError(CON_CHANNEL_DONT_FILTER,"Couldn't write file cm_debug.log");
        return;
    }
    CM_DebugViewBasicDetails();
    CM_DebugPrintMaterialInfo();
    CM_DebugCLeafBrushNodes();
    CM_DebugCBrush();
    CM_DebugCLeaf();
    CM_DebugSubModels();
    FS_FCloseFile(f);

}

void CM_DebugInit()
{
    Cmd_AddCommand("cm_printall", CM_DebugDoAll_f);
}