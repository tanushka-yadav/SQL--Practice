use customerdb;

-- Topic: INSERT INTO
-- INSERT INTO is used to add records or new records into a table.
-- Syntax:-
-- INSERT INTO table_name(column1, column2, column3,...) VALUES(value1, value2, value3,...);

-- Task 1 - Add One Customer
insert into customer(customerId, customerName, contactName, address, city, postalCode, country) values(11,'NextGen Solutions','Aditya Sharma','Sector 62','Noida','201309','India');
-- Verify
select * from customer where customerId=11;

-- Task 2 - Add Another Customer
insert into customer(customerId, customerName, contactName, address, city, postalCode, country) values(12,'Alpha Technologies','Riya Singh','MG Road','Pune','411001','India');

-- Task 3 - Insert Multiple Customers
insert into customer(customerId, customerName, contactName, address, city, postalCode, country)
values
    (13,'Sky Tech','Vaishnavi Verma','Park Street','Kolkata','700016','India'),
    (14,'Green Foods','Anjali Gupta','Civil Lines','Lucknow','226001','India'),
    (15,'Royal Electronics','Vikas Mehta','MI Road','Jaipur','302001','India');
-- Check Total Records
select * from customer;

-- Task 1
-- Add a new customer
insert into customer(customerId, customerName, contactName, address, city, postalCode, country) value(16,'TechNova Pvt Ltd','Rahul Sharma','Banjara Hills','Hyderabad','500034','India');

-- Task 2
-- Verify only Hyderabad customers.
select * from customer where city='Hyderabad';

-- Challenge 1
-- Add
-- Customer ID : 17, Company : Bright Future Ltd, Contact : Priya Kapoor, City : Mumbai
insert into customer(customerId, customerName, contactName, address, city, postalCode, country) values(17,'Bright Future Ltd','Priya Kapoor','Marine Drive','Mumbai','400001','India');

-- Challenge 2
-- Insert two customers in one query.
insert into customer(customerId, customerName, contactName, address, city, postalCode, country)
values
    (18,'Digital Vision','Amit Kumar','Connaught Place','New Delhi','110001','India'),
    (19, 'Future AI','Neha Sharma','Sector 18','Noida','201301','India');

-- Challenge 3
-- Verify customers added after Customer ID 15.
select * from customer where customerId>15;

-- Challenge 4
-- Display Only : Customer Name, Contact Name, City
-- for all newly added customers.
select customerName, contactName, city from customer where customerId>=16;

-- Challenge 5
-- Add one customer from Bengaluru and one from Chennai using a single INSERT statement.
insert into customer(customerId, customerName, contactName, address, city, postalCode, country)
values
    (20,'Cloud Solutions','Vivek Singh','MG Road','Bengaluru','560001','India'),
    (21,'Ocean Technologies','Karthik Raj','Anna Nagar','Chennai','600040','India');

