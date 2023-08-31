--1. Display the result of Salary plus Commission.

SELECT SUM(SALARY+COMMITION) FROM EMPLOYEE1

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.

SELECT CEILING (55.2),CEILING(35.7),CEILING(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.

	SELECT FLOOR (55.2),FLOOR(35.7),FLOOR(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.

	SELECT 55%2, 55%3


--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.

	SELECT POWER(23,2),POWER(14,3)