show databases;
use itvedant;
show tables;
select * from studentdata;
select count(id),department,name,paid_fees,attendence from studentdata where id in (1) group by department;     # it will show all detals of id (1)
select count(id),department from studentdata where marks not in (95) group by department;                       # it will  display all data except 95 marks as it mentioned
select* from studentdata where marks not in (35);
select* from studentdata where marks between (35)and (90);
select upper('saud');                                                                                           # t will upper case the lower case word   
select lower('SAUD');                                                                                           # it will lower case the uppe case wor
select concat('welcome to it vedant thane ', 'saud');                                                           # it will join two string into the one string
select replace('welcome to it vedant thane ', 'thane', 'vashi');                                                # it wil replace the old word with the new word
select replace('welcome to it vedant thane ', 'a', 'A');                                                        # it will replace a single alphabet with new words
select length('hello my name is saud');                                                                         # it will show the length of the string
select trim(     'saud'     );                                                                                  # it will remove all space from start and  end of the word
select length(trim(     'saud'     ));                                                                          # it will show the length with space
select ltrim(     'saud'     );                                                                                 # it will remove the left space from the string
select rtrim(   'sayed'  'saud'     );                                                                        
select substr('hello i am saud', 1,5);                                                                          # it will show specific characteristc of our choice (1,5) 1 is the starting point and 5 is the end point til which we want to have our data
