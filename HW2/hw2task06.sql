SELECT firstname, surname
FROM cd.members
WHERE memid IN (SELECT recommendedby FROM cd.members)
GROUP BY firstname, surname
ORDER BY surname, firstname;