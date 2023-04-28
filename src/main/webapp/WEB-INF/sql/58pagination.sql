USE w3schools;
INSERT INTO Customers (CustomerName, ContactName, Address, City, Country)
SELECT CustomerName, ContactName, Address, City, Country
FROM Customers;

SELECT COUNT(*) FROM Customers;
DESC Customers;

-- 페이지당 20개 레코드
SELECT * FROM Customers
ORDER BY CustomerID DESC
LIMIT 20, 20;