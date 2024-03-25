use itvedant;
select * from college;
select * from student12;
select student12.sname, college.cname from student12 cross join college;            # cross join is use to compare all matching and non matching values
select student12.sname, college.cname from student12,college;
------------------------------------------------------------------------------------------

