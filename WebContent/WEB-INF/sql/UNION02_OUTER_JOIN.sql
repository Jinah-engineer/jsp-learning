-- OUTER JOIN한 결과와 동일한 결과
SELECT * FROM Users u LEFT JOIN Likes l ON u.id = l.userId
UNION
SELECT * FROM Users u RIGHT JOIN Likes l ON u.id = l.userId;