SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.sender_id
ORDER BY c.customer_id;