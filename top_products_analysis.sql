-- Identified top-selling products based on quantity and provided insights with action plans for inventory and marketing decisions.

SELECT
    ParentProduct,
    SUM(Qty) AS total_sold,
    
    -- Key insight
    CASE
        WHEN SUM(Qty) > 1000 THEN 'High demand product driving majority of sales'
        WHEN SUM(Qty) BETWEEN 500 AND 1000 THEN 'Moderate demand, growing popularity'
        ELSE 'Lower demand relative to top sellers'
    END AS insight,
    
    -- Business decision
    CASE
        WHEN SUM(Qty) > 1000 THEN 'Prioritize restocking, allocate more marketing budget, consider premium variants'
        WHEN SUM(Qty) BETWEEN 500 AND 1000 THEN 'Monitor inventory, run targeted promotions, test bundling offers'
        ELSE 'Evaluate product placement, consider discounts or cross-sell campaigns'
    END AS action_plan

FROM raw
GROUP BY ParentProduct
ORDER BY total_sold DESC
LIMIT 5;