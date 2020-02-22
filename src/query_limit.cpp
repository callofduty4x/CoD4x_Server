#include "query_limit.hpp"

#include "qcommon_io.hpp"
#include "sv_main.hpp"
#include "crc.hpp"


using namespace std;

CQueryLimit& CQueryLimit::Instance()
{
    static CQueryLimit queryLimit;
    return queryLimit;
}


void CQueryLimit::Init()
{
    if (!sv_queryIgnoreMegs->integer)
    {
        Com_Printf(CON_CHANNEL_SERVER, "QUERY LIMIT: Querylimiting is disabled\n");
        return;
    }

    int requestedSize = sv_queryIgnoreMegs->integer * 1024 * 1024;
    m_maxBuckets = requestedSize / sizeof(CLeakyBucket);

    Com_Printf(CON_CHANNEL_SERVER, "QUERY LIMIT: Querylimiting is enabled\n");
    m_Enabled = true;
}


bool CQueryLimit::RateLimit(netadr_t* From_, size_t Burst_, unsigned long long PeriodUs_)
{
    if (!IsEnabled() || !From_)
        return false;

    if (Sys_IsLANAddress(From_))
        return false;

    CLeakyBucket* bucket = bucketForAddress(From_);
    if (!bucket)
        return false;

    bool result = bucket->RateLimit(Burst_, PeriodUs_);
    
    // Cleanup empty buckets.
    auto it = m_mapBuckets.begin();
    for (; it != m_mapBuckets.end(); ++it)
    {
        it->second.UpdateTimeouts();
        if (it->second.IsEmpty())
            it = m_mapBuckets.erase(it);
    }

    return result;
}


bool CQueryLimit::IsEnabled() const
{
    return m_Enabled;
}


CLeakyBucket& CQueryLimit::GetStatusBucket() const
{
    return m_statusBucket;
}


CLeakyBucket& CQueryLimit::GetInfoBucket() const
{
    return m_infoBucket;
}


CLeakyBucket& CQueryLimit::GetRconBucket() const
{
    return m_rconBucket;
}


uint32_t CQueryLimit::hashForAddress(netadr_t* Address_)
{
    if (!Address_)
        return 0;

    switch (Address_->type)
    {
    case NA_IP:
        return crc32_16bytes(Address_->ip, sizeof(Address_->ip), 0);

    case NA_IP6:
        return crc32_16bytes(Address_->ip6, sizeof(Address_->ip6), 0);

    default: break;
    }

    return 0;
}


CLeakyBucket* CQueryLimit::bucketForAddress(netadr_t* Address_)
{
    uint32_t hash = hashForAddress(Address_);
    if (hash == 0 || !Address_)
        return nullptr;

    auto it = m_mapBuckets.find(hash);
    if (it != m_mapBuckets.end())
    {
        // Hash exists, have to check if same IP...
        if (it->second.IsAddressMatches(*Address_))
            return &it->second;
    }

    // Add new bucket (if we can).
    if (m_mapBuckets.size() >= m_maxBuckets)
        return nullptr;

    m_mapBuckets.emplace(hash, CLeakyBucket(Address_));
    return &m_mapBuckets.at(hash);
}
