#-------------math function
select abs(-24);                            # it will give always positive value
select abs(-24.1111);                     	# it willgive always positive value
select ceil(24.9);                          # it will give upper value if data is in point
select round(24.4);                         # it will give same value if its under or equal to o.4 and it will give upper value if its value is 0.5 or more then 0.5.
select round(24.5);                         # # it will give same value if its under or equal to o.4 and it will give upper value if its value is 0.5 or more then 0.5
select truncate(24.11111,2);                # it will display the decimal value of aur choice(24.111,2) commo to is value of our choice =24.11
select mod(3,2);                            # it will reminder of the values
select floor(10/6);                         # it will the value before decimal(10/6)=1.66666 after floor function 10/6=1
select pow(2,6);                            # it will give the power of the given data
select sqrt(6);                             # it will give square root of the data
----------------------------------
use itvedant;

select department,name,sqrt(marks) from studentdata;
select department,name,mod(marks,100) from studentdata;

----------------------------------------------
#date function
select curdate();                           # it will show current date
select now();                               # it will show current date and time
select sysdate();                           # it will show system date
select last_day('2023-02-11');              # it will show last day of that date
select datediff((curdate()),'2001-07-24');  # it will count the days between tew dates
select date_format(curdate(),'%d-%c-%y');   # it will show date of our format where [c] represent the month
select date_format(curdate(),'%d-%M-%y');   # it will show date or our choice [M] repre
select date_format(curdate(),'%d-%b-%y');   # it will show date or our choice [b] represent the month in  shot form alphabet
select date_format(curdate(),'%a-%d-%b-%y');# it will show date or our choice [a] represent the day of the current date in short form
select date_format(curdate(),'%W-%d-%b-%y');# it will show date or our choice [w] represent the day of the current date in full form.
select date_format(now(),'%W-%d-%b-%y-%h');     #   %h will give hour
select date_format(now(),'%W-%d-%b-%y-%h-%i');  #   %i will give minutes
select date_format(now(),'%W-%d-%b-%y-%h-%s');  #   %s will give seconds 
select date_format(now(),'%W-%d-%b-%y-%h-%i:%s');
---------------------------------------
create table abcd (
id int primary key,
DOB date not null,
age int check (age>=18));
insert into abcd values (1,'2024-03-14',18);
select * from abcd;
select id,date_format(DOB,'%W-%D-%Y-') AS dob,age FROM ABCD;     # as is use to display temporary column name .
