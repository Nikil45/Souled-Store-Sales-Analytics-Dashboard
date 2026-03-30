-- Analyzed revenue by device type and classified performance levels with tailored action plans and insights for each device.

SELECT
    DeviceType,
    SUM(Qty * ListPrice) AS revenue,
    
    -- Usage classification based on revenue
    CASE
        WHEN SUM(Qty * ListPrice) >= 200000 THEN 'High Revenue'
        WHEN SUM(Qty * ListPrice) BETWEEN 50000 AND 199999 THEN 'Medium Revenue'
        ELSE 'Low Revenue'
    END AS revenue_level,
    
    -- Device-specific action plan
    CASE
        WHEN DeviceType = 'App Orders' THEN 'Enhance app UI, push app notifications, optimize in-app promotions'
        WHEN DeviceType = 'Store Orders' THEN 'Train staff for faster processing, enhance in-store offers, improve POS system'
        WHEN DeviceType = 'Web Orders' THEN 'Optimize website speed, simplify checkout, run desktop-targeted ads'
        ELSE 'Monitor device, optimize experience, test targeted campaigns'
    END AS action_plan,
    
    -- Device-specific insight
    CASE
        WHEN DeviceType = 'App Orders' THEN 'Majority of revenue via mobile app, high engagement potential'
        WHEN DeviceType = 'Store Orders' THEN 'Strong in-store sales, operational efficiency is key'
        WHEN DeviceType = 'Web Orders' THEN 'Desktop users generate good revenue, optimize web experience'
        ELSE 'Device contribution low, monitor trends'
    END AS insight

FROM raw
GROUP BY DeviceType
ORDER BY revenue DESC;