-- Finding Maximum Salary
-- Given a database table named employees with columns employee_id and salary, 
-- write an SQL query to find the employee(s) with the highest salary using a subquery.

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
where salary=(select max(salary) from employees);

