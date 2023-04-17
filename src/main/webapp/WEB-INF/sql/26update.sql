SELECT * FROM Customers WHERE CustomerID = 1;
UPDATE Customers SET CustomerName = '서태웅'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers SET CustomerName = '정대만', City = 'Seoul', Country = 'Korea'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

SELECT * FROM Suppliers WHERE SupplierID = 1;
UPDATE Suppliers SET SupplierName = '강백호', City = 'Tokyo', Country = 'Japan'
WHERE SupplierID = 1;

SELECT * FROM Suppliers WHERE SupplierID = 1;

UPDATE Suppliers SET ContactName = '북산', City = 'Seoul';
SELECT * FROM Suppliers;

UPDATE Suppliers SET PostalCode = CONCAT('J', Postalcode)
WHERE Country = 'Japan';

SELECT * FROM Suppliers WHERE Country = 'Japan';

SELECT * FROM Products;
INSERT INTO Products
VALUES (1, 'cake', null, null, null, 300);
INSERT INTO Products
VALUES (2, 'pizza', null, null, null, 100);