-- Для каждой транзакции показать её сумму и процент от общей суммы транзакций, 
-- отправленных с того же счёта.

SELECT 
    t.transaction_id, 
    t.sender_id, 
    t.amount, 
    ROUND( 
        (t.amount / SUM(t.amount) OVER (PARTITION BY t.sender_id)) * 100, 2
    ) AS percentage_of_sender_total
FROM banking.Transactions t
ORDER BY t.sender_id, t.transaction_id;