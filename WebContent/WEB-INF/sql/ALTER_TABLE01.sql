-- ALTER TABLE : 테이블 수정하기
CREATE TABLE MyTable16
(
	id INT,
    title VARCHAR(255),
    body VARCHAR(255)
);

-- Add Column : 컬럼 추가하기
ALTER TABLE MyTable16
ADD inserted TIMESTAMP;

SELECT * FROM MyTable16;
DESC MyTable16;

-- Drop Column : 컬럼 삭제하기
ALTER TABLE MyTable16
DROP COLUMN inserted;

-- Modify Column : 컬럼 수정하기
ALTER TABLE MyTable16
MODIFY COLUMN body VARCHAR(1023);

-- Add NOT NULL : NOT NULL 추가하기
ALTER TABLE MyTable16
MODIFY title VARCHAR(255) NOT NULL;

INSERT INTO MyTable16
(id, title)
VALUES
(2, 'title1');

SELECT * FROM MyTable16;

UPDATE MyTable16
SET body = ''
WHERE body IS NULL;

-- Add Unique
ALTER TABLE MyTable16
ADD UNIQUE (id);

DESC MyTable16;

-- Add PRIMARY KEY
ALTER TABLE MyTable16
ADD PRIMARY KEY (id);

-- Remove PRIMARY KEY
ALTER TABLE MyTable16MemberMember
DROP PRIMARY KEY;

-- Add AUTO_INCREMENT
ALTER TABLE MyTable16
MODIFY id INT AUTO_INCREMENT;
