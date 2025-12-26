-- Date-Based Filtering: 
-- Assume you have a table named Sales with columns: SaleID, ProductID, SaleDate, and SaleAmount. 
-- Your task is to write SQL queries to perform the following tasks:
-- a. Retrieve all sales that occurred between two specific dates (take any 2 dates of your choice).
-- b. Calculate the total sales amount for the given date range.
-- You should use the WHERE clause to filter data based on the sale dates within the specified range.

use school_database;

create table Sales (
	SaleID int primary key auto_increment, 
    ProductID int not null, 
    SaleDate date not null, 
    SaleAmount decimal(10,2) not null
);

INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (301, '2024-04-01', 1500.50);
INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (302, '2024-04-02', 899.99);
INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (303, '2024-04-03', 2450.75);
INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (304, '2024-04-04', 1750.00);
INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (305, '2024-04-05', 499.49);

INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (301, '2024-04-06', 1350.25);
INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (302, '2024-04-07', 2100.00);
INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (303, '2024-04-08', 780.80);
INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (304, '2024-04-09', 3200.60);
INSERT INTO Sales (ProductID, SaleDate, SaleAmount) VALUES (305, '2024-04-10', 1650.90);

select * from Sales;

-- a. Retrieve all sales that occurred between two specific dates (take any 2 dates of your choice).
select * from Sales
where SaleDate between '2024-04-02' and '2024-04-05';

-- b. Calculate the total sales amount for the given date range.
select sum(SaleAmount) as total_sale_amount from Sales
where SaleDate between '2024-04-02' and '2024-04-05';

