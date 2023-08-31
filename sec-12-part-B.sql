--Part-B:

--1. Count the number of employees living in Rajkot.
	select count(*),CITY from EMPLOYEE
	group by city having city='rajkot'


--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.	
	select (max(salary)-min(salary)) as 'difference' from EMPLOYEE
	

--3. Display the total number of employees hired before 1st January, 1991.
	select count(*) from EMPLOYEE
	where JOININGDATE<'1-jan-91'


--4. Display total salary of each department with total salary exceeding 35000 and sort the list by total salary.
	select (sum(salary))+ 35000,department from EMPLOYEE
	group by DEPARTMENT


--5. List out department names in which more than two employees.
 select department from EMPLOYEE
 group by DEPARTMENT having count(DEPARTMENT)>2

