SELECT type_of_target, COUNT(*) AS transaction_count
FROM Transactions
GROUP BY type_of_target;