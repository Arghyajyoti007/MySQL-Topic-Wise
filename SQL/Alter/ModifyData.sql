-- Adding Columns and Modifying Data Types
-- Objective: In this assignment, you will practice altering a table by adding new columns and modifying existing columns' data types.
-- Create a table named Students with the following columns:
-- StudentID (INT, Primary Key)
-- FirstName (VARCHAR(50))
-- LastName (VARCHAR(50))
-- Age (INT)
-- Grade (CHAR(1))
-- Add two new columns to the Students table:
-- Gender (ENUM('Male', 'Female', 'Other'))
-- DOB (DATE)
-- Change the data type of the Grade column from CHAR(1) to VARCHAR(2).
-- Update the table to set the default value for the Gender column as 'Other' for all existing records.
-- Finally, add a new record to the Students table with sample data.
use school_database;
drop table Students;
create table Students (
	StudentID INT Primary Key auto_increment,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Age INT,
	Grade CHAR(1)
);

INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Liam', 'Smith', 14, 'A');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Emma', 'Johnson', 15, 'B');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Noah', 'Williams', 14, 'A');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Olivia', 'Brown', 16, 'C');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('James', 'Jones', 15, 'B');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Sophia', 'Garcia', 14, 'A');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Benjamin', 'Miller', 15, 'A');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Isabella', 'Davis', 16, 'D');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Lucas', 'Rodriguez', 14, 'B');
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES ('Mia', 'Martinez', 15, 'A');
desc Students;


select * from students;


-- Add two new columns to the Students table:
-- Gender (ENUM('Male', 'Female', 'Other'))
-- DOB (DATE)
alter table students 
add column gender ENUM('Male', 'Female', 'Other'),
add column DOB date; 
desc Students;

-- Change the data type of the Grade column from CHAR(1) to VARCHAR(2).
alter table Students
modify Grade varchar(2);
desc Students;

-- Update the table to set the default value for the Gender column as 'Other' for all existing records.
alter table students 
modify column gender ENUM('Male', 'Female', 'Other') default "Other";
desc Students;
INSERT INTO Students (FirstName, LastName, Age, Grade, gender, DOB) VALUES ('Malaika', 'Martinez', 15, 'A', default,"2002-01-06");
select * from students;

