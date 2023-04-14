SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'France';

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France');

SELECT * FROM Products
WHERE CategoryID IN(3, 5);