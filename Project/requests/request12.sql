-- Найти все счета, баланс которых выше среднего баланса всех счетов.

SELECT 
    a.account_id, 
    a.account_type, 
    a.balance
FROM banking.Accounts a
WHERE a.balance > (
    SELECT AVG(balance)
    FROM banking.Accounts
)
ORDER BY a.balance DESC;