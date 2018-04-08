#ifndef __FONT_H__
#define __FONT_H__
#include "material.h"

/* 7043 */
#pragma pack(push, 2)
typedef struct
{
  uint16_t letter;
  char x0;
  char y0;
  char dx;
  char pixelWidth;
  char pixelHeight;
  char pad;
  float s0;
  float t0;
  float s1;
  float t1;
}Glyph;
#pragma pack(pop)

/*
typedef struct
{
  IDirect3DTexture9* glyph;
  float size;
  RECT rect;
  POINT pt;
  float glyphWidth;
  float glyphHeight;
}GlyphInfo_t;

//Basic settings for ttf fonts

typedef struct
{
  ID3DXFont* h;
  UINT Weight;
  UINT MipLevels;
  BOOL Italic;
  DWORD CharSet;
  DWORD OutputPrecision;
  DWORD PitchAndFamily;
  char fontName[32];
  WORD QuestionGlyphIndex; //if the character is not available we use ?
}D3DXFontInfo;
*/


typedef struct Font_s
{
  const char *fontName;
  int pixelHeight;
  int glyphCount;
  Material *material;
  Material *glowMaterial;
  union
  {
    Glyph *glyphs; //glyphCount > 0
//    struct D3DXFontInfo *d3dxfontinfo; //glyphCount = -1337 :Not an array
  };
}Font_t;

/*
typedef struct
{
  Font_t f;
  D3DXFontInfo dxf;
}TTFFontStorage_t;
*/

Font_t* Font_GetDefaultFont();

/*
void Font_InitTTF();
const GlyphInfo_t* R_TTFFontGetGlyph(Font_t* font, wchar_t c);
*/
//const GlyphInfo_t *Glyph_Find( Font_t* font, wchar_t index );

void R_LoadGlyphs(Font_t* font, const char* text, int textlen);

#endif
