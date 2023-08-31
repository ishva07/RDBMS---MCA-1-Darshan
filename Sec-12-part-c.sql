--Part-C:

--1. Count the number of employees living in Rajkot or Baroda.
	select COUNT(*) from employee
	where city in('rajkot','baroda')


--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.



--3. Display the total number of employees hired before 1st January, 1991 in IT department.
	
	select count(*) from employee 
	where JOININGDATE <'1-jan-91'
	group by  department
	having  DEPARTMENT='it'

--4. Display total salary of each department with total salary exceeding 35000 and
--sort the list by total salary in descending order.

select sum(salary+35000),DEPARTMENT from employee
group by DEPARTMENT order by sum(salary+35000) desc