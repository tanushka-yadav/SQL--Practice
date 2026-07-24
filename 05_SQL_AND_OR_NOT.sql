use customerdb;

-- Topic: SQL AND, OR, NOT

-- Task 1 - AND Operator
-- Show customers from Lucknow whose country is India.
select * from customer where city='Lucknow' and country='India';

-- Task 2 - Another AND Example
-- Show customers from Bengaluru with postal code 560001.
select * from customer where city='Bengaluru' and postalCode='560001';

-- Task 3 - OR Operator
-- Show customers from Mumbai or Kolkata.
select * from customer where city='Mumbai' or city='Kolkata';

-- Task 4 - OR with Three Cities
select * from customer where city='Mumbai' or city='Lucknow' or city='Jaipur';

-- Task 5 - NOT Operator
-- Show customers who are not from Lucknow.
select * from customer where not city='Lucknow';

-- Task 6 - not with country
select * from customer where not country ='India';
-- (with the current data this may return no rows because all customers are from India.)

-- Task 7 - AND + OR
-- Show customers from Mumbai OR Lucknow whose country is India.
select * from customer where (city='Mumbai' or city='Lucknow') and country='India';

-- Task 8 - NOT + AND
-- Show customers who are not from Jaipur but belong to India.
select * from customer where not city='Jaipur' and country='India';

-- Challenge 1
-- Display :- Customer Name , City Only for customers from Mumbai and India.
select customerName, city from customer where city='Mumbai' and country='India';

-- Challenge 2
-- Show customers from Hyderabad or Noida.
select customerName, city from customer where city='Hyderabad' or city='Noida';

-- Challenge 3
-- Display all customers except those from Kolkata.
select * from customer where not city='Kolkata';

-- Challenge 4
-- Show:- Customer Name, Contact Name, City Only if:- City=Lucknow OR Jaipur, Country=India
select customerName, contactName, city from customer where (city='Lucknow' or city='Jaipur') and country='India';

-- Challenge 5
-- Create a customer report showing: Customer Name, Contact Name, Address, City, Postal Code
-- Exclude Mumbai Customers.
-- Sort by City.
select customerName, contactName, address, city, postalCode from customer where not city='Mumbai' order by city;

-- Customer Filter Report
select customerName, contactName, city, country from customer where (city='Lucknow' or city='Noida' or city='Hyderabad') and country='India' order by city, customerName;
