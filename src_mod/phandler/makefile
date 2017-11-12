# Mandatory input variables:
# DEBUG: 0 or 1
rwildcard=$(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))

CC := g++
CFLAGS := -m32 -Wall -march=native -std=c++11 -I.. -I../core

ifeq ($(DEBUG), 1)
CFLAGS += -g3 -O0
else
CFLAGS += -O2
endif

OBJDIR := obj
ALLOBJ =$(patsubst %,$(OBJDIR)/%.o,$(call rwildcard, ,*.c) $(call rwildcard, ,*.cpp))

# if were running on Windows build for Windows
ifeq ($(OS),Windows_NT)
WINDOWS_BUILD = 1
endif

makedir = @mkdir -p $(dir $1)
ifdef WINDOWS_BUILD
makedir = @if not exist "$(subst /,\\,$(dir $1))" mkdir "$(subst /,\\,$(dir $1))"
endif

.PHONY: all clean

all: $(ALLOBJ)

clean:
ifdef WINDOWS_BUILD
	@del /S $(OBJDIR)\\*.o
else
	@rm -f $(OBJDIR)/*.o
endif

$(OBJDIR)/%.c.o: %.c
	@echo   $(CC)  $<
	@$(call makedir,$@)
	@$(CC) $(CFLAGS) -o $@ -c $<

$(OBJDIR)/%.cpp.o: %.cpp
	@echo   $(CC)  $<
	@$(call makedir,$@)
	@$(CC) $(CFLAGS) -o $@ -c $<
