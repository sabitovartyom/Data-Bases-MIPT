-- Получить сумму балансов всех счетов для каждого клиента пор убыванию

SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(a.balance) AS total_balance
FROM banking.Customers c
JOIN banking.Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC;