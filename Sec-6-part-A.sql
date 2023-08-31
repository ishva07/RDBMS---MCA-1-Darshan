CREATE TABLE Student(
	STUD_ID INT,
	FIRSTNAME VARCHAR(25),
	LASTNAME VARCHAR(25),
	WEBSITE VARCHAR(25),
	CITY VARCHAR(25)
)


INSERT INTO STUDENT VALUES
(1011,'keyur','patel','techonthenet.COM','RAJKOT'),
(1022,'hardik','shah','digminecraft.com','ahmedabad'),
(1033,'kajal','trivedi','bigactivities.com','baroda'),
(1044,'bhoomi','gajera','checkyourmath.com','ahmedabad'),
(1055,'harmit','mitel',NULL,'baroda'),
(1066,'ashok','jani',NULL,'rajkot')


--1. Display the name of students whose name starts with ‘k’.
SELECT FIRSTNAME FROM Student
WHERE FIRSTNAME LIKE 'K%'


--2. Display the name of students whose name consists of five characters.
	SELECT FIRSTNAME FROM STUDENT
	WHERE FIRSTNAME LIKE '_____'


--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
	SELECT FIRSTNAME ,LASTNAME FROM STUDENT
	WHERE CITY LIKE '_____%A';


--4. Display all the students whose last name ends with ‘tel’.
	SELECT *FROM STUDENT
	WHERE LASTNAME LIKE '%TEL'


--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
	SELECT *FROM STUDENT
	WHERE FIRSTNAME LIKE 'HA%T' 


--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.

	SELECT *FROM STUDENT
	WHERE FIRSTNAME LIKE 'K_Y%'


	SELECT *FROM STUDENT 
	LIMIT 3;

	TRUNCATE TABLE STUDENT