-- CUSTOMER TABLE
CREATE TABLE CUSTOMER1(
CUSTOMER_ID INT ,
CUST_NAME VARCHAR(20),
CITY VARCHAR(20),
GRADE INT ,
SALESMAN_ID int
);
INSERT INTO CUSTOMER1 VALUES(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),(3005,' Graham Zusi ','California',200,5002),
(3008,'Julian Green','London',300,5002),(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron ','Berlin',100,5003),(3003,'Jozy Altidor','Moscow',200,5007),
(3001,'Brad Guzan ','London',null,5005);
SELECT * FROM CUSTOMER1;

-- SALESMAN TABLE
CREATE TABLE SALESMAN(
SALESMAN_ID INT,
NAME VARCHAR(20),
CITY VARCHAR(30),
COMMISSION float
);
INSERT INTO SALESMAN VALUES(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite ','Paris',0.13),(5005,'Pit Alex','London',0.11),
(5006,' Mc Lyon','Paris',0.14),(5007,' Paul Adam ','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);
select * from salesman;

-- QUERY
SELECT CUST_NAME,c.CITY AS CUSTOMER_CITY,GRADE,NAME AS SALESMAN,s.CITY AS SALESMAN_CITY FROM CUSTOMER1 c,SALESMAN s WHERE GRADE<100 ORDER BY CUSTOMER_ID ASC;