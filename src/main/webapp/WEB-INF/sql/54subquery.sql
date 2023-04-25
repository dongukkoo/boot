SELECT Country FROM Suppliers;
SELECT DISTINCT Country FROM Suppliers;
SELECT * FROM Customers
WHERE Country IN (SELECT DISTINCT Country FROM Suppliers);

-- 1996-07-04에 주문한 상품명 조회
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Products;

SELECT ProductName FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID
									JOIN Orders o ON od.OrderID = o.OrderID
									WHERE o.OrderDate = '1996-07-04';
                                    
SELECT ProductName FROM Products
WHERE ProductID IN (SELECT ProductID FROM OrderDetails
					WHERE OrderID IN (SELECT OrderID FROM Orders
										WHERE OrderDate = '1996-07-04'));
                                        
USE w3schools;
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT CustomerName FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
