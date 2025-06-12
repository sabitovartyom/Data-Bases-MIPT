SELECT
    RANK() OVER (ORDER BY total_vol DESC) AS rank,
    dt,
    total_vol AS vol
FROM (
    SELECT
        dt,
        SUM(vol) AS total_vol 
    FROM
        coins
    GROUP BY
        dt
) AS daily_volumes
ORDER BY
    total_vol DESC
LIMIT 10;