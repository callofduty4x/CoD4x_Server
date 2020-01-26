#pragma once
#include <cstdio>
#include "qshared.hpp"


struct yy_buffer_state
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
};


extern "C"
{
    FILE* __cdecl yy_stdin();
    FILE* __cdecl yy_stdout();
    yy_buffer_state* __cdecl yy_create_buffer(FILE *file, int bufferSize);
}
