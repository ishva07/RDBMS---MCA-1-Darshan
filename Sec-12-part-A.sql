CREATE TABLE EMPLOYEE(
	EID INT,
	NAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(8,2),
	JOININGDATE DATETIME,
	CITY VARCHAR(50)
)

INSERT INTO EMPLOYEE VALUES
(101,'RAHUL','ADMIN',56000,'1-JAN-90','RAJKOT'),
(102, 'Hardik', 'IT', 18000, '25-Sep-90', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '14-May-91', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '8-Feb-91', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '23-Jul-90', 'Jamnagar'),
(106, 'Priya', 'IT', 9000, '18-Oct-90', 'Ahmedabad'),
(107, 'Neha', 'HR', 34000, '25-Dec-91', 'Rajkot')

SELECT *FROM EMPLOYEE

--1. Display the Highest, Lowest, Total, and Average salary of all employees. Label the columns Maximum, Minimum, Total_Sal and Average_Sal, respectively.
	SELECT MIN(SALARY) AS 'MINIMUM',MAX(SALARY) AS 'Minimum',SUM(SALARY) AS 'Total_Sal',AVG(SALARY) AS 'Average_Sal'
	FROM EMPLOYEE


--2. Find total number of employees of EMPLOYEE table.
	SELECT COUNT(*) FROM EMPLOYEE 


--3. Give maximum salary from IT department.
	SELECT MAX(SALARY) FROM EMPLOYEE
	GROUP BY DEPARTMENT HAVING DEPARTMENT='IT'


--4. Count total number of cities of employee without duplication.
	SELECT COUNT(distinct CITY) FROM EMPLOYEE


--5. Display city with the total number of employees belonging to each city.
	SELECT DISTINCT CITY, COUNT(*) AS 'TOTAL_EMP' FROM EMPLOYEE
	GROUP BY CITY 


--6. Display city having more than one employee.
	SELECT CITY FROM EMPLOYEE
	GROUP BY CITY HAVING COUNT(EID) >1



--7. Give total salary of each department of EMPLOYEE table.
	SELECT SUM(SALARY),DEPARTMENT FROM EMPLOYEE
	GROUP BY DEPARTMENT



--8. Give average salary of each department of EMPLOYEE table without
-- displaying the respective department name.

	SELECT AVG(SALARY) FROM EMPLOYEE
	GROUP BY DEPARTMENT


--9. Give minimum salary of employee who belongs to Ahmedabad.

	SELECT MIN(SALARY) FROM EMPLOYEE
	GROUP BY CITY HAVING CITY='Ahmedabad'


--10. List the departments having total salaries more than 50000 and located 
--     in city Rajkot.

	select distinct DEPARTMENT from EMPLOYEE
	where salary>50000 and city='rajkot'

	select DEPARTMENT from EMPLOYEE
	where city='rajkot'
	group by DEPARTMENT having sum(salary)>50000  