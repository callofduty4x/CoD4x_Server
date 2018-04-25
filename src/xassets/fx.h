


typedef struct FxEffectDef
{
  const char *name;
  int flags;
  int totalSize;
  int msecLoopingLife;
  int elemDefCountLooping;
  int elemDefCountOneShot;
  int elemDefCountEmission;
  struct FxElemDef *elemDefs;
} FxEffectDef;


struct FxImpactTable
{
  const char *name;
  struct FxImpactEntry *table;
};
