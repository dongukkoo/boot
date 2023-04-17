SELECT * FROM Customers 
LIMIT 5;

SELECT * FROM Products
LIMIT 3;

SELECT * FROM Products
ORDER BY Price DESC
LIMIT 3;

SELECT * FROM Products
WHERE CategoryID = 2
ORDER BY Price DESC
LIMIT 3;

SELECT * FROM Employees
ORDER BY BirthDate
LIMIT 3;

SELECT * FROM Customers
WHERE Country = 'Brazil'
LIMIT 3;

SELECT * FROM Products
WHERE CategoryID = 3
ORDER BY Price
LIMIT 2;