use customerdb;

-- Topic:- SQL GROUP BY & HAVING

-- Theory

-- Group By
-- GROUP BY groups rows that have the same value.

-- EXAMPLE:-
-- Customer & City
-- Amit -> Delhi
-- Rahul -> Delhi
-- Priya -> Mumbai
-- Neha -> Pune

-- Using:- GROUP BY city
-- SQL creates groups:-
-- Delhi -> Amit, Rahul
-- Mumbai -> Priya
-- Pune -> Neha

-- HAVING
-- HAVING filters groups.

-- Like:-

-- WHERE -> Filters rows
-- GROUP BY -> Creates groups
-- HAVING -> Filters groups

-- Task 1 - Count Customers in Each City
select city, count(*) as TotalCustomers from customer group by city;

-- Task 2 - Count Customers in Each Country
select country, count(*) as TotalCustomers from customer group by country;

-- Task 3 - Count Customers by Postal Code
select postalCode, count(*) as Customers from customer group by postalCode order by Customers desc;

-- Task 4 - Cities with More than One Customer
select city, count(*) as TotalCustomers from customer group by city having count(*)>1;

-- Task 5 - Countries Having More Than Five Customers
select country, count(*) as TotalCustomers from customer group by country having count(*)>5;

-- Challenge 1
-- Prepare a report showing:- City, Number of Customers
-- Sort by highest number of customers.
select city, count(*) as TotalCustomers from customer group by city order by TotalCustomers desc;

-- Challenge 2
-- Display only cities having exactly one customer.
select city, count(*) as TotalCustomers from customer group by city having count(*)=1;

-- Challenge 3
-- Display countries having at least two customers.
select country, count(*) as TotalCustomers from customer group by country having count(*)>=2;

-- Challenge 4
-- Display postal codes having multiple customers.
select postalCode, count(*) as TotalCustomers from customer group by postalCode having count(*)>1;

-- Challenge 5
-- Display:- Country, City, Number of Customers
-- Sort by:- 1. Country 2. Highest customer count
select country, city , count(*) as TotalCustomers from customer group by country, city order by country, TotalCustomers desc;

-- Customer Analytics Dashboard --> i.e., summary reports used in analytics dashboards.
select country, count(*) as TotalCustomers, count(distinct city) as TotalCities from customer group by country;

-- Which city has the highest number of customers?
select city, count(*) as TotalCustomers from customer group by city order by TotalCustomers desc limit 1;