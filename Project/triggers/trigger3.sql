-- Проверка возраста клиента перед выдачей кредита

CREATE FUNCTION banking.check_customer_age_for_loan()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    customer_dob DATE;
BEGIN
    -- Получаем дату рождения клиента
    SELECT date_of_birth INTO customer_dob
    FROM banking.Customers
    WHERE customer_id = NEW.customer_id;
    
    -- Проверяем, что клиент старше 18 лет на момент start_date
    IF AGE(NEW.start_date, customer_dob) < INTERVAL '18 years' THEN
        RAISE EXCEPTION 'Customer % is under 18 years old on loan start date %', NEW.customer_id, NEW.start_date;
    END IF;
    
    RETURN NEW;
END;
$$;

CREATE TRIGGER loan_age_check
BEFORE INSERT ON banking.Loans
FOR EACH ROW
EXECUTE FUNCTION banking.check_customer_age_for_loan();