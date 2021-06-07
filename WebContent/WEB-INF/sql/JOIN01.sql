USE test;

SELECT * FROM Member;
SELECT * FROM Board;

CREATE TABLE Table01
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    bookId INT
);

CREATE TABLE Table02
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    bookName VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUES
('Park', 1);

INSERT INTO Table01
(name, bookId)
VALUES
('kim', 2);

INSERT INTO Table01
(name, bookId)
VALUES
('Jin', 3);

INSERT INTO Table01
(name, bookId)
VALUES
('Han', 4);

SELECT * FROM Table01;
SELECT * FROM Table02;

INSERT INTO Table02
(bookName)
VALUES
('Book1');

INSERT INTO Table02
(bookName)
VALUES
('Book2');

INSERT INTO Table02
(bookName)
VALUES
('Book3');

INSERT INTO Table02
(bookName)
VALUES
('Book4');

-- Table 그냥 합치기
SELECT * FROM Table01, Table02; -- 16개의 recorㅇ : Table01의 record 1개에 Table02의 record가 매칭된다 (4 * 4)

-- Table 'JOIN' 하기
SELECT * FROM 
Table01 JOIN Table02
ON Table01.bookId = Table02.id; -- Table01의 bookId와 Table02의 id가 일치하는 record만 추출하기

-- alias >> Table과 column에 별칭을 넣을 수 있다 
SELECT * FROM 
Table01 as t1 JOIN Table02 t2 -- as는 생략 가능하다
ON t1.bookId = t2.id; -- table명이 반복되서 작성되는 경우, 별칭을 줘서 다음 syntax에 적용하여 보다 간결하게 코드 작성이 가능하다

-- column에 별칭 적용해보기
SELECT
t1.id AS id1, -- as 생략 가능
t1.name AS name1,
t1.bookId AS bId,
t2.id AS id2,
t2.bookName AS bName
FROM 
Table01 t1 JOIN Table02 t2
ON t1.bookId = t2.id;
