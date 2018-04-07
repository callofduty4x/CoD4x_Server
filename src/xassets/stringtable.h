#pragma once

typedef unsigned int uint;


struct StringTable
{
  const char *name;
  int columnCount;
  int rowCount;
  const char **values; /* Pointer to 2D array: a[i][j] == data[i*columns + j] */
};

