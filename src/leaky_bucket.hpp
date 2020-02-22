#pragma once
#include <vector>

#include "sys_net.hpp"


class CLeakyBucket
{
public:
    CLeakyBucket(const netadr_t* Address_ = nullptr);
    ~CLeakyBucket() = default;

    /// Returns true if self address matches specified address \a Address_.
    bool IsAddressMatches(const netadr_t& Address_) const;

    /// Should packet be limited to a count of \a Burst_ packets with timeout \a PeriodMs_.
    bool RateLimit(size_t Burst_, unsigned long long PeriodMs_);

    /// Returns true if there are no timeouts for this sender.
    bool IsEmpty() const;

    /// Removes timed out counters.
    void UpdateTimeouts();

private:
    netadrtype_t m_type = NA_BAD;
    union { std::byte v4[4]; std::byte v6[16]; } m_ip;
    std::vector<unsigned long long> m_vTimeouts; // vector(timeout usec).
};