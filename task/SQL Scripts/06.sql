SELECT customer_id, EXTRACT(MONTH FROM birth_date) || '-' || EXTRACT(DAY FROM birth_date) AS birth_month_day
FROM customers
ORDER BY EXTRACT(MONTH FROM birth_date), EXTRACT(DAY FROM birth_date);