CREATE TABLE MyTable7
(
	id INT,
    NAME VARCHAR(255)
);

SELECT * FROM MyTable7;

INSERT INTO MyTable7
(id, NAME)
VALUES (3, 'HELLO');

INSERT INTO MyTable7
(id) VALUES (4);

INSERT INTO MyTable7
(NAME) VALUES ('Donald');

-- Constraint 1 > NOT NULL
-- Null이 될 수 없게 한다
CREATE TABLE MyTable8
(
	id INT NOT NULL,
    name VARCHAR(255) NOT NULL
);

INSERT INTO MyTable8
(id, name)
VALUES (3, 'HELLO');

SELECT * FROM MyTable8;  