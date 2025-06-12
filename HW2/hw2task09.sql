SELECT
    (SELECT CONCAT(firstname, ' ', surname) FROM cd.members WHERE memid = b.memid) AS member,
    (SELECT name FROM cd.facilities WHERE facid = b.facid) AS facility,
    CASE
        WHEN b.memid = 0 THEN b.slots * (SELECT guestcost FROM cd.facilities WHERE facid = b.facid)
        ELSE b.slots * (SELECT membercost FROM cd.facilities WHERE facid = b.facid)
    END AS cost
FROM
    cd.bookings AS b
WHERE
    DATE(starttime) = '2012-09-14' AND
    CASE
        WHEN b.memid = 0 THEN b.slots * (SELECT guestcost FROM cd.facilities WHERE facid = b.facid)
        ELSE b.slots * (SELECT membercost FROM cd.facilities WHERE facid = b.facid)
    END > 30
ORDER BY
    cost DESC, member, facility;