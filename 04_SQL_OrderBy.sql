use customerdb;

-- Topic: SQL ORDER BY
-- Default Ascending Order
-- Display customer ordered by customer name
select * from customer order by customerName;

-- Descending Order
-- Display customers ordered by customer name descending
select * from customer order by customerName DESC;

-- Sort by City
select * from customer order by city;

-- City Descending
select * from customer order by city desc;

-- Postal Code
select * from customer order by postalCode;

-- Country then Customer Name
select * from customer order by country, customerName;

-- Mixed Sorting
select * from customer order by country ASC, customerName DESC;

-- Challenging Questions
-- Challenge 1
select * from customer order by address;

-- Challenge 2
select * from customer order by contactName DESC;

-- Challenge 3
select * from customer order by city, customerName;

-- Professional ORDER BY Queries
-- Task 1- Sort Customers Alphabetically
select * from customer order by customerName;

-- Task 2- Reverse Alphabetical Order
select * from customer order by customerName desc;

-- Task 3 - Sort by City
select * from customer order by city;

-- Task 4 - Sort by Postal Code
select * from customer order by postalCode;

-- Task 5- Highest Postal Code first
select * from customer order by postalCode desc;

-- Task 6- Multiple Column Sorting
select * from customer order by country, city, customerName;

-- Task 7- Mixed Sorting
select * from customer order by city asc, customerName desc;

-- Task 8 - Display Selected Columns
select customerName, city, country from customer order by city, customerName;

-- Challenge 1
select customerName, city from customer order by customerName;

-- Challenge 2
select distinct city from customer order by city desc;

-- Challenge 3
select customerName, country from customer order by country, customerName;

-- Challenge 4
select customerName, address, city from customer order by city desc;

-- Challenge 5
select customerName, contactName, city, country from customer order by country, city, customerName;