use customerdb;

 drop table if exists orders;
create table orders(
    orderId int primary key,
    customerId int,
    productName varchar(100),
    quantity int,
    price decimal(10,2),
    orderDate date,

    foreign key(customerId) references customer(customerId)
);

show tables;

insert into orders
(orderId, customerID, productName, quantity, price, orderDate)
values
    (101,1,'Laptop',1,65000,'2026-07-01'),
    (102,2,'Mouse',2,1200,'2026-07-02'),
    (103,3,'Keyboard',1,2500,'2026-07-03'),
    (104,1,'Monitor',2,18000,'2026-07-04'),
    (105,4,'Headphones',1,3500,'2026-07-05'),
    (106,5,'Printer',1,14000,'2026-07-06'),
    (107,2,'SSD',1,7200,'2026-07-07'),
    (108,6,'RAM',2,4500,'2026-07-08');

select * from orders;

-- INNER JOIN
-- Return customers who have placed orders.
select customer.customerName, orders.productName, orders.quantity from customer inner join orders on customer.customerId=orders.customerId;

-- Task 1
-- Display:- Customer Name, Product Name
select customer.customerName, orders.productName from customer inner join orders on customer.customerId=orders.customerId;

-- Task 2
-- Display:- Customer Name, Product, Price
select customer.customerName, orders.productName, orders.price from customer inner join orders on customer.customerId=orders.customerId;

-- Task 3
-- Display:- Customer, Product, Quantity, Order Date
select customer.customerName, orders.productName, orders.quantity, orders.orderDate from customer inner join orders on customer.customerId=orders.customerId;

-- LEFT JOIN
-- Show all customers, even those without orders.
select customer.customerName, orders.productName from customer left join orders on customer.customerId=orders.customerId;

-- RIGHT JOIN
-- Show all orders.
select customer.customerName, orders.productName from customer right join orders on customer.customerId=orders.customerId;


-- Challenge 1
-- Display :- Customer Name, Product Name, Price
-- Sort by highest price.
select customer.customerName, orders.productName, orders.price from customer inner join orders on customer.customerId=orders.customerId order by orders.price desc;

-- Challenge 2
-- Find customers who bought more than one quantity.
select customer.customerName, orders.productName, orders.quantity from customer inner join orders on customer.customerId=orders.customerId where orders.quantity>1;

-- Challenge 3
-- Calculate total sales.
select sum(price*quantity) as TotalSales from orders;

-- Challenge 4
-- Find the most expensive product.
select * from orders order by price desc limit 1;

-- Challenge 5
-- Display:- Customer, Product, Quantity, Price, Total Cost
select customer.customerName, orders.productName, orders.quantity, orders.price, orders.quantity*orders.price as TotalCost from customer inner join orders on customer.customerId=orders.customerId;

select customer.customerName, orders.productName, orders.quantity, orders.price, orders.quantity*orders.price as Amount, orders.orderDate from customer inner join orders on customer.customerId=orders.customerId order by Amount desc;
