#pragma once

#define XASSET_TYPE_RAWFILE (31)

struct RawFile
{
  const char *name;
  int len;
  const char *buffer;
};
