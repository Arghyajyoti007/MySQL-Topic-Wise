-- In this assignment, students will explore LEFT JOIN and RIGHT JOIN operations:
-- Create two tables: employees and departments.
-- The employees table should have columns for employee_id, employee_name, and department_id.
-- The departments table should have columns for department_id and department_name.
-- Insert data into both tables with multiple records.
-- Write an SQL query that performs a LEFT JOIN between the employees and departments tables, connecting them using the department_id column.
-- Retrieve and display a result set that includes the employee_name, employee_id, and department_name. Ensure that all employees, even those without a department assignment, are included in the result.
-- Write an SQL query that performs a RIGHT JOIN between the employees and departments tables, connecting them using the department_id column.
-- Retrieve and display a result set that includes the employee_name, employee_id, and department_name. Ensure that all departments, even those without any employees, are included in the result.
use school_database;
drop table employees;

create table employees
(
	employee_id int primary key auto_increment, 
    employee_name varchar(50) not null, 
    department_id int not null
);

create table departments (
	department_id int primary key auto_increment,
    department_name varchar(50) not null
);

INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Finance'),
('Engineering'),
('Marketing'),
('IT Support');

INSERT INTO employees (employee_name, department_id) VALUES
('Arghyajoti Samui', 3),
('Neha Sharma', 1),
('Rahul Verma', 2),
('Priya Singh', 3),
('Amit Patel', 4),
('Sneha Roy', 5),
('Rohit Kumar', 3),
('Ananya Das', 1);

select * from employees;
select * from departments;


-- Write an SQL query that performs a LEFT JOIN between the employees and departments tables, connecting them using the department_id column.
select * from employees
left join departments
on employees.department_id=departments.department_id;
-- Retrieve and display a result set that includes the employee_name, employee_id, and department_name. Ensure that all employees, even those without a department assignment, are included in the result.
select e.employee_name, e.employee_id, d.department_name from employees e
left join departments d
on e.department_id=d.department_id;


-- Write an SQL query that performs a RIGHT JOIN between the employees and departments tables, connecting them using the department_id column.
select * from employees
right join departments
on employees.department_id=departments.department_id;

-- Retrieve and display a result set that includes the employee_name, employee_id, and department_name. Ensure that all departments, even those without any employees, are included in the result.
select e.employee_name, e.employee_id, d.department_name from employees e
right join departments d
on e.department_id=d.department_id;

