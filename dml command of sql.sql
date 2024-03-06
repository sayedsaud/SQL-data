show databases;
USE ITVEDANT;
create table student1(
roll_no int primary key,
first_name varchar(300),
last_name varchar(300),
contact bigint);
desc student1;
insert into student1 values(1,'saud','sayed',789456123);
alter table student1 modify contact bigint  unique;
desc student1;
insert into student1 values(2,'sanket','chaskar',456123789);
insert into student1 values(3,'ashish','more',7539514826);
insert into student1 values(4,'abhishekh','jagtap',741852963);
insert into student1 values(5,'sakib','vanoo',7189456123);
insert into student1 values(6,'salman','khan',589456123);
insert into student1 values(7,'amir','khan',744456123);
insert into student1 values(8,'sharukh','khan',7989456123);
insert into student1 values(9,'shahid','kapoor',7189456123);
insert into student1 values(10,'ranbhir','kapoor',07893);
select * from student1;
insert into student1 values(11,'anant','ambani',7894555123),(12,'mukesh','ambani',111156123),(13,'nita','ambani',785946123);
select * from student1;
alter table student1 add column city varchar(300) default 'mumbai';
select * from student1;
insert into student1 values(14,'rohit','shelar',789333333,default),(15,'urfi','jawed',696946123,default);
alter table student modify roll_no int auto_increment;
desc student1;
insert into student1(first_name,last_name,contact) values('honey','singh',1212555123),('badshaa','badboy',96966123),('emieay','bantai',500056123);
alter table student1 auto_increment=18;
insert into student1(first_name,last_name,contact) values('abc','efg',56545123),('xxx','zzz',23652415);
alter table student1 rename to student;












