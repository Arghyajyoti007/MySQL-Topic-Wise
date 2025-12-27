-- Sales Analysis
-- Imagine you are working with a sales database that contains information about sales transactions. Your task is to analyze the data using SQL to answer specific questions.
-- Create a table named sales with the following columns:
-- order_id (integer): A unique identifier for each order.
-- customer_id (integer): The ID of the customer making the purchase.
-- product_id (integer): The ID of the product being sold.
-- quantity (integer): The quantity of the product sold.
-- price (decimal): The price per unit of the product.
-- Insert sample data into the sales table with multiple records representing various sales transactions.
-- Write an SQL query to find the total sales amount for each customer. Use the GROUP BY clause to group the data by customer_id and calculate the total sales amount for each customer.
-- Apply the HAVING clause to filter out customers who have a total sales amount less than $500. Include only those customers who have spent at least $500 in total.
-- Write a query that displays the customer's ID, their total sales amount, and the number of orders they have placed (Hint: Use COUNT() function).
-- Run your SQL query and provide the results, showing the customer IDs, total sales amount, and the number of orders for each eligible customer.

use school_database;

drop table sales;

create table sales (
		order_id int primary key auto_increment,
        customer_id int not null,
        product_id int not null,
        quantity int not null, 
        price decimal (10,2) not null
);

select * from sales;
INSERT INTO sales (customer_id, product_id, quantity, price) VALUES
(101, 501, 2, 25.00),
(102, 505, 1, 150.50),
(103, 502, 5, 10.00),
(101, 503, 1, 45.00),
(104, 501, 3, 25.00),
(105, 508, 1, 99.99),
(102, 502, 10, 10.00),
(106, 504, 2, 12.50),
(107, 505, 1, 150.50),
(103, 501, 1, 25.00);


-- Write an SQL query to find the total sales amount for each customer. 
-- Use the GROUP BY clause to group the data by customer_id and calculate the total sales amount for each customer.
select customer_id, sum(quantity * price) as total_sale_amount from sales
group by customer_id;


-- Apply the HAVING clause to filter out customers who have a total sales amount less than $50. 
-- Include only those customers who have spent at most $50 in total.
select customer_id, sum(price*quantity) as total_sale_amount from sales
group by customer_id
having total_sale_amount<=50;

-- Write a query that displays the customer's ID, their total sales amount, and the number of orders they have placed 
-- (Hint: Use COUNT() function).
select customer_id, sum(price*quantity) as total_sale_amount, count(quantity) as total_orders from sales
group by customer_id;

-- Run your SQL query and provide the results, showing the customer IDs, total sales amount, 
-- and the number of orders for each eligible customer.
select customer_id, sum(price*quantity) as total_sale_amount, count(customer_id) as total_orders from sales
group by customer_id;

