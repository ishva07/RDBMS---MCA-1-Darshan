select *from Student


--1. Display the name of students having no website and name consists of minimum five characters.

select *from student
where WEBSITE is null and  firstname like '_____'


--2. Display all the students whose last name starts with ‘Pat’. 

select *from student
where LASTNAME like 'pat%'


--3. Display all the students whose city name does not start starts with ‘b’.

select *from student 
where city not like 'b%'


--4. Display all the students whose name starts from alphabet A or H.

select *from student 
where firstname like 'a%' or firstname like 'h%'


--5. Display all the students whose name’s second character is vowel and of and start with H

select *from student 
where FIRSTNAME like 'H[a,e,i,o,u]%'



