-- DATA TYPE


-- NUMBER
/* INT, DECIMAL */
CREATE TABLE MyTable3 (
	Col1 INT,
    Col2 DECIMAL
);

INSERT INTO MyTable3
(Col1, Col2)
VALUES 
(55, 3.14);

SELECT * FROM MyTable3;

CREATE TABLE MyTable4
(
	Col1 DECIMAL,
    Col2 DECIMAL(10, 2),
    Col3 DECIMAL(3, 1)
);

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(3.14, 3.14, 3.14);

DESC MyTable4;
SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES 
(333.14, 333.14, 333.14); -- NOT OKAY >> (총 숫자 자리 수, 소수점 자리 허용 개수) 

-- CHAR (String)
CREATE TABLE MyTable5
(
	Col1 CHAR(5), -- 고정 자리 수 (스페이스가 붙는다)
    Col2 VARCHAR(5) -- 가변 자리 수 (스페이스가 붙지 않는다)
);

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abc', 'abc');

SELECT * FROM MyTable5;

INSERT INTO MyTable5
(Col1, Col2)
VALUES 
('abcde', 'abc');

SELECT * FROM MyTable5;
-- 'abc  ', 'abc'


SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';

-- DATE, DATETIME, TIMESTAMP
CREATE TABLE MyTable6
(
	Col1 DATE,
    Col2 DATETIME,
    Col3 TIMESTAMP
);

SELECT * FROM MyTable6;

INSERT INTO MyTable6
(Col1, Col2, Col3)
VALUES
('2021-06-02',
 '2021-06-02 11:07:30',
 '2021-06-02 11:07:30');
 
 