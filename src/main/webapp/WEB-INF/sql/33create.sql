DESC MyTable09;
SHOW CREATE TABLE MyTable09;
CREATE TABLE `MyTable11` (
   `name` varchar(20) DEFAULT NULL,
   `gender` varchar(1) DEFAULT NULL,
   `BirthDate` date DEFAULT NULL,
   `Score` decimal(5,2) DEFAULT NULL,
   `Extra` varchar(1000) DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
 
 CREATE TABLE MyTable12 AS SELECT * FROM MyTable10;
 DESC MyTable12;
 SELECT * FROM MyTable09;
 
