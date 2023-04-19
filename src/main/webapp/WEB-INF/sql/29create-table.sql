CREATE TABLE MyTable01(
Col1 INT, Col2 VARCHAR(255)
);

SELECT * FROM MyTable01;
DESC MyTable01;

INSERT INTO MyTable01 (Col1, Col2)
VALUES (30, '가나다');

INSERT INTO MyTable01 (Col1, Col2)
VALUES ('삼십', '가나다');