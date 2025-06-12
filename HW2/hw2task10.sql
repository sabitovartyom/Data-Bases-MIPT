SELECT
    CONCAT(firstname, ' ', surname) AS member,
    (SELECT CONCAT(firstname, ' ', surname) FROM cd.members WHERE memid = m.recommendedby) AS recommender
FROM cd.members AS m
ORDER BY member, recommender;