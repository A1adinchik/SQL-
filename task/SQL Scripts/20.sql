SELECT 
    TO_CHAR(sale_date, 'MM') AS month, 
    COUNT(*) AS sales_count
FROM sales 
WHERE EXTRACT(YEAR FROM sale_date) = 2020
GROUP BY month