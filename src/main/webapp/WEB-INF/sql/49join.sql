SELECT COUNT(*) FROM Products;
SELECT COUNT(*) FROM Categories;
SELECT COUNT(*) FROM Suppliers;
DESC Products;
DESC Categories;
DESC Suppliers;

SELECT * FROM Products JOIN Categories JOIN Suppliers;
SELECT COUNT(*) FROM Products JOIN Categories JOIN Suppliers;

SELECT * FROM
Products p JOIN Categories c ON p.CategoryID = c.CategoryID
			JOIN Suppliers s ON p.SupplierID = s.SupplierID;
            
SELECT * FROM Products;

-- 예) 1번 상품의 상품명, 카테고리명, 공급자명
SELECT p.ProductName, c.CategoryName, s.SupplierName
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
				JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.ProductID = 1;

-- 예제) 1996-07-04에 주문한 상품명 조회
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Products;
SELECT * FROM Employees;
SELECT * FROM Customers;

SELECT p.ProductName FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
										JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 의 매출 조회
SELECT SUM(p.Price * od.Quantity) FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
									JOIN Products p ON od.ProductID = p.ProductID
									WHERE o.OrderDate = '1996-07-04';
                                    
-- 일별 매출 조회 (날짜 순으로 결과 조회)
SELECT o.OrderDate, (p.Price * od.Quantity) FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
									JOIN Products p ON od.ProductID = p.ProductID
                                    GROUP BY 1;
                                    SELECT * FROM Orders;


-- 직원별 처리금액
SELECT e.EmployeeID, e.LastName, e.FirstName, SUM(od.Quantity * p.Price) 매출 FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
							JOIN OrderDetails od ON o.OrderID = od.OrderID
                            JOIN Products p ON p.ProductID = od.ProductID
                            GROUP BY 1
                            ORDER BY 4 DESC; 					
-- 상품별 판매금액


SELECT p.ProductID, p.ProductName, SUM(Quantity * Price) 판매금액 FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID
													JOIN Orders o ON o.OrderID = od.OrderID
                                                    GROUP BY 1
                                                    ORDER BY 3 DESC;
-- 고객별 소비금액
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Products;
SELECT * FROM Employees;
SELECT * FROM Customers;

SELECT c.CustomerID, c.CustomerName, SUM(Price * Quantity) 소비금액 FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
																		JOIN OrderDetails od ON od.OrderID = o.OrderID
                                                                        JOIN Products p ON p.ProductID = od.ProductID
                                                                        GROUP BY 1
                                                                        ORDER BY 3 DESC;
                                                                        
