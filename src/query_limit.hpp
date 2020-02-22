#pragma once
#include <map>
#include <list>

#include "sys_net.hpp"
#include "leaky_bucket.hpp"


class CQueryLimit
{
public:
    static CQueryLimit& Instance();

    /// Init the rate limit system.
    void Init();

    /// Returns true if query limiting is enabled.
    bool IsEnabled() const;

    /// Rate limit for a particular address of count \a Burst_ for time out \a PeriodUs_ nanoseconds.
    bool RateLimit(netadr_t* From_, size_t Burst_, unsigned long long PeriodUs_);
    
    /// Returns predefined bucker for "status" packet.
    CLeakyBucket& GetStatusBucket() const;
    /// Returns predefined bucker for "info" packet.
    CLeakyBucket& GetInfoBucket() const;
    /// Returns predefined bucker for "rcon" packet.
    CLeakyBucket& GetRconBucket() const;

private:
    CQueryLimit() = default;
    ~CQueryLimit() = default;

    // Calculate hash for address.
    uint32_t hashForAddress(netadr_t* Address_);
    // Create or find bucket for address.
    CLeakyBucket* bucketForAddress(netadr_t* Address_);

private:
    size_t m_maxBuckets = 0;
    std::map<uint32_t, CLeakyBucket> m_mapBuckets; // address crc32 -> bucket.

    bool m_Enabled = false;
    mutable CLeakyBucket m_infoBucket;
    mutable CLeakyBucket m_statusBucket;
    mutable CLeakyBucket m_rconBucket;
};
