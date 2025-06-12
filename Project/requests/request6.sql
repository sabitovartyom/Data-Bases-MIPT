-- Найти клиентов, у которых есть счета в USD

SELECT DISTINCT c.first_name, c.last_name 
FROM banking.Accounts AS a
JOIN banking.Customers AS c ON c.customer_id = a.customer_id
WHERE a.currency = 'USD'