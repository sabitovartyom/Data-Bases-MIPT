SELECT customer_id, first_name, last_name, date_of_birth
FROM Customers
WHERE date_of_birth > '1990-01-01'
ORDER BY date_of_birth;