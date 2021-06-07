USE test;

SELECT * FROM Orders;

-- 주문한 고객명을 알고 싶다면?
SELECT *
FROM Orders o JOIN Customers c
ON o.CustomerID = c.CustomerID;

-- 주문한 고객명과 직원명을 알고 싶다면
SELECT o.OrderID, c.CustomerName, e.LastName, e.FirstName
FROM Orders o 
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID;

-- 주문한 고객명, 직원명(lastName + firstName)
SELECT o.OrderID, c.CustomerName, concat(e.LastName, ', ', e.FirstName)
FROM Orders o 
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID;
