-- Найти клиентов, у которых сумма транзакций по счетам превышает 2000.

SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(t.amount) AS total_transactions
FROM banking.Customers c
JOIN banking.Accounts a ON c.customer_id = a.customer_id
JOIN banking.Transactions t ON a.account_id = t.sender_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(t.amount) > 2000
ORDER BY total_transactions DESC;