SELECT a.account_id, c.first_name, c.last_name
FROM Transactions AS t
JOIN Accounts AS a ON t.sender_id = a.account_id
JOIN Customers AS c ON a.customer_id = c.customer_id
WHERE t.type_of_target = 'loan';