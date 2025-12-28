-- Finding Invoices Total
-- Consider a database with two tables: customers and invoices. 
-- The invoices table has columns invoice_id, customer_id, and amount. 
-- The customers table has columns customer_name, customer_id. 
-- Write an SQL query to find the total amount spent by each customer, 
-- including their name from the customers table. 
-- Use a subquery to calculate the total amount for each customer.

use school_database;
SELECT * FROM invoices;
SELECT * FROM customers;

SELECT customer_id, sum(amount) as total_amount_spent, 
(SELECT customer_name FROM customers c where c.customer_id=i.customer_id) as Customer_name FROM invoices i
group by customer_id;
