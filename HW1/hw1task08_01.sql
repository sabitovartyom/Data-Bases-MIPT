SELECT 
    UPPER(full_nm) AS full_name, 
    dt, 
    high_price AS price
FROM 
    coins
WHERE 
    (symbol, high_price) IN (
        SELECT 
            symbol, 
            MAX(high_price) 
        FROM 
            coins 
        GROUP BY 
            symbol
    )
ORDER BY 
    price DESC, 
    full_name;



-- FROM -- WHERE -- SELECT -- ORDERED BY. 