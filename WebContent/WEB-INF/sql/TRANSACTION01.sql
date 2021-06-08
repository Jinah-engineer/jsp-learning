USE test;

CREATE TABLE Table05
(
	name VARCHAR(255) PRIMARY KEY,
    money INT NOT NULL DEFAULT 0
);

INSERT INTO Table05 (name, money) VALUES ('kim', 10000);
INSERT INTO Table05 (name, money) VALUES ('lee', 10000);

SELECT * FROM Table05;

-- 1
UPDATE Table05
SET money = 5000
WHERE name = 'kim';

-- 2
UPDATE Table05
SET money = 15000
WHERE name = 'lee';

-- 3
SELECT * FROM Table05;

-- 데이터를 조작하는 query가 한번에 반영되도록 하는 명령어 : COMMIT

-- 4
ROLLBACK;

