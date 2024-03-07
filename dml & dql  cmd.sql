show databases;
use itvedant;
show tables;
create table student1(
rollno int primary key,
fname varchar(300),
lname varchar(300),
contact bigint);
desc ABC;
desc student;
alter table ABC modify contact bigint unique;
select * from abc;
truncate table abc;
alter table abc auto_increment=20;
delete from abc where rollno=4;
alter table ABC modify rollno INT auto_increment;
alter table abc add column city varchar(200) default 'pune';
insert into abc(fname,lname,contact) values ('hello','world',51111545456),('bye','goodnight',5346565656),('hey','goodmorning',59898985456),('hiee','goodafternoon',535555545456);
select abc.fname,abc.lname,abc.contact from abc;
select fname,lname from abc;