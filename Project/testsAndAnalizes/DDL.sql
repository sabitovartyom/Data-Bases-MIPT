CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15),
    sex CHAR(1),
    date_of_birth DATE
--    CONSTRAINT date_of_birth_not_future CHECK (date_of_birth <= date('now'))
);

CREATE TABLE Accounts (
    account_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    balance DECIMAL(15, 2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE LoanProducts (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    interest_rate DECIMAL(5, 2) NOT NULL,
    max_loan_amount DECIMAL(15, 2) NOT NULL,
    is_active BOOLEAN NOT NULL,
    valid_from DATE NOT NULL,
    valid_to DATE,
    CONSTRAINT max_loan_amount_non_negative CHECK (max_loan_amount >= 0),
    CONSTRAINT valid_dates CHECK (valid_to IS NULL OR valid_from < valid_to)
);

CREATE TABLE Loans (
    loan_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    account_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    loan_amount DECIMAL(15, 2) NOT NULL,
    start_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id),
    FOREIGN KEY (product_id) REFERENCES LoanProducts(product_id),
    CONSTRAINT loan_amount_non_negative CHECK (loan_amount >= 0)
--    CONSTRAINT start_date_not_future CHECK (start_date <= date('now'))
);

CREATE TABLE Transactions (
    transaction_id INTEGER PRIMARY KEY,
    sender_id INTEGER NOT NULL,
    type_of_target VARCHAR(50) NOT NULL CHECK (type_of_target IN ('account', 'loan')),
    target_account_id INTEGER,
    target_loan_id INTEGER,
    transaction_date DATE NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (sender_id) REFERENCES Accounts(account_id),
    FOREIGN KEY (target_account_id) REFERENCES Accounts(account_id),
    FOREIGN KEY (target_loan_id) REFERENCES Loans(loan_id),
    CONSTRAINT target_exclusivity CHECK (
        (type_of_target = 'account' AND target_account_id IS NOT NULL AND target_loan_id IS NULL) OR
        (type_of_target = 'loan' AND target_loan_id IS NOT NULL AND target_account_id IS NULL)
    ),  
--    CONSTRAINT transaction_date_not_future CHECK (transaction_date <= date('now')),
    CONSTRAINT amount_non_negative CHECK (amount >= 0)
);