#include "q_shared.h"
#include "filesystem.h"
#include "qcommon_io.h"
#include "murmurhash1.h"

#include <string.h>
#include <stdlib.h>
#include <stdint.h>

typedef enum
{
    VSVAR_BAD,
    VSVAR_STRING,
    VSVAR_BOOLEAN,
    VSVAR_INTEGER,
    VSVAR_FLOAT,
    VSVAR_VECTOR
}varType_t;

typedef union
{
    char* string;
    qboolean boolean;
    int32_t integer;
    float floatVar;
    vec3_t vector;
}vsValue_t;


typedef struct
{
    byte type;
    byte numelements;
    short dataSize;
    byte dataStart;
}vsMemHeader_t;

#define MAX_ARRAY_SIZE 128

#define VS_UNIT_SIZE 16

typedef union
{
    byte		data[VS_UNIT_SIZE];
    vsMemHeader_t	header;
}vsMemUnit_t;


#define MAX_VARNAME 32

typedef struct
{
    int dataOffset;
    int unit;
    int elemCount;
    int tableindex;
    vsMemUnit_t tempunits[4 * MAX_ARRAY_SIZE];
}iterator_t;


typedef struct
{
    int numFields;
    int numInUseFields;
    int numUnits;
    int nextFree;
    qboolean overflowed;
}table_t;

typedef struct
{
    int memoryOffset;
    int length;

    int hashtableOffset;
    int hashtableLength;
    int memUnitsOffset;
    int memUnitsLength;

}memStorage_t;

typedef struct
{
    memStorage_t store;
    table_t table;
    iterator_t iter;
    const char* lastError;
}vsMemObj_t;

typedef struct
{
    vsMemObj_t* memObj;
    int relocationCount;
}varStorage_t;

#define VSINITIAL_STORAGE_SIZE 4096

varType_t HStorage_VarTypeToEnum(const char* varType)
{
    if(!strcmp(varType, "string"))
    {
        return VSVAR_STRING;
    }
    if(!strcmp(varType, "bool"))
    {
        return VSVAR_BOOLEAN;
    }
    if(!strcmp(varType, "int"))
    {
        return VSVAR_INTEGER;
    }
    if(!strcmp(varType, "float"))
    {
        return VSVAR_FLOAT;
    }
    if(!strcmp(varType, "vector"))
    {
        return VSVAR_VECTOR;
    }
    return VSVAR_BAD;
}



const char* HStorage_EnumToVarType(varType_t var)
{

    switch(var)
    {
        default:
            return NULL;
        case VSVAR_STRING:
            return "string";
        case VSVAR_BOOLEAN:
            return "bool";
        case VSVAR_INTEGER:
            return "int";
        case VSVAR_FLOAT:
            return "float";
        case VSVAR_VECTOR:
            return "vector";
    }
}


char* HStorage_ValueToString(varType_t type, vsValue_t* value, char* buf, int buflen)
{
    switch(type)
    {
        default:
            return "NULL";
        case VSVAR_STRING:
            return value->string;
        case VSVAR_BOOLEAN:
            Com_sprintf(buf, buflen, "%d", value->boolean);
            return buf;
        case VSVAR_INTEGER:
            Com_sprintf(buf, buflen, "%d", value->integer);
            return buf;
        case VSVAR_FLOAT:
            Com_sprintf(buf, buflen, "%g", value->floatVar);
            return buf;
        case VSVAR_VECTOR:
            Com_sprintf(buf, buflen, "%g %g %g", value->vector[0], value->vector[1], value->vector[2]);
            return buf;
    }

}


qboolean HStorage_StringToValue(varType_t type, char* string, vsValue_t* value)
{
    switch(type)
    {
        default:
            memset(value, 0, sizeof(vsValue_t));
            return qfalse;

        case VSVAR_STRING:
            value->string = string;
            return qtrue;

        case VSVAR_BOOLEAN:
            if(!isInteger(string, 0))
            {
                value->boolean = 0;
                return qfalse;
            }
            value->boolean = atoi(string);
            if(value->boolean != 0 && value->boolean != 1)
            {
                return qfalse;
            }
            return qtrue;

        case VSVAR_INTEGER:
            if(!isInteger(string, 0))
            {
                value->integer = 0;
                return qfalse;
            }
            value->integer = atoi(string);
            return qtrue;

        case VSVAR_FLOAT:
            if(!isFloat(string, 0))
            {
                value->floatVar = 0.0;
                return qfalse;
            }
            value->floatVar = atof(string);
            return qtrue;

        case VSVAR_VECTOR:
            if(!isVector(string, 0, 3))
            {
                memset(value, 0, sizeof(vsValue_t));
                return qfalse;
            }
            strToVect(string, value->vector, 3);
            return qtrue;
    }

}


uint32_t HStorage_GetHashFromString( const char* string )
{
    char hstring[MAX_VARNAME] = { 0 };
    Q_strncpyz( hstring, string, sizeof(hstring) );
    return MurmurHash1( hstring, MAX_VARNAME, 0x3f1ad378 );
}

uint16_t HStorage_GetHeaderSize()
{
    uint16_t headerlen;
    vsMemHeader_t* header;

    headerlen = ((byte*)&(header->dataStart) - (byte*)&(header->type));
    return headerlen;
}


uint16_t HStorage_GetNumberOfUnitsFromDatasize( int datasize )
{

    uint16_t totallen;
    uint16_t rounddownunits;
    uint16_t numunits;

    totallen = HStorage_GetHeaderSize() + datasize;

    rounddownunits = totallen / sizeof(vsMemUnit_t);
    if( rounddownunits * sizeof(vsMemUnit_t) < totallen )
    {
        numunits = rounddownunits +1;
    }else{
        numunits = rounddownunits;
    }
    return numunits;

}


uint16_t HStorage_GetAvailableBytesFromDatasize( int datasize )
{
    uint16_t numunits;
    uint16_t numbytes;

    numunits = HStorage_GetNumberOfUnitsFromDatasize( datasize );

    numbytes = numunits * sizeof(vsMemUnit_t) - HStorage_GetHeaderSize();

    return numbytes;

}

byte* HStorage_GetMemoryStart( vsMemObj_t* obj )
{

    byte* memstart;

    memstart = ((byte*)obj) + obj->store.memoryOffset;

    return memstart;
}

void HStorage_ObjectAllocTables( vsMemObj_t* obj )
{

    int numunits, htablesize, i;
    unsigned int bits;

    numunits = obj->store.length / sizeof(vsMemUnit_t);
    bits = numunits -1;

    for(i = 0; bits; i++, bits >>= 1);

    htablesize = 1;
    htablesize <<= i;

    obj->store.hashtableOffset = 0;
    obj->store.hashtableLength = htablesize * sizeof(int32_t);
    obj->store.memUnitsOffset = obj->store.hashtableLength;
    obj->store.memUnitsLength = obj->store.length - obj->store.hashtableLength;
    obj->table.numFields = htablesize;
    obj->table.numUnits = obj->store.memUnitsLength / sizeof(vsMemUnit_t);
    memset(&HStorage_GetMemoryStart( obj )[ obj->store.hashtableOffset ], -1, obj->store.hashtableLength);
    memset(&HStorage_GetMemoryStart( obj )[ obj->store.memUnitsOffset ], 0, obj->store.memUnitsLength);

}

int HStorage_GetHashtableUsage( vsMemObj_t* obj )
{
    return (1000000000 / obj->table.numFields) * obj->table.numInUseFields;
}

vsMemObj_t* HStorage_NewObjectInternal( int numbytes )
{
    vsMemObj_t* obj;

    if(numbytes < VSINITIAL_STORAGE_SIZE)
    {
        numbytes = VSINITIAL_STORAGE_SIZE;
    }

    obj = malloc(sizeof(vsMemObj_t) + numbytes);
    if(obj == NULL)
    {
        return obj;
    }
    memset(obj, 0, sizeof(vsMemObj_t));

    obj->store.memoryOffset = sizeof(vsMemObj_t);
    obj->store.length = numbytes;
    HStorage_ObjectAllocTables( obj );
    return obj;
}

/* Functions to add an object to the memory */

/* Preparing the tempdata object */
qboolean HStorage_BeginDataInternal( vsMemObj_t* obj, varType_t type, const char* name)
{
    char curName[MAX_VARNAME];
    vsMemHeader_t* header;

    Q_strncpyz(curName, name, sizeof(curName));

    header = &(obj->iter.tempunits[0].header);

    /* Set up the variable name */
    strcpy((char*)&(header->dataStart), curName);

    header->dataSize = ( strlen(curName) + 1 );
    header->type = type;
    header->numelements = 0;
    obj->lastError = "HStorage_BeginData: Success";
    return qtrue;
}


/* Writing datablocks to the tempdata object */
qboolean HStorage_AddDataInternal( vsMemObj_t* obj, vsValue_t *value)
{
    vsMemHeader_t* header;
    int datalen;
    byte* curloc;

    header = &(obj->iter.tempunits[0].header);
    curloc = ((byte*)&(header->dataStart)) + header->dataSize;

    if(header->numelements >= MAX_ARRAY_SIZE)
    {
        obj->lastError = "HStorage_AddData: Exceeded number of MAX_ARRAY_SIZE elements";
        return qfalse;
    }

    switch(header->type)
    {
        default:
            obj->lastError = "HStorage_AddData: Invalid type has been set in header";
            return qfalse;

        case VSVAR_STRING:
            datalen = strlen(value->string) +1;
            if(header->dataSize + HStorage_GetHeaderSize() + datalen >= sizeof(obj->iter.tempunits))
            {
                obj->lastError = "HStorage_AddData: Exceed limited of bytes which can be stored in a variable";
                return qfalse;
            }
            memcpy((char*)curloc, value->string, datalen);
            break;

        case VSVAR_BOOLEAN:
            datalen = sizeof(byte);
            if(header->dataSize + HStorage_GetHeaderSize() + datalen >= sizeof(obj->iter.tempunits))
            {
                obj->lastError = "HStorage_AddData: Exceed limited of bytes which can be stored in a variable";
                return qfalse;
            }
            memcpy((byte*)curloc, &(value->boolean), datalen);
            break;

        case VSVAR_INTEGER:
            datalen = sizeof(int32_t);
            if(header->dataSize + HStorage_GetHeaderSize() + datalen >= sizeof(obj->iter.tempunits))
            {
                obj->lastError = "HStorage_AddData: Exceed limited of bytes which can be stored in a variable";
                return qfalse;
            }
            memcpy((int32_t*)curloc, &(value->integer), datalen);
            break;

        case VSVAR_FLOAT:
            datalen = sizeof(float);
            if(header->dataSize + HStorage_GetHeaderSize() + datalen >= sizeof(obj->iter.tempunits))
            {
                obj->lastError = "HStorage_AddData: Exceed limited of bytes which can be stored in a variable";
                return qfalse;
            }
            memcpy((float*)curloc, &(value->floatVar), datalen);
            break;

        case VSVAR_VECTOR:
            datalen = sizeof(vec3_t);
            if(header->dataSize + HStorage_GetHeaderSize() + datalen >= sizeof(obj->iter.tempunits))
            {
                obj->lastError = "HStorage_AddData: Exceed limited of bytes which can be stored in a variable";
                return qfalse;
            }
            memcpy((float*)curloc, &(value->vector), datalen);
            break;

    }

    header->dataSize += datalen;
    ++header->numelements;
    obj->lastError = "HStorage_AddData: Success";
    return qtrue;
}




qboolean HStorage_AddDataFromStringInternal( vsMemObj_t* obj, char* varValue)
{
    vsMemHeader_t* header;
    vsValue_t value;

    header = &(obj->iter.tempunits[0].header);

    if(HStorage_StringToValue(header->type, varValue, &value) == qfalse)
    {
        obj->lastError = "HStorage_AddStringData: Parse Error";
        return qfalse;
    }

    if(HStorage_AddDataInternal( obj, &value) == qfalse)
    {
        return qfalse;
    }

    obj->lastError = "HStorage_AddStringData: Success";
    return qtrue;
}



int HStorage_GetTableDataIndex( vsMemObj_t* obj, char* name )
{
    unsigned int hashindex, i;
    int tableindex;
    unsigned int hash;
    int *hashtable;
    vsMemUnit_t *units;

    hash = HStorage_GetHashFromString( name );

    hashindex = hash & (obj->table.numFields -1);

    hashtable = (int*)&HStorage_GetMemoryStart(obj)[ obj->store.hashtableOffset ];
    units = (vsMemUnit_t*)&HStorage_GetMemoryStart(obj)[ obj->store.memUnitsOffset ];

    for(i = 0; i < obj->table.numFields; ++i)
    {

        tableindex = (i + hashindex) & (obj->table.numFields -1);

        if( hashtable[tableindex] == -2)
        {
            /* Has been marked for deleting */
            continue;
        }

        if( hashtable[tableindex] == -1 || strcmp( name, (char*)&(units[hashtable[tableindex]].header.dataStart)) == 0 )
        {
            /* Found a free field or the field which has our name */
            break;
        }
    }

    if(i == obj->table.numFields)
    {
        obj->table.overflowed = qtrue;
        obj->lastError = "HStorage_GetTableDataIndex: Hashtable has overflowed. Should never happen!";
        return -1;
    }
    obj->lastError = "HStorage_GetTableDataIndex: Success";
    return tableindex;
}





int HStorage_EndDataInternal( vsMemObj_t* obj )
{
    int index, tableindex, numUnits;

    int *hashtable;
    vsMemHeader_t* tmpheader;
    vsMemUnit_t *units;

    hashtable = (int*)&HStorage_GetMemoryStart(obj)[ obj->store.hashtableOffset ];
    tmpheader = &(obj->iter.tempunits[0].header);
    units = (vsMemUnit_t*)&HStorage_GetMemoryStart(obj)[ obj->store.memUnitsOffset ];

    tableindex = HStorage_GetTableDataIndex( obj, (char*)&tmpheader->dataStart );

    if(tableindex == -1)
    {
        obj->lastError = "HStorage_EndData: Invalid index";
        return -1;
    }

    index = hashtable[tableindex];

    if(index != -1)
    {

        if( HStorage_GetAvailableBytesFromDatasize( units[index].header.dataSize ) < tmpheader->dataSize )
        {
            index = obj->table.nextFree;
        }

    }else{
        index = obj->table.nextFree;
    }

    numUnits = HStorage_GetNumberOfUnitsFromDatasize( tmpheader->dataSize );
    if(index + numUnits >= obj->table.numUnits)
    {
        obj->table.overflowed = qtrue;
        obj->lastError = "HStorage_EndData: Available variable storage has exceeded. Requires to relocate 1st on a larger amount of memory";
        return 0;
    }

    if( index == obj->table.nextFree )
    {
        obj->table.nextFree += numUnits;
    }
    /* Beginning modifying of our dataset */
    /* Sets the hashtable entry to our saving location */
    hashtable[tableindex] = index;
    ++obj->table.numInUseFields;
    /* copy our temp dataset to the final destination */
    memcpy( &(units[index]), &(obj->iter.tempunits[0]), tmpheader->dataSize + HStorage_GetHeaderSize());
    obj->lastError = "HStorage_EndData: Success";
    return 1;
}

/* Functions to retrieve an object */
qboolean HStorage_GetBeginDataSetupIterInternal( vsMemObj_t* obj, int tableindex )
{
    int index;
    int *hashtable;
    vsMemHeader_t* header;
    vsMemUnit_t *units;

    hashtable = (int*)&HStorage_GetMemoryStart(obj)[ obj->store.hashtableOffset ];
    units = (vsMemUnit_t*)&HStorage_GetMemoryStart(obj)[ obj->store.memUnitsOffset ];
 
    /* Not found */
    if(tableindex == -1 )
    {
        obj->lastError = "HStorage_GetBeginDataSetupIter: Invalid hashtable index given";
        return qfalse;
    }
    index = hashtable[tableindex];
    /* Not found */
    if(index == -1)
    {
        obj->lastError = "HStorage_GetBeginDataSetupIter: The element which is requested is not found";
        return qfalse;
    }

    if(index == -2)
    {
        obj->lastError = "HStorage_GetBeginDataSetupIter: The element which is requested is deleted";
        return qfalse;
    }

    header = &units[index].header;

    obj->iter.dataOffset = strlen((char*)&header->dataStart) +1;
    obj->iter.unit = index;
    obj->iter.elemCount = 0;
    obj->lastError = "HStorage_GetBeginDataSetupIter: Success";
    return qtrue;

}

int HStorage_GetBeginDataInternal( vsMemObj_t* obj, char* name, varType_t* type )
{
    int tableindex;
    vsMemUnit_t *units;
    vsMemHeader_t* header;

    tableindex = HStorage_GetTableDataIndex( obj, name );

    if(HStorage_GetBeginDataSetupIterInternal( obj, tableindex ) == qfalse)
    {
        return 0;
    }

    if(obj->iter.unit < 0)
    {
        obj->lastError = "HStorage_GetBeginData: Iterator has invalid unit index";
        return 0;
    }

    units = (vsMemUnit_t*)&HStorage_GetMemoryStart(obj)[ obj->store.memUnitsOffset ];
    header = &units[obj->iter.unit].header;

    Q_strncpyz(name, (char*)&header->dataStart, MAX_VARNAME);
    *type = header->type;
    obj->lastError = "HStorage_GetBeginData: Success";

    return header->numelements;
}

/* Gets one element */
int HStorage_GetDataInternal(vsMemObj_t* obj, vsValue_t* value )
{
    vsMemUnit_t *units;
    vsMemHeader_t* header;
    int datalen;

    units = (vsMemUnit_t*)&HStorage_GetMemoryStart(obj)[ obj->store.memUnitsOffset ];
    header = &units[obj->iter.unit].header;

    if(obj->iter.elemCount >= header->numelements)
    {
        obj->lastError = "HStorage_GetData: All elements have been already retrieved. No more are available.";
        return 0;
    }

    switch(header->type)
    {

        default:
            obj->lastError = "HStorage_GetData: Selected element has an invalid type";
            return 0;

        case VSVAR_STRING:
            datalen = strlen( (char*)(&header->dataStart) + obj->iter.dataOffset) +1;
            value->string = (char*)((byte*)(&header->dataStart) + obj->iter.dataOffset);
            break;

        case VSVAR_BOOLEAN:
            datalen = sizeof(byte);
            value->boolean = ((byte*)(((byte*)(&header->dataStart) + obj->iter.dataOffset)))[0];
            break;

        case VSVAR_INTEGER:
            datalen = sizeof(int32_t);
            value->integer = ((int32_t*)(((byte*)(&header->dataStart) + obj->iter.dataOffset)))[0];
            break;

        case VSVAR_FLOAT:
            datalen = sizeof(float);
            value->floatVar = ((float*)(((byte*)(&header->dataStart) + obj->iter.dataOffset)))[0];
            break;

        case VSVAR_VECTOR:
            datalen = sizeof(vec3_t);
            value->vector[0] = ((float*)(((byte*)(&header->dataStart) + obj->iter.dataOffset)))[0];
            value->vector[1] = ((float*)(((byte*)(&header->dataStart) + obj->iter.dataOffset)))[1];
            value->vector[2] = ((float*)(((byte*)(&header->dataStart) + obj->iter.dataOffset)))[2];
            break;

    }

    obj->iter.dataOffset += datalen;
    obj->lastError = "HStorage_GetData: Success";
    return 1;
}


/* Functions to retrive all objects from the memory */

int HStorage_IterGetNextInfo( vsMemObj_t* obj, char *name, varType_t* type )
{
    vsMemUnit_t *units;
    vsMemHeader_t* header;

    units = (vsMemUnit_t*)&HStorage_GetMemoryStart(obj)[ obj->store.memUnitsOffset ];

    while(obj->iter.tableindex < obj->table.numFields)
    {

        if(HStorage_GetBeginDataSetupIterInternal( obj, obj->iter.tableindex ) == qfalse)
        {
            ++obj->iter.tableindex;
            continue;
        }

        ++obj->iter.tableindex;

        if(obj->iter.unit < 0)
        {
            obj->lastError = "HStorage_IterGetNextInfo: Iterator has invalid unit index";
            return 0;
        }
        header = &units[obj->iter.unit].header;
        Q_strncpyz(name, (char*)&header->dataStart, MAX_VARNAME);
        *type = header->type;
        obj->lastError = "HStorage_IterGetNextInfo: Success";
        return header->numelements;
    }
    obj->lastError = "HStorage_IterGetNextInfo: No more elements available";
    return 0;
}

qboolean HStorage_IterHasNext( vsMemObj_t* obj )
{

    if(obj->iter.tableindex < obj->table.numFields)
    {
        return qtrue;
    }
    return qfalse;

}

void HStorage_IterInit( vsMemObj_t* obj )
{
    obj->iter.tableindex = 0;
}


const char* HStorage_GetLastErrorInternal( vsMemObj_t* obj )
{
    return obj->lastError;
}


vsMemObj_t* HStorage_Relocate( vsMemObj_t* obj )
{
    int i, count;
    qboolean addsuc;
    char name[32];
    varType_t type;
    vsValue_t value;
    vsMemObj_t* newobj;

    if(obj->store.length == VSINITIAL_STORAGE_SIZE)
    {
        newobj = HStorage_NewObjectInternal( 4 * obj->store.length );
    }else{
        newobj = HStorage_NewObjectInternal( 2 * obj->store.length );
    }

    if( newobj == NULL )
    {
        obj->lastError = "HStorage_Relocate: Out of memory";
        return NULL;
    }

    HStorage_IterInit( obj );

    while(HStorage_IterHasNext( obj ))
    {
            count = HStorage_IterGetNextInfo( obj, name, &type );

            if(count == 0)
            {
                break;
            }

            if(HStorage_BeginDataInternal(newobj, type, name) != qtrue)
            {
                continue;
            }

            addsuc = qfalse;

            for(i = 0; i < count; i++)
            {
                if(HStorage_GetDataInternal(obj, &value) == 0)
                {
                    break;
                }
                addsuc = HStorage_AddDataInternal( newobj, &value );
                if(addsuc != qtrue)
                {
                    break;
                }
            }

            if(i == 0 || addsuc != qtrue)
            {
                continue;
            }

            switch(HStorage_EndDataInternal( newobj ))
            {
                case 0:
                    obj->lastError = "HStorage_Relocate: Not enough space after relocation. This is considered as fatal";
                    free(newobj);
                    return obj;
                case 1:
                    /* Usual success case */
                    break;
                case -1:
                    continue;
            }
    }

    memcpy(newobj->iter.tempunits, obj->iter.tempunits, sizeof(newobj->iter.tempunits));

    free(obj);
    return newobj;

}


void HStorage_WriteDataToFile(varStorage_t* vobj, const char* filename){

    fileHandle_t file;
    char infostring[8192], buf[128];
    int i;
    char name[MAX_VARNAME];
    char *string;
    int count;
    vsMemObj_t* obj;
    vsValue_t value;
    varType_t type;
    mvabuf;

    obj = vobj->memObj;

    file = FS_SV_FOpenFileWrite(va("%s.tmp", filename));
    if(!file){
        Com_PrintError("HStorage_WriteDataToFile: Can not open %s for writing\n", filename);
        return;
    }

    HStorage_IterInit( obj );

    while(HStorage_IterHasNext( obj ))
    {
            count = HStorage_IterGetNextInfo( obj, name, &type );

            if(count == 0)
            {
                continue;
            }

            *infostring = 0;
            BigInfo_SetValueForKey(infostring, "name", name);
            BigInfo_SetValueForKey(infostring, "type", HStorage_EnumToVarType(type));
            BigInfo_SetValueForKey(infostring, "count", va("%d", count));

            for(i = 0; i < count; i++)
            {
                if(HStorage_GetDataInternal(obj, &value) == 0)
                {
                    break;
                }

                if(type == VSVAR_STRING)
                {
                    string = HStorage_ValueToString(type, &value, buf, sizeof(buf));
                    BigInfo_SetEncodedValueForKey(infostring, va("v%d", i), string, strlen(string));
                }else{
                    BigInfo_SetValueForKey(infostring, va("v%d", i), HStorage_ValueToString(type, &value, buf, sizeof(buf)));
                }
            }

            Q_strcat(infostring, sizeof(infostring), "\\\n");
            FS_Write(infostring, strlen(infostring), file);
    }
    FS_FCloseFile(file);
    FS_SV_HomeCopyFile(va("%s.tmp", filename) , (char*)filename);
}

qboolean HStorage_ParseLine(varStorage_t* vobj ,char* line, int linenumber){

    int i, count, outlen;
    varType_t varType;
    char *varValue;
    vsMemObj_t* newobj;
    vsMemObj_t* obj;
    char queryString[32];
    char varname[32];
    char outbuf[8192];
    qboolean suc;

    obj = vobj->memObj;

    varType = HStorage_VarTypeToEnum( Info_ValueForKey(line, "type") );

    if(varType == VSVAR_BAD)
    {
        return qfalse;
    }

    Q_strncpyz(varname, Info_ValueForKey(line, "name"), sizeof(varname));
    if(varname[0] == '\0')
    {
        return qfalse;
    }
    count = atoi(Info_ValueForKey(line, "count"));

    /* should be usually 1. Arrays have more elements */
    if(count < 1 || count > MAX_ARRAY_SIZE)
    {
        return qfalse;
    }

    if(HStorage_BeginDataInternal(obj, varType, varname) != qtrue)
    {
        Com_PrintError("HStorage_ParseLine: %s\n", HStorage_GetLastErrorInternal( obj ));
        return qfalse;
    }

    for(i = 0; i < count; i++)
    {
        Com_sprintf(queryString, sizeof(queryString), "v%d", i);
        if(varType == VSVAR_STRING)
        {
            outlen = BigInfo_DecodedValueForKey(line, queryString, outbuf, sizeof(outbuf));
            if(outlen < sizeof(outbuf))
            {
                outbuf[outlen] = '\0';
            }else{
                outbuf[sizeof(outbuf) -1] = '\0';
            }

            vsValue_t value;
            value.string = outbuf;
            suc = HStorage_AddDataInternal( obj, &value);

        }else{
            varValue = Info_ValueForKey(line, queryString);
        }
        suc = HStorage_AddDataFromStringInternal( obj, varValue );
        if(suc != qtrue)
        {
            Com_PrintError("HStorage_ParseLine: %s\n", HStorage_GetLastErrorInternal( obj ));
            return qfalse;
        }
    }

    switch(HStorage_EndDataInternal( obj ))
    {
        default:
            Com_PrintError("HStorage_ParseLine: %s\n", HStorage_GetLastErrorInternal( obj ));
            return qfalse;

        case 0:
            newobj = HStorage_Relocate( obj );
            if(newobj == NULL)
            {
                Com_PrintError("HStorage_ParseLine: %s\n", HStorage_GetLastErrorInternal( newobj ));
                return qfalse;
            }
            obj = newobj;
            HStorage_EndDataInternal( obj );
            vobj->memObj = obj;
            vobj->relocationCount++;
            break;

        case 1:
            break;
    }

    return qtrue;
}




qboolean HStorage_LoadDataFromFile(varStorage_t* vobj, const char* filename)
{
    char buf[8192];
    buf[0] = 0;
    fileHandle_t file;
    int read;
    int error;
    int i;
    vsMemObj_t* obj;

    if(vobj->memObj == NULL)
    {
        obj = HStorage_NewObjectInternal( VSINITIAL_STORAGE_SIZE );
        if(obj == NULL)
        {
            return qfalse;
        }
        vobj->memObj = obj;
    }

    FS_SV_FOpenFileRead(filename, &file);

    if(!file){
        Com_DPrintf("HStorage_LoadDataFromFile: Can not open %s for reading\n", filename);
        return qfalse;
    }

    for(i = 0, error = 0 ;error < 32 ;i++){

        read = FS_ReadLine(buf, sizeof(buf), file);
        if(read == 0)
        {
            Com_Printf("%i lines parsed from %s, %i errors occured\n",i , filename, error);
            FS_FCloseFile(file);
            return qtrue;
        }
        if(read == -1)
        {
            Com_Printf("Can not read from %s\n", filename);
            FS_FCloseFile(file);
            return qfalse;
        }
        if(!*buf || *buf == '/' || *buf == '\n')
        {
            continue;
        }
        if(!HStorage_ParseLine(vobj, buf, i+1)) error++; //Executes the function given as argument in execute
    }

    Com_PrintWarning("More than 32 errors occured by reading from %s\n", filename);

    FS_FCloseFile(file);
    return qfalse;

}


/* Preparing the tempdata object */
qboolean HStorage_InitObject( varStorage_t* vobj, int size)
{
    vsMemObj_t* obj;
    vobj->relocationCount = 0;

    obj = HStorage_NewObjectInternal( size );
    if(obj == NULL)
    {
        vobj->memObj = NULL;
        return qfalse;
    }

    vobj->memObj = obj;
    return qtrue;
}


/* Preparing the tempdata object */
qboolean HStorage_BeginData( varStorage_t* obj, varType_t type, const char* name)
{
    return HStorage_BeginDataInternal( obj->memObj, type, name);
}
/* Writing datablocks to the tempdata object */
qboolean HStorage_AddDataFromString( varStorage_t* obj, char* varValue)
{
    return HStorage_AddDataFromStringInternal( obj->memObj, varValue);
}

qboolean HStorage_AddData( varStorage_t* obj, vsValue_t* value )
{
    return HStorage_AddDataInternal( obj->memObj, value );
}

qboolean HStorage_EndData( varStorage_t* vobj )
{

    vsMemObj_t* obj, *newobj;

    obj = vobj->memObj;

    switch(HStorage_EndDataInternal( obj ))
    {
        default:
            return qfalse;

        case 0:
            newobj = HStorage_Relocate( obj );
            if(newobj == NULL)
            {
                return qfalse;
            }
            vobj->memObj = newobj;
            vobj->relocationCount++;

            if(HStorage_EndDataInternal( newobj ) != 1)
            {
                return qfalse;
            }
            break;

        case 1:
            break;
    }
    return qtrue;

}

int HStorage_GetBeginData( varStorage_t* obj, char* name, varType_t* type )
{
    return HStorage_GetBeginDataInternal( obj->memObj, name, type );
}
/* Gets one element */
int HStorage_GetData(varStorage_t* obj, vsValue_t* value )
{
    return HStorage_GetDataInternal( obj->memObj, value );
}

const char* HStorage_GetLastError(varStorage_t* obj)
{
    return HStorage_GetLastErrorInternal( obj->memObj );
}
