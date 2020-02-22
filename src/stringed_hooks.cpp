#include "stringed_hooks.hpp"


extern "C"
{
    qboolean g_currentAsian;
    byte _ZZ23SEH_SafeTranslateStringPKcE13szErrorString[0x400];
    byte _ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE9szStrings[0x2800];
    byte _ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE11iCurrString[0x60];
    cvar_t* loc_language;
    cvar_t* loc_forceEnglish;
    cvar_t* loc_translate;

    languageInfo_t g_languages[15] =
    {
        {"english", 0} , { "french", 0}, {"german", 0}, {"italian", 0},
        {"spanish", 0}, {"british", 0}, {"russian", 0}, {"polish", 0},
        {"korean", 0}, {"taiwanese", 0}, {"japanese", 0}, {"chinese", 0},
        {"thai", 0}, {"leet", 0}, {"czech", 0}
    };
}
