SELECT product_id, AVG(price) AS avg_price
FROM prices
WHERE start_date >= '2020-01-01' AND end_date <= '2020-12-31'
GROUP BY product_id
ORDER BY product_id ASC;