
SELECT facid,
    EXTRACT(MONTH FROM starttime) AS month,
    SUM(slots) AS total_slots
FROM cd.bookings
WHERE 
    starttime >= '2012-01-01' AND starttime < '2013-01-01'
GROUP BY facid, month
ORDER BY facid, month;