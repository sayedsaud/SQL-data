use itvedant;
select * from student12;
select * from student12 where age = (select max(age) from student12);
select * from student12 where sid in (1,5,8);
select * from student12 where age = (select max(age) from student12 where age < (select max(age)from student12));
select * from student12 where sid > any (select sid from student12 where sid between 1 and 8);  # any is use to compare minimum value and give all out till las
select * from student12 where sid > some (select sid from student12 where sid between 1 and 8); # any and some are both works some 
select * from student12 where sid > all (select sid from student12 where sid between 1 and 8);  # all is use to compare maximum value and give value bigger then compare value
