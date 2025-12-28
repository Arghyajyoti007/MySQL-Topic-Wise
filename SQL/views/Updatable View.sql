-- Updatable View: 
-- Create an updatable view named high_salary_employees that displays the names and salaries of 
-- employees from a hypothetical employees table who earn more than $50,000 per year. 
-- Ensure that this view can be used to update the salary of an employee. 
-- Write SQL statements to create the view, update an employee's salary through the view, and verify the changes.

use school_database;

drop table employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO employees (employee_id, first_name, last_name, department, salary) 
VALUES 
(1, 'Alice', 'Johnson', 'Engineering', 75000.00),
(2, 'Bob', 'Smith', 'Marketing', 48000.00),
(3, 'Charlie', 'Davis', 'Engineering', 82000.00),
(4, 'Diana', 'Prince', 'Human Resources', 52000.00),
(5, 'Edward', 'Norton', 'Sales', 35000.00),
(6, 'Fiona', 'Gallagher', 'Finance', 61000.00);
INSERT INTO employees (employee_id, first_name, last_name, department, salary) 
VALUES (7, 'Arghyajyoti', 'Samui', 'Software Developer', 90000.00);

select * from employees;


create or replace view high_salary_employees as
select * from employees where salary = (select max(salary) from employees);

select * from high_salary_employees;
