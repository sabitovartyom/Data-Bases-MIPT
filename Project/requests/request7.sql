-- Получить общее количество транзакций для каждого типа цели (type_of_target)

SELECT type_of_target, COUNT(*) AS transaction_count
FROM banking.Transactions
GROUP BY type_of_target;