SELECT CONCAT(m.firstname, ' ', m.surname) AS member, 
    CASE
        WHEN b.facid = 0 THEN 'Tennis Court 1'
        ELSE 'Tennis Court 2'
    END AS facility
FROM cd.members AS m
JOIN cd.bookings AS b ON m.memid = b.memid
WHERE b.facid = 0 OR b.facid = 1
GROUP BY member, facility
ORDER BY member, facility; 