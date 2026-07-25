use customerdb;

-- Topic :- SQL Aggregate Functions
-- Theory:-
-- Aggregate functions calculate a single value from multiple rows.
-- Functions & Purpose
-- 1. COUNT() -> Count records
-- 2. SUM() -> Add values
-- 3. AVG() -> Calculate average
-- 4. MIN() -> Smallest Value
-- 5. MAX() -> Largest Value

-- Task 1 - Total Customers
select count(*) as TotalCustomers from customer;

-- Task 2 - Total Customers from India
select count(*) as IndianCustomers from customer where country='India';

-- Task 3 - First Customer ID
select min(customerId) as FirstCustomer from customer;

-- Task 4 - Last Customer ID
select max(customerId) as LastCustomer from customer;

-- Task 5 - Lowest Postal Code
select min(postalCode) as LowestPostalCode from customer;

-- Task 6 - Highest Postal Code
select max(postalCode)  as HighestPostalCode from customer;

-- Challenge 1
-- Count customers living in Mumbai.
select count(*) as MumbaiCustomers from customer where city='Mumbai';

-- Challenge 2
-- Count customers from Lucknow.
select count(*) as LucknowCustomers from customer where city='Lucknow';

-- Challenge 3
-- Find the customer with the highest Customer ID.
select * from customer where customerId=(select max(customerId) from customer);

-- Challenge 4
-- Find the customer with the smallest Customer ID.
select * from customer where customerID=(select min(customerID) from customer);

-- Challenge 5
-- Display :
-- Total Customers, First Customer ID, Last Customer ID

select count(*) as TotalCustomers, min(customerId) as FirstCustomer, max(customerId) as LastCustomer from customer;

-- Customer Dashboard
select count(*) as TotalCustomers, count(distinct city) as TotalCities, count(distinct country) as TotalCountries, min(customerId) as FirstCustomerID, max(customerId) as LastCustomerID from customer;

-- Find city that has the most customers.
select city, count(*) as TotalCustomers from customer group by city order by TotalCustomers desc;