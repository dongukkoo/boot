-- 서브쿼리 (쿼리 안의 쿼리)
-- 1) SELECT 문이다.
-- 2) 괄호 안에 있다.
-- 3) 

-- 작성 가능 한 위치
-- WHERE, SELECT, FROM, HAVING

USE w3schools;


SELECT CategoryName FROM Categories
WHERE CategoryID = (SELECT categoryId FROM Products WHERE productId = 1);

SELECT CustomerName FROM Customers
WHERE Country = (SELECT Country FROM Suppliers WHERE SupplierId = 2);

SELECT * FROM Products;
SELECT * FROM Customers;

SELECT ProductName FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

SELECT AVG(Price) FROM Products;