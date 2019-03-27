#include "q_shared.h"
#include "scr_vm.h"
#include "cscr_parser.h"
#include "cscr_main.h"
#include "cscr_variable.h"
#include "xassets/rawfile.h"
#include "xassets.h"
#include "qcommon_mem.h"

struct SaveSourceBufferInfo
{
  char *sourceBuf;
  int len;
};


struct SourceLookup
{
  unsigned int sourcePos;
  int type;
};


struct OpcodeLookup
{
  const char *codePos;
  unsigned int sourcePosIndex;
  unsigned int sourcePosCount;
  int profileTime;
  int profileBuiltInTime;
  int profileUsage;
};

struct scrParserGlob_t
{
  struct OpcodeLookup *opcodeLookup;
  unsigned int opcodeLookupMaxLen;
  unsigned int opcodeLookupLen;
  struct SourceLookup *sourcePosLookup;
  unsigned int sourcePosLookupMaxLen;
  unsigned int sourcePosLookupLen;
  unsigned int sourceBufferLookupMaxLen;
  const char *currentCodePos;
  unsigned int currentSourcePosCount;
  struct SaveSourceBufferInfo *saveSourceBufferLookup;
  unsigned int saveSourceBufferLookupLen;
  int delayedSourceIndex;
  int threadStartSourceIndex;
};

scrParserGlob_t gScrParserGlob;
scrParserPub_t gScrParserPub;


extern "C" void __regparm3 Scr_AddSourceBufferInternal(const char *extFilename, const char *codePos, char *sourceBuf, int len, bool doEolFixup, bool archive);


unsigned int Scr_GetFunctionLineNumInternal(const char *buf, unsigned int sourcePos, const char **startLine)
{
  unsigned int lineNum;
  unsigned int functionLine;
  const char *functionStartLine;

  assert(buf != NULL);

  *startLine = buf;
  lineNum = 0;
  functionLine = 0;
  functionStartLine = buf;
  while ( sourcePos )
  {
    if ( !*buf )
    {
      if ( buf[1] == '{' )
      {
        functionLine = lineNum;
        functionStartLine = *startLine;
      }
      *startLine = buf + 1;
      ++lineNum;
    }
    ++buf;
    --sourcePos;
  }
  *startLine = functionStartLine;
  return functionLine;
}


void Scr_PrintSourcePosSummary(conChannel_t channel, const char *filename)
{
  const char *s;

  assert(filename);

  if ( gScrParserGlob.saveSourceBufferLookup )
  {
    s = "(savegame)";
  }
  else
  {
    s = "";
  }
  Com_Printf(channel, "%s%s\t\n", filename, s);
}

void Scr_CopyFormattedLine(char *line, const char *rawLine)
{
  int len;
  int i;

  len = strlen(rawLine);
  if ( len >= 1024 )
  {
    len = 1023;
  }
  for ( i = 0; i < len; ++i )
  {
    if ( rawLine[i] == '\t' )
    {
      line[i] = ' ';
    }
    else
    {
      line[i] = rawLine[i];
    }
  }
  if ( line[len - 1] == '\r' )
  {
    line[len - 1] = 0;
  }
  line[len] = 0;
}

unsigned int Scr_GetFunctionInfo(const char *buf, unsigned int sourcePos, char *line)
{
  const char *startLine;
  unsigned int lineNum;

  lineNum = Scr_GetFunctionLineNumInternal(buf, sourcePos, &startLine);
  Scr_CopyFormattedLine(line, startLine);
  return lineNum;
}

void Scr_PrintFunctionPosSpreadSheet(conChannel_t channel, const char *filename, const char *buf, unsigned int sourcePos)
{
  const char *s;
  unsigned int lineNum;
  char line[1024];
  
  assert(filename);

  lineNum = Scr_GetFunctionInfo(buf, sourcePos, line);
  if ( gScrParserGlob.saveSourceBufferLookup )
  {
    s = "(savegame)";
  }
  else
  {
    s = "";
  }
  Com_Printf(channel, "%s%s\t%d\t%s\n", filename, s, lineNum + 1, line);
}

const char *Scr_PrevCodePosFileName(const char *codePos)
{
  assert(gScrVarPub.developer);
  if ( !codePos )
  {
    return "<frozen thread>";
  }
  if ( codePos == &g_EndPos )
  {
    return "<removed thread>";
  }
  if ( gScrVarPub.programBuffer && Scr_IsInOpcodeMemory(codePos) )
  {
    return gScrParserPub.sourceBufferLookup[Scr_GetSourceBuffer(codePos - 1)].buf;
  }
  return codePos;
}

bool Scr_PrevCodePosFileNameMatches(const char *codePos, const char *fileName)
{
  const char *codePosFileName;

    assert(fileName);
    assert(gScrVarPub.developer);

  codePosFileName = Scr_PrevCodePosFileName(codePos);
  if ( codePosFileName )
  {
    if(Q_stristr(codePosFileName, fileName) != NULL)
    {
        return true;
    }
  }
  return false;
}

OpcodeLookup * Scr_GetPrevSourcePosOpcodeLookup(const char *codePos)
{
  unsigned int low;
  unsigned int middle;
  unsigned int high;

    assert(Scr_IsInOpcodeMemory( codePos ));
    assert(gScrParserGlob.opcodeLookup);
  low = 0;
  high = gScrParserGlob.opcodeLookupLen - 1;
  while ( low <= high )
  {
    middle = (high + low) / 2;
    if ( codePos < gScrParserGlob.opcodeLookup[middle].codePos )
    {
      high = middle - 1;
    }
    else
    {
      low = middle + 1;
      if ( middle + 1 == gScrParserGlob.opcodeLookupLen || codePos < gScrParserGlob.opcodeLookup[low].codePos )
      {
        return &gScrParserGlob.opcodeLookup[middle];
      }
    }
  }
  assert(UNREACHABLE_CODE);
  return 0;
}

unsigned int Scr_GetPrevSourcePos(const char *codePos, unsigned int index)
{
  return gScrParserGlob.sourcePosLookup[index + Scr_GetPrevSourcePosOpcodeLookup(codePos)->sourcePosIndex].sourcePos;
}

const char * Scr_PrevCodePosFunctionName(const char *codePos)
{
  unsigned int bufferIndex;
  const char *startLine;

  assert(gScrVarPub.developer);

  if ( !codePos )
  {
    return "<frozen thread>";
  }
  if ( codePos == &g_EndPos )
  {
    return "<removed thread>";
  }
  if ( !gScrVarPub.programBuffer || !Scr_IsInOpcodeMemory(codePos) )
  {
    return "<unknown>";
  }
  bufferIndex = Scr_GetSourceBuffer(codePos - 1);
  Scr_GetFunctionLineNumInternal(gScrParserPub.sourceBufferLookup[bufferIndex].sourceBuf, Scr_GetPrevSourcePos(codePos - 1, 0), &startLine);
  return startLine;
}

unsigned int Scr_GetLineNumInternal(const char *buf, unsigned int sourcePos, const char **startLine, int *col)
{
  unsigned int lineNum;

  assert(buf != NULL);

  *startLine = buf;
  lineNum = 0;
  while ( sourcePos )
  {
    if ( !*buf )
    {
      *startLine = buf + 1;
      ++lineNum;
    }
    ++buf;
    --sourcePos;
  }
  *col = buf - *startLine;
  return lineNum;
}

unsigned int Scr_GetLineInfo(const char *buf, unsigned int sourcePos, int *col, char *line)
{
  const char *startLine;
  unsigned int lineNum;

  if ( buf )
  {
    lineNum = Scr_GetLineNumInternal(buf, sourcePos, &startLine, col);
  }
  else
  {
    lineNum = 0;
    startLine = "";
    *col = 0;
  }
  Scr_CopyFormattedLine(line, startLine);
  return lineNum;
}

void Scr_PrintSourcePosSpreadSheet(conChannel_t channel, const char *filename, const char *buf, unsigned int sourcePos)
{
  const char *s;
  unsigned int lineNum;
  char line[1024];
  int col;

  assert(filename);

  lineNum = Scr_GetLineInfo(buf, sourcePos, &col, line);
  if ( gScrParserGlob.saveSourceBufferLookup )
  {
    s = "(savegame)";
  }
  else
  {
    s = "";
  }
  Com_Printf(channel, "%s%s\t%d\t%s\t%d\n", filename, s, lineNum + 1, line, col, 0);
}

void Scr_PrintPrevCodePosSpreadSheet(conChannel_t channel, const char *codePos, bool summary, bool functionSummary)
{
  unsigned int bufferIndex;

  assert(gScrVarPub.developer);

  if ( codePos )
  {
    if ( codePos == &g_EndPos )
    {
      Com_Printf(channel, "<removed thread>\n");
    }
    else if ( gScrVarPub.programBuffer && Scr_IsInOpcodeMemory(codePos) )
    {
      bufferIndex = Scr_GetSourceBuffer(codePos - 1);
      if ( summary )
      {
        Scr_PrintSourcePosSummary(channel, gScrParserPub.sourceBufferLookup[bufferIndex].buf);
      }
      else if ( functionSummary )
      {
        Scr_PrintFunctionPosSpreadSheet(channel, gScrParserPub.sourceBufferLookup[bufferIndex].buf, gScrParserPub.sourceBufferLookup[bufferIndex].sourceBuf, Scr_GetPrevSourcePos(codePos - 1, 0));
      }
      else
      {
        Scr_PrintSourcePosSpreadSheet(channel, gScrParserPub.sourceBufferLookup[bufferIndex].buf, gScrParserPub.sourceBufferLookup[bufferIndex].sourceBuf, Scr_GetPrevSourcePos(codePos - 1, 0));
      }
    }
    else
    {
      Com_Printf(channel, "%s\n", codePos);
    }
  }
  else
  {
    Com_Printf(channel, "<frozen thread>\n");
  }
}

char *__cdecl Scr_ReadFile_FastFile(const char *filename, const char *extFilename, const char *codePos, bool archive)
{
  RawFile *rawfile;
  int len;
  const char *sourceBuf;

  if ( useFastFile->boolean )
  {
    rawfile = DB_FindXAssetHeader(ASSET_TYPE_RAWFILE, extFilename, true, 100).rawfile;
    if ( rawfile )
    {
      sourceBuf = rawfile->buffer;
      len = strlen(sourceBuf);
      Scr_AddSourceBufferInternal(extFilename, codePos, (char *)sourceBuf, len, 1, archive);
      return (char *)sourceBuf;
    }
  }
  Scr_AddSourceBufferInternal(extFilename, codePos, 0, -1, 1, archive);
  return NULL;
}


char *__cdecl Scr_ReadFile_LoadObj(const char *filename, const char *extFilename, const char *codePos, bool archive)
{
  int len;
  int f;
  char *sourceBuf;

  len = FS_FOpenFileByMode(extFilename, &f, FS_READ);
  if ( len >= 0 )
  {
/*
    if ( !fs_gameDirVar && fs_gameDirVar->string[0] )
    {
      g_loadedImpureScript = 1;
    }
*/
    sourceBuf = (char*)Hunk_AllocateTempMemoryHigh(len + 1);
    FS_Read(sourceBuf, len, f);
    sourceBuf[len] = 0;
    FS_FCloseFile(f);
    Scr_AddSourceBufferInternal(extFilename, codePos, sourceBuf, len, 1, archive);
    return sourceBuf;
  }
  Scr_AddSourceBufferInternal(extFilename, codePos, 0, -1, 1, archive);
  return NULL;
}



char *__cdecl Scr_ReadFile(const char *filename, const char *extFilename, const char *codePos, bool archive)
{
  int file;

//  if ( fs_gameDirVar && fs_gameDirVar->string[0])
  {
    if ( FS_FOpenFileRead(extFilename, &file) < 0 )
    {
      return Scr_ReadFile_FastFile(filename, extFilename, codePos, archive);
    }
    FS_FCloseFile(file);
    return Scr_ReadFile_LoadObj(filename, extFilename, codePos, archive);
  }
/* 
Impure script locked mode here:
  if ( useFastFile->boolean )
  {
    return Scr_ReadFile_FastFile(filename, extFilename, codePos, archive);
  }
  return Scr_ReadFile_LoadObj(filename, extFilename, codePos, archive);
*/    
}


extern "C"{


void Scr_PrintSourcePos(conChannel_t channel, const char *filename, const char *buf, unsigned int sourcePos)
{
  const char *s; 
  unsigned int lineNum;
  char line[1024];
  int i;
  int col;

  lineNum = Scr_GetLineInfo(buf, sourcePos, &col, line);
  if ( gScrParserGlob.saveSourceBufferLookup )
  {
    s = " (savegame)";
  }
  else
  {
    s = "";
  }
  Com_Printf(channel, "(file '%s'%s, line %d)\n", filename, s, lineNum + 1);
  Com_Printf(channel, "%s\n", line, 0);
  for ( i = 0; i < col; ++i )
  {
    Com_Printf(channel, " ");
  }
  Com_Printf(channel, "*\n");
}


unsigned int __cdecl Scr_GetSourceBuffer(const char *codePos)
{
  unsigned int bufferIndex;
  
    assert(Scr_IsInOpcodeMemory(codePos ));
    assert(gScrParserPub.sourceBufferLookupLen > 0);

  for ( bufferIndex = gScrParserPub.sourceBufferLookupLen - 1;
        bufferIndex && (!gScrParserPub.sourceBufferLookup[bufferIndex].codePos || gScrParserPub.sourceBufferLookup[bufferIndex].codePos > codePos);
        --bufferIndex );
  return bufferIndex;
}

void __cdecl Scr_PrintPrevCodePos(conChannel_t channel, const char *codePos, unsigned int index)
{
  unsigned int bufferIndex;


  if ( !codePos )
  {
    Com_Printf(channel, "<frozen thread>\n");
    return;
  }
  if ( codePos == &g_EndPos )
  {
    Com_Printf(channel, "<removed thread>\n");
  }
  else
  {
    if ( gScrVarPub.developer )
    {
      if ( gScrVarPub.programBuffer && Scr_IsInOpcodeMemory(codePos) )
      {
        bufferIndex = Scr_GetSourceBuffer(codePos - 1);
        Scr_PrintSourcePos(channel, gScrParserPub.sourceBufferLookup[bufferIndex].buf, gScrParserPub.sourceBufferLookup[bufferIndex].sourceBuf, Scr_GetPrevSourcePos(codePos - 1, index));
        return;
      }
    }
    else if ( Scr_IsInOpcodeMemory(codePos - 1) )
    {
      Com_Printf(channel, "@ %d\n", codePos - gScrVarPub.programBuffer);
      return;
    }
    Com_Printf(channel, "%s\n\n", codePos);
  }
}


char *__cdecl Scr_AddSourceBuffer( const char *filename, const char *extFilename, const char *codePos, bool archive)
{
  const char *source;
  char c;
  SaveSourceBufferInfo *saveSourceBuffer;
  signed int len;
  char *dest;
  int i;
  char *sourceBuf;

  if ( !archive || !gScrParserGlob.saveSourceBufferLookup )
  {
    return Scr_ReadFile(filename, extFilename, codePos, archive);
  }
  assert(gScrParserGlob.saveSourceBufferLookupLen > 0);
  --gScrParserGlob.saveSourceBufferLookupLen;
  saveSourceBuffer = &gScrParserGlob.saveSourceBufferLookup[gScrParserGlob.saveSourceBufferLookupLen];
  len = saveSourceBuffer->len;

  assert(len >= -1);
  if ( len >= 0 )
  {
    sourceBuf = (char*)Hunk_AllocateTempMemoryHigh(len + 1);
    source = saveSourceBuffer->sourceBuf;
    dest = sourceBuf;
    for ( i = 0; i < len; ++i )
    {
      c = *source++;
      if ( c )
      {
        *dest++ = c;
      }
      else
      {
        *dest++ = '\n';
      }
    }
    *dest = 0;
    if ( saveSourceBuffer->sourceBuf )
    {
      Hunk_FreeDebugMem(gScrParserGlob.saveSourceBufferLookup[gScrParserGlob.saveSourceBufferLookupLen].sourceBuf);
    }
  }
  else
  {
    sourceBuf = 0;
  }
  Scr_AddSourceBufferInternal(extFilename, codePos, sourceBuf, len, 1, archive);
  return sourceBuf;
}


};

void __cdecl Scr_GetTextSourcePos(const char *buf, const char *codePos, char *line)
{
  unsigned int bufferIndex;
  int col;

  if ( gScrVarPub.developer && codePos && codePos != &g_EndPos && gScrVarPub.programBuffer && Scr_IsInOpcodeMemory(codePos) )
  {
    bufferIndex = Scr_GetSourceBuffer(codePos - 1);
    Scr_GetLineInfo(gScrParserPub.sourceBufferLookup[bufferIndex].sourceBuf, Scr_GetPrevSourcePos(codePos - 1, 0), &col, line);
  }
  else
  {
    *line = 0;
  }
}

void CompileError2(const char *codePos, const char *msg, ...)
{
  char line[1024];
  char text[1024];
  va_list va;

  va_start(va, msg);
  assert(!gScrVarPub.evaluate);

  assert(Scr_IsInOpcodeMemory( codePos ));

//  Monkey_GrabComPrints(1);
//  Scr_IgnoreLeaks( );
  Com_PrintError(CON_CHANNEL_PARSERSCRIPT, "\n");
  Com_PrintError(CON_CHANNEL_PARSERSCRIPT, "******* %s script compile error *******\n", "Server");
  
  vsnprintf(text, sizeof(text), msg, va);
  Com_PrintError(CON_CHANNEL_PARSERSCRIPT, "%s: ", text);
  Scr_PrintPrevCodePos(CON_CHANNEL_PARSERSCRIPT, codePos, 0);
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "************************************\n");
//  Monkey_Error(0);
  Scr_GetTextSourcePos(gScrParserPub.sourceBuf, codePos, line);
  Com_Error(ERR_DROP, "%s script compile error\n%s\n%s\n(see console for details)\n", "Server", text, line);
}



