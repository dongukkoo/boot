SELECT IFNULL(0, 100);
SELECT IFNULL('kim', 'lee');
SELECT IFNULL(NULL, 100);
SELECT IFNULL(NULL, 'park');

SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price
FROM Products ORDER BY 1 DESC;

SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, IFNULL(Price, 0) Price
FROM Products ORDER BY 1 DESC;

SELECT AVG(IFNULL(Price, 0)) AS Average FROM Products
WHERE CategoryID = 2;

SELECT * FROM Customers ORDER BY 1 DESC;

SELECT CustomerID, CustomerName, IFNULL(ContactName, 'Anonymous'), IFNULL(Address, 'Homeless')
FROM Customers ORDER BY 1 DESC;

SELECT * FROM Customers ORDER BY 1 DESC;