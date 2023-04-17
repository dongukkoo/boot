SELECT * FROM Customers;
SELECT count(CustomerID) FROM Customers;
SELECT count(CustomerName) FROM Customers;
SELECT count(Country) FROM Customers;

SELECT count(CustomerID) FROM Customers
WHERE Country = 'Brazil';

SELECT Country FROM Customers;
SELECT DISTINCT Country FROM Customers;

SELECT COUNT(CustomerID) FROM Customers
WHERE Country = 'Brazil';

SELECT * FROM Employees;
SELECT * FROM Customers;

SELECT COUNT(CustomerID) FROM Customers
WHERE City = 'São Paulo';

SELECT * FROM Suppliers;
SELECT COUNT(DISTINCT Country) FROM Suppliers;




