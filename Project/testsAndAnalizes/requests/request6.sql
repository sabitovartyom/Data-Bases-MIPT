SELECT DISTINCT c.first_name, c.last_name 
FROM Accounts AS a
JOIN Customers AS c ON c.customer_id = a.customer_id
WHERE a.currency = 'USD';