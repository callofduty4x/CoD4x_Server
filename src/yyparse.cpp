#include "yyparse.hpp"

#include <cstdio>
#include <cstdlib>

#include "qshared.hpp"

extern "C"
{
    yy_buffer_state* CCDECL yy_create_buffer(FILE *file, int bufferSize)
    {
        yy_buffer_state *yybufState = (yy_buffer_state *)malloc(sizeof(yy_buffer_state));
        if (!yybufState)
        {
            Com_Error(ERR_FATAL, "out of dynamic memory in yy_create_buffer()");
            return nullptr;
        }

        yybufState->yy_buf_size = bufferSize;
        yybufState->yy_ch_buf = reinterpret_cast<byte*>(malloc(bufferSize + 2));
        if (!yybufState->yy_ch_buf)
        {
            Com_Error(ERR_FATAL, "out of dynamic memory in yy_create_buffer()");
            return nullptr;
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


    FILE* CCDECL yy_stdin()
    {
        return stdin;
    }


    FILE* CCDECL yy_stdout()
    {
        return stdout;
    }
} // extern "C"
