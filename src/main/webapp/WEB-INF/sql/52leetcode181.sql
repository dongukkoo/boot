CREATE DATABASE leetcode181;
USE leetcode181;
CREATE TABLE Employee(
	id INT PRIMARY KEY, name VARCHAR(200), salary INT, managerId INT
);
INSERT INTO Employee
VALUES (1, 'Joe', 70000, 3);
INSERT INTO Employee
VALUES (2, 'Henry', 80000, 4);
INSERT INTO Employee
VALUES (3, 'Sam', 60000, NULL);
INSERT INTO Employee
VALUES (4, 'Max', 90000, NULL);
UPDATE Employee SET salary = 70000 WHERE id = 1;
SELECT * FROM Employee;

SELECT e1.name Employee FROM Employee e1 JOIN Employee e2 ON e1.managerId = e2.id
										WHERE e1.salary > e2.salary;
						
SELECT * FROM Employee e1 JOIN Employee e2; 

