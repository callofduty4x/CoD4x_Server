#include <stdio.h>
#include <stdlib.h>
#include "q_shared.h"

typedef struct
{
  FILE *yy_input_file;
  byte* yy_ch_buf;
  byte* yy_buf_pos;
  int yy_buf_size;
  int yy_n_chars;
  int yy_is_our_buffer;
  int yy_is_interactive;
  int yy_at_bol;
  int yy_fill_buffer;
  int yy_buffer_status;
}yy_buffer_state;

yy_buffer_state* __cdecl yy_create_buffer(FILE *file, int bufferSize)
{
  yy_buffer_state *yybufState;

  yybufState = (yy_buffer_state *)malloc(sizeof(yy_buffer_state));
  if ( yybufState == NULL)
  {
    Com_Error(ERR_FATAL,"out of dynamic memory in yy_create_buffer()");
    return NULL;
  }

  yybufState->yy_buf_size = bufferSize;

  yybufState->yy_ch_buf = malloc(bufferSize + 2);

  if (yybufState->yy_ch_buf == NULL)
  {
    Com_Error(ERR_FATAL,"out of dynamic memory in yy_create_buffer()");
    return NULL;
  }

  yybufState->yy_is_our_buffer = 1;
  yybufState->yy_n_chars = 0;
  yybufState->yy_ch_buf[0] = 0;
  yybufState->yy_ch_buf[1] = 0;
  yybufState->yy_buf_pos = yybufState->yy_ch_buf;
  yybufState->yy_at_bol = 1;
  yybufState->yy_buffer_status = 0;

  yybufState->yy_input_file = file;
  yybufState->yy_fill_buffer = 1;
  yybufState->yy_is_interactive = 0;
  return yybufState;
}

