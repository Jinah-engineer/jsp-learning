USE test;
DESC Member;

SELECT * FROM Member;

-- id >> PRIMARY KEY
ALTER TABLE Member
ADD PRIMARY KEY(id);

-- NOT NULL
ALTER TABLE Member
MODIFY password VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY name VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY birthdate DATE NOT NULL;

ALTER TABLE Member
MODIFY inserted TIMESTAMP NOT NULL DEFAULT NOW();

INSERT INTO Member
(id, password, name, birthdate)
VALUES
('IU', '1993', 'Jieun', '2021-06-03');

