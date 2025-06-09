-- Top 10 sellers with the highest number of items sold

SELECT 
    s.seller_id,
    COUNT(*) AS total_items_sold
FROM order_items oi
JOIN sellers s ON oi.seller_id = s.seller_id
GROUP BY s.seller_id
ORDER BY total_items_sold DESC
LIMIT 10;
