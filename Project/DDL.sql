-- Создание схемы
CREATE SCHEMA banking;

-- Создание таблицы Customers в схеме banking
CREATE TABLE banking.Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15),
    sex CHAR(1),
    date_of_birth DATE,
    CONSTRAINT date_of_birth_not_future CHECK (date_of_birth <= CURRENT_DATE) -- 
);

-- Создание таблицы Accounts в схеме banking
CREATE TABLE banking.Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    balance DECIMAL(15, 2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES banking.Customers(customer_id)
);

-- Создание таблицы LoanProducts в схеме banking
CREATE TABLE banking.LoanProducts (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    interest_rate DECIMAL(5, 2) NOT NULL,
    max_loan_amount DECIMAL(15, 2) NOT NULL,
    is_active BOOLEAN NOT NULL,
    valid_from DATE NOT NULL,
    valid_to DATE,
    CONSTRAINT max_loan_amount_non_negative CHECK (max_loan_amount >= 0),    -- 
    CONSTRAINT valid_dates CHECK (valid_to IS NULL OR valid_from < valid_to) -- 
);

-- Создание таблицы Loans в схеме banking
CREATE TABLE banking.Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    account_id INT NOT NULL,
    product_id INT NOT NULL,
    loan_amount DECIMAL(15, 2) NOT NULL,
    start_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES banking.Customers(customer_id),
    FOREIGN KEY (account_id) REFERENCES banking.Accounts(account_id),
    FOREIGN KEY (product_id) REFERENCES banking.LoanProducts(product_id),
    CONSTRAINT loan_amount_non_negative CHECK (loan_amount >= 0),          --
    CONSTRAINT start_date_not_future CHECK (start_date <= CURRENT_DATE)    --
);

-- Создание таблицы Transactions с двумя полями для target_id в схеме banking
CREATE TABLE banking.Transactions (
    transaction_id INT PRIMARY KEY,
    sender_id INT NOT NULL,
    type_of_target VARCHAR(50) NOT NULL CHECK (type_of_target IN ('account', 'loan')),
    target_account_id INT,
    target_loan_id INT,
    transaction_date DATE NOT NULL, --
    amount DECIMAL(15, 2) NOT NULL, --
    FOREIGN KEY (sender_id) REFERENCES banking.Accounts(account_id),
    FOREIGN KEY (target_account_id) REFERENCES banking.Accounts(account_id),
    FOREIGN KEY (target_loan_id) REFERENCES banking.Loans(loan_id),
    -- Ограничение: только одно из полей target_account_id или target_loan_id должно быть заполнено
    CONSTRAINT target_exclusivity CHECK (
        (type_of_target = 'account' AND target_account_id IS NOT NULL AND target_loan_id IS NULL) OR
        (type_of_target = 'loan' AND target_loan_id IS NOT NULL AND target_account_id IS NULL)
    ),
    CONSTRAINT transaction_date_not_future CHECK (transaction_date <= CURRENT_DATE),  --
    CONSTRAINT amount_non_negative CHECK (amount >= 0)                                --
);