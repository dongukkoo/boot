USE Board;

SELECT COUNT(*) FROM Board;
DESC Board;
INSERT INTO Board (title, body, writer)
SELECT title, body, writer FROM Board;