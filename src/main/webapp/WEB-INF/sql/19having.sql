SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country;

SELECT Country, COUNT(CustomerID) Num FROM Customers
GROUP BY Country
HAVING Num >= 5;

SELECT * FROM Products;

SELECT CategoryID, AVG(Price) avg FROM Products
GROUP BY CategoryID
HAVING avg >= 30.00;

SELECT CategoryID, MAX(Price) max FROM Products
GROUP BY CategoryID
HAVING max >= 100.00;