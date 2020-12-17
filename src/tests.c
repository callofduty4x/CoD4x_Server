#include "tests.h"
#include "q_shared.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "msg.h"
#include "server.h"
#include "cmd.h"
#include "dobj.h"
#include "xassets/xmodel.h"
//#include "g_scr_vehicle.h"
#include "g_shared.h"

extern byte* archivedEntityFields[];
extern byte* playerStateFields[];
extern byte* clientStateFields[];


//#define ASSERT_ONMISMATCH


void MSG_TestDeltaAE(snapshotInfo_t* snapInfo, int time, archivedEntity_t* baseline, archivedEntity_t *to, int refent)
{
/*
	msg_t msg;
	byte databuf[0x20000];
	archivedEntity_t rto;
	memset(&rto, 0, sizeof(rto));

	MSG_Init(&msg, databuf, sizeof(databuf));

	msg.lastRefEntity = refent;

        if ( MSG_WriteDeltaArchivedEntity(snapInfo, &msg, time, baseline, to, 0) == 0)
	{
		return;
	}

	msg.lastRefEntity = refent;
	msg.bit = 0;
        int newnum = MSG_ReadEntityIndex(&msg, 10);

        MSG_ReadDeltaArchivedEntity( &msg, time, baseline, &rto, newnum);

	to->s.lerp.eFlags &= MASK_EFLAGS;

	int lc = MSG_WriteDelta_LastChangedField((byte*)&rto, (byte*)to, (netField_t*)&archivedEntityFields, 69);

	assert(msg.cursize == msg.readcount);
	assert(!msg.overflowed);

	bool equal = lc == -1;
#ifdef ASSERT_ONMISMATCH
	assert(equal);
#else
	if(!equal)
	{
		FS_WriteFile("ae_from.bin", baseline, sizeof(archivedEntity_t));
		FS_WriteFile("ae_to.bin", to, sizeof(archivedEntity_t));
	}
#endif
*/
}

void MSG_TestDeltaPS(snapshotInfo_t* snapInfo, int time, playerState_t *baseline, playerState_t *to)
{
/*
	msg_t msg;
	byte databuf[0x20000];
	playerState_t rto;
	memset(&rto, 0, sizeof(rto));

	MSG_Init(&msg, databuf, sizeof(databuf));

        MSG_WriteDeltaPlayerstate(snapInfo, &msg, time, baseline, to);

	msg.bit = 0;

        MSG_ReadDeltaPlayerstate(0, &msg, time, baseline, &rto, 0);


	int lc = MSG_WriteDelta_LastChangedField((byte*)&rto, (byte*)to, (netField_t*)&playerStateFields, 141);

	assert(msg.cursize == msg.readcount);
	assert(!msg.overflowed);

	bool equal = lc == -1;
#ifdef ASSERT_ONMISMATCH
	assert(equal);
#else
	if(!equal)
	{
		if(baseline)
		{
		    FS_WriteFile("ps_from.bin", baseline, sizeof(playerState_t));
		}else{
		    FS_WriteFile("ps_from.bin", "NULL", 4);
		}
		FS_WriteFile("ps_to.bin", to, sizeof(playerState_t));
	}
#endif
*/
}

void MSG_TestDeltaCS(snapshotInfo_t* snapInfo, int time, clientState_t* baseline, clientState_t *to)
{
/*
	msg_t msg;
	byte databuf[0x20000];
	clientState_t rto;
	memset(&rto, 0, sizeof(rto));

	MSG_Init(&msg, databuf, sizeof(databuf));

	msg.lastRefEntity = -1;

        MSG_WriteDeltaClient(snapInfo, &msg, time, baseline, to, true);

	msg.lastRefEntity = -1;
	msg.bit = 0;


	if(!MSG_ReadBit(&msg))
	{
		return; //No change
	}

        int newnum = MSG_ReadEntityIndex(&msg, 6);

        MSG_ReadDeltaClient( &msg, time, baseline, &rto, newnum);

	int lc = MSG_WriteDelta_LastChangedField((byte*)&rto, (byte*)to, (netField_t*)&clientStateFields, 24);

	assert(msg.cursize == msg.readcount);
	assert(!msg.overflowed);

	bool equal = lc == -1;
#ifdef ASSERT_ONMISMATCH
	assert(equal);
#else
	if(!equal)
	{
		if(baseline)
		{
		    FS_WriteFile("cs_from.bin", baseline, sizeof(clientState_t));
		}else{
		    FS_WriteFile("cs_from.bin", "NULL", 4);
		}
		FS_WriteFile("cs_to.bin", to, sizeof(clientState_t));
	}
#endif
*/
}


/*
void MSG_TestReadEntity()
{
	msg_t msg;
	byte databuf[0x20000];
	archivedEntity_t rto;
	archivedEntity_t baseline;
	memset(&rto, 0, sizeof(rto));
	memset(&baseline, 0, sizeof(baseline));

	byte* filedata;

	MSG_Init(&msg, databuf, sizeof(databuf));

	msg.lastRefEntity = 394;
	int len = FS_ReadFile("msg_dump.bin", (void**)&filedata);

	if(len > 0){
		MSG_WriteData(&msg, filedata, len);
	}else{
		Com_Printf(0,"Empty/Ivalid file\n");
		return;
	}


	msg.bit = 0;

        int newnum = MSG_ReadEntityIndex(&msg, 10);

        MSG_ReadDeltaArchivedEntity( &msg, 0, &baseline, &rto, newnum);

	Com_Printf(0,"Entity %d\n", newnum);

	assert(msg.cursize == msg.readcount);
	assert(!msg.overflowed);
}
*/
/*
void MSG_TestReadEntity()
{
	archivedEntity_t baseline;
	archivedEntity_t *to;
	snapshotInfo_t snapInfo;

	memset(&baseline, 0, sizeof(baseline));
	memset(&snapInfo, 0, sizeof(snapInfo));

	snapInfo.archived = true;

	int len = FS_ReadFile("entity_to.bin", (void**)&to);

	if(len < 1){
		Com_Printf(0,"Empty/Ivalid file\n");
		return;
	}

	MSG_TestDelta(&snapInfo, 0, &baseline, to, -1);

}

*/


void MSG_TestPSCode()
{
/*
	playerState_t *to, *from;
	snapshotInfo_t snapInfo;

	memset(&snapInfo, 0, sizeof(snapInfo));

	snapInfo.archived = true;


	int len;
	len = FS_ReadFile("ps_from.bin", (void**)&from);
	if(len < 1){
		Com_Printf(0,"Empty/Ivalid file\n");
		return;
	}
	len = FS_ReadFile("ps_to.bin", (void**)&to);
	if(len < 1){
		Com_Printf(0,"Empty/Ivalid file\n");
		return;
	}

	MSG_TestDeltaPS(&snapInfo, 286450, from, to);

	FS_FreeFile(from);
	FS_FreeFile(to);
*/
}

/*
void Test_MSG_WriteReadLong()
{
    byte buffer[128];
    byte s1[2];
    byte s2[2];

    msg_t msg;
    MSG_Init(&msg, buffer, sizeof(buffer));
    MSG_WriteLong(&msg, 0xdeadbee7);
    s1[0] = buffer[0];
    s1[1] = buffer[1];
    s2[0] = buffer[2];
    s2[1] = buffer[3];
    MSG_InitReadOnlySplit(&msg, s1, sizeof(s1), s2, sizeof(s2));
    int t = MSG_ReadLong(&msg);
    assert(t == 0xdeadbee7);



}


int __cdecl SV_DObjGetBoneIndex_Debug(struct gentity_s *ent, unsigned int boneName)
{
  DObj *obj;
  char index;

  obj = Com_GetServerDObj(ent->s.number);

  DObjDumpInfo(obj);

  if ( obj )
  {
    index = -2;
    if ( DObjGetBoneIndex(obj, boneName, &index, -1) )
    {
      return (uint8_t)index;
    }
  }
  return -1;
}


void FindAndPrintDObj_f()
{
    DObj* obj;
    XModel* model;
    int i, k;

    const char* n = Cmd_Argv(1);
    if(*n == 0)
    {
	return;
    }

    for(i = 0; i < ARRAY_COUNT(objBuf); ++i)
    {
	obj = &objBuf[i];

	if(obj->models == NULL)
	{
	    continue;
	}
	for(k = 0; k < obj->numModels; ++k)
	{
		model = obj->models[k];
	}
	
    }

}


void DumpVehicleInfo_f()
{
    int i;
    Com_Printf(CON_CHANNEL_SCRIPT, "vehicle: type\n");
__asm__("int $3");
    for(i = 0; i < 32; ++i)
    {
	Com_Printf(CON_CHANNEL_SCRIPT, "%s: %d\n", s_vehicleInfos[i].name, s_vehicleInfos[i].type);
    }

}


*/

#include "cscr_variable.h"
#include "cscr_stringlist.h"

void DumpVariable_f(){
/*
    unsigned int scrstring = SL_GetString("script", 0);
    unsigned int id = FindVariableIndexInternal(gScrVarPub.levelId, scrstring);
    unsigned int newstring = GetVariableName(id);
    Com_Printf(0, "^1Script string is: %s\n", SL_ConvertToString(newstring));
*/

}



void Tests_Init()
{
//	Cmd_AddCommand("testpscode", MSG_TestPSCode);
/*	Cmd_AddCommand("testmsgreadlong", Test_MSG_WriteReadLong);
	Cmd_AddCommand("printdobj", FindAndPrintDObj_f);
	Cmd_AddCommand("dumpvehicles", DumpVehicleInfo_f);
*/
//	Cmd_AddCommand("dumpvariable", DumpVariable_f);
}



