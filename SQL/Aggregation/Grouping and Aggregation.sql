-- Grouping and Aggregation
-- Extend the Students table with a new column Department.
-- Insert records with different department values.
-- Write a query to calculate the average score for each department using the GROUP BY clause.

select * from students;

alter table students
add column Department varchar(50);

update students
set Department = "Python" 
where student_id=1;
update students
set Department = "Python" 
where student_id=2;
update students
set Department = "MySQL" 
where student_id=3;

select Department, avg(score) from students group by Department;

