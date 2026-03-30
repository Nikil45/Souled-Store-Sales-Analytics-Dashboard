-- Analyzed city-wise performance and assigned demand levels with recommended business actions.

SELECT 
    p.city_new,
    SUM(r.Qty * r.ListPrice) AS revenue
FROM raw r
JOIN pincode_masters p	
    ON r.Pincode = p.Pincode
GROUP BY p.city_new
ORDER BY revenue DESC;


#City-Level Revenue, Demand Segmentation & Action Plan

SELECT
    p.city_new,
    COUNT(DISTINCT r.OrderId) AS total_orders,
    SUM(r.Qty) AS total_qty,
    SUM(r.Qty * r.ListPrice) AS revenue,
    
    CASE
        WHEN SUM(r.Qty * r.ListPrice) >= 200000 THEN 'High Demand'
        WHEN SUM(r.Qty * r.ListPrice) BETWEEN 50000 AND 200000 THEN 'Medium Demand'
        ELSE 'Low Demand'
    END AS demand_level,
    
    CASE
        WHEN SUM(r.Qty * r.ListPrice) >= 200000 THEN 'Fast delivery, increase inventory, targeted marketing, premium products'
        WHEN SUM(r.Qty * r.ListPrice) BETWEEN 50000 AND 200000 THEN 'Test discounts, focus online ads, introduce popular products'
        ELSE 'Reduce inventory, limit marketing, hyperlocal campaigns, check product fit'
    END AS recommended_actions

FROM raw r
JOIN pincode_masters p
    ON r.Pincode = p.Pincode
GROUP BY p.city_new
ORDER BY revenue DESC
LIMIT 50;