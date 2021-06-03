-- PRIMARY KEY
-- 각 레코드(row)를 유일하게 구분할 수 있는 column
-- 각 테이블 당 최대 1개 설정 가능
-- 기본 키는 null 값을 가질 수 없다.

CREATE TABLE MyTable11
(	
	id INT PRIMARY KEY,
    name VARCHAR(255)
);

DESC MyTable11;

INSERT INTO MyTable11
(id, name)
VALUES 
(1, 'Donald');

SELECT * FROM MyTable11;

INSERT INTO MyTable11
(name)
VALUES
('Mickey');