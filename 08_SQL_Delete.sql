use customerdb;

-- Topic :- DELETE
-- Theory:-
-- The DELETE Statement removes records from a table.

-- SYNTAX:-
-- DELETE FROM table_name WHERE condition;

-- NOTE:-
-- This command: "DELETE FROM customer;" removes every row from the table. The table still exists, but all records are deleted.

-- Workflow of SQL DELETE
-- Before deleting:- Check the data first.
select * from customer where customerId=11;

-- Then delete:-
delete from customer where customerId=11;

-- Finally verify:-
-- Output:- Empty Set
select * from customer where customerId =11;

-- Task 1 - Delete One Customer
delete from customer where customerId=12;
-- Verify:
select * from customer where customerId=12;

-- Task 2 - Delete by City
-- Delete customers from Jaipur.
delete from customer where city='Jaipur';
-- Verify:
select * from customer where city='Jaipur';

-- Task 3 - Delete by Company Name
delete from customer where customerName='Sky Tech';

-- Task 4 - Delete Multiple Rows
-- Delete customers from Kolkata.
delete from customer where city='Kolkata';

-- Task 5 - Verify Remaining Data
select * from customer order by customerId;

-- Challenge 1
-- Delete customer ID 15.
delete from customer where customerId=15;

-- Challenge 2
-- Delete all customers from Mumbai.
delete from customer where city='Mumbai';

-- Challenge 3
-- Delete customers whose postal code is 560001.
delete from customer where postalCode='560001';

-- Challenge 4
-- Delete all customers except those from India.
delete from customer where country<>'India';
-- With the current data, this may not delete any rows.

-- Challenge 5
-- Delete customer Bright Future Technologies.
delete from customer where customerName='Bright Future Technologies';
