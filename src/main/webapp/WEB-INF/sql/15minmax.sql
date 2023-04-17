SELECT MIN(CustomerID) FROM Customers;
SELECT MAX(CustomerID) FROM Customers;
SELECT MIN(Price) FROM Products;
SELECT MAX(Price) FROM Products;
SELECT * FROM Employees;
SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

SELECT * FROM Products;
SELECT MAX(Price) FROM Products
WHERE CategoryID = 3;

SELECT MIN(Price) FROM Products
WHERE CategoryID = 5;

