struct GameWorldMp
{
  const char *name;
};


struct ComWorld
{
  const char *name;
  int isInUse;
  unsigned int primaryLightCount;
  struct ComPrimaryLight *primaryLights;
};


extern struct ComWorld comWorld;
extern struct GameWorldMp gameWorldMp;