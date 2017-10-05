###############################################################################
# Common project properties.
MODULE=os_win32
CFLAGS=-c
DEFINES=
LFLAGS=-shared
ADDITIONAL_OBJ=win_cod4.res
###############################################################################
# Arguments shortcut.
ARGS= MODULE="$(MODULE)" CFLAGS="$(CFLAGS)" DEFINES="$(DEFINES)" LFLAGS="$(LFLAGS)" ADDITIONAL_OBJ="$(ADDITIONAL_OBJ)"
###############################################################################
# Rules.
all:
	@$(MAKE) -s -f../../lib.makefile $(ARGS)

clean:
	@$(MAKE) -s -f../../lib.makefile clean $(ARGS)

clean_all:
	@$(MAKE) -s -f../../lib.makefile clean_all $(ARGS)