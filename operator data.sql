show databases;
use itvedant;
show tables;
select * from student;
select * from student where first_name like 's%';               # for fetch data by first character of first name
select * from student where last_name like '%d';                # for fetch data by last character of last name
select * from student where first_name like '__u%';             # for fetch data by 3 character of first name
select * from student where first_name like 's%d';              # for fetch data start with s and end with d
select * from student where first_name like '%a__';             # for fetch data by 3rd third ending character
create table studentdata (id int,name varchar(300), department varchar(300),marks float,paid_fees bigint,attendence int);
select * from studentdata;
desc studentdata;
alter table studentdata add primary key(id);
alter table studentdata modify id int auto_increment;
insert into studentdata(name,department,marks,paid_fees,attendence) value('tanya','data analyst',95,150000,97),('netra','java',78,70000,84),('pruthika','dse',66,110000,74);
update studentdata set name ='saud sayed' where id=1;
select* from studentdata where name like 's%';
select * from studentdata limit 6;                 # to fetch data till 6
select * from studentdata order by paid_fees desc;           # to fetch fees in decending order
select distinct paid_fees from studentdata order by paid_fees desc;    # distinct is used display non-repeted data and merge duplicates data.
select distinct paid_fees from studentdata order by paid_fees desc;          # it will fetch data smaller to larger to show smallest fees.
select * from studentdata order by paid_fees limit 1;     # it will dispalay on first row.
select * from studentdata order by paid_fees limit 2,8;   # it will skip 2 row and display next 8 row.
select distinct paid_fees from studentdata order by paid_fees desc limit 3;    # it will display top 3 heigest paid fees.
select distinct paid_fees from studentdata order by paid_fees limit 3;          # it will display top 3 smallest paid fees. 
select * from studentdata where id in (1,3,5);     #it will display data of selected multiple id.
update studentdata set paid_fees = paid_fees-(paid_fees*0.15) where id=8;  # its use updat fees
select * from studentdata;
select * from studentdata where id between 3 and 8;
