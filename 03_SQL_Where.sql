use customerdb;

-- Topic: SQL WHERE
select * from customer where city='Lucknow';

-- Practice Queries
-- Query 1
select * from customer where city='Lucknow';

-- Query 2
select * from customer where customerId=5;

-- Query 3
select * from customer where country='India';

-- Query 4
select customerName, city from customer where city='Mumbai';

-- Query 5
select customerName, address from customer where city='Bengaluru';

-- Query 6
select * from customer where postalCode='110001';

-- Challenge Question
select customerName from customer where city='Lucknow';