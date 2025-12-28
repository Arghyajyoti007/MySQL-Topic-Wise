-- Basic View Creation: 
-- Create a MySQL view named employee_names that displays the names 
-- (concatenation of first name and last name) of all employees from an 
-- existing employees table. 
-- Write the SQL statement to create the view and then query the view to 
-- retrieve the employee names.
 CREATE TABLE employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);
INSERT INTO employee (first_name, last_name)
VALUES 
('Alice', 'Johnson'),
('Bob', 'Smith'),
('Charlie', 'Davis'),
('Diana', 'Prince'),
('Edward', 'Norton');

create or replace view Employee_full_name as 
select concat(first_name," ", last_name) as full_name from employee;

select * from Employee_full_name;
