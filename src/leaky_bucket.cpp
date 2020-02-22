#include "leaky_bucket.hpp"

#include <algorithm>

#include "qcommon.hpp"
#include "query_limit.hpp"


using namespace std;

CLeakyBucket::CLeakyBucket(const netadr_t* Address_)
{
    if (!Address_)
        return;

    m_type = Address_->type;
    switch (m_type)
    {
    case NA_IP:
        memcpy(m_ip.v4, Address_->ip, sizeof(m_ip.v4));
        break;

    case NA_IP6:
        memcpy(m_ip.v6, Address_->ip6, sizeof(m_ip.v6));
        break;

    default: break;
    }
}


bool CLeakyBucket::IsAddressMatches(const netadr_t& Address_) const
{
    if (Address_.type != m_type)
        return false;

    switch (m_type)
    {
    case NA_IP:
        return !memcmp(m_ip.v4, Address_.ip, sizeof(m_ip.v4));

    case NA_IP6:
        return !memcmp(m_ip.v6, Address_.ip6, sizeof(m_ip.v6));

    default: break;
    }

    return false;
}


bool CLeakyBucket::RateLimit(size_t Burst_, unsigned long long PeriodMs_)
{
    if (!CQueryLimit::Instance().IsEnabled())
        return false;

    // Remove timed out requests.
    UpdateTimeouts();

    if (Burst_ <= m_vTimeouts.size()) // Can not accept ongoing packet.
        return true;

    m_vTimeouts.push_back(com_uFrameTime + PeriodMs_);
    return false;
}


bool CLeakyBucket::IsEmpty() const
{
    return m_vTimeouts.empty();
}


void CLeakyBucket::UpdateTimeouts()
{
    unsigned long long now = com_uFrameTime;
    remove_if(m_vTimeouts.begin(), m_vTimeouts.end(), [now](const unsigned long long& Timeout_) { return Timeout_ < now; });
}
