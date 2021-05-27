SELECT City FROM Customers;
-- City columns에는 중복된 값들이 있다.
-- DISTINCT는 중복된 값을 허용하지 않는다.

SELECT DISTINCT City FROM Customers;

-- COUNT : 결과의 개수 (columns 총 수)
SELECT COUNT(*) FROM Customers;

SELECT Count(City) FROM Customers;
SELECT COUNT(DISTINCT City) FROM Customers;

SELECT DISTINCT Country FROM Customers;

SELECT DISTINCT City, Country FROM Customers;