#ifdef __cplusplus
extern "C"{
#endif

struct XAnim_s *__cdecl Scr_GetAnims(unsigned int index);
const char *__cdecl XAnimGetAnimDebugName(XAnim_s *anims, unsigned int animIndex); //Maybe wrong place

#ifdef __cplusplus
};
#endif