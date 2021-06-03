-- UNIQUE
-- unique로 설정된 colunm에 한해서 중복된 값 설정 불가 
CREATE TABLE MyTable9 (
	id INT UNIQUE,
    name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUE 
(2, 'hello');

SELECT * FROM MyTable9;

-- Null 인지 여부를 확인
SELECT * FROM MyTable9
WHERE id IS NULL;

SELECT * FROM MyTable9
WHERE id IS NOT NULL;

-- IFNULL
-- Null 값을 유효한 값으로 변경
SELECT ifnull(id, 0), name FROM MyTable9;

CREATE TABLE MyTable10
(
	id INT UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL
);

SELECT * FROM MyTable10;