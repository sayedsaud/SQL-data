use itvedant;
show tables;
create table user1(
uid int primary key auto_increment,
uname varchar(20)
);
create table order1(
oid int primary key auto_increment,
product_name varchar(20),
uid int,
foreign key(uid) references user1(uid)
);
insert into user1(uname) values('saud'),('sanket'),('ashish'),('abhi');
insert into order1(product_name,uid) values('milk',2),('biryani',1),('bread',3);
select * from order1;
select user1.uname,order1.product_name from order1 inner join user1 on user1.uid = order1.uid;
