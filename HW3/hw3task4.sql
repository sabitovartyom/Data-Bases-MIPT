-- Вычисляем доход, полученный с каждого объекта
WITH FacilityRevenue AS (
    SELECT
        f.name,
        SUM(CASE
            WHEN b.memid = 0 THEN b.slots * f.guestcost
            ELSE b.slots * f.membercost
        END) AS revenue
    FROM
        cd.facilities AS f
    LEFT JOIN
        cd.bookings AS b ON f.facid = b.facid
    GROUP BY
        f.name
),

-- Разделяем объекты на группы "high", "average", "low" на основе их дохода.
RevenueGroups AS (
    SELECT
        name,
        NTILE(3) OVER (ORDER BY revenue DESC) AS revenue_group --NITLE бьёт на равные партиции
    FROM
        FacilityRevenue
)
SELECT
    name,
    CASE
        WHEN revenue_group = 1 THEN 'high'
        WHEN revenue_group = 2 THEN 'average'
        ELSE 'low'
    END AS revenue
FROM
    RevenueGroups
ORDER BY
    revenue_group,
    name;