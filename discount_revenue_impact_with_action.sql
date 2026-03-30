#discount_revenue_impact_with_action

SELECT 
    CASE 
        WHEN IndividualDiscount > 0 THEN 'Discount'
        ELSE 'No Discount'
    END AS discount_type,
    
    COUNT(*) AS total_orders,
    SUM(Qty * ListPrice) AS total_revenue,
    ROUND(AVG(Qty * ListPrice),2) AS avg_revenue_per_order,
    
    -- Business decision based on revenue impact
    CASE
        WHEN SUM(Qty * ListPrice) > 0 AND AVG(Qty * ListPrice) > (
            SELECT AVG(Qty * ListPrice) 
            FROM raw 
            WHERE IndividualDiscount = 0
        ) THEN 'Discount is effective: continue offers'
        ELSE 'Discount not very effective: reduce unnecessary discounts'
    END AS business_decision

FROM raw
GROUP BY discount_type;