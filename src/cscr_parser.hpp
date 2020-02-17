#pragma once
#include "qcommon_io.hpp"


struct SaveSourceBufferInfo
{
    char* sourceBuf;
    int len;
};


struct SourceLookup
{
    unsigned int sourcePos;
    int type;
};


struct OpcodeLookup
{
    const char* codePos;
    unsigned int sourcePosIndex;
    unsigned int sourcePosCount;
    int profileTime;
    int profileBuiltInTime;
    int profileUsage;
};


struct scrParserGlob_t
{
    OpcodeLookup* opcodeLookup;
    unsigned int opcodeLookupMaxLen;
    unsigned int opcodeLookupLen;
    SourceLookup* sourcePosLookup;
    unsigned int sourcePosLookupMaxLen;
    unsigned int sourcePosLookupLen;
    unsigned int sourceBufferLookupMaxLen;
    const char* currentCodePos;
    unsigned int currentSourcePosCount;
    SaveSourceBufferInfo* saveSourceBufferLookup;
    unsigned int saveSourceBufferLookupLen;
    int delayedSourceIndex;
    int threadStartSourceIndex;
};


bool Scr_PrevCodePosFileNameMatches(const char *codePos, const char *fileName);
const char * Scr_PrevCodePosFunctionName(const char *codePos);
const char * Scr_PrevCodePosFileName(const char *codePos);
void Scr_PrintPrevCodePosSpreadSheet(conChannel_t channel, const char *codePos, bool summary, bool functionSummary);
void CompileError2(const char *codePos, const char *msg, ...);

extern "C"
{
    extern scrParserGlob_t gScrParserGlob;
    extern scrParserPub_t gScrParserPub;

    unsigned int CCDECL Scr_GetSourceBuffer(const char *codePos);
    void CCDECL Scr_PrintPrevCodePos(conChannel_t channel, const char *codePos, unsigned int index);
    void CCDECL Scr_AddSourceBufferInternal(const char* extFilename, const char* codePos, char* sourceBuf, int len, bool doEolFixup, bool archive);
};
