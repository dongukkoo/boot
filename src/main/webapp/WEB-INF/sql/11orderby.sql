-- order by : 결과의 순서를 정할 때 사용

SELECT CustomerID, ContactName, ContactName
FROM Customers
WHERE CustomerID < 10
ORDER BY ContactName DESC;

SELECT * FROM Customers
ORDER BY CustomerName DESC;

SELECT * FROM Customers
ORDER BY Country ASC;

SELECT * FROM Products
ORDER BY Price;

SELECT * FROM Products ORDER BY 6;
SELECT * FROM Products ORDER BY 6 DESC;

SELECT * FROM Customers ORDER BY City;
SELECT * FROM Customers ORDER BY 5;

SELECT CustomerId, CustomerName, City
FROM Customers ORDER BY City;

SELECT CustomerId, CustomerName, City
FROM Customers ORDER BY 3;

SELECT * FROM Customers ORDER BY Country, City;
SELECT * FROM Customers ORDER BY 7, 5;

SELECT CustomerID, CustomerName, Country, City
FROM Customers
ORDER BY Country, City;

SELECT * FROM Customers ORDER BY Country ASC, City DESC;
SELECT * FROM Customers ORDER BY Country DESC, City ASC;

SELECT * FROM Products ORDER BY CategoryID, Price DESC;
