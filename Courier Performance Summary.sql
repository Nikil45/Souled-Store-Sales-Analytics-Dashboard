-- Analyzed courier performance by total orders, successful deliveries, cancellations, and success rate percentage

SELECT
    COALESCE(NULLIF(r.Courier, ''), 'Unknown / Not Assigned') AS courier_name,
    COUNT(r.OrderId) AS total_orders,
    COUNT(CASE 
        WHEN r.PaymentStatus = 'Paid' 
        AND r.OrderLineItemStatus = 'Delivered' 
        THEN 1 
    END) AS successful_deliveries,
    COUNT(CASE 
        WHEN r.OrderLineItemStatus = 'Cancelled' 
        THEN 1 
    END) AS cancelled_orders,
    ROUND(
        COUNT(CASE 
            WHEN r.PaymentStatus = 'Paid' 
            AND r.OrderLineItemStatus = 'Delivered' 
            THEN 1 
        END) * 100.0 / COUNT(r.OrderId), 
    2) AS success_rate_percent
FROM raw r
GROUP BY COALESCE(NULLIF(r.Courier, ''), 'Unknown / Not Assigned')
ORDER BY success_rate_percent DESC;