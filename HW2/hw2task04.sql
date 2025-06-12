SELECT facid,
       EXTRACT(MONTH FROM starttime) AS month,
       SUM(slots) AS slots
FROM cd.bookings
WHERE starttime >= '2012-01-01' AND starttime < '2013-01-01'
GROUP BY facid, EXTRACT(MONTH FROM starttime)

UNION ALL

SELECT facid,
       NULL AS month,
       SUM(slots) AS slots
FROM cd.bookings
WHERE starttime >= '2012-01-01' AND starttime < '2013-01-01'
GROUP BY facid

UNION ALL

SELECT NULL AS facid,
       NULL AS month,
       SUM(slots) AS slots
FROM cd.bookings
WHERE starttime >= '2012-01-01' AND starttime < '2013-01-01'

ORDER BY facid, month;