#include "q_shared.h"
#include "q_math.h"
#include <stdint.h>

typedef enum
{
    VSVAR_BAD,
    VSVAR_STRING,
    VSVAR_CONSTSTRING,
    VSVAR_BOOLEAN,
    VSVAR_INTEGER,
    VSVAR_FLOAT,
    VSVAR_VECTOR
}varType_t;

typedef union
{
    char* string;
    uint16_t constString;
    qboolean boolean;
    int32_t integer;
    float floatVar;
    vec3_t vector;
}vsValue_t;

typedef void vsMemObj_t;

typedef struct
{
    vsMemObj_t *memObj;
    int relocationCount;
}varStorage_t;



char* HStorage_ValueToString(varType_t type, vsValue_t* value, char* buf, int buflen);
qboolean HStorage_StringToValue(varType_t type, char* string, vsValue_t* value);
qboolean HStorage_InitObject( varStorage_t* obj, int bytes );

/* Preparing the tempdata object */
qboolean HStorage_BeginData( varStorage_t* obj, varType_t type, const char* name);
/* Writing datablocks to the tempdata object */
qboolean HStorage_AddDataFromString( varStorage_t* obj, char* varValue);
qboolean HStorage_AddData( varStorage_t* obj, vsValue_t* value );

qboolean HStorage_EndData( varStorage_t* obj );

int HStorage_GetBeginData( varStorage_t* obj, const char* name, varType_t* type);
/* Gets one element */
int HStorage_GetData(varStorage_t* obj, vsValue_t* value );

void HStorage_WriteDataToFile(varStorage_t* obj, const char* filename);
vsMemObj_t* HStorage_LoadDataFromFile(varStorage_t* obj, const char* filename);

const char* HStorage_GetLastError(varStorage_t* obj);