use test;

CREATE TABLE Users (
	id INT,
    name VARCHAR(255)
);

CREATE TABLE Likes (
	userId INT,
    `like` VARCHAR(255) -- `를 사용함으로써 keyword를 column name으로 사용 가능하다
);

INSERT INTO Users (id, name) VALUES (1, 'Patrik');
INSERT INTO Users (id, name) VALUES (2, 'Albert');
INSERT INTO Users (id, name) VALUES (3, 'Maria');
INSERT INTO Users (id, name) VALUES (4, 'Darwin');
INSERT INTO Users (id, name) VALUES (5, 'Elizabeth');

SELECT * FROM Users;

INSERT INTO Likes (userId, `like`) VALUES (3, 'Stars');
INSERT INTO Likes (userId, `like`) VALUES (1, 'Climbing');
INSERT INTO Likes (userId, `like`) VALUES (1, 'Code');
INSERT INTO Likes (userId, `like`) VALUES (6, 'Rugby');
INSERT INTO Likes (userId, `like`) VALUES (4, 'Apples');

SELECT * FROM Likes;

SELECT * FROM Users, Likes; -- 25 results

SELECT * FROM Users JOIN Likes ON Users.id = Likes.userId; -- 4 results

-- INNER JOIN
SELECT * FROM Users INNER JOIN Likes ON Users.id = Likes.userId; -- 4 results

-- LEFT JOIN
SELECT * FROM Users LEFT JOIN Likes ON Users.id = Likes.userId; -- 6 results

-- RIGHT JOIN
SELECT * FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId; -- 5 results

-- 좋아하는 것이 없는 사용자
SELECT * FROM Users LEFT JOIN Likes ON Users.id = Likes.userId
WHERE Likes.userId IS NULL;

-- 사용자들이 좋아하지 않는 것
SELECT * FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId
WHERE Users.id IS NULL;

SELECT * FROM Users;
SELECT * FROM Likes;


