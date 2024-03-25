use itvedant;
CREATE TABLE uniform (
    UCode INT PRIMARY KEY,
    UName VARCHAR(255),
    UColor VARCHAR(255)
);

CREATE TABLE cost (
    UCode INT,
    Size VARCHAR(255),
    Price DECIMAL(10, 2),
    FOREIGN KEY (UCode) REFERENCES UNIFORM(UCode)
);
INSERT INTO UNIFORM (UCode, UName, UColor) VALUES (1, 'Shirt', 'White'), (2, 'Pant', 'Grey'),(3, 'Tie', 'Blue');
select * from uniform;
INSERT INTO COST (UCode, Size, Price) VALUES (1, 'L', 580),(1, 'M', 500),(2, 'L', 890),(2, 'M', 810);
select uniform.uname, uniform.ucolor,cost.size,cost.price from uniform inner join cost on uniform.ucode = cost.ucode;
select uniform.uname, uniform.ucolor,cost.size,cost.price from uniform natural join cost;
alter table cost modify price float;
--------------------------------------------------------------------
CREATE TABLE customers (
    customerid INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE items_ordered (
    customerid INT,
    order_date DATE,
    item VARCHAR(50),
    quantity INT,
    price float,
    FOREIGN KEY (customerid) REFERENCES customers(customerid)
);

INSERT INTO customers (customerid, firstname, lastname, city, state)
VALUES
(10102, 'John', 'Gray', 'Lynden', 'Washington'),
(10298, 'Leroy', 'Brown', 'Pinetop', 'Arizona'),
(10299, 'Elroy', 'Keller', 'Snoqualmie', 'Washington'),
(10315, 'Lisa', 'Jones', 'Oshkosh', 'Wisconsin'),
(10325, 'Ginger', 'Schultz', 'Pocatello', 'Idaho'),
(10329, 'Kelly', 'Mendoza', 'Kailua', 'Hawaii'),
(10330, 'Shawn', 'Dalton', 'Cannon Beach', 'Oregon'),
(10338, 'Michael', 'Howell', 'Tillamook', 'Oregon'),
(10339, 'Anthony', 'Sanchez', 'Winslow', 'Arizona'),
(10408, 'Elroy', 'Cleaver', 'Globe', 'Arizona');

select * from items_ordered;

INSERT INTO items_ordered (customerid, order_date, item, quantity, price)
VALUES
(10330, '1999-06-30', 'Pogo stick', 1, 28.00),
(10101, '1999-06-30', 'Raft', 1, 58.00),
(10298, '1999-07-01', 'Skateboard', 1, 33.00),
(10101, '1999-07-01', 'Life Vest', 4, 125.00),
(10299, '1999-07-06', 'Parachute', 1, 1250.00),
(10339, '1999-07-27', 'Umbrella', 1, 4.50),
(10449, '1999-08-13', 'Unicycle', 1, 180.79),
(10439, '1999-08-14', 'Ski Poles', 2, 25.50),
(10101, '1999-08-18', 'Rain Coat', 1, 18.30);


SELECT 
    c.customerid, 
    c.firstname, 
    c.lastname, 
    c.state,
    io.order_date, 
    io.item, 
    io.price 
FROM 
    customers c
JOIN 
    items_ordered io ON c.customerid = io.customerid order by c.state desc;
    
    
    
    
    
    
    
    
    
    
    
    
    
    -------------------------------------------------------------------
    drop table student_info;
    CREATE TABLE Student_info (
    sid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    dept VARCHAR(255),
    percentage DECIMAL(5,2)
);

INSERT INTO Student_info (name, dept, percentage) VALUES
('Harry', 'IT', 95.26),
('Mac', 'CS', 98.45),
('Rox', 'Mechanical', 75.69),
('Shree', 'IT', 85.65),
('Ramesh', 'CS', 89.45);


select * from Student_info where percentage = (select max(percentage)from student_info
 where percentage < (select max(percentage)from student_info));



----------------------------------------------------

CREATE TABLE CUSTOMER (
    CUST_ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    OCCUPATION VARCHAR(255),
    AGE INT
);

CREATE TABLE ORDERS (
    ORDER_ID INT PRIMARY KEY,
    CUST_ID INT,
    PROD_NAME VARCHAR(255),
    ORDER_DATE DATE,
    FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID)
);

INSERT INTO CUSTOMER (CUST_ID, NAME, OCCUPATION, AGE) VALUES
(101, 'PETER', 'ENGINEER', 32),
(102, 'JOSEPH', 'DEVELOPER', 30),
(103, 'JOHN', 'LEADER', 28),
(104, 'STEPHEN', 'SCIENTIST', 45),
(105, 'SUZI', 'CARPENTER', 26),
(106, 'BOB', 'ACTOR', 25),
(107, NULL, NULL, NULL);

INSERT INTO ORDERS (ORDER_ID, CUST_ID, PROD_NAME, ORDER_DATE) VALUES
(1, 101, 'LAPTOP', '2022-01-10'),
(2, 103, 'DESKTOP', '2022-02-11'),
(3, 106, 'IPHONE', '2022-03-13'),
(4, 104, 'MOBILE', '2022-03-05'),
(5, 102, 'TV', '2022-03-20');
 select * from customer where cust_id = 107;
 
 SELECT
    C.CUST_ID,
    C.NAME,
    C.OCCUPATION,
    C.AGE
FROM CUSTOMER c LEFT JOIN ORDERS O ON C.CUST_ID = O.CUST_ID WHERE O.CUST_ID IS NULL;
SELECT C.NAME FROM CUSTOMER C INNER JOIN ORDERS O ON C.CUST_ID = O.CUST_ID WHERE O.PROD_NAME = 'LAPTOP';
SELECT * FROM CUSTOMER C INNER JOIN ORDERS O ON C.CUST_ID = O.CUST_ID WHERE O.PROD_NAME = 'IPHONE';
SELECT * FROM CUSTOMER C LEFT JOIN ORDERS O ON C.CUST_ID = O.CUST_ID WHERE O.CUST_ID IS NULL;
SELECT COUNT(DISTINCT C.CUST_ID) AS TOTAL_ORDER_CUSTOMER FROM CUSTOMER C  INNER JOIN ORDERS O ON C.CUST_ID = O.CUST_ID;
