-- Установка схемы
-- SET search_path TO banking;

-- Заполнение таблицы Customers (10 записей)
INSERT INTO banking.Customers (customer_id, first_name, last_name, phone_number, sex, date_of_birth) VALUES
(1, 'John', 'Doe', '1234567890', 'M', '1990-05-15'),
(2, 'Jane', 'Smith', '0987654321', 'F', '1985-08-22'),
(3, 'Alex', 'Brown', '5555555555', 'M', '1995-03-10'),
(4, 'Emily', 'Johnson', '1112223333', 'F', '1992-11-30'),
(5, 'Michael', 'Lee', '4445556666', 'M', '1988-07-19'),
(6, 'Sarah', 'Davis', '7778889999', 'F', '1993-02-14'),
(7, 'David', 'Wilson', '2223334444', 'M', '1980-09-25'),
(8, 'Laura', 'Martinez', '6667778888', 'F', '1997-04-05'),
(9, 'James', 'Taylor', '9990001111', 'M', '1983-12-12'),
(10, 'Anna', 'Clark', '3334445555', 'F', '1990-06-08');

-- Заполнение таблицы Accounts (15 записей)
INSERT INTO banking.Accounts (account_id, customer_id, account_type, balance, currency) VALUES
(1, 1, 'Savings', 5000.00, 'USD'),
(2, 1, 'Checking', 2000.00, 'USD'),
(3, 2, 'Savings', 3000.00, 'EUR'),
(4, 2, 'Checking', 1500.00, 'EUR'),
(5, 3, 'Checking', 1000.00, 'USD'),
(6, 3, 'Savings', 4000.00, 'USD'),
(7, 4, 'Savings', 6000.00, 'USD'),
(8, 5, 'Checking', 2500.00, 'USD'),
(9, 6, 'Savings', 3500.00, 'EUR'),
(10, 7, 'Checking', 1800.00, 'USD'),
(11, 7, 'Savings', 7000.00, 'USD'),
(12, 8, 'Savings', 4500.00, 'EUR'),
(13, 9, 'Checking', 2200.00, 'USD'),
(14, 9, 'Savings', 3800.00, 'USD'),
(15, 10, 'Savings', 5200.00, 'EUR');

-- Заполнение таблицы LoanProducts (5 записей)
INSERT INTO banking.LoanProducts (product_id, product_name, interest_rate, max_loan_amount, is_active, valid_from, valid_to) VALUES
(1, 'Personal Loan', 5.5, 10000.00, TRUE, '2023-01-01', '2025-12-31'),
(2, 'Car Loan', 4.0, 20000.00, TRUE, '2023-01-01', NULL),
(3, 'Home Loan', 3.5, 50000.00, FALSE, '2022-01-01', '2023-12-31'),
(4, 'Education Loan', 6.0, 15000.00, TRUE, '2024-01-01', NULL),
(5, 'Business Loan', 7.0, 30000.00, TRUE, '2023-06-01', '2026-06-01');

-- Заполнение таблицы Loans (8 записей)
INSERT INTO banking.Loans (loan_id, customer_id, account_id, product_id, loan_amount, start_date) VALUES
(1, 1, 1, 1, 8000.00, '2024-01-15'),
(2, 2, 3, 2, 15000.00, '2024-02-20'),
(3, 3, 5, 1, 5000.00, '2024-03-10'),
(4, 4, 7, 4, 12000.00, '2024-04-05'),
(5, 5, 8, 2, 18000.00, '2024-05-12'),
(6, 6, 9, 5, 25000.00, '2024-06-18'),
(7, 7, 10, 1, 9000.00, '2024-07-22'),
(8, 8, 12, 4, 10000.00, '2024-08-30');

-- Заполнение таблицы Transactions (12 записей)
INSERT INTO banking.Transactions (transaction_id, sender_id, type_of_target, target_account_id, target_loan_id, transaction_date, amount) VALUES
(1, 1, 'account', 2, NULL, '2024-03-01', 500.00),    -- Перевод между счетами
(2, 2, 'loan', NULL, 1, '2024-03-05', 1000.00),      -- Платёж по кредиту
(3, 3, 'account', 4, NULL, '2024-03-10', 200.00),    -- Перевод между счетами
(4, 1, 'loan', NULL, 2, '2024-03-15', 1500.00),      -- Платёж по кредиту
(5, 5, 'account', 6, NULL, '2024-04-01', 300.00),    -- Перевод между счетами
(6, 7, 'loan', NULL, 3, '2024-04-10', 800.00),       -- Платёж по кредиту
(7, 8, 'account', 9, NULL, '2024-05-05', 400.00),    -- Перевод между счетами
(8, 10, 'loan', NULL, 4, '2024-05-15', 1200.00),     -- Платёж по кредиту
(9, 11, 'account', 12, NULL, '2024-06-01', 600.00),  -- Перевод между счетами
(10, 13, 'loan', NULL, 5, '2024-06-10', 2000.00),    -- Платёж по кредиту
(11, 14, 'account', 15, NULL, '2024-07-01', 700.00), -- Перевод между счетами
(12, 15, 'loan', NULL, 6, '2024-07-15', 2500.00);    -- Платёж по кредиту