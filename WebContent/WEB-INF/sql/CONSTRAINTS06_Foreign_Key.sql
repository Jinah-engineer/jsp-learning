USE test;

-- like Member
CREATE TABLE MyTable17
(
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- like Board
CREATE TABLE MyTable18
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
    t17Id VARCHAR(255) NOT NULL,
    -- t17Id가 MyTable17의 id를 참조하도록 한다 == 외래키 
    FOREIGN KEY(t17Id) REFERENCES MyTable17(id)
);

DROP TABLE MyTable18;

INSERT INTO MyTable17
(id, name)
VALUES 
('Jinah', 'Park');

INSERT INTO MyTable18
(title, t17Id)
VALUES
('USA', 'Jinah');

SELECT * FROM MyTable18;

INSERT INTO MyTable18
(title, t17Id)
VALUES
('Korea', 'Kim'); -- unavailable >> MyTable17에 없는 data

DELETE FROM MyTable17
WHERE id = 'Jinah'; -- 삭제 불가 >> 'Jinah'를 참조하고 있는 foreign key가 존재하기 때문

DELETE FROM MyTable18
WHERE t17Id = 'Jinah'; -- foreign key를 먼저 삭제한 후에, 테이블17의 id값을 삭제할 수 있다


