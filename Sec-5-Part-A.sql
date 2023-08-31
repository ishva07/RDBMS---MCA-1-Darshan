CREATE TABLE STUDENT(
	ENROLLMENT_NO VARCHAR(50),
	NAME VARCHAR(50),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME
)

--Add two more columns City VARCHAR (20) and Backlog INT.
	alter table student
	add City VARCHAR (20) , Backlog INT

--2. Change the size of NAME column of student from VARCHAR (25) to VARCHAR (35).
	alter table student
	alter column name varchar(35)


--3. Change the data type DECIMAL to INT in CPI Column.
	alter table student
	alter column CPI int


--4. Rename Column Enrollment No to ENO.
	sp_rename 'student.enrollment_no','eno'


--5. Delete Column City from the STUDENT table.
	alter table student
	drop column city 


--6. Change name of table STUDENT to STUDENT_MASTER.
	sp_rename 'student_maser','student_master'


--7. Remove the table STUDENT_MASTER.
	drop table student_master

