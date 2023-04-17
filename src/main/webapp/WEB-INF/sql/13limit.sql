SELECT * FROM Customers ORDER BY CustomerID;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 3;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 0, 3;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 3, 3;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 6, 3;

SELECT * FROM Employees ORDER BY BirthDate LIMIT 1, 1;
SELECT * FROM Products WHERE CategoryID = 2 ORDER BY Price DESC LIMIT 1, 1;
