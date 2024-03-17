show tables;
use itvedant;
create table emp (
id int primary key auto_increment,
ename varchar(20),
department varchar(20),
salary bigint,
location varchar(20));
insert into emp (ename,department,salary,location) values ('joy','hr',5000,'mumbai'),('yash','management',7000,'pune'),('ruhi','sales',4000,'delhi'),('raj','training',5000,'mumbai'),('anand','training',6000,'chennai');
select * from emp;
update emp set ename = 'saud' where id =1;
update emp set department = 'full stack' where id =3;
update emp set salary = 9000 where id =1;
delete from emp where id = 5;
select * from emp order by salary;
select * from emp where location = 'mumbai';
-----------------------------------------------------
create table product(
id int,
pname varchar(20),
price int,
quantity int );
insert into product value(1,'tv',45000,3),(2,'bike',85000,2),(3,'washing machine',40000,4),(4,'fan',18000,10),(5,'car',95000,2);
select * from product;
select * from product where (price<60000);
select* from product where quantity between 3 and 10;
SELECT *, price * 0.8 AS discounted_price
 FROM product;
