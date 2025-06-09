-- Customers who made more than 1 purchase

SELECT 
    c.customer_unique_id,
    COUNT(DISTINCT o.order_id) AS num_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
HAVING num_orders > 1
ORDER BY num_orders DESC
LIMIT 10;
