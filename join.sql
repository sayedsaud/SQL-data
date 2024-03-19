use itvedant;
show tables;
select * from studentdata;
select id,name,department,marks,
case
when marks>=35 and marks<=50 then 'third class'
when marks>=50 and marks<80 then 'second class'
when marks>=80 and marks<100 then 'first class'
end as result from studentdata order by marks desc;
  
---------------------------------------------------------------------
# inner join 
# full outer join
# left join
# right join
# naural join 
# self join
# cross join
 
 create table college (
 cid int primary key,
 cname varchar(20),
 clocation varchar(20)
 );
 create table student12 (
 sid int primary key,
 sname varchar(20),
 age int,
 scity varchar(20),
 cid int, foreign key(cid) references college(cid)
 );
 alter table college modify cname varchar(50);
 insert into college values (1,'saraswati college','kharghar'),(2,'datta meghe','airoli'),(3,'vidyalankar polytecnic','wadala');
 insert into student12 values (1,'saud sayed',23,'mumbai',3),(2,'sanket chaskar',26,'thane',1),(3,'netra zambare',20,'thane',2),(4,'pruthka wankar',20,'nagpur',3),(5,'ashish more ',28,'murbad',1),(6,'abhishekh jagtap',23,'bhandup',2),(7,'oral robert',27,'diva',null),(8,'pooja tanwar',23,'kalyan',null),(9,'namita bhoir',21,'ambivali',2),(10,'anuj singh',30,'mumbra',1);
 select * from student12;
 select student12.sname as student_name ,student12.scity as student_address,college.cname as college_name,college.clocation as college_location from college inner join student12 on college.cid = student12.cid; 
 select * from college natural join student12; 
 