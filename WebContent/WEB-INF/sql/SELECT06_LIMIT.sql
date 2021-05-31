SELECT * FROM Customers;

-- 10개의 recored만 노출시키기
SELECT * FROM Customers
LIMIT 10; 

SELECT * FROM Customers
ORDER BY Country
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 0, 10;

