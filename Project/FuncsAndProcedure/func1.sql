-- возвращает общую сумму на счетах customer

CREATE OR REPLACE FUNCTION banking.get_customer_total_balance(cust_id INT)
RETURNS DECIMAL(15, 2)
LANGUAGE plpgsql
AS $$
DECLARE
    total_balance DECIMAL(15, 2);
    currency_count INT;
    customer_currency VARCHAR(3);
BEGIN
    -- Проверяем, что все счета в одной валюте
    SELECT COUNT(DISTINCT currency) INTO currency_count
    FROM banking.Accounts
    WHERE customer_id = cust_id;

    -- Если несколько валют, то возвращаем ошибку
    IF currency_count > 1 THEN
        RAISE EXCEPTION 'Customer has accounts in different currencies.';
    END IF;

    SELECT SUM(balance) INTO total_balance
    FROM banking.Accounts
    WHERE customer_id = cust_id;

    RETURN COALESCE(total_balance, 0.00); -- Вместо NULL выводим 0.00
END;
$$;