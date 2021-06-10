USE test;

SELECT * FROM Products;

-- min (최소값)
SELECT min(Price) FROM Products;

-- max (최대값)
SELECT max(Price) FROM Products;

-- count (개수)
SELECT count(*) FROM Products;

-- avg (평균)
SELECT avg(Price) FROM Products;

-- sum (합계)
SELECT sum(Price) FROM Products;

-- exercise

SELECT max(Price) AS maxPrice
FROM Products;

SELECT count(*) FROM Products WHERE Price = 18;

SELECT AVG(Price) FROM Products;

SELECT SUM(Price) FROM Products;
