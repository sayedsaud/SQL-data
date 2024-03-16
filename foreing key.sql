use itvedant;
create table user(
uid int primary key,
uname varchar(20));
create table order12(
oid int,
product_name varchar(20),
uid int,
foreign key(uid) references user(uid));
desc order12;
insert into user(uname) values('saud'),('sanket'),('ashish'),('abhishekh');
insert into order12 values(1,'milk',2);
insert into order12 values(1,'biryani',3);
insert into order12 values(1,'milk',1);
select * from order12;