#pragma once

#include "menu.h"

/* This asset holds all the menus used in game. */
/* mod.csv string examples are next: */
/*   menufile,ui_mp/menus.txt */
/*   menufile,ui_mp/some_menu.menu */
/* First will add all contents of other menus inside. */
/* Second one just one file. */
/* Doesn't seem like a good idea to extract menus from here. */
typedef struct Menufile_t
{
    char *name;
    uint count; /* Count of menus inside. */
    MenuDef_t **menus; /* Pointer to array of 'menu' pointers. Its size == count. */
} Menufile_t;

#define XASSET_TYPE_MENUFILE (20)
