-- View with Joins: 
-- Design a view called order_details that combines data from two tables: 
-- orders and order_items. .
-- The view should include information about each order, such as the order ID, customer ID, order date, and total amount. 
-- Write the SQL statement to create the view and query it to retrieve order details.

use school_database;

drop table orders;
drop table order_items;

create table orders (
	order_id int primary key,
    customer_id int not null,
    order_date date not null
);
create table order_items (
order_id int primary key not null, 
order_quantity int not null,
total_amount decimal (10,2) not null); 

-- Inserting data into the 'orders' table
INSERT INTO orders (order_id, customer_id, order_date) 
VALUES 
(101, 5001, '2023-10-01'),
(102, 5002, '2023-10-02'),
(103, 5003, '2023-10-03');

-- Inserting data into the 'order_items' table
-- Note: order_id here must match the order_id in the 'orders' table
INSERT INTO order_items (order_id, order_quantity, total_amount) 
VALUES 
(101, 2, 45.50),
(102, 1, 120.00),
(103, 5, 15.75);

select * from orders;
select * from order_items;

-- The view should include information about each order, such as the order ID, customer ID, order date, and total amount. 
-- Write the SQL statement to create the view and query it to retrieve order details.

create view sales_details as
select o.order_id, customer_id, order_date, order_quantity, total_amount from orders as o
inner join order_items as oi
where o.order_id = oi.order_id;

select * from sales_details;
