USE test;

SELECT * FROM Customers;

SELECT COUNT(*) FROM Customers;

SELECT Country, CustomerName
FROM Customers
GROUP BY Country;

SELECT Country, COUNT(*) cnt
FROM Customers
GROUP BY Country
ORDER BY cnt DESC;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
