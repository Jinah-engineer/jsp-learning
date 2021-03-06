USE test;

SELECT * FROM Board
ORDER BY id DESC;

SELECT b.*, COUNT(c.id) FROM Board b LEFT JOIN Comment c 
ON c.boardId = b.id
GROUP BY b.id
ORDER BY b.id DESC;

SELECT * FROM Board b JOIN Comment c 
ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT b.id boardId, 
	   b.title title, 
       m.name name, 
       count(c.id) numberOfComment, 
       b.inserted 
FROM Board b 
JOIN Member m
ON b.memberId = m.id 
LEFT JOIN Comment c
ON b.id = c.boardId
GROUP BY b.id
ORDER BY boardId DESC;

DESC Comment;

SELECT *
FROM Member
WHERE id = 'donald';