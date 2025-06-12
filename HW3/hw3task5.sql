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
)
SELECT
    name,
    RANK() OVER (ORDER BY revenue DESC) as rank
FROM
    FacilityRevenue
LIMIT 3;