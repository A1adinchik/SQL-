SELECT DISTINCT customer_id
FROM sales
WHERE sale_date >= '2020-02-01' AND sale_date <= '2020-02-29'
ORDER BY customer_id ASC;