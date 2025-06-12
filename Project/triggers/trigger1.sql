-- Проверка балланса перед транзакцией

CREATE FUNCTION banking.check_transaction_balance()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF NEW.type_of_target = 'account' THEN
        -- Проверяем, достаточно ли средств на счёте отправителя
        IF (SELECT balance FROM banking.Accounts WHERE account_id = NEW.sender_id) < NEW.amount THEN
            RAISE EXCEPTION 'Insufficient funds on account % for transaction of %', NEW.sender_id, NEW.amount;
        END IF;
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER transaction_balance_check
BEFORE INSERT ON banking.Transactions
FOR EACH ROW
EXECUTE FUNCTION banking.check_transaction_balance();