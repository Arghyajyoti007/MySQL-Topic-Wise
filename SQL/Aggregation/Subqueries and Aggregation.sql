-- Subqueries and Aggregation
-- Create two tables: Customers with columns CustomerID and Name, 
-- and Orders with columns OrderID, CustomerID, and TotalPrice.
-- Insert records into both tables.
-- Write a query to find the customer(s) with the highest total spending (sum of TotalPrice) using a subquery and the MAX function.

use school_database;

create table Customers (
	customerID int primary key auto_increment, 
	custName varchar(50) not null
);
create table Orders (
	OrderID int primary key auto_increment, 
    CustomerID int not null, 
    TotalPrice decimal(10,2) not null
);


-- Insert records into both tables.
INSERT INTO Customers (custName) VALUES 
('Alice Johnson'),
('Bob Smith'),
('Charlie Brown'),
('Diana Prince'),
('Ethan Hunt');

INSERT INTO Orders (CustomerID, TotalPrice) VALUES 
(1, 150.50), -- Order for Alice
(1, 45.00),  -- Another order for Alice
(2, 299.99), -- Order for Bob
(4, 12.50),  -- Order for Diana
(5, 1000.00); -- Order for Ethan

-- Write a query to find the customer(s) with the highest total spending 
-- (sum of TotalPrice) using a subquery and the MAX function.
select * from Customers;
select * from Orders;

SELECT custName, total_spend 
FROM (
    SELECT c.CustomerID, c.custName, SUM(o.TotalPrice) AS total_spend 
    FROM Customers c
    INNER JOIN Orders o ON o.CustomerID = c.customerID
    GROUP BY c.CustomerID, c.custName
) AS sub_table 
WHERE total_spend = (
    SELECT MAX(innerPrice) FROM (
        SELECT SUM(TotalPrice) AS innerPrice 
        FROM Orders 
        GROUP BY CustomerID
    ) AS max_table 
);

