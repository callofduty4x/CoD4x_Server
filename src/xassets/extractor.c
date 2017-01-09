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
#define ACTION_OPTIMIZER_BUFFER_SIZE (2560)

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
static char *g_zone_name;

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

/* Adds a line to zone_source file which can be used by linker_pc. */
static void add_zone_source_line(const char *asset_type, const char *asset_name)
{
    FILE *zone_source;
    char zone_source_path[MAX_OSPATH] = {'\0'};

    sprintf(zone_source_path, "%s%s/zone_source/%s.csv", g_savePath, g_zone_name, g_zone_name);
    create_directories(zone_source_path);

    zone_source = fopen(zone_source_path, "a");
    if (!zone_source)
    {
        Com_Printf("Can't save to zone source file '%s': %s.\n", zone_source_path, strerror(errno));
        return;
    }
    
    fprintf(zone_source, "%s,%s\n", asset_type, asset_name);
    fclose(zone_source);
}

/* Extract rawfile. */
static void extract_rawfile(const void *header)
{
    char output_path[MAX_OSPATH];
    Rawfile_t *asset = (Rawfile_t *)header;
    FILE *f;

    sprintf(output_path, "%s%s/%s", g_savePath, g_zone_name, asset->name);
    output_path[MAX_OSPATH - 1] = '\0';
    create_directories(output_path);
    add_zone_source_line("rawfile", asset->name);

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
    sprintf(output_path, "%s%s/raw/english/localizedstrings/%s.str", g_savePath, g_zone_name, prefix);
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
        add_zone_source_line("localize", prefix);
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

    sprintf(output_path, "%s%s/%s", g_savePath, g_zone_name, asset->name);
    output_path[MAX_OSPATH - 1] = '\0';
    create_directories(output_path);
    add_zone_source_line("stringtable", asset->name);

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

/* Generates expression string for statement. */
static const char *generate_expression_string(const Statement_t *s)
{
    uint i;
    int j;
    ExpressionEntry_t *entry;
    Operand_t *operand;
    static char expression[2048];
    char *ptr = expression;
    int parensCount = 0;

    memset(expression, ' ', 2048);
    expression[2048 - 1] = '\0';
    /* Parse each entry. (expect first - '(') */
    for (i = 0; i < s->entries_count; ++i)
    {
        entry = s->entries[i];
        if (entry->type == ENTRYTYPE_OPERATION) /* 0 */
        {
            /* Operation, paren or function. */
            ptr += sprintf(ptr, "%s ", g_MenuOperations[entry->data.operation]);
        }
        else if (entry->type == ENTRYTYPE_OPERAND)
        {
            /* Integer, float or string. */
            operand = &entry->data.operand;
            if (operand->type == OPERANDTYPE_INTEGER)
                ptr += sprintf(ptr, "%d ", operand->data.i);
            else if (operand->type == OPERANDTYPE_FLOAT)
                ptr += sprintf(ptr, "%g ", operand->data.f);
            else if (operand->type == OPERANDTYPE_STRING)
                if (operand->data.s)
                    ptr += sprintf(ptr, "\"%s\" ", operand->data.s);
        }
    }
    *ptr = '\0';

    /* Recheck parens. */
    ptr = expression;
    while (*ptr)
    {
        if (*ptr == '(')
            ++parensCount;
        else if (*ptr == ')')
            --parensCount;

        ++ptr;
    }
    /* Should not be negative, but show warning. */
    if (parensCount < 0)
        Com_Printf("Warning: more right parens than left parens.\n");
    else
    {
        /* Write missing right parens. */
        for (j = 0; j < parensCount; ++j)
        {
            ptr[0] = ')';
            ptr[1] = '\0';
            ++ptr;
        }
    }
    return expression;
}

/* Remove quotes from action string so interpreter will correctly parse its content. */
/* No null arg check but guaranteed to be called when action != 0. */
static const char *action_optimize(const char *action)
{
    static char res[ACTION_OPTIMIZER_BUFFER_SIZE];
    char ca[ACTION_OPTIMIZER_BUFFER_SIZE] = {'\0'};
    char *iter;
    char *start;
    int start_len;
    char *wIter;
    char can_remove = 1;
    char block_end = 0;

    /* Check for buffer overflow. */
    if (strlen(action) >= ACTION_OPTIMIZER_BUFFER_SIZE)
    {
        Com_Printf("Buffer overflow detected (%d bytes). Increase ACTION_OPTIMIZER_BUFFER_SIZE.", strlen(action));
        return action;
    }

    /* Zero buffer. */
    memset(res, 0, ACTION_OPTIMIZER_BUFFER_SIZE);

    /* Copy string to first buffer so we can edit it. */
    strcpy(ca, action);
    ca[ACTION_OPTIMIZER_BUFFER_SIZE - 1] = '\0';
    
    /* Split input action by "<sometext>" or <text> blocks. */
    iter = ca;
    while (*iter)
    {
        /* Find begin of block. */
        while(*iter == ' ')
            ++iter;
        
        start = iter;
        ++iter;

        /* If block started with '\"' then must be ended with '\"'. */
        if (start[0] == '\"')
        {
            block_end = '\"';
            can_remove = 1;
        }
        else
        {
            block_end = ' ';
            can_remove = 0;
        }
        
        /* Find end of block. */
        while (*iter && *iter != block_end)
            ++iter;

        if (block_end == '\"')
            ++iter;
        *iter = '\0';

        /* Start now points to one block. */
        start_len = strlen(start);

        /* Confirm if we can remove quotes. */
        wIter = start;
        while(*wIter && can_remove)
        {
            /* Found space character? Sad but leave string as is. */
            if (*wIter == ' ')
                can_remove = 0;
            ++wIter;
        }
        /* Copy block to without\with quotes to other buffer. */
        if (can_remove)
            strncat(res, start + 1, start_len - 2);
        else
            strncat(res, start, start_len);

        strcat(res, " ");
        ++iter;
    }
    return res;
}

#define WRITE_ITEMDEF_FIELD_INT(str_key, int_val) \
        WRITE_MENU_FIELD("            %-20s %d\n", (str_key), (int_val))

#define WRITE_ITEMDEF_FIELD_FLOAT(str_key, float_val) \
        WRITE_MENU_FIELD("            %-20s %g\n", (str_key), (float_val))

#define WRITE_ITEMDEF_FIELD_STRING(str_key, str_val) \
        WRITE_MENU_FIELD("            %-20s \"%s\"\n", (str_key), (str_val))

#define WRITE_ITEMDEF_FIELD_RECT(str_key, rect_val) \
    do { \
        if ( (rect_val).x || (rect_val).y || (rect_val).w || (rect_val).h || (rect_val).horzAlign || (rect_val).vertAlign ) \
            fprintf(f, "            %-20s %g %g %g %g %d %d\n", (str_key), (rect_val).x, (rect_val).y, (rect_val).w, (rect_val).h, (rect_val).horzAlign, (rect_val).vertAlign); \
    } while(0)

#define WRITE_ITEMDEF_FIELD_VEC4(str_key, vec4_val) \
    do { \
        if ( (vec4_val)[0] || (vec4_val)[1] || (vec4_val)[2] || (vec4_val)[3] ) \
            fprintf(f, "            %-20s %g %g %g %g\n", (str_key), (vec4_val)[0], (vec4_val)[1], (vec4_val)[2], (vec4_val)[3]); \
    } while(0)

#define WRITE_ITEMDEF_FIELD_ORIGIN(str_key, rect_val) \
    do { \
        if ( (rect_val).x || (rect_val).y ) \
            fprintf(f, "            %-20s %g %g\n", (str_key), (rect_val).x, (rect_val).y); \
    } while(0)

#define WRITE_ITEMDEF_FIELD_MATERIAL(str_key, mtl) \
    do { \
        if ((mtl)) \
            fprintf(f, "            %-20s \"%s\"\n", (str_key), *(mtl)); \
    } while(0)

#define WRITE_ITEMDEF_FIELD_ACTION(str_key, str_action) \
    do { \
        if ((str_action)) \
            WRITE_MENU_FIELD("            %-20s { %s }\n", (str_key), action_optimize((str_action))); \
    } while(0)

#define WRITE_ITEMDEF_FIELD_KEY(key_hndl) \
    do { \
        if ((key_hndl)) \
            fprintf(f, "            %-20s \"%c\" { %s }\n", "execKey", (key_hndl)->key, (key_hndl)->action); \
    } while(0)

#define WRITE_ITEMDEF_FIELD_STATEMENT(str_key, statement) \
    do { \
        if ((statement).entries_count) \
            fprintf(f, "            %-20s %s ( %s );\n", "exp", (str_key), generate_expression_string(&statement)); \
    } while(0)

#define WRITE_ITEMDEF_FIELD_VISIBLE(statement) \
    do { \
        if ((statement).entries_count) \
            fprintf(f, "            %-20s when ( %s );\n", "visible", generate_expression_string(&statement)); \
    } while(0)

#define WRITE_ITEMDEF_FIELD_PROPERTY(str_prop, bool_write) \
    do { \
        if ((bool_write)) \
            fprintf(f, "            %s\n", (str_prop)); \
    } while(0)

#define WRITE_MENUDEF_FIELD_INT(str_key, int_val) \
        WRITE_MENU_FIELD("        %-20s %d\n", (str_key), (int_val))

#define WRITE_MENUDEF_FIELD_FLOAT(str_key, float_val) \
        WRITE_MENU_FIELD("        %-20s %g\n", (str_key), (float_val))

#define WRITE_MENUDEF_FIELD_STRING(str_key, str_val) \
        WRITE_MENU_FIELD("        %-20s \"%s\"\n", (str_key), (str_val))

#define WRITE_MENUDEF_FIELD_MATERIAL(str_key, mtl) \
    do { \
        if ((mtl)) \
            fprintf(f, "        %-20s \"%s\"\n", (str_key), *(mtl)); \
    } while(0)



#define WRITE_MENUDEF_FIELD_ACTION(str_key, str_action) \
    do { \
        if ((str_action)) \
            WRITE_MENU_FIELD("        %-20s { %s }\n", (str_key), action_optimize((str_action))); \
    } while(0)

#define WRITE_MENUDEF_FIELD_RECT(str_key, rect_val) \
    do { \
        if ( (rect_val).x || (rect_val).y || (rect_val).w || (rect_val).h || (rect_val).horzAlign || (rect_val).vertAlign ) \
            fprintf(f, "        %-20s %g %g %g %g %d %d\n", (str_key), (rect_val).x, (rect_val).y, (rect_val).w, (rect_val).h, (rect_val).horzAlign, (rect_val).vertAlign); \
    } while(0)

#define WRITE_MENUDEF_FIELD_VEC4(str_key, vec4_val) \
    do { \
        if ( (vec4_val)[0] || (vec4_val)[1] || (vec4_val)[2] || (vec4_val)[3] ) \
            fprintf(f, "        %-20s %g %g %g %g\n", (str_key), (vec4_val)[0], (vec4_val)[1], (vec4_val)[2], (vec4_val)[3]); \
    } while(0)

#define WRITE_MENUDEF_FIELD_KEY(key_hndl) \
    do { \
        if ((key_hndl)) \
            fprintf(f, "        %-20s \"%c\" { %s }\n", "execKey", (key_hndl)->key, (key_hndl)->action); \
    } while(0)

#define WRITE_MENUDEF_FIELD_STATEMENT(str_key, statement) \
    do { \
        if ((statement).entries_count) \
            fprintf(f, "        %-20s %s ( %s );\n", "exp", (str_key), generate_expression_string(&statement)); \
    } while(0)

#define WRITE_MENUDEF_FIELD_VISIBLE(statement) \
    do { \
        if ((statement).entries_count) \
            fprintf(f, "        %-20s when ( %s );\n", "visible", generate_expression_string(&(statement))); \
    } while(0)

#define WRITE_MENU_FIELD(format, str_key, val) \
    do { \
        if ((val)) \
            fprintf(f, format, (str_key), (val)); \
    } while(0)

/* Write window properties to file. */
/* Some of WindowDef_t fields are not required for MenuDef_t. */
static void extract_menu_window(FILE *f, const WindowDef_t *w)
{
    /* Ignored for menu: origin, group. */
    WRITE_MENUDEF_FIELD_STRING("name", w->name);
    WRITE_MENUDEF_FIELD_RECT("rect", w->rect);
    WRITE_MENUDEF_FIELD_INT("style", w->style);
    WRITE_MENUDEF_FIELD_INT("border", w->border);
    WRITE_MENUDEF_FIELD_INT("ownerDraw", w->ownerDraw);
    WRITE_MENUDEF_FIELD_INT("ownerDrawFlag", w->ownerDrawFlag);
    WRITE_MENUDEF_FIELD_FLOAT("borderSize", w->borderSize);
    WRITE_MENUDEF_FIELD_VEC4("foreColor", w->foreColor);
    WRITE_MENUDEF_FIELD_VEC4("backColor", w->backColor);
    WRITE_MENUDEF_FIELD_VEC4("borderColor", w->borderColor);
    WRITE_MENUDEF_FIELD_VEC4("outlineColor", w->outlineColor);
    WRITE_MENUDEF_FIELD_MATERIAL("background", ((char**)w->background));
}

/* Write MenuDef_t properties. */
static void extract_menu_fields(FILE *f, const MenuDef_t *m)
{
    ItemKeyHandler_t *key = m->onKey;
    extract_menu_window(f, &m->window);    
    WRITE_MENUDEF_FIELD_INT("fullScreen", m->fullScreen);
    WRITE_MENUDEF_FIELD_INT("fadeCycle", m->fadeCycle);
    WRITE_MENUDEF_FIELD_FLOAT("fadeClamp", m->fadeClamp);
    WRITE_MENUDEF_FIELD_FLOAT("fadeAmount", m->fadeAmount);
    WRITE_MENUDEF_FIELD_FLOAT("fadeInAmount", m->fadeInAmount);
    WRITE_MENUDEF_FIELD_FLOAT("blurWorld", m->blurWorld);
    WRITE_MENUDEF_FIELD_ACTION("onOpen", m->onOpen);
    WRITE_MENUDEF_FIELD_ACTION("onClose", m->onClose);
    WRITE_MENUDEF_FIELD_ACTION("onESC", m->onESC);
    while (key)
    {
        WRITE_MENUDEF_FIELD_KEY(key);
        key = key->next;
    }
    
    WRITE_MENUDEF_FIELD_STRING("allowedBinding", m->allowedBinding);
    WRITE_MENUDEF_FIELD_STRING("soundLoop", m->soundLoop);
    WRITE_MENUDEF_FIELD_VEC4("focusColor", m->focusColor);
    WRITE_MENUDEF_FIELD_VEC4("disableColor", m->disableColor);
    /* TODO: "outOfBoundsClick;" */
    /* TODO: "popUp;" */
    /* TODO: "legacySplitScreenScale;" */
    /* TODO: "hiddenDuringScope;" */
    /* TODO: "hiddenDuringFlashbang;" */
    /* TODO: "hiddenDuringUI;" */
    WRITE_MENUDEF_FIELD_STATEMENT("rect X", m->rectXExp);
    WRITE_MENUDEF_FIELD_STATEMENT("rect Y", m->rectYExp);
    /* WAS: //WRITE_MENUDEF_FIELD_VISIBLE(m->visibleExp); */
    WRITE_MENUDEF_FIELD_STATEMENT("visible when", m->visibleExp);
}

/* Extract ItemDef's window properties. */
static void extract_menu_item_window(FILE *f, const WindowDef_t *w)
{
    /* Ignored: origin. */
    WRITE_ITEMDEF_FIELD_STRING("name", w->name);
    WRITE_ITEMDEF_FIELD_RECT("rect", w->rect);
    WRITE_ITEMDEF_FIELD_STRING("group", w->group);
    WRITE_ITEMDEF_FIELD_INT("style", w->style);
    WRITE_ITEMDEF_FIELD_INT("border", w->border);
    WRITE_ITEMDEF_FIELD_INT("ownerDraw", w->ownerDraw);
    WRITE_ITEMDEF_FIELD_INT("ownerDrawFlag", w->ownerDrawFlag);
    WRITE_ITEMDEF_FIELD_FLOAT("borderSize", w->borderSize);
    WRITE_ITEMDEF_FIELD_VEC4("foreColor", w->foreColor);
    WRITE_ITEMDEF_FIELD_VEC4("backColor", w->backColor);
    WRITE_ITEMDEF_FIELD_VEC4("borderColor", w->borderColor);
    WRITE_ITEMDEF_FIELD_VEC4("outlineColor", w->outlineColor);
    WRITE_ITEMDEF_FIELD_MATERIAL("background", ((char**)w->background));
}

/* Extract ItemDef's list box properties. */
static void extract_menu_item_listbox(FILE *f, const ListBoxDef_t *lb)
{
    uint i;
    WRITE_ITEMDEF_FIELD_FLOAT("elementWidth", lb->elementWidth);
    WRITE_ITEMDEF_FIELD_FLOAT("elementHeight", lb->elementHeight);
    WRITE_ITEMDEF_FIELD_INT("elementType", lb->elementType);
    /* Columns output. Not sure if ColumnInfo_t.alignment in use. */
    if (lb->columns_count)
    {
        fprintf(f, "            columns %2d %4d %4d %3d\n", lb->columns_count, lb->columns[0].xpos, lb->columns[0].xwidth, lb->columns[0].textLen);
        for (i = 1; i < lb->columns_count; ++i)
            fprintf(f, "                       %4d %4d %3d\n", lb->columns[i].xpos, lb->columns[i].xwidth, lb->columns[i].textLen);
    }
    WRITE_ITEMDEF_FIELD_STRING("doubleClick", lb->doubleClick);
    WRITE_ITEMDEF_FIELD_PROPERTY("notSelectable", lb->notSelectable);
    WRITE_ITEMDEF_FIELD_PROPERTY("noScrollBars", lb->noScrollBars);
    WRITE_ITEMDEF_FIELD_PROPERTY("usePaging", lb->usePaging);
    WRITE_ITEMDEF_FIELD_VEC4("selectBorder", lb->selectBorder);
    WRITE_ITEMDEF_FIELD_VEC4("disableColor", lb->disableColor);
    WRITE_ITEMDEF_FIELD_MATERIAL("selectIcon", (char**)lb->selectIcon);
}

/* Extract ItemDef's edit field properties. */
static void extract_menu_item_editfield(FILE *f, const EditFieldDef_t *ef)
{
    WRITE_ITEMDEF_FIELD_INT("maxChars", ef->maxChars);
    WRITE_ITEMDEF_FIELD_PROPERTY("maxCharsGotoNext", ef->maxCharsGotoNext);
    WRITE_ITEMDEF_FIELD_INT("maxPaintChars", ef->maxPaintChars);
}

/* Extract ItemDef's multilist properties. */
static void extract_menu_item_multi(FILE *f, const ItemDefData_t *idd)
{
    char *list_type = "dvarFloatList";

    if (idd->multi->count)
    {
        if (idd->multi->isStrList == 1)
            list_type = "dvarStrList";

        fprintf(f, "            %-20s %s\n", list_type, idd->enumDvarName);
    }
}

/* Extract ItemDef's dvarenum properties. */
static void extract_menu_item_dvarenum(FILE *f, const ItemDefData_t *idd)
{
    if (idd->multi->count)
        fprintf(f, "            %-20s %s\n", "dvarEnumList", idd->enumDvarName);
}

/* Extract ItemDef_t prorerties. */
static void extract_menu_item(FILE *f, const ItemDef_t *i)
{
    ItemKeyHandler_t *key = i->onKey;
    extract_menu_item_window(f, &i->window);
    /* i->textRect. What is it. I can't remember but I know there's a way to move text within itemdef. */
    WRITE_ITEMDEF_FIELD_INT("type", i->type);
    /* i->dataType - same as type. Shouldn't be extracted here? */
    //Com_Printf("itemDef type: %s, %s\n", g_MenuItemTypes[i->type], g_MenuItemTypes[i->dataType]);
    WRITE_ITEMDEF_FIELD_INT("align", i->align);
    WRITE_ITEMDEF_FIELD_INT("textFont", i->textFont);
    WRITE_ITEMDEF_FIELD_INT("textAlign", i->textAlign);
    WRITE_ITEMDEF_FIELD_FLOAT("textAlignX", i->textAlignX);
    WRITE_ITEMDEF_FIELD_FLOAT("textAlignY", i->textAlignY);
    WRITE_ITEMDEF_FIELD_FLOAT("textScale", i->textScale);
    WRITE_ITEMDEF_FIELD_INT("textStyle", i->textStyle);
    WRITE_ITEMDEF_FIELD_INT("gameMsgWindowIndex", i->gameMsgWindowIndex);
    WRITE_ITEMDEF_FIELD_INT("gameMsgWindowMode", i->gameMsgWindowMode);
    WRITE_ITEMDEF_FIELD_STRING("text", i->text);
    WRITE_ITEMDEF_FIELD_INT("textSavegame", i->textSavegame);
    WRITE_ITEMDEF_FIELD_STRING("mouseEnterText", i->mouseEnterText);
    WRITE_ITEMDEF_FIELD_STRING("mouseExitText", i->mouseExitText);
    WRITE_ITEMDEF_FIELD_ACTION("mouseEnter", i->mouseEnter);
    WRITE_ITEMDEF_FIELD_ACTION("mouseExit", i->mouseExit);
    WRITE_ITEMDEF_FIELD_ACTION("action", i->action);
    WRITE_ITEMDEF_FIELD_ACTION("accept", i->accept);
    WRITE_ITEMDEF_FIELD_ACTION("onFocus", i->onFocus);
    WRITE_ITEMDEF_FIELD_ACTION("leaveFocus", i->leaveFocus);
    WRITE_ITEMDEF_FIELD_STRING("dvar", i->dvar);
    WRITE_ITEMDEF_FIELD_STRING("dvarTest", i->dvarTest);
    /* TODO: "dvarFloat ???" */
    while (key)
    {
        WRITE_ITEMDEF_FIELD_KEY(key);
        key = key->next;
    }
    /* TODO: enableDvar action changes. */
    //WRITE_ITEMDEF_FIELD_STRING("enableDvar", i->enableDvar);
    /* TODO_later: ItemDef_t.focusSound was not used. */
    WRITE_ITEMDEF_FIELD_FLOAT("feeder", i->feeder);
    
    if (i->type == ITEM_TYPE_LISTBOX)
        extract_menu_item_listbox(f, i->typeData.listBox);
    else if (i->type == ITEM_TYPE_EDITFIELD)
        extract_menu_item_editfield(f, i->typeData.editField);
    else if (i->type == ITEM_TYPE_MULTI)
        extract_menu_item_multi(f, &i->typeData);
    else if (i->type == ITEM_TYPE_DVARENUM)
        extract_menu_item_dvarenum(f, &i->typeData);
    
    WRITE_ITEMDEF_FIELD_STATEMENT("text", i->textExp);
    WRITE_ITEMDEF_FIELD_STATEMENT("material", i->materialExp);
    WRITE_ITEMDEF_FIELD_STATEMENT("rect X", i->rectXExp);
    WRITE_ITEMDEF_FIELD_STATEMENT("rect Y", i->rectYExp);
    WRITE_ITEMDEF_FIELD_STATEMENT("rect W", i->rectWExp);
    WRITE_ITEMDEF_FIELD_STATEMENT("rect H", i->rectHExp);
    WRITE_ITEMDEF_FIELD_STATEMENT("foreColor A", i->foreColorAExp);
    /* WAS //WRITE_ITEMDEF_FIELD_VISIBLE(i->visibleExp); */
    WRITE_ITEMDEF_FIELD_STATEMENT("visible", i->foreColorAExp);
    /* TODO: "decoration;" */
    /* TODO: "autoWrapped;" */
    /* TODO: "horizontalScroll;" */
}

/* Extract single menu. Must be used only inside 'extract_menufile' */
static void extract_menu(MenuDef_t *asset, const char *subdir)
{
    int i;
    FILE *f;
    char output_path[MAX_OSPATH];

    Com_Printf("    Writing menu '%s'...", asset->window.name);
    sprintf(output_path, "%s%s/%s/%s.menu", g_savePath, g_zone_name, subdir, asset->window.name);
    output_path[MAX_OSPATH - 1] = '\0';
    create_directories(output_path);

    f = fopen(output_path, "w");
    if (!f)
    {
        Com_Printf("Can't open '%s': %s...\n", output_path, strerror(errno));
        return;
    }

    /* Write .menu file header. */
    fwrite("#include \"ui/menudefinition.h\";\n{\n    menuDef\n    {\n", sizeof(char), 52, f);
    /* Write menu fields. */
    extract_menu_fields(f, asset);
    /* Write all menu items. */
    for (i = 0; i < asset->itemCount; ++i)
    {
        fwrite("        itemDef\n        {\n", sizeof(char), 26, f);
        extract_menu_item(f, asset->items[i]);
        fwrite("        }\n", sizeof(char), 10, f);
    }
    /* Write .menu file footer. */
    fwrite("    }\n}\n", sizeof(char), 8, f);

    fclose(f);
    Com_Printf("done.\n");
}

/* Extract menufile. */
static void extract_menufile(const void *header)
{
    Menufile_t *asset = (Menufile_t *)header;
    char subpath[128] = {'\n'};
    FILE *text_menufile;
    char text_asset_name[MAX_OSPATH] = {'\0'};

    uint i;

    strcpy(subpath, Sys_Dirname(asset->name));
    /* Newline for each menu. */
    Com_Printf("\n");
    /*  */
    if (asset->count == 1)
    {
        add_zone_source_line("menufile", asset->name);
        extract_menu(asset->menus[0], subpath);
    }
    else
    {
        /* Generate .txt name for asset. */
        sprintf(text_asset_name, "%s%s/%s", g_savePath, g_zone_name, asset->name);
        *(strrchr(text_asset_name, '.')) = '\0';
        strcat(text_asset_name, ".txt");
        create_directories(text_asset_name);

        text_menufile = fopen(text_asset_name, "w");        
        if (!text_menufile)
        {
            Com_Printf("Can't open '%s': %s...\n", text_asset_name, strerror(errno));
            return;
        }
        /* Write header to .txt file. */
        fwrite("{\n", sizeof(char), 2, text_menufile);
        /* Write each menu and add it to .txt menufile. */
        for (i = 0; i < asset->count; ++i)
        {
            extract_menu(asset->menus[i], subpath);
            fprintf(text_menufile, "    loadMenu { \"%s/%s.menu\" }\n", subpath, asset->menus[i]->window.name);
        }
        /* Write footer to .txt file. */
        fwrite("}\n", sizeof(char), 2, text_menufile);
        fclose(text_menufile);
        /* Add .txt menufile to zone_source file. */
        sprintf(text_asset_name, "%s", asset->name);
        *(strrchr(text_asset_name, '.')) = '\0';
        strcat(text_asset_name, ".txt");
        add_zone_source_line("menufile", text_asset_name);
    }
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
    g_zone_name = Cmd_Argv(1);
    for (i = 0; i < MAX_STORE_FASTFILES; ++i)
    {
        if (!strcmp(g_zone_name, g_FastFileAssetsTableInfo[i].name))
            ff_info = &g_FastFileAssetsTableInfo[i];
    }
    if (!ff_info)
    {
        Com_Printf("Fastfile with name '%s' not loaded.\n", g_zone_name);
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
    Com_Printf("Extracting assets of type '%s' from fastfile '%s':\n", type, g_zone_name);
    Com_Printf("Output directory: %s%s/\n", g_savePath, g_zone_name);
    extract_from_fastfile(ff_info, type_num, handler);
    g_zone_name = 0;
}

void add_extractor_console_commands()
{
    Cmd_AddCommand("extract", Cmd_ExtractAsset);
}
