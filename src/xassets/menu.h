#pragma once
#include "../q_shared.h"
#include "keyword.h"

typedef unsigned int uint;

typedef enum OperationEnum_t {
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

typedef enum WindowBorderType_t {
    WINDOW_BORDER_NONE = 0,   /* No border. */
    WINDOW_BORDER_FULL,       /* Full border based on border color ( single pixel ). */
    WINDOW_BORDER_HORZ,       /* Horizontal borders only. */
    WINDOW_BORDER_VERT,       /* Vertical borders only. */
    WINDOW_BORDER_KCGRADIENT, /* Horizontal border using the gradient bars. */
    WINDOW_BORDER_RAISED,     /* Darken the bottom and right sides of the border. */
    WINDOW_BORDER_SUNKEN      /* Darken the top and left sides of the border. */
} WindowBorderType_t;

typedef enum WindowStyle_t {
    WINDOW_STYLE_EMPTY = 0,   /* No background. */
    WINDOW_STYLE_FILLED,      /* Filled with background color. */
    WINDOW_STYLE_GRADIENT,    /* Gradient bar based on background color. */
    WINDOW_STYLE_SHADER,      /* Shader based on background color. */
    WINDOW_STYLE_TEAMCOLOR,   /* Team color. */
    WINDOW_STYLE_DVAR_SHADER, /* Draws the shader specified by the dvar. */
    WINDOW_STYLE_LOADBAR      /* Shader based on background color. */
} WindowStyle_t;

typedef enum ItemMSGWindowMode_t {
    MODE_BOTTOMUP_ALIGN_TOP = 0, /* Text appears on bottom of list and moves up to specified Y coordinate as old text fades out. */
    MODE_BOTTOMUP_ALIGN_BOTTOM,  /* Text appears on bottom of list and moves away from specified Y coordinate as new text pushes it up. */
    MODE_TOPDOWN_ALIGN_TOP,      /* Text appears on top of list and moves away from specified Y coordinate as new text pushes it down. */
    MODE_TOPDOWN_ALIGN_BOTTOM    /* Text appears on top of list and moves down to specified Y coordinate as old text fades out. */
} ItemMSGWindowMode_t;

typedef enum ItemDefAlign_t {
    HUD_VERTICAL = 0,
    HUD_HORIZONTAL
} ItemDefAlign_t;

typedef enum ListBoxElementType_t {
    LISTBOX_TEXT = 0,
    LISTBOX_IMAGE
} ListBoxElementType_t;

typedef enum WindowStaticFlags_t {
    WINDOW_FLAG_DECORATION              = 0x00100000u, // item
    WINDOW_FLAG_HORIZONTALSCROLL        = 0x00200000u, // item
    WINDOW_FLAG_AUTOWRAPPED             = 0x00800000u, // item
    WINDOW_FLAG_POPUP                   = 0x01000000u, // menu
    WINDOW_FLAG_OUTOFBOUNDSCLICK        = 0x02000000u, // menu
    WINDOW_FLAG_LEGACYSPLITSCREENSCALE  = 0x04000000u, // menu
    WINDOW_FLAG_HIDDENDURINGFLASHBANG   = 0x10000000u, // menu
    WINDOW_FLAG_HIDDENDURINGSCOPE       = 0x20000000u, // menu
    WINDOW_FLAG_HIDDENDURINGUI          = 0x40000000u, // menu
} WindowStaticFlags_t;

typedef enum ListBoxFeeder_t {
    FEEDER_HEADS = 0x00,         /* model heads. */
    FEEDER_MAPS = 0x01,          /* text maps based on game type. */
    FEEDER_SERVERS = 0x02,       /* servers. */
    FEEDER_CLAN_MEMBERS = 0x03,  /* clan names. */
    FEEDER_ALLMAPS = 0x04,       /* all maps available, in graphic format. */
    FEEDER_REDTEAM_LIST = 0x05,  /* red team members. */
    FEEDER_BLUETEAM_LIST = 0x06, /* blue team members. */
    FEEDER_PLAYER_LIST = 0x07,   /* players. */
    FEEDER_TEAM_LIST = 0x08,     /* team members for team voting. */
    FEEDER_MODS = 0x09,          /* team members for team voting. */
    FEEDER_DEMOS = 0x0a,         /* team members for team voting. */
    FEEDER_SCOREBOARD = 0x0b,    /* team members for team voting. */
    FEEDER_Q3HEADS = 0x0c,       /* model heads. */
    FEEDER_SERVERSTATUS = 0x0d,  /* server status. */
    FEEDER_FINDPLAYER = 0x0e,    /* find player. */
    FEEDER_CINEMATICS = 0x0f,    /* cinematics. */
    FEEDER_SAVEGAMES = 0x10,     /* savegames. */
    FEEDER_PICKSPAWN = 0x11,
    FEEDER_LOBBY_MEMBERS = 0x12,       /* list of players in your party. */
    FEEDER_LOBBY_MEMBERS_TALK = 0x13,  /* icon for whether they are speaking or not. */
    FEEDER_MUTELIST = 0x14,            /* list of musted players. */
    FEEDER_PLAYERSTALKING = 0x15,      /* list of players who are currently talking. */
    FEEDER_SPLITSCREENPLAYERS = 0x16,  /* list of all players who are playing splitscreen. */
    FEEDER_LOBBY_MEMBERS_READY = 0x17, /* icon for whether they are ready or not. */
    FEEDER_PLAYER_PROFILES = 0x18,     /* player profiles. */
    FEEDER_PARTY_MEMBERS = 0x19,       /* list of players in your party. */
    FEEDER_PARTY_MEMBERS_TALK = 0x1a,  /* icon for whether they are speaking or not. */
    FEEDER_PARTY_MEMBERS_READY = 0x1b, /* icon for whether they are ready or not. */
    FEEDER_PLAYLISTS = 0x1c,           /* list of all playlists. */
    FEEDER_GAMEMODES = 0x1d,           /* list of all game type modes, including any player custom modes. */
    FEEDER_LEADERBOARD = 0x1e,         /* list of rows for a leaderboard. */
    FEEDER_MYTEAM_MEMBERS = 0x20,      /* list of marine team members. */
    FEEDER_MYTEAM_MEMBERS_TALK = 0x21, /* icon for whether they are speaking. */
    FEEDER_ENEMY_MEMBERS = 0x22,       /* list of opfor team members. */
    FEEDER_ENEMY_MEMBERS_TALK = 0x23,  /* icon for whether they are speaking. */
    FEEDER_LOBBY_MEMBERS_STAT = 0x24,  /* last round stats for lobby members. */
    FEEDER_MYTEAM_MEMBERS_STAT = 0x25, /* last round stats for marine team members. */
    FEEDER_ENEMY_MEMBERS_STAT = 0x26,  /* last round stats for opfor team members. */
    FEEDER_ONLINEFRIENDS = 0x27,       /* list of your online friends. */
    FEEDER_LOBBY_MEMBERS_RANK = 0x28,  /* rank icon. */
    FEEDER_PARTY_MEMBERS_RANK = 0x29,  /* rank icon. */
    FEEDER_ENEMY_MEMBERS_RANK = 0x30,  /* rank icon. */
    FEEDER_MYTEAM_MEMBERS_RANK = 0x31  /* rank icon. */
} ListBoxFeeder_t;

typedef enum ItemFontType_t {
    UI_FONT_DEFAULT = 0, /* Auto-choose betwen big/reg/small */
    UI_FONT_NORMAL,
    UI_FONT_BIG,
    UI_FONT_SMALL,
    UI_FONT_BOLD,
    UI_FONT_CONSOLE,
    UI_FONT_OBJECTIVE
} ItemFontType_t;

typedef enum OwnerdrawType_t {
    CG_OWNERDRAW_BASE = 1,
    CG_PLAYER_AMMO_VALUE = 5,
    CG_PLAYER_AMMO_BACKDROP = 6,
    CG_PLAYER_STANCE = 20,
    CG_SPECTATORS = 60,
    CG_HOLD_BREATH_HINT = 71,
    CG_CURSORHINT = 72,
    CG_PLAYER_POWERUP = 73,
    CG_PLAYER_HOLDABLE = 74,
    CG_PLAYER_INVENTORY = 75,
    CG_CURSORHINT_STATUS = 78, // like 'health' bar when pointing at a func_explosive
    CG_PLAYER_BAR_HEALTH = 79,
    CG_MANTLE_HINT = 80,
    CG_PLAYER_WEAPON_NAME = 81,
    CG_PLAYER_WEAPON_NAME_BACK = 82,
    CG_CENTER_MESSAGE = 90, // for things like "You were killed by ..."
    CG_TANK_BODY_DIR = 95,
    CG_TANK_BARREL_DIR = 96,
    CG_DEADQUOTE = 97,
    CG_PLAYER_BAR_HEALTH_BACK = 98,
    CG_MISSION_OBJECTIVE_HEADER = 99,
    CG_MISSION_OBJECTIVE_LIST = 100,
    CG_MISSION_OBJECTIVE_BACKDROP = 101,
    CG_PAUSED_MENU_LINE = 102,
    CG_OFFHAND_WEAPON_ICON_FRAG = 103,
    CG_OFFHAND_WEAPON_ICON_SMOKEFLASH = 104,
    CG_OFFHAND_WEAPON_AMMO_FRAG = 105,
    CG_OFFHAND_WEAPON_AMMO_SMOKEFLASH = 106,
    CG_OFFHAND_WEAPON_NAME_FRAG = 107,
    CG_OFFHAND_WEAPON_NAME_SMOKEFLASH = 108,
    CG_OFFHAND_WEAPON_SELECT_FRAG = 109,
    CG_OFFHAND_WEAPON_SELECT_SMOKEFLASH = 110,
    CG_SAVING = 111,
    CG_PLAYER_LOW_HEALTH_OVERLAY = 112,
    CG_INVALID_CMD_HINT = 113,
    CG_PLAYER_SPRINT_METER = 114,
    CG_PLAYER_SPRINT_BACK = 115,
    CG_PLAYER_WEAPON_BACKGROUND = 116,
    CG_PLAYER_WEAPON_AMMO_CLIP_GRAPHIC = 117,
    CG_PLAYER_WEAPON_PRIMARY_ICON = 118,
    CG_PLAYER_WEAPON_AMMO_STOCK = 119,
    CG_PLAYER_WEAPON_LOW_AMMO_WARNING = 120,
    CG_PLAYER_COMPASS_TICKERTAPE = 145,
    CG_PLAYER_COMPASS_TICKERTAPE_NO_OBJ = 146,
    CG_PLAYER_COMPASS_PLAYER = 150,
    CG_PLAYER_COMPASS_BACK = 151,
    CG_PLAYER_COMPASS_POINTERS = 152,
    CG_PLAYER_COMPASS_ACTORS = 153,
    CG_PLAYER_COMPASS_TANKS = 154,
    CG_PLAYER_COMPASS_HELICOPTERS = 155,
    CG_PLAYER_COMPASS_PLANES = 156,
    CG_PLAYER_COMPASS_AUTOMOBILES = 157,
    CG_PLAYER_COMPASS_FRIENDS = 158,
    CG_PLAYER_COMPASS_MAP = 159,
    CG_PLAYER_COMPASS_NORTHCOORD = 160,
    CG_PLAYER_COMPASS_EASTCOORD = 161,
    CG_PLAYER_COMPASS_NCOORD_SCROLL = 162,
    CG_PLAYER_COMPASS_ECOORD_SCROLL = 163,
    CG_PLAYER_COMPASS_GOALDISTANCE = 164,
    CG_PLAYER_ACTIONSLOT_DPAD = 165,
    CG_PLAYER_ACTIONSLOT_1 = 166,
    CG_PLAYER_ACTIONSLOT_2 = 167,
    CG_PLAYER_ACTIONSLOT_3 = 168,
    CG_PLAYER_ACTIONSLOT_4 = 169,
    CG_PLAYER_COMPASS_ENEMIES = 170,
    CG_PLAYER_FULLMAP_BACK = 180,
    CG_PLAYER_FULLMAP_MAP = 181,
    CG_PLAYER_FULLMAP_POINTERS = 182,
    CG_PLAYER_FULLMAP_PLAYER = 183,
    CG_PLAYER_FULLMAP_ACTORS = 184,
    CG_PLAYER_FULLMAP_FRIENDS = 185,
    CG_PLAYER_FULLMAP_LOCATION_SELECTOR = 186,
    CG_PLAYER_FULLMAP_BORDER = 187,
    CG_PLAYER_FULLMAP_ENEMIES = 188,
    CG_VEHICLE_RETICLE = 190,
    CG_HUD_TARGETS_VEHICLE = 191,
    CG_HUD_TARGETS_JAVELIN = 192,
    CG_TALKER1 = 193,
    CG_TALKER2 = 194,
    CG_TALKER3 = 195,
    CG_TALKER4 = 196,
    UI_OWNERDRAW_BASE = 200,
    UI_HANDICAP = 200,
    UI_EFFECTS = 201,
    UI_PLAYERMODEL = 202,
    UI_GAMETYPE = 205,
    UI_SKILL = 207,
    UI_NETSOURCE = 220,
    UI_NETFILTER = 222,
    UI_VOTE_KICK = 238,
    UI_NETGAMETYPE = 245,
    UI_SERVERREFRESHDATE = 247,
    UI_SERVERMOTD = 248,
    UI_GLINFO = 249,
    UI_KEYBINDSTATUS = 250,
    UI_JOINGAMETYPE = 253,
    UI_MAPPREVIEW = 254,
    UI_MENUMODEL = 257,
    UI_SAVEGAME_SHOT = 258,
    UI_SAVEGAMENAME = 262,
    UI_SAVEGAMEINFO = 263,
    UI_LOADPROFILING = 264,
    UI_RECORDLEVEL = 265,
    UI_AMITALKING = 266,
    UI_TALKER1 = 267,
    UI_TALKER2 = 268,
    UI_TALKER3 = 269,
    UI_TALKER4 = 270,
    UI_PARTYSTATUS = 271,
    UI_LOGGEDINUSER = 272,
    UI_RESERVEDSLOTS = 273,
    UI_PLAYLISTNAME = 274,
    UI_PLAYLISTDESCRIPTION = 275,
    UI_USERNAME = 276,
    UI_CINEMATIC = 277
} OwnerdrawType_t;

typedef enum RectAlignHorizontal_t {
    HORIZONTAL_ALIGN_SUBLEFT = 0,     /* Left edge of a 4:3 screen (safe area not included). */
    HORIZONTAL_ALIGN_LEFT,            /* Left viewable (safe area) edge. */
    HORIZONTAL_ALIGN_CENTER,          /* Center of the screen (reticle). */
    HORIZONTAL_ALIGN_RIGHT,           /* Right viewable (safe area) edge. */
    HORIZONTAL_ALIGN_FULLSCREEN,      /* Disregards safe area. */
    HORIZONTAL_ALIGN_NOSCALE,         /* Uses exact parameters - neither adjusts for safe area nor scales for screen size. */
    HORIZONTAL_ALIGN_TO640,           /* Scales a real-screen resolution x down into the 0 - 640 range. */
    HORIZONTAL_ALIGN_CENTER_SAFEAREA  /* Center of the safearea. */
} RectAlignHorizontal_t;

typedef enum RectAlignVertical_t {
    VERTICAL_ALIGN_SUBTOP = 0,          /* Top edge of the 4:3 screen (safe area not included). */
    VERTICAL_ALIGN_TOP,             /* Top viewable (safe area) edge. */
    VERTICAL_ALIGN_CENTER,          /* Center of the screen (reticle). */
    VERTICAL_ALIGN_BOTTOM,          /* Bottom viewable (safe area) edge. */
    VERTICAL_ALIGN_FULLSCREEN,      /* Disregards safe area. */
    VERTICAL_ALIGN_NOSCALE,         /* Uses exact parameters - neither adjusts for safe area nor scales for screen size. */
    VERTICAL_ALIGN_TO480,           /* Scales a real-screen resolution y down into the 0 - 480 range. */
    VERTICAL_ALIGN_CENTER_SAFEAREA  /* Center of the save area. */
} RectAlignVertical_t;

typedef enum ItemDefType_t {
    ITEM_TYPE_TEXT = 0,            /* Simple text. */
    ITEM_TYPE_BUTTON,              /* Button, basically text with a border. */
    ITEM_TYPE_RADIOBUTTON,         /* Toggle button, may be grouped. */
    ITEM_TYPE_CHECKBOX,            /* Check box. */
    ITEM_TYPE_EDITFIELD,           /* Editable text, associated with a dvar. */
    ITEM_TYPE_COMBO,               /* Drop down list. */
    ITEM_TYPE_LISTBOX,             /* Scrollable list. */
    ITEM_TYPE_MODEL,               /* Model. */
    ITEM_TYPE_OWNERDRAW,           /* Owner draw, name specs what it is. */
    ITEM_TYPE_NUMERICFIELD,        /* Editable text, associated with a dvar. */
    ITEM_TYPE_SLIDER,              /* Mouse speed, volume, etc.. */
    ITEM_TYPE_YESNO,               /* Yes no dvar setting. */
    ITEM_TYPE_MULTI,               /* Multiple list setting, enumerated. */
    ITEM_TYPE_DVARENUM,            /* Multiple list setting, enumerated from a dvar. */
    ITEM_TYPE_BIND,                /* Bind. */
    ITEM_TYPE_MENUMODEL,           /* Special menu model. */
    ITEM_TYPE_VALIDFILEFIELD,      /* Text must be valid for use in a dos filename. */
    ITEM_TYPE_DECIMALFIELD,        /* Editable text, associated with a dvar, which allows decimal input. */
    ITEM_TYPE_UPREDITFIELD,        /* Editable text, associated with a dvar. */
    ITEM_TYPE_GAME_MESSAGE_WINDOW  /* Game message window. */
} ItemDefType_t;

typedef enum ItemAlign_t {
    ITEM_ALIGN_LEGACY_LEFT = 0, /* Aligns bottom of text to top of containing rectangle. */
    ITEM_ALIGN_LEGACY_CENTER = 1,
    ITEM_ALIGN_LEGACY_RIGHT = 2,
    ITEM_ALIGN_TOP_LEFT = 4, /* Aligns top of text to top of containing rectangle. */
    ITEM_ALIGN_TOP_CENTER = 5,
    ITEM_ALIGN_TOP_RIGHT = 6,
    ITEM_ALIGN_MIDDLE_LEFT = 8, /* Aligns middle of text to middle of containing rectangle. */
    ITEM_ALIGN_MIDDLE_CENTER = 9,
    ITEM_ALIGN_MIDDLE_RIGHT = 10,
    ITEM_ALIGN_BOTTOM_LEFT = 12, /* Aligns bottom of text to bottom of containing rectangle. */
    ITEM_ALIGN_BOTTOM_CENTER = 13,
    ITEM_ALIGN_BOTTOM_RIGHT = 14
} ItemAlign_t;

typedef enum ItemTextStyle_t {
    ITEM_TEXTSTYLE_NORMAL = 0,       /* Normal text. */
    ITEM_TEXTSTYLE_BLINK = 1,        /* Fast blinking. */
    ITEM_TEXTSTYLE_SHADOWED = 3,     /* Drop shadow (need a color for this). */
    ITEM_TEXTSTYLE_SHADOWEDMORE = 6, /* Drop shadow (need a color for this). */
    ITEM_TEXTSTYLE_MONOSPACE = 128
} ItemTextStyle_t;

typedef enum DvarFlag_t
{
    DVAR_FLAG_ENABLEDVAR = 1 << 0,
    DVAR_FLAG_DISABLEDVAR = 1 << 1,
    DVAR_FLAG_SHOWDVAR = 1 << 2,
    DVAR_FLAG_HIDEDVAR = 1 << 3,
    DVAR_FLAG_FOCUSDVAR = 1 << 4
} DvarFlag_t;

typedef struct ColumnInfo_t
{
    int xpos;
    int xwidth;
    int textLen;
    int alignment;
} ColumnInfo_t;

typedef struct ListBoxDef_t
{
    int startPos;    /* Not used at compile time? */
    int endPos;      /* Not used at compile time? */
    int drawPadding; /* Not used at compile time? */
    int cursorPos;   /* Not used at compile time? */
    float elementWidth;
    float elementHeight;
    ListBoxElementType_t elementType; /* Was elementStyle, but it not exist in engine. */
    uint columns_count;               /* Not going to be extracted, but useful. */
    ColumnInfo_t columns[16];
    const char *doubleClick;
    int notSelectable;
    int noScrollBars;
    int usePaging;
    vec4_t selectBorder;
    vec4_t disableColor;
    struct Material *selectIcon;
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
    const char *stringValue[32];
    const char *onDvarString[32];
    float onDvarFloat[32];
    uint count;
    int isStrList; /* 0 means dvarFloatList. 1 means dvarStrList. */
} MultiDef_t;

typedef union ItemDefData_t {
    ListBoxDef_t *listBox;
    EditFieldDef_t *editField;
    MultiDef_t *multi;
    const char *enumDvarName;
    void *data;
} ItemDefData_t;

typedef union OperandInternalDataUnion_t {
    int i;
    float f;
    const char *s;
} OperandInternalDataUnion_t;

typedef enum OperandDataType_t {
    OPERANDTYPE_INTEGER = 0,
    OPERANDTYPE_FLOAT,
    OPERANDTYPE_STRING
} OperandDataType_t;

typedef struct Operand_t
{
    OperandDataType_t type;
    OperandInternalDataUnion_t data;
} Operand_t;

typedef union EntryInternalData_t {
    OperationEnum_t operation;
    Operand_t operand;
} EntryInternalData_t;

typedef enum EntryType_t {
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
    RectAlignHorizontal_t horzAlign;
    RectAlignVertical_t vertAlign;
} RectDef_t;

typedef struct WindowDef_t
{
    const char *name;
    RectDef_t rect;
    RectDef_t rectClient;
    const char *group;
    WindowStyle_t style;
    WindowBorderType_t border;
    OwnerdrawType_t ownerDraw;
    int ownerDrawFlag;
    float borderSize;
    int staticFlags;
    int dynamicFlags;
    int nextTime;
    vec4_t foreColor;
    vec4_t backColor;
    vec4_t borderColor;
    vec4_t outlineColor;
    struct Material *background;
} WindowDef_t;

typedef struct ItemDef_t
{
    WindowDef_t window;
    RectDef_t textRect;
    ItemDefType_t type;
    ItemDefType_t dataType;
    ItemDefAlign_t align;
    ItemFontType_t textFont;
    ItemAlign_t textAlign;
    float textAlignX;
    float textAlignY;
    float textScale;
    ItemTextStyle_t textStyle;
    int gameMsgWindowIndex;
    ItemMSGWindowMode_t gameMsgWindowMode;
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
    const char *onDvar;
    DvarFlag_t dvarFlags;
    struct snd_alias_list_t *focusSound;
    float feeder;
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

extern KeyWord_t g_ItemType[];
extern KeyWord_t g_ItemAlign[];
extern KeyWord_t g_ItemMSGWindowMode[];
extern KeyWord_t g_ItemDefAlign[];
extern KeyWord_t g_ItemFontType[];
extern KeyWord_t g_ItemTextStyle[];

extern KeyWord_t g_WindowBorderType[];
extern KeyWord_t g_WindowStyle[];
extern KeyWord_t g_WindowOwnerdrawType[];

extern KeyWord_t g_ListBoxElementType[];
extern KeyWord_t g_ListBoxFeeder[];

extern KeyWord_t g_RectAlignHorizontal[];
extern KeyWord_t g_RectAlignVertical[];
/* No such kind of asset in ANY default fastfile but I want to left it here. */
/*#define XASSET_TYPE_MENU (21)*/
