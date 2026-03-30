-- Analyzed order statuses by volume and percentage to evaluate fulfillment performance.

SELECT
    OrderLineItemStatus,
    COUNT(*) AS total_orders,
    
    -- Percentage contribution
    ROUND((COUNT(*) * 100.0 / SUM(COUNT(*)) OVER()),2) AS order_pct,
    
    -- Insight
    CASE
        WHEN OrderLineItemStatus = 'Cancelled' THEN 'High cancellations indicate potential issues in delivery, product quality, or user experience'
        WHEN OrderLineItemStatus = 'Delivered' THEN 'Successful orders showing strong fulfillment performance'
        WHEN OrderLineItemStatus = 'Returned' THEN 'Returns may indicate product mismatch or quality concerns'
        ELSE 'Other order statuses require monitoring'
    END AS insight,
    
    -- Business decision / action plan
    CASE
        WHEN OrderLineItemStatus = 'Cancelled' THEN 'Investigate cancellation reasons, improve delivery timelines, enhance product descriptions and UX'
        WHEN OrderLineItemStatus = 'Delivered' THEN 'Maintain service quality, promote best-performing products, ensure consistent delivery experience'
        WHEN OrderLineItemStatus = 'Returned' THEN 'Improve product quality, refine sizing/details, reduce return rates with better information'
        ELSE 'Monitor status trends and optimize operations accordingly'
    END AS action_plan

FROM raw
GROUP BY OrderLineItemStatus
ORDER BY total_orders DESC;