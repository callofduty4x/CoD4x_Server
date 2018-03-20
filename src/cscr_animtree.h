
struct scr_animtree_t
{
  struct XAnim_s *anims;
};

struct scrAnimPub_t
{
  unsigned int animtrees;
  unsigned int animtree_node;
  unsigned int animTreeNames;
  struct scr_animtree_t xanim_lookup[2][128];
  unsigned int xanim_num[2];
  unsigned int animTreeIndex;
  bool animtree_loading;
};


extern struct scrAnimPub_t gScrAnimPub;

#ifdef __cplusplus
extern "C"{
#endif

struct XAnim_s *__cdecl Scr_GetAnims(unsigned int index);
const char *__cdecl XAnimGetAnimDebugName(struct XAnim_s *anims, unsigned int animIndex); //Maybe wrong place

#ifdef __cplusplus
};
#endif


