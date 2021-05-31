SELECT * FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES 
(92, 'Jinah', 'Jen', 'GwanAk', 'Seoul', '20000', 'Korea');

INSERT INTO Customers
VALUES 
(93, 'Jun', 'Jun', 'Chiljeon', 'Chuncheon', '30000', 'Korea');

INSERT INTO Customers
(CustomerID, CustomerName, ContactName)
VALUES
(95, 'Ariana', 'Grande');

INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES 
('Jinah Park', 'Jen', 'Gangnam', 'Seoul', '20000', 'Korea');

-- 테이블 설명 보기
DESC Customers;
DESC Employees;

SELECT * FROM Employees
ORDER BY EmployeeID DESC;
