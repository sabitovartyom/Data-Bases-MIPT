SELECT 
    l.loan_id, 
    c.first_name, 
    c.last_name, 
    lp.product_name, 
    l.loan_amount, 
    l.start_date
FROM Loans AS l
JOIN Customers AS c ON l.customer_id = c.customer_id
JOIN LoanProducts AS lp ON l.product_id = lp.product_id
WHERE l.start_date > '2024-05-01'
ORDER BY l.start_date
LIMIT 5;