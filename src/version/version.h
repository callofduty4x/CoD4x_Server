#pragma once
// Wrap constants in functions in order to faster rebuild
//   module "version.c" each time.
float Sys_GetCommonVersion();
const char* Sys_GetCommonVersionString();
int Sys_GetBuild();
