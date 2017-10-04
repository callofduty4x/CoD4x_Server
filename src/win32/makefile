MODULE=os_win32
CFLAGS=-c
DEFINES=
LFLAGS=-shared
#
CC=gcc
AR=ar
CPP=g++
SOURCES=$(wildcard *.c)
OBJECTS=$(patsubst %.c,obj/%.o,$(SOURCES))
CFLAGS+=$(addprefix -D,$(DEFINES))
LIB=../../lib/libcod4x_$(MODULE).a
##
ifeq ($(OS),Windows_NT)
RM=del obj\\*.o $(subst /,\\,$(LIB))
else
RM=rm -r obj/*.o $(LIB)
endif
###
all: $(LIB)
	@echo Done

$(LIB): $(OBJECTS)
	@echo  $(AR) $(notdir $@)
	@$(AR) rcs -o $@ $^ win_cod4.res

obj/%.o: %.c
	@echo  $(CC) $(notdir $@)
	@$(CC) $(CFLAGS) -o $@ $<

clean:
	@$(RM)
	@echo Done