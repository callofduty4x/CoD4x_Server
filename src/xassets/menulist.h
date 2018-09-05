#pragma once

typedef unsigned int uint;

/* This asset holds all the menus used in game. */
/* mod.csv string examples are next: */
/*   menufile,ui_mp/menus.txt */
/*   menufile,ui_mp/some_menu.menu */
/* First will add all contents of other menus inside. */
/* Second one just one file. */
/* Doesn't seem like a good idea to extract menus from here. */

struct MenuList
{
  const char *name;
  int menuCount;
  struct menuDef_t **menus;
};
