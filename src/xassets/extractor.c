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
#include "localized_string.h"
#include "stringtable.h"
#include "menufile.h"
#include "menu.h"

#define MAX_STORE_FASTFILES (32)

typedef unsigned char byte_t;
typedef unsigned int uint;

typedef struct AssetHandler_t
{
    int type;
    void *header;
} AssetHandler_t;

typedef struct FastFileContents_t
{
    int str_list_count;
    char *str_list_data;
    int asset_list_count;
    AssetHandler_t *asset_list_data;
} FastFileContents_t;

typedef struct ZoneDataBlock_t
{
    byte_t *data;
    uint size;
} ZoneDataBlock_t;

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
} FastFileZlibHandler_t;

#define g_pFFContents (*(FastFileContents_t **)0x1411F540)
#define g_ff (*(FastFileZlibHandler_t *)0x1411EF60)
const char *(*DB_XAssetGetName)(AssetHandler_t* handler) = ((const char*(*)(AssetHandler_t*))0x081DA7F2);

typedef struct FastFileAssetsTableInfo_t
{
    char name[64];
    FastFileContents_t content;
} FastFileAssetsTableInfo_t;

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
    FastFileAssetsTableInfo_t *info;

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

/* Convert slashes and create all subdirectories for files. */
static void create_directories(char *path)
{
    char *dir_path;
    char *pdir_path;

    /* Convert slashes. */
    dir_path = (char *)Sys_Dirname(path);
    pdir_path = dir_path;
    while (*pdir_path)
    {
        if (*pdir_path == '/')
            *pdir_path = '\\';
        ++pdir_path;
    }
    Sys_Mkdir(dir_path);
}

/* Extract rawfile. */
static void extract_rawfile(const void *header)
{
    char output_path[MAX_OSPATH];
    Rawfile_t *asset = (Rawfile_t *)header;
    FILE *f;

    sprintf(output_path, "%s%s", g_savePath, asset->name);
    output_path[MAX_OSPATH - 1] = '\0';
    create_directories(output_path);

    /* Mode must be "wb" because of \r\n doubling. */
    f = fopen(output_path, "wb");
    if (!f)
    {
        Com_Printf("Can't open '%s': %s\n", output_path, strerror(errno));
        return;
    }
    fwrite(asset->data, sizeof(char), asset->data_size, f);
    fclose(f);
}

/* Extract localized string. */
static void extract_localized_string(const void *header)
{
    char output_path[MAX_OSPATH];
    char prefix[64] = {'\0'};
    LocalizedString_t *asset = (LocalizedString_t *)header;
    char *prefix_end;
    FILE *f;

    /* Will be always because prefix is a file name. */
    prefix_end = strchr(asset->key, '_');
    if (prefix_end - asset->key + 1 > sizeof(prefix))
    {
        Com_Printf("Too long prefix for localized string '%s'. Increase prefix size (now %d).\n", asset->key, sizeof(prefix));
        return;
    }
    strncpy(prefix, asset->key, prefix_end - asset->key);
    /* Build output file path. */
    sprintf(output_path, "%s/raw/english/localizedstrings/%s.str", g_savePath, prefix);
    output_path[MAX_OSPATH - 1] = '\0';
    create_directories(output_path);

    /* Check if file already exist. */
    f = fopen(output_path, "r");
    if (!f)
    {
        /* File not exist -> add default header. */
        f = fopen(output_path, "w");
        if (!f)
        {
            Com_Printf("Can't open '%s': %s...\n", output_path, strerror(errno));
            return;
        }
        fwrite("VERSION             \"1\"\n", sizeof(char), 24, f);
        fwrite("CONFIG              \"C:\\trees\\cod3\\cod3\\bin\\StringEd.cfg\"\n", sizeof(char), 58, f);
        fwrite("FILENOTES           \"Extracted from fastfile.\"\n\n", sizeof(char), 48, f);
    }
    else
        f = freopen(output_path, "a", f);

    /* TODO: handle case with '\n', '\t' in asset->value. */
    fprintf(f, "REFERENCE           %s\n", asset->key);
    fprintf(f, "LANG_ENGLISH        \"%s\"\n\n", asset->value);
    fclose(f);
}

/* Extract string table. */
static void extract_stringtable(const void *header)
{
    StringTable_t *asset = (StringTable_t *)header;
    char output_path[MAX_OSPATH];
    FILE *f;
    uint i;
    uint j;

    sprintf(output_path, "%s%s", g_savePath, asset->name);
    output_path[MAX_OSPATH - 1] = '\0';
    create_directories(output_path);

    f = fopen(output_path, "w");
    if (!f)
    {
        Com_Printf("Can't open '%s': %s...\n", output_path, strerror(errno));
        return;
    }
    /* Write out string table. */
    for (i = 0; i < asset->rows; ++i)
    {
        for (j = 0; j < asset->columns; ++j)
        {
            /* Differ last column. */
            if (j != asset->columns - 1)
                fprintf(f, "%s,", asset->data[i * asset->columns + j]);
            else
                fprintf(f, "%s\n", asset->data[i * asset->columns + j]);
        }
    }
    fclose(f);
}

/* Extract single menu. Must be used only inside 'extract_menufile' */
static void extract_menu(Menu_t *asset)
{
    Com_Printf("    Writing menu '%s'...", asset->name);
    //TODO
    Com_Printf("done.\n");
}

/* Extract menufile. */
static void extract_menufile(const void *header)
{
    Menufile_t *asset = (Menufile_t *)header;
    uint i;
    /* Newline for each menu. */
    Com_Printf("\n");
    for (i = 0; i < asset->count; ++i)
        extract_menu(asset->menus[i]);
}

/* Extract all assets from fastfile. */
static void extract_from_fastfile(const FastFileAssetsTableInfo_t *ff_info, const unsigned int type, void (*handler)(const void *header))
{
    int i;
    for (i = 0; i < ff_info->content.asset_list_count; ++i)
    {
        if (ff_info->content.asset_list_data[i].type == type)
        {
            Com_Printf("Extracting '%s'...", DB_XAssetGetName(&ff_info->content.asset_list_data[i]));
            handler(ff_info->content.asset_list_data[i].header);
            Com_Printf("done.\n");
        }
    }
}

/* Console command used to extrate different types of assets from different loaded fastfiles. */
void Cmd_ExtractAsset()
{
    char *type;
    int type_num = -1;
    char *ff;
    FastFileAssetsTableInfo_t *ff_info = 0;
    void (*handler)(const void *) = 0;
    int i;

    if (Cmd_Argc() != 3)
    {
    USAGE:
        Com_Printf("Usage:\n");
        Com_Printf("  extract <ff> <type>\n");
        Com_Printf("    ff - Name of fastfile to look into, without extension.\n");
        Com_Printf("    type - Type of asset. Must be one of: rawfile, localized_string, stringtable, menufile.\n");
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
    else if (!strcmp(type, "localized_string"))
    {
        handler = extract_localized_string;
        type_num = XASSET_TYPE_LOCALIZEDSTRING;
    }
    else if (!strcmp(type, "stringtable"))
    {
        handler = extract_stringtable;
        type_num = XASSET_TYPE_STRINGTABLE;
    }
    else if (!strcmp(type, "menufile"))
    {
        handler = extract_menufile;
        type_num = XASSET_TYPE_MENUFILE;
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
