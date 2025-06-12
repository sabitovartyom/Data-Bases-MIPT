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
FROM Transactions AS t
JOIN Accounts AS a ON t.sender_id = a.account_id
JOIN Customers AS c ON c.customer_id = a.customer_id
WHERE t.amount >= 700;