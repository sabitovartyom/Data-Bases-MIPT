-- Получить всех клиентов, родившихся после 1990 года

SELECT customer_id, first_name, last_name, date_of_birth
FROM banking.Customers
WHERE date_of_birth > '1990-01-01'
ORDER BY date_of_birth;