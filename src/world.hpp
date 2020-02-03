#pragma once

struct GameWorldMp
{
  const char *name;
  char _padding[28];
};


struct ComWorld
{
  const char *name;
  int isInUse;
  unsigned int primaryLightCount;
  struct ComPrimaryLight *primaryLights;
  char _padding[112];
};

extern "C"
{
    extern ComWorld comWorld;
    extern GameWorldMp gameWorldMp;
}
