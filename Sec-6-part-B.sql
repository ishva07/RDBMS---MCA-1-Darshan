--1. Display the name of students having no website and name consists of five characters.
	select *from student 
	where website IS NULL and firstname like '_____'


--2. Display all the students whose last name consist of ‘jer’. 

SELECT *FROM STUDENT 
WHERE LASTNAME LIKE '%JER%'


--3. Display all the students whose city name starts with either ‘r’ or ‘b’.
	SELECT * FROM STUDENT 
	WHERE CITY LIKE 'R%' OR CITY LIKE 'B%'


--4. Display all the name students having websites.
	SELECT *FROM STUDENT 
	WHERE NOT WEBSITE IS NULL


--5. Display all the students whose name starts from alphabet A to H.

	SELECT * FROM STUDENT 
	WHERE FIRSTNAME LIKE '[A-H]%'


--6. Display all the students whose name’s second character is vowel.

	SELECT *FROM STUDENT
	WHERE FIRSTNAME LIKE '_[A,E,I,O,U]%'
