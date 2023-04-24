SELECT COUNT(*) FROM Products;
SELECT COUNT(*) FROM Categories;

SELECT COUNT(*) FROM Products JOIN Categories;
SELECT * FROM Products JOIN Categories;

SELECT * FROM Products;
SELECT * FROM Categories;
DESC Products;
DESC Categories;

SELECT * FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;
-- 조인 후 컬럼 수 : 왼쪽테이블컬럼수 + 오른쪽테이블컬럼수

SELECT ProductName, CategoryName
FROM Products JOIN Categories
ON Products.CategoryID = Categories.CategoryID;
SELECT * FROM Suppliers;
SELECT * FROM Products;

SELECT ProductName, SupplierName
FROM Products JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
ORDER BY 2;

SELECT CustomerName AS Name FROM Customers;
SELECT ProductName, SupplierName
FROM Products AS p JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID;

SELECT ProductName, SupplierName
FROM Products p JOIN Suppliers s
ON p.SupplierID = s.SupplierID;

SELECT p.SupplierID, s.SupplierID FROM Products p JOIN Suppliers s
ON p.SupplierID = s.SupplierID;
