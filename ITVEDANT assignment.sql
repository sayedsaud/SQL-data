use itvedant;
create table client1( clientno int(20) primary key,
client_name varchar(20),
city varchar(20),
pin_number int,
mobile bigint);
select * from client1;
----------------------------------------
create table grocery(item_no int, item_name varchar(20), mfd varchar (10), expdate varchar(12), address varchar(20), city varchar(10));
select * from grocery;
drop table grocery;
-------------------------------------
show tables;
create table emplyoee(gov_id bigint unique, id int primary key, name varchar (10), last_name varchar(12));
desc employee;
-----------------------------------
create table emplyoee( id int primary key, ename varchar (10), esalary float, email varchar(20),dob int);
insert into emplyoee values (1,'xyz',3000.89,'xyz@gmail.com',1990-08-30),(2,'abc',2300.90,'abc@gmail.com',1980-03-21);
select * from emplyoee;
alter table emplyoee modify dob varchar(20);
update emplyoee set esalary = 4000.68,dob = 1993-08-30 where id =1;
truncate table emplyoee;
--------------------------------------------------------------------------------
create table customers (id int not null,name1 varchar(20) not null,age int not null, address varchar(20) null);
desc customers;