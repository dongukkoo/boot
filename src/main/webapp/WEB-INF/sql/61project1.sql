USE Board;
DESC FileName;

DROP TABLE FileName;

CREATE TABLE FileName(
	id INT PRIMARY KEY AUTO_INCREMENT,
    BoardId INT NOT NULL,
    fileName VARCHAR(300) NOT NULL,
    FOREIGN KEY(boardId) REFERENCES Board(id)
);

SELECT * FROM FileName;
SELECT * FROM Board b LEFT JOIN FileName f
ON b.id = f.boardId
WHERE b.id = 32718;
