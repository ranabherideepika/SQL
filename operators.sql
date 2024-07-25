USE CODEGNAN;
-- -----ARITHMETIC OPERATOR
CREATE TABLE CUSTOMERS (
	ID INT PRIMARY KEY AUTO_INCREMENT, 
    NAME VARCHAR(50),
    AGE INT,
    STATUS VARCHAR(10)
);
INSERT INTO CUSTOMERS (NAME,AGE,STATUS) VALUES ("SAI",28,"MAJOR"),("VARDHAN",18,"MAJOR"),("VENKAT",17,"MINOR");
SELECT * FROM CUSTOMERS;
INSERT INTO CUSTOMERS (NAME,AGE) VALUES ("SAI1",18),("SAI2",16),("SAI3",18),("SAI4",8);
SELECT * FROM CUSTOMERS;
SELECT NAME,(ID+AGE) AS NEWDATA FROM CUSTOMERS;
SELECT NAME,ID,AGE,(AGE-ID) AS NEWDATA FROM CUSTOMERS;
SELECT NAME,ID,AGE,(ID*10) AS NEWDATA FROM CUSTOMERS;
SELECT NAME,ID,AGE,(AGE/2) AS NEWDATA FROM CUSTOMERS;
SELECT NAME,ID,AGE,(AGE%2) AS NEWDATA FROM CUSTOMERS;
-- -----COMPARISON OPERATOR 
CREATE TABLE EMPLOYE (ID INT ,EMPNAME VARCHAR (50),SALARY INT);
INSERT INTO EMPLOYE VALUES (1,"SAI",100000),(2,"VARUN",20000),(3,"TARUN",15000),(4,"SAI 4",50000);
SELECT * FROM EMPLOYE WHERE SALARY =10000;
SELECT * FROM EMPLOYE WHERE SALARY !=10000;
SELECT * FROM EMPLOYE WHERE SALARY >=15000;
SELECT * FROM EMPLOYE WHERE SALARY < 15000;
SELECT * FROM EMPLOYE WHERE SALARY <=30000;
INSERT INTO EMPLOYE VALUES (5,"SAI 5",10000);
-- ----LOGICAL OPERATORS
SELECT * FROM EMPLOYE WHERE SALARY ="10000" AND EMPNAME="SAI 5";
SELECT * FROM EMPLOYE WHERE SALARY ="10000" OR EMPNAME="SAI 5";
ALTER TABLE EMPLOYE ADD COLUMN AGE INT;
SELECT * FROM EMPLOYE ;
SET SQL_SAFE_UPDATES =0;
UPDATE EMPLOYE SET AGE= 20 WHERE SALARY >15000;
-- NULL 
SELECT * FROM EMPLOYE WHERE AGE IS NULL;
SELECT * FROM EMPLOYE WHERE AGE IS NOT NULL;
-- BERTWEEN OPR
SELECT * FROM EMPLOYE WHERE SALARY BETWEEN 15000 AND 20000; 
-- IN OPR
SELECT * FROM EMPLOYE WHERE SALARY IN (10000,50000);
ALTER TABLE EMPLOYE ADD COLUMN BONUS VARCHAR(10);
-- CASE OPR
SELECT * ,
     CASE 
         WHEN SALARY <=10000 THEN "0X"
         WHEN SALARY <=20000 THEN "2X"
         WHEN SALARY <=50000 THEN "3X"
	END AS BONUS
FROM EMPLOYE;
SELECT * ,
     CASE 
         WHEN SALARY >=10000 AND SALARY <20000 THEN "0X"
         WHEN SALARY >=20000 AND SALARY <50000  THEN "2X"
         WHEN SALARY >=50000  THEN "3X"
         ELSE 0
	END AS RESULT
FROM EMPLOYE;
