CREATE TABLE Student(
	Id INT PRIMARY KEY AUTO_INCREMENT,
	Name VARCHAR(50)
);
CREATE TABLE StudentPhone(
	Id INT PRIMARY KEY AUTO_INCREMENT,
	StudentID INT,
	Phone VARCHAR(50),
    -- foreign key (외래키 참조키)
    FOREIGN KEY (StudentId) REFERENCES Student(Id)
);

INSERT INTO Student ( Name) VALUES ('손흥민');
INSERT INTO Student ( Name) VALUES ('박지성');

INSERT INTO StudentPhone (StudentId, Phone)
VALUES (1, '010-9999-8888');
INSERT INTO StudentPhone (StudentId, Phone)
VALUES (2, '010-1234-5678');
INSERT INTO StudentPhone (StudentId, Phone)
VALUES (NULL, '010-3333-2323');
INSERT INTO StudentPhone (StudentId, Phone)
VALUES (1, '010-7777-7777');

DELETE FROM StudentPhone
WHERE StudentId IS NULL;
ALTER TABLE StudentPhone
MODIFY COLUMN StudentId INT NOT NULL;


DESC Student;
DESC StudentPhone;
SELECT * FROM Student;
SELECT * FROM StudentPhone;

DELETE FROM Student
WHERE Id =2;
DELETE FROM StudentPhone
WHERE StudentId = 2;

SELECT * FROM StudentPhone WHERE StudentId = 1;