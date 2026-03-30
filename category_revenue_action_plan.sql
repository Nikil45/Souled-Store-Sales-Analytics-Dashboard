-- This query analyzes category revenue and suggests decisions, actions, and insights to optimize sales.

SELECT
    Category,
    SUM(Qty * ListPrice) AS revenue,
    
    -- Business decision based on revenue thresholds
    CASE
        WHEN SUM(Qty * ListPrice) >= 200000 THEN 'GOOD'
        WHEN SUM(Qty * ListPrice) < 200000 THEN 'REVIEW / IMPROVE'
    END AS business_decision,
    
    -- Action plan for each category
    CASE
        WHEN SUM(Qty * ListPrice) >= 200000 THEN 'Maintain stock, promote best-sellers, consider premium offerings'
        WHEN SUM(Qty * ListPrice) < 200000 THEN 'Keep selling, optimize marketing, test discounts, evaluate inventory allocation'
    END AS action_plan,
    
    -- Insight for reporting
    CASE
        WHEN SUM(Qty * ListPrice) >= 200000 THEN 'High revenue category driving majority of sales'
        WHEN SUM(Qty * ListPrice) < 200000 THEN 'Lower revenue category, potential for growth with targeted actions'
    END AS insight

FROM raw
GROUP BY Category
ORDER BY revenue DESC;

