SELECT CustomerID, CustomerName FROM Customers;

SELECT CustomerID AS id, CustomerName AS name
FROM Customers;

SELECT CustomerID id, CustomerName name
FROM Customers;

SELECT CustomerID id, CustomerName name
FROM Customers
ORDER BY 2;

SELECT Country, COUNT(CustomerID) AS NumOfCustomer FROM Customers
GROUP BY Country;


