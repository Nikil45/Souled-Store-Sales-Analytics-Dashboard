-- Analyzed order distribution across channel, category, state, and city with percentage contribution of total orders

SELECT
    r.OrderFrom AS order_channel,        -- Store/App/Web
    r.Category AS category,              -- Product category
    p.State_new AS state,                -- State
    p.city_new AS city,                  -- City
    COUNT(r.OrderId) AS total_orders,    -- Total orders
    ROUND(COUNT(r.OrderId) * 100.0 / SUM(COUNT(r.OrderId)) OVER (), 2) AS percent_of_total
FROM raw r
LEFT JOIN main m
    ON r.Category = m.CATEGORY           -- Optional, in case you want category details from main
LEFT JOIN pincode_masters p
    ON r.Pincode = p.pincode             -- Join to get state/city info
GROUP BY
    r.OrderFrom,
    r.Category,
    p.State_new,
    p.city_new
ORDER BY
    total_orders DESC;