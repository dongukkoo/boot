SELECT productName, Price * 1300 FROM Products;
SELECT productName, Price * 1300 wonPrice FROM Products;

SELECT productName, Price / 100 FROM Products;
SELECT productName, Price + 100 FROM Products;

SELECT CONCAT(City + Country) FROM Customers;
SELECT concat(City, Country) FROM Customers;
SELECT CONCAT(City, ", ", Country) FROM Customers;

SELECT * FROM Employees;
SELECT CONCAT(FirstName, " ", LastName) FROM Employees;

SELECT * FROM Products;
SELECT ProductName, Price * 1300 wonPrice FROM Products
Having wonPrice >= 100000;

SELECT * FROM Products
WHERE Price * 1300 >= 100000;

SELECT substring('hello world', 3, 3);
SELECT substring('hello world', 1, 3);

SELECT SUBSTRING(CustomerName, 1, 3) FROM Customers;

SELECT * FROM Customers;
SELECT CustomerName, SUBSTRING(Country, 1, 3) FROM Customers;