show databases;
use itvedant;
show tables;
select * from studentdata;
select count(id),department,name,paid_fees,attendence from studentdata where id  in (1) group by department;
select count(id),department from studentdata where marks not in (95) group by department;
