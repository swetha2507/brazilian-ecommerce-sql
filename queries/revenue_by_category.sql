-- Total revenue by product category (English names)

SELECT 
    pct.product_category_name_english AS category,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN product_category_name_translation pct 
  ON p.product_category_name = pct.product_category_name
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 10;
