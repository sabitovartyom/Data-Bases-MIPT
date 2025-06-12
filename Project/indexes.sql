-- Индекс 1: Ускорение запросов по аккаунтам
CREATE INDEX idx_accounts_id ON banking.Accounts (account_id);

-- Индекс 2: Ускорение запросов по дате
CREATE INDEX idx_transaction_date ON banking.Transactions (transaction_date);