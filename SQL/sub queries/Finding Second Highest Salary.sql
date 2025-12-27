-- Finding Second Highest Salary
-- Using the same employees table, write an SQL query to find the second-highest salary among all employees. 
-- Utilize a subquery to achieve this.

use school_database;

drop table employees;
create table employees(
	employee_id int primary key,
    salary decimal(10,2) not null
); 


INSERT INTO employees (employee_id, salary) VALUES
(1, 45000.00),
(2, 55000.00),
(3, 75000.00),
(4, 32000.00),
(5, 105000.00),
(6, 62000.00),
(7, 55000.00);

select * from employees 
where salary=(select max(salary) from employees 
where salary < (select max(salary) from employees));

