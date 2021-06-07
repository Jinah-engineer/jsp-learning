Use test;

-- 게시물을 작성하지 않은 Member의 id, name를 나열하시오.
SELECT m.id, m.name
FROM Board b RIGHT JOIN Member m 
ON b.memberId = m.id
WHERE b.memberId IS NULL;

