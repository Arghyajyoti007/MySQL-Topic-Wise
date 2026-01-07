-- Basic Ranking
-- Create a table named Scores with columns StudentID and Score.
-- Insert records representing different students and their scores.
-- Write a query to rank students based on their scores using the RANK() function.

drop table Scores;
create table Scores (
  studentId int not null,
  score decimal not null
);
alter table Scores
add column subject_name varchar(50);

INSERT INTO Scores (studentId, score, subject_name) 
VALUES 
  -- Scores for Student 101
  (101, 98.50, 'Math'),
  (101, 92.00, 'Science'),
  (101, 95.00, 'History'),

  -- Scores for Student 102
  (102, 75.00, 'Math'),
  (102, 88.00, 'Science'),
  (102, 64.50, 'History'),

  -- Scores for Student 103
  (103, 82.00, 'Math'),
  (103, 79.50, 'Science'),
  (103, 88.00, 'History');
  
select * from Scores;

-- Write a query to calculate the dense rank of students within each subject using the DENSE_RANK() function.
  
select *,
dense_rank() over (partition by subject_name order by score desc) as dense_rank_
from Scores;
  




