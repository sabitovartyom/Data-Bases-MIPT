-- Получить все транзакции, где сумма превышает 700

SELECT
    t.transaction_id,
    c.first_name AS sender_first_name,
    c.last_name AS sender_last_name,
    t.type_of_target,
    CASE 
        WHEN t.type_of_target = 'loan' THEN t.target_loan_id
        WHEN t.type_of_target = 'account' THEN t.target_account_id
    END AS trgt, 
    t.amount
FROM banking.Transactions AS t
JOIN banking.Accounts AS a ON t.sender_id = a.account_id
JOIN banking.Customers AS c ON c.customer_id = a.account_id
WHERE t.amount >= 700;