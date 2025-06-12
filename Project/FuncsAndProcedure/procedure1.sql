--Перевод между счетами

CREATE PROCEDURE banking.transfer_funds(
    sender_account_id INT, 
    receiver_account_id INT, 
    amount DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Проверка баланса
    IF (SELECT balance FROM banking.Accounts WHERE account_id = sender_account_id) < amount THEN
        RAISE EXCEPTION 'Insufficient funds';
    END IF;
    
    -- Обновление счетов
    UPDATE banking.Accounts 
    SET balance = balance - amount 
    WHERE account_id = sender_account_id;
    
    UPDATE banking.Accounts 
    SET balance = balance + amount 
    WHERE account_id = receiver_account_id;
    
    -- Логирование транзакции
    INSERT INTO banking.Transactions (
        sender_id, type_of_target, target_account_id, transaction_date, amount
    ) VALUES (
        sender_account_id, 'account', receiver_account_id, CURRENT_DATE, amount
    );
    
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE EXCEPTION 'Transfer failed: %', SQLERRM; --встроенная переменная с текстом ошибки
END;
$$;