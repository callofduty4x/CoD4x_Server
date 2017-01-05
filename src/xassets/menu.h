#pragma once
#include "../q_math.h"

/* In case of split screen. */
#define NUM_SCREENS (1)
/* TODO these are a placeholders. Better to use struct definitions. */
typedef void snd_alias_list_t;
typedef void Material_t;

typedef enum OperationEnum_t 
{
    OP_NOOP = 0x0,
    OP_RIGHTPAREN = 0x1,
    OP_MULTIPLY = 0x2,
    OP_DIVIDE = 0x3,
    OP_MODULUS = 0x4,
    OP_ADD = 0x5,
    OP_SUBTRACT = 0x6,
    OP_NOT = 0x7,
    OP_LESSTHAN = 0x8,
    OP_LESSTHANEQUALTO = 0x9,
    OP_GREATERTHAN = 0xA,
    OP_GREATERTHANEQUALTO = 0xB,
    OP_EQUALS = 0xC,
    OP_NOTEQUAL = 0xD,
    OP_AND = 0xE,
    OP_OR = 0xF,
    OP_LEFTPAREN = 0x10,
    OP_COMMA = 0x11,
    OP_BITWISEAND = 0x12,
    OP_BITWISEOR = 0x13,
    OP_BITWISENOT = 0x14,
    OP_BITSHIFTLEFT = 0x15,
    OP_BITSHIFTRIGHT = 0x16,
    OP_SIN = 0x17,
    OP_FIRSTFUNCTIONCALL = 0x17,
    OP_COS = 0x18,
    OP_MIN = 0x19,
    OP_MAX = 0x1A,
    OP_MILLISECONDS = 0x1B,
    OP_CVARINT = 0x1C,
    OP_CVARBOOL = 0x1D,
    OP_CVARFLOAT = 0x1E,
    OP_CVARSTRING = 0x1F,
    OP_STAT = 0x20,
    OP_UIACTIVE = 0x21,
    OP_FLASHBANGED = 0x22,
    OP_SCOPED = 0x23,
    OP_SCOREBOARDVISIBLE = 0x24,
    OP_INKILLCAM = 0x25,
    OP_PLAYERFIELD = 0x26,
    OP_SELECTINGLOCATION = 0x27,
    OP_TEAMFIELD = 0x28,
    OP_OTHERTEAMFIELD = 0x29,
    OP_MARINESFIELD = 0x2A,
    OP_OPFORFIELD = 0x2B,
    OP_MENUISOPEN = 0x2C,
    OP_WRITINGDATA = 0x2D,
    OP_INLOBBY = 0x2E,
    OP_INPRIVATEPARTY = 0x2F,
    OP_PRIVATEPARTYHOST = 0x30,
    OP_PRIVATEPARTYHOSTINLOBBY = 0x31,
    OP_ALONEINPARTY = 0x32,
    OP_ADSJAVELIN = 0x33,
    OP_WEAPLOCKBLINK = 0x34,
    OP_WEAPATTACKTOP = 0x35,
    OP_WEAPATTACKDIRECT = 0x36,
    OP_SECONDSASTIME = 0x37,
    OP_TABLELOOKUP = 0x38,
    OP_LOCALIZESTRING = 0x39,
    OP_LOCALVARINT = 0x3A,
    OP_LOCALVARBOOL = 0x3B,
    OP_LOCALVARFLOAT = 0x3C,
    OP_LOCALVARSTRING = 0x3D,
    OP_TIMELEFT = 0x3E,
    OP_SECONDSASCOUNTDOWN = 0x3F,
    OP_TOINT = 0x40,
    OP_TOSTRING = 0x41,
    OP_TOFLOAT = 0x42,
    OP_GAMETYPENAME = 0x43,
    OP_GAMETYPE = 0x44,
    OP_GAMETYPEDESCRIPTION = 0x45,
    OP_SCORE = 0x46,
    OP_FRIENDSONLINE = 0x47,
    OP_FOLLOWING = 0x48,
    OP_STATRANGEBITSSET = 0x49,
    NUM_OPERATORS = 0x4A
} OperationEnum_t;

typedef enum ExpDataType_t 
{
    VAL_INT = 0x0,
    VAL_FLOAT = 0x1,
    VAL_STRING = 0x2
} ExpDataType_t;

typedef struct ColumnInfo_t
{
    int pos;
    int width;
    int maxChars;
    int alignment;
} ColumnInfo_t;

typedef struct ListBoxDef_t
{
    int startPos[NUM_SCREENS];
    int endPos[NUM_SCREENS];
    int drawPadding;
    int cursorPos[NUM_SCREENS];
    float elementWidth;
    float elementHeight;
    int elementStyle;
    int numColumns;
    ColumnInfo_t columnInfo[16];
    const char *doubleClick;
    int notselectable;
    int noScrollBars;
    int usePaging;
    vec4_t selectBorder;
    vec4_t disableColor;
    Material_t *selectIcon;
} ListBoxDef_t;

typedef struct EditFieldDef_t
{
    float minVal;
    float maxVal;
    float defVal;
    float range;
    int maxChars;
    int maxCharsGotoNext;
    int maxPaintChars;
    int paintOffset;
} EditFieldDef_t;

typedef struct MultiDef_t
{
    const char *cvarList[32];
    const char *cvarStr[32];
    float cvarValue[32];
    int count;
    int strDef;
} MultiDef_t;

typedef union ItemDefData_t
{
    ListBoxDef_t *listBox;
    EditFieldDef_t *editField;
    MultiDef_t *multi;
    const char *enumCvarName;
    void *data;
} ItemDefData_t;

typedef union OperandInternalDataUnion_t
{
    int intVal;
    float floatVal;
    const char *string;
} OperandInternalDataUnion_t;

typedef struct Operand_t
{
    ExpDataType_t dataType;
    OperandInternalDataUnion_t internals;
} Operand_t;

typedef union EntryInternalData_t
{
    OperationEnum_t op;
    Operand_t operand;
} EntryInternalData_t;

typedef struct ExpressionEntry_t
{
    int type;
    EntryInternalData_t data;
} ExpressionEntry_t;

typedef struct Statement_t
{
    int numEntries;
    ExpressionEntry_t **entries;
} Statement_t;

typedef struct ItemKeyHandler_t
{
    int key;
    const char *action;
    struct ItemKeyHandler_t *next;
} ItemKeyHandler_t;

typedef struct RectDef_t
{
    float x;
    float y;
    float w;
    float h;
    int horzAlign;
    int vertAlign;
} RectDef_t;

typedef struct WindowDef_t
{
    const char *name;
    RectDef_t rect;
    RectDef_t rectClient;
    const char *group;
    int style;
    int border;
    int ownerDraw;
    int ownerDrawFlags;
    float borderSize;
    int staticFlags;
    int dynamicFlags[NUM_SCREENS];
    int nextTime;
    vec4_t foreColor;
    vec4_t backColor;
    vec4_t borderColor;
    vec4_t outlineColor;
    Material_t *background;
} WindowDef_t;

typedef struct ItemDef_t
{
    WindowDef_t window;
    RectDef_t textRect[NUM_SCREENS];
    int type;
    int dataType;
    int alignment;
    int fontEnum;
    int textAlignMode;
    float textalignx;
    float textaligny;
    float textscale;
    int textStyle;
    int gameMsgWindowIndex;
    int gameMsgWindowMode;
    const char *text;
    int textSavegameInfo;
    struct menuDef_s *parent;
    const char *mouseEnterText;
    const char *mouseExitText;
    const char *mouseEnter;
    const char *mouseExit;
    const char *action;
    const char *onAccept;
    const char *onFocus;
    const char *leaveFocus;
    const char *cvar;
    const char *cvarTest;
    ItemKeyHandler_t *onKey;
    const char *enableCvar;
    int cvarFlags;
    snd_alias_list_t *focusSound;
    float special;
    int cursorPos[NUM_SCREENS];
    ItemDefData_t typeData;
    int imageTrack;
    Statement_t visibleExp;
    Statement_t textExp;
    Statement_t materialExp;
    Statement_t rectXExp;
    Statement_t rectYExp;
    Statement_t rectWExp;
    Statement_t rectHExp;
    Statement_t foreColorAExp;
} ItemDef_t;

typedef struct MenuDef_t
{
    WindowDef_t window;
    const char *font;
    int fullScreen;
    int itemCount;
    int fontIndex;
    int cursorItem[NUM_SCREENS];
    int fadeCycle;
    float fadeClamp;
    float fadeAmount;
    float fadeInAmount;
    float blurRadius;
    const char *onOpen;
    const char *onClose;
    const char *onESC;
    ItemKeyHandler_t *onKey;
    Statement_t visibleExp;
    const char *allowedBinding;
    const char *soundName;
    int imageTrack;
    vec4_t focusColor;
    vec4_t disableColor;
    Statement_t rectXExp;
    Statement_t rectYExp;
    ItemDef_t **items;
} MenuDef_t;

/* No such kind of asset in ANY default fastfile but I want to left it here. */
/*#define XASSET_TYPE_MENU (21)*/
