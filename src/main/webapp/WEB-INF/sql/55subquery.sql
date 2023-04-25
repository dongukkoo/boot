SELECT ProductName, CategoryId FROM Products;
SELECT ProductName, (SELECT CategoryName FROM Categories WHERE CategoryId = p.CategoryId) CategoryName
FROM Products p;

-- 상품명, 상품을 공급하는 공급자명
SELECT * FROM Products;
SELECT * FROM Suppliers;

SELECT ProductName, SupplierName FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;

SELECT ProductName FROM Products
WHERE SupplierID IN (SELECT SupplierID FROM Suppliers);
SELECT SupplierName FROM Suppliers
WHERE SupplierID IN (SELECT SupplierID FROM Suppliers);
										