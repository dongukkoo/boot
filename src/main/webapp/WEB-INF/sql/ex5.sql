USE w3schools;
SELECT * FROM Suppliers s JOIN Products p
		ON s.supplierId = p.supplierId
WHERE s.SupplierID = 3;

USE Board;
SELECT *,
		COUNT(f.id) fileCount
FROM Board b LEFT JOIN FileName f ON b.id = f.boardId
GROUP BY b.id
ORDER BY b.id DESC
LIMIT 0, 5;

SELECT *,
				COUNT(f.id) fileCount
			FROM Board b JOIN FileName f
			  ON b.id = f.boardId;
              
SELECT * FROM FileName;
DESC FileName;
SELECT * FROM Board b JOIN FileName f 
ON b.id = f.boardId;

SELECT * FROM Board b JOIN FileName f
WHERE boardId = 32726;

SELECT * FROM FileName
WHERE BoardId = 32715;

