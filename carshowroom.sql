use carshowroom;
show tables;
create database carshowroom;

CREATE TABLE INVENTORY (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year_of_manufacturing INT NOT NULL,
    fuel_type VARCHAR(255) NOT NULL
);

CREATE TABLE CUSTOMER (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE SALE (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    sale_date DATE NOT NULL,
    mode_of_payment VARCHAR(255) NOT NULL,
    sales_person_employee_id INT NOT NULL,
    selling_price bigint not NULL,
    foreign key(car_id) references inventory(car_id),
    foreign key (customer_id) references customer(customer_id)        
);

CREATE TABLE EMPLOYEE (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    date_of_joining DATE NOT NULL,
    designation VARCHAR(255) NOT NULL,
    salary bigint NOT NULL
);
insert into inventory (name,price,model,year_of_manufacturing,fuel_type) values ('bmw',7500000,'bmw x1',2022,'petrol');
select * from inventory;
