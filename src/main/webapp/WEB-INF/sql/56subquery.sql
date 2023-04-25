USE w3schools;

SELECT lastName, firstName FROM Employees;

SELECT lastName, firstName
FROM ( SELECT lastName, firstName FROM Employees) emp
WHERE lastName >= 'd' AND lastName < 'e';

-- 고객별 소비금액
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Products;
SELECT * FROM Employees;
SELECT * FROM Customers;
SELECT * FROM Categories;

SELECT CategoryID, AVG(Price) FROM Products
GROUP BY 1
HAVING AVG(Price) >= 30.00;

SELECT AVG(구매금액) FROM
(SELECT c.CustomerID, c.CustomerName, SUM(Price * Quantity) 구매금액 FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
																		JOIN OrderDetails od ON od.OrderID = o.OrderID
                                                                        JOIN Products p ON p.ProductID = od.ProductID
                                                                        GROUP BY 1
                                                                        ORDER BY 3 DESC) t1;
                                                                        
-- 직원별 매출액의 평균
SELECT AVG(매출) FROM
(SELECT e.EmployeeID, e.LastName, e.FirstName, SUM(od.Quantity * p.Price) 매출 FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
							JOIN OrderDetails od ON o.OrderID = od.OrderID
                            JOIN Products p ON p.ProductID = od.ProductID
                            GROUP BY 1
                            ORDER BY 4 DESC) t2;