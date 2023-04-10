SELECT product_id, COUNT(*) as total_sales
FROM sales
WHERE customer_id IS NULL
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 1;