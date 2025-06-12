-- Возвращает сводку по транзакциям для указанного счёта (общая сумма транзакций по типам: переводы на счета и платежи по кредитам)

CREATE FUNCTION banking.get_account_transactions_summary(acc_id INT)
RETURNS TABLE (transaction_type VARCHAR, total_amount DECIMAL(15, 2))
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        type_of_target, 
        SUM(amount) AS total_amount
    FROM banking.Transactions
    WHERE sender_id = acc_id
    GROUP BY type_of_target;
END;
$$;