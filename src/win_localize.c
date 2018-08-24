#include "win_localize.h"
#include "filesystem.h"

#define LANGUAGE_BUF_SIZE 4096

static char language_buffer[LANGUAGE_BUF_SIZE];

typedef struct
{
  char *language;
  char *strings;
}loclanguage_t;

loclanguage_t localization;

void __cdecl Win_InitLocalization()
{
  int size;
  FILE *fp;
  int i;
  int lang;

  localization.language = 0;
  localization.strings = 0;
  fp = FS_FileOpenReadText("localization.txt");
  if ( fp )
  {
    size = FS_FileGetFileSize(fp);
    assert(size < LANGUAGE_BUF_SIZE);
    localization.language = language_buffer;
    size = FS_FileRead(language_buffer, size, fp);
    FS_FileClose(fp);
    if ( size )
    {
      localization.language[size] = 0;
      lang = 0;
      for ( i = 0; localization.language[i]; ++i )
      {
        if ( localization.language[i] == 10 )
        {
          localization.language[i] = 0;
          localization.strings = &localization.language[i + 1];
          SEH_GetLanguageIndexForName(localization.language, &lang);
          return;
        }
      }
    }
    else
    {
      localization.language = 0;
    }
  }else{
    const char* lang = SEH_GetLanguageName(SEH_GetCurrentLanguage());
    Q_strncpyz(language_buffer, lang, sizeof(language_buffer));
    localization.language = language_buffer;
  }
}

void __cdecl Win_ShutdownLocalization()
{
  localization.language = 0;
  localization.strings = 0;
}

char *__cdecl Win_GetLanguage()
{
  assert(localization.language);
  return localization.language;
}

char *__cdecl Win_CopyLocalizationString(const char *string)
{
  
  return va("%s", string);
}

char *__cdecl Win_LocalizeRef(const char *ref)
{
  const char *strings;
  int useRef;
  parseInfo_t *token;

  Com_BeginParseSession("localization");
  strings = localization.strings;
  while ( 1 )
  {
    token = Com_Parse(&strings);
    if ( !token->token[0] )
    {
      Com_EndParseSession();
      assertx(1 == 0, "unlocalized: %s", ref);
      return Win_CopyLocalizationString(ref);
    }
    useRef = strcmp(token->token, ref) == 0;
    token = Com_Parse(&strings);
    if ( !token->token[0] )
    {
      break;
    }
    if ( useRef )
    {
      Com_EndParseSession();
      return Win_CopyLocalizationString(token->token);
    }
  }
  Com_EndParseSession();

  assertx(1 == 0, "missing value: %s", ref);
  return Win_CopyLocalizationString(ref);
}

