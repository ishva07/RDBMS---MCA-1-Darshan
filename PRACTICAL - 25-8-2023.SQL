--			Student
--RNo      Name		Branch      SPI		  Bklog
--101		 Raju		CE		8.80		0
--102		 Amit		CE		2.20		3
--103		 Sanjay		ME		1.50		6
--104		 Neha		EC		7.65		1
--105		 Meera		EE		5.52		2
--106		 Mahesh		EC		4.50		3


CREATE TABLE STUDENT1(
	RNO INT,
	NAME VARCHAR(50),
	BRANCH VARCHAR(30),
	SPI DECIMAL(3,2),
	BKLOG INT
)

INSERT INTO STUDENT1 VALUES
(101,		 'Raju',		'CE',		8.80,		0),
(102,		 'Amit',		'CE',		2.20,		3),
(103,		 'Sanjay',		'ME',		1.50,		6),
(104,		 'Neha',		'EC',		7.65,		1),
(105,		 'Meera',		'EE',		5.52,		2),
(106,		 'Mahesh',		'EC',		4.50,		3)

DELETE FROM STUDENT1
WHERE RNO=105

SELECT * FROM STUDENT1


-- 1. Display Total No of student
SELECT COUNT(*)AS 'TOTAL_STUD' FROM STUDENT1


-- 2. Display Branch Wise Student Total

	SELECT BRANCH AS 'BRANCH',COUNT(*) FROM STUDENT1
	GROUP BY BRANCH

-- 3. Display Branch wise Maximum SPI

	SELECT BRANCH,MAX(SPI) AS 'MAX_SPI' FROM STUDENT1
	GROUP BY BRANCH


-- 4. Display Name whose SPI is greater than 7

	SELECT NAME FROM STUDENT1
	WHERE SPI>7


-- 5. Count the Student whose SPI is lessthan 5 and belong to CE Branch

	SELECT COUNT(*) AS 'STUD_COUNT' FROM STUDENT1
	WHERE SPI<5
	GROUP BY BRANCH HAVING BRANCH = 'CE'


-- 6. Count the Student whose backlog is greater than 3

	SELECT COUNT(*) AS'STUD_COUNT' FROM STUDENT1 
	WHERE BKLOG>3

-- 7. retrive the all student information

SELECT * FROM STUDENT1
	

-- 8. Display branch wise student count 

	SELECT BRANCH,COUNT(*) AS 'STUD_CNT' FROM STUDENT1
	GROUP BY BRANCH

-- 9. Count the total Branch in student table. Give the Label 'Total Branch'

	SELECT COUNT(DISTINCT(BRANCH)) AS 'TOTAL_BRANCH' FROM STUDENT1


-- 10. Display Total branch, Total Student

SELECT COUNT(DISTINCT(BRANCH))'TOTAL_BRANCH', COUNT(RNO) AS 'RNO' FROM STUDENT1


-- 11. Display Maximum SPI, Minimum SPI with Proper Label
SELECT MAX(SPI) AS'MAX_SPI', MIN(SPI) AS 'MIN_SPI' FROM STUDENT1


-- 12. Display Average SPI 

SELECT AVG(SPI) FROM STUDENT1

-- 13. Display Branch wise Average SPI 

SELECT BRANCH, AVG(SPI) AS 'AVG_SPI' FROM STUDENT1
GROUP BY BRANCH


-- 14. Display Student Detail whose name Starts with M and Belonging to CE Branch

 SELECT NAME FROM STUDENT1
 WHERE NAME LIKE 'M%' AND BRANCH = 'CE'

-- 15. Display Student Name, Student Branch, Student SPI from STUDENT TAble

SELECT NAME ,BRANCH,SPI FROM STUDENT1

-- 16. Display all the detail of student whose Roll no is less than 4
	SELECT * FROM STUDENT1 WHERE RNO<104 


-- 17. Update the SPI to 2.65 whose name is Amit

UPDATE STUDENT1 SET 
SPI = 2.65
WHERE NAME = 'AMIT'


-- 18. Display all the Student Whose Name starts with M and last second character is S

SELECT NAME FROM Student1
WHERE NAME LIKE 'M%S_'

-- 19. Display Average SPI, Maximum SPI, Minimum SPI

SELECT AVG(SPI) AS 'AVG_SPI',MAX(SPI) AS'MAX_SPI', MIN(SPI) AS 'MIN_SPI' FROM STUDENT1