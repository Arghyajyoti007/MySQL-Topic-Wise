-- Renaming and Dropping Columns
-- Objective: In this assignment, you will practice altering a table by renaming columns and dropping columns.
-- Start with the Employees table that contains the following columns:
-- EmployeeID (INT, Primary Key)
-- FirstName (VARCHAR(50))
-- LastName (VARCHAR(50))
-- Department (VARCHAR(30))
-- Salary (DECIMAL(10, 2))
-- Rename the Department column to DepartmentName.
-- Drop the Salary column from the table.
-- Add a new column named HireDate (DATE) to the table to store the date of employment.
-- Update the HireDate column for a specific employee, setting it to their date of hire.
-- Display the structure of the Employees table to verify that the changes have been made successfully.

drop table Employees;
create table Employees( 
EmployeeID INT Primary Key auto_increment,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Department VARCHAR(30),
Salary DECIMAL(10, 2)
);

INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES 
('Alice', 'Johnson', 'Engineering', 85000.00),
('Michael', 'Chen', 'Marketing', 62500.50),
('Sarah', 'Rodriguez', 'Human Resources', 58000.00),
('David', 'Smith', 'Sales', 71000.00),
('Emily', 'Brown', 'Engineering', 92000.00);

select * from Employees;

-- Rename the Department column to DepartmentName.
alter table Employees
rename column Department to DepartmentName;

-- Drop the Salary column from the table.
alter table Employees
drop column Salary;

-- Add a new column named HireDate (DATE) to the table to store the date of employment.
alter table Employees
add column HireDate date;

-- Update the HireDate column for a specific employee, setting it to their date of hire.
update employees 
set HireDate = '2025-03-15'
where EmployeeID = 1;

-- Display the structure of the Employees table to verify that the changes have been made successfully.
select * from Employees;
