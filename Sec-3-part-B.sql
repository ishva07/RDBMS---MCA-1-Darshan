USE BANK_INFO

SELECT CNAME,CITY FROM CUSTOMER
WHERE CITY='NAGPUR' OR CITY='DELHI'


SELECT CNAME,CITY FROM CUSTOMER
WHERE CITY IN ('NAGPUR','DELHI')


SELECT * FROM BORROW 
WHERE AMOUNT>=3000 AND AMOUNT<=8000

SELECT * FROM BORROW 
WHERE AMOUNT BETWEEN 3000 AND 8000


SELECT CNAME FROM DEPOSITE 
WHERE AMOUNT>4000 AND ACTNO<=105;

SELECT CNAME FROM DEPOSITE
WHERE BNAME != 'ANDHERI'


SELECT *FROM CUSTOMER WHERE CITY ='NAGPUR' OR CITY='DELHI';

SELECT CNAME,BNAME FROM DEPOSITE 
WHERE AMOUNT>4000 AND ACTNO <105

SELECT BNAME  FROM DEPOSITE 
WHERE AMOUNT>=3000 AND AMOUNT<=8000

SELECT CNAME FROM DEPOSITE
WHERE NOT BNAME='ANDHERI'

SELECT ACTNO,CNAME,AMOUNT FROM DEPOSITE
WHERE BNAME IN('ANJI','KAROLBAGH','M.G.ROAD') AND ACTNO<104


SELECT TOP 5 *FROM DEPOSITE;

SELECT TOP 3 *FROM DEPOSITE
WHERE AMOUNT>1000;

SELECT TOP 5 LOANNO,CNAME  FROM BORROW 
WHERE NOT BNAME='ANDERI'

SELECT DISTINCT CITY FROM CUSTOMER;

SELECT DISTINCT BNAME FROM DEPOSITE

SELECT *FROM CUSTOMER 
ORDER BY CITY ASC

SELECT *FROM DEPOSITE
ORDER BY AMOUNT DESC
