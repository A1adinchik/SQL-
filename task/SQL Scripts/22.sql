SELECT surname, COUNT(*) as n
FROM customers
WHERE surname IS NOT NULL
GROUP BY surname;