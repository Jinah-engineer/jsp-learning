SELECT * FROM Customers;

USE test;

SELECT * FROM Orders;

-- JOIN
SELECT * FROM Customers JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID; -- 196 rows : 어떤 주문에 어떤 Customer가 주문했는지 알 수 있다

SELECT o.OrderId, c.CustomerName
FROM Customers c JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- 주문한 적 없는 Customer 조회
SELECT *
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL; -- 17 results

