// Filename:-	stringed_ingame.cpp
//
// This file is designed to be pasted into each game project that uses the StringEd package's files.
//  You can alter the way it does things by (eg) replacing STL with RATL, BUT LEAVE THE OVERALL
//	FUNCTIONALITY THE SAME, or if I ever make any funadamental changes to the way the package works
//	then you're going to be SOOL (shit out of luck ;-)...
//

//////////////////////////////////////////////////
//
// stuff common to all qcommon files...
#include "server.h"
#include "q_shared.h"
#include "qcommon.h"
#include "qcommon_mem.h"
//
//////////////////////////////////////////////////


//#pragma warning ( disable : 4511 )			// copy constructor could not be generated
//#pragma warning ( disable : 4512 )			// assignment operator could not be generated
//#pragma warning ( disable : 4663 )			// C++ language change: blah blah template crap blah blah
#include "stringed_ingame.h"
#include "stringed_interface.h"

///////////////////////////////////////////////
//
// some STL stuff...
//#pragma warning ( disable : 4786 )			// disable the usual stupid and pointless STL warning
#include <list>
#include <map>
#include <set>
#include <string>
#include <vector>
#include <string.h>
using namespace std;

typedef vector<string>	vStrings_t;
typedef vector<int>		vInts_t;
//
///////////////////////////////////////////////

cvar_t	*se_debug = NULL;
cvar_t  *sp_leet = NULL;	// kept as 'sp_' for JK2 compat.

#define __DEBUGOUT(_string)	Com_OPrintf("%s",_string)
#define __ASSERT(_blah)		assert(_blah)

typedef struct SE_Entry_s
{
	string		m_strString;
	string		m_strDebug;	// english and/or "#same", used for debugging only. Also prefixed by "SE:" to show which strings go through StringEd (ie aren't hardwired)
	int			m_iFlags;

	SE_Entry_s()
	{
		m_iFlags = 0;
	}

} SE_Entry_t;


typedef map <string, SE_Entry_t> mapStringEntries_t;

class CStringEdPackage
{
private:

	SE_BOOL				m_bEndMarkerFound_ParseOnly;
	string				m_strCurrentEntryRef_ParseOnly;
	string				m_strCurrentEntryEnglish_ParseOnly;
	string				m_strCurrentFileRef_ParseOnly;
	string				m_strLoadingLanguage_ParseOnly;	// eg "german"
	SE_BOOL				m_bLoadingEnglish_ParseOnly;

public:

	CStringEdPackage()
	{
		Clear( SE_FALSE );
	}

	~CStringEdPackage()
	{
		Clear( SE_FALSE );
	}

	mapStringEntries_t	m_StringEntries;	// needs to be in public space now
	SE_BOOL				m_bLoadDebug;		// ""
	//
	// flag stuff...
	//
	vector <string>		m_vstrFlagNames;
	map	<string,int>	m_mapFlagMasks;

	void	Clear( SE_BOOL bChangingLanguages );
	void	SetupNewFileParse( LPCSTR psFileName, SE_BOOL bLoadDebug );
	SE_BOOL	ReadLine( LPCSTR &psParsePos, char *psDest );
	LPCSTR	ParseLine( LPCSTR psLine, bool forceEnglish );
	int		GetFlagMask( LPCSTR psFlagName );
	LPCSTR	ExtractLanguageFromPath( LPCSTR psFileName );
	SE_BOOL	EndMarkerFoundDuringParse( void )
	{
		return m_bEndMarkerFound_ParseOnly;
	}
	bool IsStringFormatCorrect(const char *string);

private:

	void	AddEntry( LPCSTR psLocalReference );
	int		GetNumStrings(void);
	void	SetString( LPCSTR psLocalReference, LPCSTR psNewString, SE_BOOL bEnglishDebug );
	SE_BOOL	SetReference( int iIndex, LPCSTR psNewString );
	void	AddFlagReference( LPCSTR psLocalReference, LPCSTR psFlagName );
	LPCSTR	GetCurrentFileName(void);
	LPCSTR	GetCurrentReference_ParseOnly( void );
	SE_BOOL	CheckLineForKeyword( LPCSTR psKeyword, LPCSTR &psLine);
	LPCSTR	InsideQuotes( LPCSTR psLine );
	LPCSTR	ConvertCRLiterals_Read( LPCSTR psString );
	void	REMKill( char *psBuffer );
	char	*Filename_PathOnly( LPCSTR psFilename );
	char	*Filename_WithoutPath(LPCSTR psFilename);
	char	*Filename_WithoutExt(LPCSTR psFilename);
};

CStringEdPackage *TheStringPackage;


void CStringEdPackage::Clear( SE_BOOL bChangingLanguages )
{
	m_StringEntries.clear();

	if ( !bChangingLanguages )
	{
		// if we're changing languages, then I'm going to leave these alone. This is to do with any (potentially) cached
		//	flag bitmasks on the game side. It shouldn't matter since all files are written out at once using the build
		//	command in StringEd. But if ever someone changed a file by hand, or added one, or whatever, and it had a 
		//	different set of flags declared, or the strings were in a different order, then the flags might also change
		//	the order I see them in, and hence their indexes and masks. This should never happen unless people mess with
		//	the .STR files by hand and delete some, but this way makes sure it'll all work just in case...
		//
		// ie. flags stay defined once they're defined, and only the destructor (at app-end) kills them.
		//
		m_vstrFlagNames.clear();
		m_mapFlagMasks.clear();
	}

	m_bEndMarkerFound_ParseOnly = SE_FALSE;
	m_strCurrentEntryRef_ParseOnly = "";
	m_strCurrentEntryEnglish_ParseOnly = "";
	//
	// the other vars are cleared in SetupNewFileParse(), and are ok to not do here.
	//
}



// loses anything after the path (if any), (eg) "dir/name.bmp" becomes "dir"
// (copes with either slash-scheme for names)
//
// (normally I'd call another function for this, but this is supposed to be engine-independant,
//	 so a certain amount of re-invention of the wheel is to be expected...)
//
char *CStringEdPackage::Filename_PathOnly(LPCSTR psFilename)
{
	static char sString[ iSE_MAX_FILENAME_LENGTH ];

	strcpy(sString,psFilename);	
		
	char *p1= strrchr(sString,'\\');
	char *p2= strrchr(sString,'/');
	char *p = (p1>p2)?p1:p2;
	if (p)
		*p=0;

	return sString;
}


// returns (eg) "dir/name" for "dir/name.bmp"
// (copes with either slash-scheme for names)
//
// (normally I'd call another function for this, but this is supposed to be engine-independant,
//	 so a certain amount of re-invention of the wheel is to be expected...)
//
char *CStringEdPackage::Filename_WithoutExt(LPCSTR psFilename)
{
	static char sString[ iSE_MAX_FILENAME_LENGTH ];

	strcpy(sString,psFilename);

	char *p = strrchr(sString,'.');		
	char *p2= strrchr(sString,'\\');
	char *p3= strrchr(sString,'/');

	// special check, make sure the first suffix we found from the end wasn't just a directory suffix (eg on a path'd filename with no extension anyway)
	//
	if (p && 
		(p2==0 || (p2 && p>p2)) &&
		(p3==0 || (p3 && p>p3))
		)
		*p=0;	

	return sString;
}

// returns actual filename only, no path
// (copes with either slash-scheme for names)
//
// (normally I'd call another function for this, but this is supposed to be engine-independant,
//	 so a certain amount of re-invention of the wheel is to be expected...)
//
char *CStringEdPackage::Filename_WithoutPath(LPCSTR psFilename)
{
	static char sString[ iSE_MAX_FILENAME_LENGTH ];

	LPCSTR psCopyPos = psFilename;
	
	while (*psFilename)
	{
		if (*psFilename == '/' || *psFilename == '\\')
			psCopyPos = psFilename+1;
		psFilename++;
	}

	strcpy(sString,psCopyPos);

	return sString;
}


LPCSTR CStringEdPackage::ExtractLanguageFromPath( LPCSTR psFileName )
{
	return Filename_WithoutPath( Filename_PathOnly( psFileName ) );
}


void CStringEdPackage::SetupNewFileParse( LPCSTR psFileName, SE_BOOL bLoadDebug )
{
	char sString[ iSE_MAX_FILENAME_LENGTH ];

	strcpy(sString, Filename_WithoutPath( Filename_WithoutExt( psFileName ) ));
	Q_strupr(sString);

	m_strCurrentFileRef_ParseOnly = sString;	// eg "OBJECTIVES"
	m_strLoadingLanguage_ParseOnly = ExtractLanguageFromPath( psFileName );
	m_bLoadingEnglish_ParseOnly = (!Q_stricmp( m_strLoadingLanguage_ParseOnly.c_str(), "english" )) ? SE_TRUE : SE_FALSE;
	m_bLoadDebug = bLoadDebug;
}


// returns SE_TRUE if supplied keyword found at line start (and advances supplied ptr past any whitespace to next arg (or line end if none),
//
//	else returns SE_FALSE...
//
SE_BOOL CStringEdPackage::CheckLineForKeyword( LPCSTR psKeyword, LPCSTR &psLine)
{
	if (!Q_stricmpn(psKeyword, psLine, strlen(psKeyword)) )
	{
		psLine += strlen(psKeyword);

		// skip whitespace to arrive at next item...
		//
		while ( *psLine == '\t' || *psLine == ' ' )
		{
			psLine++;
		}
		return SE_TRUE;
	}

	return SE_FALSE;
}

// change "\n" to '\n' (i.e. 2-byte char-string to 1-byte ctrl-code)...
//  (or "\r\n" in editor)
//
LPCSTR CStringEdPackage::ConvertCRLiterals_Read( LPCSTR psString )
{
	static string str;
	str = psString;
	int iLoc;
	while ( (iLoc = str.find("\\n")) != -1 )
	{
		str[iLoc  ] = '\n';
		str.erase( iLoc+1,1 );
	}

	return str.c_str();
}


// kill off any "//" onwards part in the line, but NOT if it's inside a quoted string...
//
void CStringEdPackage::REMKill( char *psBuffer )
{
	char *psScanPos = psBuffer;
	char *p;
	int iDoubleQuotesSoFar = 0;

	// scan forwards in case there are more than one (and the first is inside quotes)...
	//
	while ( (p=strstr(psScanPos,"//")) != NULL)
	{
		// count the number of double quotes before this point, if odd number, then we're inside quotes...
		//
		int iDoubleQuoteCount = iDoubleQuotesSoFar;

		for (int i=0; i<p-psScanPos; i++)
		{
			if (psScanPos[i] == '"')
			{
				iDoubleQuoteCount++;
			}
		}
		if (!(iDoubleQuoteCount&1))
		{
			// not inside quotes, so kill line here...
			//			
			*p='\0';
			//
			// and remove any trailing whitespace...
			//
			if (psScanPos[0])	// any strlen? (else access violation with -1 below)
			{
				int iWhiteSpaceScanPos = strlen(psScanPos)-1;
				while (iWhiteSpaceScanPos>=0 && isspace(psScanPos[iWhiteSpaceScanPos]))
				{
					psScanPos[iWhiteSpaceScanPos--] = '\0';
				}
			}

			return;
		}
		else
		{
			// inside quotes (blast), oh well, skip past and keep scanning...
			//
			psScanPos = p+1;
			iDoubleQuotesSoFar = iDoubleQuoteCount;
		}
	}
}

// returns true while new lines available to be read...
//
SE_BOOL CStringEdPackage::ReadLine( LPCSTR &psParsePos, char *psDest )
{
	if (psParsePos[0])
	{	
		LPCSTR psLineEnd = strchr(psParsePos, '\n');
		if (psLineEnd)
		{
			int iCharsToCopy = (psLineEnd - psParsePos);
			strncpy(psDest, psParsePos, iCharsToCopy);
					psDest[iCharsToCopy] = '\0';
			psParsePos += iCharsToCopy;
			while (*psParsePos && strchr("\r\n",*psParsePos))
			{
				psParsePos++;	// skip over CR or CR/LF pairs
			}
		}
		else
		{
			// last line...
			//
			strcpy(psDest, psParsePos);
			psParsePos += strlen(psParsePos);
		}

		// clean up the line...
		//
		if (psDest[0])
		{
			int iWhiteSpaceScanPos = strlen(psDest)-1;
			while (iWhiteSpaceScanPos>=0 && isspace(psDest[iWhiteSpaceScanPos]))
			{
				psDest[iWhiteSpaceScanPos--] = '\0';
			}

			REMKill( psDest );
		}
		return SE_TRUE;
	}

	return SE_FALSE;
}

// remove any outside quotes from this supplied line, plus any leading or trailing whitespace...
//
LPCSTR CStringEdPackage::InsideQuotes( LPCSTR psLine )
{
	// I *could* replace this string object with a declared array, but wasn't sure how big to leave it, and it'd have to
	//	be static as well, hence permanent. (problem on consoles?)
	//
	static	string	str;
					str = "";	// do NOT join to above line

	// skip any leading whitespace...
	//
	while (*psLine == ' ' || *psLine == '\t')
	{
		psLine++;
	}

	// skip any leading quote...
	//
	if (*psLine == '"')
	{
		psLine++;
	}

	// assign it...
	//
	str = psLine;

	if (psLine[0])
	{
		// lose any trailing whitespace...
		//
		while (	str.c_str()[ strlen(str.c_str()) -1 ] == ' ' ||
				str.c_str()[ strlen(str.c_str()) -1 ] == '\t'
				)
		{
			str.erase( strlen(str.c_str()) -1, 1);
		}

		// lose any trailing quote...
		//
		if (str.c_str()[ strlen(str.c_str()) -1 ] == '"')
		{
			str.erase( strlen(str.c_str()) -1, 1);
		}
	}

	// and return it...
	//
	return str.c_str();
}

bool CStringEdPackage::IsStringFormatCorrect(const char *string)
{
  int argIndex;
  char *convString;
  bool args[9];

  memset(args, 0, sizeof(args));
  for ( convString = strstr((char *)string, "&&"); convString; convString = strstr(convString + 1, "&&") )
  {
    convString += 2;
    if ( !isdigit(*convString) )
    {
      return 0;
    }
    argIndex = *convString - 49;
    if ( args[argIndex] )
    {
      return 0;
    }
    args[argIndex] = 1;
  }
  return 1;
}


// returns flag bitmask (eg 00000010b), else 0 for not found
//
int CStringEdPackage::GetFlagMask( LPCSTR psFlagName )
{
	map <string, int>::iterator itFlag = m_mapFlagMasks.find( psFlagName );
	if ( itFlag != m_mapFlagMasks.end() )
	{
		int &iMask = (*itFlag).second;
		return iMask;
	}

	return 0;
}


void CStringEdPackage::AddFlagReference( LPCSTR psLocalReference, LPCSTR psFlagName )
{
	// add the flag to the list of known ones...
	//
	int iMask = GetFlagMask( psFlagName );
	if (iMask == 0)
	{
		m_vstrFlagNames.push_back( psFlagName );
		iMask = 1 << (m_vstrFlagNames.size()-1);
		m_mapFlagMasks[ psFlagName ] = iMask;
	}
	//
	// then add the reference to this flag to the currently-parsed reference...
	//
	mapStringEntries_t::iterator itEntry = m_StringEntries.find( va("%s_%s",m_strCurrentFileRef_ParseOnly.c_str(), psLocalReference) );
	if (itEntry != m_StringEntries.end())
	{
		SE_Entry_t &Entry = (*itEntry).second;
		Entry.m_iFlags |= iMask;
	}
}



// return is either NULL for good else error message to display...
//
LPCSTR CStringEdPackage::ParseLine( LPCSTR psLine, bool forceEnglish )
{
	LPCSTR psErrorMessage = NULL;

	if (psLine)
	{
		if (CheckLineForKeyword( sSE_KEYWORD_VERSION, psLine ))
		{
			// VERSION 	"1"
			//
			LPCSTR psVersionNumber = InsideQuotes( psLine );
			int		iVersionNumber = atoi( psVersionNumber );
			
			if (iVersionNumber != iSE_VERSION)
			{
				psErrorMessage = va("Unexpected version number %d, expecting %d!\n", iVersionNumber, iSE_VERSION);
			}
		}
		else
		if (	CheckLineForKeyword(sSE_KEYWORD_CONFIG, psLine)
			||	CheckLineForKeyword(sSE_KEYWORD_FILENOTES, psLine)
			||	CheckLineForKeyword(sSE_KEYWORD_NOTES, psLine)
			||	CheckLineForKeyword(sSE_KEYWORD_FLAGS, psLine))
		{
			// not used ingame, but need to absorb the token
		}
		else
		if (CheckLineForKeyword(sSE_KEYWORD_REFERENCE, psLine))
		{
			// REFERENCE	GUARD_GOOD_TO_SEE_YOU
			//
			LPCSTR psLocalReference = InsideQuotes( psLine );
			AddEntry( psLocalReference );
		}
		else
		if (CheckLineForKeyword(sSE_KEYWORD_ENDMARKER, psLine))
		{
			// ENDMARKER
			//
			m_bEndMarkerFound_ParseOnly = SE_TRUE;	// the only major error checking I bother to do (for file truncation)
		}
		else
		if (!Q_stricmpn(sSE_KEYWORD_LANG, psLine, strlen(sSE_KEYWORD_LANG)))
		{
			// LANG_ENGLISH 	"GUARD:  Good to see you, sir.  Taylor is waiting for you in the clean tent.  We need to get you suited up.  "
			//
			LPCSTR psReference = GetCurrentReference_ParseOnly();
			if ( psReference[0] )
			{
				psLine += strlen(sSE_KEYWORD_LANG);

				// what language is this?...
				//
				LPCSTR psWordEnd = psLine;
				while (*psWordEnd && *psWordEnd != ' ' && *psWordEnd != '\t')
				{
					psWordEnd++;
				}
				char sThisLanguage[1024]={0};
				int iCharsToCopy = psWordEnd - psLine;
				if ((unsigned int)iCharsToCopy > sizeof(sThisLanguage)-1)
				{
					iCharsToCopy = sizeof(sThisLanguage)-1;
				}
				strncpy(sThisLanguage, psLine, iCharsToCopy);	// already declared as {0} so no need to zero-cap dest buffer

				psLine += strlen(sThisLanguage);
				LPCSTR _psSentence = ConvertCRLiterals_Read( InsideQuotes( psLine ) );

				if ( !IsStringFormatCorrect(_psSentence) )
				{
					psErrorMessage = va("Illegal string format \"%s\"", _psSentence);
				}

				// if loading a foreign language...
				//
				SE_BOOL bSentenceIsEnglish = (!Q_stricmp(sThisLanguage,"english")) ? SE_TRUE: SE_FALSE;	// see whether this is the english master or not

				if (!psErrorMessage && (bSentenceIsEnglish || !forceEnglish))
				{
					SetString( psReference, _psSentence, bSentenceIsEnglish );
				}

				Z_Free( (void*)_psSentence );
			}
			else
			{
				psErrorMessage = "Error parsing file: Unexpected \"" sSE_KEYWORD_LANG "\"\n";
			}
		}
		else
		{
			psErrorMessage = va("Unknown keyword at linestart: \"%s\"\n", psLine);
		}
	}

	return psErrorMessage;
}
	
// returns reference of string being parsed, else "" for none.
//
LPCSTR CStringEdPackage::GetCurrentReference_ParseOnly( void )
{
	return m_strCurrentEntryRef_ParseOnly.c_str();
}
	
// add new string entry (during parse)
//
void CStringEdPackage::AddEntry( LPCSTR psLocalReference )
{
	// the reason I don't just assign it anyway is because the optional .STE override files don't contain flags, 
	//	and therefore would wipe out the parsed flags of the .STR file...
	//
	mapStringEntries_t::iterator itEntry = m_StringEntries.find( va("%s_%s",m_strCurrentFileRef_ParseOnly.c_str(), psLocalReference) );
	if (itEntry == m_StringEntries.end())
	{
		SE_Entry_t SE_Entry;
		m_StringEntries[ va("%s_%s", m_strCurrentFileRef_ParseOnly.c_str(), psLocalReference) ] = SE_Entry;
	}
	m_strCurrentEntryRef_ParseOnly = psLocalReference;
}

LPCSTR Leetify( LPCSTR psString )
{
	static string str;
	str = psString;
	if (sp_leet->integer == 42)	// very specific test, so you won't hit it accidentally
	{
		static const
		char cReplace[]={	'o','0','l','1','e','3','a','4','s','5','t','7','i','!','h','#',
							'O','0','L','1','E','3','A','4','S','5','T','7','I','!','H','#'	// laziness because of strchr()
						};

		char *p;
		for (unsigned int i=0; i<sizeof(cReplace); i+=2)
		{
			while ((p=(char*)strchr(str.c_str(),cReplace[i]))!=NULL)
				*p = cReplace[i+1];
		}
	}

	return str.c_str();
}


void CStringEdPackage::SetString( LPCSTR psLocalReference, LPCSTR psNewString, SE_BOOL bEnglishDebug )
{
	mapStringEntries_t::iterator itEntry = m_StringEntries.find( va("%s_%s",m_strCurrentFileRef_ParseOnly.c_str(), psLocalReference) );
	if (itEntry != m_StringEntries.end())
	{
		SE_Entry_t &Entry = (*itEntry).second;
	
		if ( bEnglishDebug || m_bLoadingEnglish_ParseOnly)
		{	
			// then this is the leading english text of a foreign sentence pair (so it's the debug-key text),
			//	or it's the only text when it's english being loaded...
			//
			Entry.m_strString = Leetify( psNewString );
			if ( m_bLoadDebug )
			{
				Entry.m_strDebug = sSE_DEBUGSTR_PREFIX;
				Entry.m_strDebug+= /* m_bLoadingEnglish_ParseOnly ? "" : */ psNewString;
				Entry.m_strDebug+= sSE_DEBUGSTR_SUFFIX;
			}
			m_strCurrentEntryEnglish_ParseOnly = psNewString;	// for possible "#same" resolving in foreign later
		}
		else
		{				
			// then this is foreign text (so check for "#same" resolving)...
			//
			if (!Q_stricmp(psNewString, sSE_EXPORT_SAME))
			{
				Entry.m_strString = m_strCurrentEntryEnglish_ParseOnly;	// foreign "#same" is now english
				if (m_bLoadDebug)
				{
					Entry.m_strDebug = sSE_DEBUGSTR_PREFIX;
					Entry.m_strDebug+= sSE_EXPORT_SAME;				// english (debug) is now "#same"
					Entry.m_strDebug+= sSE_DEBUGSTR_SUFFIX;
				}
			}
			else
			{
				Entry.m_strString	= psNewString;							// foreign is just foreign
			}
		}
	}
	else
	{
		__ASSERT(0);	// should never happen
	}
}




static LPCSTR SE_GetFoundFile( string &strResult )
{
	static char sTemp[1024/*MAX_PATH*/];

	if (!strlen(strResult.c_str()))
		return NULL;
	
	strncpy(sTemp,strResult.c_str(),sizeof(sTemp)-1);
	sTemp[sizeof(sTemp)-1]='\0';

	char *psSemiColon = strchr(sTemp,';');
	if (  psSemiColon)
	{
		 *psSemiColon = '\0';

		 strResult.erase(0,(psSemiColon-sTemp)+1);
	}
	else
	{
		// no semicolon found, probably last entry? (though i think even those have them on, oh well)
		//
		strResult.erase();
	}

//	strlwr(sTemp);	// just for consistancy and set<> -> set<> erasure checking etc

	return sTemp;
}



//////////// API entry points from rest of game.... //////////////////////////////

// filename is local here, eg:	"strings/german/obj.str"
//
// return is either NULL for good else error message to display...
//



// returns flag bitmask (eg 00000010b), else 0 for not found
//
int SE_GetFlagMask( LPCSTR psFlagName )
{
	return TheStringPackage->GetFlagMask( psFlagName );
}

// convenience-function for the main GetString call...
//
/*
LPCSTR SE_GetString( LPCSTR psPackageReference, LPCSTR psStringReference)
{
	char sReference[256];	// will always be enough, I've never seen one more than about 30 chars long

	Com_sprintf(sReference,sizeof(sReference),"%s_%s", psPackageReference, psStringReference);

	return SE_GetString( Q_strupr(sReference) );
}
*/
// convenience-function for the main GetFlags call...
//
int	SE_GetFlags ( LPCSTR psPackageReference, LPCSTR psStringReference )
{
	char sReference[256];	// will always be enough, I've never seen one more than about 30 chars long

	Com_sprintf(sReference,sizeof(sReference),"%s_%s", psPackageReference, psStringReference);

	return SE_GetFlags( sReference );
}

int	SE_GetFlags ( LPCSTR psPackageAndStringReference )
{
	mapStringEntries_t::iterator itEntry = TheStringPackage->m_StringEntries.find( psPackageAndStringReference );
	if (itEntry != TheStringPackage->m_StringEntries.end())
	{
		SE_Entry_t &Entry = (*itEntry).second;

		return Entry.m_iFlags;
	}

	// should never get here, but fall back anyway...
	//
	__ASSERT(0);

	return 0;
}


int SE_GetNumFlags( void )
{
	return TheStringPackage->m_vstrFlagNames.size();
}

LPCSTR SE_GetFlagName( int iFlagIndex )
{
	if ( (unsigned int)iFlagIndex < TheStringPackage->m_vstrFlagNames.size())
	{
		return TheStringPackage->m_vstrFlagNames[ iFlagIndex ].c_str();
	}

	__ASSERT(0);
	return "";
}


extern "C"{

LPCSTR SE_Load( LPCSTR psFileName, bool forceEnglish  )
{
	////////////////////////////////////////////////////
	//
	// ingame here tends to pass in names without paths, but I expect them when doing a language load, so...
	//
	char psDest[16384];
	LPCSTR psErrorMessage = NULL;
	const char *psParsePos;
	unsigned char* psLoadedFile = SE_LoadFileData(psFileName);
  if ( psLoadedFile )
  {
    TheStringPackage->SetupNewFileParse(psFileName, SE_FALSE);
    while ( psErrorMessage == NULL && TheStringPackage->ReadLine(psParsePos, psDest) )
    {
      if ( psDest[0] )
      {
        psErrorMessage = TheStringPackage->ParseLine(psDest, forceEnglish);
      }
    }
    if ( psErrorMessage )
    {
      psErrorMessage = va("%s in %s", psErrorMessage, psFileName);
    }
    SE_FreeFileDataAfterLoad(psLoadedFile);
    if ( !psErrorMessage && !TheStringPackage->EndMarkerFoundDuringParse() )
    {
      psErrorMessage = va("Truncated file, failed to find \"%s\" at file end in file %s", "ENDMARKER", psFileName);
    }
    return psErrorMessage;
  }
  psErrorMessage = va("Unable to load \"%s\"!", psFileName);
  return psErrorMessage;
}






LPCSTR SE_GetString_LoadObj( LPCSTR psPackageAndStringReference )
{
	char sReference[256];	// will always be enough, I've never seen one more than about 30 chars long
	assert(strlen(psPackageAndStringReference) < sizeof(sReference) );
	Q_strncpyz(sReference, psPackageAndStringReference, sizeof(sReference) );
	Q_strupr(sReference);

	mapStringEntries_t::iterator itEntry = TheStringPackage->m_StringEntries.find( sReference );
	if (itEntry != TheStringPackage->m_StringEntries.end())
	{
		SE_Entry_t &Entry = (*itEntry).second;

		if ( se_debug->integer && TheStringPackage->m_bLoadDebug )
		{
			return Entry.m_strDebug.c_str();
		}
		else
		{
			return Entry.m_strString.c_str();
		}
	}

	// should never get here, but fall back anyway... (except we DO use this to see if there's a debug-friendly key bind, which may not exist)
	//
//	__ASSERT(0);
	return "";	// you may want to replace this with something based on _DEBUG or not?
}





// I could cache the result of this since it won't change during app lifetime unless someone does a build-publish
//	while you're still ingame. Cacheing would make sense since it can take a while to scan, but I'll leave it and
//	let whoever calls it cache the results instead. I'll make it known that it's a slow process to call this, but 
//	whenever anyone calls someone else's code they should assign it to an int anyway, since you've no idea what's
//	going on. Basically, don't  use this in a FOR loop as the end-condition. Duh.
//
// Groan, except for Bob. I mentioned that this was slow and only call it once, but he's calling it from 
//	every level-load...  Ok, cacheing it is...
//
vector <string> gvLanguagesAvailable;
int SE_GetNumLanguages(void)
{
	if ( gvLanguagesAvailable.empty() )
	{
		string strResults;
		/*int iFilesFound = */SE_BuildFileList( 
												#ifdef _STRINGED
													va("C:\\Source\\Tools\\StringEd\\test_data\\%s",sSE_STRINGS_DIR)
												#else
													sSE_STRINGS_DIR
												#endif
												, strResults 
											);

		set<string> strUniqueStrings;	// laziness <g>
		LPCSTR p;
		while ((p=SE_GetFoundFile (strResults)) != NULL)
		{
			LPCSTR psLanguage = TheStringPackage->ExtractLanguageFromPath( p );

	//		__DEBUGOUT( p );
	//		__DEBUGOUT( "\n" );
	//		__DEBUGOUT( psLanguage );
	//		__DEBUGOUT( "\n" );

			if (!strUniqueStrings.count( psLanguage ))
			{
				strUniqueStrings.insert( psLanguage );

				// if english is available, it should always be first... ( I suppose )
				//
				if (!Q_stricmp(psLanguage,"english"))
				{
					gvLanguagesAvailable.insert( gvLanguagesAvailable.begin(), psLanguage );
				}
				else
				{
					gvLanguagesAvailable.push_back( psLanguage );
				}
			}
		}
	}

	return gvLanguagesAvailable.size();
}

// SE_GetNumLanguages() must have been called before this...
//
LPCSTR SE_GetLanguageName( int iLangIndex )
{
	if ( (unsigned int)iLangIndex < gvLanguagesAvailable.size() )
	{
		return gvLanguagesAvailable[ iLangIndex ].c_str();
	}

	__ASSERT(0);
	return "";
}

// SE_GetNumLanguages() must have been called before this...
//
LPCSTR SE_GetLanguageDir( int iLangIndex )
{
	if ( (unsigned int)iLangIndex < gvLanguagesAvailable.size() )
	{
		return va("%s/%s", sSE_STRINGS_DIR, gvLanguagesAvailable[ iLangIndex ].c_str() );
	}

	__ASSERT(0);
	return "";
}

void SE_NewLanguage(void)
{
	TheStringPackage->Clear( SE_TRUE );
}



// these two functions aren't needed other than to make Quake-type games happy and/or stop memory managers
//	complaining about leaks if they report them before the global StringEd package object calls it's own dtor.
//
// but here they are for completeness's sake I guess...
//
void SE_Init(void)
{
	TheStringPackage = new CStringEdPackage( );
	TheStringPackage->Clear( SE_FALSE );
}

void SE_ShutDown(void)
{
	TheStringPackage->Clear( SE_FALSE );
	delete TheStringPackage;
}


// returns error message else NULL for ok.
//
// Any errors that result from this should probably be treated as game-fatal, since an asset file is fuxored.
//
LPCSTR SE_LoadLanguage( SE_BOOL forceEnglish /* = SE_TRUE */ )
{
	LPCSTR psErrorMessage = NULL;

	SE_NewLanguage();

	string strResults;
	/*int iFilesFound = */SE_BuildFileList( 
#ifdef _STRINGED
	va("C:\\Source\\Tools\\StringEd\\test_data\\%s",sSE_STRINGS_DIR)
#else
	sSE_STRINGS_DIR
#endif
	, strResults);

	LPCSTR p;
	while ( (p=SE_GetFoundFile (strResults)) != NULL && !psErrorMessage )
	{
		psErrorMessage = SE_Load( p, forceEnglish );
	}

	return psErrorMessage;
}


}//End extern "C"
///////////////////////// eof //////////////////////////
