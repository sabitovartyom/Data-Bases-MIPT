-- Обновление баланса счёта после транзакции

CREATE FUNCTION banking.update_account_balances()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF NEW.type_of_target = 'account' THEN
        -- Списываем сумму с баланса отправителя
        UPDATE banking.Accounts
        SET balance = balance - NEW.amount
        WHERE account_id = NEW.sender_id;
        -- Добавляем сумму на баланс получателя
        UPDATE banking.Accounts
        SET balance = balance + NEW.amount
        WHERE account_id = NEW.target_account_id;
    END IF;
    RETURN NULL;
END;
$$;

CREATE TRIGGER transaction_balance_update
AFTER INSERT ON banking.Transactions
FOR EACH ROW
EXECUTE FUNCTION banking.update_account_balances();