use customerdb;

-- Topic : UPDATE
-- Theory:-
-- The UPDATE statement is used to modify existing records in a table.

-- SYNTAX:-
-- UPDATE table_name SET column1=value1, column2=value2 WHERE condition;

-- NOTE:-
-- 1. Always use a WHERE clause unless intentionally want to update every row.
-- 2. This command "UPDATE customer SET city='Delhi';" -> Updates every row because there is no WHERE clause.


-- Task 1 - Update One Customer
-- Customer ID 11 has changed their city from Noida to Gurugram.
update customer set city='Gurugram' where customerId=11;

-- Verify
select * from customer where customerId=11;

-- Task 2 - Update Contact Name
update customer set contactName='Aman Sharma' where customerId=12;
-- Verify
select * from customer where customerId=12;

-- Task 3 - Update Address
update customer set address ='Electronic City' where customerId=13;

-- Task 4 - Update Multiple Columns
update customer set city='New Delhi', postalCode='110001' where customerId=14;

-- Task 5 - Update Company Name
update customer set customerName='Green Foods Pvt Ltd' where customerId=15;

-- Challenge 1
-- Customer ID 16 changed both their address and postal code.
-- Update:-
-- Address -> Jubilee Hills, Postal Code -> 500033
update customer set address='Jubilee Hills', postalCode='500033' where customerId=16;

-- Challenge 2
-- Update every customer from Mumbai so their city becomes:- Mumbai City
update customer set city='Mumbai City' where city='Mumbai';

-- Challenge 3
-- Update customers from Lucknow so their postal Code becomes:- 226010
update customer set postalCode='226010' where city='Lucknow';

-- Challenge 4
-- Display all updates customers.
select * from customer order by customerId;

-- Challenge 5
-- Update customer ID 17:
-- Company -> Bright Future Technologies, Contact -> Priya Sharma, City -> Pune
update customer set customerName='Bright Future Technologies', contactName='Priya Sharma', city='Pune' where customerId=17;

-- Customer Information Correction
-- Maintaining a production database.
-- Perform These updates:-
-- 1. Change customer ID 18 city of Bengaluru.
update customer set city='Bengaluru' where customerId=18;

-- 2. Change customer ID 19 address.
    update customer set address='Park Street' where customerId=19;

-- 3. Change customer ID 20 contact name.
    update customer set contactName='Soniya Sahani' where customerId=20;

-- 4. Verify all changes.
select * from customer where customerId between 18 and 20;






