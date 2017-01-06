#pragma once
#include "../q_math.h"

typedef unsigned int uint;
/* TODO these are a placeholders. Better to use struct definitions. */
typedef void snd_alias_list_t;
typedef void Material_t;

typedef enum OperationEnum_t 
{
    OP_NOOP = 0,
    OP_RIGHTPAREN,
    OP_MULTIPLY,
    OP_DIVIDE,
    OP_MODULUS,
    OP_ADD,
    OP_SUBTRACT,
    OP_NOT,
    OP_LESSTHAN,
    OP_LESSTHANEQUALTO,
    OP_GREATERTHAN,
    OP_GREATERTHANEQUALTO,
    OP_EQUALS,
    OP_NOTEQUAL,
    OP_AND,
    OP_OR,
    OP_LEFTPAREN,
    OP_COMMA,
    OP_BITWISEAND,
    OP_BITWISEOR,
    OP_BITWISENOT,
    OP_BITSHIFTLEFT,
    OP_BITSHIFTRIGHT,
    OP_SIN,
    OP_COS,
    OP_MIN,
    OP_MAX,
    OP_MILLISECONDS,
    OP_DVARINT,
    OP_DVARBOOL,
    OP_DVARFLOAT,
    OP_DVARSTRING,
    OP_STAT,
    OP_UI_ACTIVE,
    OP_FLASHBANGED,
    OP_SCOPED,
    OP_SCOREBOARD_VISIBLE,
    OP_INKILLCAM,
    OP_PLAYER,
    OP_SELECTING_LOCATION,
    OP_TEAM,
    OP_OTHERTEAM,
    OP_MARINES,
    OP_OPFOR,
    OP_MENUISOPEN,
    OP_WRITINGDATA,
    OP_INLOBBY,
    OP_INPRIVATEPARTY,
    OP_PRIVATEPARTYHOST,
    OP_PRIVATEPARTYHOSTINLOBBY,
    OP_ALONEINPARTY,
    OP_ADSJAVELIN,
    OP_WEAPLOCKBLINK,
    OP_WEAPATTACKTOP,
    OP_WEAPATTACKDIRECT,
    OP_SECONDSASTIME,
    OP_TABLELOOKUP,
    OP_LOCSTRING,
    OP_LOCALVARINT,
    OP_LOCALVARBOOL,
    OP_LOCALVARFLOAT,
    OP_LOCALVARSTRING,
    OP_TIMELEFT,
    OP_SECONDSASCOUNTDOWN,
    OP_GAMEMSGWNDACTIVE,
    OP_INT,
    OP_STRING,
    OP_FLOAT,
    OP_GAMETYPENAME,
    OP_GAMETYPE,
    OP_GAMETYPEDESCRIPTION,
    OP_SCOREATRANK,
    OP_FRIENDSONLINE,
    OP_SPECTATINGCLIENT,
    OP_STATRANGEANYBITSSET,
    OP_KEYBINDING,
    OP_ACTIONSLOTUSABLE,
    OP_HUDFADE,
    OP_MAXRECOMMENDEDPLAYERS,
    OP_ACCEPTINGINVITE,
    OP_ISINTERMISSION,
    NUM_OPERATIONS
} OperationEnum_t;

typedef struct ColumnInfo_t
{
    int xpos;
    int xwidth;
    int textLen;
    int alignment;
} ColumnInfo_t;

typedef struct ListBoxDef_t
{
    int startPos; /* Not used at compile time? */
    int endPos; /* Not used at compile time? */
    int drawPadding; /* Not used at compile time? */
    int cursorPos; /* Not used at compile time? */
    float elementWidth;
    float elementHeight;
    int elementType; /* Was elementStyle, but it not exist in engine. */
    uint columns_count; /* Not extracted, but useful  */
    ColumnInfo_t columns[16];
    const char *doubleClick;
    int notSelectable;
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

/* Not actually used. */
typedef struct MultiDef_t
{
    const char *dvarEnumList[32];   /* ITEM_TYPE_DVARENUM */
    const char *dvarStrList[32];    /* ITEM_TYPE_MULTI */
    float dvarFloatList[32];        /* ITEM_TYPE_MULTI */
    uint count;
    int strDef;                     /* boolean? If true => dvarStrList? */
} MultiDef_t;

typedef union ItemDefData_t
{
    ListBoxDef_t *listBox;
    EditFieldDef_t *editField;
    MultiDef_t *multi;
    const char *enumDvarName;
    void *data;
} ItemDefData_t;

typedef union OperandInternalDataUnion_t
{
    int i;
    float f;
    const char *s;
} OperandInternalDataUnion_t;

typedef enum OperandDataType_t 
{
    OPERANDTYPE_INTEGER = 0,
    OPERANDTYPE_FLOAT,
    OPERANDTYPE_STRING
} OperandDataType_t;

typedef struct Operand_t
{
    OperandDataType_t type;
    OperandInternalDataUnion_t data;
} Operand_t;

typedef union EntryInternalData_t
{
    OperationEnum_t operation;
    Operand_t operand;
} EntryInternalData_t;

typedef enum EntryType_t
{
    ENTRYTYPE_OPERATION = 0,
    ENTRYTYPE_OPERAND
} EntryType_t;

typedef struct ExpressionEntry_t
{
    EntryType_t type;
    EntryInternalData_t data;
} ExpressionEntry_t;

typedef struct Statement_t
{
    uint entries_count;
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
    RectDef_t origin;
    const char *group;
    int style;
    int border;
    int ownerDraw;
    int ownerDrawFlag;
    float borderSize;
    int staticFlags;
    int dynamicFlags;
    int nextTime;
    vec4_t foreColor;
    vec4_t backColor;
    vec4_t borderColor;
    vec4_t outlineColor;
    Material_t *background;
} WindowDef_t;

typedef enum ItemDefType_t
{
    ITEM_TYPE_TEXT = 0,             /* Simple text. */
    ITEM_TYPE_BUTTON,               /* Button, basically text with a border. */
    ITEM_TYPE_RADIOBUTTON,          /* Toggle button, may be grouped. */
    ITEM_TYPE_CHECKBOX,             /* Check box. */
    ITEM_TYPE_EDITFIELD,            /* Editable text, associated with a dvar. */
    ITEM_TYPE_COMBO,                /* Drop down list. */
    ITEM_TYPE_LISTBOX,              /* Scrollable list. */
    ITEM_TYPE_MODEL,                /* Model. */
    ITEM_TYPE_OWNERDRAW,            /* Owner draw, name specs what it is. */
    ITEM_TYPE_NUMERICFIELD,         /* Editable text, associated with a dvar. */
    ITEM_TYPE_SLIDER,               /* Mouse speed, volume, etc.. */
    ITEM_TYPE_YESNO,                /* Yes no dvar setting. */
    ITEM_TYPE_MULTI,                /* Multiple list setting, enumerated. */
    ITEM_TYPE_DVARENUM,             /* Multiple list setting, enumerated from a dvar. */
    ITEM_TYPE_BIND,                 /* Bind. */
    ITEM_TYPE_MENUMODEL,            /* Special menu model. */
    ITEM_TYPE_VALIDFILEFIELD,       /* Text must be valid for use in a dos filename. */
    ITEM_TYPE_DECIMALFIELD,         /* Editable text, associated with a dvar, which allows decimal input. */
    ITEM_TYPE_UPREDITFIELD,         /* Editable text, associated with a dvar. */
    ITEM_TYPE_GAME_MESSAGE_WINDOW,  /* Game message window. */
    MAX_ITEM_TYPES
} ItemDefType_t;

typedef struct ItemDef_t
{
    WindowDef_t window;
    RectDef_t textRect;
    ItemDefType_t type;
    ItemDefType_t dataType;
    int align;
    int textFont;
    int textAlign;
    float textAlignX;
    float textAlignY;
    float textScale;
    int textStyle;
    int gameMsgWindowIndex;
    int gameMsgWindowMode;
    const char *text;
    int textSavegame;
    struct MenuDef_t *parent;
    const char *mouseEnterText;
    const char *mouseExitText;
    const char *mouseEnter;
    const char *mouseExit;
    const char *action;
    const char *accept;
    const char *onFocus;
    const char *leaveFocus;
    const char *dvar;
    const char *dvarTest;
    ItemKeyHandler_t *onKey;
    const char *enableDvar;
    int cvarFlags;
    snd_alias_list_t *focusSound;
    float special; // menu model?
    int cursorPos;
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
    int cursorItem;
    int fadeCycle;
    float fadeClamp;
    float fadeAmount;
    float fadeInAmount;
    float blurWorld;
    const char *onOpen;
    const char *onClose;
    const char *onESC;
    ItemKeyHandler_t *onKey;
    Statement_t visibleExp;
    const char *allowedBinding;
    const char *soundLoop;
    int imageTrack;
    vec4_t focusColor;
    vec4_t disableColor;
    Statement_t rectXExp;
    Statement_t rectYExp;
    ItemDef_t **items;
} MenuDef_t;

extern const char *g_MenuOperations[NUM_OPERATIONS];
extern const char *g_MenuItemTypes[MAX_ITEM_TYPES];

/* No such kind of asset in ANY default fastfile but I want to left it here. */
/*#define XASSET_TYPE_MENU (21)*/
