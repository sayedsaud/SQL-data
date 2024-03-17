use itvedant;
CREATE TABLE Store (
    StoreId VARCHAR(5),
    Sname VARCHAR(50),
    Location VARCHAR(50),
    City VARCHAR(50),
    NoOfEmp INT,
    DateOpen DATE,
    SalesAmt INT
);

INSERT INTO Store (StoreId, Sname, Location, City, NoOfEmp, DateOpen, SalesAmt)
VALUES 
    ('S101', 'Planet Fashion', 'Bandra', 'Mumbai', 7, '2015-10-16', 40000),
    ('S102', 'Vogue', 'Karol Bagh', 'Delhi', 8, '2015-07-14', 120000),
    ('S103', 'Trends', 'Powai', 'Mumbai', 10, '2015-06-24', 30000),
    ('S104', 'Super Fashion', 'Thane', 'Mumbai', 11, '2015-02-06', 45000),
    ('S105', 'Annabelle', 'South Extn. Delhi', 'Delhi', 8, '2015-04-09', 60000),
    ('S106', 'Rage', 'Defence Colony', 'Delhi', 5, '2015-03-01', 20000);
    select * from store;
    select sname, salesamt from store where city = 'mumbai';
    select * from store order by sname;
    SELECT City, COUNT(*) FROM Store GROUP BY City HAVING COUNT(*) > 2;
    ---------------------------------------------------------------------------------------------
    CREATE TABLE ITEMS_ORDERED (
    customerid INT,
    order_date DATE,
    item VARCHAR(50),
    quantity INT,
    price float
);

INSERT INTO ITEMS_ORDERED (customerid, order_date, item, quantity, price)
VALUES 
    (10330, '1999-06-30', 'Pogo stick', 1, 28.00),
    (10101, '1999-06-30', 'Raft', 1, 58.00),
    (10298, '1999-07-01', 'Skateboard', 1, 33.00),
    (10101, '1999-07-01', 'Life Vest', 4, 125.00),
    (10299, '1999-07-06', 'Parachute', 1, 1250.00),
    (10339, '1999-07-27', 'Umbrella', 1, 4.50),
    (10449, '1999-08-13', 'Unicycle', 1, 180.79);

CREATE TABLE CUSTOMERS1 (
    customerid INT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);

INSERT INTO CUSTOMERS1 (customerid, firstname, lastname, city, state)
VALUES 
    (10101, 'John', 'Gray', 'Lynden', 'Washington'),
    (10298, 'Leroy', 'Brown', 'Pinetop', 'Arizona'),
    (10299, 'Elroy', 'Keller', 'Snoqualmie', 'Washington'),
    (10315, 'Lisa', 'Jones', 'Oshkosh', 'Wisconsin'),
    (10325, 'Ginger', 'Schultz', 'Pocatello', 'Idaho'),
    (10329, 'Kelly', 'Mendoza', 'Kailua', 'Hawaii'),
    (10330, 'Shawn', 'Dalton', 'Cannon Beach', 'Oregon'),
    (10338, 'Michael', 'Howell', 'Tillamook', 'Oregon'),
    (10339, 'Anthony', 'Sanchez', 'Winslow', 'Arizona'),
    (10408, 'Elroy', 'Cleaver', 'Globe', 'Arizona');

SELECT State, COUNT(*) AS NumOfPeople FROM customers1 GROUP BY State;
SELECT item, MAX(price) AS max_price, MIN(price) AS min_price FROM items_ordered GROUP BY item;
SELECT customerid, COUNT(*) AS num_orders, SUM(price * quantity) AS total_order_amount FROM items_ordered GROUP BY customerid;

