-- 게시글 테이블
CREATE TABLE MyTable12 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL
);

DROP TABLE MyTable12;

-- AUTO_INCREMENT를 설정한 key를 제외하고 값을 넣어준다. (자동으로 값이 설정되기 때문)
INSERT INTO MyTable12
(title, body)
VALUES 
('제목1', '본문1');
-- auto_increment : 자동으로 값이 증가하도록 설정

SELECT * FROM MyTable12;