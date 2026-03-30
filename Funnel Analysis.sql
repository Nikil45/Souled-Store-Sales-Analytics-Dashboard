-- Created a detailed multi-dimensional sales dataset covering channel, category, product, location, courier, artist, and payment status for deep analysis

SELECT
    r.OrderFrom AS order_channel,             -- Online / Store / App
    r.Category AS category,                   -- Product category
    r.VariantProduct AS variant_product,      -- Variant-level product
    p.State_new AS state,                      -- State
    p.city_new AS city,                        -- City
    COUNT(r.OrderId) AS total_orders,         -- Total orders
    SUM(r.Qty) AS total_quantity,             -- Total quantity sold
    ROUND(SUM(r.ListPrice * r.Qty), 2) AS total_sales,  -- Total revenue
    r.Courier AS courier_name,                -- Courier service
    r.ArtistName AS artist_name,              -- Artist associated with product
    r.PaymentStatus AS payment_status         -- Paid / Pending / Cancelled etc.
FROM raw r
LEFT JOIN pincode_masters p
    ON r.Pincode = p.pincode                  -- Join for city/state info
GROUP BY
    r.OrderFrom,
    r.Category,
    r.VariantProduct,
    p.State_new,
    p.city_new,
    r.Courier,
    r.ArtistName,
    r.PaymentStatus
ORDER BY
    total_sales DESC;