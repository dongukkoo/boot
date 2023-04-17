SELECT SUM(Price) FROM Products;
SELECT CategoryID, SUM(Price) FROM Products 
GROUP BY CategoryID;

SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country;

SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country
ORDER BY Country DESC;

SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 2 DESC;

SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 2 DESC
LIMIT 0, 1;

SELECT * FROM Products;
SELECT CategoryID, AVG(Price) FROM Products
GROUP BY CategoryID;

SELECT CategoryID, MAX(Price) FROM Products
GROUP BY CategoryID;

SELECT CategoryID, MIN(Price) FROM Products
GROUP BY CategoryID;

SELECT CategoryID, AVG(Price) FROM Products
GROUP BY CategoryID
ORDER BY 2 DESC
LIMIT 1;

SELECT COUNT(CustomerID) FROM Customers;
SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country;

SELECT Country, City, COUNT(CustomerID) FROM Customers
GROUP BY Country, City;

SELECT * FROM Suppliers;

SELECT Country, City, COUNT(supplierID) FROM Suppliers
GROUP BY Country, City;
