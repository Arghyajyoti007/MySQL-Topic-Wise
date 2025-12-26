-- Assignment 6:
-- You are provided with an Employees table containing the following columns: EmployeeID, FirstName, LastName, BirthDate, and Salary. Your task is to write SQL queries to perform the following tasks:
-- a. Retrieve a list of all employees, sorted by their Last names in alphabetical order.
-- b. Retrieve a list of employees who were born before a specific date (choose any specific dates), sorted by their birth dates in ascending order.
-- c. Retrieve a list of employees with their first names, last names, and salaries, sorted by their salaries in descending order.


use school_database;

create table Employees(
	EmployeeID int auto_increment primary key, 
    FirstName varchar(50) not null, 
    LastName varchar(50) not null, 
    BirthDate date not null,  
    Salary decimal not null
);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Amit', 'Sharma', '1990-05-12', 55000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Priya', 'Verma', '1992-08-23', 62000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Rahul', 'Mehta', '1988-11-05', 75000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Sneha', 'Iyer', '1995-02-14', 48000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Karan', 'Malhotra', '1987-09-30', 82000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Ananya', 'Roy', '1993-06-18', 60000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Vikram', 'Singh', '1985-01-27', 90000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Pooja', 'Nair', '1996-12-09', 45000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Arjun', 'Kapoor', '1991-03-21', 70000.00);

INSERT INTO Employees (FirstName, LastName, BirthDate, Salary)
VALUES ('Neha', 'Gupta', '1989-07-16', 68000.00);

-- a. Retrieve a list of all employees, sorted by their Last names in alphabetical order.
select * from Employees
order by LastName;

-- b. Retrieve a list of employees who were born before a specific date (choose any specific dates), sorted by their birth dates in ascending order.
select * from Employees
where BirthDate < '1993-06-10'
order by BirthDate;

-- c. Retrieve a list of employees with their first names, last names, and salaries, sorted by their salaries in descending order.
select FirstName, LastName, Salary from Employees
order by Salary desc;

