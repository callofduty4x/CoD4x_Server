#include "bg.h"

void BG_AddPredictableEventToPlayerstate(const BGEvent EventNum_, const byte EventParam_, gclient_t* Client_)
{
    if (EventNum_)
    {
        const int eventIdx = Client_->ps.eventSequence & 3;
        Client_->ps.events[eventIdx] = EventNum_;
        Client_->ps.eventParms[eventIdx] = EventParam_;
        ++Client_->ps.eventSequence;
    }
}
