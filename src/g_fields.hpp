enum fieldtype_t
{
  F_INT = 0x0,
  F_FLOAT = 0x1,
  F_LSTRING = 0x2,
  F_STRING = 0x3,
  F_VECTOR = 0x4,
  F_ENTITY = 0x5,
  F_ENTHANDLE = 0x6,
  F_VECTORHACK = 0x7,
  F_OBJECT = 0x8,
  F_MODEL = 0x9,
};

extern "C"{
void __cdecl Scr_SetGenericField( void*, enum fieldtype_t, int );
void __cdecl Scr_GetGenericField(const void*, enum fieldtype_t, int );
};