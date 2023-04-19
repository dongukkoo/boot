CREATE TABLE Bank(
	customerName VARCHAR(255),
    money INT DEFAULT 0
);

SELECT * FROM Bank;
INSERT INTO Bank
VALUES ('A', 100000);
INSERT INTO Bank
VALUES ('B', 100000);

UPDATE Bank SET money = money - 5000
WHERE customerName = 'A';
UPDATE Bank SET money = money + 5000
WHERE CustomerName = 'B';

SET autocommit = 0; -- 자동커밋 비활성화
SET autocommit = 1; -- 자동커밋 활성화

UPDATE Bank SET money = money - 5000
WHERE customerName = 'A';
UPDATE Bank SET money = money + 5000
WHERE customerName = 'B';

SELECT * FROM Bank;
ROLLBACK;
COMMIT;

UPDATE Bank SET money = money - 5000
WHERE customerName = 'A';
ROLLBACK;