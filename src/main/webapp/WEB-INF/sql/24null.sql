SELECT * FROM Products WHERE CategoryID = 2;
SELECT * FROM Products
WHERE CategoryID = 2
	AND Price >= 25.00;
    
SELECT * FROM Products
WHERE CategoryID = 2
	AND IFNULL(Price, 0) < 25.00;
    
SELECT ProductName, Price*1300 FROM Products
WHERE CategoryID = 2;

SELECT ProductName, IFNULL(Price, 0) * 1300 FROM Products
WHERE CategoryID = 2;