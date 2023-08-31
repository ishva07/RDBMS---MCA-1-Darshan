create table order1
(
	ord_no int,
	purch_amt decimal(8,2),
	ord_date datetime,
	customer_id int,
	salesman_id int
)


--inert data into tables

insert into order1 VALUES(70001,150.5,'05-OCT-2012',3005,5002);
insert into order1 VALUES(70009,270.65,'10-SEP-2012',3001,5005);
insert into order1 VALUES(70002,65.26,'05-OCT-2012',3002,5001);
insert into order1 VALUES(70004,110.5,'17-AUG-2012',3009,5003);
insert into order1 VALUES(70007,948.5,'10-SEP-2012',3005,5002);
insert into order1 VALUES(70005,2400.5,'27-JULY-2012',3007,5001);
insert into order1 VALUES(70008,5760,'10-SEP-2012',3002,5001);
insert into order1 VALUES(70010,1983.43,'10-OCT-2012',3004,5006);
insert into order1 VALUES(70003,2480.4,'10-OCT-2012',3009,5003);
insert into order1 VALUES(70012,250.45,'27-JUNE-2012',3008,5002);
insert into order1 VALUES(70011,75.29,'17-AUG-2012',3003,5007);
insert into order1 VALUES(70013,3045.6,'25-APR-2012',3002,5001);

select * from order1;


create table customer1
(
	customer_id int,
	cust_name varchar(50),
	city varchar(30),
	grade int,
	salesman_id int
);


--inert data into tables

insert into customer1 VALUES(3001,'Brad Guzan','London',NULL,5005);
insert into customer1 VALUES(3002,'Nick Rimando','New York',100,5001);
insert into customer1 VALUES(3003,'Jozy Altidor','Moscow',200,5007);
insert into customer1 VALUES(3004,'Fabian Johnson','Pairs',300,5006);
insert into customer1 VALUES(3005,'Graham Zusi','California',200,5002);
insert into customer1 VALUES(3007,'Brad Davis','New York',200,5001);
insert into customer1 VALUES(3008,'Julian Green','London',300,5002);
insert into customer1 VALUES(3009,'Geoff Cameron','Berlin',100,5003);

select * from customer1;
truncate table customer1

create table salesman1
(
	salesman_id int,
	name varchar(50),
	city varchar(30),
	commission decimal(4,2)
)

--inert data into tables

insert into salesman1 VALUES(5001,'James Hoog','New Youk',0.15);
insert into salesman1 VALUES(5002,'Nail Knite','Paris',0.13);
insert into salesman1 VALUES(5005,'Pit Alex','London',0.11);
insert into salesman1 VALUES(5006,'Mc Lyon','Paris',0.14);
insert into salesman1 VALUES(5007,'Paul Adam','Rome',0.13);
insert into salesman1 VALUES(5003,'Lauson Hen','San Jose',0.12);

select * from salesman1;



create table item
(
	pro_id int,
	pro_name varchar(50),
	pro_price decimal(8,2),
	pro_com int
)


--inert data into tables

insert into item VALUES(101,'mother board',3200.00,15);
insert into item VALUES(102,'key bord',450.00,16);
insert into item VALUES(103,'zip drive',250.00,14);
insert into item VALUES(104,'speaker',550.00,11);
insert into item VALUES(105,'monitor',5000.00,11);
insert into item VALUES(106,'dvd drive',800.00,12);
insert into item VALUES(107,'cd drive',800.00,12);
insert into item VALUES(108,'printer',2600.00,13);
insert into item VALUES(109,'refill catridge',350.00,13);
insert into item VALUES(110,'mouse',250.00,12);

select * from item;



-- 1. From the following table, write a SQL query to calculate total purchase amount of all orders. Return total purchase amount 

	SELECT SUM(purch_amt) AS 'TOTAL_PURCHASE_AMOUNT' FROM order1


-- 2. From the following table, write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount.

	SELECT avg(purch_amt) AS 'TOTAL AVG' from order1 


-- 3. From the following table, write a SQL query that counts the number of unique salespeople. Return number of salespeople.

	SELECT COUNT(DISTINCT(salesman_id)) FROM order1

-- 4. From the following table, write a SQL query to count the number of customers. Return number of customers

SELECT COUNT(customer_id) FROM customer1;
	

-- 5. From the following table, write a SQL query to determine the number of customers who 
-- received at least one grade for their activity.

SELECT COUNT(*) AS 'GRADE_AC' FROM customer1
WHERE grade >=1


-- 6. From the following table, write a SQL query to find the maximum purchase amount. 

SELECT MAX(purch_amt) AS 'MAX_PUCHASE' FROM order1


-- 7. From the following table, write a SQL query to find the minimum purchase amount.

SELECT MIN(purch_amt) AS 'MIN_PURCHSE' FROM order1


-- 8. From the following table, write a SQL query to find the highest grade of the 
--customers in each city. Return city, maximum grade.

SELECT CITY,MAX(GRADE) FROM customer1
GROUP BY CITY


-- 9. From the following table, write a SQL query to find the highest purchase amount ordered by each customer. 
--Return customer ID, maximum purchase amount.

SELECT customer_id,MAX(purch_amt) AS 'MAX_PURCHASE' FROM order1
GROUP BY(customer_id)
ORDER BY (customer_id)


-- 10. From the following table, write a SQL query to find the highest purchase amount ordered by each customer on a particular date. 
--   Return, order date and highest purchase amount.

	select ord_date,max(purch_amt) as 'Maximum Purchase' from order1
	group by ord_date


--   11. From the following table, write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'. 
-- 		Return salesperson ID, purchase amount 
	SELECT salesman_id, MAX(PURCH_AMT) FROM order1
	WHERE ord_date ='2012-AUG-17'
	GROUP BY salesman_id



-- 12. From the following table, write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. 
--Filter the result by highest order (purchase) amount above 2000.00. 
--Return customer id, order date and maximum purchase amount.

	
	select customer_id,ord_date,max(purch_amt) from order1
	group by customer_id,ord_date having max(purch_amt) >2000
	
---- 13. From the following table, write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.) 
--by combination of each customer and order date. 
--Return customer id, order date and maximum purchase amount


	select customer_id,ord_date,max(purch_amt) from order1 
	where purch_amt between 2000 and 6000
	group by customer_id,ord_date


-- 14. From the following table, write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. 
--Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000. 
--Return customer id, order date and maximum purchase amount.

	select customer_id,ord_date,max(purch_amt) as 'max_ord' from order1
	group by customer_id,ord_date
	having max(purch_amt) in(2000,3000,5760,6000)


-- 15. From the following table, write a SQL query to determine the maximum order amount for each customer. 
--The customer ID should be in the range 3002 and 3007(Begin and end values are included.).
--Return customer id and maximum purchase amount.

	select customer_id,max(purch_amt) as 'max purchase' from order1
	group by customer_id having customer_id between 3002 and 3007



-- 16. From the following table, write a SQL query to find the maximum order (purchase) amount for each customer.
--The customer ID should be in the range 3002 and 3007(Begin and end values are included.).
--Filter the rows for maximum order (purchase) amount is higher than 1000. Return customer id and maximum purchase amount.


-- customer_id	max
-- 3002		5760.00
-- 3007		2400.60
-- 3004		1983.43

select customer_id , max(purch_amt) as 'max_purchase' from order1
where customer_id between 3002 and 3007
group by customer_id having max(purch_amt)>1000




-- 17. From the following table, write a SQL query to determine the maximum order (purchase) amount generated by each salesperson.
--Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). 
--Return salesperson id and maximum purchase amount.

SELECT salesman_id,MAX(PURCH_AMT) AS 'MAX_PURCHASE' FROM ORDER1
GROUP BY salesman_id HAVING salesman_id BETWEEN 5003 AND 5008




-- salesman_id	max
-- 5005		270.65
-- 5003		2480.40
-- 5007		75.29
-- 5006		1983.43


-- 18. From the following table, write a SQL query to count all the orders generated on '2012-08-17'. 
--Return number of orders.

	SELECT COUNT(*) FROM order1
	WHERE ord_date='17-AUG-2012'

-- 19. From the following table, write a SQL query to count the number of salespeople in a city. Return number of salespeople.

	SELECT CITY,COUNT(SALESMAN_ID ) AS 'SALESPEOPLE' FROM salesman1
	GROUP BY city


-- 20. From the following table, write a SQL query to count the number of orders based on the combination of each order date and salesperson.
--Return order date, salesperson id

select ord_date,salesman_id from order1
group by ord_date,salesman_id


-- 21. From the following table, write a SQL query to calculate the average product price. 
--Return average product price.

SELECT AVG(pro_price) from item


-- 22. From the following table, write a SQL query to count the number of products whose price are higher than or equal to 350. Return number of products.
select count(pro_price) from item
where pro_price>=350


-- 23. From the following table, write a SQL query to compute the average price for unique companies. Return average price and company id.

select distinct pro_com,avg(pro_price) as 'avg_price' from item
group by pro_com
