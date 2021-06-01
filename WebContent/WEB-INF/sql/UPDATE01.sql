SELECT * FROM Customers;

SELECT * FROM Customers;

UPDATE Customers
SET CustomerName = '아이언맨'
WHERE CustomerID = 1;

SELECT * FROM Customers;

UPDATE Customers
SET CustomerName = 'thor',
	ContactNAME = 'odinson',
    Address = 'Asgard'
WHERE CustomerID = 1;