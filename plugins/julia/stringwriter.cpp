#include <stdlib.h>
#include <stdarg.h>
#include <stdint.h>

#include "q_shared.h"
#include "stringwriter.h"

StringWriter::StringWriter(char* buffer, int buffersize)
{
	stringwriterbuffer = buffer;
	stringwriterbuffersize = buffersize;
	stringwriterbufferpos = 0;
}

void StringWriter::Append(const char* data)
{
	int len = strlen(data);
	if(len + 1> stringwriterbuffersize - stringwriterbufferpos)
	{
		len = stringwriterbuffersize - stringwriterbufferpos;
		len -= 1;
	}
	memcpy(stringwriterbuffer + stringwriterbufferpos, data, len);
	stringwriterbufferpos += len;
	stringwriterbuffer[stringwriterbufferpos] = 0;
}

void StringWriter::Printf(const char* fmt, ...)
{
	char data[4096];
	va_list va;
	
	va_start(va, fmt);
	Q_vsnprintf (data, sizeof(data), fmt, va);
	va_end(va);
	
	int len = strlen(data);
	if(len +1 > stringwriterbuffersize - stringwriterbufferpos)
	{
		len = stringwriterbuffersize - stringwriterbufferpos;
		len -= 1;
	}
	memcpy(stringwriterbuffer + stringwriterbufferpos, data, len);
	stringwriterbufferpos += len;
	stringwriterbuffer[stringwriterbufferpos] = 0;
}


char* StringWriter::GetBuffer( )
{
    return stringwriterbuffer;
}


void StringWriter::SetBufferPos(int pos)
{
    if(pos < 0 || pos >= stringwriterbuffersize)
    {
        return;
    }
    stringwriterbufferpos = pos;
}

void StringWriter::IncBufferPos(int inc)
{
    int pos = stringwriterbufferpos + inc;

    if(pos < 0 || pos >= stringwriterbuffersize)
    {
        return;
    }
    stringwriterbufferpos = pos;
}


int StringWriter::GetBufferPos()
{
    return stringwriterbufferpos;
}

