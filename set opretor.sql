show databases;
use itvedant;
select * from studentdata where id between 3 and 8;
select * from studentdata where paid_fees between 1300 and 14000;
select * from studentdata where paid_fees>=7000 and paid_fees<=140000;
create table table1(id int primary key auto_increment,sname varchar(300));
insert into table1 (sname) values('saud'),('sanket'),('ashish'),('pruthika'),('robert');
create table table2(id int primary key auto_increment,sname varchar(300));
insert into table2 (sname) values('saud'),('abhishekh'),('netra'),('tanya'),('robert');
select * from table2 union  select* from table1;             # combine diffrent table without duplicate data
select * from table2 union all select* from table1;           # combine diffrent table with duplicate data
select * from table1 intersect select * from table2;             # combine diffrent table and give only duplicate data
select * from table2 except select * from table1;                # combine diffrent table and give only non matching data from left table
select id from table1 union select id from table2;             	 # combine id column of diffrent table as (id) in mentioned
select max(paid_fees) from studentdata;                          # it will give max value of particular column of table
select min(paid_fees) from studentdata;                          # it will give min value of particular column of table
select sum(paid_fees) from studentdata;                          # it will give sum of all value of particular column of table
select count(paid_fees) from studentdata;                        # it will give count of all data of particular column of table
select avg(paid_fees) from studentdata;                          # it will give average of all data of particular column of table
select * from studentdata;
select count(id)from studentdata group by department;                       # it will group all similar data into group
select count(id),department from studentdata group by department;           # it will group all similar data into group by id and department
select count(id),department from studentdata group by department having avg(paid_fees)>120000;



