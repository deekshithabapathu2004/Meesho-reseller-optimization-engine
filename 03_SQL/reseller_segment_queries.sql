-- Query 1: Pull all Ghost Resellers (High-potential dormant resellers)
SELECT 
    reseller_id,
    city_tier,
    total_gmv,
    days_since_last_sale,
    social_shares
FROM reseller_features_with_segments
WHERE reseller_segment = 'Ghost Reseller';

-- Query 2: Total Reseller-Led GMV by Segment (for dashboard)
SELECT 
    reseller_segment,
    COUNT(*) AS reseller_count,
    ROUND(SUM(total_gmv), 2) AS total_gmv,
    ROUND(AVG(total_gmv), 2) AS avg_gmv_per_reseller
FROM reseller_features_with_segments
GROUP BY reseller_segment
ORDER BY total_gmv DESC;

-- Query 3: Active Resellers (orders in last 30 days) by City Tier
SELECT 
    city_tier,
    COUNT(*) AS active_reseller_count,
    ROUND(AVG(total_gmv), 2) AS avg_gmv
FROM reseller_features_with_segments
WHERE orders_last_30_days >= 1
GROUP BY city_tier
ORDER BY active_reseller_count DESC;

-- Query 4: Super-Spreaders — Meesho's core GMV drivers
SELECT 
    reseller_id,
    total_gmv,
    orders_last_30_days,
    return_rate
FROM reseller_features_with_segments
WHERE reseller_segment = 'Super-Spreader'
ORDER BY total_gmv DESC;