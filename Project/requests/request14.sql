-- Найти клиентов, у которых есть хотя бы одна транзакция.

SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name
FROM banking.Customers c
WHERE EXISTS (
    SELECT 1
    FROM banking.Accounts a
    JOIN banking.Transactions t ON a.account_id = t.sender_id
    WHERE a.customer_id = c.customer_id
)
ORDER BY c.customer_id;