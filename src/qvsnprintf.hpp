#pragma once
#include <cstdarg>
#include <cstdio>


int Q_vsnprintf(char *str, size_t size, const char *format, va_list args);
