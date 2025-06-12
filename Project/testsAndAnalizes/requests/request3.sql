SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(a.balance) AS total_balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC;