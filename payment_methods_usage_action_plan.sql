-- Analyzed payment methods by revenue, usage, and contribution, and categorized them into usage levels.

WITH payment_stats AS (
    SELECT
        PaymentMethod,
        COUNT(*) AS total_orders,
        SUM(Qty * ListPrice) AS revenue
    FROM raw
    GROUP BY PaymentMethod
),
total_revenue AS (
    SELECT SUM(revenue) AS total_rev
    FROM payment_stats
)

SELECT
    p.PaymentMethod,
    p.total_orders,
    p.revenue,
    
    -- Average revenue per order
    ROUND(p.revenue / NULLIF(p.total_orders,0),2) AS avg_revenue_per_order,
    
    -- Percentage contribution to total revenue
    ROUND((p.revenue / t.total_rev) * 100,2) AS revenue_pct,
    
    -- Usage classification
    CASE
        WHEN p.total_orders >= 3000 THEN 'High Usage'
        WHEN p.total_orders BETWEEN 500 AND 2999 THEN 'Medium Usage'
        ELSE 'Low Usage'
    END AS usage_level,
    
    -- Action plan per method
    CASE
        WHEN p.total_orders >= 3000 THEN 'Promote with loyalty points, maintain availability, highlight convenience'
        WHEN p.total_orders BETWEEN 500 AND 2999 THEN 'Encourage adoption via small incentives and campaigns'
        ELSE 'Keep available, educate users, tie with loyalty programs or first-time offers'
    END AS action_plan,
    
    -- Insights
    CASE
        WHEN p.total_orders >= 3000 THEN 'Top-performing method driving majority revenue'
        WHEN p.total_orders BETWEEN 500 AND 2999 THEN 'Moderate adoption, potential to grow'
        ELSE 'Low adoption, niche user segment, do not remove'
    END AS insight

FROM payment_stats p
CROSS JOIN total_revenue t
ORDER BY p.revenue DESC;