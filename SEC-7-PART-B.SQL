--Create and Insert the following records in the Employee table. 


EmpNo	 EmpName    JoiningDate Salary      Commission		City
101		 Keyur		5-1-02		12000.00	4500			Rajkot
102      Hardik     15-2-04		14000.00	2500			Ahmedabad
103      Kajal      14-3-06		15000.00	3000			Baroda
104		 Bhoomi     23-6-05		12500.00	1000			Ahmedabad
102		 Harmit     15-2-04		14000.00	2000			Rajkot


--1. Display the result of Salary plus Commission.

	SELCT SALARY+COMMISSION FROM EMPLOYEE


--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.

SELECT CEILING(55.20), CEILING(35.7), CEILING(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.

SELECT FLOOR (55.20), FLOOR(35.7), FLOOR(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.

	SELECT 55%2, 55%3

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power

	SELECT POWER(23,2),POWER(14,3)
