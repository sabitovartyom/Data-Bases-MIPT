-- Показывает информацию о клиентах, их кредитах и кредитных продуктах
CREATE VIEW banking.Customer_Loan_Summary AS
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    l.loan_id,
    l.loan_amount,
    lp.product_name,
    l.start_date,
    lp.is_active AS product_active
FROM 
    banking.Customers c
    INNER JOIN banking.Loans l ON c.customer_id = l.customer_id
    INNER JOIN banking.LoanProducts lp ON l.product_id = lp.product_id;

-- количество и общая сумма по каждому LoanProducts
CREATE VIEW banking.LoanProducts_Summary AS
SELECT
    lp.product_name AS Loan_Name,
    COUNT(l.loan_id),
    SUM(l.loan_amount)
FROM
    banking.LoanProducts AS lp
    JOIN banking.Loans as l ON lp.product_id = l.product_id
GROUP BY
    lp.product_id
ORDER BY
    count;

-- Показывает детали транзакций, включая переводы между счетами и платежи по кредитам
CREATE VIEW banking.Account_Transaction_Overview AS
SELECT 
    t.transaction_id,
    t.sender_id AS sender_account_id,
    a.account_type AS sender_account_type,
    t.type_of_target,
    t.target_account_id,
    t.target_loan_id,
    t.amount,
    t.transaction_date,
    CASE 
        WHEN t.type_of_target = 'account' THEN ta.account_type
        ELSE NULL
    END AS target_account_type
FROM 
    banking.Transactions t
    INNER JOIN banking.Accounts a ON t.sender_id = a.account_id
    LEFT JOIN banking.Accounts ta ON t.target_account_id = ta.account_id;