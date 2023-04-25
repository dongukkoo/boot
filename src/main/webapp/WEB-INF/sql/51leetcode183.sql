CREATE DATABASE leetcode183;
USE leetcode183;
CREATE TABLE Customers(
	id INT PRIMARY KEY, name VARCHAR(100)
);
INSERT INTO Customers
VALUES (1, 'Joe');
INSERT INTO Customers
VALUES (2, 'Henry');
INSERT INTO Customers
VALUES (3, 'Sam');
INSERT INTO Customers
VALUES (4, 'Max');

SELECT * FROM Customers;
SELECT * FROM Orders;

CREATE TABLE Orders(
	id INT PRIMARY KEY, customerId INT, FOREIGN KEY (customerId) REFERENCES Customers(id)
);

INSERT INTO Orders
VALUES (1, 3);
INSERT INTO Orders
VALUES (2, 1);

SELECT name Customers FROM Customers c LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId IS NULL; 

SELECT name Customers FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders);



