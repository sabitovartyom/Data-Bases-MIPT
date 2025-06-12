-- Найти все активные кредитные продукты

SELECT product_id, product_name, max_loan_amount
FROM banking.LoanProducts
WHERE is_active = TRUE;