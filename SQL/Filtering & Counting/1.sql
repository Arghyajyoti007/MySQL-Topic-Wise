-- Filtering and Counting Data: 
-- You are given a database(school_database), create a  table named Orders with the following columns: OrderID(Primary key), CustomerID, OrderDate, and TotalAmount. Your task is to write SQL queries to perform the following tasks:
-- a. Retrieve all orders placed by a specific customer (OrderID=5).
-- b. Find the total number of orders placed by the all the customers combined. Hint count(column_name)
-- c. Find the total amount spent by the customer whose .CustomerID is 101
-- You should use the WHERE clause to filter data based on the given customer ID.

use school_database;
-- drop table Orders;
-- truncate table Orders;


create table Orders
(orderID int primary key auto_increment not null, 
customerID int not null, 
orderDate date not null,  
totalAmount decimal(10,2) not null);


INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (201, '2024-03-01', 1250.50);
INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (202, '2024-03-02', 899.99);
INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (203, '2024-03-03', 2300.75);
INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (204, '2024-03-04', 1750.00);
INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (205, '2024-03-05', 499.49);

INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (201, '2024-03-06', 1450.25);
INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (202, '2024-03-07', 2100.00);
INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (203, '2024-03-08', 780.80);
INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (204, '2024-03-09', 3200.60);
INSERT INTO Orders (customerID, orderDate, totalAmount) VALUES (205, '2024-03-10', 1650.90);


select * from Orders;

-- Retrieve all orders placed by a specific customer (OrderID=5).
select * from Orders
where orderID = 5;

-- Find the total number of orders placed by the all the customers combined. Hint count(column_name)
select count(*) as total_number_of_order from Orders;

-- Find the total amount spent by the customer whose .CustomerID is 201
-- You should use the WHERE clause to filter data based on the given customer ID.
select sum(totalAmount) as spent_amount from Orders
where customerId = 201;

