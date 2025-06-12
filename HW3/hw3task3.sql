SELECT
    firstname,
    surname,
    total_hours AS hours,
    RANK() OVER (ORDER BY total_hours DESC) AS rank
FROM (
    SELECT
        m.firstname,
        m.surname,
        ROUND(SUM(b.slots * 0.5), -1) AS total_hours
    FROM
        cd.members AS m
    JOIN
        cd.bookings AS b ON b.memid = m.memid
    GROUP BY
        m.memid, m.firstname, m.surname
) AS subquery
ORDER BY
    rank, surname, firstname;