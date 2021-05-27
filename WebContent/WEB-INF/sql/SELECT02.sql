-- WHERE : row를 조건으로 필터하는 역할을 한다. 
SELECT * FROM Customers WHERE Country="Mexico";

SELECT *
FROM Customers
WHERE CustomerID = 1;

SELECT * FROM Products
WHERE Price = 18;

SELECT * FROM Products
WHERE Price > 30;

SELECT * FROM Products
WHERE Price < 30;

SELECT * FROM Products
WHERE Price <= 30;

SELECT * FROM Products
WHERE Price >= 30;

SELECT * FROM Products
WHERE Price between 50 AND 60;

SELECT * FROM Customers
WHERE City LIKE 's%';

SELECT * FROM Products
WHERE Price <> 30;

SELECT * FROM Customers
WHERE City LIKE '%g';

SELECT * FROM Customers
WHERE City LIKE '%z%';

SELECT * FROM Customers 
WHERE Country LIKE '%us%';

-- IN
SELECT * FROM Customers
WHERE City IN ('Paris', 'London');

SELECT * FROM Customers
WHERE City IN ('Paris', 'London', 'Berlin');

SELECT * FROM Customers
WHERE City = 'Berlin';

-- Not 
SELECT * FROM Customers
WHERE NOT City = 'Berlin';

SELECT * FROM Customers
WHERE City != 'Berlin';

SELECT * FROM Customers
WHERE City <> 'Berlin';

SELECT * FROM Customers
WHERE NOT City LIKE '%on';

SELECT * FROM Customers
WHERE CustomerID = 30;

-- AND
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

-- OR
SELECT * FROM Customers
WHERE City = 'Berlin' OR City= 'Munchen';

SELECT * FROM Customers
WHERE Country = 'Germany' 
OR (CustomerName LIKE '%s%'
AND City LIKE '%ch%');

SELECT * FROM Customers
WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Munchen');

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';
