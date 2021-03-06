SELECT * FROM Member;
DESC Member;

CREATE TABLE Board
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
    body VARCHAR(2047) NOT NULL,
	memberId VARCHAR(255) NOT NULL,
	inserted TIMESTAMP DEFAULT NOW()
);

DESC Board;

SELECT * FROM Member;
DESC Member;

SELECT * FROM Board;

USE test;

-- subQuery : 어떤 query의 결과를 다른 query에서 사용하는 것
DELETE FROM Board 
WHERE memberId NOT IN (
	SELECT id FROM Member
);

ALTER TABLE Board
ADD FOREIGN KEY (MemberId) 
REFERENCES Member(id);

DESC Board;