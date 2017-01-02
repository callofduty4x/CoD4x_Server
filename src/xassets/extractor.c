/* Stdlib includes: */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <time.h>
/* CoD4X includes: */
#include "extractor.h"
#include "../zlib/unzip.h"
#include "../q_shared.h"
#include "../cmd.h"
#include "../qcommon_io.h"
#include "../sys_main.h"
/* Assets includes: */
#include "rawfile.h"

#define MAX_STORE_FASTFILES (32)

typedef unsigned char byte_t;
typedef unsigned int uint;

typedef struct AssetHandler_t
{
    int type;
    void *header;
}AssetHandler_t;

typedef struct FastFileContents_t
{
    int str_list_count;
    char *str_list_data;
    int asset_list_count;
    AssetHandler_t *asset_list_data;
}FastFileContents_t;

typedef struct ZoneDataBlock_t
{
  byte_t *data;
  uint size;
}ZoneDataBlock_t;

typedef struct FastFileZlibHandler_t
{
  FILE *fd;
  char *name;
  ZoneDataBlock_t *pBlocks;
  int avail_in;
  z_stream strm;
  int *next_in;
  int field_48;
  int (*funcUnk)(void);
  int pad2;
}FastFileZlibHandler_t;

#define g_pFFContents (*(FastFileContents_t**)0x1411F540)
#define g_ff (*(FastFileZlibHandler_t*)0x1411EF60)

typedef struct FastFileAssetsTableInfo_t
{
    char name[64];
    FastFileContents_t content;
}FastFileAssetsTableInfo_t;

static FastFileAssetsTableInfo_t g_FastFileAssetsTableInfo[MAX_STORE_FASTFILES];
static char g_savePath[MAX_OSPATH];

/* Setups output path. */
void extractor_init()
{
    time_t t = time(0);
    struct tm *local = localtime(&t);
    sprintf(g_savePath, "%s/extracted/%04d%02d%02d_%02d-%02d-%02d/", Sys_Cwd(),
            local->tm_year + 1900, local->tm_mon + 1, local->tm_mday,
            local->tm_hour, local->tm_min, local->tm_sec);
    g_savePath[MAX_OSPATH - 1] = '\0';
}

/* First MAX_STORE_FASTFILES will be saved. Others will replace last one.
   Be careful with fastfiles which can be unloaded. */
void store_fastfile_contents_information()
{
    int i;
    FastFileAssetsTableInfo_t* info;

    /* Do not add maps to this list as they can be unloaded 
       and unloading not covered by this code. */
    if (!strncmp(g_ff.name, "mp_", 3))
        return;

    for (i = 0; i < MAX_STORE_FASTFILES; ++i)
    {
        info = &g_FastFileAssetsTableInfo[i];
        if (!strcmp(info->name, g_ff.name) || !info->name[0])
            break;
    }
    /* 'info' points to old fastfile or to place for new one. */
    Com_Memset(info, 0, sizeof(FastFileAssetsTableInfo_t));
    strcpy(info->name, g_ff.name);
    Com_Memcpy(&info->content, g_pFFContents, sizeof(FastFileContents_t));
}

/* Extract rawfile */
static void extract_rawfile(void *header)
{
    char output_path[MAX_OSPATH];
    Rawfile_t *asset = (Rawfile_t*)header;
    FILE *f;
    char *dir_path;
    char *pdir_path;

    Com_Printf("Writing %d bytes for '%s'...", asset->data_size, asset->name);

    sprintf(output_path, "%s%s", g_savePath, asset->name);
    output_path[MAX_OSPATH - 1] = '\0';
    /* Convert slashes. */
    dir_path = (char*)Sys_Dirname(output_path);
    pdir_path = dir_path;
    while(*pdir_path)
    {
        if (*pdir_path == '/')
            *pdir_path = '\\';
        ++pdir_path;
    }
    Sys_Mkdir(dir_path);

    f = fopen(output_path, "w");
    if (!f)
    {
        Com_Printf("Can't open '%s': %s...\n", output_path, strerror(errno));
        return;
    }

    fwrite(asset->data, sizeof(char), asset->data_size, f);
    fclose(f);
    Com_Printf("done.\n");
}

/* Extract all assets from fastfile. */
static void extract_from_fastfile(const FastFileAssetsTableInfo_t* ff_info, const unsigned int type, void(*handler)(void *header))
{
    int i;
    for (i = 0; i < ff_info->content.asset_list_count; ++i)
    {
        if (ff_info->content.asset_list_data[i].type == type)
            handler(ff_info->content.asset_list_data[i].header);
    }
}

/* Console command used to extrate different types of assets from different loaded fastfiles. */
void Cmd_ExtractAsset()
{
    char *type;
    int type_num = -1;
    char *ff;
    FastFileAssetsTableInfo_t* ff_info = 0;
    void (*handler)(void *) = 0;
    int i;

    if (Cmd_Argc() != 3)
    {
        USAGE:
        Com_Printf("Usage:\n");
        Com_Printf("  extract <ff> <type>\n");
        Com_Printf("    ff - Name of fastfile to look into, without extension.\n");
        Com_Printf("    type - Type of asset. Must be one of: rawfile.\n");
        return;
    }

    /* Find FastFile info. */
    ff = Cmd_Argv(1);
    for (i = 0; i < MAX_STORE_FASTFILES; ++i)
    {
        if (!strcmp(ff, g_FastFileAssetsTableInfo[i].name))
            ff_info = &g_FastFileAssetsTableInfo[i];
    }
    if (!ff_info)
    {
        Com_Printf("Fastfile with name '%s' not loaded.\n", ff);
        return;
    }

    /* Get extractor handler. */
    type = Cmd_Argv(2);
    if (!strcmp(type, "rawfile"))
    {
        handler = extract_rawfile;
        type_num = XASSET_TYPE_RAWFILE;
    }
    
    if (!handler || type_num == -1)
    {
        Com_Printf("Unknown asset type '%s'.\n", type);
        goto USAGE;
    }
    /* Do it. */
    Com_Printf("Extracting assets of type '%s' from fastfile '%s':\n", type, ff);
    Com_Printf("Output directory: %s\n", g_savePath);
    extract_from_fastfile(ff_info, type_num, handler);
}

void add_extractor_console_commands()
{
    Cmd_AddCommand("extract", Cmd_ExtractAsset);
}
