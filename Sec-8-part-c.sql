--Part-C: Perform following queries on Student table of practical no 6. 


--1. Put 10 space before FirstName using function. 

select SPACE(10)+firstname from Student

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().

select CONCAT(FIRSTname,lastname ) from Student

--3. Combine all columns using + sign as well as CONCAT ().
	select concat(stud_id,firstname,lastname,website,city) from Student

--4. Find reverse of FirstName column. 
select REVERSE(firstname) from Student

--5. Repeat FirstName column 3 times

	select REPLICATE(firstname,3) from Student