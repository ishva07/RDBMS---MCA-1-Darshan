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

-- 1. Find the length of FirstName and LastName columns.
	select len(firstname),len(lastname) from Student

--2. Display FirstName and LastName columns in lower & upper case.
select lower(firstname),upper(lastname) from Student

--3. Display first three characters of FirstName column. 
	select left(firstname,3) from Student

--4. Display 3rd to 10th character of Website column. 
	select substring(website,3,10) from student

--5. Write a query to display first 4 & Last 5 characters of Website column. 
select left(website,4),right(website,5) from Student