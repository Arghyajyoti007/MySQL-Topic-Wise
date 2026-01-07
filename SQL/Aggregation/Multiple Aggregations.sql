-- Multiple Aggregations
-- Create a table named Orders with columns OrderID, CustomerID, Product, and Price.
-- Insert records into the table.
-- Write a query to find the total revenue (sum of prices) for each customer using the SUM aggregate function.

drop table Orders;

create table Orders 
(
	OrderID int primary key auto_increment, 
    CustomerID int not null, 
    Product varchar(50) not null, 
    Price decimal(10,2) not null
);

INSERT INTO Orders (CustomerID, Product, Price)
VALUES 
    (101, 'Laptop', 1200.00),
    (101, 'Mouse', 25.50),
    (102, 'Smartphone', 800.00),
    (103, 'Monitor', 300.00),
    (102, 'Keyboard', 45.00),
    (104, 'Headphones', 150.00),
    (101, 'Webcam', 75.00),
    (103, 'Desk Lamp', 35.00);
    
select * from Orders;

-- Write a query to find the total revenue (sum of prices) for each customer 
-- using the SUM aggregate function.
select CustomerID, sum(Price) as total_revenue from Orders
group by(CustomerID);

