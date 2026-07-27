use customerdb;

-- Topic :- SQL Subqueries & Nested Queries

-- Subquery -> A Subquery is a query inside another query. A Subquery executes first, and then the outer query uses its result.
-- General Syntax:-
-- SELECT column_name FROM table_name WHERE column_name=(SELECT ...);

-- Task 1 - Customer(s) with the Highest Customer ID
select * from customer where customerId=(
    select max(customerId)
    from customer
    );

-- Task 2 - Customer(s) with the Lowest Customer ID
select * from customer where customerId=(select min(customerId) from customer);

-- Task 3 - Most Expensive Order
select * from orders where price=(select max(price) from orders);

-- Task 4 - Cheapest Order
select * from orders where price=(select min(price) from orders);

-- Task 5 - Latest Order
select * from orders where orderDate=(select max(orderDate) from orders);


-- Challenge 1
-- Find the customer(s) who ordered the most expensive product.
select customer.customerName, orders.productName, orders.price from customer inner join orders on customer.customerId=orders.customerId where orders.price=(select max(price) from orders);

-- Challenge 2
-- Find all customers who have placed at least one order.
select * from customer where customerId in (select customerId from orders);

-- Challenge 3
-- Find customers who have never placed an order.
select * from customer where customerId not in(select customerId from orders);

-- Challenge 4
-- Find all orders whose price is greater than the average price.
select * from orders where price>(select avg(price) from orders);

-- Challenge 5
-- Display :- Customer Name, Product Name, Price
-- Only for products costing more than the average price.
select customer.customerName, orders.productName, orders.price from customer inner join orders on customer.customerId=orders.customerId where orders.price>(select avg(price) from orders);

-- A report of customers who purchased products priced above the average.
select customer.customerName, orders.productName, orders.price from customer inner join orders on customer.customerId=orders.customerId where orders.price>(select avg(price) from orders) order by orders.price desc;

-- Find the second highest product price.
select max(price) as SecondHighestPrice from orders where price<(select max(price) from orders);