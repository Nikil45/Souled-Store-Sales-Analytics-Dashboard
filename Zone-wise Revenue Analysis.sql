-- Analyzed zone-wise revenue, ranked zones, and assigned performance levels with insights and action plans

WITH zone_data AS (
    SELECT
        p.Zone,
        SUM(r.Qty * r.ListPrice) AS revenue
    FROM raw r
    JOIN pincode_masters p
        ON r.Pincode = p.Pincode
    GROUP BY p.Zone
)

SELECT
    Zone,
    revenue,
    
    -- Rank zones by revenue
    RANK() OVER (ORDER BY revenue DESC) AS revenue_rank,
    
    -- Dynamic classification
    CASE
        WHEN RANK() OVER (ORDER BY revenue DESC) <= 2 THEN 'Top Performing'
        WHEN RANK() OVER (ORDER BY revenue DESC) BETWEEN 3 AND 4 THEN 'Mid Performing'
        ELSE 'Low Performing'
    END AS performance_level,
    
    -- Insight
    CASE
        WHEN RANK() OVER (ORDER BY revenue DESC) <= 2 THEN 'Zones driving highest revenue share'
        WHEN RANK() OVER (ORDER BY revenue DESC) BETWEEN 3 AND 4 THEN 'Moderate contribution with growth potential'
        ELSE 'Lowest contributing zone with demand challenges'
    END AS insight,
    
    -- Action Plan
    CASE
        WHEN RANK() OVER (ORDER BY revenue DESC) <= 2 THEN 'Expand operations, prioritize inventory, ensure fast delivery'
        WHEN RANK() OVER (ORDER BY revenue DESC) BETWEEN 3 AND 4 THEN 'Run targeted campaigns, optimize pricing and product mix'
        ELSE 'Increase awareness, test offers, analyze demand gaps'
    END AS action_plan

FROM zone_data
ORDER BY revenue DESC;