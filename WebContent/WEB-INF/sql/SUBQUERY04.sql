USE test;

SELECT * FROM Customers
WHERE EXISTS (SELECT now())
;

SELECT * FROM Customers
WHERE NOT EXISTS (SELECT now())
;

SELECT SupplierID, SupplierName
FROM Suppliers
WHERE EXISTS 
	(SELECT ProductName 
	FROM Products 
	WHERE Products.SupplierID = Suppliers.supplierID 
	AND Price < 20)
;

SELECT * FROM Suppliers;

-- subquery
SELECT ProductName 
	FROM Products 
	WHERE Products.SupplierID = 1 
	AND Price < 20;
    
    
    
