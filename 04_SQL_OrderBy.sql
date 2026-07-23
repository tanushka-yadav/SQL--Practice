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