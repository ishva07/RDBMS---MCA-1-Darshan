--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSITE
ADD CITY VARCHAR(50) ,PINCODE INT


--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

ALTER TABLE DEPOSITE
ALTER COLUMN CNAME VARCHAR(35)


--3. Change the data type DECIMAL to INT in amount Column.
	ALTER TABLE DEPOSITE 
	ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO.
	SP_RENAME 'DEPOSITE.ACTNO','ANO'


--5. Delete Column City from the DEPOSIT table.

	ALTER TABLE DEPOSITE
	DROP COLUMN CITY