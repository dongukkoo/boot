DESC Orders;
SELECT * FROM Orders o JOIN Customers c
ON o.CustomerID = c.CustomerID;

SELECT * FROM Orders o RIGHT JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

SELECT * FROM Orders o RIGHT JOIN Customers c
ON o.CustomerID = c.CustomerID;

DESC Orders;
DESC Employees;

SELECT * FROM Orders o RIGHT JOIN Employees e
ON o.EmployeeID = e.EmployeeID
WHERE o.OrderID IS NULL;