#pragma once

#include "cvar.h"

// Filename:-	stringed_interface.h
//
// These are the functions that get replaced by game-specific ones (or StringEd code) so SGE can access files etc
//

//#pragma warning ( disable : 4786 )			// disable the usual stupid and pointless STL warning
#ifdef __cplusplus
#include <string>

unsigned char *	SE_LoadFileData			( const char *psFileName, int *piLoadedLength = 0);
void			SE_FreeFileDataAfterLoad( unsigned char *psLoadedFile );
int				SE_BuildFileList		( const char *psStartDir, std::string& strResults );

#endif

extern cvar_t *loc_warningsAsErrors;
extern cvar_t *loc_warnings;

////////////////// eof ///////////////////
