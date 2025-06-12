-- Найти все счета, с которых были отправлены транзакции на оплату кредитов

SELECT a.account_id, c.first_name, c.last_name
FROM banking.Transactions AS t
JOIN banking.Accounts AS a ON t.sender_id = a.account_id
JOIN banking.Customers AS c ON a.customer_id = c.customer_id
WHERE t.type_of_target = 'loan'