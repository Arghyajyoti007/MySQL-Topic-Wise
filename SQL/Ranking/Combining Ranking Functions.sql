-- Combining Ranking Functions
-- Create a table named Sales with columns ProductID, SaleDate, and Amount.
-- Insert records representing sales data for different products.
-- Write a query to calculate the rank and row number for each product based on the sale amount, using both RANK() and ROW_NUMBER().

drop table sales;

create table sales (
	productId int not null,
    saleDate datetime not null,
    sale_amount int not null
);

INSERT INTO sales (productId, saleDate, sale_amount) 
VALUES 
  -- Sales for Product 1 (Widget A)
  (1, '2025-01-01 10:30:00', 150),
  (1, '2025-01-02 11:45:00', 200),
  (1, '2025-02-01 09:15:00', 175),

  -- Sales for Product 2 (Gadget B)
  (2, '2025-01-01 14:00:00', 500),
  (2, '2025-01-05 16:20:00', 450),
  (2, '2025-02-10 12:00:00', 600),

  -- Sales for Product 3 (Tool C)
  (3, '2025-01-15 08:00:00', 50),
  (3, '2025-02-20 17:30:00', 75),
  (3, '2025-02-28 10:00:00', 110);
  
INSERT INTO sales (productId, saleDate, sale_amount) 
VALUES (2, '2025-02-28 10:00:00', 110),
(1, '2025-02-28 10:00:00', 110);
  
-- Write a query to calculate the rank and row number for each product 
-- based on the sale amount, using both RANK() and ROW_NUMBER().

select *, 
rank() over (partition by productId order by sale_amount desc) as rank_by_sale,
row_number() over (partition by productId order by sale_amount desc) as row_number_on_sale
from sales;

