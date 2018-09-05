extern char g_EndPos;

bool Scr_PrevCodePosFileNameMatches(const char *codePos, const char *fileName);
const char * Scr_PrevCodePosFunctionName(const char *codePos);
const char * Scr_PrevCodePosFileName(const char *codePos);
void Scr_PrintPrevCodePosSpreadSheet(conChannel_t channel, const char *codePos, bool summary, bool functionSummary);
void CompileError2(const char *codePos, const char *msg, ...);

#ifdef __cplusplus
extern "C"{
#endif

unsigned int __cdecl Scr_GetSourceBuffer(const char *codePos);
void __cdecl Scr_PrintPrevCodePos(conChannel_t channel, const char *codePos, unsigned int index);

#ifdef __cplusplus
};
#endif