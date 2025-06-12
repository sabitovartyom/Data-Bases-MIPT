-- Найти клиентов, у которых есть и кредиты, и транзакции

SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM banking.Customers c
JOIN banking.Loans l ON c.customer_id = l.customer_id
JOIN banking.Accounts a ON c.customer_id = a.customer_id
JOIN banking.Transactions t ON a.account_id = t.sender_id
ORDER BY c.customer_id;