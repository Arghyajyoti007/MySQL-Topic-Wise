-- Aggregation with Filtering
-- Add a column named Year to the Students table.
-- Insert records with different year values.
-- Write a query to find the maximum score for each year using the MAX aggregate function.

use school_database;
select * from students;
desc students;

-- Add a column named Year to the Students table.
alter table students
add column year_record varchar(50);

-- update table for student_id 1/2/3 
UPDATE students 
SET year_record = '2025' 
WHERE student_id = 3;

-- Insert some new values of the year 
INSERT INTO students (fullname, Department, score, year_record)
VALUES 
    ('Alice Johnson', 'Computer Science', 88.50, '2021'),
    ('Mark Thompson', 'Mathematics', 92.00, '2022'),
    ('Sarah Chen', 'Physics', 85.75, '2023'),
    ('James Wilson', 'Biology', 79.00, '2024'),
    ('Elena Rodriguez', 'Chemistry', 94.25, '2025');
    
INSERT INTO students (fullname, Department, score, year_record)
VALUES 
    ('Robert Fox', 'Computer Science', 72.00, '2021'),
    ('Linda Park', 'Mathematics', 89.50, '2022'),
    ('Kevin Smith', 'Physics', 91.00, '2023'),
    ('Sophia Li', 'Biology', 84.25, '2024'),
    ('Daniel Oh', 'Chemistry', 88.00, '2025');


-- Write a query to find the maximum score for each year using the MAX aggregate function.
select student_id, fullname, score, Department, year_record, max(score) 
over (partition by year_record) as max_score_yearly
from students;

-- Using Group By
select year_record, max(score) from Students
group by year_record
order by year_record;

