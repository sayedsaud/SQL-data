use itvedant;
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
 select * from college natural join student12;          # no condition is needed to compare but column name should be same then only it will work
 ----------------------------------------------------------------------------
 select * from student12 left join college on student12.cid=college.cid;                # it will show all value of left table and only matching value of right table
 select * from student12 right join college on student12.cid=college.cid;               # it will show all value of right table and only matching value of left table


select * from student12 left join college on student12.cid=college.cid
union
 select * from student12 right join college on student12.cid=college.cid;           # it will work as full outer join 
 
 ----------------------------------------------------------------------------------------------------------
  create table emp1(
  eid int primary key,
  ename varchar(50),
  designation varchar(50),
  mid int
  );
  insert into emp1 values (1,'saud','dev',4),
						  (2,'sanket','dev',4),
                          (3,'ashish','hr',5),
                          (4,'rohit sir','',5),
                          (5,'itvedant','',0),
                          (6,'abhishekh','dev',4);
update emp1 set designation = 'CEO' where eid = 5;
select * from emp1;
select e.ename,e.designation,m.ename,m.designation from emp1 e inner join emp1 m on e.mid = m.eid;

select e.ename,e.designation,m.ename,m.designation from emp1 as e ,emp1 as m where m.eid = e.mid;
