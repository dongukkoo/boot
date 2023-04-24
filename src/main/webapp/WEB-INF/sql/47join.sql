CREATE TABLE TableA(
	Num1 INT
);
CREATE TABLE TableB(
	Num2 INT
);
DESC TableA;
INSERT INTO TableA (Num1)
VALUES (1);
INSERT INTO TableA (Num1)
VALUES (2);
INSERT INTO TableA (Num1)
VALUES (3);
INSERT INTO TableA (Num1)
VALUES (4);
INSERT INTO TableA (Num1)
VALUES (5);
INSERT INTO TableB (Num2)
VALUES (3), (4), (5), (6), (7);

SELECT * FROM TableA;
SELECT * FROM TableB;

SELECT * FROM TableA a JOIN TableB b
ON a.Num1 = b.Num2;

SELECT * FROM TableA a Right JOIN TableB b 
ON a.Num1 = b.Num2;