###############################################################################
# Common project properties.
MODULE=version
CFLAGS=-c
DEFINES=
LFLAGS=-shared
ADDITIONAL_OBJ=
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