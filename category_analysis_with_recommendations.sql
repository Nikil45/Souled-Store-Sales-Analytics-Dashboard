-- Performed category-wise analysis calculating revenue, orders, pricing, discounts, and ranking categories by performance.
-- Added decision and action plan to identify whether to remove, improve, or continue each category.

SELECT
    r.Category,

    -- Overall metrics
    COUNT(DISTINCT r.OrderId) AS total_orders,
    SUM(r.Qty) AS total_qty,
    SUM(r.Qty * r.ListPrice) AS revenue,
    AVG(r.ListPrice) AS avg_price,
    MIN(r.ListPrice) AS min_price,
    MAX(r.ListPrice) AS max_price,
    AVG(r.IndividualDiscount) AS avg_discount,

    -- Pincode-based metrics
    COUNT(DISTINCT r.Pincode) AS num_pincodes,
    SUM(CASE WHEN r.Pincode IS NOT NULL THEN r.Qty ELSE 0 END) AS qty_with_pincode,

    -- Ranking
    RANK() OVER (ORDER BY SUM(r.Qty * r.ListPrice) DESC) AS revenue_rank,

    -- Final decision
    CASE 
        WHEN SUM(r.Qty * r.ListPrice) < 50000 
             AND AVG(r.IndividualDiscount) > 20 
        THEN 'REMOVE'
        WHEN SUM(r.Qty * r.ListPrice) BETWEEN 50000 AND 200000 
        THEN 'IMPROVE'
        ELSE 'GOOD'
    END AS decision,

    -- Suggested action plan
    CASE 
        WHEN SUM(r.Qty * r.ListPrice) < 50000 
             AND AVG(r.IndividualDiscount) > 20 
        THEN 'Consider removing product, reduce inventory, limit marketing'
        WHEN SUM(r.Qty * r.ListPrice) BETWEEN 50000 AND 200000 
        THEN 'Improve marketing, test discounts, optimize inventory'
        ELSE 'Maintain, continue promotion, expand in high-demand areas'
    END AS action_plan

FROM raw r
GROUP BY r.Category
ORDER BY revenue DESC;