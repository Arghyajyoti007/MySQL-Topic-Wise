-- Basic Aggregation
-- Create a table named Students with columns ID, Name, and Score.
-- Insert several records into the table.
-- Write a SQL query to calculate the average score of all students.
drop table Students;

create table Students (
	student_id int primary key auto_increment,
    fullname varchar(50),
    score decimal(10,2)
);

select * from Students;

INSERT INTO Students (fullname, score) 
VALUES 
    ('Alice Smith', 88.00),
    ('Bob Johnson', 72.45),
    ('Charlie Brown', 91.10);
    
select round(avg(score),2) from Students;

