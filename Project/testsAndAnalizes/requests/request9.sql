SELECT
    lp.product_name,
    AVG(l.loan_amount) AS avg_amount
FROM LoanProducts AS lp
LEFT JOIN Loans as l ON lp.product_id = l.product_id
GROUP BY lp.product_id
ORDER BY avg_amount DESC;