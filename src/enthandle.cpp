#include "entity.h"
#include "g_public_mp.h"
#include "qcommon_io.h"


struct EntHandleList
{
  uint16_t infoIndex;
};

struct EntHandleInfo
{
  void *handle;
  uint16_t next;
  uint16_t prev;
};

EntHandleInfo g_entHandleInfoArray[MAX_GENTITIES];
EntHandleList g_entitiesHandleList[MAX_GENTITIES];
unsigned int g_entHandleInfoHead;
unsigned int g_usedEntHandle;
unsigned int g_maxUsedEntHandle;

static void RemoveEntHandleInfo(EntHandleList *entHandleList, unsigned int oldInfoIndex)
{
  EntHandleInfo *prev;
  EntHandleInfo *info;

  if ( oldInfoIndex )
  {
    if ( entHandleList->infoIndex == oldInfoIndex )
    {
      entHandleList->infoIndex = oldInfoIndex != g_entHandleInfoArray[oldInfoIndex].next ? g_entHandleInfoArray[oldInfoIndex].next : 0;
    }
    info = &g_entHandleInfoArray[oldInfoIndex];
    
    assertx(info->handle, "%d %p", oldInfoIndex, info);
    assert(g_usedEntHandle);

    info->handle = 0;
    --g_usedEntHandle;
    prev = &g_entHandleInfoArray[info->prev];
    g_entHandleInfoArray[info->next].prev = info->prev;
    prev->next = info->next;
    info->next = g_entHandleInfoHead;
    g_entHandleInfoHead = oldInfoIndex;
  }
}

static unsigned int AddEntHandleInfo(EntHandleList *entHandleList, void *handle)
{
  EntHandleInfo *infoHead;
  unsigned int infoIndexHead;
  unsigned int infoIndex;

  infoIndex = g_entHandleInfoHead;
  if ( !g_entHandleInfoHead )
  {
    Com_Error(ERR_DROP, "ENT_HANDLE_COUNT exceeded - increase size");
  }
  g_entHandleInfoHead = g_entHandleInfoArray[infoIndex].next;
  
  ++g_usedEntHandle;

  if ( (signed int)g_maxUsedEntHandle < (signed int)g_usedEntHandle )
  {
    g_maxUsedEntHandle = g_usedEntHandle;
  }

  g_entHandleInfoArray[infoIndex].handle = handle;
  infoIndexHead = entHandleList->infoIndex;
  if ( entHandleList->infoIndex )
  {
    infoHead = &g_entHandleInfoArray[infoIndexHead];
    g_entHandleInfoArray[infoIndex].next = g_entHandleInfoArray[infoIndexHead].next;
    g_entHandleInfoArray[infoIndex].prev = infoIndexHead;
    g_entHandleInfoArray[infoHead->next].prev = infoIndex;
    infoHead->next = infoIndex;
  }
  else
  {
    g_entHandleInfoArray[infoIndex].next = infoIndex;
    g_entHandleInfoArray[infoIndex].prev = infoIndex;
    entHandleList->infoIndex = infoIndex;
  }
  return infoIndex;
}



        bool __cdecl EntHandle::isDefined()
        {
            assertx((!number || g_entities[number - 1].r.inuse), "(number - 1) = %i", number - 1);
            return number != 0;
        }

        gentity_s* __cdecl EntHandle::ent( )
        {
            gentity_s* ent;
            assertx((unsigned int)number - 1 < ENTITYNUM_NONE,"%i not in [0, %i)", number -1, ENTITYNUM_NONE);
            
            ent = &g_entities[number - 1];

            assertx(ent->r.inuse, "(number - 1) = %i", number -1);

            return ent;
        }

        int __cdecl EntHandle::entnum( )
        {
          assertx((unsigned int)number - 1 < ENTITYNUM_NONE, "number - 1 doesn't index ENTITYNUM_NONE - %i not in [0, %i)", number -1, ENTITYNUM_NONE);
          assertx(g_entities[number - 1].r.inuse, "(number - 1) = %i", number -1);
          return number - 1;
        }

        void __cdecl EntHandle::setEnt(gentity_s *ent)
        {
            gentity_s *oldEnt;

            if ( isDefined() )
            {
                oldEnt = this->ent();
                if ( ent == oldEnt )
                {
                    return;
                }
                RemoveEntHandleInfo(&g_entitiesHandleList[oldEnt - g_entities], infoIndex);
                if ( !ent )
                {
                    number = 0;
                    infoIndex = 0;
                    return;
                }
            }
            else if ( !ent )
            {
                return;
            }
            infoIndex = AddEntHandleInfo(&g_entitiesHandleList[ent - g_entities], this);
            number = ent - g_entities + 1;
        }
        void __cdecl EntHandle::Shutdown()
        {
            unsigned int usedEntHandle;
            unsigned int i;

            if ( g_usedEntHandle )
            {
                Com_Printf(CON_CHANNEL_ERROR, "EntHandle BEGIN\n");
                usedEntHandle = 0;
                for ( i = 1; i < MAX_GENTITIES; ++i )
                {
                    if ( g_entHandleInfoArray[i].handle )
                    {
                        Com_Printf(CON_CHANNEL_ERROR, "%p\n", &g_entHandleInfoArray[i]);
                        ++usedEntHandle;
                    }
                }

                Com_Printf(CON_CHANNEL_ERROR, "EntHandle END\n");

                assertx(usedEntHandle == g_usedEntHandle, "%d %d", usedEntHandle, g_usedEntHandle);
                assertx(!g_usedEntHandle, "g_usedEntHandle = %i", g_usedEntHandle);
            }
        }

        void __cdecl EntHandle::Init()
        {
            unsigned int i;

            for ( i = 1; i < MAX_GENTITIES; ++i )
            {
                g_entHandleInfoArray[i].next = i + 1;
                g_entHandleInfoArray[i].handle = 0;
            }
            g_entHandleInfoArray[MAX_GENTITIES -1].next = 0;
            g_entHandleInfoHead = 1;
            memset(g_entitiesHandleList, 0, sizeof(g_entitiesHandleList));
            g_usedEntHandle = 0;
        }



void __cdecl EntHandleDissociateInternal(EntHandleList *entHandleList)
{
  EntHandleInfo *info;
  unsigned int infoIndexHead;
  unsigned int infoIndex;
  EntHandle* entHandle;

  infoIndexHead = entHandleList->infoIndex;
  if ( entHandleList->infoIndex )
  {
    entHandleList->infoIndex = 0;
    infoIndex = infoIndexHead;
    do
    {
      info = &g_entHandleInfoArray[infoIndex];

      assertx(info->handle, "%d %p", infoIndex, info);

      entHandle = (EntHandle*)info->handle;
      entHandle->number = 0;
      entHandle->infoIndex = 0;
      info->handle = 0;

      assert(g_usedEntHandle);

      --g_usedEntHandle;
      infoIndex = info->next;
    }
    while ( infoIndex != infoIndexHead );

    g_entHandleInfoArray[g_entHandleInfoArray[infoIndexHead].prev].next = g_entHandleInfoHead;
    g_entHandleInfoHead = infoIndexHead;
  }
}

void __cdecl EntHandleDissociate(gentity_s *ent)
{
  EntHandleDissociateInternal(&g_entitiesHandleList[ent - g_entities]);
}
