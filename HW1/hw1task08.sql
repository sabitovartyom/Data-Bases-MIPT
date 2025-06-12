SELECT
    UPPER(full_nm) AS full_name,
    dt,
    high_price AS price
FROM (
    SELECT
        full_nm,
        dt,
        high_price,
        ROW_NUMBER() OVER (PARTITION BY full_nm ORDER BY high_price DESC, dt ASC) AS rn
    FROM
        coins
)
WHERE
    rn = 1
ORDER BY
    price DESC,
    full_name ASC;