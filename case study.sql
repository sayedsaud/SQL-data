use itvedant;
create table customer12(
cust_id int primary key,
cname varchar(50),
cemail varchar(50),
phone bigint,
address varchar(50)
);
 
 create table product12(
 pid int primary key,
 pname varchar(50),
 price float,
 ptype varchar(50)
 );
 
 create table orders12(
 order_id int primary key,
 cust_id int,
 order_date date,
 total_amt float,
  FOREIGN KEY (cust_id) REFERENCES Customer12(cust_id)
 );
 
 create table ordersdetails12(
 orderdetails_id int primary key,
 order_id int,
 foreign key(order_id) references orders12(order_id),
 pid int,
 foreign key(pid) references product12(pid),
 quantity int
 );
 
 create table payment(
 payment_id int primary key,
 order_id int,
 foreign key(order_id) references orders12(order_id),
 payment_date date,
 payment_amount float,
 payment_method varchar(50)
 );
 
 insert into customer12 values(1,'saud sayed','saudsayed@gmail.com',7208885658,'Vikhroli east'),
						      (2,'sanket chaskar','sanketchaskar@gmail.com',7418529635,'Thane west'),
							  (3,'ashish more','ashishmore@gmail.com',7894561235,'kalyan'),
                              (4,'abhishek jagtap','abhishekjagtap@gmail.com',712354656788,'Bhandup west'),
                              (5,'pruthika wankar','pruthikawankar@gmail.com',5789123654,'Vashi east'),
                              (6,'namita bhoir','namitabhoir@gmail.com',9632587415,'ambivali east'),
							  (7,'oral robert','oralrobert@gmail.com',54582317955,'diva west'),
                              (8,'netra zambare','netrazambare@gmail.com',7391824658,'Thane east'),
                              (9,'rohit shelar','rohitshelard@gmail.com',7879856418,'badlapur'),
                              (10,'virendra singh','virendrsingh@gmail.com',7419632587,'Mumbra');
	
select * from customer12;

insert into product12 values(1,'mobile',50000,'electronics'),
							(2,'car',2000000,'vehicle'),
                            (3,'Ice cream',100,'food'),
                            (4,'shirt',400,'cloths'),
                            (5,'football',800,'sports'),
                            (6,'books',200,'education'),
                            (7,'sunscream',450,'cosmetics'),
                            (8,'whey protein',2800,'supplements');
                            
select * from product12;
desc ordersdetails12;

insert into orders12 values (104,3,'2024-03-24',2000000);


insert into ordersdetails12 values(4,104,2,1);


select * from ordersdetails12;


insert into payment values (1004,104,'2024-03-25',2000000,'Cheque Payment');
 

select c.cust_id as id,
       c.cname as customer_name,
       c.cemail as email,
       c.address,
       o.order_id,
       o.order_date,
       od.pid,
       pr.pname as product_name,
       pr.price,
       pr.ptype,
       od.quantity,
       p.payment_id,
       p.payment_date,
       p.payment_amount,
       p.payment_method
       from customer12 c  inner join orders12 o on c.cust_id = o.cust_id inner join ordersdetails12 od on od.order_id = o.order_id
       inner join payment p on p.order_id = od.order_id inner join product12 pr on od.pid = pr.pid;


