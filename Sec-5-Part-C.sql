--1.Delete Column ADATE from the DEPOSIT table.
ALTER TABLE DEPOSITE 
DROP COLUMN ADATE


--2. Rename Column CNAME to CustomerName.
	SP_RENAME 'DEPOSITE.CNAME','CustomerName'


--3. Change name of table DEPOSIT to DEPOSIT_DETAIL.