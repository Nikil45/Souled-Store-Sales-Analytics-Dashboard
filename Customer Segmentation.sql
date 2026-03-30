-- I segmented pincodes into high, medium, and low performing groups based on revenue and suggested targeted strategies like inventory allocation and marketing optimization
-- Suggested targeted strategies like inventory allocation and marketing optimization for each segment.

SELECT Pincode,
       COUNT(*) AS total_orders,
       SUM(Qty * ListPrice) AS revenue,
       CASE 
           WHEN SUM(Qty * ListPrice) > 200000 THEN 'High'
           WHEN SUM(Qty * ListPrice) > 100000 THEN 'Medium'
           ELSE 'Low'
       END AS performance_group,
       CASE 
           WHEN SUM(Qty * ListPrice) > 200000 
                THEN 'High demand: increase inventory + aggressive marketing'
           WHEN SUM(Qty * ListPrice) > 100000 
                THEN 'Moderate demand: optimize inventory + targeted marketing'
           ELSE 
                'Low demand: reduce inventory + focus on promotions'
       END AS strategy
FROM raw
GROUP BY Pincode
ORDER BY revenue DESC;





